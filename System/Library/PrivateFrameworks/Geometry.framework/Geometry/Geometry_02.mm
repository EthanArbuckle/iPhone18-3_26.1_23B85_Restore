double _ZNK4geom19interpolating_curveIDv4_dE18evaluate_length_atEd(uint64_t a1, double result)
{
  if ((*(a1 + 208) & 1) == 0)
  {
    v4 = a1 + 72;
    v3 = *(a1 + 72);
    v5 = 0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v3) >> 5);
    if ((v5 & 0xFFFE) != 0 && *(a1 + 192) < result)
    {
      LOWORD(v5) = v5 - 1;
      if (*(a1 + 200) > result)
      {
        for (i = 0; ; i = v7 + 1)
        {
          while (1)
          {
            v7 = (i + v5) >> 1;
            v8 = v3 + 96 * v7;
            if (*(v8 + 48) <= result)
            {
              break;
            }

            LOWORD(v5) = v7 - 1;
          }

          if (*(v8 + 56) > result)
          {
            break;
          }
        }

        LODWORD(v5) = (i + v5) >> 1;
      }

      v11 = v5;
      v12 = v5;
      v9 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v3 + 96 * v5, result);
      if (v12)
      {
        v10 = *(*(a1 + 48) + 8 * (v11 - 1));
        return v9 + v10;
      }
    }

    else
    {
      v9 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v3, result);
    }

    v10 = 0.0;
    return v9 + v10;
  }

  return result;
}

double _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(uint64_t a1, double a2)
{
  geom::interpolating_spline<double>::find_span(a1, v11, a2);
  v4 = v11[0];
  v5 = *(a1 + 72);
  if (*(a1 + 80) == v5)
  {
    if (v11[0])
    {
      v7 = 0;
      v6 = 0.0;
      do
      {
        v6 = v6 + _ZNK4geom20interpolating_splineIDv4_dE20evaluate_span_lengthEj(a1, v7++);
      }

      while (v4 != v7);
      goto LABEL_9;
    }
  }

  else if (v11[0])
  {
    v6 = *(v5 + 8 * (v11[0] - 1));
    goto LABEL_9;
  }

  v6 = 0.0;
LABEL_9:
  if (*(a1 + 66) == 1)
  {
    v8 = *(a1 + 64);
    if (v8 == v4)
    {
      v9 = *(a1 + 56);
    }

    else
    {
      v9 = *(a1 + 48) + v4 * ((*(a1 + 56) - *(a1 + 48)) / v8);
    }
  }

  else
  {
    v9 = *(*(a1 + 24) + 8 * v4);
  }

  return v6 + _ZNK4geom20interpolating_splineIDv4_dE24evaluate_length_betweeenEdd(a1, v9, a2);
}

void _ZNK4geom19interpolating_curveIDv4_dE10span_knotsEtRdS3_(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
{
  v9 = *(*a1 + 2 * a2);
  v10 = a2 - *(*(a1 + 24) + 2 * v9);
  if (*(a1 + 208) == 1)
  {
    if (*(*a1 + 2 * a2))
    {
      v11 = *(*(a1 + 48) + 8 * (v9 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    v18 = *(a1 + 72) + 96 * *(*a1 + 2 * a2);
    if (*(v18 + 66))
    {
      v19 = *(v18 + 48);
      LOWORD(a7) = *(v18 + 64);
      v20 = (*(v18 + 56) - v19) / *&a7;
      v21 = v19 + v10 * v20;
      v22 = v20 + v21;
    }

    else
    {
      v23 = (*(v18 + 24) + 8 * v10);
      v21 = *v23;
      v22 = v23[1];
    }

    *a3 = v11 + _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v18, v21);
    v16 = v11 + _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(*(a1 + 72) + 96 * v9, v22);
  }

  else
  {
    v12 = *(a1 + 72) + 96 * *(*a1 + 2 * a2);
    if (*(v12 + 66))
    {
      v13 = *(v12 + 48);
      LOWORD(a7) = *(v12 + 64);
      v14 = (*(v12 + 56) - v13) / *&a7;
      v15 = v13 + (a2 - *(*(a1 + 24) + 2 * v9)) * v14;
      *a3 = v15;
      v16 = v14 + v15;
    }

    else
    {
      v17 = *(v12 + 24) + 8 * v10;
      *a3 = *v17;
      v16 = *(v17 + 8);
    }
  }

  *a4 = v16;
}

uint64_t _ZNK4geom19interpolating_curveIDv4_dE33calculate_monomial_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = 96 * *(*a1 + 2 * a2);
  v6 = (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v5 = (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v7 = (*(v3 + v4) + 32 * v6);
  v8 = v7[1];
  *a3 = *v7;
  *(a3 + 16) = v8;
  v9 = (v5 + 1);
  v10 = *(v3 + v4);
  v11 = (v10 + 32 * v9);
  v12 = (v10 + 32 * v6);
  __asm { FMOV            V2.2D, #3.0 }

  v18 = vmulq_f64(vsubq_f64(v11[1], v12[1]), _Q2);
  *(a3 + 32) = vmulq_f64(vsubq_f64(*v11, *v12), _Q2);
  *(a3 + 48) = v18;
  v19 = *(v3 + v4);
  v20 = (v19 + 32 * v6);
  v22 = *v20;
  v21 = v20[1];
  v23 = (v19 + 32 * v9);
  __asm { FMOV            V5.2D, #-2.0 }

  v25 = (v6 + 2);
  v26 = (v19 + 32 * v25);
  v27 = vmulq_f64(vaddq_f64(vmlaq_f64(v22, _Q5, *v23), *v26), _Q2);
  v28 = vmulq_f64(vaddq_f64(vmlaq_f64(v21, _Q5, v23[1]), v26[1]), _Q2);
  *(a3 + 64) = v27;
  *(a3 + 80) = v28;
  v29 = *(v3 + v4);
  v30 = (v29 + 32 * v6);
  v31 = (v29 + 32 * v9);
  v32 = (v29 + 32 * v25);
  v33 = vsubq_f64(vmlaq_f64(v30[6], _Q2, vsubq_f64(*v31, *v32)), *v30);
  v34 = vsubq_f64(vmlaq_f64(v30[7], _Q2, vsubq_f64(v31[1], v32[1])), v30[1]);
  *(a3 + 96) = v33;
  *(a3 + 112) = v34;
  if (sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v27, v27), vmulq_f64(v28, v28)))) <= 0.000001 && sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v33, v33), vmulq_f64(v34, v34)))) <= 0.000001)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t _ZNK4geom19interpolating_curveIDv4_dE31calculate_bezier_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1[9] + 96 * *(*a1 + 2 * a2)) + 32 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v4 = *v3;
  v5 = *(v3 + 16);
  v7 = *(v3 + 32);
  v6 = *(v3 + 48);
  __asm { FMOV            V16.2D, #3.0 }

  v13 = vmulq_f64(vsubq_f64(v6, v5), _Q16);
  v14 = vmulq_f64(vsubq_f64(v7, *v3), _Q16);
  __asm { FMOV            V4.2D, #-2.0 }

  v16 = *(v3 + 64);
  v17 = *(v3 + 80);
  v18 = vaddq_f64(vmlaq_f64(v5, _Q4, v6), v17);
  v19 = vmulq_f64(vaddq_f64(vmlaq_f64(*v3, _Q4, v7), v16), _Q16);
  v20 = vmulq_f64(v18, _Q16);
  v21 = vmlaq_f64(*(v3 + 96), _Q16, vsubq_f64(v7, v16));
  v22 = vsubq_f64(vmlaq_f64(*(v3 + 112), _Q16, vsubq_f64(v6, v17)), v5);
  v23 = vsubq_f64(v21, *v3);
  if (sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v19, v19), vmulq_f64(v20, v20)))) <= 0.000001 && sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v22, v22)))) <= 0.000001)
  {
    *a3 = v4;
    *(a3 + 16) = v5;
    *(a3 + 32) = vaddq_f64(v4, v14);
    *(a3 + 48) = vaddq_f64(v5, v13);
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    return 2;
  }

  else
  {
    *a3 = v4;
    *(a3 + 16) = v5;
    v24 = vdupq_n_s64(0x3FD5555555555555uLL);
    v25 = vdupq_n_s64(0x3FE5555555555555uLL);
    *(a3 + 32) = vmlaq_f64(v4, v24, v14);
    *(a3 + 48) = vmlaq_f64(v5, v24, v13);
    *(a3 + 64) = vmlaq_f64(vmlaq_f64(v4, v25, v14), v24, v19);
    *(a3 + 80) = vmlaq_f64(vmlaq_f64(v5, v25, v13), v24, v20);
    *(a3 + 96) = vaddq_f64(vaddq_f64(vaddq_f64(v4, v14), v19), v23);
    *(a3 + 112) = vaddq_f64(vaddq_f64(vaddq_f64(v5, v13), v20), v22);
    return 4;
  }
}

uint64_t _ZN4geom19interpolating_curveIDv4_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(uint64_t a1, int **a2)
{
  memset(v51, 0, 24);
  memset(v49, 0, 48);
  v4 = **a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      _ZN4geom19interpolating_curveIDv4_dE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v41);
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_15;
      }

      _ZN4geom19interpolating_curveIDv4_dE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v41);
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_15;
    }

    v5 = *(a2 + 4);
    v6 = v5 - 1;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    memset(v41, 0, sizeof(v41));
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(v41, (3 * v5 - 2));
    v44 = v6;
    if ((v45 & 1) == 0)
    {
      std::vector<double>::resize(&v41[1] + 1, v6 + 1);
    }

    v52 = 0;
    v53 = 0;
    v54 = 0;
    std::vector<double>::resize(&v52, v6 + 1);
    v7 = 0;
    v8 = 0;
    v9 = v52;
    *v52 = *(*a2 + 1);
    v10 = 8;
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v16 = &(*a2)[v7];
      v17 = v16[7].f64[1];
      *&v9[v10] = v17;
      v18 = v17 - *&v9[v10 - 8];
      v19 = vmulq_n_f64(v16[5], v18);
      v20 = v16[11];
      v21 = vmulq_n_f64(v16[6], v18);
      v22 = v16[2];
      v23 = (*&v41[0] + 32 * v8);
      v24 = vmulq_n_f64(v16[10], v18);
      *v23 = v16[1];
      v23[1] = v22;
      v25 = vaddq_f64(vdivq_f64(v21, _Q0), v16[2]);
      v26 = *&v41[0] + 32 * (v8 + 1);
      *v26 = vaddq_f64(vdivq_f64(v19, _Q0), v16[1]);
      *(v26 + 16) = v25;
      v27 = vsubq_f64(v16[8], vdivq_f64(v24, _Q0));
      v28 = vsubq_f64(v16[9], vdivq_f64(vmulq_n_f64(v20, v18), _Q0));
      v29 = (v8 + 2);
      v8 += 3;
      v30 = (*&v41[0] + 32 * v29);
      *v30 = v27;
      v30[1] = v28;
      v7 += 28;
      v10 += 8;
    }

    while (28 * v6 != v7);
    v31 = &(*a2)[28 * a2[1]];
    v32 = *(v31 - 80);
    v33 = (*&v41[0] + 32 * v8);
    *v33 = *(v31 - 96);
    v33[1] = v32;
    v45 = 0;
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(&v41[1] + 1, v9, v53, (v53 - v9) >> 3);
    v42 = *v52;
    v43 = *(v53 - 1);
    v53 = v52;
    operator delete(v52);
  }

  else
  {
    _ZN4geom19interpolating_curveIDv4_dE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v41);
  }

  geom::interpolating_spline<double>::operator=(v49, v41);
  geom::interpolating_spline<double>::~interpolating_spline(v41);
LABEL_15:
  v34 = v50;
  std::vector<double>::resize(v51, v50);
  if (v34)
  {
    v35 = 0;
    v36 = 0.0;
    do
    {
      v36 = v36 + _ZNK4geom20interpolating_splineIDv4_dE20evaluate_span_lengthEj(v49, v35);
      *(v51[0] + 8 * v35++) = v36;
    }

    while (v34 != v35);
  }

  v37 = _ZNK4geom20interpolating_splineIDv4_dE21evaluate_total_lengthEv(v49);
  v38 = *(a1 + 80) - *(a1 + 72);
  if (v38)
  {
    v39 = *(*(a1 + 48) - 0x5555555555555555 * (v38 >> 2) - 8);
  }

  else
  {
    v39 = 0.0;
  }

  *v41 = v37 + v39;
  std::vector<double>::push_back[abi:nn200100]((a1 + 48), v41);
  _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_dEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_((a1 + 72), v49);
  return geom::interpolating_spline<double>::~interpolating_spline(v49);
}

void _ZN4geom19interpolating_curveIDv4_dE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 64) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 64) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v5 + 1);
    }
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  std::vector<double>::resize(&__p, v5 + 1);
  v6 = *a1;
  v7 = __p;
  *__p = *(*a1 + 8);
  if (v5)
  {
    v8 = 0;
    LOWORD(v9) = 0;
    v10 = (v7 + 8);
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v16 = (*a1 + v8);
      v17 = v16[7].f64[1];
      *v10 = v17;
      v18 = v17 - *(v10 - 1);
      v19 = v16[1];
      v20 = v16[2];
      v21 = vmulq_n_f64(vsubq_f64(v16[8], v19), v18);
      v22 = vmulq_n_f64(vsubq_f64(v16[9], v20), v18);
      v23 = (*a2 + 32 * v9);
      *v23 = v19;
      v23[1] = v20;
      LOWORD(v23) = v9 + 2;
      v24 = vdivq_f64(v22, _Q0);
      v25 = vdivq_f64(v21, _Q0);
      v26 = vaddq_f64(v16[2], v24);
      v27 = *a2 + 32 * (v9 + 1);
      *v27 = vaddq_f64(v16[1], v25);
      *(v27 + 16) = v26;
      LOWORD(v9) = v9 + 3;
      v28 = vsubq_f64(v16[8], v25);
      v29 = vsubq_f64(v16[9], v24);
      v30 = (*a2 + 32 * v23);
      *v30 = v28;
      v30[1] = v29;
      v8 += 112;
      ++v10;
    }

    while (112 * v5 != v8);
    v6 = *a1;
    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  v31 = v6 + 112 * *(a1 + 1);
  v32 = *(v31 - 80);
  v33 = (*a2 + 32 * v9);
  *v33 = *(v31 - 96);
  v33[1] = v32;
  *(a2 + 66) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v7, v35, (v35 - v7) >> 3);
    v7 = __p;
  }

  *(a2 + 48) = *v7;
  *(a2 + 56) = *(v35 - 1);
  v35 = v7;
  operator delete(v7);
}

void _ZN4geom19interpolating_curveIDv4_dE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(float64x2_t **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v129, v6);
  std::vector<double>::resize(&v126, v6);
  __asm { FMOV            V0.2D, #2.0 }

  v12 = vmlaq_f64(vnegq_f64((*a1)[9]), _Q0, (*a1)[2]);
  v13 = v129;
  *v129 = vmlaq_f64(vnegq_f64((*a1)[8]), _Q0, (*a1)[1]);
  *(v13 + 1) = v12;
  v14 = v126;
  *v126 = 0;
  v15 = *a1;
  v16 = vsubq_f64((*a1)[8], (*a1)[1]);
  v17 = vsubq_f64((*a1)[9], (*a1)[2]);
  v14[1] = sqrt(sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v16, v16), vmulq_f64(v17, v17)))));
  if (v4 == 1)
  {
    v20 = 0;
  }

  else
  {
    v18 = 0;
    v19 = v14 + 2;
    v20 = (v4 - 1);
    v21 = v13 + 32;
    do
    {
      v22 = &v15[v18];
      v23 = v22[2];
      *v21 = v22[1];
      v21[1] = v23;
      v21 += 2;
      v15 = *a1;
      v24 = &(*a1)[v18];
      v25 = vsubq_f64(v24[8], v24[1]);
      v26 = vsubq_f64(v24[9], v24[2]);
      *v19 = *(v19 - 1) + sqrt(sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v25, v25), vmulq_f64(v26, v26)))));
      ++v19;
      v18 += 7;
    }

    while (7 * (v4 - 1) != v18);
  }

  v27 = &v15[7 * v20];
  v28 = v27[1];
  v29 = v27[2];
  v30 = &v13[32 * v6 - 64];
  *v30 = v28;
  v30[1] = v29;
  v31 = &v13[32 * v6];
  v32 = vmlaq_f64(vnegq_f64(v31[-5]), _Q0, v29);
  v33 = &v13[32 * v6 - 32];
  *v33 = vmlaq_f64(vnegq_f64(v31[-6]), _Q0, v28);
  v33[1] = v32;
  v34 = &(*a1)[7 * (v4 - 2)];
  v35 = vsubq_f64(v34[8], v34[1]);
  v36 = vsubq_f64(v34[9], v34[2]);
  v14[v6 - 1] = v14[v6 - 2] + sqrt(sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v35, v35), vmulq_f64(v36, v36)))));
  if (v4 == 1)
  {
    v38 = 0;
    *(a2 + 8) = 0;
    *(a2 + 64) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      v38 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 64) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v20 + 1);
    }

    v37 = 0;
    LOWORD(v38) = 0;
    v39 = v126;
    v40 = v129;
    __asm { FMOV            V0.2D, #3.0 }

    v122 = _Q0;
    do
    {
      v42 = (v37 + 2);
      v43 = v39[v37];
      v44 = (v37 + 3);
      v45 = &v40[32 * v37];
      v46 = v37 + 1;
      v47 = v39[(v37 + 1)];
      v48 = v39[v42];
      v49 = &v40[32 * (v37 + 1)];
      v50 = &v40[32 * v42];
      v51 = v39[v44];
      v52 = v48 - v47;
      v53 = 1.0 / (v47 - v43);
      v54 = 1.0 / (v48 - v47);
      v55 = v51 - v48;
      v56 = 1.0 / (v51 - v48);
      v57 = &v40[32 * v44];
      v58 = v45[1];
      v59 = v49[1];
      v60 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v43 - v47), 0));
      v61 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v59, v60), v58, v47 - v47), v53);
      v62 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v49, v60), *v45, v47 - v47), v53);
      v63 = v50[1];
      v64 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v47 - v47), 0));
      v65 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v50, v64), *v49, v48 - v47), v54);
      v66 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v63, v64), v59, v48 - v47), v54);
      v67 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v48 - v47), 0));
      v68 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v57, v67), *v50, v51 - v47), v56);
      v69 = vmlaq_n_f64(vmulq_f64(v65, v60), v62, v48 - v47);
      v70 = vmlaq_n_f64(vmulq_f64(v66, v60), v61, v48 - v47);
      v71 = vmulq_n_f64(vsubq_f64(v59, v58), v53);
      v72 = vmulq_n_f64(vsubq_f64(*v49, *v45), v53);
      v73 = vmulq_n_f64(vsubq_f64(*v50, *v49), v54);
      v74 = vmulq_n_f64(vsubq_f64(v63, v59), v54);
      v75 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v66, v61), v71, v48 - v47), v74, v43 - v47, 0);
      v76 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v65, v62), v72, v48 - v47), v73, v43 - v47, 0);
      v77 = vmlaq_n_f64(vmulq_f64(v68, v64), v65, v51 - v47);
      v78 = v57[1];
      v79 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v78, v67), v63, v51 - v47), v56);
      v80 = vmlaq_n_f64(vmulq_f64(v79, v64), v66, v51 - v47);
      v81 = vsubq_f64(v79, v66);
      v66.f64[0] = 1.0 / (v48 - v43);
      v82 = 1.0 / (v51 - v47);
      v83 = vmlaq_n_f64(vsubq_f64(vmulq_n_f64(v80, v82), vmulq_n_f64(v70, v66.f64[0])), vmulq_n_f64(v75, v66.f64[0]), v48 - v47);
      v84 = vmulq_n_f64(vsubq_f64(*v57, *v50), v56);
      v85 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(vmulq_n_f64(v77, v82), vmulq_n_f64(v69, v66.f64[0])), vmulq_n_f64(v76, v66.f64[0]), v48 - v47), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v68, v65), v73, v51 - v47), v84, v47 - v47, 0), v82), v47 - v47, 0);
      v86 = vmulq_n_f64(vsubq_f64(v78, v63), v56);
      v87 = vmlsq_lane_f64(v83, vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(v81, v74, v51 - v47), v86, v47 - v47, 0), v82), v47 - v47, 0);
      v88 = v43 - v48;
      v89 = v47 - v48;
      v90 = vnegq_f64(vdupq_lane_s64(*&v88, 0));
      v91 = v48 - v48;
      v92 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v59, v90), v58, v89), v53);
      v93 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v49, v90), *v45, v89), v53);
      v94 = vnegq_f64(vdupq_lane_s64(*&v91, 0));
      v95 = vmulq_f64(*v57, v94);
      v96 = vnegq_f64(vdupq_lane_s64(*&v89, 0));
      v97 = vmlaq_n_f64(vmulq_f64(v78, v94), v63, v55);
      v98 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v50, v96), *v49, v91), v54);
      v99 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v63, v96), v59, v91), v54);
      v100 = vmulq_n_f64(vmlaq_n_f64(v95, *v50, v55), v56);
      v101 = vmulq_n_f64(v97, v56);
      v102 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v100, v96), v98, v55), v82), vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v98, v90), v93, v91), v66.f64[0])), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v98, v93), v72, v91), v73, v88, 0), v66.f64[0]), v91), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v100, v98), v73, v55), v84, v89, 0), v82), v89, 0);
      v103 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v101, v96), v99, v55), v82), vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v99, v90), v92, v91), v66.f64[0])), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v99, v92), v71, v91), v74, v88, 0), v66.f64[0]), v91), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v101, v99), v74, v55), v86, v89, 0), v82), v89, 0);
      v104 = vmulq_n_f64(v85, v54);
      v105 = vmulq_n_f64(v103, v54);
      v106 = vmulq_n_f64(vmulq_n_f64(v87, v54), v52);
      v107 = vmulq_n_f64(vmulq_n_f64(v102, v54), v52);
      v108 = vmulq_n_f64(v105, v52);
      v109 = (*a2 + 32 * v38);
      *v109 = *v49;
      v109[1] = v59;
      v110 = vaddq_f64(*v49, vdivq_f64(vmulq_n_f64(v104, v52), v122));
      v111 = vaddq_f64(v49[1], vdivq_f64(v106, v122));
      v112 = (*a2 + 32 * (v38 + 1));
      *v112 = v110;
      v112[1] = v111;
      v113 = vsubq_f64(*v50, vdivq_f64(v107, v122));
      v114 = vsubq_f64(v50[1], vdivq_f64(v108, v122));
      v115 = (*a2 + 32 * (v38 + 2));
      *v115 = v113;
      v115[1] = v114;
      LOWORD(v38) = v38 + 3;
      v37 = v46;
    }

    while (v20 != v46);
    v38 = v38;
  }

  v116 = &(*a1)[7 * v20];
  v117 = *(v116 + 32);
  v118 = (*a2 + 32 * v38);
  *v118 = *(v116 + 16);
  v118[1] = v117;
  v119 = a1[1];
  v124 = 0;
  v125 = 0;
  __p = 0;
  if (v119)
  {
    std::vector<double>::__vallocate[abi:nn200100](&__p, v119);
  }

  v120 = 0;
  v121 = 0;
  *(a2 + 66) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), 0, 0, 0);
    v120 = __p;
    v121 = v124;
  }

  *(a2 + 48) = *v120;
  *(a2 + 56) = *(v121 - 1);
  v124 = v120;
  operator delete(v120);
  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }
}

void _ZN4geom19interpolating_curveIDv4_dE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(void *a1@<X1>, uint64_t a2@<X8>)
{
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  v126 = 0;
  v127 = 0;
  v128 = 0;
  __p = 0;
  v124 = 0;
  v125 = 0;
  v4 = a1[1];
  memset(v122, 0, sizeof(v122));
  if (v4)
  {
    std::vector<double>::__vallocate[abi:nn200100](v122, v4);
  }

  v5 = v122[0];
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v132, 0);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v129, 0);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v126, 0);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
  v6 = -1;
  v7 = v132;
  v8 = &v132[-2];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *v7 = 0u;
  v7[1] = 0u;
  v9 = __p;
  v10 = (__p - 32);
  __asm { FMOV            V1.2D, #1.0 }

  *v10 = _Q1;
  v10[1] = _Q1;
  *v9 = _Q1;
  v9[1] = _Q1;
  v16 = v129;
  v17 = v129 - 32;
  *v17 = 0u;
  v17[1] = 0u;
  *v16 = 0u;
  v16[1] = 0u;
  v18 = v126;
  v19 = v126 - 32;
  *v19 = 0u;
  v19[1] = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  v20 = 0;
  v21 = 0;
  v22 = (v5 + 8);
  do
  {
    v23 = *v22;
    *&v24 = *v22 - *(v22 - 1);
    v25 = v22[1];
    ++v22;
    *&v26 = v25 - v23;
    v27 = vdupq_lane_s64(v24, 0);
    v28 = &v7[2 * v21 + 2];
    *v28 = v27;
    v28[1] = v27;
    v29 = vdupq_lane_s64(COERCE__INT64(*&v24 + *&v26 + *&v24 + *&v26), 0);
    v30 = &v9[2 * v21 + 2];
    v31 = vdupq_lane_s64(v26, 0);
    *v30 = v29;
    v30[1] = v29;
    v32 = &v16[2 * v21 + 2];
    *v32 = v31;
    v32[1] = v31;
    v33 = 3.0 / *&v26;
    v34 = (*a1 + v20);
    v35 = v34[9];
    v36 = vsubq_f64(v34[16], v35);
    v37 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(3.0 / *&v24), 0));
    v38 = vmulq_f64(vsubq_f64(v35, v34[2]), v37);
    v39 = vmlaq_n_f64(vmulq_f64(vsubq_f64(v34[8], v34[1]), v37), vsubq_f64(v34[15], v34[8]), v33);
    v40 = &v18[2 * v21 + 2];
    *v40 = v39;
    *(v40 + 16) = vmlaq_n_f64(v38, v36, v33);
    ++v21;
    v20 += 112;
  }

  while (v21 != -2);
  v41 = v124 - v9;
  v42 = ((v124 - v9) >> 5) - 1;
  v43 = vdivq_f64(v16[1], v9[1]);
  *v16 = vdivq_f64(*v16, *v9);
  v16[1] = v43;
  v44 = vdivq_f64(v18[1], v9[1]);
  *v18 = vdivq_f64(*v18, *v9);
  v18[1] = v44;
  if (v42 > 1)
  {
    v45 = v42 - 1;
    v46 = v9 + 2;
    v47 = v7 + 2;
    v48 = v18 + 2;
    v49 = v16 + 2;
    do
    {
      v51 = v49[-2];
      v50 = v49[-1];
      v52 = vdivq_f64(v49[1], vmlsq_f64(v46[1], v50, v47[1]));
      *v49 = vdivq_f64(*v49, vmlsq_f64(*v46, v51, *v47));
      v49[1] = v52;
      v49 += 2;
      v54 = *v47;
      v53 = v47[1];
      v47 += 2;
      v56 = *v46;
      v55 = v46[1];
      v46 += 2;
      v57 = vdivq_f64(vmlsq_f64(v48[1], v48[-1], v53), vmlsq_f64(v55, v50, v53));
      *v48 = vdivq_f64(vmlsq_f64(*v48, v48[-2], v54), vmlsq_f64(v56, v51, v54));
      v48[1] = v57;
      v48 += 2;
      --v45;
    }

    while (v45);
  }

  v58 = &v18[2 * v42];
  v59 = &v7[2 * v42];
  v61 = *v59;
  v60 = v59[1];
  v62 = (v41 << 27) - 0x200000000;
  v63 = (v18 + (v62 >> 27));
  v64 = vmlsq_f64(*v58, *v63, v61);
  v65 = vmlsq_f64(v58[1], v63[1], v60);
  v66 = &v9[2 * v42];
  v67 = (v16 + (v62 >> 27));
  v68 = vdivq_f64(v65, vmlsq_f64(v66[1], v67[1], v60));
  v69 = vdivq_f64(v64, vmlsq_f64(*v66, *v67, v61));
  *v58 = v69;
  v58[1] = v68;
  if (v42 >= 1)
  {
    v70 = v42 - 1;
    do
    {
      v71 = &v16[2 * v70];
      v72 = *v71;
      v73 = v71[1];
      v74 = &v18[2 * v70];
      v75 = vmlsq_f64(v74[1], v68, v73);
      v76 = vmlsq_f64(*v74, v69, v72);
      *v74 = v76;
      v74[1] = v75;
      v77 = v70-- + 1;
      v69 = v76;
      v68 = v75;
    }

    while (v77 > 1);
  }

  __asm { FMOV            V19.2D, #2.0 }

  v79 = 0;
  v80 = (v5 + 8);
  v81 = v18 + 2;
  do
  {
    v82 = *v80 - *(v80 - 1);
    v83 = (*a1 + v79);
    v84 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v82 / 3.0), 0));
    v85 = vmlaq_n_f64(vmulq_f64(vmlaq_f64(v81[1], _Q19, v81[-1]), v84), vsubq_f64(v83[9], v83[2]), 1.0 / v82);
    *v16 = vmlaq_n_f64(vmulq_f64(vmlaq_f64(*v81, _Q19, v81[-2]), v84), vsubq_f64(v83[8], v83[1]), 1.0 / v82);
    v16[1] = v85;
    v16 += 2;
    v86 = 1.0 / (v82 * 3.0);
    v87 = vmulq_n_f64(vsubq_f64(*v81, v81[-2]), v86);
    v88 = vmulq_n_f64(vsubq_f64(v81[1], v81[-1]), v86);
    v79 += 112;
    *v9 = v87;
    v9[1] = v88;
    v9 += 2;
    ++v80;
    v81 += 2;
    --v6;
  }

  while (v6);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v89 = *(a1 + 4);
  v90 = v89 - 1;
  if (v89 == 1)
  {
    *(a2 + 64) = 0;
    v96 = 0;
    v92 = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v121 = _Q19;
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v90 + 1));
    *(a2 + 64) = v90;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v90 + 1);
    }

    v91 = 0;
    LOWORD(v92) = 0;
    v93 = v129;
    v94 = v126;
    v95 = __p;
    v96 = v90;
    v97 = (v5 + 8);
    __asm { FMOV            V1.2D, #3.0 }

    v99 = v90;
    do
    {
      v100 = *(v97 - 1);
      v101 = (*a1 + v91);
      v102 = *v97 - v100;
      v103 = v100 - v100;
      v104 = v101[1];
      v105 = v101[2];
      v106 = *v93;
      v107 = v93[1];
      v93 += 2;
      v109 = *v94;
      v108 = v94[1];
      v94 += 2;
      v111 = v101[8];
      v110 = v101[9];
      v112 = *v95;
      v113 = v95[1];
      v95 += 2;
      v114 = (*a2 + 32 * v92);
      *v114 = v104;
      v114[1] = v105;
      v115 = (*a2 + 32 * (v92 + 1));
      LOWORD(v114) = v92 + 2;
      *v115 = vaddq_f64(v104, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v106, vmlaq_f64(vmulq_n_f64(v112, v103 * 3.0), v121, v109), v103), v102), _Q1));
      v115[1] = vaddq_f64(v105, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v107, vmlaq_f64(vmulq_n_f64(v113, v103 * 3.0), v121, v108), v103), v102), _Q1));
      LOWORD(v92) = v92 + 3;
      v116 = (*a2 + 32 * v114);
      ++v97;
      v91 += 112;
      *v116 = vsubq_f64(v111, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v106, vmlaq_f64(vmulq_n_f64(v112, v102 * 3.0), v121, v109), v102), v102), _Q1));
      v116[1] = vsubq_f64(v110, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v107, vmlaq_f64(vmulq_n_f64(v113, v102 * 3.0), v121, v108), v102), v102), _Q1));
      --v99;
    }

    while (v99);
    v92 = v92;
  }

  v117 = *a1 + 112 * v96;
  v118 = *(v117 + 16);
  v119 = *(v117 + 32);
  v120 = (*a2 + 32 * v92);
  *v120 = v118;
  v120[1] = v119;
  *(a2 + 66) = 0;
  std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v5, 0, -v5 >> 3);
  *(a2 + 48) = *v5;
  *(a2 + 56) = MEMORY[0xFFFFFFFFFFFFFFF8];
  operator delete(v5);
  if (__p)
  {
    v124 = __p;
    operator delete(__p);
  }

  if (v126)
  {
    v127 = v126;
    operator delete(v126);
  }

  if (v129)
  {
    v130 = v129;
    operator delete(v129);
  }

  if (v132)
  {
    v133 = v132;
    operator delete(v132);
  }
}

void _ZN4geom19interpolating_curveIDv4_dE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 64) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 64) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v5 + 1);
    }
  }

  __p = 0;
  v34 = 0;
  v35 = 0;
  std::vector<double>::resize(&__p, v5 + 1);
  v6 = *a1;
  v7 = __p;
  *__p = *(*a1 + 8);
  if (v5)
  {
    v8 = 0;
    LOWORD(v9) = 0;
    v10 = (v7 + 8);
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v16 = (*a1 + v8);
      v17 = v16[7].f64[1];
      *v10 = v17;
      v18 = v17 - *(v10 - 1);
      v19 = vmulq_n_f64(v16[5], v18);
      v20 = vmulq_n_f64(v16[6], v18);
      v21 = vmulq_n_f64(v16[10], v18);
      v22 = vmulq_n_f64(v16[11], v18);
      v23 = v16[2];
      v24 = (*a2 + 32 * v9);
      *v24 = v16[1];
      v24[1] = v23;
      LOWORD(v24) = v9 + 2;
      v25 = vaddq_f64(vdivq_f64(v20, _Q0), v16[2]);
      v26 = *a2 + 32 * (v9 + 1);
      *v26 = vaddq_f64(vdivq_f64(v19, _Q0), v16[1]);
      *(v26 + 16) = v25;
      LOWORD(v9) = v9 + 3;
      v27 = vsubq_f64(v16[8], vdivq_f64(v21, _Q0));
      v28 = vsubq_f64(v16[9], vdivq_f64(v22, _Q0));
      v29 = (*a2 + 32 * v24);
      *v29 = v27;
      v29[1] = v28;
      v8 += 112;
      ++v10;
    }

    while (112 * v5 != v8);
    v6 = *a1;
    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  v30 = v6 + 112 * *(a1 + 1);
  v31 = *(v30 - 80);
  v32 = (*a2 + 32 * v9);
  *v32 = *(v30 - 96);
  v32[1] = v31;
  *(a2 + 66) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v7, v34, (v34 - v7) >> 3);
    v7 = __p;
  }

  *(a2 + 48) = *v7;
  *(a2 + 56) = *(v34 - 1);
  v34 = v7;
  operator delete(v7);
}

double _ZNK4geom20interpolating_splineIDv4_dE21evaluate_total_lengthEv(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (*(a1 + 66) == 1)
  {
    if (*(a1 + 64))
    {
      v2 = *(a1 + 56);
    }

    else
    {
      v2 = *(a1 + 48) + (*(a1 + 56) - *(a1 + 48)) / 0.0 * 65535.0;
    }
  }

  else
  {
    if (!*(a1 + 64))
    {
      v1 = 0xFFFF;
    }

    v2 = *(*(a1 + 24) + 8 * v1);
  }

  return _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(a1, v2);
}

uint64_t geom::interpolating_spline<float>::~interpolating_spline(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t geom::interpolating_spline<double>::~interpolating_spline(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

__n128 _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

unint64_t geom::interpolating_spline<float>::find_span(uint64_t a1, float a2)
{
  if (*(a1 + 58) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 48);
    v4 = *(a1 + 52);
    if (v3 >= a2)
    {
      LOWORD(v6) = 0;
      v7 = 0;
    }

    else if (v4 <= a2)
    {
      LOWORD(v6) = v2 - 1;
      v7 = 0x3F80000000000000;
    }

    else
    {
      v5 = ((a2 - v3) / (v4 - v3)) * v2;
      v6 = v5;
      v7 = COERCE_UNSIGNED_INT(v5 - v5) << 32;
    }

    return v7 | v6;
  }

  else
  {
    v8 = *(a1 + 24);
    v9 = *v8;
    if (*v8 >= a2)
    {
      v16 = 0;
      v19 = 1.0 / (v8[1] - v9);
      v20 = v9 - v9;
    }

    else
    {
      v10 = (*(a1 + 32) - v8) >> 2;
      v11 = v10 - 1;
      v12 = v8[(v10 - 1)];
      if (v12 <= a2)
      {
        v22 = v10 - 2;
        v16 = (v10 - 2);
        v23 = &v8[v22];
        v19 = 1.0 / (v23[1] - *v23);
        v20 = v12 - *v23;
      }

      else
      {
        v13 = 0;
        v14 = v10 - 1;
LABEL_8:
        v15 = v14;
        while (1)
        {
          v16 = (v13 + v15) >> 1;
          v17 = v8[v16];
          if (v17 > a2)
          {
            v14 = v16 - 1;
            goto LABEL_8;
          }

          v18 = v8[(v16 + 1)];
          if (v18 >= a2)
          {
            break;
          }

          v13 = (v16 + 1);
        }

        if (v16 == v11 - 1 || v18 > a2)
        {
          v19 = 1.0 / (v18 - v17);
          v20 = a2 - v17;
        }

        else
        {
          v16 = (v16 + 1);
          v25 = &v8[v16];
          v19 = 1.0 / (v25[1] - *v25);
          v20 = v18 - *v25;
        }
      }
    }

    return v16 | (COERCE_UNSIGNED_INT(v20 * v19) << 32);
  }
}

float geom::interpolating_spline<float>::evaluate_span_length(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 58) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 52);
    if (v2 == a2)
    {
      v4 = *(a1 + 52);
    }

    else
    {
      v4 = *(a1 + 48) + (a2 * ((v3 - *(a1 + 48)) / v2));
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + ((a2 + 1) * ((v3 - *(a1 + 48)) / v2));
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 4 * a2);
    v3 = *(v5 + 4 * (a2 + 1));
  }

  return geom::interpolating_spline<float>::evaluate_length_betweeen(a1, v4, v3);
}

float geom::interpolating_spline<float>::evaluate_length_betweeen(void *a1, float a2, float a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9714;
  v8 = 16;
  do
  {
    v9 = *v7;
    span = geom::interpolating_spline<float>::find_span(a1, v4 + (v5 * *(v7 - 1)));
    v12 = (*a1 + 4 * (3 * span));
    v13 = ((v12[1] - *v12) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1)))) + (v12[2] - v12[1]) * (((1.0 - *(&span + 1)) + (1.0 - *(&span + 1))) * *(&span + 1)) + ((*(&span + 1) * *(&span + 1)) * (v12[3] - v12[2]));
    v14 = v11 * 3.0 * v13;
    v6 = v6 + (v9 * fabsf(v14));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2E8BA2E8BA2E8BBLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>,geom::interpolating_spline<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      geom::interpolating_spline<float>::interpolating_spline(a4, v7);
      v7 += 88;
      a4 = v8 + 88;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      geom::interpolating_spline<float>::~interpolating_spline(v6);
      v6 += 88;
    }
  }
}

__n128 geom::interpolating_spline<float>::interpolating_spline(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v2 = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v2;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  return result;
}

uint64_t std::__split_buffer<geom::interpolating_spline<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 88;
    geom::interpolating_spline<float>::~interpolating_spline(i - 88);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void geom::anonymous namespace::fit_function_with_spline_recursively<geom::interpolating_curve<float>::build_helper(std::vector<geom::interpolating_key<float>> const&,BOOL)::{lambda(float)#1},float>(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4, double a5, double a6, float64x2_t a7)
{
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *(a2 + 16);
  v12 = *(a2 + 20);
  v15 = *a2;
  v14 = *(a2 + 4);
  v16 = *a2;
  v17 = v14;
  v18 = *(a3 + 8);
  if (v18 == 1)
  {
    v19 = (v16 + v17 * 2.0) * 0.333333333;
    *a7.f64 = (v17 + v16 * 2.0) * 0.333333333;
    v20 = (v11 - v10) / (v12 - v10);
    v21 = (v13 - v10) / (v12 - v10);
    v22 = v20;
    v23 = 1.0 - v20;
    v24 = 1.0 - v21;
    v25 = -(v20 * v20);
    *a7.f64 = (*a7.f64 + (-((v23 * v23) * v23) * v15)) + ((v20 * v25) * v14);
    *(a7.f64 + 1) = (v19 + ((v24 * -(v24 * v24)) * v15)) + (-((v21 * v21) * v21) * v14);
    v26.f32[0] = (v21 * v21) * (1.0 - v21);
    v26.f32[1] = v25 * (1.0 - v20);
    v27.f32[0] = (1.0 - v21) * -(v21 * (1.0 - v21));
    v28 = v20 * (1.0 - v20);
    v27.f32[1] = v23 * v28;
    v29 = 1.0 / (v22 * 3.0 * v21 * ((v24 * -(v28 * v24)) + ((v21 * (v23 * v23)) * v24)));
    v30 = vmul_f32(v26, *&a7.f64[0]);
    *&a7.f64[0] = vmul_f32(v27, *&a7.f64[0]);
    *&a7.f64[0] = vmul_n_f32(vadd_f32(vzip1_s32(v30, *&a7.f64[0]), vzip2_s32(v30, *&a7.f64[0])), v29);
    v86 = a7;
    v87 = *(a2 + 4);
    LODWORD(a7.f64[0]) = *a2;
  }

  else
  {
    a7 = vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v12), xmmword_2500C2060, v10), xmmword_2500C2070, v11), xmmword_2500C2080, v13), vdupq_n_s64(0x3FC5555555555555uLL));
    *&a7.f64[0] = vcvt_f32_f64(a7);
    v86 = a7;
    v87 = *(a2 + 20);
    LODWORD(a7.f64[0]) = *(a2 + 8);
  }

  v85 = a7;
  v31 = *(a2 + 24);
  if (v31 >= *(a3 + 1))
  {
    goto LABEL_78;
  }

  v32 = (v17 + v16 * 5.0) * 0.166666667;
  v33 = (v15 + v14) * 0.5;
  v34 = (v16 + v17 * 5.0) * 0.166666667;
  v35 = *a1;
  v36 = v33;
  v37 = v32;
  v38 = v34;
  if ((*(*a1 + 192) & 1) == 0)
  {
    v39 = *(v35 + 72);
    v40 = 0x2E8BA2E8BA2E8BA3 * ((*(v35 + 80) - v39) >> 3);
    v83 = *(a2 + 12);
    v84 = *(a2 + 16);
    if ((v40 & 0xFFFE) != 0 && *(v35 + 184) < v32)
    {
      LOWORD(v40) = v40 - 1;
      if (*(v35 + 188) > v32)
      {
        for (i = 0; ; i = v42 + 1)
        {
          while (1)
          {
            v42 = (i + v40) >> 1;
            v43 = v39 + 88 * v42;
            if (*(v43 + 48) <= v32)
            {
              break;
            }

            LOWORD(v40) = v42 - 1;
          }

          if (*(v43 + 52) > v32)
          {
            break;
          }
        }

        LODWORD(v40) = (i + v40) >> 1;
      }
    }

    else
    {
      LOWORD(v40) = 0;
    }

    v44 = v40;
    v45 = v40;
    v46 = geom::interpolating_spline<float>::evaluate_length_at(v39 + 88 * v40, v32);
    if (v45)
    {
      v47 = *(*(v35 + 48) + 4 * (v44 - 1));
    }

    else
    {
      v47 = 0.0;
    }

    v11 = v83;
    v13 = v84;
    v48 = v47 + v46;
    v37 = v48;
    v49 = *a1;
    if (*(*a1 + 192))
    {
      v36 = (v15 + v14) * 0.5;
    }

    else
    {
      v50 = *(v49 + 72);
      v51 = 0x2E8BA2E8BA2E8BA3 * ((*(v49 + 80) - v50) >> 3);
      v82 = v48;
      if ((v51 & 0xFFFE) != 0 && *(v49 + 184) < v33)
      {
        LOWORD(v51) = v51 - 1;
        if (*(v49 + 188) > v33)
        {
          for (j = 0; ; j = v53 + 1)
          {
            while (1)
            {
              v53 = (j + v51) >> 1;
              v54 = v50 + 88 * v53;
              if (*(v54 + 48) <= v33)
              {
                break;
              }

              LOWORD(v51) = v53 - 1;
            }

            if (*(v54 + 52) > v33)
            {
              break;
            }
          }

          LODWORD(v51) = (j + v51) >> 1;
        }
      }

      else
      {
        LOWORD(v51) = 0;
      }

      v55 = v51;
      v56 = v51;
      v57 = geom::interpolating_spline<float>::evaluate_length_at(v50 + 88 * v51, (v15 + v14) * 0.5);
      if (v56)
      {
        v58 = *(*(v49 + 48) + 4 * (v55 - 1));
      }

      else
      {
        v58 = 0.0;
      }

      v11 = v83;
      v13 = v84;
      v37 = v82;
      v36 = v58 + v57;
      v59 = *a1;
      if ((*(*a1 + 192) & 1) == 0)
      {
        v60 = *(v59 + 72);
        v61 = 0x2E8BA2E8BA2E8BA3 * ((*(v59 + 80) - v60) >> 3);
        if ((v61 & 0xFFFE) != 0 && *(v59 + 184) < v34)
        {
          LOWORD(v61) = v61 - 1;
          if (*(v59 + 188) > v34)
          {
            for (k = 0; ; k = v63 + 1)
            {
              while (1)
              {
                v63 = (k + v61) >> 1;
                v64 = v60 + 88 * v63;
                if (*(v64 + 48) <= v34)
                {
                  break;
                }

                LOWORD(v61) = v63 - 1;
              }

              if (*(v64 + 52) > v34)
              {
                break;
              }
            }

            LODWORD(v61) = (k + v61) >> 1;
          }
        }

        else
        {
          LOWORD(v61) = 0;
        }

        v65 = v61;
        v66 = v61;
        v67 = geom::interpolating_spline<float>::evaluate_length_at(v60 + 88 * v61, v34);
        if (v66)
        {
          v68 = *(*(v59 + 48) + 4 * (v65 - 1));
        }

        else
        {
          v68 = 0.0;
        }

        v11 = v83;
        v13 = v84;
        v37 = v82;
        v38 = v68 + v67;
        goto LABEL_48;
      }
    }

    v38 = v34;
  }

LABEL_48:
  if (v31 < *a3)
  {
LABEL_49:
    v90 = v15;
    v91 = (v15 + v14) * 0.5;
    v92 = v10;
    v93 = v37;
    v94 = v11;
    v95 = v36;
    v96 = v31 + 1;
    v88[0] = v91;
    v88[1] = v14;
    v88[2] = v36;
    v88[3] = v13;
    v88[4] = v38;
    v88[5] = v12;
    v89 = v31 + 1;
    return;
  }

  v69 = vextq_s8(vextq_s8(v85, v85, 4uLL), v86, 0xCuLL);
  v69.i32[3] = v87;
  v70 = vmulq_f32(v69, xmmword_2500C2090);
  v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
  v72 = vmulq_f32(v69, xmmword_2500C20A0);
  v73 = vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
  v74 = vmulq_f32(v69, xmmword_2500C20B0);
  v75 = vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)));
  if (*(a3 + 8) == 1)
  {
    if (fabsf(v32) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v32 - v71) / v32) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v33) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v33 - v73) / v33) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v34) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v34 - v75) / v34) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 1;
  }

  else
  {
    if (fabsf(v37) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v37 - v71) / v37) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v36) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v36 - v73) / v36) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v38) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v38 - v75) / v38) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 0;
  }

LABEL_78:
  v76 = *(a4 + 56);
  v77 = v76 + 1;
  if (v18)
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v78 = *a4;
    if (v76)
    {
      v79 = *(a4 + 24);
    }

    else
    {
      *v78 = v85.i32[0];
      v79 = *(a4 + 24);
      *v79 = v10;
    }

    v78[(3 * v76 + 1)] = v86.i32[0];
    v78[(3 * v76 + 2)] = v86.i32[1];
    v78[(3 * v76 + 3)] = v87;
    v79[v77] = v12;
  }

  else
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v80 = *a4;
    if (v76)
    {
      v81 = *(a4 + 24);
    }

    else
    {
      *v80 = v85.i32[0];
      v81 = *(a4 + 24);
      *v81 = v15;
    }

    v80[(3 * v76 + 1)] = v86.i32[0];
    v80[(3 * v76 + 2)] = v86.i32[1];
    v80[(3 * v76 + 3)] = v87;
    v81[v77] = v14;
  }
}

uint64_t std::vector<geom::interpolating_spline<float>>::__emplace_back_slow_path<geom::interpolating_spline<float> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>>(a1, v6);
  }

  v7 = 88 * v2;
  geom::interpolating_spline<float>::interpolating_spline(v7, a2);
  v8 = v7 + 88;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>,geom::interpolating_spline<float>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::interpolating_spline<float>>::~__split_buffer(v14);
  return v8;
}

uint64_t geom::interpolating_spline<float>::interpolating_spline(uint64_t a1, uint64_t a2)
{
  v4 = std::vector<float>::vector[abi:nn200100](a1, a2);
  std::vector<float>::vector[abi:nn200100](v4 + 3, (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v5;
  std::vector<float>::vector[abi:nn200100]((a1 + 64), (a2 + 64));
  return a1;
}

void *std::vector<float>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<float>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 2);
  }

  return result;
}

void std::vector<float>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<float>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<float>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t geom::interpolating_spline<double>::find_span@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (*(result + 66) != 1)
  {
    v8 = *(result + 24);
    v9 = *v8;
    if (*v8 >= a3)
    {
      *a2 = 0;
      v19 = 1.0 / (v8[1] - v9);
      *(a2 + 16) = v19;
      v20 = v9 - v9;
    }

    else
    {
      v10 = (*(result + 32) - v8) >> 3;
      v11 = v10 - 1;
      v12 = v8[(v10 - 1)];
      if (v12 <= a3)
      {
        *a2 = v10 - 2;
        v23 = &v8[(v10 - 2)];
        v24 = *v23;
        v19 = 1.0 / (v23[1] - *v23);
        *(a2 + 16) = v19;
        v20 = v12 - v24;
      }

      else
      {
        v13 = 0;
        v14 = v11;
LABEL_8:
        v15 = v14;
        while (1)
        {
          v16 = (v13 + v15) >> 1;
          v17 = v8[v16];
          if (v17 > a3)
          {
            v14 = v16 - 1;
            goto LABEL_8;
          }

          v18 = v8[v16 + 1];
          if (v18 >= a3)
          {
            break;
          }

          v13 = (v16 + 1);
        }

        if (v16 == v11 - 1 || v18 > a3)
        {
          *a2 = v16;
          v27 = 1.0 / (v18 - v17);
          *(a2 + 16) = v27;
          v21 = (a3 - v17) * v27;
          goto LABEL_22;
        }

        *a2 = v16 + 1;
        v25 = &v8[(v16 + 1)];
        v26 = *v25;
        v19 = 1.0 / (v25[1] - *v25);
        *(a2 + 16) = v19;
        v20 = v18 - v26;
      }
    }

    v21 = v20 * v19;
LABEL_22:
    v22 = 8;
    goto LABEL_23;
  }

  v3 = *(result + 64);
  v4 = *(result + 48);
  v5 = *(result + 56);
  if (v4 >= a3)
  {
    *a2 = 0;
    v7 = 0.0;
  }

  else if (v5 <= a3)
  {
    *a2 = v3 - 1;
    v7 = 1.0;
  }

  else
  {
    v6 = (a3 - v4) / (v5 - v4) * v3;
    *a2 = v6;
    v7 = v6 - v6;
  }

  *(a2 + 8) = v7;
  v21 = v3 / (v5 - v4);
  v22 = 16;
LABEL_23:
  *(a2 + v22) = v21;
  return result;
}

double geom::interpolating_spline<double>::evaluate_span_length(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 66) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 56);
    if (v2 == a2)
    {
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = *(a1 + 48) + a2 * ((v3 - *(a1 + 48)) / v2);
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + (a2 + 1) * ((v3 - *(a1 + 48)) / v2);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 8 * a2);
    v3 = *(v5 + 8 * (a2 + 1));
  }

  return geom::interpolating_spline<double>::evaluate_length_betweeen(a1, v4, v3);
}

double geom::interpolating_spline<double>::evaluate_length_betweeen(void *a1, double a2, double a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9798;
  v8 = 16;
  do
  {
    v9 = *v7;
    v10 = v4 + v5 * *(v7 - 1);
    v13 = 0;
    v14 = 0.0;
    v15 = 0.0;
    geom::interpolating_spline<double>::find_span(a1, &v13, v10);
    v11 = (*a1 + 8 * (3 * v13));
    v6 = v6 + v9 * fabs(v15 * 3.0 * (v14 * (1.0 - v14 + 1.0 - v14) * (v11[2] - v11[1]) + (v11[1] - *v11) * ((1.0 - v14) * (1.0 - v14)) + (v11[3] - v11[2]) * (v14 * v14)));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>,geom::interpolating_spline<double>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      geom::interpolating_spline<double>::interpolating_spline(a4, v7);
      v7 += 96;
      a4 = v8 + 96;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      geom::interpolating_spline<double>::~interpolating_spline(v6);
      v6 += 96;
    }
  }
}

__n128 geom::interpolating_spline<double>::interpolating_spline(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v2 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 48) = v2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  result = *(a2 + 72);
  *(a1 + 72) = result;
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t std::__split_buffer<geom::interpolating_spline<double>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    geom::interpolating_spline<double>::~interpolating_spline(i - 96);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void geom::anonymous namespace::fit_function_with_spline_recursively<geom::interpolating_curve<double>::build_helper(std::vector<geom::interpolating_key<double>> const&,BOOL)::{lambda(double)#1},double>(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a3 + 8);
  if (v13 == 1)
  {
    v14 = (v8 - v7) / (v9 - v7);
    v15 = (v10 - v7) / (v9 - v7);
    v16 = 1.0 - v14;
    v17 = 1.0 - v15;
    v18 = -(v14 * v14);
    v19.f64[0] = (v11 + v12 * 2.0) * 0.333333333 + -(v16 * v16 * v16) * v12 + v14 * v18 * v11;
    v19.f64[1] = (v12 + v11 * 2.0) * 0.333333333 + v17 * -(v17 * v17) * v12 + -(v15 * v15 * v15) * v11;
    v20.f64[0] = v15 * v15 * (1.0 - v15);
    v20.f64[1] = v18 * (1.0 - v14);
    v21.f64[0] = (1.0 - v15) * -(v15 * (1.0 - v15));
    v22 = v14 * (1.0 - v14);
    v21.f64[1] = (1.0 - v14) * v22;
    v23 = vpaddq_f64(vmulq_f64(v20, v19), vmulq_f64(v21, v19));
    v79 = vmulq_n_f64(v23, 1.0 / (v14 * 3.0 * v15 * (v17 * -(v22 * v17) + v15 * (v16 * v16) * v17)));
    v80 = *(a2 + 8);
    v23.f64[0] = *a2;
  }

  else
  {
    v23 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v9), xmmword_2500C2060, v7), xmmword_2500C2070, v8), xmmword_2500C2080, v10);
    v79 = vmulq_f64(v23, vdupq_n_s64(0x3FC5555555555555uLL));
    v80 = *(a2 + 40);
    v23.f64[0] = *(a2 + 16);
  }

  v78 = v23;
  v24 = *(a2 + 48);
  if (v24 >= *(a3 + 1))
  {
    goto LABEL_82;
  }

  v25 = (v11 + v12 * 5.0) * 0.166666667;
  v26 = (v12 + v11) * 0.5;
  v27 = (v12 + v11 * 5.0) * 0.166666667;
  v28 = *a1;
  v29 = v26;
  v30 = v25;
  v31 = v27;
  if ((*(*a1 + 208) & 1) == 0)
  {
    v32 = *(v28 + 72);
    v33 = 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 80) - v32) >> 5);
    v72 = *(a2 + 24);
    v73 = *(a2 + 32);
    v74 = *(a2 + 16);
    v76 = *(a2 + 40);
    if ((v33 & 0xFFFE) != 0 && *(v28 + 192) < v25)
    {
      LOWORD(v33) = v33 - 1;
      if (*(v28 + 200) > v25)
      {
        for (i = 0; ; i = v35 + 1)
        {
          while (1)
          {
            v35 = (i + v33) >> 1;
            v36 = v32 + 96 * v35;
            if (*(v36 + 48) <= v25)
            {
              break;
            }

            LOWORD(v33) = v35 - 1;
          }

          if (*(v36 + 56) > v25)
          {
            break;
          }
        }

        LODWORD(v33) = (i + v33) >> 1;
      }

      v39 = v33;
      v40 = v33;
      v37 = geom::interpolating_spline<double>::evaluate_length_at(v32 + 96 * v33, (v11 + v12 * 5.0) * 0.166666667);
      if (v40)
      {
        v38 = *(*(v28 + 48) + 8 * (v39 - 1));
      }

      else
      {
        v38 = 0.0;
      }

      v7 = v74;
      v9 = v76;
      v8 = v72;
      v10 = v73;
    }

    else
    {
      v37 = geom::interpolating_spline<double>::evaluate_length_at(v32, (v11 + v12 * 5.0) * 0.166666667);
      v8 = v72;
      v10 = v73;
      v7 = v74;
      v9 = v76;
      v38 = 0.0;
    }

    v30 = v37 + v38;
    v41 = *a1;
    if (*(*a1 + 208))
    {
      v29 = (v12 + v11) * 0.5;
    }

    else
    {
      v42 = *(v41 + 72);
      v43 = 0xAAAAAAAAAAAAAAABLL * ((*(v41 + 80) - v42) >> 5);
      if ((v43 & 0xFFFE) != 0 && *(v41 + 192) < v26)
      {
        LOWORD(v43) = v43 - 1;
        if (*(v41 + 200) > v26)
        {
          for (j = 0; ; j = v45 + 1)
          {
            while (1)
            {
              v45 = (j + v43) >> 1;
              v46 = v42 + 96 * v45;
              if (*(v46 + 48) <= v26)
              {
                break;
              }

              LOWORD(v43) = v45 - 1;
            }

            if (*(v46 + 56) > v26)
            {
              break;
            }
          }

          LODWORD(v43) = (j + v43) >> 1;
        }

        v49 = v43;
        v50 = v43;
        v47 = geom::interpolating_spline<double>::evaluate_length_at(v42 + 96 * v43, (v12 + v11) * 0.5);
        if (v50)
        {
          v48 = *(*(v41 + 48) + 8 * (v49 - 1));
        }

        else
        {
          v48 = 0.0;
        }

        v7 = v74;
        v9 = v76;
        v8 = v72;
        v10 = v73;
      }

      else
      {
        v47 = geom::interpolating_spline<double>::evaluate_length_at(v42, (v12 + v11) * 0.5);
        v8 = v72;
        v10 = v73;
        v7 = v74;
        v9 = v76;
        v48 = 0.0;
      }

      v29 = v47 + v48;
      v51 = *a1;
      if ((*(*a1 + 208) & 1) == 0)
      {
        v52 = *(v51 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) != 0 && *(v51 + 192) < v27)
        {
          LOWORD(v53) = v53 - 1;
          if (*(v51 + 200) > v27)
          {
            for (k = 0; ; k = v55 + 1)
            {
              while (1)
              {
                v55 = (k + v53) >> 1;
                v56 = v52 + 96 * v55;
                if (*(v56 + 48) <= v27)
                {
                  break;
                }

                LOWORD(v53) = v55 - 1;
              }

              if (*(v56 + 56) > v27)
              {
                break;
              }
            }

            LODWORD(v53) = (k + v53) >> 1;
          }

          v59 = v53;
          v60 = v53;
          v57 = geom::interpolating_spline<double>::evaluate_length_at(v52 + 96 * v53, (v12 + v11 * 5.0) * 0.166666667);
          if (v60)
          {
            v58 = *(*(v51 + 48) + 8 * (v59 - 1));
          }

          else
          {
            v58 = 0.0;
          }

          v7 = v74;
          v9 = v76;
          v8 = v72;
          v10 = v73;
        }

        else
        {
          v57 = geom::interpolating_spline<double>::evaluate_length_at(v52, (v12 + v11 * 5.0) * 0.166666667);
          v8 = v72;
          v10 = v73;
          v7 = v74;
          v9 = v76;
          v58 = 0.0;
        }

        v31 = v57 + v58;
        goto LABEL_53;
      }
    }

    v31 = (v12 + v11 * 5.0) * 0.166666667;
  }

LABEL_53:
  if (v24 < *a3)
  {
LABEL_54:
    v83 = v12;
    v84 = (v12 + v11) * 0.5;
    v85 = v7;
    v86 = v30;
    v87 = v8;
    v88 = v29;
    v89 = v24 + 1;
    v81[0] = v84;
    v81[1] = v11;
    v81[2] = v29;
    v81[3] = v10;
    v81[4] = v31;
    v81[5] = v9;
    v82 = v24 + 1;
    return;
  }

  v61 = vzip1q_s64(v78, v79);
  *&v62.f64[0] = vdupq_laneq_s64(v79, 1).u64[0];
  v62.f64[1] = v80;
  v63 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20D0), vmulq_f64(v62, xmmword_2500C20C0)));
  v64 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20F0), vmulq_f64(v62, xmmword_2500C20E0)));
  v65 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C2110), vmulq_f64(v62, xmmword_2500C2100)));
  if (*(a3 + 8) == 1)
  {
    if (fabs(v25) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v25 - v63) / v25) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v26) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v26 - v64) / v26) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v27) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v27 - v65) / v27) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 1;
  }

  else
  {
    if (fabs(v30) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v30 - v63) / v30) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v29) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v29 - v64) / v29) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v31) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v31 - v65) / v31) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 0;
  }

LABEL_82:
  v66 = *(a4 + 64);
  v67 = v66 + 1;
  if (v13)
  {
    v75 = v7;
    v77 = v9;
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v68 = *a4;
    if (v66)
    {
      v69 = *(a4 + 24);
    }

    else
    {
      *v68 = v78.i64[0];
      v69 = *(a4 + 24);
      *v69 = v75;
    }

    v68[(3 * v66 + 1)] = v79.i64[0];
    v68[(3 * v66 + 2)] = v79.i64[1];
    *&v68[(3 * v66 + 3)] = v80;
    v69[v67] = v77;
  }

  else
  {
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v70 = *a4;
    if (v66)
    {
      v71 = *(a4 + 24);
    }

    else
    {
      *v70 = v78.i64[0];
      v71 = *(a4 + 24);
      *v71 = v12;
    }

    v70[(3 * v66 + 1)] = v79.i64[0];
    v70[(3 * v66 + 2)] = v79.i64[1];
    *&v70[(3 * v66 + 3)] = v80;
    v71[v67] = v11;
  }
}

uint64_t std::vector<geom::interpolating_spline<double>>::__emplace_back_slow_path<geom::interpolating_spline<double> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>>(a1, v6);
  }

  v7 = 96 * v2;
  geom::interpolating_spline<double>::interpolating_spline(v7, a2);
  v8 = v7 + 96;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>,geom::interpolating_spline<double>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::interpolating_spline<double>>::~__split_buffer(v14);
  return v8;
}

uint64_t geom::interpolating_spline<double>::interpolating_spline(uint64_t a1, uint64_t a2)
{
  v4 = std::vector<double>::vector[abi:nn200100](a1, a2);
  std::vector<double>::vector[abi:nn200100](v4 + 3, (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 48) = v5;
  std::vector<double>::vector[abi:nn200100]((a1 + 72), (a2 + 72));
  return a1;
}

void *std::vector<double>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<double>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<double>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, a2);
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void std::vector<double>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v4 - v6;
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
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:nn200100](v6, v10);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

float _ZNK4geom20interpolating_splineIDv2_fE20evaluate_span_lengthEj(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 58) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 52);
    if (v2 == a2)
    {
      v4 = *(a1 + 52);
    }

    else
    {
      v4 = *(a1 + 48) + (a2 * ((v3 - *(a1 + 48)) / v2));
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + ((a2 + 1) * ((v3 - *(a1 + 48)) / v2));
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 4 * a2);
    v3 = *(v5 + 4 * (a2 + 1));
  }

  return _ZNK4geom20interpolating_splineIDv2_fE24evaluate_length_betweeenEff(a1, v4, v3);
}

float _ZNK4geom20interpolating_splineIDv2_fE24evaluate_length_betweeenEff(void *a1, float a2, float a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9894;
  v8 = 16;
  do
  {
    v9 = *v7;
    span = geom::interpolating_spline<float>::find_span(a1, v4 + (v5 * *(v7 - 1)));
    v12 = (*a1 + 8 * (3 * span));
    v13 = ((1.0 - *(&span + 1)) + (1.0 - *(&span + 1))) * *(&span + 1);
    v14 = vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vsub_f32(v12[2], v12[1]), v13), vsub_f32(v12[1], *v12), (1.0 - *(&span + 1)) * (1.0 - *(&span + 1))), vsub_f32(v12[3], v12[2]), *(&span + 1) * *(&span + 1)), v11 * 3.0);
    v6 = v6 + (v9 * sqrtf(vaddv_f32(vmul_f32(v14, v14))));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4, double a5, double a6, float64x2_t a7)
{
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *(a2 + 16);
  v12 = *(a2 + 20);
  v15 = *a2;
  v14 = *(a2 + 4);
  v16 = *a2;
  v17 = v14;
  v18 = *(a3 + 8);
  if (v18 == 1)
  {
    v19 = (v16 + v17 * 2.0) * 0.333333333;
    *a7.f64 = (v17 + v16 * 2.0) * 0.333333333;
    v20 = (v11 - v10) / (v12 - v10);
    v21 = (v13 - v10) / (v12 - v10);
    v22 = v20;
    v23 = 1.0 - v20;
    v24 = 1.0 - v21;
    v25 = -(v20 * v20);
    *a7.f64 = (*a7.f64 + (-((v23 * v23) * v23) * v15)) + ((v20 * v25) * v14);
    *(a7.f64 + 1) = (v19 + ((v24 * -(v24 * v24)) * v15)) + (-((v21 * v21) * v21) * v14);
    v26.f32[0] = (v21 * v21) * (1.0 - v21);
    v26.f32[1] = v25 * (1.0 - v20);
    v27.f32[0] = (1.0 - v21) * -(v21 * (1.0 - v21));
    v28 = v20 * (1.0 - v20);
    v27.f32[1] = v23 * v28;
    v29 = 1.0 / (v22 * 3.0 * v21 * ((v24 * -(v28 * v24)) + ((v21 * (v23 * v23)) * v24)));
    v30 = vmul_f32(v26, *&a7.f64[0]);
    *&a7.f64[0] = vmul_f32(v27, *&a7.f64[0]);
    *&a7.f64[0] = vmul_n_f32(vadd_f32(vzip1_s32(v30, *&a7.f64[0]), vzip2_s32(v30, *&a7.f64[0])), v29);
    v86 = a7;
    v87 = *(a2 + 4);
    LODWORD(a7.f64[0]) = *a2;
  }

  else
  {
    a7 = vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v12), xmmword_2500C2060, v10), xmmword_2500C2070, v11), xmmword_2500C2080, v13), vdupq_n_s64(0x3FC5555555555555uLL));
    *&a7.f64[0] = vcvt_f32_f64(a7);
    v86 = a7;
    v87 = *(a2 + 20);
    LODWORD(a7.f64[0]) = *(a2 + 8);
  }

  v85 = a7;
  v31 = *(a2 + 24);
  if (v31 >= *(a3 + 1))
  {
    goto LABEL_78;
  }

  v32 = (v17 + v16 * 5.0) * 0.166666667;
  v33 = (v15 + v14) * 0.5;
  v34 = (v16 + v17 * 5.0) * 0.166666667;
  v35 = *a1;
  v36 = v33;
  v37 = v32;
  v38 = v34;
  if ((*(*a1 + 192) & 1) == 0)
  {
    v39 = *(v35 + 72);
    v40 = 0x2E8BA2E8BA2E8BA3 * ((*(v35 + 80) - v39) >> 3);
    v83 = *(a2 + 12);
    v84 = *(a2 + 16);
    if ((v40 & 0xFFFE) != 0 && *(v35 + 184) < v32)
    {
      LOWORD(v40) = v40 - 1;
      if (*(v35 + 188) > v32)
      {
        for (i = 0; ; i = v42 + 1)
        {
          while (1)
          {
            v42 = (i + v40) >> 1;
            v43 = v39 + 88 * v42;
            if (*(v43 + 48) <= v32)
            {
              break;
            }

            LOWORD(v40) = v42 - 1;
          }

          if (*(v43 + 52) > v32)
          {
            break;
          }
        }

        LODWORD(v40) = (i + v40) >> 1;
      }
    }

    else
    {
      LOWORD(v40) = 0;
    }

    v44 = v40;
    v45 = v40;
    v46 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v39 + 88 * v40, v32);
    if (v45)
    {
      v47 = *(*(v35 + 48) + 4 * (v44 - 1));
    }

    else
    {
      v47 = 0.0;
    }

    v11 = v83;
    v13 = v84;
    v48 = v47 + v46;
    v37 = v48;
    v49 = *a1;
    if (*(*a1 + 192))
    {
      v36 = (v15 + v14) * 0.5;
    }

    else
    {
      v50 = *(v49 + 72);
      v51 = 0x2E8BA2E8BA2E8BA3 * ((*(v49 + 80) - v50) >> 3);
      v82 = v48;
      if ((v51 & 0xFFFE) != 0 && *(v49 + 184) < v33)
      {
        LOWORD(v51) = v51 - 1;
        if (*(v49 + 188) > v33)
        {
          for (j = 0; ; j = v53 + 1)
          {
            while (1)
            {
              v53 = (j + v51) >> 1;
              v54 = v50 + 88 * v53;
              if (*(v54 + 48) <= v33)
              {
                break;
              }

              LOWORD(v51) = v53 - 1;
            }

            if (*(v54 + 52) > v33)
            {
              break;
            }
          }

          LODWORD(v51) = (j + v51) >> 1;
        }
      }

      else
      {
        LOWORD(v51) = 0;
      }

      v55 = v51;
      v56 = v51;
      v57 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v50 + 88 * v51, (v15 + v14) * 0.5);
      if (v56)
      {
        v58 = *(*(v49 + 48) + 4 * (v55 - 1));
      }

      else
      {
        v58 = 0.0;
      }

      v11 = v83;
      v13 = v84;
      v37 = v82;
      v36 = v58 + v57;
      v59 = *a1;
      if ((*(*a1 + 192) & 1) == 0)
      {
        v60 = *(v59 + 72);
        v61 = 0x2E8BA2E8BA2E8BA3 * ((*(v59 + 80) - v60) >> 3);
        if ((v61 & 0xFFFE) != 0 && *(v59 + 184) < v34)
        {
          LOWORD(v61) = v61 - 1;
          if (*(v59 + 188) > v34)
          {
            for (k = 0; ; k = v63 + 1)
            {
              while (1)
              {
                v63 = (k + v61) >> 1;
                v64 = v60 + 88 * v63;
                if (*(v64 + 48) <= v34)
                {
                  break;
                }

                LOWORD(v61) = v63 - 1;
              }

              if (*(v64 + 52) > v34)
              {
                break;
              }
            }

            LODWORD(v61) = (k + v61) >> 1;
          }
        }

        else
        {
          LOWORD(v61) = 0;
        }

        v65 = v61;
        v66 = v61;
        v67 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v60 + 88 * v61, v34);
        if (v66)
        {
          v68 = *(*(v59 + 48) + 4 * (v65 - 1));
        }

        else
        {
          v68 = 0.0;
        }

        v11 = v83;
        v13 = v84;
        v37 = v82;
        v38 = v68 + v67;
        goto LABEL_48;
      }
    }

    v38 = v34;
  }

LABEL_48:
  if (v31 < *a3)
  {
LABEL_49:
    v90 = v15;
    v91 = (v15 + v14) * 0.5;
    v92 = v10;
    v93 = v37;
    v94 = v11;
    v95 = v36;
    v96 = v31 + 1;
    v88[0] = v91;
    v88[1] = v14;
    v88[2] = v36;
    v88[3] = v13;
    v88[4] = v38;
    v88[5] = v12;
    v89 = v31 + 1;
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, &v90, a3, a4);
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, v88, a3, a4);
    return;
  }

  v69 = vextq_s8(vextq_s8(v85, v85, 4uLL), v86, 0xCuLL);
  v69.i32[3] = v87;
  v70 = vmulq_f32(v69, xmmword_2500C2090);
  v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
  v72 = vmulq_f32(v69, xmmword_2500C20A0);
  v73 = vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
  v74 = vmulq_f32(v69, xmmword_2500C20B0);
  v75 = vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)));
  if (*(a3 + 8) == 1)
  {
    if (fabsf(v32) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v32 - v71) / v32) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v33) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v33 - v73) / v33) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v34) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v34 - v75) / v34) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 1;
  }

  else
  {
    if (fabsf(v37) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v37 - v71) / v37) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v36) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v36 - v73) / v36) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v38) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v38 - v75) / v38) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 0;
  }

LABEL_78:
  v76 = *(a4 + 56);
  v77 = v76 + 1;
  if (v18)
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v78 = *a4;
    if (v76)
    {
      v79 = *(a4 + 24);
    }

    else
    {
      *v78 = v85.i32[0];
      v79 = *(a4 + 24);
      *v79 = v10;
    }

    v78[(3 * v76 + 1)] = v86.i32[0];
    v78[(3 * v76 + 2)] = v86.i32[1];
    v78[(3 * v76 + 3)] = v87;
    v79[v77] = v12;
  }

  else
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v80 = *a4;
    if (v76)
    {
      v81 = *(a4 + 24);
    }

    else
    {
      *v80 = v85.i32[0];
      v81 = *(a4 + 24);
      *v81 = v15;
    }

    v80[(3 * v76 + 1)] = v86.i32[0];
    v80[(3 * v76 + 2)] = v86.i32[1];
    v80[(3 * v76 + 3)] = v87;
    v81[v77] = v14;
  }
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_fEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>>(a1, v6);
  }

  v7 = 88 * v2;
  _ZN4geom20interpolating_splineIDv2_fEC2ERKS2_(v7, a2);
  v8 = v7 + 88;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>,geom::interpolating_spline<float>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::interpolating_spline<float>>::~__split_buffer(v14);
  return v8;
}

uint64_t _ZN4geom20interpolating_splineIDv2_fEC2ERKS2_(uint64_t a1, uint64_t a2)
{
  v4 = std::vector<double>::vector[abi:nn200100](a1, a2);
  std::vector<float>::vector[abi:nn200100](v4 + 3, (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v5;
  std::vector<float>::vector[abi:nn200100]((a1 + 64), (a2 + 64));
  return a1;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

float _ZNK4geom20interpolating_splineIDv3_fE20evaluate_span_lengthEj(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 58) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 52);
    if (v2 == a2)
    {
      v4 = *(a1 + 52);
    }

    else
    {
      v4 = *(a1 + 48) + (a2 * ((v3 - *(a1 + 48)) / v2));
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + ((a2 + 1) * ((v3 - *(a1 + 48)) / v2));
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 4 * a2);
    v3 = *(v5 + 4 * (a2 + 1));
  }

  return _ZNK4geom20interpolating_splineIDv3_fE24evaluate_length_betweeenEff(a1, v4, v3);
}

float _ZNK4geom20interpolating_splineIDv3_fE24evaluate_length_betweeenEff(void *a1, float a2, float a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9914;
  v8 = 16;
  do
  {
    v9 = *v7;
    span = geom::interpolating_spline<float>::find_span(a1, v4 + (v5 * *(v7 - 1)));
    v12 = (*a1 + 16 * (3 * span));
    v13 = ((1.0 - *(&span + 1)) + (1.0 - *(&span + 1))) * *(&span + 1);
    v14 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vsubq_f32(v12[2], v12[1]), v13), vsubq_f32(v12[1], *v12), (1.0 - *(&span + 1)) * (1.0 - *(&span + 1))), vsubq_f32(v12[3], v12[2]), *(&span + 1) * *(&span + 1)), v11 * 3.0);
    v15 = vmulq_f32(v14, v14);
    v6 = v6 + (v9 * sqrtf(v15.f32[2] + vaddv_f32(*v15.f32)));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4, double a5, double a6, float64x2_t a7)
{
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *(a2 + 16);
  v12 = *(a2 + 20);
  v15 = *a2;
  v14 = *(a2 + 4);
  v16 = *a2;
  v17 = v14;
  v18 = *(a3 + 8);
  if (v18 == 1)
  {
    v19 = (v16 + v17 * 2.0) * 0.333333333;
    *a7.f64 = (v17 + v16 * 2.0) * 0.333333333;
    v20 = (v11 - v10) / (v12 - v10);
    v21 = (v13 - v10) / (v12 - v10);
    v22 = v20;
    v23 = 1.0 - v20;
    v24 = 1.0 - v21;
    v25 = -(v20 * v20);
    *a7.f64 = (*a7.f64 + (-((v23 * v23) * v23) * v15)) + ((v20 * v25) * v14);
    *(a7.f64 + 1) = (v19 + ((v24 * -(v24 * v24)) * v15)) + (-((v21 * v21) * v21) * v14);
    v26.f32[0] = (v21 * v21) * (1.0 - v21);
    v26.f32[1] = v25 * (1.0 - v20);
    v27.f32[0] = (1.0 - v21) * -(v21 * (1.0 - v21));
    v28 = v20 * (1.0 - v20);
    v27.f32[1] = v23 * v28;
    v29 = 1.0 / (v22 * 3.0 * v21 * ((v24 * -(v28 * v24)) + ((v21 * (v23 * v23)) * v24)));
    v30 = vmul_f32(v26, *&a7.f64[0]);
    *&a7.f64[0] = vmul_f32(v27, *&a7.f64[0]);
    *&a7.f64[0] = vmul_n_f32(vadd_f32(vzip1_s32(v30, *&a7.f64[0]), vzip2_s32(v30, *&a7.f64[0])), v29);
    v86 = a7;
    v87 = *(a2 + 4);
    LODWORD(a7.f64[0]) = *a2;
  }

  else
  {
    a7 = vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v12), xmmword_2500C2060, v10), xmmword_2500C2070, v11), xmmword_2500C2080, v13), vdupq_n_s64(0x3FC5555555555555uLL));
    *&a7.f64[0] = vcvt_f32_f64(a7);
    v86 = a7;
    v87 = *(a2 + 20);
    LODWORD(a7.f64[0]) = *(a2 + 8);
  }

  v85 = a7;
  v31 = *(a2 + 24);
  if (v31 >= *(a3 + 1))
  {
    goto LABEL_78;
  }

  v32 = (v17 + v16 * 5.0) * 0.166666667;
  v33 = (v15 + v14) * 0.5;
  v34 = (v16 + v17 * 5.0) * 0.166666667;
  v35 = *a1;
  v36 = v33;
  v37 = v32;
  v38 = v34;
  if ((*(*a1 + 192) & 1) == 0)
  {
    v39 = *(v35 + 72);
    v40 = 0x2E8BA2E8BA2E8BA3 * ((*(v35 + 80) - v39) >> 3);
    v83 = *(a2 + 12);
    v84 = *(a2 + 16);
    if ((v40 & 0xFFFE) != 0 && *(v35 + 184) < v32)
    {
      LOWORD(v40) = v40 - 1;
      if (*(v35 + 188) > v32)
      {
        for (i = 0; ; i = v42 + 1)
        {
          while (1)
          {
            v42 = (i + v40) >> 1;
            v43 = v39 + 88 * v42;
            if (*(v43 + 48) <= v32)
            {
              break;
            }

            LOWORD(v40) = v42 - 1;
          }

          if (*(v43 + 52) > v32)
          {
            break;
          }
        }

        LODWORD(v40) = (i + v40) >> 1;
      }
    }

    else
    {
      LOWORD(v40) = 0;
    }

    v44 = v40;
    v45 = v40;
    v46 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v39 + 88 * v40, v32);
    if (v45)
    {
      v47 = *(*(v35 + 48) + 4 * (v44 - 1));
    }

    else
    {
      v47 = 0.0;
    }

    v11 = v83;
    v13 = v84;
    v48 = v47 + v46;
    v37 = v48;
    v49 = *a1;
    if (*(*a1 + 192))
    {
      v36 = (v15 + v14) * 0.5;
    }

    else
    {
      v50 = *(v49 + 72);
      v51 = 0x2E8BA2E8BA2E8BA3 * ((*(v49 + 80) - v50) >> 3);
      v82 = v48;
      if ((v51 & 0xFFFE) != 0 && *(v49 + 184) < v33)
      {
        LOWORD(v51) = v51 - 1;
        if (*(v49 + 188) > v33)
        {
          for (j = 0; ; j = v53 + 1)
          {
            while (1)
            {
              v53 = (j + v51) >> 1;
              v54 = v50 + 88 * v53;
              if (*(v54 + 48) <= v33)
              {
                break;
              }

              LOWORD(v51) = v53 - 1;
            }

            if (*(v54 + 52) > v33)
            {
              break;
            }
          }

          LODWORD(v51) = (j + v51) >> 1;
        }
      }

      else
      {
        LOWORD(v51) = 0;
      }

      v55 = v51;
      v56 = v51;
      v57 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v50 + 88 * v51, (v15 + v14) * 0.5);
      if (v56)
      {
        v58 = *(*(v49 + 48) + 4 * (v55 - 1));
      }

      else
      {
        v58 = 0.0;
      }

      v11 = v83;
      v13 = v84;
      v37 = v82;
      v36 = v58 + v57;
      v59 = *a1;
      if ((*(*a1 + 192) & 1) == 0)
      {
        v60 = *(v59 + 72);
        v61 = 0x2E8BA2E8BA2E8BA3 * ((*(v59 + 80) - v60) >> 3);
        if ((v61 & 0xFFFE) != 0 && *(v59 + 184) < v34)
        {
          LOWORD(v61) = v61 - 1;
          if (*(v59 + 188) > v34)
          {
            for (k = 0; ; k = v63 + 1)
            {
              while (1)
              {
                v63 = (k + v61) >> 1;
                v64 = v60 + 88 * v63;
                if (*(v64 + 48) <= v34)
                {
                  break;
                }

                LOWORD(v61) = v63 - 1;
              }

              if (*(v64 + 52) > v34)
              {
                break;
              }
            }

            LODWORD(v61) = (k + v61) >> 1;
          }
        }

        else
        {
          LOWORD(v61) = 0;
        }

        v65 = v61;
        v66 = v61;
        v67 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v60 + 88 * v61, v34);
        if (v66)
        {
          v68 = *(*(v59 + 48) + 4 * (v65 - 1));
        }

        else
        {
          v68 = 0.0;
        }

        v11 = v83;
        v13 = v84;
        v37 = v82;
        v38 = v68 + v67;
        goto LABEL_48;
      }
    }

    v38 = v34;
  }

LABEL_48:
  if (v31 < *a3)
  {
LABEL_49:
    v90 = v15;
    v91 = (v15 + v14) * 0.5;
    v92 = v10;
    v93 = v37;
    v94 = v11;
    v95 = v36;
    v96 = v31 + 1;
    v88[0] = v91;
    v88[1] = v14;
    v88[2] = v36;
    v88[3] = v13;
    v88[4] = v38;
    v88[5] = v12;
    v89 = v31 + 1;
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, &v90, a3, a4);
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, v88, a3, a4);
    return;
  }

  v69 = vextq_s8(vextq_s8(v85, v85, 4uLL), v86, 0xCuLL);
  v69.i32[3] = v87;
  v70 = vmulq_f32(v69, xmmword_2500C2090);
  v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
  v72 = vmulq_f32(v69, xmmword_2500C20A0);
  v73 = vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
  v74 = vmulq_f32(v69, xmmword_2500C20B0);
  v75 = vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)));
  if (*(a3 + 8) == 1)
  {
    if (fabsf(v32) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v32 - v71) / v32) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v33) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v33 - v73) / v33) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v34) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v34 - v75) / v34) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 1;
  }

  else
  {
    if (fabsf(v37) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v37 - v71) / v37) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v36) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v36 - v73) / v36) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v38) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v38 - v75) / v38) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 0;
  }

LABEL_78:
  v76 = *(a4 + 56);
  v77 = v76 + 1;
  if (v18)
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v78 = *a4;
    if (v76)
    {
      v79 = *(a4 + 24);
    }

    else
    {
      *v78 = v85.i32[0];
      v79 = *(a4 + 24);
      *v79 = v10;
    }

    v78[(3 * v76 + 1)] = v86.i32[0];
    v78[(3 * v76 + 2)] = v86.i32[1];
    v78[(3 * v76 + 3)] = v87;
    v79[v77] = v12;
  }

  else
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v80 = *a4;
    if (v76)
    {
      v81 = *(a4 + 24);
    }

    else
    {
      *v80 = v85.i32[0];
      v81 = *(a4 + 24);
      *v81 = v15;
    }

    v80[(3 * v76 + 1)] = v86.i32[0];
    v80[(3 * v76 + 2)] = v86.i32[1];
    v80[(3 * v76 + 3)] = v87;
    v81[v77] = v14;
  }
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_fEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(uint64_t *a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>>(a1, v6);
  }

  v7 = 88 * v2;
  _ZN4geom20interpolating_splineIDv3_fEC2ERKS2_(v7, a2);
  v8 = v7 + 88;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<float>>,geom::interpolating_spline<float>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::interpolating_spline<float>>::~__split_buffer(v14);
  return v8;
}

uint64_t _ZN4geom20interpolating_splineIDv3_fEC2ERKS2_(uint64_t a1, uint64_t a2)
{
  v4 = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  std::vector<float>::vector[abi:nn200100](v4 + 3, (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 55) = *(a2 + 55);
  *(a1 + 48) = v5;
  std::vector<float>::vector[abi:nn200100]((a1 + 64), (a2 + 64));
  return a1;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(result, (v2 - *a2) >> 4);
  }

  return result;
}

float _ZNK4geom20interpolating_splineIDv4_fE20evaluate_span_lengthEj(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 58) == 1)
  {
    v2 = *(a1 + 56);
    v3 = *(a1 + 52);
    if (v2 == a2)
    {
      v4 = *(a1 + 52);
    }

    else
    {
      v4 = *(a1 + 48) + (a2 * ((v3 - *(a1 + 48)) / v2));
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + ((a2 + 1) * ((v3 - *(a1 + 48)) / v2));
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 4 * a2);
    v3 = *(v5 + 4 * (a2 + 1));
  }

  return _ZNK4geom20interpolating_splineIDv4_fE24evaluate_length_betweeenEff(a1, v4, v3);
}

float _ZNK4geom20interpolating_splineIDv4_fE24evaluate_length_betweeenEff(void *a1, float a2, float a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9994;
  v8 = 16;
  do
  {
    v9 = *v7;
    span = geom::interpolating_spline<float>::find_span(a1, v4 + (v5 * *(v7 - 1)));
    v12 = (*a1 + 16 * (3 * span));
    v13 = ((1.0 - *(&span + 1)) + (1.0 - *(&span + 1))) * *(&span + 1);
    v14 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vsubq_f32(v12[2], v12[1]), v13), vsubq_f32(v12[1], *v12), (1.0 - *(&span + 1)) * (1.0 - *(&span + 1))), vsubq_f32(v12[3], v12[2]), *(&span + 1) * *(&span + 1)), v11 * 3.0);
    v15 = vmulq_f32(v14, v14);
    v6 = v6 + (v9 * sqrtf(vaddv_f32(vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL)))));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4, double a5, double a6, float64x2_t a7)
{
  v10 = *(a2 + 8);
  v11 = *(a2 + 12);
  v13 = *(a2 + 16);
  v12 = *(a2 + 20);
  v15 = *a2;
  v14 = *(a2 + 4);
  v16 = *a2;
  v17 = v14;
  v18 = *(a3 + 8);
  if (v18 == 1)
  {
    v19 = (v16 + v17 * 2.0) * 0.333333333;
    *a7.f64 = (v17 + v16 * 2.0) * 0.333333333;
    v20 = (v11 - v10) / (v12 - v10);
    v21 = (v13 - v10) / (v12 - v10);
    v22 = v20;
    v23 = 1.0 - v20;
    v24 = 1.0 - v21;
    v25 = -(v20 * v20);
    *a7.f64 = (*a7.f64 + (-((v23 * v23) * v23) * v15)) + ((v20 * v25) * v14);
    *(a7.f64 + 1) = (v19 + ((v24 * -(v24 * v24)) * v15)) + (-((v21 * v21) * v21) * v14);
    v26.f32[0] = (v21 * v21) * (1.0 - v21);
    v26.f32[1] = v25 * (1.0 - v20);
    v27.f32[0] = (1.0 - v21) * -(v21 * (1.0 - v21));
    v28 = v20 * (1.0 - v20);
    v27.f32[1] = v23 * v28;
    v29 = 1.0 / (v22 * 3.0 * v21 * ((v24 * -(v28 * v24)) + ((v21 * (v23 * v23)) * v24)));
    v30 = vmul_f32(v26, *&a7.f64[0]);
    *&a7.f64[0] = vmul_f32(v27, *&a7.f64[0]);
    *&a7.f64[0] = vmul_n_f32(vadd_f32(vzip1_s32(v30, *&a7.f64[0]), vzip2_s32(v30, *&a7.f64[0])), v29);
    v86 = a7;
    v87 = *(a2 + 4);
    LODWORD(a7.f64[0]) = *a2;
  }

  else
  {
    a7 = vmulq_f64(vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v12), xmmword_2500C2060, v10), xmmword_2500C2070, v11), xmmword_2500C2080, v13), vdupq_n_s64(0x3FC5555555555555uLL));
    *&a7.f64[0] = vcvt_f32_f64(a7);
    v86 = a7;
    v87 = *(a2 + 20);
    LODWORD(a7.f64[0]) = *(a2 + 8);
  }

  v85 = a7;
  v31 = *(a2 + 24);
  if (v31 >= *(a3 + 1))
  {
    goto LABEL_78;
  }

  v32 = (v17 + v16 * 5.0) * 0.166666667;
  v33 = (v15 + v14) * 0.5;
  v34 = (v16 + v17 * 5.0) * 0.166666667;
  v35 = *a1;
  v36 = v33;
  v37 = v32;
  v38 = v34;
  if ((*(*a1 + 192) & 1) == 0)
  {
    v39 = *(v35 + 72);
    v40 = 0x2E8BA2E8BA2E8BA3 * ((*(v35 + 80) - v39) >> 3);
    v83 = *(a2 + 12);
    v84 = *(a2 + 16);
    if ((v40 & 0xFFFE) != 0 && *(v35 + 184) < v32)
    {
      LOWORD(v40) = v40 - 1;
      if (*(v35 + 188) > v32)
      {
        for (i = 0; ; i = v42 + 1)
        {
          while (1)
          {
            v42 = (i + v40) >> 1;
            v43 = v39 + 88 * v42;
            if (*(v43 + 48) <= v32)
            {
              break;
            }

            LOWORD(v40) = v42 - 1;
          }

          if (*(v43 + 52) > v32)
          {
            break;
          }
        }

        LODWORD(v40) = (i + v40) >> 1;
      }
    }

    else
    {
      LOWORD(v40) = 0;
    }

    v44 = v40;
    v45 = v40;
    v46 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v39 + 88 * v40, v32);
    if (v45)
    {
      v47 = *(*(v35 + 48) + 4 * (v44 - 1));
    }

    else
    {
      v47 = 0.0;
    }

    v11 = v83;
    v13 = v84;
    v48 = v47 + v46;
    v37 = v48;
    v49 = *a1;
    if (*(*a1 + 192))
    {
      v36 = (v15 + v14) * 0.5;
    }

    else
    {
      v50 = *(v49 + 72);
      v51 = 0x2E8BA2E8BA2E8BA3 * ((*(v49 + 80) - v50) >> 3);
      v82 = v48;
      if ((v51 & 0xFFFE) != 0 && *(v49 + 184) < v33)
      {
        LOWORD(v51) = v51 - 1;
        if (*(v49 + 188) > v33)
        {
          for (j = 0; ; j = v53 + 1)
          {
            while (1)
            {
              v53 = (j + v51) >> 1;
              v54 = v50 + 88 * v53;
              if (*(v54 + 48) <= v33)
              {
                break;
              }

              LOWORD(v51) = v53 - 1;
            }

            if (*(v54 + 52) > v33)
            {
              break;
            }
          }

          LODWORD(v51) = (j + v51) >> 1;
        }
      }

      else
      {
        LOWORD(v51) = 0;
      }

      v55 = v51;
      v56 = v51;
      v57 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v50 + 88 * v51, (v15 + v14) * 0.5);
      if (v56)
      {
        v58 = *(*(v49 + 48) + 4 * (v55 - 1));
      }

      else
      {
        v58 = 0.0;
      }

      v11 = v83;
      v13 = v84;
      v37 = v82;
      v36 = v58 + v57;
      v59 = *a1;
      if ((*(*a1 + 192) & 1) == 0)
      {
        v60 = *(v59 + 72);
        v61 = 0x2E8BA2E8BA2E8BA3 * ((*(v59 + 80) - v60) >> 3);
        if ((v61 & 0xFFFE) != 0 && *(v59 + 184) < v34)
        {
          LOWORD(v61) = v61 - 1;
          if (*(v59 + 188) > v34)
          {
            for (k = 0; ; k = v63 + 1)
            {
              while (1)
              {
                v63 = (k + v61) >> 1;
                v64 = v60 + 88 * v63;
                if (*(v64 + 48) <= v34)
                {
                  break;
                }

                LOWORD(v61) = v63 - 1;
              }

              if (*(v64 + 52) > v34)
              {
                break;
              }
            }

            LODWORD(v61) = (k + v61) >> 1;
          }
        }

        else
        {
          LOWORD(v61) = 0;
        }

        v65 = v61;
        v66 = v61;
        v67 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v60 + 88 * v61, v34);
        if (v66)
        {
          v68 = *(*(v59 + 48) + 4 * (v65 - 1));
        }

        else
        {
          v68 = 0.0;
        }

        v11 = v83;
        v13 = v84;
        v37 = v82;
        v38 = v68 + v67;
        goto LABEL_48;
      }
    }

    v38 = v34;
  }

LABEL_48:
  if (v31 < *a3)
  {
LABEL_49:
    v90 = v15;
    v91 = (v15 + v14) * 0.5;
    v92 = v10;
    v93 = v37;
    v94 = v11;
    v95 = v36;
    v96 = v31 + 1;
    v88[0] = v91;
    v88[1] = v14;
    v88[2] = v36;
    v88[3] = v13;
    v88[4] = v38;
    v88[5] = v12;
    v89 = v31 + 1;
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, &v90, a3, a4);
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, v88, a3, a4);
    return;
  }

  v69 = vextq_s8(vextq_s8(v85, v85, 4uLL), v86, 0xCuLL);
  v69.i32[3] = v87;
  v70 = vmulq_f32(v69, xmmword_2500C2090);
  v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
  v72 = vmulq_f32(v69, xmmword_2500C20A0);
  v73 = vaddv_f32(vadd_f32(*v72.i8, *&vextq_s8(v72, v72, 8uLL)));
  v74 = vmulq_f32(v69, xmmword_2500C20B0);
  v75 = vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL)));
  if (*(a3 + 8) == 1)
  {
    if (fabsf(v32) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v32 - v71) / v32) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v33) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v33 - v73) / v33) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v34) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v34 - v75) / v34) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 1;
  }

  else
  {
    if (fabsf(v37) <= 0.00001)
    {
      if (fabsf(v71) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v37 - v71) / v37) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v36) <= 0.00001)
    {
      if (fabsf(v73) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v36 - v73) / v36) > a3[1])
    {
      goto LABEL_49;
    }

    if (fabsf(v38) <= 0.00001)
    {
      if (fabsf(v75) > 0.00001)
      {
        goto LABEL_49;
      }
    }

    else if (fabsf((v38 - v75) / v38) > a3[1])
    {
      goto LABEL_49;
    }

    v18 = 0;
  }

LABEL_78:
  v76 = *(a4 + 56);
  v77 = v76 + 1;
  if (v18)
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v78 = *a4;
    if (v76)
    {
      v79 = *(a4 + 24);
    }

    else
    {
      *v78 = v85.i32[0];
      v79 = *(a4 + 24);
      *v79 = v10;
    }

    v78[(3 * v76 + 1)] = v86.i32[0];
    v78[(3 * v76 + 2)] = v86.i32[1];
    v78[(3 * v76 + 3)] = v87;
    v79[v77] = v12;
  }

  else
  {
    if (v76 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 56) = 0;
      if ((*(a4 + 58) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<float>::resize(a4, (3 * v77 + 1));
      *(a4 + 56) = v77;
      if ((*(a4 + 58) & 1) == 0)
      {
        std::vector<float>::resize((a4 + 24), (v76 + 1) + 1);
      }
    }

    v80 = *a4;
    if (v76)
    {
      v81 = *(a4 + 24);
    }

    else
    {
      *v80 = v85.i32[0];
      v81 = *(a4 + 24);
      *v81 = v15;
    }

    v80[(3 * v76 + 1)] = v86.i32[0];
    v80[(3 * v76 + 2)] = v86.i32[1];
    v80[(3 * v76 + 3)] = v87;
    v81[v77] = v14;
  }
}

double _ZNK4geom20interpolating_splineIDv2_dE20evaluate_span_lengthEj(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 66) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 56);
    if (v2 == a2)
    {
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = *(a1 + 48) + a2 * ((v3 - *(a1 + 48)) / v2);
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + (a2 + 1) * ((v3 - *(a1 + 48)) / v2);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 8 * a2);
    v3 = *(v5 + 8 * (a2 + 1));
  }

  return _ZNK4geom20interpolating_splineIDv2_dE24evaluate_length_betweeenEdd(a1, v4, v3);
}

double _ZNK4geom20interpolating_splineIDv2_dE24evaluate_length_betweeenEdd(void *a1, double a2, double a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9A18;
  v8 = 16;
  do
  {
    v9 = *v7;
    v10 = v4 + v5 * *(v7 - 1);
    v14 = 0;
    v15 = 0.0;
    v16 = 0.0;
    geom::interpolating_spline<double>::find_span(a1, &v14, v10);
    v11 = (*a1 + 16 * (3 * v14));
    v12 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v11[2], v11[1]), v15 * (1.0 - v15 + 1.0 - v15)), vsubq_f64(v11[1], *v11), (1.0 - v15) * (1.0 - v15)), vsubq_f64(v11[3], v11[2]), v15 * v15), v16 * 3.0);
    v6 = v6 + v9 * sqrt(vaddvq_f64(vmulq_f64(v12, v12)));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a3 + 8);
  if (v13 == 1)
  {
    v14 = (v8 - v7) / (v9 - v7);
    v15 = (v10 - v7) / (v9 - v7);
    v16 = 1.0 - v14;
    v17 = 1.0 - v15;
    v18 = -(v14 * v14);
    v19.f64[0] = (v11 + v12 * 2.0) * 0.333333333 + -(v16 * v16 * v16) * v12 + v14 * v18 * v11;
    v19.f64[1] = (v12 + v11 * 2.0) * 0.333333333 + v17 * -(v17 * v17) * v12 + -(v15 * v15 * v15) * v11;
    v20.f64[0] = v15 * v15 * (1.0 - v15);
    v20.f64[1] = v18 * (1.0 - v14);
    v21.f64[0] = (1.0 - v15) * -(v15 * (1.0 - v15));
    v22 = v14 * (1.0 - v14);
    v21.f64[1] = (1.0 - v14) * v22;
    v23 = vpaddq_f64(vmulq_f64(v20, v19), vmulq_f64(v21, v19));
    v79 = vmulq_n_f64(v23, 1.0 / (v14 * 3.0 * v15 * (v17 * -(v22 * v17) + v15 * (v16 * v16) * v17)));
    v80 = *(a2 + 8);
    v23.f64[0] = *a2;
  }

  else
  {
    v23 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v9), xmmword_2500C2060, v7), xmmword_2500C2070, v8), xmmword_2500C2080, v10);
    v79 = vmulq_f64(v23, vdupq_n_s64(0x3FC5555555555555uLL));
    v80 = *(a2 + 40);
    v23.f64[0] = *(a2 + 16);
  }

  v78 = v23;
  v24 = *(a2 + 48);
  if (v24 >= *(a3 + 1))
  {
    goto LABEL_82;
  }

  v25 = (v11 + v12 * 5.0) * 0.166666667;
  v26 = (v12 + v11) * 0.5;
  v27 = (v12 + v11 * 5.0) * 0.166666667;
  v28 = *a1;
  v29 = v26;
  v30 = v25;
  v31 = v27;
  if ((*(*a1 + 208) & 1) == 0)
  {
    v32 = *(v28 + 72);
    v33 = 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 80) - v32) >> 5);
    v72 = *(a2 + 24);
    v73 = *(a2 + 32);
    v74 = *(a2 + 16);
    v76 = *(a2 + 40);
    if ((v33 & 0xFFFE) != 0 && *(v28 + 192) < v25)
    {
      LOWORD(v33) = v33 - 1;
      if (*(v28 + 200) > v25)
      {
        for (i = 0; ; i = v35 + 1)
        {
          while (1)
          {
            v35 = (i + v33) >> 1;
            v36 = v32 + 96 * v35;
            if (*(v36 + 48) <= v25)
            {
              break;
            }

            LOWORD(v33) = v35 - 1;
          }

          if (*(v36 + 56) > v25)
          {
            break;
          }
        }

        LODWORD(v33) = (i + v33) >> 1;
      }

      v39 = v33;
      v40 = v33;
      v37 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v32 + 96 * v33, (v11 + v12 * 5.0) * 0.166666667);
      if (v40)
      {
        v38 = *(*(v28 + 48) + 8 * (v39 - 1));
      }

      else
      {
        v38 = 0.0;
      }

      v7 = v74;
      v9 = v76;
      v8 = v72;
      v10 = v73;
    }

    else
    {
      v37 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v32, (v11 + v12 * 5.0) * 0.166666667);
      v8 = v72;
      v10 = v73;
      v7 = v74;
      v9 = v76;
      v38 = 0.0;
    }

    v30 = v37 + v38;
    v41 = *a1;
    if (*(*a1 + 208))
    {
      v29 = (v12 + v11) * 0.5;
    }

    else
    {
      v42 = *(v41 + 72);
      v43 = 0xAAAAAAAAAAAAAAABLL * ((*(v41 + 80) - v42) >> 5);
      if ((v43 & 0xFFFE) != 0 && *(v41 + 192) < v26)
      {
        LOWORD(v43) = v43 - 1;
        if (*(v41 + 200) > v26)
        {
          for (j = 0; ; j = v45 + 1)
          {
            while (1)
            {
              v45 = (j + v43) >> 1;
              v46 = v42 + 96 * v45;
              if (*(v46 + 48) <= v26)
              {
                break;
              }

              LOWORD(v43) = v45 - 1;
            }

            if (*(v46 + 56) > v26)
            {
              break;
            }
          }

          LODWORD(v43) = (j + v43) >> 1;
        }

        v49 = v43;
        v50 = v43;
        v47 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v42 + 96 * v43, (v12 + v11) * 0.5);
        if (v50)
        {
          v48 = *(*(v41 + 48) + 8 * (v49 - 1));
        }

        else
        {
          v48 = 0.0;
        }

        v7 = v74;
        v9 = v76;
        v8 = v72;
        v10 = v73;
      }

      else
      {
        v47 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v42, (v12 + v11) * 0.5);
        v8 = v72;
        v10 = v73;
        v7 = v74;
        v9 = v76;
        v48 = 0.0;
      }

      v29 = v47 + v48;
      v51 = *a1;
      if ((*(*a1 + 208) & 1) == 0)
      {
        v52 = *(v51 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) != 0 && *(v51 + 192) < v27)
        {
          LOWORD(v53) = v53 - 1;
          if (*(v51 + 200) > v27)
          {
            for (k = 0; ; k = v55 + 1)
            {
              while (1)
              {
                v55 = (k + v53) >> 1;
                v56 = v52 + 96 * v55;
                if (*(v56 + 48) <= v27)
                {
                  break;
                }

                LOWORD(v53) = v55 - 1;
              }

              if (*(v56 + 56) > v27)
              {
                break;
              }
            }

            LODWORD(v53) = (k + v53) >> 1;
          }

          v59 = v53;
          v60 = v53;
          v57 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v52 + 96 * v53, (v12 + v11 * 5.0) * 0.166666667);
          if (v60)
          {
            v58 = *(*(v51 + 48) + 8 * (v59 - 1));
          }

          else
          {
            v58 = 0.0;
          }

          v7 = v74;
          v9 = v76;
          v8 = v72;
          v10 = v73;
        }

        else
        {
          v57 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v52, (v12 + v11 * 5.0) * 0.166666667);
          v8 = v72;
          v10 = v73;
          v7 = v74;
          v9 = v76;
          v58 = 0.0;
        }

        v31 = v57 + v58;
        goto LABEL_53;
      }
    }

    v31 = (v12 + v11 * 5.0) * 0.166666667;
  }

LABEL_53:
  if (v24 < *a3)
  {
LABEL_54:
    v83 = v12;
    v84 = (v12 + v11) * 0.5;
    v85 = v7;
    v86 = v30;
    v87 = v8;
    v88 = v29;
    v89 = v24 + 1;
    v81[0] = v84;
    v81[1] = v11;
    v81[2] = v29;
    v81[3] = v10;
    v81[4] = v31;
    v81[5] = v9;
    v82 = v24 + 1;
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, &v83, a3, a4);
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, v81, a3, a4);
    return;
  }

  v61 = vzip1q_s64(v78, v79);
  *&v62.f64[0] = vdupq_laneq_s64(v79, 1).u64[0];
  v62.f64[1] = v80;
  v63 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20D0), vmulq_f64(v62, xmmword_2500C20C0)));
  v64 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20F0), vmulq_f64(v62, xmmword_2500C20E0)));
  v65 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C2110), vmulq_f64(v62, xmmword_2500C2100)));
  if (*(a3 + 8) == 1)
  {
    if (fabs(v25) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v25 - v63) / v25) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v26) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v26 - v64) / v26) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v27) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v27 - v65) / v27) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 1;
  }

  else
  {
    if (fabs(v30) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v30 - v63) / v30) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v29) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v29 - v64) / v29) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v31) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v31 - v65) / v31) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 0;
  }

LABEL_82:
  v66 = *(a4 + 64);
  v67 = v66 + 1;
  if (v13)
  {
    v75 = v7;
    v77 = v9;
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v68 = *a4;
    if (v66)
    {
      v69 = *(a4 + 24);
    }

    else
    {
      *v68 = v78.i64[0];
      v69 = *(a4 + 24);
      *v69 = v75;
    }

    v68[(3 * v66 + 1)] = v79.i64[0];
    v68[(3 * v66 + 2)] = v79.i64[1];
    *&v68[(3 * v66 + 3)] = v80;
    v69[v67] = v77;
  }

  else
  {
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v70 = *a4;
    if (v66)
    {
      v71 = *(a4 + 24);
    }

    else
    {
      *v70 = v78.i64[0];
      v71 = *(a4 + 24);
      *v71 = v12;
    }

    v70[(3 * v66 + 1)] = v79.i64[0];
    v70[(3 * v66 + 2)] = v79.i64[1];
    *&v70[(3 * v66 + 3)] = v80;
    v71[v67] = v11;
  }
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_dEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>>(a1, v6);
  }

  v7 = 96 * v2;
  _ZN4geom20interpolating_splineIDv2_dEC2ERKS2_(v7, a2);
  v8 = v7 + 96;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>,geom::interpolating_spline<double>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::interpolating_spline<double>>::~__split_buffer(v14);
  return v8;
}

uint64_t _ZN4geom20interpolating_splineIDv2_dEC2ERKS2_(uint64_t a1, uint64_t a2)
{
  v4 = _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  std::vector<double>::vector[abi:nn200100](v4 + 3, (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 48) = v5;
  std::vector<double>::vector[abi:nn200100]((a1 + 72), (a2 + 72));
  return a1;
}

double _ZNK4geom20interpolating_splineIDv3_dE20evaluate_span_lengthEj(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 66) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 56);
    if (v2 == a2)
    {
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = *(a1 + 48) + a2 * ((v3 - *(a1 + 48)) / v2);
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + (a2 + 1) * ((v3 - *(a1 + 48)) / v2);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 8 * a2);
    v3 = *(v5 + 8 * (a2 + 1));
  }

  return _ZNK4geom20interpolating_splineIDv3_dE24evaluate_length_betweeenEdd(a1, v4, v3);
}

double _ZNK4geom20interpolating_splineIDv3_dE24evaluate_length_betweeenEdd(void *a1, double a2, double a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9B18;
  v8 = 16;
  do
  {
    v9 = *v7;
    v10 = v4 + v5 * *(v7 - 1);
    v26 = 0;
    v27 = 0.0;
    v28 = 0.0;
    geom::interpolating_spline<double>::find_span(a1, &v26, v10);
    v11.f64[0] = v28 * 3.0;
    v12 = *a1 + 32 * (3 * v26);
    v13 = *(v12 + 48);
    v14 = vsubq_f64(v13, *(v12 + 16));
    v15 = *(v12 + 80);
    v16 = *(v12 + 112);
    v17 = vsubq_f64(v15, v13);
    v18 = 1.0 - v27;
    v19.f64[0] = v18 * v18;
    v20 = vsubq_f64(v16, v15);
    v16.f64[0] = v27 * (v18 + v18);
    v21.f64[0] = v27 * v27;
    v22 = vmlaq_f64(vmlaq_f64(vmulq_f64(v16, v17), v19, v14), v21, v20);
    v23 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(*(v12 + 64), *(v12 + 32)), v16.f64[0]), vsubq_f64(*(v12 + 32), *v12), v18 * v18), vsubq_f64(*(v12 + 96), *(v12 + 64)), v27 * v27), v28 * 3.0);
    v24 = vmulq_f64(v11, v22);
    v6 = v6 + v9 * sqrt(vmulq_f64(v24, v24).f64[0] + vaddvq_f64(vmulq_f64(v23, v23)));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a3 + 8);
  if (v13 == 1)
  {
    v14 = (v8 - v7) / (v9 - v7);
    v15 = (v10 - v7) / (v9 - v7);
    v16 = 1.0 - v14;
    v17 = 1.0 - v15;
    v18 = -(v14 * v14);
    v19.f64[0] = (v11 + v12 * 2.0) * 0.333333333 + -(v16 * v16 * v16) * v12 + v14 * v18 * v11;
    v19.f64[1] = (v12 + v11 * 2.0) * 0.333333333 + v17 * -(v17 * v17) * v12 + -(v15 * v15 * v15) * v11;
    v20.f64[0] = v15 * v15 * (1.0 - v15);
    v20.f64[1] = v18 * (1.0 - v14);
    v21.f64[0] = (1.0 - v15) * -(v15 * (1.0 - v15));
    v22 = v14 * (1.0 - v14);
    v21.f64[1] = (1.0 - v14) * v22;
    v23 = vpaddq_f64(vmulq_f64(v20, v19), vmulq_f64(v21, v19));
    v79 = vmulq_n_f64(v23, 1.0 / (v14 * 3.0 * v15 * (v17 * -(v22 * v17) + v15 * (v16 * v16) * v17)));
    v80 = *(a2 + 8);
    v23.f64[0] = *a2;
  }

  else
  {
    v23 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v9), xmmword_2500C2060, v7), xmmword_2500C2070, v8), xmmword_2500C2080, v10);
    v79 = vmulq_f64(v23, vdupq_n_s64(0x3FC5555555555555uLL));
    v80 = *(a2 + 40);
    v23.f64[0] = *(a2 + 16);
  }

  v78 = v23;
  v24 = *(a2 + 48);
  if (v24 >= *(a3 + 1))
  {
    goto LABEL_82;
  }

  v25 = (v11 + v12 * 5.0) * 0.166666667;
  v26 = (v12 + v11) * 0.5;
  v27 = (v12 + v11 * 5.0) * 0.166666667;
  v28 = *a1;
  v29 = v26;
  v30 = v25;
  v31 = v27;
  if ((*(*a1 + 208) & 1) == 0)
  {
    v32 = *(v28 + 72);
    v33 = 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 80) - v32) >> 5);
    v72 = *(a2 + 24);
    v73 = *(a2 + 32);
    v74 = *(a2 + 16);
    v76 = *(a2 + 40);
    if ((v33 & 0xFFFE) != 0 && *(v28 + 192) < v25)
    {
      LOWORD(v33) = v33 - 1;
      if (*(v28 + 200) > v25)
      {
        for (i = 0; ; i = v35 + 1)
        {
          while (1)
          {
            v35 = (i + v33) >> 1;
            v36 = v32 + 96 * v35;
            if (*(v36 + 48) <= v25)
            {
              break;
            }

            LOWORD(v33) = v35 - 1;
          }

          if (*(v36 + 56) > v25)
          {
            break;
          }
        }

        LODWORD(v33) = (i + v33) >> 1;
      }

      v39 = v33;
      v40 = v33;
      v37 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v32 + 96 * v33, (v11 + v12 * 5.0) * 0.166666667);
      if (v40)
      {
        v38 = *(*(v28 + 48) + 8 * (v39 - 1));
      }

      else
      {
        v38 = 0.0;
      }

      v7 = v74;
      v9 = v76;
      v8 = v72;
      v10 = v73;
    }

    else
    {
      v37 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v32, (v11 + v12 * 5.0) * 0.166666667);
      v8 = v72;
      v10 = v73;
      v7 = v74;
      v9 = v76;
      v38 = 0.0;
    }

    v30 = v37 + v38;
    v41 = *a1;
    if (*(*a1 + 208))
    {
      v29 = (v12 + v11) * 0.5;
    }

    else
    {
      v42 = *(v41 + 72);
      v43 = 0xAAAAAAAAAAAAAAABLL * ((*(v41 + 80) - v42) >> 5);
      if ((v43 & 0xFFFE) != 0 && *(v41 + 192) < v26)
      {
        LOWORD(v43) = v43 - 1;
        if (*(v41 + 200) > v26)
        {
          for (j = 0; ; j = v45 + 1)
          {
            while (1)
            {
              v45 = (j + v43) >> 1;
              v46 = v42 + 96 * v45;
              if (*(v46 + 48) <= v26)
              {
                break;
              }

              LOWORD(v43) = v45 - 1;
            }

            if (*(v46 + 56) > v26)
            {
              break;
            }
          }

          LODWORD(v43) = (j + v43) >> 1;
        }

        v49 = v43;
        v50 = v43;
        v47 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v42 + 96 * v43, (v12 + v11) * 0.5);
        if (v50)
        {
          v48 = *(*(v41 + 48) + 8 * (v49 - 1));
        }

        else
        {
          v48 = 0.0;
        }

        v7 = v74;
        v9 = v76;
        v8 = v72;
        v10 = v73;
      }

      else
      {
        v47 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v42, (v12 + v11) * 0.5);
        v8 = v72;
        v10 = v73;
        v7 = v74;
        v9 = v76;
        v48 = 0.0;
      }

      v29 = v47 + v48;
      v51 = *a1;
      if ((*(*a1 + 208) & 1) == 0)
      {
        v52 = *(v51 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) != 0 && *(v51 + 192) < v27)
        {
          LOWORD(v53) = v53 - 1;
          if (*(v51 + 200) > v27)
          {
            for (k = 0; ; k = v55 + 1)
            {
              while (1)
              {
                v55 = (k + v53) >> 1;
                v56 = v52 + 96 * v55;
                if (*(v56 + 48) <= v27)
                {
                  break;
                }

                LOWORD(v53) = v55 - 1;
              }

              if (*(v56 + 56) > v27)
              {
                break;
              }
            }

            LODWORD(v53) = (k + v53) >> 1;
          }

          v59 = v53;
          v60 = v53;
          v57 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v52 + 96 * v53, (v12 + v11 * 5.0) * 0.166666667);
          if (v60)
          {
            v58 = *(*(v51 + 48) + 8 * (v59 - 1));
          }

          else
          {
            v58 = 0.0;
          }

          v7 = v74;
          v9 = v76;
          v8 = v72;
          v10 = v73;
        }

        else
        {
          v57 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v52, (v12 + v11 * 5.0) * 0.166666667);
          v8 = v72;
          v10 = v73;
          v7 = v74;
          v9 = v76;
          v58 = 0.0;
        }

        v31 = v57 + v58;
        goto LABEL_53;
      }
    }

    v31 = (v12 + v11 * 5.0) * 0.166666667;
  }

LABEL_53:
  if (v24 < *a3)
  {
LABEL_54:
    v83 = v12;
    v84 = (v12 + v11) * 0.5;
    v85 = v7;
    v86 = v30;
    v87 = v8;
    v88 = v29;
    v89 = v24 + 1;
    v81[0] = v84;
    v81[1] = v11;
    v81[2] = v29;
    v81[3] = v10;
    v81[4] = v31;
    v81[5] = v9;
    v82 = v24 + 1;
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, &v83, a3, a4);
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, v81, a3, a4);
    return;
  }

  v61 = vzip1q_s64(v78, v79);
  *&v62.f64[0] = vdupq_laneq_s64(v79, 1).u64[0];
  v62.f64[1] = v80;
  v63 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20D0), vmulq_f64(v62, xmmword_2500C20C0)));
  v64 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20F0), vmulq_f64(v62, xmmword_2500C20E0)));
  v65 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C2110), vmulq_f64(v62, xmmword_2500C2100)));
  if (*(a3 + 8) == 1)
  {
    if (fabs(v25) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v25 - v63) / v25) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v26) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v26 - v64) / v26) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v27) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v27 - v65) / v27) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 1;
  }

  else
  {
    if (fabs(v30) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v30 - v63) / v30) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v29) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v29 - v64) / v29) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v31) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v31 - v65) / v31) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 0;
  }

LABEL_82:
  v66 = *(a4 + 64);
  v67 = v66 + 1;
  if (v13)
  {
    v75 = v7;
    v77 = v9;
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v68 = *a4;
    if (v66)
    {
      v69 = *(a4 + 24);
    }

    else
    {
      *v68 = v78.i64[0];
      v69 = *(a4 + 24);
      *v69 = v75;
    }

    v68[(3 * v66 + 1)] = v79.i64[0];
    v68[(3 * v66 + 2)] = v79.i64[1];
    *&v68[(3 * v66 + 3)] = v80;
    v69[v67] = v77;
  }

  else
  {
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v70 = *a4;
    if (v66)
    {
      v71 = *(a4 + 24);
    }

    else
    {
      *v70 = v78.i64[0];
      v71 = *(a4 + 24);
      *v71 = v12;
    }

    v70[(3 * v66 + 1)] = v79.i64[0];
    v70[(3 * v66 + 2)] = v79.i64[1];
    *&v70[(3 * v66 + 3)] = v80;
    v71[v67] = v11;
  }
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_dEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14[4] = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>>(a1, v6);
  }

  v7 = 96 * v2;
  _ZN4geom20interpolating_splineIDv3_dEC2ERKS2_(v7, a2);
  v8 = v7 + 96;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<geom::interpolating_spline<double>>,geom::interpolating_spline<double>*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = 0;
  v14[2] = v11;
  v14[3] = v12;
  v14[0] = v11;
  v14[1] = v11;
  std::__split_buffer<geom::interpolating_spline<double>>::~__split_buffer(v14);
  return v8;
}

uint64_t _ZN4geom20interpolating_splineIDv3_dEC2ERKS2_(uint64_t a1, uint64_t a2)
{
  v4 = _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(a1, a2);
  std::vector<double>::vector[abi:nn200100](v4 + 3, (a2 + 24));
  v5 = *(a2 + 48);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 48) = v5;
  std::vector<double>::vector[abi:nn200100]((a1 + 72), (a2 + 72));
  return a1;
}

void *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEEC2B8nn200100ERKS4_(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE11__vallocateB8nn200100Em(result, (v2 - *a2) >> 5);
  }

  return result;
}

double _ZNK4geom20interpolating_splineIDv4_dE20evaluate_span_lengthEj(uint64_t a1, unsigned __int16 a2)
{
  if (*(a1 + 66) == 1)
  {
    v2 = *(a1 + 64);
    v3 = *(a1 + 56);
    if (v2 == a2)
    {
      v4 = *(a1 + 56);
    }

    else
    {
      v4 = *(a1 + 48) + a2 * ((v3 - *(a1 + 48)) / v2);
    }

    if (v2 != (a2 + 1))
    {
      v3 = *(a1 + 48) + (a2 + 1) * ((v3 - *(a1 + 48)) / v2);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v4 = *(v5 + 8 * a2);
    v3 = *(v5 + 8 * (a2 + 1));
  }

  return _ZNK4geom20interpolating_splineIDv4_dE24evaluate_length_betweeenEdd(a1, v4, v3);
}

double _ZNK4geom20interpolating_splineIDv4_dE24evaluate_length_betweeenEdd(void *a1, double a2, double a3)
{
  v4 = (a2 + a3) * 0.5;
  v5 = (a3 - a2) * 0.5;
  v6 = 0.0;
  v7 = &unk_27F3B9C18;
  v8 = 16;
  do
  {
    v9 = *v7;
    v10 = v4 + v5 * *(v7 - 1);
    v18 = 0;
    v19 = 0.0;
    v20 = 0.0;
    geom::interpolating_spline<double>::find_span(a1, &v18, v10);
    v11 = (*a1 + 32 * (3 * v18));
    v12 = 1.0 - v19;
    v13 = v12 * v12;
    v14 = v19 * (v12 + v12);
    v15 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v11[4], v11[2]), v14), vsubq_f64(v11[2], *v11), v13), vsubq_f64(v11[6], v11[4]), v19 * v19), v20 * 3.0);
    v16 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v11[5], v11[3]), v14), vsubq_f64(v11[3], v11[1]), v13), vsubq_f64(v11[7], v11[5]), v19 * v19), v20 * 3.0);
    v6 = v6 + v9 * sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v15, v15), vmulq_f64(v16, v16))));
    v7 += 2;
    --v8;
  }

  while (v8);
  return v5 * v6;
}

void _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(uint64_t *a1, uint64_t a2, float *a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v10 = *(a2 + 32);
  v9 = *(a2 + 40);
  v12 = *a2;
  v11 = *(a2 + 8);
  v13 = *(a3 + 8);
  if (v13 == 1)
  {
    v14 = (v8 - v7) / (v9 - v7);
    v15 = (v10 - v7) / (v9 - v7);
    v16 = 1.0 - v14;
    v17 = 1.0 - v15;
    v18 = -(v14 * v14);
    v19.f64[0] = (v11 + v12 * 2.0) * 0.333333333 + -(v16 * v16 * v16) * v12 + v14 * v18 * v11;
    v19.f64[1] = (v12 + v11 * 2.0) * 0.333333333 + v17 * -(v17 * v17) * v12 + -(v15 * v15 * v15) * v11;
    v20.f64[0] = v15 * v15 * (1.0 - v15);
    v20.f64[1] = v18 * (1.0 - v14);
    v21.f64[0] = (1.0 - v15) * -(v15 * (1.0 - v15));
    v22 = v14 * (1.0 - v14);
    v21.f64[1] = (1.0 - v14) * v22;
    v23 = vpaddq_f64(vmulq_f64(v20, v19), vmulq_f64(v21, v19));
    v79 = vmulq_n_f64(v23, 1.0 / (v14 * 3.0 * v15 * (v17 * -(v22 * v17) + v15 * (v16 * v16) * v17)));
    v80 = *(a2 + 8);
    v23.f64[0] = *a2;
  }

  else
  {
    v23 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(xmmword_2500C2050, v9), xmmword_2500C2060, v7), xmmword_2500C2070, v8), xmmword_2500C2080, v10);
    v79 = vmulq_f64(v23, vdupq_n_s64(0x3FC5555555555555uLL));
    v80 = *(a2 + 40);
    v23.f64[0] = *(a2 + 16);
  }

  v78 = v23;
  v24 = *(a2 + 48);
  if (v24 >= *(a3 + 1))
  {
    goto LABEL_82;
  }

  v25 = (v11 + v12 * 5.0) * 0.166666667;
  v26 = (v12 + v11) * 0.5;
  v27 = (v12 + v11 * 5.0) * 0.166666667;
  v28 = *a1;
  v29 = v26;
  v30 = v25;
  v31 = v27;
  if ((*(*a1 + 208) & 1) == 0)
  {
    v32 = *(v28 + 72);
    v33 = 0xAAAAAAAAAAAAAAABLL * ((*(v28 + 80) - v32) >> 5);
    v72 = *(a2 + 24);
    v73 = *(a2 + 32);
    v74 = *(a2 + 16);
    v76 = *(a2 + 40);
    if ((v33 & 0xFFFE) != 0 && *(v28 + 192) < v25)
    {
      LOWORD(v33) = v33 - 1;
      if (*(v28 + 200) > v25)
      {
        for (i = 0; ; i = v35 + 1)
        {
          while (1)
          {
            v35 = (i + v33) >> 1;
            v36 = v32 + 96 * v35;
            if (*(v36 + 48) <= v25)
            {
              break;
            }

            LOWORD(v33) = v35 - 1;
          }

          if (*(v36 + 56) > v25)
          {
            break;
          }
        }

        LODWORD(v33) = (i + v33) >> 1;
      }

      v39 = v33;
      v40 = v33;
      v37 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v32 + 96 * v33, (v11 + v12 * 5.0) * 0.166666667);
      if (v40)
      {
        v38 = *(*(v28 + 48) + 8 * (v39 - 1));
      }

      else
      {
        v38 = 0.0;
      }

      v7 = v74;
      v9 = v76;
      v8 = v72;
      v10 = v73;
    }

    else
    {
      v37 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v32, (v11 + v12 * 5.0) * 0.166666667);
      v8 = v72;
      v10 = v73;
      v7 = v74;
      v9 = v76;
      v38 = 0.0;
    }

    v30 = v37 + v38;
    v41 = *a1;
    if (*(*a1 + 208))
    {
      v29 = (v12 + v11) * 0.5;
    }

    else
    {
      v42 = *(v41 + 72);
      v43 = 0xAAAAAAAAAAAAAAABLL * ((*(v41 + 80) - v42) >> 5);
      if ((v43 & 0xFFFE) != 0 && *(v41 + 192) < v26)
      {
        LOWORD(v43) = v43 - 1;
        if (*(v41 + 200) > v26)
        {
          for (j = 0; ; j = v45 + 1)
          {
            while (1)
            {
              v45 = (j + v43) >> 1;
              v46 = v42 + 96 * v45;
              if (*(v46 + 48) <= v26)
              {
                break;
              }

              LOWORD(v43) = v45 - 1;
            }

            if (*(v46 + 56) > v26)
            {
              break;
            }
          }

          LODWORD(v43) = (j + v43) >> 1;
        }

        v49 = v43;
        v50 = v43;
        v47 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v42 + 96 * v43, (v12 + v11) * 0.5);
        if (v50)
        {
          v48 = *(*(v41 + 48) + 8 * (v49 - 1));
        }

        else
        {
          v48 = 0.0;
        }

        v7 = v74;
        v9 = v76;
        v8 = v72;
        v10 = v73;
      }

      else
      {
        v47 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v42, (v12 + v11) * 0.5);
        v8 = v72;
        v10 = v73;
        v7 = v74;
        v9 = v76;
        v48 = 0.0;
      }

      v29 = v47 + v48;
      v51 = *a1;
      if ((*(*a1 + 208) & 1) == 0)
      {
        v52 = *(v51 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v51 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) != 0 && *(v51 + 192) < v27)
        {
          LOWORD(v53) = v53 - 1;
          if (*(v51 + 200) > v27)
          {
            for (k = 0; ; k = v55 + 1)
            {
              while (1)
              {
                v55 = (k + v53) >> 1;
                v56 = v52 + 96 * v55;
                if (*(v56 + 48) <= v27)
                {
                  break;
                }

                LOWORD(v53) = v55 - 1;
              }

              if (*(v56 + 56) > v27)
              {
                break;
              }
            }

            LODWORD(v53) = (k + v53) >> 1;
          }

          v59 = v53;
          v60 = v53;
          v57 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v52 + 96 * v53, (v12 + v11 * 5.0) * 0.166666667);
          if (v60)
          {
            v58 = *(*(v51 + 48) + 8 * (v59 - 1));
          }

          else
          {
            v58 = 0.0;
          }

          v7 = v74;
          v9 = v76;
          v8 = v72;
          v10 = v73;
        }

        else
        {
          v57 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v52, (v12 + v11 * 5.0) * 0.166666667);
          v8 = v72;
          v10 = v73;
          v7 = v74;
          v9 = v76;
          v58 = 0.0;
        }

        v31 = v57 + v58;
        goto LABEL_53;
      }
    }

    v31 = (v12 + v11 * 5.0) * 0.166666667;
  }

LABEL_53:
  if (v24 < *a3)
  {
LABEL_54:
    v83 = v12;
    v84 = (v12 + v11) * 0.5;
    v85 = v7;
    v86 = v30;
    v87 = v8;
    v88 = v29;
    v89 = v24 + 1;
    v81[0] = v84;
    v81[1] = v11;
    v81[2] = v29;
    v81[3] = v10;
    v81[4] = v31;
    v81[5] = v9;
    v82 = v24 + 1;
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, &v83, a3, a4);
    _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(a1, v81, a3, a4);
    return;
  }

  v61 = vzip1q_s64(v78, v79);
  *&v62.f64[0] = vdupq_laneq_s64(v79, 1).u64[0];
  v62.f64[1] = v80;
  v63 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20D0), vmulq_f64(v62, xmmword_2500C20C0)));
  v64 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C20F0), vmulq_f64(v62, xmmword_2500C20E0)));
  v65 = vaddvq_f64(vaddq_f64(vmulq_f64(v61, xmmword_2500C2110), vmulq_f64(v62, xmmword_2500C2100)));
  if (*(a3 + 8) == 1)
  {
    if (fabs(v25) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v25 - v63) / v25) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v26) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v26 - v64) / v26) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v27) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v27 - v65) / v27) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 1;
  }

  else
  {
    if (fabs(v30) <= 0.000001)
    {
      if (fabs(v63) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v30 - v63) / v30) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v29) <= 0.000001)
    {
      if (fabs(v64) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v29 - v64) / v29) > a3[1])
    {
      goto LABEL_54;
    }

    if (fabs(v31) <= 0.000001)
    {
      if (fabs(v65) > 0.000001)
      {
        goto LABEL_54;
      }
    }

    else if (fabs((v31 - v65) / v31) > a3[1])
    {
      goto LABEL_54;
    }

    v13 = 0;
  }

LABEL_82:
  v66 = *(a4 + 64);
  v67 = v66 + 1;
  if (v13)
  {
    v75 = v7;
    v77 = v9;
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v68 = *a4;
    if (v66)
    {
      v69 = *(a4 + 24);
    }

    else
    {
      *v68 = v78.i64[0];
      v69 = *(a4 + 24);
      *v69 = v75;
    }

    v68[(3 * v66 + 1)] = v79.i64[0];
    v68[(3 * v66 + 2)] = v79.i64[1];
    *&v68[(3 * v66 + 3)] = v80;
    v69[v67] = v77;
  }

  else
  {
    if (v66 == 0xFFFF)
    {
      *(a4 + 8) = *a4;
      *(a4 + 64) = 0;
      if ((*(a4 + 66) & 1) == 0)
      {
        *(a4 + 32) = *(a4 + 24);
      }
    }

    else
    {
      std::vector<double>::resize(a4, (3 * v67 + 1));
      *(a4 + 64) = v67;
      if ((*(a4 + 66) & 1) == 0)
      {
        std::vector<double>::resize((a4 + 24), (v66 + 1) + 1);
      }
    }

    v70 = *a4;
    if (v66)
    {
      v71 = *(a4 + 24);
    }

    else
    {
      *v70 = v78.i64[0];
      v71 = *(a4 + 24);
      *v71 = v12;
    }

    v70[(3 * v66 + 1)] = v79.i64[0];
    v70[(3 * v66 + 2)] = v79.i64[1];
    *&v70[(3 * v66 + 3)] = v80;
    v71[v67] = v11;
  }
}

float geom::convex_hull_triangulated_3<float>(unint64_t a1, const void *a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  if (a1)
  {
    if (a1 <= 3)
    {
      memcpy(__dst, a2, 16 * a1);
      v4 = __dst[0];
      v5 = a1;
      do
      {
        __dst[v5++] = v4;
      }

      while (v5 != 4);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return 0.0;
}

void geom::anonymous namespace::hull_mesh<float>::hull_mesh(_OWORD *a1)
{
  a1[6] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  operator new();
}

void geom::anonymous namespace::hull_mesh<float>::compute_hull(float32x4_t *a1)
{
  v106 = *MEMORY[0x277D85DE8];
  v2 = a1[6].i64[0];
  v3 = a1[6].i64[1];
  v4 = *v2;
  v5 = v3 - v2;
  if (v5 < 2)
  {
    v7 = 0;
    v6 = 0;
    v8 = 0;
    v15 = *v2;
    v13 = *v2;
    v12 = *v2;
    v11 = *v2;
    v14 = 0;
    v10 = *v2;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 1;
    v10 = *v2;
    v11 = *v2;
    v12 = *v2;
    v13 = *v2;
    v14 = 0;
    v15 = *v2;
    do
    {
      v16 = v2[v9];
      if (vmovn_s32(vcgtq_f32(v10, v16)).u8[0])
      {
        v7 = v9;
        v17 = -1;
      }

      else
      {
        v17 = 0;
      }

      v10 = vbslq_s8(vdupq_n_s32(v17), v16, v10);
      if (vmovn_s32(vcgtq_f32(v16, v11)).u8[0])
      {
        v6 = v9;
        v18 = -1;
      }

      else
      {
        v18 = 0;
      }

      v11 = vbslq_s8(vdupq_n_s32(v18), v16, v11);
      v19 = vcgt_f32(vzip2_s32(*v12.i8, *v16.f32), vzip2_s32(*v16.f32, *v13.i8));
      v12 = vbslq_s8(vmovl_s16(vdup_lane_s16(v19, 0)), v16, v12);
      v20 = vdup_n_s32(v9);
      v8 = vbsl_s8(v19, v20, v8);
      v13 = vbslq_s8(vmovl_s16(vdup_lane_s16(v19, 2)), v16, v13);
      v21 = vextq_s8(v16, v16, 8uLL).u64[0];
      v22 = vcgt_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), v21), vzip1_s32(v21, *&vextq_s8(v15, v15, 8uLL)));
      v4 = vbslq_s8(vmovl_s16(vdup_lane_s16(v22, 0)), v16, v4);
      v15 = vbslq_s8(vmovl_s16(vdup_lane_s16(v22, 2)), v16, v15);
      v14 = vbsl_s8(v22, v20, v14);
      v9 = (v9 + 1);
    }

    while (v5 > v9);
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v102 = v10;
  v103 = v11;
  v27 = v104;
  v104[0] = v12;
  v104[1] = v13;
  v104[2] = v4;
  v104[3] = v15;
  v105.__begin_ = __PAIR64__(v6, v7);
  p_end = &v105.__end_;
  v29 = -1.0;
  v30 = 1;
  v105.__end_ = v8;
  v105.__end_cap_.__value_ = v14;
  do
  {
    if (v26 <= 4)
    {
      v31 = *(&v102 + v26);
      v32 = v27;
      v33 = p_end;
      v34 = v30;
      do
      {
        if (v34 <= 4)
        {
          v35 = 0;
          v36 = vsubq_f32(*(&v102 + v34), v31);
          v37 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
          v38 = vnegq_f32(v36);
          do
          {
            v39 = vsubq_f32(v32[v35], v31);
            v40 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v39, v39), v39, 0xCuLL), v38), v39, v37);
            v41 = vmulq_f32(v40, v40);
            v42 = v41.f32[1] + (v41.f32[2] + v41.f32[0]);
            if (v42 > v29)
            {
              v25 = *(&v105.__begin_ + v26);
              v24 = *(&v105.__begin_ + v34);
              v29 = v42;
              v23 = *(v33 + v35);
            }

            ++v35;
          }

          while (v34 + v35 < 5);
        }

        ++v34;
        v33 = (v33 + 4);
        ++v32;
      }

      while (v34 != 6);
    }

    ++v26;
    ++v30;
    p_end = (p_end + 4);
    ++v27;
  }

  while (v26 != 6);
  if (v25 != v24 && v24 != v23 && v25 != v23)
  {
    v99 = v25;
    goto LABEL_50;
  }

  v43 = 0;
  v44 = -1.0;
  v45 = 1;
  do
  {
    if (v43 <= 4)
    {
      v46 = v45;
      do
      {
        v47 = vsubq_f32(*(&v102 + v43), *(&v102 + v46));
        v48 = vmulq_f32(v47, v47);
        v49 = sqrtf(v48.f32[2] + vaddv_f32(*v48.f32));
        if (v49 > v44)
        {
          v25 = *(&v105.__begin_ + v43);
          v24 = *(&v105.__begin_ + v46);
          v44 = v49;
        }

        ++v46;
      }

      while (v46 != 6);
    }

    ++v43;
    ++v45;
  }

  while (v43 != 6);
  v99 = v25;
  if (v3 == v2)
  {
    v56 = 0.0;
LABEL_48:
    if (fabsf(v56) <= 0.00001)
    {
      v23 = v25;
    }

LABEL_50:
    a1[33].f32[0] = fmaxf(a1[33].f32[0], 0.0000011921);
    v69 = a1[3].i64[0];
    v70 = (v69 + 16 * v98);
    v71 = (v69 + 16 * v97);
    v72 = v65;
    v73 = (v69 + 16 * v65);
    v74 = (v69 + 16 * v66);
    v75 = v67;
    v76 = (v69 + 16 * v67);
    v77 = (v69 + 16 * v68);
    v78 = a1[4].i64[1];
    v79 = (v78 + 80 * v101);
    v80 = (v78 + 80 * v100);
    v70[2] = v97;
    v70[3] = v25;
    v71[2] = v72;
    v71[3] = v24;
    v73[2] = v98;
    v73[3] = v23;
    v74[2] = v68;
    v74[3] = v24;
    v76[2] = v66;
    v76[3] = v23;
    v77[2] = v75;
    v77[3] = v25;
    *v70 = v101;
    v70[1] = v66;
    *v71 = v101;
    v71[1] = v75;
    *v73 = v101;
    v73[1] = v68;
    *v74 = v100;
    v74[1] = v98;
    *v76 = v100;
    v76[1] = v97;
    *v77 = v100;
    v77[1] = v72;
    v79->i32[0] = v98;
    v80->i32[0] = v66;
    v81 = a1[6].i64[0];
    v82 = *(v81 + 16 * v99);
    v83 = *(v81 + 16 * v24);
    v84 = *(v81 + 16 * v23);
    v85 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
    v86 = vextq_s8(vuzp1q_s32(v83, v83), v83, 0xCuLL);
    v87 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
    v88 = vaddq_f32(vmlaq_f32(vmulq_f32(v85, vnegq_f32(v84)), v82, v87), vaddq_f32(vmlaq_f32(vmulq_f32(v86, vnegq_f32(v82)), v83, v85), vmlaq_f32(vmulq_f32(v87, vnegq_f32(v83)), v84, v86)));
    v89 = vextq_s8(vuzp1q_s32(v88, v88), v88, 0xCuLL);
    v79[1] = v89;
    v90 = vmulq_f32(v88, v88);
    v90.f32[0] = sqrtf(v90.f32[1] + (v90.f32[2] + v90.f32[0]));
    v79[2].i32[0] = v90.i32[0];
    v79[2].i8[4] = v90.f32[0] <= 0.00000011921;
    v80[1] = vnegq_f32(v89);
    v80[2].i32[0] = v90.i32[0];
    v80[2].i8[4] = v90.f32[0] <= 0.00000011921;
    v91 = vaddq_f32(vaddq_f32(v82, v83), v84);
    v79[3] = v91;
    v79[4].i32[0] = 3;
    v80[3] = v91;
    v80[4].i32[0] = 3;
    __asm { FMOV            V1.4S, #3.0 }

    a1[20] = vdivq_f32(v91, _Q1);
    v96 = (v79[2].i8[4] | v80[2].i8[4]) & 1;
    operator new();
  }

  v50 = 0;
  v51 = vsubq_f32(v2[v24], v2[v25]);
  v52 = vmulq_f32(v51, v51);
  *&v53 = v52.f32[2] + vaddv_f32(*v52.f32);
  *v52.f32 = vrsqrte_f32(v53);
  *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v53, vmul_f32(*v52.f32, *v52.f32)));
  v54 = vmulq_n_f32(v51, vmul_f32(*v52.f32, vrsqrts_f32(v53, vmul_f32(*v52.f32, *v52.f32))).f32[0]);
  v51.f32[0] = v25;
  v55 = vdupq_lane_s32(*v51.f32, 0);
  v56 = 0.0;
  while (1)
  {
    v57 = vsubq_f32(v2[v50], v55);
    v58 = vmulq_f32(v54, v57);
    v58.f32[0] = v58.f32[2] + vaddv_f32(*v58.f32);
    v59 = vmlsq_lane_f32(v57, v54, *v58.f32, 0);
    v60 = vmulq_f32(v59, v59);
    v61 = sqrtf(v60.f32[2] + vaddv_f32(*v60.f32));
    if (v61 != v56)
    {
      v62 = fabsf(v61);
      v63 = fabsf(v56);
      if (v62 != INFINITY && v63 != INFINITY)
      {
        if ((v56 + (((v63 + v62) + 1.0) * 0.00001)) > v61)
        {
          goto LABEL_40;
        }

LABEL_39:
        v23 = v50;
        v56 = v61;
        goto LABEL_40;
      }

      if (v61 > v56)
      {
        goto LABEL_39;
      }
    }

LABEL_40:
    if (v5 <= ++v50)
    {
      goto LABEL_48;
    }
  }
}

uint64_t geom::anonymous namespace::hull_mesh<float>::~hull_mesh(uint64_t a1)
{
  v2 = *(a1 + 496);
  if (v2)
  {
    *(a1 + 504) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 456);
  if (v3)
  {
    *(a1 + 464) = v3;
    operator delete(v3);
  }

  std::deque<unsigned int>::~deque[abi:nn200100]((a1 + 400));
  v4 = *(a1 + 376);
  if (v4)
  {
    *(a1 + 384) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    *(a1 + 360) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 296);
  if (v6)
  {
    *(a1 + 304) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 272);
  if (v7)
  {
    *(a1 + 280) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    *(a1 + 256) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 224);
  if (v9)
  {
    *(a1 + 232) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    *(a1 + 208) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    *(a1 + 176) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    *(a1 + 152) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 120);
  if (v13)
  {
    *(a1 + 128) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    *(a1 + 104) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    *(a1 + 80) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    *(a1 + 56) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    *(a1 + 32) = v17;
    operator delete(v17);
  }

  v18 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v18;
    operator delete(v18);
  }

  return a1;
}

double geom::convex_hull_triangulated_3<double>(unint64_t a1, const void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  if (a1)
  {
    if (a1 <= 3)
    {
      memcpy(__dst, a2, 32 * a1);
      v5 = __dst[0];
      v4 = __dst[1];
      v6 = a1;
      do
      {
        v7 = &__dst[2 * v6];
        *v7 = v5;
        v7[1] = v4;
        ++v6;
      }

      while (v6 != 4);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return 0.0;
}

void geom::anonymous namespace::hull_mesh<double>::hull_mesh(_OWORD *a1)
{
  a1[6] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  operator new();
}

void geom::anonymous namespace::hull_mesh<double>::compute_hull(uint64_t a1)
{
  v151 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 96);
  v3 = *(a1 + 104);
  v4 = *v2;
  v5 = v2[1];
  v6 = (v3 - v2) >> 5;
  if (v6 < 2)
  {
    v8 = 0;
    v7 = 0;
    v9 = 0uLL;
    v19 = *v2;
    v36 = v2[1];
    v17 = *v2;
    v18 = v36;
    v15 = *v2;
    v16 = v36;
    v13 = *v2;
    v14 = v36;
    v11 = *v2;
    v12 = v36;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0uLL;
    v10 = 1;
    v11 = *v2;
    v12 = v2[1];
    v13 = *v2;
    v14 = v12;
    v15 = *v2;
    v16 = v12;
    v17 = *v2;
    v18 = v12;
    v19 = *v2;
    v20 = v12;
    v21 = v12;
    do
    {
      v22 = &v2[2 * v10];
      v23 = vuzp1q_s32(vcgtq_f64(vzip1q_s64(v11, *v22), vzip1q_s64(*v22, v13)), vcgtq_f64(vzip2q_s64(v15, *v22), vzip2q_s64(*v22, v17)));
      v24 = vmovn_s32(v23);
      v25 = vdup_n_s32(v24.u16[0]);
      v26 = v22[1];
      v27.i64[0] = v25.u32[0];
      v27.i64[1] = v25.u32[1];
      v28 = vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL));
      v12 = vbslq_s8(v28, v26, v12);
      v11 = vbslq_s8(v28, *v22, v11);
      *v28.i8 = vdup_n_s32(v24.u16[1]);
      v27.i64[0] = v28.u32[0];
      v27.i64[1] = v28.u32[1];
      v29 = vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL));
      v14 = vbslq_s8(v29, v26, v14);
      v30 = vdup_n_s32(v24.u16[2]);
      v13 = vbslq_s8(v29, *v22, v13);
      v27.i64[0] = v30.u32[0];
      v27.i64[1] = v30.u32[1];
      v31 = vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL));
      v16 = vbslq_s8(v31, v26, v16);
      v15 = vbslq_s8(v31, *v22, v15);
      v32 = vdup_n_s32(v24.u16[3]);
      v9 = vbslq_s8(v23, vdupq_n_s32(v10), v9);
      v27.i64[0] = v32.u32[0];
      v27.i64[1] = v32.u32[1];
      v33 = vcltzq_s64(vshlq_n_s64(v27, 0x3FuLL));
      v18 = vbslq_s8(v33, v26, v18);
      v17 = vbslq_s8(v33, *v22, v17);
      v34 = vdupq_lane_s64(vcgtq_f64(v21, v26).i64[0], 0);
      v5 = vbslq_s8(v34, v26, v21);
      v4 = vbslq_s8(v34, *v22, v4);
      if (v26.f64[0] < v21.f64[0])
      {
        v8 = v10;
      }

      v35 = vdupq_lane_s64(vcgtq_f64(v26, v20).i64[0], 0);
      v36 = vbslq_s8(v35, v26, v20);
      v19 = vbslq_s8(v35, *v22, v19);
      if (v26.f64[0] > v20.f64[0])
      {
        v7 = v10;
      }

      v10 = (v10 + 1);
      v20 = v36;
      v21 = v5;
    }

    while (v6 > v10);
  }

  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  *__p = v11;
  v146 = v12;
  v147 = v13;
  v148 = v14;
  v41 = v149;
  v149[0] = v15;
  v149[1] = v16;
  v149[2] = v17;
  v149[3] = v18;
  v149[4] = v4;
  v149[5] = v5;
  v149[6] = v19;
  v149[7] = v36;
  v150.__end_cap_.__value_ = __PAIR64__(v7, v8);
  p_end = &v150.__end_;
  v43 = -1.0;
  v44 = 1;
  *&v150.__begin_ = v9;
  while (1)
  {
    if (v40 <= 4)
    {
      v45 = &__p[4 * v40];
      v47 = *v45;
      v46 = *(v45 + 1);
      v48 = v41;
      v49 = p_end;
      v50 = v44;
      do
      {
        if (v50 <= 4)
        {
          v51 = 0;
          v52 = &__p[4 * v50];
          v53 = vsubq_f64(*v52, v47);
          v57 = vsubq_f64(v52[1], v46);
          v54 = vnegq_f64(v57);
          v57.f64[1] = v53.f64[0];
          v55 = vextq_s8(v53, v53, 8uLL);
          v56 = vnegq_f64(v53);
          *&v56.f64[1] = vextq_s8(v56, v56, 8uLL).u64[0];
          *&v57.f64[1] = vextq_s8(v57, v57, 8uLL).u64[0];
          do
          {
            v58 = &v48[2 * v51];
            v59 = vsubq_f64(*v58, v47);
            v60 = vsubq_f64(v58[1], v46);
            v61 = vmlaq_f64(vmulq_laneq_f64(v54, v59, 1), v60, v55);
            v60.f64[1] = v59.f64[0];
            v62 = vmlaq_f64(vmulq_f64(v60, v56), v59, v57);
            v63 = vmulq_f64(v62, v62);
            v64 = v63.f64[1] + vmulq_f64(v61, v61).f64[0] + v63.f64[0];
            if (v64 > v43)
            {
              v39 = *(&v150.__begin_ + v40);
              v38 = *(&v150.__begin_ + v50);
              v43 = v64;
              v37 = *(v49 + v51);
            }

            ++v51;
          }

          while (v50 + v51 < 5);
        }

        ++v50;
        v49 = (v49 + 4);
        v48 += 2;
      }

      while (v50 != 6);
    }

    ++v40;
    ++v44;
    p_end = (p_end + 4);
    v41 += 2;
    if (v40 == 6)
    {
      if (v39 == v38 || v38 == v37 || v39 == v37)
      {
        v65 = 0;
        v66 = -1.0;
        v67 = 1;
        do
        {
          if (v65 <= 4)
          {
            v68 = &__p[4 * v65];
            v70 = *v68;
            v69 = *(v68 + 1);
            v71 = v67;
            do
            {
              v72 = &__p[4 * v71];
              v73 = vsubq_f64(v70, *v72);
              v74 = vsubq_f64(v69, v72[1]);
              v75 = sqrt(vmulq_f64(v74, v74).f64[0] + vaddvq_f64(vmulq_f64(v73, v73)));
              if (v75 > v66)
              {
                v39 = *(&v150.__begin_ + v65);
                v38 = *(&v150.__begin_ + v71);
                v66 = v75;
              }

              ++v71;
            }

            while (v71 != 6);
          }

          ++v65;
          ++v67;
        }

        while (v65 != 6);
        v142 = v39;
        if (v3 == v2)
        {
          v86 = 0.0;
        }

        else
        {
          v76 = 0;
          v77 = &v2[2 * v38];
          v79 = *v77;
          v78 = v77[1];
          v80 = &v2[2 * v39];
          v81 = vsubq_f64(v79, *v80);
          v82 = vsubq_f64(v78, v80[1]);
          v83 = vmulq_f64(v82, v82);
          v84 = vmulq_f64(v81, v81);
          v83.f64[0] = 1.0 / sqrt(v83.f64[0] + vaddvq_f64(v84));
          v85 = vmulq_f64(v82, v83);
          v88 = vmulq_n_f64(v81, v83.f64[0]);
          v86 = 0.0;
          *&v88.f64[1] = vextq_s8(v88, v88, 8uLL).u64[0];
          do
          {
            v89 = &v2[2 * v76];
            v84.f64[0] = v39;
            v90 = vsubq_f64(v89[1], v84);
            v87.f64[1] = v39;
            v87.f64[0] = v39;
            v91 = vsubq_f64(*v89, v87);
            v92 = vmulq_f64(v88, v91);
            v92.f64[0] = vmulq_f64(v85, v90).f64[0] + vaddvq_f64(v92);
            v93 = vmlsq_lane_f64(v91, v88, v92.f64[0], 0);
            v94 = vmlsq_f64(v90, v85, v92);
            v95 = sqrt(vmulq_f64(v94, v94).f64[0] + vaddvq_f64(vmulq_f64(v93, v93)));
            if (v95 != v86 && v86 + 0.000001 <= v95)
            {
              v37 = v76;
              v86 = v95;
            }

            ++v76;
          }

          while (v6 > v76);
        }

        if (fabs(v86) <= 0.000001)
        {
          v37 = v39;
        }
      }

      else
      {
        v142 = v39;
      }

      *(a1 + 544) = fmax(*(a1 + 544), 2.22044605e-15);
      v101 = *(a1 + 48);
      v102 = (v101 + 16 * v141);
      v103 = v96;
      v104 = (v101 + 16 * v96);
      v105 = v97;
      v106 = (v101 + 16 * v97);
      v107 = (v101 + 16 * v98);
      v108 = (v101 + 16 * v99);
      v109 = (v101 + 16 * v100);
      v110 = *(a1 + 72);
      v111 = v110 + 112 * v144;
      v112 = v110 + 112 * v143;
      v102[2] = v103;
      v102[3] = v39;
      v104[2] = v105;
      v104[3] = v38;
      v106[2] = v141;
      v106[3] = v37;
      v107[2] = v100;
      v107[3] = v38;
      v108[2] = v98;
      v108[3] = v37;
      v109[2] = v99;
      v109[3] = v39;
      *v102 = v144;
      v102[1] = v98;
      *v104 = v144;
      v104[1] = v99;
      *v106 = v144;
      v106[1] = v100;
      *v107 = v143;
      v107[1] = v141;
      *v108 = v143;
      v108[1] = v103;
      *v109 = v143;
      v109[1] = v105;
      *v111 = v141;
      *v112 = v98;
      v113 = *(a1 + 96);
      v114 = (v113 + 32 * v142);
      v115 = *v114;
      v116 = v114[1];
      v117 = (v113 + 32 * v38);
      v118 = *v117;
      v119 = v117[1];
      v120 = (v113 + 32 * v37);
      v121 = *v120;
      v122 = v120[1];
      v123 = vnegq_f64(v116);
      v124 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v122), v115, 1), v116, *v120, 1);
      v125 = vaddq_f64(v116, v119);
      v116.f64[1] = v115.f64[0];
      v126 = vmlaq_laneq_f64(vmulq_laneq_f64(v123, *v117, 1), v119, v115, 1);
      v127 = vnegq_f64(v119);
      v119.f64[1] = v117->f64[0];
      v128 = vmlaq_laneq_f64(vmulq_laneq_f64(v127, *v120, 1), v122, *v117, 1);
      v129 = vaddq_f64(v125, v122);
      v122.f64[1] = v120->f64[0];
      v130 = vaddq_f64(vmlaq_f64(vmulq_f64(v116, vnegq_f64(*v120)), v115, v122), vaddq_f64(vmlaq_f64(vmulq_f64(v119, vnegq_f64(v115)), v118, v116), vmlaq_f64(vmulq_f64(v122, vnegq_f64(v118)), *v120, v119)));
      v131 = vaddq_f64(v124, vaddq_f64(v126, v128));
      v132 = vdupq_laneq_s64(v130, 1);
      v126.f64[0] = vmulq_f64(v131, v131).f64[0];
      v131.f64[1] = v130.f64[0];
      *(v111 + 16) = v131;
      *(v111 + 32) = v132;
      v133 = vmulq_f64(v130, v130);
      v133.f64[0] = sqrt(v133.f64[1] + v126.f64[0] + v133.f64[0]);
      *(v111 + 48) = v133.f64[0];
      *(v111 + 56) = v133.f64[0] <= 2.22044605e-16;
      *(v112 + 16) = vnegq_f64(v131);
      *(v112 + 32) = vnegq_f64(v132);
      *(v112 + 48) = v133.f64[0];
      *(v112 + 56) = v133.f64[0] <= 2.22044605e-16;
      v134 = vaddq_f64(vaddq_f64(v115, v118), v121);
      *(v111 + 64) = v134;
      *(v111 + 80) = v129;
      *(v111 + 96) = 3;
      *(v112 + 64) = v134;
      *(v112 + 80) = v129;
      *(v112 + 96) = 3;
      __asm { FMOV            V1.2D, #3.0 }

      *(a1 + 320) = vdivq_f64(v134, _Q1);
      *(a1 + 336) = vdivq_f64(v129, _Q1);
      v140 = (*(v111 + 56) | *(v112 + 56)) & 1;
      operator new();
    }
  }
}

uint64_t geom::anonymous namespace::hull_mesh<double>::~hull_mesh(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    *(a1 + 520) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 472);
  if (v3)
  {
    *(a1 + 480) = v3;
    operator delete(v3);
  }

  std::deque<unsigned int>::~deque[abi:nn200100]((a1 + 416));
  v4 = *(a1 + 392);
  if (v4)
  {
    *(a1 + 400) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 368);
  if (v5)
  {
    *(a1 + 376) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 296);
  if (v6)
  {
    *(a1 + 304) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 272);
  if (v7)
  {
    *(a1 + 280) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 248);
  if (v8)
  {
    *(a1 + 256) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 224);
  if (v9)
  {
    *(a1 + 232) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 200);
  if (v10)
  {
    *(a1 + 208) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 168);
  if (v11)
  {
    *(a1 + 176) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    *(a1 + 152) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 120);
  if (v13)
  {
    *(a1 + 128) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 96);
  if (v14)
  {
    *(a1 + 104) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    *(a1 + 80) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 48);
  if (v16)
  {
    *(a1 + 56) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 24);
  if (v17)
  {
    *(a1 + 32) = v17;
    operator delete(v17);
  }

  v18 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v18;
    operator delete(v18);
  }

  return a1;
}

uint64_t geom::half_plane_intersection_3<float>(unint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
  }

  v1 = *MEMORY[0x277D85DE8];
  return 0;
}

void std::vector<float>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      v2 = this->__end_ - this->__begin_;
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, __n);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }
}

__n128 geom::plane_intersection_finder<float>::find_plane_intersection_point(std::vector<unsigned int> *a1, int64_t a2, const void *a3, const void *a4, const void *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  std::vector<float>::resize(a1 + 1, 3 * a2);
  begin = a1[1].__begin_;
  if (a2)
  {
    memmove(a1[1].__begin_, a3, 4 * a2);
    memmove(&a1[1].__begin_[a2], a4, 4 * a2);
    memmove(&a1[1].__begin_[2 * a2], a5, 4 * a2);
    v11 = a1[1].__begin_;
  }

  sgeqrf_NEWLAPACK();
  std::vector<float>::resize(a1 + 2, 0.0);
  v12 = a1[1].__begin_;
  v13 = a1[2].__begin_;
  sgeqrf_NEWLAPACK();
  std::vector<float>::resize(a1, a2);
  v14 = a1->__begin_;
  if (a2 >= 1)
  {
    memset_pattern16(a1->__begin_, &unk_2500C2120, 4 * a2);
  }

  v15 = a1[1].__begin_;
  sormqr_NEWLAPACK();
  std::vector<float>::resize(a1 + 2, 0.0);
  v16 = a1[1].__begin_;
  v22 = a1[2].__begin_;
  v21 = a1->__begin_;
  sormqr_NEWLAPACK();
  v17 = a1[1].__begin_;
  v18 = a1->__begin_;
  cblas_strsv_NEWLAPACK();
  result.n128_u64[0] = *a1->__begin_;
  result.n128_u32[2] = a1->__begin_[2];
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:nn200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:nn200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:nn200100]<false,std::vector<BOOL>>(&v20, v5);
}

uint64_t geom::half_plane_intersection_3<double>(unint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (a1 >= 4)
  {
  }

  v1 = *MEMORY[0x277D85DE8];
  return 0;
}

void *std::vector<double>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

float geom_convex_hull_3f(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  return geom::convex_hull_3<float>(a1, a2, v7, v8);
}

float geom::convex_hull_3<float>(unint64_t a1, const void *a2, void *a3, void *a4)
{
  v11 = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4[1] = *a4;
  if (a1)
  {
    if (a1 <= 3)
    {
      memcpy(__dst, a2, 16 * a1);
      v5 = __dst[0];
      v6 = a1;
      do
      {
        __dst[v6++] = v5;
      }

      while (v6 != 4);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return 0.0;
}

double geom_convex_hull_3d(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  return geom::convex_hull_3<double>(a1, a2, v7, v8);
}

double geom::convex_hull_3<double>(unint64_t a1, const void *a2, void *a3, void *a4)
{
  v13 = *MEMORY[0x277D85DE8];
  a3[1] = *a3;
  a4[1] = *a4;
  if (a1)
  {
    if (a1 <= 3)
    {
      memcpy(__dst, a2, 32 * a1);
      v6 = __dst[0];
      v5 = __dst[1];
      v7 = a1;
      do
      {
        v8 = &__dst[2 * v7];
        *v8 = v6;
        v8[1] = v5;
        ++v7;
      }

      while (v7 != 4);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0.0;
}

float geom_convex_hull_approx_3f(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  return geom::convex_hull_3<float>(a1, a2, v7, v8);
}

double geom_convex_hull_approx_3d(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  return geom::convex_hull_3<double>(a1, a2, v7, v8);
}

float geom_convex_hull_approx_with_tolerance_3f(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  return geom::convex_hull_3<float>(a1, a2, v7, v8);
}

double geom_convex_hull_approx_with_tolerance_3d(unint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = geom::collection_to_vector<float>(a3);
  v8 = geom::collection_to_vector<float>(a4);

  return geom::convex_hull_3<double>(a1, a2, v7, v8);
}

uint64_t std::deque<unsigned int>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 1024;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned int *>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<unsigned int *>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

void *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      v2 = result[1] - *result;
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::vector<unsigned int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz, std::vector<int>::const_reference __x)
{
  v3 = this->__end_ - this->__begin_;
  if (__sz <= v3)
  {
    if (__sz < v3)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v3, __x);
  }
}

void std::vector<unsigned int>::__append(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      v12 = 0;
      v13 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v14 = v13 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v15 = vdupq_n_s64(v13);
      v16 = &end[__n];
      v17 = *__x;
      v18 = v14 + 4;
      v19 = end + 2;
      do
      {
        v20 = vdupq_n_s64(v12);
        v21 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2500C1680)));
        if (vuzp1_s16(v21, *v15.i8).u8[0])
        {
          *(v19 - 2) = v17;
        }

        if (vuzp1_s16(v21, *&v15).i8[2])
        {
          *(v19 - 1) = v17;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v20, xmmword_2500C1670)))).i32[1])
        {
          *v19 = v17;
          v19[1] = v17;
        }

        v12 += 4;
        v19 += 4;
      }

      while (v18 != v12);
    }

    else
    {
      v16 = this->__end_;
    }

    this->__end_ = v16;
  }

  else
  {
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = v7 >> 2;
    v10 = value - this->__begin_;
    if (v10 >> 1 > v8)
    {
      v8 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(this, v11);
    }

    v22 = 0;
    v23 = 4 * v9;
    v24 = (4 * v9 + 4 * __n);
    v25 = *__x;
    v26 = (__n + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v27 = vdupq_n_s64(v26);
    v28 = v26 - ((__n + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
    v29 = (v23 + 8);
    do
    {
      v30 = vdupq_n_s64(v22);
      v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_2500C1680)));
      if (vuzp1_s16(v31, *v27.i8).u8[0])
      {
        *(v29 - 2) = v25;
      }

      if (vuzp1_s16(v31, *&v27).i8[2])
      {
        *(v29 - 1) = v25;
      }

      if (vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v30, xmmword_2500C1670)))).i32[1])
      {
        *v29 = v25;
        v29[1] = v25;
      }

      v22 += 4;
      v29 += 4;
    }

    while (v28 != v22);
    v32 = this->__end_ - this->__begin_;
    v33 = (v23 - v32);
    memcpy((v23 - v32), this->__begin_, v32);
    begin = this->__begin_;
    this->__begin_ = v33;
    this->__end_ = v24;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void geom::anonymous namespace::hull_mesh<float>::grow_hull(void *a1, void *a2, unsigned int **a3, unsigned int *a4, unsigned int **a5, std::vector<unsigned int> *a6)
{
  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    do
    {
      if (*(a1[9] + 80 * *v9) != -1)
      {
      }

      ++v9;
    }

    while (v9 != v10);
  }

  v11 = a2[1] - *a2;
  v12 = v11 >> 2;
  std::vector<float>::resize(a6, 3 * (v11 >> 2));
  v13 = (v11 >> 2);
  if ((v11 >> 2))
  {
    v14 = 0;
    v47 = v11;
    v15 = v11 >> 1;
    v16 = v11 >> 2;
    do
    {
      begin = a6->__begin_;
      v19 = *(*a2 + v14 * 4);
      v20 = a1[6];
      v21 = v20 + 16 * v19;
      v22 = *(*a2 + 4 * ((v16 - 1) % v12));
      v23 = (v20 + 16 * begin[v16]);
      v24 = begin[v14];
      v25 = (v20 + 16 * v24);
      v26 = (v20 + 16 * begin[v15]);
      v23[2] = v24;
      v27 = a1[9];
      v25[2] = begin[v15];
      v26[2] = begin[v16];
      *v23 = v18;
      *v25 = v18;
      *v26 = v18;
      v23[3] = *(v20 + 16 * v22 + 12);
      v25[3] = *(v21 + 12);
      v28 = *a4;
      v26[3] = v28;
      v23[1] = v19;
      v29 = v27 + 80 * v18;
      *(v21 + 4) = begin[v16];
      v30 = a1[12];
      v31 = *(v30 + 16 * v28);
      v32 = *(v30 + 16 * v23[3]);
      v33 = *(v30 + 16 * v25[3]);
      v34 = vextq_s8(vuzp1q_s32(v31, v31), v31, 0xCuLL);
      v35 = vextq_s8(vuzp1q_s32(v32, v32), v32, 0xCuLL);
      v36 = vextq_s8(vuzp1q_s32(v33, v33), v33, 0xCuLL);
      v37 = vaddq_f32(vmlaq_f32(vmulq_f32(v34, vnegq_f32(v33)), v31, v36), vaddq_f32(vmlaq_f32(vmulq_f32(v35, vnegq_f32(v31)), v32, v34), vmlaq_f32(vmulq_f32(v36, vnegq_f32(v32)), v33, v35)));
      *(v29 + 16) = vextq_s8(vuzp1q_s32(v37, v37), v37, 0xCuLL);
      v38 = vmulq_f32(v37, v37);
      v38.f32[0] = sqrtf(v38.f32[1] + (v38.f32[2] + v38.f32[0]));
      *(v29 + 32) = v38.i32[0];
      *(v29 + 36) = v38.f32[0] <= 0.00000011921;
      *(v29 + 48) = vaddq_f32(vaddq_f32(v31, v32), v33);
      *(v29 + 64) = 3;
      *v29 = begin[v16];
      if (v38.f32[0] > 0.00000011921)
      {
      }

      ++v14;
      LODWORD(v15) = v15 + 1;
      LODWORD(v16) = v16 + 1;
    }

    while (v13 != v14);
    v39 = 0;
    v40 = a6->__begin_;
    v41 = a1[6];
    do
    {
      v42 = v39 + 1;
      if (v13 - 1 == v39)
      {
        v43 = 0;
      }

      else
      {
        v43 = v39 + 1;
      }

      if (v39)
      {
        v44 = v39;
      }

      else
      {
        v44 = v12;
      }

      v45 = v40[v39];
      v46 = v40[2 * (v47 >> 2) + v39];
      *(v41 + 16 * v45 + 4) = v40[(v43 + 2 * v12)];
      *(v41 + 16 * v46 + 4) = v40[v44 - 1];
      v39 = v42;
    }

    while (v13 != v42);
  }

  std::vector<float>::resize(a6, v13);
}

uint64_t geom::anonymous namespace::hull_mesh<float>::new_face(void *a1)
{
  v2 = a1[4];
  if (v2 == a1[3])
  {
    v5 = a1[10];
    v6 = a1[11];
    if (v5 >= v6)
    {
      v8 = a1[9];
      v9 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - v8) >> 4) + 1;
      if (v9 > 0x333333333333333)
      {
        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - v8) >> 4);
      if (2 * v10 > v9)
      {
        v9 = 2 * v10;
      }

      if (v10 >= 0x199999999999999)
      {
        v11 = 0x333333333333333;
      }

      else
      {
        v11 = v9;
      }

      if (v11)
      {
        if (v11 <= 0x333333333333333)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:nn200100]();
      }

      v12 = 16 * ((v5 - v8) >> 4);
      *v12 = -1;
      *(v12 + 4) = 0u;
      *(v12 + 20) = 0u;
      *(v12 + 36) = 1;
      *(v12 + 37) = 0;
      *(v12 + 53) = 0;
      *(v12 + 45) = 0;
      *(v12 + 60) = 0;
      *(v12 + 68) = -1;
      *(v12 + 72) = 0;
      v7 = v12 + 80;
      v13 = (v12 - (v5 - v8));
      memcpy(v13, v8, v5 - v8);
      a1[9] = v13;
      a1[10] = v7;
      a1[11] = 0;
      if (v8)
      {
        operator delete(v8);
      }
    }

    else
    {
      *v5 = -1;
      *(v5 + 4) = 0u;
      *(v5 + 20) = 0u;
      *(v5 + 36) = 1;
      *(v5 + 37) = 0;
      *(v5 + 53) = 0;
      *(v5 + 45) = 0;
      *(v5 + 60) = 0;
      *(v5 + 68) = -1;
      v7 = v5 + 80;
      *(v5 + 72) = 0;
    }

    a1[10] = v7;
    return -858993459 * ((v7 - a1[9]) >> 4) - 1;
  }

  else
  {
    result = *(v2 - 4);
    a1[4] = v2 - 4;
    v4 = a1[9] + 80 * result;
    *(v4 + 16) = 0;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 36) = 1;
    *(v4 + 64) = 0xFFFFFFFF00000000;
    *(v4 + 48) = 0u;
  }

  return result;
}

uint64_t geom::anonymous namespace::hull_mesh<float>::new_halfedge(void *a1)
{
  v2 = a1[1];
  if (v2 == *a1)
  {
    *&v5 = -1;
    *(&v5 + 1) = -1;
    return ((a1[7] - a1[6]) >> 4) - 1;
  }

  else
  {
    result = *(v2 - 4);
    a1[1] = v2 - 4;
    v4 = (a1[6] + 16 * result);
    *v4 = -1;
    v4[1] = -1;
  }

  return result;
}

void geom::anonymous namespace::max_heap<geom::anonymous namespace::hull_mesh<float>::conflict_face,geom::anonymous namespace::hull_mesh<float>::conflict_face_selector_cmp>::insert(std::vector<int> *a1, unsigned int *a2, uint64_t *a3)
{
  end = a1->__end_;
  v7 = 0xAAAAAAAAAAAAAAABLL * (end - a1->__begin_);
  v8 = *a2;
  begin = a1[1].__begin_;
  v9 = a1 + 1;
  v10 = begin;
  if (v8 >= a1[1].__end_ - begin)
  {
    __x = 0;
    std::vector<unsigned int>::resize(v9, (v8 + 1), &__x);
    v8 = *a2;
    v10 = a1[1].__begin_;
    end = a1->__end_;
  }

  v10[v8] = v7;
  v12 = *a2;
  v13 = *a3;
  value = a1->__end_cap_.__value_;
  if (end >= value)
  {
    v16 = a1->__begin_;
    v17 = 0xAAAAAAAAAAAAAAABLL * (end - a1->__begin_);
    v18 = v17 + 1;
    if (v17 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * (value - v16);
    if (2 * v19 > v18)
    {
      v18 = 2 * v19;
    }

    if (v19 >= 0xAAAAAAAAAAAAAAALL)
    {
      v20 = 0x1555555555555555;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      if (v20 <= 0x1555555555555555)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v21 = 4 * (end - a1->__begin_);
    *v21 = v12;
    *(v21 + 4) = v13;
    v15 = 12 * v17 + 12;
    v22 = (12 * v17 - (end - v16));
    memcpy(v22, v16, end - v16);
    a1->__begin_ = v22;
    a1->__end_ = v15;
    a1->__end_cap_.__value_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = v12;
    *(end + 1) = v13;
    v15 = (end + 3);
  }

  v23 = v7;
  a1->__end_ = v15;
  if (v7 >= 2uLL)
  {
    v24 = a1->__begin_;
    do
    {
      v25 = &v24[3 * v23];
      v26 = &v24[3 * (v23 >> 1)];
      if (*(v25 + 2) < *(v26 + 2))
      {
        break;
      }

      v27 = *v25;
      *v25 = *v26;
      *v26 = v27;
      v28 = *(v25 + 1);
      *(v25 + 1) = *(v26 + 1);
      *(v26 + 1) = v28;
      v24 = a1->__begin_;
      v29 = a1[1].__begin_;
      v29[a1->__begin_[3 * v23]] = v23;
      v29[v24[3 * (v23 >> 1)]] = v23 >> 1;
      v30 = v23 > 3;
      v23 >>= 1;
    }

    while (v30);
  }
}

uint64_t geom::anonymous namespace::hull_mesh<float>::dissolve_edge_if_coplanar(uint64_t a1, int a2, unsigned int **a3, const void **a4)
{
  v94 = a2;
  result = std::deque<unsigned int>::push_back((a1 + 400), &v94);
  for (i = *(a1 + 440); i; i = *(a1 + 440))
  {
    v7 = *(*(*(a1 + 408) + ((*(a1 + 432) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (*(a1 + 432) & 0x3FFLL));
    ++*(a1 + 432);
    *(a1 + 440) = i - 1;
    result = std::deque<unsigned int>::__maybe_remove_front_spare[abi:nn200100](a1 + 400, 1);
    v9 = *(a1 + 48);
    v10 = (v9 + 16 * v7);
    v11 = *v10;
    if (v11 != -1)
    {
      v12 = v10[1];
      v13 = (v9 + 16 * v12);
      v14 = *v13;
      if (*v13 != -1 && v14 != v11)
      {
        v16 = *(a1 + 72);
        v17 = (v16 + 80 * v11);
        if ((v17[2].i8[4] & 1) == 0)
        {
          v18 = (v16 + 80 * v14);
          if ((v18[2].i8[4] & 1) == 0)
          {
            f32 = v18[2].f32;
            v20 = vld1q_dup_f32(f32);
            v21 = vdivq_f32(v18[1], v20);
            v22 = v17[2].f32;
            v23 = vld1q_dup_f32(v22);
            v24 = vdivq_f32(v17[1], v23);
            v25 = vmulq_f32(v21, v24);
            if ((v25.f32[2] + vaddv_f32(*v25.f32)) > 0.0)
            {
              v25.f32[0] = v18[4].u32[0];
              v26 = vdivq_f32(v18[3], vdupq_lane_s32(*v25.f32, 0));
              *v8.i32 = v17[4].u32[0];
              v27 = vdivq_f32(v17[3], vdupq_lane_s32(v8, 0));
              v28 = vmulq_f32(vsubq_f32(v26, v27), v24);
              *&v29 = -*(a1 + 528);
              v30 = vmulq_f32(vsubq_f32(v27, v26), v21);
              v31 = vzip2_s32(*v30.i8, *v28.i8);
              *v26.f32 = vadd_f32(vzip1_s32(*v30.i8, *v28.i8), v31);
              v32 = vextq_s8(v30, v30, 8uLL);
              *v32.i8 = vadd_f32(vzip1_s32(*v32.i8, *&vextq_s8(v28, v28, 8uLL)), *v26.f32);
              HIDWORD(v29) = *(a1 + 528);
              v33 = vzip1q_s32(v32, v32);
              v34 = vdupq_lane_s64(v29, 0);
              v35 = vmovn_s32(vmvnq_s8(vcgtq_f32(v34, v33)));
              *v33.f32 = vmovn_s32(vcgtq_f32(v33, v34));
              v36 = vrev32_s16(v35);
              v37 = vtrn2_s16(v36, *v33.f32);
              v37.i16[0] = vmaxv_u16(v37);
              if (v37.i8[0])
              {
                v90 = v17[4].i32[0];
                v88 = v18[1];
                v89 = v17[3];
                v87 = v18[4].i32[0];
                v85 = v18[3];
                v86 = v17[1];
                if (is_halfedge_dissolvable)
                {
                  if (result)
                  {
                    v42 = v10[2];
                    v43 = v13[2];
                    v82 = *(v9 + 16 * *(v9 + 16 * v43 + 4) + 8);
                    v84 = *(v9 + 16 * *(v9 + 16 * v42 + 4) + 8);
                    v44 = v7;
                    do
                    {
                      v45 = v9 + 16 * v44;
                      v47 = *(v45 + 8);
                      v46 = (v45 + 8);
                      v44 = v47;
                    }

                    while (v47 != v7);
                    v48 = v12;
                    do
                    {
                      v49 = v9 + 16 * v48;
                      v51 = *(v49 + 8);
                      v50 = (v49 + 8);
                      v48 = v51;
                    }

                    while (v51 != v12);
                    v52 = v10[3];
                    v53 = *(a1 + 96);
                    v54 = v13[3];
                    v55 = vaddq_f32(v88, v86);
                    v17[1] = v55;
                    v56 = vmulq_f32(v55, v55);
                    v56.f32[0] = sqrtf(v56.f32[2] + vaddv_f32(*v56.f32));
                    v17[2].i32[0] = v56.i32[0];
                    v17[2].i8[4] = v56.f32[0] <= 0.00000011921;
                    v17[3] = vaddq_f32(v89, vsubq_f32(v85, vaddq_f32(*(v53 + 16 * v52), *(v53 + 16 * v54))));
                    v17[4].i32[0] = v90 + v87 - 2;
                    v57 = v10[1];
                    v58 = *(a1 + 48);
                    v59 = v57;
                    do
                    {
                      v60 = (v58 + 16 * v59);
                      *v60 = v11;
                      v59 = v60[2];
                    }

                    while (v59 != v57);
                    *v46 = v43;
                    *v50 = v42;
                    v17->i32[0] = v42;
                    if (v17[4].i32[1] != -1)
                    {
                      std::vector<unsigned int>::push_back[abi:nn200100](a4, &v17[4].i32[1]);
                      v17[4].i32[1] = -1;
                    }

                    v62 = v18[4].i32[1];
                    v61 = &v18[4].i32[1];
                    if (v62 != -1)
                    {
                      std::vector<unsigned int>::push_back[abi:nn200100](a4, v61);
                      *v61 = -1;
                    }

                    v95[0] = v7;
                    v63 = (*(a1 + 48) + 16 * v7);
                    *v63 = -1;
                    v63[1] = -1;
                    std::vector<unsigned int>::push_back[abi:nn200100](a1, v95);
                    v95[0] = v12;
                    v64 = (*(a1 + 48) + 16 * v12);
                    *v64 = -1;
                    v64[1] = -1;
                    std::vector<unsigned int>::push_back[abi:nn200100](a1, v95);
                    if ((v17[2].i8[4] & 1) == 0)
                    {
                      v65 = *(a1 + 168);
                      if (v11 < (*(a1 + 176) - v65) >> 2)
                      {
                        v66 = *(v65 + 4 * v11);
                        if (v66)
                        {
                          v67 = *(a1 + 144);
                          v68 = (v67 + 12 * v66);
                          *(v65 + 4 * *v68) = 0;
                          v69 = *(a1 + 152);
                          v71 = *(v69 - 12);
                          v69 -= 12;
                          v70 = v71;
                          v72 = *(v69 + 4);
                          *(a1 + 152) = v69;
                          if (0xAAAAAAAAAAAAAAABLL * ((v69 - v67) >> 2) != v66)
                          {
                            *v68 = v70;
                            *(v68 + 1) = v72;
                            *(*(a1 + 168) + 4 * v70) = v66;
                            v73 = (2 * v66);
                            v74 = *(a1 + 144);
                            v75 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v74) >> 2);
                            while (v75 > v73)
                            {
                              v76 = v73 | 1;
                              if (v75 <= v76)
                              {
                                LODWORD(v76) = v73;
                              }

                              else if (*(v74 + 12 * v73 + 8) >= *(v74 + 12 * v76 + 8))
                              {
                                LODWORD(v76) = v73;
                              }

                              v77 = (v74 + 12 * v76);
                              v78 = (v74 + 12 * v66);
                              if (*(v77 + 2) < *(v78 + 2))
                              {
                                break;
                              }

                              v79 = *v78;
                              *v78 = *v77;
                              *v77 = v79;
                              v80 = *(v78 + 1);
                              *(v78 + 1) = *(v77 + 1);
                              *(v77 + 1) = v80;
                              v74 = *(a1 + 144);
                              v81 = *(a1 + 168);
                              *(v81 + 4 * *(v74 + 12 * v66)) = v66;
                              *(v81 + 4 * *(v74 + 12 * v76)) = v76;
                              v73 = (2 * v76);
                              v75 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v74) >> 2);
                              LODWORD(v66) = v76;
                            }
                          }
                        }
                      }
                    }

                    v93 = result;
                    if (v95[0] != -1)
                    {
                      std::deque<unsigned int>::push_back((a1 + 400), v95);
                      result = v93;
                    }

                    if (result != -1)
                    {
                      result = std::deque<unsigned int>::push_back((a1 + 400), &v93);
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

  return result;
}

void geom::anonymous namespace::integer_hashset::populate(unsigned int *a1, std::vector<unsigned int> *this)
{
  std::vector<float>::reserve(this, *a1 + this->__end_ - this->__begin_);
  v5 = *(a1 + 1);
  v4 = *(a1 + 2);
  while (v5 != v4)
  {
    v6 = *v5;
    if (v6 != -1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](&this->__begin_, &v6);
    }

    ++v5;
  }
}

uint64_t geom::partitioned_set::init(std::vector<int> *this, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v7 = 0;
    v8 = 0;
    end = this[3].__end_;
    v10 = 1;
    do
    {
      v11 = v8 + *(a3 + 4 * v7) - 1;
      value = this[3].__end_cap_.__value_;
      if (end >= value)
      {
        begin = this[3].__begin_;
        v14 = (end - begin) >> 3;
        if ((v14 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v15 = value - begin;
        v16 = v15 >> 2;
        if (v15 >> 2 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF8)
        {
          v17 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        if (v17)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(&this[3], v17);
        }

        v18 = (8 * v14);
        *v18 = v8 | (v11 << 32);
        end = (8 * v14 + 8);
        v19 = this[3].__begin_;
        v20 = (this[3].__end_ - v19);
        v21 = (v18 - v20);
        memcpy((v18 - v20), v19, v20);
        v22 = this[3].__begin_;
        this[3].__begin_ = v21;
        this[3].__end_ = end;
        this[3].__end_cap_.__value_ = 0;
        if (v22)
        {
          operator delete(v22);
        }
      }

      else
      {
        *end = v8 | (v11 << 32);
        end += 2;
      }

      v23 = *(a3 + 4 * v7);
      this[3].__end_ = end;
      v8 += v23;
      v7 = v10;
    }

    while (a4 > v10++);
  }

  std::vector<unsigned int>::resize(this, a2, &geom::partitioned_set::null_index);
  std::vector<unsigned int>::resize(this + 1, a2, &geom::partitioned_set::null_index);
  std::vector<unsigned int>::resize(this + 2, a2, &geom::partitioned_set::null_index);
  v25 = this[3].__begin_;
  v26 = this[3].__end_;
  v27 = v26 - v25;
  if (v26 != v25)
  {
    v28 = 0;
    v29 = v27 >> 3;
    do
    {
      v30 = &v25[2 * v28];
      v31 = *v30;
      v32 = v30[1];
      while (v31 <= v32)
      {
        if (v31 != v32)
        {
          this->__begin_[v31] = v31 + 1;
        }

        v33 = v31;
        if (v31 != *v30)
        {
          this[1].__begin_[v31] = v31 - 1;
          v33 = *v30;
        }

        v32 = v30[1];
        if (v31 == v32 || v31 == v33)
        {
          this[2].__begin_[v31] = v28;
          v32 = v30[1];
        }

        ++v31;
      }

      ++v28;
    }

    while (v29 > v28);
  }

  return geom::bvh<float,(unsigned char)2>::invariant_check(this);
}

__n128 std::__function::__func<geom::anonymous namespace::hull_mesh<float>::build_initial_hull(void)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::build_initial_hull(void)::{lambda(unsigned int)#1}>,unsigned int ()(unsigned int const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28628F548;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<float>::build_initial_hull(void)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::build_initial_hull(void)::{lambda(unsigned int)#1}>,unsigned int ()(unsigned int const&)>::operator()(uint64_t a1, unsigned int *a2, double a3, double a4)
{
  v4 = *a2;
  if (*(a1 + 8) == *a2 || *(a1 + 12) == v4 || *(a1 + 16) == v4)
  {
    return 0;
  }

  if (*(a1 + 24))
  {
    return 1;
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 96);
  v10 = (*(v8 + 72) + 80 * *(a1 + 20));
  *&a4 = v10[4].u32[0];
  v11 = *(v9 + 16 * v4);
  f32 = v10[2].f32;
  v13 = vsubq_f32(v11, vdivq_f32(v10[3], vdupq_lane_s32(*&a4, 0)));
  v14 = vld1q_dup_f32(f32);
  v15 = vmulq_f32(v13, vdivq_f32(v10[1], v14));
  if ((v15.f32[2] + vaddv_f32(*v15.f32)) > 0.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<float>::build_initial_hull(void)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::build_initial_hull(void)::{lambda(unsigned int)#1}>,unsigned int ()(unsigned int const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int const&)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int)>::__value_func[abi:nn200100]<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>>(uint64_t result, uint64_t a2)
{
  *(result + 24) = 0;
  if (*(a2 + 24))
  {
    operator new();
  }

  return result;
}

void *std::__function::__func<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>,unsigned int ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_28628F5D8;
  std::__function::__value_func<unsigned int ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>,unsigned int ()(unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_28628F5D8;
  std::__function::__value_func<unsigned int ()(unsigned int const&)>::~__value_func[abi:nn200100]((a1 + 1));

  JUMPOUT(0x25305E3F0);
}

void std::__function::__func<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>,unsigned int ()(unsigned int)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<unsigned int ()(unsigned int const&)>::~__value_func[abi:nn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>,unsigned int ()(unsigned int)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:nn200100]();
    return std::__function::__func<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>,unsigned int ()>::target(v5);
  }
}

uint64_t std::__function::__func<std::function<unsigned int ()(unsigned int const&)>,std::allocator<std::function<unsigned int ()(unsigned int const&)>>,unsigned int ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<unsigned int ()(unsigned int const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void geom::anonymous namespace::hull_mesh<float>::delete_face(uint64_t a1, unsigned int a2, int a3)
{
  v27 = a2;
  v4 = a2;
  v5 = (*(a1 + 72) + 80 * a2);
  if (a3)
  {
    v6 = *v5;
    do
    {
      v7 = *(a1 + 48) + 16 * v6;
      v8 = *(v7 + 8);
      v28 = v6;
      *v7 = -1;
      *(v7 + 8) = -1;
      std::vector<unsigned int>::push_back[abi:nn200100](a1, &v28);
      v6 = v8;
    }

    while (v8 != *v5);
  }

  *v5 = -1;
  v5[8] = 0;
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 36) = 1;
  *(v5 + 6) = 0;
  *(v5 + 7) = 0;
  v5[16] = 0;
  v9 = *(a1 + 168);
  if (v4 < (*(a1 + 176) - v9) >> 2)
  {
    v10 = *(v9 + 4 * v4);
    if (v10)
    {
      v11 = *(a1 + 144);
      v12 = *(a1 + 152);
      v13 = (v11 + 12 * v10);
      *(v9 + 4 * *v13) = 0;
      v15 = *(v12 - 12);
      v12 -= 12;
      v14 = v15;
      v16 = *(v12 + 4);
      *(a1 + 152) = v12;
      if (0xAAAAAAAAAAAAAAABLL * ((v12 - v11) >> 2) != v10)
      {
        *v13 = v14;
        *(v13 + 1) = v16;
        *(*(a1 + 168) + 4 * v14) = v10;
        v17 = (2 * v10);
        v18 = *(a1 + 144);
        for (i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v18) >> 2); i > v17; LODWORD(v10) = v20)
        {
          v20 = v17 | 1;
          if (i <= v20)
          {
            LODWORD(v20) = v17;
          }

          else if (*(v18 + 12 * v17 + 8) >= *(v18 + 12 * v20 + 8))
          {
            LODWORD(v20) = v17;
          }

          v21 = (v18 + 12 * v20);
          v22 = (v18 + 12 * v10);
          if (*(v21 + 2) < *(v22 + 2))
          {
            break;
          }

          v23 = *v22;
          *v22 = *v21;
          *v21 = v23;
          v24 = *(v22 + 1);
          *(v22 + 1) = *(v21 + 1);
          *(v21 + 1) = v24;
          v18 = *(a1 + 144);
          v25 = *(a1 + 152);
          v26 = *(a1 + 168);
          *(v26 + 4 * *(v18 + 12 * v10)) = v10;
          *(v26 + 4 * *(v18 + 12 * v20)) = v20;
          v17 = (2 * v20);
          i = 0xAAAAAAAAAAAAAAABLL * ((v25 - v18) >> 2);
        }
      }
    }
  }

  std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 24), &v27);
}

double geom::anonymous namespace::integer_hashset::insert(unsigned int **this, unsigned int a2)
{
  v6 = this[1];
  if (v6[v4] == -1)
  {
    v6[v4] = a2;
    v7 = *this + 1;
    *this = v7;
    v8 = (this[2] - v6) >> 2;
    result = *(this + 4) * v8;
    if (v7 > result)
    {
      v9 = 2 * v8;
      memset(&v19, 0, sizeof(v19));
      v10 = this[1];
      v11 = this[2];
      if (v10 != v11)
      {
        begin = v19.__begin_;
        v13 = this[1];
        do
        {
          v14 = *v13;
          if (*v13 != -1)
          {
            v15 = 73244475 * ((73244475 * (v14 ^ HIWORD(v14))) ^ ((73244475 * (v14 ^ HIWORD(v14))) >> 16));
            v16 = v15 ^ HIWORD(v15);
            do
            {
              v17 = v16 % v9;
              v18 = begin[v16 % v9];
              v16 = v16 % v9 + 1;
            }

            while (v18 != -1);
            begin[v17] = v14;
          }

          ++v13;
        }

        while (v13 != v11);
      }

      if (v10)
      {
        this[2] = v10;
        operator delete(v10);
      }

      result = *&v19.__begin_;
      *(this + 1) = v19;
    }
  }

  return result;
}

uint64_t geom::anonymous namespace::integer_hashset::index_of(geom::_anonymous_namespace_::integer_hashset *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = (*(this + 2) - v2) >> 2;
  v4 = 73244475 * ((73244475 * (a2 ^ HIWORD(a2))) ^ ((73244475 * (a2 ^ HIWORD(a2))) >> 16));
  v5 = v4 ^ HIWORD(v4);
  do
  {
    result = v5 % v3;
    v7 = *(v2 + 4 * result);
    v5 = result + 1;
  }

  while (v7 != a2 && v7 != -1);
  return result;
}

void std::vector<geom::anonymous namespace::hull_halfedge>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
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

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t std::function<BOOL ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x24FFBA1E0);
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 std::__function::__func<geom::anonymous namespace::hull_mesh<float>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,float &)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,float &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28628F6C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<geom::anonymous namespace::hull_mesh<float>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,float &)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,float &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  v3 = (*(v2 + 72) + 80 * *a2);
  if (v3[2].i8[4])
  {
    return 1;
  }

  v5 = *(*(v2 + 96) + 16 * *(*(v2 + 48) + 16 * v3->u32[0] + 12));
  v6 = v3[1];
  f32 = v3[2].f32;
  v8 = vld1q_dup_f32(f32);
  v9 = vmulq_f32(vsubq_f32(**(a1 + 16), v5), vdivq_f32(v6, v8));
  return (v9.f32[2] + vaddv_f32(*v9.f32)) >= -*(v2 + 528);
}

uint64_t std::__function::__func<geom::anonymous namespace::hull_mesh<float>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,float &)::{lambda(unsigned int)#1},std::allocator<geom::anonymous namespace::hull_mesh<float>::find_horizon(std::vector<unsigned int> &,std::vector<unsigned int> &,unsigned int &,float &)::{lambda(unsigned int)#1}>,BOOL ()(unsigned int)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

BOOL geom::anonymous namespace::hull_mesh<float>::is_halfedge_dissolvable(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  v6 = *(a1 + 48);
  v7 = v6 + 16 * *(v6 + 16 * a2 + 4);
  v8 = (v6 + 16 * *(v7 + 8));
  v9 = v8[1];
  v10 = (v6 + 16 * v9);
  v11 = (v6 + 16 * v10[2]);
  v12 = v11[1];
  v13 = (v6 + 16 * v12);
  if (v13[2] != a2)
  {
    return 1;
  }

  if (*(v6 + 16 * *(v6 + 16 * *(v6 + 16 * *(v6 + 16 * *(v6 + 16 * v10[1] + 8) + 4) + 8) + 4) + 8) == v9)
  {
    return 0;
  }

  if (*(v6 + 16 * *(v6 + 16 * *(v6 + 16 * *(v6 + 16 * *(v6 + 16 * v13[1] + 8) + 4) + 8) + 4) + 8) == v12)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v15 = (v14 + 80 * *v11);
  v16 = v15[4].i32[0];
  if (v16 == 3)
  {
    return 0;
  }

  v17 = (v6 + 16 * a2);
  v18 = (v14 + 80 * *v17);
  v19 = v18[4].i32[0];
  if (v19 == 3)
  {
    return 0;
  }

  v21 = v15[1];
  v22 = vaddq_f32(v21, v18[1]);
  v23 = vmulq_f32(v22, v22);
  *&a6 = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32));
  if (fabsf(*&a6) <= 0.00000011921)
  {
    return 1;
  }

  v24 = *(a1 + 96);
  v25 = *(v24 + 16 * v17[3]);
  v26 = (v14 + 80 * *v8);
  v27 = v18[3];
  v28 = vaddq_f32(v26[3], v27);
  v27.f32[0] = (v19 + v26[4].i32[0] - 3);
  v29.i64[0] = 0xC0000000C0000000;
  v29.i64[1] = 0xC0000000C0000000;
  v30 = vdupq_lane_s32(*v27.f32, 0);
  v31 = vmulq_f32(vdivq_f32(v22, vdupq_lane_s32(*&a6, 0)), vsubq_f32(v25, vdivq_f32(vmlaq_f32(vsubq_f32(v28, *(v24 + 16 * *(v7 + 12))), v29, v25), v30)));
  v32 = v31.f32[2] + vaddv_f32(*v31.f32);
  v33 = *(a1 + 528);
  v34 = -v33;
  if (v32 > v33 || v32 < v34)
  {
    return 0;
  }

  v30.f32[0] = (v16 - 1);
  v36 = *(v24 + 16 * v13[3]);
  v37 = vdivq_f32(vsubq_f32(v15[3], v25), vdupq_lane_s32(*v30.f32, 0));
  v38 = *(v24 + 16 * v10[3]);
  v39 = vextq_s8(vuzp1q_s32(v36, v36), v36, 0xCuLL);
  v40 = vextq_s8(vuzp1q_s32(v38, v38), v38, 0xCuLL);
  v41 = vnegq_f32(v36);
  v42 = vmlaq_f32(vmulq_f32(v40, v41), v38, v39);
  v43 = vaddq_f32(v21, vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL));
  v44 = vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL);
  v45 = vmlaq_f32(vmulq_f32(v44, v41), v25, v39);
  v46 = vsubq_f32(v43, vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL));
  v47 = vmlaq_f32(vmulq_f32(v40, vnegq_f32(v25)), v38, v44);
  v48 = vsubq_f32(v46, vextq_s8(vuzp1q_s32(v47, v47), v47, 0xCuLL));
  v49 = vmulq_f32(v48, v48);
  v49.f32[0] = sqrtf(v49.f32[2] + vaddv_f32(*v49.f32));
  v50 = vmulq_f32(vdivq_f32(v48, vdupq_lane_s32(*v49.f32, 0)), vsubq_f32(v25, v37));
  v51 = v50.f32[2] + vaddv_f32(*v50.f32);
  return v51 <= v33 && v51 >= v34;
}

uint64_t geom::anonymous namespace::hull_mesh<float>::dissolve_vertex_if_redundant(uint64_t a1, unsigned int a2, unsigned int **a3, const void **a4)
{
  v4 = *(a1 + 72);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 80) - v4) >> 4) - ((*(a1 + 32) - *(a1 + 24)) >> 2) == 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 48);
  v7 = *(v6 + 16 * a2 + 4);
  if (*(v6 + 16 * *(v6 + 16 * *(v6 + 16 * v7 + 8) + 4) + 8) != a2)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = (v6 + 16 * a2);
  if (*(v4 + 80 * *(v6 + 16 * v7) + 64) >= *(v4 + 80 * *v10 + 64))
  {
    v11 = a2;
  }

  else
  {
    v11 = *(v6 + 16 * v7 + 8);
  }

  v12 = v11;
  do
  {
    v13 = v12;
    v14 = v6 + 16 * v12;
    v12 = *(v14 + 8);
  }

  while (v12 != v11);
  v15 = v10[2];
  v16 = (v6 + 16 * v11);
  if (*(v6 + 16 * v15 + 8) == v13)
  {
    v17 = *(v14 + 4);
    v125 = *(v6 + 16 * v17 + 8);
    v18 = *v16;
    v19 = v16[1];
    v20 = v19;
    do
    {
      v21 = v20;
      v20 = *(v6 + 16 * v20 + 8);
    }

    while (v20 != v19);
    v22 = *(v6 + 16 * v19);
    v23 = v16[3];
    v24 = *(a1 + 96);
    v25 = v22 + 4 * v22;
    v26 = (v4 + 16 * v25);
    v27 = vaddq_f32(*(v4 + 80 * v18 + 16), v26[1]);
    v26[1] = v27;
    v28 = vmulq_f32(v27, v27);
    v28.f32[0] = sqrtf(v28.f32[2] + vaddv_f32(*v28.f32));
    v29 = (*(a1 + 72) + 16 * v25);
    v29[2].i32[0] = v28.i32[0];
    v29[2].i8[4] = v28.f32[0] <= 0.00000011921;
    v29[3] = vsubq_f32(v29[3], *(v24 + 16 * v23));
    v30 = *(a1 + 72);
    --*(v30 + 16 * v25 + 64);
    v31 = v30 + 80 * v18;
    v33 = *(v31 + 68);
    v32 = (v31 + 68);
    if (v33 != -1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v32);
      v30 = *(a1 + 72);
      *(v30 + 80 * v18 + 68) = -1;
    }

    v34 = v30 + 80 * v22;
    v36 = *(v34 + 68);
    v35 = (v34 + 68);
    if (v36 != -1)
    {
      std::vector<unsigned int>::push_back[abi:nn200100](a4, v35);
      *(*(a1 + 72) + 80 * v22 + 68) = -1;
    }

    v37 = *(a1 + 48);
    *(v37 + 16 * v15) = v22;
    v127 = v13;
    v38 = (v37 + 16 * v13);
    *v38 = -1;
    v38[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v127);
    v127 = v11;
    v39 = (*(a1 + 48) + 16 * v11);
    *v39 = -1;
    v39[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v127);
    v127 = v17;
    v40 = (*(a1 + 48) + 16 * v17);
    *v40 = -1;
    v40[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v127);
    v127 = v19;
    v41 = (*(a1 + 48) + 16 * v19);
    *v41 = -1;
    v41[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v127);
    v42 = *(a1 + 72) + 80 * v22;
    *v42 = v15;
    v43 = *(a1 + 48);
    *(v43 + 16 * v21 + 8) = v15;
    *(v43 + 16 * v15 + 8) = v125;
    if ((*(v42 + 36) & 1) == 0)
    {
      v44 = *(a1 + 168);
      if (v22 < (*(a1 + 176) - v44) >> 2)
      {
        v45 = *(v44 + 4 * v22);
        if (v45)
        {
          v46 = *(a1 + 144);
          v47 = (v46 + 12 * v45);
          *(v44 + 4 * *v47) = 0;
          v48 = *(a1 + 152);
          v50 = *(v48 - 12);
          v48 -= 12;
          v49 = v50;
          v51 = *(v48 + 4);
          *(a1 + 152) = v48;
          if (0xAAAAAAAAAAAAAAABLL * ((v48 - v46) >> 2) != v45)
          {
            *v47 = v49;
            *(v47 + 1) = v51;
            *(*(a1 + 168) + 4 * v49) = v45;
            v52 = (2 * v45);
            v53 = *(a1 + 144);
            for (i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v53) >> 2); i > v52; LODWORD(v45) = v55)
            {
              v55 = v52 | 1;
              if (i <= v55)
              {
                LODWORD(v55) = v52;
              }

              else if (*(v53 + 12 * v52 + 8) >= *(v53 + 12 * v55 + 8))
              {
                LODWORD(v55) = v52;
              }

              v56 = (v53 + 12 * v55);
              v57 = (v53 + 12 * v45);
              if (*(v56 + 2) < *(v57 + 2))
              {
                break;
              }

              v58 = *v57;
              *v57 = *v56;
              *v56 = v58;
              v59 = *(v57 + 1);
              *(v57 + 1) = *(v56 + 1);
              *(v56 + 1) = v59;
              v53 = *(a1 + 144);
              v60 = *(a1 + 168);
              *(v60 + 4 * *(v53 + 12 * v45)) = v45;
              *(v60 + 4 * *(v53 + 12 * v55)) = v55;
              v52 = (2 * v55);
              i = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v53) >> 2);
            }
          }
        }
      }
    }
  }

  else
  {
    v62 = *(v16 + 1);
    v63 = (v6 + 16 * v62);
    v64 = v63[2];
    v65 = v6 + 16 * v64;
    v15 = *(v65 + 4);
    v66 = (v6 + 16 * v15);
    *(v66 + 1) = v62;
    LODWORD(v65) = *(v65 + 8);
    v63[1] = v15;
    v63[2] = v65;
    *(v4 + 80 * *v66) = v15;
    v67 = *v63;
    v68 = (v4 + 80 * v67);
    v68->i32[0] = v62;
    v69 = *v16;
    v70 = (v4 + 80 * v69);
    v71 = v66[3];
    v72 = *(a1 + 96);
    v73 = v16[3];
    v74 = *(v72 + 16 * v71);
    v75 = *(v72 + 16 * v73);
    v76 = vextq_s8(vuzp1q_s32(v74, v74), v74, 0xCuLL);
    v77 = vextq_s8(vuzp1q_s32(v75, v75), v75, 0xCuLL);
    v78 = vnegq_f32(v74);
    v79 = vmlaq_f32(vmulq_f32(v77, v78), v75, v76);
    v80 = *(v72 + 16 * v63[3]);
    v81 = vextq_s8(vuzp1q_s32(v80, v80), v80, 0xCuLL);
    v82 = vmlaq_f32(vmulq_f32(v81, v78), v80, v76);
    v83 = vextq_s8(vuzp1q_s32(v82, v82), v82, 0xCuLL);
    v84 = vaddq_f32(v79, vmlaq_f32(vmulq_f32(v81, vnegq_f32(v75)), v80, v77));
    v85 = vextq_s8(vuzp1q_s32(v84, v84), v84, 0xCuLL);
    v70[1] = vsubq_f32(v70[1], v85);
    v68[1] = vaddq_f32(v68[1], v85);
    v70[1] = vaddq_f32(v83, v70[1]);
    v86 = vsubq_f32(v68[1], v83);
    v68[1] = v86;
    v87 = vmulq_f32(v70[1], v70[1]);
    v70[2].f32[0] = sqrtf(v87.f32[2] + vaddv_f32(*v87.f32));
    v88 = vmulq_f32(v86, v86);
    v88.f32[0] = sqrtf(v88.f32[2] + vaddv_f32(*v88.f32));
    v68[2].i32[0] = v88.i32[0];
    v70[2].i8[4] = v70[2].f32[0] <= 0.00000011921;
    v68[2].i8[4] = v88.f32[0] <= 0.00000011921;
    v70[3] = vsubq_f32(v70[3], *(v72 + 16 * v73));
    v68[3] = vsubq_f32(v68[3], *(v72 + 16 * v73));
    --v70[4].i32[0];
    --v68[4].i32[0];
    v127 = v11;
    v89 = (*(a1 + 48) + 16 * v11);
    *v89 = -1;
    v89[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v127);
    v127 = v64;
    v90 = (*(a1 + 48) + 16 * v64);
    *v90 = -1;
    v90[1] = -1;
    std::vector<unsigned int>::push_back[abi:nn200100](a1, &v127);
    if ((v70[2].i8[4] & 1) == 0)
    {
      v91 = *(a1 + 168);
      if (v69 < (*(a1 + 176) - v91) >> 2)
      {
        v92 = *(v91 + 4 * v69);
        if (v92)
        {
          v93 = *(a1 + 144);
          v94 = (v93 + 12 * v92);
          *(v91 + 4 * *v94) = 0;
          v95 = *(a1 + 152);
          v97 = *(v95 - 12);
          v95 -= 12;
          v96 = v97;
          v98 = *(v95 + 4);
          *(a1 + 152) = v95;
          if (0xAAAAAAAAAAAAAAABLL * ((v95 - v93) >> 2) != v92)
          {
            *v94 = v96;
            *(v94 + 1) = v98;
            *(*(a1 + 168) + 4 * v96) = v92;
            v99 = (2 * v92);
            v100 = *(a1 + 144);
            for (j = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v100) >> 2); j > v99; LODWORD(v92) = v102)
            {
              v102 = v99 | 1;
              if (j <= v102)
              {
                LODWORD(v102) = v99;
              }

              else if (*(v100 + 12 * v99 + 8) >= *(v100 + 12 * v102 + 8))
              {
                LODWORD(v102) = v99;
              }

              v103 = (v100 + 12 * v102);
              v104 = (v100 + 12 * v92);
              if (*(v103 + 2) < *(v104 + 2))
              {
                break;
              }

              v105 = *v104;
              *v104 = *v103;
              *v103 = v105;
              v106 = *(v104 + 1);
              *(v104 + 1) = *(v103 + 1);
              *(v103 + 1) = v106;
              v100 = *(a1 + 144);
              v107 = *(a1 + 168);
              *(v107 + 4 * *(v100 + 12 * v92)) = v92;
              *(v107 + 4 * *(v100 + 12 * v102)) = v102;
              v99 = (2 * v102);
              j = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v100) >> 2);
            }
          }
        }
      }
    }

    if ((v68[2].i8[4] & 1) == 0)
    {
      v108 = *(a1 + 168);
      if (v67 < (*(a1 + 176) - v108) >> 2)
      {
        v109 = *(v108 + 4 * v67);
        if (v109)
        {
          v110 = *(a1 + 144);
          v111 = (v110 + 12 * v109);
          *(v108 + 4 * *v111) = 0;
          v112 = *(a1 + 152);
          v114 = *(v112 - 12);
          v112 -= 12;
          v113 = v114;
          v115 = *(v112 + 4);
          *(a1 + 152) = v112;
          if (0xAAAAAAAAAAAAAAABLL * ((v112 - v110) >> 2) != v109)
          {
            *v111 = v113;
            *(v111 + 1) = v115;
            *(*(a1 + 168) + 4 * v113) = v109;
            v116 = (2 * v109);
            v117 = *(a1 + 144);
            for (k = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v117) >> 2); k > v116; LODWORD(v109) = v119)
            {
              v119 = v116 | 1;
              if (k <= v119)
              {
                LODWORD(v119) = v116;
              }

              else if (*(v117 + 12 * v116 + 8) >= *(v117 + 12 * v119 + 8))
              {
                LODWORD(v119) = v116;
              }

              v120 = (v117 + 12 * v119);
              v121 = (v117 + 12 * v109);
              if (*(v120 + 2) < *(v121 + 2))
              {
                break;
              }

              v122 = *v121;
              *v121 = *v120;
              *v120 = v122;
              v123 = *(v121 + 1);
              *(v121 + 1) = *(v120 + 1);
              *(v120 + 1) = v123;
              v117 = *(a1 + 144);
              v124 = *(a1 + 168);
              *(v124 + 4 * *(v117 + 12 * v109)) = v109;
              *(v124 + 4 * *(v117 + 12 * v119)) = v119;
              v116 = (2 * v119);
              k = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v117) >> 2);
            }
          }
        }
      }
    }
  }

  return v15;
}