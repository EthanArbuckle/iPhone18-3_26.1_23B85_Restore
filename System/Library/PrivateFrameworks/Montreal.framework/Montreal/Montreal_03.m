void sub_19D2FE460(uint64_t a1)
{
  (*(**(a1 + 1552) + 64))(*(a1 + 1552));
  (*(**(a1 + 1552) + 64))(*(a1 + 1552));
  sub_19D41C548(23);
}

uint64_t sub_19D2FE4F8(uint64_t result, double a2, double a3, int32x4_t a4)
{
  *&a3 = -*&a2;
  v4 = *(result + 52);
  if (v4 < 1)
  {
    goto LABEL_83;
  }

  v5 = **(result + 2568);
  if (v4 >= 8)
  {
    v6 = v4 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v7 = vdupq_lane_s32(*&a2, 0);
    v8 = (v5 + 8);
    v9 = v6;
    while (1)
    {
      v10 = *(v8 - 4);
      v11 = vcvtq_f32_s32(vmovl_s16(*v10.i8));
      v12 = vcvtq_f32_s32(vmovl_high_s16(v10));
      v13 = vuzp1q_s16(vcgtq_f32(a4, v11), vcgtq_f32(a4, v12));
      v14 = vuzp1q_s16(vcgeq_f32(v11, a4), vcgeq_f32(v12, a4));
      v15 = vuzp1q_s16(vcgtq_f32(v11, v7), vcgtq_f32(v12, v7));
      v16 = vmovn_s16(vandq_s8(v14, v15));
      v17 = vmovn_s16(vorrq_s8(v13, v15));
      v18 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v16, *&a2)), 0x1FuLL)), v7, a4);
      if (v17.i8[0])
      {
        *(v8 - 4) = *v18.i32;
        if ((v17.i8[1] & 1) == 0)
        {
LABEL_8:
          if ((v17.i8[2] & 1) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      else if ((v17.i8[1] & 1) == 0)
      {
        goto LABEL_8;
      }

      *(v8 - 3) = *&v18.i32[1];
      if ((v17.i8[2] & 1) == 0)
      {
LABEL_9:
        if ((v17.i8[3] & 1) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        *(v8 - 1) = *&v18.i32[3];
        goto LABEL_11;
      }

LABEL_18:
      *(v8 - 2) = *&v18.i32[2];
      if (v17.i8[3])
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v16, *&a2)), 0x1FuLL)), v7, a4);
      if (v17.i8[4])
      {
        *v8 = *v19.i32;
        if ((v17.i8[5] & 1) == 0)
        {
LABEL_13:
          if ((v17.i8[6] & 1) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }
      }

      else if ((v17.i8[5] & 1) == 0)
      {
        goto LABEL_13;
      }

      v8[1] = *&v19.i32[1];
      if ((v17.i8[6] & 1) == 0)
      {
LABEL_14:
        if (v17.i8[7])
        {
          goto LABEL_23;
        }

        goto LABEL_5;
      }

LABEL_22:
      v8[2] = *&v19.i32[2];
      if (v17.i8[7])
      {
LABEL_23:
        v8[3] = *&v19.i32[3];
      }

LABEL_5:
      v8 += 8;
      v9 -= 8;
      if (!v9)
      {
        if (v6 == v4)
        {
          goto LABEL_25;
        }

        goto LABEL_27;
      }
    }
  }

  v6 = 0;
LABEL_27:
  v22 = v4 - v6;
  v23 = (v5 + 2 * v6);
  do
  {
    a4.i16[0] = *v23;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v24 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v24 > *&a2))
    {
      *v23 = *a4.i32;
    }

    ++v23;
    --v22;
  }

  while (v22);
LABEL_25:
  v20 = **(result + 2576);
  if (v4 >= 8)
  {
    v21 = v4 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v26 = vdupq_lane_s32(*&a2, 0);
    v27 = (v20 + 8);
    v28 = v21;
    while (1)
    {
      v29 = *(v27 - 4);
      v30 = vcvtq_f32_s32(vmovl_s16(*v29.i8));
      v31 = vcvtq_f32_s32(vmovl_high_s16(v29));
      v32 = vuzp1q_s16(vcgtq_f32(a4, v30), vcgtq_f32(a4, v31));
      v33 = vuzp1q_s16(vcgeq_f32(v30, a4), vcgeq_f32(v31, a4));
      v34 = vuzp1q_s16(vcgtq_f32(v30, v26), vcgtq_f32(v31, v26));
      v35 = vmovn_s16(vandq_s8(v33, v34));
      v36 = vmovn_s16(vorrq_s8(v32, v34));
      v37 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v35, *&a2)), 0x1FuLL)), v26, a4);
      if (v36.i8[0])
      {
        *(v27 - 4) = *v37.i32;
        if ((v36.i8[1] & 1) == 0)
        {
LABEL_37:
          if ((v36.i8[2] & 1) == 0)
          {
            goto LABEL_38;
          }

          goto LABEL_47;
        }
      }

      else if ((v36.i8[1] & 1) == 0)
      {
        goto LABEL_37;
      }

      *(v27 - 3) = *&v37.i32[1];
      if ((v36.i8[2] & 1) == 0)
      {
LABEL_38:
        if ((v36.i8[3] & 1) == 0)
        {
          goto LABEL_40;
        }

LABEL_39:
        *(v27 - 1) = *&v37.i32[3];
        goto LABEL_40;
      }

LABEL_47:
      *(v27 - 2) = *&v37.i32[2];
      if (v36.i8[3])
      {
        goto LABEL_39;
      }

LABEL_40:
      v38 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v35, *&a2)), 0x1FuLL)), v26, a4);
      if (v36.i8[4])
      {
        *v27 = *v38.i32;
        if ((v36.i8[5] & 1) == 0)
        {
LABEL_42:
          if ((v36.i8[6] & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_51;
        }
      }

      else if ((v36.i8[5] & 1) == 0)
      {
        goto LABEL_42;
      }

      v27[1] = *&v38.i32[1];
      if ((v36.i8[6] & 1) == 0)
      {
LABEL_43:
        if (v36.i8[7])
        {
          goto LABEL_52;
        }

        goto LABEL_34;
      }

LABEL_51:
      v27[2] = *&v38.i32[2];
      if (v36.i8[7])
      {
LABEL_52:
        v27[3] = *&v38.i32[3];
      }

LABEL_34:
      v27 += 8;
      v28 -= 8;
      if (!v28)
      {
        if (v21 == v4)
        {
          goto LABEL_54;
        }

        goto LABEL_56;
      }
    }
  }

  v21 = 0;
LABEL_56:
  v41 = v4 - v21;
  v42 = (v20 + 2 * v21);
  do
  {
    a4.i16[0] = *v42;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v43 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v43 > *&a2))
    {
      *v42 = *a4.i32;
    }

    ++v42;
    --v41;
  }

  while (v41);
LABEL_54:
  v39 = **(result + 2584);
  if (v4 < 8)
  {
    v40 = 0;
    goto LABEL_86;
  }

  v40 = v4 & 0x7FFFFFF8;
  a4 = vdupq_lane_s32(*&a3, 0);
  v44 = vdupq_lane_s32(*&a2, 0);
  v45 = (v39 + 8);
  v46 = v40;
  do
  {
    v47 = *(v45 - 4);
    v48 = vcvtq_f32_s32(vmovl_s16(*v47.i8));
    v49 = vcvtq_f32_s32(vmovl_high_s16(v47));
    v50 = vuzp1q_s16(vcgtq_f32(a4, v48), vcgtq_f32(a4, v49));
    v51 = vuzp1q_s16(vcgeq_f32(v48, a4), vcgeq_f32(v49, a4));
    v52 = vuzp1q_s16(vcgtq_f32(v48, v44), vcgtq_f32(v49, v44));
    v53 = vmovn_s16(vandq_s8(v51, v52));
    v54 = vmovn_s16(vorrq_s8(v50, v52));
    v55 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v53, *&a2)), 0x1FuLL)), v44, a4);
    if (v54.i8[0])
    {
      *(v45 - 4) = *v55.i32;
      if ((v54.i8[1] & 1) == 0)
      {
LABEL_66:
        if ((v54.i8[2] & 1) == 0)
        {
          goto LABEL_67;
        }

        goto LABEL_76;
      }
    }

    else if ((v54.i8[1] & 1) == 0)
    {
      goto LABEL_66;
    }

    *(v45 - 3) = *&v55.i32[1];
    if ((v54.i8[2] & 1) == 0)
    {
LABEL_67:
      if ((v54.i8[3] & 1) == 0)
      {
        goto LABEL_69;
      }

LABEL_68:
      *(v45 - 1) = *&v55.i32[3];
      goto LABEL_69;
    }

LABEL_76:
    *(v45 - 2) = *&v55.i32[2];
    if (v54.i8[3])
    {
      goto LABEL_68;
    }

LABEL_69:
    v56 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v53, *&a2)), 0x1FuLL)), v44, a4);
    if (v54.i8[4])
    {
      *v45 = *v56.i32;
      if ((v54.i8[5] & 1) == 0)
      {
LABEL_71:
        if (v54.i8[6])
        {
          goto LABEL_80;
        }

        goto LABEL_72;
      }
    }

    else if ((v54.i8[5] & 1) == 0)
    {
      goto LABEL_71;
    }

    v45[1] = *&v56.i32[1];
    if (v54.i8[6])
    {
LABEL_80:
      v45[2] = *&v56.i32[2];
      if ((v54.i8[7] & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_81;
    }

LABEL_72:
    if ((v54.i8[7] & 1) == 0)
    {
      goto LABEL_63;
    }

LABEL_81:
    v45[3] = *&v56.i32[3];
LABEL_63:
    v45 += 8;
    v46 -= 8;
  }

  while (v46);
  if (v40 == v4)
  {
    goto LABEL_83;
  }

LABEL_86:
  v60 = v4 - v40;
  v61 = (v39 + 2 * v40);
  do
  {
    a4.i16[0] = *v61;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v62 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v62 > *&a2))
    {
      *v61 = *a4.i32;
    }

    ++v61;
    --v60;
  }

  while (v60);
LABEL_83:
  v57 = (*(result + 48) * v4);
  if (v57 < 1)
  {
    goto LABEL_200;
  }

  v58 = **(result + 2504);
  if (v57 >= 8)
  {
    v59 = v57 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v63 = vdupq_lane_s32(*&a2, 0);
    v64 = (v58 + 8);
    v65 = v59;
    while (1)
    {
      v66 = *(v64 - 4);
      v67 = vcvtq_f32_s32(vmovl_s16(*v66.i8));
      v68 = vcvtq_f32_s32(vmovl_high_s16(v66));
      v69 = vuzp1q_s16(vcgtq_f32(a4, v67), vcgtq_f32(a4, v68));
      v70 = vuzp1q_s16(vcgeq_f32(v67, a4), vcgeq_f32(v68, a4));
      v71 = vuzp1q_s16(vcgtq_f32(v67, v63), vcgtq_f32(v68, v63));
      v72 = vmovn_s16(vandq_s8(v70, v71));
      v73 = vmovn_s16(vorrq_s8(v69, v71));
      v74 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v72, *&a2)), 0x1FuLL)), v63, a4);
      if (v73.i8[0])
      {
        *(v64 - 4) = *v74.i32;
        if ((v73.i8[1] & 1) == 0)
        {
LABEL_96:
          if ((v73.i8[2] & 1) == 0)
          {
            goto LABEL_97;
          }

          goto LABEL_106;
        }
      }

      else if ((v73.i8[1] & 1) == 0)
      {
        goto LABEL_96;
      }

      *(v64 - 3) = *&v74.i32[1];
      if ((v73.i8[2] & 1) == 0)
      {
LABEL_97:
        if ((v73.i8[3] & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_98:
        *(v64 - 1) = *&v74.i32[3];
        goto LABEL_99;
      }

LABEL_106:
      *(v64 - 2) = *&v74.i32[2];
      if (v73.i8[3])
      {
        goto LABEL_98;
      }

LABEL_99:
      v75 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v72, *&a2)), 0x1FuLL)), v63, a4);
      if (v73.i8[4])
      {
        *v64 = *v75.i32;
        if ((v73.i8[5] & 1) == 0)
        {
LABEL_101:
          if ((v73.i8[6] & 1) == 0)
          {
            goto LABEL_102;
          }

          goto LABEL_110;
        }
      }

      else if ((v73.i8[5] & 1) == 0)
      {
        goto LABEL_101;
      }

      v64[1] = *&v75.i32[1];
      if ((v73.i8[6] & 1) == 0)
      {
LABEL_102:
        if (v73.i8[7])
        {
          goto LABEL_111;
        }

        goto LABEL_93;
      }

LABEL_110:
      v64[2] = *&v75.i32[2];
      if (v73.i8[7])
      {
LABEL_111:
        v64[3] = *&v75.i32[3];
      }

LABEL_93:
      v64 += 8;
      v65 -= 8;
      if (!v65)
      {
        if (v59 == v57)
        {
          goto LABEL_113;
        }

        goto LABEL_115;
      }
    }
  }

  v59 = 0;
LABEL_115:
  v78 = v57 - v59;
  v79 = (v58 + 2 * v59);
  do
  {
    a4.i16[0] = *v79;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v80 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v80 > *&a2))
    {
      *v79 = *a4.i32;
    }

    ++v79;
    --v78;
  }

  while (v78);
LABEL_113:
  v76 = **(result + 2512);
  if (v57 >= 8)
  {
    v77 = v57 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v81 = vdupq_lane_s32(*&a2, 0);
    v82 = (v76 + 8);
    v83 = v77;
    while (1)
    {
      v84 = *(v82 - 4);
      v85 = vcvtq_f32_s32(vmovl_s16(*v84.i8));
      v86 = vcvtq_f32_s32(vmovl_high_s16(v84));
      v87 = vuzp1q_s16(vcgtq_f32(a4, v85), vcgtq_f32(a4, v86));
      v88 = vuzp1q_s16(vcgeq_f32(v85, a4), vcgeq_f32(v86, a4));
      v89 = vuzp1q_s16(vcgtq_f32(v85, v81), vcgtq_f32(v86, v81));
      v90 = vmovn_s16(vandq_s8(v88, v89));
      v91 = vmovn_s16(vorrq_s8(v87, v89));
      v92 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v90, *&a2)), 0x1FuLL)), v81, a4);
      if (v91.i8[0])
      {
        *(v82 - 4) = *v92.i32;
        if ((v91.i8[1] & 1) == 0)
        {
LABEL_125:
          if ((v91.i8[2] & 1) == 0)
          {
            goto LABEL_126;
          }

          goto LABEL_135;
        }
      }

      else if ((v91.i8[1] & 1) == 0)
      {
        goto LABEL_125;
      }

      *(v82 - 3) = *&v92.i32[1];
      if ((v91.i8[2] & 1) == 0)
      {
LABEL_126:
        if ((v91.i8[3] & 1) == 0)
        {
          goto LABEL_128;
        }

LABEL_127:
        *(v82 - 1) = *&v92.i32[3];
        goto LABEL_128;
      }

LABEL_135:
      *(v82 - 2) = *&v92.i32[2];
      if (v91.i8[3])
      {
        goto LABEL_127;
      }

LABEL_128:
      v93 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v90, *&a2)), 0x1FuLL)), v81, a4);
      if (v91.i8[4])
      {
        *v82 = *v93.i32;
        if ((v91.i8[5] & 1) == 0)
        {
LABEL_130:
          if ((v91.i8[6] & 1) == 0)
          {
            goto LABEL_131;
          }

          goto LABEL_139;
        }
      }

      else if ((v91.i8[5] & 1) == 0)
      {
        goto LABEL_130;
      }

      v82[1] = *&v93.i32[1];
      if ((v91.i8[6] & 1) == 0)
      {
LABEL_131:
        if (v91.i8[7])
        {
          goto LABEL_140;
        }

        goto LABEL_122;
      }

LABEL_139:
      v82[2] = *&v93.i32[2];
      if (v91.i8[7])
      {
LABEL_140:
        v82[3] = *&v93.i32[3];
      }

LABEL_122:
      v82 += 8;
      v83 -= 8;
      if (!v83)
      {
        if (v77 == v57)
        {
          goto LABEL_142;
        }

        goto LABEL_144;
      }
    }
  }

  v77 = 0;
LABEL_144:
  v96 = v57 - v77;
  v97 = (v76 + 2 * v77);
  do
  {
    a4.i16[0] = *v97;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v98 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v98 > *&a2))
    {
      *v97 = *a4.i32;
    }

    ++v97;
    --v96;
  }

  while (v96);
LABEL_142:
  v94 = **(result + 2520);
  if (v57 >= 8)
  {
    v95 = v57 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v99 = vdupq_lane_s32(*&a2, 0);
    v100 = (v94 + 8);
    v101 = v95;
    while (1)
    {
      v102 = *(v100 - 4);
      v103 = vcvtq_f32_s32(vmovl_s16(*v102.i8));
      v104 = vcvtq_f32_s32(vmovl_high_s16(v102));
      v105 = vuzp1q_s16(vcgtq_f32(a4, v103), vcgtq_f32(a4, v104));
      v106 = vuzp1q_s16(vcgeq_f32(v103, a4), vcgeq_f32(v104, a4));
      v107 = vuzp1q_s16(vcgtq_f32(v103, v99), vcgtq_f32(v104, v99));
      v108 = vmovn_s16(vandq_s8(v106, v107));
      v109 = vmovn_s16(vorrq_s8(v105, v107));
      v110 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v108, *&a2)), 0x1FuLL)), v99, a4);
      if (v109.i8[0])
      {
        *(v100 - 4) = *v110.i32;
        if ((v109.i8[1] & 1) == 0)
        {
LABEL_154:
          if ((v109.i8[2] & 1) == 0)
          {
            goto LABEL_155;
          }

          goto LABEL_164;
        }
      }

      else if ((v109.i8[1] & 1) == 0)
      {
        goto LABEL_154;
      }

      *(v100 - 3) = *&v110.i32[1];
      if ((v109.i8[2] & 1) == 0)
      {
LABEL_155:
        if ((v109.i8[3] & 1) == 0)
        {
          goto LABEL_157;
        }

LABEL_156:
        *(v100 - 1) = *&v110.i32[3];
        goto LABEL_157;
      }

LABEL_164:
      *(v100 - 2) = *&v110.i32[2];
      if (v109.i8[3])
      {
        goto LABEL_156;
      }

LABEL_157:
      v111 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v108, *&a2)), 0x1FuLL)), v99, a4);
      if (v109.i8[4])
      {
        *v100 = *v111.i32;
        if ((v109.i8[5] & 1) == 0)
        {
LABEL_159:
          if ((v109.i8[6] & 1) == 0)
          {
            goto LABEL_160;
          }

          goto LABEL_168;
        }
      }

      else if ((v109.i8[5] & 1) == 0)
      {
        goto LABEL_159;
      }

      v100[1] = *&v111.i32[1];
      if ((v109.i8[6] & 1) == 0)
      {
LABEL_160:
        if (v109.i8[7])
        {
          goto LABEL_169;
        }

        goto LABEL_151;
      }

LABEL_168:
      v100[2] = *&v111.i32[2];
      if (v109.i8[7])
      {
LABEL_169:
        v100[3] = *&v111.i32[3];
      }

LABEL_151:
      v100 += 8;
      v101 -= 8;
      if (!v101)
      {
        if (v95 == v57)
        {
          goto LABEL_171;
        }

        goto LABEL_173;
      }
    }
  }

  v95 = 0;
LABEL_173:
  v114 = v57 - v95;
  v115 = (v94 + 2 * v95);
  do
  {
    a4.i16[0] = *v115;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v116 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v116 > *&a2))
    {
      *v115 = *a4.i32;
    }

    ++v115;
    --v114;
  }

  while (v114);
LABEL_171:
  v112 = **(result + 2528);
  if (v57 >= 8)
  {
    v113 = v57 & 0x7FFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v117 = vdupq_lane_s32(*&a2, 0);
    v118 = (v112 + 8);
    v119 = v113;
    while (1)
    {
      v120 = *(v118 - 4);
      v121 = vcvtq_f32_s32(vmovl_s16(*v120.i8));
      v122 = vcvtq_f32_s32(vmovl_high_s16(v120));
      v123 = vuzp1q_s16(vcgtq_f32(a4, v121), vcgtq_f32(a4, v122));
      v124 = vuzp1q_s16(vcgeq_f32(v121, a4), vcgeq_f32(v122, a4));
      v125 = vuzp1q_s16(vcgtq_f32(v121, v117), vcgtq_f32(v122, v117));
      v126 = vmovn_s16(vandq_s8(v124, v125));
      v127 = vmovn_s16(vorrq_s8(v123, v125));
      v128 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v126, *&a2)), 0x1FuLL)), v117, a4);
      if (v127.i8[0])
      {
        *(v118 - 4) = *v128.i32;
        if ((v127.i8[1] & 1) == 0)
        {
LABEL_183:
          if ((v127.i8[2] & 1) == 0)
          {
            goto LABEL_184;
          }

          goto LABEL_193;
        }
      }

      else if ((v127.i8[1] & 1) == 0)
      {
        goto LABEL_183;
      }

      *(v118 - 3) = *&v128.i32[1];
      if ((v127.i8[2] & 1) == 0)
      {
LABEL_184:
        if ((v127.i8[3] & 1) == 0)
        {
          goto LABEL_186;
        }

LABEL_185:
        *(v118 - 1) = *&v128.i32[3];
        goto LABEL_186;
      }

LABEL_193:
      *(v118 - 2) = *&v128.i32[2];
      if (v127.i8[3])
      {
        goto LABEL_185;
      }

LABEL_186:
      v129 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v126, *&a2)), 0x1FuLL)), v117, a4);
      if (v127.i8[4])
      {
        *v118 = *v129.i32;
        if ((v127.i8[5] & 1) == 0)
        {
LABEL_188:
          if ((v127.i8[6] & 1) == 0)
          {
            goto LABEL_189;
          }

          goto LABEL_197;
        }
      }

      else if ((v127.i8[5] & 1) == 0)
      {
        goto LABEL_188;
      }

      v118[1] = *&v129.i32[1];
      if ((v127.i8[6] & 1) == 0)
      {
LABEL_189:
        if (v127.i8[7])
        {
          goto LABEL_198;
        }

        goto LABEL_180;
      }

LABEL_197:
      v118[2] = *&v129.i32[2];
      if (v127.i8[7])
      {
LABEL_198:
        v118[3] = *&v129.i32[3];
      }

LABEL_180:
      v118 += 8;
      v119 -= 8;
      if (!v119)
      {
        if (v113 == v57)
        {
          goto LABEL_200;
        }

        goto LABEL_203;
      }
    }
  }

  v113 = 0;
LABEL_203:
  v133 = v57 - v113;
  v134 = (v112 + 2 * v113);
  do
  {
    a4.i16[0] = *v134;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v135 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v135 > *&a2))
    {
      *v134 = *a4.i32;
    }

    ++v134;
    --v133;
  }

  while (v133);
LABEL_200:
  if (!v4)
  {
    return result;
  }

  v130 = (v4 * v4);
  v131 = **(result + 2536);
  if (v130 >= 8)
  {
    v132 = v130 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v136 = vdupq_lane_s32(*&a2, 0);
    v137 = (v131 + 8);
    v138 = v132;
    while (1)
    {
      v139 = *(v137 - 4);
      v140 = vcvtq_f32_s32(vmovl_s16(*v139.i8));
      v141 = vcvtq_f32_s32(vmovl_high_s16(v139));
      v142 = vuzp1q_s16(vcgtq_f32(a4, v140), vcgtq_f32(a4, v141));
      v143 = vuzp1q_s16(vcgeq_f32(v140, a4), vcgeq_f32(v141, a4));
      v144 = vuzp1q_s16(vcgtq_f32(v140, v136), vcgtq_f32(v141, v136));
      v145 = vmovn_s16(vandq_s8(v143, v144));
      v146 = vmovn_s16(vorrq_s8(v142, v144));
      v147 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v145, *&a2)), 0x1FuLL)), v136, a4);
      if (v146.i8[0])
      {
        *(v137 - 4) = *v147.i32;
        if ((v146.i8[1] & 1) == 0)
        {
LABEL_213:
          if ((v146.i8[2] & 1) == 0)
          {
            goto LABEL_214;
          }

          goto LABEL_223;
        }
      }

      else if ((v146.i8[1] & 1) == 0)
      {
        goto LABEL_213;
      }

      *(v137 - 3) = *&v147.i32[1];
      if ((v146.i8[2] & 1) == 0)
      {
LABEL_214:
        if ((v146.i8[3] & 1) == 0)
        {
          goto LABEL_216;
        }

LABEL_215:
        *(v137 - 1) = *&v147.i32[3];
        goto LABEL_216;
      }

LABEL_223:
      *(v137 - 2) = *&v147.i32[2];
      if (v146.i8[3])
      {
        goto LABEL_215;
      }

LABEL_216:
      v148 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v145, *&a2)), 0x1FuLL)), v136, a4);
      if (v146.i8[4])
      {
        *v137 = *v148.i32;
        if ((v146.i8[5] & 1) == 0)
        {
LABEL_218:
          if ((v146.i8[6] & 1) == 0)
          {
            goto LABEL_219;
          }

          goto LABEL_227;
        }
      }

      else if ((v146.i8[5] & 1) == 0)
      {
        goto LABEL_218;
      }

      v137[1] = *&v148.i32[1];
      if ((v146.i8[6] & 1) == 0)
      {
LABEL_219:
        if (v146.i8[7])
        {
          goto LABEL_228;
        }

        goto LABEL_210;
      }

LABEL_227:
      v137[2] = *&v148.i32[2];
      if (v146.i8[7])
      {
LABEL_228:
        v137[3] = *&v148.i32[3];
      }

LABEL_210:
      v137 += 8;
      v138 -= 8;
      if (!v138)
      {
        if (v132 == v130)
        {
          goto LABEL_230;
        }

        goto LABEL_232;
      }
    }
  }

  v132 = 0;
LABEL_232:
  v151 = v130 - v132;
  v152 = (v131 + 2 * v132);
  do
  {
    a4.i16[0] = *v152;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v153 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v153 > *&a2))
    {
      *v152 = *a4.i32;
    }

    ++v152;
    --v151;
  }

  while (v151);
LABEL_230:
  v149 = **(result + 2544);
  if (v130 >= 8)
  {
    v150 = v130 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v154 = vdupq_lane_s32(*&a2, 0);
    v155 = (v149 + 8);
    v156 = v150;
    while (1)
    {
      v157 = *(v155 - 4);
      v158 = vcvtq_f32_s32(vmovl_s16(*v157.i8));
      v159 = vcvtq_f32_s32(vmovl_high_s16(v157));
      v160 = vuzp1q_s16(vcgtq_f32(a4, v158), vcgtq_f32(a4, v159));
      v161 = vuzp1q_s16(vcgeq_f32(v158, a4), vcgeq_f32(v159, a4));
      v162 = vuzp1q_s16(vcgtq_f32(v158, v154), vcgtq_f32(v159, v154));
      v163 = vmovn_s16(vandq_s8(v161, v162));
      v164 = vmovn_s16(vorrq_s8(v160, v162));
      v165 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v163, *&a2)), 0x1FuLL)), v154, a4);
      if (v164.i8[0])
      {
        *(v155 - 4) = *v165.i32;
        if ((v164.i8[1] & 1) == 0)
        {
LABEL_242:
          if ((v164.i8[2] & 1) == 0)
          {
            goto LABEL_243;
          }

          goto LABEL_252;
        }
      }

      else if ((v164.i8[1] & 1) == 0)
      {
        goto LABEL_242;
      }

      *(v155 - 3) = *&v165.i32[1];
      if ((v164.i8[2] & 1) == 0)
      {
LABEL_243:
        if ((v164.i8[3] & 1) == 0)
        {
          goto LABEL_245;
        }

LABEL_244:
        *(v155 - 1) = *&v165.i32[3];
        goto LABEL_245;
      }

LABEL_252:
      *(v155 - 2) = *&v165.i32[2];
      if (v164.i8[3])
      {
        goto LABEL_244;
      }

LABEL_245:
      v166 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v163, *&a2)), 0x1FuLL)), v154, a4);
      if (v164.i8[4])
      {
        *v155 = *v166.i32;
        if ((v164.i8[5] & 1) == 0)
        {
LABEL_247:
          if ((v164.i8[6] & 1) == 0)
          {
            goto LABEL_248;
          }

          goto LABEL_256;
        }
      }

      else if ((v164.i8[5] & 1) == 0)
      {
        goto LABEL_247;
      }

      v155[1] = *&v166.i32[1];
      if ((v164.i8[6] & 1) == 0)
      {
LABEL_248:
        if (v164.i8[7])
        {
          goto LABEL_257;
        }

        goto LABEL_239;
      }

LABEL_256:
      v155[2] = *&v166.i32[2];
      if (v164.i8[7])
      {
LABEL_257:
        v155[3] = *&v166.i32[3];
      }

LABEL_239:
      v155 += 8;
      v156 -= 8;
      if (!v156)
      {
        if (v150 == v130)
        {
          goto LABEL_259;
        }

        goto LABEL_261;
      }
    }
  }

  v150 = 0;
LABEL_261:
  v169 = v130 - v150;
  v170 = (v149 + 2 * v150);
  do
  {
    a4.i16[0] = *v170;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v171 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v171 > *&a2))
    {
      *v170 = *a4.i32;
    }

    ++v170;
    --v169;
  }

  while (v169);
LABEL_259:
  v167 = **(result + 2552);
  if (v130 >= 8)
  {
    v168 = v130 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v172 = vdupq_lane_s32(*&a2, 0);
    v173 = (v167 + 8);
    v174 = v168;
    while (1)
    {
      v175 = *(v173 - 4);
      v176 = vcvtq_f32_s32(vmovl_s16(*v175.i8));
      v177 = vcvtq_f32_s32(vmovl_high_s16(v175));
      v178 = vuzp1q_s16(vcgtq_f32(a4, v176), vcgtq_f32(a4, v177));
      v179 = vuzp1q_s16(vcgeq_f32(v176, a4), vcgeq_f32(v177, a4));
      v180 = vuzp1q_s16(vcgtq_f32(v176, v172), vcgtq_f32(v177, v172));
      v181 = vmovn_s16(vandq_s8(v179, v180));
      v182 = vmovn_s16(vorrq_s8(v178, v180));
      v183 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v181, *&a2)), 0x1FuLL)), v172, a4);
      if (v182.i8[0])
      {
        *(v173 - 4) = *v183.i32;
        if ((v182.i8[1] & 1) == 0)
        {
LABEL_271:
          if ((v182.i8[2] & 1) == 0)
          {
            goto LABEL_272;
          }

          goto LABEL_281;
        }
      }

      else if ((v182.i8[1] & 1) == 0)
      {
        goto LABEL_271;
      }

      *(v173 - 3) = *&v183.i32[1];
      if ((v182.i8[2] & 1) == 0)
      {
LABEL_272:
        if ((v182.i8[3] & 1) == 0)
        {
          goto LABEL_274;
        }

LABEL_273:
        *(v173 - 1) = *&v183.i32[3];
        goto LABEL_274;
      }

LABEL_281:
      *(v173 - 2) = *&v183.i32[2];
      if (v182.i8[3])
      {
        goto LABEL_273;
      }

LABEL_274:
      v184 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v181, *&a2)), 0x1FuLL)), v172, a4);
      if (v182.i8[4])
      {
        *v173 = *v184.i32;
        if ((v182.i8[5] & 1) == 0)
        {
LABEL_276:
          if ((v182.i8[6] & 1) == 0)
          {
            goto LABEL_277;
          }

          goto LABEL_285;
        }
      }

      else if ((v182.i8[5] & 1) == 0)
      {
        goto LABEL_276;
      }

      v173[1] = *&v184.i32[1];
      if ((v182.i8[6] & 1) == 0)
      {
LABEL_277:
        if (v182.i8[7])
        {
          goto LABEL_286;
        }

        goto LABEL_268;
      }

LABEL_285:
      v173[2] = *&v184.i32[2];
      if (v182.i8[7])
      {
LABEL_286:
        v173[3] = *&v184.i32[3];
      }

LABEL_268:
      v173 += 8;
      v174 -= 8;
      if (!v174)
      {
        if (v168 == v130)
        {
          goto LABEL_288;
        }

        goto LABEL_290;
      }
    }
  }

  v168 = 0;
LABEL_290:
  v187 = v130 - v168;
  v188 = (v167 + 2 * v168);
  do
  {
    a4.i16[0] = *v188;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v189 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v189 > *&a2))
    {
      *v188 = *a4.i32;
    }

    ++v188;
    --v187;
  }

  while (v187);
LABEL_288:
  v185 = **(result + 2560);
  if (v130 >= 8)
  {
    v186 = v130 & 0xFFFFFFF8;
    a4 = vdupq_lane_s32(*&a3, 0);
    v190 = vdupq_lane_s32(*&a2, 0);
    v191 = (v185 + 8);
    v192 = v186;
    while (1)
    {
      v193 = *(v191 - 4);
      v194 = vcvtq_f32_s32(vmovl_s16(*v193.i8));
      v195 = vcvtq_f32_s32(vmovl_high_s16(v193));
      v196 = vuzp1q_s16(vcgtq_f32(a4, v194), vcgtq_f32(a4, v195));
      v197 = vuzp1q_s16(vcgeq_f32(v194, a4), vcgeq_f32(v195, a4));
      v198 = vuzp1q_s16(vcgtq_f32(v194, v190), vcgtq_f32(v195, v190));
      v199 = vmovn_s16(vandq_s8(v197, v198));
      v200 = vmovn_s16(vorrq_s8(v196, v198));
      v201 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v199, *&a2)), 0x1FuLL)), v190, a4);
      if (v200.i8[0])
      {
        *(v191 - 4) = *v201.i32;
        if ((v200.i8[1] & 1) == 0)
        {
LABEL_300:
          if ((v200.i8[2] & 1) == 0)
          {
            goto LABEL_301;
          }

          goto LABEL_310;
        }
      }

      else if ((v200.i8[1] & 1) == 0)
      {
        goto LABEL_300;
      }

      *(v191 - 3) = *&v201.i32[1];
      if ((v200.i8[2] & 1) == 0)
      {
LABEL_301:
        if ((v200.i8[3] & 1) == 0)
        {
          goto LABEL_303;
        }

LABEL_302:
        *(v191 - 1) = *&v201.i32[3];
        goto LABEL_303;
      }

LABEL_310:
      *(v191 - 2) = *&v201.i32[2];
      if (v200.i8[3])
      {
        goto LABEL_302;
      }

LABEL_303:
      v202 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v199, *&a2)), 0x1FuLL)), v190, a4);
      if (v200.i8[4])
      {
        *v191 = *v202.i32;
        if ((v200.i8[5] & 1) == 0)
        {
LABEL_305:
          if ((v200.i8[6] & 1) == 0)
          {
            goto LABEL_306;
          }

          goto LABEL_314;
        }
      }

      else if ((v200.i8[5] & 1) == 0)
      {
        goto LABEL_305;
      }

      v191[1] = *&v202.i32[1];
      if ((v200.i8[6] & 1) == 0)
      {
LABEL_306:
        if (v200.i8[7])
        {
          goto LABEL_315;
        }

        goto LABEL_297;
      }

LABEL_314:
      v191[2] = *&v202.i32[2];
      if (v200.i8[7])
      {
LABEL_315:
        v191[3] = *&v202.i32[3];
      }

LABEL_297:
      v191 += 8;
      v192 -= 8;
      if (!v192)
      {
        if (v186 == v130)
        {
          return result;
        }

        goto LABEL_318;
      }
    }
  }

  v186 = 0;
LABEL_318:
  v203 = v130 - v186;
  v204 = (v185 + 2 * v186);
  do
  {
    a4.i16[0] = *v204;
    a4.i64[0] = vmovl_s16(*a4.i8).u64[0];
    v205 = a4.i32[0];
    v25 = a4.i32[0] < *&a3;
    *a4.i32 = -*&a2;
    if (v25 || (a4.i32[0] = LODWORD(a2), v205 > *&a2))
    {
      *v204 = *a4.i32;
    }

    ++v204;
    --v203;
  }

  while (v203);
  return result;
}

uint64_t sub_19D2FF914(uint64_t result, float a2, __n128 a3)
{
  v3 = *(result + 52);
  if (v3 < 1)
  {
    goto LABEL_41;
  }

  v4 = **(result + 2568);
  if (v3 < 4)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if (v3 >= 0x10)
  {
    v5 = v3 & 0x7FFFFFF0;
    v6 = v4 + 2;
    v7 = v5;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v6[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v6[-2].i8)), a2)));
      v8 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v6)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v6->i8)), a2)));
      *v6[-2].i8 = a3;
      *v6->i8 = v8;
      v6 += 4;
      v7 -= 16;
    }

    while (v7);
    if (v5 == v3)
    {
      goto LABEL_15;
    }

    if ((v3 & 0xC) == 0)
    {
LABEL_13:
      v12 = v3 - v5;
      v13 = v4 + v5;
      do
      {
        a3.n128_u16[0] = *v13;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v13++ = a3.n128_f32[0];
        --v12;
      }

      while (v12);
      goto LABEL_15;
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = v5;
  v5 = v3 & 0x7FFFFFFC;
  v10 = (v4 + 2 * v9);
  v11 = v9 - v5;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v10)), a2)));
    *v10++ = a3.n128_u64[0];
    v11 += 4;
  }

  while (v11);
  if (v5 != v3)
  {
    goto LABEL_13;
  }

LABEL_15:
  v14 = **(result + 2576);
  if (v3 >= 4)
  {
    if (v3 >= 0x10)
    {
      v15 = v3 & 0x7FFFFFF0;
      v16 = v14 + 2;
      v17 = v15;
      do
      {
        a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v16[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v16[-2].i8)), a2)));
        v18 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v16)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v16->i8)), a2)));
        *v16[-2].i8 = a3;
        *v16->i8 = v18;
        v16 += 4;
        v17 -= 16;
      }

      while (v17);
      if (v15 == v3)
      {
        goto LABEL_28;
      }

      if ((v3 & 0xC) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = 0;
    }

    v19 = v15;
    v15 = v3 & 0x7FFFFFFC;
    v20 = (v14 + 2 * v19);
    v21 = v19 - v15;
    do
    {
      a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v20)), a2)));
      *v20++ = a3.n128_u64[0];
      v21 += 4;
    }

    while (v21);
    if (v15 == v3)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v15 = 0;
LABEL_26:
  v22 = v3 - v15;
  v23 = v14 + v15;
  do
  {
    a3.n128_u16[0] = *v23;
    a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
    a3.n128_f32[0] = a3.n128_i32[0] * a2;
    *v23++ = a3.n128_f32[0];
    --v22;
  }

  while (v22);
LABEL_28:
  v24 = **(result + 2584);
  if (v3 < 4)
  {
    v25 = 0;
    goto LABEL_39;
  }

  if (v3 >= 0x10)
  {
    v25 = v3 & 0x7FFFFFF0;
    v26 = v24 + 2;
    v27 = v25;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v26[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v26[-2].i8)), a2)));
      v28 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v26)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v26->i8)), a2)));
      *v26[-2].i8 = a3;
      *v26->i8 = v28;
      v26 += 4;
      v27 -= 16;
    }

    while (v27);
    if (v25 == v3)
    {
      goto LABEL_41;
    }

    if ((v3 & 0xC) == 0)
    {
LABEL_39:
      v32 = v3 - v25;
      v33 = v24 + v25;
      do
      {
        a3.n128_u16[0] = *v33;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v33++ = a3.n128_f32[0];
        --v32;
      }

      while (v32);
      goto LABEL_41;
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = v25;
  v25 = v3 & 0x7FFFFFFC;
  v30 = (v24 + 2 * v29);
  v31 = v29 - v25;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v30)), a2)));
    *v30++ = a3.n128_u64[0];
    v31 += 4;
  }

  while (v31);
  if (v25 != v3)
  {
    goto LABEL_39;
  }

LABEL_41:
  v34 = (*(result + 48) * v3);
  if (v34 < 1)
  {
    goto LABEL_94;
  }

  v35 = **(result + 2504);
  if (v34 < 4)
  {
    v36 = 0;
    goto LABEL_53;
  }

  if (v34 >= 0x10)
  {
    v36 = v34 & 0x7FFFFFF0;
    v37 = v35 + 2;
    v38 = v36;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v37[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v37[-2].i8)), a2)));
      v39 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v37)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v37->i8)), a2)));
      *v37[-2].i8 = a3;
      *v37->i8 = v39;
      v37 += 4;
      v38 -= 16;
    }

    while (v38);
    if (v36 == v34)
    {
      goto LABEL_55;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_53:
      v43 = v34 - v36;
      v44 = v35 + v36;
      do
      {
        a3.n128_u16[0] = *v44;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v44++ = a3.n128_f32[0];
        --v43;
      }

      while (v43);
      goto LABEL_55;
    }
  }

  else
  {
    v36 = 0;
  }

  v40 = v36;
  v36 = v34 & 0x7FFFFFFC;
  v41 = (v35 + 2 * v40);
  v42 = v40 - v36;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v41)), a2)));
    *v41++ = a3.n128_u64[0];
    v42 += 4;
  }

  while (v42);
  if (v36 != v34)
  {
    goto LABEL_53;
  }

LABEL_55:
  v45 = **(result + 2512);
  if (v34 < 4)
  {
    v46 = 0;
    goto LABEL_66;
  }

  if (v34 >= 0x10)
  {
    v46 = v34 & 0x7FFFFFF0;
    v47 = v45 + 2;
    v48 = v46;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v47[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v47[-2].i8)), a2)));
      v49 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v47)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v47->i8)), a2)));
      *v47[-2].i8 = a3;
      *v47->i8 = v49;
      v47 += 4;
      v48 -= 16;
    }

    while (v48);
    if (v46 == v34)
    {
      goto LABEL_68;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_66:
      v53 = v34 - v46;
      v54 = v45 + v46;
      do
      {
        a3.n128_u16[0] = *v54;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v54++ = a3.n128_f32[0];
        --v53;
      }

      while (v53);
      goto LABEL_68;
    }
  }

  else
  {
    v46 = 0;
  }

  v50 = v46;
  v46 = v34 & 0x7FFFFFFC;
  v51 = (v45 + 2 * v50);
  v52 = v50 - v46;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v51)), a2)));
    *v51++ = a3.n128_u64[0];
    v52 += 4;
  }

  while (v52);
  if (v46 != v34)
  {
    goto LABEL_66;
  }

LABEL_68:
  v55 = **(result + 2520);
  if (v34 < 4)
  {
    v56 = 0;
    goto LABEL_79;
  }

  if (v34 >= 0x10)
  {
    v56 = v34 & 0x7FFFFFF0;
    v57 = v55 + 2;
    v58 = v56;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v57[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v57[-2].i8)), a2)));
      v59 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v57)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v57->i8)), a2)));
      *v57[-2].i8 = a3;
      *v57->i8 = v59;
      v57 += 4;
      v58 -= 16;
    }

    while (v58);
    if (v56 == v34)
    {
      goto LABEL_81;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_79:
      v63 = v34 - v56;
      v64 = v55 + v56;
      do
      {
        a3.n128_u16[0] = *v64;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v64++ = a3.n128_f32[0];
        --v63;
      }

      while (v63);
      goto LABEL_81;
    }
  }

  else
  {
    v56 = 0;
  }

  v60 = v56;
  v56 = v34 & 0x7FFFFFFC;
  v61 = (v55 + 2 * v60);
  v62 = v60 - v56;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v61)), a2)));
    *v61++ = a3.n128_u64[0];
    v62 += 4;
  }

  while (v62);
  if (v56 != v34)
  {
    goto LABEL_79;
  }

LABEL_81:
  v65 = **(result + 2528);
  if (v34 < 4)
  {
    v66 = 0;
    goto LABEL_92;
  }

  if (v34 >= 0x10)
  {
    v66 = v34 & 0x7FFFFFF0;
    v67 = v65 + 2;
    v68 = v66;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v67[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v67[-2].i8)), a2)));
      v69 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v67)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v67->i8)), a2)));
      *v67[-2].i8 = a3;
      *v67->i8 = v69;
      v67 += 4;
      v68 -= 16;
    }

    while (v68);
    if (v66 == v34)
    {
      goto LABEL_94;
    }

    if ((v34 & 0xC) == 0)
    {
LABEL_92:
      v73 = v34 - v66;
      v74 = v65 + v66;
      do
      {
        a3.n128_u16[0] = *v74;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v74++ = a3.n128_f32[0];
        --v73;
      }

      while (v73);
      goto LABEL_94;
    }
  }

  else
  {
    v66 = 0;
  }

  v70 = v66;
  v66 = v34 & 0x7FFFFFFC;
  v71 = (v65 + 2 * v70);
  v72 = v70 - v66;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v71)), a2)));
    *v71++ = a3.n128_u64[0];
    v72 += 4;
  }

  while (v72);
  if (v66 != v34)
  {
    goto LABEL_92;
  }

LABEL_94:
  if (!v3)
  {
    return result;
  }

  v75 = (v3 * v3);
  v76 = **(result + 2536);
  if (v75 < 4)
  {
    v77 = 0;
    goto LABEL_106;
  }

  if (v75 >= 0x10)
  {
    v77 = v75 & 0x7FFFFFF0;
    v78 = v76 + 2;
    v79 = v77;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v78[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v78[-2].i8)), a2)));
      v80 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v78)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v78->i8)), a2)));
      *v78[-2].i8 = a3;
      *v78->i8 = v80;
      v78 += 4;
      v79 -= 16;
    }

    while (v79);
    if (v77 == v75)
    {
      goto LABEL_108;
    }

    if ((v75 & 0xC) == 0)
    {
LABEL_106:
      v84 = v75 - v77;
      v85 = v76 + v77;
      do
      {
        a3.n128_u16[0] = *v85;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v85++ = a3.n128_f32[0];
        --v84;
      }

      while (v84);
      goto LABEL_108;
    }
  }

  else
  {
    v77 = 0;
  }

  v81 = v77;
  v77 = v75 & 0x7FFFFFFC;
  v82 = (v76 + 2 * v81);
  v83 = v81 - v77;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v82)), a2)));
    *v82++ = a3.n128_u64[0];
    v83 += 4;
  }

  while (v83);
  if (v77 != v75)
  {
    goto LABEL_106;
  }

LABEL_108:
  v86 = **(result + 2544);
  if (v75 < 4)
  {
    v87 = 0;
    goto LABEL_119;
  }

  if (v75 >= 0x10)
  {
    v87 = v75 & 0x7FFFFFF0;
    v88 = v86 + 2;
    v89 = v87;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v88[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v88[-2].i8)), a2)));
      v90 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v88)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v88->i8)), a2)));
      *v88[-2].i8 = a3;
      *v88->i8 = v90;
      v88 += 4;
      v89 -= 16;
    }

    while (v89);
    if (v87 == v75)
    {
      goto LABEL_121;
    }

    if ((v75 & 0xC) == 0)
    {
LABEL_119:
      v94 = v75 - v87;
      v95 = v86 + v87;
      do
      {
        a3.n128_u16[0] = *v95;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v95++ = a3.n128_f32[0];
        --v94;
      }

      while (v94);
      goto LABEL_121;
    }
  }

  else
  {
    v87 = 0;
  }

  v91 = v87;
  v87 = v75 & 0x7FFFFFFC;
  v92 = (v86 + 2 * v91);
  v93 = v91 - v87;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v92)), a2)));
    *v92++ = a3.n128_u64[0];
    v93 += 4;
  }

  while (v93);
  if (v87 != v75)
  {
    goto LABEL_119;
  }

LABEL_121:
  v96 = **(result + 2552);
  if (v75 < 4)
  {
    v97 = 0;
    goto LABEL_132;
  }

  if (v75 >= 0x10)
  {
    v97 = v75 & 0x7FFFFFF0;
    v98 = v96 + 2;
    v99 = v97;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v98[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v98[-2].i8)), a2)));
      v100 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v98)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v98->i8)), a2)));
      *v98[-2].i8 = a3;
      *v98->i8 = v100;
      v98 += 4;
      v99 -= 16;
    }

    while (v99);
    if (v97 == v75)
    {
      goto LABEL_134;
    }

    if ((v75 & 0xC) == 0)
    {
LABEL_132:
      v104 = v75 - v97;
      v105 = v96 + v97;
      do
      {
        a3.n128_u16[0] = *v105;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v105++ = a3.n128_f32[0];
        --v104;
      }

      while (v104);
      goto LABEL_134;
    }
  }

  else
  {
    v97 = 0;
  }

  v101 = v97;
  v97 = v75 & 0x7FFFFFFC;
  v102 = (v96 + 2 * v101);
  v103 = v101 - v97;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v102)), a2)));
    *v102++ = a3.n128_u64[0];
    v103 += 4;
  }

  while (v103);
  if (v97 != v75)
  {
    goto LABEL_132;
  }

LABEL_134:
  v106 = **(result + 2560);
  if (v75 < 4)
  {
    v107 = 0;
    goto LABEL_145;
  }

  if (v75 >= 0x10)
  {
    v107 = v75 & 0x7FFFFFF0;
    v108 = v106 + 2;
    v109 = v107;
    do
    {
      a3 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(v108[-2])), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v108[-2].i8)), a2)));
      v110 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v108)), a2)), vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v108->i8)), a2)));
      *v108[-2].i8 = a3;
      *v108->i8 = v110;
      v108 += 4;
      v109 -= 16;
    }

    while (v109);
    if (v107 == v75)
    {
      return result;
    }

    if ((v75 & 0xC) == 0)
    {
LABEL_145:
      v114 = v75 - v107;
      v115 = v106 + v107;
      do
      {
        a3.n128_u16[0] = *v115;
        a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
        a3.n128_f32[0] = a3.n128_i32[0] * a2;
        *v115++ = a3.n128_f32[0];
        --v114;
      }

      while (v114);
      return result;
    }
  }

  else
  {
    v107 = 0;
  }

  v111 = v107;
  v107 = v75 & 0x7FFFFFFC;
  v112 = (v106 + 2 * v111);
  v113 = v111 - v107;
  do
  {
    a3.n128_u64[0] = vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vcvtq_f32_s32(vmovl_s16(*v112)), a2)));
    *v112++ = a3.n128_u64[0];
    v113 += 4;
  }

  while (v113);
  if (v107 != v75)
  {
    goto LABEL_145;
  }

  return result;
}

uint64_t sub_19D300468(uint64_t result)
{
  if (*(result + 2688) >= 1)
  {
    operator new();
  }

  return result;
}

int *sub_19D3005EC(int *result, uint64_t *a2, int a3, int *a4)
{
  if (result[672] >= 1)
  {
    v7 = result;
    v8 = 0;
    v9 = *a4;
    do
    {
      v10 = v7[13];
      v11 = *(*(v7 + 20) + 8 * a3);
      v12 = *a2;
      *(v12 + 16 * v9) = v10;
      v13 = 4 * v10 * v8;
      memmove(**(v12 + 16 * *a4 + 8), (v11 + v13), 4 * v10);
      v14 = *a4;
      *a4 = v14 + 1;
      v15 = *(*(v7 + 23) + 8 * a3);
      v16 = v7[13];
      v17 = *a2;
      *(*a2 + 16 * v14 + 16) = v16;
      result = memmove(**(v17 + 16 * *a4 + 8), (v15 + v13), 4 * v16);
      v9 = *a4 + 1;
      *a4 = v9;
      ++v8;
    }

    while (v8 < v7[672]);
  }

  return result;
}

int *sub_19D3006D8(int *result, void *a2, int a3, int *a4)
{
  if (result[672] >= 1)
  {
    v7 = result;
    v8 = 0;
    do
    {
      v9 = *(*(v7 + 20) + 8 * a3);
      v10 = 4 * v7[13] * v8;
      v11 = *(*(v7 + 23) + 8 * a3);
      v12 = *a4;
      *a4 = v12 + 1;
      memmove((v9 + v10), **(*a2 + 16 * v12 + 8), 4 * v7[13]);
      v13 = *a4;
      *a4 = v13 + 1;
      result = memmove((v11 + v10), **(*a2 + 16 * v13 + 8), 4 * v7[13]);
      ++v8;
    }

    while (v8 < v7[672]);
  }

  return result;
}

void sub_19D3007B4(uint64_t a1, void *a2, int *a3)
{
  if (*(a1 + 2688) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      bzero(**(*a2 + 16 * v7 + 8), 4 * *(*a2 + 16 * v7));
      v8 = *a3;
      *a3 = v8 + 1;
      bzero(**(*a2 + 16 * v8 + 24), 4 * *(*a2 + 16 * v8 + 16));
      v7 = *a3 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *(a1 + 2688));
  }
}

void sub_19D30085C(uint64_t a1)
{
  if (*(a1 + 2692) == 1)
  {
    v2 = *(a1 + 1552);
    BYTE7(v18[2]) = 18;
    strcpy(v18, "LSTM before reseLSTM before reset ");
    (*(*v2 + 40))(v2, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v3 = *(a1 + 1560);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v3 + 40))(v3, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v4 = *(a1 + 1568);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v4 + 40))(v4, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v5 = *(a1 + 1576);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v5 + 40))(v5, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v6 = *(a1 + 1584);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v6 + 40))(v6, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v7 = *(a1 + 1592);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v7 + 40))(v7, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v8 = *(a1 + 1600);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v8 + 40))(v8, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v9 = *(a1 + 1608);
    BYTE7(v18[2]) = 18;
    strcpy(&v18[2], "t ");
    v18[1] = v18[0];
    (*(*v9 + 40))(v9, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    (*(**(a1 + 1552) + 16))(*(a1 + 1552));
    (*(**(a1 + 1560) + 16))(*(a1 + 1560));
    (*(**(a1 + 1568) + 16))(*(a1 + 1568));
    (*(**(a1 + 1576) + 16))(*(a1 + 1576));
    (*(**(a1 + 1584) + 16))(*(a1 + 1584));
    (*(**(a1 + 1592) + 16))(*(a1 + 1592));
    (*(**(a1 + 1600) + 16))(*(a1 + 1600));
    (*(**(a1 + 1608) + 16))(*(a1 + 1608));
    v10 = *(a1 + 1552);
    BYTE7(v18[2]) = 17;
    strcpy(v18, "LSTM AFTER resetLSTM AFTER reset ");
    (*(*v10 + 40))(v10, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v11 = *(a1 + 1560);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v11 + 40))(v11, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v12 = *(a1 + 1568);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v12 + 40))(v12, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v13 = *(a1 + 1576);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v13 + 40))(v13, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v14 = *(a1 + 1584);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v14 + 40))(v14, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v15 = *(a1 + 1592);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v15 + 40))(v15, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v16 = *(a1 + 1600);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v16 + 40))(v16, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }

    v17 = *(a1 + 1608);
    BYTE7(v18[2]) = 17;
    strcpy(&v18[2], " ");
    v18[1] = v18[0];
    (*(*v17 + 40))(v17, &v18[1]);
    if (SBYTE7(v18[2]) < 0)
    {
      operator delete(*&v18[1]);
    }
  }
}

void sub_19D300F50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D300FA8(uint64_t a1, uint64_t a2)
{
  v11 = **(a1 + 2504);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2512);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2528);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v11 = **(a1 + 2520);
  v12 = vrev64_s32(*(a1 + 48));
  sub_19D309FB0(a2, &v11);
  v4 = *(a1 + 52);
  v11 = **(a1 + 2536);
  v12.i32[0] = v4;
  v12.i32[1] = v4;
  sub_19D309FB0(a2, &v11);
  v5 = *(a1 + 52);
  v11 = **(a1 + 2544);
  v12.i32[0] = v5;
  v12.i32[1] = v5;
  sub_19D309FB0(a2, &v11);
  v6 = *(a1 + 52);
  v11 = **(a1 + 2560);
  v12.i32[0] = v6;
  v12.i32[1] = v6;
  sub_19D309FB0(a2, &v11);
  v7 = *(a1 + 52);
  v11 = **(a1 + 2552);
  v12.i32[0] = v7;
  v12.i32[1] = v7;
  sub_19D309FB0(a2, &v11);
  v8 = *(a1 + 52);
  v11 = **(a1 + 2568);
  v12 = v8;
  sub_19D309FB0(a2, &v11);
  v9 = *(a1 + 52);
  v11 = **(a1 + 2576);
  v12 = v9;
  sub_19D309FB0(a2, &v11);
  v10 = *(a1 + 52);
  v11 = **(a1 + 2584);
  v12 = v10;
  sub_19D309FB0(a2, &v11);
}

__n128 sub_19D301144(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2-- - 2);
  a1[29] = v3;
  a1[313] = a1 + 29;
  *(a2 + 8) = v2;
  *v2 = *(v2 - 1);
  a1[30] = *v2;
  a1[314] = a1 + 30;
  v4 = *(a2 + 8);
  *(a2 + 8) = v4 - 16;
  *v2 = *(v4 - 32);
  a1[32] = *v2;
  a1[316] = a1 + 32;
  v5 = *(a2 + 8);
  *(a2 + 8) = v5 - 16;
  *v2 = *(v5 - 32);
  a1[31] = *v2;
  v6 = a1 + 31;
  v6[284] = v6;
  v7 = *(a2 + 8);
  *(a2 + 8) = v7 - 16;
  *v2 = *(v7 - 32);
  v6[2] = *v2;
  v6[286] = v6 + 2;
  v8 = *(a2 + 8);
  *(a2 + 8) = v8 - 16;
  *v2 = *(v8 - 32);
  v6[3] = *v2;
  v6[287] = v6 + 3;
  v9 = *(a2 + 8);
  *(a2 + 8) = v9 - 16;
  *v2 = *(v9 - 32);
  v6[5] = *v2;
  v6[289] = v6 + 5;
  v10 = *(a2 + 8);
  *(a2 + 8) = v10 - 16;
  *v2 = *(v10 - 32);
  v6[4] = *v2;
  v6[288] = v6 + 4;
  v11 = *(a2 + 8);
  *(a2 + 8) = v11 - 16;
  *v2 = *(v11 - 32);
  v6[6] = *v2;
  v6[290] = v6 + 6;
  v12 = *(a2 + 8);
  *(a2 + 8) = v12 - 16;
  *v2 = *(v12 - 32);
  v6[7] = *v2;
  v6[291] = v6 + 7;
  v13 = *(a2 + 8);
  *(a2 + 8) = v13 - 16;
  result = *(v13 - 32);
  *v2 = result;
  v6[8] = *v2;
  v6[292] = v6 + 8;
  *(a2 + 8) -= 16;
  return result;
}

void sub_19D301370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D30138C(void *a1)
{
  v2 = a1[329];
  v3 = a1[328];
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[329];
        v3 = a1[328];
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  v6 = a1[332];
  v7 = a1[331];
  if (v6 != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(v7 + 8 * v8);
      if (v9)
      {
        operator delete[](v9);
        v6 = a1[332];
        v7 = a1[331];
      }

      ++v8;
    }

    while (v8 < (v6 - v7) >> 3);
    v3 = a1[328];
  }

  a1[329] = v3;
  a1[332] = v7;
  v10 = a1[136];
  v11 = a1[135];
  if (v10 != v11)
  {
    v12 = 0;
    do
    {
      v13 = *(v11 + 8 * v12);
      if (v13)
      {
        operator delete[](v13);
        v10 = a1[136];
        v11 = a1[135];
      }

      ++v12;
    }

    while (v12 < (v10 - v11) >> 3);
  }

  a1[136] = v11;
  v14 = a1[133];
  if (v14)
  {
    operator delete(v14);
    a1[133] = 0;
  }

  v15 = a1[132];
  if (v15)
  {
    operator delete(v15);
    a1[132] = 0;
  }

  v16 = a1[166];
  v17 = a1[165];
  if (v16 != v17)
  {
    v18 = 0;
    do
    {
      v19 = *(v17 + 8 * v18);
      if (v19)
      {
        operator delete[](v19);
        v16 = a1[166];
        v17 = a1[165];
      }

      ++v18;
    }

    while (v18 < (v16 - v17) >> 3);
  }

  a1[166] = v17;
  v20 = a1[163];
  if (v20)
  {
    operator delete(v20);
    a1[163] = 0;
  }

  v21 = a1[162];
  if (v21)
  {
    operator delete(v21);
    a1[162] = 0;
  }

  v22 = a1[151];
  v23 = a1[150];
  if (v22 != v23)
  {
    v24 = 0;
    do
    {
      v25 = *(v23 + 8 * v24);
      if (v25)
      {
        operator delete[](v25);
        v22 = a1[151];
        v23 = a1[150];
      }

      ++v24;
    }

    while (v24 < (v22 - v23) >> 3);
  }

  a1[151] = v23;
  v26 = a1[148];
  if (v26)
  {
    operator delete(v26);
    a1[148] = 0;
  }

  v27 = a1[147];
  if (v27)
  {
    operator delete(v27);
    a1[147] = 0;
  }

  v28 = a1[181];
  v29 = a1[180];
  if (v28 != v29)
  {
    v30 = 0;
    do
    {
      v31 = *(v29 + 8 * v30);
      if (v31)
      {
        operator delete[](v31);
        v28 = a1[181];
        v29 = a1[180];
      }

      ++v30;
    }

    while (v30 < (v28 - v29) >> 3);
  }

  a1[181] = v29;
  v32 = a1[178];
  if (v32)
  {
    operator delete(v32);
    a1[178] = 0;
  }

  v33 = a1[177];
  if (v33)
  {
    operator delete(v33);
    a1[177] = 0;
  }
}

uint64_t sub_19D301604(uint64_t result, float a2, __n128 a3)
{
  v3 = a2;
  v4 = *(result + 52);
  if (*(result + 56) < 1)
  {
    v12 = (*(result + 48) * v4);
    if (v12 < 1)
    {
      goto LABEL_46;
    }

    v13 = *(result + 232);
    v14 = *(result + 1464);
    v15 = v3;
    if (v12 >= 8)
    {
      v16 = v12 & 0x7FFFFFF8;
      v24 = v16;
      v25 = *(result + 1464);
      v26 = *(result + 232);
      do
      {
        v27 = *v25;
        v28 = v25[1];
        v25 += 2;
        a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v26)), v27, v15)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v26->i8)), v28, v15)));
        *v26->i8 = a3;
        v26 += 2;
        v24 -= 8;
      }

      while (v24);
      if (v16 == v12)
      {
LABEL_25:
        v33 = *(result + 248);
        v34 = *(result + 1480);
        if (v12 >= 8)
        {
          v35 = v12 & 0x7FFFFFF8;
          v36 = v35;
          v37 = *(result + 1480);
          v38 = *(result + 248);
          do
          {
            v39 = *v37;
            v40 = v37[1];
            v37 += 2;
            a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v38)), v39, v15)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v38->i8)), v40, v15)));
            *v38->i8 = a3;
            v38 += 2;
            v36 -= 8;
          }

          while (v36);
          if (v35 == v12)
          {
LABEL_32:
            v45 = *(result + 240);
            v46 = *(result + 1472);
            if (v12 >= 8)
            {
              v47 = v12 & 0x7FFFFFF8;
              v48 = v47;
              v49 = *(result + 1472);
              v50 = *(result + 240);
              do
              {
                v51 = *v49;
                v52 = v49[1];
                v49 += 2;
                a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v50)), v51, v15)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v50->i8)), v52, v15)));
                *v50->i8 = a3;
                v50 += 2;
                v48 -= 8;
              }

              while (v48);
              if (v47 == v12)
              {
LABEL_39:
                v57 = *(result + 256);
                v58 = *(result + 1488);
                if (v12 >= 8)
                {
                  v59 = v12 & 0x7FFFFFF8;
                  v60 = v59;
                  v61 = *(result + 1488);
                  v62 = *(result + 256);
                  do
                  {
                    v63 = *v61;
                    v64 = v61[1];
                    v61 += 2;
                    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v62)), v63, v15)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v62->i8)), v64, v15)));
                    *v62->i8 = a3;
                    v62 += 2;
                    v60 -= 8;
                  }

                  while (v60);
                  if (v59 == v12)
                  {
                    goto LABEL_46;
                  }
                }

                else
                {
                  v59 = 0;
                }

                v65 = v12 - v59;
                v66 = (v58 + 4 * v59);
                v67 = (v57 + 2 * v59);
                do
                {
                  a3.n128_u16[0] = *v67;
                  a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
                  v68 = *v66++;
                  a3.n128_f32[0] = a3.n128_i32[0] + (v68 * v15);
                  *v67++ = a3.n128_f32[0];
                  --v65;
                }

                while (v65);
                goto LABEL_46;
              }
            }

            else
            {
              v47 = 0;
            }

            v53 = v12 - v47;
            v54 = (v46 + 4 * v47);
            v55 = (v45 + 2 * v47);
            do
            {
              a3.n128_u16[0] = *v55;
              a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
              v56 = *v54++;
              a3.n128_f32[0] = a3.n128_i32[0] + (v56 * v15);
              *v55++ = a3.n128_f32[0];
              --v53;
            }

            while (v53);
            goto LABEL_39;
          }
        }

        else
        {
          v35 = 0;
        }

        v41 = v12 - v35;
        v42 = (v34 + 4 * v35);
        v43 = (v33 + 2 * v35);
        do
        {
          a3.n128_u16[0] = *v43;
          a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
          v44 = *v42++;
          a3.n128_f32[0] = a3.n128_i32[0] + (v44 * v15);
          *v43++ = a3.n128_f32[0];
          --v41;
        }

        while (v41);
        goto LABEL_32;
      }
    }

    else
    {
      v16 = 0;
    }

    v29 = v12 - v16;
    v30 = (v14 + 4 * v16);
    v31 = (v13 + 2 * v16);
    do
    {
      a3.n128_u16[0] = *v31;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v32 = *v30++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v32 * v15);
      *v31++ = a3.n128_f32[0];
      --v29;
    }

    while (v29);
    goto LABEL_25;
  }

  v5 = v3;
  v6 = *(result + 1000);
  if (v6 >= 1)
  {
    if (v4 < 1)
    {
LABEL_127:
      v191 = *(result + 1032);
      v193 = *v191;
      v192 = v191[1];
      if (v192 == v193)
      {
        sub_19D41C548(67);
      }

      if (((v192 - v193) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_164;
    }

    v182 = 0;
    v183 = *(result + 1008);
    while (1)
    {
      v184 = *(v183 + 8 * v182);
      if (v4 >= 8)
      {
        v186 = v184 + 1;
        v187 = v4 & 0x7FFFFFF8;
        do
        {
          v188 = vmulq_n_f32(*v186, v5);
          v186[-1] = vmulq_n_f32(v186[-1], v5);
          *v186 = v188;
          v186 += 2;
          v187 -= 8;
        }

        while (v187);
        v185 = v4 & 0x7FFFFFF8;
        if (v185 == v4)
        {
          goto LABEL_118;
        }
      }

      else
      {
        v185 = 0;
      }

      v189 = v4 - v185;
      v190 = &v184->f32[v185];
      do
      {
        *v190 = *v190 * v5;
        ++v190;
        --v189;
      }

      while (v189);
LABEL_118:
      if (++v182 == v6)
      {
        goto LABEL_127;
      }
    }
  }

  v7 = *(result + 1240);
  if (v7 >= 1)
  {
    if (v4 < 1)
    {
LABEL_140:
      v203 = *(result + 1272);
      v205 = *v203;
      v204 = v203[1];
      if (v204 == v205)
      {
        sub_19D41C548(67);
      }

      if (((v204 - v205) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_164;
    }

    v194 = 0;
    v195 = *(result + 1248);
    while (1)
    {
      v196 = *(v195 + 8 * v194);
      if (v4 >= 8)
      {
        v198 = v196 + 1;
        v199 = v4 & 0x7FFFFFF8;
        do
        {
          v200 = vmulq_n_f32(*v198, v5);
          v198[-1] = vmulq_n_f32(v198[-1], v5);
          *v198 = v200;
          v198 += 2;
          v199 -= 8;
        }

        while (v199);
        v197 = v4 & 0x7FFFFFF8;
        if (v197 == v4)
        {
          goto LABEL_131;
        }
      }

      else
      {
        v197 = 0;
      }

      v201 = v4 - v197;
      v202 = &v196->f32[v197];
      do
      {
        *v202 = *v202 * v5;
        ++v202;
        --v201;
      }

      while (v201);
LABEL_131:
      if (++v194 == v7)
      {
        goto LABEL_140;
      }
    }
  }

  v8 = *(result + 1120);
  if (v8 >= 1)
  {
    if (v4 < 1)
    {
LABEL_153:
      v215 = *(result + 1152);
      v217 = *v215;
      v216 = v215[1];
      if (v216 == v217)
      {
        sub_19D41C548(67);
      }

      if (((v216 - v217) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      goto LABEL_164;
    }

    v206 = 0;
    v207 = *(result + 1128);
    while (1)
    {
      v208 = *(v207 + 8 * v206);
      if (v4 >= 8)
      {
        v210 = v208 + 1;
        v211 = v4 & 0x7FFFFFF8;
        do
        {
          v212 = vmulq_n_f32(*v210, v5);
          v210[-1] = vmulq_n_f32(v210[-1], v5);
          *v210 = v212;
          v210 += 2;
          v211 -= 8;
        }

        while (v211);
        v209 = v4 & 0x7FFFFFF8;
        if (v209 == v4)
        {
          goto LABEL_144;
        }
      }

      else
      {
        v209 = 0;
      }

      v213 = v4 - v209;
      v214 = &v208->f32[v209];
      do
      {
        *v214 = *v214 * v5;
        ++v214;
        --v213;
      }

      while (v213);
LABEL_144:
      if (++v206 == v8)
      {
        goto LABEL_153;
      }
    }
  }

  v9 = *(result + 1360);
  if (v9 >= 1)
  {
    if (v4 >= 1)
    {
      v10 = 0;
      v11 = *(result + 1368);
      do
      {
        v17 = *(v11 + 8 * v10);
        if (v4 >= 8)
        {
          v19 = v17 + 1;
          v20 = v4 & 0x7FFFFFF8;
          do
          {
            v21 = vmulq_n_f32(*v19, v5);
            v19[-1] = vmulq_n_f32(v19[-1], v5);
            *v19 = v21;
            v19 += 2;
            v20 -= 8;
          }

          while (v20);
          v18 = v4 & 0x7FFFFFF8;
          if (v18 == v4)
          {
            goto LABEL_11;
          }
        }

        else
        {
          v18 = 0;
        }

        v22 = v4 - v18;
        v23 = &v17->f32[v18];
        do
        {
          *v23 = *v23 * v5;
          ++v23;
          --v22;
        }

        while (v22);
LABEL_11:
        ++v10;
      }

      while (v10 != v9);
    }

    v218 = *(result + 1392);
    v220 = *v218;
    v219 = v218[1];
    if (v219 == v220)
    {
      sub_19D41C548(67);
    }

    if (((v219 - v220) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_164:
    sub_19D2AE2B4();
  }

LABEL_46:
  if (!v4)
  {
    return result;
  }

  v69 = (v4 * v4);
  v70 = *(result + 264);
  v71 = *(result + 1496);
  v72 = v3;
  if (v69 < 8)
  {
    v73 = 0;
LABEL_52:
    v79 = v69 - v73;
    v80 = (v71 + 4 * v73);
    v81 = (v70 + 2 * v73);
    do
    {
      a3.n128_u16[0] = *v81;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v82 = *v80++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v82 * v72);
      *v81++ = a3.n128_f32[0];
      --v79;
    }

    while (v79);
    goto LABEL_54;
  }

  v73 = v69 & 0x7FFFFFF8;
  v74 = v73;
  v75 = *(result + 1496);
  v76 = *(result + 264);
  do
  {
    v77 = *v75;
    v78 = v75[1];
    v75 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v76)), v77, v72)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v76->i8)), v78, v72)));
    *v76->i8 = a3;
    v76 += 2;
    v74 -= 8;
  }

  while (v74);
  if (v73 != v69)
  {
    goto LABEL_52;
  }

LABEL_54:
  v83 = *(result + 280);
  v84 = *(result + 1512);
  if (v69 < 8)
  {
    v85 = 0;
LABEL_59:
    v91 = v69 - v85;
    v92 = (v84 + 4 * v85);
    v93 = (v83 + 2 * v85);
    do
    {
      a3.n128_u16[0] = *v93;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v94 = *v92++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v94 * v72);
      *v93++ = a3.n128_f32[0];
      --v91;
    }

    while (v91);
    goto LABEL_61;
  }

  v85 = v69 & 0x7FFFFFF8;
  v86 = v85;
  v87 = *(result + 1512);
  v88 = *(result + 280);
  do
  {
    v89 = *v87;
    v90 = v87[1];
    v87 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v88)), v89, v72)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v88->i8)), v90, v72)));
    *v88->i8 = a3;
    v88 += 2;
    v86 -= 8;
  }

  while (v86);
  if (v85 != v69)
  {
    goto LABEL_59;
  }

LABEL_61:
  v95 = *(result + 272);
  v96 = *(result + 1504);
  if (v69 < 8)
  {
    v97 = 0;
LABEL_66:
    v103 = v69 - v97;
    v104 = (v96 + 4 * v97);
    v105 = (v95 + 2 * v97);
    do
    {
      a3.n128_u16[0] = *v105;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v106 = *v104++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v106 * v72);
      *v105++ = a3.n128_f32[0];
      --v103;
    }

    while (v103);
    goto LABEL_68;
  }

  v97 = v69 & 0x7FFFFFF8;
  v98 = v97;
  v99 = *(result + 1504);
  v100 = *(result + 272);
  do
  {
    v101 = *v99;
    v102 = v99[1];
    v99 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v100)), v101, v72)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v100->i8)), v102, v72)));
    *v100->i8 = a3;
    v100 += 2;
    v98 -= 8;
  }

  while (v98);
  if (v97 != v69)
  {
    goto LABEL_66;
  }

LABEL_68:
  v107 = *(result + 288);
  v108 = *(result + 1520);
  if (v69 < 8)
  {
    v109 = 0;
LABEL_73:
    v115 = v69 - v109;
    v116 = (v108 + 4 * v109);
    v117 = (v107 + 2 * v109);
    do
    {
      a3.n128_u16[0] = *v117;
      a3.n128_u64[0] = vmovl_s16(a3.n128_u64[0]).u64[0];
      v118 = *v116++;
      a3.n128_f32[0] = a3.n128_i32[0] + (v118 * v72);
      *v117++ = a3.n128_f32[0];
      --v115;
    }

    while (v115);
    goto LABEL_75;
  }

  v109 = v69 & 0x7FFFFFF8;
  v110 = v109;
  v111 = *(result + 1520);
  v112 = *(result + 288);
  do
  {
    v113 = *v111;
    v114 = v111[1];
    v111 += 2;
    a3 = vuzp1q_s16(vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_s16(*v112)), v113, v72)), vcvtq_s32_f32(vmlaq_n_f32(vcvtq_f32_s32(vmovl_high_s16(*v112->i8)), v114, v72)));
    *v112->i8 = a3;
    v112 += 2;
    v110 -= 8;
  }

  while (v110);
  if (v109 != v69)
  {
    goto LABEL_73;
  }

LABEL_75:
  if (v4 < 1)
  {
    return result;
  }

  v119 = *(result + 1528);
  v120 = *(result + 296);
  if (v4 < 4)
  {
    v121 = 0;
    goto LABEL_87;
  }

  if (v4 >= 0x10)
  {
    v121 = v4 & 0x7FFFFFF0;
    v122 = v119 + 2;
    v123 = v120 + 1;
    v124 = v121;
    do
    {
      v126 = v122[-2];
      v125 = v122[-1];
      v128 = *v122;
      v127 = v122[1];
      v122 += 4;
      v129 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v126, v72)), vcvtq_s32_f32(vmulq_n_f32(v125, v72)));
      v130 = vaddq_s16(*v123, vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v128, v72)), vcvtq_s32_f32(vmulq_n_f32(v127, v72))));
      v123[-1] = vaddq_s16(v123[-1], v129);
      *v123 = v130;
      v123 += 2;
      v124 -= 16;
    }

    while (v124);
    if (v121 == v4)
    {
      goto LABEL_89;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_87:
      v136 = v4 - v121;
      v137 = &v120->i16[v121];
      v138 = &v119->f32[v121];
      do
      {
        v139 = *v138++;
        *v137++ += (v139 * v72);
        --v136;
      }

      while (v136);
      goto LABEL_89;
    }
  }

  else
  {
    v121 = 0;
  }

  v131 = v121;
  v121 = v4 & 0x7FFFFFFC;
  v132 = (v119 + 4 * v131);
  v133 = (v120 + 2 * v131);
  v134 = v131 - v121;
  do
  {
    v135 = *v132++;
    *v133 = vadd_s16(*v133, vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v135, v72))));
    ++v133;
    v134 += 4;
  }

  while (v134);
  if (v121 != v4)
  {
    goto LABEL_87;
  }

LABEL_89:
  v140 = *(result + 1544);
  v141 = *(result + 312);
  if (v4 < 4)
  {
    v142 = 0;
    goto LABEL_100;
  }

  if (v4 >= 0x10)
  {
    v142 = v4 & 0x7FFFFFF0;
    v143 = v140 + 2;
    v144 = v141 + 1;
    v145 = v142;
    do
    {
      v147 = v143[-2];
      v146 = v143[-1];
      v149 = *v143;
      v148 = v143[1];
      v143 += 4;
      v150 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v147, v72)), vcvtq_s32_f32(vmulq_n_f32(v146, v72)));
      v151 = vaddq_s16(*v144, vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v149, v72)), vcvtq_s32_f32(vmulq_n_f32(v148, v72))));
      v144[-1] = vaddq_s16(v144[-1], v150);
      *v144 = v151;
      v144 += 2;
      v145 -= 16;
    }

    while (v145);
    if (v142 == v4)
    {
      goto LABEL_102;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_100:
      v157 = v4 - v142;
      v158 = &v141->i16[v142];
      v159 = &v140->f32[v142];
      do
      {
        v160 = *v159++;
        *v158++ += (v160 * v72);
        --v157;
      }

      while (v157);
      goto LABEL_102;
    }
  }

  else
  {
    v142 = 0;
  }

  v152 = v142;
  v142 = v4 & 0x7FFFFFFC;
  v153 = (v140 + 4 * v152);
  v154 = (v141 + 2 * v152);
  v155 = v152 - v142;
  do
  {
    v156 = *v153++;
    *v154 = vadd_s16(*v154, vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v156, v72))));
    ++v154;
    v155 += 4;
  }

  while (v155);
  if (v142 != v4)
  {
    goto LABEL_100;
  }

LABEL_102:
  v161 = *(result + 1536);
  v162 = *(result + 304);
  if (v4 < 4)
  {
    v163 = 0;
    goto LABEL_113;
  }

  if (v4 >= 0x10)
  {
    v163 = v4 & 0x7FFFFFF0;
    v164 = v161 + 2;
    v165 = v162 + 1;
    v166 = v163;
    do
    {
      v168 = v164[-2];
      v167 = v164[-1];
      v170 = *v164;
      v169 = v164[1];
      v164 += 4;
      v171 = vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v168, v72)), vcvtq_s32_f32(vmulq_n_f32(v167, v72)));
      v172 = vaddq_s16(*v165, vuzp1q_s16(vcvtq_s32_f32(vmulq_n_f32(v170, v72)), vcvtq_s32_f32(vmulq_n_f32(v169, v72))));
      v165[-1] = vaddq_s16(v165[-1], v171);
      *v165 = v172;
      v165 += 2;
      v166 -= 16;
    }

    while (v166);
    if (v163 == v4)
    {
      return result;
    }

    if ((v4 & 0xC) == 0)
    {
LABEL_113:
      v178 = v4 - v163;
      v179 = &v162->i16[v163];
      v180 = &v161->f32[v163];
      do
      {
        v181 = *v180++;
        *v179++ += (v181 * v72);
        --v178;
      }

      while (v178);
      return result;
    }
  }

  else
  {
    v163 = 0;
  }

  v173 = v163;
  v163 = v4 & 0x7FFFFFFC;
  v174 = (v161 + 4 * v173);
  v175 = (v162 + 2 * v173);
  v176 = v173 - v163;
  do
  {
    v177 = *v174++;
    *v175 = vadd_s16(*v175, vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v177, v72))));
    ++v175;
    v176 += 4;
  }

  while (v176);
  if (v163 != v4)
  {
    goto LABEL_113;
  }

  return result;
}

void sub_19D3021B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_19D3021DC(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v523 = a5 - 1;
  if (a5 >= 1)
  {
    v514 = (a1 + 1648);
    v6 = (a1 + 1656);
    v7 = (a1 + 1672);
    v519 = (a1 + 1664);
    v520 = (a1 + 1640);
    v517 = (a1 + 1688);
    v518 = (a1 + 1680);
    v8 = a5 - 1;
    v511 = (a1 + 1656);
    while (1)
    {
      v9 = v523 - v8;
      v516 = v8;
      if (*(a1 + 2672))
      {
        v10 = v9 < v523;
      }

      else
      {
        v9 = v8;
        v10 = v8 > 0;
      }

      v521 = v10;
      if (*(a1 + 2672))
      {
        v11 = v9 > 0;
      }

      else
      {
        v11 = v9 < v523;
      }

      if (*(a1 + 2672))
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v9 - 1;
      }

      v513 = v12;
      v13 = v9;
      memmove(*(*(a1 + 840) + 8 * v9), *(*a4 + 8 * v9), 4 * *(a1 + 52));
      v14 = 8 * v13;
      if (v11)
      {
        sub_19D30A978();
      }

      v15 = *(*(a1 + 352) + 8 * v13);
      v526 = *(*(a1 + 376) + 8 * v13);
      v527 = v15;
      v525 = *(*(a1 + 424) + 8 * v13);
      v515 = *(*(a1 + 448) + 8 * v13);
      v524 = *(*(a1 + 400) + 8 * v13);
      v16 = *(*(a1 + 496) + 8 * v13);
      sub_19D30A0F8(v520, &v524, *(a1 + 52), *(a1 + 736));
      sub_19D30A0F8(v514, &v526, *(a1 + 52), *(a1 + 736));
      sub_19D30A0F8(v6, &v527, *(a1 + 52), *(a1 + 736));
      v17 = v7;
      sub_19D30A3C0(v7, &v525, *(a1 + 52), *(a1 + 740));
      sub_19D30A0F8(v519, &v525, *(a1 + 52), *(a1 + 740));
      sub_19D30A3C0(v518, (*(a1 + 88) + v14), *(a1 + 52), *(a1 + 744));
      sub_19D30A0F8(v517, (*(a1 + 88) + v14), *(a1 + 52), *(a1 + 744));
      v18 = *(a1 + 864);
      v19 = *(a1 + 840);
      v20 = *(a1 + 52);
      v21 = 4 * v20;
      bzero(*(v18 + 8 * v13), 4 * v20);
      v22 = v20 / 8;
      if (v20 >= 8)
      {
        v23 = *(v18 + 8 * v13);
        v24 = *(v19 + 8 * v13);
        v25 = *v518;
        v26 = v20 / 8;
        v27 = *v520;
        do
        {
          v28 = *v27;
          v29 = v27[1];
          v27 += 2;
          v30 = *v25;
          v31 = *(v25 + 4);
          v25 += 8;
          v32 = vmulq_f32(v31, v29);
          v33 = vmulq_f32(v30, v28);
          v35 = *v24;
          v34 = v24[1];
          v24 += 2;
          v36 = vmlaq_f32(v23[1], v32, v34);
          *v23 = vmlaq_f32(*v23, v33, v35);
          v23[1] = v36;
          v23 += 2;
          --v26;
        }

        while (v26);
      }

      v37 = 8 * v22;
      if (8 * v22 < v20)
      {
        v38 = *v520;
        v39 = *(v19 + 8 * v13);
        v40 = *v518;
        v41 = *(v18 + 8 * v13);
        v42 = v37;
        v43 = v20 - v37;
        if (v43 <= 7)
        {
          goto LABEL_42;
        }

        v44 = 4 * v37;
        v45 = v41 + v44;
        v46 = v41 + v21;
        v47 = v41 + v44 >= &v40[v21 / 4] || &v40[v44 / 4] >= v46;
        v48 = !v47;
        v49 = v45 >= v39 + v21 || v39 + 4 * v42 >= v46;
        v50 = !v49;
        if (v38 + v44 < v46 && v45 < v38 + v21)
        {
          goto LABEL_42;
        }

        if (v48)
        {
          goto LABEL_42;
        }

        if (v50)
        {
          goto LABEL_42;
        }

        v52 = v43 - (v20 & 7) + v42;
        v53 = v42 + (v20 & 7) - v20;
        v54 = (v41 + v44 + 16);
        v55 = (v38 + v44 + 16);
        v56 = (v39 + v44 + 16);
        v57 = &v40[v44 / 4 + 4];
        do
        {
          v58 = vmlaq_f32(*v54, vmulq_f32(*v57, *v55), *v56);
          v54[-1] = vmlaq_f32(v54[-1], vmulq_f32(v57[-1], v55[-1]), v56[-1]);
          *v54 = v58;
          v54 += 2;
          v55 += 2;
          v56 += 2;
          v57 += 2;
          v53 += 8;
        }

        while (v53);
        v42 = v52;
        if ((v20 & 7) != 0)
        {
LABEL_42:
          v59 = v20 - v42;
          v60 = (v41 + 4 * v42);
          v61 = (v39 + 4 * v42);
          v62 = &v40[v42];
          v63 = &v38->f32[v42];
          do
          {
            v64 = *v63++;
            v65 = v64;
            v66 = *v62++;
            v67 = v66;
            v68 = *v61++;
            *v60 = *v60 + ((v67 * v65) * v68);
            ++v60;
            --v59;
          }

          while (v59);
        }
      }

      v69 = *(a1 + 960);
      v70 = *(a1 + 840);
      v71 = *(a1 + 52);
      v72 = 4 * v71;
      bzero(*(v69 + 8 * v13), 4 * v71);
      v73 = v71 / 8;
      if (v71 >= 8)
      {
        v74 = *(v69 + 8 * v13);
        v75 = *(v70 + 8 * v13);
        v76 = v71 / 8;
        v77 = v16;
        v78 = *v517;
        do
        {
          v79 = *v78;
          v80 = v78[1];
          v78 += 2;
          v81 = *v77;
          v82 = v77[1];
          v77 += 2;
          v83 = vmulq_f32(v82, v80);
          v84 = vmulq_f32(v81, v79);
          v86 = *v75;
          v85 = v75[1];
          v75 += 2;
          v87 = vmlaq_f32(v74[1], v83, v85);
          *v74 = vmlaq_f32(*v74, v84, v86);
          v74[1] = v87;
          v74 += 2;
          --v76;
        }

        while (v76);
      }

      v88 = 8 * v73;
      if (8 * v73 < v71)
      {
        v89 = *(v70 + 8 * v13);
        v90 = *v517;
        v91 = *(v69 + 8 * v13);
        v92 = v88;
        v93 = v71 - v88;
        if (v93 <= 7)
        {
          goto LABEL_71;
        }

        v94 = 4 * v88;
        v95 = v91 + v94;
        v96 = v91 + v72;
        v97 = v91 + v94 >= v16 + v72 || v16 + v94 >= v96;
        v98 = !v97;
        v99 = v95 >= v89 + v72 || v89 + 4 * v92 >= v96;
        v100 = !v99;
        if (v90 + v94 < v96 && v95 < v90 + v72)
        {
          goto LABEL_71;
        }

        if (v98)
        {
          goto LABEL_71;
        }

        if (v100)
        {
          goto LABEL_71;
        }

        v102 = v93 - (v71 & 7) + v92;
        v103 = v92 + (v71 & 7) - v71;
        v104 = (v91 + v94 + 16);
        v105 = (v90 + v94 + 16);
        v106 = (v89 + v94 + 16);
        v107 = (v16 + v94 + 16);
        do
        {
          v108 = vmlaq_f32(*v104, vmulq_f32(*v107, *v105), *v106);
          v104[-1] = vmlaq_f32(v104[-1], vmulq_f32(v107[-1], v105[-1]), v106[-1]);
          *v104 = v108;
          v104 += 2;
          v105 += 2;
          v106 += 2;
          v107 += 2;
          v103 += 8;
        }

        while (v103);
        v92 = v102;
        if ((v71 & 7) != 0)
        {
LABEL_71:
          v109 = v71 - v92;
          v110 = v92;
          v111 = (v91 + v110 * 4);
          v112 = (v89 + v110 * 4);
          v113 = &v16->f32[v110];
          v114 = &v90->f32[v110];
          do
          {
            v115 = *v114++;
            v116 = v115;
            v117 = *v113++;
            v118 = v117;
            v119 = *v112++;
            *v111 = *v111 + ((v118 * v116) * v119);
            ++v111;
            --v109;
          }

          while (v109);
        }
      }

      v120 = *(a1 + 960);
      v121 = *(a1 + 52);
      if (v121 >= 1)
      {
        break;
      }

      v7 = v17;
      v126 = v516;
LABEL_94:
      v154 = *(a1 + 936);
      v155 = 4 * v121;
      bzero(*(v154 + 8 * v13), v155);
      v156 = v121 / 8;
      if (v121 >= 8)
      {
        v157 = *(v154 + 8 * v13);
        v158 = *(v120 + 8 * v13);
        v159 = v121 / 8;
        v160 = v515;
        v161 = *v519;
        do
        {
          v162 = *v161;
          v163 = v161[1];
          v161 += 2;
          v164 = *v158;
          v165 = v158[1];
          v158 += 2;
          v166 = vmulq_f32(v165, v163);
          v167 = vmulq_f32(v164, v162);
          v169 = *v160;
          v168 = v160[1];
          v160 += 2;
          v170 = vmlaq_f32(v157[1], v166, v168);
          *v157 = vmlaq_f32(*v157, v167, v169);
          v157[1] = v170;
          v157 += 2;
          --v159;
        }

        while (v159);
      }

      v171 = 8 * v156;
      if (8 * v156 < v121)
      {
        v172 = *(v120 + 8 * v13);
        v173 = *v519;
        v174 = *(v154 + 8 * v13);
        v175 = v171;
        v176 = v121 - v171;
        if (v176 <= 7)
        {
          goto LABEL_121;
        }

        v177 = 4 * v171;
        v178 = v174 + v177;
        v179 = v174 + v155;
        v180 = v174 + v177 >= v172 + v155 || v172 + v177 >= v179;
        v181 = !v180;
        v182 = v178 >= v515 + v155 || v515->u64 + 4 * v175 >= v179;
        v183 = !v182;
        if (v173 + v177 < v179 && v178 < v173 + v155)
        {
          goto LABEL_121;
        }

        if (v181)
        {
          goto LABEL_121;
        }

        if (v183)
        {
          goto LABEL_121;
        }

        v185 = v176 - (v121 & 7) + v175;
        v186 = v175 + (v121 & 7) - v121;
        v187 = (v174 + v177 + 16);
        v188 = (v173 + v177 + 16);
        v189 = (v515 + v177 + 16);
        v190 = (v172 + v177 + 16);
        do
        {
          v191 = vmlaq_f32(*v187, vmulq_f32(*v190, *v188), *v189);
          v187[-1] = vmlaq_f32(v187[-1], vmulq_f32(v190[-1], v188[-1]), v189[-1]);
          *v187 = v191;
          v187 += 2;
          v188 += 2;
          v189 += 2;
          v190 += 2;
          v186 += 8;
        }

        while (v186);
        v175 = v185;
        if ((v121 & 7) != 0)
        {
LABEL_121:
          v192 = v121 - v175;
          v193 = (v174 + 4 * v175);
          v194 = &v515->f32[v175];
          v195 = (v172 + 4 * v175);
          v196 = &v173->f32[v175];
          do
          {
            v197 = *v196++;
            v198 = v197;
            v199 = *v195++;
            v200 = v199;
            v201 = *v194++;
            *v193 = *v193 + ((v200 * v198) * v201);
            ++v193;
            --v192;
          }

          while (v192);
        }
      }

      if (v521)
      {
        v202 = *(a1 + 888);
        v203 = *(a1 + 960);
        v204 = *(a1 + 88);
        v205 = *(a1 + 52);
        v206 = 4 * v205;
        bzero(*(v202 + 8 * v13), 4 * v205);
        v207 = v205 / 8;
        if (v205 >= 8)
        {
          v208 = *(v202 + 8 * v13);
          v209 = *(v204 + 8 * v513);
          v210 = v205 / 8;
          v211 = *(v203 + 8 * v13);
          v212 = *v514;
          do
          {
            v213 = *v212;
            v214 = v212[1];
            v212 += 2;
            v215 = *v211;
            v216 = v211[1];
            v211 += 2;
            v217 = vmulq_f32(v216, v214);
            v218 = vmulq_f32(v215, v213);
            v220 = *v209;
            v219 = v209[1];
            v209 += 2;
            v221 = vmlaq_f32(v208[1], v217, v219);
            *v208 = vmlaq_f32(*v208, v218, v220);
            v208[1] = v221;
            v208 += 2;
            --v210;
          }

          while (v210);
        }

        v222 = 8 * v207;
        if (8 * v207 < v205)
        {
          v223 = *(v203 + 8 * v13);
          v224 = *(v204 + 8 * v513);
          v225 = *v514;
          v226 = *(v202 + 8 * v13);
          v227 = v222;
          v228 = v205 - v222;
          if (v228 <= 7)
          {
            goto LABEL_151;
          }

          v229 = 4 * v222;
          v230 = v226 + v229;
          v231 = v226 + v206;
          v232 = v226 + v229 >= (v223 + v206) || v223 + v229 >= v231;
          v233 = !v232;
          v234 = v230 >= v224 + v206 || v224 + 4 * v227 >= v231;
          v235 = !v234;
          if (v225 + v229 < v231 && v230 < v225 + v206)
          {
            goto LABEL_151;
          }

          if (v233)
          {
            goto LABEL_151;
          }

          if (v235)
          {
            goto LABEL_151;
          }

          v237 = v228 - (v205 & 7) + v227;
          v238 = v227 + (v205 & 7) - v205;
          v239 = (v226 + v229 + 16);
          v240 = (v225 + v229 + 16);
          v241 = (v224 + v229 + 16);
          v242 = (v223 + v229 + 16);
          do
          {
            v243 = vmlaq_f32(*v239, vmulq_f32(*v242, *v240), *v241);
            v239[-1] = vmlaq_f32(v239[-1], vmulq_f32(v242[-1], v240[-1]), v241[-1]);
            *v239 = v243;
            v239 += 2;
            v240 += 2;
            v241 += 2;
            v242 += 2;
            v238 += 8;
          }

          while (v238);
          v227 = v237;
          if ((v205 & 7) != 0)
          {
LABEL_151:
            v244 = v205 - v227;
            v245 = (v226 + 4 * v227);
            v246 = (v224 + 4 * v227);
            v247 = (v223 + 4 * v227);
            v248 = &v225->f32[v227];
            do
            {
              v249 = *v248++;
              v250 = v249;
              v251 = *v247++;
              v252 = v251;
              v253 = *v246++;
              *v245 = *v245 + ((v252 * v250) * v253);
              ++v245;
              --v244;
            }

            while (v244);
          }
        }
      }

      v254 = *(a1 + 912);
      v255 = *(a1 + 960);
      v256 = *(a1 + 52);
      v257 = 4 * v256;
      bzero(*(v254 + 8 * v13), 4 * v256);
      v258 = v256 / 8;
      v6 = v511;
      if (v256 >= 8)
      {
        v259 = *(v254 + 8 * v13);
        v260 = *v7;
        v261 = *(v255 + 8 * v13);
        v262 = v256 / 8;
        v263 = *v511;
        do
        {
          v264 = *v263;
          v265 = v263[1];
          v263 += 2;
          v266 = *v261;
          v267 = v261[1];
          v261 += 2;
          v268 = vmulq_f32(v267, v265);
          v269 = vmulq_f32(v266, v264);
          v271 = *v260;
          v270 = *(v260 + 4);
          v260 += 8;
          v272 = vmlaq_f32(v259[1], v268, v270);
          *v259 = vmlaq_f32(*v259, v269, v271);
          v259[1] = v272;
          v259 += 2;
          --v262;
        }

        while (v262);
      }

      v273 = 8 * v258;
      if (8 * v258 < v256)
      {
        v274 = *v511;
        v275 = *(v255 + 8 * v13);
        v276 = *v7;
        v277 = *(v254 + 8 * v13);
        v278 = v273;
        v279 = v256 - v273;
        if (v279 <= 7)
        {
          goto LABEL_180;
        }

        v280 = 4 * v273;
        v281 = v277 + v280;
        v282 = v277 + v257;
        v283 = v277 + v280 >= (v275 + v257) || v275 + v280 >= v282;
        v284 = !v283;
        v285 = v281 >= &v276[v257 / 4] || &v276[v278] >= v282;
        v286 = !v285;
        if (v274 + v280 < v282 && v281 < v274 + v257)
        {
          goto LABEL_180;
        }

        if (v284)
        {
          goto LABEL_180;
        }

        if (v286)
        {
          goto LABEL_180;
        }

        v288 = v279 - (v256 & 7) + v278;
        v289 = v278 + (v256 & 7) - v256;
        v290 = (v277 + v280 + 16);
        v291 = (v274 + v280 + 16);
        v292 = &v276[v280 / 4 + 4];
        v293 = (v275 + v280 + 16);
        do
        {
          v294 = vmlaq_f32(*v290, vmulq_f32(*v293, *v291), *v292);
          v290[-1] = vmlaq_f32(v290[-1], vmulq_f32(v293[-1], v291[-1]), v292[-1]);
          *v290 = v294;
          v290 += 2;
          v291 += 2;
          v292 += 2;
          v293 += 2;
          v289 += 8;
        }

        while (v289);
        v278 = v288;
        if ((v256 & 7) != 0)
        {
LABEL_180:
          v295 = v256 - v278;
          v296 = (v277 + 4 * v278);
          v297 = &v276[v278];
          v298 = (v275 + 4 * v278);
          v299 = &v274->f32[v278];
          do
          {
            v300 = *v299++;
            v301 = v300;
            v302 = *v298++;
            v303 = v302;
            v304 = *v297++;
            *v296 = *v296 + ((v303 * v301) * v304);
            ++v296;
            --v295;
          }

          while (v295);
        }
      }

      if (((**a1)(a1) & 1) == 0)
      {
        bzero(*(*(a1 + 816) + 8 * v13), 4 * *(a1 + 48));
        sub_19D30A978();
      }

      v8 = v126 - 1;
      if (v126 <= 0)
      {
        goto LABEL_184;
      }
    }

    v122 = *(*(a1 + 864) + 8 * v13);
    v123 = **(a1 + 2584);
    v124 = *(v120 + 8 * v13);
    v7 = v17;
    if (v121 >= 4)
    {
      v127 = v124 >= v122 + 4 * v121 || v122 >= v124 + 4 * v121;
      v126 = v516;
      if (v127)
      {
        if (v121 >= 0x10)
        {
          v125 = v121 & 0x7FFFFFF0;
          v128 = (v122 + 32);
          v129 = v123 + 2;
          v130 = (v124 + 32);
          v131 = v125;
          do
          {
            v132 = v128[-2];
            v133 = v128[-1];
            v134 = *v128;
            v135 = v128[1];
            v128 += 4;
            v136 = *v129[-2].i8;
            v137 = vmlaq_f32(v130[-1], v133, vcvtq_f32_s32(vmovl_high_s16(v136)));
            v138 = vmlaq_f32(*v130, v134, vcvtq_f32_s32(vmovl_s16(*v129)));
            v139 = vmlaq_f32(v130[1], v135, vcvtq_f32_s32(vmovl_high_s16(*v129->i8)));
            v130[-2] = vmlaq_f32(v130[-2], v132, vcvtq_f32_s32(vmovl_s16(*v136.i8)));
            v130[-1] = v137;
            *v130 = v138;
            v130[1] = v139;
            v130 += 4;
            v129 += 4;
            v131 -= 16;
          }

          while (v131);
          if (v125 == v121)
          {
            goto LABEL_93;
          }

          if ((v121 & 0xC) == 0)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v125 = 0;
        }

        v140 = v125;
        v125 = v121 & 0x7FFFFFFC;
        v141 = (v122 + 4 * v140);
        v142 = (v123 + 2 * v140);
        v143 = (v124 + 4 * v140);
        v144 = v140 - v125;
        do
        {
          v145 = *v141++;
          v146 = v145;
          v145.i64[0] = *v142++;
          *v143 = vmlaq_f32(*v143, v146, vcvtq_f32_s32(vmovl_s16(*v145.f32)));
          ++v143;
          v144 += 4;
        }

        while (v144);
        if (v125 == v121)
        {
          goto LABEL_93;
        }

        goto LABEL_91;
      }

      v125 = 0;
    }

    else
    {
      v125 = 0;
      v126 = v516;
    }

LABEL_91:
    v147 = v121 - v125;
    v148 = (v124 + 4 * v125);
    v149 = v123 + v125;
    v150 = (v122 + 4 * v125);
    do
    {
      v151 = *v150++;
      v152 = v151;
      v153 = *v149++;
      *v148 = *v148 + (v152 * v153);
      ++v148;
      --v147;
    }

    while (v147);
LABEL_93:
    LODWORD(v121) = *(a1 + 52);
    v120 = *(a1 + 960);
    goto LABEL_94;
  }

LABEL_184:
  v305 = *(a1 + 52);
  if (v305 > 0)
  {
    v306 = 4 * v305;
    bzero(*(a1 + 1528), 4 * v305);
    v307 = (a1 + 1536);
    bzero(*(a1 + 1536), v306);
    v308 = (a1 + 1544);
    bzero(*(a1 + 1544), v306);
    v309 = a3;
    if (*(a1 + 56) <= 0)
    {
      goto LABEL_187;
    }

    goto LABEL_186;
  }

  v307 = (a1 + 1536);
  v308 = (a1 + 1544);
  v309 = a3;
  if (*(a1 + 56) > 0)
  {
LABEL_186:
    *(a1 + 1000) = 0;
    *(a1 + 1240) = 0;
    *(a1 + 1120) = 0;
    *(a1 + 1360) = 0;
  }

LABEL_187:
  if (a5 > 1)
  {
    v310 = 1;
    do
    {
      v314 = v523 - v310;
      if (*(a1 + 2672))
      {
        v315 = a5 - 2;
      }

      else
      {
        v314 = v310;
        v315 = 1;
      }

      if (*(a1 + 2672))
      {
        v316 = v314 + 1;
      }

      else
      {
        v316 = v314 - 1;
      }

      v317 = *(a1 + 912);
      v318 = *(a1 + 88);
      v319 = *(a1 + 52);
      v320 = v319 / 8;
      if (v319 >= 8)
      {
        v321 = *(a1 + 1528);
        v322 = *(v318 + 8 * v316);
        v323 = v319 / 8;
        v324 = *(v317 + 8 * v314);
        do
        {
          v326 = *v324;
          v325 = v324[1];
          v324 += 2;
          v328 = *v322;
          v327 = v322[1];
          v322 += 2;
          v329 = vmlaq_f32(v321[1], v327, v325);
          *v321 = vmlaq_f32(*v321, v328, v326);
          v321[1] = v329;
          v321 += 2;
          --v323;
        }

        while (v323);
      }

      v330 = 8 * v320;
      if (8 * v320 < v319)
      {
        v331 = *(v317 + 8 * v314);
        v332 = *(v318 + 8 * v316);
        v333 = *(a1 + 1528);
        v334 = v330;
        v335 = v319 - v330;
        if (v335 <= 7)
        {
          goto LABEL_216;
        }

        v336 = 4 * v330;
        v337 = v333 + 4 * v319;
        v338 = v333 + v336 >= (v332 + 4 * v319) || v332 + 4 * v330 >= v337;
        v339 = !v338;
        if (v331 + v336 < v337 && v333 + v336 < (v331 + 4 * v319))
        {
          goto LABEL_216;
        }

        if (v339)
        {
          goto LABEL_216;
        }

        v341 = v335 - (v319 & 7) + v334;
        v342 = v334 + (v319 & 7) - v319;
        v343 = (v333 + v336 + 16);
        v344 = (v331 + v336 + 16);
        v345 = (v332 + v336 + 16);
        do
        {
          v346 = vmlaq_f32(*v343, *v345, *v344);
          v343[-1] = vmlaq_f32(v343[-1], v345[-1], v344[-1]);
          *v343 = v346;
          v343 += 2;
          v344 += 2;
          v345 += 2;
          v342 += 8;
        }

        while (v342);
        v334 = v341;
        if ((v319 & 7) != 0)
        {
LABEL_216:
          v347 = v319 - v334;
          v348 = (v333 + 4 * v334);
          v349 = (v332 + 4 * v334);
          v350 = (v331 + 4 * v334);
          do
          {
            v351 = *v350++;
            v352 = v351;
            v353 = *v349++;
            *v348 = *v348 + (v353 * v352);
            ++v348;
            --v347;
          }

          while (v347);
        }
      }

      v354 = *(a1 + 888);
      v355 = *(a1 + 88);
      v356 = *(a1 + 52);
      v357 = v356 / 8;
      if (v356 >= 8)
      {
        v358 = *v307;
        v359 = *(v355 + 8 * v316);
        v360 = v356 / 8;
        v361 = *(v354 + 8 * v314);
        do
        {
          v363 = *v361;
          v362 = v361[1];
          v361 += 2;
          v365 = *v359;
          v364 = v359[1];
          v359 += 2;
          v366 = vmlaq_f32(v358[1], v364, v362);
          *v358 = vmlaq_f32(*v358, v365, v363);
          v358[1] = v366;
          v358 += 2;
          --v360;
        }

        while (v360);
      }

      v367 = 8 * v357;
      if (8 * v357 < v356)
      {
        v368 = *(v354 + 8 * v314);
        v369 = *(v355 + 8 * v316);
        v370 = *v307;
        v371 = v367;
        v372 = v356 - v367;
        if (v372 <= 7)
        {
          goto LABEL_238;
        }

        v373 = 4 * v367;
        v374 = v370->u64 + 4 * v356;
        v375 = v370 + v373 >= v369 + 4 * v356 || v369 + 4 * v367 >= v374;
        v376 = !v375;
        if (v368 + v373 < v374 && v370 + v373 < v368 + 4 * v356)
        {
          goto LABEL_238;
        }

        if (v376)
        {
          goto LABEL_238;
        }

        v378 = v372 - (v356 & 7) + v371;
        v379 = v371 + (v356 & 7) - v356;
        v380 = (v370 + v373 + 16);
        v381 = (v368 + v373 + 16);
        v382 = (v369 + v373 + 16);
        do
        {
          v383 = vmlaq_f32(*v380, *v382, *v381);
          v380[-1] = vmlaq_f32(v380[-1], v382[-1], v381[-1]);
          *v380 = v383;
          v380 += 2;
          v381 += 2;
          v382 += 2;
          v379 += 8;
        }

        while (v379);
        v371 = v378;
        if ((v356 & 7) != 0)
        {
LABEL_238:
          v384 = v356 - v371;
          v385 = &v370->f32[v371];
          v386 = (v369 + 4 * v371);
          v387 = (v368 + 4 * v371);
          do
          {
            v388 = *v387++;
            v389 = v388;
            v390 = *v386++;
            *v385 = *v385 + (v390 * v389);
            ++v385;
            --v384;
          }

          while (v384);
        }
      }

      v311 = v314 == v315;
      v312 = 8 * v314;
      v313 = 8 * v316;
      sub_19D30A868(*(a1 + 64) + v312, *(a1 + 912) + v312, *(a1 + 112) + 8 * v316, (a1 + 1496), *(a1 + 52), *(a1 + 52), v311);
      sub_19D30A868(*(a1 + 64) + v312, *(a1 + 888) + v312, *(a1 + 112) + v313, (a1 + 1504), *(a1 + 52), *(a1 + 52), v311);
      sub_19D30A868(*(a1 + 64) + v312, *(a1 + 864) + v312, *(a1 + 112) + v313, (a1 + 1512), *(a1 + 52), *(a1 + 52), v311);
      sub_19D30A868(*(a1 + 64) + v312, *(a1 + 936) + v312, *(a1 + 112) + v313, (a1 + 1520), *(a1 + 52), *(a1 + 52), v311);
      ++v310;
    }

    while (v310 != a5);
    v391 = 1;
    v309 = a3;
    do
    {
      if (*(a1 + 2672))
      {
        v392 = v523 - v391;
      }

      else
      {
        v392 = v391;
      }

      if (*(a1 + 2672))
      {
        v393 = a5 - 2;
      }

      else
      {
        v393 = 1;
      }

      if (v309[1] == *v309 || *(a1 + 56) < 1 || !(**a1)(a1))
      {
        sub_19D30A868(*(a1 + 64) + 8 * v392, *(a1 + 888) + 8 * v392, *(a1 + 64) + 8 * v392, (a1 + 1472), *(a1 + 52), *(a1 + 48), v392 == v393);
      }

      else
      {
        v394 = (*(a1 + 208) + 24 * v392);
        v396 = *v394;
        v395 = v394[1];
        if (v395 != v396)
        {
          if (((v395 - v396) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          goto LABEL_352;
        }

        v397 = *(a1 + 52);
        v309 = a3;
        if (v397 >= 1)
        {
          v398 = 0;
          v399 = *(*(a1 + 888) + 8 * v392);
          v400 = *(*(a1 + 1128) + 8 * *(a1 + 1120));
          if (v397 < 8)
          {
            goto LABEL_262;
          }

          if ((v400 - v399) < 0x20)
          {
            goto LABEL_262;
          }

          v398 = v397 & 0x7FFFFFF8;
          v401 = (v399 + 16);
          v402 = (v400 + 16);
          v403 = v398;
          do
          {
            v404 = *v401;
            *(v402 - 1) = *(v401 - 1);
            *v402 = v404;
            v401 += 2;
            v402 += 2;
            v403 -= 8;
          }

          while (v403);
          if (v398 != v397)
          {
LABEL_262:
            v405 = v397 - v398;
            v406 = 4 * v398;
            v407 = (v400 + 4 * v398);
            v408 = (v399 + v406);
            do
            {
              v409 = *v408++;
              *v407++ = v409;
              --v405;
            }

            while (v405);
          }
        }

        if (*(a1 + 1116) < 1)
        {
          ++*(a1 + 1120);
        }

        else
        {
          v410 = 0;
          v411 = *(a1 + 1152);
          do
          {
            *(*(v411 + 24 * *(a1 + 1120)) + 4 * v410) = *(4 * v410);
            ++v410;
          }

          while (v410 < *(a1 + 1116));
          ++*(a1 + 1120);
          operator delete(0);
        }
      }

      ++v391;
    }

    while (v391 != a5);
  }

  if (a5 >= 1)
  {
    v412 = 0;
    while (1)
    {
      v416 = v523 - v412;
      if (*(a1 + 2672))
      {
        v417 = v523;
      }

      else
      {
        v416 = v412;
        v417 = 0;
      }

      v418 = v416;
      v419 = *(a1 + 864);
      v420 = *(a1 + 88);
      v421 = *(a1 + 52);
      v422 = v421 / 8;
      if (v421 >= 8)
      {
        v423 = *v308;
        v424 = *(v420 + 8 * v418);
        v425 = v421 / 8;
        v426 = *(v419 + 8 * v418);
        do
        {
          v428 = *v426;
          v427 = v426[1];
          v426 += 2;
          v430 = *v424;
          v429 = v424[1];
          v424 += 2;
          v431 = vmlaq_f32(v423[1], v429, v427);
          *v423 = vmlaq_f32(*v423, v430, v428);
          v423[1] = v431;
          v423 += 2;
          --v425;
        }

        while (v425);
      }

      v432 = 8 * v422;
      if (8 * v422 < v421)
      {
        v433 = *(v419 + 8 * v418);
        v434 = *(v420 + 8 * v418);
        v435 = *v308;
        v436 = v432;
        v437 = v421 - v432;
        if (v437 <= 7)
        {
          goto LABEL_297;
        }

        v438 = 4 * v432;
        v439 = v435->u64 + 4 * v421;
        v440 = v435 + v438 >= v434 + 4 * v421 || v434 + 4 * v432 >= v439;
        v441 = !v440;
        if (v433 + v438 < v439 && v435 + v438 < v433 + 4 * v421)
        {
          goto LABEL_297;
        }

        if (v441)
        {
          goto LABEL_297;
        }

        v443 = v437 - (v421 & 7) + v436;
        v444 = v436 + (v421 & 7) - v421;
        v445 = (v435 + v438 + 16);
        v446 = (v433 + v438 + 16);
        v447 = (v434 + v438 + 16);
        do
        {
          v448 = vmlaq_f32(*v445, *v447, *v446);
          v445[-1] = vmlaq_f32(v445[-1], v447[-1], v446[-1]);
          *v445 = v448;
          v445 += 2;
          v446 += 2;
          v447 += 2;
          v444 += 8;
        }

        while (v444);
        v436 = v443;
        if ((v421 & 7) != 0)
        {
LABEL_297:
          v449 = v421 - v436;
          v450 = &v435->f32[v436];
          v451 = (v434 + 4 * v436);
          v452 = (v433 + 4 * v436);
          do
          {
            v453 = *v452++;
            v454 = v453;
            v455 = *v451++;
            *v450 = *v450 + (v455 * v454);
            ++v450;
            --v449;
          }

          while (v449);
        }
      }

      if (v309[1] == *v309)
      {
        break;
      }

      v413 = *(a1 + 912);
      if (*(a1 + 56) < 1)
      {
        goto LABEL_272;
      }

      v456 = (*(a1 + 208) + 24 * v418);
      v458 = *v456;
      v457 = v456[1];
      if (v457 != v458)
      {
        if (((v457 - v458) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_352;
      }

      v459 = *(a1 + 52);
      if (v459 >= 1)
      {
        v460 = 0;
        v461 = *(v413 + 8 * v418);
        v462 = *(*(a1 + 1008) + 8 * *(a1 + 1000));
        if (v459 < 8)
        {
          goto LABEL_310;
        }

        if ((v462 - v461) < 0x20)
        {
          goto LABEL_310;
        }

        v460 = v459 & 0x7FFFFFF8;
        v463 = (v461 + 16);
        v464 = (v462 + 16);
        v465 = v460;
        do
        {
          v466 = *v463;
          *(v464 - 1) = *(v463 - 1);
          *v464 = v466;
          v463 += 2;
          v464 += 2;
          v465 -= 8;
        }

        while (v465);
        if (v460 != v459)
        {
LABEL_310:
          v467 = v459 - v460;
          v468 = 4 * v460;
          v469 = (v462 + 4 * v460);
          v470 = (v461 + v468);
          do
          {
            v471 = *v470++;
            *v469++ = v471;
            --v467;
          }

          while (v467);
        }
      }

      if (*(a1 + 996) < 1)
      {
        ++*(a1 + 1000);
      }

      else
      {
        v472 = 0;
        v473 = *(a1 + 1032);
        do
        {
          *(*(v473 + 24 * *(a1 + 1000)) + 4 * v472) = *(4 * v472);
          ++v472;
        }

        while (v472 < *(a1 + 996));
        ++*(a1 + 1000);
        operator delete(0);
      }

      v474 = (*(a1 + 208) + 24 * v418);
      v476 = *v474;
      v475 = v474[1];
      if (v475 != v476)
      {
        if (((v475 - v476) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        goto LABEL_352;
      }

      v477 = *(a1 + 52);
      if (v477 >= 1)
      {
        v478 = 0;
        v479 = *(*(a1 + 864) + 8 * v418);
        v480 = *(*(a1 + 1248) + 8 * *(a1 + 1240));
        if (v477 < 8)
        {
          goto LABEL_326;
        }

        if ((v480 - v479) < 0x20)
        {
          goto LABEL_326;
        }

        v478 = v477 & 0x7FFFFFF8;
        v481 = (v479 + 16);
        v482 = (v480 + 16);
        v483 = v478;
        do
        {
          v484 = *v481;
          *(v482 - 1) = *(v481 - 1);
          *v482 = v484;
          v481 += 2;
          v482 += 2;
          v483 -= 8;
        }

        while (v483);
        if (v478 != v477)
        {
LABEL_326:
          v485 = v477 - v478;
          v486 = 4 * v478;
          v487 = (v480 + 4 * v478);
          v488 = (v479 + v486);
          do
          {
            v489 = *v488++;
            *v487++ = v489;
            --v485;
          }

          while (v485);
        }
      }

      if (*(a1 + 1236) < 1)
      {
        ++*(a1 + 1240);
      }

      else
      {
        v490 = 0;
        v491 = *(a1 + 1272);
        do
        {
          *(*(v491 + 24 * *(a1 + 1240)) + 4 * v490) = *(4 * v490);
          ++v490;
        }

        while (v490 < *(a1 + 1236));
        ++*(a1 + 1240);
        operator delete(0);
      }

      v492 = (*(a1 + 208) + 24 * v418);
      v494 = *v492;
      v493 = v492[1];
      if (v493 != v494)
      {
        if (((v493 - v494) & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_352:
        sub_19D2AE2B4();
      }

      v495 = *(a1 + 52);
      v309 = a3;
      if (v495 >= 1)
      {
        v496 = 0;
        v497 = *(*(a1 + 936) + 8 * v418);
        v498 = *(*(a1 + 1368) + 8 * *(a1 + 1360));
        if (v495 < 8)
        {
          goto LABEL_342;
        }

        if ((v498 - v497) < 0x20)
        {
          goto LABEL_342;
        }

        v496 = v495 & 0x7FFFFFF8;
        v499 = (v497 + 16);
        v500 = (v498 + 16);
        v501 = v496;
        do
        {
          v502 = *v499;
          *(v500 - 1) = *(v499 - 1);
          *v500 = v502;
          v499 += 2;
          v500 += 2;
          v501 -= 8;
        }

        while (v501);
        if (v496 != v495)
        {
LABEL_342:
          v503 = v495 - v496;
          v504 = 4 * v496;
          v505 = (v498 + 4 * v496);
          v506 = (v497 + v504);
          do
          {
            v507 = *v506++;
            *v505++ = v507;
            --v503;
          }

          while (v503);
        }
      }

      if (*(a1 + 1356) < 1)
      {
        ++*(a1 + 1360);
      }

      else
      {
        v508 = 0;
        v509 = *(a1 + 1392);
        do
        {
          *(*(v509 + 24 * *(a1 + 1360)) + 4 * v508) = *(4 * v508);
          ++v508;
        }

        while (v508 < *(a1 + 1356));
        ++*(a1 + 1360);
        operator delete(0);
      }

LABEL_273:
      if (++v412 == a5)
      {
        return;
      }
    }

    v413 = *(a1 + 912);
LABEL_272:
    v414 = v418 == v417;
    v415 = 8 * v418;
    sub_19D30A868(*(a1 + 64) + 8 * v418, v413 + 8 * v418, *(a1 + 64) + 8 * v418, (a1 + 1464), *(a1 + 52), *(a1 + 48), v414);
    sub_19D30A868(*(a1 + 64) + v415, *(a1 + 864) + v415, *(a1 + 64) + v415, (a1 + 1480), *(a1 + 52), *(a1 + 48), v414);
    sub_19D30A868(*(a1 + 64) + v415, *(a1 + 936) + v415, *(a1 + 64) + v415, (a1 + 1488), *(a1 + 52), *(a1 + 48), v414);
    goto LABEL_273;
  }
}

uint64_t sub_19D303F24(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2672] = 1;
  if ((atomic_load_explicit(&qword_1EB0138E8, memory_order_acquire) & 1) == 0)
  {
    v12 = a6;
    v9 = a5;
    v11 = a4;
    v8 = a3;
    v10 = a2;
    sub_19D4541F0();
    a5 = v9;
    a2 = v10;
    a3 = v8;
    a4 = v11;
    a6 = v12;
  }

  result = (*(*a1 + 304))(a1, a2, a3, a4, a5, a6, qword_1EB0138D0);
  a1[2672] = 0;
  return result;
}

uint64_t sub_19D303FCC(_BYTE *a1)
{
  a1[2672] = 1;
  result = (*(*a1 + 296))(a1);
  a1[2672] = 0;
  return result;
}

char *sub_19D304024(uint64_t a1, void *lpsrc)
{
  if (*(a1 + 2496) != 1)
  {
    sub_19D41C548(1);
  }

  result = __dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B68D0, 0);
  if (!result)
  {
    __cxa_bad_cast();
  }

  *(a1 + 2504) = result + 232;
  *(a1 + 2520) = result + 248;
  *(a1 + 2512) = result + 240;
  *(a1 + 2528) = result + 256;
  *(a1 + 2536) = result + 264;
  *(a1 + 2552) = result + 280;
  *(a1 + 2544) = result + 272;
  *(a1 + 2560) = result + 288;
  *(a1 + 2568) = result + 296;
  *(a1 + 2576) = result + 304;
  *(a1 + 2584) = result + 312;
  *(a1 + 2592) = result + 320;
  *(a1 + 2600) = result + 328;
  *(a1 + 2608) = result + 336;
  *(a1 + 2616) = result + 344;
  return result;
}

void sub_19D304120(uint64_t a1, void *lpsrc)
{
  if (!*(a1 + 2496))
  {
    if (!__dynamic_cast(lpsrc, &unk_1F10B68C0, &unk_1F10B68D0, 0))
    {
      __cxa_bad_cast();
    }

    sub_19D41C548(34);
  }

  sub_19D41C548(1);
}

void sub_19D3041C0(void *a1)
{
  v1 = sub_19D30C43C(a1);

  operator delete(v1);
}

uint64_t sub_19D3041EC(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EB0138C8, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_19D45424C();
    a1 = v3;
  }

  v1 = *(*a1 + 304);

  return v1();
}

void sub_19D3042B0(uint64_t a1, __int128 *a2, int a3, int a4, char a5, float a6)
{
  *a1 = &unk_1F10B6A80;
  *(a1 + 8) = a6;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    sub_19D2AD6B8((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v8;
  }

  *(a1 + 56) = a5;
  operator new();
}

void sub_19D3043A0(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D3043CC(uint64_t a1, void *a2, void *a3, float a4)
{
  if (a4 == 0.0)
  {
    a4 = *(a1 + 8);
  }

  else
  {
    *(a1 + 8) = a4;
  }

  v9 = v4;
  v10 = v5;
  v6 = *(a1 + 16) * *(a1 + 12);
  v8 = a4;
  return MEMORY[0x19EAFB1F0](*a3, 1, &v8, *a2, 1, *a2, 1, v6);
}

void sub_19D304428(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (a4 != 0.0)
  {
    *(a1 + 8) = a4;
  }

  sub_19D30485C(a3, a2, *(a1 + 12));
}

uint64_t sub_19D304468(uint64_t result, uint64_t a2, float32x4_t *a3, unint64_t a4, unsigned int a5)
{
  if (a5 >= 1)
  {
    v5 = (result + 8);
    if (a5 <= 7)
    {
      v6 = 0;
LABEL_4:
      v7 = (a4 + 4 * v6);
      v8 = &a3->f32[v6];
      v9 = a5 - v6;
      do
      {
        v10 = *v8++;
        *v7++ = *v5 * v10;
        --v9;
      }

      while (v9);
      return result;
    }

    v6 = 0;
    v11 = a4 + 4 * a5;
    v13 = result + 12 > a4 && v5 < v11;
    if (v11 > a3 && a3->u64 + 4 * a5 > a4)
    {
      goto LABEL_4;
    }

    if (v13)
    {
      goto LABEL_4;
    }

    v6 = a5 & 0x7FFFFFF8;
    v15 = vld1q_dup_f32(v5);
    v16 = a3 + 1;
    v17 = (a4 + 16);
    v18 = v6;
    do
    {
      v19 = vmulq_f32(v15, *v16);
      v17[-1] = vmulq_f32(v15, v16[-1]);
      *v17 = v19;
      v16 += 2;
      v17 += 2;
      v18 -= 8;
    }

    while (v18);
    if (v6 != a5)
    {
      goto LABEL_4;
    }
  }

  return result;
}

char *sub_19D304524@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[55] < 0)
  {
    return sub_19D2AD6B8(a2, *(result + 4), *(result + 5));
  }

  *a2 = *(result + 2);
  *(a2 + 16) = *(result + 6);
  return result;
}

uint64_t sub_19D30455C(uint64_t a1)
{
  *a1 = &unk_1F10B6A80;
  v2 = *(a1 + 24);
  if (v2)
  {
    if (!*v2 || (operator delete[](*v2), (v2 = *(a1 + 24)) != 0))
    {
      operator delete(v2);
    }

    *(a1 + 24) = 0;
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  return a1;
}

void sub_19D3045E4(char *__p)
{
  *__p = &unk_1F10B6A80;
  v2 = *(__p + 3);
  if (v2)
  {
    if (!*v2 || (operator delete[](*v2), (v2 = *(__p + 3)) != 0))
    {
      operator delete(v2);
    }

    *(__p + 3) = 0;
  }

  if (__p[55] < 0)
  {
    operator delete(*(__p + 4));
    v3 = __p;
  }

  else
  {
    v3 = __p;
  }

  operator delete(v3);
}

void *sub_19D30468C(void *result, int a2, float a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 4 * a2;
    v5 = a3 * 4.6566e-10;
    do
    {
      if ((atomic_load_explicit(&qword_1EB013D60, memory_order_acquire) & 1) == 0)
      {
        v21 = a3;
        v17 = result;
        v19 = v3;
        v15 = v4;
        v13 = v5;
        sub_19D4542A8();
        v5 = v13;
        v4 = v15;
        result = v17;
        v3 = v19;
        a3 = v21;
      }

      v6 = (qword_1EB0147C8 + 1) % 0x270uLL;
      v7 = dword_1EB013E08[v6];
      v8 = v7 & 0x7FFFFFFE | dword_1EB013E08[qword_1EB0147C8] & 0x80000000;
      if (v7)
      {
        v9 = -1727483681;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 ^ dword_1EB013E08[(qword_1EB0147C8 + 397) % 0x270uLL] ^ (v8 >> 1);
      dword_1EB013E08[qword_1EB0147C8] = v10;
      qword_1EB0147C8 = v6;
      if ((atomic_load_explicit(&qword_1EB013D60, memory_order_acquire) & 1) == 0)
      {
        v22 = a3;
        v18 = result;
        v20 = v3;
        v16 = v4;
        v14 = v5;
        v12 = v10;
        sub_19D4542A8();
        v10 = v12;
        v5 = v14;
        v4 = v16;
        result = v18;
        v3 = v20;
        a3 = v22;
      }

      v11 = ((v10 ^ (v10 >> 11)) << 7) & 0x9D2C5680 ^ v10 ^ (v10 >> 11);
      *(*result + v3) = -(a3 - (v5 * ((v11 << 15) & 0xEFC60000 ^ v11 ^ (((v11 << 15) & 0xEFC60000 ^ v11) >> 18))));
      v3 += 4;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_19D30485C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v34[0] = 0;
  v34[1] = 0;
  v33 = v34;
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  v4 = *(a1 + 16);
  if (v4 >= 1 && *(a1 + 12) >= 1)
  {
    operator new();
  }

  v5 = **(a1 + 80);
  if (v4 >= 1)
  {
    v6 = *(a1 + 12);
    if (v6 >= 1 && a3 >= 1)
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 24);
      if (a3 < 8)
      {
        for (i = 0; i != v4; ++i)
        {
          v10 = *(v7 + 24 * i);
          v11 = *(v8 + 8 * i);
          v12 = v6;
          do
          {
            v13 = *v10++;
            v14 = (v5 + 4 * (v13 * a3));
            *v14 = *v14 + *v11;
            if (a3 != 1)
            {
              v14[1] = v14[1] + v11[1];
              if (a3 != 2)
              {
                v14[2] = v14[2] + v11[2];
                if (a3 != 3)
                {
                  v14[3] = v14[3] + v11[3];
                  if (a3 != 4)
                  {
                    v14[4] = v14[4] + v11[4];
                    if (a3 != 5)
                    {
                      v14[5] = v14[5] + v11[5];
                      if (a3 != 6)
                      {
                        v14[6] = v14[6] + v11[6];
                      }
                    }
                  }
                }
              }
            }

            --v12;
          }

          while (v12);
        }

        goto LABEL_34;
      }

      v15 = 0;
      v16 = 4 * a3;
LABEL_21:
      v17 = 0;
      v18 = *(v7 + 24 * v15);
      v19 = *(v8 + 8 * v15);
      while (1)
      {
        v20 = (*(v18 + 4 * v17) * a3);
        if (v5 + 4 * v20 >= v19 + v16 || v19 >= v5 + v16 + 4 * v20)
        {
          v22 = (v5 + 16 + 4 * v20);
          v23 = a3 & 0x7FFFFFF8;
          v24 = (v19 + 16);
          do
          {
            v25 = vaddq_f32(*v22, *v24);
            v22[-1] = vaddq_f32(v22[-1], v24[-1]);
            *v22 = v25;
            v24 += 2;
            v22 += 2;
            v23 -= 8;
          }

          while (v23);
          v26 = a3 & 0x7FFFFFF8;
          if (v26 == a3)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v26 = 0;
        }

        v27 = (v5 + 4 * v26 + 4 * v20);
        v28 = (v19 + 4 * v26);
        v29 = a3 - v26;
        do
        {
          v30 = *v28++;
          *v27 = *v27 + v30;
          ++v27;
          --v29;
        }

        while (v29);
LABEL_22:
        if (++v17 == v6)
        {
          if (++v15 == v4)
          {
            break;
          }

          goto LABEL_21;
        }
      }
    }
  }

LABEL_34:
  sub_19D2AD8CC(&v31, v32[0]);
  sub_19D2AD8CC(&v33, v34[0]);
}

void sub_19D3057F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, char a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  sub_19D2AD8CC(&a21, a22);
  sub_19D2AD8CC(v22 - 104, *(v22 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_19D305850(uint64_t result, float a2)
{
  if (a2 != 0.0)
  {
    *(result + 20) = a2;
  }

  if ((*(result + 16) & 1) == 0)
  {
    sub_19D305CAC();
  }

  return result;
}

double sub_19D30586C(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (a4 != 0.0)
  {
    *(a1 + 20) = a4;
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    sub_19D305CAC();
  }

  if ((*(*a1 + 56))(a1))
  {
    v7 = *(a1 + 60);
  }

  else
  {
    v7 = *(a1 + 56);
  }

  sub_19D30485C(a3, a2, v7);
  *(a1 + 40) = *(a1 + 40) * *(a1 + 24);
  result = *(a1 + 48) * *(a1 + 32);
  *(a1 + 48) = result;
  ++*(a1 + 8);
  return result;
}

void sub_19D305930(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 40) = *(a1 + 24);
  *(a1 + 48) = *(a1 + 32);
  bzero(**(a1 + 72), 4 * *(a1 + 60) * *(a1 + 56));
  bzero(**(a1 + 80), 4 * *(a1 + 60) * *(a1 + 56));
  bzero(**(a1 + 88), 4 * *(a1 + 60) * *(a1 + 56));
  bzero(**(a1 + 96), 4 * *(a1 + 60) * *(a1 + 56));
  bzero(**(a1 + 120), 4 * *(a1 + 60) * *(a1 + 56));
  v2 = *(a1 + 128);
  if (v2)
  {
    bzero(*v2, 4 * *(a1 + 60) * *(a1 + 56));
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = *v3;
    v5 = 4 * *(a1 + 60) * *(a1 + 56);

    bzero(v4, v5);
  }
}

float sub_19D305A2C(uint64_t a1, int a2, float a3)
{
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v5 = **(a1 + 80);
  *(v5 + 4 * a2) = a3 + ((*(**(a1 + 72) + 4 * a2) - a3) * *(a1 + 24));
  v6 = a3 * a3 + (*(*v4 + 4 * a2) - a3 * a3) * *(a1 + 32);
  *(*v3 + 4 * a2) = v6;
  v7 = v6 / (1.0 - *(a1 + 48));
  v8 = sqrtf(v7);
  result = (*(a1 + 20) * *(v5 + 4 * a2)) / ((v8 + *(a1 + 28)) - (*(a1 + 40) * (v8 + *(a1 + 28))));
  *(**(a1 + 120) + 4 * a2) = result;
  return result;
}

void sub_19D305ACC(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    sub_19D305CAC();
  }

  if (*(a1 + 164) >= 2)
  {
    sub_19D3060DC(*(a1 + 72), "prevM=", *(a1 + 56), *(a1 + 60), 6, 10);
    if (*(a1 + 164) >= 2)
    {
      v2 = *(a1 + 80);
      v3 = *(a1 + 56);
      v4 = *(a1 + 60);

      sub_19D3060DC(v2, "M=", v3, v4, 6, 10);
    }
  }
}

char *sub_19D305B7C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[159] < 0)
  {
    return sub_19D2AD6B8(a2, *(result + 17), *(result + 18));
  }

  *a2 = *(result + 136);
  *(a2 + 16) = *(result + 19);
  return result;
}

uint64_t sub_19D305BB4(uint64_t a1)
{
  *a1 = &unk_1F10B6B10;
  sub_19D307508(a1);
  *(a1 + 16) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  return a1;
}

void sub_19D305C20(uint64_t a1)
{
  *a1 = &unk_1F10B6B10;
  sub_19D307508(a1);
  *(a1 + 16) = 0;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
    v2 = a1;
  }

  else
  {
    v2 = a1;
  }

  operator delete(v2);
}

void sub_19D3060DC(float32x4_t **a1, const char *a2, int a3, int a4, int a5, int a6)
{
  v84 = *MEMORY[0x1E69E9840];
  sprintf(__s, "0x%lx", *a1);
  v11 = strlen(__s);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_19D2AD774();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v11;
  if (v11)
  {
    memcpy(&__dst, __s, v11);
  }

  __dst.__r_.__value_.__s.__data_[v12] = 0;
  v13 = std::string::insert(&__dst, 0, " (");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  v15 = std::string::append(&v74, ") ");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v82 = v15->__r_.__value_.__r.__words[2];
  v81 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v74.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v17 = &v79.__r_.__value_.__s.__data_[3];
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_15:
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (a4 * a3 >= a6)
    {
      v18 = a6;
    }

    else
    {
      v18 = (a4 * a3);
    }

    if (v18 <= 0)
    {
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  operator delete(v74.__r_.__value_.__l.__data_);
  v17 = &v79.__r_.__value_.__s.__data_[3];
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_15;
  }

LABEL_9:
  if (a4 * a3 >= a6)
  {
    v18 = a6;
  }

  else
  {
    v18 = (a4 * a3);
  }

  if (v18 <= 0)
  {
    goto LABEL_33;
  }

LABEL_19:
  v19 = *a1;
  if (v18 < 4)
  {
    v20 = 0;
    LOBYTE(v21) = 1;
    goto LABEL_30;
  }

  __asm { FMOV            V0.4S, #1.0 }

  if (v18 >= 0x20)
  {
    v20 = v18 & 0x7FFFFFE0;
    v27 = v19 + 4;
    v28 = 0uLL;
    v29 = v20;
    v30 = 0uLL;
    do
    {
      v32 = v27[-2];
      v31 = v27[-1];
      v34 = v27[-4];
      v33 = v27[-3];
      v36 = v27[2];
      v35 = v27[3];
      v38 = *v27;
      v37 = v27[1];
      v27 += 8;
      v28 = vorrq_s8(v28, vuzp1q_s8(vuzp1q_s16(vcgtq_f32(vabsq_f32(v34), _Q0), vcgtq_f32(vabsq_f32(v33), _Q0)), vuzp1q_s16(vcgtq_f32(vabsq_f32(v32), _Q0), vcgtq_f32(vabsq_f32(v31), _Q0))));
      v30 = vorrq_s8(v30, vuzp1q_s8(vuzp1q_s16(vcgtq_f32(vabsq_f32(v38), _Q0), vcgtq_f32(vabsq_f32(v37), _Q0)), vuzp1q_s16(vcgtq_f32(vabsq_f32(v36), _Q0), vcgtq_f32(vabsq_f32(v35), _Q0))));
      v29 -= 32;
    }

    while (v29);
    v39 = vcltzq_s8(vshlq_n_s8(vorrq_s8(v30, v28), 7uLL));
    v39.i8[0] = vmaxvq_u8(v39);
    v21 = v39.i32[0] ^ 1;
    if (v20 == v18)
    {
      goto LABEL_32;
    }

    if ((v18 & 0x1C) == 0)
    {
LABEL_30:
      v45 = &v19->f32[v20];
      v46 = v18 - v20;
      do
      {
        v47 = *v45++;
        LOBYTE(v21) = (fabsf(v47) <= 1.0) & v21;
        --v46;
      }

      while (v46);
      goto LABEL_32;
    }
  }

  else
  {
    v20 = 0;
    v21 = 1;
  }

  v40 = v20;
  v20 = v18 & 0x7FFFFFFC;
  v41 = vdup_n_s16(v21 ^ 1u);
  v42 = (v19 + 4 * v40);
  v43 = v40 - v20;
  do
  {
    v44 = *v42++;
    v41 = vorr_s8(v41, vmovn_s32(vcgtq_f32(vabsq_f32(v44), _Q0)));
    v43 += 4;
  }

  while (v43);
  LOBYTE(v21) = vmaxv_u16(vcltz_s16(vshl_n_s16(v41, 0xFuLL))) ^ 1;
  if (v20 != v18)
  {
    goto LABEL_30;
  }

LABEL_32:
  if (v21)
  {
LABEL_33:
    *(&v79.__r_.__value_.__s + 23) = 3;
    qmemcpy(&v79, "yes", 3);
    goto LABEL_35;
  }

  v17 = &v79.__r_.__value_.__s.__data_[2];
  *(&v79.__r_.__value_.__s + 23) = 2;
  LOWORD(v79.__r_.__value_.__l.__data_) = 28526;
LABEL_35:
  *v17 = 0;
  v48 = std::string::insert(&v79, 0, " (");
  v49 = *&v48->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v49;
  v48->__r_.__value_.__l.__size_ = 0;
  v48->__r_.__value_.__r.__words[2] = 0;
  v48->__r_.__value_.__r.__words[0] = 0;
  v50 = std::string::append(&v74, ") ");
  v51 = *&v50->__r_.__value_.__l.__data_;
  __dst.__r_.__value_.__r.__words[2] = v50->__r_.__value_.__r.__words[2];
  *&__dst.__r_.__value_.__l.__data_ = v51;
  v50->__r_.__value_.__l.__size_ = 0;
  v50->__r_.__value_.__r.__words[2] = 0;
  v50->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_37;
    }
  }

  else if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(v79.__r_.__value_.__l.__data_);
LABEL_37:
  sub_19D306AF4(&v74);
  v52 = strlen(a2);
  if (v52 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_19D2AD774();
  }

  v53 = v52;
  if (v52 >= 0x17)
  {
    operator new();
  }

  *(&v71.__r_.__value_.__s + 23) = v52;
  if (v52)
  {
    memcpy(&v71, a2, v52);
  }

  v71.__r_.__value_.__s.__data_[v53] = 0;
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v56 = std::string::append(&v71, p_dst, size);
  v57 = *&v56->__r_.__value_.__l.__data_;
  v72.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
  *&v72.__r_.__value_.__l.__data_ = v57;
  v56->__r_.__value_.__l.__size_ = 0;
  v56->__r_.__value_.__r.__words[2] = 0;
  v56->__r_.__value_.__r.__words[0] = 0;
  if (v82 >= 0)
  {
    v58 = &v81;
  }

  else
  {
    v58 = v81;
  }

  if (v82 >= 0)
  {
    v59 = HIBYTE(v82);
  }

  else
  {
    v59 = *(&v81 + 1);
  }

  v60 = std::string::append(&v72, v58, v59);
  v61 = *&v60->__r_.__value_.__l.__data_;
  v73.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
  *&v73.__r_.__value_.__l.__data_ = v61;
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  v62 = std::string::append(&v73, "[");
  v63 = *&v62->__r_.__value_.__l.__data_;
  v79.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
  *&v79.__r_.__value_.__l.__data_ = v63;
  v62->__r_.__value_.__l.__size_ = 0;
  v62->__r_.__value_.__r.__words[2] = 0;
  v62->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_57:
      if ((SHIBYTE(v71.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_58;
      }

LABEL_64:
      operator delete(v71.__r_.__value_.__l.__data_);
      if (v18 < 1)
      {
        goto LABEL_89;
      }

      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_57;
  }

  operator delete(v72.__r_.__value_.__l.__data_);
  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_64;
  }

LABEL_58:
  if (v18 >= 1)
  {
LABEL_65:
    for (i = 0; 4 * v18 != i; i += 4)
    {
      memset(&v73, 0, sizeof(v73));
      std::ios_base::clear((&v74 + *(v74.__r_.__value_.__r.__words[0] - 24)), 0);
      *(&v76[0].__locale_ + *(v74.__r_.__value_.__r.__words[2] - 24)) = a5;
      std::ostream::operator<<();
      sub_19D306E5C(&v74, &v73);
      if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v65 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v65 = v73.__r_.__value_.__l.__size_;
      }

      if (v65 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_19D2AD774();
      }

      if (v65 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v72, 0, sizeof(v72));
      *(&v72.__r_.__value_.__s + 23) = v65 + 1;
      if (v65)
      {
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v66 = &v73;
        }

        else
        {
          v66 = v73.__r_.__value_.__r.__words[0];
        }

        memmove(&v72, v66, v65);
      }

      *(&v72.__r_.__value_.__l.__data_ + v65) = 32;
      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = &v72;
      }

      else
      {
        v67 = v72.__r_.__value_.__r.__words[0];
      }

      if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v68 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v68 = v72.__r_.__value_.__l.__size_;
      }

      std::string::append(&v79, v67, v68);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v72.__r_.__value_.__l.__data_);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_88:
          operator delete(v73.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_88;
      }
    }
  }

LABEL_89:
  std::string::append(&v79, " ]");
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v79.__r_.__value_.__l.__data_);
  }

  v74.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D8];
  v69 = *(MEMORY[0x1E69E54D8] + 72);
  *(v74.__r_.__value_.__r.__words + *(v74.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v74.__r_.__value_.__r.__words[2] = v69;
  v75 = MEMORY[0x1E69E5548] + 16;
  if (v77 < 0)
  {
    operator delete(v76[7].__locale_);
  }

  v75 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v76);
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](&v78);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v82) & 0x80000000) == 0)
    {
      return;
    }

LABEL_97:
    operator delete(v81);
    return;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (SHIBYTE(v82) < 0)
  {
    goto LABEL_97;
  }
}

void sub_19D30696C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a64 < 0)
  {
    operator delete(__p);
  }

  sub_19D30719C(&a23);
  if (a71 < 0)
  {
    operator delete(a66);
  }

  if (*(v71 - 217) < 0)
  {
    operator delete(*(v71 - 240));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_19D306AF4(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  *(a1 + 128) = MEMORY[0x1E69E5560] + 104;
  v3 = MEMORY[0x1E69E5560] + 64;
  *(a1 + 16) = MEMORY[0x1E69E5560] + 64;
  v4 = MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 24);
  v6 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  *(a1 + 8) = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, (a1 + 24));
  v8 = MEMORY[0x1E69E5560] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  v9 = v4[5];
  v10 = v4[4];
  *(a1 + 16) = v10;
  *(a1 + 16 + *(v10 - 24)) = v9;
  v11 = v4[1];
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v4[6];
  *a1 = v8;
  *(a1 + 128) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x19EAFA3C0](a1 + 32);
  *(a1 + 88) = 0;
  v12 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::resize((a1 + 88), 0x16uLL, 0);
  v13 = *(a1 + 111);
  if (v13 < 0)
  {
    v13 = *(a1 + 96);
  }

  *(a1 + 64) = v12;
  *(a1 + 72) = v12;
  *(a1 + 80) = a1 + v13 + 88;
  return a1;
}

void sub_19D306E0C(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v4;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_19D306E5C(uint64_t *a1, uint64_t a2)
{
  MEMORY[0x19EAFA230](&v20, a1, 0);
  if (v20 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v4 = (a1 + *(*a1 - 24));
  width = v4->__width_;
  if (width >= 0x7FFFFFFFFFFFFFF7)
  {
    v6 = 0x7FFFFFFFFFFFFFF7;
  }

  else
  {
    v6 = v4->__width_;
  }

  if (width >= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFF7;
  }

  std::ios_base::getloc(v4);
  v8 = std::locale::use_facet(&v19, MEMORY[0x1E69E5318]);
  std::locale::~locale(&v19);
  if (!v7)
  {
    v16 = *a1;
    *(a1 + *(*a1 - 24) + 24) = 0;
    v17 = 4;
    goto LABEL_28;
  }

  v9 = 0;
  v10 = a1 + 5;
  while (1)
  {
    v11 = *(v10 + *(*a1 - 24));
    v12 = v11[3];
    if (v12 == v11[4])
    {
      break;
    }

    LOBYTE(v13) = *v12;
LABEL_18:
    if ((v13 & 0x80) == 0 && (*(&v8[1].~facet + (v13 & 0x7F)) & 0x4000) != 0)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      if (v9)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    std::string::push_back(a2, v13);
    v14 = *(v10 + *(*a1 - 24));
    v15 = v14[3];
    if (v15 == v14[4])
    {
      (*(*v14 + 80))(v14);
    }

    else
    {
      v14[3] = v15 + 1;
    }

    if (v7 == ++v9)
    {
      v17 = 0;
      v16 = *a1;
      *(a1 + *(*a1 - 24) + 24) = 0;
      goto LABEL_28;
    }
  }

  v13 = (*(*v11 + 72))(v11);
  if (v13 != -1)
  {
    goto LABEL_18;
  }

  v17 = 2;
  v16 = *a1;
  *(a1 + *(*a1 - 24) + 24) = 0;
  if (v9)
  {
    goto LABEL_28;
  }

LABEL_27:
  v17 |= 4u;
LABEL_28:
  std::ios_base::clear((a1 + *(v16 - 24)), *(a1 + *(v16 - 24) + 32) | v17);
  return a1;
}

void sub_19D3070EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  std::locale::~locale(&a9);
  __cxa_begin_catch(a1);
  v11 = *v9;
  *(v9 + *(*v9 - 24) + 32) |= 1u;
  if ((*(v9 + *(v11 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x19D3070ACLL);
  }

  __cxa_rethrow();
}

uint64_t sub_19D30719C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x19EAFA410](a1 + 128);
  return a1;
}

uint64_t *sub_19D3072F0(uint64_t *a1, uint64_t *a2, void *__sb)
{
  v5 = a2[1];
  *a1 = v5;
  *(a1 + *(v5 - 24)) = a2[2];
  a1[1] = 0;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, __sb);
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v7 = a2[3];
  a1[2] = v7;
  *(a1 + *(v7 - 24) + 16) = a2[4];
  v8 = *a2;
  *a1 = *a2;
  *(a1 + *(v8 - 24)) = a2[5];
  a1[2] = a2[6];
  return a1;
}

double sub_19D307508(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    if (*v2)
    {
      operator delete[](*v2);
      v3 = *(a1 + 72);
      if (v3)
      {
        operator delete(v3);
      }
    }
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    if (*v4)
    {
      operator delete[](*v4);
      v5 = *(a1 + 80);
      if (v5)
      {
        operator delete(v5);
      }
    }
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    if (*v6)
    {
      operator delete[](*v6);
      v7 = *(a1 + 88);
      if (v7)
      {
        operator delete(v7);
      }
    }
  }

  v8 = *(a1 + 96);
  if (v8)
  {
    if (*v8)
    {
      operator delete[](*v8);
      v9 = *(a1 + 96);
      if (v9)
      {
        operator delete(v9);
      }
    }
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    if (*v10)
    {
      operator delete[](*v10);
      v11 = *(a1 + 104);
      if (v11)
      {
        operator delete(v11);
      }
    }
  }

  v12 = *(a1 + 112);
  if (v12)
  {
    if (*v12)
    {
      operator delete[](*v12);
      v13 = *(a1 + 112);
      if (v13)
      {
        operator delete(v13);
      }
    }
  }

  v14 = *(a1 + 120);
  if (v14)
  {
    if (*v14)
    {
      operator delete[](*v14);
      v15 = *(a1 + 120);
      if (v15)
      {
        operator delete(v15);
      }
    }
  }

  v17 = (a1 + 64);
  v16 = *(a1 + 64);
  if (v16)
  {
    if (*v16)
    {
      operator delete[](*v16);
      if (*v17)
      {
        operator delete(*v17);
      }
    }
  }

  v18 = *(a1 + 128);
  if (v18)
  {
    if (*v18)
    {
      operator delete[](*v18);
      v19 = *(a1 + 128);
      if (v19)
      {
        operator delete(v19);
      }
    }
  }

  *(a1 + 16) = 0;
  result = 0.0;
  *v17 = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  return result;
}

float32x2_t sub_19D307660(uint64_t a1, void *a2, void *a3, float a4)
{
  if (a4 != 0.0)
  {
    *(a1 + 24) = a4;
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    sub_19D307E58();
  }

  return sub_19D308288(a1, a2, a3, a4);
}

float32x2_t sub_19D3076D4(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  if (a4 != 0.0)
  {
    *(a1 + 24) = a4;
  }

  if ((*(a1 + 12) & 1) == 0)
  {
    sub_19D307E58();
  }

  if ((*(*a1 + 56))(a1))
  {
    v7 = *(a1 + 20);
  }

  else
  {
    v7 = *(a1 + 16);
  }

  sub_19D30485C(a3, a2, v7);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  memmove(**(a1 + 56), **(a1 + 64), 4 * *(a1 + 20) * *(a1 + 16));
  memmove(*v9, *v8, 4 * *(a1 + 20) * *(a1 + 16));
  v10.i32[0] = *(a1 + 28);
  v10.i32[1] = *(a1 + 36);
  result = vmul_f32(*(a1 + 40), v10);
  *(a1 + 40) = result;
  ++*(a1 + 8);
  return result;
}

void sub_19D3077C8(uint64_t a1)
{
  *(a1 + 8) = 0;
  v2 = *(a1 + 36);
  *(a1 + 40) = *(a1 + 28);
  *(a1 + 44) = v2;
  bzero(**(a1 + 56), 4 * *(a1 + 20) * *(a1 + 16));
  bzero(**(a1 + 64), 4 * *(a1 + 20) * *(a1 + 16));
  bzero(**(a1 + 72), 4 * *(a1 + 20) * *(a1 + 16));
  bzero(**(a1 + 80), 4 * *(a1 + 20) * *(a1 + 16));
  bzero(**(a1 + 104), 4 * *(a1 + 20) * *(a1 + 16));
  v3 = *(a1 + 112);
  if (v3)
  {
    bzero(*v3, 4 * *(a1 + 20) * *(a1 + 16));
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *v4;
    v6 = 4 * *(a1 + 20) * *(a1 + 16);

    bzero(v5, v6);
  }
}

float sub_19D3078C0(uint64_t a1, int a2, float a3)
{
  v4 = *(a1 + 72);
  v3 = *(a1 + 80);
  v5 = **(a1 + 64);
  *(v5 + 4 * a2) = a3 + ((*(**(a1 + 56) + 4 * a2) - a3) * *(a1 + 28));
  v6 = fmaxf(*(*v4 + 4 * a2) * *(a1 + 36), fabsf(a3));
  *(*v3 + 4 * a2) = v6;
  result = (*(v5 + 4 * a2) * *(a1 + 24)) / ((*(a1 + 32) + v6) - (*(a1 + 40) * (*(a1 + 32) + v6)));
  *(**(a1 + 104) + 4 * a2) = result;
  return result;
}

uint64_t sub_19D307934(uint64_t result, int a2, float32x4_t *a3, float32x4_t *a4, unsigned int a5, double a6, double a7, double a8, float32x4_t a9)
{
  if (a5 < 1)
  {
    return result;
  }

  v9 = **(result + 56);
  v10 = **(result + 64);
  v11 = **(result + 72);
  v12 = **(result + 80);
  v13 = **(result + 104);
  v14 = a2;
  v15 = a5;
  if (a5 <= 0x13)
  {
    v16 = 0;
    goto LABEL_4;
  }

  v16 = 0;
  v30 = result + 24;
  v123 = a2;
  v31 = 4 * a2;
  v32 = v10 + v31;
  v124 = a5;
  v33 = v31 + 4 * a5;
  v34 = v10 + v33;
  v35 = v12 + 4 * v14;
  v36 = v12 + v33;
  v37 = v13 + 4 * v14;
  v38 = v13 + v33;
  v39 = &a4->i8[4 * v15];
  v40 = &a3->i8[4 * v15];
  v41 = result + 44;
  v42 = v9 + 4 * v14;
  v43 = v9 + v33;
  v44 = v11 + 4 * v14;
  v45 = v11 + v33;
  v47 = v10 + v31 < (v13 + v33) && v37 < v34;
  v49 = v32 < v39 && v34 > a4;
  v121 = v49;
  v122 = v47;
  v51 = v32 < v40 && v34 > a3;
  v53 = v32 < v41 && v30 < v34;
  v119 = v53;
  v120 = v51;
  v55 = v32 < v43 && v42 < v34;
  v57 = v32 < v45 && v44 < v34;
  v117 = v57;
  v118 = v55;
  v59 = v35 < v38 && v37 < v36;
  v61 = v35 < v39 && v36 > a4;
  v63 = v35 < v40 && v36 > a3;
  v65 = v35 < v41 && v30 < v36;
  v67 = v35 < v43 && v42 < v36;
  v69 = v35 < v45 && v44 < v36;
  v71 = v37 < v39 && v38 > a4;
  v73 = v37 < v40 && v38 > a3;
  v75 = v37 < v41 && v30 < v38;
  v77 = v37 < v43 && v42 < v38;
  v79 = v37 < v45 && v44 < v38;
  v81 = v40 > a4 && v39 > a3;
  v83 = v41 > a4 && v30 < v39;
  v85 = v43 > a4 && v42 < v39;
  v87 = v45 > a4 && v44 < v39;
  v88 = v35 >= v34 || v32 >= v36;
  if (!v88 || v122 || v121 || v120 || v119 || v118 || v117 || v59 || v61)
  {
    v12 = **(result + 80);
    v15 = v124;
    v11 = **(result + 72);
    v13 = **(result + 104);
    v9 = **(result + 56);
    v10 = **(result + 64);
    v14 = v123;
LABEL_4:
    v17 = 0;
    v18 = 4 * (v16 + v14);
    v19 = v9 + v18;
    v20 = v10 + v18;
    v21 = v11 + v18;
    v22 = v12 + v18;
    v23 = v13 + v18;
    v24 = &a4->i8[4 * v16];
    v25 = &a3->i8[4 * v16];
    v26 = v15 - v16;
    do
    {
      v27 = *&v25[4 * v17];
      *(v20 + 4 * v17) = v27 + ((*(v19 + 4 * v17) - v27) * *(result + 28));
      v28 = fmaxf(*(v21 + 4 * v17) * *(result + 36), fabsf(v27));
      *(v22 + 4 * v17) = v28;
      v29 = (*(v20 + 4 * v17) * *(result + 24)) / ((*(result + 32) + v28) - (*(result + 40) * (*(result + 32) + v28)));
      *(v23 + 4 * v17) = v29;
      *&v24[4 * v17++] = v29;
    }

    while (v26 != v17);
    return result;
  }

  v9 = **(result + 56);
  if (v63 || v65 || v67 || v69 || v71 || v73 || v75 || v77 || v79)
  {
    v12 = **(result + 80);
    v15 = v124;
    v11 = **(result + 72);
    v13 = **(result + 104);
    goto LABEL_166;
  }

  v11 = **(result + 72);
  if (v81)
  {
    v12 = **(result + 80);
    v15 = v124;
    v13 = **(result + 104);
LABEL_166:
    v10 = **(result + 64);
    v14 = v123;
    goto LABEL_4;
  }

  v12 = **(result + 80);
  v15 = v124;
  v10 = **(result + 64);
  v14 = v123;
  if (v83)
  {
    v13 = **(result + 104);
    goto LABEL_4;
  }

  v13 = **(result + 104);
  if (v85)
  {
    goto LABEL_4;
  }

  if (v87)
  {
    goto LABEL_4;
  }

  v89 = (result + 28);
  v90 = vld1q_dup_f32(v89);
  v91 = (result + 36);
  v92 = vld1q_dup_f32(v91);
  v16 = v124 & 0x7FFFFFFC;
  v93 = (result + 24);
  v94 = vld1q_dup_f32(v93);
  a9.i32[0] = *(result + 40);
  __asm { FMOV            V4.4S, #1.0 }

  a9.i32[0] = vsubq_f32(_Q4, a9).u32[0];
  v99 = (result + 32);
  v100 = (**(result + 104) + v31);
  v101 = (**(result + 80) + v31);
  v102 = (**(result + 72) + v31);
  v103 = (**(result + 64) + v31);
  v104 = vld1q_dup_f32(v99);
  v105 = (**(result + 56) + v31);
  v106 = v16;
  v107 = a4;
  v108 = a3;
  do
  {
    v109 = *v108++;
    v110 = v109;
    v111 = *v105++;
    v112 = vabsq_f32(v110);
    v113 = vmlaq_f32(v110, vsubq_f32(v111, v110), v90);
    *v103++ = v113;
    v114 = *v102++;
    v115 = vmaxnmq_f32(vmulq_f32(v114, v92), v112);
    *v101++ = v115;
    v116 = vdivq_f32(vmulq_f32(v113, v94), vmulq_n_f32(vaddq_f32(v104, v115), a9.f32[0]));
    *v100++ = v116;
    *v107++ = v116;
    v106 -= 4;
  }

  while (v106);
  if (v16 != v124)
  {
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_19D307D18(uint64_t result)
{
  if ((*(result + 12) & 1) == 0)
  {
    sub_19D307E58();
  }

  return result;
}

char *sub_19D307D28@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[143] < 0)
  {
    return sub_19D2AD6B8(a2, *(result + 15), *(result + 16));
  }

  *a2 = *(result + 120);
  *(a2 + 16) = *(result + 17);
  return result;
}

uint64_t sub_19D307D60(uint64_t a1)
{
  *a1 = &unk_1F10B6B90;
  sub_19D3083C8(a1);
  *(a1 + 12) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  return a1;
}

void sub_19D307DCC(uint64_t a1)
{
  *a1 = &unk_1F10B6B90;
  sub_19D3083C8(a1);
  *(a1 + 12) = 0;
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    v2 = a1;
  }

  else
  {
    v2 = a1;
  }

  operator delete(v2);
}

float32x2_t sub_19D308288(uint64_t a1, void *a2, void *a3, float a4)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 20);
  if (a4 != 0.0)
  {
    *(a1 + 24) = a4;
  }

  v9 = (v8 * v7);
  if ((*(a1 + 12) & 1) == 0)
  {
    sub_19D307E58();
  }

  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      *(**(a1 + 104) + 4 * i) = (*(*a1 + 24))(a1, i, *(*a3 + 4 * i));
    }
  }

  v12 = *(a1 + 72);
  v11 = *(a1 + 80);
  memmove(**(a1 + 56), **(a1 + 64), 4 * v9);
  memmove(*v12, *v11, 4 * v9);
  v13 = *(a1 + 104);
  v14 = *(a1 + 20) * *(a1 + 16);
  v17 = 1065353216;
  MEMORY[0x19EAFB1F0](*v13, 1, &v17, *a2, 1, *a2, 1, v14);
  v15.i32[0] = *(a1 + 28);
  v15.i32[1] = *(a1 + 36);
  result = vmul_f32(*(a1 + 40), v15);
  *(a1 + 40) = result;
  ++*(a1 + 8);
  return result;
}

void sub_19D3083C8(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    if (*v2)
    {
      operator delete[](*v2);
      v3 = a1[7];
      if (v3)
      {
        operator delete(v3);
      }
    }
  }

  v4 = a1[8];
  if (v4)
  {
    if (*v4)
    {
      operator delete[](*v4);
      v5 = a1[8];
      if (v5)
      {
        operator delete(v5);
      }
    }
  }

  v6 = a1[9];
  if (v6)
  {
    if (*v6)
    {
      operator delete[](*v6);
      v7 = a1[9];
      if (v7)
      {
        operator delete(v7);
      }
    }
  }

  v8 = a1[10];
  if (v8)
  {
    if (*v8)
    {
      operator delete[](*v8);
      v9 = a1[10];
      if (v9)
      {
        operator delete(v9);
      }
    }
  }

  v10 = a1[11];
  if (v10)
  {
    if (*v10)
    {
      operator delete[](*v10);
      v11 = a1[11];
      if (v11)
      {
        operator delete(v11);
      }
    }
  }

  v12 = a1[12];
  if (v12)
  {
    if (*v12)
    {
      operator delete[](*v12);
      v13 = a1[12];
      if (v13)
      {
        operator delete(v13);
      }
    }
  }

  v14 = a1[13];
  if (v14)
  {
    if (*v14)
    {
      operator delete[](*v14);
      v15 = a1[13];
      if (v15)
      {
        operator delete(v15);
      }
    }
  }

  v16 = a1[6];
  if (v16)
  {
    if (*v16)
    {
      operator delete[](*v16);
      v17 = a1[6];
      if (v17)
      {
        operator delete(v17);
      }
    }
  }

  v18 = a1[14];
  if (v18)
  {
    if (*v18)
    {
      operator delete[](*v18);
      v19 = a1[14];
      if (v19)
      {

        operator delete(v19);
      }
    }
  }
}

uint64_t sub_19D308520(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 4);
  *(a1 + 104) = *(a1 + 96);
  v5 = *(a1 + 72);
  if (!v5)
  {
    operator new();
  }

  memmove(*v5, **(a2 + 9), 4 * v4);
  v6 = *(a1 + 80);
  if (!v6)
  {
    operator new();
  }

  memmove(*v6, **(a2 + 10), 4 * *(a1 + 4) * *a1);
  v7 = *(a1 + 24);
  *(a1 + 88) = *(a2 + 88);
  v8 = *(a1 + 8);
  v9 = (*(a1 + 32) - v7) >> 3;
  if (v8 <= v9)
  {
    if (v8 < v9)
    {
      *(a1 + 32) = v7 + 8 * v8;
    }
  }

  else
  {
    sub_19D308DD0((a1 + 24), v8 - v9);
    v8 = *(a1 + 8);
  }

  if (v8 > 0)
  {
    operator new[]();
  }

  v10 = v8;
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v13 = (a1 + 48);
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
  if (v10 <= v14)
  {
    if (v10 < v14)
    {
      v15 = v12 + 24 * v10;
      if (v11 != v15)
      {
        v16 = *(a1 + 56);
        do
        {
          v18 = *(v16 - 24);
          v16 -= 24;
          v17 = v18;
          if (v18)
          {
            *(v11 - 16) = v17;
            operator delete(v17);
          }

          v11 = v16;
        }

        while (v16 != v15);
      }

      *(a1 + 56) = v15;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 48, v10 - v14);
  }

  if (*(a1 + 8) >= 1)
  {
    v19 = 0;
    v20 = *(a1 + 12);
    do
    {
      v21 = (*v13 + 24 * v19);
      v22 = (v21[1] - *v21) >> 2;
      if (v20 <= v22)
      {
        if (v20 < v22)
        {
          v21[1] = *v21 + 4 * v20;
        }
      }

      else
      {
        sub_19D2CA0E8(v21, v20 - v22);
        v20 = *(a1 + 12);
      }

      if (v20 >= 1)
      {
        v23 = 0;
        v24 = *(*(a2 + 6) + 24 * v19);
        v25 = *(*v13 + 24 * v19);
        do
        {
          *(v25 + 4 * v23) = *(v24 + 4 * v23);
          ++v23;
        }

        while (v23 < *(a1 + 12));
        v20 = *(a1 + 12);
      }

      ++v19;
    }

    while (v19 < *(a1 + 8));
  }

  return a1;
}

void *sub_19D3088FC(void *result, int a2, float a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = 2 * a2;
    v5 = a3 * 4.6566e-10;
    do
    {
      if ((atomic_load_explicit(&qword_1EB013D60, memory_order_acquire) & 1) == 0)
      {
        v21 = a3;
        v17 = result;
        v19 = v3;
        v15 = v4;
        v13 = v5;
        sub_19D4542A8();
        v5 = v13;
        v4 = v15;
        result = v17;
        v3 = v19;
        a3 = v21;
      }

      v6 = (qword_1EB0147C8 + 1) % 0x270uLL;
      v7 = dword_1EB013E08[v6];
      v8 = v7 & 0x7FFFFFFE | dword_1EB013E08[qword_1EB0147C8] & 0x80000000;
      if (v7)
      {
        v9 = -1727483681;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 ^ dword_1EB013E08[(qword_1EB0147C8 + 397) % 0x270uLL] ^ (v8 >> 1);
      dword_1EB013E08[qword_1EB0147C8] = v10;
      qword_1EB0147C8 = v6;
      if ((atomic_load_explicit(&qword_1EB013D60, memory_order_acquire) & 1) == 0)
      {
        v22 = a3;
        v18 = result;
        v20 = v3;
        v16 = v4;
        v14 = v5;
        v12 = v10;
        sub_19D4542A8();
        v10 = v12;
        v5 = v14;
        v4 = v16;
        result = v18;
        v3 = v20;
        a3 = v22;
      }

      v11 = ((v10 ^ (v10 >> 11)) << 7) & 0x9D2C5680 ^ v10 ^ (v10 >> 11);
      *(*result + v3) = -(a3 - (v5 * ((v11 << 15) & 0xEFC60000 ^ v11 ^ (((v11 << 15) & 0xEFC60000 ^ v11) >> 18))));
      v3 += 2;
    }

    while (v4 != v3);
  }

  return result;
}

void sub_19D308AD0(uint64_t a1)
{
  v4 = *(a1 + 24);
  v2 = a1 + 24;
  v3 = v4;
  v5 = *(v2 - 16);
  v6 = (*(v2 + 8) - v4) >> 3;
  if (v5 <= v6)
  {
    if (v5 < v6)
    {
      *(a1 + 32) = v3 + 8 * v5;
    }
  }

  else
  {
    sub_19D308DD0(v2, v5 - v6);
    v5 = *(a1 + 8);
  }

  if (v5 > 0)
  {
    operator new[]();
  }

  v7 = v5;
  v9 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
  if (v7 <= v10)
  {
    if (v7 < v10)
    {
      v11 = v9 + 24 * v7;
      if (v8 != v11)
      {
        v12 = *(a1 + 56);
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v8 - 16) = v13;
            operator delete(v13);
          }

          v8 = v12;
        }

        while (v12 != v11);
      }

      *(a1 + 56) = v11;
    }
  }

  else
  {
    sub_19D35D8AC(a1 + 48, v7 - v10);
  }

  v15 = *(a1 + 8);
  if (v15 >= 1)
  {
    v16 = 0;
    for (i = 0; i < v15; ++i)
    {
      v18 = (*(a1 + 48) + v16);
      v19 = *(a1 + 12);
      v20 = (v18[1] - *v18) >> 2;
      if (v19 > v20)
      {
        sub_19D2CA0E8(v18, v19 - v20);
        v15 = *(a1 + 8);
      }

      else if (v19 < v20)
      {
        v18[1] = *v18 + 4 * v19;
      }

      v16 += 24;
    }
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if ((*(a1 + 88) & 1) == 0)
  {
    operator new();
  }
}

void sub_19D308DD0(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v11 = 8 * a2;
      bzero(a1[1], 8 * a2);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + a2;
    if (v8 >> 61)
    {
      sub_19D2AE2B4();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_19D2AD81C();
    }

    v12 = v6 >> 3;
    v13 = 8 * v7;
    v14 = 8 * a2;
    bzero((8 * v7), 8 * a2);
    if (v5 != v4)
    {
      v15 = v4 - v5 - 8;
      v16 = v5;
      v17 = (v13 - 8 * v12);
      if (v15 < 0x58)
      {
        goto LABEL_30;
      }

      v16 = v5;
      v17 = (v13 - 8 * v12);
      if ((v6 - v5 - 8 * v12) < 0x20)
      {
        goto LABEL_30;
      }

      v18 = (v15 >> 3) + 1;
      v17 = (8 * (v18 & 0x3FFFFFFFFFFFFFFCLL));
      v16 = v17 + v5;
      v19 = (-8 * v12 + 8 * v7 + 16);
      v20 = (v5 + 16);
      v21 = v18 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v22 = *v20;
        *(v19 - 1) = *(v20 - 1);
        *v19 = v22;
        v19 += 2;
        v20 += 2;
        v21 -= 4;
      }

      while (v21);
      if (v18 != (v18 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_30:
        do
        {
          v23 = *v16;
          v16 += 8;
          *v17++ = v23;
        }

        while (v16 != v4);
      }
    }

    *a1 = 0;
    a1[1] = (8 * v7 + v14);
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_19D308FC0(void *a1)
{
  v2 = a1[12];
  v3 = a1[13];
  if (v3 != v2)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        operator delete[](v5);
        v2 = a1[12];
        v3 = a1[13];
      }

      ++v4;
    }

    while (v4 < (v3 - v2) >> 3);
  }

  a1[13] = v2;
  v6 = a1[10];
  if (v6)
  {
    operator delete(v6);
    a1[10] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    operator delete(v7);
    a1[9] = 0;
  }

  v8 = a1[12];
  if (v8)
  {
    a1[13] = v8;
    operator delete(v8);
  }

  v9 = a1[6];
  if (v9)
  {
    v10 = a1[7];
    v11 = a1[6];
    if (v10 != v9)
    {
      v12 = a1[7];
      do
      {
        v14 = *(v12 - 24);
        v12 -= 24;
        v13 = v14;
        if (v14)
        {
          *(v10 - 16) = v13;
          operator delete(v13);
        }

        v10 = v12;
      }

      while (v12 != v9);
      v11 = a1[6];
    }

    a1[7] = v9;
    operator delete(v11);
  }

  v15 = a1[3];
  if (v15)
  {
    a1[4] = v15;
    operator delete(v15);
  }

  return a1;
}

_BYTE *sub_19D3090B4(_BYTE *result, uint64_t *a2, int a3, int a4, int a5, int a6)
{
  if (!a2)
  {
    goto LABEL_34;
  }

  if (a3 == 3)
  {
    v6 = *(a2 + 18);
    v7 = *a2;
    v8 = (*a2 + v6);
    v9 = *a2 + a2[1] - 1;
    if (v8 <= v9)
    {
      v10 = *v8;
      LODWORD(v6) = v6 + 1;
      for (*(a2 + 18) = v6; v10; --v10)
      {
        if (v7 + v6 <= v9)
        {
          LODWORD(v6) = v6 + 1;
          *(a2 + 18) = v6;
        }
      }
    }

    if ((v6 & 0xF) != 0)
    {
LABEL_6:
      sub_19D41C548(19);
    }
  }

  else if ((*result & 0xF) != 0)
  {
    goto LABEL_6;
  }

  if (a4)
  {
    *result = 0;
    if (a5 != 8)
    {
      if (a5 == 16)
      {
        a6 *= 2;
      }

      else
      {
        if (a5 != 32)
        {
          sub_19D41C548(46);
        }

        a6 *= 4;
      }
    }

    v19 = *(a2 + 18);
    v11 = (*a2 + v19);
    *result = v11;
    *(a2 + 18) = v19 + a6;
  }

  else
  {
    if (a5 != 8)
    {
      if (a5 == 16)
      {
        v11 = *result;
        if (a6 < 1)
        {
          a6 *= 2;
          goto LABEL_26;
        }

        v20 = *a2;
        v21 = *a2 + a2[1] - 4;
        v22 = *(a2 + 18);
        v23 = a6;
        while (1)
        {
          v24 = (v20 + v22);
          if (v24 > v21)
          {
            break;
          }

          v25 = *v24;
          *(a2 + 18) = ++v22;
          *v11++ = v25;
          if (!--v23)
          {
            return result;
          }
        }
      }

      else
      {
        if (a5 != 32)
        {
          sub_19D41C548(45);
        }

        v11 = *result;
        v12 = 4 * a6;
        if (a6 < 1)
        {
          a6 *= 4;
          goto LABEL_26;
        }

        v13 = *a2;
        v14 = *a2 + a2[1] - 4;
        v15 = *(a2 + 18);
        v16 = a6;
        while (1)
        {
          v17 = (v13 + v15);
          if (v17 > v14)
          {
            break;
          }

          v18 = *v17;
          v15 += 4;
          *(a2 + 18) = v15;
          *v11 = v18;
          v11 += 2;
          if (!--v16)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_42:
      sub_19D41C548(25);
    }

    v11 = *result;
    if (a6 >= 1)
    {
      v26 = a6;
      do
      {
        v27 = *(a2 + 18);
        v28 = (*a2 + v27);
        if (v28 > *a2 + a2[1] - 1)
        {
          goto LABEL_42;
        }

        v29 = *v28;
        *(a2 + 18) = v27 + 1;
        *v11 = v29;
        v11 = (v11 + 1);
        --v26;
      }

      while (v26);
      v11 = *result;
    }
  }

LABEL_26:
  v12 = a6;
  if (!v11)
  {
    goto LABEL_34;
  }

LABEL_27:
  if (!v12)
  {
LABEL_34:
    sub_19D41C548(9);
  }

  return result;
}

_BYTE *sub_19D3092B8(_BYTE *result, uint64_t *a2, int a3, int a4, int a5, int a6, int a7)
{
  if (!a2)
  {
    goto LABEL_35;
  }

  if (a3 == 3)
  {
    v7 = *(a2 + 18);
    v8 = *a2;
    v9 = (*a2 + v7);
    v10 = *a2 + a2[1] - 1;
    if (v9 <= v10)
    {
      v11 = *v9;
      LODWORD(v7) = v7 + 1;
      for (*(a2 + 18) = v7; v11; --v11)
      {
        if (v8 + v7 <= v10)
        {
          LODWORD(v7) = v7 + 1;
          *(a2 + 18) = v7;
        }
      }
    }

    if ((v7 & 0xF) != 0)
    {
LABEL_6:
      sub_19D41C548(18);
    }
  }

  else if ((*result & 0xF) != 0)
  {
    goto LABEL_6;
  }

  if (a4)
  {
    *result = 0;
    switch(a5)
    {
      case 8:
        v12 = a7 * a6;
        break;
      case 16:
        v12 = 2 * a7 * a6;
        break;
      case 32:
        v12 = 4 * a7 * a6;
        break;
      default:
        sub_19D41C548(46);
    }

    v20 = *(a2 + 18);
    v13 = (*a2 + v20);
    *result = v13;
    *(a2 + 18) = v20 + v12;
    goto LABEL_27;
  }

  switch(a5)
  {
    case 8:
      v13 = *result;
      v12 = a7 * a6;
      if (a7 * a6 >= 1)
      {
        v27 = (a7 * a6);
        do
        {
          v28 = *(a2 + 18);
          v29 = (*a2 + v28);
          if (v29 > *a2 + a2[1] - 1)
          {
            goto LABEL_42;
          }

          v30 = *v29;
          *(a2 + 18) = v28 + 1;
          *v13 = v30;
          v13 = (v13 + 1);
          --v27;
        }

        while (v27);
        v13 = *result;
      }

      break;
    case 16:
      v13 = *result;
      v21 = (a7 * a6);
      if (v21 < 1)
      {
        v12 = 2 * v21;
        break;
      }

      v22 = *a2;
      v23 = *a2 + a2[1] - 4;
      v24 = *(a2 + 18);
      while (1)
      {
        v25 = (v22 + v24);
        if (v25 > v23)
        {
          break;
        }

        v26 = *v25;
        *(a2 + 18) = ++v24;
        *v13++ = v26;
        if (!--v21)
        {
          return result;
        }
      }

LABEL_42:
      sub_19D41C548(25);
    case 32:
      v13 = *result;
      v14 = (a7 * a6);
      v12 = 4 * v14;
      if (v14 >= 1)
      {
        v15 = *a2;
        v16 = *a2 + a2[1] - 4;
        v17 = *(a2 + 18);
        while (1)
        {
          v18 = (v15 + v17);
          if (v18 > v16)
          {
            goto LABEL_42;
          }

          v19 = *v18;
          v17 += 4;
          *(a2 + 18) = v17;
          *v13 = v19;
          v13 += 2;
          if (!--v14)
          {
            goto LABEL_28;
          }
        }
      }

      break;
    default:
      sub_19D41C548(45);
  }

LABEL_27:
  if (!v13)
  {
    goto LABEL_35;
  }

LABEL_28:
  if (!v12)
  {
LABEL_35:
    sub_19D41C548(9);
  }

  return result;
}

uint64_t sub_19D3094C4(uint64_t result, FILE *a2, int *a3, int a4, int a5, unsigned int a6)
{
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    sub_19D41C548(23);
  }

  switch(a5)
  {
    case 8:
      if (a6 == 32)
      {

LABEL_9:
        sub_19D309708(result, a2, a3, a4);
      }

LABEL_27:
      sub_19D41C548(45);
    case 16:
      if (a6 == 32)
      {

        goto LABEL_9;
      }

      goto LABEL_27;
    case 32:
      switch(a6)
      {
        case 0x20u:

          goto LABEL_9;
        case 8u:

          sub_19D309904(result, a2, a3, a4);
        case 0x10u:

          sub_19D309830(result, a2, a3, a4);
      }

      break;
  }

  return result;
}

uint64_t sub_19D3095DC(uint64_t result, FILE *a2, int *a3, int a4, int a5, unsigned int a6)
{
  if (a6 > 0x20 || ((1 << a6) & 0x100010100) == 0)
  {
    sub_19D41C548(23);
  }

  switch(a5)
  {
    case 8:
      if (a6 == 32)
      {

LABEL_9:
        sub_19D309BAC(result, a2, a3, a4);
      }

LABEL_27:
      sub_19D41C548(45);
    case 16:
      if (a6 == 32)
      {

        goto LABEL_9;
      }

      goto LABEL_27;
    case 32:
      switch(a6)
      {
        case 0x20u:

          goto LABEL_9;
        case 8u:

          sub_19D309DB4(result, a2, a3, a4);
        case 0x10u:

          sub_19D309CD0(result, a2, a3, a4);
      }

      break;
  }

  return result;
}

void sub_19D309708(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(17);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D309830(int a1, FILE *__stream, int *a3, int a4)
{
  if (!__stream)
  {
    sub_19D41C548(9);
  }

  if (a4 == 3)
  {
    v4 = *a3 & 0xF;
    if (*a3 <= 0)
    {
      v4 = -(-*a3 & 0xF);
    }

    if (v4 >= 15)
    {
      v5 = 16;
    }

    else
    {
      v5 = 15 - v4;
    }

    sub_19D41C99C(__stream, a3, v5);
    sub_19D41CA34(__stream, a3, 85, v5);
    if ((*a3 & 0xF) != 0)
    {
      sub_19D41C548(17);
    }
  }

  operator new[]();
}

void sub_19D309904(int a1, FILE *__stream, int *a3, int a4)
{
  if (!__stream)
  {
    sub_19D41C548(9);
  }

  if (a4 == 3)
  {
    v4 = *a3 & 0xF;
    if (*a3 <= 0)
    {
      v4 = -(-*a3 & 0xF);
    }

    if (v4 >= 15)
    {
      v5 = 16;
    }

    else
    {
      v5 = 15 - v4;
    }

    sub_19D41C99C(__stream, a3, v5);
    sub_19D41CA34(__stream, a3, 85, v5);
    if ((*a3 & 0xF) != 0)
    {
      sub_19D41C548(17);
    }
  }

  operator new[]();
}

void *sub_19D3099D0(void *result, int a2, float a3)
{
  if (a2 >= 1)
  {
    v3 = 0;
    v4 = a3 * 4.6566e-10;
    v5 = a2;
    do
    {
      if ((atomic_load_explicit(&qword_1EB013D60, memory_order_acquire) & 1) == 0)
      {
        v21 = a3;
        v17 = result;
        v19 = v3;
        v15 = v4;
        v13 = v5;
        sub_19D4542A8();
        v5 = v13;
        v4 = v15;
        v3 = v19;
        result = v17;
        a3 = v21;
      }

      v6 = (qword_1EB0147C8 + 1) % 0x270uLL;
      v7 = dword_1EB013E08[v6];
      v8 = v7 & 0x7FFFFFFE | dword_1EB013E08[qword_1EB0147C8] & 0x80000000;
      if (v7)
      {
        v9 = -1727483681;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9 ^ dword_1EB013E08[(qword_1EB0147C8 + 397) % 0x270uLL] ^ (v8 >> 1);
      dword_1EB013E08[qword_1EB0147C8] = v10;
      qword_1EB0147C8 = v6;
      if ((atomic_load_explicit(&qword_1EB013D60, memory_order_acquire) & 1) == 0)
      {
        v22 = a3;
        v18 = result;
        v20 = v3;
        v16 = v4;
        v14 = v5;
        v12 = v10;
        sub_19D4542A8();
        v10 = v12;
        v5 = v14;
        v4 = v16;
        v3 = v20;
        result = v18;
        a3 = v22;
      }

      v11 = ((v10 ^ (v10 >> 11)) << 7) & 0x9D2C5680 ^ v10 ^ (v10 >> 11);
      *(*result + v3++) = -(a3 - (v4 * ((v11 << 15) & 0xEFC60000 ^ v11 ^ (((v11 << 15) & 0xEFC60000 ^ v11) >> 18))));
    }

    while (v5 != v3);
  }

  return result;
}

void sub_19D309BAC(int a1, FILE *__stream, int *a3, int a4)
{
  if (__stream)
  {
    if (a4 == 3)
    {
      v6 = *a3 & 0xF;
      if (*a3 <= 0)
      {
        v6 = -(-*a3 & 0xF);
      }

      if (v6 >= 15)
      {
        v7 = 16;
      }

      else
      {
        v7 = 15 - v6;
      }

      sub_19D41C99C(__stream, a3, v7);
      sub_19D41CA34(__stream, a3, 85, v7);
      if ((*a3 & 0xF) != 0)
      {
        sub_19D41C548(18);
      }
    }

    operator new[]();
  }

  sub_19D41C548(9);
}

void sub_19D309CD0(int a1, FILE *__stream, int *a3, int a4)
{
  if (!__stream)
  {
    sub_19D41C548(9);
  }

  if (a4 == 3)
  {
    v4 = *a3 & 0xF;
    if (*a3 <= 0)
    {
      v4 = -(-*a3 & 0xF);
    }

    if (v4 >= 15)
    {
      v5 = 16;
    }

    else
    {
      v5 = 15 - v4;
    }

    sub_19D41C99C(__stream, a3, v5);
    sub_19D41CA34(__stream, a3, 85, v5);
    if ((*a3 & 0xF) != 0)
    {
      sub_19D41C548(18);
    }
  }

  operator new[]();
}

void sub_19D309DB4(int a1, FILE *__stream, int *a3, int a4)
{
  if (!__stream)
  {
    sub_19D41C548(9);
  }

  if (a4 == 3)
  {
    v4 = *a3 & 0xF;
    if (*a3 <= 0)
    {
      v4 = -(-*a3 & 0xF);
    }

    if (v4 >= 15)
    {
      v5 = 16;
    }

    else
    {
      v5 = 15 - v4;
    }

    sub_19D41C99C(__stream, a3, v5);
    sub_19D41CA34(__stream, a3, 85, v5);
    if ((*a3 & 0xF) != 0)
    {
      sub_19D41C548(18);
    }
  }

  operator new[]();
}

void sub_19D309E90(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    sub_19D2AE2B4();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_19D309FB0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v4[1] = a2[1];
    v5 = (v4 + 2);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = (v4 - *a1) >> 4;
  v8 = v7 + 1;
  if ((v7 + 1) >> 60)
  {
    sub_19D2AE2B4();
  }

  v9 = v3 - v6;
  if (v9 >> 3 > v8)
  {
    v8 = v9 >> 3;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    sub_19D2AD81C();
  }

  v11 = (v4 - *a1) >> 4;
  v12 = (16 * v7);
  *v12 = *a2;
  v12[1] = a2[1];
  v5 = 16 * v7 + 16;
  v13 = &v12[-2 * v11];
  if (v6 != v4)
  {
    v14 = v6;
    v15 = v13;
    do
    {
      *v15 = *v14;
      v15[1] = v14[1];
      v14 += 2;
      v15 += 2;
    }

    while (v14 != v4);
  }

  *a1 = v13;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_19D30A0F8(float32x4_t **a1, float **a2, int a3, int a4)
{
  if (a4 <= 1)
  {
    if (a4)
    {
      if (a4 == 1 && a3 >= 1)
      {
        v22 = 0;
        v23 = *a2;
        v24 = *a1;
        v25 = a3;
        if (a3 < 4)
        {
          goto LABEL_25;
        }

        if ((v24 - v23) < 0x10)
        {
          goto LABEL_25;
        }

        v22 = a3 & 0x7FFFFFFC;
        __asm { FMOV            V0.4S, #1.0 }

        v55 = _Q0;
        v27 = v22;
        v28 = *a1;
        v29 = *a2;
        do
        {
          v30 = *v29++;
          v59 = vnegq_f32(v30);
          v56 = expf(v59.f32[1]);
          v31.f32[0] = expf(v59.f32[0]);
          v31.f32[1] = v56;
          v57 = v31;
          v32 = expf(v59.f32[2]);
          v33 = v57;
          v33.f32[2] = v32;
          v58 = v33;
          v34 = expf(v59.f32[3]);
          v35 = v58;
          v35.f32[3] = v34;
          v36 = vdivq_f32(v55, vaddq_f32(v35, v55));
          *v28++ = vmlsq_f32(v36, v36, v36);
          v27 -= 4;
        }

        while (v27);
        if (v22 != v25)
        {
LABEL_25:
          v37 = v25 - v22;
          v38 = &v24->f32[v22];
          v39 = &v23->f32[v22];
          do
          {
            v40 = *v39++;
            v41 = expf(-v40);
            *v38++ = (1.0 / (v41 + 1.0)) - ((1.0 / (v41 + 1.0)) * (1.0 / (v41 + 1.0)));
            --v37;
          }

          while (v37);
        }
      }
    }

    else
    {
      v52 = 4 * a3;
      v53 = *a1;
      v54 = *a2;

      memmove(v53, v54, v52);
    }
  }

  else if (a4 == 2)
  {
    if (a3 >= 1)
    {
      v42 = *a2;
      v43 = *a1;
      v44 = a3;
      do
      {
        v45 = *v42++;
        v46 = tanhf(v45);
        *v43++ = 1.0 - (v46 * v46);
        --v44;
      }

      while (v44);
    }
  }

  else if (a4 == 3)
  {
    if (a3 >= 1)
    {
      v47 = *a2;
      v48 = *a1;
      v49 = a3;
      do
      {
        v50 = *v47++;
        v51 = tanhf(v50 * 0.66667);
        *v48++ = 1.1439 - ((v51 * v51) * 1.1439);
        --v49;
      }

      while (v49);
    }
  }

  else if (a4 == 4 && a3 >= 1)
  {
    v4 = 0;
    v5 = *a2;
    v6 = *a1;
    if (a3 < 8)
    {
      goto LABEL_11;
    }

    if ((v6 - v5) < 0x20)
    {
      goto LABEL_11;
    }

    v4 = a3 & 0x7FFFFFF8;
    v7 = v5 + 1;
    v8 = &v6[1];
    __asm { FMOV            V0.4S, #1.0 }

    v14 = v4;
    do
    {
      v15 = vbicq_s8(_Q0, vclezq_f32(*v7));
      v8[-1] = vbicq_s8(_Q0, vclezq_f32(v7[-1]));
      *v8 = v15;
      v7 += 2;
      v8 += 2;
      v14 -= 8;
    }

    while (v14);
    if (v4 != a3)
    {
LABEL_11:
      v16 = a3 - v4;
      v17 = v4;
      v18 = &v6->f32[v17];
      v19 = &v5->f32[v17];
      do
      {
        v20 = *v19++;
        if (v20 > 0.0)
        {
          v21 = 1.0;
        }

        else
        {
          v21 = 0.0;
        }

        *v18++ = v21;
        --v16;
      }

      while (v16);
    }
  }
}

void sub_19D30A3C0(float **a1, const float **a2, int a3, int a4)
{
  if (a4 <= 2)
  {
    switch(a4)
    {
      case 0:
        v47 = 4 * a3;
        v48 = *a1;
        v49 = *a2;

        memmove(v48, v49, v47);
        return;
      case 1:
        v13 = *a1;
        if ((*a1 & 0xF) != 0)
        {
          if (a3 >= 1)
          {
            v14 = 0;
            v15 = *a2;
            v16 = a3;
            if (a3 < 4)
            {
              goto LABEL_27;
            }

            if ((v13 - v15) < 0x10)
            {
              goto LABEL_27;
            }

            v14 = a3 & 0x7FFFFFFC;
            __asm { FMOV            V0.4S, #1.0 }

            v69 = _Q0;
            v22 = v14;
            v23 = *a1;
            v24 = *a2;
            do
            {
              v25 = *v24++;
              v73 = vnegq_f32(v25);
              v70 = expf(v73.f32[1]);
              v26.f32[0] = expf(v73.f32[0]);
              v26.f32[1] = v70;
              v71 = v26;
              v27 = expf(v73.f32[2]);
              v28 = v71;
              v28.f32[2] = v27;
              v72 = v28;
              v29 = expf(v73.f32[3]);
              v30 = v72;
              v30.f32[3] = v29;
              *v23++ = vdivq_f32(v69, vaddq_f32(v30, v69));
              v22 -= 4;
            }

            while (v22);
            if (v14 != v16)
            {
LABEL_27:
              v31 = v16 - v14;
              v32 = &v13->f32[v14];
              v33 = &v15[v14];
              do
              {
                v34 = *v33++;
                *v32++ = 1.0 / (expf(-v34) + 1.0);
                --v31;
              }

              while (v31);
            }
          }
        }

        else if (a3 >= -2)
        {
          v51 = *a2;
          v52 = a3 - 1;
          if (a3 < 1)
          {
            v52 = a3 + 2;
          }

          v53 = (v52 >> 2) + 1;
          __asm { FMOV            V0.4S, #1.0 }

          v74 = _Q0;
          do
          {
            v55 = *v51++;
            *v56.i64 = MEMORY[0x19EAFB280](vnegq_f32(v55));
            *v13++ = vdivq_f32(v74, vaddq_f32(v56, v74));
            --v53;
          }

          while (v53);
        }

        return;
      case 2:
        v77 = a3;
        vvtanhf(*a1, *a2, &v77);
        return;
    }

    goto LABEL_63;
  }

  if (a4 == 3)
  {
    v76 = 1059760816;
    v77 = a3;
    v75 = 1071358620;
    MEMORY[0x19EAFB210](*a2, 1, &v76, *a1, 1, a3);
    vvtanhf(*a1, *a1, &v77);
    MEMORY[0x19EAFB210](*a1, 1, &v75, *a1, 1, v77);
    return;
  }

  if (a4 == 4)
  {
    if (a3 >= 1)
    {
      v35 = 0;
      v36 = *a2;
      v37 = *a1;
      if (a3 < 8)
      {
        goto LABEL_36;
      }

      if ((v37 - v36) < 0x20)
      {
        goto LABEL_36;
      }

      v35 = a3 & 0x7FFFFFF8;
      v38 = (v36 + 4);
      v39 = (v37 + 4);
      v40 = v35;
      do
      {
        v41 = vmaxnmq_f32(*v38, 0);
        v39[-1] = vmaxnmq_f32(v38[-1], 0);
        *v39 = v41;
        v38 += 2;
        v39 += 2;
        v40 -= 8;
      }

      while (v40);
      if (v35 != a3)
      {
LABEL_36:
        v42 = a3 - v35;
        v43 = v35;
        v44 = &v37[v43];
        v45 = &v36[v43];
        do
        {
          v46 = *v45++;
          *v44++ = fmaxf(v46, 0.0);
          --v42;
        }

        while (v42);
      }
    }

    return;
  }

  if (a4 != 5)
  {
LABEL_63:
    sub_19D41C548(4);
  }

  if (a3 < 1)
  {
    return;
  }

  v4 = *a2;
  v5 = *a1;
  if (a3 >= 4 && (v5 >= &v4[a3] || v4 >= &v5[a3]))
  {
    v57 = vdupq_n_s64(0x3FC999999999999AuLL);
    v6 = a3 & 0x7FFFFFFC;
    __asm
    {
      FMOV            V1.2D, #0.5
      FMOV            V2.4S, #1.0
    }

    v60 = v6;
    v61 = *a2;
    v62 = *a1;
    while (1)
    {
      v63 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(_Q1, vcvtq_f64_f32(*v61), v57)), vmlaq_f64(_Q1, vcvt_hight_f64_f32(*v61->f32), v57));
      *v62 = v63;
      v64 = vcltzq_f32(v63);
      v65 = vcgezq_f32(v63);
      v66 = vcgtq_f32(v63, _Q2);
      v67 = vmovn_s32(vorrq_s8(v64, v66));
      v68 = vandq_s8(_Q2, vcltzq_s32(vshlq_n_s32(vandq_s8(v65, v66), 0x1FuLL)));
      if (v67.i8[0])
      {
        *v62 = *v68.i32;
        if ((v67.i8[2] & 1) == 0)
        {
          goto LABEL_54;
        }
      }

      else if ((v67.i8[2] & 1) == 0)
      {
LABEL_54:
        if (v67.i8[4])
        {
          goto LABEL_55;
        }

        goto LABEL_59;
      }

      v62[1] = *&v68.i32[1];
      if (v67.i8[4])
      {
LABEL_55:
        v62[2] = *&v68.i32[2];
        if (v67.i8[6])
        {
          goto LABEL_60;
        }

        goto LABEL_51;
      }

LABEL_59:
      if (v67.i8[6])
      {
LABEL_60:
        v62[3] = *&v68.i32[3];
      }

LABEL_51:
      v62 += 4;
      v61 += 2;
      v60 -= 4;
      if (!v60)
      {
        if (v6 != a3)
        {
          goto LABEL_14;
        }

        return;
      }
    }
  }

  v6 = 0;
LABEL_14:
  v7 = a3 - v6;
  v8 = v6;
  v9 = &v5[v8];
  v10 = &v4[v8];
  do
  {
    v11 = *v10 * 0.2 + 0.5;
    *v9 = v11;
    v12 = 0.0;
    if (v11 < 0.0 || (v12 = 1.0, v11 > 1.0))
    {
      *v9 = v12;
    }

    ++v9;
    ++v10;
    --v7;
  }

  while (v7);
}

void sub_19D30A868(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, int a5, int a6, int a7)
{
  if (a7)
  {
    bzero(*a4, 4 * a6 * a5);
    cblas_sger_NEWLAPACK();
  }

  else
  {
    v11 = *a4;
    global_queue = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = sub_19D30AD54;
    block[3] = &unk_1E7626958;
    v14 = a6;
    block[4] = v11;
    block[5] = a2;
    block[6] = a3;
    dispatch_apply(a5, global_queue, block);
  }
}

void sub_19D30A978()
{
  sub_19D41C53C();
  sub_19D41C53C();
  operator new[]();
}

uint64_t sub_19D30AD54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) + 4 * *(a1 + 56) * a2;
  v4 = *(**(a1 + 40) + 4 * a2);
  return MEMORY[0x19EAFB1F0](**(a1 + 48), 1, &v4, v2, 1, v2, 1);
}

void sub_19D30ADB0(uint64_t a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v286 = a4 >> 24;
  if (a4 >> 24 <= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = (a4 >> 24);
  }

  v9 = *(a1 + 2680);
  if (v9)
  {
    v282 = *(v9 + 464);
    if (a3[1] == *a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v282 = 0;
    if (a3[1] == *a3)
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 56) >= 1)
  {
    v10 = (**a1)(a1);
    v9 = *(a1 + 2680);
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_11:
  v10 = 0;
  if (!v9)
  {
LABEL_13:
    v11 = 50.0;
    goto LABEL_14;
  }

LABEL_12:
  v11 = *(v9 + 468);
  if (v11 <= 0.0)
  {
    goto LABEL_13;
  }

LABEL_14:
  if (a5 && (*(a1 + 2672) & 1) != 0)
  {
LABEL_264:
    sub_19D41C548(34);
  }

  v12 = a4 & 0xFFFFFF;
  v13 = (a5 != 0) & (*(a1 + 42) ^ 1);
  if ((a4 & 0xFFFFFFu) > v13)
  {
    v284 = a4 & 0xFFFFFF;
    v285 = v12 - 1;
    v283 = 4 * v8;
    v14 = vneg_f16(0x1000100010001);
    __asm
    {
      FMOV            V5.4S, #-5.0
      FMOV            V6.4S, #5.0
    }

    v293 = _Q5;
    v294 = vdupq_n_s32(0x39200000u);
    v292 = _Q6;
    while (1)
    {
      v20 = v12 + ~v13;
      v290 = v13;
      if (!*(a1 + 2672))
      {
        v20 = v13;
      }

      v21 = v20;
      v22 = *(a1 + 2672) ? v20 < v285 : v20 > 0;
      v295 = v22;
      v23 = *(a1 + 2672) ? v21 + 1 : v21 - 1;
      v289 = v23;
      v24 = *(a1 + 42);
      v25 = (v24 & v10) != 0 ? 1 : v21;
      v26 = *(a1 + 64);
      if (v10)
      {
        break;
      }

      memmove(*(v26 + 8 * v25), *(*a2 + 8 * v25), 4 * *(a1 + 44));
      v27 = *(a1 + 40);
      if (v27 == 1)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (v10)
      {
        v28 = *(a1 + 48);
        v29 = *(*(a1 + 208) + 24 * v21);
        *v29 = **(*a3 + 24 * v21);
        if (v27)
        {
          v29[1] = v28 - 1;
        }
      }

      v30 = *(a1 + 136);
      if (v286 > 1)
      {
        memmove(*(v30 + 8 * v25), *(*a2 + 8 * v25), 4 * *(a1 + 44) * v8);
      }

      else
      {
        memcpy(*(v30 + 8 * v25), *(*(a1 + 64) + 8 * v25), 4 * *(a1 + 48));
      }

      v296 = v25;
      if (v8 > *(a1 + 2688))
      {
        sub_19D41C548(83724);
      }

      if (v24)
      {
        v31 = 1;
      }

      else
      {
        v31 = v21;
      }

      if (*(a1 + 2692) == 1)
      {
        bzero(*(*(a1 + 544) + 8 * v31), 4 * *(a1 + 52));
        bzero(*(*(a1 + 568) + 8 * v31), 4 * *(a1 + 52));
        bzero(*(*(a1 + 616) + 8 * v31), 4 * *(a1 + 52));
        bzero(*(*(a1 + 592) + 8 * v31), 4 * *(a1 + 52));
      }

      bzero(*(*(a1 + 352) + 8 * v31), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 376) + 8 * v31), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 400) + 8 * v31), 4 * *(a1 + 52) * v8);
      bzero(*(*(a1 + 424) + 8 * v31), 4 * *(a1 + 52) * v8);
      v32 = *(a1 + 2680);
      if (!v32)
      {
        v34 = v21;
        v36 = v10;
LABEL_60:
        LOBYTE(v291) = 0;
        v37 = v295;
        goto LABEL_61;
      }

      v33 = *(v32 + 40);
      if ((*(v32 + 20) & 1) == 0 && (v33 == 5 || v33 == 2))
      {
        v34 = v21;
        v35 = *(v32 + 44) == 6;
        v36 = v10;
        if (v33 == 5)
        {
          goto LABEL_56;
        }
      }

      else
      {
        v34 = v21;
        v35 = 0;
        v36 = v10;
        if (v33 == 5)
        {
          goto LABEL_56;
        }
      }

      if (v33 != 2)
      {
        if (v35)
        {
          goto LABEL_262;
        }

        goto LABEL_60;
      }

LABEL_56:
      if (v35 || (v37 = v295, v291 = *(v32 + 60) == 22, v295 && v291))
      {
LABEL_262:
        if (!*(a1 + 784))
        {
          operator new[]();
        }

        goto LABEL_264;
      }

LABEL_61:
      sub_19D30C308(a1, v36, (*(a1 + 424) + 8 * v31), *(a1 + 136) + 8 * v296, *(a1 + 2528), (*(a1 + 208) + 24 * v34), v8, *(a1 + 52), *(a1 + 48), 1);
      if (v37 && !v291)
      {
        goto LABEL_264;
      }

      v38 = *(a1 + 2680);
      if (v38 && *(v38 + 244) == 1)
      {
        goto LABEL_261;
      }

      v39 = v36;
      v40 = *(a1 + 52);
      v41 = (*(a1 + 424) + 8 * v31);
      v42 = (v40 * v8);
      v43 = v34;
      if (v42 >= 1)
      {
        v44 = *v41;
        do
        {
          v45 = -1035468800;
          if (*v44 < -50.0 || (v45 = 1112014848, *v44 > 50.0))
          {
            *v44 = v45;
          }

          ++v44;
          --v42;
        }

        while (v42);
      }

      v46 = v31;
      v47 = 8 * v31;
      sub_19D2CA3F8((*(a1 + 520) + 8 * v31), v41, v8, v40, *(a1 + 740));
      sub_19D30C308(a1, v39, (*(a1 + 352) + 8 * v31), *(a1 + 136) + 8 * v296, *(a1 + 2504), (*(a1 + 208) + 24 * v43), v8, *(a1 + 52), *(a1 + 48), 1);
      v48 = *(a1 + 2680);
      if (v48)
      {
        if (*(v48 + 244) == 1)
        {
LABEL_261:
          sub_19D41C548(200);
        }
      }

      if (!v295)
      {
        LODWORD(v50) = *(a1 + 52);
        v75 = (*(a1 + 352) + 8 * v31);
        v76 = (v50 * v8);
        if (v76 < 1)
        {
          goto LABEL_106;
        }

LABEL_100:
        v77 = *v75;
        do
        {
          v78 = -1035468800;
          if (*v77 < -50.0 || (v78 = 1112014848, *v77 > 50.0))
          {
            *v77 = v78;
          }

          ++v77;
          --v76;
        }

        while (v76);
        goto LABEL_106;
      }

      if (!v291)
      {
        goto LABEL_264;
      }

      v49 = *(a1 + 352);
      v50 = *(a1 + 52);
      if ((!v48 || *(v48 + 384)) && v50 >= 1)
      {
        v51 = 0;
        v52 = *(v49 + 8 * v31);
        v53 = *(*(a1 + 184) + 8 * v289);
        v54 = **(a1 + 2568);
        v56 = v52 < v53 + v283 * v50 && v53 < v52 + v283 * v50;
        v57 = v50 < 8 || v56;
        v58 = (v52 + 16);
        v59 = 4 * v50;
        v60 = (v53 + 16);
        while (!v57)
        {
          v62 = v60;
          v63 = v58;
          v64 = v54 + 1;
          v65 = v50 & 0x7FFFFFF8;
          do
          {
            v66 = vmlaq_f32(*v63, *v62, vbslq_s8(vmovl_s16(vceq_s16(*v64, 0x8000800080008000)), v292, vbslq_s8(vmovl_s16(vcgt_s16(*v64, v14)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v64)), v294), v293)));
            v63[-1] = vmlaq_f32(v63[-1], v62[-1], vbslq_s8(vmovl_s16(vceq_s16(v64[-1], 0x8000800080008000)), v292, vbslq_s8(vmovl_s16(vcgt_s16(v64[-1], v14)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(v64[-1])), v294), v293)));
            *v63 = v66;
            v64 += 2;
            v63 += 2;
            v62 += 2;
            v65 -= 8;
          }

          while (v65);
          v61 = v50 & 0x7FFFFFF8;
          if (v61 != v50)
          {
            goto LABEL_92;
          }

LABEL_86:
          ++v51;
          v58 = (v58 + v59);
          v60 = (v60 + v59);
          v52 += v59;
          v53 += v59;
          if (v51 == v8)
          {
            goto LABEL_99;
          }
        }

        v61 = 0;
LABEL_92:
        v67 = v50 - v61;
        v68 = (v52 + 4 * v61);
        v69 = (v53 + 4 * v61);
        v70 = v54 + v61;
        do
        {
          v73 = *v70++;
          v72 = v73;
          v74 = -5.0;
          if (v73 >= -32766)
          {
            v74 = 5.0;
            if (v72 != 0x7FFF)
            {
              v74 = v72 * 0.00015259;
            }
          }

          v71 = *v69++;
          *v68 = *v68 + (v71 * v74);
          ++v68;
          --v67;
        }

        while (v67);
        goto LABEL_86;
      }

LABEL_99:
      LOBYTE(v291) = 1;
      v75 = (v49 + 8 * v31);
      v76 = (v50 * v8);
      if (v76 >= 1)
      {
        goto LABEL_100;
      }

LABEL_106:
      sub_19D2CA3F8((*(a1 + 448) + v47), v75, v8, v50, *(a1 + 736));
      v79 = (*(a1 + 376) + v47);
      v10 = v39;
      sub_19D30C308(a1, v39, v79, *(a1 + 136) + 8 * v296, *(a1 + 2512), (*(a1 + 208) + 24 * v43), v8, *(a1 + 52), *(a1 + 48), 1);
      v80 = *(a1 + 2680);
      if (v80 && v80[244] == 1)
      {
        goto LABEL_261;
      }

      v12 = v284;
      if (v295)
      {
        if (!v291)
        {
          goto LABEL_264;
        }

        v81 = *(a1 + 52);
        if (v80 && !v80[384])
        {
          goto LABEL_132;
        }

        if (v81 >= 1)
        {
          v82 = 0;
          v83 = *(*(a1 + 376) + 8 * v31);
          v84 = *(*(a1 + 184) + 8 * v289);
          v85 = **(a1 + 2576);
          v87 = v83 < v84 + v283 * v81 && v84 < v83 + v283 * v81;
          v88 = v81 < 8 || v87;
          v89 = (v83 + 16);
          v90 = 4 * v81;
          v91 = (v84 + 16);
          while (!v88)
          {
            v93 = v91;
            v94 = v89;
            v95 = v85 + 1;
            v96 = v81 & 0x7FFFFFF8;
            do
            {
              v97 = vmlaq_f32(*v94, *v93, vbslq_s8(vmovl_s16(vceq_s16(*v95, 0x8000800080008000)), v292, vbslq_s8(vmovl_s16(vcgt_s16(*v95, v14)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v95)), v294), v293)));
              v94[-1] = vmlaq_f32(v94[-1], v93[-1], vbslq_s8(vmovl_s16(vceq_s16(v95[-1], 0x8000800080008000)), v292, vbslq_s8(vmovl_s16(vcgt_s16(v95[-1], v14)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(v95[-1])), v294), v293)));
              *v94 = v97;
              v95 += 2;
              v94 += 2;
              v93 += 2;
              v96 -= 8;
            }

            while (v96);
            v92 = v81 & 0x7FFFFFF8;
            if (v92 != v81)
            {
              goto LABEL_126;
            }

LABEL_120:
            ++v82;
            v89 = (v89 + v90);
            v91 = (v91 + v90);
            v83 += v90;
            v84 += v90;
            if (v82 == v8)
            {
              goto LABEL_131;
            }
          }

          v92 = 0;
LABEL_126:
          v98 = v81 - v92;
          v99 = (v83 + 4 * v92);
          v100 = (v84 + 4 * v92);
          v101 = v85 + v92;
          do
          {
            v104 = *v101++;
            v103 = v104;
            v105 = -5.0;
            if (v104 >= -32766)
            {
              v105 = 5.0;
              if (v103 != 0x7FFF)
              {
                v105 = v103 * 0.00015259;
              }
            }

            v102 = *v100++;
            *v99 = *v99 + (v102 * v105);
            ++v99;
            --v98;
          }

          while (v98);
          goto LABEL_120;
        }
      }

LABEL_131:
      if (!v80)
      {
        v106 = *(a1 + 52);
        v108 = (a1 + 752);
        goto LABEL_143;
      }

LABEL_132:
      v106 = *(a1 + 52);
      if (v80[465] != 1)
      {
        v108 = (a1 + 752);
        goto LABEL_143;
      }

      v107 = (v106 * v8);
      v108 = (a1 + 752);
      if (v107 < 1)
      {
        goto LABEL_143;
      }

      v109 = *(*(a1 + 376) + 8 * v46);
      if (v107 < 8)
      {
        v110 = 0;
LABEL_141:
        v115 = v107 - v110;
        v116 = &v109->f32[v110];
        do
        {
          *v116 = *v116 + 1.0;
          ++v116;
          --v115;
        }

        while (v115);
        goto LABEL_143;
      }

      v110 = v107 & 0x7FFFFFF8;
      v111 = v109 + 1;
      v112 = v110;
      do
      {
        __asm { FMOV            V2.4S, #1.0 }

        v114 = vaddq_f32(*v111, _Q2);
        v111[-1] = vaddq_f32(v111[-1], _Q2);
        *v111 = v114;
        v111 += 2;
        v112 -= 8;
      }

      while (v112);
      if (v110 != v107)
      {
        goto LABEL_141;
      }

LABEL_143:
      v117 = (*(a1 + 376) + 8 * v46);
      v118 = (v106 * v8);
      if (v118 >= 1)
      {
        v119 = *v117;
        do
        {
          v120 = -1035468800;
          if (*v119 < -50.0 || (v120 = 1112014848, *v119 > 50.0))
          {
            *v119 = v120;
          }

          ++v119;
          --v118;
        }

        while (v118);
      }

      sub_19D2CA3F8((*(a1 + 472) + 8 * v46), v117, v8, v106, *(a1 + 736));
      v121 = *(a1 + 184);
      v122 = *(a1 + 520);
      v123 = *(a1 + 448);
      v124 = *(a1 + 52) * v8;
      if (v124 >= 8)
      {
        v125 = *(v121 + 8 * v43);
        v126 = *(v123 + 8 * v46);
        v127 = v124 / 8;
        v128 = *(v122 + 8 * v46);
        do
        {
          v130 = *v128;
          v129 = v128[1];
          v128 += 2;
          v132 = *v126;
          v131 = v126[1];
          v126 += 2;
          *v125 = vmulq_f32(v132, v130);
          v125[1] = vmulq_f32(v131, v129);
          v125 += 2;
          --v127;
        }

        while (v127);
      }

      v133 = 8 * (v124 / 8);
      if (v133 < v124)
      {
        v134 = *(v122 + 8 * v46);
        v135 = *(v123 + 8 * v46);
        v136 = *(v121 + 8 * v43);
        v137 = v133;
        v138 = v124 - v133;
        if (v138 <= 7)
        {
          goto LABEL_160;
        }

        if ((v136 - v134) < 0x20)
        {
          goto LABEL_160;
        }

        if ((v136 - v135) < 0x20)
        {
          goto LABEL_160;
        }

        v139 = v138 - (v124 & 7) + v133;
        v140 = v133 + (v124 & 7) - v124;
        v141 = 4 * v133;
        v142 = (v136 + v141 + 16);
        v143 = (v134 + v141 + 16);
        v144 = (v135 + v141 + 16);
        do
        {
          v145 = vmulq_f32(*v144, *v143);
          v142[-1] = vmulq_f32(v144[-1], v143[-1]);
          *v142 = v145;
          v142 += 2;
          v143 += 2;
          v144 += 2;
          v140 += 8;
        }

        while (v140);
        v137 = v139;
        if ((v124 & 7) != 0)
        {
LABEL_160:
          v146 = v124 - v137;
          v147 = (v136 + 4 * v137);
          v148 = (v135 + 4 * v137);
          v149 = (v134 + 4 * v137);
          do
          {
            v150 = *v149++;
            v151 = v150;
            v152 = *v148++;
            *v147++ = v152 * v151;
            --v146;
          }

          while (v146);
        }
      }

      if (v295)
      {
        if (v282)
        {
          v153 = (*(a1 + 52) * v8);
          if (v153 < 1)
          {
            goto LABEL_192;
          }

          v154 = *(a1 + 184);
          v155 = *(v154 + 8 * v289);
          v156 = *(*(a1 + 448) + 8 * v46);
          v157 = *(v154 + 8 * v43);
          if (v153 < 8)
          {
            v158 = 0;
LABEL_167:
            v159 = v153 - v158;
            v160 = v158;
            v161 = (v157 + v160 * 4);
            v162 = &v156->f32[v160];
            v163 = &v155->f32[v160];
            do
            {
              v164 = *v163++;
              v165 = v164;
              v166 = *v162++;
              *v161 = (v165 - (v166 * v165)) + *v161;
              ++v161;
              --v159;
            }

            while (v159);
            goto LABEL_192;
          }

          v158 = 0;
          v273 = v157 + 4 * v153;
          v275 = v157 < v156->u64 + 4 * v153 && v156 < v273;
          if (v155 < v273 && v157 < v155->u64 + 4 * v153)
          {
            goto LABEL_167;
          }

          if (v275)
          {
            goto LABEL_167;
          }

          v158 = v153 & 0x7FFFFFF8;
          v277 = v155 + 1;
          v278 = v156 + 1;
          v279 = (v157 + 16);
          v280 = v158;
          do
          {
            v281 = vaddq_f32(vmlsq_f32(*v277, *v277, *v278), *v279);
            v279[-1] = vaddq_f32(vmlsq_f32(v277[-1], v277[-1], v278[-1]), v279[-1]);
            *v279 = v281;
            v277 += 2;
            v278 += 2;
            v279 += 2;
            v280 -= 8;
          }

          while (v280);
          if (v158 != v153)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v167 = *(a1 + 184);
          v168 = *(a1 + 472);
          v169 = *(a1 + 52) * v8;
          if (v169 >= 8)
          {
            v170 = *(v167 + 8 * v43);
            v171 = *(v167 + 8 * v289);
            v172 = v169 / 8;
            v173 = *(v168 + 8 * v46);
            do
            {
              v175 = *v173;
              v174 = v173[1];
              v173 += 2;
              v177 = *v171;
              v176 = v171[1];
              v171 += 2;
              v178 = vmlaq_f32(v170[1], v176, v174);
              *v170 = vmlaq_f32(*v170, v177, v175);
              v170[1] = v178;
              v170 += 2;
              --v172;
            }

            while (v172);
          }

          v179 = 8 * (v169 / 8);
          if (v179 < v169)
          {
            v180 = *(v168 + 8 * v46);
            v181 = *(v167 + 8 * v289);
            v182 = *(v167 + 8 * v43);
            v183 = v179;
            v184 = v169 - v179;
            if (v184 <= 7)
            {
              goto LABEL_190;
            }

            v185 = 4 * v179;
            v186 = v182 + 4 * v169;
            v187 = v182 + v185 >= (v181 + 4 * v169) || v181 + 4 * v179 >= v186;
            v188 = !v187;
            if (v180 + v185 < v186 && v182 + v185 < (v180 + 4 * v169))
            {
              goto LABEL_190;
            }

            if (v188)
            {
              goto LABEL_190;
            }

            v190 = v184 - (v169 & 7) + v183;
            v191 = v183 + (v169 & 7) - v169;
            v192 = (v182 + v185 + 16);
            v193 = (v180 + v185 + 16);
            v194 = (v181 + v185 + 16);
            do
            {
              v195 = vmlaq_f32(*v192, *v194, *v193);
              v192[-1] = vmlaq_f32(v192[-1], v194[-1], v193[-1]);
              *v192 = v195;
              v192 += 2;
              v193 += 2;
              v194 += 2;
              v191 += 8;
            }

            while (v191);
            v183 = v190;
            if ((v169 & 7) != 0)
            {
LABEL_190:
              v196 = v169 - v183;
              v197 = (v182 + 4 * v183);
              v198 = (v181 + 4 * v183);
              v199 = (v180 + 4 * v183);
              do
              {
                v200 = *v199++;
                v201 = v200;
                v202 = *v198++;
                *v197 = *v197 + (v202 * v201);
                ++v197;
                --v196;
              }

              while (v196);
            }
          }
        }
      }

LABEL_192:
      v203 = *(a1 + 52);
      v204 = (v203 * v8);
      if (v204 >= 1)
      {
        v205 = *(*(a1 + 184) + 8 * v43);
        do
        {
          v206 = -v11;
          if (*v205 < -v11 || (v206 = v11, *v205 > v11))
          {
            *v205 = v206;
          }

          ++v205;
          --v204;
        }

        while (v204);
      }

      sub_19D30C308(a1, v10, (*(a1 + 400) + 8 * v46), *(a1 + 136) + 8 * v296, *(a1 + 2520), (*(a1 + 208) + 24 * v43), v8, v203, *(a1 + 48), 1);
      v207 = *(a1 + 2680);
      if (!v207)
      {
        v211 = *(a1 + 52);
        v212 = (*(a1 + 400) + 8 * v46);
        v209 = v293;
        v208 = v294;
        v210 = v292;
        if (v211 >= 1)
        {
          goto LABEL_205;
        }

        goto LABEL_223;
      }

      v209 = v293;
      v208 = v294;
      v210 = v292;
      if (*(v207 + 244) == 1)
      {
        goto LABEL_261;
      }

      v211 = *(a1 + 52);
      v212 = (*(a1 + 400) + 8 * v46);
      if (*(v207 + 384) && v211 >= 1)
      {
LABEL_205:
        v213 = 0;
        v214 = *(*(a1 + 184) + 8 * v43);
        v215 = *v212;
        v216 = **(a1 + 2584);
        v217 = v283 * v211;
        v219 = *v212 < v214 + v217 && v214 < *v212 + v217;
        v220 = v211 < 8 || v219;
        v221 = (v215 + 16);
        v222 = 4 * v211;
        v223 = (v214 + 16);
        while (!v220)
        {
          v225 = v223;
          v226 = v221;
          v227 = v216 + 1;
          v228 = v211 & 0x7FFFFFF8;
          do
          {
            v229 = vmlaq_f32(*v226, *v225, vbslq_s8(vmovl_s16(vceq_s16(*v227, 0x8000800080008000)), v210, vbslq_s8(vmovl_s16(vcgt_s16(*v227, v14)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(*v227)), v208), v209)));
            v226[-1] = vmlaq_f32(v226[-1], v225[-1], vbslq_s8(vmovl_s16(vceq_s16(v227[-1], 0x8000800080008000)), v210, vbslq_s8(vmovl_s16(vcgt_s16(v227[-1], v14)), vmulq_f32(vcvtq_f32_s32(vmovl_s16(v227[-1])), v208), v209)));
            *v226 = v229;
            v227 += 2;
            v226 += 2;
            v225 += 2;
            v228 -= 8;
          }

          while (v228);
          v224 = v211 & 0x7FFFFFF8;
          if (v224 != v211)
          {
            goto LABEL_218;
          }

LABEL_212:
          ++v213;
          v221 = (v221 + v222);
          v223 = (v223 + v222);
          v215 += v222;
          v214 += v222;
          if (v213 == v8)
          {
            goto LABEL_223;
          }
        }

        v224 = 0;
LABEL_218:
        v230 = v211 - v224;
        v231 = (v215 + 4 * v224);
        v232 = (v214 + 4 * v224);
        v233 = v216 + v224;
        do
        {
          v236 = *v233++;
          v235 = v236;
          v237 = -5.0;
          if (v236 >= -32766)
          {
            v237 = 5.0;
            if (v235 != 0x7FFF)
            {
              v237 = v235 * 0.00015259;
            }
          }

          v234 = *v232++;
          *v231 = *v231 + (v234 * v237);
          ++v231;
          --v230;
        }

        while (v230);
        goto LABEL_212;
      }

LABEL_223:
      v238 = (v211 * v8);
      if (v238 >= 1)
      {
        v239 = *v212;
        do
        {
          v240 = -1035468800;
          if (*v239 < -50.0 || (v240 = 1112014848, *v239 > 50.0))
          {
            *v239 = v240;
          }

          ++v239;
          --v238;
        }

        while (v238);
      }

      sub_19D2CA3F8((*(a1 + 496) + 8 * v46), v212, v8, v211, *(a1 + 736));
      sub_19D2CA3F8(v108, (*(a1 + 184) + 8 * v43), v8, *(a1 + 52), *(a1 + 744));
      v241 = *(a1 + 160);
      v242 = *(a1 + 496);
      v243 = *(a1 + 52) * v8;
      v244 = v243 / 8;
      if (v243 >= 8)
      {
        v245 = *(v241 + 8 * v43);
        v246 = *(v242 + 8 * v46);
        v247 = v243 / 8;
        v248 = *v108;
        do
        {
          v250 = *v248;
          v249 = v248[1];
          v248 += 2;
          v252 = *v246;
          v251 = v246[1];
          v246 += 2;
          *v245 = vmulq_f32(v252, v250);
          v245[1] = vmulq_f32(v251, v249);
          v245 += 2;
          --v247;
        }

        while (v247);
      }

      v253 = 8 * v244;
      if (8 * v244 < v243)
      {
        v254 = *(v242 + 8 * v46);
        v255 = *v108;
        v256 = *(v241 + 8 * v43);
        v257 = v253;
        v258 = v243 - v253;
        if (v258 <= 7)
        {
          goto LABEL_240;
        }

        if ((v256 - v255) < 0x20)
        {
          goto LABEL_240;
        }

        if ((v256 - v254) < 0x20)
        {
          goto LABEL_240;
        }

        v259 = v258 - (v243 & 7) + v253;
        v260 = v253 + (v243 & 7) - v243;
        v261 = 4 * v253;
        v262 = (v256 + v261 + 16);
        v263 = (v255 + v261 + 16);
        v264 = (v254 + v261 + 16);
        do
        {
          v265 = vmulq_f32(*v264, *v263);
          v262[-1] = vmulq_f32(v264[-1], v263[-1]);
          *v262 = v265;
          v262 += 2;
          v263 += 2;
          v264 += 2;
          v260 += 8;
        }

        while (v260);
        v257 = v259;
        if ((v243 & 7) != 0)
        {
LABEL_240:
          v266 = v243 - v257;
          v267 = (v256 + 4 * v257);
          v268 = (v254 + 4 * v257);
          v269 = (v255 + 4 * v257);
          do
          {
            v270 = *v269++;
            v271 = v270;
            v272 = *v268++;
            *v267++ = v272 * v271;
            --v266;
          }

          while (v266);
        }
      }

      if (*(a1 + 2692) == 1)
      {
        memcpy(*(*(a1 + 112) + 8 * v43), *(*(a1 + 160) + 8 * v43), 4 * *(a1 + 52));
        memcpy(*(*(a1 + 88) + 8 * v43), *(*(a1 + 184) + 8 * v43), 4 * *(a1 + 52));
      }

      v13 = v290 + 1;
      if (v290 + 1 == v284)
      {
        return;
      }
    }

    bzero(*(v26 + 8 * v25), 4 * *(a1 + 48));
    *(*(*(a1 + 64) + 8 * v25) + 4 * **(*a3 + 24 * v21)) = 1065353216;
    v27 = *(a1 + 40);
    if (v27 != 1)
    {
      goto LABEL_35;
    }

LABEL_34:
    *(*(*(a1 + 64) + 8 * v25) + 4 * *(a1 + 48) - 4) = 1065353216;
    goto LABEL_35;
  }
}