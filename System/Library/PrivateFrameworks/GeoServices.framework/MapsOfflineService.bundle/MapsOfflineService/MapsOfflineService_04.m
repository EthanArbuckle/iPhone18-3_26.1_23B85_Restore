void sub_3DEB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

int8x16_t sub_3DF3C(uint64_t **a1, __int128 *a2, uint64_t *a3, int8x16_t result)
{
  v4 = *a1;
  v5 = *a3;
  v6 = **a1;
  if (*a3 < ((((*a1)[1] - v6) >> 4) - 1))
  {
    v8 = a3 + 1;
    v7 = a3[1];
    v9 = v4[3];
    if (v7 < ((v4[4] - v9) >> 4) - 1)
    {
      v10 = *(v4 + 48);
      v11 = *(a2 + 16);
      if (v10 == 1 || v11 != *(a3 + 16))
      {
        goto LABEL_13;
      }

      if (v11)
      {
        v12 = (v9 + 16 * *(a2 + 1));
        v13 = a2;
        v14 = **a1;
        v8 = a3;
        v15 = *v12;
        v16 = vsubq_f64(v12[1], *v12);
        v17 = vmulq_f64(v16, v16);
        v18 = vaddvq_f64(v17);
        if (v18 == 0.0)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = a2 + 1;
        v19 = (v6 + 16 * *a2);
        v14 = v9;
        v15 = *v19;
        v16 = vsubq_f64(v19[1], *v19);
        v17 = vmulq_f64(v16, v16);
        v18 = vaddvq_f64(v17);
        if (v18 == 0.0)
        {
          goto LABEL_13;
        }
      }

      if (v18 <= 0.0)
      {
        v18 = -v18;
      }

      if (v18 < 2.22044605e-16 || (result = vdivq_f64(vpaddq_f64(vmulq_f64(v16, vsubq_f64(*(v14 + 16 * *v13), v15)), vmulq_f64(v16, vsubq_f64(*(v14 + 16 * *v8), v15))), vdupq_lane_s64(*&vaddq_f64(v17, vdupq_laneq_s64(v17, 1)), 0)), *result.i8 = vmovn_s64(vcgeq_f64(vdupq_laneq_s64(result, 1), result)), (result.i8[0] & 1) != 0))
      {
LABEL_13:
        v20 = (v6 + 16 * *a2);
        if (v11)
        {
          v21 = *v20;
          v86 = *v20;
          v22 = (v9 + 16 * *(a2 + 1));
          v24 = *v22;
          v23 = v22[1];
          v25 = vsubq_f64(v23, *v22);
          v26 = vmulq_f64(v25, v25);
          v27 = vaddvq_f64(v26);
          if (v27 == 0.0)
          {
            goto LABEL_18;
          }

          if (v27 <= 0.0)
          {
            v27 = -v27;
          }

          if (v27 < 2.22044605e-16)
          {
LABEL_18:
            v28 = 0.0;
          }

          else
          {
            v79 = vmulq_f64(v25, vsubq_f64(v21, v24));
            *&v28 = *&vdivq_f64(vaddq_f64(v79, vdupq_laneq_s64(v79, 1)), vaddq_f64(v26, vdupq_laneq_s64(v26, 1)));
          }

          if (v28 <= 1.0)
          {
            v29 = v28;
          }

          else
          {
            v29 = 1.0;
          }

          v30 = v28 < 0.0;
          v31 = 0.0;
          if (!v30)
          {
            v31 = v29;
          }

          v85 = vaddq_f64(vmulq_n_f64(v23, v31), vmulq_n_f64(v24, 1.0 - v31));
          v32 = (v6 + 16 * v5);
          if ((a3[2] & 1) == 0)
          {
LABEL_25:
            v34 = *v32;
            v33 = v32[1];
            v35 = vsubq_f64(v33, *v32);
            v36 = vmulq_f64(v35, v35);
            v37 = vaddvq_f64(v36);
            v38 = (v9 + 16 * v7);
            v39.f64[0] = v38->f64[0];
            v40 = v38->f64[1];
            if (v37 == 0.0)
            {
              goto LABEL_29;
            }

            if (v37 <= 0.0)
            {
              v37 = -v37;
            }

            if (v37 < 2.22044605e-16)
            {
LABEL_29:
              v41 = a1;
              v42 = a3;
              v43 = a2;
              v44 = 0.0;
            }

            else
            {
              v41 = a1;
              v42 = a3;
              v43 = a2;
              v80 = vmulq_f64(v35, vsubq_f64(*v38, v34));
              *&v44 = *&vdivq_f64(vaddq_f64(v80, vdupq_laneq_s64(v80, 1)), vaddq_f64(v36, vdupq_laneq_s64(v36, 1)));
            }

            if (v44 <= 1.0)
            {
              v45 = v44;
            }

            else
            {
              v45 = 1.0;
            }

            v30 = v44 < 0.0;
            v46 = 0.0;
            if (!v30)
            {
              v46 = v45;
            }

            v84 = vaddq_f64(vmulq_n_f64(v33, v46), vmulq_n_f64(v34, 1.0 - v46));
            v39.f64[1] = v40;
LABEL_58:
            v83 = v39;
            *result.i64 = sub_42F7C(&v86, &v84, &v85, &v83);
            v67 = **v41[1];
            v68 = *(v67 + 24 * *v43) + 112 * *(v43 + 1) + 56 * *(v43 + 16);
            v69 = vsubq_f64(v85, v83);
            v70 = sqrt((v86.f64[0] - v84.f64[0]) * (v86.f64[0] - v84.f64[0]) + (v86.f64[1] - v84.f64[1]) * (v86.f64[1] - v84.f64[1])) + sqrt(vaddvq_f64(vmulq_f64(v69, v69)));
            v72 = v71 * v70 + *(v68 + 40);
            v73 = *(v67 + 24 * *v42) + 112 * v42[1] + 56 * *(v42 + 16);
            if (v72 < *(v73 + 40))
            {
              v74.f64[0] = *(v68 + 24);
              v74.f64[1] = v66;
              v75.f64[1] = *(v68 + 32);
              *&v75.f64[0] = result.i64[0];
              v76 = v70 + *(v68 + 48);
              v77 = vcgtq_f64(v74, v75);
              *&v74.f64[0] = result.i64[0];
              result = vbslq_s8(v77, v74, *(v68 + 24));
              v78 = *v43;
              *(v73 + 16) = *(v43 + 2);
              *v73 = v78;
              *(v73 + 24) = result;
              *(v73 + 40) = v72;
              *(v73 + 48) = v76;
            }

            return result;
          }
        }

        else
        {
          v48 = *v20;
          v47 = v20[1];
          v49 = vsubq_f64(v47, *v20);
          v50 = vmulq_f64(v49, v49);
          v51 = vaddvq_f64(v50);
          v52 = (v9 + 16 * *(a2 + 1));
          if (v51 == 0.0)
          {
            goto LABEL_40;
          }

          if (v51 <= 0.0)
          {
            v51 = -v51;
          }

          if (v51 < 2.22044605e-16)
          {
LABEL_40:
            v53 = 0.0;
          }

          else
          {
            v81 = vmulq_f64(v49, vsubq_f64(*v52, v48));
            *&v53 = *&vdivq_f64(vaddq_f64(v81, vdupq_laneq_s64(v81, 1)), vaddq_f64(v50, vdupq_laneq_s64(v50, 1)));
          }

          if (v53 <= 1.0)
          {
            v54 = v53;
          }

          else
          {
            v54 = 1.0;
          }

          v30 = v53 < 0.0;
          v55 = 0.0;
          if (!v30)
          {
            v55 = v54;
          }

          v85 = *v52;
          v86 = vaddq_f64(vmulq_n_f64(v47, v55), vmulq_n_f64(v48, 1.0 - v55));
          v32 = (v6 + 16 * v5);
          if ((a3[2] & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v56 = (v9 + 16 * v7);
        v57 = *v32;
        v84 = *v32;
        v59 = *v56;
        v58 = v56[1];
        v60 = vsubq_f64(v58, *v56);
        v61 = vmulq_f64(v60, v60);
        v62 = vaddvq_f64(v61);
        if (v62 == 0.0)
        {
          goto LABEL_51;
        }

        if (v62 <= 0.0)
        {
          v62 = -v62;
        }

        if (v62 < 2.22044605e-16)
        {
LABEL_51:
          v41 = a1;
          v42 = a3;
          v43 = a2;
          v63 = 0.0;
        }

        else
        {
          v41 = a1;
          v42 = a3;
          v43 = a2;
          v82 = vmulq_f64(v60, vsubq_f64(v57, v59));
          *&v63 = *&vdivq_f64(vaddq_f64(v82, vdupq_laneq_s64(v82, 1)), vaddq_f64(v61, vdupq_laneq_s64(v61, 1)));
        }

        if (v63 <= 1.0)
        {
          v64 = v63;
        }

        else
        {
          v64 = 1.0;
        }

        v30 = v63 < 0.0;
        v65 = 0.0;
        if (!v30)
        {
          v65 = v64;
        }

        v39 = vaddq_f64(vmulq_n_f64(v58, v65), vmulq_n_f64(v59, 1.0 - v65));
        goto LABEL_58;
      }
    }
  }

  return result;
}

void *sub_3E428(void *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(a2 + 8);
    if (v3)
    {
      v4 = result;
      if (v3 > result[2] << 6)
      {
        v5 = *result;
        if (v5)
        {
          operator delete(v5);
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
          v3 = *(a2 + 8);
        }

        if ((v3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }

      memmove(*result, *a2, (((v3 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      result = v4;
      v3 = *(a2 + 8);
    }

    result[1] = v3;
  }

  return result;
}

char *sub_3E4F8(uint64_t a1, char *__dst, __int128 *__src, __int128 *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __dst;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a5 <= (v6 - v7) >> 4)
  {
    v12 = v7 - __dst;
    v13 = (v7 - __dst) >> 4;
    if (v13 >= a5)
    {
      v12 = 16 * a5;
      v25 = &__dst[16 * a5];
      v26 = &v7[-a5];
      for (i = *(a1 + 8); v26 < v7; ++i)
      {
        v28 = *v26++;
        *i = v28;
      }

      *(a1 + 8) = i;
      if (v7 != v25)
      {
        v29 = __src;
        memmove(v25, __dst, v7 - v25);
        __src = v29;
      }

      v23 = __dst;
      v24 = __src;
    }

    else
    {
      v14 = (__src + v12);
      v15 = *(a1 + 8);
      for (j = v15; v14 != a4; v15 += 16)
      {
        v17 = *v14++;
        *j = v17;
        j += 16;
      }

      *(a1 + 8) = v15;
      if (v13 < 1)
      {
        return __dst;
      }

      v18 = &__dst[16 * a5];
      v19 = &v15[-16 * a5];
      v20 = __src;
      for (k = v15; v19 < v7; k += 16)
      {
        v22 = *v19++;
        *k = v22;
      }

      *(a1 + 8) = k;
      if (j != v18)
      {
        memmove(&__dst[16 * a5], __dst, v15 - v18);
      }

      if (v7 == __dst)
      {
        return __dst;
      }

      v23 = __dst;
      v24 = v20;
    }

    memmove(v23, v24, v12);
    return __dst;
  }

  v8 = *a1;
  v9 = a5 + ((v7 - *a1) >> 4);
  if (v9 >> 60)
  {
    sub_1794();
  }

  v10 = v6 - v8;
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

    sub_1808();
  }

  v31 = 16 * ((__dst - v8) >> 4);
  v32 = 16 * a5;
  v33 = v31 + 16 * a5;
  v34 = v31;
  do
  {
    v35 = *__src++;
    *v34++ = v35;
    v32 -= 16;
  }

  while (v32);
  v36 = *(a1 + 8) - __dst;
  memcpy((v31 + 16 * a5), __dst, v36);
  v38 = v33 + v36;
  *(a1 + 8) = __dst;
  v39 = *a1;
  v40 = &__dst[-*a1];
  v41 = v31 - v40;
  memcpy((v31 - v40), *a1, v40);
  *a1 = v41;
  *(a1 + 8) = v38;
  *(a1 + 16) = 0;
  if (v39)
  {
    operator delete(v39);
  }

  return v31;
}

unint64_t *sub_3E760(unint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 4;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3:
          v91 = *(v9 + 16);
          v92 = *v9;
          v93 = *(v9 + 24);
          v94 = *(v9 + 8);
          if (v91 == *v9)
          {
            v95 = v93 < v94;
          }

          else
          {
            v95 = v91 < *v9;
          }

          v96 = *(a2 - 2);
          v97 = *(a2 - 1);
          v98 = v97 < v93;
          if (v96 != v91)
          {
            v98 = v96 < v91;
          }

          if (!v95)
          {
            if (!v98)
            {
              return result;
            }

            *(v9 + 16) = v96;
            *(a2 - 2) = v91;
            *(v9 + 24) = v97;
            *(a2 - 1) = v93;
            v104 = *(v9 + 16);
            v112 = *v9;
            v106 = *(v9 + 24);
            goto LABEL_170;
          }

          if (v98)
          {
            *v9 = v96;
            *(a2 - 2) = v92;
            *(v9 + 8) = v97;
          }

          else
          {
            *v9 = v91;
            *(v9 + 16) = v92;
            *(v9 + 8) = v93;
            *(v9 + 24) = v94;
            v144 = *(a2 - 2);
            v145 = *(a2 - 1);
            v146 = v145 < v94;
            if (v144 != v92)
            {
              v146 = v144 < v92;
            }

            if (!v146)
            {
              return result;
            }

            *(v9 + 16) = v144;
            *(a2 - 2) = v92;
            *(v9 + 24) = v145;
          }

          *(a2 - 1) = v94;
          return result;
        case 4:

          return sub_3F16C(v9, (v9 + 16), (v9 + 32), a2 - 2);
        case 5:
          result = sub_3F16C(v9, (v9 + 16), (v9 + 32), (v9 + 48));
          v99 = *(a2 - 2);
          v100 = *(v9 + 48);
          v101 = *(a2 - 1);
          v102 = *(v9 + 56);
          v103 = v101 < v102;
          if (v99 != v100)
          {
            v103 = v99 < v100;
          }

          if (!v103)
          {
            return result;
          }

          *(v9 + 48) = v99;
          *(a2 - 2) = v100;
          *(v9 + 56) = v101;
          *(a2 - 1) = v102;
          v104 = *(v9 + 48);
          v105 = *(v9 + 32);
          v106 = *(v9 + 56);
          v107 = *(v9 + 40);
          v108 = v106 < v107;
          if (v104 != v105)
          {
            v108 = v104 < v105;
          }

          if (!v108)
          {
            return result;
          }

          *(v9 + 32) = v104;
          *(v9 + 48) = v105;
          *(v9 + 40) = v106;
          *(v9 + 56) = v107;
          v109 = *(v9 + 16);
          v110 = *(v9 + 24);
          v111 = v106 < v110;
          if (v104 != v109)
          {
            v111 = v104 < v109;
          }

          if (!v111)
          {
            return result;
          }

          *(v9 + 16) = v104;
          *(v9 + 32) = v109;
          *(v9 + 24) = v106;
          *(v9 + 40) = v110;
          v112 = *v9;
LABEL_170:
          v132 = *(v9 + 8);
          v133 = v106 < v132;
          if (v104 != v112)
          {
            v133 = v104 < v112;
          }

          if (v133)
          {
            *v9 = v104;
            *(v9 + 16) = v112;
            *(v9 + 8) = v106;
            *(v9 + 24) = v132;
          }

          return result;
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v113 = *(a2 - 2);
        v114 = *v9;
        v115 = *(a2 - 1);
        v116 = *(v9 + 8);
        v117 = v115 < v116;
        if (v113 != v114)
        {
          v117 = v113 < *v9;
        }

        if (v117)
        {
          *v9 = v113;
          *(a2 - 2) = v114;
          *(v9 + 8) = v115;
          *(a2 - 1) = v116;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return sub_3FA6C(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v9 + 16 * (v12 >> 1);
    v14 = *(a2 - 2);
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      v18 = *(v13 + 8);
      v19 = *(v9 + 8);
      v20 = *v13 < *v9;
      if (*v13 == *v9)
      {
        v20 = v18 < v19;
      }

      v21 = v15 < v18;
      if (v14 != v16)
      {
        v21 = v14 < v16;
      }

      if (v20)
      {
        if (v21)
        {
          *v9 = v14;
          *(a2 - 2) = v17;
          *(v9 + 8) = v15;
          goto LABEL_43;
        }

        *v9 = v16;
        *v13 = v17;
        *(v9 + 8) = v18;
        *(v13 + 8) = v19;
        v36 = *(a2 - 2);
        v37 = *(a2 - 1);
        v38 = v37 < v19;
        if (v36 != v17)
        {
          v38 = v36 < v17;
        }

        if (v38)
        {
          *v13 = v36;
          *(a2 - 2) = v17;
          *(v13 + 8) = v37;
LABEL_43:
          *(a2 - 1) = v19;
        }
      }

      else if (v21)
      {
        *v13 = v14;
        *(a2 - 2) = v16;
        *(v13 + 8) = v15;
        *(a2 - 1) = v18;
        v28 = *v9;
        v29 = *(v13 + 8);
        v30 = *(v9 + 8);
        v31 = v29 < v30;
        if (*v13 != *v9)
        {
          v31 = *v13 < *v9;
        }

        if (v31)
        {
          *v9 = *v13;
          *v13 = v28;
          *(v9 + 8) = v29;
          *(v13 + 8) = v30;
        }
      }

      v39 = v13 - 16;
      v40 = *(v13 - 16);
      v41 = *(v9 + 16);
      v42 = *(v13 - 8);
      v43 = *(v9 + 24);
      if (v40 == v41)
      {
        v44 = v42 < v43;
      }

      else
      {
        v44 = v40 < v41;
      }

      v45 = *(a2 - 4);
      v46 = *(a2 - 3);
      v47 = v46 < v42;
      if (v45 != v40)
      {
        v47 = v45 < v40;
      }

      if (v44)
      {
        if (v47)
        {
          *(v9 + 16) = v45;
          *(a2 - 4) = v41;
          *(v9 + 24) = v46;
          goto LABEL_68;
        }

        *(v9 + 16) = v40;
        *v39 = v41;
        *(v9 + 24) = v42;
        *(v13 - 8) = v43;
        v55 = *(a2 - 4);
        v56 = *(a2 - 3);
        v57 = v56 < v43;
        if (v55 != v41)
        {
          v57 = v55 < v41;
        }

        if (v57)
        {
          *v39 = v55;
          *(a2 - 4) = v41;
          *(v13 - 8) = v56;
LABEL_68:
          *(a2 - 3) = v43;
        }
      }

      else if (v47)
      {
        *v39 = v45;
        *(a2 - 4) = v40;
        *(v13 - 8) = v46;
        *(a2 - 3) = v42;
        v48 = *(v9 + 16);
        v49 = *(v13 - 8);
        v50 = *(v9 + 24);
        v51 = v49 < v50;
        if (*v39 != v48)
        {
          v51 = *v39 < v48;
        }

        if (v51)
        {
          *(v9 + 16) = *v39;
          *v39 = v48;
          *(v9 + 24) = v49;
          *(v13 - 8) = v50;
        }
      }

      v58 = v13 + 16;
      v59 = *(v13 + 16);
      v60 = *(v9 + 32);
      v61 = *(v13 + 24);
      v62 = *(v9 + 40);
      if (v59 == v60)
      {
        v63 = v61 < v62;
      }

      else
      {
        v63 = v59 < v60;
      }

      v64 = *(a2 - 6);
      v65 = *(a2 - 5);
      v66 = v65 < v61;
      if (v64 != v59)
      {
        v66 = v64 < v59;
      }

      if (v63)
      {
        if (v66)
        {
          *(v9 + 32) = v64;
          *(a2 - 6) = v60;
          *(v9 + 40) = v65;
          goto LABEL_86;
        }

        *(v9 + 32) = v59;
        *v58 = v60;
        *(v9 + 40) = v61;
        *(v13 + 24) = v62;
        v71 = *(a2 - 6);
        v72 = *(a2 - 5);
        v73 = v72 < v62;
        if (v71 != v60)
        {
          v73 = v71 < v60;
        }

        if (v73)
        {
          *v58 = v71;
          *(a2 - 6) = v60;
          *(v13 + 24) = v72;
LABEL_86:
          *(a2 - 5) = v62;
        }
      }

      else if (v66)
      {
        *v58 = v64;
        *(a2 - 6) = v59;
        *(v13 + 24) = v65;
        *(a2 - 5) = v61;
        v67 = *(v9 + 32);
        v68 = *(v13 + 24);
        v69 = *(v9 + 40);
        v70 = v68 < v69;
        if (*v58 != v67)
        {
          v70 = *v58 < v67;
        }

        if (v70)
        {
          *(v9 + 32) = *v58;
          *v58 = v67;
          *(v9 + 40) = v68;
          *(v13 + 24) = v69;
        }
      }

      v74 = *v13;
      v75 = *v39;
      v76 = *(v13 + 8);
      v77 = *(v13 - 8);
      if (*v13 == *v39)
      {
        v78 = v76 < v77;
      }

      else
      {
        v78 = *v13 < *v39;
      }

      v79 = *v58;
      v80 = *(v13 + 24);
      v81 = v80 < v76;
      if (*v58 != v74)
      {
        v81 = *v58 < v74;
      }

      if (v78)
      {
        if (!v81)
        {
          *v39 = v74;
          *v13 = v75;
          v82 = v79 < v75;
          if (v79 == v75)
          {
            v82 = v80 < v77;
          }

          *(v13 - 8) = v76;
          *(v13 + 8) = v77;
          v39 = v13;
          v76 = v80;
          v74 = v79;
          if (!v82)
          {
            v76 = v77;
            v74 = v75;
            goto LABEL_104;
          }
        }

LABEL_103:
        *v39 = v79;
        *v58 = v75;
        *(v39 + 8) = v80;
        *(v58 + 8) = v77;
      }

      else if (v81)
      {
        *v13 = v79;
        *v58 = v74;
        *(v13 + 8) = v80;
        *(v13 + 24) = v76;
        if (v79 == v75)
        {
          v83 = v80 < v77;
        }

        else
        {
          v83 = v79 < v75;
        }

        v58 = v13;
        v76 = v77;
        v74 = v75;
        if (v83)
        {
          goto LABEL_103;
        }

        v76 = v80;
        v74 = v79;
      }

LABEL_104:
      v84 = *v9;
      *v9 = v74;
      *v13 = v84;
      v85 = *(v9 + 8);
      *(v9 + 8) = v76;
      *(v13 + 8) = v85;
      if (a5)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

    v22 = *v9;
    v23 = *v13;
    v24 = *(v9 + 8);
    v25 = *(v13 + 8);
    v26 = *v9 < *v13;
    if (*v9 == *v13)
    {
      v26 = v24 < v25;
    }

    v27 = v15 < v24;
    if (v14 != v22)
    {
      v27 = v14 < v22;
    }

    if (v26)
    {
      if (v27)
      {
        *v13 = v14;
        *(a2 - 2) = v23;
        *(v13 + 8) = v15;
        goto LABEL_61;
      }

      *v13 = v22;
      *v9 = v23;
      *(v13 + 8) = v24;
      *(v9 + 8) = v25;
      v52 = *(a2 - 2);
      v53 = *(a2 - 1);
      v54 = v53 < v25;
      if (v52 != v23)
      {
        v54 = v52 < v23;
      }

      if (v54)
      {
        *v9 = v52;
        *(a2 - 2) = v23;
        *(v9 + 8) = v53;
LABEL_61:
        *(a2 - 1) = v25;
      }

LABEL_62:
      if (a5)
      {
        goto LABEL_108;
      }

      goto LABEL_105;
    }

    if (!v27)
    {
      goto LABEL_62;
    }

    *v9 = v14;
    *(a2 - 2) = v22;
    *(v9 + 8) = v15;
    *(a2 - 1) = v24;
    v32 = *v13;
    v33 = *(v9 + 8);
    v34 = *(v13 + 8);
    v35 = v33 < v34;
    if (*v9 != *v13)
    {
      v35 = *v9 < *v13;
    }

    if (!v35)
    {
      goto LABEL_62;
    }

    *v13 = *v9;
    *v9 = v32;
    *(v13 + 8) = v33;
    *(v9 + 8) = v34;
    if (a5)
    {
      goto LABEL_108;
    }

LABEL_105:
    v86 = *(v9 - 16);
    v119 = v86 == *v9;
    v87 = v86 < *v9;
    if (v119)
    {
      v87 = *(v9 - 8) < *(v9 + 8);
    }

    if (!v87)
    {
      result = sub_3F328(v9, a2);
      v9 = result;
      goto LABEL_115;
    }

LABEL_108:
    v88 = sub_3F478(v9, a2);
    if ((v89 & 1) == 0)
    {
      goto LABEL_113;
    }

    v90 = sub_3F5C8(v9, v88);
    v9 = (v88 + 2);
    result = sub_3F5C8((v88 + 2), a2);
    if (result)
    {
      a4 = -v11;
      a2 = v88;
      if (v90)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v90)
    {
LABEL_113:
      result = sub_3E760(v8, v88, a3, -v11, a5 & 1);
      v9 = (v88 + 2);
LABEL_115:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v118 = (v9 + 16);
  v119 = v9 == a2 || v118 == a2;
  v120 = v119;
  if (a5)
  {
    if ((v120 & 1) == 0)
    {
      v121 = 0;
      v122 = v9;
      do
      {
        v124 = *(v122 + 16);
        v125 = *v122;
        v126 = *(v122 + 24);
        v127 = *(v122 + 8);
        v122 = v118;
        v128 = v126 < v127;
        if (v124 != v125)
        {
          v128 = v124 < v125;
        }

        if (v128)
        {
          v129 = v121;
          do
          {
            v130 = v9 + v129;
            *(v130 + 16) = v125;
            *(v130 + 24) = *(v9 + v129 + 8);
            if (!v129)
            {
              v123 = v9;
              goto LABEL_153;
            }

            v125 = *(v130 - 16);
            v131 = v126 < *(v130 - 8);
            if (v124 != v125)
            {
              v131 = v124 < v125;
            }

            v129 -= 16;
          }

          while (v131);
          v123 = v9 + v129 + 16;
LABEL_153:
          *v123 = v124;
          *(v123 + 8) = v126;
        }

        v118 = (v122 + 16);
        v121 += 16;
      }

      while ((v122 + 16) != a2);
    }
  }

  else if ((v120 & 1) == 0)
  {
    v134 = (v9 + 24);
    do
    {
      v135 = v8[2];
      v136 = *v8;
      v137 = *(v8 + 3);
      v138 = *(v8 + 1);
      v8 = v118;
      v139 = v137 < v138;
      if (v135 != v136)
      {
        v139 = v135 < v136;
      }

      if (v139)
      {
        v140 = v134;
        do
        {
          v141 = v140;
          *(v140 - 1) = v136;
          v142 = *(v140 - 2);
          v140 -= 2;
          *v141 = v142;
          v136 = *(v141 - 5);
          v143 = v137 < *(v141 - 4);
          if (v135 != v136)
          {
            v143 = v135 < v136;
          }
        }

        while (v143);
        *(v140 - 1) = v135;
        *v140 = v137;
      }

      v118 = (v8 + 2);
      v134 += 2;
    }

    while (v8 + 2 != a2);
  }

  return result;
}

unint64_t *sub_3F16C(unint64_t *result, unint64_t *a2, double *a3, double *a4)
{
  v4 = *a2;
  v5 = *result;
  v6 = *(a2 + 1);
  v7 = *(result + 1);
  if (*a2 == *result)
  {
    v8 = v6 < v7;
  }

  else
  {
    v8 = *a2 < *result;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v10 < v6;
  if (*a3 != v4)
  {
    v11 = *a3 < v4;
  }

  if (v8)
  {
    if (v11)
    {
      *result = v9;
      *a3 = v5;
      *(result + 1) = v10;
LABEL_18:
      v6 = v7;
      v4 = v5;
      a3[1] = v7;
      goto LABEL_20;
    }

    *result = v4;
    *a2 = v5;
    *(result + 1) = v6;
    *(a2 + 1) = v7;
    v4 = *a3;
    v6 = a3[1];
    v16 = v6 < v7;
    if (*a3 != v5)
    {
      v16 = *a3 < v5;
    }

    if (v16)
    {
      *a2 = v4;
      *a3 = v5;
      *(a2 + 1) = v6;
      goto LABEL_18;
    }
  }

  else if (v11)
  {
    *a2 = v9;
    *a3 = v4;
    *(a2 + 1) = v10;
    a3[1] = v6;
    v12 = *result;
    v13 = *(a2 + 1);
    v14 = *(result + 1);
    v15 = v13 < v14;
    if (*a2 != *result)
    {
      v15 = *a2 < *result;
    }

    if (v15)
    {
      *result = *a2;
      *a2 = v12;
      *(result + 1) = v13;
      *(a2 + 1) = v14;
      v4 = *a3;
      v6 = a3[1];
    }
  }

  else
  {
    v6 = a3[1];
    v4 = *a3;
  }

LABEL_20:
  v17 = a4[1];
  v18 = v17 < v6;
  if (*a4 != v4)
  {
    v18 = *a4 < v4;
  }

  if (v18)
  {
    *a3 = *a4;
    *a4 = v4;
    a3[1] = v17;
    a4[1] = v6;
    v19 = *a2;
    v20 = a3[1];
    v21 = *(a2 + 1);
    v22 = v20 < v21;
    if (*a3 != *a2)
    {
      v22 = *a3 < *a2;
    }

    if (v22)
    {
      *a2 = *a3;
      *a3 = v19;
      *(a2 + 1) = v20;
      a3[1] = v21;
      v23 = *result;
      v24 = *(a2 + 1);
      v25 = *(result + 1);
      v26 = v24 < v25;
      if (*a2 != *result)
      {
        v26 = *a2 < *result;
      }

      if (v26)
      {
        *result = *a2;
        *a2 = v23;
        *(result + 1) = v24;
        *(a2 + 1) = v25;
      }
    }
  }

  return result;
}

unint64_t *sub_3F328(unint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a2 - 16);
  v5 = *a1 == v4;
  v6 = *a1 < v4;
  if (v5)
  {
    v6 = v3 < *(a2 - 8);
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v7 += 2;
      v9 = v2 < v8;
      if (v2 == v8)
      {
        v9 = v3 < *(v7 + 1);
      }
    }

    while (!v9);
  }

  else
  {
    v10 = a1 + 2;
    do
    {
      v7 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v11 = *v10;
      v12 = v3 < *(v7 + 1);
      v5 = v2 == v11;
      v13 = v2 < v11;
      if (!v5)
      {
        v12 = v13;
      }

      v10 = v7 + 2;
    }

    while (!v12);
  }

  if (v7 < a2)
  {
    do
    {
      v14 = *(a2 - 16);
      a2 -= 16;
      v15 = v2 < v14;
      if (v2 == v14)
      {
        v15 = v3 < *(a2 + 8);
      }
    }

    while (v15);
  }

  if (v7 < a2)
  {
    v16 = *v7;
    v17 = *a2;
    do
    {
      *v7 = v17;
      *a2 = v16;
      v18 = v7[1];
      v7[1] = *(a2 + 8);
      *(a2 + 8) = v18;
      do
      {
        v19 = *(v7 + 2);
        v7 += 2;
        v16 = v19;
        v20 = v3 < *(v7 + 1);
        v21 = v2 < *&v19;
        if (v2 != *&v19)
        {
          v20 = v21;
        }
      }

      while (!v20);
      do
      {
        v22 = *(a2 - 16);
        a2 -= 16;
        v17 = v22;
        v23 = v3 < *(a2 + 8);
        v24 = v2 < v22;
        if (v2 != v22)
        {
          v23 = v24;
        }
      }

      while (v23);
    }

    while (v7 < a2);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 2);
    a1[1] = *(v7 - 1);
  }

  *(v7 - 2) = v2;
  *(v7 - 1) = v3;
  return v7;
}

double *sub_3F478(double *a1, double *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  do
  {
    v5 = *&a1[v2 + 2];
    v6 = a1[v2 + 3] < v4;
    if (v5 != v3)
    {
      v6 = v5 < v3;
    }

    v2 += 2;
  }

  while (v6);
  v7 = &a1[v2];
  if (v2 == 2)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      v10 = *(a2 - 2);
      a2 -= 2;
      v11 = v10 < v3;
      if (v10 == v3)
      {
        v11 = a2[1] < v4;
      }
    }

    while (!v11);
  }

  else
  {
    do
    {
      v8 = *(a2 - 2);
      a2 -= 2;
      v9 = v8 < v3;
      if (v8 == v3)
      {
        v9 = a2[1] < v4;
      }
    }

    while (!v9);
  }

  if (v7 >= a2)
  {
    v13 = v7;
    v22 = v7 - 2;
    if (v7 - 2 == a1)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v12 = *a2;
  v13 = v7;
  v14 = a2;
  do
  {
    *v13 = v12;
    *v14 = v5;
    v15 = *(v13 + 1);
    v13[1] = v14[1];
    *(v14 + 1) = v15;
    do
    {
      v16 = *(v13 + 2);
      v13 += 2;
      v5 = v16;
      v17 = v13[1] < v4;
      v18 = v16 < v3;
      if (v16 != v3)
      {
        v17 = v18;
      }
    }

    while (v17);
    do
    {
      v19 = *(v14 - 2);
      v14 -= 2;
      v12 = v19;
      v20 = v14[1] < v4;
      v21 = *&v19 < v3;
      if (*&v19 != v3)
      {
        v20 = v21;
      }
    }

    while (!v20);
  }

  while (v13 < v14);
  v22 = v13 - 2;
  if (v13 - 2 != a1)
  {
LABEL_25:
    *a1 = *(v13 - 2);
    a1[1] = *(v13 - 1);
  }

LABEL_26:
  *(v13 - 2) = v3;
  *(v13 - 1) = v4;
  return v22;
}

BOOL sub_3F5C8(uint64_t a1, uint64_t *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v27 = *(a1 + 16);
      v28 = *a1;
      v29 = *(a1 + 24);
      v30 = *(a1 + 8);
      if (v27 == *a1)
      {
        v31 = v29 < v30;
      }

      else
      {
        v31 = v27 < *a1;
      }

      v32 = *(a2 - 2);
      v33 = *(a2 - 1);
      v34 = v33 < v29;
      if (v32 != v27)
      {
        v34 = v32 < v27;
      }

      if (v31)
      {
        if (v34)
        {
          *a1 = v32;
          *(a2 - 2) = v28;
          *(a1 + 8) = v33;
          result = 1;
          *(a2 - 1) = v30;
          return result;
        }

        *a1 = v27;
        *(a1 + 16) = v28;
        *(a1 + 8) = v29;
        *(a1 + 24) = v30;
        v65 = *(a2 - 2);
        v66 = *(a2 - 1);
        v67 = v66 < v30;
        if (v65 != v28)
        {
          v67 = v65 < v28;
        }

        if (v67)
        {
          *(a1 + 16) = v65;
          *(a2 - 2) = v28;
          *(a1 + 24) = v66;
          result = 1;
          *(a2 - 1) = v30;
          return result;
        }
      }

      else if (v34)
      {
        *(a1 + 16) = v32;
        *(a2 - 2) = v27;
        *(a1 + 24) = v33;
        *(a2 - 1) = v29;
        v48 = *(a1 + 16);
        v49 = *a1;
        v50 = *(a1 + 24);
        v51 = *(a1 + 8);
        v52 = v50 < v51;
        if (v48 != *a1)
        {
          v52 = v48 < *a1;
        }

        if (v52)
        {
          *a1 = v48;
          *(a1 + 16) = v49;
          *(a1 + 8) = v50;
          *(a1 + 24) = v51;
        }
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        sub_3F16C(a1, (a1 + 16), (a1 + 32), (a1 + 48));
        v11 = *(a2 - 2);
        v12 = *(a1 + 48);
        v13 = *(a2 - 1);
        v14 = *(a1 + 56);
        v15 = v13 < v14;
        if (v11 != v12)
        {
          v15 = v11 < v12;
        }

        if (v15)
        {
          *(a1 + 48) = v11;
          *(a2 - 2) = v12;
          *(a1 + 56) = v13;
          *(a2 - 1) = v14;
          v16 = *(a1 + 48);
          v17 = *(a1 + 32);
          v18 = *(a1 + 56);
          v19 = *(a1 + 40);
          v20 = v18 < v19;
          if (v16 != v17)
          {
            v20 = v16 < v17;
          }

          if (v20)
          {
            *(a1 + 32) = v16;
            *(a1 + 48) = v17;
            *(a1 + 40) = v18;
            *(a1 + 56) = v19;
            v21 = *(a1 + 16);
            v22 = *(a1 + 24);
            v23 = v18 < v22;
            if (v16 != v21)
            {
              v23 = v16 < v21;
            }

            if (v23)
            {
              *(a1 + 16) = v16;
              *(a1 + 32) = v21;
              *(a1 + 24) = v18;
              *(a1 + 40) = v22;
              v24 = *a1;
              v25 = *(a1 + 8);
              v26 = v18 < v25;
              if (v16 != *a1)
              {
                v26 = v16 < *a1;
              }

              if (v26)
              {
                *a1 = v16;
                *(a1 + 16) = v24;
                *(a1 + 8) = v18;
                result = 1;
                *(a1 + 24) = v25;
                return result;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_32;
    }

    sub_3F16C(a1, (a1 + 16), (a1 + 32), a2 - 2);
    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 2);
    v4 = *a1;
    v5 = *(a2 - 1);
    v6 = *(a1 + 8);
    v7 = v5 < v6;
    if (v3 != *a1)
    {
      v7 = v3 < *a1;
    }

    if (v7)
    {
      *a1 = v3;
      *(a2 - 2) = v4;
      *(a1 + 8) = v5;
      result = 1;
      *(a2 - 1) = v6;
      return result;
    }

    return 1;
  }

LABEL_32:
  v35 = (a1 + 32);
  v36 = *(a1 + 32);
  v37 = (a1 + 16);
  v38 = *(a1 + 16);
  v39 = *a1;
  v40 = (a1 + 24);
  v41 = *(a1 + 24);
  v42 = (a1 + 8);
  v43 = *(a1 + 8);
  v44 = v38 < *a1;
  v45 = *(a1 + 40);
  if (v38 == *a1)
  {
    v44 = v41 < v43;
  }

  v46 = v45 < v41;
  if (v36 != v38)
  {
    v46 = v36 < v38;
  }

  if (v44)
  {
    if (v46)
    {
      v47 = a1;
      v37 = (a1 + 32);
      v40 = (a1 + 40);
LABEL_49:
      *v47 = v36;
      *v37 = v39;
      *v42 = v45;
      *v40 = v43;
      goto LABEL_50;
    }

    *a1 = v38;
    *(a1 + 16) = v39;
    if (v36 == v39)
    {
      v68 = v45 < v43;
    }

    else
    {
      v68 = v36 < v39;
    }

    v47 = (a1 + 16);
    *(a1 + 8) = v41;
    *(a1 + 24) = v43;
    v37 = (a1 + 32);
    v42 = (a1 + 24);
    v40 = (a1 + 40);
    if (v68)
    {
      goto LABEL_49;
    }
  }

  else if (v46)
  {
    *v37 = v36;
    *v35 = v38;
    *v40 = v45;
    *(a1 + 40) = v41;
    v53 = v45 < v43;
    if (v36 != v39)
    {
      v53 = v36 < v39;
    }

    v47 = a1;
    if (v53)
    {
      goto LABEL_49;
    }
  }

LABEL_50:
  v54 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v57 = *v54;
    v58 = *v35;
    v59 = *(v54 + 1);
    v60 = v59 < *(v35 + 1);
    if (*v54 != v58)
    {
      v60 = *v54 < v58;
    }

    if (v60)
    {
      break;
    }

LABEL_63:
    v35 = v54;
    v55 += 16;
    v54 += 2;
    if (v54 == a2)
    {
      return 1;
    }
  }

  v61 = v55;
  do
  {
    v62 = a1 + v61;
    *(v62 + 48) = v58;
    *(v62 + 56) = *(a1 + v61 + 40);
    if (v61 == -32)
    {
      *a1 = v57;
      *(a1 + 8) = v59;
      if (++v56 != 8)
      {
        goto LABEL_63;
      }

      return v54 + 2 == a2;
    }

    v58 = *(v62 + 16);
    v63 = v59 < *(v62 + 24);
    if (v57 != v58)
    {
      v63 = v57 < v58;
    }

    v61 -= 16;
  }

  while (v63);
  v64 = a1 + v61;
  *(v64 + 48) = v57;
  *(v64 + 56) = v59;
  if (++v56 != 8)
  {
    goto LABEL_63;
  }

  return v54 + 2 == a2;
}

uint64_t *sub_3FA6C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v5 = a2;
    v7 = a2 - a1;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v10 = (v8 - 2) >> 1;
      v11 = v10 + 1;
      v12 = (a1 + 16 * v10);
      do
      {
        sub_3FE50(a1, a4, v8, v12);
        v12 -= 2;
        --v11;
      }

      while (v11);
    }

    v13 = v5;
    if (v5 != a3)
    {
      if (v8 >= 2)
      {
        v13 = v5;
        do
        {
          v19 = *v13;
          v20 = *(v13 + 1);
          v21 = *(a1 + 8);
          v22 = v20 < v21;
          if (*v13 != *a1)
          {
            v22 = *v13 < *a1;
          }

          if (v22)
          {
            *v13 = *a1;
            *a1 = v19;
            *(v13 + 1) = v21;
            *(a1 + 8) = v20;
            v23 = *(a1 + 16);
            if (v7 == 32)
            {
              v24 = a1 + 16;
              v25 = 1;
            }

            else
            {
              v26 = *(a1 + 32);
              v27 = *(a1 + 24) < *(a1 + 40);
              if (v23 != v26)
              {
                v27 = v23 < v26;
              }

              if (v27)
              {
                v23 = *(a1 + 32);
                v24 = a1 + 32;
              }

              else
              {
                v24 = a1 + 16;
              }

              if (v27)
              {
                v25 = 2;
              }

              else
              {
                v25 = 1;
              }
            }

            v28 = *(v24 + 8);
            v29 = v28 < v20;
            if (v23 != v19)
            {
              v29 = v23 < v19;
            }

            if (!v29)
            {
              v30 = a1;
              do
              {
                *v30 = v23;
                *(v30 + 8) = v28;
                v30 = v24;
                if (((v8 - 2) >> 1) < v25)
                {
                  break;
                }

                v33 = (2 * v25) | 1;
                v24 = a1 + 16 * v33;
                v25 = 2 * v25 + 2;
                if (v25 < v8)
                {
                  v23 = *(v24 + 16);
                  v31 = *(v24 + 8) < *(v24 + 24);
                  if (*v24 != v23)
                  {
                    v31 = *v24 < v23;
                  }

                  if (v31)
                  {
                    v24 += 16;
                  }

                  else
                  {
                    v23 = *v24;
                  }

                  if (!v31)
                  {
                    v25 = v33;
                  }
                }

                else
                {
                  v23 = *v24;
                  v25 = v33;
                }

                v28 = *(v24 + 8);
                v32 = v28 < v20;
                if (v23 != v19)
                {
                  v32 = v23 < v19;
                }
              }

              while (!v32);
              *v30 = v19;
              *(v30 + 8) = v20;
            }
          }

          v13 += 2;
        }

        while (v13 != a3);
      }

      else
      {
        v14 = *a1;
        v15 = *(a1 + 8);
        v13 = v5;
        do
        {
          v16 = *v13;
          v17 = *(v13 + 1);
          v18 = v17 < v15;
          if (*v13 != v14)
          {
            v18 = *v13 < v14;
          }

          if (v18)
          {
            *v13 = v14;
            *a1 = v16;
            *(v13 + 1) = v15;
            v14 = v16;
            v15 = v17;
            *(a1 + 8) = v17;
          }

          v13 += 2;
        }

        while (v13 != a3);
      }
    }

    if (v8 < 2)
    {
      return v13;
    }

    while (1)
    {
      v36 = 0;
      v37 = *a1;
      v38 = *(a1 + 8);
      v39 = (v8 - 2) >> 1;
      v40 = a1;
      do
      {
        while (1)
        {
          v48 = &v40[2 * v36];
          v47 = v48 + 2;
          v49 = (2 * v36) | 1;
          v36 = 2 * v36 + 2;
          if (v36 < v8)
          {
            break;
          }

          v36 = v49;
          *v40 = *v47;
          v40[1] = v48[3];
          v40 = v48 + 2;
          if (v49 > v39)
          {
            goto LABEL_63;
          }
        }

        v43 = v48[4];
        v41 = (v48 + 4);
        v42 = v43;
        v44 = *(v41 - 2);
        v45 = *(v41 - 1) < v41[1];
        v46 = v44 < v43;
        if (v44 != v43)
        {
          v45 = v46;
        }

        if (v45)
        {
          v47 = v41;
        }

        else
        {
          v42 = *(v41 - 2);
        }

        if (!v45)
        {
          v36 = v49;
        }

        *v40 = v42;
        v40[1] = v47[1];
        v40 = v47;
      }

      while (v36 <= v39);
LABEL_63:
      if (v47 == (v5 - 2))
      {
        *v47 = v37;
      }

      else
      {
        *v47 = *(v5 - 2);
        v47[1] = *(v5 - 1);
        *(v5 - 2) = v37;
        *(v5 - 1) = v38;
        v50 = (v47 - a1 + 16) >> 4;
        v35 = v50 < 2;
        v51 = v50 - 2;
        if (v35)
        {
          goto LABEL_51;
        }

        v52 = v51 >> 1;
        v53 = a1 + 16 * v52;
        v54 = *v53;
        v55 = *v47;
        v56 = *(v53 + 8);
        v38 = *(v47 + 1);
        v57 = v56 < v38;
        if (*v53 != *v47)
        {
          v57 = *v53 < *v47;
        }

        if (!v57)
        {
          goto LABEL_51;
        }

        do
        {
          *v47 = v54;
          *(v47 + 1) = v56;
          v47 = v53;
          if (!v52)
          {
            break;
          }

          v52 = (v52 - 1) >> 1;
          v53 = a1 + 16 * v52;
          v54 = *v53;
          v56 = *(v53 + 8);
          v58 = v56 < v38;
          if (*v53 != v55)
          {
            v58 = *v53 < v55;
          }
        }

        while (v58);
        *v47 = v55;
      }

      *(v47 + 1) = v38;
LABEL_51:
      v5 -= 2;
      v35 = v8-- <= 2;
      if (v35)
      {
        return v13;
      }
    }
  }

  return a3;
}

uint64_t sub_3FE50(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = v8[2];
        v11 = *(v8 + 1) < *(v8 + 3);
        if (*v8 != v10)
        {
          v11 = *v8 < v10;
        }

        if (v11)
        {
          v8 += 2;
        }

        else
        {
          v10 = *v8;
        }

        if (v11)
        {
          v7 = v9;
        }
      }

      v12 = *a4;
      v13 = *(v8 + 1);
      v14 = *(a4 + 1);
      v15 = v13 < v14;
      if (v10 != *a4)
      {
        v15 = v10 < *a4;
      }

      if (!v15)
      {
        do
        {
          *a4 = v10;
          *(a4 + 1) = v13;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v18 = (2 * v7) | 1;
          v8 = (result + 16 * v18);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v10 = v8[2];
            v16 = *(v8 + 1) < *(v8 + 3);
            if (*v8 != v10)
            {
              v16 = *v8 < v10;
            }

            if (v16)
            {
              v8 += 2;
            }

            else
            {
              v10 = *v8;
            }

            if (!v16)
            {
              v7 = v18;
            }
          }

          else
          {
            v10 = *v8;
            v7 = v18;
          }

          v13 = *(v8 + 1);
          v17 = v13 < v14;
          if (v10 != v12)
          {
            v17 = v10 < v12;
          }
        }

        while (!v17);
        *a4 = v12;
        *(a4 + 1) = v14;
      }
    }
  }

  return result;
}

void sub_3FF88(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, void *a4@<X3>, void *a5@<X8>, double a6@<D0>)
{
  v12 = *a1;
  v11 = a1[1];
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v13 = v11 - v12;
  if (v13)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v14 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  if (v14 >= 3)
  {
    sub_427F4(&v73, v14 - 2);
    v23 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) - 1;
    if (v23 <= 1)
    {
      v24 = 1;
    }

    else
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) - 1;
    }

    if (v23 >= 2)
    {
      v25 = 1;
      v26 = 24;
      do
      {
        if (a4[1] > v25 && ((*(*a4 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) != 0)
        {
          v27 = 1.79769313e308;
        }

        else
        {
          v27 = sub_42250(*a1 + v26 - 24, *a1 + v26 - 12, *a1 + v26, a3, v15, v16, *&v17, *&v18, *&v19, v20, v21, v22);
        }

        v28 = v25 - 1;
        *&v71 = v25 - 1;
        *(&v71 + 1) = v25;
        *&v72 = v25 + 1;
        *(&v72 + 1) = v27;
        *&v15 = sub_404CC(&v73, v25 - 1, &v71).n128_u64[0];
        v26 += 12;
        ++v25;
      }

      while (v28 + 2 != v24);
    }

    if (v77)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
      do
      {
        v31 = v73;
        v32 = v73 + 8;
        v33 = *(v73 + 1);
        v34 = *(v73 + 2);
        v35 = *(v73 + 3);
        v36 = *(v73 + 4);
        *(__p + *v73) = -1;
        v37 = --v77;
        if (v77)
        {
          v38 = &v31[10 * v37];
          v39 = *v38;
          *v31 = v39;
          v17 = *(v38 + 6);
          *v32 = *(v38 + 2);
          v32[1] = v17;
          *(__p + v39) = 0;
          v40 = v77;
          if (v77 >= 2)
          {
            v41 = 0;
            v42 = 0;
            v43 = 1;
            do
            {
              v44 = v41 + 5;
              if (v44 >= v40)
              {
                v45 = v40;
              }

              else
              {
                v45 = v44;
              }

              if (v44 <= v43)
              {
                break;
              }

              v46 = v42;
              v47 = &v31[10 * v42];
              v48 = *(v47 + 2);
              v49 = *(v47 + 4);
              v50 = &v31[10 * v43 + 8];
              v42 = -1;
              do
              {
                *&v17 = *v50;
                v51 = *(v50 - 2) > v48;
                if (*v50 != v49)
                {
                  v51 = *v50 < v49;
                }

                if (v51)
                {
                  v49 = *v50;
                  v48 = *(v50 - 2);
                  v42 = v43;
                }

                ++v43;
                v50 += 5;
              }

              while (v43 < v45);
              if (v42 >= v40)
              {
                break;
              }

              v52 = &v31[10 * v42];
              v53 = 10 * v46;
              v54 = &v31[v53];
              v55 = *v52;
              *v52 = *v54;
              *v54 = v55;
              v56 = *(v52 + 6);
              v17 = *(v52 + 2);
              v18 = *(v54 + 6);
              v19 = *(v54 + 2);
              *(v52 + 2) = v19;
              *(v52 + 6) = v18;
              *(v54 + 2) = v17;
              *(v54 + 6) = v56;
              v31 = v73;
              v57 = __p;
              v58 = *(v73 + 10 * v42);
              v59 = *(v73 + v53 * 4);
              v60 = *(__p + v58);
              *(__p + v58) = *(__p + v59);
              v57[v59] = v60;
              v41 = 4 * v42;
              v43 = (4 * v42) | 1;
              v40 = v77;
            }

            while (v43 < v77);
          }
        }

        v74 -= 40;
        if (v36 > a6 && v29 <= a2)
        {
          break;
        }

        *((v34 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v34);
        if (v33)
        {
          v62 = v73 + 40 * *(__p + (v33 - 1));
          v63 = *(v62 + 8);
          v64 = *(v62 + 24);
          v71 = v63;
          *(&v72 + 1) = *(&v64 + 1);
          *&v72 = v35;
          if (a4[1] > *(&v63 + 1) && ((*(*a4 + ((*(&v71 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE8(v71)) & 1) != 0)
          {
            v65 = 1.79769313e308;
          }

          else
          {
            v65 = sub_42250(*a1 + 12 * v71, *a1 + 12 * *(&v71 + 1), *a1 + 12 * v35, a3, *&v63, *&v64, *&v17, *&v18, *&v19, v20, v21, v22);
          }

          *(&v72 + 1) = v65;
          sub_404CC(&v73, v33 - 1, &v71);
        }

        v66 = *a1;
        if (v35 + 1 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2))
        {
          v67 = v73 + 40 * *(__p + (v35 - 1));
          v68 = *(v67 + 24);
          v69 = *(v67 + 8);
          *(&v71 + 1) = *(v67 + 2);
          v72 = v68;
          *&v71 = v33;
          if (a4[1] > *(&v71 + 1) && ((*(*a4 + ((*(&v71 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE8(v71)) & 1) != 0)
          {
            v30 = 1.79769313e308;
          }

          else
          {
            v30 = sub_42250(v66 + 12 * v33, v66 + 12 * *(&v71 + 1), v66 + 12 * v68, a3, *&v68, *&v69, *&v17, *&v18, *&v19, v20, v21, v22);
          }

          *(&v72 + 1) = v30;
          sub_404CC(&v73, v35 - 1, &v71);
        }

        --v29;
      }

      while (v77);
    }

    if (__p)
    {
      v76 = __p;
      operator delete(__p);
    }

    if (v73)
    {
      v74 = v73;
      operator delete(v73);
    }
  }
}

void sub_4049C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_404CC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (a2 >= ((*(a1 + 32) - v3) >> 2) || (v4 = *(v3 + 4 * a2), v4 == -1))
  {
    result.n128_u64[0] = sub_429A8(a1, a2, a3).n128_u64[0];
  }

  else
  {
    v5 = *a1 + 40 * v4;
    v6 = *(v5 + 16);
    result.n128_u64[0] = *(v5 + 32);
    v8 = *(a3 + 16);
    *(v5 + 8) = *a3;
    *(v5 + 24) = v8;
    v9 = *(a3 + 24);
    v10 = *(a3 + 8) > v6;
    if (v9 != result.n128_f64[0])
    {
      v10 = v9 < result.n128_f64[0];
    }

    if (v10)
    {
      if (v4)
      {
        v11 = *a1;
        do
        {
          v12 = v4 - 1;
          v13 = (v4 - 1) >> 2;
          v14 = (v11 + 40 * v13);
          v15 = (v11 + 40 * v4);
          result.n128_u64[0] = *(v14 + 4);
          v16 = *(v15 + 4);
          v17 = *(v14 + 2) > *(v15 + 2);
          if (result.n128_f64[0] != v16)
          {
            v17 = result.n128_f64[0] < v16;
          }

          if (v17)
          {
            break;
          }

          v18 = *v15;
          *v15 = *v14;
          *v14 = v18;
          result = *(v15 + 6);
          v19 = *(v15 + 2);
          v20 = *(v14 + 6);
          *(v15 + 2) = *(v14 + 2);
          *(v15 + 6) = v20;
          *(v14 + 2) = v19;
          *(v14 + 6) = result;
          v11 = *a1;
          v21 = *(*a1 + 40 * v4);
          v22 = *(a1 + 24);
          v23 = *(*a1 + 40 * v13);
          v24 = *(v22 + 4 * v21);
          *(v22 + 4 * v21) = *(v22 + 4 * v23);
          *(v22 + 4 * v23) = v24;
          v4 = v12 >> 2;
        }

        while (v12 >= 4);
      }
    }

    else
    {
      v25 = (4 * v4) | 1;
      v26 = *(a1 + 48);
      if (v25 < v26)
      {
        v27 = 4 * v4;
        do
        {
          v28 = v27 + 5;
          if (v28 >= v26)
          {
            v29 = v26;
          }

          else
          {
            v29 = v28;
          }

          if (v28 <= v25)
          {
            break;
          }

          v30 = *a1;
          v31 = v4;
          v32 = *a1 + 40 * v4;
          v33 = *(v32 + 16);
          result.n128_u64[0] = *(v32 + 32);
          v34 = (*a1 + 40 * v25 + 32);
          v4 = -1;
          do
          {
            v35 = *(v34 - 2) > v33;
            if (*v34 != result.n128_f64[0])
            {
              v35 = *v34 < result.n128_f64[0];
            }

            if (v35)
            {
              result.n128_f64[0] = *v34;
              v33 = *(v34 - 2);
              v4 = v25;
            }

            ++v25;
            v34 += 5;
          }

          while (v25 < v29);
          if (v4 >= v26)
          {
            break;
          }

          v36 = (v30 + 40 * v4);
          v37 = 40 * v31;
          v38 = (v30 + v37);
          v39 = *v36;
          *v36 = *v38;
          *v38 = v39;
          result = *(v36 + 6);
          v40 = *(v36 + 2);
          v41 = *(v38 + 6);
          *(v36 + 2) = *(v38 + 2);
          *(v36 + 6) = v41;
          *(v38 + 2) = v40;
          *(v38 + 6) = result;
          v42 = *(*a1 + 40 * v4);
          v43 = *(a1 + 24);
          v44 = *(*a1 + v37);
          LODWORD(v37) = *(v43 + 4 * v42);
          *(v43 + 4 * v42) = *(v43 + 4 * v44);
          *(v43 + 4 * v44) = v37;
          v27 = 4 * v4;
          v25 = (4 * v4) | 1;
          v26 = *(a1 + 48);
        }

        while (v25 < v26);
      }
    }
  }

  return result;
}

void sub_40704(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X3>, void *a4@<X8>, double a5@<D0>)
{
  v11 = *a1;
  v10 = a1[1];
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  if (v10 != v11)
  {
    if ((((v10 - v11) >> 4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a1[1] - *a1;
  if ((v12 >> 4) >= 3)
  {
    sub_427F4(&v74, (v12 >> 4) - 2);
    v13 = ((a1[1] - *a1) >> 4) - 1;
    if (v13 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = ((a1[1] - *a1) >> 4) - 1;
    }

    if (v13 >= 2)
    {
      v15 = 0;
      do
      {
        if (a3[1] > (v15 + 1) && ((*(*a3 + (((v15 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 + 1)) & 1) != 0)
        {
          v16 = 1.79769313e308;
        }

        else
        {
          v17 = (*a1 + 16 * v15);
          v18 = vsubq_f64(v17[2], *v17);
          v19 = vmulq_f64(vsubq_f64(v17[1], *v17), vextq_s8(v18, v18, 8uLL));
          v16 = fabs(vsubq_f64(v19, vdupq_laneq_s64(v19, 1)).f64[0]) * 0.5;
        }

        v20 = v15;
        *&v72 = v15;
        *(&v72 + 1) = v15 + 1;
        *&v73 = v15 + 2;
        *(&v73 + 1) = v16;
        sub_404CC(&v74, v15++, &v72);
      }

      while (v20 + 2 != v14);
    }

    if (v78)
    {
      v21 = (a1[1] - *a1) >> 4;
      do
      {
        v27 = v74;
        v28 = v74 + 8;
        v29 = *(v74 + 1);
        v30 = *(v74 + 2);
        v31 = *(v74 + 3);
        v32 = *(v74 + 4);
        *(__p + *v74) = -1;
        v33 = --v78;
        if (v78)
        {
          v34 = &v27[10 * v33];
          v35 = *v34;
          *v27 = v35;
          v36 = *(v34 + 6);
          *v28 = *(v34 + 2);
          v28[1] = v36;
          *(__p + v35) = 0;
          v37 = v78;
          if (v78 >= 2)
          {
            v38 = 0;
            v39 = 0;
            v40 = 1;
            do
            {
              v41 = v38 + 5;
              if (v41 >= v37)
              {
                v42 = v37;
              }

              else
              {
                v42 = v41;
              }

              if (v41 <= v40)
              {
                break;
              }

              v43 = v39;
              v44 = &v27[10 * v39];
              v45 = *(v44 + 2);
              v46 = *(v44 + 4);
              v47 = &v27[10 * v40 + 8];
              v39 = -1;
              do
              {
                v48 = *(v47 - 2) > v45;
                if (*v47 != v46)
                {
                  v48 = *v47 < v46;
                }

                if (v48)
                {
                  v46 = *v47;
                  v45 = *(v47 - 2);
                  v39 = v40;
                }

                ++v40;
                v47 += 5;
              }

              while (v40 < v42);
              if (v39 >= v37)
              {
                break;
              }

              v49 = &v27[10 * v39];
              v50 = 10 * v43;
              v51 = &v27[v50];
              v52 = *v49;
              *v49 = *v51;
              *v51 = v52;
              v53 = *(v49 + 6);
              v54 = *(v49 + 2);
              v55 = *(v51 + 6);
              *(v49 + 2) = *(v51 + 2);
              *(v49 + 6) = v55;
              *(v51 + 2) = v54;
              *(v51 + 6) = v53;
              v27 = v74;
              v56 = __p;
              v57 = *(v74 + 10 * v39);
              v58 = *(v74 + v50 * 4);
              v59 = *(__p + v57);
              *(__p + v57) = *(__p + v58);
              v56[v58] = v59;
              v38 = 4 * v39;
              v40 = (4 * v39) | 1;
              v37 = v78;
            }

            while (v40 < v78);
          }
        }

        v75 -= 40;
        if (v32 > a5 && v21 <= a2)
        {
          break;
        }

        *((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) &= ~(1 << v30);
        if (v29)
        {
          v61 = v74 + 40 * *(__p + (v29 - 1));
          v62 = *(v61 + 24);
          v72 = *(v61 + 8);
          *(&v73 + 1) = *(&v62 + 1);
          *&v73 = v31;
          if (a3[1] > *(&v72 + 1) && ((*(*a3 + ((*(&v72 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE8(v72)) & 1) != 0)
          {
            v63 = 1.79769313e308;
          }

          else
          {
            v64 = *(*a1 + 16 * v72);
            v65 = vsubq_f64(*(*a1 + 16 * *(&v72 + 1)), v64);
            v66 = vsubq_f64(*(*a1 + 16 * v31), v64);
            v67 = vmulq_f64(v65, vextq_s8(v66, v66, 8uLL));
            v63 = fabs(vsubq_f64(v67, vdupq_laneq_s64(v67, 1)).f64[0]) * 0.5;
          }

          *(&v73 + 1) = v63;
          sub_404CC(&v74, v29 - 1, &v72);
        }

        v68 = *a1;
        if (v31 + 1 < ((a1[1] - *a1) >> 4))
        {
          v69 = v74 + 40 * *(__p + (v31 - 1));
          v70 = *(v69 + 24);
          *(&v72 + 1) = *(v69 + 2);
          v73 = v70;
          *&v72 = v29;
          v71 = v70;
          if (a3[1] > *(&v72 + 1) && ((*(*a3 + ((*(&v72 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SBYTE8(v72)) & 1) != 0)
          {
            v26 = 1.79769313e308;
          }

          else
          {
            v22 = *(v68 + 16 * v29);
            v23 = vsubq_f64(*(v68 + 16 * *(&v72 + 1)), v22);
            v24 = vsubq_f64(*(v68 + 16 * v71), v22);
            v25 = vmulq_f64(v23, vextq_s8(v24, v24, 8uLL));
            v26 = fabs(vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0]) * 0.5;
          }

          *(&v73 + 1) = v26;
          sub_404CC(&v74, v31 - 1, &v72);
        }

        --v21;
      }

      while (v78);
    }

    if (__p)
    {
      v77 = __p;
      operator delete(__p);
    }

    if (v74)
    {
      v75 = v74;
      operator delete(v74);
    }
  }
}

void sub_40C1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_40C4C(__int128 *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v4 - v3 >= 0)
  {
    operator new();
  }

  sub_1794();
}

void sub_411EC(_Unwind_Exception *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_42728(va);
  if (*a3)
  {
    operator delete(*a3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_41224(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 12 * a2;
}

void sub_41360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_41440(void *a1, unint64_t a2)
{
  if (a1[1] <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, a1[1]);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 8 * (a2 >> 6);
}

void sub_41560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_41640(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1] - *a1;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (((v2 >> 4) & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_1794();
}

void sub_41B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_42728(va);
  if (*v3)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_41BB8(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 4)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 4);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 16 * a2;
}

void sub_41CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_41DB4(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  if (a4 == 2)
  {

    sub_3FF88(a1, a2, a3, a5, a6, a7);
  }

  else
  {
    if (a4 == 1)
    {

      sub_40C4C(a1, a6);
    }

    if (a4)
    {
      *a6 = 0;
      a6[1] = 0;
      a6[2] = 0;
    }

    else
    {
      v8 = *a1;
      v7 = a1[1];
      a6[1] = 0;
      a6[2] = 0;
      *a6 = 0;
      v9 = v7 - v8;
      if (v9)
      {
        if ((v9 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }
  }
}

void sub_41F0C(uint64_t *a1@<X0>, unint64_t a2@<X1>, int a3@<W3>, void *a4@<X4>, void *a5@<X8>, double a6@<D0>)
{
  if (a3 == 2)
  {

    sub_40704(a1, a2, a4, a5, a6);
  }

  else
  {
    if (a3 == 1)
    {

      sub_41640(a1, a5);
    }

    if (a3)
    {
      *a5 = 0;
      a5[1] = 0;
      a5[2] = 0;
    }

    else
    {
      v7 = *a1;
      v6 = a1[1];
      a5[1] = 0;
      a5[2] = 0;
      *a5 = 0;
      if (v6 != v7)
      {
        if ((((v6 - v7) >> 4) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_1794();
      }
    }
  }
}

void sub_42058(uint64_t *a1, unint64_t a2, int a3, int a4, void *a5, double a6)
{
  sub_41DB4(a1, a2, a3, a4, a5, &__p, a6);
  v7 = *a1;
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  if (a1[1] == *a1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if ((*(__p + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        v12 = (*a1 + v9);
        v13 = *a1 + 12 * v10++;
        v14 = *v12;
        *(v13 + 8) = *(v12 + 2);
        *v13 = v14;
      }

      ++v11;
      v9 += 12;
    }

    while (v8 != v11);
    v7 = *a1;
    v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
    if (v10 > v8)
    {
      sub_38004(a1, v10 - v8);
      goto LABEL_11;
    }
  }

  if (v8 > v10)
  {
    a1[1] = v7 + 12 * v10;
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_42154(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4216C(uint64_t *a1, unint64_t a2, double a3, uint64_t a4, int a5, void *a6)
{
  sub_41F0C(a1, a2, a5, a6, &__p, a3);
  v7 = *a1;
  v8 = (a1[1] - *a1) >> 4;
  if (a1[1] == *a1)
  {
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if ((*(__p + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
      {
        *(*a1 + 16 * v10++) = *(*a1 + v9);
      }

      ++v11;
      v9 += 16;
    }

    while (v8 != v11);
    v7 = *a1;
    v8 = (a1[1] - *a1) >> 4;
    if (v10 > v8)
    {
      sub_42E18(a1, v10 - v8);
      goto LABEL_11;
    }
  }

  if (v8 > v10)
  {
    a1[1] = v7 + 16 * v10;
  }

LABEL_11:
  if (__p)
  {
    operator delete(__p);
  }
}

void sub_42238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_42250(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (!a4 || (v12 = *(a1 + 8), v12 == 0x7FFFFFFF) || (v13 = *(a2 + 8), v13 == 0x7FFFFFFF) || (v14 = *(a3 + 8), v14 == 0x7FFFFFFF))
  {
    v15.i64[0] = *a1;
    v15.i64[1] = HIDWORD(*a1);
    v16 = vcvtq_f64_u64(v15);
    v15.i64[0] = *a2;
    v15.i64[1] = HIDWORD(*a2);
    v17 = vcvtq_f64_u64(v15);
    v15.i64[0] = *a3;
    v15.i64[1] = HIDWORD(*a3);
    v18 = vsubq_f64(v17, v16);
    v19 = vsubq_f64(vcvtq_f64_u64(v15), v16);
    v20 = vmulq_f64(v18, vextq_s8(v19, v19, 8uLL));
    return fabs(vsubq_f64(v20, vdupq_laneq_s64(v20, 1)).f64[0]) * 0.5;
  }

  else
  {
    LODWORD(a5) = *a1;
    LODWORD(a6) = *(a1 + 4);
    v22 = *&a5;
    v23 = *&a6;
    LODWORD(a8) = *a2;
    LODWORD(a9) = *(a2 + 4);
    LODWORD(a11) = *a3;
    LODWORD(a12) = *(a3 + 4);
    v24 = *&a8 - v22;
    v25 = *&a9 - v23;
    v26 = v13 - v12;
    v27 = *&a11 - v22;
    v28 = *&a12 - v23;
    v29 = v14 - v12;
    return fabs(sqrt((v24 * v28 - v25 * v27) * (v24 * v28 - v25 * v27) + (v26 * v27 - v29 * v24) * (v26 * v27 - v29 * v24) + (v29 * v25 - v26 * v28) * (v29 * v25 - v26 * v28))) * 0.5;
  }
}

void *sub_42360(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_426D0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_42728(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 256;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_427F4(uint64_t a1, unsigned int a2)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_428E0((a1 + 24), a2);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) <= 0x7E)
  {
    operator new();
  }

  return a1;
}

void sub_428BC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  sub_21E0CA4(v1);
  _Unwind_Resume(a1);
}

void *sub_428E0(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

__n128 sub_429A8(uint64_t a1, unsigned int a2, __int128 *a3)
{
  v6 = a2;
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v7 = a1 + 24;
  v10 = v9 - v8;
  v11 = (v9 - v8) >> 2;
  if (v11 <= a2)
  {
    do
    {
      v29 = (v10 >> 1) | 1;
      if (v11 <= v10 >> 1)
      {
        sub_42CC4(v7, v29 - v11);
        v8 = *(a1 + 24);
        v9 = *(a1 + 32);
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      else if (v29 < v11)
      {
        v9 = v8 + 4 * v29;
        *(a1 + 32) = v9;
        v10 = 4 * v29;
        v30 = (4 * v29) >> 2;
        if (v11 < v30)
        {
LABEL_17:
          memset((v8 + 4 * v11), 255, v10 - 4 * v11);
        }
      }

      else
      {
        v10 = v9 - v8;
        v30 = (v9 - v8) >> 2;
        if (v11 < v30)
        {
          goto LABEL_17;
        }
      }

      v11 = v30;
    }

    while (v30 <= v6);
  }

  v31 = a2;
  v12 = a3[1];
  v32 = *a3;
  v33 = v12;
  sub_42B78(a1, &v31);
  v14 = *(a1 + 48);
  *(*(a1 + 24) + 4 * v6) = v14;
  *(a1 + 48) = v14 + 1;
  if (v14)
  {
    v15 = *a1;
    do
    {
      v16 = v14 - 1;
      v17 = (v14 - 1) >> 2;
      v18 = (v15 + 40 * v17);
      v19 = (v15 + 40 * v14);
      result.n128_u64[0] = *(v18 + 4);
      v20 = *(v19 + 4);
      v21 = *(v18 + 2) > *(v19 + 2);
      if (result.n128_f64[0] != v20)
      {
        v21 = result.n128_f64[0] < v20;
      }

      if (v21)
      {
        break;
      }

      v22 = *v19;
      *v19 = *v18;
      *v18 = v22;
      result = *(v19 + 6);
      v23 = *(v19 + 2);
      v24 = *(v18 + 6);
      *(v19 + 2) = *(v18 + 2);
      *(v19 + 6) = v24;
      *(v18 + 2) = v23;
      *(v18 + 6) = result;
      v15 = *a1;
      v25 = *(*a1 + 40 * v14);
      v26 = *(a1 + 24);
      v27 = *(*a1 + 40 * v17);
      v28 = *(v26 + 4 * v25);
      *(v26 + 4 * v25) = *(v26 + 4 * v27);
      *(v26 + 4 * v27) = v28;
      v14 = v16 >> 2;
    }

    while (v16 > 3);
  }

  return result;
}

void sub_42B78(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
LABEL_3:
    *(a1 + 8) = v7;
    return;
  }

  v8 = *a1;
  v9 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 3);
  v10 = v9 + 1;
  if (v9 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v8) >> 3);
  if (2 * v11 > v10)
  {
    v10 = 2 * v11;
  }

  if (v11 >= 0x333333333333333)
  {
    v12 = 0x666666666666666;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (v12 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v13 = 8 * ((v3 - *a1) >> 3);
  v14 = a2[1];
  *v13 = *a2;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a2 + 4);
  v7 = 40 * v9 + 40;
  v15 = 40 * v9 - (v3 - v8);
  memcpy((v13 - (v3 - v8)), v8, v3 - v8);
  *a1 = v15;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (!v8)
  {
    goto LABEL_3;
  }

  operator delete(v8);
  *(a1 + 8) = v7;
}

void sub_42CC4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_42E18(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      memset_pattern16(*(a1 + 8), &unk_2266650, 16 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 4) + a2;
    if (v7 >> 60)
    {
      sub_1794();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = (16 * (v6 >> 4));
    v12 = 16 * a2;
    memset_pattern16(v11, &unk_2266650, 16 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

double sub_42F7C(float64x2_t *a1, float64x2_t *a2, float64x2_t *a3, float64x2_t *a4)
{
  v4 = vsubq_f64(vsubq_f64(*a2, *a1), vsubq_f64(*a4, *a3));
  v5 = vaddvq_f64(vmulq_f64(v4, v4));
  v6 = vsubq_f64(*a1, *a3);
  v7 = vaddvq_f64(vmulq_f64(v6, v4));
  v8 = v7 + v7;
  if (v5 == 0.0)
  {
    v10 = 0.0;
    if (v8 >= 0.0)
    {
      v10 = 1.0;
    }
  }

  else
  {
    v9 = -v8 / (v5 + v5);
    v10 = 1.0;
    if (v9 <= 1.0)
    {
      v10 = -v8 / (v5 + v5);
    }

    if (v9 < 0.0)
    {
      v10 = 0.0;
    }
  }

  return sqrt(vmulq_f64(v6, v6).f64[0] + vmuld_lane_f64(v6.f64[1], v6, 1) + v8 * v10 + v5 * (v10 * v10));
}

unint64_t *sub_43058@<X0>(unint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a2;
  v7 = a4 - a2 + 8 * (a3 - result);
  if (v7 <= 0)
  {
    v18 = *a5;
    v19 = *(a5 + 8);
LABEL_15:
    *a6 = v18;
    *(a6 + 8) = v19;
    return result;
  }

  if (a2)
  {
    if (v7 >= (64 - a2))
    {
      v8 = 64 - a2;
    }

    else
    {
      v8 = a4 - a2 + 8 * (a3 - result);
    }

    v7 -= v8;
    v9 = (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v8)) & (-1 << a2) & *result;
    v10 = *(a5 + 8);
    if (v8 >= (64 - v10))
    {
      v11 = (64 - v10);
    }

    else
    {
      v11 = v8;
    }

    v12 = *a5;
    v13 = v9 >> (a2 - v10);
    v14 = v10 >= a2;
    v16 = v10 - a2;
    v15 = v16 != 0 && v14;
    v17 = v9 << v16;
    if (!v15)
    {
      v17 = v13;
    }

    *v12 = **a5 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v11)) & (-1 << v10)) | v17;
    v18 = (v12 + (((v11 + v10) >> 3) & 0x3FFFFFF8));
    *a5 = v18;
    v19 = (v10 + v11) & 0x3F;
    *(a5 + 8) = v19;
    v20 = v8 - v11;
    if (v20 >= 1)
    {
      *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v20) | (v9 >> (v11 + v6));
      *(a5 + 8) = v20;
      v19 = v20;
    }

    ++result;
  }

  else
  {
    v19 = *(a5 + 8);
    v18 = *a5;
  }

  v21 = -1 << v19;
  if (v7 >= 64)
  {
    v22 = *v18;
    do
    {
      v23 = v7;
      v25 = *result++;
      v24 = v25;
      *v18 = v22 & ~v21 | (v25 << v19);
      v26 = v18[1];
      ++v18;
      v22 = v26 & v21 | (v24 >> (64 - v19));
      *v18 = v22;
      v7 = v23 - 64;
    }

    while (v23 > 0x7F);
    *a5 = v18;
  }

  if (v7 < 1)
  {
    goto LABEL_15;
  }

  v27 = *result & (0xFFFFFFFFFFFFFFFFLL >> -v7);
  v28 = v7 >= (64 - v19) ? 64 - v19 : v7;
  *v18 = *v18 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v19 - v28)) & v21) | (v27 << v19);
  v18 = (v18 + (((v28 + v19) >> 3) & 0x3FFFFFF8));
  *a5 = v18;
  v19 = (v19 + v28) & 0x3F;
  *(a5 + 8) = v19;
  v29 = v7 - v28;
  if (v29 < 1)
  {
    goto LABEL_15;
  }

  *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v29) | (v27 >> v28);
  *(a5 + 8) = v29;
  *a6 = v18;
  *(a6 + 8) = v29;
  return result;
}

void sub_43268(uint64_t *a1, uint64_t *a2, void *a3, void *a4, double a5)
{
  a4[1] = *a4;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = *a3;
    v8 = a3[1];
    if (*a3 != v8)
    {
      v11 = a1;
      v12 = -INFINITY;
      v13 = INFINITY;
      v14 = *a2;
      do
      {
        v15 = *(v14 + 8);
        if (v15 < v13)
        {
          v13 = *(v14 + 8);
        }

        if (v12 < v15)
        {
          v12 = *(v14 + 8);
        }

        v14 += 16;
      }

      while (v14 != v6);
      do
      {
        v16 = *(v7 + 8);
        v17 = *(v7 + 24);
        if (v16 >= v17)
        {
          v18 = *(v7 + 24);
        }

        else
        {
          v18 = *(v7 + 8);
        }

        if (v16 < v17)
        {
          v16 = *(v7 + 24);
        }

        if (v18 - a5 < v13)
        {
          v13 = v18 - a5;
        }

        v19 = v16 + a5;
        if (v12 < v19)
        {
          v12 = v19;
        }

        v7 += 32;
      }

      while (v7 != v8);
      v20 = 0;
      v21 = 0;
      if (v13 == v12)
      {
        v12 = v12 + 1.0;
        v13 = v13 + -1.0;
      }

      v134[0] = -4095.0 / (v13 - v12);
      v134[1] = (v13 * 8191.0 + v12 * -4096.0) / (v13 - v12);
      v22 = (v6 - v5) >> 4;
      do
      {
        while (1)
        {
          v24 = (*a2 + v20);
          v133 = *v24;
          v25 = vcvtad_u64_f64(sub_6F0BC(v134, v24->n128_f64[1]));
          v26 = v11[1];
          v27 = v11[2];
          if (v26 >= v27)
          {
            break;
          }

          v23 = v133;
          *v26 = v133;
          v26[1].n128_u32[0] = 1;
          v26[1].n128_u64[1] = v21;
          v26[2].n128_u32[0] = v25;
          v11[1] = &v26[2].n128_i64[1];
          ++v21;
          v20 += 16;
          if (v22 == v21)
          {
            goto LABEL_36;
          }
        }

        v28 = *v11;
        v29 = 0xCCCCCCCCCCCCCCCDLL * ((v26 - v28) >> 3) + 1;
        if (v29 > 0x666666666666666)
        {
LABEL_150:
          sub_1794();
        }

        v30 = 0xCCCCCCCCCCCCCCCDLL * ((v27 - v28) >> 3);
        if (2 * v30 > v29)
        {
          v29 = 2 * v30;
        }

        if (v30 >= 0x333333333333333)
        {
          v31 = 0x666666666666666;
        }

        else
        {
          v31 = v29;
        }

        if (v31)
        {
          if (v31 <= 0x666666666666666)
          {
            operator new();
          }

          goto LABEL_149;
        }

        v32 = 8 * ((v26 - v28) >> 3);
        *v32 = v133;
        *(v32 + 16) = 1;
        *(v32 + 24) = v21;
        *(v32 + 32) = v25;
        v33 = v32 + 40;
        v34 = (v32 - (v26 - v28));
        memcpy(v34, v28, v26 - v28);
        *a1 = v34;
        a1[1] = v33;
        a1[2] = 0;
        if (v28)
        {
          operator delete(v28);
        }

        v11 = a1;
        a1[1] = v33;
        ++v21;
        v20 += 16;
      }

      while (v22 != v21);
LABEL_36:
      v35 = a3;
      v36 = a3[1];
      if (v36 != *a3)
      {
        v37 = 0;
        v38 = 0;
        v130 = (v36 - *a3) >> 5;
        v39 = v11;
        while (1)
        {
          v41 = (*v35 + v37);
          v42 = v41[1];
          v43 = v41[2];
          v44 = v41[3];
          if (*v41 >= v43)
          {
            v45 = v41[2];
          }

          else
          {
            v45 = *v41;
          }

          if (*v41 >= v43)
          {
            v46 = *v41;
          }

          else
          {
            v46 = v41[2];
          }

          if (v42 >= v44)
          {
            v47 = v41[3];
          }

          else
          {
            v47 = v41[1];
          }

          if (v42 < v44)
          {
            v42 = v41[3];
          }

          v48 = v45 - a5;
          v49 = v47 - a5;
          v50 = v42 + a5;
          v51 = vcvtad_u64_f64(sub_6F0BC(v134, v47 - a5));
          v23.n128_f64[0] = sub_6F0BC(v134, v50);
          v52 = vcvtad_u64_f64(v23.n128_f64[0]);
          v53 = 31 - __clz(v51);
          v54 = 31 - __clz(v52);
          v55 = v53 - v54;
          if (v53 < v54)
          {
            v55 = 0;
          }

          v56 = v51 >> v55;
          v57 = v54 >= v53;
          v58 = v54 - v53;
          if (!v57)
          {
            v58 = 0;
          }

          v59 = v56 >> -__clz(v56 ^ (v52 >> v58));
          v60 = v39[1];
          v61 = v39[2];
          if (v60 >= v61)
          {
            v64 = *v39;
            v65 = 0xCCCCCCCCCCCCCCCDLL * ((v60 - *v39) >> 3);
            v66 = v65 + 1;
            if (v65 + 1 > 0x666666666666666)
            {
              goto LABEL_150;
            }

            if (0x999999999999999ALL * ((v61 - v64) >> 3) > v66)
            {
              v66 = 0x999999999999999ALL * ((v61 - v64) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v61 - v64) >> 3) >= 0x333333333333333)
            {
              v67 = 0x666666666666666;
            }

            else
            {
              v67 = v66;
            }

            if (v67)
            {
              if (v67 <= 0x666666666666666)
              {
                operator new();
              }

LABEL_149:
              sub_1808();
            }

            v68 = 40 * v65;
            v61 = 0;
            *v68 = v48;
            *(v68 + 8) = v49;
            *(v68 + 16) = 0;
            *(v68 + 24) = v38;
            *(v68 + 32) = v59;
            v62 = 40 * v65 + 40;
            v69 = (40 * v65 - (v60 - v64));
            memcpy(v69, v64, v60 - v64);
            *a1 = v69;
            a1[1] = v62;
            a1[2] = 0;
            if (v64)
            {
              operator delete(v64);
              v61 = a1[2];
            }

            v39 = a1;
            v63 = v46 + a5;
            a1[1] = v62;
            if (v62 < v61)
            {
LABEL_38:
              *v62 = v63;
              *(v62 + 8) = v50;
              *(v62 + 16) = 2;
              *(v62 + 24) = v38;
              v40 = (v62 + 40);
              *(v62 + 32) = v59;
              v35 = a3;
              goto LABEL_39;
            }
          }

          else
          {
            *v60 = v48;
            *(v60 + 8) = v49;
            *(v60 + 16) = 0;
            *(v60 + 24) = v38;
            v62 = v60 + 40;
            *(v60 + 32) = v59;
            v63 = v46 + a5;
            v39[1] = v60 + 40;
            if (v60 + 40 < v61)
            {
              goto LABEL_38;
            }
          }

          v70 = *v39;
          v71 = 0xCCCCCCCCCCCCCCCDLL * ((v62 - v70) >> 3) + 1;
          if (v71 > 0x666666666666666)
          {
            goto LABEL_150;
          }

          if (0x999999999999999ALL * ((v61 - v70) >> 3) > v71)
          {
            v71 = 0x999999999999999ALL * ((v61 - v70) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v61 - v70) >> 3) >= 0x333333333333333)
          {
            v72 = 0x666666666666666;
          }

          else
          {
            v72 = v71;
          }

          if (v72)
          {
            if (v72 <= 0x666666666666666)
            {
              operator new();
            }

            goto LABEL_149;
          }

          v73 = 8 * ((v62 - v70) >> 3);
          *v73 = v63;
          *(v73 + 8) = v50;
          *(v73 + 16) = 2;
          *(v73 + 24) = v38;
          *(v73 + 32) = v59;
          v40 = (v73 + 40);
          memcpy((v73 - (v62 - v70)), v70, v62 - v70);
          *a1 = 8 * ((v62 - v70) >> 3) - (v62 - v70);
          a1[1] = v40;
          a1[2] = 0;
          if (v70)
          {
            operator delete(v70);
          }

          v35 = a3;
LABEL_39:
          v39 = a1;
          a1[1] = v40;
          ++v38;
          v37 += 32;
          if (v130 == v38)
          {
            goto LABEL_83;
          }
        }
      }

      v39 = v11;
      v40 = v11[1];
LABEL_83:
      v74 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v40 - *v39) >> 3));
      if (v40 == *v39)
      {
        v75 = 0;
      }

      else
      {
        v75 = v74;
      }

      sub_43BF0(*v39, v40, &v133, v75, 1, v23);
      v76 = *v39;
      v126 = v39[1];
      v77 = v39;
      if (*v39 != v126)
      {
        do
        {
          v81 = *(v76 + 16);
          if (v81 == 2)
          {
            v116 = v77[3] + 24 * *(v76 + 32);
            v118 = *v116;
            v117 = *(v116 + 8);
            if (*v116 != v117)
            {
              while (*v118 != *(v76 + 24))
              {
                if (++v118 == v117)
                {
                  v118 = *(v116 + 8);
                  break;
                }
              }
            }

            v78 = *v118;
            v80 = *(v117 - 1);
            v79 = v117 - 1;
            *v118 = v80;
            *v79 = v78;
            *(v116 + 8) = v79;
          }

          else
          {
            v131 = v76;
            if (v81 == 1)
            {
              v85 = *(v76 + 32);
              if (v85)
              {
                v86 = *(v76 + 24);
                v87 = *a2;
                do
                {
                  v129 = v85;
                  v88 = v77[3] + 24 * v85;
                  v89 = *v88;
                  v90 = *(v88 + 8);
                  while (v89 != v90)
                  {
                    v92 = *v89;
                    v93 = *v35 + 32 * *v89;
                    v95 = *v93;
                    v94 = *(v93 + 16);
                    v96 = vsubq_f64(v94, *v93);
                    v97 = vmulq_f64(v96, v96);
                    v98 = vaddvq_f64(v97);
                    v99 = *(v87 + 16 * v86);
                    if (v98 == 0.0)
                    {
                      goto LABEL_107;
                    }

                    if (v98 <= 0.0)
                    {
                      v98 = -v98;
                    }

                    if (v98 < 2.22044605e-16)
                    {
LABEL_107:
                      v100 = 0.0;
                    }

                    else
                    {
                      v113 = vmulq_f64(v96, vsubq_f64(v99, v95));
                      *&v100 = *&vdivq_f64(vaddq_f64(v113, vdupq_laneq_s64(v113, 1)), vaddq_f64(v97, vdupq_laneq_s64(v97, 1)));
                    }

                    if (v100 <= 1.0)
                    {
                      v101 = v100;
                    }

                    else
                    {
                      v101 = 1.0;
                    }

                    if (v100 >= 0.0)
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 = 0.0;
                    }

                    v103 = vsubq_f64(v99, vaddq_f64(vmulq_n_f64(v94, v102), vmulq_n_f64(v95, 1.0 - v102)));
                    v104 = sqrt(vaddvq_f64(vmulq_f64(v103, v103)));
                    if (v104 <= a5)
                    {
                      v105 = *(v76 + 24);
                      v106 = a4[1];
                      v107 = a4[2];
                      if (v106 < v107)
                      {
                        *v106 = v105;
                        *(v106 + 8) = v92;
                        v91 = v106 + 24;
                        *(v106 + 16) = v104;
                      }

                      else
                      {
                        v108 = *a4;
                        v109 = 0xAAAAAAAAAAAAAAABLL * ((v106 - *a4) >> 3);
                        v110 = v109 + 1;
                        if (v109 + 1 > 0xAAAAAAAAAAAAAAALL)
                        {
                          sub_1794();
                        }

                        v111 = 0xAAAAAAAAAAAAAAABLL * ((v107 - v108) >> 3);
                        if (2 * v111 > v110)
                        {
                          v110 = 2 * v111;
                        }

                        if (v111 >= 0x555555555555555)
                        {
                          v112 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v112 = v110;
                        }

                        if (v112)
                        {
                          if (v112 <= 0xAAAAAAAAAAAAAAALL)
                          {
                            operator new();
                          }

                          goto LABEL_149;
                        }

                        v114 = 8 * ((v106 - *a4) >> 3);
                        *v114 = v105;
                        *(v114 + 8) = v92;
                        *(v114 + 16) = v104;
                        v91 = 24 * v109 + 24;
                        v115 = (24 * v109 - (v106 - v108));
                        memcpy(v115, v108, v106 - v108);
                        *a4 = v115;
                        a4[1] = v91;
                        a4[2] = 0;
                        if (v108)
                        {
                          operator delete(v108);
                        }

                        v76 = v131;
                        v35 = a3;
                      }

                      a4[1] = v91;
                    }

                    ++v89;
                  }

                  v77 = a1;
                  v85 = v129 >> 1;
                }

                while (v129 >= 2);
              }
            }

            else if (!v81)
            {
              v82 = v77[3] + 24 * *(v76 + 32);
              v84 = *(v82 + 8);
              v83 = *(v82 + 16);
              if (v84 >= v83)
              {
                v119 = *v82;
                v120 = v84 - *v82;
                v121 = (v120 >> 3) + 1;
                if (v121 >> 61)
                {
                  sub_1794();
                }

                v122 = v83 - v119;
                if (v122 >> 2 > v121)
                {
                  v121 = v122 >> 2;
                }

                if (v122 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v123 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v123 = v121;
                }

                if (v123)
                {
                  if (!(v123 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_149;
                }

                v124 = (8 * (v120 >> 3));
                *v124 = *(v76 + 24);
                v125 = v124 + 1;
                memcpy(0, v119, v120);
                *v82 = 0;
                *(v82 + 8) = v125;
                *(v82 + 16) = 0;
                if (v119)
                {
                  operator delete(v119);
                }

                v76 = v131;
                *(v82 + 8) = v125;
              }

              else
              {
                *v84 = *(v76 + 24);
                *(v82 + 8) = v84 + 1;
              }
            }
          }

          v76 += 40;
        }

        while (v76 != v126);
        v76 = *v77;
      }

      v77[1] = v76;
    }
  }
}

__n128 sub_43BF0(uint64_t a1, double *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
    if (v14 <= 2)
    {
      break;
    }

    switch(v14)
    {
      case 3uLL:

        sub_4424C(a1, (a1 + 40), a2 - 5);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_44484(a1, a1 + 40, a1 + 80, (a2 - 5)).n128_u64[0];
        return result;
      case 5uLL:

        result.n128_u64[0] = sub_445E8(a1, a1 + 40, a1 + 80, a1 + 120, (a2 - 5)).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v13 <= 959)
    {
      v28 = (a1 + 40);
      v30 = a1 == a2 || v28 == a2;
      if (a5)
      {
        if (v30)
        {
          return result;
        }

        v31 = 0;
        v32 = a1;
LABEL_54:
        v34 = v32;
        v32 = v28;
        result.n128_u64[0] = *(v34 + 40);
        if (result.n128_f64[0] == *v34)
        {
          v35 = *(v34 + 48);
          v36 = *(v34 + 8);
          if (v35 >= v36)
          {
            if (v36 < v35)
            {
              goto LABEL_53;
            }

LABEL_60:
            if (*(v34 + 56) >= *(v34 + 16))
            {
              goto LABEL_53;
            }
          }
        }

        else if (result.n128_f64[0] >= *v34)
        {
          if (*v34 < result.n128_f64[0])
          {
            goto LABEL_53;
          }

          goto LABEL_60;
        }

        v37 = *(v34 + 48);
        v38 = *(v34 + 56);
        v64 = *(v34 + 60);
        *(v32 + 32) = *(v34 + 32);
        v39 = *(v34 + 16);
        *v32 = *v34;
        *(v32 + 16) = v39;
        v33 = a1;
        if (v34 == a1)
        {
          goto LABEL_52;
        }

        v40 = v31;
        while (1)
        {
          v42 = a1 + v40;
          v43 = *(a1 + v40 - 40);
          if (result.n128_f64[0] == v43)
          {
            v44 = *(v42 - 32);
            if (v37 < v44)
            {
              goto LABEL_64;
            }

            if (v44 < v37)
            {
LABEL_71:
              v33 = v34;
LABEL_52:
              *v33 = result.n128_u64[0];
              *(v33 + 8) = v37;
              *(v33 + 16) = v38;
              result = v64;
              *(v33 + 20) = v64;
LABEL_53:
              v28 = (v32 + 40);
              v31 += 40;
              if ((v32 + 40) == a2)
              {
                return result;
              }

              goto LABEL_54;
            }
          }

          else
          {
            if (result.n128_f64[0] < v43)
            {
              goto LABEL_64;
            }

            if (v43 < result.n128_f64[0])
            {
              v33 = a1 + v40;
              goto LABEL_52;
            }
          }

          if (v38 >= *(v42 - 24))
          {
            goto LABEL_71;
          }

LABEL_64:
          v34 -= 40;
          v41 = *(a1 + v40 - 24);
          *v42 = *(a1 + v40 - 40);
          *(v42 + 16) = v41;
          *(v42 + 32) = *(a1 + v40 - 8);
          v40 -= 40;
          if (!v40)
          {
            v33 = a1;
            goto LABEL_52;
          }
        }
      }

      if (v30)
      {
        return result;
      }

      while (1)
      {
        v50 = a1;
        a1 = v28;
        result.n128_u64[0] = *(v50 + 40);
        if (result.n128_f64[0] == *v50)
        {
          v51 = *(v50 + 48);
          v52 = *(v50 + 8);
          if (v51 < v52)
          {
            goto LABEL_89;
          }

          if (v52 < v51)
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (result.n128_f64[0] < *v50)
          {
            goto LABEL_89;
          }

          if (*v50 < result.n128_f64[0])
          {
            goto LABEL_81;
          }
        }

        if (*(v50 + 56) < *(v50 + 16))
        {
LABEL_89:
          v53 = *(v50 + 48);
          v54 = *(v50 + 56);
          v65 = *(v50 + 60);
          while (1)
          {
            while (1)
            {
              v55 = v50;
              v56 = *(v50 + 16);
              *(v50 + 40) = *v50;
              *(v50 + 56) = v56;
              *(v50 + 72) = *(v50 + 32);
              v57 = *(v50 - 40);
              v50 -= 40;
              v58 = v57;
              v59 = result.n128_f64[0] < v57;
              if (result.n128_f64[0] == v57)
              {
                break;
              }

              if (!v59)
              {
                if (v58 < result.n128_f64[0])
                {
                  goto LABEL_80;
                }

                goto LABEL_91;
              }
            }

            v60 = *(v55 - 32);
            if (v53 >= v60)
            {
              if (v60 < v53)
              {
LABEL_80:
                *v55 = result.n128_u64[0];
                *(v55 + 8) = v53;
                *(v55 + 16) = v54;
                result = v65;
                *(v55 + 20) = v65;
                break;
              }

LABEL_91:
              if (v54 >= *(v55 - 24))
              {
                goto LABEL_80;
              }
            }
          }
        }

LABEL_81:
        v28 += 5;
        if ((a1 + 40) == a2)
        {
          return result;
        }
      }
    }

    if (v11 == 1)
    {
      if (a1 != a2)
      {
        v45 = (v14 - 2) >> 1;
        v46 = v45 + 1;
        v47 = a1 + 40 * v45;
        do
        {
          result = sub_44EE8(a1, result, a3, 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3), v47);
          v47 -= 40;
          --v46;
        }

        while (v46);
        v48 = 0xCCCCCCCCCCCCCCCDLL * (v13 >> 3);
        do
        {
          result = sub_450F0(a1, a2, result, a3, v48);
          a2 -= 5;
        }

        while (v48-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = a1 + 40 * (v14 >> 1);
    if (v13 < 0x1401)
    {
      sub_4424C(v16, a1, a2 - 5);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_4424C(a1, v16, a2 - 5);
      v17 = 40 * v15;
      v18 = (40 * v15 + a1 - 40);
      sub_4424C((a1 + 40), v18, a2 - 10);
      sub_4424C((a1 + 80), (a1 + 40 + v17), a2 - 15);
      sub_4424C(v18, v16, (a1 + 40 + v17));
      v69 = *(a1 + 32);
      v63 = *a1;
      v67 = *(a1 + 16);
      v19 = *v16;
      v20 = *(v16 + 16);
      *(a1 + 32) = *(v16 + 32);
      *a1 = v19;
      *(a1 + 16) = v20;
      *(v16 + 32) = v69;
      *v16 = v63;
      *(v16 + 16) = v67;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v21 = *(a1 - 40);
    v22 = *a1;
    if (v21 == *a1)
    {
      v21 = *(a1 - 32);
      v22 = *(a1 + 8);
      if (v21 < v22)
      {
        goto LABEL_22;
      }
    }

    else if (v21 < *a1)
    {
      goto LABEL_22;
    }

    if (v22 < v21 || *(a1 - 24) >= *(a1 + 16))
    {
      v10 = sub_447B8(a1, a2);
LABEL_27:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }

LABEL_22:
    v23 = sub_449EC(a1, a2);
    if ((v24 & 1) == 0)
    {
      goto LABEL_25;
    }

    v25 = sub_44BFC(a1, v23);
    v10 = (v23 + 40);
    if (sub_44BFC(v23 + 40, a2))
    {
      a4 = -v12;
      a2 = v23;
      if (v25)
      {
        return result;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v25)
    {
LABEL_25:
      sub_43BF0(a1, v23, a3, -v12, a5 & 1);
      v10 = (v23 + 40);
      goto LABEL_27;
    }
  }

  if (v14 < 2)
  {
    return result;
  }

  if (v14 != 2)
  {
    goto LABEL_10;
  }

  v26 = (a2 - 5);
  result.n128_f64[0] = *(a2 - 5);
  v27 = *a1;
  if (result.n128_f64[0] == *a1)
  {
    result.n128_f64[0] = *(a2 - 4);
    v27 = *(a1 + 8);
    if (result.n128_f64[0] < v27)
    {
LABEL_101:
      v70 = *(a1 + 32);
      v66 = *a1;
      v68 = *(a1 + 16);
      v61 = *v26;
      v62 = *(a2 - 3);
      *(a1 + 32) = *(a2 - 2);
      *a1 = v61;
      *(a1 + 16) = v62;
      result = v66;
      *v26 = v66;
      *(a2 - 3) = v68;
      *(a2 - 2) = v70;
      return result;
    }
  }

  else if (result.n128_f64[0] < *a1)
  {
    goto LABEL_101;
  }

  if (v27 >= result.n128_f64[0] && *(a2 - 6) < *(a1 + 16))
  {
    goto LABEL_101;
  }

  return result;
}

uint64_t sub_4424C(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  if (*a2 == *a1)
  {
    v4 = a2[1];
    v5 = a1[1];
    if (v4 < v5)
    {
      goto LABEL_8;
    }

    if (v5 < v4)
    {
      goto LABEL_12;
    }

LABEL_7:
    if (*(a2 + 4) >= *(a1 + 4))
    {
      goto LABEL_12;
    }

LABEL_8:
    if (*a3 == v3)
    {
      v6 = a3[1];
      v7 = a2[1];
      if (v6 < v7)
      {
        goto LABEL_19;
      }

      if (v7 < v6)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (*a3 < v3)
      {
        goto LABEL_19;
      }

      if (v3 < *a3)
      {
LABEL_20:
        v14 = *(a1 + 4);
        v15 = *a1;
        v16 = *(a1 + 1);
        v17 = *(a2 + 8);
        v18 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v18;
        *(a1 + 8) = v17;
        *a2 = v15;
        *(a2 + 1) = v16;
        *(a2 + 8) = v14;
        v19 = *a3;
        v20 = *a2;
        if (*a3 == *a2)
        {
          v19 = a3[1];
          v20 = a2[1];
          if (v19 < v20)
          {
            goto LABEL_34;
          }
        }

        else if (*a3 < *a2)
        {
          goto LABEL_34;
        }

        if (v20 < v19 || *(a3 + 4) >= *(a2 + 4))
        {
          return 1;
        }

LABEL_34:
        v28 = *(a2 + 4);
        v29 = *a2;
        v30 = *(a2 + 1);
        v31 = *(a3 + 8);
        v32 = *(a3 + 1);
        *a2 = *a3;
        *(a2 + 1) = v32;
        *(a2 + 8) = v31;
        *a3 = v29;
        *(a3 + 1) = v30;
        result = 1;
        *(a3 + 8) = v28;
        return result;
      }
    }

    if (*(a3 + 4) >= *(a2 + 4))
    {
      goto LABEL_20;
    }

LABEL_19:
    v8 = *(a1 + 4);
    v9 = *a1;
    v10 = *(a1 + 1);
    v11 = *(a3 + 8);
    v12 = *(a3 + 1);
    *a1 = *a3;
    *(a1 + 1) = v12;
    *(a1 + 8) = v11;
    *a3 = v9;
    *(a3 + 1) = v10;
    result = 1;
    *(a3 + 8) = v8;
    return result;
  }

  if (*a2 < *a1)
  {
    goto LABEL_8;
  }

  if (*a1 >= v3)
  {
    goto LABEL_7;
  }

LABEL_12:
  if (*a3 == v3)
  {
    v21 = a3[1];
    v22 = a2[1];
    if (v21 < v22)
    {
      goto LABEL_26;
    }

    if (v22 < v21)
    {
      return 0;
    }
  }

  else
  {
    if (*a3 < v3)
    {
      goto LABEL_26;
    }

    if (v3 < *a3)
    {
      return 0;
    }
  }

  if (*(a3 + 4) >= *(a2 + 4))
  {
    return 0;
  }

LABEL_26:
  v23 = *(a2 + 4);
  v24 = *a2;
  v25 = *(a2 + 1);
  v26 = *(a3 + 8);
  v27 = *(a3 + 1);
  *a2 = *a3;
  *(a2 + 1) = v27;
  *(a2 + 8) = v26;
  *a3 = v24;
  *(a3 + 1) = v25;
  *(a3 + 8) = v23;
  if (*a2 == *a1)
  {
    v33 = a2[1];
    v34 = a1[1];
    if (v33 >= v34)
    {
      if (v34 < v33)
      {
        return 1;
      }

      goto LABEL_37;
    }

LABEL_38:
    v35 = *(a1 + 4);
    v36 = *a1;
    v37 = *(a1 + 1);
    v38 = *(a2 + 8);
    v39 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v39;
    *(a1 + 8) = v38;
    *a2 = v36;
    *(a2 + 1) = v37;
    result = 1;
    *(a2 + 8) = v35;
    return result;
  }

  if (*a2 < *a1)
  {
    goto LABEL_38;
  }

  if (*a1 < *a2)
  {
    return 1;
  }

LABEL_37:
  if (*(a2 + 4) < *(a1 + 4))
  {
    goto LABEL_38;
  }

  return 1;
}

__n128 sub_44484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_4424C(a1, a2, a3);
  result.n128_u64[0] = *a4;
  v9 = *a3;
  if (*a4 == *a3)
  {
    result.n128_u64[0] = *(a4 + 8);
    v9 = *(a3 + 8);
    if (result.n128_f64[0] < v9)
    {
      goto LABEL_7;
    }
  }

  else if (*a4 < *a3)
  {
    goto LABEL_7;
  }

  if (v9 < result.n128_f64[0] || *(a4 + 16) >= *(a3 + 16))
  {
    return result;
  }

LABEL_7:
  v10 = *(a3 + 32);
  result = *a3;
  v11 = *(a3 + 16);
  v12 = *(a4 + 32);
  v13 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v13;
  *(a3 + 32) = v12;
  *a4 = result;
  *(a4 + 16) = v11;
  *(a4 + 32) = v10;
  result.n128_u64[0] = *a3;
  v14 = *a2;
  if (*a3 != *a2)
  {
    if (*a3 < *a2)
    {
      goto LABEL_13;
    }

LABEL_11:
    if (v14 < result.n128_f64[0] || *(a3 + 16) >= *(a2 + 16))
    {
      return result;
    }

    goto LABEL_13;
  }

  result.n128_u64[0] = *(a3 + 8);
  v14 = *(a2 + 8);
  if (result.n128_f64[0] >= v14)
  {
    goto LABEL_11;
  }

LABEL_13:
  v15 = *(a2 + 32);
  result = *a2;
  v16 = *(a2 + 16);
  v17 = *(a3 + 32);
  v18 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v18;
  *(a2 + 32) = v17;
  *a3 = result;
  *(a3 + 16) = v16;
  *(a3 + 32) = v15;
  result.n128_u64[0] = *a2;
  v19 = *a1;
  if (*a2 == *a1)
  {
    result.n128_u64[0] = *(a2 + 8);
    v19 = *(a1 + 8);
    if (result.n128_f64[0] < v19)
    {
LABEL_19:
      v20 = *(a1 + 32);
      result = *a1;
      v21 = *(a1 + 16);
      v22 = *(a2 + 32);
      v23 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v23;
      *(a1 + 32) = v22;
      *a2 = result;
      *(a2 + 16) = v21;
      *(a2 + 32) = v20;
      return result;
    }
  }

  else if (*a2 < *a1)
  {
    goto LABEL_19;
  }

  if (v19 >= result.n128_f64[0] && *(a2 + 16) < *(a1 + 16))
  {
    goto LABEL_19;
  }

  return result;
}

__n128 sub_445E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_44484(a1, a2, a3, a4);
  result.n128_u64[0] = *a5;
  v11 = *a4;
  if (*a5 == *a4)
  {
    result.n128_u64[0] = *(a5 + 8);
    v11 = *(a4 + 8);
    if (result.n128_f64[0] < v11)
    {
      goto LABEL_7;
    }
  }

  else if (*a5 < *a4)
  {
    goto LABEL_7;
  }

  if (v11 < result.n128_f64[0] || *(a5 + 16) >= *(a4 + 16))
  {
    return result;
  }

LABEL_7:
  v12 = *(a4 + 32);
  result = *a4;
  v13 = *(a4 + 16);
  v14 = *(a5 + 32);
  v15 = *(a5 + 16);
  *a4 = *a5;
  *(a4 + 16) = v15;
  *(a4 + 32) = v14;
  *a5 = result;
  *(a5 + 16) = v13;
  *(a5 + 32) = v12;
  result.n128_u64[0] = *a4;
  v16 = *a3;
  if (*a4 == *a3)
  {
    result.n128_u64[0] = *(a4 + 8);
    v16 = *(a3 + 8);
    if (result.n128_f64[0] < v16)
    {
      goto LABEL_13;
    }
  }

  else if (*a4 < *a3)
  {
    goto LABEL_13;
  }

  if (v16 < result.n128_f64[0] || *(a4 + 16) >= *(a3 + 16))
  {
    return result;
  }

LABEL_13:
  v17 = *(a3 + 32);
  result = *a3;
  v18 = *(a3 + 16);
  v19 = *(a4 + 32);
  v20 = *(a4 + 16);
  *a3 = *a4;
  *(a3 + 16) = v20;
  *(a3 + 32) = v19;
  *a4 = result;
  *(a4 + 16) = v18;
  *(a4 + 32) = v17;
  result.n128_u64[0] = *a3;
  v21 = *a2;
  if (*a3 != *a2)
  {
    if (*a3 < *a2)
    {
      goto LABEL_19;
    }

LABEL_17:
    if (v21 < result.n128_f64[0] || *(a3 + 16) >= *(a2 + 16))
    {
      return result;
    }

    goto LABEL_19;
  }

  result.n128_u64[0] = *(a3 + 8);
  v21 = *(a2 + 8);
  if (result.n128_f64[0] >= v21)
  {
    goto LABEL_17;
  }

LABEL_19:
  v22 = *(a2 + 32);
  result = *a2;
  v23 = *(a2 + 16);
  v24 = *(a3 + 32);
  v25 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v25;
  *(a2 + 32) = v24;
  *a3 = result;
  *(a3 + 16) = v23;
  *(a3 + 32) = v22;
  result.n128_u64[0] = *a2;
  v26 = *a1;
  if (*a2 == *a1)
  {
    result.n128_u64[0] = *(a2 + 8);
    v26 = *(a1 + 8);
    if (result.n128_f64[0] < v26)
    {
LABEL_25:
      v27 = *(a1 + 32);
      result = *a1;
      v28 = *(a1 + 16);
      v29 = *(a2 + 32);
      v30 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v30;
      *(a1 + 32) = v29;
      *a2 = result;
      *(a2 + 16) = v28;
      *(a2 + 32) = v27;
      return result;
    }
  }

  else if (*a2 < *a1)
  {
    goto LABEL_25;
  }

  if (v26 >= result.n128_f64[0] && *(a2 + 16) < *(a1 + 16))
  {
    goto LABEL_25;
  }

  return result;
}

__int128 *sub_447B8(uint64_t a1, double *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a2 - 5);
  if (*a1 == v5)
  {
    v6 = *(a2 - 4);
    if (v3 >= v6)
    {
      if (v6 < v3)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }
  }

  else if (v2 >= v5)
  {
    if (v5 < v2)
    {
      goto LABEL_18;
    }

LABEL_7:
    if (v4 < *(a2 - 6))
    {
      goto LABEL_8;
    }

LABEL_18:
    for (i = (a1 + 40); ; i = (i + 40))
    {
      if (i >= a2)
      {
        goto LABEL_29;
      }

      if (v2 == *i)
      {
        v9 = *(i + 1);
        if (v3 < v9)
        {
          goto LABEL_29;
        }

        if (v9 >= v3)
        {
LABEL_19:
          if (v4 < *(i + 4))
          {
            goto LABEL_29;
          }

          continue;
        }
      }

      else
      {
        if (v2 < *i)
        {
          goto LABEL_29;
        }

        if (*i >= v2)
        {
          goto LABEL_19;
        }
      }
    }
  }

LABEL_8:
  for (i = (a1 + 40); v2 != *i; i = (i + 40))
  {
    if (v2 < *i)
    {
      goto LABEL_29;
    }

    if (*i >= v2)
    {
      goto LABEL_9;
    }

LABEL_10:
    ;
  }

  v8 = *(i + 1);
  if (v3 >= v8)
  {
    if (v8 < v3)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (v4 < *(i + 4))
    {
      goto LABEL_29;
    }

    goto LABEL_10;
  }

LABEL_29:
  if (i < a2)
  {
    for (a2 -= 5; ; a2 -= 5)
    {
      if (v2 == v5)
      {
        v11 = a2[1];
        if (v3 < v11)
        {
          goto LABEL_32;
        }

        if (v11 < v3)
        {
          break;
        }
      }

      else
      {
        if (v2 < v5)
        {
          goto LABEL_32;
        }

        if (v5 < v2)
        {
          break;
        }
      }

      if (v4 >= *(a2 + 4))
      {
        break;
      }

LABEL_32:
      v10 = *(a2 - 5);
      v5 = v10;
    }
  }

LABEL_56:
  if (i < a2)
  {
    v28 = *(i + 4);
    v26 = *i;
    v27 = i[1];
    v12 = *a2;
    v13 = *(a2 + 1);
    *(i + 8) = *(a2 + 8);
    *i = v12;
    i[1] = v13;
    *(a2 + 8) = v28;
    *a2 = v26;
    *(a2 + 1) = v27;
    while (1)
    {
      while (1)
      {
        v14 = *(i + 5);
        i = (i + 40);
        v15 = v14;
        v16 = v2 < v14;
        if (v2 == v14)
        {
          break;
        }

        if (v16)
        {
          goto LABEL_51;
        }

        if (v15 >= v2)
        {
LABEL_41:
          if (v4 < *(i + 4))
          {
            goto LABEL_51;
          }
        }
      }

      v17 = *(i + 1);
      if (v3 < v17)
      {
        break;
      }

      if (v17 >= v3)
      {
        goto LABEL_41;
      }
    }

    while (1)
    {
LABEL_51:
      while (1)
      {
        v18 = *(a2 - 5);
        a2 -= 5;
        v19 = v18;
        v20 = v2 < v18;
        if (v2 == v18)
        {
          break;
        }

        if (!v20)
        {
          if (v19 < v2)
          {
            goto LABEL_56;
          }

          goto LABEL_50;
        }
      }

      v21 = a2[1];
      if (v3 >= v21)
      {
        if (v21 < v3)
        {
          goto LABEL_56;
        }

LABEL_50:
        if (v4 >= *(a2 + 4))
        {
          goto LABEL_56;
        }
      }
    }
  }

  if ((i - 40) != a1)
  {
    v22 = *(i - 40);
    v23 = *(i - 24);
    *(a1 + 32) = *(i - 2);
    *a1 = v22;
    *(a1 + 16) = v23;
  }

  *(i - 5) = v2;
  *(i - 4) = v3;
  *(i - 6) = v4;
  *(i - 20) = v25;
  return i;
}

unint64_t sub_449EC(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  while (1)
  {
    v6 = a1 + v2;
    v7 = *(a1 + v2 + 40);
    if (v7 != v3)
    {
      if (v7 < v3)
      {
        goto LABEL_3;
      }

      if (v3 < v7)
      {
        break;
      }

      goto LABEL_2;
    }

    v8 = *(v6 + 48);
    if (v8 < v4)
    {
      goto LABEL_3;
    }

    if (v4 < v8)
    {
      break;
    }

LABEL_2:
    if (*(v6 + 56) >= v5)
    {
      break;
    }

LABEL_3:
    v2 += 40;
  }

  v9 = a1 + v2 + 40;
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v10 = *(a2 - 40);
        a2 -= 40;
        v11 = v10;
        v12 = v10 < v3;
        if (v10 == v3)
        {
          break;
        }

        if (v12)
        {
          goto LABEL_33;
        }

        if (v3 >= v11)
        {
          goto LABEL_12;
        }
      }

      v13 = *(a2 + 8);
      if (v13 < v4)
      {
        goto LABEL_33;
      }

      if (v4 >= v13)
      {
LABEL_12:
        if (*(a2 + 16) < v5)
        {
          goto LABEL_33;
        }
      }
    }
  }

LABEL_32:
  if (v9 < a2)
  {
    do
    {
      v14 = *(a2 - 40);
      a2 -= 40;
      v15 = v14;
      v16 = v14 < v3;
      if (v14 == v3)
      {
        v17 = *(a2 + 8);
        if (v17 < v4)
        {
          break;
        }

        if (v4 < v17)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v16)
        {
          break;
        }

        if (v3 < v15)
        {
          goto LABEL_32;
        }
      }
    }

    while (*(a2 + 16) >= v5 && v9 < a2);
  }

LABEL_33:
  v19 = a1 + v2 + 40;
  if (v9 < a2)
  {
    v20 = a2;
LABEL_36:
    v37 = *(v19 + 32);
    v35 = *v19;
    v36 = *(v19 + 16);
    v21 = *v20;
    v22 = *(v20 + 16);
    *(v19 + 32) = *(v20 + 32);
    *v19 = v21;
    *(v19 + 16) = v22;
    *(v20 + 32) = v37;
    *v20 = v35;
    *(v20 + 16) = v36;
    while (1)
    {
      do
      {
        while (1)
        {
          v23 = *(v19 + 40);
          v19 += 40;
          v24 = v23;
          v25 = v23 < v3;
          if (v23 == v3)
          {
            break;
          }

          if (!v25)
          {
            if (v3 < v24)
            {
              goto LABEL_46;
            }

            goto LABEL_38;
          }
        }

        v26 = *(v19 + 8);
      }

      while (v26 < v4);
      if (v4 < v26)
      {
        break;
      }

LABEL_38:
      if (*(v19 + 16) >= v5)
      {
        goto LABEL_46;
      }
    }

    while (1)
    {
LABEL_46:
      while (1)
      {
        v27 = *(v20 - 40);
        v20 -= 40;
        v28 = v27;
        v29 = v27 < v3;
        if (v27 == v3)
        {
          break;
        }

        if (v29)
        {
          goto LABEL_35;
        }

        if (v3 >= v28)
        {
          goto LABEL_45;
        }
      }

      v30 = *(v20 + 8);
      if (v30 < v4)
      {
LABEL_35:
        if (v19 >= v20)
        {
          break;
        }

        goto LABEL_36;
      }

      if (v4 >= v30)
      {
LABEL_45:
        if (*(v20 + 16) < v5)
        {
          goto LABEL_35;
        }
      }
    }
  }

  if (v19 - 40 != a1)
  {
    v31 = *(v19 - 40);
    v32 = *(v19 - 24);
    *(a1 + 32) = *(v19 - 8);
    *a1 = v31;
    *(a1 + 16) = v32;
  }

  *(v19 - 40) = v3;
  *(v19 - 32) = v4;
  *(v19 - 24) = v5;
  *(v19 - 20) = v34;
  return v19 - 40;
}

BOOL sub_44BFC(uint64_t a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        sub_4424C(a1, (a1 + 40), (a2 - 40));
        return 1;
      case 4:
        sub_44484(a1, a1 + 40, a1 + 80, a2 - 40);
        return 1;
      case 5:
        sub_445E8(a1, a1 + 40, a1 + 80, a1 + 120, a2 - 40);
        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v4 = (a2 - 40);
      v5 = *(a2 - 40);
      v6 = *a1;
      if (v5 == *a1)
      {
        v5 = *(a2 - 32);
        v6 = *(a1 + 8);
        if (v5 < v6)
        {
          goto LABEL_39;
        }
      }

      else if (v5 < *a1)
      {
        goto LABEL_39;
      }

      if (v6 < v5 || *(a2 - 24) >= *(a1 + 16))
      {
        return 1;
      }

LABEL_39:
      v24 = *(a1 + 32);
      v25 = *a1;
      v26 = *(a1 + 16);
      v27 = *(a2 - 8);
      v28 = *(a2 - 24);
      *a1 = *v4;
      *(a1 + 16) = v28;
      *(a1 + 32) = v27;
      *v4 = v25;
      *(a2 - 24) = v26;
      result = 1;
      *(a2 - 8) = v24;
      return result;
    }
  }

  v7 = a1 + 80;
  sub_4424C(a1, (a1 + 40), (a1 + 80));
  v10 = a1 + 120;
  if (a1 + 120 == a2)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  while (2)
  {
    v13 = *v10;
    if (*v10 == *v7)
    {
      v14 = *(v10 + 8);
      v15 = *(v7 + 8);
      if (v14 >= v15)
      {
        if (v15 < v14)
        {
          goto LABEL_17;
        }

LABEL_24:
        if (*(v10 + 16) >= *(v7 + 16))
        {
          goto LABEL_17;
        }
      }
    }

    else if (*v10 >= *v7)
    {
      if (*v7 < v13)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    v16 = *(v10 + 8);
    v17 = *(v10 + 16);
    v29 = *(v10 + 20);
    *(v10 + 32) = *(v7 + 32);
    v18 = *(v7 + 16);
    *v10 = *v7;
    *(v10 + 16) = v18;
    v19 = v11;
    while (1)
    {
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 40);
      if (v13 != v22)
      {
        break;
      }

      v23 = *(v21 + 48);
      if (v16 >= v23)
      {
        if (v23 < v16)
        {
          goto LABEL_16;
        }

        goto LABEL_26;
      }

LABEL_27:
      v7 -= 40;
      v20 = *(a1 + v19 + 56);
      *(v21 + 80) = *(a1 + v19 + 40);
      *(v21 + 96) = v20;
      *(v21 + 112) = *(a1 + v19 + 72);
      v19 -= 40;
      if (v19 == -80)
      {
        v7 = a1;
        goto LABEL_16;
      }
    }

    if (v13 < v22)
    {
      goto LABEL_27;
    }

    if (v22 >= v13)
    {
LABEL_26:
      if (v17 >= *(v21 + 56))
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

    v7 = a1 + v19 + 80;
LABEL_16:
    *v7 = v13;
    *(v7 + 8) = v16;
    *(v7 + 16) = v17;
    *(v7 + 20) = v29;
    if (++v12 != 8)
    {
LABEL_17:
      v7 = v10;
      v11 += 40;
      v10 += 40;
      if (v10 == a2)
      {
        return 1;
      }

      continue;
    }

    return v10 + 40 == a2;
  }
}

__n128 sub_44EE8(uint64_t a1, __n128 result, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4 < 2)
  {
    return result;
  }

  v5 = (a4 - 2) >> 1;
  if (v5 < (0xCCCCCCCCCCCCCCCDLL * ((a5 - a1) >> 3)))
  {
    return result;
  }

  v6 = (0x999999999999999ALL * ((a5 - a1) >> 3)) | 1;
  v7 = (a1 + 40 * v6);
  if ((0x999999999999999ALL * ((a5 - a1) >> 3) + 2) < a4)
  {
    v8 = *(v7 + 5);
    if (*v7 == v8)
    {
      v9 = *(v7 + 1);
      v10 = *(v7 + 6);
      if (v9 >= v10)
      {
        if (v10 < v9)
        {
          goto LABEL_12;
        }

LABEL_10:
        if (*(v7 + 4) >= *(v7 + 14))
        {
          goto LABEL_12;
        }
      }
    }

    else if (*v7 >= v8)
    {
      if (v8 < *v7)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    v7 = (v7 + 40);
    v6 = 0x999999999999999ALL * ((a5 - a1) >> 3) + 2;
  }

LABEL_12:
  result.n128_u64[0] = *a5;
  if (*v7 == *a5)
  {
    v11 = *(v7 + 1);
    v12 = *(a5 + 8);
    if (v11 < v12)
    {
      return result;
    }

    if (v12 < v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    if (*(v7 + 4) < *(a5 + 16))
    {
      return result;
    }

    goto LABEL_19;
  }

  if (*v7 < *a5)
  {
    return result;
  }

  if (result.n128_f64[0] >= *v7)
  {
    goto LABEL_18;
  }

LABEL_19:
  v13 = *(a5 + 8);
  v14 = *(a5 + 16);
  v26 = *(a5 + 20);
  v15 = *v7;
  v16 = v7[1];
  *(a5 + 32) = *(v7 + 8);
  *a5 = v15;
  *(a5 + 16) = v16;
  if (v5 < v6)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v19 = v7;
    v20 = 2 * v6;
    v6 = (2 * v6) | 1;
    v7 = (a1 + 40 * v6);
    v21 = v20 + 2;
    if (v21 >= a4)
    {
      goto LABEL_32;
    }

    v22 = *(v7 + 5);
    if (*v7 == v22)
    {
      v23 = *(v7 + 1);
      v24 = *(v7 + 6);
      if (v23 >= v24)
      {
        if (v24 < v23)
        {
          goto LABEL_32;
        }

LABEL_30:
        if (*(v7 + 4) >= *(v7 + 14))
        {
          goto LABEL_32;
        }
      }

LABEL_31:
      v7 = (v7 + 40);
      v6 = v21;
      goto LABEL_32;
    }

    if (*v7 < v22)
    {
      goto LABEL_31;
    }

    if (v22 >= *v7)
    {
      goto LABEL_30;
    }

LABEL_32:
    if (*v7 == result.n128_f64[0])
    {
      break;
    }

    if (*v7 < result.n128_f64[0])
    {
      goto LABEL_39;
    }

    if (result.n128_f64[0] >= *v7)
    {
      goto LABEL_21;
    }

LABEL_22:
    v17 = *v7;
    v18 = v7[1];
    *(v19 + 8) = *(v7 + 8);
    *v19 = v17;
    v19[1] = v18;
    if (v5 < v6)
    {
      goto LABEL_40;
    }
  }

  v25 = *(v7 + 1);
  if (v25 >= v13)
  {
    if (v13 < v25)
    {
      goto LABEL_22;
    }

LABEL_21:
    if (*(v7 + 4) < v14)
    {
      goto LABEL_39;
    }

    goto LABEL_22;
  }

LABEL_39:
  v7 = v19;
LABEL_40:
  *v7 = result.n128_u64[0];
  *(v7 + 1) = v13;
  *(v7 + 4) = v14;
  result = v26;
  *(v7 + 20) = v26;
  return result;
}

__n128 sub_450F0(uint64_t a1, uint64_t a2, __n128 result, uint64_t a4, uint64_t a5)
{
  if (a5 < 2)
  {
    return result;
  }

  v5 = 0;
  v35 = *a1;
  v36 = *(a1 + 16);
  v37 = *(a1 + 32);
  v6 = a1;
  do
  {
    v9 = v6;
    v10 = v6 + 40 * v5;
    v6 = v10 + 40;
    v11 = 2 * v5;
    v5 = (2 * v5) | 1;
    v12 = v11 + 2;
    if (v12 >= a5)
    {
      goto LABEL_4;
    }

    v13 = *(v10 + 80);
    v14 = *(v10 + 40);
    if (v14 != v13)
    {
      if (v14 < v13)
      {
        goto LABEL_3;
      }

      if (v13 < v14)
      {
        goto LABEL_4;
      }

LABEL_12:
      if (*(v10 + 56) < *(v10 + 96))
      {
LABEL_3:
        v6 = v10 + 80;
        v5 = v12;
        goto LABEL_4;
      }

      goto LABEL_4;
    }

    v15 = *(v10 + 48);
    v16 = *(v10 + 88);
    if (v15 < v16)
    {
      goto LABEL_3;
    }

    if (v16 >= v15)
    {
      goto LABEL_12;
    }

LABEL_4:
    v7 = *v6;
    v8 = *(v6 + 16);
    *(v9 + 32) = *(v6 + 32);
    *v9 = v7;
    *(v9 + 16) = v8;
  }

  while (v5 <= ((a5 - 2) >> 1));
  v17 = (a2 - 40);
  if (v6 == a2 - 40)
  {
    result = v35;
    *(v6 + 32) = v37;
    *v6 = v35;
    *(v6 + 16) = v36;
    return result;
  }

  v18 = *v17;
  v19 = *(a2 - 24);
  *(v6 + 32) = *(a2 - 8);
  *v6 = v18;
  *(v6 + 16) = v19;
  result = v35;
  *v17 = v35;
  *(a2 - 24) = v36;
  *(a2 - 8) = v37;
  v20 = v6 - a1 + 40;
  if (v20 < 41)
  {
    return result;
  }

  v21 = 0xCCCCCCCCCCCCCCCDLL * (v20 >> 3) - 2;
  v22 = v21 >> 1;
  v23 = (a1 + 40 * (v21 >> 1));
  result.n128_u64[0] = *v6;
  if (*v23 == *v6)
  {
    v24 = *(v23 + 1);
    v25 = *(v6 + 8);
    if (v24 >= v25)
    {
      if (v25 < v24)
      {
        return result;
      }

      goto LABEL_23;
    }
  }

  else if (*v23 >= *v6)
  {
    if (result.n128_f64[0] < *v23)
    {
      return result;
    }

LABEL_23:
    if (*(v23 + 4) >= *(v6 + 16))
    {
      return result;
    }
  }

  v26 = *(v6 + 8);
  v27 = *(v6 + 16);
  v38 = *(v6 + 20);
  v28 = *v23;
  v29 = v23[1];
  *(v6 + 32) = *(v23 + 8);
  *v6 = v28;
  *(v6 + 16) = v29;
  if (v21 < 2)
  {
    goto LABEL_35;
  }

  while (2)
  {
    v32 = v23;
    v33 = v22 - 1;
    v22 = (v22 - 1) >> 1;
    v23 = (a1 + 40 * v22);
    if (*v23 != result.n128_f64[0])
    {
      if (*v23 >= result.n128_f64[0])
      {
        if (result.n128_f64[0] < *v23)
        {
          goto LABEL_34;
        }

LABEL_26:
        if (*(v23 + 4) >= v27)
        {
          goto LABEL_34;
        }
      }

LABEL_27:
      v30 = *v23;
      v31 = v23[1];
      *(v32 + 8) = *(v23 + 8);
      *v32 = v30;
      v32[1] = v31;
      if (v33 <= 1)
      {
        goto LABEL_35;
      }

      continue;
    }

    break;
  }

  v34 = *(v23 + 1);
  if (v34 < v26)
  {
    goto LABEL_27;
  }

  if (v26 >= v34)
  {
    goto LABEL_26;
  }

LABEL_34:
  v23 = v32;
LABEL_35:
  *v23 = result.n128_u64[0];
  *(v23 + 1) = v26;
  *(v23 + 4) = v27;
  result = v38;
  *(v23 + 20) = v38;
  return result;
}

void sub_45324(void *a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  sub_30850(a1, v30, a5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2 == -1)
  {
    v25 = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = a2;
    v13 = a2 + 1;
    do
    {
      sub_2E454(&__p, v30, v11 / v12, a4);
      LODWORD(v14) = v27;
      if (v27 >= 0xFFFFFFFE)
      {
        v14 = 4294967294;
      }

      else
      {
        v14 = v14;
      }

      v15 = *&__p | (v14 << 32);
      if (v29)
      {
        v16 = 0x7FFFFFFF;
      }

      else
      {
        v16 = v28;
      }

      v17 = a3[2];
      if (v10 < v17)
      {
        *v10 = v15;
        *(v10 + 8) = v16;
        v10 += 12;
      }

      else
      {
        v18 = *a3;
        v19 = v10 - *a3;
        v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 2) + 1;
        if (v20 > 0x1555555555555555)
        {
          sub_1794();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 2);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0xAAAAAAAAAAAAAAALL)
        {
          v22 = 0x1555555555555555;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v23 = 4 * (v19 >> 2);
        *v23 = v15;
        *(v23 + 8) = v16;
        v10 = v23 + 12;
        v24 = v23 - v19;
        memcpy((v23 - v19), v18, v19);
        *a3 = v24;
        a3[1] = v10;
        a3[2] = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      a3[1] = v10;
      ++v11;
    }

    while (v13 != v11);
    v25 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a3) >> 2);
  }

  *&__p = 0.0;
  v27 = 0.0;
  v28 = 0.0;
  sub_42058(a3, v25, 1, 1, &__p, a6);
  if (*&__p != 0.0)
  {
    operator delete(__p);
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }
}

void sub_45560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v17 = *v15;
    if (!*v15)
    {
LABEL_3:
      v18 = a14;
      if (!a14)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v17 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  *(v15 + 8) = v17;
  operator delete(v17);
  v18 = a14;
  if (!a14)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(v18);
  _Unwind_Resume(exception_object);
}

void sub_4561C(void *a1, void *a2)
{
  v4 = sub_41224(a1, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2) - 2);
  v5 = a1[1];
  v6 = *a2;
  v7 = sub_41224(a2, 1uLL);
  v8 = *(v5 - 12);
  v9 = v8 - *v4;
  if (v8 == *v4)
  {
    v10 = v4[1];
    v11 = *(v5 - 8);
    i = 0.0;
    if (v10 == v11)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v11 = *(v5 - 8);
    v10 = v4[1];
  }

  v13 = --v9;
  if (v9 < -v9)
  {
    v13 = v9;
  }

    ;
  }

    ;
  }

LABEL_11:
  if (*v7 == *v6)
  {
    v14 = v6[1];
    v15 = v7[1];
    j = 0.0;
    if (v14 == v15)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v15 = v7[1];
    v14 = v6[1];
  }

  v17 = -(*v6 - *v7);
  if (*v7 - *v6 < (*v6 - *v7))
  {
    v17 = (*v7 - *v6);
  }

    ;
  }

    ;
  }

LABEL_21:
  fmod(vabdd_f64(i, j), 360.0);
}

void sub_45884(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2) >= 2 && a1 < a2)
  {
    v5 = 0;
    v6 = a2;
    v7 = a2 / 100.0;
    v39 = vdupq_n_s64(0x4076800000000000uLL);
    v37 = vdupq_n_s64(0xC066800000000000);
    v38 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v36 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v8 = a1 / 100.0;
    v41 = a2;
    v40 = v7;
    v35 = v8;
    do
    {
      v9 = (v3 + 12 * v5);
      v10 = *v9;
      v11 = v5 + 1;
      v45 = *(v9 + 12);
      v12 = HIDWORD(*v9);
      v13 = v10 == -1 && v12 == -1;
      if (v13 || v45 == -1)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
        v15 = vcvtmd_s64_f64(v14 / v6);
        v16 = fmod(v14 / 100.0, v7) < v8;
        if (v15 != v16)
        {
          if (((v15 - v16) & 0x80000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }

        v17 = a3;
        v18 = (v15 - v16) - 0x5555555555555555 * ((a3[1] - *a3) >> 2);
        if (0xAAAAAAAAAAAAAAABLL * ((a3[2] - *a3) >> 2) < v18)
        {
          if (v18 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_4798C(a3, (*a3 + 12 * v5 + 12), 0, 0, 0);
        v11 = v5 + 1;
        goto LABEL_7;
      }

      v19 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
      v20 = atan((v19 - 1.0 / v19) * 0.5) * 57.2957795 * 0.0174532925;
      v21.i64[0] = v10;
      v21.i64[1] = v45;
      v22 = exp(3.14159265 - HIDWORD(v45) * 6.28318531 / 4294967300.0);
      v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795 * 0.0174532925;
      v24 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v21), v39), v38), v37), v36);
      v44 = vsubq_f64(v24, vdupq_laneq_s64(v24, 1)).f64[0];
      v25 = sin((v20 - v23) * 0.5);
      v26 = v25 * v25;
      v27 = cos(v20);
      v28 = v27 * cos(v23);
      v29 = sin(0.5 * v44);
      v30 = atan2(sqrt(v29 * v29 * v28 + v26), sqrt(1.0 - (v29 * v29 * v28 + v26)));
      v31 = (v30 + v30) * 6372797.56 * 100.0;
      if (v31 >= 0.0)
      {
        v32 = v31;
        if (v31 >= 4.50359963e15)
        {
          goto LABEL_27;
        }

        v33 = (v31 + v31) + 1;
      }

      else
      {
        v32 = v31;
        if (v31 <= -4.50359963e15)
        {
          goto LABEL_27;
        }

        v33 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
      }

      v32 = (v33 >> 1);
LABEL_27:
      v17 = a3;
      v7 = v40;
      v6 = v41;
      v8 = v35;
      if (v32 >= 9.22337204e18)
      {
        v14 = 0x7FFFFFFFFFFFFFFELL;
        if (a2 != 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_14;
        }

        goto LABEL_7;
      }

      if (v31 >= 0.0)
      {
        if (v31 >= 4.50359963e15)
        {
          goto LABEL_36;
        }

        v34 = (v31 + v31) + 1;
      }

      else
      {
        if (v31 <= -4.50359963e15)
        {
          goto LABEL_36;
        }

        v34 = (v31 + v31) - 1 + (((v31 + v31) - 1) >> 63);
      }

      v31 = (v34 >> 1);
LABEL_36:
      v14 = v31;
      if (v31 >= a2)
      {
        goto LABEL_14;
      }

LABEL_7:
      v3 = *v17;
      v5 = v11;
    }

    while (v11 < -1 - 0x5555555555555555 * ((v17[1] - *v17) >> 2));
  }
}

void sub_45EC0(_Unwind_Exception *a1)
{
  if (v1)
  {
    v2 = a1;
    operator delete(v1);
    a1 = v2;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_45EE8(uint64_t *a1)
{
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  v1 = *a1;
  v2 = a1[1];
  v43 = 0;
  v44 = 0;
  v42 = 0;
  if (v2 != v1)
  {
    if (!((0xAAAAAAAAAAAAAAAELL * ((v2 - v1) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  sub_121ACC0(&v27, &v42);
  v3 = 3 * ((((v29 - v28) >> 3) + 2) / 3uLL);
  if (v3)
  {
    for (i = 0; i != v3; i += 3)
    {
      v5 = v28 + 8 * i;
      v6 = (*v27 + 16 * *v5);
      v7 = v6[1];
      v8 = *v6;
      LODWORD(v9) = v7;
      if (v7 >= 0xFFFFFFFE)
      {
        v9 = 4294967294;
      }

      else
      {
        v9 = v9;
      }

      v25 = (v8 | (v9 << 32));
      v26 = 0x7FFFFFFF;
      v10 = (*v27 + 16 * *(v5 + 8));
      v11 = v10[1];
      v12 = *v10;
      LODWORD(v9) = v11;
      if (v11 >= 0xFFFFFFFE)
      {
        v9 = 4294967294;
      }

      else
      {
        v9 = v9;
      }

      v23 = v12 | (v9 << 32);
      v24 = 0x7FFFFFFF;
      v13 = (*v27 + 16 * *(v5 + 16));
      v14 = v13[1];
      v15 = *v13;
      LODWORD(v5) = v14;
      if (v14 >= 0xFFFFFFFE)
      {
        v5 = 4294967294;
      }

      else
      {
        v5 = v5;
      }

      v21 = v15 | (v5 << 32);
      v22 = 0x7FFFFFFF;
      if (sub_48240(&v45, &v25) && sub_48240(&v45, &v23) && sub_48240(&v45, &v21))
      {
        v48 = &v25;
        v26 = *(sub_48398(&v45, &v25) + 7);
        v48 = &v23;
        v24 = *(sub_48398(&v45, &v23) + 7);
        v48 = &v21;
        v16 = *(sub_48398(&v45, &v21) + 7);
        v48 = v25;
        v49 = v26;
        v50 = v23;
        v51 = v24;
        v52 = v21;
        v22 = v16;
        v53 = v16;
        v55 = v26;
        v54 = v25;
        v57 = 0;
        v58 = 0;
        v56 = 0;
        operator new();
      }
    }
  }

  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }

  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  v17 = v46;
  if (v46)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = v45;
  *&v45 = 0;
  if (v19)
  {
    operator delete(v19);
  }

  return 0x7FFFFFFFLL;
}

void sub_46824(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51)
{
  if (__p)
  {
    operator delete(__p);
  }

  v53 = *(v51 - 224);
  if (v53)
  {
    do
    {
      v54 = *v53;
      operator delete(v53);
      v53 = v54;
    }

    while (v54);
  }

  v55 = *(v51 - 240);
  *(v51 - 240) = 0;
  if (v55)
  {
    operator delete(v55);
  }

  _Unwind_Resume(exception_object);
}

double **sub_468D0(double **result, double a2, double a3)
{
  v3 = *result;
  v4 = result[1];
  v5 = v4 - *result;
  if (v5 < 0x11)
  {
    return result;
  }

  v7 = v3 + 2;
  v8 = 0.0;
  v9 = v3 == v4 || v7 == v4;
  v10 = 0.0;
  if (!v9)
  {
    v11 = v5 - 32;
    if (v11 >= 0x30)
    {
      v14 = (v11 >> 4) + 1;
      v15 = 2 * (v14 & 0x1FFFFFFFFFFFFFFCLL);
      v12 = &v7[v15];
      v13 = &v3[v15];
      v16 = (v3 + 4);
      v17 = v14 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v18 = v16[-2];
        v19 = v16[-1];
        v21 = v16[1];
        v20 = v16[2];
        v22 = *v16;
        v16 += 4;
        v23 = vsubq_f64(v18, v19);
        v24 = vsubq_f64(v19, v22);
        v25 = vsubq_f64(v22, v21);
        v26 = vsubq_f64(v21, v20);
        v27 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v24, v24)));
        v28 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26)));
        v10 = v10 + v27.f64[0] + v27.f64[1] + v28.f64[0] + v28.f64[1];
        v17 -= 4;
      }

      while (v17);
      if (v14 == (v14 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_12;
      }
    }

    else
    {
      v12 = v3 + 2;
      v13 = *result;
    }

    do
    {
      v29 = *v12;
      v12 += 2;
      v10 = v10 + sqrt((*v13 - v29) * (*v13 - v29) + (v13[1] - v13[3]) * (v13[1] - v13[3]));
      v13 += 2;
    }

    while (v12 != v4);
  }

LABEL_12:
  v30 = *v3;
  v31 = v3[1];
  v33 = v3[2];
  v32 = v3[3];
  v34 = v33 - *v3;
  v35 = v32 - v31;
  v36 = sqrt(v34 * v34 + v35 * v35);
  v37 = 0.0;
  if (v36 != 0.0)
  {
    v37 = v35 / v36;
    v8 = -v34 / v36;
  }

  v38 = v8 * a2;
  v39 = v30 + v37 * a2;
  v40 = v31 + v38;
  *v3 = v39;
  v3[1] = v31 + v38;
  v41 = a3 * 0.0;
  if (v3 != v4 && v7 != v4)
  {
    v42 = v3 + 4;
    if (v3 + 4 != v4)
    {
      v43 = result;
      v44 = sqrt((v40 - v32) * (v40 - v32) + (v39 - v33) * (v39 - v33));
      v45 = v41 + a2;
      v46 = v44 / v10 * a3 + (1.0 - v44 / v10) * a2;
      do
      {
        v53 = v33;
        v54 = v32;
        v55 = v33 - v30;
        v56 = v32 - v31;
        v57 = sqrt(v55 * v55 + v56 * v56);
        v58 = 0.0;
        v59 = 0.0;
        if (v57 != 0.0)
        {
          v59 = v56 / v57;
          v58 = -v55 / v57;
        }

        v47 = *v42;
        v48 = v42[1];
        v44 = v44 + sqrt((v53 - *v42) * (v53 - *v42) + (v54 - v48) * (v54 - v48));
        v66.f64[0] = v30 + v45 * v59;
        v66.f64[1] = v31 + v45 * v58;
        v65.f64[0] = v53 + v46 * v59;
        v65.f64[1] = v54 + v46 * v58;
        v49 = sqrt((v47 - v53) * (v47 - v53) + (v48 - v54) * (v48 - v54));
        v50 = (v48 - v54) / v49;
        v51 = -(v47 - v53) / v49;
        if (v49 == 0.0)
        {
          v51 = 0.0;
          v50 = 0.0;
        }

        v52 = v44 / v10 * a3 + (1.0 - v44 / v10) * a2;
        v64[0] = v53 + v46 * v50;
        v64[1] = v54 + v46 * v51;
        v63[0] = v47 + v52 * v50;
        v63[1] = v48 + v52 * v51;
        sub_3B918(&v66, &v65, v64, v63, v42 - 1);
        v33 = *v42;
        v32 = v42[1];
        v42 += 2;
        v30 = v53;
        v31 = v54;
        v45 = v46;
        v46 = v52;
      }

      while (v42 != v4);
      v34 = v33 - v53;
      v35 = v32 - v54;
      v36 = sqrt(v34 * v34 + v35 * v35);
      result = v43;
      v41 = a3 * 0.0;
    }
  }

  v60 = v41;
  if (v36 != 0.0)
  {
    v60 = v35 / v36 * a3;
    v41 = -v34 / v36 * a3;
  }

  v61 = result[1];
  *(v61 - 2) = v33 + v60;
  *(v61 - 1) = v32 + v41;
  return result;
}

uint64_t sub_46C5C(uint64_t *a1, uint64_t *a2, uint64_t *a3, double a4)
{
  v57 = *a1;
  v56 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  if (v56 < 3)
  {
    return 0;
  }

  v5 = a4;
  v6 = 0;
  v58 = 0;
  v7 = *a2 * 0.5;
  v8 = (v7 + v7);
  v45 = ((v8 - 1) / 2);
  v46 = ((v8 + 1) >> 1);
  v53 = *a3;
  v9 = 0.0;
  v10 = 1;
  v50 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
  v51 = vdupq_n_s64(0x4076800000000000uLL);
  v48 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v49 = vdupq_n_s64(0xC066800000000000);
  v11 = 0.0;
  v47 = v7;
  while (1)
  {
    v12 = (v57 + 12 * v6);
    v13 = (v57 + 12 * v10);
    v14 = *v12;
    v15 = v12[1];
    v16 = *v13;
    if (*v12 == -1 && v15 == -1)
    {
      break;
    }

    v18 = v13[1];
    if (v16 == -1 && v18 == -1)
    {
      break;
    }

    v55 = v9;
    v20 = exp(3.14159265 - v15 * 6.28318531 / 4294967300.0);
    v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
    v22.i64[0] = v14;
    v22.i64[1] = v16;
    v23 = exp(3.14159265 - v18 * 6.28318531 / 4294967300.0);
    v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795 * 0.0174532925;
    v25 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), v51), v50), v49), v48);
    v54 = vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0];
    v26 = sin((v21 - v24) * 0.5);
    v27 = v26 * v26;
    v28 = cos(v21);
    v29 = v28 * cos(v24);
    v30 = sin(0.5 * v54);
    v32 = atan2(sqrt(v30 * v30 * v29 + v27), sqrt(1.0 - (v30 * v30 * v29 + v27)));
    v33 = (v32 + v32) * 6372797.56 * 100.0;
    if (v33 >= 0.0)
    {
      v34 = v33;
      if (v33 >= 4.50359963e15)
      {
        goto LABEL_45;
      }

      v35 = (v33 + v33) + 1;
    }

    else
    {
      v34 = v33;
      if (v33 <= -4.50359963e15)
      {
        goto LABEL_45;
      }

      v35 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
    }

    v34 = (v35 >> 1);
LABEL_45:
    v5 = a4;
    v9 = v55;
    v7 = v47;
    if (v34 >= 9.22337204e18)
    {
      v36 = 0x7FFFFFFFFFFFFFFELL;
      if (v53 != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_18;
      }

      goto LABEL_55;
    }

    if (v33 >= 0.0)
    {
      if (v33 >= 4.50359963e15)
      {
        goto LABEL_54;
      }

      v43 = (v33 + v33) + 1;
    }

    else
    {
      if (v33 <= -4.50359963e15)
      {
        goto LABEL_54;
      }

      v43 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
    }

    v33 = (v43 >> 1);
LABEL_54:
    v36 = v33;
    if (v33 >= v53)
    {
      goto LABEL_18;
    }

LABEL_55:
    i = v11;
LABEL_5:
    ++v10;
    v11 = i;
    if (v10 == v56)
    {
      v44 = 0;
      return v44 & v31;
    }
  }

  v36 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:
  v37 = v13[1];
  i = 0.0;
  if (v16 != v14 || v15 != v37)
  {
    v40 = -(v14 - v16);
    if (v16 - v14 < v14 - v16)
    {
      v40 = (v16 - v14);
    }

      ;
    }

    while (i < -180.0)
    {
      i = i + 360.0;
    }
  }

  if (v6)
  {
    v41 = fmod(vabdd_f64(v11, i), 360.0);
    if (v41 > 180.0)
    {
      v41 = 360.0 - v41;
    }

    v9 = v9 + v41;
  }

  if (v9 <= v5)
  {
    if (v7 >= 0.0)
    {
      v42 = v7;
      if (v7 < 4.50359963e15)
      {
        v42 = v46;
      }
    }

    else
    {
      v42 = v7;
      if (v7 > -4.50359963e15)
      {
        v42 = v45;
      }
    }

    v31 = v36 + v58;
    v58 += v36;
    if (v6)
    {
      v6 = v10;
      if (v31 >= v42)
      {
        LODWORD(v31) = 0;
        v44 = 1;
        return v44 & v31;
      }
    }

    else
    {
      v6 = v10;
    }

    goto LABEL_5;
  }

  v44 = 1;
  LODWORD(v31) = 1;
  return v44 & v31;
}

void sub_47190(_DWORD *a1, void *a2)
{
  v2 = a2[1];
  v3 = (*a2 + 12);
  if (*a2 != v2 && v3 != v2)
  {
    v6 = INFINITY;
    v7 = 1.0;
    v8 = 0.5;
    HIDWORD(v9) = 1096306543;
    v10 = 0.0;
    v11 = 0.0;
    do
    {
      v59 = v11;
      v60 = v10;
      v61 = v6;
      v31 = *(v3 - 3);
      LODWORD(v9) = *(v3 - 2);
      v58 = v9;
      v32 = exp(3.14159265 - v9 * 6.28318531 / 4294967300.0);
      v33 = atan((v32 - v7 / v32) * v8) * 57.2957795 * 0.0174532925;
      *&v34 = v31 * 360.0 / 4294967300.0 + -180.0;
      v35 = *&v34 * 0.0174532925;
      LODWORD(v34) = v3[1];
      v52 = v35;
      v55 = v34;
      v36 = exp(3.14159265 - v34 * 6.28318531 / 4294967300.0);
      *&v37 = atan((v36 - 1.0 / v36) * 0.5) * 57.2957795;
      v38 = *&v37 * 0.0174532925;
      LODWORD(v37) = *v3;
      v39 = v37;
      v40 = v52 - (v37 * 360.0 / 4294967300.0 + -180.0) * 0.0174532925;
      v41 = sin((v33 - v38) * 0.5);
      v42 = v41 * v41;
      v43 = cos(v33);
      v44 = v43 * cos(v38);
      v45 = sin(v40 * 0.5);
      v46 = atan2(sqrt(v45 * v45 * v44 + v42), sqrt(1.0 - (v45 * v45 * v44 + v42)));
      v47 = v39 - v31;
      v48 = v55 - v58;
      v49 = v48 * v48 + v47 * v47;
      if (v49 == 0.0)
      {
        goto LABEL_6;
      }

      v50 = -v49;
      if (v49 > 0.0)
      {
        v50 = v48 * v48 + v47 * v47;
      }

      HIDWORD(v51) = 1018167296;
      if (v50 < 2.22044605e-16)
      {
LABEL_6:
        v12 = 0.0;
      }

      else
      {
        LODWORD(v50) = *a1;
        LODWORD(v51) = a1[1];
        v12 = (v47 * (*&v50 - v31) + v48 * (v51 - v58)) / v49;
      }

      v13 = (v46 + v46) * 6372797.56;
      if (v12 <= 1.0)
      {
        v14 = v12;
      }

      else
      {
        v14 = 1.0;
      }

      if (v12 < 0.0)
      {
        v14 = 0.0;
      }

      v56 = v14;
      v57 = v13;
      v15 = sub_6EFC0(v3 - 3, v3, v14);
      LODWORD(v16) = a1[1];
      v17 = exp(3.14159265 - v16 * 6.28318531 / 4294967300.0);
      v7 = 1.0;
      v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795 * 0.0174532925;
      v53 = *a1;
      v19 = exp(3.14159265 - HIDWORD(v15) * 6.28318531 / 4294967300.0);
      v20 = atan((v19 - 1.0 / v19) * 0.5) * 57.2957795 * 0.0174532925;
      v21.i64[0] = v53;
      v21.i64[1] = v15;
      v22 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v54 = vsubq_f64(v22, vdupq_laneq_s64(v22, 1)).f64[0];
      v23 = sin((v18 - v20) * 0.5);
      v24 = v23 * v23;
      v25 = cos(v18);
      v26 = v25 * cos(v20);
      v27 = sin(0.5 * v54);
      v28 = atan2(sqrt(v27 * v27 * v26 + v24), sqrt(1.0 - (v27 * v27 * v26 + v24)));
      v6 = v61;
      v29 = (v28 + v28) * 6372797.56;
      v8 = 0.5;
      v10 = v59 + v57 * v56;
      v30 = v29 < v61;
      if (v29 < v61)
      {
        v6 = v29;
      }

      HIDWORD(v9) = HIDWORD(v60);
      if (!v30)
      {
        v10 = v60;
      }

      v11 = v59 + v57;
      v3 += 3;
    }

    while (v3 != v2);
  }
}

void sub_475C4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, int a4@<W3>, uint64_t *a5@<X4>, unint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v9 = *a2;
  if (*a2 >= *a3)
  {
    v9 = *a3;
  }

  if (*a3 >= 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = *a5;
  v12 = *a1;
  v13 = a1[1];
  v14 = v13 - *a1;
  v15 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
  if (a6 <= v15 - 1)
  {
    v16 = v15 - 1;
  }

  else
  {
    v16 = a6;
  }

  v44 = a1[1];
  v45 = v15 - 1;
  if (v15 - 1 > a6)
  {
    v17 = a6;
    v18 = *(a7 + 24);
    v48 = v15 - 2;
    v49 = v12 + v14 - 12;
    v19 = 12 * a6 + v12 + 12;
    v20 = v13 - 12 * a6 - 12;
    v47 = *a7;
    v21 = *a7 - 8 * a6 + 0x5555555555555558 * (v14 >> 2) - 24;
    v52 = *a1;
    v53 = v10;
    v51 = v16;
    v50 = v18;
    while (a4)
    {
      v22 = (v49 + 12 * ~v17);
      if ((v18 & 1) == 0)
      {
        v25 = v20;
        goto LABEL_20;
      }

      v23 = (v21 + 8);
      if (v48 != v17)
      {
        v25 = v20;
        v26 = v21;
LABEL_32:
        v24 = *v26;
        goto LABEL_38;
      }

      v24 = 0;
      v25 = v20;
LABEL_38:
      v37 = *v23 - v24;
LABEL_39:
      v38 = v37 + v11;
      if (v37 + v11 >= v10)
      {
        v41 = 0.0;
        if (v37 / 100.0 > 0.0)
        {
          v41 = (v10 - v11) / v37;
        }

        v42 = sub_6EFC0(v25, v22, v41);
        v40 = a8;
        *a8 = v42;
        *(a8 + 8) = v43;
        goto LABEL_49;
      }

      ++v17;
      v19 += 12;
      v20 -= 12;
      v21 -= 8;
      v11 += v37;
      if (v16 == v17)
      {
        goto LABEL_43;
      }
    }

    v25 = (v12 + 12 * v17);
    if ((v18 & 1) == 0)
    {
      v22 = v19;
LABEL_20:
      v27 = v25[1];
      v28 = v22[1];
      v29 = exp(((v28 >> 1) + (v27 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
      v30 = atan((v29 + -1.0 / v29) * 0.5);
      v31 = cos(v30 * 57.2957795 / 180.0 * 3.14159265);
      v32 = *v25 - *v22;
      v33 = sqrt(((v27 - v28) * (v27 - v28) + v32 * v32)) / 100.0 * 100.0 * (v31 * 0.00932288077) * 100.0;
      if (v33 >= 0.0)
      {
        v34 = v33;
        v10 = v53;
        v16 = v51;
        if (v33 < 4.50359963e15)
        {
          v35 = (v33 + v33) + 1;
LABEL_25:
          v34 = (v35 >> 1);
        }
      }

      else
      {
        v34 = v33;
        v10 = v53;
        v16 = v51;
        if (v33 > -4.50359963e15)
        {
          v35 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
          goto LABEL_25;
        }
      }

      v12 = v52;
      v18 = v50;
      if (v34 >= 9.22337204e18)
      {
        v37 = 0x7FFFFFFFFFFFFFFELL;
        goto LABEL_39;
      }

      if (v33 >= 0.0)
      {
        if (v33 < 4.50359963e15)
        {
          v36 = (v33 + v33) + 1;
LABEL_35:
          v33 = (v36 >> 1);
        }
      }

      else if (v33 > -4.50359963e15)
      {
        v36 = (v33 + v33) - 1 + (((v33 + v33) - 1) >> 63);
        goto LABEL_35;
      }

      v37 = v33;
      goto LABEL_39;
    }

    v23 = (v47 + 8 * v17);
    if (!v17)
    {
      v24 = 0;
      v22 = v19;
      goto LABEL_38;
    }

    v26 = v23 - 1;
    v22 = v19;
    goto LABEL_32;
  }

  v38 = *a5;
LABEL_43:
  v17 = v45;
  v39 = v44 - 12;
  if (a4)
  {
    v39 = v12;
  }

  *a8 = *v39;
  v40 = a8;
  *(a8 + 8) = *(v39 + 8);
  v11 = v38;
LABEL_49:
  *(v40 + 16) = v11;
  *(v40 + 24) = v17;
}

char *sub_4798C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = __src;
  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2)) < a5)
  {
    v10 = *a1;
    v11 = a5 - 0x5555555555555555 * ((v9 - *a1) >> 2);
    if (v11 > 0x1555555555555555)
    {
      sub_1794();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 2);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0xAAAAAAAAAAAAAAALL)
    {
      v13 = 0x1555555555555555;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      if (v13 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_1808();
    }

    v31 = 4 * ((__dst - v10) >> 2);
    v32 = 12 * a5;
    v33 = v31 + 12 * a5;
    v34 = v31;
    do
    {
      v35 = *v6;
      *(v34 + 8) = *(v6 + 2);
      *v34 = v35;
      v34 += 12;
      v6 += 12;
      v32 -= 12;
    }

    while (v32);
    v36 = *(a1 + 8) - __dst;
    memcpy((v31 + 12 * a5), __dst, v36);
    v37 = v33 + v36;
    *(a1 + 8) = v5;
    v38 = *a1;
    v39 = &v5[-*a1];
    v40 = v31 - v39;
    memcpy((v31 - v39), *a1, v39);
    *a1 = v40;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v38)
    {
      operator delete(v38);
    }

    return v31;
  }

  v14 = v9 - __dst;
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - __dst) >> 2)) >= a5)
  {
    v14 = 12 * a5;
    v27 = &__dst[12 * a5];
    v28 = v9 - 12 * a5;
    for (i = *(a1 + 8); v28 < v9; v28 += 12)
    {
      v30 = *v28;
      *(i + 8) = *(v28 + 8);
      *i = v30;
      i += 12;
    }

    *(a1 + 8) = i;
    if (v9 == v27)
    {
      goto LABEL_27;
    }

    v25 = v9 - v27;
    v26 = &__dst[12 * a5];
    goto LABEL_26;
  }

  v15 = a4 - &__src[v14];
  if (a4 != &__src[v14])
  {
    v16 = a5;
    v17 = a4;
    memmove(*(a1 + 8), &__src[v14], a4 - &__src[v14]);
    a4 = v17;
    a5 = v16;
  }

  v18 = (v9 + v15);
  *(a1 + 8) = v9 + v15;
  if (v14 >= 1)
  {
    v19 = &v5[12 * a5];
    v20 = v9 + v15;
    if (&v18[-12 * a5] < v9)
    {
      v21 = &v5[a4];
      v22 = &v5[a4 + -12 * a5];
      do
      {
        v23 = v21 - v6;
        v24 = *(v22 - v6);
        *(v23 + 8) = *(v22 - v6 + 8);
        *v23 = v24;
        v22 += 12;
        v21 += 12;
      }

      while (v22 - v6 < v9);
      v20 = v21 - v6;
    }

    *(a1 + 8) = v20;
    if (v18 == v19)
    {
      goto LABEL_27;
    }

    v25 = v18 - v19;
    v26 = &v5[12 * a5];
LABEL_26:
    memmove(v26, v5, v25);
LABEL_27:
    memmove(v5, v6, v14);
  }

  return v5;
}

void *sub_47C4C(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_47D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_47D80(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_47D80(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void *sub_47DF0(void *a1)
{
  v2 = a1[23];
  if (v2)
  {
    a1[24] = v2;
    operator delete(v2);
  }

  v3 = a1[17];
  if (v3)
  {
    a1[18] = v3;
    operator delete(v3);
  }

  v4 = a1[13];
  if (v4)
  {
    a1[14] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[11] = v5;
    operator delete(v5);
  }

  v6 = a1[7];
  if (v6)
  {
    a1[8] = v6;
    operator delete(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[5] = v7;
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    a1[2] = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t *sub_47E84(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a2[2];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_25:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 20) == __PAIR64__(v5, v3))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_25;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 20) != __PAIR64__(v5, v3))
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t *sub_48240(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = (v4 + (((v3 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v3 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v3 + 0x388152A534) ^ 0xDEADBEEFLL;
  v6 = a2[2];
  v7 = (v6 + (v5 << 6) + (v5 >> 2) + 2654435769u) ^ v5;
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

  result = *v10;
  if (*v10)
  {
    if (v8.u32[0] < 2uLL)
    {
      v12 = *&v2 - 1;
      while (1)
      {
        v13 = result[1];
        if (v7 == v13)
        {
          if (*(result + 4) == v3 && *(result + 20) == __PAIR64__(v6, v4))
          {
            return result;
          }
        }

        else if ((v13 & v12) != v9)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v7 == v14)
      {
        if (*(result + 4) == v3 && *(result + 20) == __PAIR64__(v6, v4))
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v9)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_48398(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = (v3 + (((v2 + 0x388152A534) ^ 0xDEADBEEFLL) << 6) + (((v2 + 0x388152A534) ^ 0xDEADBEEFuLL) >> 2) + 2654435769u) ^ (v2 + 0x388152A534) ^ 0xDEADBEEFLL;
  v5 = a2[2];
  v6 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = (v5 + (v4 << 6) + (v4 >> 2) + 2654435769u) ^ v4;
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
LABEL_25:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (*(v11 + 4) == v2 && *(v11 + 20) == __PAIR64__(v5, v3))
        {
          return v11;
        }
      }

      else if ((v12 & (*&v7 - 1)) != v9)
      {
        goto LABEL_25;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_25;
      }
    }
  }

  while (1)
  {
    v14 = v11[1];
    if (v14 == v6)
    {
      break;
    }

    if (v14 >= *&v7)
    {
      v14 %= *&v7;
    }

    if (v14 != v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  if (*(v11 + 4) != v2 || *(v11 + 20) != __PAIR64__(v5, v3))
  {
    goto LABEL_18;
  }

  return v11;
}

uint64_t sub_48754(uint64_t a1, void *a2, double a3)
{
  v3 = a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2) < 3)
  {
    return v3;
  }

  v80 = sub_49188(a1, a2);
  v5 = sub_41224(a2, v80);
  v82 = 0;
  v83 = 0;
  v84 = 0;
  v6 = (a2[1] - *a2) >> 2;
  v79 = v5;
  if (0xAAAAAAAAAAAAAAABLL * v6 != 1)
  {
    if (0xAAAAAAAAAAAAAAABLL * v6 - 1 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = 0;
  v8 = 0;
  v9 = a2[1] - *a2;
  if (v9)
  {
    v78 = v3;
    v10 = 0;
    v81 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
    v11 = v80;
    while (v10 == v11)
    {
LABEL_9:
      if (++v10 == v81)
      {
        v8 = v82;
        v3 = v78;
        goto LABEL_36;
      }
    }

    v12 = sub_41224(a2, v10);
    v13 = sub_41224(a2, v10);
    if (*v13 == *v5)
    {
      v14 = v5[1];
      v15 = v13[1];
      i = 0.0;
      if (v14 == v15)
      {
LABEL_22:
        __p[0] = *v12;
        LODWORD(__p[1]) = *(v12 + 8);
        v18 = v83;
        if (v83 < v84)
        {
          *v83 = *__p;
          *(v18 + 2) = i;
          v7 = (v18 + 24);
        }

        else
        {
          v19 = v82;
          v20 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3);
          v21 = v20 + 1;
          if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1794();
          }

          if (0x5555555555555556 * ((v84 - v82) >> 3) > v21)
          {
            v21 = 0x5555555555555556 * ((v84 - v82) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v84 - v82) >> 3) >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          if (v22)
          {
            if (v22 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            sub_1808();
          }

          v23 = 8 * ((v83 - v82) >> 3);
          *v23 = *__p;
          *(v23 + 16) = i;
          v7 = (24 * v20 + 24);
          v24 = (v23 - (v18 - v19));
          memcpy(v24, v19, v18 - v19);
          v82 = v24;
          v84 = 0;
          if (v19)
          {
            operator delete(v19);
          }

          v5 = v79;
          v11 = v80;
        }

        v83 = v7;
        goto LABEL_9;
      }
    }

    else
    {
      v15 = v13[1];
      v14 = v5[1];
    }

    v17 = -(*v5 - *v13);
    if (*v13 - *v5 < (*v5 - *v13))
    {
      v17 = (*v13 - *v5);
    }

      ;
    }

    while (i < -180.0)
    {
      i = i + 360.0;
    }

    goto LABEL_22;
  }

LABEL_36:
  v25 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3));
  __p[0] = v5;
  if (v7 == v8)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  sub_4A4B0(v8, v7, __p, v26, 1);
  v27 = v82;
  v28 = v83;
  if (v82 != v83)
  {
    v29 = (v82 - 24);
    while (v29 + 6 != v83)
    {
      v30 = v29[5];
      v31 = v29[8];
      v29 += 3;
      if (v30 == v31)
      {
        for (j = (v29 + 6); j != v28; j += 24)
        {
          if (v29[2] != *(j + 2))
          {
            v33 = *(j + 2);
            v29[3] = *j;
            v29 += 3;
            *(v29 + 2) = v33;
            v29[2] = *(j + 2);
          }
        }

        v34 = (v29 + 3);
        if (v34 == v28)
        {
          break;
        }

        v83 = v34;
        if (0xAAAAAAAAAAAAAAABLL * ((v34 - v27) >> 3) >= 2)
        {
          goto LABEL_52;
        }

        goto LABEL_103;
      }
    }
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v28 - v27) >> 3) >= 2)
  {
LABEL_52:
    v86 = 0u;
    v87 = 0u;
    *__p = 0u;
    sub_50970(__p);
    v35 = ((*(&v87 + 1) + v87) * 0x8060180601806019) >> 64;
    v36 = (v35 + ((*(&v87 + 1) + v87 - v35) >> 1)) >> 8;
    v37 = *(__p[1] + v36) + 12 * (*(&v87 + 1) + v87 - 341 * v36);
    v38 = *v5;
    *(v37 + 8) = v5[2];
    *v37 = v38;
    ++*(&v87 + 1);
    v39 = sub_4935C(&v82, 0);
    v40 = __p[1];
    if (v86 == __p[1])
    {
      v41 = 0;
    }

    else
    {
      v41 = 341 * ((v86 - __p[1]) >> 3) - 1;
    }

    v42 = *(&v87 + 1) + v87;
    if (v41 == *(&v87 + 1) + v87)
    {
      sub_50970(__p);
      v40 = __p[1];
      v42 = *(&v87 + 1) + v87;
    }

    v43 = v40[v42 / 0x155] + 12 * (v42 % 0x155);
    v44 = *v39;
    *(v43 + 8) = *(v39 + 8);
    *v43 = v44;
    ++*(&v87 + 1);
    v45 = sub_4935C(&v82, 1uLL);
    v46 = __p[1];
    if (v86 == __p[1])
    {
      v47 = 0;
    }

    else
    {
      v47 = 341 * ((v86 - __p[1]) >> 3) - 1;
    }

    v48 = *(&v87 + 1) + v87;
    if (v47 == *(&v87 + 1) + v87)
    {
      sub_50970(__p);
      v46 = __p[1];
      v48 = *(&v87 + 1) + v87;
    }

    v49 = v46[v48 / 0x155] + 12 * (v48 % 0x155);
    v50 = *v45;
    *(v49 + 8) = *(v45 + 8);
    *v49 = v50;
    v51 = ++*(&v87 + 1);
    v52 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3);
    if (v52 <= 2)
    {
      v53 = 2;
    }

    else
    {
      v53 = 0xAAAAAAAAAAAAAAABLL * ((v83 - v82) >> 3);
    }

    if (v52 >= 3)
    {
      v56 = 2;
      do
      {
        v59 = sub_4935C(&v82, v56);
        sub_49578(v60, v61, v62, v63, v64, v3, __p, v59);
        v65 = sub_4935C(&v82, v56);
        v66 = __p[1];
        if (v86 == __p[1])
        {
          v67 = 0;
        }

        else
        {
          v67 = 341 * ((v86 - __p[1]) >> 3) - 1;
        }

        v68 = *(&v87 + 1) + v87;
        if (v67 == *(&v87 + 1) + v87)
        {
          sub_50970(__p);
          v66 = __p[1];
          v68 = *(&v87 + 1) + v87;
        }

        v57 = v66[v68 / 0x155] + 12 * (v68 % 0x155);
        v58 = *v65;
        *(v57 + 8) = *(v65 + 8);
        *v57 = v58;
        v51 = ++*(&v87 + 1);
        ++v56;
      }

      while (v53 != v56);
    }

    if (v51 >= 3)
    {
      v54 = *(v3 + 8);
      if (v54 >= *(v3 + 16))
      {
        v55 = sub_3B4FC(v3);
      }

      else
      {
        *v54 = 0;
        v54[1] = 0;
        v55 = v54 + 3;
        v54[2] = 0;
      }

      *(v3 + 8) = v55;
      if (0xAAAAAAAAAAAAAAABLL * ((*(v55 - 1) - *(v55 - 3)) >> 2) < *(&v87 + 1) + 1)
      {
        if ((*(&v87 + 1) + 1) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v69 = *(&v87 + 1);
      while (v69)
      {
        sub_376F0(*(v3 + 8) - 24, (*(__p[1] + (v69 + v87 - 1) / 0x155uLL) + 12 * ((v69 + v87 - 1) % 0x155uLL)));
        v70 = v87;
        if (v86 == __p[1])
        {
          v71 = 0;
        }

        else
        {
          v71 = 341 * ((v86 - __p[1]) >> 3) - 1;
        }

        v69 = --*(&v87 + 1);
        if ((v71 - (*(&v70 + 1) + v70) + 1) >= 0x2AA)
        {
          operator delete(*(v86 - 8));
          v69 = *(&v87 + 1);
          *&v86 = v86 - 8;
        }
      }

      sub_376F0(*(v3 + 8) - 24, *(*(v3 + 8) - 24));
    }

    v72 = __p[1];
    v73 = v86;
    *(&v87 + 1) = 0;
    v74 = (v86 - __p[1]) >> 3;
    if (v74 >= 3)
    {
      do
      {
        operator delete(*v72);
        v73 = v86;
        v72 = (__p[1] + 8);
        __p[1] = v72;
        v74 = (v86 - v72) >> 3;
      }

      while (v74 > 2);
    }

    if (v74 == 1)
    {
      v75 = 170;
    }

    else
    {
      if (v74 != 2)
      {
        goto LABEL_96;
      }

      v75 = 341;
    }

    *&v87 = v75;
LABEL_96:
    if (v72 != v73)
    {
      do
      {
        v76 = *v72++;
        operator delete(v76);
      }

      while (v72 != v73);
      if (v86 != __p[1])
      {
        *&v86 = v86 + ((__p[1] - v86 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    v27 = v82;
  }

LABEL_103:
  if (v27)
  {
    v83 = v27;
    operator delete(v27);
  }

  return v3;
}

void sub_49138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_34BE0(v17);
  _Unwind_Resume(a1);
}

unint64_t sub_49188(uint64_t a1, void *a2)
{
  v3 = sub_41224(a2, 0);
  v5 = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2);
  if (v6 >= 2)
  {
    LODWORD(v4) = *(v3 + 4);
    v8 = -6.28318531;
    v9 = 3.14159265;
    v10 = exp(v4 * -6.28318531 / 4294967300.0 + 3.14159265);
    v11 = -1.0;
    v12 = 0.5;
    v5 = 0;
    v13 = 57.2957795;
    v14 = atan((v10 + -1.0 / v10) * 0.5) * 57.2957795;
    for (i = 1; i != v6; ++i)
    {
      LODWORD(v16) = *(sub_41224(a2, i) + 4);
      v17 = exp(v16 * v8 / 4294967300.0 + v9);
      v18 = atan((v17 + v11 / v17) * v12);
      v19 = v18 * v13;
      if (v18 * v13 >= v14)
      {
        if (v18 * v13 != v14)
        {
          continue;
        }

        LODWORD(v20) = *sub_41224(a2, i);
        v27 = v14;
        v21 = v13;
        v22 = v9;
        v23 = v8;
        v24 = v20 * 360.0 / 4294967300.0 + -180.0;
        LODWORD(v25) = *sub_41224(a2, v5);
        v11 = -1.0;
        v12 = 0.5;
        v26 = v24 < v25 * 360.0 / 4294967300.0 + -180.0;
        v8 = v23;
        v9 = v22;
        v13 = v21;
        v14 = v27;
        if (!v26)
        {
          continue;
        }
      }

      v5 = i;
      v14 = v19;
    }
  }

  return v5;
}

uint64_t sub_4935C(void *a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 24 * a2;
}

void sub_49498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

void sub_49578(double a1, double a2, double a3, double a4, double a5, uint64_t a6, void *a7, _DWORD *a8)
{
  v10 = a7[1];
  v11 = a7[2];
  v12 = 341 * ((v11 - v10) >> 3) - 1;
  v14 = a7[4];
  v13 = a7[5];
  if (v11 == v10)
  {
    v15 = 0;
  }

  else
  {
    v15 = 341 * ((v11 - v10) >> 3) - 1;
  }

  v16 = v13 - 1 + v14;
  v17 = *(v10 + 8 * (v16 / 0x155)) + 12 * (v16 % 0x155);
  v29 = *v17;
  v18 = *(v17 + 8);
  a7[5] = v13 - 1;
  v31 = v18;
  if ((v15 - (v13 + v14) + 1) >= 0x2AA)
  {
    operator delete(*(v11 - 8));
    v10 = a7[1];
    v11 = a7[2] - 8;
    a7[2] = v11;
    v16 = a7[4] + a7[5];
    v12 = 341 * ((v11 - v10) >> 3) - 1;
  }

  v19 = ((v16 - 1) * 0x8060180601806019) >> 64;
  v20 = (v19 + ((v16 - 1 - v19) >> 1)) >> 8;
  v21 = *(v10 + 8 * v20) + 12 * (v16 - 1 - 341 * v20);
  v22 = *v21;
  v23.i64[0] = *(v21 + 4);
  if (v11 == v10)
  {
    v24 = 0;
  }

  else
  {
    v24 = v12;
  }

  if (v24 == v16)
  {
    v30 = *(v21 + 4);
    sub_50970(a7);
    v23.i64[0] = v30;
    v10 = a7[1];
    v16 = a7[5] + a7[4];
  }

  v25 = *(v10 + 8 * (v16 / 0x155)) + 12 * (v16 % 0x155);
  *v25 = v29;
  *(v25 + 8) = v31;
  v23.i64[1] = v29;
  ++a7[5];
  HIDWORD(v26) = vextq_s8(v23, v23, 8uLL).i32[1];
  v27.i64[0] = v23.u32[0];
  v27.i64[1] = HIDWORD(v26);
  v28 = vcvtq_f64_u64(v27);
  LODWORD(v26) = *a8;
  LODWORD(a5) = a8[1];
  if ((v28.f64[0] - v28.f64[1]) * (v26 - v23.u32[2]) >= (v22 - v23.u32[2]) * (*&a5 - v28.f64[1]))
  {
    operator new();
  }
}

void sub_49AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_49AD8(uint64_t a1, _DWORD *a2, double a3, double a4, double a5, double a6)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  if (*a1 == v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = a2[1];
    LODWORD(a4) = *a2;
    v10 = *&a4;
    do
    {
      v11 = v6[1];
      v12 = (*v6 + 12);
      if (*v6 != v11 && v12 != v11)
      {
        do
        {
          v14 = *(v12 - 2);
          v15 = v12[1];
          if (v14 < v9 != v15 < v9)
          {
            LODWORD(a5) = *v12;
            LODWORD(a6) = *(v12 - 3);
            a6 = *&a6;
            a5 = (v9 - v14) / (v15 - v14) * (*&a5 - a6) + a6;
            if (a5 < v10)
            {
              v8 ^= 1u;
            }
          }

          v12 += 3;
        }

        while (v12 != v11);
      }

      v6 += 3;
    }

    while (v6 != v7);
  }

  return v8 & 1;
}

uint64_t *sub_49B98(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1 + *(*a1 - 24);
  v5 = *(v4 + 2);
  *(v4 + 2) = 8;
  *(a1 + *(v3 - 24) + 8) = *(a1 + *(v3 - 24) + 8) & 0xFFFFFEFB | 4;
  sub_53D28(a2, __p);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  sub_4A5C(a1, v6, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + *(*a1 - 24) + 8) = v5;
  return a1;
}