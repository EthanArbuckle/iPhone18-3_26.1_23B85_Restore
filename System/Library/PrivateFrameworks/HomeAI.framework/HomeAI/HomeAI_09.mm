void sub_22D24AFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = STACK[0x1108];
  if (STACK[0x1108] != a11)
  {
    if (v12)
    {
      MEMORY[0x2318CB180](v12, 0x1000C8052888210);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *cv::GEMMBlockMul_32f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v16 = v15;
  v17 = v11;
  v18 = v9;
  v19 = v14[1];
  v21 = v20[1];
  v22 = *v20;
  v23 = v10 >> 2;
  if (a9)
  {
    if (v19 >= 0x409)
    {
      operator new[]();
    }

    v26 = 1;
    result = v69;
    v24 = v69;
  }

  else
  {
    v24 = 0;
    result = v69;
    v19 = *v14;
    v26 = v10 >> 2;
    v23 = 1;
  }

  v27 = v12 >> 2;
  v28 = v13 >> 3;
  if ((a9 & 2) != 0)
  {
    if (v21 >= 1)
    {
      v52 = 0;
      v53 = 4 * v26;
      if (v24)
      {
        v54 = v19 < 1;
      }

      else
      {
        v54 = 1;
      }

      v55 = v54;
      v56 = 4 * v27;
      do
      {
        if (v24)
        {
          v57 = v24;
        }

        else
        {
          v57 = v18;
        }

        if ((v55 & 1) == 0)
        {
          v58 = 0;
          v59 = v18;
          do
          {
            *&v24[v58] = *v59;
            v58 += 4;
            v59 += v23;
          }

          while (4 * v19 != v58);
          v57 = v24;
        }

        if (v22 >= 1)
        {
          v60 = 0;
          v61 = v17;
          do
          {
            v62 = 0;
            if ((a9 & 0x10) != 0)
            {
              v62 = *(v16 + 8 * v60);
            }

            v63 = v62;
            if (v19 >= 2)
            {
              v65 = 0;
              v66 = 0;
              do
              {
                v63 = vmlaq_f64(v63, vcvtq_f64_f32(v61[v65]), vcvtq_f64_f32(*&v57[v65 * 8]));
                v66 += 2;
                ++v65;
              }

              while (v66 <= v19 - 2);
              v64 = ((v19 - 2) & 0xFFFFFFFE) + 2;
            }

            else
            {
              v64 = 0;
            }

            if (v64 >= v19)
            {
              v68 = v63.f64[0];
            }

            else
            {
              v67 = v64;
              v68 = v63.f64[0];
              do
              {
                v68 = v68 + *&v57[v67 * 4] * v61->f32[v67];
                ++v64;
                ++v67;
              }

              while (v19 > v64);
            }

            *(v16 + 8 * v60++) = v63.f64[1] + v68;
            v61 = (v61 + v56);
          }

          while (v60 != v22);
        }

        ++v52;
        v18 = (v18 + v53);
        v16 += 8 * v28;
      }

      while (v52 != v21);
    }
  }

  else if (v21 >= 1)
  {
    v29 = 0;
    v30 = 4 * v26;
    if (v24)
    {
      v31 = v19 < 1;
    }

    else
    {
      v31 = 1;
    }

    v32 = v31;
    v33 = 4 * v27;
    do
    {
      if (v24)
      {
        v34 = v24;
      }

      else
      {
        v34 = v18;
      }

      if ((v32 & 1) == 0)
      {
        v35 = 0;
        v36 = v18;
        do
        {
          *&v24[v35] = *v36;
          v35 += 4;
          v36 += v23;
        }

        while (4 * v19 != v35);
        v34 = v24;
      }

      if (v22 >= 4)
      {
        v37 = 0;
        v38 = v11 + 1;
        do
        {
          v39 = 0uLL;
          v40 = (v16 + 8 * v37);
          v41 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v39 = *v40;
            v41 = v40[1];
          }

          if (v19 >= 1)
          {
            v42 = v38;
            v43 = v34;
            v44 = v19;
            do
            {
              v45 = *v43++;
              v39 = vmlaq_n_f64(v39, vcvtq_f64_f32(v42[-1]), v45);
              v41 = vmlaq_n_f64(v41, vcvtq_f64_f32(*v42), v45);
              v42 = (v42 + v33);
              --v44;
            }

            while (v44);
          }

          *v40 = v39;
          v40[1] = v41;
          v37 += 4;
          v38 += 2;
        }

        while (v37 <= v22 - 4);
        v37 = v37;
      }

      else
      {
        v37 = 0;
      }

      if (v37 < v22)
      {
        v46 = v11 + v37;
        do
        {
          v47 = 0.0;
          if ((a9 & 0x10) != 0)
          {
            v47 = *(v16 + 8 * v37);
          }

          if (v19 >= 1)
          {
            v48 = v46;
            v49 = v34;
            v50 = v19;
            do
            {
              v51 = *v49++;
              v47 = v47 + v51 * *v48;
              v48 = (v48 + v33);
              --v50;
            }

            while (v50);
          }

          *(v16 + 8 * v37++) = v47;
          ++v46;
        }

        while (v37 != v22);
      }

      ++v29;
      v18 = (v18 + v30);
      v16 += 8 * v28;
    }

    while (v29 != v21);
  }

  return result;
}

void sub_22D24B418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != a9)
  {
    if (a10)
    {
      MEMORY[0x2318CB180]();
    }
  }

  _Unwind_Resume(exception_object);
}

float *cv::GEMMStore_32f(float *result, unint64_t a2, float64x2_t *a3, unint64_t a4, float32x4_t *a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = a2 >> 2;
  }

  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 2;
  }

  else
  {
    v12 = 1;
  }

  if (result)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (result)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    v15 = *a7;
    v16 = 4 * v14;
    v17 = vdupq_lane_s64(*&a10, 0);
    v18 = (v15 - 4);
    v19 = &a5->u32[2];
    v20 = 4 * (a6 >> 2);
    v21 = a3 + 1;
    v22 = 8 * (a4 >> 3);
    v23 = v14;
    do
    {
      v24 = 0;
      if (result)
      {
        if (v15 < 4)
        {
          v25 = result;
        }

        else
        {
          v31 = v21;
          v32 = v19;
          v33 = result;
          do
          {
            v34 = v33;
            v35.i32[0] = *v33;
            v36 = &v33[v23];
            v35.i32[1] = *v36;
            v37 = &v36[v23];
            v32[-1] = vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(v31[-1], a9), vcvtq_f64_f32(v35), v17));
            v35.i32[0] = *v37;
            v38 = &v37[v23];
            v39 = *v31;
            v31 += 2;
            v35.i32[1] = *v38;
            v33 = &v38[v23];
            *v32 = vcvt_f32_f64(vmlaq_f64(vmulq_n_f64(v39, a9), vcvtq_f64_f32(v35), v17));
            v32 += 2;
            v24 += 4;
          }

          while (v24 <= v18);
          v25 = &v34[v16];
          v24 = v24;
        }

        if (v24 < v15)
        {
          do
          {
            v40 = a3->f64[v24] * a9 + *v25 * a10;
            a5->f32[v24++] = v40;
            v25 = (v25 + v23 * 4);
          }

          while (v15 != v24);
        }
      }

      else
      {
        if (v15 >= 4)
        {
          v26 = a3;
          v27 = a5;
          do
          {
            v28 = *v26;
            v29 = v26[1];
            v26 += 2;
            *v27++ = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v28, a9)), vmulq_n_f64(v29, a9));
            v24 += 4;
          }

          while (v24 <= v18);
          v24 = v24;
        }

        if (v24 < v15)
        {
          do
          {
            v30 = a3->f64[v24] * a9;
            a5->f32[v24++] = v30;
          }

          while (v15 != v24);
        }
      }

      result += v13;
      v19 = (v19 + v20);
      v21 = (v21 + v22);
      a5 = (a5 + v20);
      a3 = (a3 + v22);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t cv::GEMMSingleMul_64f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, int *a10, char a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2);
  v18 = v17;
  v20 = v19;
  v131 = v13;
  v22 = v21;
  v23 = v16;
  v24 = v11;
  v25 = *a10;
  v133 = a10[1];
  v26 = *a10;
  v27 = *a9;
  v28 = a9[1];
  v29 = v140;
  v138 = v140;
  v139 = 520;
  v30 = v12 >> 3;
  v31 = v20 >> 3;
  v32 = v15 >> 3;
  v134 = v33 >> 3;
  if ((a11 & 4) != 0)
  {
    v34 = 1;
  }

  else
  {
    v34 = v15 >> 3;
  }

  if ((a11 & 4) == 0)
  {
    v32 = 1;
  }

  if (v14)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v14)
  {
    v36 = v32;
  }

  else
  {
    v36 = 0;
  }

  v130 = v16;
  if (a11)
  {
    v38 = 1;
    if (v12 >= 0x10 && v28 >= 2)
    {
      if (v28 >= 0x209)
      {
        v139 = v28;
        operator new[]();
      }

      v38 = 1;
      goto LABEL_62;
    }

    v27 = v28;
    v37 = v12 >> 3;
  }

  else
  {
    v37 = 1;
    v38 = v12 >> 3;
  }

  if (v27 == 1)
  {
    if (v12 < 0x10)
    {
      v58 = v13;
    }

    else
    {
      v58 = v13;
      if (v28 >= 2)
      {
        if (v133 >= 0x209)
        {
          v139 = v133;
          operator new[]();
        }

        if (v133 >= 1)
        {
          v59 = 0;
          do
          {
            *&v140[v59] = *v24;
            v59 += 8;
            v24 += v30;
          }

          while (8 * v133 != v59);
        }

        v24 = v140;
      }
    }

    if (v20 < 0x10)
    {
      v113 = v133;
    }

    else
    {
      v113 = v133;
      if (v25 > 0x208 && v26 >= 0x209)
      {
        operator new[]();
      }

      if (v26 >= 1)
      {
        v114 = 0;
        do
        {
          *&v136[v114] = *v58;
          v114 += 8;
          v58 += v31;
        }

        while (8 * v25 != v114);
      }

      v58 = v136;
    }

    if (v113 >= 1)
    {
      for (i = 0; i != v113; ++i)
      {
        v116 = *&v24[i] * v23;
        if (v26 >= 2)
        {
          v117 = 0;
          v119 = (v58 + 1);
          v120 = v18;
          v118 = v14;
          do
          {
            v121 = v116 * *(v119 - 1);
            v122 = v116 * *v119;
            if (v118)
            {
              *v120 = v121 + *v118 * v22;
              v122 = v122 + v118[v36] * v22;
            }

            else
            {
              *v120 = v121;
            }

            v117 += 2;
            v120[1] = v122;
            v118 += 2 * v36;
            v120 += 2;
            v119 += 2;
          }

          while (v117 <= v25 - 2);
          v117 = v117;
        }

        else
        {
          v117 = 0;
          v118 = v14;
        }

        if (v117 < v25)
        {
          do
          {
            v123 = v116 * *&v58[v117];
            if (v118)
            {
              v123 = v123 + *v118 * v22;
            }

            v18[v117++] = v123;
            v118 += v36;
          }

          while (v25 != v117);
        }

        v14 += v35;
        v18 += v134;
      }
    }

    goto LABEL_166;
  }

  v29 = 0;
  v30 = v37;
  LODWORD(v28) = v27;
LABEL_62:
  if ((a11 & 2) != 0)
  {
    if (v133 >= 1)
    {
      v39 = 0;
      if (v29)
      {
        v40 = v28 < 1;
      }

      else
      {
        v40 = 1;
      }

      v41 = v40;
      v42 = 8 * v30;
      v43 = 8 * v31;
      do
      {
        if (v29)
        {
          v44 = v29;
        }

        else
        {
          v44 = v24;
        }

        if ((v41 & 1) == 0)
        {
          v45 = 0;
          v46 = v24;
          do
          {
            *&v29[v45] = *v46;
            v45 += 8;
            v46 = (v46 + v42);
          }

          while (8 * v28 != v45);
          v44 = v29;
        }

        if (v25 >= 1)
        {
          v47 = 0;
          v48 = v131;
          v49 = v14;
          do
          {
            if (v28 >= 4)
            {
              v53 = 0;
              v54 = 0;
              v51 = 0uLL;
              v52 = 0uLL;
              do
              {
                v52 = vmlaq_f64(v52, *&v48[v53 + 2], *&v44[v53 * 8 + 16]);
                v51 = vmlaq_f64(v51, *&v48[v53], *&v44[v53 * 8]);
                v54 += 4;
                v53 += 4;
              }

              while (v54 <= v28 - 4);
              v50 = ((v28 - 4) & 0xFFFFFFFC) + 4;
            }

            else
            {
              v50 = 0;
              v51 = 0uLL;
              v52 = 0uLL;
            }

            if (v50 >= v28)
            {
              v56 = v51.f64[0];
            }

            else
            {
              v55 = v50;
              v56 = v51.f64[0];
              do
              {
                v56 = v56 + *&v44[v55 * 8] * *&v48[v55];
                ++v50;
                ++v55;
              }

              while (v28 > v50);
            }

            v57 = (v52.f64[1] + v52.f64[0] + v51.f64[1] + v56) * v23;
            if (v49)
            {
              v57 = v57 + *v49 * v22;
            }

            v18[v47++] = v57;
            v49 += v36;
            v48 = (v48 + v43);
          }

          while (v47 != v25);
        }

        ++v39;
        v24 += v38;
        v14 += v35;
        v18 += v134;
      }

      while (v39 != v133);
    }
  }

  else if ((8 * v25) > 0x640)
  {
    if (v26 >= 0x209)
    {
      operator new[]();
    }

    if (v133 >= 1)
    {
      v89 = 0;
      v90 = v35;
      v91 = 8 * v25;
      v92 = 8 * v28;
      v93 = 8 * v30;
      v94 = 8 * v31;
      if (v29)
      {
        v95 = v28 < 1;
      }

      else
      {
        v95 = 1;
      }

      v129 = 8 * v134;
      v96 = v95;
      v128 = v96;
      v125 = (v13 + 2);
      v126 = v93;
      v127 = v90;
      v97 = 8 * v36;
      do
      {
        if (v29)
        {
          v98 = v29;
        }

        else
        {
          v98 = v24;
        }

        v135 = v14;
        if ((v128 & 1) == 0)
        {
          v99 = 0;
          v100 = v24;
          do
          {
            *&v29[v99] = *v100;
            v99 += 8;
            v100 = (v100 + v93);
          }

          while (v92 != v99);
          v98 = v29;
        }

        if (v26 >= 1)
        {
          v132 = v89;
          bzero(v136, 8 * v25);
          v97 = 8 * v36;
          v93 = v126;
          v92 = 8 * v28;
          v89 = v132;
          v26 = v25;
          v23 = v130;
        }

        if (v28 >= 1)
        {
          v101 = 0;
          v102 = v131;
          v103 = v125;
          do
          {
            v104 = *&v98[8 * v101];
            if (v25 >= 4)
            {
              v105 = 0;
              v106 = vdupq_lane_s64(v104, 0);
              v107 = &v137;
              v108 = v103;
              do
              {
                v109 = vmlaq_f64(*v107, v106, *v108);
                v107[-1] = vmlaq_f64(v107[-1], v106, v108[-1]);
                *v107 = v109;
                v105 += 4;
                v108 += 2;
                v107 += 2;
              }

              while (v105 <= v25 - 4);
              v105 = v105;
            }

            else
            {
              v105 = 0;
            }

            if (v105 < v26)
            {
              do
              {
                *&v136[8 * v105] = *&v136[8 * v105] + *&v102[v105] * *&v104;
                ++v105;
              }

              while (v25 != v105);
            }

            ++v101;
            v103 = (v103 + v94);
            v102 = (v102 + v94);
          }

          while (v101 != v28);
        }

        if (v135)
        {
          if (v26 >= 1)
          {
            v110 = 0;
            v111 = v135;
            do
            {
              v18[v110 / 8] = *&v136[v110] * v23 + *v111 * v22;
              v110 += 8;
              v111 = (v111 + v97);
            }

            while (v91 != v110);
          }
        }

        else if (v25 >= 1)
        {
          v112 = 0;
          do
          {
            v18[v112 / 8] = *&v136[v112] * v23;
            v112 += 8;
          }

          while (v91 != v112);
        }

        ++v89;
        v24 += v38;
        v14 = &v135[v127];
        v18 = (v18 + v129);
      }

      while (v89 != v133);
    }
  }

  else if (v133 >= 1)
  {
    v60 = 0;
    if (v29)
    {
      v61 = v28 < 1;
    }

    else
    {
      v61 = 1;
    }

    v62 = v61;
    v63 = 8 * v38;
    v64 = 8 * v30;
    v65 = 8 * v31;
    do
    {
      if (v29)
      {
        v66 = v29;
      }

      else
      {
        v66 = v24;
      }

      if ((v62 & 1) == 0)
      {
        v67 = 0;
        v68 = v24;
        do
        {
          *&v29[v67] = *v68;
          v67 += 8;
          v68 = (v68 + v64);
        }

        while (8 * v28 != v67);
        v66 = v29;
      }

      if (v26 >= 4)
      {
        v69 = 0;
        v71 = v131;
        v70 = v14;
        do
        {
          v72 = 0uLL;
          if (v28 < 1)
          {
            v77 = 0.0;
            v73 = 0.0;
          }

          else
          {
            v73 = 0.0;
            v74 = v71;
            v75 = v66;
            v76 = v28;
            v77 = 0.0;
            do
            {
              v78 = *v75++;
              v77 = v77 + v78 * *v74;
              v72 = vmlaq_n_f64(v72, *(v74 + 1), v78);
              v73 = v73 + v78 * *(v74 + 3);
              v74 = (v74 + v65);
              --v76;
            }

            while (v76);
          }

          v79 = v77 * v23;
          v80 = &v18[v69];
          if (v70)
          {
            *v80 = v79 + *v70 * v22;
            v80[1] = v23 * v72.f64[0] + v70[v36] * v22;
            v80[2] = vmuld_lane_f64(v23, v72, 1) + v70[2 * v36] * v22;
            v81 = v73 * v23 + v70[3 * v36] * v22;
          }

          else
          {
            *v80 = v79;
            *(v80 + 1) = vmulq_n_f64(v72, v23);
            v81 = v73 * v23;
          }

          v80[3] = v81;
          v69 += 4;
          v70 += 4 * v36;
          v71 += 4;
        }

        while (v69 <= v25 - 4);
        v69 = v69;
      }

      else
      {
        v69 = 0;
        v70 = v14;
      }

      if (v69 < v25)
      {
        v82 = &v131[v69];
        do
        {
          v83 = 0.0;
          if (v28 >= 1)
          {
            v84 = v82;
            v85 = v66;
            v86 = v28;
            do
            {
              v87 = *v85++;
              v83 = v83 + v87 * *v84;
              v84 = (v84 + v65);
              --v86;
            }

            while (v86);
          }

          v88 = v83 * v23;
          if (v70)
          {
            v88 = v88 + *v70 * v22;
          }

          v18[v69++] = v88;
          v70 += v36;
          ++v82;
        }

        while (v69 != v25);
      }

      ++v60;
      v24 = (v24 + v63);
      v14 += v35;
      v26 = v25;
      v18 += v134;
    }

    while (v60 != v133);
  }

LABEL_166:
  result = v138;
  if (v138 != v140)
  {
    if (v138)
    {
      return MEMORY[0x2318CB180]();
    }
  }

  return result;
}

void sub_22D24C030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = STACK[0x1108];
  if (STACK[0x1108] != a11)
  {
    if (v12)
    {
      MEMORY[0x2318CB180](v12, 0x1000C8000313F17);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *cv::GEMMBlockMul_64f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v16 = v15;
  v17 = v11;
  v18 = v9;
  v19 = v14[1];
  v21 = v20[1];
  v22 = *v20;
  v23 = v10 >> 3;
  if (a9)
  {
    if (v19 >= 0x209)
    {
      operator new[]();
    }

    v26 = 1;
    result = v69;
    v24 = v69;
  }

  else
  {
    v24 = 0;
    result = v69;
    v19 = *v14;
    v26 = v10 >> 3;
    v23 = 1;
  }

  v27 = v12 >> 3;
  v28 = v13 >> 3;
  if ((a9 & 2) != 0)
  {
    if (v21 >= 1)
    {
      v52 = 0;
      v53 = 8 * v26;
      if (v24)
      {
        v54 = v19 < 1;
      }

      else
      {
        v54 = 1;
      }

      v55 = v54;
      v56 = 8 * v27;
      do
      {
        if (v24)
        {
          v57 = v24;
        }

        else
        {
          v57 = v18;
        }

        if ((v55 & 1) == 0)
        {
          v58 = 0;
          v59 = v18;
          do
          {
            *&v24[v58] = *v59;
            v58 += 8;
            v59 += v23;
          }

          while (8 * v19 != v58);
          v57 = v24;
        }

        if (v22 >= 1)
        {
          v60 = 0;
          v61 = v17;
          do
          {
            v62 = 0;
            if ((a9 & 0x10) != 0)
            {
              v62 = *(v16 + 8 * v60);
            }

            v63 = v62;
            if (v19 >= 2)
            {
              v65 = 0;
              v66 = 0;
              do
              {
                v63 = vmlaq_f64(v63, v61[v65], *&v57[v65 * 16]);
                v66 += 2;
                ++v65;
              }

              while (v66 <= v19 - 2);
              v64 = ((v19 - 2) & 0xFFFFFFFE) + 2;
            }

            else
            {
              v64 = 0;
            }

            if (v64 >= v19)
            {
              v68 = v63.f64[0];
            }

            else
            {
              v67 = v64;
              v68 = v63.f64[0];
              do
              {
                v68 = v68 + *&v57[v67 * 8] * v61->f64[v67];
                ++v64;
                ++v67;
              }

              while (v19 > v64);
            }

            *(v16 + 8 * v60++) = v63.f64[1] + v68;
            v61 = (v61 + v56);
          }

          while (v60 != v22);
        }

        ++v52;
        v18 = (v18 + v53);
        v16 += 8 * v28;
      }

      while (v52 != v21);
    }
  }

  else if (v21 >= 1)
  {
    v29 = 0;
    v30 = 8 * v26;
    if (v24)
    {
      v31 = v19 < 1;
    }

    else
    {
      v31 = 1;
    }

    v32 = v31;
    v33 = 8 * v27;
    do
    {
      if (v24)
      {
        v34 = v24;
      }

      else
      {
        v34 = v18;
      }

      if ((v32 & 1) == 0)
      {
        v35 = 0;
        v36 = v18;
        do
        {
          *&v24[v35] = *v36;
          v35 += 8;
          v36 += v23;
        }

        while (8 * v19 != v35);
        v34 = v24;
      }

      if (v22 >= 4)
      {
        v37 = 0;
        v38 = v11 + 1;
        do
        {
          v39 = 0uLL;
          v40 = (v16 + 8 * v37);
          v41 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v39 = *v40;
            v41 = v40[1];
          }

          if (v19 >= 1)
          {
            v42 = v38;
            v43 = v34;
            v44 = v19;
            do
            {
              v45 = vld1q_dup_f64(v43++);
              v39 = vmlaq_f64(v39, v42[-1], v45);
              v41 = vmlaq_f64(v41, *v42, v45);
              v42 = (v42 + v33);
              --v44;
            }

            while (v44);
          }

          *v40 = v39;
          v40[1] = v41;
          v37 += 4;
          v38 += 2;
        }

        while (v37 <= v22 - 4);
        v37 = v37;
      }

      else
      {
        v37 = 0;
      }

      if (v37 < v22)
      {
        v46 = &v11->f64[v37];
        do
        {
          v47 = 0.0;
          if ((a9 & 0x10) != 0)
          {
            v47 = *(v16 + 8 * v37);
          }

          if (v19 >= 1)
          {
            v48 = v46;
            v49 = v34;
            v50 = v19;
            do
            {
              v51 = *v49++;
              v47 = v47 + v51 * *v48;
              v48 = (v48 + v33);
              --v50;
            }

            while (v50);
          }

          *(v16 + 8 * v37++) = v47;
          ++v46;
        }

        while (v37 != v22);
      }

      ++v29;
      v18 = (v18 + v30);
      v16 += 8 * v28;
    }

    while (v29 != v21);
  }

  return result;
}

void sub_22D24C444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10 != a9)
  {
    if (a10)
    {
      MEMORY[0x2318CB180]();
    }
  }

  _Unwind_Resume(exception_object);
}

double *cv::GEMMStore_64f(double *result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = a2 >> 3;
  }

  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 3;
  }

  else
  {
    v12 = 1;
  }

  if (result)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (result)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v10)
  {
    v15 = *a7;
    v16 = 4 * v14;
    v17 = (v15 - 4);
    v18 = vdupq_lane_s64(*&a10, 0);
    v19 = 8 * (a6 >> 3);
    v20 = 8 * (a4 >> 3);
    v21 = v14;
    do
    {
      if (result)
      {
        if (v15 < 4)
        {
          v24 = 0;
          v22 = result;
        }

        else
        {
          v23 = 0;
          v24 = 0;
          v25 = result;
          do
          {
            v26 = v25;
            v27.f64[0] = *v25;
            v28 = (a5 + v23);
            v27.f64[1] = v25[v21];
            *v28 = vmlaq_f64(vmulq_n_f64(*(a3 + v23), a9), v27, v18);
            v29 = &v25[v21 + v21];
            v27.f64[0] = *v29;
            v30 = &v29[v21];
            v27.f64[1] = *v30;
            v28[1] = vmlaq_f64(vmulq_n_f64(*(a3 + v23 + 16), a9), v27, v18);
            v24 += 4;
            v23 += 32;
            v25 = &v30[v21];
          }

          while (v24 <= v17);
          v22 = &v26[v16];
          v24 = v24;
        }

        if (v24 < v15)
        {
          do
          {
            *(a5 + 8 * v24) = *(a3 + 8 * v24) * a9 + *v22 * a10;
            ++v24;
            v22 = (v22 + v21 * 8);
          }

          while (v15 != v24);
        }
      }

      else
      {
        if (v15 < 4)
        {
          i = 0;
        }

        else
        {
          v31 = 0;
          for (i = 0; i <= v17; i += 4)
          {
            v33 = (a5 + v31);
            *v33 = vmulq_n_f64(*(a3 + v31), a9);
            v33[1] = vmulq_n_f64(*(a3 + v31 + 16), a9);
            v31 += 32;
          }

          i = i;
        }

        if (i < v15)
        {
          do
          {
            *(a5 + 8 * i) = *(a3 + 8 * i) * a9;
            ++i;
          }

          while (v15 != i);
        }
      }

      result += v13;
      a5 += v19;
      a3 += v20;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t cv::GEMMSingleMul_32fc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unsigned int *a10, char a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2);
  v218 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v208 = v21;
  v209 = v22;
  v211 = v23;
  v25 = v24;
  v203 = v11;
  v26 = a9[1];
  v206 = *a9;
  v27 = *a10;
  v210 = a10[1];
  v212 = *a10;
  v28 = v225;
  bzero(v225, 0x1050uLL);
  v223 = v225;
  v224 = 520;
  v29 = v25 >> 3;
  v30 = v20;
  v31 = v20 >> 3;
  v32 = v16 >> 3;
  v213 = v18;
  v216 = v218 >> 3;
  if ((a11 & 4) != 0)
  {
    v33 = v16 >> 3;
  }

  else
  {
    v33 = 1;
  }

  if ((a11 & 4) != 0)
  {
    v32 = 1;
  }

  if (v18)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (!v18)
  {
    v32 = 0;
  }

  v219 = v32;
  if (a11)
  {
    v36 = 1;
    if (v25 < 0x10)
    {
      v35 = v25 >> 3;
      v38 = v26;
      v37 = v211;
    }

    else
    {
      v37 = v211;
      if (v26 >= 2)
      {
        if (v26 >= 0x209)
        {
          v224 = v26;
          operator new[]();
        }

        v36 = 1;
        goto LABEL_60;
      }

      v35 = v25 >> 3;
      v38 = v26;
    }
  }

  else
  {
    v35 = 1;
    v36 = v25 >> 3;
    v37 = v211;
    v38 = v206;
  }

  if (v38 == 1)
  {
    v39 = v20 >> 3;
    bzero(v221, 0x1050uLL);
    if (v25 < 0x10)
    {
      v45 = v209;
      v40 = v211;
      v41 = v208;
      v42 = v203;
      v43 = v210;
      v44 = v27;
    }

    else
    {
      v40 = v211;
      v41 = v208;
      v42 = v203;
      v43 = v210;
      v44 = v27;
      if (v26 < 2)
      {
        v45 = v209;
      }

      else
      {
        if (v210 >= 0x209)
        {
          v224 = v210;
          operator new[]();
        }

        v45 = v209;
        if (v210 >= 1)
        {
          v46 = 0;
          do
          {
            *&v225[v46] = *v42;
            v46 += 8;
            v42 += v25 >> 3;
          }

          while (8 * v210 != v46);
        }

        v42 = v225;
      }
    }

    if (v30 >= 0x10)
    {
      if (v44 > 0x208)
      {
        operator new[]();
      }

      if (v44 >= 1)
      {
        for (i = 0; i != v44; ++i)
        {
          v221[i] = *v41;
          v41 += v39;
        }
      }

      v41 = v221;
    }

    v180 = v213;
    if (v43 >= 1)
    {
      for (j = 0; j != v43; ++j)
      {
        v182 = &v42[j];
        v183 = *v182 * v40;
        v184.f64[0] = v182[1] * v40;
        if (v44 >= 2)
        {
          v185 = 0;
          v187 = vdupq_lane_s64(*&v183, 0);
          v188.f64[0] = v182[1] * v40;
          v188.f64[1] = -v184.f64[0];
          v189 = v41 + 1;
          v190 = v14;
          v186 = v180;
          do
          {
            v191 = vcvtq_f64_f32(v189[-1]);
            v192 = vmulq_f64(v188, v191);
            v193 = vmlaq_f64(vextq_s8(v192, v192, 8uLL), v191, v187);
            v194 = vcvtq_f64_f32(*v189);
            v195 = vmulq_f64(v188, v194);
            v196 = vmlaq_f64(vextq_s8(v195, v195, 8uLL), v194, v187);
            if (v186)
            {
              *v190 = vcvt_f32_f64(vaddq_f64(v193, vmulq_n_f64(vcvtq_f64_f32(*v186), v45)));
              v196 = vaddq_f64(v196, vmulq_n_f64(vcvtq_f64_f32(v186[v34]), v45));
            }

            else
            {
              *v190 = vcvt_f32_f64(v193);
            }

            v185 += 2;
            v190[1] = vcvt_f32_f64(v196);
            v186 += 2 * v34;
            v190 += 2;
            v189 += 2;
          }

          while (v185 <= (v44 - 2));
          v185 = v185;
        }

        else
        {
          v185 = 0;
          v186 = v180;
        }

        if (v185 < v27)
        {
          v197 = vdupq_lane_s64(*&v183, 0);
          do
          {
            v198 = vcvtq_f64_f32(v41[v185]);
            v184.f64[1] = -v184.f64[0];
            v199 = vmulq_f64(v184, v198);
            v200 = vmlaq_f64(vextq_s8(v199, v199, 8uLL), v198, v197);
            if (v186)
            {
              v200 = vaddq_f64(v200, vmulq_n_f64(vcvtq_f64_f32(*v186), v45));
            }

            v14[v185++] = vcvt_f32_f64(v200);
            v186 += v34;
          }

          while (v27 != v185);
        }

        v180 += v219;
        v14 += v216;
      }
    }

    goto LABEL_165;
  }

  v28 = 0;
  LODWORD(v26) = v38;
  v29 = v35;
LABEL_60:
  v92 = v213;
  v91 = v203;
  if ((a11 & 2) != 0)
  {
    if (v210 >= 1)
    {
      v47 = 0;
      if (v28)
      {
        v48 = v26 < 1;
      }

      else
      {
        v48 = 1;
      }

      v49 = v48;
      v50 = 8 * v29;
      v51 = 8 * v31;
      do
      {
        if (v28)
        {
          v52 = v28;
        }

        else
        {
          v52 = v91;
        }

        if ((v49 & 1) == 0)
        {
          v53 = 0;
          v54 = v91;
          do
          {
            *&v28[v53] = *v54;
            v53 += 8;
            v54 = (v54 + v50);
          }

          while (8 * v26 != v53);
          v52 = v28;
        }

        if (v27 >= 1)
        {
          v55 = 0;
          v56 = (v52 + 16);
          v57 = v52 + 4;
          v58 = v208;
          v59 = &v208[2];
          v60 = v92;
          do
          {
            if (v26 >= 4)
            {
              v66 = 0;
              v62 = 0uLL;
              v67 = v56;
              v68 = v59;
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = 0uLL;
              do
              {
                v69.f64[0] = *(v67 - 3);
                v70 = vcvtq_f64_f32(*(v68 - 2));
                v71.f64[0] = *(v67 - 1);
                v72.f64[0] = v67[1];
                v69.f64[1] = -v69.f64[0];
                v73.f64[0] = v67[3];
                v74 = vmulq_f64(v69, v70);
                v75 = vcvtq_f64_f32(*(v68 - 1));
                v71.f64[1] = -v71.f64[0];
                v76 = vmulq_f64(v71, v75);
                v77 = vmlaq_n_f64(vextq_s8(v74, v74, 8uLL), v70, *(v67 - 4));
                v78 = vmlaq_n_f64(vextq_s8(v76, v76, 8uLL), v75, *(v67 - 2));
                v70.f64[0] = *v68;
                v75.f64[0] = v68[1];
                v68 += 4;
                v79 = vcvtq_f64_f32(*&v70.f64[0]);
                v65 = vaddq_f64(v65, v77);
                v72.f64[1] = -v72.f64[0];
                v80 = vmulq_f64(v72, v79);
                v81 = vmlaq_n_f64(vextq_s8(v80, v80, 8uLL), v79, *v67);
                v64 = vaddq_f64(v64, v78);
                v82 = vcvtq_f64_f32(*&v75.f64[0]);
                v73.f64[1] = -v73.f64[0];
                v83 = vmulq_f64(v73, v82);
                v63 = vaddq_f64(v63, v81);
                v62 = vaddq_f64(v62, vmlaq_n_f64(vextq_s8(v83, v83, 8uLL), v82, v67[2]));
                v66 += 4;
                v67 += 8;
              }

              while (v66 <= v26 - 4);
              v61 = ((v26 - 4) & 0xFFFFFFFC) + 4;
            }

            else
            {
              v61 = 0;
              v62 = 0uLL;
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = 0uLL;
            }

            if (v61 < v26)
            {
              v84 = &v58[v61];
              v85 = &v57[8 * v61];
              do
              {
                v86 = *v84++;
                v87.f64[0] = *v85;
                v88 = vcvtq_f64_f32(v86);
                v87.f64[1] = -v87.f64[0];
                v89 = vmulq_f64(v87, v88);
                v65 = vaddq_f64(v65, vmlaq_n_f64(vextq_s8(v89, v89, 8uLL), v88, *(v85 - 1)));
                ++v61;
                v85 += 2;
              }

              while (v26 > v61);
            }

            v90 = vmulq_n_f64(vaddq_f64(v62, vaddq_f64(v63, vaddq_f64(v64, v65))), v37);
            if (v60)
            {
              v90 = vaddq_f64(v90, vmulq_n_f64(vcvtq_f64_f32(*v60), v209));
            }

            v14[v55++] = vcvt_f32_f64(v90);
            v60 += v34;
            v59 = (v59 + v51);
            v58 = (v58 + v51);
          }

          while (v55 != v27);
        }

        ++v47;
        v91 += v36;
        v92 += v219;
        v14 += v216;
      }

      while (v47 != v210);
    }
  }

  else if ((8 * v27) > 0x640)
  {
    v214 = v29;
    bzero(v221, 0x1090uLL);
    if (v27 >= 0x109)
    {
      operator new[]();
    }

    v139 = v210;
    v140 = v209;
    v141 = v211;
    v142 = v203;
    v143 = v27;
    if (v210 >= 1)
    {
      v144 = 0;
      v207 = 8 * v36;
      v202 = 8 * v214;
      v145 = 8 * (v20 >> 3);
      if (v28)
      {
        v146 = v26 < 1;
      }

      else
      {
        v146 = 1;
      }

      v217 = 8 * v216;
      v147 = v146;
      v205 = v147;
      v204 = v219;
      v148 = 8 * v34;
      do
      {
        v215 = v92;
        if (v28)
        {
          v149 = v28;
        }

        else
        {
          v149 = v142;
        }

        if ((v205 & 1) == 0)
        {
          v150 = 0;
          v151 = v142;
          do
          {
            *&v28[v150] = *v151;
            v150 += 8;
            v151 = (v151 + v202);
          }

          while (8 * v26 != v150);
          v149 = v28;
        }

        if (v143 >= 1)
        {
          v220 = v144;
          bzero(v221, 16 * v27);
          v148 = 8 * v34;
          v144 = v220;
          v143 = v27;
          v139 = v210;
          v141 = v211;
          v140 = v209;
        }

        if (v26 >= 1)
        {
          v152 = 0;
          v153 = v208;
          v154 = &v208[2];
          do
          {
            v155 = vcvtq_f64_f32(*&v149[8 * v152]);
            if (v27 >= 4)
            {
              v157 = 0;
              v158 = &v222;
              v159 = v154;
              do
              {
                v160.f64[0] = *(v159 - 3);
                v161.f64[0] = *(v159 - 1);
                v160.f64[1] = -v160.f64[0];
                v162 = vmulq_f64(v160, v155);
                v161.f64[1] = -v161.f64[0];
                v163 = vmulq_f64(v161, v155);
                v164.f64[0] = v159[1];
                v165.f64[0] = v159[3];
                v164.f64[1] = -v164.f64[0];
                v166 = vmulq_f64(v164, v155);
                v167 = vaddq_f64(v158[-1], vmlaq_n_f64(vextq_s8(v163, v163, 8uLL), v155, *(v159 - 2)));
                v165.f64[1] = -v165.f64[0];
                v168 = vaddq_f64(*v158, vmlaq_n_f64(vextq_s8(v166, v166, 8uLL), v155, *v159));
                v169 = vmulq_f64(v165, v155);
                v170 = vaddq_f64(v158[1], vmlaq_n_f64(vextq_s8(v169, v169, 8uLL), v155, v159[2]));
                v158[-2] = vaddq_f64(v158[-2], vmlaq_n_f64(vextq_s8(v162, v162, 8uLL), v155, *(v159 - 4)));
                v158[-1] = v167;
                *v158 = v168;
                v158[1] = v170;
                v158 += 4;
                v157 += 4;
                v159 += 8;
              }

              while (v157 <= v27 - 4);
              v156 = v157;
            }

            else
            {
              v156 = 0;
            }

            if (v156 < v143)
            {
              v171 = v27 - v156;
              v172 = v156;
              v173 = &v221[2 * v156];
              do
              {
                v174.f64[0] = v153[v172].f32[1];
                v174.f64[1] = -v174.f64[0];
                v175 = vmulq_f64(v174, v155);
                *v173 = vaddq_f64(*v173, vmlaq_n_f64(vextq_s8(v175, v175, 8uLL), v155, v153[v172].f32[0]));
                ++v173;
                ++v172;
                --v171;
              }

              while (v171);
            }

            ++v152;
            v154 = (v154 + v145);
            v153 = (v153 + v145);
          }

          while (v152 != v26);
        }

        if (v215)
        {
          if (v143 >= 1)
          {
            v176 = 0;
            v177 = v215;
            do
            {
              v14[v176] = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(*&v221[2 * v176], v141), vmulq_n_f64(vcvtq_f64_f32(*v177), v140)));
              ++v176;
              v177 = (v177 + v148);
            }

            while (v27 != v176);
          }
        }

        else if (v27 >= 1)
        {
          for (k = 0; k != v27; ++k)
          {
            v14[k] = vcvt_f32_f64(vmulq_n_f64(*&v221[2 * k], v141));
          }
        }

        ++v144;
        v142 = (v142 + v207);
        v92 = &v215[v204];
        v14 = (v14 + v217);
      }

      while (v144 != v139);
    }
  }

  else if (v210 >= 1)
  {
    v93 = 0;
    if (v28)
    {
      v94 = v26 < 1;
    }

    else
    {
      v94 = 1;
    }

    v95 = v94;
    v96 = 8 * v36;
    v97 = 8 * v29;
    v98 = 8 * v31;
    do
    {
      if (v28)
      {
        v99 = v28;
      }

      else
      {
        v99 = v91;
      }

      if ((v95 & 1) == 0)
      {
        v100 = 0;
        v101 = v91;
        do
        {
          *&v28[v100] = *v101;
          v100 += 8;
          v101 = (v101 + v97);
        }

        while (8 * v26 != v100);
        v99 = v28;
      }

      if (v27 >= 4)
      {
        v102 = 0;
        v104 = v208;
        v103 = v92;
        do
        {
          v105 = 0uLL;
          if (v26 < 1)
          {
            v109 = 0uLL;
            v110 = 0uLL;
            v111 = 0uLL;
          }

          else
          {
            v106 = (v99 + 4);
            v107 = v104;
            v108 = v26;
            v109 = 0uLL;
            v110 = 0uLL;
            v111 = 0uLL;
            do
            {
              v112.f64[0] = *v106;
              v113 = *v107[1].f32;
              v114 = vcvt_hight_f64_f32(v113);
              v115.i64[1] = *&v114.f64[1];
              *v115.i64 = v112.f64[0];
              v112.f64[1] = -v112.f64[0];
              v116 = *(v106 - 1);
              v117 = vcvtq_f64_f32(*v107);
              v118 = vmulq_f64(v112, v117);
              v119 = vcvtq_f64_f32(*v113.f32);
              v120 = vmlaq_n_f64(vextq_s8(v118, v118, 8uLL), v117, v116);
              v121 = vmulq_f64(vextq_s8(v115, v115, 8uLL), vextq_s8(v112, v114, 8uLL));
              v122 = vmulq_f64(v119, v112);
              v111 = vaddq_f64(v111, v120);
              v110 = vaddq_f64(v110, vmlaq_n_f64(v121, v114, v116));
              v123 = vcvtq_f64_f32(v107[3]);
              v124 = vmulq_f64(v112, v123);
              v109 = vaddq_f64(v109, vmlaq_n_f64(vextq_s8(v122, v122, 8uLL), v119, v116));
              v105 = vaddq_f64(v105, vmlaq_n_f64(vextq_s8(v124, v124, 8uLL), v123, v116));
              v107 = (v107 + v98);
              v106 += 2;
              --v108;
            }

            while (v108);
          }

          v125 = vmulq_n_f64(v111, v37);
          v126 = &v14[v102];
          v127 = vmulq_n_f64(v110, v37);
          if (v103)
          {
            *v126 = vcvt_f32_f64(vaddq_f64(v125, vmulq_n_f64(vcvtq_f64_f32(*v103), v209)));
            v126[1] = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v109, v37), vmulq_n_f64(vcvtq_f64_f32(v103[v34]), v209)));
            v126[2] = vcvt_f32_f64(vaddq_f64(v127, vmulq_n_f64(vcvtq_f64_f32(v103[2 * v34]), v209)));
            v128 = vaddq_f64(vmulq_n_f64(v105, v37), vmulq_n_f64(vcvtq_f64_f32(v103[3 * v34]), v209));
          }

          else
          {
            *v126 = vcvt_f32_f64(v125);
            *v126[1].f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v109, v37)), v127);
            v128 = vmulq_n_f64(v105, v37);
          }

          v126[3] = vcvt_f32_f64(v128);
          v102 += 4;
          v103 += 4 * v34;
          v104 += 4;
        }

        while (v102 <= v27 - 4);
        v102 = v102;
      }

      else
      {
        v102 = 0;
        v103 = v92;
      }

      if (v102 < v27)
      {
        v129 = (v99 + 4);
        v130 = &v208[v102];
        do
        {
          v131 = 0uLL;
          if (v26 >= 1)
          {
            v132 = v130;
            v133 = v129;
            v134 = v26;
            do
            {
              v135.f64[0] = *v133;
              v136 = vcvtq_f64_f32(*v132);
              v135.f64[1] = -v135.f64[0];
              v137 = vmulq_f64(v135, v136);
              v131 = vaddq_f64(v131, vmlaq_n_f64(vextq_s8(v137, v137, 8uLL), v136, *(v133 - 1)));
              v133 += 2;
              v132 = (v132 + v98);
              --v134;
            }

            while (v134);
          }

          v138 = vmulq_n_f64(v131, v37);
          if (v103)
          {
            v138 = vaddq_f64(v138, vmulq_n_f64(vcvtq_f64_f32(*v103), v209));
          }

          v14[v102++] = vcvt_f32_f64(v138);
          v103 += v34;
          ++v130;
        }

        while (v102 != v212);
      }

      ++v93;
      v91 = (v91 + v96);
      v92 += v219;
      v14 += v216;
    }

    while (v93 != v210);
  }

LABEL_165:
  result = v223;
  if (v223 != v225)
  {
    if (v223)
    {
      return MEMORY[0x2318CB180]();
    }
  }

  return result;
}

void sub_22D24D404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = STACK[0x1168];
  if (STACK[0x1168] != a13)
  {
    if (v14)
    {
      MEMORY[0x2318CB180](v14, 0x1000C8000313F17);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *cv::GEMMBlockMul_32fc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = v10;
  v13 = v12;
  v108 = v15;
  v109 = v14;
  v17 = v16;
  v18 = v9;
  v21 = *v19;
  v20 = v19[1];
  v23 = v22[1];
  v24 = *v22;
  bzero(v110, 0x1050uLL);
  v25 = v17 >> 3;
  if (a9)
  {
    if (v20 >= 0x209)
    {
      operator new[]();
    }

    v27 = 1;
    v26 = v110;
  }

  else
  {
    v26 = 0;
    v20 = v21;
    v27 = v25;
    v25 = 1;
  }

  v28 = v24;
  v29 = v108 >> 3;
  v30 = v11 >> 4;
  if ((a9 & 2) != 0)
  {
    if (v23 >= 1)
    {
      v72 = 0;
      v73 = 8 * v27;
      if (v26)
      {
        v74 = v20 < 1;
      }

      else
      {
        v74 = 1;
      }

      v75 = v74;
      v76 = 8 * v29;
      do
      {
        if (v26)
        {
          v77 = v26;
        }

        else
        {
          v77 = v18;
        }

        if ((v75 & 1) == 0)
        {
          v78 = 0;
          v79 = v18;
          do
          {
            *&v26[v78] = *v79;
            v78 += 8;
            v79 += v25;
          }

          while (8 * v20 != v78);
          v77 = v26;
        }

        if (v28 >= 1)
        {
          v80 = 0;
          v81 = (v77 + 8);
          v82 = v77 + 4;
          v83 = v109;
          v84 = v109 + 1;
          do
          {
            v85 = 0uLL;
            v86 = 0uLL;
            if ((a9 & 0x10) != 0)
            {
              v86 = *(v13 + 16 * v80);
            }

            if (v20 >= 2)
            {
              v88 = 0;
              v89 = v81;
              v90 = v84;
              do
              {
                v91 = *(v89 - 2);
                v92.f64[0] = *(v89 - 1);
                v93 = *v89;
                v94 = v89[1];
                v89 += 4;
                v95.f64[0] = v94;
                v92.f64[1] = -v92.f64[0];
                v96 = vcvtq_f64_f32(v90[-1]);
                v97 = vmulq_f64(v92, v96);
                v98 = vmlaq_n_f64(vextq_s8(v97, v97, 8uLL), v96, v91);
                v99 = vcvtq_f64_f32(*v90);
                v95.f64[1] = -v95.f64[0];
                v100 = vmulq_f64(v95, v99);
                v86 = vaddq_f64(v86, v98);
                v85 = vaddq_f64(v85, vmlaq_n_f64(vextq_s8(v100, v100, 8uLL), v99, v93));
                v88 += 2;
                v90 += 2;
              }

              while (v88 <= v20 - 2);
              v87 = ((v20 - 2) & 0xFFFFFFFE) + 2;
            }

            else
            {
              v87 = 0;
            }

            if (v87 < v20)
            {
              v101 = &v83[v87];
              v102 = &v82[8 * v87];
              do
              {
                v103.f64[0] = *v102;
                v104 = *v101++;
                v105 = vcvtq_f64_f32(v104);
                v103.f64[1] = -v103.f64[0];
                v106 = vmulq_f64(v103, v105);
                v86 = vaddq_f64(v86, vmlaq_n_f64(vextq_s8(v106, v106, 8uLL), v105, *(v102 - 1)));
                ++v87;
                v102 += 2;
              }

              while (v20 > v87);
            }

            *(v13 + 16 * v80++) = vaddq_f64(v85, v86);
            v84 = (v84 + v76);
            v83 = (v83 + v76);
          }

          while (v80 != v28);
        }

        ++v72;
        v18 = (v18 + v73);
        v13 += 16 * v30;
      }

      while (v72 != v23);
    }
  }

  else if (v23 >= 1)
  {
    v31 = 0;
    v32 = 8 * v27;
    if (v26)
    {
      v33 = v20 < 1;
    }

    else
    {
      v33 = 1;
    }

    v34 = v33;
    v35 = 8 * v25;
    v36 = 8 * v29;
    do
    {
      if (v26)
      {
        v37 = v26;
      }

      else
      {
        v37 = v18;
      }

      if ((v34 & 1) == 0)
      {
        v38 = 0;
        v39 = v18;
        do
        {
          *&v26[v38] = *v39;
          v38 += 8;
          v39 = (v39 + v35);
        }

        while (8 * v20 != v38);
        v37 = v26;
      }

      if (v24 >= 4)
      {
        v40 = 0;
        v41 = v109 + 2;
        do
        {
          v42 = 0uLL;
          v43 = (v13 + 16 * v40);
          v44 = 0uLL;
          v45 = 0uLL;
          v46 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v42 = *v43;
            v44 = v43[1];
            v45 = v43[2];
            v46 = v43[3];
          }

          if (v20 >= 1)
          {
            v47 = (v37 + 4);
            v48 = v41;
            v49 = v20;
            do
            {
              v50.f64[0] = *v47;
              v51 = *(v47 - 1);
              v50.f64[1] = -v50.f64[0];
              v52 = vcvtq_f64_f32(v48[-2]);
              v53 = vmulq_f64(v50, v52);
              v54 = vmlaq_n_f64(vextq_s8(v53, v53, 8uLL), v52, v51);
              v55 = vcvtq_f64_f32(v48[-1]);
              v56 = vmulq_f64(v50, v55);
              v42 = vaddq_f64(v42, v54);
              v57 = vmlaq_n_f64(vextq_s8(v56, v56, 8uLL), v55, v51);
              v58 = vcvtq_f64_f32(*v48);
              v44 = vaddq_f64(v44, v57);
              v59 = vmulq_f64(v50, v58);
              v60 = vmlaq_n_f64(vextq_s8(v59, v59, 8uLL), v58, v51);
              v61 = vcvtq_f64_f32(v48[1]);
              v62 = vmulq_f64(v50, v61);
              v45 = vaddq_f64(v45, v60);
              v46 = vaddq_f64(v46, vmlaq_n_f64(vextq_s8(v62, v62, 8uLL), v61, v51));
              v48 = (v48 + v36);
              v47 += 2;
              --v49;
            }

            while (v49);
          }

          *v43 = v42;
          v43[1] = v44;
          v43[2] = v45;
          v43[3] = v46;
          v40 += 4;
          v41 += 4;
        }

        while (v40 <= v24 - 4);
        v40 = v40;
      }

      else
      {
        v40 = 0;
      }

      if (v40 < v24)
      {
        v63 = (v37 + 4);
        v64 = &v109[v40];
        do
        {
          v65 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v65 = *(v13 + 16 * v40);
          }

          if (v20 >= 1)
          {
            v66 = v64;
            v67 = v63;
            v68 = v20;
            do
            {
              v69.f64[0] = *v67;
              v70 = vcvtq_f64_f32(*v66);
              v69.f64[1] = -v69.f64[0];
              v71 = vmulq_f64(v69, v70);
              v65 = vaddq_f64(v65, vmlaq_n_f64(vextq_s8(v71, v71, 8uLL), v70, *(v67 - 1)));
              v67 += 2;
              v66 = (v66 + v36);
              --v68;
            }

            while (v68);
          }

          *(v13 + 16 * v40++) = v65;
          ++v64;
        }

        while (v40 != v24);
      }

      ++v31;
      v18 = (v18 + v32);
      v13 += 16 * v30;
    }

    while (v31 != v23);
  }

  return v110;
}

void sub_22D24D940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != a9)
  {
    if (a12)
    {
      MEMORY[0x2318CB180]();
    }
  }

  _Unwind_Resume(exception_object);
}

float32x2_t *cv::GEMMStore_32fc(float32x2_t *result, unint64_t a2, float64x2_t *a3, unint64_t a4, float32x4_t *a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  v11 = a2 >> 3;
  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 3;
  }

  else
  {
    v12 = 1;
  }

  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!result)
  {
    v11 = 0;
  }

  if (v10)
  {
    v14 = *a7;
    v15 = 4 * v13;
    v16 = (v14 - 4);
    v17 = a5 + 1;
    v18 = 8 * (a6 >> 3);
    v19 = a3 + 2;
    v20 = 16 * (a4 >> 4);
    v21 = v13;
    do
    {
      if (result)
      {
        v22 = 0;
        if (v14 < 4)
        {
          v23 = result;
        }

        else
        {
          v24 = v19;
          v25 = v17;
          v26 = result;
          do
          {
            v27 = v26;
            v28 = *v26;
            v29 = &v26[v21];
            v25[-1] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v24[-2], a9), vmulq_n_f64(vcvtq_f64_f32(v28), a10))), vaddq_f64(vmulq_n_f64(v24[-1], a9), vmulq_n_f64(vcvtq_f64_f32(*v29), a10)));
            v30 = &v29[v21];
            v31 = *v30;
            v32 = &v30[v21];
            v34 = *v24;
            v33 = v24[1];
            v24 += 4;
            v22 += 4;
            *v25 = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vmulq_n_f64(v34, a9), vmulq_n_f64(vcvtq_f64_f32(v31), a10))), vaddq_f64(vmulq_n_f64(v33, a9), vmulq_n_f64(vcvtq_f64_f32(*v32), a10)));
            v25 += 2;
            v26 = &v32[v21];
          }

          while (v22 <= v16);
          v23 = &v27[v15];
          v22 = v22;
        }

        if (v22 < v14)
        {
          do
          {
            *&a5->f32[2 * v22] = vcvt_f32_f64(vaddq_f64(vmulq_n_f64(a3[v22], a9), vmulq_n_f64(vcvtq_f64_f32(*v23), a10)));
            ++v22;
            v23 = (v23 + v21 * 8);
          }

          while (v14 != v22);
        }
      }

      else
      {
        if (v14 < 4)
        {
          i = 0;
        }

        else
        {
          v35 = 0;
          v36 = 0;
          for (i = 0; i <= v16; i += 4)
          {
            a5[v36] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(a3[v35], a9)), vmulq_n_f64(a3[v35 + 1], a9));
            v17[v36] = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v19[v35], a9)), vmulq_n_f64(v19[v35 + 1], a9));
            v36 += 2;
            v35 += 4;
          }

          i = i;
        }

        if (i < v14)
        {
          do
          {
            *&a5->f32[2 * i] = vcvt_f32_f64(vmulq_n_f64(a3[i], a9));
            ++i;
          }

          while (v14 != i);
        }
      }

      result += v11;
      v17 = (v17 + v18);
      v19 = (v19 + v20);
      a5 = (a5 + v18);
      a3 = (a3 + v20);
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t cv::GEMMSingleMul_64fc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, unsigned int *a10, char a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2);
  v207 = v12;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v198 = v21;
  v199 = v23;
  v200 = v22;
  v25 = v24;
  v202 = v11;
  v26 = a9[1];
  v196 = *a9;
  v27 = *a10;
  v206 = a10[1];
  v201 = *a10;
  v28 = v214;
  bzero(v214, 0x1090uLL);
  v29 = v18;
  v212 = v214;
  v213 = 264;
  v30 = v25 >> 4;
  v31 = v20 >> 4;
  v32 = v16 >> 4;
  v204 = v207 >> 4;
  if ((a11 & 4) != 0)
  {
    v33 = v16 >> 4;
  }

  else
  {
    v33 = 1;
  }

  if ((a11 & 4) != 0)
  {
    v32 = 1;
  }

  if (v18)
  {
    v34 = v33;
  }

  else
  {
    v34 = 0;
  }

  if (!v18)
  {
    v32 = 0;
  }

  v208 = v32;
  if (a11)
  {
    v36 = 1;
    if (v25 < 0x20)
    {
      v35 = v25 >> 4;
      v38 = v26;
      v37 = v200;
    }

    else
    {
      v37 = v200;
      if (v26 >= 2)
      {
        if (v26 >= 0x109)
        {
          v213 = v26;
          operator new[]();
        }

        v36 = 1;
        goto LABEL_60;
      }

      v35 = v25 >> 4;
      v38 = v26;
    }
  }

  else
  {
    v35 = 1;
    v36 = v25 >> 4;
    v37 = v200;
    v38 = v196;
  }

  if (v38 == 1)
  {
    bzero(v210, 0x1090uLL);
    if (v25 < 0x20)
    {
      v44 = v18;
      v45 = v199;
      v39 = v200;
      v40 = v198;
      v41 = v27;
      v42 = v202;
      v43 = v206;
    }

    else
    {
      v49 = v26 < 2;
      v39 = v200;
      v40 = v198;
      v41 = v27;
      v42 = v202;
      v43 = v206;
      if (v49)
      {
        v44 = v18;
        v45 = v199;
      }

      else
      {
        if (v206 >= 0x109)
        {
          v213 = v206;
          operator new[]();
        }

        v44 = v18;
        v45 = v199;
        if (v206 >= 1)
        {
          v46 = 0;
          do
          {
            *&v214[v46] = *v42;
            v46 += 16;
            v42 += v30;
          }

          while (16 * v206 != v46);
        }

        v42 = v214;
      }
    }

    if (v20 >= 0x20)
    {
      if (v41 > 0x108)
      {
        operator new[]();
      }

      if (v41 >= 1)
      {
        v169 = v210;
        v170 = v41;
        do
        {
          *v169++ = *v40;
          v40 += v20 >> 4;
          --v170;
        }

        while (v170);
      }

      v40 = v210;
    }

    if (v43 >= 1)
    {
      for (i = 0; i != v43; ++i)
      {
        v172 = &v42[i];
        v173 = *v172 * v39;
        v174.f64[0] = v172[1] * v39;
        if (v41 >= 2)
        {
          v175 = 0;
          v177 = vdupq_lane_s64(*&v173, 0);
          v178.f64[0] = v172[1] * v39;
          v178.f64[1] = -v174.f64[0];
          v179 = (v40 + 1);
          v180 = v14;
          v176 = v44;
          do
          {
            v181 = v179[-1];
            v182 = vmulq_f64(v181, v178);
            v183 = vmlaq_f64(vextq_s8(v182, v182, 8uLL), v181, v177);
            v184 = vmulq_f64(*v179, v178);
            v185 = vmlaq_f64(vextq_s8(v184, v184, 8uLL), *v179, v177);
            if (v176)
            {
              *v180 = vaddq_f64(v183, vmulq_n_f64(*v176, v45));
              v185 = vaddq_f64(v185, vmulq_n_f64(v176[v34], v45));
            }

            else
            {
              *v180 = v183;
            }

            v175 += 2;
            v180[1] = v185;
            v176 += 2 * v34;
            v180 += 2;
            v179 += 2;
          }

          while (v175 <= (v41 - 2));
          v175 = v175;
        }

        else
        {
          v175 = 0;
          v176 = v44;
        }

        if (v175 < v27)
        {
          v186 = vdupq_lane_s64(*&v173, 0);
          do
          {
            v187 = v40[v175];
            v174.f64[1] = -v174.f64[0];
            v188 = vmulq_f64(v187, v174);
            v189 = vmlaq_f64(vextq_s8(v188, v188, 8uLL), v187, v186);
            if (v176)
            {
              v189 = vaddq_f64(v189, vmulq_n_f64(*v176, v45));
            }

            v14[v175++] = v189;
            v176 += v34;
          }

          while (v27 != v175);
        }

        v44 += v208;
        v14 += v204;
      }
    }

    goto LABEL_165;
  }

  v28 = 0;
  LODWORD(v26) = v38;
  v30 = v35;
LABEL_60:
  if ((a11 & 2) != 0)
  {
    v47 = v202;
    if (v206 >= 1)
    {
      v48 = 0;
      if (v28)
      {
        v49 = v26 < 1;
      }

      else
      {
        v49 = 1;
      }

      v50 = v49;
      v51 = 16 * v31;
      do
      {
        if (v28)
        {
          v52 = v28;
        }

        else
        {
          v52 = v47;
        }

        if ((v50 & 1) == 0)
        {
          v53 = 0;
          v54 = v47;
          do
          {
            *&v28[v53] = *v54;
            v53 += 16;
            v54 += v30;
          }

          while (16 * v26 != v53);
          v52 = v28;
        }

        if (v27 >= 1)
        {
          v55 = 0;
          v56 = (v52 + 32);
          v57 = v52 + 8;
          v58 = v198;
          v59 = (v198 + 2);
          v60 = v29;
          do
          {
            if (v26 >= 4)
            {
              v66 = 0;
              v62 = 0uLL;
              v67 = v56;
              v68 = v59;
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = 0uLL;
              do
              {
                v69.f64[0] = *(v67 - 3);
                v70.f64[0] = *(v67 - 1);
                v71.f64[0] = v67[1];
                v72.f64[0] = v67[3];
                v69.f64[1] = -v69.f64[0];
                v73 = v68[-2];
                v74 = v68[-1];
                v75 = vmulq_f64(v73, v69);
                v70.f64[1] = -v70.f64[0];
                v76 = vmulq_f64(v74, v70);
                v71.f64[1] = -v71.f64[0];
                v65 = vaddq_f64(v65, vmlaq_n_f64(vextq_s8(v75, v75, 8uLL), v73, *(v67 - 4)));
                v77 = *v68;
                v78 = v68[1];
                v68 += 4;
                v79 = vmulq_f64(v77, v71);
                v64 = vaddq_f64(v64, vmlaq_n_f64(vextq_s8(v76, v76, 8uLL), v74, *(v67 - 2)));
                v72.f64[1] = -v72.f64[0];
                v80 = vmulq_f64(v78, v72);
                v63 = vaddq_f64(v63, vmlaq_n_f64(vextq_s8(v79, v79, 8uLL), v77, *v67));
                v62 = vaddq_f64(v62, vmlaq_n_f64(vextq_s8(v80, v80, 8uLL), v78, v67[2]));
                v66 += 4;
                v67 += 8;
              }

              while (v66 <= v26 - 4);
              v61 = ((v26 - 4) & 0xFFFFFFFC) + 4;
            }

            else
            {
              v61 = 0;
              v62 = 0uLL;
              v63 = 0uLL;
              v64 = 0uLL;
              v65 = 0uLL;
            }

            if (v61 < v26)
            {
              v81 = &v58[v61];
              v82 = &v57[16 * v61];
              do
              {
                v83.f64[0] = *v82;
                v84 = *v81++;
                v83.f64[1] = -*v82;
                v85 = vmulq_f64(v84, v83);
                v65 = vaddq_f64(v65, vmlaq_n_f64(vextq_s8(v85, v85, 8uLL), v84, *(v82 - 1)));
                ++v61;
                v82 += 2;
              }

              while (v26 > v61);
            }

            v86 = vmulq_n_f64(vaddq_f64(v62, vaddq_f64(v63, vaddq_f64(v64, v65))), v37);
            if (v60)
            {
              v86 = vaddq_f64(v86, vmulq_n_f64(*v60, v199));
            }

            v14[v55++] = v86;
            v60 += v34;
            v59 = (v59 + v51);
            v58 = (v58 + v51);
          }

          while (v55 != v27);
        }

        ++v48;
        v47 += v36;
        v29 += v208;
        v14 += v204;
      }

      while (v48 != v206);
    }
  }

  else if ((16 * v27) > 0x640)
  {
    v129 = v36;
    v194 = v31;
    bzero(v210, 0x1090uLL);
    if (v27 >= 0x109)
    {
      operator new[]();
    }

    v130 = v206;
    v131 = v199;
    v132 = v200;
    v134 = v27;
    v133 = v202;
    if (v206 >= 1)
    {
      v135 = v18;
      v136 = 0;
      v137 = 16 * v27;
      v191 = 16 * v30;
      v138 = 16 * v194;
      if (v28)
      {
        v139 = v26 < 1;
      }

      else
      {
        v139 = 1;
      }

      v195 = 16 * v204;
      v197 = v129;
      v140 = v139;
      v193 = v140;
      v192 = v208;
      v141 = 16 * v34;
      do
      {
        if (v28)
        {
          v142 = v28;
        }

        else
        {
          v142 = v133;
        }

        v209 = v135;
        v203 = v133;
        if ((v193 & 1) == 0)
        {
          v143 = 0;
          do
          {
            *&v28[v143] = *v133;
            v143 += 16;
            v133 = (v133 + v191);
          }

          while (16 * v26 != v143);
          v142 = v28;
        }

        if (v134 >= 1)
        {
          v205 = v136;
          bzero(v210, 16 * v27);
          v141 = 16 * v34;
          v136 = v205;
          v134 = v27;
          v130 = v206;
          v131 = v199;
          v132 = v200;
        }

        if (v26 >= 1)
        {
          v144 = 0;
          v145 = v198;
          v146 = (v198 + 2);
          do
          {
            v147 = *&v142[16 * v144];
            if (v27 >= 4)
            {
              v149 = 0;
              v150 = &v211;
              v151 = v146;
              do
              {
                v152.f64[0] = *(v151 - 3);
                v153.f64[0] = *(v151 - 1);
                v152.f64[1] = -v152.f64[0];
                v154 = vmulq_f64(v147, v152);
                v155 = vaddq_f64(v150[-2], vmlaq_n_f64(vextq_s8(v154, v154, 8uLL), v147, *(v151 - 4)));
                v153.f64[1] = -v153.f64[0];
                v156 = vmulq_f64(v147, v153);
                v157 = vaddq_f64(v150[-1], vmlaq_n_f64(vextq_s8(v156, v156, 8uLL), v147, *(v151 - 2)));
                v150[-2] = v155;
                v150[-1] = v157;
                v157.f64[0] = v151[1];
                v153.f64[0] = v151[3];
                v157.f64[1] = -v157.f64[0];
                v158 = vmulq_f64(v147, v157);
                v159 = vaddq_f64(*v150, vmlaq_n_f64(vextq_s8(v158, v158, 8uLL), v147, *v151));
                v153.f64[1] = -v153.f64[0];
                v160 = vmulq_f64(v147, v153);
                v161 = vaddq_f64(v150[1], vmlaq_n_f64(vextq_s8(v160, v160, 8uLL), v147, v151[2]));
                *v150 = v159;
                v150[1] = v161;
                v150 += 4;
                v149 += 4;
                v151 += 8;
              }

              while (v149 <= v27 - 4);
              v148 = v149;
            }

            else
            {
              v148 = 0;
            }

            if (v148 < v134)
            {
              v162 = v27 - v148;
              v163 = v148;
              do
              {
                v164.f64[0] = *(&v145[v163] + 1);
                v164.f64[1] = -v164.f64[0];
                v165 = vmulq_f64(v147, v164);
                *&v210[v163 * 16] = vaddq_f64(*&v210[v163 * 16], vmlaq_n_f64(vextq_s8(v165, v165, 8uLL), v147, *&v145[v163]));
                ++v163;
                --v162;
              }

              while (v162);
            }

            ++v144;
            v146 = (v146 + v138);
            v145 = (v145 + v138);
          }

          while (v144 != v26);
        }

        if (v209)
        {
          if (v134 >= 1)
          {
            v166 = 0;
            v167 = v209;
            do
            {
              v14[v166 / 0x10] = vaddq_f64(vmulq_n_f64(*&v210[v166], v132), vmulq_n_f64(*v167, v131));
              v166 += 16;
              v167 = (v167 + v141);
            }

            while (v137 != v166);
          }
        }

        else if (v27 >= 1)
        {
          v168 = 0;
          do
          {
            v14[v168 / 0x10] = vmulq_n_f64(*&v210[v168], v132);
            v168 += 16;
          }

          while (v137 != v168);
        }

        ++v136;
        v133 = &v203[v197];
        v135 = &v209[v192];
        v14 = (v14 + v195);
      }

      while (v136 != v130);
    }
  }

  else
  {
    v87 = v202;
    if (v206 >= 1)
    {
      v88 = 0;
      if (v28)
      {
        v89 = v26 < 1;
      }

      else
      {
        v89 = 1;
      }

      v90 = v89;
      v91 = 16 * v36;
      v92 = 16 * v30;
      v93 = 16 * v31;
      do
      {
        if (v28)
        {
          v94 = v28;
        }

        else
        {
          v94 = v87;
        }

        if ((v90 & 1) == 0)
        {
          v95 = 0;
          v96 = v87;
          do
          {
            *&v28[v95] = *v96;
            v95 += 16;
            v96 = (v96 + v92);
          }

          while (16 * v26 != v95);
          v94 = v28;
        }

        if (v27 >= 4)
        {
          v97 = 0;
          v99 = (v198 + 2);
          v98 = v29;
          do
          {
            v100 = 0uLL;
            if (v26 < 1)
            {
              v104 = 0uLL;
              v105 = 0uLL;
              v106 = 0uLL;
            }

            else
            {
              v101 = (v94 + 8);
              v102 = v99;
              v103 = v26;
              v104 = 0uLL;
              v105 = 0uLL;
              v106 = 0uLL;
              do
              {
                v107.f64[0] = *v101;
                v107.f64[1] = -*v101;
                v108 = *(v101 - 1);
                v109 = v102[-2];
                v110 = v102[-1];
                v111 = vmulq_f64(v109, v107);
                v104 = vaddq_f64(v104, vmlaq_n_f64(vextq_s8(v111, v111, 8uLL), v109, v108));
                v112 = vmulq_f64(v110, v107);
                v105 = vaddq_f64(v105, vmlaq_n_f64(vextq_s8(v112, v112, 8uLL), v110, v108));
                v113 = v102[1];
                v114 = vmulq_f64(*v102, v107);
                v106 = vaddq_f64(v106, vmlaq_n_f64(vextq_s8(v114, v114, 8uLL), *v102, v108));
                v115 = vmulq_f64(v113, v107);
                v100 = vaddq_f64(v100, vmlaq_n_f64(vextq_s8(v115, v115, 8uLL), v113, v108));
                v102 = (v102 + v93);
                v101 += 2;
                --v103;
              }

              while (v103);
            }

            v116 = vmulq_n_f64(v104, v37);
            v117 = &v14[v97];
            v118 = vmulq_n_f64(v105, v37);
            if (v98)
            {
              *v117 = vaddq_f64(v116, vmulq_n_f64(*v98, v199));
              v117[1] = vaddq_f64(v118, vmulq_n_f64(v98[v34], v199));
              v117[2] = vaddq_f64(vmulq_n_f64(v106, v37), vmulq_n_f64(v98[2 * v34], v199));
              v119 = vaddq_f64(vmulq_n_f64(v100, v37), vmulq_n_f64(v98[3 * v34], v199));
            }

            else
            {
              *v117 = v116;
              v117[1] = v118;
              v117[2] = vmulq_n_f64(v106, v37);
              v119 = vmulq_n_f64(v100, v37);
            }

            v117[3] = v119;
            v97 += 4;
            v98 += 4 * v34;
            v99 += 4;
          }

          while (v97 <= v27 - 4);
          v97 = v97;
        }

        else
        {
          v97 = 0;
          v98 = v29;
        }

        if (v97 < v27)
        {
          v120 = (v94 + 8);
          v121 = &v198[v97];
          do
          {
            v122 = 0uLL;
            if (v26 >= 1)
            {
              v123 = v121;
              v124 = v120;
              v125 = v26;
              do
              {
                v126.f64[0] = *v124;
                v126.f64[1] = -*v124;
                v127 = vmulq_f64(*v123, v126);
                v122 = vaddq_f64(v122, vmlaq_n_f64(vextq_s8(v127, v127, 8uLL), *v123, *(v124 - 1)));
                v124 += 2;
                v123 = (v123 + v93);
                --v125;
              }

              while (v125);
            }

            v128 = vmulq_n_f64(v122, v37);
            if (v98)
            {
              v128 = vaddq_f64(v128, vmulq_n_f64(*v98, v199));
            }

            v14[v97++] = v128;
            v98 += v34;
            ++v121;
          }

          while (v97 != v201);
        }

        ++v88;
        v87 = (v87 + v91);
        v29 += v208;
        v14 += v204;
      }

      while (v88 != v206);
    }
  }

LABEL_165:
  result = v212;
  if (v212 != v214)
  {
    if (v212)
    {
      return MEMORY[0x2318CB180]();
    }
  }

  return result;
}

void sub_22D24E828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = STACK[0x1148];
  if (STACK[0x1148] != a12)
  {
    if (v13)
    {
      MEMORY[0x2318CB180](v13, 0x1000C80451B5BE8);
    }
  }

  _Unwind_Resume(a1);
}

_BYTE *cv::GEMMBlockMul_64fc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = MEMORY[0x28223BE20](a1, a2);
  v99 = v10;
  v100 = v11;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v9;
  v21 = *v19;
  v20 = v19[1];
  v23 = v22[1];
  v24 = *v22;
  bzero(v101, 0x1090uLL);
  v25 = v17 >> 4;
  if (a9)
  {
    if (v20 >= 0x109)
    {
      operator new[]();
    }

    v27 = 1;
    v26 = v101;
  }

  else
  {
    v26 = 0;
    v20 = v21;
    v27 = v25;
    v25 = 1;
  }

  v28 = v24;
  v29 = v99 >> 4;
  v30 = v100 >> 4;
  if ((a9 & 2) != 0)
  {
    if (v23 >= 1)
    {
      v67 = 0;
      v68 = 16 * v27;
      if (v26)
      {
        v69 = v20 < 1;
      }

      else
      {
        v69 = 1;
      }

      v70 = v69;
      v71 = 16 * v29;
      do
      {
        if (v26)
        {
          v72 = v26;
        }

        else
        {
          v72 = v18;
        }

        if ((v70 & 1) == 0)
        {
          v73 = 0;
          v74 = v18;
          do
          {
            *&v26[v73] = *v74;
            v73 += 16;
            v74 += v25;
          }

          while (16 * v20 != v73);
          v72 = v26;
        }

        if (v28 >= 1)
        {
          v75 = 0;
          v76 = (v72 + 16);
          v77 = v72 + 8;
          v78 = v15;
          v79 = v15 + 1;
          do
          {
            v80 = 0uLL;
            v81 = 0uLL;
            if ((a9 & 0x10) != 0)
            {
              v81 = *(v13 + 16 * v75);
            }

            if (v20 >= 2)
            {
              v83 = 0;
              v84 = v76;
              v85 = v79;
              do
              {
                v86 = *(v84 - 2);
                v87.f64[0] = *(v84 - 1);
                v88 = *v84;
                v89.f64[0] = v84[1];
                v84 += 4;
                v87.f64[1] = -v87.f64[0];
                v90 = v85[-1];
                v91 = vmulq_f64(v90, v87);
                v81 = vaddq_f64(v81, vmlaq_n_f64(vextq_s8(v91, v91, 8uLL), v90, v86));
                v89.f64[1] = -v89.f64[0];
                v92 = vmulq_f64(*v85, v89);
                v80 = vaddq_f64(v80, vmlaq_n_f64(vextq_s8(v92, v92, 8uLL), *v85, v88));
                v83 += 2;
                v85 += 2;
              }

              while (v83 <= v20 - 2);
              v82 = ((v20 - 2) & 0xFFFFFFFE) + 2;
            }

            else
            {
              v82 = 0;
            }

            if (v82 < v20)
            {
              v93 = &v78[v82];
              v94 = &v77[16 * v82];
              do
              {
                v95.f64[0] = *v94;
                v96 = *v93++;
                v95.f64[1] = -*v94;
                v97 = vmulq_f64(v96, v95);
                v81 = vaddq_f64(v81, vmlaq_n_f64(vextq_s8(v97, v97, 8uLL), v96, *(v94 - 1)));
                ++v82;
                v94 += 2;
              }

              while (v20 > v82);
            }

            *(v13 + 16 * v75++) = vaddq_f64(v80, v81);
            v79 = (v79 + v71);
            v78 = (v78 + v71);
          }

          while (v75 != v28);
        }

        ++v67;
        v18 = (v18 + v68);
        v13 += 16 * v30;
      }

      while (v67 != v23);
    }
  }

  else if (v23 >= 1)
  {
    v31 = 0;
    v32 = 16 * v27;
    if (v26)
    {
      v33 = v20 < 1;
    }

    else
    {
      v33 = 1;
    }

    v34 = v33;
    v35 = 16 * v25;
    v36 = 16 * v29;
    do
    {
      if (v26)
      {
        v37 = v26;
      }

      else
      {
        v37 = v18;
      }

      if ((v34 & 1) == 0)
      {
        v38 = 0;
        v39 = v18;
        do
        {
          *&v26[v38] = *v39;
          v38 += 16;
          v39 = (v39 + v35);
        }

        while (16 * v20 != v38);
        v37 = v26;
      }

      if (v24 >= 4)
      {
        v40 = 0;
        v41 = v15 + 2;
        do
        {
          v42 = 0uLL;
          v43 = (v13 + 16 * v40);
          v44 = 0uLL;
          v45 = 0uLL;
          v46 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v42 = *v43;
            v44 = v43[1];
            v45 = v43[2];
            v46 = v43[3];
          }

          if (v20 >= 1)
          {
            v47 = (v37 + 8);
            v48 = v41;
            v49 = v20;
            do
            {
              v50.f64[0] = *v47;
              v50.f64[1] = -*v47;
              v51 = *(v47 - 1);
              v52 = v48[-2];
              v53 = v48[-1];
              v54 = vmulq_f64(v52, v50);
              v42 = vaddq_f64(v42, vmlaq_n_f64(vextq_s8(v54, v54, 8uLL), v52, v51));
              v55 = vmulq_f64(v53, v50);
              v44 = vaddq_f64(v44, vmlaq_n_f64(vextq_s8(v55, v55, 8uLL), v53, v51));
              v56 = v48[1];
              v57 = vmulq_f64(*v48, v50);
              v45 = vaddq_f64(v45, vmlaq_n_f64(vextq_s8(v57, v57, 8uLL), *v48, v51));
              v58 = vmulq_f64(v56, v50);
              v46 = vaddq_f64(v46, vmlaq_n_f64(vextq_s8(v58, v58, 8uLL), v56, v51));
              v48 = (v48 + v36);
              v47 += 2;
              --v49;
            }

            while (v49);
          }

          *v43 = v42;
          v43[1] = v44;
          v43[2] = v45;
          v43[3] = v46;
          v40 += 4;
          v41 += 4;
        }

        while (v40 <= v24 - 4);
        v40 = v40;
      }

      else
      {
        v40 = 0;
      }

      if (v40 < v24)
      {
        v59 = (v37 + 8);
        v60 = &v15[v40];
        do
        {
          v61 = 0uLL;
          if ((a9 & 0x10) != 0)
          {
            v61 = *(v13 + 16 * v40);
          }

          if (v20 >= 1)
          {
            v62 = v60;
            v63 = v59;
            v64 = v20;
            do
            {
              v65.f64[0] = *v63;
              v65.f64[1] = -*v63;
              v66 = vmulq_f64(*v62, v65);
              v61 = vaddq_f64(v61, vmlaq_n_f64(vextq_s8(v66, v66, 8uLL), *v62, *(v63 - 1)));
              v63 += 2;
              v62 = (v62 + v36);
              --v64;
            }

            while (v64);
          }

          *(v13 + 16 * v40++) = v61;
          ++v60;
        }

        while (v40 != v24);
      }

      ++v31;
      v18 = (v18 + v32);
      v13 += 16 * v30;
    }

    while (v31 != v23);
  }

  return v101;
}

void sub_22D24ED18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12 != a9)
  {
    if (a12)
    {
      MEMORY[0x2318CB180]();
    }
  }

  _Unwind_Resume(exception_object);
}

float64x2_t *cv::GEMMStore_64fc(float64x2_t *result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7, char a8, double a9, double a10)
{
  v10 = a7[1];
  v11 = a2 >> 4;
  if ((a8 & 4) != 0)
  {
    v12 = a2 >> 4;
  }

  else
  {
    v12 = 1;
  }

  if ((a8 & 4) != 0)
  {
    v11 = 1;
  }

  if (result)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!result)
  {
    v11 = 0;
  }

  if (v10)
  {
    v14 = *a7;
    v15 = v13 << 6;
    v16 = (v14 - 4);
    v17 = 16 * (a6 >> 4);
    v18 = 16 * (a4 >> 4);
    v19 = v13;
    do
    {
      if (result)
      {
        if (v14 < 4)
        {
          v22 = 0;
          v20 = result;
        }

        else
        {
          v21 = 0;
          v22 = 0;
          v23 = result;
          do
          {
            v24 = v23;
            v25 = (a5 + v21);
            v26 = vaddq_f64(vmulq_n_f64(*(a3 + v21 + 16), a9), vmulq_n_f64(v23[v19], a10));
            *v25 = vaddq_f64(vmulq_n_f64(*(a3 + v21), a9), vmulq_n_f64(*v23, a10));
            v25[1] = v26;
            v27 = &v23[v19 + v19];
            v28 = vaddq_f64(vmulq_n_f64(*(a3 + v21 + 32), a9), vmulq_n_f64(*v27, a10));
            v29 = &v27[v19];
            v30 = vaddq_f64(vmulq_n_f64(*(a3 + v21 + 48), a9), vmulq_n_f64(*v29, a10));
            v25[2] = v28;
            v25[3] = v30;
            v22 += 4;
            v21 += 64;
            v23 = &v29[v19];
          }

          while (v22 <= v16);
          v20 = (v24 + v15);
          v22 = v22;
        }

        if (v22 < v14)
        {
          do
          {
            *(a5 + 16 * v22) = vaddq_f64(vmulq_n_f64(*(a3 + 16 * v22), a9), vmulq_n_f64(*v20, a10));
            ++v22;
            v20 = (v20 + v19 * 16);
          }

          while (v14 != v22);
        }
      }

      else
      {
        if (v14 < 4)
        {
          i = 0;
        }

        else
        {
          v31 = 0;
          for (i = 0; i <= v16; i += 4)
          {
            v33 = (a5 + v31);
            v34 = vmulq_n_f64(*(a3 + v31 + 16), a9);
            *v33 = vmulq_n_f64(*(a3 + v31), a9);
            v33[1] = v34;
            v35 = vmulq_n_f64(*(a3 + v31 + 48), a9);
            v33[2] = vmulq_n_f64(*(a3 + v31 + 32), a9);
            v33[3] = v35;
            v31 += 64;
          }

          i = i;
        }

        if (i < v14)
        {
          do
          {
            *(a5 + 16 * i) = vmulq_n_f64(*(a3 + 16 * i), a9);
            ++i;
          }

          while (v14 != i);
        }
      }

      result += v11;
      a5 += v17;
      a3 += v18;
      --v10;
    }

    while (v10);
  }

  return result;
}

void cv::scaleAdd(cv *this, const cv::_InputArray *a2, double a3, const cv::_InputArray *a4, const cv::_OutputArray *a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v62 = a3;
  (**this)(&v51);
  (**a2)(v42, a2, 0xFFFFFFFFLL);
  v8 = v51;
  if (((LOWORD(v42[0]) ^ v51) & 0xFFF) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "src1.type() == src2.type()");
    std::string::basic_string[abi:ne200100]<0>(v63, "scaleAdd");
    std::string::basic_string[abi:ne200100]<0>(&v64, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
    cv::Exception::Exception(v33, 4294967081, __p, v63, &v64, 2079);
    cv::error(v33, v9);
  }

  v10 = v51 & 7;
  if (v10 > 4)
  {
    (*(*a4 + 144))(a4, HIDWORD(v51), v59, v51 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
    (**a4)(v33, a4, 0xFFFFFFFFLL);
    v11 = ((v8 >> 3) & 0x1FF) + 1;
    v12 = v62;
    v32 = v12;
    if (v10 == 5)
    {
      v13 = &v32;
    }

    else
    {
      v13 = &v62;
    }

    if (v10 == 5)
    {
      v14 = cv::scaleAdd_32f;
    }

    else
    {
      v14 = cv::scaleAdd_64f;
    }

    if ((v51 & 0x4000) != 0 && (v42[0] & 0x4000) != 0 && (v33[0] & 0x4000) != 0)
    {
      v17 = HIDWORD(v51);
      if (SHIDWORD(v51) >= 3)
      {
        v18 = 1;
        v19 = v59;
        do
        {
          v20 = *v19++;
          v18 *= v20;
          --v17;
        }

        while (v17);
      }

      else
      {
        v18 = v53 * v52;
      }

      v14(v54, v43, v34, (v18 * v11), v13);
    }

    else
    {
      v63[0] = &v51;
      v63[1] = v42;
      v63[2] = v33;
      v63[3] = 0;
      v64 = 0;
      v65 = 0;
      v66 = 0;
      cv::NAryMatIterator::NAryMatIterator(__p, v63, &v64, -1);
      v15 = (v11 * v31);
      v16 = -1;
      while (++v16 < __p[4])
      {
        v14(v64, v65, v66, v15, v13);
        cv::NAryMatIterator::operator++(__p);
      }
    }

    if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v33);
    }

    v34 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    if (SHIDWORD(v33[0]) >= 1)
    {
      v21 = 0;
      v22 = v39;
      do
      {
        *(v22 + 4 * v21++) = 0;
      }

      while (v21 < SHIDWORD(v33[0]));
    }

    v35 = 0;
    if (v40)
    {
      v23 = v40 == &v41;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      free(v40);
    }
  }

  else
  {
    cv::addWeighted(this, a2, v62, a4, 1.0, 0.0, (v51 & 7));
  }

  if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v42);
  }

  v43 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (SHIDWORD(v42[0]) >= 1)
  {
    v24 = 0;
    v25 = v48;
    do
    {
      *(v25 + 4 * v24++) = 0;
    }

    while (v24 < SHIDWORD(v42[0]));
  }

  v44 = 0;
  if (v49)
  {
    v26 = v49 == &v50;
  }

  else
  {
    v26 = 1;
  }

  if (!v26)
  {
    free(v49);
  }

  if (v55 && atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v51);
  }

  v54 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  if (SHIDWORD(v51) >= 1)
  {
    v27 = 0;
    v28 = v59;
    do
    {
      v28[v27++] = 0;
    }

    while (v27 < SHIDWORD(v51));
  }

  v55 = 0;
  if (v60)
  {
    v29 = v60 == &v61;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    free(v60);
  }
}

void sub_22D24F36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  cv::Mat::~Mat(&a22);
  cv::Mat::~Mat(&a37);
  cv::Mat::~Mat((v37 - 216));
  _Unwind_Resume(a1);
}

float32x2_t *cv::scaleAdd_32f(float32x2_t *this, const float *a2, float32x2_t *a3, float *a4, _DWORD *a5, float *a6, double a7)
{
  LODWORD(a7) = *a5;
  if (a4 >= 4)
  {
    v7 = 0;
    v8 = vdup_lane_s32(*&a7, 0);
    v9 = a3 + 1;
    v10 = a2 + 2;
    v11 = this + 1;
    do
    {
      v9[-1] = vmla_f32(*(v10 - 2), v8, v11[-1]);
      v12 = *v11;
      v11 += 2;
      v13 = v12;
      v14 = *v10;
      v10 += 4;
      v7 += 4;
      *v9 = vmla_f32(v14, v8, v13);
      v9 += 2;
    }

    while (v7 <= (a4 - 4));
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 < a4)
  {
    v15 = a3 + v7;
    v16 = &a2[v7];
    v17 = this + v7;
    v18 = a4 - v7;
    do
    {
      v19 = *v17++;
      v20 = v19;
      v21 = *v16++;
      *v15++ = v21 + (v20 * *&a7);
      --v18;
    }

    while (v18);
  }

  return this;
}

float64x2_t *cv::scaleAdd_64f(float64x2_t *this, const double *a2, float64x2_t *a3, double *a4, double *a5, double *a6)
{
  v6 = *a5;
  if (a4 >= 4)
  {
    v7 = 0;
    v8 = vdupq_lane_s64(v6, 0);
    v9 = a3 + 1;
    v10 = a2 + 2;
    v11 = this + 1;
    do
    {
      v9[-1] = vmlaq_f64(*(v10 - 2), v8, v11[-1]);
      v12 = *v11;
      v11 += 2;
      v13 = v12;
      v14 = *v10;
      v10 += 4;
      v7 += 4;
      *v9 = vmlaq_f64(v14, v8, v13);
      v9 += 2;
    }

    while (v7 <= (a4 - 4));
  }

  else
  {
    LODWORD(v7) = 0;
  }

  if (v7 < a4)
  {
    v15 = &a3->f64[v7];
    v16 = &a2[v7];
    v17 = &this->f64[v7];
    v18 = a4 - v7;
    do
    {
      v19 = *v17++;
      v20 = v19;
      v21 = *v16++;
      *v15++ = v21 + v20 * *&v6;
      --v18;
    }

    while (v18);
  }

  return this;
}

void cv::mulTransposed(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, void (***a4)(uint64_t *__return_ptr, void, uint64_t), const cv::_InputArray *a5, double a6)
{
  v6 = a5;
  v9 = a3;
  (**this)(&v84);
  (**a4)(&v73, a4, 0xFFFFFFFFLL);
  v11 = v84;
  if (v6 >= 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = v84;
  }

  v13 = v12 & 7;
  if (v13 <= (v73 & 7u))
  {
    v14 = v73 & 7;
  }

  else
  {
    v14 = v13;
  }

  if (v14 <= 5)
  {
    v15 = 5;
  }

  else
  {
    v15 = v14;
  }

  if ((v84 & 0xFF8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v60, "src.channels() == 1");
    std::string::basic_string[abi:ne200100]<0>(v53, "mulTransposed");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
    cv::Exception::Exception(v69, 4294967081, v60, v53, __p, 2542);
    cv::error(v69, v16);
  }

  if (v76)
  {
    if ((v73 & 0xFF8) != 0 || v74 != 1 && v74 != v85 || v75 != 1 && v75 != HIDWORD(v85))
    {
      std::string::basic_string[abi:ne200100]<0>(v60, "delta.channels() == 1 && (delta.rows == src.rows || delta.rows == 1) && (delta.cols == src.cols || delta.cols == 1)");
      std::string::basic_string[abi:ne200100]<0>(v53, "mulTransposed");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
      cv::Exception::Exception(v69, 4294967081, v60, v53, __p, 2548);
      cv::error(v69, v17);
    }

    if ((v73 & 0xFFF) != v15)
    {
      cv::_OutputArray::_OutputArray(v69, &v73);
      cv::Mat::convertTo(&v73, v69, v15, 1.0, 0.0);
    }
  }

  v18 = 8;
  if (v9)
  {
    v18 = 12;
  }

  (*(*a2 + 136))(a2, *(&v84 + v18), *(&v84 + v18), v15, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v60, a2, 0xFFFFFFFFLL);
  if (v86 != v61)
  {
    v19 = v11 & 0xFFF;
    if (v19 != v15 || (v20.i64[0] = v60[1], v20.i64[1] = v85, v21.i64[0] = 0x6400000064, v21.i64[1] = 0x6400000064, (vaddvq_s32(vandq_s8(vcgtq_s32(v21, v20), xmmword_22D29BA70)) & 0xF) != 0))
    {
      if ((v11 & 0xFFF) != 0 || v14 > 5)
      {
        if ((v11 & 0xFFF) != 0 || v14 != 6)
        {
          if (v19 == 2 && v14 <= 5)
          {
            v24 = v9 == 0;
            v25 = cv::MulTransposedL<unsigned short,float>;
            v26 = cv::MulTransposedR<unsigned short,float>;
          }

          else if (v19 == 2 && v14 == 6)
          {
            v24 = v9 == 0;
            v25 = cv::MulTransposedL<unsigned short,double>;
            v26 = cv::MulTransposedR<unsigned short,double>;
          }

          else if (v19 == 3 && v14 <= 5)
          {
            v24 = v9 == 0;
            v25 = cv::MulTransposedL<short,float>;
            v26 = cv::MulTransposedR<short,float>;
          }

          else if (v19 == 3 && v14 == 6)
          {
            v24 = v9 == 0;
            v25 = cv::MulTransposedL<short,double>;
            v26 = cv::MulTransposedR<short,double>;
          }

          else if (v19 == 5 && v14 <= 5)
          {
            v24 = v9 == 0;
            v25 = cv::MulTransposedL<float,float>;
            v26 = cv::MulTransposedR<float,float>;
          }

          else
          {
            if (v19 != 5 || v14 != 6)
            {
              v25 = cv::MulTransposedL<double,double>;
              if (v9)
              {
                v25 = cv::MulTransposedR<double,double>;
              }

              if (v19 != 6 || v14 != 6)
              {
                std::string::basic_string[abi:ne200100]<0>(v53, "");
                std::string::basic_string[abi:ne200100]<0>(__p, "mulTransposed");
                std::string::basic_string[abi:ne200100]<0>(v58, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
                cv::Exception::Exception(v69, 4294967086, v53, __p, v58, 2643);
                cv::error(v69, v51);
              }

              goto LABEL_84;
            }

            v24 = v9 == 0;
            v25 = cv::MulTransposedL<float,double>;
            v26 = cv::MulTransposedR<float,double>;
          }
        }

        else
        {
          v24 = v9 == 0;
          v25 = cv::MulTransposedL<unsigned char,double>;
          v26 = cv::MulTransposedR<unsigned char,double>;
        }
      }

      else
      {
        v24 = v9 == 0;
        v25 = cv::MulTransposedL<unsigned char,float>;
        v26 = cv::MulTransposedR<unsigned char,float>;
      }

      if (!v24)
      {
        v25 = v26;
      }

LABEL_84:
      v25(&v84, v60, &v73, a6);
      cv::_OutputArray::_OutputArray(v69, v60);
      cv::completeSymm(v69, 0);
      goto LABEL_85;
    }
  }

  v70 = v69 + 8;
  v71 = v72;
  v72[0] = 0;
  v72[1] = 0;
  LODWORD(v69[0]) = 1124007936;
  memset(v69 + 4, 0, 48);
  v69[3] = 0u;
  if (v76)
  {
    if (v81[1] == v91[1] && *v81 == *v91)
    {
      cv::_InputArray::_InputArray(v53, &v84);
      cv::_InputArray::_InputArray(__p, &v73);
      v22 = cv::_OutputArray::_OutputArray(v58, v69);
      v23 = cv::noArray(v22);
      cv::subtract(v53, __p, v58, v23, 0xFFFFFFFFLL);
    }

    else
    {
      cv::_InputArray::_InputArray(v53, &v73);
      v28 = v85;
      v29 = HIDWORD(v85);
      v30 = v74;
      v31 = v75;
      cv::_OutputArray::_OutputArray(__p, v69);
      cv::repeat(v53, (v28 / v30), v29 / v31, __p, v32);
      cv::_InputArray::_InputArray(v53, &v84);
      cv::_InputArray::_InputArray(__p, v69);
      v33 = cv::_OutputArray::_OutputArray(v58, v69);
      v34 = cv::noArray(v33);
      cv::subtract(v53, __p, v58, v34, 0xFFFFFFFFLL);
    }

    v27 = v69;
  }

  else
  {
    v27 = &v84;
  }

  cv::_InputArray::_InputArray(__p, v27);
  cv::_InputArray::_InputArray(v58, v27);
  v54 = v53 + 8;
  v55 = v56;
  v56[0] = 0;
  v56[1] = 0;
  LODWORD(v53[0]) = 1124007936;
  memset(v53 + 4, 0, 48);
  v53[3] = 0u;
  cv::_InputArray::_InputArray(v57, v53);
  cv::_OutputArray::_OutputArray(v52, v60);
  if (v9)
  {
    v35 = 1;
  }

  else
  {
    v35 = 2;
  }

  cv::gemm(__p, v58, v57, a6, v52, 0.0, v35);
  if (*(&v53[1] + 1) && atomic_fetch_add(*(&v53[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v53);
  }

  *&v53[1] = 0;
  memset(&v53[2], 0, 24);
  if (SDWORD1(v53[0]) >= 1)
  {
    v36 = 0;
    v37 = v54;
    do
    {
      *&v37[4 * v36++] = 0;
    }

    while (v36 < SDWORD1(v53[0]));
  }

  *(&v53[1] + 1) = 0;
  if (v55)
  {
    v38 = v55 == v56;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    free(v55);
  }

  if (*(&v69[1] + 1) && atomic_fetch_add(*(&v69[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v69);
  }

  *&v69[1] = 0;
  memset(&v69[2], 0, 24);
  if (SDWORD1(v69[0]) >= 1)
  {
    v39 = 0;
    v40 = v70;
    do
    {
      *&v40[4 * v39++] = 0;
    }

    while (v39 < SDWORD1(v69[0]));
  }

  *(&v69[1] + 1) = 0;
  if (v71)
  {
    v41 = v71 == v72;
  }

  else
  {
    v41 = 1;
  }

  if (!v41)
  {
    free(v71);
  }

LABEL_85:
  if (v62 && atomic_fetch_add(v62, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v60);
  }

  v61 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  if (SHIDWORD(v60[0]) >= 1)
  {
    v42 = 0;
    v43 = v66;
    do
    {
      *(v43 + 4 * v42++) = 0;
    }

    while (v42 < SHIDWORD(v60[0]));
  }

  v62 = 0;
  if (v67)
  {
    v44 = v67 == &v68;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    free(v67);
  }

  if (v77 && atomic_fetch_add(v77, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v73);
  }

  v76 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if (SHIDWORD(v73) >= 1)
  {
    v45 = 0;
    v46 = v81;
    do
    {
      v46[v45++] = 0;
    }

    while (v45 < SHIDWORD(v73));
  }

  v77 = 0;
  if (v82)
  {
    v47 = v82 == &v83;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    free(v82);
  }

  if (v87 && atomic_fetch_add(v87, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v84);
  }

  v86 = 0;
  v88 = 0;
  v89 = 0;
  v90 = 0;
  if (SHIDWORD(v84) >= 1)
  {
    v48 = 0;
    v49 = v91;
    do
    {
      v49[v48++] = 0;
    }

    while (v48 < SHIDWORD(v84));
  }

  v87 = 0;
  if (v92)
  {
    v50 = v92 == &v93;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    free(v92);
  }
}

_DWORD *cv::MulTransposedR<unsigned char,float>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v10 = *v5.i64;
  v82 = *MEMORY[0x277D85DE8];
  v11 = v2[2];
  v12 = *(v3 + 16);
  v13 = *(v4 + 16);
  v14 = v2[10];
  v15 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v4 + 80) >> 2;
  }

  v17 = v2[8];
  v18 = v17[1];
  v19 = *v17;
  if (v13)
  {
    v20 = v15 < v18;
  }

  else
  {
    v20 = 0;
  }

  v21 = !v20;
  if (v20)
  {
    if (v15 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v22 = 20 * v19;
  }

  else
  {
    v22 = 4 * v19;
  }

  result = v81;
  if (v22 >= 0x1009)
  {
    operator new[]();
  }

  v24 = *(v3 + 80) >> 2;
  if ((v21 & 1) == 0)
  {
    v26 = &v81[v19];
    if (v19 >= 1)
    {
      v28 = *v17;
      v29 = &v81[v19];
      do
      {
        v5 = vld1q_dup_f32(v13);
        v27 = 4 * v16;
        v13 = (v13 + v27);
        *v29++ = v5;
        --v28;
      }

      while (v28);
    }

    v16 = 4 * (v16 != 0);
    v25 = &v81[v19];
    goto LABEL_23;
  }

  if (v13)
  {
    v25 = 0;
    v26 = *(v4 + 16);
LABEL_23:
    if (v18 >= 1)
    {
      v30 = 0;
      v31 = v18 - 4;
      v32 = 4 * v16;
      v33 = v26;
      v34 = v11;
      do
      {
        if (v25)
        {
          v35 = v19;
          v36 = v34;
          v37 = v25;
          v38 = v81;
          if (v19 >= 1)
          {
            do
            {
              v5.i8[0] = *v36;
              v5.f32[0] = v5.u32[0] - *v37;
              *v38++ = v5.i32[0];
              v37 = (v37 + v32);
              v36 += v14;
              --v35;
            }

            while (v35);
          }
        }

        else if (v19 >= 1)
        {
          v39 = v19;
          v40 = v34;
          v41 = v33;
          v42 = v81;
          do
          {
            v5.i8[0] = *v40;
            v5.f32[0] = v5.u32[0] - *v41;
            *v42++ = v5.i32[0];
            v41 = (v41 + v32);
            v40 += v14;
            --v39;
          }

          while (v39);
        }

        v43 = v30;
        if (v30 <= v31)
        {
          do
          {
            if (v19 < 1)
            {
              v46 = 0uLL;
              v49 = 0uLL;
            }

            else
            {
              v44 = &v26[v43];
              if (v25)
              {
                v44 = v25;
              }

              v45 = &v11[v43];
              v46 = 0uLL;
              v47 = v19;
              v48 = v81;
              v49 = 0uLL;
              do
              {
                v50 = *v48++;
                v7 = v50;
                LODWORD(v8.f64[0]) = *v45;
                v51 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*&v8.f64[0]))), *v44);
                v52 = vcvtq_f64_f32(*v51.f32);
                v8 = vcvt_hight_f64_f32(v51);
                v49 = vmlaq_n_f64(v49, v8, v50);
                v46 = vmlaq_n_f64(v46, v52, v50);
                v45 += v14;
                v44 = (v44 + v32);
                --v47;
              }

              while (v47);
            }

            v5 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v46, v10)), vmulq_n_f64(v49, v10));
            *(v12 + 4 * v43) = v5;
            v43 += 4;
          }

          while (v31 >= v43);
          v43 = v43;
        }

        else
        {
          v43 = v30;
        }

        for (; v18 > v43; ++v43)
        {
          if (v19 < 1)
          {
            v54 = 0.0;
          }

          else
          {
            v53 = &v26[v43];
            if (v25)
            {
              v53 = v25;
            }

            v54 = 0.0;
            v55 = v11;
            v56 = v19;
            v57 = v81;
            do
            {
              v58 = *v57++;
              LOBYTE(v7) = v55[v43];
              v7 = (LODWORD(v7) - *v53);
              v54 = v54 + v58 * v7;
              v53 = (v53 + v32);
              v55 += v14;
              --v56;
            }

            while (v56);
          }

          v5.f32[0] = v54 * v10;
          *(v12 + 4 * v43) = v5.i32[0];
        }

        ++v30;
        v12 += 4 * v24;
        ++v34;
        ++v33;
      }

      while (v30 != v18);
    }

    return result;
  }

  if (v18 >= 1)
  {
    v59 = 0;
    v60 = v18 - 4;
    v61 = v11;
    do
    {
      v62 = v19;
      v63 = v61;
      v64 = v81;
      if (v19 >= 1)
      {
        do
        {
          v6.i8[0] = *v63;
          v6.f32[0] = v6.u32[0];
          *v64++ = v6.i32[0];
          v63 += v14;
          --v62;
        }

        while (v62);
      }

      v65 = v59;
      if (v59 <= v60)
      {
        do
        {
          if (v19 < 1)
          {
            v67 = 0uLL;
            v70 = 0uLL;
          }

          else
          {
            v66 = &v11[v65];
            v67 = 0uLL;
            v68 = v19;
            v69 = v81;
            v70 = 0uLL;
            do
            {
              v71 = *v69++;
              v8.f64[0] = v71;
              LODWORD(v9.f64[0]) = *v66;
              v72 = vmovl_u16(*&vmovl_u8(*&v9.f64[0]));
              v73 = vand_s8(*&vextq_s8(v72, v72, 8uLL), 0xFF000000FFLL);
              v74.i64[0] = v73.u32[0];
              v74.i64[1] = v73.u32[1];
              v75 = vcvtq_f64_u64(v74);
              *v72.i8 = vand_s8(*v72.i8, 0xFF000000FFLL);
              v74.i64[0] = v72.u32[0];
              v74.i64[1] = v72.u32[1];
              v9 = vcvtq_f64_u64(v74);
              v67 = vmlaq_n_f64(v67, v9, v71);
              v70 = vmlaq_n_f64(v70, v75, v71);
              v66 += v14;
              --v68;
            }

            while (v68);
          }

          v6 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v67, *v5.i64)), vmulq_n_f64(v70, *v5.i64));
          *(v12 + 4 * v65) = v6;
          v65 += 4;
        }

        while (v60 >= v65);
        v65 = v65;
      }

      else
      {
        v65 = v59;
      }

      for (; v18 > v65; ++v65)
      {
        v76 = 0.0;
        if (v19 >= 1)
        {
          v77 = v11;
          v78 = v19;
          v79 = v81;
          do
          {
            v80 = *v79++;
            LOBYTE(v8.f64[0]) = v77[v65];
            v8.f64[0] = *&v8.f64[0];
            v76 = v76 + v80 * v8.f64[0];
            v77 += v14;
            --v78;
          }

          while (v78);
        }

        v6.f32[0] = v76 * *v5.i64;
        *(v12 + 4 * v65) = v6.i32[0];
      }

      ++v59;
      v12 += 4 * v24;
      ++v61;
    }

    while (v59 != v18);
  }

  return result;
}

uint64_t cv::MulTransposedL<unsigned char,float>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v9 = v8;
  v87 = *MEMORY[0x277D85DE8];
  v10 = *(result + 16);
  v12 = *(v11 + 16);
  v13 = *(v3 + 16);
  v14 = *(result + 80);
  v15 = *(v11 + 80) >> 2;
  if (*(v3 + 8) <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 80) >> 2;
  }

  v17 = *(result + 64);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[1];
  if (v13)
  {
    v21 = *(v3 + 12);
    result = v84;
    if ((4 * v19) >= 0x1009)
    {
      operator new[]();
    }

    if (v18 >= 1)
    {
      v22 = 0;
      v23 = 16 * (v21 == v19);
      v24 = v10 + 3;
      v25 = *(v3 + 16);
      do
      {
        if (v21 >= v20)
        {
          v28 = v19;
          v29 = v10;
          v30 = v25;
          v31 = v84;
          if (v19 >= 1)
          {
            do
            {
              v32 = *v29++;
              v33 = v32;
              v34 = *v30++;
              *&v4 = v34;
              *v31++ = v33 - v34;
              --v28;
            }

            while (v28);
          }
        }

        else if (v19 >= 1)
        {
          v26 = 0;
          v27 = *(v13 + 4 * v16 * v22);
          do
          {
            LOBYTE(v4) = v10[v26];
            *&v4 = LODWORD(v4) - v27;
            v84[v26++] = LODWORD(v4);
          }

          while (v19 != v26);
        }

        v35 = v10;
        v36 = v24;
        v37 = v22;
        do
        {
          v38 = (v13 + 4 * v16 * v37);
          if (v21 < v19)
          {
            v39 = vld1q_dup_f32(v38);
            v86 = v39;
            v38 = &v86;
          }

          if (v20 >= 4)
          {
            v42 = (v38 + 2);
            v41 = 0.0;
            v43 = &v85;
            v44 = v36;
            v45 = 1;
            do
            {
              LOBYTE(v4) = *(v44 - 3);
              v46 = *(v43 - 2);
              v47 = *(v42 - 2);
              v48 = (LODWORD(v4) - v47);
              LOBYTE(v47) = *(v44 - 2);
              v49 = *(v43 - 1) * (LODWORD(v47) - *(v42 - 1)) + v46 * v48;
              LOBYTE(v46) = *(v44 - 1);
              v51 = *v43;
              v50 = v43[1];
              v43 += 4;
              v52 = (LODWORD(v46) - *v42);
              v53 = v49 + v51 * v52;
              LOBYTE(v52) = *v44;
              v4 = v53 + v50 * (LODWORD(v52) - v42[1]);
              v42 = (v42 + v23);
              v54 = v45 + 3;
              v45 += 4;
              v41 = v41 + v4;
              v44 += 4;
            }

            while (v54 <= v19 - 4);
            v38 = (v38 + v23 * (((v19 - 4) >> 2) + 1));
            v40 = ((v19 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v40 = 0;
            v41 = 0.0;
          }

          if (v40 < v20)
          {
            v55 = &v35[v40];
            v56 = &v84[v40];
            do
            {
              v57 = *v56++;
              v58 = v57;
              v59 = *v55++;
              v60 = v59;
              v61 = *v38++;
              v4 = v58;
              v41 = v41 + v4 * (v60 - v61);
              ++v40;
            }

            while (v20 > v40);
          }

          v62 = v41 * v9;
          *(v12 + 4 * v37++) = v62;
          v36 += v14;
          v35 += v14;
        }

        while (v37 != v18);
        v12 += 4 * v15;
        ++v22;
        v25 += v16;
        v10 += v14;
        v24 += v14;
      }

      while (v22 != v18);
    }
  }

  else if (v18 >= 1)
  {
    v63 = 0;
    v64 = v10 + 1;
    do
    {
      v65 = v10;
      v66 = v64;
      v67 = v63;
      do
      {
        if (v20 >= 4)
        {
          v69 = 0.0;
          v70 = v66;
          v71 = v64;
          v72 = 3;
          do
          {
            LOBYTE(v4) = *(v71 - 1);
            LOBYTE(v5) = *(v70 - 1);
            LOBYTE(v6) = *v71;
            LOBYTE(v7) = *v70;
            v7 = *&v7;
            *&v73 = *&v6 * v7;
            *&v74 = *&v5;
            v75 = *&v73 + *&v4 * *&v74;
            LOBYTE(v74) = v71[1];
            *&v76 = v74;
            LOBYTE(v73) = v70[1];
            *&v77 = v73;
            v78 = v75 + *&v76 * *&v77;
            LOBYTE(v76) = v71[2];
            v5 = v76;
            LOBYTE(v77) = v70[2];
            v6 = v77;
            v4 = v78 + v5 * v6;
            result = v72 + 1;
            v72 += 4;
            v69 = v69 + v4;
            v71 += 4;
            v70 += 4;
          }

          while (result <= v19 - 4);
          v68 = ((v19 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v68 = 0;
          v69 = 0.0;
        }

        if (v68 < v19)
        {
          v79 = &v65[v68];
          v80 = &v10[v68];
          do
          {
            v81 = *v80++;
            v4 = v81;
            v82 = *v79++;
            result = v82;
            v5 = v82;
            v69 = v69 + v4 * v82;
            ++v68;
          }

          while (v20 > v68);
        }

        v83 = v69 * v9;
        *(v12 + 4 * v67++) = v83;
        v66 += v14;
        v65 += v14;
      }

      while (v67 != v18);
      ++v63;
      v12 += 4 * v15;
      v64 += v14;
      v10 += v14;
    }

    while (v63 != v18);
  }

  return result;
}

void *cv::MulTransposedR<unsigned char,double>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v82[515] = *MEMORY[0x277D85DE8];
  v8 = v2[2];
  v9 = *(v3 + 16);
  v10 = *(v4 + 16);
  v11 = v2[10];
  v12 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v4 + 80) >> 3;
  }

  v14 = v2[8];
  v15 = v14[1];
  v16 = *v14;
  if (v10)
  {
    v17 = v12 < v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  if (v17)
  {
    if (v12 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v19 = 40 * v16;
  }

  else
  {
    v19 = 8 * v16;
  }

  result = v82;
  if (v19 >= 0x1009)
  {
    operator new[]();
  }

  v21 = *(v3 + 80) >> 3;
  if ((v18 & 1) == 0)
  {
    v23 = &v82[v16];
    if (v16 >= 1)
    {
      v25 = *v14;
      v26 = &v82[v16];
      do
      {
        v6 = vld1q_dup_f64(v10);
        v24 = 8 * v13;
        v10 = (v10 + v24);
        *v26 = v6;
        v26[1] = v6;
        v26 += 2;
        --v25;
      }

      while (v25);
    }

    v13 = 4 * (v13 != 0);
    v22 = &v82[v16];
    goto LABEL_23;
  }

  if (v10)
  {
    v22 = 0;
    v23 = *(v4 + 16);
LABEL_23:
    if (v15 >= 1)
    {
      v27 = 0;
      v28 = v15 - 4;
      v29 = 8 * v13;
      v30 = v23;
      v31 = v8;
      do
      {
        if (v22)
        {
          v32 = v16;
          v33 = v31;
          v34 = v22;
          v35 = v82;
          if (v16 >= 1)
          {
            do
            {
              LOBYTE(v6.f64[0]) = *v33;
              v6.f64[0] = *&v6.f64[0] - *v34;
              *v35++ = *&v6.f64[0];
              v34 = (v34 + v29);
              v33 += v11;
              --v32;
            }

            while (v32);
          }
        }

        else if (v16 >= 1)
        {
          v36 = v16;
          v37 = v31;
          v38 = v30;
          v39 = v82;
          do
          {
            LOBYTE(v6.f64[0]) = *v37;
            v6.f64[0] = *&v6.f64[0] - *v38;
            *v39++ = *&v6.f64[0];
            v38 = (v38 + v29);
            v37 += v11;
            --v36;
          }

          while (v36);
        }

        v40 = v27;
        if (v27 <= v28)
        {
          do
          {
            if (v16 < 1)
            {
              v43 = 0uLL;
              v46 = 0uLL;
            }

            else
            {
              v41 = &v23[v40];
              if (v22)
              {
                v41 = v22;
              }

              v42 = &v8[v40];
              v43 = 0uLL;
              v44 = v16;
              v45 = v82;
              v46 = 0uLL;
              do
              {
                LODWORD(v7.f64[0]) = *v42;
                v47 = vmovl_u16(*&vmovl_u8(*&v7.f64[0]));
                v48 = vand_s8(*v47.i8, 0xFF000000FFLL);
                v49.i64[0] = v48.u32[0];
                v49.i64[1] = v48.u32[1];
                v50 = vcvtq_f64_u64(v49);
                *v47.i8 = vand_s8(*&vextq_s8(v47, v47, 8uLL), 0xFF000000FFLL);
                v49.i64[0] = v47.u32[0];
                v49.i64[1] = v47.u32[1];
                v7 = vsubq_f64(vcvtq_f64_u64(v49), v41[1]);
                v51 = vld1q_dup_f64(v45++);
                v43 = vmlaq_f64(v43, vsubq_f64(v50, *v41), v51);
                v46 = vmlaq_f64(v46, v7, v51);
                v42 = (v42 + v11);
                v41 = (v41 + v29);
                --v44;
              }

              while (v44);
            }

            v6 = vmulq_n_f64(v43, v5);
            v52 = (v9 + 8 * v40);
            *v52 = v6;
            v52[1] = vmulq_n_f64(v46, v5);
            v40 += 4;
          }

          while (v28 >= v40);
          v40 = v40;
        }

        else
        {
          v40 = v27;
        }

        for (; v15 > v40; ++v40)
        {
          if (v16 < 1)
          {
            v54 = 0.0;
          }

          else
          {
            v53 = &v23[v40];
            if (v22)
            {
              v53 = v22;
            }

            v54 = 0.0;
            v55 = v8;
            v56 = v16;
            v57 = v82;
            do
            {
              v58 = *v57++;
              LOBYTE(v7.f64[0]) = v55[v40];
              v7.f64[0] = *&v7.f64[0] - *v53;
              v54 = v54 + v58 * v7.f64[0];
              v53 = (v53 + v29);
              v55 += v11;
              --v56;
            }

            while (v56);
          }

          v6.f64[0] = v54 * v5;
          *(v9 + 8 * v40) = v6.f64[0];
        }

        ++v27;
        v9 += 8 * v21;
        ++v31;
        ++v30;
      }

      while (v27 != v15);
    }

    return result;
  }

  if (v15 >= 1)
  {
    v59 = 0;
    v60 = v15 - 4;
    v61 = v8;
    do
    {
      v62 = v16;
      v63 = v61;
      v64 = v82;
      if (v16 >= 1)
      {
        do
        {
          LOBYTE(v6.f64[0]) = *v63;
          v6.f64[0] = *&v6.f64[0];
          *v64++ = *&v6.f64[0];
          v63 += v11;
          --v62;
        }

        while (v62);
      }

      v65 = v59;
      if (v59 <= v60)
      {
        do
        {
          if (v16 < 1)
          {
            v67 = 0uLL;
            v70 = 0uLL;
          }

          else
          {
            v66 = &v8[v65];
            v67 = 0uLL;
            v68 = v16;
            v69 = v82;
            v70 = 0uLL;
            do
            {
              LODWORD(v7.f64[0]) = *v66;
              v71 = vmovl_u16(*&vmovl_u8(*&v7.f64[0]));
              v72 = vand_s8(*&vextq_s8(v71, v71, 8uLL), 0xFF000000FFLL);
              v73.i64[0] = v72.u32[0];
              v73.i64[1] = v72.u32[1];
              v74 = vcvtq_f64_u64(v73);
              *v71.i8 = vand_s8(*v71.i8, 0xFF000000FFLL);
              v75 = vld1q_dup_f64(v69++);
              v73.i64[0] = v71.u32[0];
              v73.i64[1] = v71.u32[1];
              v7 = vcvtq_f64_u64(v73);
              v67 = vmlaq_f64(v67, v7, v75);
              v70 = vmlaq_f64(v70, v74, v75);
              v66 = (v66 + v11);
              --v68;
            }

            while (v68);
          }

          v6 = vmulq_n_f64(v67, v5);
          v76 = (v9 + 8 * v65);
          *v76 = v6;
          v76[1] = vmulq_n_f64(v70, v5);
          v65 += 4;
        }

        while (v60 >= v65);
        v65 = v65;
      }

      else
      {
        v65 = v59;
      }

      for (; v15 > v65; ++v65)
      {
        v77 = 0.0;
        if (v16 >= 1)
        {
          v78 = v8;
          v79 = v16;
          v80 = v82;
          do
          {
            v81 = *v80++;
            LOBYTE(v7.f64[0]) = v78[v65];
            v7.f64[0] = *&v7.f64[0];
            v77 = v77 + v81 * v7.f64[0];
            v78 += v11;
            --v79;
          }

          while (v79);
        }

        v6.f64[0] = v77 * v5;
        *(v9 + 8 * v65) = v6.f64[0];
      }

      ++v59;
      v9 += 8 * v21;
      ++v61;
    }

    while (v59 != v15);
  }

  return result;
}

uint64_t cv::MulTransposedL<unsigned char,double>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v9 = v8;
  v82 = *MEMORY[0x277D85DE8];
  v10 = *(result + 16);
  v12 = *(v11 + 16);
  v13 = *(v3 + 16);
  v14 = *(result + 80);
  v15 = *(v11 + 80) >> 3;
  if (*(v3 + 8) <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 80) >> 3;
  }

  v17 = *(result + 64);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[1];
  if (v13)
  {
    v21 = *(v3 + 12);
    result = v77;
    if ((8 * v19) >= 0x1009)
    {
      operator new[]();
    }

    if (v18 >= 1)
    {
      v22 = 0;
      v23 = 32 * (v21 == v19);
      v24 = v10 + 3;
      v25 = *(v3 + 16);
      do
      {
        if (v21 >= v20)
        {
          v28 = v19;
          v29 = v10;
          v30 = v25;
          v31 = v77;
          if (v19 >= 1)
          {
            do
            {
              v32 = *v29++;
              v33 = v32;
              v34 = *v30++;
              v4 = v34;
              *v31++ = v33 - v34;
              --v28;
            }

            while (v28);
          }
        }

        else if (v19 >= 1)
        {
          v26 = 0;
          v27 = *(v13 + 8 * v16 * v22);
          do
          {
            LOBYTE(v4) = v10[v26];
            v4 = *&v4 - v27;
            *&v77[v26++] = v4;
          }

          while (v19 != v26);
        }

        v35 = v10;
        v36 = v24;
        v37 = v22;
        do
        {
          v38 = (v13 + 8 * v16 * v37);
          if (v21 < v19)
          {
            v80 = *v38;
            v81 = v80;
            *v79 = v80;
            *&v79[1] = v80;
            v38 = v79;
          }

          if (v20 >= 4)
          {
            v41 = v38 + 2;
            v40 = 0.0;
            v42 = &v78;
            v43 = v36;
            v44 = 1;
            do
            {
              LOBYTE(v4) = *(v43 - 3);
              v45 = *(v42 - 2);
              LOBYTE(v7) = *(v43 - 2);
              v46 = *(v42 - 1) * (*&v7 - *(v41 - 1)) + v45 * (*&v4 - *(v41 - 2));
              LOBYTE(v45) = *(v43 - 1);
              v7 = v41[1];
              *&v47 = *&v45 - *v41;
              v48 = *v42;
              v49 = v42[1];
              v42 += 4;
              v50 = v46 + v48 * *&v47;
              LOBYTE(v47) = *v43;
              v4 = v50 + v49 * (v47 - v7);
              v41 = (v41 + v23);
              v51 = v44 + 3;
              v44 += 4;
              v40 = v40 + v4;
              v43 += 4;
            }

            while (v51 <= v19 - 4);
            v38 = (v38 + v23 * (((v19 - 4) >> 2) + 1));
            v39 = ((v19 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v39 = 0;
            v40 = 0.0;
          }

          if (v39 < v20)
          {
            v52 = &v35[v39];
            v53 = &v77[v39];
            do
            {
              v54 = *v53++;
              v4 = v54;
              LODWORD(v54) = *v52++;
              v55 = LODWORD(v54);
              v56 = *v38++;
              v40 = v40 + v4 * (v55 - v56);
              ++v39;
            }

            while (v20 > v39);
          }

          *(v12 + 8 * v37++) = v40 * v9;
          v36 += v14;
          v35 += v14;
        }

        while (v37 != v18);
        v12 += 8 * v15;
        ++v22;
        v25 += v16;
        v10 += v14;
        v24 += v14;
      }

      while (v22 != v18);
    }
  }

  else if (v18 >= 1)
  {
    v57 = 0;
    v58 = v10 + 1;
    do
    {
      v59 = v10;
      v60 = v58;
      v61 = v57;
      do
      {
        if (v20 >= 4)
        {
          v63 = 0.0;
          v64 = v60;
          v65 = v58;
          v66 = 3;
          do
          {
            LOBYTE(v4) = *(v65 - 1);
            LOBYTE(v5) = *(v64 - 1);
            LOBYTE(v6) = *v65;
            LOBYTE(v7) = *v64;
            v7 = *&v7;
            *&v67 = *&v6 * v7;
            *&v68 = *&v5;
            v69 = *&v67 + *&v4 * *&v68;
            LOBYTE(v68) = v65[1];
            *&v70 = v68;
            LOBYTE(v67) = v64[1];
            *&v71 = v67;
            v72 = v69 + *&v70 * *&v71;
            LOBYTE(v70) = v65[2];
            v5 = v70;
            LOBYTE(v71) = v64[2];
            v6 = v71;
            v4 = v72 + v5 * v6;
            result = v66 + 1;
            v66 += 4;
            v63 = v63 + v4;
            v65 += 4;
            v64 += 4;
          }

          while (result <= v19 - 4);
          v62 = ((v19 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v62 = 0;
          v63 = 0.0;
        }

        if (v62 < v19)
        {
          v73 = &v59[v62];
          v74 = &v10[v62];
          do
          {
            v75 = *v74++;
            v4 = v75;
            v76 = *v73++;
            result = v76;
            v5 = v76;
            v63 = v63 + v4 * v76;
            ++v62;
          }

          while (v20 > v62);
        }

        *(v12 + 8 * v61++) = v63 * v9;
        v60 += v14;
        v59 += v14;
      }

      while (v61 != v18);
      ++v57;
      v12 += 8 * v15;
      v58 += v14;
      v10 += v14;
    }

    while (v57 != v18);
  }

  return result;
}

_DWORD *cv::MulTransposedR<unsigned short,float>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v7 = *v5.i64;
  v84 = *MEMORY[0x277D85DE8];
  v8 = v2[2];
  v9 = *(v3 + 16);
  v10 = *(v4 + 16);
  v11 = v2[10];
  v12 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v4 + 80) >> 2;
  }

  v14 = v2[8];
  v15 = v14[1];
  v16 = *v14;
  if (v10)
  {
    v17 = v12 < v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  if (v17)
  {
    if (v12 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v19 = 20 * v16;
  }

  else
  {
    v19 = 4 * v16;
  }

  result = v83;
  if (v19 >= 0x1009)
  {
    operator new[]();
  }

  v21 = v11 >> 1;
  v22 = *(v3 + 80) >> 2;
  if ((v18 & 1) == 0)
  {
    v24 = &v83[v16];
    if (v16 >= 1)
    {
      v26 = *v14;
      v27 = &v83[v16];
      do
      {
        v5 = vld1q_dup_f32(v10);
        v25 = 4 * v13;
        v10 = (v10 + v25);
        *v27++ = v5;
        --v26;
      }

      while (v26);
    }

    v13 = 4 * (v13 != 0);
    v23 = &v83[v16];
    goto LABEL_23;
  }

  if (v10)
  {
    v23 = 0;
    v24 = *(v4 + 16);
LABEL_23:
    if (v15 >= 1)
    {
      v28 = 0;
      v29 = v15 - 4;
      v30 = 4 * v13;
      v31 = 2 * v21;
      v32 = v24;
      v33 = v8;
      do
      {
        if (v23)
        {
          v34 = v16;
          v35 = v33;
          v36 = v23;
          v37 = v83;
          if (v16 >= 1)
          {
            do
            {
              v5.i16[0] = *v35;
              v5.f32[0] = v5.u32[0] - *v36;
              *v37++ = v5.i32[0];
              v36 = (v36 + v30);
              v35 = (v35 + v31);
              --v34;
            }

            while (v34);
          }
        }

        else if (v16 >= 1)
        {
          v38 = v16;
          v39 = v33;
          v40 = v32;
          v41 = v83;
          do
          {
            v5.i16[0] = *v39;
            v5.f32[0] = v5.u32[0] - *v40;
            *v41++ = v5.i32[0];
            v40 = (v40 + v30);
            v39 = (v39 + v31);
            --v38;
          }

          while (v38);
        }

        v42 = v33;
        v43 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v16 < 1)
            {
              v45 = 0uLL;
              v49 = 0uLL;
            }

            else
            {
              v44 = &v24[v43];
              if (v23)
              {
                v44 = v23;
              }

              v45 = 0uLL;
              v46 = v42;
              v47 = v16;
              v48 = v83;
              v49 = 0uLL;
              do
              {
                v50 = *v48++;
                v6 = v50;
                v51 = vsubq_f32(vcvtq_f32_u32(vmovl_u16(*v46)), *v44);
                v49 = vmlaq_n_f64(v49, vcvt_hight_f64_f32(v51), v50);
                v45 = vmlaq_n_f64(v45, vcvtq_f64_f32(*v51.f32), v50);
                v44 = (v44 + v30);
                v46 = (v46 + v31);
                --v47;
              }

              while (v47);
            }

            v5 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v45, v7)), vmulq_n_f64(v49, v7));
            *(v9 + 4 * v43) = v5;
            v43 += 4;
            ++v42;
          }

          while (v29 >= v43);
          v43 = v43;
        }

        else
        {
          v43 = v28;
        }

        if (v43 < v15)
        {
          v52 = v8 + v43;
          do
          {
            if (v16 < 1)
            {
              v54 = 0.0;
            }

            else
            {
              v53 = &v24[v43];
              if (v23)
              {
                v53 = v23;
              }

              v54 = 0.0;
              v55 = v52;
              v56 = v16;
              v57 = v83;
              do
              {
                v58 = *v57++;
                LOWORD(v6) = *v55;
                v6 = (LODWORD(v6) - *v53);
                v54 = v54 + v58 * v6;
                v53 = (v53 + v30);
                v55 = (v55 + v31);
                --v56;
              }

              while (v56);
            }

            v5.f32[0] = v54 * v7;
            *(v9 + 4 * v43++) = v5.i32[0];
            ++v52;
          }

          while (v15 > v43);
        }

        ++v28;
        v9 += 4 * v22;
        v33 = (v33 + 2);
        ++v32;
      }

      while (v28 != v15);
    }

    return result;
  }

  if (v15 >= 1)
  {
    v59 = 0;
    v60 = v15 - 4;
    v61 = 2 * v21;
    v62 = v8;
    do
    {
      v63 = v16;
      v64 = v62;
      v65 = v83;
      if (v16 >= 1)
      {
        do
        {
          v5.i16[0] = *v64;
          v5.f32[0] = v5.u32[0];
          *v65++ = v5.i32[0];
          v64 = (v64 + v61);
          --v63;
        }

        while (v63);
      }

      v66 = v62;
      v67 = v59;
      if (v59 <= v60)
      {
        do
        {
          v68 = 0uLL;
          if (v16 < 1)
          {
            v72 = 0uLL;
          }

          else
          {
            v69 = v66;
            v70 = v16;
            v71 = v83;
            v72 = 0uLL;
            do
            {
              v73 = *v71++;
              v6 = v73;
              v74 = vmovl_u16(*v69);
              v75.i64[0] = v74.u32[0];
              v75.i64[1] = v74.u32[1];
              v76 = vcvtq_f64_u64(v75);
              v75.i64[0] = v74.u32[2];
              v75.i64[1] = v74.u32[3];
              v72 = vmlaq_n_f64(v72, vcvtq_f64_u64(v75), v73);
              v68 = vmlaq_n_f64(v68, v76, v73);
              v69 = (v69 + v61);
              --v70;
            }

            while (v70);
          }

          v5 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v68, v7)), vmulq_n_f64(v72, v7));
          *(v9 + 4 * v67) = v5;
          v67 += 4;
          ++v66;
        }

        while (v60 >= v67);
        v67 = v67;
      }

      else
      {
        v67 = v59;
      }

      if (v67 < v15)
      {
        v77 = v8 + v67;
        do
        {
          v78 = 0.0;
          if (v16 >= 1)
          {
            v79 = v77;
            v80 = v16;
            v81 = v83;
            do
            {
              v82 = *v81++;
              LOWORD(v6) = *v79;
              v6 = *&v6;
              v78 = v78 + v82 * v6;
              v79 = (v79 + v61);
              --v80;
            }

            while (v80);
          }

          v5.f32[0] = v78 * v7;
          *(v9 + 4 * v67++) = v5.i32[0];
          ++v77;
        }

        while (v15 > v67);
      }

      ++v59;
      v9 += 4 * v22;
      v62 = (v62 + 2);
    }

    while (v59 != v15);
  }

  return result;
}

unsigned __int16 *cv::MulTransposedL<unsigned short,float>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v9 = v8;
  v86 = *MEMORY[0x277D85DE8];
  v10 = *(result + 2);
  v12 = *(v11 + 16);
  v13 = *(v3 + 16);
  v14 = *(result + 10) >> 1;
  v15 = *(v11 + 80) >> 2;
  if (*(v3 + 8) <= 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = *(v3 + 80) >> 2;
  }

  v17 = *(result + 8);
  v18 = *v17;
  v19 = v17[1];
  v20 = v17[1];
  if (v13)
  {
    v21 = *(v3 + 12);
    result = v83;
    if ((4 * v19) >= 0x1009)
    {
      operator new[]();
    }

    if (v18 >= 1)
    {
      v22 = 0;
      v23 = 16 * (v21 == v19);
      v24 = 2 * v14;
      v25 = v10 + 2;
      v26 = *(v3 + 16);
      do
      {
        if (v21 >= v20)
        {
          v29 = v19;
          v30 = v10;
          v31 = v26;
          v32 = v83;
          if (v19 >= 1)
          {
            do
            {
              v33 = *v30++;
              v34 = v33;
              v35 = *v31++;
              WORD1(v4) = HIWORD(v35);
              *v32++ = v34 - v35;
              --v29;
            }

            while (v29);
          }
        }

        else if (v19 >= 1)
        {
          v27 = 0;
          v28 = *(v13 + 4 * v16 * v22);
          do
          {
            LOWORD(v4) = v10[v27];
            *&v4 = LODWORD(v4) - v28;
            v83[v27++] = LODWORD(v4);
          }

          while (v19 != v27);
        }

        v36 = v10;
        v37 = v25;
        v38 = v22;
        do
        {
          v39 = (v13 + 4 * v16 * v38);
          if (v21 < v19)
          {
            v40 = vld1q_dup_f32(v39);
            v85 = v40;
            v39 = &v85;
          }

          if (v20 >= 4)
          {
            v43 = 0;
            v44 = (v39 + 2);
            v42 = 0.0;
            v45 = v37;
            v46 = &v84;
            do
            {
              LOWORD(v6) = *(v45 - 2);
              v47 = *(v44 - 2);
              v48 = LODWORD(v6) - v47;
              LOWORD(v47) = *(v45 - 1);
              v49 = *(v46 - 1) * (LODWORD(v47) - *(v44 - 1));
              v50 = v49 + *(v46 - 2) * v48;
              LOWORD(v49) = *v45;
              v51 = *v46;
              v52 = v46[1];
              v46 += 4;
              v53 = v51;
              v54 = v50 + v53 * (LODWORD(v49) - *v44);
              LOWORD(v53) = v45[1];
              v6 = (LODWORD(v53) - v44[1]);
              v4 = v54 + v52 * v6;
              v43 += 4;
              v42 = v42 + v4;
              v44 = (v44 + v23);
              v45 += 4;
            }

            while (v43 <= v19 - 4);
            v39 = (v39 + v23 * (((v19 - 4) >> 2) + 1));
            v41 = ((v19 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v41 = 0;
            v42 = 0.0;
          }

          if (v41 < v20)
          {
            v55 = &v36[v41];
            v56 = &v83[v41];
            do
            {
              v57 = *v56++;
              v58 = v57;
              v59 = *v55++;
              v60 = v59;
              v61 = *v39++;
              WORD1(v6) = HIWORD(v61);
              v4 = v58;
              v42 = v42 + v4 * (v60 - v61);
              ++v41;
            }

            while (v20 > v41);
          }

          v62 = v42 * v9;
          *(v12 + 4 * v38++) = v62;
          v37 = (v37 + v24);
          v36 = (v36 + v24);
        }

        while (v38 != v18);
        v12 += 4 * v15;
        ++v22;
        v26 += v16;
        v10 = (v10 + v24);
        v25 = (v25 + v24);
      }

      while (v22 != v18);
    }
  }

  else if (v18 >= 1)
  {
    v63 = 0;
    v64 = v10 + 2;
    v65 = 2 * v14;
    do
    {
      v66 = v10;
      v67 = v64;
      v68 = v63;
      do
      {
        if (v20 >= 4)
        {
          v71 = 0;
          v70 = 0.0;
          v72 = v67;
          result = v64;
          do
          {
            LOWORD(v4) = *(result - 2);
            LOWORD(v5) = *(v72 - 2);
            *&v73 = *&v5;
            LOWORD(v6) = *(result - 1);
            LOWORD(v7) = *(v72 - 1);
            v7 = *&v7;
            *&v74 = *&v6 * v7;
            v75 = *&v74 + *&v4 * *&v73;
            LOWORD(v73) = *result;
            LOWORD(v74) = *v72;
            *&v76 = v73;
            *&v77 = v74;
            v78 = v75 + *&v76 * *&v77;
            LOWORD(v76) = result[1];
            v5 = v76;
            LOWORD(v77) = v72[1];
            v6 = v77;
            v4 = v78 + v5 * v6;
            v70 = v70 + v4;
            v71 += 4;
            result += 4;
            v72 += 4;
          }

          while (v71 <= v19 - 4);
          v69 = ((v19 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v69 = 0;
          v70 = 0.0;
        }

        if (v69 < v19)
        {
          v79 = &v66[v69];
          result = &v10[v69];
          do
          {
            v80 = *result++;
            v4 = v80;
            v81 = *v79++;
            v5 = v81;
            v70 = v70 + v4 * v81;
            ++v69;
          }

          while (v20 > v69);
        }

        v82 = v70 * v9;
        *(v12 + 4 * v68++) = v82;
        v67 = (v67 + v65);
        v66 = (v66 + v65);
      }

      while (v68 != v18);
      ++v63;
      v12 += 4 * v15;
      v64 = (v64 + v65);
      v10 = (v10 + v65);
    }

    while (v63 != v18);
  }

  return result;
}

void *cv::MulTransposedR<unsigned short,double>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v7 = v5.f64[0];
  v87[515] = *MEMORY[0x277D85DE8];
  v8 = v2[2];
  v9 = *(v3 + 16);
  v10 = *(v4 + 16);
  v11 = v2[10];
  v12 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v4 + 80) >> 3;
  }

  v14 = v2[8];
  v15 = v14[1];
  v16 = *v14;
  if (v10)
  {
    v17 = v12 < v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = !v17;
  if (v17)
  {
    if (v12 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v19 = 40 * v16;
  }

  else
  {
    v19 = 8 * v16;
  }

  result = v87;
  if (v19 >= 0x1009)
  {
    operator new[]();
  }

  v21 = v11 >> 1;
  v22 = *(v3 + 80) >> 3;
  if ((v18 & 1) == 0)
  {
    v24 = &v87[v16];
    if (v16 >= 1)
    {
      v26 = *v14;
      v27 = &v87[v16];
      do
      {
        v5 = vld1q_dup_f64(v10);
        v25 = 8 * v13;
        v10 = (v10 + v25);
        *v27 = v5;
        v27[1] = v5;
        v27 += 2;
        --v26;
      }

      while (v26);
    }

    v13 = 4 * (v13 != 0);
    v23 = &v87[v16];
    goto LABEL_23;
  }

  if (v10)
  {
    v23 = 0;
    v24 = *(v4 + 16);
LABEL_23:
    if (v15 >= 1)
    {
      v28 = 0;
      v29 = v15 - 4;
      v30 = 8 * v13;
      v31 = 2 * v21;
      v32 = v24;
      v33 = v8;
      do
      {
        if (v23)
        {
          v34 = v16;
          v35 = v33;
          v36 = v23;
          v37 = v87;
          if (v16 >= 1)
          {
            do
            {
              LOWORD(v5.f64[0]) = v35->i16[0];
              v5.f64[0] = *&v5.f64[0] - *v36;
              *v37++ = *&v5.f64[0];
              v36 = (v36 + v30);
              v35 = (v35 + v31);
              --v34;
            }

            while (v34);
          }
        }

        else if (v16 >= 1)
        {
          v38 = v16;
          v39 = v33;
          v40 = v32;
          v41 = v87;
          do
          {
            LOWORD(v5.f64[0]) = v39->i16[0];
            v5.f64[0] = *&v5.f64[0] - *v40;
            *v41++ = *&v5.f64[0];
            v40 = (v40 + v30);
            v39 = (v39 + v31);
            --v38;
          }

          while (v38);
        }

        v42 = v33;
        v43 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v16 < 1)
            {
              v45 = 0uLL;
              v49 = 0uLL;
            }

            else
            {
              v44 = &v24[v43];
              if (v23)
              {
                v44 = v23;
              }

              v45 = 0uLL;
              v46 = v42;
              v47 = v16;
              v48 = v87;
              v49 = 0uLL;
              do
              {
                v50 = vmovl_u16(*v46);
                v51.i64[0] = v50.u32[2];
                v51.i64[1] = v50.u32[3];
                v52 = vcvtq_f64_u64(v51);
                v51.i64[0] = v50.u32[0];
                v51.i64[1] = v50.u32[1];
                v6 = vsubq_f64(vcvtq_f64_u64(v51), *v44);
                v53 = vld1q_dup_f64(v48++);
                v49 = vmlaq_f64(v49, vsubq_f64(v52, v44[1]), v53);
                v45 = vmlaq_f64(v45, v6, v53);
                v44 = (v44 + v30);
                v46 = (v46 + v31);
                --v47;
              }

              while (v47);
            }

            v5 = vmulq_n_f64(v45, v7);
            v54 = (v9 + 8 * v43);
            *v54 = v5;
            v54[1] = vmulq_n_f64(v49, v7);
            v43 += 4;
            ++v42;
          }

          while (v29 >= v43);
          v43 = v43;
        }

        else
        {
          v43 = v28;
        }

        if (v43 < v15)
        {
          v55 = v8 + v43;
          do
          {
            if (v16 < 1)
            {
              v57 = 0.0;
            }

            else
            {
              v56 = &v24[v43];
              if (v23)
              {
                v56 = v23;
              }

              v57 = 0.0;
              v58 = v55;
              v59 = v16;
              v60 = v87;
              do
              {
                v61 = *v60++;
                LOWORD(v6.f64[0]) = *v58;
                v6.f64[0] = *&v6.f64[0] - *v56;
                v57 = v57 + v61 * v6.f64[0];
                v56 = (v56 + v30);
                v58 = (v58 + v31);
                --v59;
              }

              while (v59);
            }

            v5.f64[0] = v57 * v7;
            *(v9 + 8 * v43++) = v5.f64[0];
            ++v55;
          }

          while (v15 > v43);
        }

        ++v28;
        v9 += 8 * v22;
        v33 = (v33 + 2);
        ++v32;
      }

      while (v28 != v15);
    }

    return result;
  }

  if (v15 >= 1)
  {
    v62 = 0;
    v63 = v15 - 4;
    v64 = 2 * v21;
    v65 = v8;
    do
    {
      v66 = v16;
      v67 = v65;
      v68 = v87;
      if (v16 >= 1)
      {
        do
        {
          LOWORD(v5.f64[0]) = v67->i16[0];
          v5.f64[0] = *&v5.f64[0];
          *v68++ = *&v5.f64[0];
          v67 = (v67 + v64);
          --v66;
        }

        while (v66);
      }

      v69 = v65;
      v70 = v62;
      if (v62 <= v63)
      {
        do
        {
          v71 = 0uLL;
          if (v16 < 1)
          {
            v75 = 0uLL;
          }

          else
          {
            v72 = v69;
            v73 = v16;
            v74 = v87;
            v75 = 0uLL;
            do
            {
              v76 = vmovl_u16(*v72);
              v77.i64[0] = v76.u32[0];
              v77.i64[1] = v76.u32[1];
              v78 = vcvtq_f64_u64(v77);
              v79 = vld1q_dup_f64(v74++);
              v77.i64[0] = v76.u32[2];
              v77.i64[1] = v76.u32[3];
              v6 = vcvtq_f64_u64(v77);
              v75 = vmlaq_f64(v75, v6, v79);
              v71 = vmlaq_f64(v71, v78, v79);
              v72 = (v72 + v64);
              --v73;
            }

            while (v73);
          }

          v5 = vmulq_n_f64(v71, v7);
          v80 = (v9 + 8 * v70);
          *v80 = v5;
          v80[1] = vmulq_n_f64(v75, v7);
          v70 += 4;
          ++v69;
        }

        while (v63 >= v70);
        v70 = v70;
      }

      else
      {
        v70 = v62;
      }

      if (v70 < v15)
      {
        v81 = v8 + v70;
        do
        {
          v82 = 0.0;
          if (v16 >= 1)
          {
            v83 = v81;
            v84 = v16;
            v85 = v87;
            do
            {
              v86 = *v85++;
              LOWORD(v6.f64[0]) = *v83;
              v6.f64[0] = *&v6.f64[0];
              v82 = v82 + v86 * v6.f64[0];
              v83 = (v83 + v64);
              --v84;
            }

            while (v84);
          }

          v5.f64[0] = v82 * v7;
          *(v9 + 8 * v70++) = v5.f64[0];
          ++v81;
        }

        while (v15 > v70);
      }

      ++v62;
      v9 += 8 * v22;
      v65 = (v65 + 2);
    }

    while (v62 != v15);
  }

  return result;
}

unsigned __int16 *cv::MulTransposedL<unsigned short,double>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v10 = v9;
  v81 = *MEMORY[0x277D85DE8];
  v11 = *(result + 2);
  v13 = *(v12 + 16);
  v14 = *(v3 + 16);
  v15 = *(result + 10) >> 1;
  v16 = *(v12 + 80) >> 3;
  if (*(v3 + 8) <= 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(v3 + 80) >> 3;
  }

  v18 = *(result + 8);
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[1];
  if (v14)
  {
    v22 = *(v3 + 12);
    result = v76;
    if ((8 * v20) >= 0x1009)
    {
      operator new[]();
    }

    if (v19 >= 1)
    {
      v23 = 0;
      v24 = 32 * (v22 == v20);
      v25 = 2 * v15;
      v26 = v11 + 2;
      v27 = *(v3 + 16);
      do
      {
        if (v22 >= v21)
        {
          v30 = v20;
          v31 = v11;
          v32 = v27;
          v33 = v76;
          if (v20 >= 1)
          {
            do
            {
              v34 = *v31++;
              v35 = v34;
              v36 = *v32++;
              v4 = v36;
              *v33++ = v35 - v36;
              --v30;
            }

            while (v30);
          }
        }

        else if (v20 >= 1)
        {
          v28 = 0;
          v29 = *(v14 + 8 * v17 * v23);
          do
          {
            LOWORD(v4) = v11[v28];
            v4 = *&v4 - v29;
            *&v76[v28++] = v4;
          }

          while (v20 != v28);
        }

        v37 = v11;
        v38 = v26;
        v39 = v23;
        do
        {
          v40 = (v14 + 8 * v17 * v39);
          if (v22 < v20)
          {
            v79 = *v40;
            v80 = v79;
            *v78 = v79;
            *&v78[1] = v79;
            v40 = v78;
          }

          if (v21 >= 4)
          {
            v43 = 0;
            v44 = v40 + 2;
            v42 = 0.0;
            v45 = v38;
            v46 = &v77;
            do
            {
              LOWORD(v4) = *(v45 - 2);
              LOWORD(v8) = *(v45 - 1);
              *&v47 = *(v46 - 1) * (*&v8 - *(v44 - 1));
              v48 = *&v47 + *(v46 - 2) * (*&v4 - *(v44 - 2));
              LOWORD(v47) = *v45;
              *&v49 = v47 - *v44;
              v50 = *v46;
              v8 = v46[1];
              v46 += 4;
              v51 = v48 + v50 * *&v49;
              LOWORD(v49) = v45[1];
              v4 = v51 + v8 * (v49 - v44[1]);
              v43 += 4;
              v42 = v42 + v4;
              v44 = (v44 + v24);
              v45 += 4;
            }

            while (v43 <= v20 - 4);
            v40 = (v40 + v24 * (((v20 - 4) >> 2) + 1));
            v41 = ((v20 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v41 = 0;
            v42 = 0.0;
          }

          if (v41 < v21)
          {
            v52 = &v37[v41];
            v53 = &v76[v41];
            do
            {
              v54 = *v53++;
              v4 = v54;
              LODWORD(v54) = *v52++;
              v55 = LODWORD(v54);
              v56 = *v40++;
              v42 = v42 + v4 * (v55 - v56);
              ++v41;
            }

            while (v21 > v41);
          }

          *(v13 + 8 * v39++) = v42 * v10;
          v38 = (v38 + v25);
          v37 = (v37 + v25);
        }

        while (v39 != v19);
        v13 += 8 * v16;
        ++v23;
        v27 += v17;
        v11 = (v11 + v25);
        v26 = (v26 + v25);
      }

      while (v23 != v19);
    }
  }

  else if (v19 >= 1)
  {
    v57 = 0;
    v58 = v11 + 2;
    v59 = 2 * v15;
    do
    {
      v60 = v11;
      v61 = v58;
      v62 = v57;
      do
      {
        if (v21 >= 4)
        {
          v65 = 0;
          v64 = 0.0;
          v66 = v61;
          result = v58;
          do
          {
            LOWORD(v4) = *(result - 2);
            LOWORD(v5) = *(v66 - 2);
            *&v67 = *&v5;
            LOWORD(v6) = *(result - 1);
            LOWORD(v7) = *(v66 - 1);
            v7 = *&v7;
            *&v68 = *&v6 * v7;
            v69 = *&v68 + *&v4 * *&v67;
            LOWORD(v67) = *result;
            LOWORD(v68) = *v66;
            *&v70 = v67;
            *&v71 = v68;
            v72 = v69 + *&v70 * *&v71;
            LOWORD(v70) = result[1];
            v5 = v70;
            LOWORD(v71) = v66[1];
            v6 = v71;
            v4 = v72 + v5 * v6;
            v64 = v64 + v4;
            v65 += 4;
            result += 4;
            v66 += 4;
          }

          while (v65 <= v20 - 4);
          v63 = ((v20 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v63 = 0;
          v64 = 0.0;
        }

        if (v63 < v20)
        {
          v73 = &v60[v63];
          result = &v11[v63];
          do
          {
            v74 = *result++;
            v4 = v74;
            v75 = *v73++;
            v5 = v75;
            v64 = v64 + v4 * v75;
            ++v63;
          }

          while (v21 > v63);
        }

        *(v13 + 8 * v62++) = v64 * v10;
        v61 = (v61 + v59);
        v60 = (v60 + v59);
      }

      while (v62 != v19);
      ++v57;
      v13 += 8 * v16;
      v58 = (v58 + v59);
      v11 = (v11 + v59);
    }

    while (v57 != v19);
  }

  return result;
}

_DWORD *cv::MulTransposedR<short,float>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v86 = *MEMORY[0x277D85DE8];
  v7 = v2[2];
  v8 = *(v3 + 16);
  v9 = *(v4 + 16);
  v10 = v2[10];
  v11 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v4 + 80) >> 2;
  }

  v13 = v2[8];
  v14 = v13[1];
  v15 = *v13;
  if (v9)
  {
    v16 = v11 < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (v16)
  {
    if (v11 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v18 = 20 * v15;
  }

  else
  {
    v18 = 4 * v15;
  }

  result = v85;
  if (v18 >= 0x1009)
  {
    operator new[]();
  }

  v20 = v10 >> 1;
  v21 = *(v3 + 80) >> 2;
  if ((v17 & 1) == 0)
  {
    v23 = &v85[v15];
    if (v15 >= 1)
    {
      v25 = *v13;
      v26 = &v85[v15];
      do
      {
        v27 = vld1q_dup_f32(v9);
        v24 = 4 * v12;
        v9 = (v9 + v24);
        *v26++ = v27;
        --v25;
      }

      while (v25);
    }

    v12 = 4 * (v12 != 0);
    v22 = &v85[v15];
    goto LABEL_23;
  }

  if (v9)
  {
    v22 = 0;
    v23 = *(v4 + 16);
LABEL_23:
    if (v14 >= 1)
    {
      v28 = 0;
      v29 = v14 - 4;
      v30 = 4 * v12;
      v31 = 2 * v20;
      v32 = v23;
      v33 = v7;
      do
      {
        if (v22)
        {
          v34 = v15;
          v35 = v33;
          v36 = v22;
          v37 = v85;
          if (v15 >= 1)
          {
            do
            {
              *v37++ = v35->i16[0] - *v36;
              v36 = (v36 + v30);
              v35 = (v35 + v31);
              --v34;
            }

            while (v34);
          }
        }

        else if (v15 >= 1)
        {
          v38 = v15;
          v39 = v33;
          v40 = v32;
          v41 = v85;
          do
          {
            *v41++ = v39->i16[0] - *v40;
            v40 = (v40 + v30);
            v39 = (v39 + v31);
            --v38;
          }

          while (v38);
        }

        v42 = v33;
        v43 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v15 < 1)
            {
              v45 = 0uLL;
              v49 = 0uLL;
            }

            else
            {
              v44 = &v23[v43];
              if (v22)
              {
                v44 = v22;
              }

              v45 = 0uLL;
              v46 = v42;
              v47 = v15;
              v48 = v85;
              v49 = 0uLL;
              do
              {
                v50 = *v48++;
                v51 = vsubq_f32(vcvtq_f32_s32(vmovl_s16(*v46)), *v44);
                v49 = vmlaq_n_f64(v49, vcvt_hight_f64_f32(v51), v50);
                v45 = vmlaq_n_f64(v45, vcvtq_f64_f32(*v51.f32), v50);
                v44 = (v44 + v30);
                v46 = (v46 + v31);
                --v47;
              }

              while (v47);
            }

            *(v8 + 4 * v43) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v45, v6)), vmulq_n_f64(v49, v6));
            v43 += 4;
            ++v42;
          }

          while (v29 >= v43);
          v43 = v43;
        }

        else
        {
          v43 = v28;
        }

        if (v43 < v14)
        {
          v52 = v7 + v43;
          do
          {
            if (v15 < 1)
            {
              v54 = 0.0;
            }

            else
            {
              v53 = &v23[v43];
              if (v22)
              {
                v53 = v22;
              }

              v54 = 0.0;
              v55 = v52;
              v56 = v15;
              v57 = v85;
              do
              {
                v58 = *v57++;
                v54 = v54 + v58 * (*v55 - *v53);
                v53 = (v53 + v30);
                v55 = (v55 + v31);
                --v56;
              }

              while (v56);
            }

            v59 = v54 * v6;
            *(v8 + 4 * v43++) = v59;
            ++v52;
          }

          while (v14 > v43);
        }

        ++v28;
        v8 += 4 * v21;
        v33 = (v33 + 2);
        ++v32;
      }

      while (v28 != v14);
    }

    return result;
  }

  if (v14 >= 1)
  {
    v60 = 0;
    v61 = v14 - 4;
    v62 = 2 * v20;
    v63 = v7;
    do
    {
      v64 = v15;
      v65 = v63;
      v66 = v85;
      if (v15 >= 1)
      {
        do
        {
          *v66++ = v65->i16[0];
          v65 = (v65 + v62);
          --v64;
        }

        while (v64);
      }

      v67 = v63;
      v68 = v60;
      if (v60 <= v61)
      {
        do
        {
          v69 = 0uLL;
          if (v15 < 1)
          {
            v73 = 0uLL;
          }

          else
          {
            v70 = v67;
            v71 = v15;
            v72 = v85;
            v73 = 0uLL;
            do
            {
              v74 = *v72++;
              v75 = vmovl_s16(*v70);
              v76.i64[0] = v75.i32[0];
              v76.i64[1] = v75.i32[1];
              v77 = vcvtq_f64_s64(v76);
              v76.i64[0] = v75.i32[2];
              v76.i64[1] = v75.i32[3];
              v73 = vmlaq_n_f64(v73, vcvtq_f64_s64(v76), v74);
              v69 = vmlaq_n_f64(v69, v77, v74);
              v70 = (v70 + v62);
              --v71;
            }

            while (v71);
          }

          *(v8 + 4 * v68) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v69, v6)), vmulq_n_f64(v73, v6));
          v68 += 4;
          ++v67;
        }

        while (v61 >= v68);
        v68 = v68;
      }

      else
      {
        v68 = v60;
      }

      if (v68 < v14)
      {
        v78 = v7 + v68;
        do
        {
          v79 = 0.0;
          if (v15 >= 1)
          {
            v80 = v78;
            v81 = v15;
            v82 = v85;
            do
            {
              v83 = *v82++;
              v79 = v79 + v83 * *v80;
              v80 = (v80 + v62);
              --v81;
            }

            while (v81);
          }

          v84 = v79 * v6;
          *(v8 + 4 * v68++) = v84;
          ++v78;
        }

        while (v14 > v68);
      }

      ++v60;
      v8 += 4 * v21;
      v63 = (v63 + 2);
    }

    while (v60 != v14);
  }

  return result;
}

__int16 *cv::MulTransposedL<short,float>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v72 = *MEMORY[0x277D85DE8];
  v6 = *(result + 2);
  v8 = *(v7 + 16);
  v9 = *(v3 + 16);
  v10 = *(result + 10) >> 1;
  v11 = *(v7 + 80) >> 2;
  if (*(v3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 80) >> 2;
  }

  v13 = *(result + 8);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[1];
  if (v9)
  {
    v17 = *(v3 + 12);
    result = v69;
    if ((4 * v15) >= 0x1009)
    {
      operator new[]();
    }

    if (v14 >= 1)
    {
      v18 = 0;
      v19 = 16 * (v17 == v15);
      v20 = 2 * v10;
      v21 = v6 + 2;
      v22 = *(v3 + 16);
      do
      {
        if (v17 >= v16)
        {
          v25 = v15;
          v26 = v6;
          v27 = v22;
          v28 = v69;
          if (v15 >= 1)
          {
            do
            {
              v29 = *v26++;
              v30 = v29;
              v31 = *v27++;
              *v28++ = v30 - v31;
              --v25;
            }

            while (v25);
          }
        }

        else if (v15 >= 1)
        {
          v23 = 0;
          v24 = *(v9 + 4 * v12 * v18);
          do
          {
            *&v69[v23] = v6[v23] - v24;
            ++v23;
          }

          while (v15 != v23);
        }

        v32 = v6;
        v33 = v21;
        v34 = v18;
        do
        {
          v35 = (v9 + 4 * v12 * v34);
          if (v17 < v15)
          {
            v36 = vld1q_dup_f32(v35);
            v71 = v36;
            v35 = &v71;
          }

          if (v16 >= 4)
          {
            v39 = 0;
            v40 = (v35 + 2);
            v38 = 0.0;
            v41 = v33;
            v42 = &v70;
            do
            {
              v43 = *(v42 - 1) * (*(v41 - 1) - *(v40 - 1)) + *(v42 - 2) * (*(v41 - 2) - *(v40 - 2));
              v44 = *v42;
              v45 = v42[1];
              v42 += 4;
              v39 += 4;
              v38 = v38 + v43 + v44 * (*v41 - *v40) + v45 * (v41[1] - v40[1]);
              v40 = (v40 + v19);
              v41 += 4;
            }

            while (v39 <= v15 - 4);
            v35 = (v35 + v19 * (((v15 - 4) >> 2) + 1));
            v37 = ((v15 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v37 = 0;
            v38 = 0.0;
          }

          if (v37 < v16)
          {
            v46 = &v32[v37];
            v47 = &v69[v37];
            do
            {
              v48 = *v47++;
              v49 = v48;
              v50 = *v46++;
              v51 = v50;
              v52 = *v35++;
              v38 = v38 + v49 * (v51 - v52);
              ++v37;
            }

            while (v16 > v37);
          }

          v53 = v38 * v5;
          *(v8 + 4 * v34++) = v53;
          v33 = (v33 + v20);
          v32 = (v32 + v20);
        }

        while (v34 != v14);
        v8 += 4 * v11;
        ++v18;
        v22 += v12;
        v6 = (v6 + v20);
        v21 = (v21 + v20);
      }

      while (v18 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v54 = 0;
    v55 = v6 + 2;
    v56 = 2 * v10;
    do
    {
      v57 = v6;
      v58 = v55;
      v59 = v54;
      do
      {
        if (v16 >= 4)
        {
          v62 = 0;
          v61 = 0.0;
          v63 = v58;
          result = v55;
          do
          {
            v61 = v61 + *(result - 1) * *(v63 - 1) + *(result - 2) * *(v63 - 2) + *result * *v63 + result[1] * v63[1];
            v62 += 4;
            result += 4;
            v63 += 4;
          }

          while (v62 <= v15 - 4);
          v60 = ((v15 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v60 = 0;
          v61 = 0.0;
        }

        if (v60 < v15)
        {
          v64 = &v57[v60];
          result = &v6[v60];
          do
          {
            v65 = *result++;
            v66 = v65;
            v67 = *v64++;
            v61 = v61 + v66 * v67;
            ++v60;
          }

          while (v16 > v60);
        }

        v68 = v61 * v5;
        *(v8 + 4 * v59++) = v68;
        v58 = (v58 + v56);
        v57 = (v57 + v56);
      }

      while (v59 != v14);
      ++v54;
      v8 += 4 * v11;
      v55 = (v55 + v56);
      v6 = (v6 + v56);
    }

    while (v54 != v14);
  }

  return result;
}

void *cv::MulTransposedR<short,double>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v87[515] = *MEMORY[0x277D85DE8];
  v7 = v2[2];
  v8 = *(v3 + 16);
  v9 = *(v4 + 16);
  v10 = v2[10];
  v11 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v4 + 80) >> 3;
  }

  v13 = v2[8];
  v14 = v13[1];
  v15 = *v13;
  if (v9)
  {
    v16 = v11 < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (v16)
  {
    if (v11 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v18 = 40 * v15;
  }

  else
  {
    v18 = 8 * v15;
  }

  result = v87;
  if (v18 >= 0x1009)
  {
    operator new[]();
  }

  v20 = v10 >> 1;
  v21 = *(v3 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v23 = &v87[v15];
    if (v15 >= 1)
    {
      v25 = *v13;
      v26 = &v87[v15];
      do
      {
        v27 = vld1q_dup_f64(v9);
        v24 = 8 * v12;
        v9 = (v9 + v24);
        *v26 = v27;
        v26[1] = v27;
        v26 += 2;
        --v25;
      }

      while (v25);
    }

    v12 = 4 * (v12 != 0);
    v22 = &v87[v15];
    goto LABEL_23;
  }

  if (v9)
  {
    v22 = 0;
    v23 = *(v4 + 16);
LABEL_23:
    if (v14 >= 1)
    {
      v28 = 0;
      v29 = v14 - 4;
      v30 = 8 * v12;
      v31 = 2 * v20;
      v32 = v23;
      v33 = v7;
      do
      {
        if (v22)
        {
          v34 = v15;
          v35 = v33;
          v36 = v22;
          v37 = v87;
          if (v15 >= 1)
          {
            do
            {
              *v37++ = v35->i16[0] - *v36;
              v36 = (v36 + v30);
              v35 = (v35 + v31);
              --v34;
            }

            while (v34);
          }
        }

        else if (v15 >= 1)
        {
          v38 = v15;
          v39 = v33;
          v40 = v32;
          v41 = v87;
          do
          {
            *v41++ = v39->i16[0] - *v40;
            v40 = (v40 + v30);
            v39 = (v39 + v31);
            --v38;
          }

          while (v38);
        }

        v42 = v33;
        v43 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v15 < 1)
            {
              v45 = 0uLL;
              v49 = 0uLL;
            }

            else
            {
              v44 = &v23[v43];
              if (v22)
              {
                v44 = v22;
              }

              v45 = 0uLL;
              v46 = v42;
              v47 = v15;
              v48 = v87;
              v49 = 0uLL;
              do
              {
                v50 = vmovl_s16(*v46);
                v51.i64[0] = v50.i32[2];
                v51.i64[1] = v50.i32[3];
                v52 = vcvtq_f64_s64(v51);
                v51.i64[0] = v50.i32[0];
                v51.i64[1] = v50.i32[1];
                v53 = vld1q_dup_f64(v48++);
                v49 = vmlaq_f64(v49, vsubq_f64(v52, v44[1]), v53);
                v45 = vmlaq_f64(v45, vsubq_f64(vcvtq_f64_s64(v51), *v44), v53);
                v44 = (v44 + v30);
                v46 = (v46 + v31);
                --v47;
              }

              while (v47);
            }

            v54 = (v8 + 8 * v43);
            *v54 = vmulq_n_f64(v45, v6);
            v54[1] = vmulq_n_f64(v49, v6);
            v43 += 4;
            ++v42;
          }

          while (v29 >= v43);
          v43 = v43;
        }

        else
        {
          v43 = v28;
        }

        if (v43 < v14)
        {
          v55 = v7 + v43;
          do
          {
            if (v15 < 1)
            {
              v57 = 0.0;
            }

            else
            {
              v56 = &v23[v43];
              if (v22)
              {
                v56 = v22;
              }

              v57 = 0.0;
              v58 = v55;
              v59 = v15;
              v60 = v87;
              do
              {
                v61 = *v60++;
                v57 = v57 + v61 * (*v58 - *v56);
                v56 = (v56 + v30);
                v58 = (v58 + v31);
                --v59;
              }

              while (v59);
            }

            *(v8 + 8 * v43++) = v57 * v6;
            ++v55;
          }

          while (v14 > v43);
        }

        ++v28;
        v8 += 8 * v21;
        v33 = (v33 + 2);
        ++v32;
      }

      while (v28 != v14);
    }

    return result;
  }

  if (v14 >= 1)
  {
    v62 = 0;
    v63 = v14 - 4;
    v64 = 2 * v20;
    v65 = v7;
    do
    {
      v66 = v15;
      v67 = v65;
      v68 = v87;
      if (v15 >= 1)
      {
        do
        {
          *v68++ = v67->i16[0];
          v67 = (v67 + v64);
          --v66;
        }

        while (v66);
      }

      v69 = v65;
      v70 = v62;
      if (v62 <= v63)
      {
        do
        {
          v71 = 0uLL;
          if (v15 < 1)
          {
            v75 = 0uLL;
          }

          else
          {
            v72 = v69;
            v73 = v15;
            v74 = v87;
            v75 = 0uLL;
            do
            {
              v76 = vmovl_s16(*v72);
              v77.i64[0] = v76.i32[0];
              v77.i64[1] = v76.i32[1];
              v78 = vcvtq_f64_s64(v77);
              v79 = vld1q_dup_f64(v74++);
              v77.i64[0] = v76.i32[2];
              v77.i64[1] = v76.i32[3];
              v75 = vmlaq_f64(v75, vcvtq_f64_s64(v77), v79);
              v71 = vmlaq_f64(v71, v78, v79);
              v72 = (v72 + v64);
              --v73;
            }

            while (v73);
          }

          v80 = (v8 + 8 * v70);
          *v80 = vmulq_n_f64(v71, v6);
          v80[1] = vmulq_n_f64(v75, v6);
          v70 += 4;
          ++v69;
        }

        while (v63 >= v70);
        v70 = v70;
      }

      else
      {
        v70 = v62;
      }

      if (v70 < v14)
      {
        v81 = v7 + v70;
        do
        {
          v82 = 0.0;
          if (v15 >= 1)
          {
            v83 = v81;
            v84 = v15;
            v85 = v87;
            do
            {
              v86 = *v85++;
              v82 = v82 + v86 * *v83;
              v83 = (v83 + v64);
              --v84;
            }

            while (v84);
          }

          *(v8 + 8 * v70++) = v82 * v6;
          ++v81;
        }

        while (v14 > v70);
      }

      ++v62;
      v8 += 8 * v21;
      v65 = (v65 + 2);
    }

    while (v62 != v14);
  }

  return result;
}

__int16 *cv::MulTransposedL<short,double>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(result + 2);
  v8 = *(v7 + 16);
  v9 = *(v3 + 16);
  v10 = *(result + 10) >> 1;
  v64 = *(v7 + 80) >> 3;
  if (*(v3 + 8) <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v3 + 80) >> 3;
  }

  v12 = *(result + 8);
  v13 = *v12;
  v14 = v12[1];
  v15 = v12[1];
  if (v9)
  {
    v16 = *(v3 + 12);
    result = v65;
    if ((8 * v14) >= 0x1009)
    {
      operator new[]();
    }

    if (v13 >= 1)
    {
      v17 = 0;
      v18 = 32 * (v16 == v14);
      v19 = 2 * v10;
      v20 = v6 + 2;
      v21 = *(v3 + 16);
      do
      {
        if (v16 >= v15)
        {
          v24 = v14;
          v25 = v6;
          v26 = v21;
          v27 = v65;
          if (v14 >= 1)
          {
            do
            {
              v28 = *v25++;
              v29 = v28;
              v30 = *v26++;
              *v27++ = v29 - v30;
              --v24;
            }

            while (v24);
          }
        }

        else if (v14 >= 1)
        {
          v22 = 0;
          v23 = *(v9 + 8 * v11 * v17);
          do
          {
            *&v65[v22] = v6[v22] - v23;
            ++v22;
          }

          while (v14 != v22);
        }

        v31 = v6;
        v32 = v20;
        v33 = v17;
        do
        {
          v34 = (v9 + 8 * v11 * v33);
          if (v16 < v14)
          {
            v68 = *v34;
            v69 = v68;
            *v67 = v68;
            *&v67[1] = v68;
            v34 = v67;
          }

          if (v15 >= 4)
          {
            v37 = 0;
            v38 = v34 + 2;
            v36 = 0.0;
            v39 = v32;
            v40 = &v66;
            do
            {
              v41 = *(v40 - 1) * (*(v39 - 1) - *(v38 - 1)) + *(v40 - 2) * (*(v39 - 2) - *(v38 - 2));
              v42 = *v40;
              v43 = v40[1];
              v40 += 4;
              v37 += 4;
              v36 = v36 + v41 + v42 * (*v39 - *v38) + v43 * (v39[1] - v38[1]);
              v38 = (v38 + v18);
              v39 += 4;
            }

            while (v37 <= v14 - 4);
            v34 = (v34 + v18 * (((v14 - 4) >> 2) + 1));
            v35 = ((v14 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v35 = 0;
            v36 = 0.0;
          }

          if (v35 < v15)
          {
            v44 = &v31[v35];
            v45 = &v65[v35];
            do
            {
              v46 = *v45++;
              v47 = v46;
              LODWORD(v46) = *v44++;
              v48 = SLODWORD(v46);
              v49 = *v34++;
              v36 = v36 + v47 * (v48 - v49);
              ++v35;
            }

            while (v15 > v35);
          }

          *(v8 + 8 * v33++) = v36 * v5;
          v32 = (v32 + v19);
          v31 = (v31 + v19);
        }

        while (v33 != v13);
        v8 += 8 * v64;
        ++v17;
        v21 += v11;
        v6 = (v6 + v19);
        v20 = (v20 + v19);
      }

      while (v17 != v13);
    }
  }

  else if (v13 >= 1)
  {
    v50 = 0;
    v51 = v6 + 2;
    v52 = 2 * v10;
    do
    {
      v53 = v6;
      v54 = v51;
      v55 = v50;
      do
      {
        if (v15 >= 4)
        {
          v58 = 0;
          v57 = 0.0;
          v59 = v54;
          result = v51;
          do
          {
            v57 = v57 + *(result - 1) * *(v59 - 1) + *(result - 2) * *(v59 - 2) + *result * *v59 + result[1] * v59[1];
            v58 += 4;
            result += 4;
            v59 += 4;
          }

          while (v58 <= v14 - 4);
          v56 = ((v14 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v56 = 0;
          v57 = 0.0;
        }

        if (v56 < v14)
        {
          v60 = &v53[v56];
          result = &v6[v56];
          do
          {
            v61 = *result++;
            v62 = v61;
            v63 = *v60++;
            v57 = v57 + v62 * v63;
            ++v56;
          }

          while (v15 > v56);
        }

        *(v8 + 8 * v55++) = v57 * v5;
        v54 = (v54 + v52);
        v53 = (v53 + v52);
      }

      while (v55 != v13);
      ++v50;
      v8 += 8 * v64;
      v51 = (v51 + v52);
      v6 = (v6 + v52);
    }

    while (v50 != v13);
  }

  return result;
}

_DWORD *cv::MulTransposedR<float,float>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v83 = *MEMORY[0x277D85DE8];
  v7 = v2[2];
  v8 = *(v3 + 16);
  v9 = *(v4 + 16);
  v10 = v2[10];
  v11 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v4 + 80) >> 2;
  }

  v13 = v2[8];
  v14 = v13[1];
  v15 = *v13;
  if (v9)
  {
    v16 = v11 < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (v16)
  {
    if (v11 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v18 = 20 * v15;
  }

  else
  {
    v18 = 4 * v15;
  }

  result = v82;
  if (v18 >= 0x1009)
  {
    operator new[]();
  }

  v20 = v10 >> 2;
  v21 = *(v3 + 80) >> 2;
  if ((v17 & 1) == 0)
  {
    v23 = &v82[v15];
    if (v15 >= 1)
    {
      v25 = *v13;
      v26 = &v82[v15];
      do
      {
        v27 = vld1q_dup_f32(v9);
        v24 = 4 * v12;
        v9 = (v9 + v24);
        *v26++ = v27;
        --v25;
      }

      while (v25);
    }

    v12 = 4 * (v12 != 0);
    v22 = &v82[v15];
    goto LABEL_23;
  }

  if (v9)
  {
    v22 = 0;
    v23 = *(v4 + 16);
LABEL_23:
    if (v14 >= 1)
    {
      v28 = 0;
      v29 = v14 - 4;
      v30 = 4 * v12;
      v31 = 4 * v20;
      v32 = v23;
      v33 = v7;
      do
      {
        if (v22)
        {
          v34 = v15;
          v35 = v33;
          v36 = v22;
          v37 = v82;
          if (v15 >= 1)
          {
            do
            {
              *v37++ = *v35 - *v36;
              v36 = (v36 + v30);
              v35 = (v35 + v31);
              --v34;
            }

            while (v34);
          }
        }

        else if (v15 >= 1)
        {
          v38 = v15;
          v39 = v33;
          v40 = v32;
          v41 = v82;
          do
          {
            *v41++ = *v39 - *v40;
            v40 = (v40 + v30);
            v39 = (v39 + v31);
            --v38;
          }

          while (v38);
        }

        v42 = v33;
        v43 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v15 < 1)
            {
              v45 = 0uLL;
              v49 = 0uLL;
            }

            else
            {
              v44 = &v23[v43];
              if (v22)
              {
                v44 = v22;
              }

              v45 = 0uLL;
              v46 = v42;
              v47 = v15;
              v48 = v82;
              v49 = 0uLL;
              do
              {
                v50 = *v48++;
                v51 = vsubq_f32(*v46, *v44);
                v49 = vmlaq_n_f64(v49, vcvt_hight_f64_f32(v51), v50);
                v45 = vmlaq_n_f64(v45, vcvtq_f64_f32(*v51.f32), v50);
                v44 = (v44 + v30);
                v46 = (v46 + v31);
                --v47;
              }

              while (v47);
            }

            *(v8 + 4 * v43) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v45, v6)), vmulq_n_f64(v49, v6));
            v43 += 4;
            ++v42;
          }

          while (v29 >= v43);
          v43 = v43;
        }

        else
        {
          v43 = v28;
        }

        if (v43 < v14)
        {
          v52 = &v7[v43];
          do
          {
            if (v15 < 1)
            {
              v54 = 0.0;
            }

            else
            {
              v53 = &v23[v43];
              if (v22)
              {
                v53 = v22;
              }

              v54 = 0.0;
              v55 = v52;
              v56 = v15;
              v57 = v82;
              do
              {
                v58 = *v57++;
                v54 = v54 + v58 * (*v55 - *v53);
                v53 = (v53 + v30);
                v55 = (v55 + v31);
                --v56;
              }

              while (v56);
            }

            v59 = v54 * v6;
            *(v8 + 4 * v43++) = v59;
            ++v52;
          }

          while (v14 > v43);
        }

        ++v28;
        v8 += 4 * v21;
        ++v33;
        ++v32;
      }

      while (v28 != v14);
    }

    return result;
  }

  if (v14 >= 1)
  {
    v60 = 0;
    v61 = v14 - 4;
    v62 = 4 * v20;
    v63 = v7;
    do
    {
      v64 = v15;
      v65 = v63;
      v66 = v82;
      if (v15 >= 1)
      {
        do
        {
          *v66++ = v65->i32[0];
          v65 = (v65 + v62);
          --v64;
        }

        while (v64);
      }

      v67 = v63;
      v68 = v60;
      if (v60 <= v61)
      {
        do
        {
          v69 = 0uLL;
          if (v15 < 1)
          {
            v73 = 0uLL;
          }

          else
          {
            v70 = v67;
            v71 = v15;
            v72 = v82;
            v73 = 0uLL;
            do
            {
              v74 = *v72++;
              v73 = vmlaq_n_f64(v73, vcvt_hight_f64_f32(*v70), v74);
              v69 = vmlaq_n_f64(v69, vcvtq_f64_f32(*v70->f32), v74);
              v70 = (v70 + v62);
              --v71;
            }

            while (v71);
          }

          *(v8 + 4 * v68) = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(v69, v6)), vmulq_n_f64(v73, v6));
          v68 += 4;
          ++v67;
        }

        while (v61 >= v68);
        v68 = v68;
      }

      else
      {
        v68 = v60;
      }

      if (v68 < v14)
      {
        v75 = &v7[v68];
        do
        {
          v76 = 0.0;
          if (v15 >= 1)
          {
            v77 = v75;
            v78 = v15;
            v79 = v82;
            do
            {
              v80 = *v79++;
              v76 = v76 + v80 * *v77;
              v77 = (v77 + v62);
              --v78;
            }

            while (v78);
          }

          v81 = v76 * v6;
          *(v8 + 4 * v68++) = v81;
          ++v75;
        }

        while (v14 > v68);
      }

      ++v60;
      v8 += 4 * v21;
      v63 = (v63 + 4);
    }

    while (v60 != v14);
  }

  return result;
}

float *cv::MulTransposedL<float,float>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v81 = *MEMORY[0x277D85DE8];
  v6 = *(result + 2);
  v8 = *(v7 + 16);
  v9 = *(v3 + 16);
  v10 = *(result + 10) >> 2;
  v11 = *(v7 + 80) >> 2;
  if (*(v3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 80) >> 2;
  }

  v13 = *(result + 8);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[1];
  if (v9)
  {
    v17 = *(v3 + 12);
    result = v78;
    if ((4 * v15) >= 0x1009)
    {
      operator new[]();
    }

    if (v14 >= 1)
    {
      v18 = 0;
      v19 = 16 * (v17 == v15);
      v20 = 4 * v10;
      v21 = v6 + 2;
      v22 = *(v3 + 16);
      do
      {
        if (v17 >= v16)
        {
          v25 = v15;
          v26 = v6;
          v27 = v22;
          v28 = v78;
          if (v15 >= 1)
          {
            do
            {
              v29 = *v26++;
              v30 = v29;
              v31 = *v27++;
              *v28++ = v30 - v31;
              --v25;
            }

            while (v25);
          }
        }

        else if (v15 >= 1)
        {
          v23 = 0;
          v24 = *(v9 + 4 * v12 * v18);
          do
          {
            *&v78[v23 * 4] = v6[v23] - v24;
            ++v23;
          }

          while (v15 != v23);
        }

        v32 = v6;
        v33 = v21;
        v34 = v18;
        do
        {
          v35 = (v9 + 4 * v12 * v34);
          if (v17 < v15)
          {
            v36 = vld1q_dup_f32(v35);
            v80 = v36;
            v35 = &v80;
          }

          if (v16 >= 4)
          {
            v39 = 0;
            v40 = (v35 + 2);
            v38 = 0.0;
            v41 = v33;
            v42 = &v79;
            do
            {
              v43 = (*(v41 - 2) - *(v40 - 2));
              v44 = *(v42 - 1) * (*(v41 - 1) - *(v40 - 1));
              v45 = *v41;
              v46 = v41[1];
              v41 += 4;
              v47 = v44 + *(v42 - 2) * v43;
              *&v44 = v45 - *v40;
              v48 = *v42;
              v49 = v42[1];
              v42 += 4;
              v39 += 4;
              v38 = v38 + v47 + v48 * *&v44 + v49 * (v46 - v40[1]);
              v40 = (v40 + v19);
            }

            while (v39 <= v15 - 4);
            v35 = (v35 + v19 * (((v15 - 4) >> 2) + 1));
            v37 = ((v15 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v37 = 0;
            v38 = 0.0;
          }

          if (v37 < v16)
          {
            v50 = &v32[v37];
            v51 = &v78[4 * v37];
            do
            {
              v52 = *v51++;
              v53 = v52;
              v54 = *v50++;
              v55 = v54;
              v56 = *v35++;
              v38 = v38 + v53 * (v55 - v56);
              ++v37;
            }

            while (v16 > v37);
          }

          v57 = v38 * v5;
          *(v8 + 4 * v34++) = v57;
          v33 = (v33 + v20);
          v32 = (v32 + v20);
        }

        while (v34 != v14);
        v8 += 4 * v11;
        ++v18;
        v22 += v12;
        v6 = (v6 + v20);
        v21 = (v21 + v20);
      }

      while (v18 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v58 = 0;
    v59 = v6 + 2;
    v60 = 4 * v10;
    do
    {
      v61 = v6;
      v62 = v59;
      v63 = v58;
      do
      {
        if (v16 >= 4)
        {
          v66 = 0;
          v65 = 0.0;
          v67 = v62;
          result = v59;
          do
          {
            v68 = *(result - 1) * *(v67 - 1) + *(result - 2) * *(v67 - 2);
            v69 = *result;
            v70 = result[1];
            result += 4;
            v71 = *v67;
            v72 = v67[1];
            v67 += 4;
            v65 = v65 + v68 + v69 * v71 + v70 * v72;
            v66 += 4;
          }

          while (v66 <= v15 - 4);
          v64 = ((v15 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v64 = 0;
          v65 = 0.0;
        }

        if (v64 < v15)
        {
          v73 = &v61[v64];
          result = &v6[v64];
          do
          {
            v74 = *result++;
            v75 = v74;
            v76 = *v73++;
            v65 = v65 + v75 * v76;
            ++v64;
          }

          while (v16 > v64);
        }

        v77 = v65 * v5;
        *(v8 + 4 * v63++) = v77;
        v62 = (v62 + v60);
        v61 = (v61 + v60);
      }

      while (v63 != v14);
      ++v58;
      v8 += 4 * v11;
      v59 = (v59 + v60);
      v6 = (v6 + v60);
    }

    while (v58 != v14);
  }

  return result;
}

void *cv::MulTransposedR<float,double>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v84[515] = *MEMORY[0x277D85DE8];
  v7 = v2[2];
  v8 = *(v3 + 16);
  v9 = *(v4 + 16);
  v10 = v2[10];
  v11 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v4 + 80) >> 3;
  }

  v13 = v2[8];
  v14 = v13[1];
  v15 = *v13;
  if (v9)
  {
    v16 = v11 < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (v16)
  {
    if (v11 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v18 = 40 * v15;
  }

  else
  {
    v18 = 8 * v15;
  }

  result = v84;
  if (v18 >= 0x1009)
  {
    operator new[]();
  }

  v20 = v10 >> 2;
  v21 = *(v3 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v23 = &v84[v15];
    if (v15 >= 1)
    {
      v25 = *v13;
      v26 = &v84[v15];
      do
      {
        v27 = vld1q_dup_f64(v9);
        v24 = 8 * v12;
        v9 = (v9 + v24);
        *v26 = v27;
        v26[1] = v27;
        v26 += 2;
        --v25;
      }

      while (v25);
    }

    v12 = 4 * (v12 != 0);
    v22 = &v84[v15];
    goto LABEL_23;
  }

  if (v9)
  {
    v22 = 0;
    v23 = *(v4 + 16);
LABEL_23:
    if (v14 >= 1)
    {
      v28 = 0;
      v29 = v14 - 4;
      v30 = 8 * v12;
      v31 = 4 * v20;
      v32 = (v7 + 2);
      v33 = v23;
      v34 = v7;
      do
      {
        if (v22)
        {
          v35 = v15;
          v36 = v34;
          v37 = v22;
          v38 = v84;
          if (v15 >= 1)
          {
            do
            {
              *v38++ = *v36 - *v37;
              v37 = (v37 + v30);
              v36 = (v36 + v31);
              --v35;
            }

            while (v35);
          }
        }

        else if (v15 >= 1)
        {
          v39 = v15;
          v40 = v34;
          v41 = v33;
          v42 = v84;
          do
          {
            *v42++ = *v40 - *v41;
            v41 = (v41 + v30);
            v40 = (v40 + v31);
            --v39;
          }

          while (v39);
        }

        v43 = v32;
        v44 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v15 < 1)
            {
              v47 = 0uLL;
              v51 = 0uLL;
            }

            else
            {
              v45 = &v23[v44];
              if (v22)
              {
                v45 = v22;
              }

              v46 = v45 + 1;
              v47 = 0uLL;
              v48 = v43;
              v49 = v15;
              v50 = v84;
              v51 = 0uLL;
              do
              {
                v52 = vld1q_dup_f64(v50++);
                v47 = vmlaq_f64(v47, vsubq_f64(vcvtq_f64_f32(v48[-1]), v46[-1]), v52);
                v51 = vmlaq_f64(v51, vsubq_f64(vcvtq_f64_f32(*v48), *v46), v52);
                v46 = (v46 + v30);
                v48 = (v48 + v31);
                --v49;
              }

              while (v49);
            }

            v53 = (v8 + 8 * v44);
            *v53 = vmulq_n_f64(v47, v6);
            v53[1] = vmulq_n_f64(v51, v6);
            v44 += 4;
            v43 += 2;
          }

          while (v29 >= v44);
          v44 = v44;
        }

        else
        {
          v44 = v28;
        }

        if (v44 < v14)
        {
          v54 = &v7[v44];
          do
          {
            if (v15 < 1)
            {
              v56 = 0.0;
            }

            else
            {
              v55 = &v23[v44];
              if (v22)
              {
                v55 = v22;
              }

              v56 = 0.0;
              v57 = v54;
              v58 = v15;
              v59 = v84;
              do
              {
                v60 = *v59++;
                v56 = v56 + v60 * (*v57 - *v55);
                v55 = (v55 + v30);
                v57 = (v57 + v31);
                --v58;
              }

              while (v58);
            }

            *(v8 + 8 * v44++) = v56 * v6;
            ++v54;
          }

          while (v14 > v44);
        }

        v8 += 8 * v21;
        ++v28;
        ++v34;
        ++v33;
        v32 = (v32 + 4);
      }

      while (v28 != v14);
    }

    return result;
  }

  if (v14 >= 1)
  {
    v61 = 0;
    v62 = v14 - 4;
    v63 = 4 * v20;
    v64 = (v7 + 2);
    v65 = v7;
    do
    {
      v66 = v15;
      v67 = v65;
      v68 = v84;
      if (v15 >= 1)
      {
        do
        {
          *v68++ = *v67;
          v67 = (v67 + v63);
          --v66;
        }

        while (v66);
      }

      v69 = v64;
      v70 = v61;
      if (v61 <= v62)
      {
        do
        {
          v71 = 0uLL;
          if (v15 < 1)
          {
            v75 = 0uLL;
          }

          else
          {
            v72 = v69;
            v73 = v15;
            v74 = v84;
            v75 = 0uLL;
            do
            {
              v76 = vld1q_dup_f64(v74++);
              v71 = vmlaq_f64(v71, vcvtq_f64_f32(v72[-1]), v76);
              v75 = vmlaq_f64(v75, vcvtq_f64_f32(*v72), v76);
              v72 = (v72 + v63);
              --v73;
            }

            while (v73);
          }

          v77 = (v8 + 8 * v70);
          *v77 = vmulq_n_f64(v71, v6);
          v77[1] = vmulq_n_f64(v75, v6);
          v70 += 4;
          v69 += 2;
        }

        while (v62 >= v70);
        v70 = v70;
      }

      else
      {
        v70 = v61;
      }

      if (v70 < v14)
      {
        v78 = &v7[v70];
        do
        {
          v79 = 0.0;
          if (v15 >= 1)
          {
            v80 = v78;
            v81 = v15;
            v82 = v84;
            do
            {
              v83 = *v82++;
              v79 = v79 + v83 * *v80;
              v80 = (v80 + v63);
              --v81;
            }

            while (v81);
          }

          *(v8 + 8 * v70++) = v79 * v6;
          ++v78;
        }

        while (v14 > v70);
      }

      ++v61;
      v8 += 8 * v21;
      ++v65;
      v64 = (v64 + 4);
    }

    while (v61 != v14);
  }

  return result;
}

float *cv::MulTransposedL<float,double>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v77 = *MEMORY[0x277D85DE8];
  v6 = *(result + 2);
  v8 = *(v7 + 16);
  v9 = *(v3 + 16);
  v10 = *(result + 10) >> 2;
  v11 = *(v7 + 80) >> 3;
  if (*(v3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 80) >> 3;
  }

  v13 = *(result + 8);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[1];
  if (v9)
  {
    v17 = *(v3 + 12);
    result = v72;
    if ((8 * v15) >= 0x1009)
    {
      operator new[]();
    }

    if (v14 >= 1)
    {
      v18 = 0;
      v19 = 32 * (v17 == v15);
      v20 = 4 * v10;
      v21 = v6 + 2;
      v22 = *(v3 + 16);
      do
      {
        if (v17 >= v16)
        {
          v25 = v15;
          v26 = v6;
          v27 = v22;
          v28 = v72;
          if (v15 >= 1)
          {
            do
            {
              v29 = *v26++;
              v30 = v29;
              v31 = *v27++;
              *v28++ = v30 - v31;
              --v25;
            }

            while (v25);
          }
        }

        else if (v15 >= 1)
        {
          v23 = 0;
          v24 = *(v9 + 8 * v12 * v18);
          do
          {
            *&v72[v23] = v6[v23] - v24;
            ++v23;
          }

          while (v15 != v23);
        }

        v32 = v6;
        v33 = v21;
        v34 = v18;
        do
        {
          v35 = (v9 + 8 * v12 * v34);
          if (v17 < v15)
          {
            v75 = *v35;
            v76 = v75;
            *v74 = v75;
            *&v74[1] = v75;
            v35 = v74;
          }

          if (v16 >= 4)
          {
            v38 = 0;
            v39 = v35 + 2;
            v37 = 0.0;
            v40 = v33;
            v41 = &v73;
            do
            {
              v42 = *(v41 - 1) * (*(v40 - 1) - *(v39 - 1)) + *(v41 - 2) * (*(v40 - 2) - *(v39 - 2));
              v43 = *v40;
              v44 = v40[1];
              v40 += 4;
              v45 = *v41;
              v46 = v41[1];
              v41 += 4;
              v38 += 4;
              v37 = v37 + v42 + v45 * (v43 - *v39) + v46 * (v44 - v39[1]);
              v39 = (v39 + v19);
            }

            while (v38 <= v15 - 4);
            v35 = (v35 + v19 * (((v15 - 4) >> 2) + 1));
            v36 = ((v15 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v36 = 0;
            v37 = 0.0;
          }

          if (v36 < v16)
          {
            v47 = &v32[v36];
            v48 = &v72[v36];
            do
            {
              v49 = *v48++;
              v50 = v49;
              *&v49 = *v47++;
              v51 = *&v49;
              v52 = *v35++;
              v37 = v37 + v50 * (v51 - v52);
              ++v36;
            }

            while (v16 > v36);
          }

          *(v8 + 8 * v34++) = v37 * v5;
          v33 = (v33 + v20);
          v32 = (v32 + v20);
        }

        while (v34 != v14);
        v8 += 8 * v11;
        ++v18;
        v22 += v12;
        v6 = (v6 + v20);
        v21 = (v21 + v20);
      }

      while (v18 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v53 = 0;
    v54 = v6 + 2;
    v55 = 4 * v10;
    do
    {
      v56 = v6;
      v57 = v54;
      v58 = v53;
      do
      {
        if (v16 >= 4)
        {
          v61 = 0;
          v60 = 0.0;
          v62 = v57;
          result = v54;
          do
          {
            v63 = *(result - 1) * *(v62 - 1) + *(result - 2) * *(v62 - 2);
            v64 = *result;
            v65 = result[1];
            result += 4;
            v66 = *v62;
            v67 = v62[1];
            v62 += 4;
            v60 = v60 + v63 + v64 * v66 + v65 * v67;
            v61 += 4;
          }

          while (v61 <= v15 - 4);
          v59 = ((v15 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v59 = 0;
          v60 = 0.0;
        }

        if (v59 < v15)
        {
          v68 = &v56[v59];
          result = &v6[v59];
          do
          {
            v69 = *result++;
            v70 = v69;
            v71 = *v68++;
            v60 = v60 + v70 * v71;
            ++v59;
          }

          while (v16 > v59);
        }

        *(v8 + 8 * v58++) = v60 * v5;
        v57 = (v57 + v55);
        v56 = (v56 + v55);
      }

      while (v58 != v14);
      ++v53;
      v8 += 8 * v11;
      v54 = (v54 + v55);
      v6 = (v6 + v55);
    }

    while (v53 != v14);
  }

  return result;
}

void *cv::MulTransposedR<double,double>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v6 = v5;
  v84[515] = *MEMORY[0x277D85DE8];
  v7 = v2[2];
  v8 = *(v3 + 16);
  v9 = *(v4 + 16);
  v10 = v2[10];
  v11 = *(v4 + 12);
  if (*(v4 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v4 + 80) >> 3;
  }

  v13 = v2[8];
  v14 = v13[1];
  v15 = *v13;
  if (v9)
  {
    v16 = v11 < v14;
  }

  else
  {
    v16 = 0;
  }

  v17 = !v16;
  if (v16)
  {
    if (v11 != 1)
    {
      __assert_rtn("MulTransposedR", "matmul.cpp", 2360, "delta_cols == 1");
    }

    v18 = 40 * v15;
  }

  else
  {
    v18 = 8 * v15;
  }

  result = v84;
  if (v18 >= 0x1009)
  {
    operator new[]();
  }

  v20 = v10 >> 3;
  v21 = *(v3 + 80) >> 3;
  if ((v17 & 1) == 0)
  {
    v23 = &v84[v15];
    if (v15 >= 1)
    {
      v25 = *v13;
      v26 = &v84[v15];
      do
      {
        v27 = vld1q_dup_f64(v9);
        v24 = 8 * v12;
        v9 = (v9 + v24);
        *v26 = v27;
        v26[1] = v27;
        v26 += 2;
        --v25;
      }

      while (v25);
    }

    v12 = 4 * (v12 != 0);
    v22 = &v84[v15];
    goto LABEL_23;
  }

  if (v9)
  {
    v22 = 0;
    v23 = *(v4 + 16);
LABEL_23:
    if (v14 >= 1)
    {
      v28 = 0;
      v29 = v14 - 4;
      v30 = 8 * v12;
      v31 = 8 * v20;
      v32 = (v7 + 2);
      v33 = v23;
      v34 = v7;
      do
      {
        if (v22)
        {
          v35 = v15;
          v36 = v34;
          v37 = v22;
          v38 = v84;
          if (v15 >= 1)
          {
            do
            {
              *v38++ = *v36 - *v37;
              v37 = (v37 + v30);
              v36 = (v36 + v31);
              --v35;
            }

            while (v35);
          }
        }

        else if (v15 >= 1)
        {
          v39 = v15;
          v40 = v34;
          v41 = v33;
          v42 = v84;
          do
          {
            *v42++ = *v40 - *v41;
            v41 = (v41 + v30);
            v40 = (v40 + v31);
            --v39;
          }

          while (v39);
        }

        v43 = v32;
        v44 = v28;
        if (v28 <= v29)
        {
          do
          {
            if (v15 < 1)
            {
              v47 = 0uLL;
              v51 = 0uLL;
            }

            else
            {
              v45 = &v23[v44];
              if (v22)
              {
                v45 = v22;
              }

              v46 = v45 + 1;
              v47 = 0uLL;
              v48 = v43;
              v49 = v15;
              v50 = v84;
              v51 = 0uLL;
              do
              {
                v52 = vld1q_dup_f64(v50++);
                v47 = vmlaq_f64(v47, vsubq_f64(v48[-1], v46[-1]), v52);
                v51 = vmlaq_f64(v51, vsubq_f64(*v48, *v46), v52);
                v46 = (v46 + v30);
                v48 = (v48 + v31);
                --v49;
              }

              while (v49);
            }

            v53 = (v8 + 8 * v44);
            *v53 = vmulq_n_f64(v47, v6);
            v53[1] = vmulq_n_f64(v51, v6);
            v44 += 4;
            v43 += 2;
          }

          while (v29 >= v44);
          v44 = v44;
        }

        else
        {
          v44 = v28;
        }

        if (v44 < v14)
        {
          v54 = &v7[v44];
          do
          {
            if (v15 < 1)
            {
              v56 = 0.0;
            }

            else
            {
              v55 = &v23[v44];
              if (v22)
              {
                v55 = v22;
              }

              v56 = 0.0;
              v57 = v54;
              v58 = v15;
              v59 = v84;
              do
              {
                v60 = *v59++;
                v56 = v56 + v60 * (*v57 - *v55);
                v55 = (v55 + v30);
                v57 = (v57 + v31);
                --v58;
              }

              while (v58);
            }

            *(v8 + 8 * v44++) = v56 * v6;
            ++v54;
          }

          while (v14 > v44);
        }

        v8 += 8 * v21;
        ++v28;
        ++v34;
        ++v33;
        v32 = (v32 + 8);
      }

      while (v28 != v14);
    }

    return result;
  }

  if (v14 >= 1)
  {
    v61 = 0;
    v62 = v14 - 4;
    v63 = 8 * v20;
    v64 = (v7 + 2);
    v65 = v7;
    do
    {
      v66 = v15;
      v67 = v65;
      v68 = v84;
      if (v15 >= 1)
      {
        do
        {
          *v68++ = *v67;
          v67 = (v67 + v63);
          --v66;
        }

        while (v66);
      }

      v69 = v64;
      v70 = v61;
      if (v61 <= v62)
      {
        do
        {
          v71 = 0uLL;
          if (v15 < 1)
          {
            v75 = 0uLL;
          }

          else
          {
            v72 = v69;
            v73 = v15;
            v74 = v84;
            v75 = 0uLL;
            do
            {
              v76 = vld1q_dup_f64(v74++);
              v71 = vmlaq_f64(v71, v72[-1], v76);
              v75 = vmlaq_f64(v75, *v72, v76);
              v72 = (v72 + v63);
              --v73;
            }

            while (v73);
          }

          v77 = (v8 + 8 * v70);
          *v77 = vmulq_n_f64(v71, v6);
          v77[1] = vmulq_n_f64(v75, v6);
          v70 += 4;
          v69 += 2;
        }

        while (v62 >= v70);
        v70 = v70;
      }

      else
      {
        v70 = v61;
      }

      if (v70 < v14)
      {
        v78 = &v7[v70];
        do
        {
          v79 = 0.0;
          if (v15 >= 1)
          {
            v80 = v78;
            v81 = v15;
            v82 = v84;
            do
            {
              v83 = *v82++;
              v79 = v79 + v83 * *v80;
              v80 = (v80 + v63);
              --v81;
            }

            while (v81);
          }

          *(v8 + 8 * v70++) = v79 * v6;
          ++v78;
        }

        while (v14 > v70);
      }

      ++v61;
      v8 += 8 * v21;
      ++v65;
      v64 = (v64 + 8);
    }

    while (v61 != v14);
  }

  return result;
}