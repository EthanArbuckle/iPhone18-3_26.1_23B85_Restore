void *re::DynamicArray<re::Vector3<float>>::resize(void *result, unint64_t a2, _OWORD *a3)
{
  v4 = result;
  v5 = result[2];
  if (v5 >= a2)
  {
    if (v5 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::Quaternion<float>>::setCapacity(result, a2);
      v5 = v4[2];
    }

    v7 = a2 - v5;
    if (a2 > v5)
    {
      v8 = 16 * v5;
      do
      {
        *(v4[4] + v8) = *a3;
        v8 += 16;
        --v7;
      }

      while (v7);
    }
  }

  v4[2] = a2;
  ++*(v4 + 6);
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,false>(uint64_t result, unsigned int *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  v125 = a2;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 2;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      if (result)
      {
        v79 = v10->i32[0];
        v10->i32[0] = *(a2 - 1);
LABEL_105:
        *(a2 - 1) = v79;
        return result;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v82 = v10 + 1;
      v84 = v10 == a2 || v82 == a2;
      if (a5)
      {
        if (!v84)
        {
          v85 = 0;
          v86 = v10;
          do
          {
            v88 = v86->u32[0];
            v87 = v86->u32[1];
            v86 = v82;
            if (result)
            {
              v89 = v86->u32[0];
              v90 = v85;
              while (1)
              {
                *(&v10->i32[1] + v90) = *(v10->i32 + v90);
                if (!v90)
                {
                  break;
                }

                v90 -= 4;
                if ((result & 1) == 0)
                {
                  v91 = (v10 + v90 + 4);
                  goto LABEL_127;
                }
              }

              v91 = v10;
LABEL_127:
              v91->i32[0] = v89;
            }

            v82 = v86 + 1;
            v85 += 4;
          }

          while (&v86->u8[4] != a2);
        }
      }

      else if (!v84)
      {
        do
        {
          v120 = *v9;
          v119 = v9[1];
          v9 = v82;
          if (result)
          {
            v121 = *v9;
            v122 = v9;
            do
            {
              v123 = v122;
              v124 = *--v122;
              *v123 = v124;
            }

            while ((result & 1) != 0);
            *v122 = v121;
          }

          v82 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v92 = (v11 - 2) >> 1;
        v126 = v92;
        do
        {
          v93 = v92;
          if (v126 >= v92)
          {
            v94 = (2 * v92) | 1;
            v95 = &v9[v94];
            {
              ++v95;
              v94 = 2 * v93 + 2;
            }

            v96 = &v9[v93];
            if ((result & 1) == 0)
            {
              v97 = *v96;
              do
              {
                v98 = v95;
                *v96 = *v95;
                if (v126 < v94)
                {
                  break;
                }

                v99 = (2 * v94) | 1;
                v95 = &v9[v99];
                v100 = 2 * v94 + 2;
                {
                  ++v95;
                  v99 = v100;
                }

                v96 = v98;
                v94 = v99;
              }

              while (!result);
              *v98 = v97;
            }
          }

          v92 = v93 - 1;
        }

        while (v93);
        v101 = v125;
        do
        {
          v102 = v101;
          v103 = 0;
          v127 = *v9;
          v104 = v9;
          do
          {
            v105 = &v104[v103];
            v106 = v105 + 1;
            v107 = (2 * v103) | 1;
            v108 = 2 * v103 + 2;
            if (v108 >= v11)
            {
              v103 = (2 * v103) | 1;
            }

            else
            {
              v110 = v105[2];
              v109 = v105 + 2;
              if (result)
              {
                v106 = v109;
                v103 = v108;
              }

              else
              {
                v103 = v107;
              }
            }

            *v104 = *v106;
            v104 = v106;
          }

          while (v103 <= ((v11 - 2) >> 1));
          v101 = v102 - 1;
          if (v106 == v102 - 1)
          {
            *v106 = v127;
          }

          else
          {
            *v106 = *v101;
            *v101 = v127;
            v111 = (v106 - v9 + 4) >> 2;
            v112 = v111 < 2;
            v113 = v111 - 2;
            if (!v112)
            {
              v114 = v113 >> 1;
              v115 = &v9[v113 >> 1];
              if (result)
              {
                v116 = *v106;
                do
                {
                  v117 = v115;
                  *v106 = *v115;
                  if (!v114)
                  {
                    break;
                  }

                  v114 = (v114 - 1) >> 1;
                  v115 = &v9[v114];
                  v106 = v117;
                }

                while ((result & 1) != 0);
                *v117 = v116;
              }
            }
          }

          v112 = v11-- <= 2;
        }

        while (!v112);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = *a3;
    if (v11 < 0x81)
    {
      if (v17)
      {
        v19 = v9[v12];
        if (v18)
        {
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v19;
        }

        else
        {
          v9[v12] = *v9;
          *v9 = v19;
          {
            v31 = *v9;
            *v9 = *(a2 - 1);
            *(a2 - 1) = v31;
          }
        }
      }

      else if (v18)
      {
        v22 = *v9;
        *v9 = *(a2 - 1);
        *(a2 - 1) = v22;
        {
          v23 = v9[v12];
          v9[v12] = *v9;
          *v9 = v23;
        }
      }

      goto LABEL_55;
    }

    if (v14)
    {
      v16 = *v9;
      if (v15)
      {
        *v9 = *(a2 - 1);
        *(a2 - 1) = v16;
      }

      else
      {
        *v9 = v9[v12];
        v9[v12] = v16;
        {
          v24 = v9[v12];
          v9[v12] = *(a2 - 1);
          *(a2 - 1) = v24;
        }
      }
    }

    else if (v15)
    {
      v20 = v9[v12];
      v9[v12] = *(a2 - 1);
      *(a2 - 1) = v20;
      {
        v21 = *v9;
        *v9 = v9[v12];
        v9[v12] = v21;
      }
    }

    v25 = v12 - 1;
    if (v26)
    {
      v28 = v9[1];
      if (v27)
      {
        v9[1] = *(a2 - 2);
        *(a2 - 2) = v28;
      }

      else
      {
        v9[1] = v9[v25];
        v9[v25] = v28;
        {
          v32 = v9[v25];
          v9[v25] = *(a2 - 2);
          *(a2 - 2) = v32;
        }
      }
    }

    else if (v27)
    {
      v29 = v9[v25];
      v9[v25] = *(a2 - 2);
      *(a2 - 2) = v29;
      {
        v30 = v9[1];
        v9[1] = v9[v25];
        v9[v25] = v30;
      }
    }

    v33 = v12 + 1;
    if (v34)
    {
      v36 = v9[2];
      if (v35)
      {
        v9[2] = *(a2 - 3);
        *(a2 - 3) = v36;
      }

      else
      {
        v9[2] = v9[v33];
        v9[v33] = v36;
        {
          v39 = v9[v33];
          v9[v33] = *(a2 - 3);
          *(a2 - 3) = v39;
        }
      }
    }

    else if (v35)
    {
      v37 = v9[v33];
      v9[v33] = *(a2 - 3);
      *(a2 - 3) = v37;
      {
        v38 = v9[2];
        v9[2] = v9[v33];
        v9[v33] = v38;
      }
    }

    if (!v40)
    {
      v43 = v9[v12];
      if (!v41)
      {
        goto LABEL_54;
      }

      v44 = v9[v33];
      v9[v12] = v44;
      v9[v33] = v43;
      v43 = v9[v12];
      if (!v45)
      {
        goto LABEL_54;
      }

      v46 = v9[v25];
      v9[v25] = v43;
      v9[v12] = v46;
      goto LABEL_53;
    }

    v42 = v9[v25];
    if (v41)
    {
      v9[v25] = v9[v33];
      v9[v33] = v42;
      v43 = v9[v12];
    }

    else
    {
      v9[v25] = v9[v12];
      v9[v12] = v42;
      v43 = v9[v12];
      if (v47)
      {
        v46 = v9[v33];
        v9[v12] = v46;
        v9[v33] = v43;
LABEL_53:
        v43 = v46;
      }
    }

LABEL_54:
    v48 = *v9;
    *v9 = v43;
    v9[v12] = v48;
LABEL_55:
    --a4;
    v49 = *v9;
    {
      v51 = 0;
        ;
      }

      v53 = &v9[v51];
      v54 = a2;
      if (v51 == 1)
      {
        v54 = a2;
        do
        {
          if (v53 >= v54)
          {
            break;
          }

          v56 = *--v54;
        }
      }

      else
      {
        do
        {
          v55 = *--v54;
        }
      }

      if (v53 >= v54)
      {
        v62 = v53 - 1;
      }

      else
      {
        v57 = &v9[v51];
        v58 = v54;
        do
        {
          v59 = *v57;
          *v57 = *v58;
          *v58 = v59;
          do
          {
            v60 = v57[1];
            ++v57;
          }

          do
          {
            v61 = *--v58;
          }
        }

        while (v57 < v58);
        v62 = v57 - 1;
        a2 = v125;
      }

      if (v62 != v9)
      {
        *v9 = *v62;
      }

      *v62 = v49;
      if (v53 < v54)
      {
        goto LABEL_78;
      }

      v10 = (v62 + 1);
      if (result)
      {
        a2 = v62;
        if (!v63)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v63)
      {
LABEL_78:
        a5 = 0;
        v10 = (v62 + 1);
      }
    }

    else
    {
      if (result)
      {
        v10 = v9;
        do
        {
          v64 = v10->u32[1];
          v10 = (v10 + 4);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v65 = (v9 + 1);
        do
        {
          v10 = v65;
          if (v65 >= a2)
          {
            break;
          }

          v65 = (v65 + 4);
        }

        while (!result);
      }

      v66 = a2;
      if (v10 < a2)
      {
        v66 = a2;
        do
        {
          v67 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      while (v10 < v66)
      {
        v68 = v10->i32[0];
        v10->i32[0] = v66->i32[0];
        v66->i32[0] = v68;
        do
        {
          v69 = v10->u32[1];
          v10 = (v10 + 4);
        }

        do
        {
          v70 = v66[-1].u32[1];
          v66 = (v66 - 4);
        }

        while ((result & 1) != 0);
      }

      v71 = &v10[-1] + 1;
      if (&v10[-1].u8[4] != v9)
      {
        *v9 = *v71;
      }

      a5 = 0;
      *v71 = v49;
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
    }

    if (v11 == 5)
    {
      if (!result)
      {
        return result;
      }

      v72 = v10[1].u32[1];
      v10[1].i32[1] = *(a2 - 1);
      *(a2 - 1) = v72;
      if (!result)
      {
        return result;
      }

      v74 = v10[1].i32[0];
      v73 = v10[1].u32[1];
      v75 = v10->u32[1];
      v10[1].i32[0] = v73;
      v10[1].i32[1] = v74;
      if (!result)
      {
        return result;
      }

      v77 = v10->i32[1];
      v76 = v10[1].u32[0];
      v78 = v10->u32[0];
      v10->i32[1] = v76;
      v10[1].i32[0] = v77;
      goto LABEL_166;
    }

    goto LABEL_10;
  }

  if (!v80)
  {
    if (!result)
    {
      return result;
    }

    v118 = v10->u32[1];
    v10->i32[1] = *(a2 - 1);
    *(a2 - 1) = v118;
    v78 = v10->u32[0];
    v76 = v10->u32[1];
LABEL_166:
    if (result)
    {
      *v10 = vrev64_s32(*v10);
    }

    return result;
  }

  v81 = v10->u32[0];
  if (result)
  {
    v10->i32[0] = *(a2 - 1);
    *(a2 - 1) = v81;
  }

  else
  {
    v10->i32[0] = v10->i32[1];
    v10->i32[1] = v81;
    if (result)
    {
      v79 = v10->i32[1];
      v10->i32[1] = *(a2 - 1);
      goto LABEL_105;
    }
  }

  return result;
}

BOOL re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)const::$_0::operator()(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 360);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 376) + 4 * a2) > *(*(a1 + 376) + 4 * a3);
}

BOOL std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *,0>(int *a1, int *a2, int *a3, int *a4, uint64_t *a5)
{
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::anonymous namespace::FacePartition::sortFacesByDecreasingArea(re::DynamicArray<unsigned int> &)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
            return 1;
          }

          *a1 = a1[1];
          a1[1] = v17;
          {
            return 1;
          }

          v7 = a1[1];
          a1[1] = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = a1[1];
        break;
      case 4:
        return 1;
      case 5:
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        {
          return 1;
        }

        v10 = a1[2];
        v9 = a1[3];
        v11 = a1[1];
        a1[2] = v9;
        a1[3] = v10;
        {
          return 1;
        }

        v13 = a1[1];
        v12 = a1[2];
        v14 = *a1;
        a1[1] = v12;
        a1[2] = v13;
        break;
      default:
        goto LABEL_17;
    }

    {
      *a1 = vrev64_s32(*a1);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v19 = a1 + 2;
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v26 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      {
        *(a1 + 1) = vrev64_s32(*(a1 + 1));
      }
    }
  }

  else if (v20)
  {
    v24 = a1[1];
    v23 = a1[2];
    v25 = *a1;
    a1[1] = v23;
    a1[2] = v24;
    {
      *a1 = vrev64_s32(*a1);
    }
  }

  v27 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    {
      v30 = *v27;
      v31 = v28;
      while (1)
      {
        v32 = a1 + v31;
        *(a1 + v31 + 12) = *(a1 + v31 + 8);
        if (v31 == -8)
        {
          break;
        }

        v31 -= 4;
        {
          v33 = (a1 + v31 + 12);
          goto LABEL_40;
        }
      }

      v33 = a1;
LABEL_40:
      *v33 = v30;
      if (++v29 == 8)
      {
        return v27 + 1 == a2;
      }
    }

    v19 = v27;
    v28 += 4;
    if (++v27 == a2)
    {
      return 1;
    }
  }
}

__n128 re::anonymous namespace::PlanarProxy::addFace(uint64_t a1, float32x2_t *a2, float32x2_t *a3, float a4, double a5, float64x2_t a6, float64x2_t a7)
{
  a6.f64[0] = a3[1].f32[0];
  a7.f64[0] = a4;
  v7 = *a1;
  v8 = vaddq_f64(*(a1 + 16), vmulq_f64(a7, a6));
  v9 = vaddq_f64(*a1, vmulq_n_f64(vcvtq_f64_f32(*a3), a4));
  *a1 = v9;
  *(a1 + 16) = v8;
  v7.f64[0] = a2[1].f32[0];
  v10 = vaddq_f64(*(a1 + 48), vmulq_f64(a7, v7));
  v11 = vaddq_f64(*(a1 + 32), vmulq_n_f64(vcvtq_f64_f32(*a2), a7.f64[0]));
  *(a1 + 32) = v11;
  *(a1 + 48) = v10;
  v12 = *(a1 + 120) + a7.f64[0];
  *(a1 + 120) = v12;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
  if (v12 > 0.0)
  {
    v16 = vdupq_lane_s64(*&v12, 0);
    v15 = vdivq_f64(v10, v16);
    v14 = vdivq_f64(v11, v16);
  }

  *(a1 + 64) = v14;
  *(a1 + 80) = v15;
  v17 = vmulq_f64(v8, v8).f64[0] + vaddvq_f64(vmulq_f64(v9, v9));
  v18 = 0uLL;
  if (v17 > 0.0)
  {
    v19 = 1.0 / sqrt(v17);
    v18 = vmulq_n_f64(v8, v19);
    v13 = vmulq_n_f64(v9, v19);
  }

  result.n128_u64[0] = vcvt_f32_f64(v13);
  *&v20 = v18.f64[0];
  v21 = vmulq_f64(v15, v18).f64[0] + vaddvq_f64(vmulq_f64(v14, v13));
  result.n128_u64[1] = __PAIR64__(-v21, v20);
  *(a1 + 96) = result;
  return result;
}

_anonymous_namespace_ *re::internal::PriorityQueue::push(_anonymous_namespace_ *this, void *a2)
{
  v3 = this;
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*(this + 1))
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

        this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(this + 1, v10);
      }

      else
      {
        this = re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity((v3 + 8), v6);
        ++*(v3 + 32);
      }
    }

    v5 = *(v3 + 24);
  }

  *(*(v3 + 40) + 8 * v5) = *a2;
  v11 = *(v3 + 24) + 1;
  *(v3 + 24) = v11;
  ++*(v3 + 32);
  v12 = *a2;
  if (*(v3 + 64) <= v12)
  {
    goto LABEL_21;
  }

  v13 = v11 - 1;
  *(*(v3 + 80) + 4 * v12) = v11 - 1;
  if (v11 != 1)
  {
    while (1)
    {
      v14 = v13 - 1;
      v15 = (v13 - 1) >> 1;
      v16 = *(v3 + 24);
      if (v16 <= v15)
      {
        break;
      }

      if (v16 <= v13)
      {
        goto LABEL_20;
      }

      if (*(*(v3 + 40) + 8 * v15 + 4) > *(*(v3 + 40) + 8 * v13 + 4))
      {
        this = re::internal::PriorityQueue::swap(v3, v13, v14 >> 1);
        v13 = v14 >> 1;
        if (v14 > 1)
        {
          continue;
        }
      }

      return this;
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

  return this;
}

unint64_t re::internal::Graph<unsigned int>::nodeNeighbors(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  v3 = a2;
  if (*(a1 + 56) <= a2)
  {
    goto LABEL_10;
  }

  result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(*(a1 + 72) + 56 * a2, 0);
  if (result != -1)
  {
    v7 = result;
    while (1)
    {
      LODWORD(v8) = v7;
      if (re::DynamicBitset<unsigned long long,64ul>::getBit(a1 + 80, v7))
      {
        re::DynamicArray<int>::add(a3, &v8);
      }

      if (*(a1 + 56) <= v3)
      {
        break;
      }

      result = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(*(a1 + 72) + 56 * v3, v7 + 1);
      v7 = result;
      if (result == -1)
      {
        return result;
      }
    }

    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_10:
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

void *re::DynamicArray<re::DynamicBitset<unsigned long long,128ul>>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v4)
      {
        result = re::DynamicArray<re::DynamicBitset<unsigned long long,128ul>>::setCapacity(v4, a2);
        ++*(v4 + 6);
        return result;
      }

      if (a2)
      {
        result = (*(*result + 32))(result, 56 * a2, 8);
        if (!result)
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 56 * a2, *(*v4 + 8));
          result = _os_crash();
          __break(1u);
          return result;
        }

        v6 = result;
        if (!v4[1])
        {
          goto LABEL_17;
        }
      }

      else
      {
        v6 = 0;
        if (!v2)
        {
LABEL_17:
          v4[4] = v6;
          v4[1] = a2;
          return result;
        }
      }

      v7 = v4[4];
      v8 = v4[2];
      if (v8)
      {
        v9 = 0;
        v10 = 56 * v8;
        do
        {
          v11 = &v6[v9 / 8];
          v12 = v7 + v9;
          *v11 = 0;
          v11[1] = 0;
          *(v11 + 4) = 1;
          v11[3] = 0;
          v11[4] = 0;
          v13 = *(v7 + v9);
          if (v13)
          {
            v14 = *(v12 + 8);
            *v11 = v13;
            re::DynamicOverflowArray<unsigned long long,3ul>::setCapacity(&v6[v9 / 8], v14);
            *(v11 + 4) += 2;
            re::DynamicOverflowArray<unsigned long long,3ul>::copy(&v6[v9 / 8], v7 + v9);
          }

          v11[6] = *(v12 + 48);
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v7 + v9);
          v9 += 56;
        }

        while (v10 != v9);
        v7 = v4[4];
      }

      result = (*(**v4 + 40))(*v4, v7);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::internal::PriorityQueue::swap(void *this, unsigned int a2, unsigned int a3)
{
  v3 = this[3];
  if (v3 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  if (v3 <= a3)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  v4 = this[5];
  v5 = *(v4 + 8 * a2);
  *(v4 + 8 * a2) = *(v4 + 8 * a3);
  *(v4 + 8 * a3) = v5;
  v6 = this[3];
  if (v6 <= a2)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v7 = this[5];
  v8 = *(v7 + 8 * a2);
  v9 = this[8];
  if (v9 <= v8)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v10 = this[10];
  *(v10 + 4 * v8) = a2;
  if (v6 <= a3)
  {
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

  v11 = *(v7 + 8 * a3);
  if (v9 <= v11)
  {
    goto LABEL_13;
  }

  *(v10 + 4 * v11) = a3;
  return this;
}

void *re::DynamicArray<re::anonymous namespace::sortAndCompactRegions(re::Slice<unsigned int>,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::FaceComponentPair>::setCapacity(void *result, unint64_t a2)
{
  if (result[1] != a2)
  {
    v3 = result;
    if (result[2] <= a2)
    {
      v4 = *result;
      if (*v3)
      {
        result = (*(*v4 + 32))(v4, 8 * a2, 4);
        if (result)
        {
          v6 = result;
          if (v3[1])
          {
            memcpy(result, v3[4], 8 * v3[2]);
            result = (*(**v3 + 40))(*v3, v3[4]);
          }

          v3[4] = v6;
          v3[1] = a2;
        }

        else
        {
          re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 8 * a2, *(*v3 + 8));
          result = _os_crash();
          __break(1u);
        }
      }

      else
      {
        ++*(v3 + 6);
      }
    }
  }

  return result;
}

int8x16_t *std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::sortAndCompactRegions(re::Slice<unsigned int>,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::FaceComponentPair *,false>(int8x16_t *result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (a2[-1].i32[3] >= v8->i32[1])
        {
          return result;
        }

        v65 = v8->i64[0];
LABEL_113:
        v8->i64[0] = a2[-1].i64[1];
LABEL_114:
        a2[-1].i64[1] = v65;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v68 = v8->u32[3];
      v69 = v8->u32[1];
      LODWORD(v70) = v8[1].i32[1];
      if (v68 >= v69)
      {
        if (v70 < v68)
        {
          v117 = v8->u64[1];
          v118 = v8[1].i64[0];
          v8->i64[1] = v118;
          v8[1].i64[0] = v117;
          v70 = HIDWORD(v117);
          if (v69 > HIDWORD(v118))
          {
            v119 = v8->i64[0];
            v8->i64[0] = v118;
            v8->i64[1] = v119;
          }
        }
      }

      else
      {
        v71 = v8->i64[0];
        v72 = HIDWORD(v8->i64[0]);
        if (v70 < v68)
        {
          v8->i64[0] = v8[1].i64[0];
          goto LABEL_186;
        }

        v8->i64[0] = v8->i64[1];
        v8->i64[1] = v71;
        if (v70 < v72)
        {
          v8->i64[1] = v8[1].i64[0];
LABEL_186:
          v8[1].i64[0] = v71;
          LODWORD(v70) = v72;
        }
      }

      if (a2[-1].i32[3] < v70)
      {
        v127 = v8[1].i64[0];
        v8[1].i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v127;
        if (v8[1].i32[1] < v8->i32[3])
        {
          v129 = v8->i64[1];
          v128 = v8[1].i64[0];
          v8->i64[1] = v128;
          v8[1].i64[0] = v129;
          if (v8->i32[1] > HIDWORD(v128))
          {
            v130 = v8->i64[0];
            v8->i64[0] = v128;
            v8->i64[1] = v130;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(v8, &v8->u64[1], &v8[1], &v8[1].u64[1], &a2[-1].u64[1]);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v73 = &v8->u64[1];
      v75 = v8 == a2 || v73 == a2;
      if (a4)
      {
        if (!v75)
        {
          v76 = 0;
          v77 = v8;
          do
          {
            v78 = v77->u32[3];
            v79 = v77->u32[1];
            v77 = v73;
            if (v78 < v79)
            {
              v80 = v73->i64[0];
              v81 = HIDWORD(v77->i64[0]);
              v82 = v76;
              while (1)
              {
                *(&v8->i64[1] + v82) = *(v8->i64 + v82);
                if (!v82)
                {
                  break;
                }

                v83 = *(&v8->u32[-1] + v82);
                v82 -= 8;
                if (v83 <= v81)
                {
                  v84 = (&v8->i64[1] + v82);
                  goto LABEL_133;
                }
              }

              v84 = v8;
LABEL_133:
              *v84 = v80;
            }

            v73 = &v77->u64[1];
            v76 += 8;
          }

          while (&v77->u64[1] != a2);
        }
      }

      else if (!v75)
      {
        do
        {
          v120 = v7->u32[3];
          v121 = v7->u32[1];
          v7 = v73;
          if (v120 < v121)
          {
            v122 = v73->i64[0];
            v123 = HIDWORD(v73->i64[0]);
            v124 = v7;
            do
            {
              v125 = v124;
              v126 = *--v124;
              *v125 = v126;
            }

            while (*(v125 - 3) > v123);
            *v124 = v122;
          }

          v73 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v85 = (v9 - 2) >> 1;
        v86 = v85;
        do
        {
          v87 = v86;
          if (v85 >= v86)
          {
            v88 = (2 * v86) | 1;
            v89 = &v8->i8[8 * v88];
            if (2 * v87 + 2 < v9)
            {
              v90 = *(v89 + 1);
              v91 = *(v89 + 3);
              v89 += 8 * (v90 < v91);
              if (v90 < v91)
              {
                v88 = 2 * v87 + 2;
              }
            }

            v92 = &v8->i8[8 * v87];
            if (*(v89 + 1) >= *(v92 + 1))
            {
              v93 = *v92;
              v94 = HIDWORD(*v92);
              do
              {
                v95 = v92;
                v92 = v89;
                *v95 = *v89;
                if (v85 < v88)
                {
                  break;
                }

                v96 = (2 * v88) | 1;
                v89 = &v8->i8[8 * v96];
                v97 = 2 * v88 + 2;
                if (v97 < v9)
                {
                  v98 = *(v89 + 1);
                  result = *(v89 + 3);
                  v89 += 8 * (v98 < result);
                  if (v98 < result)
                  {
                    v96 = v97;
                  }
                }

                v88 = v96;
              }

              while (*(v89 + 1) >= v94);
              *v92 = v93;
            }
          }

          v86 = v87 - 1;
        }

        while (v87);
        do
        {
          v99 = 0;
          v100 = v8->i64[0];
          v101 = v8;
          do
          {
            v102 = &v101[v99];
            v103 = (v102 + 1);
            v104 = (2 * v99) | 1;
            v99 = 2 * v99 + 2;
            if (v99 >= v9)
            {
              v99 = v104;
            }

            else
            {
              v105 = *(v102 + 3);
              v106 = *(v102 + 5);
              v107 = (v102 + 2);
              if (v105 >= v106)
              {
                v99 = v104;
              }

              else
              {
                v103 = v107;
              }
            }

            *v101 = v103->i64[0];
            v101 = v103;
          }

          while (v99 <= ((v9 - 2) >> 1));
          a2 = (a2 - 8);
          if (v103 == a2)
          {
            v103->i64[0] = v100;
          }

          else
          {
            v103->i64[0] = a2->i64[0];
            a2->i64[0] = v100;
            v108 = (v103 - v8 + 8) >> 3;
            v109 = v108 < 2;
            v110 = v108 - 2;
            if (!v109)
            {
              v111 = v110 >> 1;
              v112 = (v8 + 8 * v111);
              if (v112->i32[1] < v103->i32[1])
              {
                v113 = v103->i64[0];
                v114 = HIDWORD(v103->i64[0]);
                do
                {
                  v115 = v103;
                  v103 = v112;
                  *v115 = v112->i64[0];
                  if (!v111)
                  {
                    break;
                  }

                  v111 = (v111 - 1) >> 1;
                  v112 = (v8 + 8 * v111);
                }

                while (v112->i32[1] < v114);
                v103->i64[0] = v113;
              }
            }
          }

          v109 = v9-- <= 2;
        }

        while (!v109);
      }

      return result;
    }

    v10 = &v8->i8[8 * (v9 >> 1)];
    v11 = a2[-1].u32[3];
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 1);
      if (v12 >= v8->i32[1])
      {
        if (v11 < v12)
        {
          v16 = *v10;
          *v10 = a2[-1].i64[1];
          a2[-1].i64[1] = v16;
          if (*(v10 + 1) < v8->i32[1])
          {
            v17 = v8->i64[0];
            v8->i64[0] = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        v13 = v8->i64[0];
        if (v11 < v12)
        {
          v8->i64[0] = a2[-1].i64[1];
          goto LABEL_27;
        }

        v8->i64[0] = *v10;
        *v10 = v13;
        if (a2[-1].i32[3] < HIDWORD(v13))
        {
          *v10 = a2[-1].i64[1];
LABEL_27:
          a2[-1].i64[1] = v13;
        }
      }

      v20 = (v10 - 8);
      v21 = *(v10 - 1);
      v22 = a2[-1].u32[1];
      if (v21 >= v8->i32[3])
      {
        if (v22 < v21)
        {
          v24 = *v20;
          *v20 = a2[-1].i64[0];
          a2[-1].i64[0] = v24;
          if (*(v10 - 1) < v8->i32[3])
          {
            v25 = v8->i64[1];
            v8->i64[1] = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        v23 = v8->i64[1];
        if (v22 < v21)
        {
          v8->i64[1] = a2[-1].i64[0];
          goto LABEL_39;
        }

        v8->i64[1] = *v20;
        *v20 = v23;
        if (a2[-1].i32[1] < HIDWORD(v23))
        {
          *v20 = a2[-1].i64[0];
LABEL_39:
          a2[-1].i64[0] = v23;
        }
      }

      v26 = *(v10 + 3);
      v27 = a2[-2].u32[3];
      if (v26 >= v8[1].i32[1])
      {
        if (v27 < v26)
        {
          v29 = *(v10 + 1);
          *(v10 + 1) = a2[-2].i64[1];
          a2[-2].i64[1] = v29;
          if (*(v10 + 3) < v8[1].i32[1])
          {
            v30 = v8[1].i64[0];
            v8[1].i64[0] = *(v10 + 1);
            *(v10 + 1) = v30;
          }
        }
      }

      else
      {
        v28 = v8[1].i64[0];
        if (v27 < v26)
        {
          v8[1].i64[0] = a2[-2].i64[1];
          goto LABEL_48;
        }

        v8[1].i64[0] = *(v10 + 1);
        *(v10 + 1) = v28;
        if (a2[-2].i32[3] < HIDWORD(v28))
        {
          *(v10 + 1) = a2[-2].i64[1];
LABEL_48:
          a2[-2].i64[1] = v28;
        }
      }

      v31 = *(v10 + 1);
      v32 = *(v10 - 1);
      v33 = *(v10 + 3);
      if (v31 >= v32)
      {
        v34 = *v10;
        if (v33 < v31)
        {
          v35 = *(v10 + 1);
          *v10 = v35;
          *(v10 + 1) = v34;
          if (v32 <= HIDWORD(v35))
          {
            v34 = v35;
          }

          else
          {
            v34 = *v20;
            *v20 = v35;
            *v10 = v34;
          }
        }
      }

      else
      {
        v34 = *v20;
        if (v33 >= v31)
        {
          *v20 = *v10;
          *v10 = v34;
          if (v33 < HIDWORD(v34))
          {
            v36 = *(v10 + 1);
            *v10 = v36;
            *(v10 + 1) = v34;
            v34 = v36;
          }
        }

        else
        {
          *v20 = *(v10 + 1);
          *(v10 + 1) = v34;
          v34 = *v10;
        }
      }

      v37 = v8->i64[0];
      v8->i64[0] = v34;
      *v10 = v37;
      goto LABEL_59;
    }

    v14 = v8->u32[1];
    if (v14 >= *(v10 + 1))
    {
      if (v11 < v14)
      {
        v18 = v8->i64[0];
        v8->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v18;
        if (v8->i32[1] < *(v10 + 1))
        {
          v19 = *v10;
          *v10 = v8->i64[0];
          v8->i64[0] = v19;
        }
      }

      goto LABEL_59;
    }

    v15 = *v10;
    if (v11 < v14)
    {
      *v10 = a2[-1].i64[1];
LABEL_36:
      a2[-1].i64[1] = v15;
      goto LABEL_59;
    }

    *v10 = v8->i64[0];
    v8->i64[0] = v15;
    if (a2[-1].i32[3] < HIDWORD(v15))
    {
      v8->i64[0] = a2[-1].i64[1];
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v38 = v8->i64[0];
LABEL_62:
      v39 = 0;
      do
      {
        v40 = v8->u32[v39 + 3];
        v39 += 2;
      }

      while (v40 < HIDWORD(v38));
      v41 = &v8->i8[v39 * 4];
      v42 = a2;
      if (v39 == 2)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = &v45[-1].i64[1];
          v46 = v45[-1].u32[3];
          v45 = (v45 - 8);
          if (v46 < HIDWORD(v38))
          {
            goto LABEL_72;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = &v42[-1].i64[1];
          v44 = v42[-1].u32[3];
          v42 = (v42 - 8);
        }

        while (v44 >= HIDWORD(v38));
      }

LABEL_72:
      if (v41 >= v43)
      {
        v52 = v41 - 8;
      }

      else
      {
        v47 = v41;
        v48 = v43;
        do
        {
          v49 = *v47;
          *v47 = *v48;
          *v48 = v49;
          do
          {
            v50 = *(v47 + 12);
            v47 += 8;
          }

          while (v50 < HIDWORD(v38));
          do
          {
            v51 = *(v48-- - 1);
          }

          while (v51 >= HIDWORD(v38));
        }

        while (v47 < v48);
        v52 = (v47 - 8);
      }

      if (v52 != v8)
      {
        v8->i64[0] = *v52;
      }

      *v52 = v38;
      if (v41 < v43)
      {
        goto LABEL_85;
      }

      v8 = (v52 + 8);
      if (result)
      {
        a2 = v52;
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_85:
        a4 = 0;
        v8 = (v52 + 8);
      }
    }

    else
    {
      v38 = v8->i64[0];
      if (v8[-1].i32[3] < v8->i32[1])
      {
        goto LABEL_62;
      }

      if (a2[-1].i32[3] <= HIDWORD(v38))
      {
        v56 = &v8->u64[1];
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = v56->u32[1];
          v56 = (v56 + 8);
        }

        while (v57 <= HIDWORD(v38));
      }

      else
      {
        v54 = v8;
        do
        {
          v8 = &v54->u64[1];
          v55 = v54->u32[3];
          v54 = (v54 + 8);
        }

        while (v55 <= HIDWORD(v38));
      }

      v58 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v58 = (v59 - 8);
          v60 = v59[-1].u32[3];
          v59 = (v59 - 8);
        }

        while (v60 > HIDWORD(v38));
      }

      while (v8 < v58)
      {
        v61 = v8->i64[0];
        v8->i64[0] = v58->i64[0];
        v58->i64[0] = v61;
        do
        {
          v62 = v8->u32[3];
          v8 = (v8 + 8);
        }

        while (v62 <= HIDWORD(v38));
        do
        {
          v63 = v58[-1].u32[3];
          v58 = (v58 - 8);
        }

        while (v63 > HIDWORD(v38));
      }

      v64 = &v8[-1].u64[1];
      if (&v8[-1].u64[1] != v7)
      {
        v7->i64[0] = *v64;
      }

      a4 = 0;
      *v64 = v38;
    }
  }

  v66 = v8->u32[3];
  v67 = a2[-1].u32[3];
  if (v66 >= v8->i32[1])
  {
    if (v67 < v66)
    {
      v116 = v8->i64[1];
      v8->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v116;
      if (v8->i32[3] < v8->i32[1])
      {
        *v8 = vextq_s8(*v8, *v8, 8uLL);
      }
    }
  }

  else
  {
    v65 = v8->i64[0];
    if (v67 < v66)
    {
      goto LABEL_113;
    }

    v8->i64[0] = v8->i64[1];
    v8->i64[1] = v65;
    if (a2[-1].i32[3] < HIDWORD(v65))
    {
      v8->i64[1] = a2[-1].i64[1];
      goto LABEL_114;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::anonymous namespace::sortAndCompactRegions(re::Slice<unsigned int>,re::DynamicArray<unsigned int> &,re::DynamicArray<unsigned int> &)::FaceComponentPair *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1->u32[3];
      v5 = a2[-1].u32[3];
      if (v4 >= a1->i32[1])
      {
        if (v5 < v4)
        {
          v15 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v15;
          if (a1->i32[3] < a1->i32[1])
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        return 1;
      }

      v3 = a1->i64[0];
      if (v5 >= v4)
      {
        a1->i64[0] = a1->i64[1];
        a1->i64[1] = v3;
        if (a2[-1].i32[3] >= HIDWORD(v3))
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        goto LABEL_13;
      }

LABEL_12:
      a1->i64[0] = a2[-1].i64[1];
LABEL_13:
      a2[-1].i64[1] = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(re::GeomMesh const&)::FaceComponentPair *,0>(a1, &a1->u64[1], &a1[1], &a1[1].u64[1], &a2[-1].u64[1]);
        return 1;
      }

      goto LABEL_14;
    }

    v10 = a1->u32[3];
    v11 = a1->u32[1];
    LODWORD(v12) = a1[1].i32[1];
    if (v10 >= v11)
    {
      if (v12 < v10)
      {
        v19 = a1->u64[1];
        v20 = a1[1].i64[0];
        a1->i64[1] = v20;
        a1[1].i64[0] = v19;
        v12 = HIDWORD(v19);
        if (v11 > HIDWORD(v20))
        {
          v21 = a1->i64[0];
          a1->i64[0] = v20;
          a1->i64[1] = v21;
        }
      }

      goto LABEL_48;
    }

    v13 = a1->i64[0];
    v14 = HIDWORD(a1->i64[0]);
    if (v12 >= v10)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v13;
      if (v12 >= v14)
      {
LABEL_48:
        if (a2[-1].i32[3] < v12)
        {
          v31 = a1[1].i64[0];
          a1[1].i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v31;
          if (a1[1].i32[1] < a1->i32[3])
          {
            v33 = a1->i64[1];
            v32 = a1[1].i64[0];
            a1->i64[1] = v32;
            a1[1].i64[0] = v33;
            if (a1->i32[1] > HIDWORD(v32))
            {
              v34 = a1->i64[0];
              a1->i64[0] = v32;
              a1->i64[1] = v34;
            }
          }
        }

        return 1;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v13;
    LODWORD(v12) = v14;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (a2[-1].i32[3] < a1->i32[1])
    {
      v3 = a1->i64[0];
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1->u32[3];
  v7 = a1->u32[1];
  v8 = a1[1].u32[1];
  if (v6 >= v7)
  {
    if (v8 < v6)
    {
      v17 = a1->i64[1];
      v16 = a1[1].i64[0];
      a1->i64[1] = v16;
      a1[1].i64[0] = v17;
      if (v7 > HIDWORD(v16))
      {
        v18 = a1->i64[0];
        a1->i64[0] = v16;
        a1->i64[1] = v18;
      }
    }
  }

  else
  {
    v9 = a1->i64[0];
    if (v8 >= v6)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v9;
      if (v8 >= HIDWORD(v9))
      {
        goto LABEL_34;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v9;
  }

LABEL_34:
  v22 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  v25 = a1 + 1;
  while (1)
  {
    if (v22->i32[1] < v25->i32[1])
    {
      v26 = v22->i64[0];
      v27 = HIDWORD(v22->i64[0]);
      v28 = v23;
      while (1)
      {
        *(&a1[1].i64[1] + v28) = *(a1[1].i64 + v28);
        if (v28 == -16)
        {
          break;
        }

        v29 = *(&a1->u32[3] + v28);
        v28 -= 8;
        if (v29 <= v27)
        {
          v30 = (&a1[1].i64[1] + v28);
          goto LABEL_42;
        }
      }

      v30 = a1;
LABEL_42:
      *v30 = v26;
      if (++v24 == 8)
      {
        return &v22->u64[1] == a2;
      }
    }

    v25 = v22;
    v23 += 8;
    v22 = (v22 + 8);
    if (v22 == a2)
    {
      return 1;
    }
  }
}

void re::internal::simplifyPolyLine(uint64_t a1, float a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 >= 3)
  {
    v5 = 0;
    v6 = *(a1 + 32);
    v7 = &v6[v2];
    v9 = v7[-1];
    f32 = v7[-1].f32;
    v10 = *v6;
    v11 = vsubq_f32(v9, *v6);
    v12 = vmulq_f32(v11, v11);
    v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    v14 = v2 - 2;
    v15 = 1;
    v16 = 0.0;
    do
    {
      v17 = v6[v15];
      v18 = *v6;
      if (v13 > 0.0)
      {
        v19 = vmulq_f32(v11, vsubq_f32(v17, v10));
        v20 = (v19.f32[2] + vaddv_f32(*v19.f32)) / v13;
        if (v20 > 1.0)
        {
          v20 = 1.0;
        }

        if (v20 < 0.0)
        {
          v20 = 0.0;
        }

        v18 = vaddq_f32(v10, vmulq_n_f32(v11, v20));
      }

      v21 = vsubq_f32(v18, v17);
      v22 = vmulq_f32(v21, v21);
      v23 = vaddv_f32(*v22.f32);
      if ((v22.f32[2] + v23) > v16)
      {
        v5 = v15;
        v16 = v22.f32[2] + v23;
      }

      ++v15;
      --v14;
    }

    while (v14);
    if (v16 <= (a2 * a2))
    {
      v27 = 2;
      re::DynamicArray<re::Vector3<float>>::resize(a1, 2uLL);
      if (*(a1 + 16))
      {
        **(a1 + 32) = *v6;
        v27 = *(a1 + 16);
        if (v27 > 1)
        {
          *(*(a1 + 32) + 16) = *f32;
          return;
        }
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        *__src = 0u;
        v31 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v28 = 136315906;
        *&v28[4] = "operator[]";
        *&v28[12] = 1024;
        *&v28[14] = 789;
        *&v28[18] = 2048;
        *&v28[20] = 0;
        v29 = 2048;
        *v30 = 0;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      *__src = 0u;
      v31 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v28 = 136315906;
      *&v28[4] = "operator[]";
      *&v28[12] = 1024;
      *&v28[14] = 789;
      *&v28[18] = 2048;
      *&v28[20] = 1;
      v29 = 2048;
      *v30 = v27;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    __src[0] = 0;
    *&v32 = 0;
    v31 = 0uLL;
    DWORD2(v32) = 0;
    *&v30[2] = 0;
    memset(v28, 0, sizeof(v28));
    re::DynamicArray<re::Vector3<float>>::resize(&v31, v5 + 1);
    v24 = v2 - v5;
    re::DynamicArray<re::Vector3<float>>::resize(v28, v24);
    re::DynamicArray<re::Vector3<float>>::copy(&v31, 0, *(a1 + 32), v5 + 1);
    re::DynamicArray<re::Vector3<float>>::copy(v28, 0, (*(a1 + 32) + 16 * v5), v24);
    re::internal::simplifyPolyLine(&v31, a2);
    re::internal::simplifyPolyLine(v28, a2);
    v25 = v32;
    v26 = *&v28[16] - 1;
    re::DynamicArray<re::Vector3<float>>::resize(a1, *&v28[16] - 1 + v32);
    re::DynamicArray<re::Vector3<float>>::copy(a1, 0, __src[0], v25);
    re::DynamicArray<re::Vector3<float>>::copy(a1, v25, (*&v30[2] + 16), v26);
    if (*v28 && *&v30[2])
    {
      (*(**v28 + 40))();
    }

    if (v31)
    {
      if (__src[0])
      {
        (*(*v31 + 40))();
      }
    }
  }
}

uint64_t re::findConnectedComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v79 = *MEMORY[0x1E69E9840];
  v6 = v47;
  re::internal::GeomVertexConnectivity::buildVertexConnectivity((a1 + 16), v47);
  v30 = a1;
  re::DynamicArray<float>::DynamicArray(v31, v47);
  re::DynamicArray<float>::DynamicArray(v34, v49);
  __dst = 0;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  v40 = 0;
  if (v52)
  {
    v37 = v52;
    re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v37, v53);
    ++v40;
    v7 = v53;
    if (v53 >= v39)
    {
      re::DynamicArray<re::MeshAssetLoader::addProceduralVertexAttributes(re::MeshAssetData &)::MeshModelPartWithOpenSubDiv>::setCapacity(&v37, v53);
      v8 = v39;
      if (v39)
      {
        memmove(__dst, __src, 8 * v39 - 3);
        v8 = v39;
      }

      memcpy(__dst + 8 * v8, __src + 8 * v8, 8 * (v7 - v8));
    }

    else if (v53)
    {
      memmove(__dst, __src, 8 * v53 - 3);
    }

    v39 = v7;
  }

  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v45 = 0;
  v9 = *(v30 + 40);
  v10 = *(v30 + 16);
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  LOBYTE(v74) = 0;
  re::DynamicArray<unsigned char>::resize(&v42, v11, &v74);
  *(a2 + 16) = 0;
  ++*(a2 + 24);
  re::DynamicArray<unsigned int>::resize(a2, *(v30 + 16), &re::kInvalidMeshIndex);
  *(a3 + 16) = 0;
  ++*(a3 + 24);
  re::DynamicArray<unsigned int>::resize(a3, *(v30 + 40), &re::kInvalidMeshIndex);
  v60 = 0;
  v57[1] = 0;
  v58 = 0;
  v57[0] = 0;
  v59 = 0;
  v56 = 0;
  if (!*(v30 + 16))
  {
LABEL_53:
    v12 = 0;
    goto LABEL_54;
  }

  v29 = a2;
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v13;
    v15 = v44;
    if (v44 <= v13)
    {
      goto LABEL_89;
    }

    if ((*(v46 + v13) & 1) == 0)
    {
      v58 = 0;
      ++v59;
      re::DynamicArray<int>::add(v57, &v56);
      v16 = v58;
      if (v58)
      {
        v17 = 1;
        while (1)
        {
          v14 = *(v60 + 4 * (v16 - 1));
          re::DynamicArray<float>::resize(v57, v16 - 1);
          v15 = v44;
          if (v44 <= v14)
          {
            goto LABEL_86;
          }

          *(v46 + v14) |= 1u;
          *&v66[2] = 0;
          memset(v64, 0, sizeof(v64));
          v15 = v32;
          if (v32 <= v14)
          {
            goto LABEL_87;
          }

          v18 = *(v33 + 4 * v14);
          re::DynamicArray<re::internal::GeomVertexConnectivity::FaceVertex>::resize(v64, v18);
          if (v18)
          {
            break;
          }

LABEL_24:
          v21 = *&v64[16];
          if (!*&v64[16])
          {
            goto LABEL_43;
          }

          v6 = *(v29 + 16);
          if (v6 <= v14)
          {
            goto LABEL_88;
          }

          *(*(v29 + 32) + 4 * v14) = v12;
          v15 = *&v66[2];
          v22 = *&v66[2] + 8 * v21;
          do
          {
            v14 = *v15;
            v6 = v44;
            if (v44 <= v14)
            {
              goto LABEL_82;
            }

            if ((*(v46 + v14) & 2) != 0)
            {
              goto LABEL_42;
            }

            *(v46 + v14) |= 2u;
            v6 = *(a3 + 16);
            if (v6 <= v14)
            {
              v62 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v67 = 136315906;
              *&v67[4] = "operator[]";
              v68 = 1024;
              v69 = 789;
              v70 = 2048;
              v71 = v14;
              v72 = 2048;
              v73 = v6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_85:
              v62 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v67 = 136315906;
              *&v67[4] = "operator[]";
              v68 = 1024;
              v69 = 797;
              v70 = 2048;
              v71 = v14;
              v72 = 2048;
              v73 = v6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_86:
              *v67 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v64 = 136315906;
              *&v64[4] = "operator[]";
              *&v64[12] = 1024;
              *&v64[14] = 789;
              *&v64[18] = 2048;
              *&v64[20] = v14;
              v65 = 2048;
              *v66 = v15;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_87:
              v62 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v67 = 136315906;
              *&v67[4] = "operator[]";
              v68 = 1024;
              v69 = 797;
              v70 = 2048;
              v71 = v14;
              v72 = 2048;
              v73 = v15;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_88:
              v62 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v67 = 136315906;
              *&v67[4] = "operator[]";
              v68 = 1024;
              v69 = 789;
              v70 = 2048;
              v71 = v14;
              v72 = 2048;
              v73 = v6;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_89:
              *v67 = 0;
              v77 = 0u;
              v78 = 0u;
              v75 = 0u;
              v76 = 0u;
              v74 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v64 = 136315906;
              *&v64[4] = "operator[]";
              *&v64[12] = 1024;
              *&v64[14] = 797;
              *&v64[18] = 2048;
              *&v64[20] = v14;
              v65 = 2048;
              *v66 = v15;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(*(a3 + 32) + 4 * v14) = v12;
            v6 = *(v30 + 40);
            if (v6 <= v14)
            {
              goto LABEL_85;
            }

            v23 = 0;
            v24 = *(v30 + 56) + 16 * v14;
            do
            {
              *(&v62 + v23) = *(v24 + v23);
              v23 += 4;
            }

            while (v23 != 16);
            if (v63 == -1)
            {
              v25 = 3;
            }

            else
            {
              v25 = 4;
            }

            v26 = &v62;
            do
            {
              v27 = *v26;
              v6 = v44;
              if (v44 <= v27)
              {
                v61 = 0;
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v74 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v67 = 136315906;
                *&v67[4] = "operator[]";
                v68 = 1024;
                v69 = 797;
                v70 = 2048;
                v71 = v27;
                v72 = 2048;
                v73 = v6;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
                goto LABEL_53;
              }

              if ((*(v46 + v27) & 1) == 0)
              {
                re::DynamicArray<int>::add(v57, v26);
              }

              v26 = (v26 + 4);
              --v25;
            }

            while (v25);
            v17 = 0;
LABEL_42:
            v15 += 8;
          }

          while (v15 != v22);
LABEL_43:
          if (*v64 && *&v66[2])
          {
            (*(**v64 + 40))();
          }

          v16 = v58;
          if (!v58)
          {
            v12 = v12 + ((v17 & 1) == 0);
            goto LABEL_48;
          }
        }

        v15 = 0;
        while (1)
        {
          v19 = re::internal::GeomVertexConnectivity::faceVertex(v31, v14, v15);
          v6 = *&v64[16];
          if (*&v64[16] <= v15)
          {
            break;
          }

          v20 = *&v66[2] + 8 * v15;
          *v20 = v19;
          *(v20 + 4) = BYTE4(v19);
          if (++v15 == v18)
          {
            goto LABEL_24;
          }
        }

        v62 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v67 = 136315906;
        *&v67[4] = "operator[]";
        v68 = 1024;
        v69 = 789;
        v70 = 2048;
        v71 = v15;
        v72 = 2048;
        v73 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_82:
        v62 = 0;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v12 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v67 = 136315906;
        *&v67[4] = "operator[]";
        v68 = 1024;
        v69 = 797;
        v70 = 2048;
        v71 = v14;
        v72 = 2048;
        v73 = v6;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_83;
      }
    }

LABEL_48:
    v13 = v56 + 1;
    v56 = v13;
  }

  while (v13 < *(v30 + 16));
  if (!v57[0])
  {
LABEL_83:
    v6 = v47;
    goto LABEL_54;
  }

  v6 = v47;
  if (v60)
  {
    (*(*v57[0] + 40))();
  }

LABEL_54:
  if (v42)
  {
    if (v46)
    {
      (*(*v42 + 40))(v42, v46);
    }

    v46 = 0;
    v43 = 0;
    v44 = 0;
    v42 = 0;
    ++v45;
  }

  if (v37)
  {
    if (__dst)
    {
      (*(*v37 + 40))(v37, __dst);
    }

    __dst = 0;
    v38 = 0;
    v39 = 0;
    v37 = 0;
    ++v40;
  }

  if (v34[0])
  {
    if (v36)
    {
      (*(*v34[0] + 40))(v34[0], v36);
    }

    v36 = 0;
    memset(v34, 0, sizeof(v34));
    ++v35;
  }

  if (v31[0] && v33)
  {
    (*(*v31[0] + 40))(v31[0], v33);
  }

  if (v52)
  {
    if (__src)
    {
      (*(*v52 + 40))(v52, __src);
    }

    __src = 0;
    v6[11] = 0;
    v6[12] = 0;
    v6[10] = 0;
    ++v54;
  }

  if (v49[0])
  {
    if (v51)
    {
      (*(*v49[0] + 40))(v49[0], v51);
    }

    v51 = 0;
    v6[6] = 0;
    v6[7] = 0;
    v6[5] = 0;
    ++v50;
  }

  if (v47[0] && v48)
  {
    (*(*v47[0] + 40))(v47[0], v48);
  }

  return v12;
}

uint64_t re::internal::substituteProxies(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v372 = v3;
  v373 = v4;
  v6 = v5;
  v7 = v441;
  v497 = *MEMORY[0x1E69E9840];
  v449 = 0;
  v448 = 0;
  v450 = 1;
  v8 = &v451;
  v452 = 0;
  v451 = 0;
  v9 = v5[2].i64[1];
  if ((v9 & 0x3F) != 0)
  {
    v10 = (v9 >> 6) + 1;
  }

  else
  {
    v10 = v9 >> 6;
  }

  v453 = v9;
  v468.i64[0] = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v448, v10, &v468);
  v11 = v449;
  if (v449)
  {
    v12 = v452;
    if (v450)
    {
      v12 = &v451;
    }

    do
    {
      *v12++ = 0;
      v13 = v452;
      if (v450)
      {
        v13 = &v451;
      }
    }

    while (v12 != &v13[v11]);
  }

  v441[1] = 0;
  v441[0] = 0;
  v442 = 0;
  v447 = 0;
  v444 = 0u;
  v445 = 0u;
  v443 = 0;
  v446 = 0;
  re::internal::ExtractMeshConnectedComponents::extractUsingVertexFaceConnectivity(v441, v6);
  v14 = v442;
  bzero(&v435, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(&v437, 1uLL);
  ++v438;
  re::internal::GeomAttributeManager::GeomAttributeManager(v440);
  re::internal::GeomAttributeManager::addAttribute(v440, "vertexPosition", 1, 7);
  v427 = 0;
  v429 = 0;
  v428[0] = 0;
  v428[1] = 0;
  v434 = 0;
  v431 = 0u;
  v432 = 0u;
  v430 = 0;
  v433 = 0;
  if (v14 >= 2)
  {
    re::DynamicArray<re::AABB>::setCapacity(v428, v14 >> 1);
    v426 = 0;
    v424 = 0;
    v422 = 0;
    v423 = 0;
    v425 = 0;
  }

  else
  {
    v426 = 0;
    v424 = 0;
    v422 = 0;
    v423 = 0;
    v425 = 0;
    if (!v14)
    {
      goto LABEL_341;
    }
  }

  v379 = 0;
  v16 = 0;
  v17 = 0.5;
  v18 = 1.0;
  v19 = -1.0;
  v20 = "uler18ScheduleDescriptorEmE3$_1FvfEJEEE";
  do
  {
    v421 = 0;
    HasOneMaterial = re::internal::ExtractMeshConnectedComponents::componentHasOneMaterial(v441, v16, v6, *(v2 + 16), &v421);
    re::GeomMesh::GeomMesh(&v417, 0);
    if (!HasOneMaterial)
    {
      re::GeomMesh::GeomMesh(v412, 0);
      goto LABEL_34;
    }

    HasOneMaterial = *(v2 + 16);
    v415 = 0;
    v412[1] = 0;
    v413 = 0;
    v412[0] = 0;
    v414 = 0;
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v441, v16, v412);
    MeshFromFaceSubset = re::internal::extractMeshFromFaceSubset(v6, v415, v413, HasOneMaterial, &v468);
    if (v412[0] && v415)
    {
      (*(*v412[0] + 40))(MeshFromFaceSubset);
    }

    re::GeomMesh::operator=(&v417, &v468);
    re::GeomMesh::~GeomMesh(&v468);
    re::GeomMesh::GeomMesh(v412, 0);
    v23 = *v2;
    v24 = *(v2 + 8);
    re::computeOrientedBoundingBox(&v417, &v464);
    v25 = vmulq_f32(v464, v464);
    v26 = vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
    v27 = vmulq_f32(v465, v465);
    v28 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v29 = vsqrt_f32(vadd_f32(vzip1_s32(v26, v28), vzip2_s32(v26, v28)));
    *&v30 = vadd_f32(v29, v29);
    v31 = vmuls_lane_f32(*&v30, *&v30, 1);
    if (fabsf(v31) < 0.00001)
    {
      re::GeomMesh::GeomMesh(&v468, 0);
      goto LABEL_21;
    }

    v46 = vmulq_f32(v466, v466);
    v47 = sqrtf(vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL))));
    v48 = v47 + v47;
    v49 = *(&v30 + 1);
    v50 = v23 * v17;
    if (v31 >= 0.25 || *&v30 >= v23 && (*(&v30 + 1) < (v50 * v17) ? (v51 = v48 < (v50 * v17)) : (v51 = 0), !v51))
    {
      v459.i64[0] = v30;
      v459.f32[2] = v47 + v47;
      *&v52 = *&v25.i32[2] + vaddv_f32(*v25.i8);
      v53 = vrsqrte_f32(v52);
      v54 = vmul_f32(v53, vrsqrts_f32(v52, vmul_f32(v53, v53)));
      v55 = vmulq_n_f32(v464, vmul_f32(v54, vrsqrts_f32(v52, vmul_f32(v54, v54))).f32[0]);
      *&v56 = *&v27.i32[2] + vaddv_f32(*v27.i8);
      v57 = vrsqrte_f32(v56);
      v58 = vmul_f32(v57, vrsqrts_f32(v56, vmul_f32(v57, v57)));
      v58.i32[0] = vmul_f32(v58, vrsqrts_f32(v56, vmul_f32(v58, v58))).u32[0];
      v59 = vmulq_n_f32(v465, v58.f32[0]);
      v58 = v58.u32[0];
      v58.f32[0] = *&v46.i32[2] + vaddv_f32(*v46.i8);
      v60 = vrsqrte_f32(v58);
      v61 = vmul_f32(v60, vrsqrts_f32(v58, vmul_f32(v60, v60)));
      v389 = v59;
      v390 = vmulq_n_f32(v466, vmul_f32(v61, vrsqrts_f32(v58, vmul_f32(v61, v61))).f32[0]);
      v462 = v59;
      v463 = v390;
      v62 = v467;
      v391 = v55;
      v460 = v467;
      v461 = v55;
      v407 = v467;
      v380 = v48;
      v381 = v30;
      if (v418 + 2 * (v420 - v418) >= 0x15 && fabsf(*&v30 / v48) <= *(v20 + 1944))
      {
        v374 = v23 * v17;
        v63 = *(&v30 + 1);
        v64 = re::GeomMesh::accessVertexPositions(&v417);
        v66 = v419;
        if (v419)
        {
          v32 = v65;
          if (v65 <= v419 - 1)
          {
            goto LABEL_473;
          }

          v67 = 0.0;
          v68 = v64;
          v69 = v419;
          v62 = v407;
          do
          {
            v70 = *v68++;
            v71 = vsubq_f32(v70, v407);
            v72 = vmulq_f32(v71, v71);
            v67 = v67 + sqrtf(v72.f32[2] + vaddv_f32(*v72.f32));
            --v69;
          }

          while (v69);
          v73 = v67 / v419;
          v48 = v380;
          LODWORD(v30) = v381;
          v50 = v374;
          do
          {
            v74 = vsubq_f32(*v64, v407);
            v75 = vmulq_f32(v74, v74);
            if ((vabds_f32(sqrtf(v75.f32[2] + vaddv_f32(*v75.f32)), v73) / v73) > 0.1)
            {
              goto LABEL_95;
            }

            ++v64;
            --v66;
          }

          while (v66);
          v402 = v73;
        }

        else
        {
          v402 = NAN;
        }

        v76 = v24;
        v468.i64[0] = &v417;
        v468.i64[1] = re::GeomMesh::accessVertexPositions(&v417);
        LODWORD(v469) = v77;
        if (v420)
        {
          LODWORD(HasOneMaterial) = 0;
          v78 = 0.0;
          do
          {
            re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v468, HasOneMaterial);
            v80.i64[0] = v79;
            v80.i64[1] = v81;
            v82 = vmulq_f32(v80, v80);
            v78 = v78 + sqrtf(v82.f32[2] + vaddv_f32(*v82.f32));
            HasOneMaterial = (HasOneMaterial + 1);
          }

          while (HasOneMaterial < v420);
        }

        else
        {
          v78 = 0.0;
        }

        v62 = v407;
        v83 = vabds_f32(v78, v402 * (v402 * 12.566)) / (v402 * (v402 * 12.566));
        v48 = v380;
        LODWORD(v30) = v381;
        v24 = v76;
        v18 = 1.0;
        v49 = v63;
        v50 = v374;
        if (v83 <= 0.1)
        {
          bzero(v473, 0x2D0uLL);
          re::DynamicArray<re::BlendNode>::setCapacity(&v473[16], 1uLL);
          ++v476;
          re::internal::GeomAttributeManager::GeomAttributeManager(v478);
          re::internal::GeomAttributeManager::addAttribute(v478, "vertexPosition", 1, 7);
          if (*&v473[8] >= 0xDu && *&v475[2] && (*&v475[2] - 1) > *&v475[2])
          {
              ;
            }
          }

          *&v473[8] = 12;
          v479 = 12;
          if (v480)
          {
            v85 = v481;
            v86 = 8 * v480;
            do
            {
              v87 = *v85++;
              (*(*v87 + 80))(v87, v479);
              v86 -= 8;
            }

            while (v86);
          }

          if (*&v475[2] >= 0x15u)
          {
            v88 = v486;
            if (v486)
            {
              v89 = 0;
              do
              {
                v90 = re::internal::GeomAttributeContainer::attributeByIndex(v485, v89);
                re::internal::accessFaceVaryingAttributeSubmesh(v90, v91);
                ++v89;
              }

              while (v88 != v89);
            }
          }

          re::DynamicArray<re::GeomCell4>::resize(&v473[16], 0x14uLL);
          v482 = 20;
          v17 = 0.5;
          if (v483)
          {
            v92 = v484;
            v93 = 8 * v483;
            do
            {
              v94 = *v92++;
              (*(*v94 + 80))(v94, v482);
              v93 -= 8;
            }

            while (v93);
          }

          re::GeomMeshBuilder::setFaceVertices(v473, 0, 1, 2, 6);
          re::GeomMeshBuilder::setFaceVertices(v473, 1u, 1, 7, 2);
          re::GeomMeshBuilder::setFaceVertices(v473, 2u, 3, 4, 5);
          re::GeomMeshBuilder::setFaceVertices(v473, 3u, 4, 3, 8);
          re::GeomMeshBuilder::setFaceVertices(v473, 4u, 6, 5, 11);
          re::GeomMeshBuilder::setFaceVertices(v473, 5u, 5, 6, 10);
          re::GeomMeshBuilder::setFaceVertices(v473, 6u, 9, 10, 2);
          re::GeomMeshBuilder::setFaceVertices(v473, 7u, 10, 9, 3);
          re::GeomMeshBuilder::setFaceVertices(v473, 8u, 7, 8, 9);
          re::GeomMeshBuilder::setFaceVertices(v473, 9u, 8, 7, 0);
          re::GeomMeshBuilder::setFaceVertices(v473, 0xAu, 11, 0, 1);
          re::GeomMeshBuilder::setFaceVertices(v473, 0xBu, 0, 11, 4);
          re::GeomMeshBuilder::setFaceVertices(v473, 0xCu, 6, 2, 10);
          re::GeomMeshBuilder::setFaceVertices(v473, 0xDu, 1, 6, 11);
          re::GeomMeshBuilder::setFaceVertices(v473, 0xEu, 3, 5, 10);
          re::GeomMeshBuilder::setFaceVertices(v473, 0xFu, 5, 4, 11);
          re::GeomMeshBuilder::setFaceVertices(v473, 0x10u, 2, 7, 9);
          re::GeomMeshBuilder::setFaceVertices(v473, 0x11u, 7, 1, 0);
          re::GeomMeshBuilder::setFaceVertices(v473, 0x12u, 3, 9, 8);
          re::GeomMeshBuilder::setFaceVertices(v473, 0x13u, 4, 8, 0);
          re::GeomMesh::GeomMesh(&v468, 0);
          re::GeomMesh::operator=(&v468, &v473[8]);
          re::GeomMesh::setName(&v468, *v473);
          re::GeomMesh::freeName(v473);
          v95 = re::GeomMesh::modifyVertexPositions(&v468);
          HasOneMaterial = v96;
          v20 = 0x1E30A0000;
          if (!v96)
          {
            goto LABEL_477;
          }

          *v95 = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A07B0, v402));
          if (v96 == 1)
          {
            goto LABEL_478;
          }

          v95[1] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A07C0, v402));
          if (v96 <= 2)
          {
            goto LABEL_479;
          }

          v95[2] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A07D0, v402));
          if (v96 == 3)
          {
            goto LABEL_480;
          }

          v95[3] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A07E0, v402));
          if (v96 <= 4)
          {
            goto LABEL_481;
          }

          v95[4] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A07F0, v402));
          if (v96 == 5)
          {
            goto LABEL_482;
          }

          v95[5] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0800, v402));
          if (v96 <= 6)
          {
            goto LABEL_483;
          }

          v95[6] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0810, v402));
          if (v96 == 7)
          {
            goto LABEL_484;
          }

          v95[7] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0820, v402));
          if (v96 <= 8)
          {
            goto LABEL_485;
          }

          v95[8] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0830, v402));
          if (v96 == 9)
          {
            goto LABEL_486;
          }

          v95[9] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0840, v402));
          if (v96 <= 0xA)
          {
            goto LABEL_487;
          }

          v95[10] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0850, v402));
          if (v96 == 11)
          {
            goto LABEL_488;
          }

          v95[11] = vaddq_f32(v407, vmulq_n_f32(xmmword_1E30A0860, v402));
          goto LABEL_327;
        }
      }

LABEL_95:
      v17 = 0.5;
      if (fabsf(v31 * v48) < 0.00001 || v418 + 2 * (v420 - v418) < 0x15 || ((v97 = (*&v30 / v49) + -1.0, v19 = -1.0, v98 = (v49 / v48) + -1.0, v97 > 0.1) || (v99 = v390, v100 = v48, v97 >= v98)) && (v99 = v391, v100 = *&v30, v98 >= 0.1))
      {
LABEL_150:
        if (v48 <= v23 && *&v30 * 0.25 >= v48)
        {
          v249 = v24;
          v455 = &v417;
          v456 = re::GeomMesh::accessVertexPositions(&v417);
          v457 = v250;
          if (v420)
          {
            LODWORD(HasOneMaterial) = 0;
            v251 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v389, v389), v389, 0xCuLL), vnegq_f32(v391)), v389, vextq_s8(vuzp1q_s32(v391, v391), v391, 0xCuLL));
            v405 = vextq_s8(vuzp1q_s32(v251, v251), v251, 0xCuLL);
            v252 = 0.0;
            v253 = 0.0;
            do
            {
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v455, HasOneMaterial);
              v255.i64[0] = v254;
              v255.i64[1] = v256;
              v257 = vmulq_f32(v405, v255);
              v258 = v257.f32[2] + vaddv_f32(*v257.f32);
              if (v258 <= 0.0)
              {
                v252 = v252 - v258;
              }

              else
              {
                v253 = v253 + v258;
              }

              HasOneMaterial = (HasOneMaterial + 1);
            }

            while (HasOneMaterial < v420);
          }

          else
          {
            v253 = 0.0;
            v252 = 0.0;
          }

          v259 = (v249 * *&v381) * v49;
          if (v253 >= v259 || v252 >= v259)
          {
            v261 = v253 >= v252 ? v253 : v252;
            if (fabsf(v261 - (*&v381 * v49)) <= ((v23 * 5.0) * (v23 * 5.0)))
            {
              v18 = 1.0;
              if (fabsf(v380) >= 0.00001)
              {
                LOBYTE(v219) = 1;
                v224 = 1;
                LOBYTE(v231) = 1;
                LOBYTE(v229) = 1;
                LOBYTE(v220) = 1;
                v227 = 1;
LABEL_281:
LABEL_21:
                re::GeomMesh::operator=(v412, &v468);
                re::GeomMesh::~GeomMesh(&v468);
                v32 = v421;
                if (v421 != -1)
                {
                  v33 = *(v2 + 16);
                  if (v33)
                  {
                    v34 = re::GeomMesh::addAttribute(v412, v33, 2, 2);
                    if (v34)
                    {
                      v35 = re::GeomAttribute::modifyValues<re::Vector3<float>>(v34);
                      v37 = v416;
                      if (v416)
                      {
                        HasOneMaterial = v36;
                        v38 = v36;
                        while (v38)
                        {
                          *v35++ = v32;
                          --v38;
                          if (!--v37)
                          {
                            goto LABEL_28;
                          }
                        }

LABEL_462:
                        v494[0] = 0;
                        v471 = 0u;
                        v472 = 0u;
                        v469 = 0u;
                        v470 = 0u;
                        v468 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v473 = 136315906;
                        *&v473[4] = "operator[]";
                        *&v473[12] = 1024;
                        *&v473[14] = 621;
                        *&v473[18] = 2048;
                        *&v473[20] = HasOneMaterial;
                        v474 = 2048;
                        *v475 = HasOneMaterial;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_463:
                        v455 = 0;
                        v471 = 0u;
                        v472 = 0u;
                        v469 = 0u;
                        v470 = 0u;
                        v468 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        *v487 = 136315906;
                        *&v487[4] = "operator[]";
                        v488 = 1024;
                        v489 = 613;
                        v490 = 2048;
                        v491 = v20;
                        v492 = 2048;
                        v493 = v20;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_464:
                        v464.i64[0] = 0;
                        v471 = 0u;
                        v472 = 0u;
                        v469 = 0u;
                        v470 = 0u;
                        v468 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v459.i32[0] = 136315906;
                        *(v7[11].i64 + 4) = "operator[]";
                        v459.i16[6] = 1024;
                        *(&v7[11].i32[3] + 2) = 789;
                        v460.i16[1] = 2048;
                        *(v7[12].i64 + 4) = v32;
                        v460.i16[6] = 2048;
                        *(&v7[12].i64[1] + 6) = v8;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_465:
                        v464.i64[0] = 0;
                        v471 = 0u;
                        v472 = 0u;
                        v469 = 0u;
                        v470 = 0u;
                        v468 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v459.i32[0] = 136315906;
                        *(v7[11].i64 + 4) = "operator[]";
                        v459.i16[6] = 1024;
                        *(&v7[11].i32[3] + 2) = 789;
                        v460.i16[1] = 2048;
                        *(v7[12].i64 + 4) = v32;
                        v460.i16[6] = 2048;
                        *(&v7[12].i64[1] + 6) = v8;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
LABEL_466:
                        v464.i64[0] = 0;
                        v471 = 0u;
                        v472 = 0u;
                        v469 = 0u;
                        v470 = 0u;
                        v468 = 0u;
                        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                        v459.i32[0] = 136315906;
                        *(v7[11].i64 + 4) = "operator[]";
                        v459.i16[6] = 1024;
                        *(&v7[11].i32[3] + 2) = 789;
                        v460.i16[1] = 2048;
                        *(v7[12].i64 + 4) = v32;
                        v460.i16[6] = 2048;
                        *(&v7[12].i64[1] + 6) = v8;
                        _os_log_send_and_compose_impl();
                        _os_crash_msg();
                        __break(1u);
                        goto LABEL_467;
                      }
                    }
                  }
                }

LABEL_28:
                if (v416)
                {
                  re::GeomMeshBuilder::appendMesh(&v435, v412);
                  re::computeAABB(v412, &v468);
                  re::DynamicArray<re::AABB>::add(v428, &v468);
                  v39 = v424;
                  if (v424)
                  {
                    v39 = *(v426 + 4 * v424 - 4);
                  }

                  v468.i32[0] = v39 + v416;
                  re::DynamicArray<int>::add(&v422, &v468);
                }

                v379 = 1;
                goto LABEL_44;
              }

              bzero(v473, 0x2D0uLL);
              re::DynamicArray<re::BlendNode>::setCapacity(&v473[16], 1uLL);
              ++v476;
              re::internal::GeomAttributeManager::GeomAttributeManager(v478);
              re::internal::GeomAttributeManager::addAttribute(v478, "vertexPosition", 1, 7);
              if ((*&v475[2] & 0xFFFFFFFE) != 0)
              {
                v263 = v486;
                if (v486)
                {
                  v264 = 0;
                  do
                  {
                    v265 = re::internal::GeomAttributeContainer::attributeByIndex(v485, v264);
                    re::internal::accessFaceVaryingAttributeSubmesh(v265, v266);
                    ++v264;
                  }

                  while (v263 != v264);
                }
              }

              re::DynamicArray<re::GeomCell4>::resize(&v473[16], 1uLL);
              v482 = 1;
              if (v483)
              {
                v267 = v484;
                v268 = 8 * v483;
                do
                {
                  v269 = *v267++;
                  (*(*v269 + 80))(v269, v482);
                  v268 -= 8;
                }

                while (v268);
              }

              v20 = 0x1E30A0000;
              if (*&v473[8] >= 5u && *&v475[2] && (*&v475[2] - 1) > *&v475[2])
              {
                  ;
                }
              }

              *&v473[8] = 4;
              v479 = 4;
              if (v480)
              {
                v270 = v481;
                v271 = 8 * v480;
                do
                {
                  v272 = *v270++;
                  (*(*v272 + 80))(v272, v479);
                  v271 -= 8;
                }

                while (v271);
              }

              re::GeomMeshBuilder::setFaceVertices(v473, 0, 0, 1, 2, 3);
              re::GeomMesh::GeomMesh(&v468, 0);
              re::GeomMesh::operator=(&v468, &v473[8]);
              re::GeomMesh::setName(&v468, *v473);
              re::GeomMesh::freeName(v473);
              v273 = re::GeomMesh::modifyVertexPositions(&v468);
              HasOneMaterial = v274;
              if (!v274)
              {
                goto LABEL_490;
              }

              v275.i64[0] = 0x3F0000003F000000;
              v275.i64[1] = 0x3F0000003F000000;
              v276 = vmulq_f32(vmulq_n_f32(v391, *&v381), v275);
              v277 = vmulq_f32(vmulq_lane_f32(v389, *&v381, 1), v275);
              v278 = vsubq_f32(v407, v276);
              *v273 = vsubq_f32(v278, v277);
              if (v274 == 1)
              {
                goto LABEL_491;
              }

              v279 = vaddq_f32(v276, v407);
              v273[1] = vsubq_f32(v279, v277);
              if (v274 <= 2)
              {
                goto LABEL_492;
              }

              v273[2] = vaddq_f32(v277, v279);
              if (v274 == 3)
              {
                goto LABEL_493;
              }

              v273[3] = vaddq_f32(v277, v278);
LABEL_327:
              re::GeomMesh::freeName(v473);
              re::internal::GeomAttributeManager::~GeomAttributeManager(v478);
              if (*&v473[16] && v477)
              {
                (*(**&v473[16] + 40))();
              }

              goto LABEL_21;
            }
          }

          v18 = 1.0;
        }

        else
        {
          re::GeomMesh::GeomMesh(&v468, 0);
          re::GeomMesh::operator=(v412, &v468);
          re::GeomMesh::~GeomMesh(&v468);
          v468.i64[0] = &v417;
          v468.i64[1] = re::GeomMesh::accessVertexPositions(&v417);
          LODWORD(v469) = v167;
          v168 = v420;
          if (v420)
          {
            LODWORD(HasOneMaterial) = 0;
            *(&v169 + 1) = *(&v381 + 1);
            *&v169 = 0;
            v404 = v169;
            *&v166 = 0;
            *&v169 = 0;
            v401 = v169;
            *&v169 = 0;
            v388 = v169;
            *&v169 = 0;
            v384 = v169;
            *&v169 = 0;
            v382 = v169;
            while (1)
            {
              v399 = v166;
              re::internal::FaceEvaluator::computeFaceCentroid(&v468, HasOneMaterial);
              v171.i64[0] = v170;
              v171.i64[1] = v172;
              v393 = v171;
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v468, HasOneMaterial);
              v174.i64[0] = v173;
              v174.i64[1] = v175;
              v176 = vmulq_f32(v391, v174);
              v177 = v176.f32[2] + vaddv_f32(*v176.f32);
              if (v177 >= 0.0)
              {
                v178 = 1.0;
              }

              else
              {
                v178 = v19;
              }

              v179 = vmulq_f32(vsubq_f32(v393, v407), vmulq_n_f32(v391, v178));
              if (vabds_f32(v179.f32[2] + vaddv_f32(*v179.f32), *&v381 * v17) >= v23)
              {
                if (v177 < 0.0)
                {
                  goto LABEL_161;
                }
              }

              else
              {
                if (v177 < 0.0)
                {
                  v180 = v382;
                  *&v180 = *&v382 - v177;
                  v382 = v180;
LABEL_161:
                  v181 = v401;
                  *&v181 = *&v401 - v177;
                  v401 = v181;
                  goto LABEL_164;
                }

                v182 = v382;
                *(&v182 + 1) = *(&v382 + 1) + v177;
                v382 = v182;
              }

              v183 = v401;
              *(&v183 + 1) = *(&v401 + 1) + v177;
              v401 = v183;
LABEL_164:
              re::internal::FaceEvaluator::computeFaceCentroid(&v468, HasOneMaterial);
              v185.i64[0] = v184;
              v185.i64[1] = v186;
              v394 = v185;
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v468, HasOneMaterial);
              v188.i64[0] = v187;
              v188.i64[1] = v189;
              v190 = vmulq_f32(v389, v188);
              v191 = v190.f32[2] + vaddv_f32(*v190.f32);
              if (v191 >= 0.0)
              {
                v192 = 1.0;
              }

              else
              {
                v192 = v19;
              }

              v193 = vmulq_f32(vsubq_f32(v394, v407), vmulq_n_f32(v389, v192));
              if (vabds_f32(v193.f32[2] + vaddv_f32(*v193.f32), v49 * v17) >= v23)
              {
                if (v191 < 0.0)
                {
                  goto LABEL_171;
                }
              }

              else
              {
                if (v191 < 0.0)
                {
                  v194 = v384;
                  *&v194 = *&v384 - v191;
                  v384 = v194;
LABEL_171:
                  v195 = v404;
                  *&v195 = *&v404 - v191;
                  v404 = v195;
                  goto LABEL_174;
                }

                v196 = v384;
                *(&v196 + 1) = *(&v384 + 1) + v191;
                v384 = v196;
              }

              v197 = v404;
              *(&v197 + 1) = *(&v404 + 1) + v191;
              v404 = v197;
LABEL_174:
              re::internal::FaceEvaluator::computeFaceCentroid(&v468, HasOneMaterial);
              v199.i64[0] = v198;
              v199.i64[1] = v200;
              v395 = v199;
              re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v468, HasOneMaterial);
              v202.i64[0] = v201;
              v202.i64[1] = v203;
              v204 = vmulq_f32(v390, v202);
              v205 = v204.f32[2] + vaddv_f32(*v204.f32);
              if (v205 >= 0.0)
              {
                v206 = 1.0;
              }

              else
              {
                v206 = v19;
              }

              v207 = vmulq_f32(vsubq_f32(v395, v407), vmulq_n_f32(v390, v206));
              if (vabds_f32(v207.f32[2] + vaddv_f32(*v207.f32), v380 * 0.5) >= v23)
              {
                v166 = v399;
                if (v205 >= 0.0)
                {
                  goto LABEL_183;
                }
              }

              else
              {
                v166 = v399;
                if (v205 >= 0.0)
                {
                  v209 = v388;
                  *(&v209 + 1) = *(&v388 + 1) + v205;
                  v388 = v209;
LABEL_183:
                  *(&v166 + 1) = *(&v166 + 1) + v205;
                  goto LABEL_184;
                }

                v208 = v388;
                *&v208 = *&v388 - v205;
                v388 = v208;
              }

              *&v166 = *&v166 - v205;
LABEL_184:
              HasOneMaterial = (HasOneMaterial + 1);
              if (v168 == HasOneMaterial)
              {
                v210 = v420;
                v18 = 1.0;
                v17 = 0.5;
                v211 = v381;
                v213 = v384;
                v212 = v388;
                v214 = v382;
                v215 = v401;
                goto LABEL_187;
              }
            }
          }

          v210 = 0;
          *&v404 = 0;
          *&v166 = 0;
          v215 = 0;
          v212 = 0;
          v213 = 0;
          v214 = 0;
          v211 = v381;
LABEL_187:
          v216 = v24 * (v49 * v380);
          v217 = v24 * (v211.f32[0] * v380);
          v218 = v24 * v31;
          v219 = *&v214 > v216;
          v220 = *&v212 > (v24 * v31);
          v221 = vdup_lane_s32(v211, 0);
          v221.f32[0] = v380;
          v222 = vmul_n_f32(v221, v18 - v24);
          if ((v49 * v222.f32[0]) >= (v23 * v23))
          {
            v223 = v49 * v222.f32[0];
          }

          else
          {
            v223 = v23 * v23;
          }

          v224 = *(&v214 + 1) > v216;
          if (*(&v214 + 1) <= v216)
          {
            v225 = *&v214 > v216;
          }

          else
          {
            v225 = v219 + 1;
          }

          v226 = v210 - v418;
          v227 = *(&v212 + 1) > v218;
          if (*(&v212 + 1) <= v218)
          {
            v228 = *&v212 > (v24 * v31);
          }

          else
          {
            v228 = v220 + 1;
          }

          v229 = *(&v213 + 1) > v217;
          if (*(&v213 + 1) <= v217)
          {
            v230 = v228;
          }

          else
          {
            v230 = v228 + 1;
          }

          v231 = *&v213 > v217;
          if (*&v213 > v217)
          {
            ++v230;
          }

          v232 = *&v215 > v223 && *&v214 <= v216;
          v233 = v418 + 2 * v226;
          v234 = v230 + v225;
          v235 = v232;
          v20 = 0x1E30A0000;
          if (v233 >= 2 * v234 && (v235 & 1) == 0 && (*(&v215 + 1) <= v223 || *(&v214 + 1) > v216))
          {
            *v165.i32 = v23 * v23;
            v238 = vdup_lane_s32(v165, 0);
            v239 = vmul_f32(v211, v222);
            v240 = vbsl_s8(vcgt_f32(v238, v239), v238, v239);
            if (((*&v213 <= v217) & vcgt_f32(*&v404, v240).u32[0]) == 0)
            {
              v241 = vmvn_s8(vcgt_f32(vext_s8(*&v404, *&v166, 4uLL), v240));
              if ((*(&v213 + 1) > v217) | v241.i8[0] & 1)
              {
                if ((*&v212 > v218) | v241.i8[4] & 1)
                {
                  if ((*(&v212 + 1) > v218) | vmvn_s8(vcgt_f32(*&v166, v240)).i32[1] & 1)
                  {
                    v242 = v228 + v231 + v229 + v225;
                    if (v242)
                    {
                      if (v242 != 2)
                      {
                        goto LABEL_281;
                      }

                      v243 = *(&v214 + 1) <= v216 || *&v214 <= v216;
                      v244 = !v243;
                      v245 = *(&v213 + 1) <= v217 || *&v213 <= v217;
                      v246 = !v245;
                      v247 = *(&v212 + 1) <= v218 || *&v212 <= v218;
                      v248 = !v247;
                      if (!v244 && !v246 && !v248)
                      {
                        goto LABEL_281;
                      }
                    }
                  }
                }
              }
            }
          }
        }

        goto LABEL_34;
      }

      v454 = 0;
      v101 = fabsf(v99.f32[2]);
      if (v101 >= 0.00001)
      {
        v102.i32[0] = 0;
        *&v102.i32[1] = -v99.f32[2];
        v102.i64[1] = v99.u32[1];
      }

      else
      {
        v102 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v99.f32[1]), v99);
      }

      v396 = v102;
      v371 = v49;
      v366 = v99.f32[1];
      v367 = v101;
      v365 = -v99.f32[2];
      v375 = v50;
      v103 = v24;
      if (v101 >= 0.00001)
      {
        v104.i32[0] = 0;
        *&v104.i32[1] = -v99.f32[2];
        v104.i64[1] = v99.u32[1];
      }

      else
      {
        v104 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v99.f32[1]), v99);
      }

      v385 = v104;
      v105 = vmulq_n_f32(v99, v100 * 0.5);
      v400 = vsubq_f32(v62, v105);
      v403 = v99;
      v392 = vaddq_f32(v62, v105);
      v369 = vextq_s8(vuzp1q_s32(v99, v99), v99, 0xCuLL);
      v370 = v100;
      v368 = vnegq_f32(v99);
      v106 = re::GeomMesh::accessVertexPositions(&v417);
      LODWORD(v20) = v107;
      *&v475[2] = 0;
      memset(v473, 0, sizeof(v473));
      v494[4] = 0;
      memset(v494, 0, 28);
      if (v419)
      {
        HasOneMaterial = v106;
        re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v473, v419);
        v108 = v419;
        if (v494[1] < v419)
        {
          re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v494, v419);
          v108 = v419;
        }

        if (v108)
        {
          v32 = 0;
          v109 = vmulq_f32(v396, v396);
          *&v110 = v109.f32[2] + vaddv_f32(*v109.f32);
          *v109.f32 = vrsqrte_f32(v110);
          *v109.f32 = vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32)));
          v397 = vmulq_n_f32(v396, vmul_f32(*v109.f32, vrsqrts_f32(v110, vmul_f32(*v109.f32, *v109.f32))).f32[0]);
          v111 = vmulq_f32(v385, v385);
          *&v112 = v111.f32[2] + vaddv_f32(*v111.f32);
          *v111.f32 = vrsqrte_f32(v112);
          *v111.f32 = vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32)));
          v113 = vmulq_n_f32(v385, vmul_f32(*v111.f32, vrsqrts_f32(v112, vmul_f32(*v111.f32, *v111.f32))).f32[0]);
          v114 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v113, v113), v113, 0xCuLL), v368), v113, v369);
          v115 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v116 = vmulq_f32(v114, v114);
          *&v117 = v116.f32[1] + (v116.f32[2] + v116.f32[0]);
          *v116.f32 = vrsqrte_f32(v117);
          *v116.f32 = vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32)));
          v386 = vmulq_n_f32(v115, vmul_f32(*v116.f32, vrsqrts_f32(v117, vmul_f32(*v116.f32, *v116.f32))).f32[0]);
          v118 = v370 * 0.1;
          v20 = v20;
          while (1)
          {
            if (v20 == v32)
            {
              goto LABEL_463;
            }

            v119 = *(HasOneMaterial + 16 * v32);
            v120 = vsubq_f32(v119, v400);
            v121 = vmulq_f32(v403, v120);
            v122 = fabsf(v121.f32[2] + vaddv_f32(*v121.f32));
            if (v122 <= v118)
            {
              break;
            }

            v123 = vsubq_f32(v119, v392);
            v124 = vmulq_f32(v403, v123);
            v125 = fabsf(v124.f32[2] + vaddv_f32(*v124.f32));
            if (v125 <= v118)
            {
              v126 = vsubq_f32(v123, vmulq_n_f32(v403, v125));
              v127 = vmulq_f32(v397, v126);
              v128 = vmulq_f32(v386, v126);
              *v468.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v127, v127, 8uLL), *&vextq_s8(v128, v128, 8uLL)), vadd_f32(vzip1_s32(*v127.i8, *v128.i8), vzip2_s32(*v127.i8, *v128.i8)));
              v129 = v494;
LABEL_116:
              re::DynamicArray<unsigned long>::add(v129, &v468);
            }

            if (++v32 >= v419)
            {
              goto LABEL_118;
            }
          }

          v130 = vsubq_f32(v120, vmulq_n_f32(v403, v122));
          v131 = vmulq_f32(v397, v130);
          v132 = vmulq_f32(v386, v130);
          *v468.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v131, v131, 8uLL), *&vextq_s8(v132, v132, 8uLL)), vadd_f32(vzip1_s32(*v131.i8, *v132.i8), vzip2_s32(*v131.i8, *v132.i8)));
          v129 = v473;
          goto LABEL_116;
        }
      }

LABEL_118:
      {
        v20 = "uler18ScheduleDescriptorEmE3$_1FvfEJEEE";
        if (v494[0] && v494[4])
        {
          (*(*v494[0] + 40))(v494[0]);
        }

        if (*v473 && *&v475[2])
        {
          (*(**v473 + 40))();
        }

        v378 = v103;
        v383 = *(&v454 + 1);
        v387 = *&v454;
        v455 = &v417;
        v456 = re::GeomMesh::accessVertexPositions(&v417);
        v457 = v133;
        if (!v420)
        {
          v135 = 0.0;
          v136 = 0.0;
          v18 = 1.0;
          v162 = v383;
          v163 = v387;
          v164 = v370;
LABEL_283:
          v280 = v162 * (v162 * 1.5708);
          v281 = v163 * (v163 * 1.5708);
          v283 = v136 <= v281 && v135 <= v280 && v164 < v375;
          v48 = v380;
          v49 = v371;
          if (!v283)
          {
            v284 = v280;
            v285 = v135 > v280;
            v286 = v163 * (v163 * 1.5708);
            v287 = v136 > v281;
            bzero(v473, 0x2D0uLL);
            re::DynamicArray<re::BlendNode>::setCapacity(&v473[16], 1uLL);
            ++v476;
            re::internal::GeomAttributeManager::GeomAttributeManager(v478);
            re::internal::GeomAttributeManager::addAttribute(v478, "vertexPosition", 1, 7);
            if (*&v473[8] >= 0xDu && *&v475[2] && (*&v475[2] - 1) > *&v475[2])
            {
                ;
              }
            }

            v408 = v285;
            *&v473[8] = 12;
            v479 = 12;
            if (v480)
            {
              v289 = v481;
              v290 = 8 * v480;
              do
              {
                v291 = *v289++;
                (*(*v291 + 80))(v291, v479);
                v290 -= 8;
              }

              while (v290);
            }

            v409 = (2 * (v287 + v408) + 6);
            if (*&v475[2] > v409)
            {
              v292 = v486;
              if (v486)
              {
                v293 = 0;
                do
                {
                  v294 = re::internal::GeomAttributeContainer::attributeByIndex(v485, v293);
                  re::internal::accessFaceVaryingAttributeSubmesh(v294, v295);
                  ++v293;
                }

                while (v292 != v293);
              }
            }

            re::DynamicArray<re::GeomCell4>::resize(&v473[16], v409);
            v482 = v409;
            if (v483)
            {
              v296 = v484;
              v297 = 8 * v483;
              do
              {
                v298 = *v296++;
                (*(*v298 + 80))(v298, v482);
                v297 -= 8;
              }

              while (v297);
            }

            if (v136 <= v286)
            {
              v299 = 0;
            }

            else
            {
              v299 = 2;
              re::GeomMeshBuilder::setFaceVertices(v473, 0, 0, 3, 2, 1);
              re::GeomMeshBuilder::setFaceVertices(v473, 1u, 0, 5, 4, 3);
            }

            v20 = 0x1E30A0000;
            v17 = 0.5;
            if (v135 > v284)
            {
              re::GeomMeshBuilder::setFaceVertices(v473, v299, 6, 7, 8, 9);
              re::GeomMeshBuilder::setFaceVertices(v473, v299 | 1, 6, 9, 10, 11);
              v299 += 2;
            }

            re::GeomMeshBuilder::setFaceVertices(v473, v299, 0, 1, 7, 6);
            re::GeomMeshBuilder::setFaceVertices(v473, v299 + 1, 1, 2, 8, 7);
            re::GeomMeshBuilder::setFaceVertices(v473, v299 + 2, 2, 3, 9, 8);
            re::GeomMeshBuilder::setFaceVertices(v473, v299 + 3, 3, 4, 10, 9);
            re::GeomMeshBuilder::setFaceVertices(v473, v299 + 4, 4, 5, 11, 10);
            re::GeomMeshBuilder::setFaceVertices(v473, v299 + 5, 0, 6, 11, 5);
            re::GeomMesh::GeomMesh(&v468, 0);
            re::GeomMesh::operator=(&v468, &v473[8]);
            re::GeomMesh::setName(&v468, *v473);
            re::GeomMesh::freeName(v473);
            if (v367 >= 0.00001)
            {
              v300.i32[0] = 0;
              v300.f32[1] = v365;
              v300.i64[1] = v403.u32[1];
              v410 = v300;
            }

            else
            {
              v410 = vtrn1q_s32(COERCE_UNSIGNED_INT(-v366), v403);
            }

            v301 = re::GeomMesh::modifyVertexPositions(&v468);
            HasOneMaterial = v302;
            if (!v302)
            {
LABEL_494:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 0;
              v492 = 2048;
              v493 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_495;
            }

            v303 = vmulq_f32(v410, v410);
            *&v304 = v303.f32[2] + vaddv_f32(*v303.f32);
            *v303.f32 = vrsqrte_f32(v304);
            *v303.f32 = vmul_f32(*v303.f32, vrsqrts_f32(v304, vmul_f32(*v303.f32, *v303.f32)));
            v305 = vmulq_n_f32(v410, vmul_f32(*v303.f32, vrsqrts_f32(v304, vmul_f32(*v303.f32, *v303.f32))).f32[0]);
            v306 = vmulq_n_f32(v305, v387);
            *v301 = v306;
            if (v302 == 1)
            {
LABEL_495:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 1;
              v492 = 2048;
              v493 = 1;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_496;
            }

            v307 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v305, v305), v305, 0xCuLL), v368), v305, v369);
            v308 = vextq_s8(vuzp1q_s32(v307, v307), v307, 0xCuLL);
            v309 = vmulq_n_f32(v308, (v387 * 1.7321) * 0.5);
            v310 = vaddq_f32(vmulq_n_f32(v305, v387 * 0.5), v309);
            *(v301 + 16) = v310;
            if (v302 <= 2)
            {
LABEL_496:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 2;
              v492 = 2048;
              v493 = HasOneMaterial & 3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_497;
            }

            v311 = vaddq_f32(vmulq_n_f32(v305, -(v387 * 0.5)), v309);
            *(v301 + 32) = v311;
            if (v302 == 3)
            {
LABEL_497:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 3;
              v492 = 2048;
              v493 = 3;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_498;
            }

            *(v301 + 48) = vnegq_f32(v306);
            if (v302 <= 4)
            {
LABEL_498:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 4;
              v492 = 2048;
              v493 = HasOneMaterial & 7;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_499;
            }

            *(v301 + 64) = vnegq_f32(v310);
            if (v302 == 5)
            {
LABEL_499:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 5;
              v492 = 2048;
              v493 = 5;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_500;
            }

            *(v301 + 80) = vnegq_f32(v311);
            if (v302 <= 6)
            {
LABEL_500:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 6;
              v492 = 2048;
              v493 = HasOneMaterial & 7;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_501;
            }

            v312 = vmulq_n_f32(v305, v383);
            *(v301 + 96) = v312;
            if (v302 == 7)
            {
LABEL_501:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 7;
              v492 = 2048;
              v493 = 7;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_502;
            }

            v313 = vmulq_n_f32(v308, (v383 * 1.7321) * 0.5);
            v314 = vaddq_f32(vmulq_n_f32(v305, v383 * 0.5), v313);
            *(v301 + 112) = v314;
            if (v302 <= 8)
            {
LABEL_502:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 8;
              v492 = 2048;
              v493 = HasOneMaterial & 0xF;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_503;
            }

            v315 = vaddq_f32(vmulq_n_f32(v305, -(v383 * 0.5)), v313);
            *(v301 + 128) = v315;
            if (v302 == 9)
            {
LABEL_503:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 9;
              v492 = 2048;
              v493 = 9;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_504;
            }

            *(v301 + 144) = vnegq_f32(v312);
            if (v302 <= 0xA)
            {
LABEL_504:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 10;
              v492 = 2048;
              v493 = HasOneMaterial & 0xF;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_505:
              v458 = 0;
              v495 = 0u;
              v496 = 0u;
              memset(v494, 0, sizeof(v494));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v487 = 136315906;
              *&v487[4] = "operator[]";
              v488 = 1024;
              v489 = 621;
              v490 = 2048;
              v491 = 11;
              v492 = 2048;
              v493 = 11;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *(v301 + 160) = vnegq_f32(v314);
            if (v302 == 11)
            {
              goto LABEL_505;
            }

            *(v301 + 176) = vnegq_f32(v315);
            v32 = -6;
            while (1)
            {
              *v301 = vaddq_f32(v400, *v301);
              if ((v302 - 6) + v32 == -6)
              {
                goto LABEL_472;
              }

              *(v301 + 96) = vaddq_f32(v392, *(v301 + 96));
              --v32;
              v301 += 16;
              if (v32 == -12)
              {
                goto LABEL_327;
              }
            }
          }

          v17 = 0.5;
          LODWORD(v30) = v381;
          v24 = v378;
          goto LABEL_150;
        }

        LODWORD(HasOneMaterial) = 0;
        v377 = vmulq_n_f32(v403, v370);
        v134 = vmulq_f32(v377, v377);
        v376 = v134.f32[2] + vaddv_f32(*v134.f32);
        v135 = 0.0;
        v136 = 0.0;
        v137 = 0.0;
        v138 = 0.0;
        do
        {
          re::internal::FaceEvaluator::computeFaceAreaWeightedNormal(&v455, HasOneMaterial);
          v140.i64[0] = v139;
          v140.i64[1] = v141;
          v398 = v140;
          re::internal::FaceEvaluator::computeFaceCentroid(&v455, HasOneMaterial);
          v144.i64[0] = v142;
          v144.i64[1] = v143;
          v145 = vmulq_f32(v403, v398);
          v146 = v145.f32[2] + vaddv_f32(*v145.f32);
          v147 = vmulq_f32(v403, vsubq_f32(v144, v407));
          v148 = v147.f32[2] + vaddv_f32(*v147.f32);
          v149 = -v146;
          if (v146 >= 0.0)
          {
            v149 = 0.0;
          }

          v150 = v136 + v149;
          if (v148 >= -(v370 * 0.45))
          {
            v150 = v136;
          }

          v151 = v135 + fmaxf(v146, 0.0);
          v152 = vmulq_f32(v398, v398);
          v153 = v148 <= (v370 * 0.45);
          v154 = sqrtf(v152.f32[2] + vaddv_f32(*v152.f32));
          v155 = vmulq_f32(v377, vsubq_f32(v144, v400));
          v156 = vaddv_f32(*v155.f32);
          if (v153)
          {
            v136 = v150;
          }

          v157 = (v155.f32[2] + v156) / v376;
          v158 = vsubq_f32(v144, vaddq_f32(v400, vmulq_n_f32(v377, v157)));
          v159 = vmulq_f32(v158, v158);
          v160 = ((v383 * v157) + ((1.0 - v157) * v387)) * 1.1;
          v161 = sqrtf(v159.f32[2] + vaddv_f32(*v159.f32));
          if (!v153)
          {
            v135 = v151;
          }

          if (v161 <= v160)
          {
            v137 = v137 + v154;
          }

          v138 = v138 + v154;
          HasOneMaterial = (HasOneMaterial + 1);
        }

        while (HasOneMaterial < v420);
        v51 = v137 < (v138 * 0.5);
        v18 = 1.0;
        v162 = v383;
        v163 = v387;
        v164 = v370;
        if (!v51)
        {
          goto LABEL_283;
        }

        v17 = 0.5;
        LODWORD(v30) = v381;
        v24 = v378;
      }

      else
      {
        v20 = 0x1E30A0000;
        v24 = v103;
        if (v494[0] && v494[4])
        {
          (*(*v494[0] + 40))(v494[0]);
        }

        v18 = 1.0;
        if (*v473 && *&v475[2])
        {
          (*(**v473 + 40))();
        }

        LODWORD(v30) = v381;
      }

      v48 = v380;
      v49 = v371;
      goto LABEL_150;
    }

LABEL_34:
    *&v475[2] = 0;
    memset(v473, 0, sizeof(v473));
    re::internal::ExtractMeshConnectedComponents::facesInComponent(v441, v16, v473);
    v40 = *&v475[2];
    if (*&v473[16])
    {
      v41 = v449;
      v42 = 4 * *&v473[16];
      v43 = *&v475[2];
      while (1)
      {
        v44 = *v43;
        HasOneMaterial = v44 >> 6;
        if (v41 <= v44 >> 6)
        {
          break;
        }

        if (v450)
        {
          v45 = &v451;
        }

        else
        {
          v45 = v452;
        }

        v45[HasOneMaterial] |= 1 << v44;
        ++v43;
        v42 -= 4;
        if (!v42)
        {
          goto LABEL_41;
        }
      }

      v459.i64[0] = 0;
      v471 = 0u;
      v472 = 0u;
      v469 = 0u;
      v470 = 0u;
      v468 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      LODWORD(v494[0]) = 136315906;
      *(v494 + 4) = "operator[]";
      WORD2(v494[1]) = 1024;
      *(&v494[1] + 6) = 858;
      WORD1(v494[2]) = 2048;
      *(&v494[2] + 4) = HasOneMaterial;
      WORD2(v494[3]) = 2048;
      *(&v494[3] + 6) = v41;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_343;
    }

LABEL_41:
    if (*v473 && v40)
    {
      (*(**v473 + 40))();
    }

LABEL_44:
    re::GeomMesh::~GeomMesh(v412);
    re::GeomMesh::~GeomMesh(&v417);
    v16 = (v16 + 1);
  }

  while (v16 != v14);
  if ((v379 & 1) == 0)
  {
LABEL_341:
    re::GeomMesh::GeomMesh(&v468, 0);
    re::GeomMesh::operator=(v372, &v468);
    re::GeomMesh::~GeomMesh(&v468);
    *v373 = 0;
    *(v373 + 8) = 0;
    bzero((v373 + 16), 0x2C8uLL);
    re::internal::GeomBaseMesh::GeomBaseMesh((v373 + 16));
    *(v373 + 728) = 0;
    re::GeomMesh::copy(v6, v373);
    goto LABEL_430;
  }

  re::GeomMesh::GeomMesh(&v417, 0);
  re::GeomMesh::operator=(&v417, &v436);
  re::GeomMesh::setName(&v417, v435);
  re::GeomMesh::freeName(&v435);
  v16 = *(v2 + 16);
  *&v470 = 0;
  *&v469 = 0;
  v468 = 0uLL;
  DWORD2(v469) = 0;
  v316 = v452;
  if (v450)
  {
    v316 = &v451;
  }

  v317 = v449;
  if ((v449 & 0x3FFFFFFFFFFFFFFLL) == 0)
  {
    goto LABEL_348;
  }

  v318 = 0;
  while (1)
  {
    v320 = *v316++;
    v319 = v320;
    if (v320)
    {
      break;
    }

    v318 -= 64;
    if (!--v317)
    {
      goto LABEL_348;
    }
  }

LABEL_343:
  v321 = __clz(__rbit64(v319));
  v322 = v321 - v318;
  if (v321 + 1 == v318 || v322 >= *(v6 + 40))
  {
LABEL_348:
    v324 = 0;
    v325 = 0;
    v20 = v373;
    goto LABEL_349;
  }

  v20 = v373;
  do
  {
    LODWORD(v412[0]) = v322;
    re::DynamicArray<int>::add(&v468, v412);
    FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v448, v322 + 1);
    v322 = FirstBitSet;
  }

  while (FirstBitSet != -1 && FirstBitSet < *(v6 + 40));
  v325 = v470;
  v324 = v469;
LABEL_349:
  v326 = re::internal::extractMeshFromFaceSubset(v6, v325, v324, v16, v20);
  if (v468.i64[0] && v470)
  {
    (*(*v468.i64[0] + 40))(v326);
  }

  re::GeomMesh::GeomMesh(v412, 0);
  v427 = 0;
  v6 = v429;
  if (v429)
  {
    *&v475[2] = 0;
    memset(v473, 0, sizeof(v473));
    v494[4] = 0;
    memset(v494, 0, 28);
    re::DynamicArray<re::Vector3<float>>::resize(v473, v429);
    re::DynamicArray<float>::resize(v494, v6);
    v327 = 0;
    v32 = 0;
    v328.i64[0] = 0x3F0000003F000000;
    v328.i64[1] = 0x3F0000003F000000;
    do
    {
      v8 = v429;
      if (v429 <= v32)
      {
        goto LABEL_464;
      }

      v8 = *&v473[16];
      if (*&v473[16] <= v32)
      {
        goto LABEL_465;
      }

      v329 = *(v431 + v327);
      v330 = *(v431 + v327 + 16);
      v331 = vcgtq_f32(v329, v330);
      v331.i32[3] = v331.i32[2];
      v332 = vmaxvq_u32(v331);
      v333 = vmulq_f32(vaddq_f32(v329, v330), v328);
      v334 = v333.i64[1];
      if (v332 >= 0)
      {
        v335 = v333.i64[0];
      }

      else
      {
        v335 = 0;
      }

      if (v332 < 0)
      {
        v334 = 0;
      }

      v336 = (*&v475[2] + 16 * v32);
      *v336 = v335;
      v336[1] = v334;
      v8 = v494[2];
      if (v494[2] <= v32)
      {
        goto LABEL_466;
      }

      v337 = v494[4];
      *(v494[4] + 4 * v32) = v32;
      ++v32;
      v327 += 32;
    }

    while (v6 != v32);
    v338 = (2 * v6 - 1);
    v339 = *(&v432 + 1);
    if (*(&v432 + 1) >= v338)
    {
      if (*(&v432 + 1) <= v338)
      {
LABEL_375:
        if (v494[0] && v494[4])
        {
          (*(*v494[0] + 40))(v494[0], v494[4]);
        }

        if (*v473 && *&v475[2])
        {
          (*(**v473 + 40))(*v473, *&v475[2]);
        }

        LODWORD(v6) = v429;
        goto LABEL_382;
      }
    }

    else
    {
      if (v432 < v338)
      {
        v339 = *(&v432 + 1);
      }

      if (v338 > v339 && (v338 - v339) >= 1)
      {
        v340 = &v434[3 * v339];
        v341 = (2 * v6 - 2) - v339 + 2;
        v342.i64[0] = 0x7F0000007FLL;
        v342.i64[1] = 0x7F0000007FLL;
        v343 = vnegq_f32(v342);
        do
        {
          v340->i64[0] = 0;
          v340->i64[1] = 0;
          v340[1] = v343;
          v340[2] = v342;
          v340 += 3;
          --v341;
        }

        while (v341 > 1);
      }
    }

    *(&v432 + 1) = (2 * v6 - 1);
    ++v433;
    if (!v494[2])
    {
LABEL_489:
      v464.i64[0] = 0;
      v471 = 0u;
      v472 = 0u;
      v469 = 0u;
      v470 = 0u;
      v468 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v459.i32[0] = 136315906;
      *(v7[11].i64 + 4) = "operator[]";
      v459.i16[6] = 1024;
      *(&v7[11].i32[3] + 2) = 789;
      v460.i16[1] = 2048;
      *(v7[12].i64 + 4) = 0;
      v460.i16[6] = 2048;
      *(&v7[12].i64[1] + 6) = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_490:
      v458 = 0;
      v495 = 0u;
      v496 = 0u;
      memset(v494, 0, sizeof(v494));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v487 = 136315906;
      *&v487[4] = "operator[]";
      v488 = 1024;
      v489 = 621;
      v490 = 2048;
      v491 = 0;
      v492 = 2048;
      v493 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_491:
      v458 = 0;
      v495 = 0u;
      v496 = 0u;
      memset(v494, 0, sizeof(v494));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v487 = 136315906;
      *&v487[4] = "operator[]";
      v488 = 1024;
      v489 = 621;
      v490 = 2048;
      v491 = 1;
      v492 = 2048;
      v493 = 1;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_492:
      v458 = 0;
      v495 = 0u;
      v496 = 0u;
      memset(v494, 0, sizeof(v494));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v487 = 136315906;
      *&v487[4] = "operator[]";
      v488 = 1024;
      v489 = 621;
      v490 = 2048;
      v491 = 2;
      v492 = 2048;
      v493 = HasOneMaterial & 3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_493:
      v458 = 0;
      v495 = 0u;
      v496 = 0u;
      memset(v494, 0, sizeof(v494));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v487 = 136315906;
      *&v487[4] = "operator[]";
      v488 = 1024;
      v489 = 621;
      v490 = 2048;
      v491 = 3;
      v492 = 2048;
      v493 = 3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_494;
    }

    v337 = v494[4];
    goto LABEL_375;
  }

  *(&v432 + 1) = 0;
  ++v433;
LABEL_382:
  v32 = v426;
  v344 = v424;
  *&v475[2] = 0;
  memset(v473, 0, 24);
  *&v473[24] = 1;
  v345 = v6;
  v468.i8[0] = 0;
  re::DynamicArray<BOOL>::resize(v473, v6, &v468);
  if (v6)
  {
    v6 = 0;
    v347 = 16;
    v406 = vdupq_n_s32(0x358637BDu);
    v411 = vdupq_n_s32(0xB58637BD);
    while (1)
    {
      HasOneMaterial = *&v473[16];
      if (*&v473[16] <= v6)
      {
        break;
      }

      if ((*(*&v475[2] + v6) & 1) == 0)
      {
        HasOneMaterial = v429;
        if (v429 <= v6)
        {
          goto LABEL_469;
        }

        v348 = vaddq_f32(*(v431 + v347), v406);
        v459 = vaddq_f32(*(v431 + v347 - 16), v411);
        v460 = v348;
        if (!*(&v432 + 1))
        {
          goto LABEL_470;
        }
      }

      ++v6;
      v347 += 32;
      if (v345 == v6)
      {
        goto LABEL_390;
      }
    }

LABEL_467:
    v459.i64[0] = 0;
    v471 = 0u;
    v472 = 0u;
    v469 = 0u;
    v470 = 0u;
    v468 = 0u;
    v344 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v494[0]) = 136315906;
    *(v494 + 4) = "operator[]";
    WORD2(v494[1]) = 1024;
    *(&v494[1] + 6) = 789;
    WORD1(v494[2]) = 2048;
    *(&v494[2] + 4) = v6;
    WORD2(v494[3]) = 2048;
    *(&v494[3] + 6) = HasOneMaterial;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_468:
    re::internal::assertLog(6, v346, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v351, v344);
    _os_crash();
    __break(1u);
LABEL_469:
    v459.i64[0] = 0;
    v471 = 0u;
    v472 = 0u;
    v469 = 0u;
    v470 = 0u;
    v468 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v494[0]) = 136315906;
    *(v494 + 4) = "operator[]";
    WORD2(v494[1]) = 1024;
    *(&v494[1] + 6) = 797;
    WORD1(v494[2]) = 2048;
    *(&v494[2] + 4) = v6;
    WORD2(v494[3]) = 2048;
    *(&v494[3] + 6) = HasOneMaterial;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_470:
    v464.i64[0] = 0;
    v471 = 0u;
    v472 = 0u;
    v469 = 0u;
    v470 = 0u;
    v468 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v494[0]) = 136315906;
    *(v494 + 4) = "operator[]";
    WORD2(v494[1]) = 1024;
    *(&v494[1] + 6) = 797;
    WORD1(v494[2]) = 2048;
    *(&v494[2] + 4) = 0;
    WORD2(v494[3]) = 2048;
    *(&v494[3] + 6) = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_471:
    *v487 = 0;
    v7[7] = 0u;
    v7[8] = 0u;
    v7[5] = 0u;
    v7[6] = 0u;
    v7[4] = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v464.i32[0] = 136315906;
    *(v7->i64 + 4) = "operator[]";
    v464.i16[6] = 1024;
    *(&v7->i32[3] + 2) = 797;
    v465.i16[1] = 2048;
    *(v7[1].i64 + 4) = v6;
    v465.i16[6] = 2048;
    *(&v7[1].i64[1] + 6) = HasOneMaterial;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_472:
    v458 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = -v32;
    v492 = 2048;
    v493 = HasOneMaterial;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_473:
    v363 = (v66 - 1);
    v494[0] = 0;
    v471 = 0u;
    v472 = 0u;
    if (v363 >= v32)
    {
      v364 = v32;
    }

    else
    {
      v364 = v363;
    }

    v469 = 0uLL;
    v470 = 0uLL;
    v468 = 0uLL;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v473 = 136315906;
    *&v473[4] = "operator[]";
    *&v473[12] = 1024;
    *&v473[14] = 613;
    *&v473[18] = 2048;
    *&v473[20] = v364;
    v474 = 2048;
    *v475 = v32;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_477:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 0;
    v492 = 2048;
    v493 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_478:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 1;
    v492 = 2048;
    v493 = 1;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_479:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 2;
    v492 = 2048;
    v493 = HasOneMaterial & 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_480:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 3;
    v492 = 2048;
    v493 = 3;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_481:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 4;
    v492 = 2048;
    v493 = HasOneMaterial & 7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_482:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 5;
    v492 = 2048;
    v493 = 5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_483:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 6;
    v492 = 2048;
    v493 = HasOneMaterial & 7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_484:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 7;
    v492 = 2048;
    v493 = 7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_485:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 8;
    v492 = 2048;
    v493 = HasOneMaterial & 0xF;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_486:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 9;
    v492 = 2048;
    v493 = 9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_487:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 10;
    v492 = 2048;
    v493 = HasOneMaterial & 0xF;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_488:
    v455 = 0;
    v495 = 0u;
    v496 = 0u;
    memset(v494, 0, sizeof(v494));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v487 = 136315906;
    *&v487[4] = "operator[]";
    v488 = 1024;
    v489 = 621;
    v490 = 2048;
    v491 = 11;
    v492 = 2048;
    v493 = 11;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_489;
  }

LABEL_390:
  v494[4] = 0;
  memset(v494, 0, 28);
  v461.i64[0] = 0;
  v460.i64[0] = 0;
  v459 = 0uLL;
  v460.i32[2] = 0;
  v349 = *&v473[16];
  if (!*&v473[16])
  {
    goto LABEL_412;
  }

  v6 = 0;
  v350 = 0;
  v8 = &v468;
  v7 = &v464;
  do
  {
    if (*(*&v475[2] + v6))
    {
      goto LABEL_393;
    }

    HasOneMaterial = v429;
    if (v429 <= v6)
    {
      goto LABEL_471;
    }

    v353 = *(v2 + 4);
    v354 = vsubq_f32(*(v431 + 32 * v6 + 16), *(v431 + 32 * v6));
    v354.i32[3] = 0;
    v468 = vmaxnmq_f32(v354, 0);
    v355 = vmulq_f32(v468, v468);
    if ((v355.f32[2] + vaddv_f32(*v355.f32)) < (v353 * v353))
    {
      goto LABEL_403;
    }

    v356 = 0;
    v357 = 0;
    do
    {
      if (v468.f32[v356] < v353)
      {
        ++v357;
      }

      ++v356;
    }

    while (v356 != 3);
    if (v357 <= 1u)
    {
LABEL_393:
      v6 = v494;
      if (!v350)
      {
        goto LABEL_404;
      }
    }

    else
    {
LABEL_403:
      v6 = &v459;
      if (!v350)
      {
LABEL_404:
        v352 = 0;
        goto LABEL_405;
      }
    }

    v351 = v350 - 1;
    if (v344 <= v351)
    {
      goto LABEL_468;
    }

    v352 = *(v32 + 4 * v351);
LABEL_405:
    HasOneMaterial = v350;
    v468.i32[0] = v352;
    if (v344 <= v350)
    {
      re::internal::assertLog(6, v346, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v350, v344);
      _os_crash();
      __break(1u);
      goto LABEL_462;
    }

    if (v352 < *(v32 + 4 * v350))
    {
      do
      {
        re::DynamicArray<int>::add(v6, &v468);
        ++v468.i32[0];
      }

      while (v468.i32[0] < *(v32 + 4 * v350));
      v349 = *&v473[16];
    }

    v6 = ++v350;
  }

  while (v349 > v350);
  if (v494[2])
  {
    re::internal::extractMeshFromFaceSubset(&v417, v494[4], v494[2], *(v2 + 16), &v468);
    goto LABEL_413;
  }

LABEL_412:
  re::GeomMesh::GeomMesh(&v468, 0);
LABEL_413:
  re::GeomMesh::operator=(v372, &v468);
  re::GeomMesh::~GeomMesh(&v468);
  if (v460.i64[0])
  {
    re::internal::extractMeshFromFaceSubset(&v417, v461.i64[0], v460.i64[0], *(v2 + 16), &v468);
  }

  else
  {
    re::GeomMesh::GeomMesh(&v468, 0);
  }

  re::GeomMesh::operator=(v412, &v468);
  re::GeomMesh::~GeomMesh(&v468);
  if (v459.i64[0] && v461.i64[0])
  {
    (*(*v459.i64[0] + 40))(v459.i64[0], v461.i64[0]);
  }

  if (v494[0] && v494[4])
  {
    (*(*v494[0] + 40))(v494[0], v494[4]);
  }

  if (*v473 && *&v475[2])
  {
    (*(**v473 + 40))(*v473, *&v475[2]);
  }

  if (v416)
  {
    bzero(&v468, 0x2D0uLL);
    re::DynamicArray<re::BlendNode>::setCapacity(&v469, 1uLL);
    ++DWORD2(v470);
    re::internal::GeomAttributeManager::GeomAttributeManager((&v471 + 8));
    re::internal::GeomAttributeManager::addAttribute((&v471 + 8), "vertexPosition", 1, 7);
    re::GeomMeshBuilder::appendMesh(&v468, v20);
    re::GeomMeshBuilder::appendMesh(&v468, v412);
    v359 = re::GeomMesh::operator=(v20, &v468.i32[2]);
    re::GeomMesh::setName(v359, v468.i64[0]);
    re::GeomMesh::freeName(&v468);
    re::GeomMesh::freeName(&v468);
    re::internal::GeomAttributeManager::~GeomAttributeManager((&v471 + 8));
    if (v469)
    {
      if (v471)
      {
        (*(*v469 + 40))(v469, v471);
      }
    }
  }

  re::GeomMesh::~GeomMesh(v412);
  re::GeomMesh::~GeomMesh(&v417);
LABEL_430:
  if (v422)
  {
    if (v426)
    {
      (*(*v422 + 40))(v422, v426);
    }

    v426 = 0;
  }

  if (*(&v431 + 1))
  {
    if (v434)
    {
      (*(**(&v431 + 1) + 40))(*(&v431 + 1), v434);
    }

    v434 = 0;
    v432 = 0uLL;
    *(&v431 + 1) = 0;
    ++v433;
  }

  if (v428[0] && v431)
  {
    (*(*v428[0] + 40))(v428[0], v431);
  }

  re::GeomMesh::freeName(&v435);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v440);
  if (v437 && v439)
  {
    (*(*v437 + 40))(v437, v439);
  }

  if (*(&v444 + 1))
  {
    if (v447)
    {
      (*(**(&v444 + 1) + 40))(*(&v444 + 1), v447);
    }

    v447 = 0;
    v445 = 0uLL;
    *(&v444 + 1) = 0;
    ++v446;
  }

  if (v441[0] && v444)
  {
    (*(*v441[0] + 40))(v441[0], v444);
  }

  result = v448;
  if (v448)
  {
    if ((v450 & 1) == 0)
    {
      return (*(*v448 + 40))(v448, v452);
    }
  }

  return result;
}

uint64_t re::anonymous namespace::simplifyMeshWithCylinder(re::GeomMesh const&,re::anonymous namespace::OrientedBox const&,float,re::GeomMesh&)::$_0::operator()(uint64_t a1, unint64_t a2, float *a3)
{
  *v24 = 0;
  v21[1] = 0;
  v22 = 0;
  v21[0] = 0;
  v23 = 0;
  re::computeConvexHull2d(a1, a2, v21);
  v6 = v22;
  v7 = *v24;
  v8 = 0.0;
  if (v22)
  {
    v9 = *v24;
    v10 = v22;
    while (1)
    {
      v12 = *v9++;
      v11 = v12;
      if (a2 <= v12)
      {
        break;
      }

      *&v8 = *&v8 + sqrtf(vaddv_f32(vmul_f32(*(a1 + 8 * v11), *(a1 + 8 * v11))));
      if (!--v10)
      {
        goto LABEL_5;
      }
    }

    re::internal::assertLog(6, *v24, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v11, a2);
    _os_crash();
    __break(1u);
LABEL_19:
    re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v15, a2);
    _os_crash();
    __break(1u);
LABEL_20:
    re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v16, a2);
    result = _os_crash();
    __break(1u);
  }

  else
  {
LABEL_5:
    v13 = 0;
    v14 = *&v8 / v22;
    *a3 = v14;
    while (v6 != v13)
    {
      v15 = *(v7 + 4 * v13);
      if (a2 <= v15)
      {
        goto LABEL_19;
      }

      v16 = *(v7 + 4 * (++v13 % v6));
      if (a2 <= v16)
      {
        goto LABEL_20;
      }

      v17 = vmul_f32(vadd_f32(*(a1 + 8 * v15), *(a1 + 8 * v16)), 0x3F0000003F000000);
      if ((vabds_f32(sqrtf(vaddv_f32(vmul_f32(v17, v17))), v14) / v14) > 0.1)
      {
        v18 = v13 - 1;
        goto LABEL_12;
      }
    }

    v18 = v6;
LABEL_12:
    if (v21[0])
    {
      v19 = v7 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19)
    {
      (*(*v21[0] + 40))();
    }

    return v6 <= v18;
  }

  return result;
}

uint64_t re::GeomMeshBuilder::setFaceVertices(uint64_t this, unsigned int a2, int a3, int a4, int a5, int a6)
{
  v6 = a2;
  v7 = *(this + 32);
  if (v7 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v12 = this;
  v13 = (*(this + 48) + 16 * a2);
  v14 = *v13;
  v15 = v13[3];
  if (v14 != -1 && v15 != -1)
  {
    v17 = *(this + 416);
    if (v17)
    {
      for (i = 0; i != v17; ++i)
      {
        v19 = re::internal::GeomAttributeContainer::attributeByIndex((v12 + 49), i);
        this = re::internal::accessFaceVaryingAttributeSubmesh(v19, v20);
      }

      v7 = v12[4];
    }
  }

  if (v7 <= v6)
  {
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v21 = (v12[6] + 16 * v6);
  *v21 = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  return this;
}

uint64_t re::anonymous namespace::buildBoxProxy(re::GeomMesh *a1, float32x4_t *a2, char a3, char a4, char a5, char a6, char a7, char a8)
{
  v108 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v10 = vmulq_n_f32(a2[2], a2->f32[0] * 0.5);
  v11 = vmulq_n_f32(a2[3], a2->f32[1] * 0.5);
  v12 = vmulq_n_f32(a2[4], a2->f32[2] * 0.5);
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  if (a3)
  {
    v13 = 0;
    v14 = vsubq_f32(v9, v10);
    v15 = vsubq_f32(v14, v11);
    v87 = vsubq_f32(v15, v12);
    v88 = vaddq_f32(v15, v12);
    v16 = vaddq_f32(v14, v11);
    v89 = vaddq_f32(v16, v12);
    v90 = vsubq_f32(v16, v12);
    v17 = 4;
    v86[0] = xmmword_1E3062D20;
    v18 = 3;
    v19 = 2;
    v20 = 1;
    v21 = 1;
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = 0;
    v21 = 0;
    v20 = -1;
    v19 = -1;
    v18 = -1;
    v13 = -1;
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v22 = -1;
      v23 = -1;
      v24 = -1;
      v25 = -1;
      if ((a5 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_7;
    }
  }

  v26 = vaddq_f32(v10, v9);
  v27 = vsubq_f32(v26, v11);
  *(&v87 + v17) = vsubq_f32(v27, v12);
  v24 = v17 | 1;
  v28 = &v86[v21];
  v29 = vaddq_f32(v26, v11);
  *(&v87 + (v17 | 1)) = vsubq_f32(v29, v12);
  v23 = v17 | 2;
  *v28 = v17;
  v28[1] = v17 | 1;
  *(&v87 + v23) = vaddq_f32(v29, v12);
  v22 = v17 | 3;
  *(&v87 + v22) = vaddq_f32(v27, v12);
  v25 = v17;
  v17 += 4;
  v28[2] = v23;
  v28[3] = v22;
  ++v21;
  if ((a5 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((a3 & 1) == 0)
  {
    *(&v87 + v17) = vsubq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
    v13 = v17++;
  }

  LODWORD(v86[v21]) = v13;
  if (v25 == -1)
  {
    *(&v87 + v17) = vsubq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
    v25 = v17++;
  }

  DWORD1(v86[v21]) = v25;
  if (v22 == -1)
  {
    *(&v87 + v17) = vaddq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
    v22 = v17++;
  }

  v30 = &v86[v21];
  *(v30 + 2) = v22;
  if ((a3 & 1) == 0)
  {
    *(&v87 + v17) = vaddq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
    v20 = v17++;
  }

  *(v30 + 3) = v20;
  ++v21;
LABEL_16:
  if (a6)
  {
    if (a3)
    {
      v31 = v21;
      LODWORD(v86[v21]) = v18;
    }

    else
    {
      v32 = vaddq_f32(vsubq_f32(v9, v10), v11);
      *(&v87 + v17) = vsubq_f32(v32, v12);
      v19 = v17 + 1;
      v31 = v21;
      LODWORD(v86[v21]) = v17;
      *(&v87 + v17 + 1) = vaddq_f32(v32, v12);
      v18 = v17;
      v17 += 2;
    }

    v33 = &v86[v31];
    *(v33 + 1) = v19;
    if (v23 == -1)
    {
      *(&v87 + v17) = vaddq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
      v23 = v17++;
    }

    *(v33 + 2) = v23;
    if (v24 == -1)
    {
      *(&v87 + v17) = vsubq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
      v24 = v17++;
    }

    HIDWORD(v86[v31]) = v24;
    ++v21;
    if ((a7 & 1) == 0)
    {
LABEL_18:
      if ((a8 & 1) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_41;
    }
  }

  else if ((a7 & 1) == 0)
  {
    goto LABEL_18;
  }

  if (v13 == -1)
  {
    *(&v87 + v17) = vsubq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
    v34 = v17 + 1;
  }

  else
  {
    v34 = v17;
    v17 = v13;
  }

  LODWORD(v86[v21]) = v17;
  if (v18 == -1)
  {
    *(&v87 + v34) = vsubq_f32(vaddq_f32(vsubq_f32(v9, v10), v11), v12);
    v35 = v34 + 1;
  }

  else
  {
    v35 = v34;
    v34 = v18;
  }

  DWORD1(v86[v21]) = v34;
  if (v24 == -1)
  {
    *(&v87 + v35) = vsubq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
    v36 = v35 + 1;
  }

  else
  {
    v36 = v35;
    v35 = v24;
  }

  v37 = &v86[v21];
  *(v37 + 2) = v35;
  if (v25 == -1)
  {
    *(&v87 + v36) = vsubq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
    v17 = v36 + 1;
  }

  else
  {
    v17 = v36;
    v36 = v25;
  }

  *(v37 + 3) = v36;
  ++v21;
  if (a8)
  {
LABEL_41:
    if (v20 == -1)
    {
      *(&v87 + v17) = vaddq_f32(vsubq_f32(vsubq_f32(v9, v10), v11), v12);
      v38 = v17 + 1;
    }

    else
    {
      v38 = v17;
      v17 = v20;
    }

    LODWORD(v86[v21]) = v17;
    if (v22 == -1)
    {
      *(&v87 + v38) = vaddq_f32(vsubq_f32(vaddq_f32(v10, v9), v11), v12);
      v39 = v38 + 1;
    }

    else
    {
      v39 = v38;
      v38 = v22;
    }

    DWORD1(v86[v21]) = v38;
    if (v23 == -1)
    {
      *(&v87 + v39) = vaddq_f32(vaddq_f32(vaddq_f32(v10, v9), v11), v12);
      v40 = v39 + 1;
    }

    else
    {
      v40 = v39;
      v39 = v23;
    }

    v41 = &v86[v21];
    *(v41 + 2) = v39;
    if (v19 == -1)
    {
      *(&v87 + v40) = vaddq_f32(vaddq_f32(vsubq_f32(v9, v10), v11), v12);
      v17 = v40 + 1;
    }

    else
    {
      v17 = v40;
      v40 = v19;
    }

    *(v41 + 3) = v40;
    ++v21;
  }

LABEL_54:
  bzero(&v70, 0x2D0uLL);
  re::DynamicArray<re::BlendNode>::setCapacity(v72, 1uLL);
  ++v74;
  re::internal::GeomAttributeManager::GeomAttributeManager(v76);
  re::internal::GeomAttributeManager::addAttribute(v76, "vertexPosition", 1, 7);
  if (v71 > v17 && v73 && (v73 - 1) > v73)
  {
      ;
    }
  }

  v71 = v17;
  v77 = v17;
  if (v78)
  {
    v43 = v79;
    v44 = 8 * v78;
    do
    {
      v45 = *v43++;
      (*(*v45 + 80))(v45, v77);
      v44 -= 8;
    }

    while (v44);
  }

  if (v73 > v21)
  {
    v46 = v84;
    if (v84)
    {
      v47 = 0;
      do
      {
        v48 = re::internal::GeomAttributeContainer::attributeByIndex(&v83, v47);
        re::internal::accessFaceVaryingAttributeSubmesh(v48, v49);
        ++v47;
      }

      while (v46 != v47);
    }
  }

  v50 = v21;
  re::DynamicArray<re::GeomCell4>::resize(v72, v21);
  v80 = v21;
  if (v81)
  {
    v51 = v82;
    v52 = 8 * v81;
    do
    {
      v53 = *v51++;
      (*(*v53 + 80))(v53, v80);
      v52 -= 8;
    }

    while (v52);
  }

  if (v21)
  {
    v54 = 0;
    v55 = v86 + 2;
    do
    {
      v56 = *(v55 - 2);
      v57 = *(v55 - 1);
      v58 = *v55;
      v59 = v55[1];
      v55 += 4;
      re::GeomMeshBuilder::setFaceVertices(&v70, v54++, v56, v57, v58, v59);
    }

    while (v50 != v54);
  }

  v60 = re::GeomMesh::GeomMesh(a1, 0);
  v61 = re::GeomMesh::operator=(v60, &v71);
  re::GeomMesh::setName(v61, v70);
  re::GeomMesh::freeName(&v70);
  v62 = re::GeomMesh::modifyVertexPositions(a1);
  if (v17)
  {
    v64 = v63;
    v65 = v17;
    v66 = &v87;
    v67 = v63;
    do
    {
      if (!v67)
      {
        v85 = 0;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v103 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v95 = 136315906;
        v96 = "operator[]";
        v97 = 1024;
        v98 = 621;
        v99 = 2048;
        v100 = v64;
        v101 = 2048;
        v102 = v64;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v68 = *v66++;
      *v62++ = v68;
      --v67;
      --v65;
    }

    while (v65);
  }

  re::GeomMesh::freeName(&v70);
  re::internal::GeomAttributeManager::~GeomAttributeManager(v76);
  result = v72[0];
  if (v72[0] && v75)
  {
    return (*(*v72[0] + 40))();
  }

  return result;
}

unsigned int *re::anonymous namespace::BoundingBoxTree::buildTree(unsigned int *result, float32x4_t **a2, unsigned int a3, char *a4, uint64_t a5)
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = *result;
  *result = v6 + 1;
  v7 = *(result + 8);
  if (v7 <= v6)
  {
    goto LABEL_40;
  }

  v11 = result;
  v7 = (*(result + 10) + 48 * v6);
  if (!a3)
  {
    v19.i64[0] = 0x7F0000007FLL;
    v19.i64[1] = 0x7F0000007FLL;
    v7[1] = vnegq_f32(v19);
    v7[2] = v19;
    *a2 = v7;
    goto LABEL_9;
  }

  v12 = 0;
  v6 = *(result + 3);
  v13.i64[0] = 0x7F0000007FLL;
  v13.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v13);
  do
  {
    v15 = *&a4[v12];
    if (v6 <= v15)
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      v32 = 1024;
      v33 = 797;
      v34 = 2048;
      v35 = v15;
      v36 = 2048;
      v37 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      v32 = 1024;
      v33 = 797;
      v34 = 2048;
      v35 = v15;
      v36 = 2048;
      v37 = v6;
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
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      v32 = 1024;
      v33 = 797;
      v34 = 2048;
      v35 = v5;
      v36 = 2048;
      v37 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v31 = 136315906;
      *&v31[4] = "operator[]";
      v32 = 1024;
      v33 = 789;
      v34 = 2048;
      v35 = v6;
      v36 = 2048;
      v37 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v16 = (*(result + 5) + 32 * v15);
    v14.i32[3] = 0;
    v17 = *v16;
    v18 = v16[1];
    v17.i32[3] = 0;
    v13.i32[3] = 0;
    v14 = vminnmq_f32(v14, v17);
    v18.i32[3] = 0;
    v13 = vmaxnmq_f32(v13, v18);
    v12 += 4;
  }

  while (4 * a3 != v12);
  v7[1] = v14;
  v7[2] = v13;
  *a2 = v7;
  if (a3 == 1)
  {
    v7->i32[0] = *a4;
    v7->i64[1] = 0;
    return result;
  }

LABEL_9:
  v20 = vsubq_f32(v7[2], v7[1]);
  v21 = 2;
  if (v20.f32[1] >= v20.f32[2])
  {
    v21 = 1;
  }

  if (v20.f32[0] >= v20.f32[2] && v20.f32[0] >= v20.f32[1])
  {
    v21 = 0;
  }

  v23 = a4;
  if (a3)
  {
    v24 = (v7[2].f32[v21] + v7[1].f32[v21]) * 0.5;
    v23 = &a4[4 * a3];
    v6 = *(a5 + 16);
    v25 = a4;
    do
    {
      v26 = *(a5 + 32) + 4 * v21;
      while (1)
      {
        v15 = *v25;
        if (v6 <= v15)
        {
          goto LABEL_38;
        }

        if (*(v26 + 16 * v15) >= v24)
        {
          break;
        }

        v25 += 4;
        if (v25 == v23)
        {
          goto LABEL_29;
        }
      }

      do
      {
        v23 -= 4;
        if (v23 == v25)
        {
          v23 = v25;
          goto LABEL_29;
        }

        v5 = *v23;
        if (v6 <= v5)
        {
          goto LABEL_39;
        }
      }

      while (*(v26 + 16 * v5) >= v24);
      *v25 = v5;
      v25 += 4;
      *v23 = v15;
    }

    while (v23 != v25);
  }

LABEL_29:
  v27 = (v23 - a4) >> 2;
  if (v27 == a3 || v27 == 0)
  {
    v29 = a3 >> 1;
  }

  else
  {
    v29 = v27;
  }

  *&v38 = 0;
  *v31 = 0;
  v30 = v38;
  v7->i64[0] = *v31;
  v7->i64[1] = v30;
  return result;
}

void *re::DynamicArray<re::anonymous namespace::BoundingBoxTree::Node>::setCapacity(void *result, unint64_t a2)
{
  v2 = result[1];
  if (v2 != a2)
  {
    v4 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v4)
      {
        if (!a2)
        {
          v6 = 0;
          if (!v2)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        }

        result = (*(*result + 32))(result, 48 * a2, 16);
        if (result)
        {
          v6 = result;
          if (!v4[1])
          {
LABEL_8:
            v4[4] = v6;
            v4[1] = a2;
            return result;
          }

LABEL_7:
          memcpy(v6, v4[4], 48 * v4[2]);
          result = (*(**v4 + 40))(*v4, v4[4]);
          goto LABEL_8;
        }

        re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, 48 * a2, *(*v4 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        ++*(v4 + 6);
      }
    }
  }

  return result;
}

uint64_t re::anonymous namespace::BoundingBoxTree::findBoxOverlaps(float32x4_t *a1, unsigned int a2, float32x4_t *a3, uint64_t a4)
{
  v7 = a1;
  result = a1->i64[1];
  if (result)
  {
    while (1)
    {
      v9 = vcgtq_f32(*a3, v7[2]);
      v9.i32[3] = v9.i32[2];
      if ((vmaxvq_u32(v9) & 0x80000000) != 0)
      {
        break;
      }

      v10 = vcgtq_f32(v7[1], a3[1]);
      v10.i32[3] = v10.i32[2];
      if ((vmaxvq_u32(v10) & 0x80000000) != 0)
      {
        break;
      }

      v7 = v7->i64[0];
      result = v7->i64[1];
      if (!result)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v7->i32[0] != a2)
    {
      v11 = vcgtq_f32(*a3, v7[2]);
      v11.i32[3] = v11.i32[2];
      if ((vmaxvq_u32(v11) & 0x80000000) == 0)
      {
        v12 = vcgtq_f32(v7[1], a3[1]);
        v12.i32[3] = v12.i32[2];
        if ((vmaxvq_u32(v12) & 0x80000000) == 0)
        {
          v13 = *(a4 + 16);
          if (v13 <= a2)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          else
          {
            v14 = *(a4 + 32);
            *(v14 + a2) = 1;
            v15 = v7->u32[0];
            if (v13 > v15)
            {
              *(v14 + v15) = 1;
              return result;
            }
          }

          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t re::GeomMeshBVHTree::buildTree(uint64_t a1, unint64_t a2, unsigned int a3, char *a4, uint64_t a5)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 8);
  *(a1 + 8) = v7 + 1;
  v8 = *(a1 + 32);
  if (v8 <= v7)
  {
    goto LABEL_50;
  }

  v14 = (*(a1 + 48) + 48 * v7);
  result = re::GeomMesh::accessVertexPositions(*a1);
  if (!a3)
  {
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v14[1] = vnegq_f32(v33);
    v14[2] = v33;
    *a2 = v14;
    goto LABEL_15;
  }

  v7 = v16;
  v17 = a2;
  v18 = a5;
  v19 = 0;
  a2 = *(*a1 + 40);
  v20.i64[0] = 0x7F0000007FLL;
  v20.i64[1] = 0x7F0000007FLL;
  v21 = vnegq_f32(v20);
  do
  {
    v8 = *&a4[v19];
    if (a2 <= v8)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      v23 = MEMORY[0x1E69E9C10];
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v8;
      v49 = 2048;
      v50 = a2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_44:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 613;
      v47 = 2048;
      v48 = v23;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_45:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 613;
      v47 = 2048;
      v48 = v6;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_46:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 613;
      v47 = 2048;
      v48 = v5;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_47:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 613;
      v47 = 2048;
      v48 = v8;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_48:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = v8;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_49:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 797;
      v47 = 2048;
      v48 = a2;
      v49 = 2048;
      v50 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_50:
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v44 = 136315906;
      *&v44[4] = "operator[]";
      v45 = 1024;
      v46 = 789;
      v47 = 2048;
      v48 = v7;
      v49 = 2048;
      v50 = v8;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v22 = (*(*a1 + 56) + 16 * v8);
    v23 = *v22;
    v6 = v22[1];
    v5 = v22[2];
    v8 = v22[3];
    if (v8 != -1)
    {
      if (v8 >= v16)
      {
        goto LABEL_47;
      }

      v24 = *(result + 16 * v8);
      v21.i32[3] = 0;
      v24.i32[3] = 0;
      v21 = vminnmq_f32(v21, v24);
      v20.i32[3] = 0;
      v20 = vmaxnmq_f32(v20, v24);
    }

    if (v23 >= v16)
    {
      goto LABEL_44;
    }

    if (v6 >= v16)
    {
      goto LABEL_45;
    }

    if (v5 >= v16)
    {
      goto LABEL_46;
    }

    v20.i32[3] = 0;
    v25 = *(result + 16 * v23);
    v25.i32[3] = 0;
    v26 = vmaxnmq_f32(v20, v25);
    v26.i32[3] = 0;
    v27 = *(result + 16 * v6);
    v27.i32[3] = 0;
    v28 = vmaxnmq_f32(v26, v27);
    v21.i32[3] = 0;
    v29 = vminnmq_f32(v21, v25);
    v29.i32[3] = 0;
    v30 = vminnmq_f32(v29, v27);
    v31 = *(result + 16 * v5);
    v30.i32[3] = 0;
    v31.i32[3] = 0;
    v21 = vminnmq_f32(v30, v31);
    v28.i32[3] = 0;
    v20 = vmaxnmq_f32(v28, v31);
    v19 += 4;
  }

  while (4 * a3 != v19);
  v14[1] = v21;
  v14[2] = v20;
  *v17 = v14;
  a5 = v18;
  if (a3 == 1)
  {
    v32 = 0;
    v14->i32[0] = *a4;
    goto LABEL_42;
  }

LABEL_15:
  v34 = vsubq_f32(v14[2], v14[1]);
  v35 = 2;
  if (v34.f32[1] >= v34.f32[2])
  {
    v35 = 1;
  }

  if (v34.f32[0] >= v34.f32[2] && v34.f32[0] >= v34.f32[1])
  {
    v35 = 0;
  }

  v37 = a4;
  if (a3)
  {
    v38 = (v14[2].f32[v35] + v14[1].f32[v35]) * 0.5;
    v37 = &a4[4 * a3];
    v7 = *(a5 + 16);
    v39 = a4;
    do
    {
      v40 = *(a5 + 32) + 4 * v35;
      while (1)
      {
        v8 = *v39;
        if (v7 <= v8)
        {
          goto LABEL_48;
        }

        if (*(v40 + 16 * v8) >= v38)
        {
          break;
        }

        v39 += 4;
        if (v39 == v37)
        {
          goto LABEL_35;
        }
      }

      do
      {
        v37 -= 4;
        if (v37 == v39)
        {
          v37 = v39;
          goto LABEL_35;
        }

        a2 = *v37;
        if (v7 <= a2)
        {
          goto LABEL_49;
        }
      }

      while (*(v40 + 16 * a2) >= v38);
      *v39 = a2;
      v39 += 4;
      *v37 = v8;
    }

    while (v37 != v39);
  }

LABEL_35:
  v41 = (v37 - a4) >> 2;
  if (v41 == a3 || v41 == 0)
  {
    v43 = a3 >> 1;
  }

  else
  {
    v43 = v41;
  }

  *&v51 = 0;
  *v44 = 0;
  re::GeomMeshBVHTree::buildTree(a1, &v51, v43, a4, a5);
  result = re::GeomMeshBVHTree::buildTree(a1, v44, a3 - v43, &a4[4 * v43], a5);
  v32 = v51;
  v14->i64[0] = *v44;
LABEL_42:
  v14->i64[1] = v32;
  return result;
}

uint64_t re::GeomMeshBVHTree::init(uint64_t this, const re::GeomMesh *a2)
{
  v4 = this;
  v51 = *MEMORY[0x1E69E9840];
  *(this + 8) = 0;
  v5 = *(a2 + 5);
  v34 = 0;
  v31[1] = 0;
  v32 = 0;
  v31[0] = 0;
  v33 = 0;
  if (!v5)
  {
    *this = 0;
    *(this + 32) = 0;
    ++*(this + 40);
    return this;
  }

  v6 = a2;
  *this = a2;
  re::DynamicArray<re::Vector3<float>>::resize(v31, v5);
  v7 = re::GeomMesh::accessVertexPositions(v6);
  v9 = v8;
  v10 = 0;
  __asm
  {
    FMOV            V0.4S, #3.0
    FMOV            V1.4S, #0.25
  }

  do
  {
    v17 = *(v6 + 5);
    if (v17 <= v10)
    {
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 797;
      *&v36[18] = 2048;
      *&v36[20] = v10;
      v37 = 2048;
      *v38 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 613;
      *&v36[18] = 2048;
      *&v36[20] = v17;
      v37 = 2048;
      *v38 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 613;
      *&v36[18] = 2048;
      *&v36[20] = v2;
      v37 = 2048;
      *v38 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 613;
      *&v36[18] = 2048;
      *&v36[20] = v3;
      v37 = 2048;
      *v38 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_40:
      v35 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v39 = 136315906;
      *&v39[4] = "operator[]";
      v40 = 1024;
      v41 = 789;
      v42 = 2048;
      v43 = v6;
      v44 = 2048;
      v45 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 613;
      *&v36[18] = 2048;
      *&v36[20] = v17;
      v37 = 2048;
      *v38 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_42:
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 789;
      *&v36[18] = 2048;
      *&v36[20] = v10;
      v37 = 2048;
      *v38 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_43:
      *v39 = 0;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v36 = 136315906;
      *&v36[4] = "operator[]";
      *&v36[12] = 1024;
      *&v36[14] = 789;
      *&v36[18] = 2048;
      *&v36[20] = v10;
      v37 = 2048;
      *v38 = v17;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_44;
    }

    v18 = (*(v6 + 7) + 16 * v10);
    v17 = *v18;
    if (v17 >= v8)
    {
      goto LABEL_37;
    }

    v2 = v18[1];
    if (v2 >= v8)
    {
      goto LABEL_38;
    }

    v3 = v18[2];
    if (v3 >= v8)
    {
      goto LABEL_39;
    }

    v19 = *(v7 + 16 * v17);
    v17 = v18[3];
    v20 = *(v7 + 16 * v2);
    v21 = *(v7 + 16 * v3);
    if (v17 == -1)
    {
      v17 = v32;
      if (v32 <= v10)
      {
        goto LABEL_43;
      }

      v22 = vdivq_f32(vaddq_f32(vaddq_f32(v19, v20), v21), _Q0);
    }

    else
    {
      if (v17 >= v8)
      {
        goto LABEL_41;
      }

      v2 = v32;
      if (v32 <= v10)
      {
        goto LABEL_42;
      }

      v22 = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v19, v20), v21), *(v7 + 16 * v17)), _Q1);
    }

    *(v34 + 16 * v10++) = v22;
  }

  while (v10 != v5);
  *&v38[2] = 0;
  memset(v36, 0, sizeof(v36));
  re::DynamicArray<float>::resize(v36, v5);
  v23 = 0;
  v6 = *&v36[16];
  v24 = *&v38[2];
  do
  {
    if (v6 == v23)
    {
      goto LABEL_40;
    }

    *(v24 + 4 * v23) = v23;
    v23 = (v23 + 1);
  }

  while (v5 != v23);
  v25 = (2 * v5 - 1);
  v26 = *(v4 + 32);
  if (v26 >= v25)
  {
    if (v26 > v25)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*(v4 + 24) < v25)
    {
      v26 = *(v4 + 32);
    }

    if (v25 > v26 && (v25 - v26) >= 1)
    {
      v27 = *(v4 + 48) + 48 * v26;
      v28 = (2 * v5 - 2) - v26 + 2;
      v29.i64[0] = 0x7F0000007FLL;
      v29.i64[1] = 0x7F0000007FLL;
      v30 = vnegq_f32(v29);
      do
      {
        *v27 = 0;
        *(v27 + 8) = 0;
        *(v27 + 16) = v30;
        *(v27 + 32) = v29;
        v27 += 48;
        --v28;
      }

      while (v28 > 1);
    }

LABEL_27:
    *(v4 + 32) = v25;
    ++*(v4 + 40);
    v6 = *&v36[16];
  }

  if (!v6)
  {
LABEL_44:
    v35 = 0;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v39 = 136315906;
    *&v39[4] = "operator[]";
    v40 = 1024;
    v41 = 789;
    v42 = 2048;
    v43 = 0;
    v44 = 2048;
    v45 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::GeomMeshBVHTree::buildTree(v4, &v46, v5, *&v38[2], v31);
  if (*v36 && *&v38[2])
  {
    (*(**v36 + 40))();
  }

  this = v31[0];
  if (v31[0])
  {
    if (v34)
    {
      return (*(*v31[0] + 40))();
    }
  }

  return this;
}

void re::GeomMeshBVHTree::computeClosestPointHelper(re::GeomMesh **a1, void *a2, float32x4_t *a3, float *a4, uint64_t a5)
{
  v11 = a2;
  v60 = *MEMORY[0x1E69E9840];
  for (i = a2; ; i = v11)
  {
    v16 = i[1];
    v15 = i + 1;
    v14 = v16;
    if (!v16)
    {
      break;
    }

    v17 = 0;
    v18 = 0.0;
    do
    {
      v19 = a3->f32[v17];
      v20 = *(v14 + v17 * 4 + 16);
      if (v19 >= v20)
      {
        v22 = *(v14 + v17 * 4 + 32);
        v21 = 0.0;
        if (v19 > v22)
        {
          v21 = v19 - v22;
        }
      }

      else
      {
        v21 = v19 - v20;
      }

      v18 = v18 + (v21 * v21);
      ++v17;
    }

    while (v17 != 3);
    v23 = 0;
    v24 = *v11;
    v25 = 0.0;
    do
    {
      v26 = a3->f32[v23];
      v27 = *(v24 + v23 * 4 + 16);
      if (v26 >= v27)
      {
        v29 = *(v24 + v23 * 4 + 32);
        v28 = 0.0;
        if (v26 > v29)
        {
          v28 = v26 - v29;
        }
      }

      else
      {
        v28 = v26 - v27;
      }

      v25 = v25 + (v28 * v28);
      ++v23;
    }

    while (v23 != 3);
    v30 = *a4;
    if (v18 >= v25)
    {
      if (v25 < v30)
      {
        re::GeomMeshBVHTree::computeClosestPointHelper(a1, *v11, a3, a4, a5);
        v30 = *a4;
      }

      v11 = v15;
      if (v18 >= v30)
      {
        return;
      }
    }

    else
    {
      if (v18 < v30)
      {
        re::GeomMeshBVHTree::computeClosestPointHelper(a1, v14, a3, a4, a5);
        v30 = *a4;
      }

      if (v25 >= v30)
      {
        return;
      }
    }

    v11 = *v11;
  }

  v31 = re::GeomMesh::accessVertexPositions(*a1);
  v33 = *v11;
  v34 = *a1;
  v35 = *(*a1 + 5);
  if (v35 <= v33)
  {
    v45.i64[0] = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    v50 = 797;
    v51 = 2048;
    v52 = v33;
    v53 = 2048;
    v54 = v35;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_36;
  }

  LODWORD(v15) = v32;
  v36 = (*(v34 + 7) + 16 * v33);
  v35 = *v36;
  if (v35 >= v32)
  {
LABEL_36:
    v45.i64[0] = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    v50 = 613;
    v51 = 2048;
    v52 = v35;
    v53 = 2048;
    v54 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_37;
  }

  v6 = v36[1];
  if (v6 >= v32)
  {
LABEL_37:
    v45.i64[0] = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    v50 = 613;
    v51 = 2048;
    v52 = v6;
    v53 = 2048;
    v54 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_38;
  }

  v7 = v36[2];
  if (v7 >= v32)
  {
LABEL_38:
    v45.i64[0] = 0;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    v50 = 613;
    v51 = 2048;
    v52 = v7;
    v53 = 2048;
    v54 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  v5 = v36[3];
  v37 = 0uLL;
  v44 = 0u;
  v45 = 0u;
  if (v5 != -1)
  {
    if (v5 < v32)
    {
      *&v55 = 0;
      v38 = re::computeDistanceSquaredFromPointToQuad(a3, (v31 + 16 * v35), (v31 + 16 * v6), (v31 + 16 * v7), (v31 + 16 * v5), &v45, &v55);
      *&v39 = v55;
      DWORD2(v39) = 0;
      v44 = v39;
      goto LABEL_32;
    }

LABEL_39:
    v46 = 0;
    v58 = v37;
    v59 = v37;
    v56 = v37;
    v57 = v37;
    v55 = v37;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v47 = 136315906;
    v48 = "operator[]";
    v49 = 1024;
    v50 = 613;
    v51 = 2048;
    v52 = v5;
    v53 = 2048;
    v54 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  geom_closest_point_to_triangle_3f();
  v45 = v40;
  v41 = vsubq_f32(v40, *a3);
  v42 = vmulq_f32(v41, v41);
  v38 = v42.f32[2] + vaddv_f32(*v42.f32);
LABEL_32:
  if (v38 < *a4)
  {
    *a4 = v38;
    *a5 = v33;
    v43 = v45;
    *(a5 + 16) = v44;
    *(a5 + 32) = v43;
  }
}

float re::GeomMeshBVHTree::computeClosestPoint(re::GeomMeshBVHTree *a1, float32x4_t *a2, _DWORD *a3)
{
  v8 = INFINITY;
  *a3 = -1;
  if (!*(a1 + 4))
  {
    return INFINITY;
  }

  v6 = re::GeomMeshBVHTree::root(a1);
  re::GeomMeshBVHTree::computeClosestPointHelper(a1, v6, a2, &v8, a3);
  return v8;
}

uint64_t re::GeomMeshBVHTree::root(re::GeomMeshBVHTree *this)
{
  if (!*(this + 4))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(this + 6);
}

uint64_t re::internal::accessFaceVaryingAttributeSubmesh(re::internal *this, const re::GeomAttribute *a2)
{
  if (*(this + 17) < 0xBu)
  {
    return this + 64;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "accessFaceVaryingAttributeSubmesh", 174, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

char *re::GeomAttribute::setName(re::GeomAttribute *this, const char *__s)
{
  v4 = *(this + 1);
  if (v4)
  {
    v5 = re::globalAllocators(this);
    (*(*v5[2] + 40))(v5[2], v4);
  }

  v6 = strlen(__s);
  v7 = re::globalAllocators(v6);
  v8 = (*(*v7[2] + 32))(v7[2], v6 + 1, 0);
  *(this + 1) = v8;

  return strcpy(v8, __s);
}

void re::GeomAttribute::~GeomAttribute(re::GeomAttribute *this)
{
  *this = &unk_1F5D02260;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
    *(this + 1) = 0;
  }
}

uint64_t re::GeomAttribute::copyValues(re::GeomAttribute *this, re::GeomAttribute *a2)
{
  v4 = (*(*this + 16))(this);
  (*(*a2 + 80))(a2, v4);
  v5 = (*(*this + 16))(this);
  v6 = *(*this + 40);

  return v6(this, a2, v5, 0, 0);
}

re::GeomAttribute *re::GeomAttribute::createAttribute(re::GeomAttribute *this, const re::GeomAttribute *a2)
{
  v3 = *(this + 16);
  v4 = *(this + 1);
  v5 = *(this + 17);
  if (v3 == 3)
  {
    v6 = re::internal::accessFaceVaryingAttributeSubmesh(this, v3);
    FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(v4, v5, v6);
  }

  else
  {
    FaceVaryingAttribute = re::GeomAttribute::createAttribute(*(this + 1), v3, v5, 0);
  }

  v8 = FaceVaryingAttribute;
  re::GeomAttribute::copyValues(this, FaceVaryingAttribute);
  return v8;
}

uint64_t re::GeomAttribute::createAttribute(re *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v6 = a2;
  if (a3 <= 4)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v8 = re::internal::newAttributePtr<int>(a1);
      }

      else if (a3 == 3)
      {
        v8 = re::internal::newAttributePtr<unsigned int>(a1);
      }

      else
      {
        v8 = re::internal::newAttributePtr<float>(a1);
      }

      goto LABEL_24;
    }

    if (!a3)
    {
      v8 = re::internal::newAttributePtr<short>(a1);
      goto LABEL_24;
    }

    if (a3 == 1)
    {
      v8 = re::internal::newAttributePtr<unsigned short>(a1);
      goto LABEL_24;
    }

LABEL_28:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "createAttribute", 359);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a3 <= 7)
  {
    if (a3 == 5)
    {
      v8 = re::internal::newAttributePtr<double>(a1);
    }

    else if (a3 == 6)
    {
      v8 = re::internal::newAttributePtr<re::Vector2<float>>(a1);
    }

    else
    {
      v8 = re::internal::newAttributePtr<re::Vector3<float>>(a1);
    }

    goto LABEL_24;
  }

  if (a3 == 8)
  {
    v8 = re::internal::newAttributePtr<re::Vector4<float>>(a1);
    goto LABEL_24;
  }

  if (a3 == 9)
  {
    v8 = re::internal::newAttributePtr<unsigned char>(a1);
    goto LABEL_24;
  }

  if (a3 != 10)
  {
    goto LABEL_28;
  }

  v8 = re::internal::newAttributePtr<signed char>(a1);
LABEL_24:
  v9 = v8;
  if (v8)
  {
    re::GeomAttribute::setName(v8, a1);
    *(v9 + 16) = v6;
    *(v9 + 17) = v5;
    if (a4)
    {
      (*(*v9 + 80))(v9, a4);
    }
  }

  return v9;
}

uint64_t re::GeomAttribute::createFaceVaryingAttribute(const char *a1, uint64_t a2, re::internal::GeomAttributeFaceVaryingSubmesh *a3)
{
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v8, a3);
  FaceVaryingAttribute = re::GeomAttribute::createFaceVaryingAttribute(a1, a2, v8);
  re::internal::GeomAttributeFaceVaryingSubmesh::~GeomAttributeFaceVaryingSubmesh(v8, v6);
  return FaceVaryingAttribute;
}

uint64_t re::GeomAttribute::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 17) != *(a2 + 17) || strcmp(*(a1 + 8), *(a2 + 8)))
  {
    return 0;
  }

  v5 = *(*a1 + 56);

  return v5(a1, a2);
}

uint64_t re::internal::newAttributePtr<signed char>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D022E8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<short>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02378;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<int>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02408;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<unsigned char>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02498;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<unsigned short>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02528;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<unsigned int>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D025B8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<float>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02648;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<double>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D026D8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<re::Vector2<float>>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02768;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<re::Vector3<float>>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D027F8;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::internal::newAttributePtr<re::Vector4<float>>(re *a1)
{
  v1 = re::globalAllocators(a1);
  result = (*(*v1[2] + 32))(v1[2], 64, 8);
  *result = &unk_1F5D02888;
  *(result + 8) = 0;
  *(result + 56) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  *(result + 48) = 0;
  return result;
}

uint64_t re::GeomAttribute::createFaceVaryingAttribute(const char *a1, uint64_t a2, re *a3)
{
  v3 = a2;
  if (a2 > 4)
  {
    if (a2 <= 7)
    {
      if (a2 == 5)
      {
        v5 = re::internal::newFaceVaryingAttributePtr<double>(a3);
      }

      else if (a2 == 6)
      {
        v5 = re::internal::newFaceVaryingAttributePtr<re::Vector2<float>>(a3);
      }

      else
      {
        v5 = re::internal::newFaceVaryingAttributePtr<re::Vector3<float>>(a3);
      }

      goto LABEL_24;
    }

    switch(a2)
    {
      case 8:
        v5 = re::internal::newFaceVaryingAttributePtr<re::Vector4<float>>(a3);
        goto LABEL_24;
      case 9:
        v5 = re::internal::newFaceVaryingAttributePtr<unsigned char>(a3);
        goto LABEL_24;
      case 0xA:
        v5 = re::internal::newFaceVaryingAttributePtr<signed char>(a3);
        goto LABEL_24;
    }

LABEL_27:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "createFaceVaryingAttribute", 412);
    result = _os_crash();
    __break(1u);
    return result;
  }

  if (a2 <= 1)
  {
    if (!a2)
    {
      v5 = re::internal::newFaceVaryingAttributePtr<short>(a3);
      goto LABEL_24;
    }

    if (a2 == 1)
    {
      v5 = re::internal::newFaceVaryingAttributePtr<unsigned short>(a3);
      goto LABEL_24;
    }

    goto LABEL_27;
  }

  if (a2 == 2)
  {
    v5 = re::internal::newFaceVaryingAttributePtr<int>(a3);
  }

  else if (a2 == 3)
  {
    v5 = re::internal::newFaceVaryingAttributePtr<unsigned int>(a3);
  }

  else
  {
    v5 = re::internal::newFaceVaryingAttributePtr<float>(a3);
  }

LABEL_24:
  v6 = v5;
  if (v5)
  {
    re::GeomAttribute::setName(v5, a1);
    *(v6 + 16) = 3;
    *(v6 + 17) = v3;
  }

  return v6;
}

uint64_t re::internal::newFaceVaryingAttributePtr<signed char>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02918;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<short>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D029A8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<int>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02A38;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<unsigned char>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02AC8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<unsigned short>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02B58;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<unsigned int>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02BE8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<float>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02C78;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<double>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02D08;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<re::Vector2<float>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02D98;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<re::Vector3<float>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02E28;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::internal::newFaceVaryingAttributePtr<re::Vector4<float>>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 272, 8);
  *(v3 + 56) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 24) = 0;
  *(v3 + 48) = 0;
  *v3 = &unk_1F5D02EB8;
  *(v3 + 8) = 0;
  re::internal::GeomAttributeFaceVaryingSubmesh::GeomAttributeFaceVaryingSubmesh(v3 + 64, a1);
  (*(*v3 + 80))(v3, *(v3 + 64));
  return v3;
}

uint64_t re::GeomAttribute::freeAttribute(re::GeomAttribute *this, re::GeomAttribute *a2)
{
  if (*(this + 17) >= 0xBu)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unexpected attribute type", "!Unreachable code", "freeAttribute", 483);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = re::globalAllocators(this)[2];
    (**this)(this);
    v4 = *(*v3 + 40);

    return v4(v3, this);
  }

  return result;
}

uint64_t re::GeomAttribute::areValuesAtIndexEqual(re::GeomAttribute *this, uint64_t a2, uint64_t a3)
{
  if ((*(*this + 16))(this) <= a2)
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "value0 < size()", "areValuesAtIndexEqual", 490);
    _os_crash();
    __break(1u);
    goto LABEL_7;
  }

  if ((*(*this + 16))(this) <= a3)
  {
LABEL_7:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "value1 < size()", "areValuesAtIndexEqual", 491);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v8 = *(*this + 64);

  return v8(this, a2, a3);
}

void re::GeomAttribute::updateSubmesh(uint64_t a1, uint64_t a2)
{
  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Call to update a submesh on a non face-varying attribute", "!Unreachable code", "updateSubmesh", 431);
  _os_crash();
  __break(1u);
}

void re::internal::GeomTypedAttribute<signed char>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D022E8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<signed char>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<BOOL>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<signed char>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<signed char>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = a3;
      while (1)
      {
        v9 = *a4++;
        v8 = v9;
        if (result[5] <= v9)
        {
          break;
        }

        v10 = *a5;
        if (*(a2 + 40) <= v10)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + v10) = *(result[7] + v8);
        ++a5;
        if (!--v7)
        {
          return result;
        }
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
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v11 = 0;
      while (v6[5] > v11)
      {
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + v11) = *(v6[7] + v11);
        if (result == ++v11)
        {
          return result;
        }
      }

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
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<signed char>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_22;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        if (*(result + 40) <= v3)
        {
          goto LABEL_23;
        }

        v7 = *(*(result + 56) + v3);
        v8 = v4;
        v9 = v4;
        while (1)
        {
          v10 = *(v6 + 4 * v8);
          if (v4 == v10)
          {
            break;
          }

          v11 = *(result + 40);
          if (v11 <= v10)
          {
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
LABEL_21:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_22:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_23:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_24:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_25;
          }

          if (v11 <= v8)
          {
            goto LABEL_19;
          }

          *(*(result + 56) + v8) = *(*(result + 56) + v10);
          v12 = *(a2 + 16);
          if (v12 <= v8)
          {
            goto LABEL_20;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v8) = v9;
          v8 = v10;
          v9 = v10;
          if (v12 <= v10)
          {
            goto LABEL_21;
          }
        }

        if (*(result + 40) <= v8)
        {
          goto LABEL_24;
        }

        *(*(result + 56) + v8) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v8)
        {
LABEL_25:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v8) = v9;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<signed char>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + a2) == *(*(a1 + 56) + a3);
}

void *re::internal::GeomTypedAttribute<signed char>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<BOOL>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<signed char>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<short>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02378;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<short>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<short>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<short>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<short>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = result[5];
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (v7 <= v10)
        {
          break;
        }

        v11 = *a5;
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + 2 * v11) = *(result[7] + 2 * v9);
        ++a5;
        if (!--v8)
        {
          return result;
        }
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
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v12 = 0;
      v13 = v6[5];
      while (v13 != v12)
      {
        if (*(a2 + 40) <= v12)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + 2 * v12) = *(v6[7] + 2 * v12);
        if (result == ++v12)
        {
          return result;
        }
      }

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
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<short>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_19;
      }

      if (v4 != *(v6 + 4 * v3))
      {
        v7 = v4;
        if (v5 <= v4)
        {
          goto LABEL_18;
        }

        v8 = *(result + 56);
        v9 = *(v8 + 2 * v3);
        v10 = v4;
        while (1)
        {
          v11 = *(v6 + 4 * v7);
          if (v4 == v11)
          {
            break;
          }

          if (v2 <= v11)
          {
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

          if (v2 <= v7)
          {
            goto LABEL_17;
          }

          *(v8 + 2 * v7) = *(v8 + 2 * v11);
          *(v6 + 4 * v7) = v10;
          v7 = v11;
          v10 = v11;
          if (v5 <= v11)
          {
            goto LABEL_18;
          }
        }

        if (v2 <= v7)
        {
          goto LABEL_20;
        }

        *(v8 + 2 * v7) = v9;
        *(v6 + 4 * v7) = v10;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<short>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + 2 * a2) == *(*(a1 + 56) + 2 * a3);
}

void *re::internal::GeomTypedAttribute<short>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<short>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<short>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<int>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02408;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<int>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<float>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<int>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<int>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = result[5];
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (v7 <= v10)
        {
          break;
        }

        v11 = *a5;
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + 4 * v11) = *(result[7] + 4 * v9);
        ++a5;
        if (!--v8)
        {
          return result;
        }
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
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v12 = 0;
      v13 = v6[5];
      while (v13 != v12)
      {
        if (*(a2 + 40) <= v12)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + 4 * v12) = *(v6[7] + 4 * v12);
        if (result == ++v12)
        {
          return result;
        }
      }

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
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<int>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_19;
      }

      if (v4 != *(v6 + 4 * v3))
      {
        v7 = v4;
        if (v5 <= v4)
        {
          goto LABEL_18;
        }

        v8 = *(result + 56);
        v9 = *(v8 + 4 * v3);
        v10 = v4;
        while (1)
        {
          v11 = *(v6 + 4 * v7);
          if (v4 == v11)
          {
            break;
          }

          if (v2 <= v11)
          {
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

          if (v2 <= v7)
          {
            goto LABEL_17;
          }

          *(v8 + 4 * v7) = *(v8 + 4 * v11);
          *(v6 + 4 * v7) = v10;
          v7 = v11;
          v10 = v11;
          if (v5 <= v11)
          {
            goto LABEL_18;
          }
        }

        if (v2 <= v7)
        {
          goto LABEL_20;
        }

        *(v8 + 4 * v7) = v9;
        *(v6 + 4 * v7) = v10;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<int>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + 4 * a2) == *(*(a1 + 56) + 4 * a3);
}

void *re::internal::GeomTypedAttribute<int>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<int>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<int>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<unsigned char>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02498;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<BOOL>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<unsigned char>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = a3;
      while (1)
      {
        v9 = *a4++;
        v8 = v9;
        if (result[5] <= v9)
        {
          break;
        }

        v10 = *a5;
        if (*(a2 + 40) <= v10)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + v10) = *(result[7] + v8);
        ++a5;
        if (!--v7)
        {
          return result;
        }
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
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v11 = 0;
      while (v6[5] > v11)
      {
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + v11) = *(v6[7] + v11);
        if (result == ++v11)
        {
          return result;
        }
      }

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
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_22;
      }

      v6 = *(a2 + 32);
      if (v4 != *(v6 + 4 * v3))
      {
        if (*(result + 40) <= v3)
        {
          goto LABEL_23;
        }

        v7 = *(*(result + 56) + v3);
        v8 = v4;
        v9 = v4;
        while (1)
        {
          v10 = *(v6 + 4 * v8);
          if (v4 == v10)
          {
            break;
          }

          v11 = *(result + 40);
          if (v11 <= v10)
          {
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
LABEL_21:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_22:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_23:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_24:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_25;
          }

          if (v11 <= v8)
          {
            goto LABEL_19;
          }

          *(*(result + 56) + v8) = *(*(result + 56) + v10);
          v12 = *(a2 + 16);
          if (v12 <= v8)
          {
            goto LABEL_20;
          }

          v6 = *(a2 + 32);
          *(v6 + 4 * v8) = v9;
          v8 = v10;
          v9 = v10;
          if (v12 <= v10)
          {
            goto LABEL_21;
          }
        }

        if (*(result + 40) <= v8)
        {
          goto LABEL_24;
        }

        *(*(result + 56) + v8) = v7;
        v5 = *(a2 + 16);
        if (v5 <= v8)
        {
LABEL_25:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        *(*(a2 + 32) + 4 * v8) = v9;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<unsigned char>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + a2) == *(*(a1 + 56) + a3);
}

void *re::internal::GeomTypedAttribute<unsigned char>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<BOOL>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned char>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<unsigned short>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D02528;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<unsigned short>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::clear(uint64_t a1)
{
  if (!(*(*a1 + 16))(a1))
  {
    return 1;
  }

  if (*(a1 + 16) == 4)
  {
    *(a1 + 40) = 0;
    ++*(a1 + 48);
    return 1;
  }

  return 0;
}

void *re::internal::GeomTypedAttribute<unsigned short>::copyValuesHelper(void *result, uint64_t a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v6 = result;
  if (a4)
  {
    if (a3)
    {
      v7 = result[5];
      v8 = a3;
      while (1)
      {
        v10 = *a4++;
        v9 = v10;
        if (v7 <= v10)
        {
          break;
        }

        v11 = *a5;
        if (*(a2 + 40) <= v11)
        {
          goto LABEL_15;
        }

        *(*(a2 + 56) + 2 * v11) = *(result[7] + 2 * v9);
        ++a5;
        if (!--v8)
        {
          return result;
        }
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
      goto LABEL_16;
    }
  }

  else
  {
    result = (*(*result + 16))(result);
    if (result)
    {
      v12 = 0;
      v13 = v6[5];
      while (v13 != v12)
      {
        if (*(a2 + 40) <= v12)
        {
          goto LABEL_17;
        }

        *(*(a2 + 56) + 2 * v12) = *(v6[7] + 2 * v12);
        if (result == ++v12)
        {
          return result;
        }
      }

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
    }
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::reorderHelper(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    do
    {
      if (v5 <= v3)
      {
        goto LABEL_19;
      }

      if (v4 != *(v6 + 4 * v3))
      {
        v7 = v4;
        if (v5 <= v4)
        {
          goto LABEL_18;
        }

        v8 = *(result + 56);
        v9 = *(v8 + 2 * v3);
        v10 = v4;
        while (1)
        {
          v11 = *(v6 + 4 * v7);
          if (v4 == v11)
          {
            break;
          }

          if (v2 <= v11)
          {
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

          if (v2 <= v7)
          {
            goto LABEL_17;
          }

          *(v8 + 2 * v7) = *(v8 + 2 * v11);
          *(v6 + 4 * v7) = v10;
          v7 = v11;
          v10 = v11;
          if (v5 <= v11)
          {
            goto LABEL_18;
          }
        }

        if (v2 <= v7)
        {
          goto LABEL_20;
        }

        *(v8 + 2 * v7) = v9;
        *(v6 + 4 * v7) = v10;
      }

      v3 = ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

BOOL re::internal::GeomTypedAttribute<unsigned short>::areValuesAtIndexEqualHelper(uint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
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

  if (v3 <= a3)
  {
    goto LABEL_5;
  }

  return *(*(a1 + 56) + 2 * a2) == *(*(a1 + 56) + 2 * a3);
}

void *re::internal::GeomTypedAttribute<unsigned short>::reserveInternal(void *result, unsigned int a2)
{
  if (result[4] < a2)
  {
    return re::DynamicArray<unsigned short>::setCapacity(result + 3, a2);
  }

  return result;
}

uint64_t re::internal::GeomTypedAttribute<unsigned short>::clearInternal(uint64_t result)
{
  *(result + 40) = 0;
  ++*(result + 48);
  return result;
}

void re::internal::GeomTypedAttribute<unsigned int>::~GeomTypedAttribute(re::GeomAttribute *a1)
{
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);

  re::GeomAttribute::~GeomAttribute(a1);
}

{
  *a1 = &unk_1F5D025B8;
  re::DynamicArray<unsigned long>::deinit(a1 + 24);
  re::GeomAttribute::~GeomAttribute(a1);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::GeomTypedAttribute<unsigned int>::resize(_BYTE *a1, unsigned int a2)
{
  if ((*(*a1 + 16))(a1) == a2)
  {
    return 1;
  }

  if (a1[16] == 4)
  {
    re::DynamicArray<float>::resize((a1 + 24), a2);
    return 1;
  }

  return 0;
}