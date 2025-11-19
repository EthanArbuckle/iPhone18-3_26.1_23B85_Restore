unsigned int *std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *,0>(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *(a5 + 4 * v5);
  v7 = *result;
  v8 = *(a5 + 4 * v7);
  v9 = v5 < v7;
  v10 = v6 == v8;
  v11 = v6 < v8;
  v12 = *a3;
  v13 = *(a5 + 4 * *a3);
  if (!v10)
  {
    v9 = v11;
  }

  v10 = v13 == v6;
  v14 = v13 < v6;
  if (v10)
  {
    v14 = v12 < v5;
  }

  if (v9)
  {
    if (v14)
    {
      *result = v12;
LABEL_17:
      *a3 = v7;
      goto LABEL_18;
    }

    *result = v5;
    *a2 = v7;
    v12 = *a3;
    v20 = *(a5 + 4 * *a3);
    v21 = *(a5 + 4 * v7);
    v10 = v20 == v21;
    v22 = v20 < v21;
    if (v10)
    {
      v22 = *a3 < v7;
    }

    if (v22)
    {
      *a2 = v12;
      goto LABEL_17;
    }

    v7 = *a3;
  }

  else if (v14)
  {
    *a2 = v12;
    *a3 = v5;
    v15 = *a2;
    v16 = *(a5 + 4 * v15);
    v17 = *result;
    v18 = *(a5 + 4 * v17);
    v10 = v16 == v18;
    v19 = v16 < v18;
    if (v10)
    {
      v19 = v15 < v17;
    }

    if (v19)
    {
      *result = v15;
      *a2 = v17;
      v7 = *a3;
LABEL_18:
      v12 = v7;
      goto LABEL_22;
    }

    v7 = v5;
    v12 = v5;
  }

  else
  {
    v7 = *a3;
  }

LABEL_22:
  v23 = *a4;
  v24 = *(a5 + 4 * v23);
  v25 = *(a5 + 4 * v7);
  v10 = v24 == v25;
  v26 = v24 < v25;
  if (v10)
  {
    v26 = v23 < v12;
  }

  if (v26)
  {
    *a3 = v23;
    *a4 = v12;
    v27 = *a3;
    v28 = *(a5 + 4 * v27);
    v29 = *a2;
    v30 = *(a5 + 4 * v29);
    v10 = v28 == v30;
    v31 = v28 < v30;
    if (v10)
    {
      v31 = v27 < v29;
    }

    if (v31)
    {
      *a2 = v27;
      *a3 = v29;
      v32 = *a2;
      v33 = *(a5 + 4 * v32);
      v34 = *result;
      v35 = *(a5 + 4 * v34);
      v10 = v33 == v35;
      v36 = v33 < v35;
      if (v10)
      {
        v36 = v32 < v34;
      }

      if (v36)
      {
        *result = v32;
        *a2 = v34;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,void re::anonymous namespace::computeRepresentativeValuesAndReducedIndicesDiscrete<unsigned int>(re::GeomAttribute const&,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned char> &)::CompareFunctor &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v32 = *a3;
        v33 = *a1;
        v34 = a1[1];
        v35 = *(*a3 + 4 * v34);
        v36 = *(*a3 + 4 * *a1);
        v37 = v34 < *a1;
        v11 = v35 == v36;
        v38 = v35 < v36;
        v39 = *(a2 - 1);
        v40 = *(*a3 + 4 * v39);
        if (!v11)
        {
          v37 = v38;
        }

        v11 = v40 == v35;
        v41 = v40 < v35;
        if (v11)
        {
          v41 = v39 < v34;
        }

        if (v37)
        {
          if (v41)
          {
            *a1 = v39;
          }

          else
          {
            *a1 = v34;
            a1[1] = v33;
            v81 = *(a2 - 1);
            v82 = *(v32 + 4 * v81);
            v83 = *(v32 + 4 * v33);
            v11 = v82 == v83;
            v84 = v82 < v83;
            if (v11)
            {
              v84 = v81 < v33;
            }

            if (!v84)
            {
              return 1;
            }

            a1[1] = v81;
          }

          *(a2 - 1) = v33;
          return 1;
        }

        if (!v41)
        {
          return 1;
        }

        a1[1] = v39;
        *(a2 - 1) = v34;
        v29 = *a1;
        v58 = a1[1];
        v59 = *(v32 + 4 * v58);
        v60 = *(v32 + 4 * v29);
        v11 = v59 == v60;
        v61 = v59 < v60;
        if (v11)
        {
          v61 = v58 < v29;
        }

        if (!v61)
        {
          return 1;
        }

        *a1 = v58;
        break;
      case 4:
        return 1;
      case 5:
        v13 = *a3;
        v14 = *(a2 - 1);
        v15 = *(*a3 + 4 * v14);
        v16 = a1[3];
        v17 = *(*a3 + 4 * v16);
        v11 = v15 == v17;
        v18 = v15 < v17;
        if (v11)
        {
          v18 = v14 < v16;
        }

        if (!v18)
        {
          return 1;
        }

        a1[3] = v14;
        *(a2 - 1) = v16;
        v20 = a1[2];
        v19 = a1[3];
        v21 = *(v13 + 4 * v19);
        v22 = *(v13 + 4 * v20);
        v11 = v21 == v22;
        v23 = v21 < v22;
        if (v11)
        {
          v23 = v19 < v20;
        }

        if (!v23)
        {
          return 1;
        }

        a1[2] = v19;
        a1[3] = v20;
        v24 = *(v13 + 4 * v19);
        v25 = a1[1];
        v26 = *(v13 + 4 * v25);
        v11 = v24 == v26;
        v27 = v24 < v26;
        if (v11)
        {
          v27 = v19 < v25;
        }

        if (!v27)
        {
          return 1;
        }

        a1[1] = v19;
        a1[2] = v25;
        v28 = *(v13 + 4 * v19);
        v29 = *a1;
        v30 = *(v13 + 4 * v29);
        v11 = v28 == v30;
        v31 = v28 < v30;
        if (v11)
        {
          v31 = v19 < v29;
        }

        if (!v31)
        {
          return 1;
        }

        *a1 = v19;
        break;
      default:
        goto LABEL_31;
    }

    a1[1] = v29;
    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = *(a2 - 1);
    v8 = *(*a3 + 4 * v7);
    v9 = *a1;
    v10 = *(*a3 + 4 * v9);
    v11 = v8 == v10;
    v12 = v8 < v10;
    if (v11)
    {
      v12 = v7 < v9;
    }

    if (v12)
    {
      *a1 = v7;
      *(a2 - 1) = v9;
    }

    return 1;
  }

LABEL_31:
  v42 = a1 + 2;
  v43 = a1[2];
  v44 = a1[1];
  v45 = *a3;
  v46 = *(*a3 + 4 * v44);
  v47 = *a1;
  v48 = *(*a3 + 4 * *a1);
  v11 = v46 == v48;
  v49 = v46 < v48;
  v50 = *(*a3 + 4 * v43);
  if (v11)
  {
    v49 = v44 < *a1;
  }

  v51 = v43 < v44;
  v11 = v50 == v46;
  v52 = v50 < v46;
  if (!v11)
  {
    v51 = v52;
  }

  if (v49)
  {
    v53 = a1;
    v54 = a1 + 2;
    if (!v51)
    {
      *a1 = v44;
      a1[1] = v47;
      v55 = *(v45 + 4 * v43);
      v56 = *(v45 + 4 * v47);
      v11 = v55 == v56;
      v57 = v55 < v56;
      if (v11)
      {
        v57 = v43 < v47;
      }

      v53 = a1 + 1;
      v54 = a1 + 2;
      if (!v57)
      {
        goto LABEL_53;
      }
    }

LABEL_52:
    *v53 = v43;
    *v54 = v47;
    goto LABEL_53;
  }

  if (v51)
  {
    a1[1] = v43;
    *v42 = v44;
    v62 = *(v45 + 4 * v43);
    v63 = *(v45 + 4 * v47);
    v11 = v62 == v63;
    v64 = v62 < v63;
    if (v11)
    {
      v64 = v43 < v47;
    }

    v53 = a1;
    v54 = a1 + 1;
    if (v64)
    {
      goto LABEL_52;
    }
  }

LABEL_53:
  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  for (i = 12; ; i += 4)
  {
    v68 = *v65;
    v69 = *(v45 + 4 * *v65);
    v70 = *v42;
    v71 = *(v45 + 4 * v70);
    v11 = v69 == v71;
    v72 = v69 < v71;
    if (v11)
    {
      v72 = *v65 < v70;
    }

    if (v72)
    {
      v73 = i;
      while (1)
      {
        *(a1 + v73) = v70;
        v74 = v73 - 4;
        if (v73 == 4)
        {
          break;
        }

        v75 = a1 + v73;
        v76 = *(v45 + 4 * v68);
        v70 = *(v75 - 2);
        v77 = *(v45 + 4 * v70);
        v11 = v76 == v77;
        v78 = v76 < v77;
        if (v11)
        {
          v79 = v68 < v70;
        }

        else
        {
          v79 = v78;
        }

        v73 = v74;
        if (!v79)
        {
          v80 = (a1 + v74);
          goto LABEL_66;
        }
      }

      v80 = a1;
LABEL_66:
      *v80 = v68;
      if (++v66 == 8)
      {
        break;
      }
    }

    v42 = v65++;
    if (v65 == a2)
    {
      return 1;
    }
  }

  return v65 + 1 == a2;
}

uint64_t re::internal::addCapsuleCap(unsigned int **a1, unsigned int a2, unsigned int a3, float32x4_t *a4, float a5)
{
  v6 = a2;
  if (a1[4])
  {
    _ZF = a1[3] == 0;
  }

  else
  {
    _ZF = 1;
  }

  v9 = !_ZF;
  v115 = v9;
  v10 = *a1;
  v116 = a1[1];
  v117 = a1[2];
  v11 = **a1;
  v12 = *(*a1 + 3);
  v13 = a3 * a2;
  v14 = v11 + 1;
  *v10 = v11 + 1 + a3 * a2;
  *(v10 + 40) = v11 + 1 + a3 * a2;
  v15 = v10[23];
  if (v15)
  {
    v16 = v10[25];
    v17 = 8 * v15;
    do
    {
      v18 = *v16++;
      (*(*v18 + 80))(v18, *(v10 + 40));
      v17 -= 8;
    }

    while (v17);
  }

  v19 = re::internal::GeomAttributeManager::attributeByName((v10 + 6), "vertexPosition");
  v20 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v19);
  v106 = v21;
  if (v11 >= v21)
  {
    goto LABEL_82;
  }

  v22 = v20;
  v23 = 0uLL;
  v24 = vaddq_f32(a4[3], vmlaq_f32(vmlaq_n_f32(vmulq_f32(*a4, 0), a4[1], a5), 0, a4[2]));
  *(v20 + 16 * v11) = vdivq_f32(v24, vdupq_laneq_s32(v24, 3));
  if (v117)
  {
    v25 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[2]);
    if (v11 >= v26)
    {
LABEL_83:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_84;
    }

    *(v25 + 8 * v11) = 0x3F0000003F000000;
    v114 = v26;
    v23 = 0uLL;
  }

  else
  {
    v25 = 0;
    v114 = 0xFFFFFFFFLL;
  }

  v105 = v25;
  if (v116)
  {
    v119 = a4[1];
    v121 = *a4;
    v123 = a4[2];
    v27 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[1]);
    if (v11 >= v28)
    {
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
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v23 = v121;
    v29 = vmlaq_f32(vaddq_f32(vmulq_f32(v121, 0), v119), 0, v123);
    v103 = v27;
    *(v27 + 16 * v11) = v29;
    v30 = vmulq_f32(v29, xmmword_1E3047680);
    v110 = (v30.f32[2] + vaddv_f32(*v30.f32)) > 0.0;
    v113 = v28;
    v31 = v119;
    v32 = v123;
  }

  else
  {
    v103 = 0;
    v110 = 0;
    v113 = 0xFFFFFFFFLL;
    v31 = 0uLL;
    v32 = 0uLL;
  }

  v122 = v23;
  v124 = v32;
  v120 = v31;
  v98 = v10;
  v99 = v11;
  v97 = v12;
  v100 = v11 + 1;
  v96 = v13;
  v104 = v22;
  if (v115)
  {
    v33 = re::GeomAttribute::modifyValues<re::Vector3<float>>(a1[3]);
    v34 = a1[4];
    v36 = v35;
    v107 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v34);
    if (v11 >= v36)
    {
      goto LABEL_85;
    }

    *(v33 + 16 * v11) = vmlaq_f32(vmlaq_f32(v122, 0, v120), 0, v124);
    __asm { FMOV            V0.4S, #-1.0 }

    *(v107 + 16 * v11) = vmlaq_f32(vmlaq_f32(vmulq_f32(v122, 0), 0, v120), _Q0, v124);
    v111 = v37;
    v112 = v36;
    v42 = v33;
  }

  else
  {
    v107 = 0;
    v42 = 0;
    v111 = 0xFFFFFFFFLL;
    v112 = 0xFFFFFFFFLL;
  }

  if (a3)
  {
    v43 = 0;
    v44 = 6.2832 / v6;
    v45 = v6;
    v102 = v6;
    v101 = v42;
    do
    {
      v46 = v43 + 1;
      v47 = __sincosf_stret((1.5708 / a3) * (v43 + 1));
      if (v6)
      {
        v108 = v43 + 1;
        v48 = 0;
        v49 = v43 + 1.0;
        v50 = v14;
        v51 = v107 + 16 * v14;
        v52 = v42 + 16 * v14;
        v53 = v103 + 16 * v14;
        v54 = v49 / a3;
        if (v106 >= v14)
        {
          v55 = v106 - v14;
        }

        else
        {
          v55 = 0;
        }

        v56 = v105 + 8 * v14;
        v57 = v104 + 16 * v14;
        do
        {
          v59 = __sincosf_stret(v44 * v48);
          if (v55 == v48)
          {
            goto LABEL_76;
          }

          v60 = v50 + v48;
          v58.f32[0] = v47.__sinval * v59.__cosval;
          v61 = v58;
          v61.i32[1] = LODWORD(v47.__cosval);
          v62 = v61;
          v62.f32[2] = v59.__sinval * -v47.__sinval;
          v63 = vmulq_n_f32(v62, a5);
          v64 = vaddq_f32(a4[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v63.f32[0]), a4[1], *v63.f32, 1), a4[2], v63, 2));
          *(v57 + 16 * v48) = vdivq_f32(v64, vdupq_laneq_s32(v64, 3));
          if (v117)
          {
            if (v114 <= v60)
            {
              goto LABEL_77;
            }

            v65.f32[0] = (v54 * v59.__cosval) + 1.0;
            v65.f32[1] = (v54 * v59.__sinval) + 1.0;
            *(v56 + 8 * v48) = vmul_f32(v65, 0x3F0000003F000000);
          }

          if (v116)
          {
            if (v113 <= v60)
            {
              goto LABEL_78;
            }

            *(v53 + 16 * v48) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, v58.f32[0]), v120, *v61.f32, 1), v124, v62, 2);
          }

          if (v115)
          {
            if (v112 <= v60)
            {
              goto LABEL_79;
            }

            v66.i64[0] = LODWORD(v59.__sinval);
            v66.i64[1] = LODWORD(v59.__cosval);
            v67 = vnegq_f32(v66);
            if (v110)
            {
              v68 = -1;
            }

            else
            {
              v68 = 0;
            }

            v69 = vbslq_s8(vdupq_n_s32(v68), v67, v66);
            *(v52 + 16 * v48) = v69;
            if (v111 <= v60)
            {
              goto LABEL_80;
            }

            v70 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v62, v62), v62, 0xCuLL), vnegq_f32(v69)), v62, vextq_s8(vuzp1q_s32(v69, v69), v69, 0xCuLL));
            *(v51 + 16 * v48) = vnegq_f32(vmlaq_lane_f32(vmlaq_n_f32(vmulq_laneq_f32(v122, v70, 2), v120, v70.f32[0]), v124, *v70.f32, 1));
            *(v52 + 16 * v48) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*(v52 + 16 * v48))), v120, *(v52 + 16 * v48), 1), v124, *(v52 + 16 * v48), 2);
          }

          ++v48;
        }

        while (v45 != v48);
        v14 = v50 + v48;
        v6 = v102;
        v42 = v101;
        v46 = v108;
      }

      v43 = v46;
    }

    while (v46 != a3);
  }

  v71 = v97;
  result = re::DynamicArray<re::GeomCell4>::resize(v98 + 1, v96 + v97);
  *(v98 + 68) = v96 + v97;
  v73 = v98[37];
  if (v73)
  {
    v74 = v98[39];
    v75 = 8 * v73;
    do
    {
      v76 = *v74++;
      result = (*(*v76 + 80))(v76, *(v98 + 68));
      v75 -= 8;
    }

    while (v75);
  }

  v77 = v99;
  if (v6)
  {
    v78 = v97;
    v79 = v98[3];
    v80 = v6 - 1;
    v71 = v97 + v6;
    v81 = v100;
    v82 = v6;
    while (v79 > v78)
    {
      if (v80)
      {
        v83 = v81 + 1;
      }

      else
      {
        v83 = v100;
      }

      v84 = (v98[5] + 16 * v78);
      *v84 = v99;
      v84[1] = v81++;
      v84[2] = v83;
      v84[3] = -1;
      --v80;
      ++v78;
      if (!--v82)
      {
        goto LABEL_57;
      }
    }

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
    goto LABEL_83;
  }

LABEL_57:
  if (a3 == 1)
  {
    return result;
  }

  v85 = 0;
  v86 = v6 - 1;
  v87 = v99 + v6;
  do
  {
    if (!v6)
    {
      goto LABEL_73;
    }

    v88 = 0;
    v89 = v100 + v85 * v6;
    v90 = v98[3];
    do
    {
      v91 = v71 + v88;
      v92 = v87 + v88 + 2;
      LODWORD(result) = v77 + v88 + 2;
      if (v88 - v6 == -1)
      {
        result = v89;
      }

      else
      {
        result = result;
      }

      if (v88 - v6 == -1)
      {
        v92 = v89 + v6;
        v93 = v89 + v86 + v6;
      }

      else
      {
        v93 = v87 + v88 + 1;
      }

      if (v88 - v6 == -1)
      {
        v94 = v89 + v86;
      }

      else
      {
        v94 = v77 + v88 + 1;
      }

      if (v90 <= v91)
      {
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
        goto LABEL_81;
      }

      v95 = (v98[5] + 16 * v91);
      *v95 = v94;
      v95[1] = v93;
      v95[2] = v92;
      v95[3] = result;
      ++v88;
    }

    while (v88 != v6);
    v71 += v88;
LABEL_73:
    ++v85;
    v77 += v6;
    v87 += v6;
  }

  while (v85 != a3 - 1);
  return result;
}

uint64_t re::buildCapsule(_anonymous_namespace_ *a1, unsigned __int16 *a2)
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = &v118;
  v120 = 0u;
  v119 = 0u;
  v106 = 0;
  v5 = &v106;
  v110 = 0;
  v107[1] = 0;
  v108 = 0;
  v109 = 0;
  re::DynamicArray<re::BlendNode>::setCapacity(v107, 1uLL);
  ++v109;
  re::internal::GeomAttributeManager::GeomAttributeManager(v111);
  if (*a2 < 3u || !a2[1] || !a2[2])
  {
    re::internal::GeomAttributeManager::addAttribute(v111, "vertexPosition", 1, 7);
    if (*(a2 + 16) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v111, "vertexUV", 1, 6);
    }

    if (*(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v111, "vertexNormal", 1, 7);
    }

    if (*(a2 + 16) == 1 && *(a2 + 17) == 1)
    {
      re::internal::GeomAttributeManager::addAttribute(v111, "vertexTangent", 1, 7);
      re::internal::GeomAttributeManager::addAttribute(v111, "vertexBitangent", 1, 7);
    }

    re::GeomMesh::operator=(a1, &v106);
    goto LABEL_14;
  }

  v118 = &v106;
  re::internal::GeomAttributeManager::addAttribute(v111, "vertexPosition", 1, 7);
  if (*(a2 + 17) == 1)
  {
    v6 = re::internal::GeomAttributeManager::addAttribute(v111, "vertexNormal", 1, 7);
    *&v119 = v6;
  }

  else
  {
    v6 = 0;
  }

  v100 = v6;
  if (*(a2 + 16) == 1)
  {
    v8 = 0;
    *(&v119 + 1) = re::internal::GeomAttributeManager::addAttribute(v111, "vertexUV", 1, 6);
    v99 = *(&v119 + 1);
    if (a2[8] & 1) != 0 && (*(a2 + 17))
    {
      v8 = re::internal::GeomAttributeManager::addAttribute(v111, "vertexTangent", 1, 7);
      *&v120 = v8;
      v9 = re::internal::GeomAttributeManager::addAttribute(v111, "vertexBitangent", 1, 7);
      *(&v120 + 1) = v9;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v99 = 0;
  }

  v10 = *(a2 + 2);
  v11 = (*(a2 + 3) + (v10 * -2.0)) * 0.5;
  v105[0] = xmmword_1E3047670;
  v105[1] = xmmword_1E3047680;
  v12.i32[0] = 0;
  v12.f32[1] = v11;
  v12.i32[2] = 0;
  v12.i32[3] = 1.0;
  v94 = v12;
  v105[2] = xmmword_1E30476A0;
  v105[3] = v12;
  *v12.f32 = vrsqrte_f32(1065353216);
  *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(1065353216, vmul_f32(*v12.f32, *v12.f32)));
  v13 = vmulq_n_f32(xmmword_1E3047670, vmul_f32(*v12.f32, vrsqrts_f32(1065353216, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
  v14 = vmulq_f32(v13, v13).f32[0];
  v15 = vmuls_lane_f32(v13.f32[1], *v13.f32, 1);
  v16 = vmuls_lane_f32(v13.f32[2], v13, 2);
  v17 = vmuls_lane_f32(v13.f32[0], *v13.f32, 1);
  v18 = vmuls_lane_f32(v13.f32[0], v13, 2);
  v12.f32[0] = vmuls_lane_f32(v13.f32[1], v13, 2);
  v19 = -0.000000087423 * v13.f32[0];
  v20 = vmuls_lane_f32(-0.000000087423, *v13.f32, 1);
  v13.f32[0] = vmuls_lane_f32(-0.000000087423, v13, 2);
  *&v21 = v16 - (1.0 - v16);
  v22.f32[0] = v14 - (1.0 - v14);
  v22.f32[1] = v13.f32[0] + (v17 * 2.0);
  v22.i64[1] = COERCE_UNSIGNED_INT(-(v20 - (v18 * 2.0)));
  v13.f32[0] = -(v13.f32[0] - (v17 * 2.0));
  v13.f32[1] = v15 - (1.0 - v15);
  v13.i64[1] = COERCE_UNSIGNED_INT(v19 + (v12.f32[0] * 2.0));
  v90 = v13;
  v92 = v22;
  v13.f32[0] = v20 + (v18 * 2.0);
  v13.f32[1] = -(v19 - (v12.f32[0] * 2.0));
  v13.i64[1] = v21;
  v89 = v13;
  v23 = *a2;
  v24 = a2[2];
  re::internal::addCapsuleCap(&v118, *a2, v24, v105, v10);
  v25 = 0;
  v121 = xmmword_1E3047670;
  v122 = xmmword_1E3047680;
  v123 = xmmword_1E30476A0;
  v124 = v94;
  do
  {
    *(&v134 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v92, COERCE_FLOAT(*(&v121 + v25))), v90, *(&v121 + v25), 1), v89, *(&v121 + v25), 2), xmmword_1E30474D0, *(&v121 + v25), 3);
    v25 += 16;
  }

  while (v25 != 64);
  re::internal::addCapsuleCap(&v118, v23, v24, &v134, v10);
  *&v123 = 0;
  *&v122 = 0;
  v121 = 0uLL;
  DWORD2(v122) = 0;
  v104 = 0;
  v101[1] = 0;
  v102 = 0;
  v101[0] = 0;
  v103 = 0;
  re::DynamicArray<float>::resize(&v121, v23);
  re::DynamicArray<float>::resize(v101, v23);
  v26 = v122;
  if (v23)
  {
    v27 = 0;
    v28 = (v24 - 1) * v23;
    v29 = (2 * v24 - 1) * v23 + 2;
    v30 = v123;
    v31 = v102;
    v32 = v104;
    v33 = v28 + 1;
    v34 = v23;
    while (v26 != v27)
    {
      *(v30 + 4 * v27) = v29 + v34 % v23;
      if (v31 == v27)
      {
        goto LABEL_97;
      }

      *v32++ = v33;
      ++v27;
      ++v33;
      if (!--v34)
      {
        goto LABEL_32;
      }
    }

LABEL_96:
    v125 = 0;
    *(v4 + 232) = 0u;
    *(v4 + 216) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 184) = 0u;
    *(v4 + 168) = 0u;
    v31 = v26;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126 = 136315906;
    *(v4 + 124) = "operator[]";
    v128 = 1024;
    *(v4 + 134) = 789;
    v130 = 2048;
    *(v4 + 140) = v31;
    v132 = 2048;
    *(v4 + 150) = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_97:
    v125 = 0;
    *(v4 + 232) = 0u;
    *(v4 + 216) = 0u;
    *(v4 + 200) = 0u;
    *(v4 + 184) = 0u;
    *(v4 + 168) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126 = 136315906;
    *(v4 + 124) = "operator[]";
    v128 = 1024;
    *(v4 + 134) = 789;
    v130 = 2048;
    *(v4 + 140) = v31;
    v132 = 2048;
    *(v4 + 150) = v31;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v125 = 0;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126 = 136315906;
    v127 = "operator[]";
    v128 = 1024;
    v129 = 797;
    v130 = 2048;
    v131 = v31;
    v132 = 2048;
    v133 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_99:
    v125 = 0;
    v31 = &v118;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v87 = v60;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126 = 136315906;
    v127 = "operator[]";
    v128 = 1024;
    v129 = 621;
    v130 = 2048;
    v131 = v8;
    v132 = 2048;
    v133 = v87;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_100:
    v125 = 0;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126 = 136315906;
    v127 = "operator[]";
    v128 = 1024;
    v129 = 797;
    v130 = 2048;
    v131 = v31;
    v132 = 2048;
    v133 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_101:
    v125 = 0;
    v138 = 0u;
    v137 = 0u;
    v136 = 0u;
    v135 = 0u;
    v134 = 0u;
    v88 = v60;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v126 = 136315906;
    v127 = "operator[]";
    v128 = 1024;
    v129 = 621;
    v130 = 2048;
    v131 = v5;
    v132 = 2048;
    v133 = v88;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_32:
  v91 = a1;
  if (v9)
  {
    v35 = v8 == 0;
  }

  else
  {
    v35 = 1;
  }

  v36 = !v35;
  LODWORD(v4) = v106;
  v98 = v26;
  v37 = v26 + 1;
  v97 = a2[1];
  v106 += v37 + v37 * v97;
  v112 = v106;
  if (v113)
  {
    v38 = v114;
    v39 = 8 * v113;
    do
    {
      v40 = *v38++;
      (*(*v40 + 80))(v40, v112);
      v39 -= 8;
    }

    while (v39);
  }

  v41 = re::internal::GeomAttributeManager::attributeByName(v111, "vertexPosition");
  v42 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v41);
  v96 = v44;
  if (v99)
  {
    v5 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v99);
  }

  else
  {
    v5 = 0;
    v45 = -1;
  }

  v95 = v45;
  v46 = v9;
  v93 = a2;
  if (v100)
  {
    v47 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v100);
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = -1;
  }

  v50 = v98;
  v51 = v97;
  if (v36)
  {
    v52 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v8);
    v54 = v53;
    v55 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v46);
    v56 = v52;
    v57 = v54;
    v51 = v97;
    v50 = v98;
    v59 = v58;
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v57 = 0xFFFFFFFFLL;
    v59 = -1;
  }

  v60 = v96;
  v61 = v95;
  v62 = v5;
  v63 = 0;
  v64 = 1.0 / v97;
  do
  {
    v31 = v63 % v50;
    v8 = v122;
    if (v122 <= v31)
    {
      goto LABEL_98;
    }

    v8 = *(v123 + 4 * v31);
    if (v8 >= v96)
    {
      goto LABEL_99;
    }

    v5 = v102;
    if (v102 <= v31)
    {
      goto LABEL_100;
    }

    v5 = v104[v31];
    if (v5 >= v96)
    {
      goto LABEL_101;
    }

    v65 = 0;
    v66 = v63 + v4;
    do
    {
      if (v66 >= v96)
      {
        v125 = 0;
        v67 = &v118;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 621;
        v130 = 2048;
        v131 = v66;
        v132 = 2048;
        v133 = v96;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_90:
        v125 = 0;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v85 = v61;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 621;
        v130 = 2048;
        v131 = v67;
        v132 = 2048;
        v133 = v85;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_91:
        v125 = 0;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 621;
        v130 = 2048;
        v131 = v67;
        v132 = 2048;
        v133 = v49;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_92:
        v125 = 0;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v86 = v59;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 621;
        v130 = 2048;
        v131 = v67;
        v132 = 2048;
        v133 = v86;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_93:
        v125 = 0;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 621;
        v130 = 2048;
        v131 = v67;
        v132 = 2048;
        v133 = v49;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_94:
        v125 = 0;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        v4 = v57;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 621;
        v130 = 2048;
        v131 = v67;
        v132 = 2048;
        v133 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_95:
        v125 = 0;
        v8 = &v118;
        v138 = 0u;
        v137 = 0u;
        v136 = 0u;
        v135 = 0u;
        v134 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v126 = 136315906;
        v127 = "operator[]";
        v128 = 1024;
        v129 = 789;
        v130 = 2048;
        v131 = v36;
        v132 = 2048;
        v133 = v67;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_96;
      }

      v67 = v66;
      v68 = (v42 + 16 * v66);
      *v68 = vaddq_f32(vmulq_n_f32(*(v42 + 16 * v8), 1.0 - (v64 * v65)), vmulq_n_f32(*(v42 + 16 * v5), v64 * v65));
      if (v99)
      {
        if (v95 <= v66)
        {
          goto LABEL_90;
        }

        *&v69 = (1.0 / v98) * v63;
        *(&v69 + 1) = v64 * v65;
        *(v62 + 8 * v66) = v69;
      }

      if (v100)
      {
        if (v49 <= v66)
        {
          goto LABEL_91;
        }

        v43.i32[0] = v68->i32[0];
        v43.i32[2] = v68->i32[2];
        v70 = vmulq_f32(v43, v43);
        *&v71 = v70.f32[2] + vaddv_f32(*v70.f32);
        *v70.f32 = vrsqrte_f32(v71);
        *v70.f32 = vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32)));
        v43 = vmulq_n_f32(v43, vmul_f32(*v70.f32, vrsqrts_f32(v71, vmul_f32(*v70.f32, *v70.f32))).f32[0]);
        *(v47 + 16 * v66) = v43;
      }

      if (v36)
      {
        if (v59 <= v66)
        {
          goto LABEL_92;
        }

        *(v55 + 16 * v66) = xmmword_1E3047680;
        if (v49 <= v66)
        {
          goto LABEL_93;
        }

        if (v57 <= v66)
        {
          goto LABEL_94;
        }

        v72 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*(v47 + 16 * v66), *(v47 + 16 * v66)), *(v47 + 16 * v66), 0xCuLL), xmmword_1E30661D0), xmmword_1E30476A0, *(v47 + 16 * v66));
        v43 = vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL);
        *(v56 + 16 * v66) = v43;
      }

      v66 += v37;
      ++v65;
    }

    while (v51 + 1 != v65);
    ++v63;
  }

  while (v63 <= v50);
  v73 = v108;
  v74 = v108 + v50 * v51;
  v5 = &v106;
  re::DynamicArray<re::GeomCell4>::resize(v107, v74);
  v115 = v74;
  if (v116)
  {
    v75 = v117;
    v76 = 8 * v116;
    do
    {
      v77 = *v75++;
      (*(*v77 + 80))(v77, v115);
      v76 -= 8;
    }

    while (v76);
  }

  if (v97)
  {
    v78 = 0;
    v67 = v108;
    if (v98 <= 1)
    {
      v79 = 1;
    }

    else
    {
      v79 = v98;
    }

    do
    {
      v80 = v110;
      v4 = (v4 + 1);
      v81 = v79;
      do
      {
        v36 = v73;
        if (v67 <= v73)
        {
          goto LABEL_95;
        }

        v82 = (v80 + 16 * v73);
        *v82 = v4 - 1;
        v82[1] = v4;
        v82[2] = v98 + v4 + 1;
        v82[3] = v98 + v4;
        ++v73;
        v4 = (v4 + 1);
        --v81;
      }

      while (v81);
      ++v78;
    }

    while (v78 != v97);
  }

  v83 = re::GeomMesh::operator=(v91, &v106);
  if (v93[9])
  {
    re::internal::mergeVertexPositions(v83, v84);
  }

  if (v101[0] && v104)
  {
    (*(*v101[0] + 40))();
  }

  if (v121 && v123)
  {
    (*(*v121 + 40))();
  }

LABEL_14:
  re::internal::GeomAttributeManager::~GeomAttributeManager(v111);
  result = v107[0];
  if (v107[0])
  {
    if (v110)
    {
      return (*(*v107[0] + 40))();
    }
  }

  return result;
}

void re::buildCapsule(uint64_t a1, unsigned __int16 *a2)
{
  v2 = a2;
  v49 = *MEMORY[0x1E69E9840];
  if (*(a2 + 18) == 1)
  {
    v32 = *(a2 + 4);
    v31 = *a2;
    BYTE2(v32) = 0;
    re::buildCapsule(a1, &v31);
    return;
  }

  re::GeomMesh::GeomMesh(&v31, 0);
  re::buildCapsule(&v31, v2);
  re::DynamicArray<re::GeomMesh>::clear(a1);
  re::DynamicArray<re::GeomMesh>::resize(a1, 3uLL);
  v4 = v2[2];
  if (!v2[2] || (v5 = *v2, v5 < 3) || !v2[1])
  {
    re::DynamicArray<re::GeomMesh>::resize(a1, 3uLL, &v31);
    goto LABEL_27;
  }

  v30 = 0;
  v27 = 0;
  memset(v28, 0, sizeof(v28));
  v29 = 0;
  v24 = 0;
  memset(v25, 0, sizeof(v25));
  v26 = 0;
  v21[1] = 0;
  v22 = 0;
  v21[0] = 0;
  v6 = v5 * v4;
  v23 = 0;
  re::DynamicArray<float>::resize(v21, v6);
  v7 = 0;
  v8 = 1;
  do
  {
    v9 = 0;
    v10 = v8;
    v11 = v22;
    v12 = v24;
    v13 = v6 * v7;
    do
    {
      if (v11 == v9)
      {
        *v39 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v46[0] = 136315906;
        *&v46[1] = "operator[]";
        LOWORD(v46[3]) = 1024;
        *(&v46[3] + 2) = 789;
        HIWORD(v46[4]) = 2048;
        *&v46[5] = v11;
        LOWORD(v46[7]) = 2048;
        *(&v46[7] + 2) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_30:
        v33 = 0;
        v47 = 0u;
        v48 = 0u;
        memset(v46, 0, sizeof(v46));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v39 = 136315906;
        *&v39[4] = "operator[]";
        v40 = 1024;
        v41 = 789;
        v42 = 2048;
        v43 = v7;
        v44 = 2048;
        v45 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_31;
      }

      *(v12 + 4 * v9++) = v13++;
    }

    while (v6 != v9);
    v19 = v12;
    v20 = v11;
    v17 = 0;
    v18 = 0;
    re::makeMeshFromFaces(&v31, &v19, &v17, v28, v25, &v34);
    v11 = *(a1 + 16);
    if (v11 <= v7)
    {
      goto LABEL_30;
    }

    re::GeomMesh::operator=((*(a1 + 32) + 736 * v7), &v34);
    re::GeomMesh::~GeomMesh(&v34);
    v8 = 0;
    v7 = 1;
  }

  while ((v10 & 1) != 0);
  v2 = (v2[1] * *v2);
  re::DynamicArray<float>::resize(v21, v2);
  v7 = v22;
  if (v2)
  {
    v14 = 0;
    v15 = 2 * v6;
    v16 = v24;
    while (v7 != v14)
    {
      *(v16 + 4 * v14) = v15;
      v14 = (v14 + 1);
      ++v15;
      if (v2 == v14)
      {
        goto LABEL_16;
      }
    }

LABEL_31:
    *v39 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v46[0] = 136315906;
    *&v46[1] = "operator[]";
    LOWORD(v46[3]) = 1024;
    *(&v46[3] + 2) = 789;
    HIWORD(v46[4]) = 2048;
    *&v46[5] = v7;
    LOWORD(v46[7]) = 2048;
    *(&v46[7] + 2) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    v33 = 0;
    v47 = 0u;
    v48 = 0u;
    memset(v46, 0, sizeof(v46));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v39 = 136315906;
    *&v39[4] = "operator[]";
    v40 = 1024;
    v41 = 789;
    v42 = 2048;
    v43 = 2;
    v44 = 2048;
    v45 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_16:
  v19 = v24;
  v20 = v7;
  v17 = 0;
  v18 = 0;
  re::makeMeshFromFaces(&v31, &v19, &v17, v28, v25, &v34);
  v2 = *(a1 + 16);
  if (v2 <= 2)
  {
    goto LABEL_32;
  }

  re::GeomMesh::operator=((*(a1 + 32) + 1472), &v34);
  re::GeomMesh::~GeomMesh(&v34);
  if (v21[0] && v24)
  {
    (*(*v21[0] + 40))();
  }

  if (v25[0] && v27)
  {
    (*(*v25[0] + 40))();
  }

  if (v28[0])
  {
    if (v30)
    {
      (*(*v28[0] + 40))();
    }
  }

LABEL_27:
  re::GeomMesh::~GeomMesh(&v31);
}

void re::DynamicArray<re::GeomMesh>::resize(uint64_t a1, unint64_t a2, uint64_t **a3)
{
  v5 = *(a1 + 16);
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return;
    }

    v10 = 736 * a2;
    v11 = a2;
    do
    {
      re::GeomMesh::~GeomMesh((*(a1 + 32) + v10));
      ++v11;
      v10 += 736;
    }

    while (v11 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::GeomMesh>::setCapacity(a1, a2);
      v5 = *(a1 + 16);
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 736 * v5;
      do
      {
        v9 = *(a1 + 32) + v8;
        *v9 = 0;
        *(v9 + 8) = 0;
        bzero((v9 + 16), 0x2C8uLL);
        re::internal::GeomBaseMesh::GeomBaseMesh((v9 + 16));
        *(v9 + 728) = 0;
        re::GeomMesh::copy(a3, v9);
        v8 += 736;
        --v7;
      }

      while (v7);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::internal::vertexInFace(unint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 a4)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a3 >= a1)
  {
    memset(v5, 0, sizeof(v5));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5[0] = *(a2 + 16 * a3);
  return *(v5 + a4);
}

uint64_t re::internal::findSubmeshFaceVertex(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v6 = *a2;
  v10 = *a2;
  v7 = *(a1 + 140);
  if (v7 == 2)
  {
    v8 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((a1 + 144), &v10);
    if (v8 == -1)
    {
      return 0;
    }

    v6 = *(a1 + 152) + 8 * v8 + 4;
LABEL_10:
    LODWORD(v6) = *v6;
    if (v6 == -1)
    {
      return 0;
    }

LABEL_11:
    *a3 = v6;
    *(a3 + 4) = *(a2 + 4);
    return 1;
  }

  if (v7 == 1)
  {
    if (*(a1 + 160) <= v6)
    {
      return 0;
    }

    v6 = *(a1 + 176) + 4 * v6;
    goto LABEL_10;
  }

  if (*(a1 + 140))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (*(a1 + 144) > v6)
  {
    goto LABEL_11;
  }

  return 0;
}

uint64_t re::internal::calculateCompatibleFaceVertexTopology(unint64_t a1, uint64_t a2, uint64_t a3)
{
  j = a1;
  v7 = &v90;
  v109 = *MEMORY[0x1E69E9840];
  re::internal::GeomVertexConnectivity::buildVertexConnectivity((a1 + 16), v70);
  v8 = *(j + 16);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v57 = a3;
  re::DynamicArray<unsigned int>::resize(a3, 4 * (*(j + 40) & 0x3FFFFFFFLL), &re::kInvalidMeshIndex);
  v9 = *(j + 40);
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = *(a3 + 16);
    v13 = *(a3 + 32);
    v14 = *(j + 56);
    do
    {
      v15 = (4 * v11);
      if (v12 <= v15)
      {
        goto LABEL_119;
      }

      if (v11 == v9)
      {
        goto LABEL_120;
      }

      for (i = 0; i != 16; i += 4)
      {
        *(v13 + 4 * v10 + i) = *(v14 + i);
      }

      if (*(v13 + 4 * v15 + 12) == -1)
      {
        v3 = v15 | 3;
        if (v12 <= v3)
        {
          goto LABEL_122;
        }

        *(v13 + 4 * v3) = -1;
      }

      ++v11;
      v10 += 4;
      v14 += 16;
    }

    while (v11 != v9);
  }

  v95 = 0;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  v93 = 0;
  v69 = 0;
  v66[1] = 0;
  v67 = 0;
  v65 = 0;
  v66[0] = 0;
  v68 = 0;
  v62[1] = 0;
  v63 = 0;
  v61 = 0;
  v62[0] = 0;
  v64 = 0;
  v58[1] = 0;
  v59 = 0;
  v58[0] = 0;
  v60 = 0;
  re::DynamicArray<float *>::setCapacity(&v90, 0x40uLL);
  re::DynamicArray<float *>::setCapacity(v66, 0x40uLL);
  re::DynamicArray<float *>::setCapacity(v62, 0x40uLL);
  re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(v58, 0x40uLL);
  v54 = *(j + 16);
  if (!v54)
  {
    goto LABEL_91;
  }

  for (j = 0; j != v54; ++j)
  {
    v59 = 0;
    ++v60;
    v12 = v71;
    if (v71 <= j)
    {
      goto LABEL_124;
    }

    v15 = *(v72 + 4 * j);
    re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(v58, v15);
    if (v15)
    {
      v9 = 0;
      do
      {
        v17 = re::internal::GeomVertexConnectivity::faceVertex(v70, j, v9);
        v12 = v59;
        if (v59 <= v9)
        {
          goto LABEL_118;
        }

        v18 = &v61[2 * v9];
        *v18 = v17;
        *(v18 + 4) = BYTE4(v17);
      }

      while (++v9 != v15);
    }

    if (re::internal::GeomVertexConnectivity::faceCount(v70, j) > 0x3F)
    {
      v20 = a2;
      if (!*(a2 + 16))
      {
        continue;
      }

      v21 = 0;
      v22 = 0;
      v23 = v59;
      while (1)
      {
        if (!v23)
        {
          goto LABEL_125;
        }

        v24 = *(*(v20 + 32) + 8 * v21);
        if (!re::internal::findSubmeshFaceVertex(v24, v61, &v88))
        {
          goto LABEL_34;
        }

        v25 = re::internal::vertexInFace(*(v24 + 24), *(v24 + 40), v88, BYTE4(v88));
        v23 = v59;
        if (v59 >= 2)
        {
          break;
        }

LABEL_32:
        v20 = a2;
        v21 = ++v22;
        if (*(a2 + 16) <= v22)
        {
          goto LABEL_90;
        }
      }

      v26 = v25;
      v27 = 2;
      v28 = 1;
      while (re::internal::findSubmeshFaceVertex(v24, &v61[2 * v28], &v88) && re::internal::vertexInFace(*(v24 + 24), *(v24 + 40), v88, BYTE4(v88)) == v26)
      {
        v28 = v27;
        v23 = v59;
        v29 = v59 > v27++;
        if (!v29)
        {
          goto LABEL_32;
        }
      }

LABEL_34:
      v30 = re::internal::GeomVertexConnectivity::faceCount(v70, j);
      if (v30 < 2)
      {
        continue;
      }

      v31 = v30;
      v32 = 1;
      v33 = v8;
      while (1)
      {
        v34 = re::internal::GeomVertexConnectivity::faceVertex(v70, j, v32);
        v12 = 4 * v34 + BYTE4(v34);
        v3 = *(v57 + 16);
        if (v3 <= v12)
        {
          break;
        }

        v8 = (v33 + 1);
        *(*(v57 + 32) + 4 * v12) = v33;
        ++v32;
        ++v33;
        if (v31 == v32)
        {
          goto LABEL_90;
        }
      }

LABEL_121:
      v89 = 0;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v96 = 136315906;
      v97 = "operator[]";
      v98 = 1024;
      v99 = 789;
      v100 = 2048;
      v101 = v12;
      v102 = 2048;
      v103 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_122:
      v66[0] = 0;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v90) = 136315906;
      *(v7 + 4) = "operator[]";
      WORD2(v91) = 1024;
      *(v7 + 14) = 789;
      WORD1(v92) = 2048;
      *(v7 + 20) = v3;
      v94 = 2048;
      *(v7 + 30) = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_123:
      v89 = 0;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v96 = 136315906;
      v97 = "operator[]";
      v98 = 1024;
      v99 = 789;
      v100 = 2048;
      v101 = v12;
      v102 = 2048;
      v103 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_124:
      v89 = 0;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v96 = 136315906;
      v97 = "operator[]";
      v98 = 1024;
      v99 = 797;
      v100 = 2048;
      v101 = j;
      v102 = 2048;
      v103 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_125:
      v89 = 0;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v104 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v96 = 136315906;
      v97 = "operator[]";
      v98 = 1024;
      v99 = 797;
      v100 = 2048;
      v101 = 0;
      v102 = 2048;
      v103 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v19 = a2;
    if (v92 != 1)
    {
      if (!v92)
      {
        if (v91 || (re::DynamicArray<float *>::setCapacity(&v90, 1uLL), !v92))
        {
          *v95 = 0;
        }
      }

      v92 = 1;
      ++v93;
    }

    v35 = v95;
    *v95 = 0;
    if (v59)
    {
      v36 = 0;
      v37 = 1;
      do
      {
        v3 = 1 << v36;
        v38 = re::Bitset<64>::toWordIndex(v35, v36);
        *(v35 + 8 * v38) |= v3;
        v36 = v37;
        v29 = v59 > v37++;
      }

      while (v29);
    }

    v67 = 0;
    ++v68;
    v63 = 0;
    ++v64;
    if (!*(a2 + 16))
    {
      continue;
    }

    v53 = v8;
    v39 = 0;
    v40 = 0;
    do
    {
      v56 = v40;
      v15 = *(*(v19 + 32) + 8 * v39);
      v67 = 0;
      ++v68;
      v41 = v59;
      v87 = 0;
      v88 = 0;
      if (!v59)
      {
        goto LABEL_63;
      }

      v9 = 0;
      v42 = 1;
      do
      {
        v12 = v59;
        if (v59 <= v9)
        {
          goto LABEL_116;
        }

        v86 = *&v61[2 * v9];
        re::Bitset<64>::toWordIndex(&v87, v9);
        v12 = 1 << v9;
        if ((v87 & (1 << v9)) == 0)
        {
          if (re::internal::findSubmeshFaceVertex(v15, &v86, &v84))
          {
            v83 = 0;
            re::Bitset<64>::toWordIndex(&v83, v9);
            v83 |= v12;
            v4 = re::internal::vertexInFace(*(v15 + 24), *(v15 + 40), v84, v85);
            v7 = v42;
            if (v9 + 1 < v41)
            {
              while (1)
              {
                v3 = v59;
                if (v59 <= v7)
                {
                  break;
                }

                *&v104 = *&v61[2 * v7];
                if (re::internal::findSubmeshFaceVertex(v15, &v104, &v84) && v4 == re::internal::vertexInFace(*(v15 + 24), *(v15 + 40), v84, v85))
                {
                  v3 = 1 << v7;
                  re::Bitset<64>::toWordIndex(&v83, v7);
                  v83 |= 1 << v7;
                  re::Bitset<64>::toWordIndex(&v87, v7);
                  v87 |= 1 << v7;
                }

                if (v41 == ++v7)
                {
                  goto LABEL_57;
                }
              }

              v89 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v96 = 136315906;
              v97 = "operator[]";
              v98 = 1024;
              v99 = 797;
              v100 = 2048;
              v101 = v7;
              v102 = 2048;
              v103 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_116:
              v89 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v96 = 136315906;
              v97 = "operator[]";
              v98 = 1024;
              v99 = 797;
              v100 = 2048;
              v101 = v9;
              v102 = 2048;
              v103 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_117:
              v89 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v96 = 136315906;
              v97 = "operator[]";
              v98 = 1024;
              v99 = 789;
              v100 = 2048;
              v101 = v4;
              v102 = 2048;
              v103 = v3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_118:
              v89 = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v96 = 136315906;
              v97 = "operator[]";
              v98 = 1024;
              v99 = 789;
              v100 = 2048;
              v101 = v9;
              v102 = 2048;
              v103 = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_119:
              v66[0] = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v90) = 136315906;
              *(v7 + 4) = "operator[]";
              WORD2(v91) = 1024;
              *(v7 + 14) = 789;
              WORD1(v92) = 2048;
              *(v7 + 20) = v15;
              v94 = 2048;
              *(v7 + 30) = v12;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_120:
              v66[0] = 0;
              v107 = 0u;
              v108 = 0u;
              v105 = 0u;
              v106 = 0u;
              v104 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              LODWORD(v90) = 136315906;
              *(v7 + 4) = "operator[]";
              WORD2(v91) = 1024;
              *(v7 + 14) = 797;
              WORD1(v92) = 2048;
              *(v7 + 20) = v9;
              v94 = 2048;
              *(v7 + 30) = v9;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_121;
            }

LABEL_57:
            re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v66, &v83);
          }

          else
          {
            re::Bitset<64>::toWordIndex(&v88, v9);
            v88 |= v12;
          }

          re::Bitset<64>::toWordIndex(&v87, v9);
          v87 |= v12;
        }

        ++v9;
        ++v42;
      }

      while (v9 != v41);
      if (v88)
      {
        re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v66, &v88);
      }

LABEL_63:
      v63 = 0;
      ++v64;
      if (v92)
      {
        v43 = v95;
        v44 = &v95[v92];
        v45 = v69;
        v3 = v67;
        v46 = 8 * v67;
        do
        {
          v7 = v46;
          v4 = v45;
          if (v3)
          {
            do
            {
              *&v104 = *v4 & *v43;
              if (v104)
              {
                re::DynamicArray<re::DataArrayHandle<re::PerFrameAllocatorImpl>>::add(v62, &v104);
              }

              v4 += 8;
              v7 -= 8;
            }

            while (v7);
          }

          ++v43;
        }

        while (v43 != v44);
      }

      if (v90)
      {
        v19 = a2;
        v47 = v56;
        if (v62[0])
        {
          re::DynamicArray<char const*>::copy(&v90, v62);
        }

        else
        {
          v92 = 0;
        }

        ++v93;
      }

      else
      {
        v19 = a2;
        v47 = v56;
        if (v62[0])
        {
          v90 = v62[0];
          re::DynamicArray<float *>::setCapacity(&v90, v63);
          ++v93;
          re::DynamicArray<char const*>::copy(&v90, v62);
        }
      }

      v39 = (v47 + 1);
      v40 = v47 + 1;
    }

    while (*(v19 + 16) > v39);
    v12 = v92;
    if ((v92 & 0xFFFFFFFE) != 0)
    {
      v48 = v95;
      v15 = v92;
      v7 = 1;
      LODWORD(v8) = v53;
      while (1)
      {
        if (v7 == v12)
        {
          goto LABEL_123;
        }

        v49 = v48[v7];
        if (v49)
        {
          break;
        }

LABEL_87:
        v8 = (v8 + 1);
        if (++v7 == v12)
        {
          goto LABEL_90;
        }
      }

      v9 = __clz(__rbit64(v49));
      while (1)
      {
        v50 = re::internal::GeomVertexConnectivity::faceVertex(v70, j, v9);
        v4 = 4 * v50 + BYTE4(v50);
        v3 = *(v57 + 16);
        if (v3 <= v4)
        {
          goto LABEL_117;
        }

        *(*(v57 + 32) + 4 * v4) = v8;
        if (v9 != 63)
        {
          v51 = (v48[v7] & (-2 << v9)) == 0;
          v9 = __clz(__rbit64(v48[v7] & (-2 << v9)));
          if (!v51)
          {
            continue;
          }
        }

        goto LABEL_87;
      }
    }

    v8 = v53;
LABEL_90:
    ;
  }

LABEL_91:
  if (v58[0] && v61)
  {
    (*(*v58[0] + 40))();
  }

  if (v62[0] && v65)
  {
    (*(*v62[0] + 40))();
  }

  if (v66[0] && v69)
  {
    (*(*v66[0] + 40))();
  }

  if (v90 && v95)
  {
    (*(*v90 + 40))();
  }

  if (v78)
  {
    if (v82)
    {
      (*(*v78 + 40))();
    }

    v82 = 0;
    v79 = 0;
    v80 = 0;
    v78 = 0;
    ++v81;
  }

  if (v73)
  {
    if (v77)
    {
      (*(*v73 + 40))();
    }

    v77 = 0;
    v74 = 0;
    v75 = 0;
    v73 = 0;
    ++v76;
  }

  if (v70[0] && v72)
  {
    (*(*v70[0] + 40))();
  }

  return v8;
}

uint64_t re::internal::GeomVertexConnectivity::faceCount(re::internal::GeomVertexConnectivity *this, unsigned int a2)
{
  if (*(this + 2) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 4) + 4 * a2);
}

uint64_t re::internal::createAndCopyVertexAttribute(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(result + 16) | 2) != 3)
  {
    return result;
  }

  v6 = result;
  result = re::internal::GeomAttributeManager::addAttribute((a4 + 48), *(result + 8), 1, *(result + 17));
  if (!result)
  {
    return result;
  }

  if (!*(a2 + 16))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (!*(a3 + 16))
  {
    goto LABEL_10;
  }

  v7 = *(*v6 + 40);

  return v7(v6, result);
}

uint64_t re::internal::GeomBaseMesh::addFaceVaryingAttribute(_anonymous_namespace_ *a1, const char *a2, uint64_t a3, int *a4, uint64_t a5)
{
  v55[11] = *MEMORY[0x1E69E9840];
  v11 = *(a4 + 3);
  v12 = v11;
  v13 = *(a1 + 3);
  if (v11 != v13)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0;
    if (v11)
    {
      v25 = 0;
      while (1)
      {
        v26 = v25;
        v16 = *(a5 + 16);
        if (v16 <= v25)
        {
          break;
        }

        LODWORD(v50) = *(*(a5 + 32) + 4 * v25);
        re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addOrReplace(&v35, &v50, &v34);
        v25 = v34 + 1;
        v34 = v25;
        if (v25 >= v11)
        {
          goto LABEL_17;
        }
      }

      v39 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      *v46 = 789;
      *&v46[4] = 2048;
      *&v46[6] = v26;
      v47 = 2048;
      v48 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v39 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      *v46 = 789;
      *&v46[4] = 2048;
      *&v46[6] = v11;
      v47 = 2048;
      v48 = v11;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v39 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v50 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v43 = 136315906;
      v44 = "operator[]";
      v45 = 1024;
      *v46 = 789;
      *&v46[4] = 2048;
      *&v46[6] = v5;
      v47 = 2048;
      v48 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_17:
    re::GeomIndexMap::GeomIndexMap(&v43, a5);
    re::GeomIndexMap::GeomIndexMap(&v39, &v35);
    v27 = *a4;
    *(&v50 + 1) = *(a4 + 1);
    v28 = *(a4 + 1);
    *(a4 + 1) = 0;
    *(a4 + 2) = 0;
    *(a4 + 3) = 0;
    v51 = v28;
    *(&v52 + 1) = *(a4 + 5);
    *(a4 + 5) = 0;
    v29 = a4[8];
    LODWORD(v50) = v27;
    LODWORD(v52) = 1;
    *a4 = 0;
    a4[8] = v29 + 2;
    re::GeomIndexMap::GeomIndexMap(&v53, &v43);
    re::GeomIndexMap::GeomIndexMap(v55, &v39);
    v21 = re::internal::GeomAttributeManager::addFaceVaryingAttribute(a1 + 48, a2, a3, &v50);
    re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v50, v30);
    if (v40)
    {
      if (v40 == 2)
      {
        v32.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v41);
      }

      else
      {
        if (v40 != 1)
        {
          re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
          _os_crash();
          __break(1u);
          goto LABEL_48;
        }

        if (v41[0])
        {
          v31 = v42;
          if (v42)
          {
            (*(*v41[0] + 40))();
          }
        }
      }
    }

    if (v45)
    {
      if (v45 != 2)
      {
        if (v45 == 1)
        {
          if (*&v46[2] && v49)
          {
            (*(**&v46[2] + 40))(*&v46[2], v32);
          }

          goto LABEL_31;
        }

LABEL_48:
        re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
        _os_crash();
        __break(1u);
        goto LABEL_49;
      }

      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v46[2]);
    }

LABEL_31:
    re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v35);
    return v21;
  }

  *&v37 = 0;
  *&v36 = 0;
  v35 = 0uLL;
  DWORD2(v36) = 0;
  re::DynamicArray<unsigned int>::resize(&v35, v13, &re::kInvalidMeshIndex);
  if (v11)
  {
    v14 = 0;
    v11 = *(a5 + 16);
    v15 = *(a5 + 32);
    v16 = v36;
    v17 = v37;
    while (v11 != v14)
    {
      v5 = *(v15 + 4 * v14);
      if (v16 <= v5)
      {
        goto LABEL_46;
      }

      *(v17 + 4 * v5) = v14++;
      if (v12 == v14)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_45;
  }

LABEL_7:
  re::GeomIndexMap::GeomIndexMap(&v43, a5);
  re::GeomIndexMap::GeomIndexMap(&v39, &v35);
  v18 = *a4;
  *(&v50 + 1) = *(a4 + 1);
  v19 = *(a4 + 1);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v51 = v19;
  *(&v52 + 1) = *(a4 + 5);
  *(a4 + 5) = 0;
  v20 = a4[8];
  LODWORD(v50) = v18;
  LODWORD(v52) = 1;
  *a4 = 0;
  a4[8] = v20 + 2;
  re::GeomIndexMap::GeomIndexMap(&v53, &v43);
  re::GeomIndexMap::GeomIndexMap(v55, &v39);
  v21 = re::internal::GeomAttributeManager::addFaceVaryingAttribute(a1 + 48, a2, a3, &v50);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v50, v22);
  if (v40)
  {
    if (v40 == 2)
    {
      v24.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v41);
      goto LABEL_33;
    }

    if (v40 == 1)
    {
      if (v41[0])
      {
        v23 = v42;
        if (v42)
        {
          (*(*v41[0] + 40))();
        }
      }

      goto LABEL_33;
    }

LABEL_49:
    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
    _os_crash();
    __break(1u);
    goto LABEL_50;
  }

LABEL_33:
  if (!v45)
  {
    goto LABEL_40;
  }

  if (v45 == 2)
  {
    v24.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v46[2]);
LABEL_40:
    if (v35)
    {
      if (v37)
      {
        (*(*v35 + 40))(v24);
      }
    }

    return v21;
  }

  if (v45 == 1)
  {
    if (*&v46[2] && v49)
    {
      (*(**&v46[2] + 40))(*&v46[2], v24);
    }

    goto LABEL_40;
  }

LABEL_50:
  re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::createAndCopyAttributesWithRate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  result = re::internal::GeomAttributeManager::attributeCount(a1 + 48, a3);
  if (result)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 48), v8, v3);
      v10 = re::internal::GeomAttributeManager::addAttribute((a2 + 48), *(v9 + 8), *(v9 + 16), *(v9 + 17));
      result = re::GeomAttribute::copyValues(v9, v10);
      v8 = (v8 + 1);
    }

    while (v7 != v8);
  }

  return result;
}

uint64_t re::internal::buildMeshWithNewFaceVertexTopology(unint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v164 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v124);
  v124 = a4;
  v102 = a4;
  v128 = a4;
  if (v129)
  {
    v16 = v130;
    v7 = 8 * v129;
    do
    {
      v17 = *v16++;
      (*(*v17 + 80))(v17, v128);
      v7 -= 8;
    }

    while (v7);
  }

  v18 = *(a1 + 40);
  re::DynamicArray<re::GeomCell4>::resize(v125, v18);
  v131 = v18;
  if (v132)
  {
    v19 = v133;
    v7 = 8 * v132;
    do
    {
      v20 = *v19++;
      (*(*v20 + 80))(v20, v131);
      v7 -= 8;
    }

    while (v7);
  }

  v103 = a1;
  v21 = *(a1 + 40);
  if (v21)
  {
    v22 = 0;
    v23 = 0;
    a1 = *(a5 + 16);
    v24 = *(a5 + 32);
    v8 = v125[2];
    v25 = (v126 + 12);
    v26 = *(v103 + 56) + 12;
    while (1)
    {
      if (v21 == v23)
      {
        goto LABEL_167;
      }

      v7 = v22 & 0xFFFFFFFC;
      if (a1 <= v7)
      {
        break;
      }

      v27 = *(v26 + 4 * v22);
      v28 = (v24 + 4 * v7);
      if (v27 != -1)
      {
        v27 = *(v28 + 3);
      }

      if (v8 == v23)
      {
        goto LABEL_169;
      }

      v29 = *v28;
      v30 = *(v28 + 2);
      *(v25 - 3) = v29;
      *(v25 - 1) = v30;
      *v25 = v27;
      ++v23;
      v25 += 4;
      v22 += 4;
      if (v21 == v23)
      {
        goto LABEL_15;
      }
    }

LABEL_168:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 797;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v7;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_169:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 789;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v8;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_170:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 789;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v7;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_171:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 789;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v21;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_172:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 797;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v21;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v21;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_173:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    v46 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 797;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = a6;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_174;
  }

LABEL_15:
  re::internal::createAndCopyAttributesWithRate(v103 + 16, &v124, 0);
  re::internal::createAndCopyAttributesWithRate(v103 + 16, &v124, 2);
  re::internal::createAndCopyAttributesWithRate(v103 + 16, &v124, 4);
  v123 = 0;
  v120[1] = 0;
  v121 = 0;
  v119 = 0;
  v120[0] = 0;
  v122 = 0;
  v116[1] = 0;
  v117 = 0;
  v116[0] = 0;
  v7 = v102;
  v118 = 1;
  v9 = &re::kInvalidMeshIndex;
  re::DynamicArray<unsigned int>::resize(v116, v102, &re::kInvalidMeshIndex);
  v121 = 0;
  ++v122;
  re::DynamicArray<unsigned int>::resize(v120, v102, &re::kInvalidMeshIndex);
  v32 = *(v103 + 16);
  if (v32)
  {
    v33 = 0;
    v7 = v117;
    v34 = v119;
    v21 = v121;
    v35 = v123;
    while (v7 != v33)
    {
      v34[v33] = v33;
      if (v21 == v33)
      {
        goto LABEL_171;
      }

      *(v35 + 4 * v33) = v33;
      if (v32 == ++v33)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_170;
  }

LABEL_20:
  v21 = *(v103 + 40);
  if (!v21)
  {
    goto LABEL_32;
  }

  v36 = 0;
  v37 = 0;
  v38 = *(v103 + 56);
  a1 = *(a5 + 16);
  do
  {
    if (v37 == v21)
    {
      goto LABEL_172;
    }

    *v139 = *(v38 + 16 * v37);
    if (*&v139[12] == -1)
    {
      v39 = 3;
    }

    else
    {
      v39 = 4;
    }

    v40 = *(a5 + 32);
    v8 = v117;
    v41 = v119;
    v42 = v139;
    v10 = v121;
    v43 = v123;
    v44 = v36;
    do
    {
      v7 = v44;
      if (a1 <= v44)
      {
        *v143 = 0;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v161[0]) = 136315906;
        *(v161 + 4) = "operator[]";
        WORD2(v161[1]) = 1024;
        *(&v161[1] + 6) = 797;
        WORD1(v161[2]) = 2048;
        *(&v161[2] + 4) = v7;
        WORD2(v161[3]) = 2048;
        *(&v161[3] + 6) = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_46;
      }

      v9 = *(v40 + 4 * v44);
      if (v8 <= v9)
      {
        *v143 = 0;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v161[0]) = 136315906;
        *(v161 + 4) = "operator[]";
        WORD2(v161[1]) = 1024;
        *(&v161[1] + 6) = 789;
        WORD1(v161[2]) = 2048;
        *(&v161[2] + 4) = v9;
        WORD2(v161[3]) = 2048;
        *(&v161[3] + 6) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_162:
        *v143 = 0;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        v62 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v161[0]) = 136315906;
        *(v161 + 4) = "operator[]";
        WORD2(v161[1]) = 1024;
        *(&v161[1] + 6) = 789;
        WORD1(v161[2]) = 2048;
        *(&v161[2] + 4) = v9;
        WORD2(v161[3]) = 2048;
        *(&v161[3] + 6) = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_163:
        *v143 = 0;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        v7 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v161[0]) = 136315906;
        *(v161 + 4) = "operator[]";
        WORD2(v161[1]) = 1024;
        *(&v161[1] + 6) = 797;
        WORD1(v161[2]) = 2048;
        *(&v161[2] + 4) = a7;
        WORD2(v161[3]) = 2048;
        *(&v161[3] + 6) = v62;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_164:
        *v143 = 0;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v161[0]) = 136315906;
        *(v161 + 4) = "operator[]";
        WORD2(v161[1]) = 1024;
        *(&v161[1] + 6) = 789;
        WORD1(v161[2]) = 2048;
        *(&v161[2] + 4) = v21;
        WORD2(v161[3]) = 2048;
        *(&v161[3] + 6) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_165:
        *v143 = 0;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v146 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v161[0]) = 136315906;
        *(v161 + 4) = "operator[]";
        WORD2(v161[1]) = 1024;
        *(&v161[1] + 6) = 789;
        WORD1(v161[2]) = 2048;
        *(&v161[2] + 4) = v21;
        WORD2(v161[3]) = 2048;
        *(&v161[3] + 6) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_166;
      }

      v31 = *v42;
      v41[v9] = v31;
      if (v10 <= v9)
      {
        goto LABEL_162;
      }

      *(v43 + 4 * v9) = v9;
      ++v42;
      ++v44;
      --v39;
    }

    while (v39);
    ++v37;
    v36 += 4;
  }

  while (v37 != v21);
LABEL_32:
  if (!a6)
  {
    goto LABEL_50;
  }

  v161[4] = 0;
  memset(v161, 0, 28);
  re::DynamicArray<float>::resize(v161, v102);
  if (v102)
  {
    v45 = 0;
    v46 = v117;
    v47 = v119;
    v48 = v121;
    v49 = v123;
    a1 = v161[2];
    v50 = v161[4];
    while (v46 != v45)
    {
      if (v48 == v45)
      {
        goto LABEL_175;
      }

      v8 = *(v49 + 4 * v45);
      if (a1 <= v8)
      {
        goto LABEL_176;
      }

      *(v50 + 4 * v8) = v47[v45++];
      if (v102 == v45)
      {
        goto LABEL_39;
      }
    }

LABEL_174:
    *v143 = 0;
    v48 = v139;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v139 = 136315906;
    *&v139[4] = "operator[]";
    *&v139[12] = 1024;
    *&v139[14] = 789;
    *&v139[18] = 2048;
    *&v139[20] = v46;
    v140 = 2048;
    *v141 = v46;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_175:
    *v143 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v139 = 136315906;
    *&v139[4] = "operator[]";
    *&v139[12] = 1024;
    *&v139[14] = 789;
    *&v139[18] = 2048;
    *&v139[20] = v48;
    v140 = 2048;
    *v141 = v48;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_176:
    *v143 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v139 = 136315906;
    *&v139[4] = "operator[]";
    *&v139[12] = 1024;
    *&v139[14] = 789;
    *&v139[18] = 2048;
    *&v139[20] = v8;
    v140 = 2048;
    *v141 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    v134[0] = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v143 = 136315906;
    *&v143[4] = "operator[]";
    *&v143[12] = 1024;
    *&v143[14] = 789;
    *&v143[18] = 2048;
    *&v143[20] = a1;
    v144 = 2048;
    *v145 = a1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_178:
    v134[0] = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v143 = 136315906;
    *&v143[4] = "operator[]";
    *&v143[12] = 1024;
    *&v143[14] = 789;
    *&v143[18] = 2048;
    *&v143[20] = v8;
    v144 = 2048;
    *v145 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_179:
    v134[0] = 0;
    v76 = v139;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v143 = 136315906;
    *&v143[4] = "operator[]";
    *&v143[12] = 1024;
    *&v143[14] = 789;
    *&v143[18] = 2048;
    *&v143[20] = a6;
    v144 = 2048;
    *v145 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_180:
    v134[0] = 0;
    v21 = v139;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    v56 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v143 = 136315906;
    *&v143[4] = "operator[]";
    *&v143[12] = 1024;
    *&v143[14] = 789;
    *&v143[18] = 2048;
    *&v143[20] = v8;
    v144 = 2048;
    *v145 = v76;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_181:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 797;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v21;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v56;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_182:
    *v139 = 0;
    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v146 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v161[0]) = 136315906;
    *(v161 + 4) = "operator[]";
    WORD2(v161[1]) = 1024;
    *(&v161[1] + 6) = 789;
    WORD1(v161[2]) = 2048;
    *(&v161[2] + 4) = v56;
    WORD2(v161[3]) = 2048;
    *(&v161[3] + 6) = v56;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    re::internal::assertLog(4, v85, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
LABEL_184:
    re::internal::assertLog(4, v57, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
  }

LABEL_39:
  re::GeomIndexMap::GeomIndexMap(&v146, v161);
  re::GeomIndexMap::operator=(a6, &v146);
  if (!BYTE12(v146))
  {
LABEL_47:
    if (v161[0])
    {
      v31 = v161[4];
      if (v161[4])
      {
        (*(*v161[0] + 40))(v51);
      }
    }

LABEL_50:
    v96 = a7;
    v52 = v103;
    v53 = *(v103 + 200);
    if (v53)
    {
      for (i = 0; i != v53; ++i)
      {
        v9 = re::internal::GeomAttributeContainer::attributeByIndex((v103 + 176), i);
        re::DynamicArray<float>::DynamicArray(v113, v116);
        re::DynamicArray<float>::DynamicArray(v110, v120);
        re::internal::createAndCopyVertexAttribute(v9, v113, v110, &v124);
        if (v110[0])
        {
          v31 = v112;
          if (v112)
          {
            (*(*v110[0] + 40))(v110[0], v112);
          }

          v112 = 0;
          memset(v110, 0, sizeof(v110));
          ++v111;
        }

        if (v113[0])
        {
          v31 = v115;
          if (v115)
          {
            (*(*v113[0] + 40))(v113[0], v115);
          }

          v115 = 0;
          memset(v113, 0, sizeof(v113));
          ++v114;
        }
      }
    }

    v55 = a2;
    v97 = *(a2 + 16);
    if (*(a2 + 16))
    {
      v21 = 0;
      while (1)
      {
        v56 = *(v55 + 16);
        if (v56 <= v21)
        {
          goto LABEL_181;
        }

        v99 = *(*(v55 + 32) + 8 * v21);
        v100 = v21;
        v10 = re::internal::accessFaceVaryingAttributeSubmesh(v99, v31);
        v117 = 0;
        ++v118;
        re::DynamicArray<unsigned int>::resize(v116, v102, &re::kInvalidMeshIndex);
        v121 = 0;
        ++v122;
        re::DynamicArray<unsigned int>::resize(v120, v102, &re::kInvalidMeshIndex);
        a1 = *(v10 + 24);
        if (*(v10 + 24))
        {
          break;
        }

LABEL_87:
        v52 = v103;
        if (v102)
        {
          v56 = v117;
          if (v117 <= v102 - 1)
          {
            goto LABEL_182;
          }

          v67 = 0;
          v68 = v119;
          v69 = v102;
          do
          {
            v70 = *v68++;
            if (v70 == -1)
            {
              ++v67;
            }

            --v69;
          }

          while (v69);
          if (v67)
          {
            v161[4] = 0;
            memset(v161, 0, 28);
            *&v141[2] = 0;
            memset(v139, 0, sizeof(v139));
            v71 = v102 - v67;
            re::DynamicArray<float>::resize(v161, v71);
            re::DynamicArray<float>::resize(v139, v71);
            a6 = 0;
            v72 = 0;
            a1 = v117;
            v73 = v119;
            v9 = v161[2];
            v74 = v161[4];
            v10 = v121;
            v75 = v123;
            v76 = *&v139[16];
            v77 = *&v141[2];
            do
            {
              if (a1 == a6)
              {
                goto LABEL_177;
              }

              v78 = v73[a6];
              if (v78 != -1)
              {
                v8 = v72;
                if (v9 <= v72)
                {
                  goto LABEL_178;
                }

                *(v74 + 4 * v72) = v78;
                if (v10 <= a6)
                {
                  goto LABEL_179;
                }

                if (v76 <= v72)
                {
                  goto LABEL_180;
                }

                *(v77 + 4 * v72++) = *(v75 + 4 * a6);
              }

              ++a6;
            }

            while (v102 != a6);
            re::DynamicArray<float>::operator=(v116, v161);
            re::DynamicArray<float>::operator=(v120, v139);
            if (*v139 && *&v141[2])
            {
              (*(**v139 + 40))(*v139, *&v141[2]);
            }

            v52 = v103;
            if (v161[0] && v161[4])
            {
              (*(*v161[0] + 40))(v161[0], v161[4]);
            }
          }
        }

        re::DynamicArray<float>::DynamicArray(v107, v116);
        re::DynamicArray<float>::DynamicArray(v104, v120);
        re::internal::createAndCopyVertexAttribute(v99, v107, v104, &v124);
        if (v104[0])
        {
          v31 = v106;
          if (v106)
          {
            (*(*v104[0] + 40))(v104[0], v106);
          }

          v106 = 0;
          memset(v104, 0, sizeof(v104));
          ++v105;
        }

        if (v107[0])
        {
          v31 = v109;
          if (v109)
          {
            (*(*v107[0] + 40))(v107[0], v109);
          }

          v109 = 0;
          memset(v107, 0, sizeof(v107));
          ++v108;
        }

        v21 = v100 + 1;
        v55 = a2;
        if (v100 + 1 == v97)
        {
          goto LABEL_117;
        }
      }

      a6 = 0;
      while (1)
      {
        v7 = *(v10 + 24);
        if (v7 <= a6)
        {
          goto LABEL_173;
        }

        *v139 = *(*(v10 + 40) + 16 * a6);
        if (*&v139[12] == -1)
        {
          v9 = 3;
        }

        else
        {
          v9 = 4;
        }

        LODWORD(v146) = a6;
        v58 = *(v10 + 60);
        if (v58 == 2)
        {
          v60 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v10 + 64), &v146);
          if (v60 != -1)
          {
            v59 = *(*(v10 + 72) + 8 * v60 + 4);
            goto LABEL_81;
          }
        }

        else
        {
          if (v58 != 1)
          {
            if (*(v10 + 60))
            {
              goto LABEL_184;
            }

            if (a6 >= *(v10 + 64))
            {
              v59 = -1;
            }

            else
            {
              v59 = a6;
            }

            goto LABEL_81;
          }

          if (*(v10 + 80) > a6)
          {
            v59 = *(*(v10 + 96) + 4 * a6);
            goto LABEL_81;
          }
        }

        v59 = -1;
LABEL_81:
        v61 = 4 * v59;
        v62 = *(a5 + 16);
        v63 = *(a5 + 32);
        v8 = v117;
        v64 = v119;
        v65 = v139;
        v7 = v121;
        v66 = v123;
        do
        {
          a7 = v61;
          if (v62 <= v61)
          {
            goto LABEL_163;
          }

          v21 = *(v63 + 4 * v61);
          if (v8 <= v21)
          {
            goto LABEL_164;
          }

          v64[v21] = *v65;
          if (v7 <= v21)
          {
            goto LABEL_165;
          }

          *(v66 + 4 * v21) = v21;
          ++v65;
          ++v61;
          --v9;
        }

        while (v9);
        if (++a6 == a1)
        {
          goto LABEL_87;
        }
      }
    }

LABEL_117:
    v79 = *(a3 + 16);
    if (!v79)
    {
LABEL_151:
      v94 = re::GeomMesh::operator=(v96, &v124);
      re::GeomMesh::setName(v94, *v52);
      if (v116[0] && v119)
      {
        (*(*v116[0] + 40))(v116[0], v119);
      }

      if (v120[0] && v123)
      {
        (*(*v120[0] + 40))(v120[0], v123);
      }

      re::internal::GeomAttributeManager::~GeomAttributeManager(&v127);
      result = v125[0];
      if (v125[0])
      {
        if (v126)
        {
          return (*(*v125[0] + 40))(v125[0], v126);
        }
      }

      return result;
    }

    v80 = *(a3 + 32);
    v81 = &v80[v79];
    a6 = &v146;
    v9 = v139;
    while (1)
    {
      v82 = *v80;
      v83 = re::internal::accessFaceVaryingAttributeSubmesh(*v80, v31);
      re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(&v146, v83);
      v84 = DWORD2(v147);
      *&v145[2] = 0;
      memset(v143, 0, sizeof(v143));
      if (DWORD2(v147))
      {
        break;
      }

LABEL_133:
      *v139 = v146;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v139[8], &v146 + 1);
      if (!*&v139[16])
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v139[8], 1uLL);
      }

      v89 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v124, *(v82 + 1), *(v82 + 17), v139, v143);
      if (v89)
      {
        v91 = v89;
        v137 = 0;
        v135 = 0;
        v134[0] = 0;
        v134[1] = 0;
        v136 = 0;
        v8 = (*(*v82 + 16))(v82);
        a1 = v8;
        re::DynamicArray<float>::resize(v134, v8);
        if (v8)
        {
          v92 = 0;
          v7 = v135;
          v93 = v137;
          while (v7 != v92)
          {
            *(v93 + 4 * v92) = v92;
            if (v8 == ++v92)
            {
              goto LABEL_140;
            }
          }

LABEL_166:
          v138 = 0;
          v21 = &v153;
          v162 = 0u;
          v163 = 0u;
          memset(v161, 0, sizeof(v161));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v153 = 136315906;
          v154 = "operator[]";
          v155 = 1024;
          v156 = 789;
          v157 = 2048;
          v158 = v7;
          v159 = 2048;
          v160 = v7;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_167:
          *v139 = 0;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v146 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v161[0]) = 136315906;
          *(v161 + 4) = "operator[]";
          WORD2(v161[1]) = 1024;
          *(&v161[1] + 6) = 797;
          WORD1(v161[2]) = 2048;
          *(&v161[2] + 4) = v21;
          WORD2(v161[3]) = 2048;
          *(&v161[3] + 6) = v21;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_168;
        }

LABEL_140:
        (*(*v82 + 40))(v82, v91, v8, v137, v137);
        if (v134[0])
        {
          v90 = v137;
          if (v137)
          {
            (*(*v134[0] + 40))(v134[0], v137);
          }
        }

        v52 = v103;
      }

      if (*&v139[8])
      {
        v90 = v142;
        if (v142)
        {
          (*(**&v139[8] + 40))(*&v139[8], v142);
        }
      }

      if (*v143)
      {
        v90 = *&v145[2];
        if (*&v145[2])
        {
          (*(**v143 + 40))(*v143, *&v145[2]);
        }
      }

      re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v146, v90);
      if (++v80 == v81)
      {
        goto LABEL_151;
      }
    }

    re::DynamicArray<int>::setCapacity(v143, DWORD2(v147));
    v86 = 0;
    while (1)
    {
      LODWORD(v161[0]) = v86;
      if (BYTE12(v149) == 2)
      {
        break;
      }

      if (BYTE12(v149) != 1)
      {
        if (BYTE12(v149))
        {
          goto LABEL_183;
        }

        if (v86 >= v150)
        {
          goto LABEL_132;
        }

        LODWORD(v161[0]) = v86;
LABEL_131:
        re::DynamicArray<int>::add(v143, v161);
        goto LABEL_132;
      }

      if (v151 > v86)
      {
        v87 = (v152 + 4 * v86);
LABEL_130:
        LODWORD(v161[0]) = *v87;
        if (LODWORD(v161[0]) != -1)
        {
          goto LABEL_131;
        }
      }

LABEL_132:
      if (++v86 == v84)
      {
        goto LABEL_133;
      }
    }

    v88 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(&v150, v161);
    if (v88 == -1)
    {
      goto LABEL_132;
    }

    v87 = (*(&v150 + 1) + 8 * v88 + 4);
    goto LABEL_130;
  }

  if (BYTE12(v146) == 2)
  {
LABEL_46:
    v51.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v147);
    goto LABEL_47;
  }

  if (BYTE12(v146) == 1)
  {
    if (v147)
    {
      v31 = v149;
      if (v149)
      {
        (*(*v147 + 40))();
      }
    }

    goto LABEL_47;
  }

  re::internal::assertLog(4, v31, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  result = _os_crash();
  __break(1u);
  return result;
}

re::internal::GeomBaseMesh *re::internal::GeomBaseMesh::GeomBaseMesh(re::internal::GeomBaseMesh *this)
{
  *this = 0;
  *(this + 5) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  v2 = (this + 8);
  re::DynamicArray<re::BlendNode>::setCapacity(v2, 1uLL);
  ++*(this + 8);
  re::internal::GeomAttributeManager::GeomAttributeManager((this + 48));
  return this;
}

uint64_t re::internal::buildMeshFromNewFaceVertices(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  if (*(a1 + 640))
  {
    v6 = 0;
    do
    {
      v21 = re::internal::GeomAttributeManager::attributeByIndex((a1 + 64), v6);
      if (*(v21 + 16) == 3)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v22, &v21);
      }

      ++v6;
    }

    while (v6 < *(a1 + 640));
  }

  v7 = *(a2 + 16);
  if (*(a2 + 16))
  {
    v8 = *(a2 + 32);
    v9 = -1;
    do
    {
      v11 = *v8++;
      v10 = v11;
      if (v11 >= v9 || v9 == -1)
      {
        v13 = v10 + 1;
      }

      else
      {
        v13 = v9;
      }

      if (v10 != -1)
      {
        v9 = v13;
      }

      --v7;
    }

    while (v7);
  }

  else
  {
    v9 = -1;
  }

  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v18, v22);
  v17 = 0;
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  re::internal::buildMeshWithNewFaceVertexTopology(a1, v18, v15, v9, a2, 0, a3);
  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))();
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (v22[0] && v24)
  {
    (*(*v22[0] + 40))(v22[0]);
  }

  return 1;
}

uint64_t re::internal::buildMeshFromNewVertices(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v97 = *MEMORY[0x1E69E9840];
  re::internal::GeomBaseMesh::GeomBaseMesh(&v60);
  v7 = a2[2];
  v60 = v7;
  v64 = v7;
  if (v65)
  {
    v8 = v66;
    v9 = 8 * v65;
    do
    {
      v10 = *v8++;
      (*(*v10 + 80))(v10, v64);
      v9 -= 8;
    }

    while (v9);
  }

  v11 = *(a1 + 40);
  re::DynamicArray<re::GeomCell4>::resize(v61, v11);
  v67 = v11;
  if (v68)
  {
    v12 = v69;
    v13 = 8 * v68;
    do
    {
      v14 = *v12++;
      (*(*v14 + 80))(v14, v67);
      v13 -= 8;
    }

    while (v13);
  }

  j = &v75;
  v80 = 0;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v78 = 0;
  re::DynamicArray<unsigned int>::resize(&v75, *(a1 + 16), &re::kInvalidMeshIndex);
  v16 = a2[2];
  if (v16)
  {
    v17 = 0;
    v18 = a2[4];
    v19 = 1;
    v20 = v77;
    v21 = v80;
    while (1)
    {
      v22 = *(v18 + 4 * v17);
      if (v20 <= v22)
      {
        break;
      }

      v23 = v19 - 1;
      v17 = v19;
      v24 = v16 > v19++;
      *(v21 + 4 * v22) = v23;
      if (!v24)
      {
        goto LABEL_11;
      }
    }

LABEL_85:
    *&v71 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v82 = 136315906;
    *(j + 52) = "operator[]";
    *&v82[12] = 1024;
    *(j + 62) = 789;
    *&v82[18] = 2048;
    *(j + 68) = v22;
    v83 = 2048;
    *(j + 78) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_86;
  }

LABEL_11:
  v20 = *(a1 + 40);
  if (!v20)
  {
    goto LABEL_25;
  }

  v25 = 0;
  v26 = *(a1 + 56);
  v22 = v77;
  v3 = v61[2];
  v27 = v62;
  do
  {
    if (v25 == v20)
    {
      goto LABEL_87;
    }

    v28 = 0;
    v71 = *(v26 + 16 * v25);
    v29 = HIDWORD(v71);
    if (HIDWORD(v71) == -1)
    {
      v30 = 3;
    }

    else
    {
      v30 = 4;
    }

    v31 = v80;
    do
    {
      v32 = *(&v71 + v28);
      if (v22 <= v32)
      {
        *v85 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        v50 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v82 = 136315906;
        *&v82[4] = "operator[]";
        *&v82[12] = 1024;
        *&v82[14] = 789;
        *&v82[18] = 2048;
        *&v82[20] = v32;
        v83 = 2048;
        *v84 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_84:
        v70 = 0;
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v92 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v85 = 136315906;
        *&v85[4] = "operator[]";
        v86 = 1024;
        v87 = 789;
        v88 = 2048;
        v89 = j;
        v90 = 2048;
        v91 = v50;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_85;
      }

      *(&v71 + v28++) = *(v31 + 4 * v32);
    }

    while (v30 != v28);
    if (v25 == v3)
    {
      goto LABEL_88;
    }

    v44 = v29 == -1;
    v33 = HIDWORD(v71);
    v34 = DWORD2(v71);
    if (v44)
    {
      v33 = -1;
    }

    v35 = v27 + 16 * v25;
    *v35 = v71;
    *(v35 + 8) = v34;
    *(v35 + 12) = v33;
    v25 = (v25 + 1);
  }

  while (v25 != v20);
LABEL_25:
  v20 = v7;
  if (v75 && v80)
  {
    (*(*v75 + 40))();
  }

  re::internal::createAndCopyAttributesWithRate(a1 + 16, &v60, 0);
  re::internal::createAndCopyAttributesWithRate(a1 + 16, &v60, 2);
  re::internal::createAndCopyAttributesWithRate(a1 + 16, &v60, 4);
  *&v84[2] = 0;
  memset(v82, 0, sizeof(v82));
  re::DynamicArray<float>::resize(v82, v7);
  if (v7)
  {
    v36 = 0;
    v7 = *&v82[16];
    v37 = *&v84[2];
    while (v7 != v36)
    {
      *(v37 + 4 * v36) = v36;
      if (v20 == ++v36)
      {
        goto LABEL_32;
      }
    }

LABEL_86:
    *&v71 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v75) = 136315906;
    *(j + 4) = "operator[]";
    WORD2(v76) = 1024;
    *(j + 14) = 789;
    WORD1(v77) = 2048;
    *(j + 20) = v7;
    v79 = 2048;
    *(j + 30) = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_87:
    *&v71 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v82 = 136315906;
    *(j + 52) = "operator[]";
    *&v82[12] = 1024;
    *(j + 62) = 797;
    *&v82[18] = 2048;
    *(j + 68) = v20;
    v83 = 2048;
    *(j + 78) = v20;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_88:
    *v85 = 0;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v92 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v82 = 136315906;
    *(j + 52) = "operator[]";
    *&v82[12] = 1024;
    *(j + 62) = 789;
    *&v82[18] = 2048;
    *(j + 68) = v3;
    v83 = 2048;
    *(j + 78) = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_89:
    re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "value", 680);
    _os_crash();
    __break(1u);
  }

LABEL_32:
  v53 = a3;
  v38 = *(a1 + 200);
  if (v38)
  {
    for (i = 0; i != v38; ++i)
    {
      v40 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 176), i);
      re::DynamicArray<float>::DynamicArray(v57, a2);
      re::DynamicArray<float>::DynamicArray(v54, v82);
      re::internal::createAndCopyVertexAttribute(v40, v57, v54, &v60);
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

      if (v57[0])
      {
        if (v59)
        {
          (*(*v57[0] + 40))();
        }

        v59 = 0;
        memset(v57, 0, sizeof(v57));
        ++v58;
      }
    }
  }

  v41 = *(a1 + 424);
  if (v41)
  {
    v42 = 0;
    v20 = &re::kInvalidMeshIndex;
    do
    {
      v7 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 400), v42);
      v22 = re::internal::accessFaceVaryingAttributeSubmesh(v7, v43);
      LODWORD(v75) = *v22;
      re::DynamicArray<re::GeomCell4>::DynamicArray(&v76, (v22 + 8));
      if (!v77)
      {
        re::DynamicArray<re::BlendNode>::setCapacity(&v76, 1uLL);
      }

      if (*(v22 + 60))
      {
        v44 = *(v22 + 48) == 0;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        v3 = *(v22 + 24);
        if (*(a1 + 40) == v3)
        {
          v45 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v60, *(v7 + 8), *(v7 + 17), &v75);
          goto LABEL_72;
        }
      }

      else
      {
        v3 = *(v22 + 24);
      }

      v74 = 0;
      v72 = 0;
      v71 = 0uLL;
      v73 = 0;
      re::DynamicArray<unsigned int>::resize(&v71, v3, &re::kInvalidMeshIndex);
      if (v3)
      {
        for (j = 0; v3 != j; ++j)
        {
          LODWORD(v92) = j;
          v47 = *(v22 + 60);
          if (v47 == 2)
          {
            v49 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find((v22 + 64), &v92);
            if (v49 == -1)
            {
              goto LABEL_66;
            }

            v48 = *(*(v22 + 72) + 8 * v49 + 4);
          }

          else
          {
            if (v47 != 1)
            {
              if (*(v22 + 60))
              {
                goto LABEL_89;
              }

              if (j >= *(v22 + 64))
              {
                v48 = -1;
              }

              else
              {
                v48 = j;
              }

              goto LABEL_67;
            }

            if (*(v22 + 80) <= j)
            {
LABEL_66:
              v48 = -1;
              goto LABEL_67;
            }

            v48 = *(*(v22 + 96) + 4 * j);
          }

LABEL_67:
          v50 = v72;
          if (v72 <= j)
          {
            goto LABEL_84;
          }

          *(v74 + 4 * j) = v48;
        }
      }

      v45 = re::internal::GeomBaseMesh::addFaceVaryingAttribute(&v60, *(v7 + 8), *(v7 + 17), &v75, &v71);
      if (v71 && v74)
      {
        (*(*v71 + 40))();
      }

LABEL_72:
      re::GeomAttribute::copyValues(v7, v45);
      if (v76 && v81)
      {
        (*(*v76 + 40))();
      }

      ++v42;
    }

    while (v42 != v41);
  }

  v51 = re::GeomMesh::operator=(v53, &v60);
  re::GeomMesh::setName(v51, *a1);
  if (*v82 && *&v84[2])
  {
    (*(**v82 + 40))();
  }

  re::internal::GeomAttributeManager::~GeomAttributeManager(&v63);
  if (v61[0] && v62)
  {
    (*(*v61[0] + 40))();
  }

  return 1;
}

uint64_t re::internal::GeomBaseMesh::addFaceVaryingAttribute(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v30 = 0xFFFFFFFF00000000;
  v31 = -1;
  v32 = 0;
  v8 = v7 - 1;
  if ((v7 - 1) >= 0xFFFFFFFE)
  {
    v9 = 0;
    LODWORD(v33[0]) = 0;
    v10 = -1;
    v8 = -1;
  }

  else
  {
    v9 = v7;
    v10 = 0;
    v30 = v7;
    v31 = v7 - 1;
    LODWORD(v33[0]) = v7;
  }

  v27 = 0;
  v26[1] = v10;
  v26[2] = v8;
  v26[0] = v9;
  LODWORD(v28[0]) = v9;
  LODWORD(v18) = *a4;
  v11 = *(a4 + 16);
  v19 = *(a4 + 8);
  v20 = v11;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v21 = v7;
  v23 = *(a4 + 40);
  *(a4 + 40) = 0;
  v12 = *(a4 + 32);
  LODWORD(v22) = 1;
  *a4 = 0;
  *(a4 + 32) = v12 + 2;
  re::GeomIndexMap::GeomIndexMap(&v24, &v30);
  re::GeomIndexMap::GeomIndexMap(&v25, v26);
  v13 = re::internal::GeomAttributeManager::addFaceVaryingAttribute(a1 + 48, a2, a3, &v18);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(&v18, v14);
  if (v27)
  {
    if (v27 == 2)
    {
      v16.n128_f64[0] = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v28);
    }

    else
    {
      if (v27 != 1)
      {
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625, v18, v19, v20, v21, v22, v23);
        _os_crash();
        __break(1u);
        goto LABEL_22;
      }

      if (v28[0])
      {
        v15 = v29;
        if (v29)
        {
          (*(*v28[0] + 40))();
        }
      }
    }
  }

  switch(v32)
  {
    case 2:
      re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v33);
      return v13;
    case 1:
      if (v33[0])
      {
        if (v33[4])
        {
          (*(*v33[0] + 40))(v16);
        }

        memset(v33, 0, 24);
      }

      return v13;
    case 0:
      LODWORD(v33[0]) = 0;
      return v13;
  }

LABEL_22:
  re::internal::assertLog(4, v15, v16.n128_f64[0], "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "~GeomIndexMap", 625);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::internal::buildMeshByConvertingFaceVaryingToVertexHelper(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v31 = 0;
  memset(v29, 0, sizeof(v29));
  v30 = 0;
  v28 = 0;
  memset(v26, 0, sizeof(v26));
  v27 = 0;
  v8 = *(a2 + 16);
  if (v8)
  {
    re::DynamicArray<float *>::setCapacity(v29, v8);
    v9 = *(a2 + 16);
    if (v9)
    {
      re::DynamicArray<float *>::setCapacity(v26, v9);
      v10 = *(a2 + 16);
      if (v10)
      {
        v11 = *(a2 + 32);
        v12 = 8 * v10;
        do
        {
          v22[0] = re::internal::GeomAttributeManager::attributeByName((a1 + 64), *v11);
          if (*(v22[0] + 16) == 3)
          {
            re::DynamicArray<re::TransitionCondition *>::add(v29, v22);
            v25 = re::internal::accessFaceVaryingAttributeSubmesh(v22[0], v13);
            re::DynamicArray<re::RigDataValue *>::add(v26, &v25);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }

  v24 = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0;
  v14 = re::internal::calculateCompatibleFaceVertexTopology(a1, v26, v22);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v19, v29);
  v18 = 0;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  re::internal::buildMeshWithNewFaceVertexTopology(a1, v19, v16, v14, v22, a3, a4);
  if (v19[0])
  {
    if (v21)
    {
      (*(*v19[0] + 40))();
    }

    v21 = 0;
    memset(v19, 0, sizeof(v19));
    ++v20;
  }

  if (v22[0] && v24)
  {
    (*(*v22[0] + 40))();
  }

  if (v26[0] && v28)
  {
    (*(*v26[0] + 40))();
  }

  if (v29[0] && v31)
  {
    (*(*v29[0] + 40))(v29[0]);
  }

  return 1;
}

uint64_t re::internal::buildMeshBySplittingFaceVaryingToVertexHelper(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v47 = 0;
  v44[1] = 0;
  v45 = 0;
  v43 = 0;
  v44[0] = 0;
  v46 = 0;
  memset(v41, 0, sizeof(v41));
  v42 = 0;
  v8 = *(a2 + 16);
  if (v8)
  {
    re::DynamicArray<float *>::setCapacity(v44, v8);
    v9 = *(a2 + 16);
    if (v9)
    {
      re::DynamicArray<float *>::setCapacity(v41, v9);
      v10 = *(a2 + 16);
      if (v10)
      {
        v11 = *(a2 + 32);
        v12 = 8 * v10;
        do
        {
          v38[0] = re::internal::GeomAttributeManager::attributeByName((a1 + 8), *v11);
          if (*(v38[0] + 16) == 3)
          {
            re::DynamicArray<re::TransitionCondition *>::add(v44, v38);
            v35[0] = re::internal::accessFaceVaryingAttributeSubmesh(v38[0], v13);
            re::DynamicArray<re::RigDataValue *>::add(v41, v35);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }
    }
  }

  v14 = a1[53];
  v40 = 0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  if (v14)
  {
    re::DynamicArray<float *>::setCapacity(v38, v14);
    v15 = 0;
    do
    {
      v16 = re::internal::GeomAttributeContainer::attributeByIndex((a1 + 50), v15);
      v35[0] = v16;
      if (v45)
      {
        v17 = v47;
        v18 = 8 * v45;
        while (*v17 != v16)
        {
          ++v17;
          v18 -= 8;
          if (!v18)
          {
            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:
        re::DynamicArray<re::TransitionCondition *>::add(v38, v35);
      }

      ++v15;
    }

    while (v15 != v14);
  }

  v37 = 0;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  v19 = re::internal::calculateCompatibleFaceVertexTopology(a1, v41, v35);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v32, v44);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(&v27, v38);
  re::internal::buildMeshWithNewFaceVertexTopology(a1, v32, &v27, v19, v35, a3, a4);
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

  if (v32[0])
  {
    if (v34)
    {
      (*(*v32[0] + 40))(v32[0], v34, v20, v21, v22);
    }

    v34 = 0;
    memset(v32, 0, sizeof(v32));
    ++v33;
  }

  if (v35[0] && v37)
  {
    (*(*v35[0] + 40))(v35[0], v37, v20, v21, v22, v23, v24, v25, v27, v28);
  }

  if (v38[0] && v40)
  {
    (*(*v38[0] + 40))();
  }

  if (v41[0] && v43)
  {
    (*(*v41[0] + 40))(v41[0]);
  }

  if (v44[0] && v47)
  {
    (*(*v44[0] + 40))(v44[0]);
  }

  return 1;
}

void *re::internal::GeomVertexConnectivity::buildVertexConnectivity@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  *(a2 + 32) = 0u;
  v6 = (a2 + 32);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 24) = 0;
  *(a2 + 16) = 0;
  *(a2 + 72) = 0u;
  v7 = a2 + 72;
  *(a2 + 112) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0;
  v8 = a1[6];
  v9 = *a1;
  LODWORD(v32) = 0;
  re::DynamicArray<unsigned int>::resize(a2, v9, &v32);
  if (!v8)
  {
    v11 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  v11 = 0;
  v12 = *(a1 + 3);
  v13 = *(a1 + 5);
  v2 = *(a2 + 16);
  do
  {
    if (v10 == v12)
    {
      goto LABEL_41;
    }

    v14 = 0;
    v23 = *(v13 + 16 * v10);
    v15 = *v6;
    if (HIDWORD(v23) == -1)
    {
      v16 = 3;
    }

    else
    {
      v16 = 4;
    }

    v11 = (v11 + v16);
    do
    {
      v3 = *(&v23 + v14);
      if (v2 <= v3)
      {
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v3;
        v30 = 2048;
        v31 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_37:
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_38:
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_39:
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v7;
        v30 = 2048;
        v31 = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_40:
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 789;
        v28 = 2048;
        v29 = v11;
        v30 = 2048;
        v31 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_41:
        *&v23 = 0;
        v36 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 797;
        v28 = 2048;
        v29 = v12;
        v30 = 2048;
        v31 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_42;
      }

      ++*(v15 + 4 * v3);
      ++v14;
    }

    while (v16 != v14);
    ++v10;
  }

  while (v10 != v8);
LABEL_13:
  v12 = *a1;
  re::DynamicArray<float>::resize(a2 + 40, v12);
  if (!v12)
  {
    goto LABEL_23;
  }

  v2 = *(a2 + 56);
  if (!v2)
  {
LABEL_45:
    *&v23 = 0;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = 0;
    v30 = 2048;
    v31 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  **v7 = 0;
  if (v12 != 1)
  {
    v3 = 0;
    v7 = *(a2 + 16);
    v17 = *(a2 + 32);
    v18 = (*(a2 + 72) + 4);
    while (v7 != v3)
    {
      if (v2 - 1 == v3)
      {
        goto LABEL_43;
      }

      *v18 = *(v17 + 4 * v3) + *(v18 - 1);
      ++v18;
      *(v17 + 4 * v3++) = 0;
      if (v12 - 1 == v3)
      {
        goto LABEL_21;
      }
    }

LABEL_42:
    *&v23 = 0;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = v3;
    v30 = 2048;
    v31 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_43:
    *&v23 = 0;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = v2;
    v30 = 2048;
    v31 = v2;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    *&v23 = 0;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 797;
    v28 = 2048;
    v29 = v12;
    v30 = 2048;
    v31 = v11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  v7 = *(a2 + 16);
LABEL_21:
  v2 = (v12 - 1);
  if (v7 <= v2)
  {
LABEL_46:
    *&v23 = 0;
    v36 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = v2;
    v30 = 2048;
    v31 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*v6 + 4 * v2) = 0;
LABEL_23:
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  LODWORD(v32) = 0;
  re::DynamicArray<unsigned int>::resize(a2, v12, &v32);
  result = re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize((a2 + 80), v11);
  if (v8)
  {
    v12 = 0;
    while (1)
    {
      v11 = *(a1 + 3);
      if (v11 <= v12)
      {
        goto LABEL_44;
      }

      v20 = 0;
      v23 = *(*(a1 + 5) + 16 * v12);
      if (HIDWORD(v23) == -1)
      {
        v21 = 3;
      }

      else
      {
        v21 = 4;
      }

      do
      {
        v11 = *(&v23 + v20);
        v7 = *(a2 + 56);
        if (v7 <= v11)
        {
          goto LABEL_37;
        }

        v7 = *(a2 + 16);
        if (v7 <= v11)
        {
          goto LABEL_38;
        }

        v7 = (*(*(a2 + 32) + 4 * v11) + *(*(a2 + 72) + 4 * v11));
        v2 = *(a2 + 96);
        if (v2 <= v7)
        {
          goto LABEL_39;
        }

        v22 = *(a2 + 112) + 8 * v7;
        *v22 = v12;
        *(v22 + 4) = v20;
        v7 = *(a2 + 16);
        if (v7 <= v11)
        {
          goto LABEL_40;
        }

        ++*(*v6 + 4 * v11);
        ++v20;
      }

      while (v21 != v20);
      if (++v12 == v8)
      {
        return result;
      }
    }
  }

  return result;
}

void *re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(void *result, unint64_t a2)
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

  else if (result[1] < a2)
  {
    result = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(result, a2);
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

uint64_t re::internal::GeomVertexConnectivity::faceVertex(re::internal::GeomVertexConnectivity *this, unsigned int a2, int a3)
{
  if (*(this + 7) <= a2)
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

  v3 = (*(*(this + 9) + 4 * a2) + a3);
  if (*(this + 12) <= v3)
  {
    goto LABEL_5;
  }

  return *(*(this + 14) + 8 * v3);
}

re::internal::GeomAttributeFaceVaryingSubmesh *re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(re::internal::GeomAttributeFaceVaryingSubmesh *this, const re::internal::GeomAttributeFaceVaryingSubmesh *a2)
{
  *this = *a2;
  re::DynamicArray<re::GeomCell4>::DynamicArray(this + 8, a2 + 1);
  if (!*(this + 2))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(this + 1, 1uLL);
  }

  *(this + 6) = *(a2 + 6);
  *(this + 14) = *(a2 + 14);
  v5 = *(a2 + 60);
  *(this + 60) = v5;
  if (v5 == 2)
  {
    re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(this + 64, a2 + 64);
  }

  else if (v5 == 1)
  {
    re::DynamicArray<float>::DynamicArray(this + 64, a2 + 8);
  }

  else
  {
    if (v5)
    {
      re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
      _os_crash();
      __break(1u);
      goto LABEL_17;
    }

    *(this + 16) = *(a2 + 16);
  }

  *(this + 16) = *(a2 + 16);
  *(this + 34) = *(a2 + 34);
  v6 = *(a2 + 140);
  *(this + 140) = v6;
  switch(v6)
  {
    case 2:
      re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::HashBrown(this + 144, a2 + 144);
      return this;
    case 1:
      re::DynamicArray<float>::DynamicArray(this + 144, a2 + 18);
      return this;
    case 0:
      *(this + 36) = *(a2 + 36);
      return this;
  }

LABEL_17:
  re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) Invalid mapping type -- indicative of a use after free or memory corruption", "!Unreachable code", "GeomIndexMap", 433);
  result = _os_crash();
  __break(1u);
  return result;
}

double re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::addOrReplace(void *a1, unsigned int *a2, _DWORD *a3)
{
  v6 = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::find(a1, a2);
  if (v6 == -1)
  {

    *&result = re::HashBrown<unsigned int,unsigned int,re::Hash<unsigned int>,re::EqualTo<unsigned int>,void,false>::internalAdd(a1, a2, a3).u64[0];
  }

  else
  {
    *(a1[1] + 8 * v6 + 4) = *a3;
  }

  return result;
}

uint64_t re::Bitset<64>::toWordIndex(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x40)
  {
    return 0;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %d.", "b < kBitCount", "toWordIndex", 345, a2, 64, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::triangulatePolygon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::internal::PolygonTriangulator<re::Vector3<float>>::PolygonTriangulator(v5, a1, a2);
  re::internal::PolygonTriangulator<re::Vector3<float>>::triangulateByPerimeter(v5, a3);
  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 40))();
    }

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    ++v11;
  }

  result = v6;
  if (v6)
  {
    if (v7)
    {
      return (*(*v6 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::triangulateByPerimeter(int *a1, uint64_t a2)
{
  re::internal::PolygonTriangulator<re::Vector3<float>>::resetCost(a1);
  re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(a1, 0, (*(*(a1 + 2) + 8) - 1));

  return re::internal::PolygonTriangulator<re::Vector3<float>>::retrieveTriangulation(a1, a2);
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::PolygonTriangulator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  *a1 = v4;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 24) = 0;
  v5 = (a1 + 24);
  *(a1 + 96) = 0;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  v10 = -1;
  re::DynamicArray<unsigned int>::resize((a1 + 64), (v4 * v4), &v10);
  v6 = (*a1 * *a1);
  v9 = 0;
  re::DynamicArray<float>::resize(v5, v6, &v9, v7);
  return a1;
}

void *re::internal::PolygonTriangulator<re::Vector3<float>>::resetCost(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = 0;
    do
    {
      if (v1 == v2)
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

      *(result[7] + 4 * v2) = -1082130432;
      if (result[10] <= v2)
      {
        goto LABEL_8;
      }

      *(result[12] + 4 * v2++) = -1;
    }

    while (v1 != v2);
  }

  return result;
}

float re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 + 2 <= a3)
  {
    v10.i32[0] = *re::internal::PolygonTriangulator<re::Vector3<float>>::cost(a1, a2, a3);
    if (v10.f32[0] >= 0.0)
    {
      return *re::internal::PolygonTriangulator<re::Vector3<float>>::cost(a1, a2, a3);
    }

    v11 = (a2 + 1);
    if (v11 < a3)
    {
      v12 = 0;
      v7 = -1;
      v6 = INFINITY;
      while (1)
      {
        v13 = *(a1 + 16);
        v14 = v13[1];
        if (v14 <= a2)
        {
          break;
        }

        v15 = *(a1 + 8);
        v16 = *v13;
        v17 = *(*v13 + 4 * a2);
        v18 = v15[1];
        if (v18 <= v17)
        {
          goto LABEL_27;
        }

        v19 = v11;
        if (v14 <= v11)
        {
          goto LABEL_28;
        }

        v20 = *(v16 + 4 * v11);
        if (v18 <= v20)
        {
          goto LABEL_29;
        }

        if (v14 <= a3)
        {
          goto LABEL_30;
        }

        v21 = *(v16 + 4 * a3);
        if (v18 <= v21)
        {
          goto LABEL_31;
        }

        v22 = *(*v15 + 16 * v20);
        v23 = *(*v15 + 16 * v17);
        v24 = vsubq_f32(v22, v23);
        v25 = vmulq_f32(v24, v24);
        v26 = *(*v15 + 16 * v21);
        v27 = vsubq_f32(v26, v22);
        v28 = vmulq_f32(v27, v27);
        v10 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v25, v25, 8uLL), *&vextq_s8(v28, v28, 8uLL)), vadd_f32(vzip1_s32(*v25.i8, *v28.i8), vzip2_s32(*v25.i8, *v28.i8))));
        v10.f32[0] = vaddv_f32(v10);
        v29 = vsubq_f32(v26, v23);
        v30 = vmulq_f32(v29, v29);
        v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32)) + v10.f32[0];
        if (v31 <= v6)
        {
          v10.f32[0] = re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(a1, a2, v11);
          v32 = v31 + v10.f32[0];
          if (v32 <= v6)
          {
            v10.f32[0] = v32 + re::internal::PolygonTriangulator<re::Vector3<float>>::evalPerimeterCost(a1, v11, a3);
            if (v10.f32[0] < v6 || v12 == 0)
            {
              v7 = v11;
              v6 = v10.f32[0];
            }
          }
        }

        v11 = (v11 + 1);
        --v12;
        if (a3 == v11)
        {
          goto LABEL_3;
        }
      }

      re::internal::assertLog(6, v9, *&v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a2, v14);
      _os_crash();
      __break(1u);
LABEL_27:
      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v17, v18);
      _os_crash();
      __break(1u);
LABEL_28:
      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v19, v14);
      _os_crash();
      __break(1u);
LABEL_29:
      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v20, v18);
      _os_crash();
      __break(1u);
LABEL_30:
      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, v14);
      _os_crash();
      __break(1u);
LABEL_31:
      re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v21, v18);
      _os_crash();
      __break(1u);
LABEL_32:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v7 = -1;
    v6 = INFINITY;
  }

  else
  {
    v6 = 0.0;
    v7 = -1;
  }

LABEL_3:
  v8 = (a3 + *a1 * a2);
  if (*(a1 + 80) <= v8)
  {
    goto LABEL_32;
  }

  *(*(a1 + 96) + 4 * v8) = v7;
  *re::internal::PolygonTriangulator<re::Vector3<float>>::cost(a1, a2, a3) = v6;
  return v6;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::retrieveTriangulation(int *a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  v4 = *a1;
  v5 = (3 * *a1 - 6);
  if (*(a2 + 8) < v5)
  {
    re::DynamicArray<int>::setCapacity(a2, v5);
    v4 = *a1;
  }

  return re::internal::PolygonTriangulator<re::Vector3<float>>::addTriangles(a1, 0, v4 - 1, a2);
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::cost(uint64_t a1, int a2, int a3)
{
  v3 = (a3 + *a1 * a2);
  if (*(a1 + 40) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56) + 4 * v3;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::addTriangles(uint64_t a1, int a2, unsigned int a3, void *a4)
{
  v6 = a2;
  result = re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(a1, a2, a3);
  if ((result & 0x80000000) == 0)
  {
    while (1)
    {
      v9 = re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(a1, v6, a3);
      v11 = *(a1 + 16);
      v12 = v11[1];
      if (v12 <= v6)
      {
        break;
      }

      v13 = v9;
      re::DynamicArray<int>::add(a4, (*v11 + 4 * v6));
      v15 = *(a1 + 16);
      v16 = v13;
      v17 = v15[1];
      if (v17 <= v13)
      {
        goto LABEL_8;
      }

      re::DynamicArray<int>::add(a4, (*v15 + 4 * v13));
      v19 = *(a1 + 16);
      v20 = v19[1];
      if (v20 <= a3)
      {
        goto LABEL_9;
      }

      re::DynamicArray<int>::add(a4, (*v19 + 4 * a3));
      re::internal::PolygonTriangulator<re::Vector3<float>>::addTriangles(a1, v6, v13, a4);
      result = re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(a1, v13, a3);
      v6 = v13;
      if ((result & 0x80000000) != 0)
      {
        return result;
      }
    }

    re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v6, v12);
    _os_crash();
    __break(1u);
LABEL_8:
    re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, v17);
    _os_crash();
    __break(1u);
LABEL_9:
    re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, a3, v20);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::internal::PolygonTriangulator<re::Vector3<float>>::vertex(uint64_t a1, int a2, int a3)
{
  v3 = (a3 + *a1 * a2);
  if (*(a1 + 80) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 96) + 4 * v3);
}

BOOL re::GeomConnectivityManifold::buildEdgeTable(re::GeomConnectivityManifold *this, re::GeomConnectivityManifold::EdgeTable *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v15 = *(this + 6);
  if (*(this + 6))
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
LABEL_3:
    v7 = *(this + 3);
    if (v7 <= v5)
    {
      memset(v25, 0, sizeof(v25));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      v20 = 797;
      v21 = 2048;
      v22 = v5;
      v23 = 2048;
      v24 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = 0;
    v9 = v4 & 0x1FFFFFFF;
    v16 = *(*(this + 5) + 16 * v5);
    if (HIDWORD(v16) == -1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    v11 = v4 & 0x1FFFFFFF;
    while (1)
    {
      v12 = v8 + 1;
      v13 = *(&v16 + (v8 + 1) % v10);
      LODWORD(v25[0]) = *(&v16 + v8);
      DWORD1(v25[0]) = v13;
      {
        break;
      }

      v17 = v11 | 0x80000000;
      v11 += 0x20000000;
      v8 = v12;
      if (v10 == v12)
      {
        ++v5;
        v4 = v9 + 1;
        v6 = v5 >= v15;
        if (v5 != v15)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 1;
  }

  return v6;
}

void re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::addNew(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  {
  }
}

void re::GeomConnectivityManifold::buildHalfEdges(re::GeomConnectivityManifold *this, re::GeomConnectivityManifold::EdgeTable *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0;
  ++*(this + 18);
  v4 = (a2 + 88);
  v5 = *(a2 + 14);
  if (*(this + 7) < v5)
  {
    re::DynamicArray<re::EvaluationCommand>::setCapacity(this + 6, v5);
  }

  *(this + 18) = 0;
  ++*(this + 38);
  *(this + 13) = 0;
  ++*(this + 28);
  re::DynamicArray<float>::resize(this + 128, *this);
  re::DynamicArray<float>::resize(this + 88, 4 * (*(this + 3) & 0x3FFFFFFFLL));
  *(a2 + 20) = 0;
  v28[0] = v4;
  v6 = *(a2 + 13);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *v4;
    v9 = v6 >> 4;
    while (1)
    {
      v10 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v10 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        return;
      }
    }

    v11 = __clz(__rbit64(v10 ^ 0xFFFFLL));
    v12 = v11 - v7;
    v28[1] = v10 ^ 0xFFFFLL;
    v29 = v11 - v7;
    if (v11 + 1 != v7)
    {
      v13 = 0;
      do
      {
        v14 = (*(v28[0] + 8) + 12 * v12);
        v26 = *v14;
        v16 = v14[2];
        v17 = v16 >> 29;
        v18 = (v16 >> 29) & 3 | (4 * (v16 & 0x1FFFFFFF));
        if (v15 == -1)
        {
          if ((v16 & 0x80000000) == 0)
          {
            v25 = v16 & 0xFFFFFFF | (v17 << 28) & 0x7FFFFFFF | 0x40000000;
          }

          else
          {
            v25 = v16 & 0xFFFFFFF | (v17 << 28) | 0xC0000000;
          }

          v27 = v25;
          re::DynamicArray<re::GeomConnectivityManifold::HalfEdge>::add((this + 48), &v27);
          v19 = *(this + 13);
          if (v19 <= v18)
          {
            goto LABEL_30;
          }

          *(*(this + 15) + 4 * v18) = v25;
          v19 = *(this + 18);
          v14 = v26;
          if (v19 <= v26)
          {
            goto LABEL_31;
          }

          *(*(this + 20) + 4 * v26) = v25;
          v19 = *(a2 + 2);
          if (v19 <= v18)
          {
            goto LABEL_32;
          }

          *(*(a2 + 4) + 4 * v18) = v13;
          v19 = *(a2 + 7);
          if (v19 <= v26)
          {
            goto LABEL_33;
          }

          ++*(*(a2 + 9) + 4 * v26);
          ++*(a2 + 20);
        }

        else
        {
          v19 = v4;
          v20 = *(*(a2 + 12) + 12 * v15 + 8);
          v21 = (v20 >> 1) & 0x30000000;
          v22 = v20 & (v16 & 0x80000000 | 0xFFFFFFF);
          v14 = (v21 | v22);
          v27 = v21 | v22;
          re::DynamicArray<re::GeomConnectivityManifold::HalfEdge>::add((this + 48), &v27);
          v23 = *(this + 13);
          if (v23 <= v18)
          {
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = ((v16 >> 29) & 3 | (4 * (v16 & 0x1FFFFFFF)));
            v37 = 2048;
            v38 = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_28:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v18;
            v37 = 2048;
            v38 = v23;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_29:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v14;
            v37 = 2048;
            v38 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_30:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v18;
            v37 = 2048;
            v38 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_31:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v14;
            v37 = 2048;
            v38 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_32:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v18;
            v37 = 2048;
            v38 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_33:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v14;
            v37 = 2048;
            v38 = v19;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_34:
            v30 = 0;
            v42 = 0u;
            v43 = 0u;
            v40 = 0u;
            v41 = 0u;
            v39 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v31 = 136315906;
            v32 = "operator[]";
            v33 = 1024;
            v34 = 789;
            v35 = 2048;
            v36 = v14;
            v37 = 2048;
            v38 = v18;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(*(this + 15) + 4 * v18) = v14;
          v18 = (v20 >> 29) & 3 | (4 * (v20 & 0xFFFFFFF));
          v23 = *(a2 + 2);
          if (v23 <= v18)
          {
            goto LABEL_28;
          }

          *(*(a2 + 4) + 4 * v18) = v13;
          v18 = *(a2 + 7);
          v14 = v26;
          if (v18 <= v26)
          {
            goto LABEL_29;
          }

          v24 = *(a2 + 9);
          v4 = v19;
          if (!*(v24 + 4 * v26))
          {
            *(v24 + 4 * v26) = 1;
            v18 = *(this + 18);
            if (v18 <= v26)
            {
              goto LABEL_34;
            }

            *(*(this + 20) + 4 * v26) = v16 & 0xFFFFFFF | (((v16 >> 29) & 3) << 28) | 0x80000000;
          }
        }

        ++v13;
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v28);
        v12 = v29;
      }

      while (v29 != -1);
    }
  }
}

_anonymous_namespace_ *re::DynamicArray<re::GeomConnectivityManifold::HalfEdge>::add(_anonymous_namespace_ *result, _DWORD *a2)
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

        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::EvaluationCommand>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  *(*(v3 + 4) + 4 * v5) = *a2;
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void *re::GeomConnectivityManifold::convertHalfEdgesToIndices(void *result, uint64_t a2)
{
  v2 = result[8];
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    while ((*(result[10] + 4 * v3) & 0x80000000) != 0)
    {
      v3 = ++v4;
      if (v2 <= v4)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v4 = -1;
  }

  v5 = result[3];
  v6 = result[18];
  if (v6)
  {
    v7 = 0;
    v8 = result[20];
    v9 = *(a2 + 16);
    v10 = 1;
    v11 = *(a2 + 32);
    do
    {
      v12 = *(v8 + 4 * v7);
      v13 = v4;
      if ((v12 & 0x80000000) != 0)
      {
        v14 = (v12 >> 28) & 3 | (4 * (v12 & 0xFFFFFFF));
        if (v9 <= v14)
        {
          goto LABEL_29;
        }

        v13 = *(v11 + 4 * v14);
      }

      *(v8 + 4 * v7) = v13;
      v7 = v10;
    }

    while (v6 > v10++);
  }

  if (!v5)
  {
    return result;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    if (v17 == v5)
    {
      goto LABEL_28;
    }

    if (*(result[5] + 16 * v17 + 12) == -1)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = result[13];
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    v22 = v16;
    do
    {
      if (v19 <= v22)
      {
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
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_29:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v23 = result[15];
      v24 = *(v23 + 4 * v22);
      v25 = v4;
      if ((v24 & 0x80000000) != 0)
      {
        v26 = (v24 >> 28) & 3 | (4 * (v24 & 0xFFFFFFF));
        if (v20 <= v26)
        {
          goto LABEL_27;
        }

        v25 = *(v21 + 4 * v26);
      }

      *(v23 + 4 * v22++) = v25;
      --v18;
    }

    while (v18);
    ++v17;
    v16 += 4;
  }

  while (v17 != v5);
  return result;
}

void re::GeomConnectivityManifold::buildFullEdges(re::GeomConnectivityManifold *this, const re::GeomConnectivityManifold::EdgeTable *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = *(this + 8);
  *(this + 23) = 0;
  ++*(this + 48);
  *(this + 28) = 0;
  ++*(this + 58);
  re::DynamicArray<float>::resize(this + 168, v6);
  v7 = (*(a2 + 20) + v6) >> 1;
  if (*(this + 27) < v7)
  {
    re::DynamicArray<int>::setCapacity(this + 26, v7);
  }

  v16 = 0;
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v9 = v8;
      v10 = *(this + 8);
      if (v10 <= v8)
      {
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_19:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v2;
        v24 = 2048;
        v25 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_20:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_21:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v2;
        v24 = 2048;
        v25 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_22:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v9;
        v24 = 2048;
        v25 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_23:
        v17 = 0;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v18 = 136315906;
        v19 = "operator[]";
        v20 = 1024;
        v21 = 789;
        v22 = 2048;
        v23 = v2;
        v24 = 2048;
        v25 = v10;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = *(this + 10);
      v12 = *(v11 + 4 * v8);
      v13 = *(this + 56);
      if ((v12 & 0x40000000) != 0)
      {
        break;
      }

      v2 = (v12 >> 28) & 3 | (4 * (v12 & 0xFFFFFFF));
      v3 = *(this + 13);
      if (v3 <= v2)
      {
        goto LABEL_19;
      }

      v2 = *(*(this + 15) + 4 * v2);
      if (v10 <= v2)
      {
        goto LABEL_21;
      }

      if ((v12 & 0xFFFFFFF) < (*(v11 + 4 * v2) & 0xFFFFFFFu))
      {
        v10 = *(this + 23);
        if (v10 <= v8)
        {
          goto LABEL_22;
        }

        v14 = *(this + 25);
        *(v14 + 4 * v9) = v13;
        if (v10 <= v2)
        {
          goto LABEL_23;
        }

        v15 = (v14 + 4 * v2);
        goto LABEL_15;
      }

LABEL_16:
      v16 = ++v8;
      if (v8 >= v6)
      {
        return;
      }
    }

    v10 = *(this + 23);
    if (v10 <= v8)
    {
      goto LABEL_20;
    }

    v15 = (*(this + 25) + 4 * v8);
LABEL_15:
    *v15 = v13;
    re::DynamicArray<int>::add(this + 26, &v16);
    v8 = v16;
    goto LABEL_16;
  }
}

void *re::GeomConnectivityManifold::countVertexValenceInEdgeTable(re::GeomConnectivityManifold *this, re::GeomConnectivityManifold::EdgeTable *a2)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *this;
  *(a2 + 7) = 0;
  ++*(a2 + 16);
  LODWORD(v36) = 0;
  result = re::DynamicArray<unsigned int>::resize(a2 + 5, v4, &v36);
  v6 = (a2 + 88);
  v24[0] = a2 + 88;
  v7 = *(a2 + 13);
  if (v7 >= 0x10)
  {
    v8 = 0;
    v9 = *v6;
    v10 = v7 >> 4;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v9), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v8 -= 16;
      ++v9;
      if (!--v10)
      {
        return result;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v8;
    v24[1] = v11 ^ 0xFFFFLL;
    v25 = v12 - v8;
    if (v12 + 1 != v8)
    {
      v14 = *(a2 + 7);
      v15 = *(a2 + 9);
      do
      {
        v16 = (*(v24[0] + 8) + 12 * v13);
        v17 = *v16;
        v18 = v16[1];
        {
          v19 = v16[2];
          v18 = v19 & 0x1FFFFFFF;
          v20 = *(this + 3);
          if (v20 <= v18)
          {
            *&v27 = 0;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v36 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v28 = 136315906;
            v29 = "operator[]";
            v30 = 1024;
            v31 = 797;
            v32 = 2048;
            v33 = v18;
            v34 = 2048;
            v35 = v20;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_25:
            v26 = 0;
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
            v33 = v17;
            v34 = 2048;
            v35 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_26:
            v26 = 0;
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
            v33 = v17;
            v34 = 2048;
            v35 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_27:
            *&v27 = 0;
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
            v33 = v17;
            v34 = 2048;
            v35 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_28:
            *&v27 = 0;
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
            v33 = v18;
            v34 = 2048;
            v35 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v27 = *(*(this + 5) + 16 * v18);
          if (v14 <= v17)
          {
            goto LABEL_25;
          }

          v21 = (v19 >> 29) & 3;
          if (HIDWORD(v27) == -1)
          {
            v22 = 3;
          }

          else
          {
            v22 = 4;
          }

          ++*(v15 + 4 * v17);
          v23 = v21 + 1;
          if (v23 < v22)
          {
            v22 = 0;
          }

          v17 = *(&v27 + v23 - v22);
          if (v14 <= v17)
          {
            goto LABEL_26;
          }

          ++*(v15 + 4 * v17);
        }

        else if (v18 > v17)
        {
          if (v14 <= v17)
          {
            goto LABEL_27;
          }

          ++*(v15 + 4 * v17);
          if (v14 <= v18)
          {
            goto LABEL_28;
          }

          ++*(v15 + 4 * v18);
        }

        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
        v13 = v25;
      }

      while (v25 != -1);
    }
  }

  return result;
}

BOOL re::GeomConnectivityManifold::makeTopologyManifoldBySplittingVertices(re::GeomConnectivityManifold::EdgeTable const&,re::DynamicBitset<unsigned long long,128ul> &,re::DynamicArray<unsigned int> &)::$_0::operator()(uint64_t *a1, uint64_t **a2, unint64_t a3, uint64_t a4)
{
  v54 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *(a4 + 16) = 0;
  ++*(a4 + 24);
  v5 = *a2;
  if (*a2 >= a3)
  {
LABEL_4:
    v9 = 0;
  }

  else
  {
    while (1)
    {
      v8 = *v5;
      if ((*v5 & 0x400000000000000) == 0)
      {
        break;
      }

      *a2 = ++v5;
      if (v5 >= a3)
      {
        goto LABEL_4;
      }
    }

    v43 = 0;
    v40[1] = 0;
    v41 = 0;
    v40[0] = 0;
    v42 = 0;
    *v5 = v8 | 0x400000000000000;
    v11 = *a2;
    v12 = v43;
    v13 = v41;
    *(v43 + 8 * v41) = *v11;
    v14 = v13 + 1;
    if (v13 != -1)
    {
      v15 = v42 + 1;
      do
      {
        --v14;
        v16 = v12;
        v17 = *(v12 + 8 * v14);
        v41 = v14;
        v42 = ++v15;
        v18 = (v17 >> 28) & 0xFFFFFFF;
        LODWORD(v53[0]) = (v17 >> 28) & 0xFFFFFFF;
        re::DynamicArray<int>::add(a4, v53);
        v19 = *(v4 + 24);
        if (v19 <= v18)
        {
          v44 = 0;
          memset(v53, 0, sizeof(v53));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v45 = 136315906;
          v46 = "operator[]";
          v47 = 1024;
          v48 = 797;
          v49 = 2048;
          v50 = (v17 >> 28) & 0xFFFFFFF;
          v51 = 2048;
          v52 = v19;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v53[0] = *(*(v4 + 40) + 16 * v18);
        v20 = HIBYTE(v17) & 3;
        v21 = v20 + 1;
        if (HIDWORD(v53[0]) == -1)
        {
          v22 = 3;
        }

        else
        {
          v22 = 4;
        }

        if (v21 >= v22)
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        v24 = *(v53 + (v22 + v20 - 1) % v22);
        v25 = a1[1];
        if (v26 != -1)
        {
          v27 = *(*(v25 + 96) + 12 * v26 + 8);
          if (v27 < 0)
          {
            v28 = *a2 + 1;
            if (v28 < a3)
            {
              v29 = v27 & 0x1FFFFFFF;
              while (1)
              {
                v30 = *v28;
                if (((*v28 >> 28) & 0xFFFFFFF) == v29)
                {
                  break;
                }

                if (++v28 >= a3)
                {
                  goto LABEL_27;
                }
              }

              if ((v30 & 0x400000000000000) == 0)
              {
                *v28 = v30 | 0x400000000000000;
                v31 = v41;
                v16 = v43;
                *(v43 + 8 * v41) = *v28;
                v14 = v31 + 1;
                v41 = v31 + 1;
                v15 = ++v42;
                v25 = a1[1];
              }
            }
          }
        }

LABEL_27:
        if (v32 != -1 && (v33 = *(*(v25 + 96) + 12 * v32 + 8), v33 < 0))
        {
          v34 = *a2 + 1;
          v12 = v16;
          if (v34 < a3)
          {
            v35 = v33 & 0x1FFFFFFF;
            while (1)
            {
              v36 = *v34;
              if (((*v34 >> 28) & 0xFFFFFFF) == v35)
              {
                break;
              }

              if (++v34 >= a3)
              {
                goto LABEL_30;
              }
            }

            if ((v36 & 0x400000000000000) == 0)
            {
              *v34 = v36 | 0x400000000000000;
              v12 = v43;
              v37 = v41;
              *(v43 + 8 * v41) = *v34;
              v14 = v37 + 1;
              v41 = v37 + 1;
              v15 = ++v42;
            }
          }
        }

        else
        {
          v12 = v16;
        }

LABEL_30:
        ;
      }

      while (v14);
    }

    v9 = *(a4 + 16);
    if (v40[0] && v12)
    {
      (*(*v40[0] + 40))();
    }
  }

  return v9 != 0;
}

void re::GeomConnectivityManifold::buildAndMakeManifold(unsigned int *a1, void *a2)
{
  v4 = a1;
  v119 = *MEMORY[0x1E69E9840];
  if (a1[6])
  {
    v5 = 0;
    v6 = *(a1 + 5);
    v7 = (v6 + 8);
    v8 = a1[6];
    do
    {
      if (*(v7 - 2) != -1 && *(v7 - 1) != -1 && *v7 != -1 && v7[1] != -1)
      {
        ++v5;
      }

      v7 += 4;
      --v8;
    }

    while (v8);
    v9 = 0;
    v10 = (v6 + 8);
    v11 = a1[6];
    do
    {
      if (*(v10 - 2) != -1 && *(v10 - 1) != -1 && *v10 != -1 && v10[1] == -1)
      {
        ++v9;
      }

      v10 += 4;
      --v11;
    }

    while (v11);
    v12 = 6 * v9 + 8 * v5;
  }

  else
  {
    v12 = 0;
  }

  re::GeomConnectivityManifold::EdgeTable::EdgeTable(v89, *a1, v12, a1[6]);
  v83 = 0;
  v84 = 0;
  v85 = 1;
  v86 = 0;
  v87 = 0;
  v13 = *v4;
  if ((v13 & 0x3F) != 0)
  {
    v14 = (v13 >> 6) + 1;
  }

  else
  {
    v14 = v13 >> 6;
  }

  v88 = *v4;
  *&v114 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v83, v14, &v114);
  v15 = v84;
  if (v84)
  {
    v16 = v87;
    if (v85)
    {
      v16 = &v86;
    }

    do
    {
      *v16++ = 0;
      v17 = v87;
      if (v85)
      {
        v17 = &v86;
      }
    }

    while (v16 != &v17[v15]);
  }

  v18 = v4[6];
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v99 = 0;
  v82 = v4;
  v77 = v18;
  v75 = v12;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    v21 = &v114;
    v2 = 0x20000000;
    do
    {
      v22 = *(v4 + 3);
      if (v22 <= v20)
      {
        goto LABEL_157;
      }

      v23 = 0;
      v78 = v19;
      v80 = v20;
      v24 = v20 & 0x1FFFFFFF;
      v25 = *(v4 + 5) + v19;
      do
      {
        *(&v114 + v23) = *(v25 + v23);
        v23 += 4;
      }

      while (v23 != 16);
      if (HIDWORD(v114) == -1)
      {
        v26 = 3;
      }

      else
      {
        v26 = 4;
      }

      v27 = &v114;
      v3 = 1;
      v28 = v26;
      do
      {
        v29 = &v114 + v3 % v26;
        v30 = *v29;
        *v106 = *v27;
        *&v106[4] = v30;
        if (v31 == -1)
        {
          *v103 = v24 | 0x80000000;
        }

        else
        {
          *(v93 + 12 * v31 + 8) &= ~0x80000000;
          re::DynamicBitset<unsigned long long,64ul>::setBit(&v83, *v27);
          re::DynamicBitset<unsigned long long,64ul>::setBit(&v83, *v29);
          re::DynamicArray<int>::add(&v96, v27);
          re::DynamicArray<int>::add(&v96, &v114 + v3 % v26);
        }

        v24 += 0x20000000;
        ++v27;
        ++v3;
        --v28;
      }

      while (v28);
      v20 = v80 + 1;
      v19 = v78 + 16;
      v4 = v82;
    }

    while (v80 + 1 != v77);
    v21 = v98;
    if (v98)
    {
      v32 = 0;
      v2 = 12;
      do
      {
        v22 = v32 + 1;
        if (v21 <= v32 + 1)
        {
          goto LABEL_159;
        }

        if (v33 != -1)
        {
          *(v93 + 12 * v33 + 8) &= ~0x80000000;
          v21 = v98;
        }

        v32 += 2;
      }

      while (v21 > v32);
      v20 = v21 == 0;
    }

    else
    {
      v20 = 1;
    }

    if (v96 && v100)
    {
      (*(*v96 + 40))();
    }
  }

  else
  {
    v20 = 1;
  }

  re::GeomConnectivityManifold::buildHalfEdges(v4, v89);
  re::GeomConnectivityManifold::convertHalfEdgesToIndices(v4, v89);
  re::GeomConnectivityManifold::buildFullEdges(v4, v89);
  v21 = *v4;
  re::GeomConnectivityManifold::countVertexValenceInEdgeTable(v4, v89);
  v100 = 0;
  v97 = 0;
  v98 = 0;
  v96 = 0;
  v99 = 0;
  if (v21)
  {
    v22 = 0;
    v34 = 1;
    do
    {
      re::GeomConnectivityManifold::fetchVertexOneRing(v4, v22, &v96);
      v2 = v90;
      if (v90 <= v22)
      {
        goto LABEL_158;
      }

      if (v98 != *(v91 + 4 * v22))
      {
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v83, v22);
        v34 = 0;
      }

      ++v22;
    }

    while (v21 != v22);
    if (v96 && v100)
    {
      (*(*v96 + 40))();
    }
  }

  else
  {
    v34 = 1;
  }

  if (v20 & v34)
  {
    if (v83 && (v85 & 1) == 0)
    {
      (*(*v83 + 40))();
    }
  }

  else
  {
    v101[0] = v4;
    v101[1] = v89;
    v100 = 0;
    v97 = 0;
    v98 = 0;
    v96 = 0;
    v99 = 0;
    v35 = v87;
    if (v85)
    {
      v35 = &v86;
    }

    if (v84)
    {
      v36 = 0;
      v37 = 8 * v84;
      do
      {
        v38 = *v35++;
        v39 = vcnt_s8(v38);
        v39.i16[0] = vaddlv_u8(v39);
        v36 += v39.u32[0];
        v37 -= 8;
      }

      while (v37);
      if (12 * v36)
      {
        re::DynamicArray<float *>::setCapacity(&v96, 12 * v36);
      }
    }

    v40 = *(v4 + 3);
    v79 = v40;
    v41 = v40;
    if (v40)
    {
      v21 = 0;
      v22 = v103;
      v20 = 0x100000000000000;
      v81 = v40;
      do
      {
        v2 = *(v4 + 3);
        if (v2 <= v21)
        {
          goto LABEL_160;
        }

        v42 = 0;
        v43 = v4;
        v44 = 0;
        *v103 = *(*(v43 + 5) + 16 * v21);
        if (*&v103[12] == -1)
        {
          v45 = 3;
        }

        else
        {
          v45 = 4;
        }

        do
        {
          v46 = *&v103[4 * v44];
          v2 = v46 >> 6;
          v41 = v84;
          if (v84 <= v46 >> 6)
          {
            goto LABEL_154;
          }

          v47 = v87;
          if (v85)
          {
            v47 = &v86;
          }

          if ((*&v47[v2] >> v46))
          {
            v3 = v3 & 0xF800000000000000 | ((v21 & 0xFFFFFFF) << 28) | v42 & 0x300000000000000 | v46 & 0xFFFFFFF;
            v48 = v98;
            *(v100 + 8 * v98) = v3;
            v98 = v48 + 1;
            ++v99;
          }

          ++v44;
          v42 += 0x100000000000000;
        }

        while (v45 != v44);
        ++v21;
        v41 = v81;
        v4 = v82;
      }

      while (v21 != v81);
    }

    v22 = v100;
    v49 = v98;
    v50 = 126 - 2 * __clz(v98);
    if (v98)
    {
      v51 = v50;
    }

    else
    {
      v51 = 0;
    }

    *&v108[2] = 0;
    memset(v106, 0, sizeof(v106));
    re::DynamicArray<float>::resize(v106, 4 * (v79 & 0x3FFFFFFF));
    if (v41)
    {
      v2 = 0;
      v52 = 0;
      v21 = *(v4 + 3);
      v20 = *&v106[16];
      do
      {
        if (v52 == v21)
        {
          goto LABEL_162;
        }

        v3 = 0;
        v53 = v2 >> 2;
        v54 = 4 * v53;
        *v109 = *(*(v4 + 5) + 16 * v52);
        v55 = *&v108[2] + 16 * v53;
        do
        {
          if (v20 <= v54 + v3)
          {
            goto LABEL_155;
          }

          *(v55 + 4 * v3) = *&v109[4 * v3];
          ++v3;
        }

        while (v3 != 4);
        ++v52;
        v2 += 4;
      }

      while (v52 != v41);
    }

    re::DynamicArray<float>::resize(a2, *v4);
    if (*v4)
    {
      v56 = 0;
      v21 = a2[2];
      v57 = a2[4];
      do
      {
        if (v21 == v56)
        {
          goto LABEL_161;
        }

        *(v57 + 4 * v56) = v56;
        ++v56;
      }

      while (v56 < *v4);
    }

    *&v105[2] = 0;
    memset(v103, 0, sizeof(v103));
    if (v49)
    {
      v58 = 0;
      do
      {
        v59 = v58;
        v60 = (v22 + 8 * v58);
        v61 = *v60 & 0xFFFFFFF;
        v95 = *v60 & 0xFFFFFFF;
        if (v49 <= v58 + 1)
        {
          v62 = v58 + 1;
        }

        else
        {
          v62 = v49;
        }

        while ((*(v22 + 8 * v58) & 0xFFFFFFF) == v61)
        {
          if (v62 == ++v58)
          {
            v58 = v62;
            break;
          }
        }

        v94 = v60;
        v20 = &v60[v58 - v59];
        re::GeomConnectivityManifold::makeTopologyManifoldBySplittingVertices(re::GeomConnectivityManifold::EdgeTable const&,re::DynamicBitset<unsigned long long,128ul> &,re::DynamicArray<unsigned int> &)::$_0::operator()(v101, &v94, v20, v103);
LABEL_110:
        while (re::GeomConnectivityManifold::makeTopologyManifoldBySplittingVertices(re::GeomConnectivityManifold::EdgeTable const&,re::DynamicBitset<unsigned long long,128ul> &,re::DynamicArray<unsigned int> &)::$_0::operator()(v101, &v94, v20, v103))
        {
          v63 = *(a2 + 4);
          re::DynamicArray<int>::add(a2, &v95);
          if (*&v103[16])
          {
            v64 = *&v105[2];
            v65 = *&v105[2] + 4 * *&v103[16];
            v21 = *(v82 + 3);
            v2 = *&v106[16];
            while (1)
            {
              v3 = *v64;
              if (v21 <= v3)
              {
                goto LABEL_156;
              }

              if (*(*(v82 + 5) + 16 * v3 + 12) == -1)
              {
                v66 = 3;
              }

              else
              {
                v66 = 4;
              }

              v67 = 4 * v3;
              while (1)
              {
                v3 = v67;
                if (v2 <= v67)
                {
                  v102 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v109 = 136315906;
                  *&v109[4] = "operator[]";
                  *&v109[12] = 1024;
                  *&v109[14] = 789;
                  v110 = 2048;
                  v111 = v3;
                  v112 = 2048;
                  v113 = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_154:
                  *v109 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v106 = 136315906;
                  *&v106[4] = "operator[]";
                  *&v106[12] = 1024;
                  *&v106[14] = 866;
                  *&v106[18] = 2048;
                  *&v106[20] = v2;
                  v107 = 2048;
                  *v108 = v41;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_155:
                  v102 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v103 = 136315906;
                  *&v103[4] = "operator[]";
                  *&v103[12] = 1024;
                  *&v103[14] = 789;
                  *&v103[18] = 2048;
                  *&v103[20] = (v2 & 0xFFFFFFFC) + v3;
                  v104 = 2048;
                  *v105 = v20;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_156:
                  v102 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v109 = 136315906;
                  *&v109[4] = "operator[]";
                  *&v109[12] = 1024;
                  *&v109[14] = 797;
                  v110 = 2048;
                  v111 = v3;
                  v112 = 2048;
                  v113 = v21;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_157:
                  *v103 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v106 = 136315906;
                  *&v106[4] = "operator[]";
                  *&v106[12] = 1024;
                  *&v106[14] = 797;
                  *&v106[18] = 2048;
                  *&v106[20] = v20;
                  v107 = 2048;
                  *v108 = v22;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_158:
                  *v103 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v106 = 136315906;
                  *&v106[4] = "operator[]";
                  *&v106[12] = 1024;
                  *&v106[14] = 789;
                  *&v106[18] = 2048;
                  *&v106[20] = v22;
                  v107 = 2048;
                  *v108 = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_159:
                  *v103 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v106 = 136315906;
                  *&v106[4] = "operator[]";
                  *&v106[12] = 1024;
                  *&v106[14] = 789;
                  *&v106[18] = 2048;
                  *&v106[20] = v22;
                  v107 = 2048;
                  *v108 = v21;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_160:
                  *v103 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v106 = 136315906;
                  *&v106[4] = "operator[]";
                  *&v106[12] = 1024;
                  *&v106[14] = 797;
                  *&v106[18] = 2048;
                  *&v106[20] = v21;
                  v107 = 2048;
                  *v108 = v2;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_161:
                  *v109 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v103 = 136315906;
                  *&v103[4] = "operator[]";
                  *&v103[12] = 1024;
                  *&v103[14] = 789;
                  *&v103[18] = 2048;
                  *&v103[20] = v21;
                  v104 = 2048;
                  *v105 = v21;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_162:
                  *v109 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v103 = 136315906;
                  *&v103[4] = "operator[]";
                  *&v103[12] = 1024;
                  *&v103[14] = 797;
                  *&v103[18] = 2048;
                  *&v103[20] = v21;
                  v104 = 2048;
                  *v105 = v21;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_163:
                  v102 = 0;
                  v117 = 0u;
                  v118 = 0u;
                  v115 = 0u;
                  v116 = 0u;
                  v114 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v109 = 136315906;
                  *&v109[4] = "operator[]";
                  *&v109[12] = 1024;
                  *&v109[14] = 797;
                  v110 = 2048;
                  v111 = v21;
                  v112 = 2048;
                  v113 = v21;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_164;
                }

                if (*(*&v108[2] + 4 * v67) == v95)
                {
                  break;
                }

                ++v67;
                if (!--v66)
                {
                  goto LABEL_123;
                }
              }

              *(*&v108[2] + 4 * v67) = v63;
LABEL_123:
              if (++v64 == v65)
              {
                goto LABEL_110;
              }
            }
          }
        }
      }

      while (v58 < v49);
    }

    *v82 = a2[2];
    if (v41)
    {
      v68 = 0;
      v21 = *(v82 + 3);
      v2 = *&v106[16];
      do
      {
        if (v68 == v21)
        {
          goto LABEL_163;
        }

        v69 = *(v82 + 5) + 16 * v68;
        v70 = *(v69 + 12);
        if (v70 == -1)
        {
          v71 = 3;
        }

        else
        {
          v71 = 4;
        }

        v20 = 4 * (v68 & 0x3FFFFFFF);
        if (v2 <= v20)
        {
LABEL_164:
          v102 = 0;
          v117 = 0u;
          v118 = 0u;
          v115 = 0u;
          v116 = 0u;
          v114 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v109 = 136315906;
          *&v109[4] = "operator[]";
          *&v109[12] = 1024;
          *&v109[14] = 789;
          v110 = 2048;
          v111 = v20;
          v112 = 2048;
          v113 = v2;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v72 = *&v108[2] + 16 * (v68 & 0x3FFFFFFF);
        do
        {
          if (v70 == -1)
          {
            v73 = -1;
          }

          else
          {
            v73 = *(v72 + 12);
          }

          v74 = *(v72 + 8);
          *v69 = *v72;
          *(v69 + 8) = v74;
          *(v69 + 12) = v73;
          --v71;
        }

        while (v71);
        ++v68;
      }

      while (v68 != v41);
    }

    if (*v103 && *&v105[2])
    {
      (*(**v103 + 40))();
    }

    if (*v106 && *&v108[2])
    {
      (*(**v106 + 40))();
    }

    if (v22 && v96)
    {
      (*(*v96 + 40))(v96, v22);
    }

    if (v83 && (v85 & 1) == 0)
    {
      (*(*v83 + 40))();
    }

    re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v89);
    re::GeomConnectivityManifold::EdgeTable::EdgeTable(v89, *v82, v75, v82[6]);
    re::GeomConnectivityManifold::buildEdgeTable(v82, v89);
    re::GeomConnectivityManifold::buildHalfEdges(v82, v89);
    re::GeomConnectivityManifold::convertHalfEdgesToIndices(v82, v89);
    re::GeomConnectivityManifold::buildFullEdges(v82, v89);
  }

  re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v89);
}

uint64_t re::GeomConnectivityManifold::buildIfManifold(re::GeomConnectivityManifold *this, const re::GeomMesh *a2, re::GeomConnectivityManifold *a3)
{
  v96 = *MEMORY[0x1E69E9840];
  re::GeomConnectivityManifold::GeomConnectivityManifold(&v51);
  LODWORD(v51) = *(this + 4);
  re::DynamicArray<re::GeomCell4>::operator=(v52, this + 3);
  if (!v52[1])
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v52, 1uLL);
  }

  if (v53[0])
  {
    v5 = 0;
    v6 = (v54 + 8);
    v7 = v53[0];
    do
    {
      if (*(v6 - 2) != -1 && *(v6 - 1) != -1 && *v6 != -1 && v6[1] != -1)
      {
        ++v5;
      }

      v6 += 4;
      --v7;
    }

    while (v7);
    v8 = 0;
    v9 = (v54 + 8);
    v10 = v53[0];
    do
    {
      if (*(v9 - 2) != -1 && *(v9 - 1) != -1 && *v9 != -1 && v9[1] == -1)
      {
        ++v8;
      }

      v9 += 4;
      --v10;
    }

    while (v10);
    v11 = 6 * v8 + 8 * v5;
  }

  else
  {
    v11 = 0;
  }

  re::GeomConnectivityManifold::EdgeTable::EdgeTable(v79, v51, v11, v53[0]);
  v12 = *v53;
  if (!v53[0])
  {
    goto LABEL_35;
  }

  v13 = 0;
  v14 = 1;
LABEL_22:
  if (v13 == *v53)
  {
    goto LABEL_121;
  }

  v15 = 0;
  *v86 = *(v54 + 16 * v13);
  if (*&v86[12] == -1)
  {
    v16 = 3;
  }

  else
  {
    v16 = 4;
  }

  v17 = 1;
LABEL_27:
  v18 = v17;
  do
  {
    if (v18 >= v16)
    {
      ++v15;
      ++v17;
      if (v15 == v16 - 1)
      {
        v14 = ++v13 < v53[0];
        if (v13 == v53[0])
        {
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      goto LABEL_27;
    }

    v19 = *&v86[4 * v18++];
  }

  while (*&v86[4 * v15] != v19);
  if (v14)
  {
    goto LABEL_65;
  }

LABEL_35:
  if (!re::GeomConnectivityManifold::buildEdgeTable(&v51, v79))
  {
    goto LABEL_65;
  }

  re::GeomConnectivityManifold::buildHalfEdges(&v51, v79);
  re::GeomConnectivityManifold::convertHalfEdgesToIndices(&v51, v79);
  re::GeomConnectivityManifold::buildFullEdges(&v51, v79);
  re::GeomConnectivityManifold::countVertexValenceInEdgeTable(&v51, v79);
  v20 = v51;
  *&v85[2] = 0;
  memset(v83, 0, sizeof(v83));
  if (!v51)
  {
    goto LABEL_54;
  }

  v12 = 0;
  v21 = 0;
  while (2)
  {
    v22 = v64;
    if (v64 <= v12)
    {
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      *&v86[14] = 797;
      v87 = 2048;
      v88 = v12;
      v89 = 2048;
      v90 = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_120:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v86 = 136315906;
      *&v86[4] = "operator[]";
      *&v86[12] = 1024;
      *&v86[14] = 789;
      v87 = 2048;
      v88 = v12;
      v89 = 2048;
      v90 = v22;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_121:
      v82 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v91 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v83 = 136315906;
      *&v83[4] = "operator[]";
      *&v83[12] = 1024;
      *&v83[14] = 797;
      *&v83[18] = 2048;
      *&v83[20] = v12;
      v84 = 2048;
      *v85 = v12;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_122;
    }

    if (*(v66 + 4 * v12) == -1)
    {
      break;
    }

    re::GeomConnectivityManifold::fetchVertexOneRing(&v51, v12, v83);
    v22 = v80;
    if (v80 <= v12)
    {
      goto LABEL_120;
    }

    v23 = *(v81 + 4 * v12);
    if (v23)
    {
      v24 = *&v83[16] == v23;
    }

    else
    {
      v24 = 0;
    }

    if (v24)
    {
      v21 = ++v12 >= v20;
      if (v20 != v12)
      {
        continue;
      }

      if (*v83 && *&v85[2])
      {
        (*(**v83 + 40))(*v83);
      }

LABEL_54:
      re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v79);
      *a2 = v51;
      re::DynamicArray<re::GeomCell4>::operator=(a2 + 8, v52);
      if (&v51 == a2)
      {
        goto LABEL_59;
      }

      v26 = *(a2 + 6);
      if (!v26 || !v55 || v26 == v55)
      {
        *(a2 + 6) = v55;
        v55 = v26;
        v27 = *(a2 + 56);
        *(a2 + 56) = v56;
        v56 = v27;
        v28 = *(a2 + 10);
        *(a2 + 10) = v58;
        v58 = v28;
        ++v57;
        ++*(a2 + 18);
LABEL_59:
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 88, v59);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 128, v63);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 168, v67);
        re::DynamicArray<re::RigComponentConstraint>::operator=(a2 + 208, v70);
        if (&v51 == a2)
        {
LABEL_90:
          v39 = 1;
          goto LABEL_91;
        }

        v30 = (a2 + 248);
        v31 = *(a2 + 31);
        if (!v31 || !v73 || v31 == v73)
        {
          v32 = v75;
          if (v75)
          {
            v40 = v74;
            if (v74)
            {
              *(a2 + 31) = v73;
              if (v40 >= *(a2 + 32))
              {
                re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(v30, v40);
                v42 = *(a2 + 32);
                v43 = *(a2 + 66);
                if (v42)
                {
                  if (v43)
                  {
                    v44 = a2 + 272;
                  }

                  else
                  {
                    v44 = *(a2 + 35);
                  }

                  if (v75)
                  {
                    v45 = &v76;
                  }

                  else
                  {
                    v45 = v77;
                  }

                  memmove(v44, v45, 8 * v42);
                  v43 = *(a2 + 66);
                  v42 = *(a2 + 32);
                }

                if (v43)
                {
                  v46 = a2 + 272;
                }

                else
                {
                  v46 = *(a2 + 35);
                }

                v47 = &v46[8 * v42];
                if (v75)
                {
                  v48 = &v76;
                }

                else
                {
                  v48 = v77;
                }

                memcpy(v47, &v48[v42], 8 * (v40 - v42));
              }

              else
              {
                if (*(a2 + 66))
                {
                  v41 = a2 + 272;
                }

                else
                {
                  v41 = *(a2 + 35);
                }

                memmove(v41, &v76, 8 * v40);
              }

              *(a2 + 32) = v40;
              v38 = v75 + 4;
            }

            else
            {
              re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v30);
              *(a2 + 31) = v73;
              v38 = v75 + 2;
            }
          }

          else
          {
            v33 = *(a2 + 66);
            v34 = v74;
            *(a2 + 31) = v73;
            *(a2 + 32) = v34;
            v35 = *(a2 + 35);
            v37 = v76;
            v36 = v77;
            v76 = *(a2 + 34);
            v77 = v35;
            *(a2 + 66) = (v33 & 0xFFFFFFFE) + 2;
            *(a2 + 34) = v37;
            *(a2 + 35) = v36;
            v38 = v32 + (v33 & 1) + 2;
            v73 = v31;
          }

          *(a2 + 66) += 2;
          *(a2 + 37) = v78;
          v74 = 0;
          v75 = v38 + 2;
          v78 = 0;
          goto LABEL_90;
        }

LABEL_123:
        re::internal::assertLog(4, v29, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
        _os_crash();
        __break(1u);
      }

LABEL_122:
      re::internal::assertLog(4, v25, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      _os_crash();
      __break(1u);
      goto LABEL_123;
    }

    break;
  }

  if (*v83 && *&v85[2])
  {
    (*(**v83 + 40))(*v83);
  }

  if (v21)
  {
    goto LABEL_54;
  }

LABEL_65:
  *(&v56 + 1) = 0;
  ++v57;
  v60 = 0;
  ++v61;
  v64 = 0;
  ++v65;
  re::GeomConnectivityManifold::EdgeTable::~EdgeTable(v79);
  v39 = 0;
LABEL_91:
  if (v73)
  {
    v49 = v75;
    if ((v75 & 1) == 0)
    {
      (*(*v73 + 40))();
      v49 = v75;
    }

    v73 = 0;
    v74 = 0;
    v75 = (v49 | 1) + 2;
  }

  if (v70[0])
  {
    if (v72)
    {
      (*(*v70[0] + 40))();
    }

    v72 = 0;
    memset(v70, 0, sizeof(v70));
    ++v71;
  }

  if (v67[0])
  {
    if (v69)
    {
      (*(*v67[0] + 40))();
    }

    v69 = 0;
    memset(v67, 0, sizeof(v67));
    ++v68;
  }

  if (v63[0])
  {
    if (v66)
    {
      (*(*v63[0] + 40))();
    }

    v66 = 0;
    v63[1] = 0;
    v64 = 0;
    v63[0] = 0;
    ++v65;
  }

  if (v59[0])
  {
    if (v62)
    {
      (*(*v59[0] + 40))();
    }

    v62 = 0;
    v59[1] = 0;
    v60 = 0;
    v59[0] = 0;
    ++v61;
  }

  if (v55)
  {
    if (v58)
    {
      (*(*v55 + 40))();
    }

    v58 = 0;
    v56 = 0uLL;
    v55 = 0;
    ++v57;
  }

  if (v52[0] && v54)
  {
    (*(*v52[0] + 40))();
  }

  return v39;
}

uint64_t re::GeomConnectivityManifold::buildAndMakeManifold(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v7 = a3;
  v8 = a2;
  v70 = *MEMORY[0x1E69E9840];
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v49 = 0;
  v46[0] = 0;
  v46[1] = 0;
  *a2 = *a1;
  re::DynamicArray<re::GeomCell4>::operator=((a2 + 2), (a1 + 8));
  if (!*(v8 + 2))
  {
    re::DynamicArray<re::BlendNode>::setCapacity(v8 + 1, 1uLL);
  }

  v9 = *v8;
  v47 = 0;
  v48 = 1;
  re::DynamicArray<unsigned int>::resize(v46, v9, &re::kInvalidMeshIndex);
  v10 = *(v8 + 3);
  if (v10)
  {
    v11 = 0;
    v12 = *(v8 + 5);
    v3 = v47;
LABEL_5:
    if (v11 == v10)
    {
      goto LABEL_75;
    }

    v13 = 0;
    *v54 = *(v12 + 16 * v11);
    if (*&v54[12] == -1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 4;
    }

    v15 = v49;
    while (1)
    {
      v4 = *&v54[4 * v13];
      if (v3 <= v4)
      {
        break;
      }

      *(v15 + 4 * v4) = v4;
      if (v14 == ++v13)
      {
        if (++v11 == v10)
        {
          goto LABEL_13;
        }

        goto LABEL_5;
      }
    }

    *v58 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    v7 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    *&v52[14] = 789;
    *&v52[18] = 2048;
    *&v52[20] = v4;
    *&v52[28] = 2048;
    *&v52[30] = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_69;
  }

  if (!v9)
  {
    goto LABEL_61;
  }

LABEL_13:
  v16 = 0;
  v10 = v54;
  v3 = 1;
  v4 = v47;
  v17 = v49;
  while (1)
  {
    if (v47 == v16)
    {
      goto LABEL_77;
    }

    if (*(v49 + 4 * v16) == -1)
    {
      break;
    }

    v16 = (v16 + 1);
    v3 = v16 < v9;
    if (v9 == v16)
    {
      goto LABEL_61;
    }
  }

  v18 = 0;
  v19 = 0;
  do
  {
    if (v4 == v18)
    {
      goto LABEL_78;
    }

    if (*(v17 + 4 * v18) != -1)
    {
      v5 = v19;
      if (v4 <= v19)
      {
        goto LABEL_79;
      }

      *(v17 + 4 * v19++) = v18;
    }

    ++v18;
  }

  while (v9 != v18);
  v9 = v19;
  re::DynamicArray<float>::resize(v46, v19);
  v57 = 0;
  memset(v54, 0, sizeof(v54));
  v55 = 0;
  v20 = re::DynamicArray<unsigned int>::resize(v54, *v8, &re::kInvalidMeshIndex);
  if (v19)
  {
    v21 = 0;
    v4 = v47;
    v22 = v49;
    v5 = *&v54[16];
    v23 = v57;
    while (1)
    {
      if (v4 == v21)
      {
        goto LABEL_80;
      }

      v6 = *(v22 + 4 * v21);
      if (v5 <= v6)
      {
        break;
      }

      *(v23 + 4 * v6) = v21++;
      if (v19 == v21)
      {
        goto LABEL_30;
      }
    }

LABEL_81:
    *v58 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    *&v52[12] = 1024;
    *&v52[14] = 789;
    *&v52[18] = 2048;
    *&v52[20] = v6;
    *&v52[28] = 2048;
    *&v52[30] = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_82:
    *&v51 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *(v10 + 52) = "operator[]";
    v59 = 1024;
    *(v10 + 62) = 797;
    v61 = 2048;
    *(v10 + 68) = v4;
    v63 = 2048;
    *(v10 + 78) = v4;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_83:
    v50 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v58 = 136315906;
    *(v10 + 52) = "operator[]";
    v59 = 1024;
    *(v10 + 62) = 789;
    v61 = 2048;
    *(v10 + 68) = v5;
    v63 = 2048;
    *(v10 + 78) = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_84:
    *v58 = 0;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v54 = 136315906;
    *&v54[4] = "operator[]";
    *&v54[12] = 1024;
    *&v54[14] = 789;
    *&v54[18] = 2048;
    *(v10 + 20) = v3;
    v56 = 2048;
    *(v10 + 30) = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_30:
  *v52 = 0;
  v9 = v52;
  v53 = 0;
  memset(&v52[16], 0, 20);
  re::DynamicArray<re::BlendNode>::setCapacity(&v52[8], 1uLL);
  ++*&v52[32];
  re::DynamicArray<re::GeomCell4>::resize(&v52[8], v8[6]);
  *v52 = v19;
  v4 = *(v8 + 3);
  if (v4)
  {
    v24 = 0;
    v25 = *(v8 + 5);
    v26 = *&v54[16];
    v5 = *&v52[24];
    v27 = v53;
    while (1)
    {
      if (v24 == v4)
      {
        goto LABEL_82;
      }

      v28 = 0;
      v51 = *(v25 + 16 * v24);
      v29 = HIDWORD(v51);
      if (HIDWORD(v51) == -1)
      {
        v30 = 3;
      }

      else
      {
        v30 = 4;
      }

      v31 = v57;
      do
      {
        v6 = *&v52[4 * v28 - 16];
        if (v26 <= v6)
        {
          v50 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v58 = 136315906;
          *&v58[4] = "operator[]";
          v59 = 1024;
          v60 = 789;
          v61 = 2048;
          v62 = v6;
          v63 = 2048;
          v64 = v26;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_75:
          *v54 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 797;
          *&v52[18] = 2048;
          *&v52[20] = v10;
          *&v52[28] = 2048;
          *&v52[30] = v10;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_76:
          *v54 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 789;
          *&v52[18] = 2048;
          *&v52[20] = v9;
          *&v52[28] = 2048;
          *&v52[30] = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_77:
          *v54 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 789;
          *&v52[18] = 2048;
          *&v52[20] = v4;
          *&v52[28] = 2048;
          *&v52[30] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_78:
          *v54 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 789;
          *&v52[18] = 2048;
          *&v52[20] = v4;
          *&v52[28] = 2048;
          *&v52[30] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_79:
          *v54 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 789;
          *&v52[18] = 2048;
          *&v52[20] = v5;
          *&v52[28] = 2048;
          *&v52[30] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_80:
          *v58 = 0;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v65 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v52 = 136315906;
          *&v52[4] = "operator[]";
          *&v52[12] = 1024;
          *&v52[14] = 789;
          *&v52[18] = 2048;
          *&v52[20] = v4;
          *&v52[28] = 2048;
          *&v52[30] = v4;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
          goto LABEL_81;
        }

        *&v52[4 * v28++ - 16] = *(v31 + 4 * v6);
      }

      while (v30 != v28);
      if (v24 == v5)
      {
        goto LABEL_83;
      }

      v32 = v29 == -1;
      v34 = DWORD2(v51);
      v33 = HIDWORD(v51);
      if (v32)
      {
        v33 = -1;
      }

      v35 = v27 + 16 * v24;
      *v35 = v51;
      *(v35 + 8) = v34;
      *(v35 + 12) = v33;
      if (++v24 == v4)
      {
        v19 = *v52;
        break;
      }
    }
  }

  *v8 = v19;
  re::DynamicArray<re::GeomCell4>::operator=((v8 + 2), &v52[8]);
  if (*&v52[8] && v53)
  {
    (*(**&v52[8] + 40))();
  }

  if (*v54 && v57)
  {
    (*(**v54 + 40))();
  }

  if (v3)
  {
    *&v52[32] = 0;
    memset(v52, 0, 28);
    {
      v36 = *&v52[16];
      if (*&v52[16])
      {
        v37 = *&v52[32];
        v9 = v47;
        v38 = v49;
        do
        {
          v3 = *v37;
          if (v9 <= v3)
          {
            goto LABEL_84;
          }

          *v37++ = *(v38 + 4 * v3);
        }

        while (--v36);
      }

      re::DynamicArray<re::RigComponentConstraint>::operator=(v46, v52);
    }

    if (*v52 && *&v52[32])
    {
      (*(**v52 + 40))();
    }
  }

  else
  {
LABEL_61:
    {
      re::GeomConnectivityManifold::buildAndMakeManifold(v8, v7);
      goto LABEL_70;
    }
  }

  re::GeomConnectivityManifold::buildAndMakeManifold(v8, v7);
  v39 = v7[2];
  if (v39)
  {
    v40 = 0;
    v41 = v7[4];
    v42 = 1;
    v8 = v47;
    v43 = v49;
    while (1)
    {
      v9 = *(v41 + 4 * v40);
      if (v8 <= v9)
      {
        goto LABEL_76;
      }

      *(v41 + 4 * v40) = *(v43 + 4 * v9);
      v40 = v42;
      if (v39 <= v42++)
      {
        goto LABEL_70;
      }
    }
  }

LABEL_69:
  re::DynamicArray<re::RigComponentConstraint>::operator=(v7, v46);
LABEL_70:
  result = v46[0];
  if (v46[0])
  {
    if (v49)
    {
      return (*(*v46[0] + 40))(v46[0], v49);
    }
  }

  return result;
}

re::GeomConnectivityManifold::EdgeTable *re::GeomConnectivityManifold::EdgeTable::EdgeTable(re::GeomConnectivityManifold::EdgeTable *this, unsigned int a2, unsigned int a3, int a4)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 9) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 88) = 0u;
  v7 = (this + 88);
  v8 = a3;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  re::DynamicArray<unsigned int>::resize(this, (4 * a4), &re::kInvalidMeshIndex);
  v10 = 0;
  re::DynamicArray<unsigned int>::resize(this + 5, a2, &v10);
  return this;
}

void *re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::init(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  result[7] = a2;
  v4 = 151 * a3;
  v5 = ((151 * a3) >> 7) + 15;
  v6 = v5 & 0x3FFFFFFFFFFFFF0;
  result[2] = v5 & 0x3FFFFFFFFFFFFF0;
  if ((v5 & 0x3FFFFFFFFFFFFF0) != 0)
  {
    v7 = v5 >> 4;
    result = (*(*a2 + 32))(a2, 13 * v6, 16);
    *v3 = result;
    if (v4 >= 0x80)
    {
      v8 = 0;
      *&v9 = -1;
      *(&v9 + 1) = -1;
      do
      {
        *(*v3 + 16 * v8++) = v9;
      }

      while (v7 != v8);
      result = *v3;
    }

    v3[1] = &result[2 * v7];
    v6 = v3[2];
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  v3[5] = 0;
  v3[6] = 0;
  v3[3] = 0;
  v3[4] = v6;
  return result;
}

void re::GeomConnectivityManifold::EdgeTable::~EdgeTable(re::GeomConnectivityManifold::EdgeTable *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

double re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::deinit(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    if (*(a1 + 8))
    {
      v10[0] = a1;
      v3 = *(a1 + 16);
      if (v3 >= 0x10)
      {
        v4 = 0;
        v5 = *a1;
        v6 = v3 >> 4;
        while (1)
        {
          v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v5), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          if (v7 != 0xFFFFLL)
          {
            break;
          }

          v4 -= 16;
          ++v5;
          if (!--v6)
          {
            goto LABEL_10;
          }
        }

        v8 = __clz(__rbit64(v7 ^ 0xFFFFLL));
        v10[1] = v7 ^ 0xFFFFLL;
        v11 = v8 - v4;
        if (v8 + 1 != v4)
        {
          do
          {
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v10);
          }

          while (v11 != -1);
        }
      }

LABEL_10:
      *(a1 + 8) = 0;
    }

    if (*a1)
    {
      (*(*v1 + 40))(v1);
      *a1 = 0;
    }

    result = 0.0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

void *re::DynamicArray<re::anonymous namespace::NonmanifoldFaceVertex>::ensureCapacity(void *this)
{
  v1 = this[1];
  v2 = this[2];
  v3 = v2 + 1;
  if (v2 >= v1 && v1 < v3)
  {
    v5 = this;
    if (*this)
    {
      v6 = 2 * v1;
      v7 = v1 == 0;
      v8 = 8;
      if (!v7)
      {
        v8 = v6;
      }

      if (v8 <= v3)
      {
        v9 = v3;
      }

      else
      {
        v9 = v8;
      }

      return re::DynamicArray<float *>::setCapacity(this, v9);
    }

    else
    {
      this = re::DynamicArray<float *>::setCapacity(v5, v3);
      ++*(v5 + 6);
    }
  }

  return this;
}

uint64_t re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::find(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  if (!a1[7])
  {
    return -1;
  }

  v4 = a1[2];
  if (v4 < 0x10 || !a1[3])
  {
    return -1;
  }

  v7 = v4 >> 4;
  v8 = 0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v11 = v10 ^ (v10 >> 31);
  if (v9 == v11)
  {
    v11 = 0;
  }

  v12 = v11 ^ v9;
  v13 = v12 % v7;
  v14 = *a1;
  v15 = vdupq_n_s8(v12 & 0x7F);
  v16 = xmmword_1E304FAD0;
  v17.i64[0] = -1;
  for (v17.i64[1] = -1; ; v17.i64[1] = -1)
  {
    v18 = *(v14 + 16 * v13);
    v19 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v15, v18), v16)))), 0x3830282018100800);
    v20 = __clz(__rbit64(v19));
    if (v20 <= 0x3F)
    {
      break;
    }

LABEL_15:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v18, v17), v16)))), 0x3830282018100800))
    {
      return -1;
    }

    v28 = v16;
    v29 = v15;
    if (++v13 == v7)
    {
      v13 = 0;
    }

    result = -1;
    v16 = v28;
    v15 = v29;
    v17.i64[0] = -1;
    if (v13 == v27)
    {
      return result;
    }
  }

  v21 = 16 * v13;
  while (1)
  {
    result = v20 + v21;
    v23 = (a1[1] + 12 * (v20 + v21));
    v25 = *v23;
    v24 = v23[1];
    if (v25 == a2 && v24 == a3)
    {
      return result;
    }

    if (v20 <= 0x3E)
    {
      v20 = __clz(__rbit64((-2 << v20) & v19));
      if (v20 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_15;
  }
}

unint64_t re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::computeKeyHash(unsigned int a1, unsigned int a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  if (v3 == v5)
  {
    v5 = 0;
  }

  return v5 ^ v3;
}

uint64_t re::DynamicArray<re::GeomCell4>::operator=(uint64_t result, uint64_t a2)
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

uint64_t re::anonymous namespace::splitDuplicatedFaceVertices(int *a1, uint64_t a2)
{
  v3 = a2;
  v5 = v34;
  v44 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  re::DynamicArray<float>::resize(a2, v6);
  if (v6)
  {
    v7 = 0;
    v8 = v3[2];
    v9 = v3[4];
    while (v8 != v7)
    {
      *(v9 + 4 * v7) = v7;
      if (v6 == ++v7)
      {
        goto LABEL_5;
      }
    }

LABEL_35:
    v26[0] = 0;
    *(v5 + 96) = 0u;
    *(v5 + 112) = 0u;
    *(v5 + 64) = 0u;
    *(v5 + 80) = 0u;
    *(v5 + 48) = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    *v32 = "operator[]";
    *&v32[8] = 1024;
    *&v32[10] = 789;
    *&v32[14] = 2048;
    *&v32[16] = v8;
    *&v32[24] = 2048;
    *&v32[26] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_36:
    *v34 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v31 = 136315906;
    *v32 = "operator[]";
    *&v32[8] = 1024;
    *&v32[10] = 797;
    *&v32[14] = 2048;
    *&v32[16] = v5;
    *&v32[24] = 2048;
    *&v32[26] = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_37:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v34 = 136315906;
    *&v34[4] = "operator[]";
    *&v34[12] = 1024;
    *&v34[14] = 789;
    v35 = 2048;
    v36 = v2;
    v37 = 2048;
    v38 = v3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    v30 = 0;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v34 = 136315906;
    *&v34[4] = "operator[]";
    *&v34[12] = 1024;
    *&v34[14] = 789;
    v35 = 2048;
    v36 = v8;
    v37 = 2048;
    v38 = v8;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_5:
  v10 = *(a1 + 3);
  v29 = 0;
  v26[1] = 0;
  v27 = 0;
  v26[0] = 0;
  v28 = 0;
  v11 = re::DynamicArray<unsigned int>::resize(v26, 4 * (v10 & 0x3FFFFFFF), &re::kInvalidMeshIndex);
  if (!v10)
  {
    goto LABEL_29;
  }

  v5 = 0;
  v12 = 0;
  do
  {
    v8 = *(a1 + 3);
    if (v8 <= v5)
    {
      goto LABEL_36;
    }

    v13 = 0;
    *v34 = *(*(a1 + 5) + 16 * v5);
    v14 = 4 * v5;
    if (*&v34[12] == -1)
    {
      v15 = 3;
    }

    else
    {
      v15 = 4;
    }

    do
    {
      v16 = *&v34[4 * v13];
      v25 = v16;
      v8 = (v14 + v13);
      v2 = v27;
      if (v27 <= v8)
      {
        v30 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v31 = 136315906;
        *v32 = "operator[]";
        *&v32[8] = 1024;
        *&v32[10] = 789;
        *&v32[14] = 2048;
        *&v32[16] = (v14 + v13);
        *&v32[24] = 2048;
        *&v32[26] = v2;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_35;
      }

      v17 = v29;
      *(v29 + 4 * v8) = v16;
      if (v13)
      {
        v18 = 0;
        while (*&v34[4 * v18] != v25)
        {
          if (v13 == ++v18)
          {
            goto LABEL_18;
          }
        }

        *(v17 + 4 * v8) = v3[2];
        v11 = re::DynamicArray<int>::add(v3, &v25);
        v12 = 1;
      }

LABEL_18:
      ++v13;
    }

    while (v13 != v15);
    ++v5;
  }

  while (v5 != v10);
  if ((v12 & 1) == 0)
  {
LABEL_29:
    v23 = 0;
    goto LABEL_30;
  }

  v31 = 0;
  v33 = 0;
  memset(&v32[12], 0, 20);
  re::DynamicArray<re::BlendNode>::setCapacity(&v32[4], 1uLL);
  v19 = v3[2];
  ++*&v32[28];
  v31 = v19;
  re::DynamicArray<re::GeomCell4>::resize(&v32[4], v10);
  v2 = 0;
  v20 = 0;
  v3 = v27;
  v21 = v29;
  v8 = *&v32[20];
  v22 = v33;
  do
  {
    if (v3 <= v2)
    {
      goto LABEL_37;
    }

    if (v8 == v20)
    {
      goto LABEL_38;
    }

    *(v22 + 16 * v20) = *(v21 + 16 * v20);
    ++v20;
    v2 += 4;
  }

  while (v10 != v20);
  *a1 = v31;
  re::DynamicArray<re::GeomCell4>::operator=((a1 + 2), &v32[4]);
  if (*&v32[4] && v33)
  {
    (*(**&v32[4] + 40))();
  }

  v23 = 1;
LABEL_30:
  if (v26[0] && v29)
  {
    (*(*v26[0] + 40))();
  }

  return v23;
}

void re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::internalAdd(uint64_t *a1, unsigned int *a2, _DWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = 0xBF58476D1CE4E5B9 * (a2[1] ^ (a2[1] >> 30));
  v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
  if (v9 == v11)
  {
    v11 = 0;
  }

  v12 = v11 ^ v9;
  v13 = v7 >> 4;
  v14 = v12 % (v7 >> 4);
  v15 = *a1;
  v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v16 >= 0x40)
  {
    do
    {
      if (v14 + 1 == v13)
      {
        v14 = 0;
      }

      else
      {
        ++v14;
      }

      v16 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v15 + 16 * v14)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v16 > 0x3F);
  }

  v17 = v15 + 16 * v14;
  v18 = *(v17 + v16);
  *(v17 + v16) = v12 & 0x7F;
  v19 = 3 * (v16 + 16 * v14);
  *(a1[1] + 4 * v19) = *a2;
  *(a1[1] + 4 * v19 + 8) = *a3;
  if (v18 == 255)
  {
    v20 = -1;
  }

  else
  {
    v20 = 0;
  }

  v21.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v21.i64[1] = v20;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v21);
  v22 = (a1[1] + 4 * v19);
  v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30))) >> 27));
  v24 = v23 ^ (v23 >> 31);
  v25 = v22[1] ^ (v22[1] >> 30);
  v26 = (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v25) ^ ((0xBF58476D1CE4E5B9 * v25) >> 27))) >> 31);
  if (v24 == v26)
  {
    v26 = 0;
  }

  a1[5] ^= v24 ^ v26;
}

double re::HashBrown<re::anonymous namespace::VertexPair,re::anonymous namespace::FaceVertex,re::anonymous namespace::HashEdge,re::anonymous namespace::HashEdge,void,false>::resize(__int128 *a1)
{
  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  v5 = ((3 * v3) >> 1) & 0x1FFFFFFFFFFFFFFLL;
  if (v4 > (192 * v3) >> 7)
  {
    v5 = (((151 * (v2 + 1)) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  }

  v6 = (v5 << 7) / 0x97;
  v7 = *(a1 + 7);
  v27 = 0u;
  *v28 = 0u;
  if (v4 <= v3)
  {
    v8 = v2 + 1;
  }

  else
  {
    v8 = v6;
  }

  memset(&v28[16], 0, 32);
  v25[0] = a1;
  v10 = *(a1 + 2);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    v14 = xmmword_1E304FAD0;
    v9.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v11;
    v25[1] = v15 ^ 0xFFFFLL;
    v26 = v16 - v11;
    if (v16 + 1 != v11)
    {
      do
      {
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v25);
        v17 = v26;
      }

      while (v26 != -1);
      v10 = *(a1 + 2);
    }
  }

LABEL_14:
  v18 = *&v28[40];
  *&v28[40] = *(a1 + 7);
  v19 = v27;
  v20 = *v28;
  v27 = *a1;
  *v28 = v10;
  v21 = *&v28[16];
  v22 = *(a1 + 40);
  *(a1 + 6) = *&v28[32];
  *(a1 + 7) = v18;
  *&v28[24] = v22;
  v23 = *(a1 + 24);
  *a1 = v19;
  a1[1] = v20;
  a1[2] = v21;
  *&v28[8] = v23;
}