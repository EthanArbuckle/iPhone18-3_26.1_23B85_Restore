void *fill_h_ramp<unsigned short>(void *result, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7)
{
  v7 = a5 + a3;
  if (a5 + a3 > a3)
  {
    v8 = result[3];
    v9 = *result + v8 * a3;
    v10 = (a7 - a6);
    v11 = vdupq_n_s64(a4 - 1);
    v12 = vdupq_lane_s64(COERCE__INT64((a4 - 1)), 0);
    v13 = vdupq_lane_s64(COERCE__INT64(a6), 0);
    v14 = vdupq_n_s64(a2);
    v15 = *result + v8 * a3 + 2 * a2;
    do
    {
      if (a4 + a2 > a2)
      {
        v16 = 0;
        do
        {
          v17 = vdupq_n_s64(v16);
          v18 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BAF0)));
          v19 = v16 + 1;
          v20.i64[0] = v16;
          v20.i64[1] = v16 + 1;
          v21 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(v20), v10), v12), v13));
          if (vuzp1_s8(vuzp1_s16(v18, *&v10), *&v10).u8[0])
          {
            *(v15 + 2 * v16) = v21.f64[0];
          }

          if (vuzp1_s8(vuzp1_s16(v18, *&v10), *&v10).i8[1])
          {
            *(v15 + 2 * v16 + 2) = v21.f64[1];
          }

          v22 = vdupq_n_s64(a2 + v16);
          v23 = vaddq_s64(v22, xmmword_25792BAE0);
          v24 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v23, v14)), v10), v12), v13));
          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BAE0)))), *&v10).i8[2])
          {
            *(v9 + 2 * v23.i64[0]) = v24.f64[0];
            *(v9 + 2 * v23.i64[1]) = v24.f64[1];
          }

          v25 = vaddq_s64(v22, xmmword_25792BB10);
          v26 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v25, v14)), v10), v12), v13));
          v27 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v17, xmmword_25792BB10)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v27, *&v10)).i32[1])
          {
            *(v9 + 2 * v25.i64[0]) = v26.f64[0];
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v27, *&v10)).i8[5])
          {
            *(v9 + 2 * v25.i64[1]) = v26.f64[1];
          }

          v28 = vorrq_s8(v17, xmmword_25792BB00);
          v29 = vaddq_s64(v22, xmmword_25792BB00);
          v30 = vrndaq_f64(vaddq_f64(vdivq_f64(vmulq_n_f64(vcvtq_f64_u64(vsubq_s64(v29, v14)), v10), v12), v13));
          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v11, v28)))).i8[6])
          {
            *(v9 + 2 * v29.i64[0]) = v30.f64[0];
            *(v9 + 2 * v29.i64[1]) = v30.f64[1];
          }

          v16 += 8;
        }

        while (v19 + 7 != ((a4 + 7) & 0xFFFFFFFFFFFFFFF8));
      }

      v9 += v8;
      ++a3;
      v15 += v8;
    }

    while (a3 != v7);
  }

  return result;
}

void *cinematic_bars::fill_buffer_black<PixelFormatTraits<2016686640u>>(void *a1, void *a2)
{
  v8[0] = 0;
  v9 = 0x4000003FFLL;
  v10 = 512;
  v4 = math_color::YCC_coder::YPbPr_to_YCbCr(v8, 0.0, 0.0, 0.0);
  v6 = v5;
  fill_rect<unsigned short>(a1, 0, 0, a1[2], a1[1], (v4 & 0x3FF) << 6);
  return fill_rect<unsigned int>(a2, 0, 0, a2[2], a2[1], (v4 >> 26) & 0xFFC0 | (v6 << 22));
}

void *makeCroppedImageBufferView<math_color::CbCr<unsigned short>>@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = result[2];
  v6 = result[3];
  if (v6 < 4 * v7)
  {
  }

  if (a4 + a2 > v7)
  {
  }

  if ((a5 + a3) > result[1])
  {
  }

  *a6 = *result + v6 * a3 + 4 * a2;
  a6[1] = a5;
  a6[2] = a4;
  a6[3] = v6;
  return result;
}

void *anonymous namespace::fill_rect<unsigned short>(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v7 = result[2];
  if (v7 > a2)
  {
    v9 = result;
    v10 = result[1];
    if (v10 > a3)
    {
      if (a5 + a3 <= v10)
      {
        v12 = a5;
      }

      else
      {
        v12 = v10 - a3;
      }

      if (a4 + a2 <= v7)
      {
        v13 = a4;
      }

      else
      {
        v13 = v7 - a2;
      }

      if (a2)
      {
        v14 = 2;
      }

      else
      {
        v14 = 4;
      }

      v15 = -2;
      if (!a2)
      {
        v15 = 0;
      }

      v16 = v14 + a2;
      if (v12 + a3 > a3)
      {
        v18 = v15 + a2;
        v19 = result[3];
        v38 = v19 * a3;
        v39 = *result;
        v20 = asin(0.316227766);
        *&v40 = (v20 + v20) / 3.14159265;
        v21 = asin(0.948683298);
        v37 = (a7 - a6);
        v22 = (v21 + v21) / 3.14159265 - *&v40;
        v36 = vdupq_lane_s64(COERCE__INT64(a6), 0);
        v23 = vdupq_lane_s64(v40, 0);
        v24 = vmlaq_n_f64(v23, xmmword_25792C1C0, v22);
        v25 = vmlaq_n_f64(v23, xmmword_25792C1B0, v22);
        v26 = vdupq_n_s64(0x3FF921FB54442D18uLL);
        v41 = vmulq_f64(v25, v26);
        __x = vmulq_f64(v24, v26);
        v34 = sin(__x.f64[1]);
        v27.f64[0] = sin(__x.f64[0]);
        v27.f64[1] = v34;
        v35 = v27;
        __x.f64[0] = sin(v41.f64[1]);
        v28.f64[0] = sin(v41.f64[0]);
        v28.f64[1] = __x.f64[0];
        v29 = vrndaq_f64(vmlaq_n_f64(v36, vmulq_f64(v28, v28), v37));
        v30 = vrndaq_f64(vmlaq_n_f64(v36, vmulq_f64(v35, v35), v37));
        v31 = (v38 + 2 * v18 + v39 + 4);
        v32 = v12;
        do
        {
          if (v18 < v16)
          {
            *(v31 - 2) = v30.f64[0];
            *(v31 - 1) = v30.f64[1];
            *v31 = v29.f64[0];
            v31[1] = v29.f64[1];
          }

          v31 = (v31 + v19);
          --v32;
        }

        while (v32);
      }

      return fill_rect<unsigned short>(v9, v16, a3, v13 - v14, v12, a7);
    }
  }

  return result;
}

void *anonymous namespace::fill_rect<math_color::CbCr<unsigned short>>(void *result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unsigned int a6, int a7)
{
  v7 = result[2];
  if (v7 > a2)
  {
    v9 = result;
    v10 = result[1];
    if (v10 > a3)
    {
      if (a5 + a3 <= v10)
      {
        v12 = a5;
      }

      else
      {
        v12 = v10 - a3;
      }

      if (a4 + a2 <= v7)
      {
        v13 = a4;
      }

      else
      {
        v13 = v7 - a2;
      }

      if (a2)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      v15 = v14 + a2;
      if (v12 + a3 > a3)
      {
        v17 = a2 - (a2 != 0);
        v18 = result[3];
        v31 = v18 * a3;
        v32 = *result;
        v19 = HIWORD(a7);
        v33 = v13;
        v20 = asin(0.316227766);
        *&v29 = (v20 + v20) / 3.14159265;
        v21 = asin(0.948683298);
        __x = vmulq_f64(vmlaq_n_f64(vdupq_lane_s64(v29, 0), xmmword_25792C1D0, (v21 + v21) / 3.14159265 - *&v29), vdupq_n_s64(0x3FF921FB54442D18uLL));
        v30 = sin(__x.f64[1]);
        v22.f64[0] = sin(__x.f64[0]);
        v13 = v33;
        v22.f64[1] = v30;
        v23 = vmulq_f64(v22, v22);
        v24 = vrndaq_f64(vmlaq_n_f64(vdupq_lane_s64(COERCE__INT64(a6), 0), v23, (a7 - a6)));
        v25 = vrndaq_f64(vmlaq_n_f64(vdupq_lane_s64(COERCE__INT64(HIWORD(a6)), 0), v23, (v19 - HIWORD(a6))));
        v26 = (v31 + 4 * v17 + v32 + 4);
        v27 = v12;
        do
        {
          if (v17 < v15)
          {
            *(v26 - 1) = v24.f64[0] | (v25.f64[0] << 16);
            *v26 = v24.f64[1] | (v25.f64[1] << 16);
          }

          v26 = (v26 + v18);
          --v27;
        }

        while (v27);
      }

      return fill_rect<unsigned int>(v9, v15, a3, v13 - v14, v12, a7);
    }
  }

  return result;
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<875704950u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v60 = a4;
  if (v6 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v10 = a2[1];
  v56 = a5;
  if (v10 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v88 = xmmword_25792C160;
  v68 = 0;
  v69 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v88, &v89, 2uLL);
  v11 = __p;
  v12 = v6 / v10;
  if (v68 != __p)
  {
    if (v68 - __p != 8)
    {
      v13 = (__p + 8);
      v14 = *__p;
      v15 = (__p + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (vabdd_f64(v16, v12) < vabdd_f64(v14, v12))
        {
          v14 = v17;
          v11 = v13;
        }

        v13 = v15;
      }

      while (v15 != v68);
    }

    v12 = *v11;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<875704438u>>(a2, a3, a4, a5, &v64, v12);
  v19 = *(&v64 + 1);
  v18 = v65;
  SMPTE_RP219::Dimensions::Dimensions(&v88, v65, *(&v64 + 1), a5);
  _CF = v18 >= v97 && v19 >= v98;
  v21 = _CF;
  if (_CF)
  {
    v55 = v21;
    v22 = 0;
    v63 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v82 = *v24;
    v25 = v24[2];
    v81 = 152;
    v83 = v25;
    v85 = 168;
    v87 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v57 = _Q0;
    _D11 = 0;
    do
    {
      v59 = v22;
      v30 = (&v80 + v22);
      v62 = *(&v88 + *(&v80 + v22 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v70 = _Q1;
      v71 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v72 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v73 = 0.5 / (1.0 - *_Q1.i64);
      v74 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v75 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v57), vdupq_lane_s64(*&v71, 0));
      v76 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v77[0] = 0;
      v78 = 0x1000000FFLL;
      v79 = 128;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v33 = math_color::YCC_coder::YPbPr_to_YCbCr(v77, _Q0.f64[0], v72 * (0.0 - _Q0.f64[0]), v73 * (0.0 - _Q0.f64[0]));
      v35 = v30[1];
      if (v35)
      {
        v36 = v33;
        v37 = v34;
        v38 = 0;
        v39 = *v30;
        v61 = *v30 + 32 * v35;
        v40 = BYTE4(v33);
        do
        {
          v41 = *(v39 + 16);
          v42 = *(v39 + 24);
          v43 = *(v39 + 8) * v71 + *v70.i64 * *v39 + *&v70.i64[1] * v41;
          v44 = math_color::YCC_coder::YPbPr_to_YCbCr(v77, v43, v72 * (v41 - v43), v73 * (*v39 - v43));
          v46 = v45;
          v47 = *(&v88 + v42);
          v38 += v47;
          v39 += 32;
          v36 = v44;
          v37 = v46;
          v40 = BYTE4(v44);
        }

        while (v39 != v61);
      }

      v63 += v62;
      v22 = v59 + 24;
    }

    while (v59 != 72);
    fill_h_ramp<unsigned char>(&v64, v91 + v90, v96.i64[0] + v95.i64[1], v92, v96.i64[1], 0x10u, 235);
    v48 = vaddvq_s64(vaddq_s64(v95, v96));
    v49 = v94 - 4;
    v50 = v90 + 2;
    v51 = v95.i64[0];
    fill_h_ramp<unsigned char>(&v64, v90 + 2, v48, (v94 - 4) >> 1, v95.i64[0], 0x10u, 1);
    fill_h_ramp<unsigned char>(&v64, v50 + (v49 >> 1), v48, v49 - (v49 >> 1), v51, 1u, 16);
    v52 = v93 - 4;
    v53 = v90 + v94 + 2;
    fill_h_ramp<unsigned char>(&v64, v53, v48, (v93 - 4) >> 1, v51, 0xEBu, 254);
    fill_h_ramp<unsigned char>(&v64, v53 + (v52 >> 1), v48, v52 - (v52 >> 1), v51, 0xFEu, 235);
    v21 = v55;
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2578E3D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<2016686642u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v104 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v62 = a4;
  if (v6 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v10 = a2[1];
  v58 = a5;
  if (v10 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v93 = xmmword_25792C160;
  v73 = 0;
  v74 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v93, &v94, 2uLL);
  v11 = __p;
  v12 = v6 / v10;
  if (v73 != __p)
  {
    if (v73 - __p != 8)
    {
      v13 = (__p + 8);
      v14 = *__p;
      v15 = (__p + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (vabdd_f64(v16, v12) < vabdd_f64(v14, v12))
        {
          v14 = v17;
          v11 = v13;
        }

        v13 = v15;
      }

      while (v15 != v73);
    }

    v12 = *v11;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>(a2, a3, a4, a5, &v69, v12);
  v19 = *(&v69 + 1);
  v18 = v70;
  SMPTE_RP219::Dimensions::Dimensions(&v93, v70, *(&v69 + 1), a5);
  _CF = v18 >= v102 && v19 >= v103;
  v21 = _CF;
  if (_CF)
  {
    v57 = v21;
    v22 = 0;
    v65 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v87 = *v24;
    v25 = v24[2];
    v86 = 152;
    v88 = v25;
    v90 = 168;
    v92 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v59 = _Q0;
    _D11 = 0;
    do
    {
      v61 = v22;
      v30 = (&v85 + v22);
      v64 = *(&v93 + *(&v85 + v22 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v75 = _Q1;
      v76 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v77 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v78 = 0.5 / (1.0 - *_Q1.i64);
      v79 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v80 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v59), vdupq_lane_s64(*&v76, 0));
      v81 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v82[0] = 0;
      v83 = 0x4000003FFLL;
      v84 = 512;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v33 = math_color::YCC_coder::YPbPr_to_YCbCr(v82, _Q0.f64[0], v77 * (0.0 - _Q0.f64[0]), v78 * (0.0 - _Q0.f64[0]));
      v35 = v30[1];
      if (v35)
      {
        v36 = 0;
        v37 = *v30;
        v63 = *v30 + 32 * v35;
        v38 = v34 << 22;
        v39 = (v33 >> 26) & 0xFFC0;
        v40 = v33 << 6;
        do
        {
          v41 = *(v37 + 16);
          v42 = *(v37 + 24);
          v43 = *(v37 + 8) * v76 + *v75.i64 * *v37 + *&v75.i64[1] * v41;
          v44 = math_color::YCC_coder::YPbPr_to_YCbCr(v82, v43, v77 * (v41 - v43), v78 * (*v37 - v43));
          v46 = v45;
          v47 = *(&v93 + v42);
          v48 = v44 << 6;
          v49 = (v44 >> 26) & 0xFFC0;
          v66 = v45 << 22;
          v67 = v67 & 0xFFFFFFFF00000000 | v39 | v38;
          v68 = v68 & 0xFFFFFFFF00000000 | v49 & 0x3FFFFF | (v46 << 22);
          v36 += v47;
          v37 += 32;
          v40 = v48;
          v38 = v66;
          LODWORD(v39) = v49;
        }

        while (v37 != v63);
      }

      v65 += v64;
      v22 = v61 + 24;
    }

    while (v61 != 72);
    fill_h_ramp<unsigned short>(&v69, v96 + v95, v101.i64[0] + v100.i64[1], v97, v101.i64[1], 0x1000u, 60160);
    v50 = vaddvq_s64(vaddq_s64(v100, v101));
    v51 = v99 - 4;
    v52 = v95 + 2;
    v53 = v100.i64[0];
    fill_h_ramp<unsigned short>(&v69, v95 + 2, v50, (v99 - 4) >> 1, v100.i64[0], 0x1000u, 256);
    fill_h_ramp<unsigned short>(&v69, v52 + (v51 >> 1), v50, v51 - (v51 >> 1), v53, 0x100u, 4096);
    v54 = v98 - 4;
    v55 = v95 + v99 + 2;
    fill_h_ramp<unsigned short>(&v69, v55, v50, (v98 - 4) >> 1, v53, 0xEB00u, 65216);
    fill_h_ramp<unsigned short>(&v69, v55 + (v54 >> 1), v50, v54 - (v54 >> 1), v53, 0xFEC0u, 60160);
    v21 = v57;
  }

  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2578E4290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v8 = a2[2];
  v62 = a4;
  if (v8 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v12 = a2[1];
  v58 = a5;
  if (v12 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v91 = xmmword_25792C160;
  v71 = 0;
  v72 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v91, &v92, 2uLL);
  v13 = __p;
  v14 = v8 / v12;
  if (v71 != __p)
  {
    if (v71 - __p != 8)
    {
      v15 = (__p + 8);
      v16 = *__p;
      v17 = (__p + 8);
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (vabdd_f64(v18, v14) < vabdd_f64(v16, v14))
        {
          v16 = v19;
          v13 = v15;
        }

        v15 = v17;
      }

      while (v17 != v71);
    }

    v14 = *v13;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<1937125938u>>(a2, a3, a4, a5, &v67, v14);
  v21 = *(&v67 + 1);
  v20 = v68;
  SMPTE_RP219::Dimensions::Dimensions(&v91, v68, *(&v67 + 1), a5);
  _CF = v20 >= v100 && v21 >= v101;
  v23 = _CF;
  if (_CF)
  {
    v57 = v23;
    v24 = 0;
    v65 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v85 = *v26;
    v27 = v26[2];
    v84 = 152;
    v86 = v27;
    v88 = 168;
    v90 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v59 = _Q0;
    _D11 = 0;
    do
    {
      v61 = v24;
      v32 = (&v83 + v24);
      v64 = *(&v91 + *(&v83 + v24 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v73 = _Q1;
      v74 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v75 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v76 = 0.5 / (1.0 - *_Q1.i64);
      v77 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v78 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v59), vdupq_lane_s64(*&v74, 0));
      v79 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v80[0] = 0;
      v81 = 0x1000000FFFFLL;
      v82 = 0x8000;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v35 = math_color::YCC_coder::YPbPr_to_YCbCr(v80, _Q0.f64[0], v75 * (0.0 - _Q0.f64[0]), v76 * (0.0 - _Q0.f64[0]));
      v37 = v32[1];
      if (v37)
      {
        v38 = v35;
        v39 = v36;
        v40 = 0;
        v41 = *v32;
        v63 = v41 + 32 * v37;
        v66 = WORD2(v35);
        do
        {
          v42 = *(v41 + 16);
          v43 = *(v41 + 24);
          v44 = *(v41 + 8) * v74 + *v73.i64 * *v41 + *&v73.i64[1] * v42;
          v45 = math_color::YCC_coder::YPbPr_to_YCbCr(v80, v44, v75 * (v42 - v44), v76 * (*v41 - v44));
          v47 = v46;
          v48 = *(&v91 + v43);
          v49 = v66 | (v39 << 16);
          v66 = WORD2(v45);
          v6 = v6 & 0xFFFFFFFF00000000 | v49;
          v5 = v5 & 0xFFFFFFFF00000000 | WORD2(v45) | (v47 << 16);
          v40 += v48;
          v41 += 32;
          v38 = v45;
          v39 = v47;
        }

        while (v41 != v63);
      }

      v65 += v64;
      v24 = v61 + 24;
    }

    while (v61 != 72);
    fill_h_ramp<unsigned short>(&v67, v94 + v93, v99.i64[0] + v98.i64[1], v95, v99.i64[1], 0x1000u, 60160);
    v50 = vaddvq_s64(vaddq_s64(v98, v99));
    v51 = v97 - 4;
    v52 = v93 + 2;
    v53 = v98.i64[0];
    fill_h_ramp<unsigned short>(&v67, v93 + 2, v50, (v97 - 4) >> 1, v98.i64[0], 0x1000u, 256);
    fill_h_ramp<unsigned short>(&v67, v52 + (v51 >> 1), v50, v51 - (v51 >> 1), v53, 0x100u, 4096);
    v54 = v96 - 4;
    v55 = v93 + v97 + 2;
    fill_h_ramp<unsigned short>(&v67, v55, v50, (v96 - 4) >> 1, v53, 0xEB00u, 65279);
    fill_h_ramp<unsigned short>(&v67, v55 + (v54 >> 1), v50, v54 - (v54 >> 1), v53, 0xFEFFu, 60160);
    v23 = v57;
  }

  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_2578E47F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double cinematic_bars::render_cinematic_bars<PixelFormatTraits<1937125938u>>@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v9 = *(a1 + 1);
  v39 = *a1;
  v40 = v9;
  v10 = *(a2 + 1);
  v37 = *a2;
  v38 = v10;
  v11 = a1[1];
  v12 = a1[2];
  v13 = v12 - llround(v11 * a6);
  if (v13 >= 1)
  {
    v14 = v13 - (v13 >> 1);
    v15 = (v13 >> 1) / a3;
    v35 = 0u;
    v36 = 0u;
    v16 = v14 / a3;
    makeCroppedImageBufferView<unsigned short>(a1, 0, 0, v13 >> 1, v11, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned short>(a1, a1[2] - v14, 0, v14, a1[1], &v33);
    makeCroppedImageBufferView<unsigned short>(a1, v13 >> 1, 0, a1[2] - v13, a1[1], &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, 0, v15, a2[1], &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, a2[2] - v16, 0, v16, a2[1], &v29);
    v17 = a2[1];
    v18 = a2[2] - v15 - v16;
    v19 = a2;
    v20 = v15;
    v21 = 0;
LABEL_5:
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(v19, v20, v21, v18, v17, &v37);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<1937125938u>>(&v35, &v31);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<1937125938u>>(&v33, &v29);
    goto LABEL_6;
  }

  v22 = v11 - llround(v12 / a6);
  if (v22 >= 1)
  {
    v23 = v22 - (v22 >> 1);
    v24 = (v22 >> 1) / a4;
    v35 = 0u;
    v36 = 0u;
    v25 = v23 / a4;
    makeCroppedImageBufferView<unsigned short>(a1, 0, 0, v12, v22 >> 1, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned short>(a1, 0, a1[1] - v23, a1[2], v23, &v33);
    makeCroppedImageBufferView<unsigned short>(a1, 0, v22 >> 1, a1[2], a1[1] - v22, &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, 0, a2[2], v24, &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, a2[1] - v25, a2[2], v25, &v29);
    v18 = a2[2];
    v17 = a2[1] - v24 - v25;
    v19 = a2;
    v20 = 0;
    v21 = v24;
    goto LABEL_5;
  }

LABEL_6:
  v26 = v40;
  *a5 = v39;
  a5[1] = v26;
  result = *&v37;
  v28 = v38;
  a5[2] = v37;
  a5[3] = v28;
  return result;
}

void *cinematic_bars::fill_buffer_black<PixelFormatTraits<1937125938u>>(void *a1, void *a2)
{
  v9[0] = 0;
  v10 = 0x1000000FFFFLL;
  v11 = 0x8000;
  v4 = math_color::YCC_coder::YPbPr_to_YCbCr(v9, 0.0, 0.0, 0.0);
  v6 = v5;
  v7 = HIDWORD(v4);
  fill_rect<unsigned short>(a1, 0, 0, a1[2], a1[1], v4);
  return fill_rect<unsigned int>(a2, 0, 0, a2[2], a2[1], v7 | (v6 << 16));
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<875836534u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v60 = a4;
  if (v6 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v10 = a2[1];
  v56 = a5;
  if (v10 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v88 = xmmword_25792C160;
  v68 = 0;
  v69 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v88, &v89, 2uLL);
  v11 = __p;
  v12 = v6 / v10;
  if (v68 != __p)
  {
    if (v68 - __p != 8)
    {
      v13 = (__p + 8);
      v14 = *__p;
      v15 = (__p + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (vabdd_f64(v16, v12) < vabdd_f64(v14, v12))
        {
          v14 = v17;
          v11 = v13;
        }

        v13 = v15;
      }

      while (v15 != v68);
    }

    v12 = *v11;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<875704438u>>(a2, a3, a4, a5, &v64, v12);
  v19 = *(&v64 + 1);
  v18 = v65;
  SMPTE_RP219::Dimensions::Dimensions(&v88, v65, *(&v64 + 1), a5);
  _CF = v18 >= v97 && v19 >= v98;
  v21 = _CF;
  if (_CF)
  {
    v55 = v21;
    v22 = 0;
    v63 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v82 = *v24;
    v25 = v24[2];
    v81 = 152;
    v83 = v25;
    v85 = 168;
    v87 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v57 = _Q0;
    _D11 = 0;
    do
    {
      v59 = v22;
      v30 = (&v80 + v22);
      v62 = *(&v88 + *(&v80 + v22 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v70 = _Q1;
      v71 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v72 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v73 = 0.5 / (1.0 - *_Q1.i64);
      v74 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v75 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v57), vdupq_lane_s64(*&v71, 0));
      v76 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v77[0] = 0;
      v78 = 0x1000000FFLL;
      v79 = 128;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v33 = math_color::YCC_coder::YPbPr_to_YCbCr(v77, _Q0.f64[0], v72 * (0.0 - _Q0.f64[0]), v73 * (0.0 - _Q0.f64[0]));
      v35 = v30[1];
      if (v35)
      {
        v36 = v33;
        v37 = v34;
        v38 = 0;
        v39 = *v30;
        v61 = *v30 + 32 * v35;
        v40 = BYTE4(v33);
        do
        {
          v41 = *(v39 + 16);
          v42 = *(v39 + 24);
          v43 = *(v39 + 8) * v71 + *v70.i64 * *v39 + *&v70.i64[1] * v41;
          v44 = math_color::YCC_coder::YPbPr_to_YCbCr(v77, v43, v72 * (v41 - v43), v73 * (*v39 - v43));
          v46 = v45;
          v47 = *(&v88 + v42);
          v38 += v47;
          v39 += 32;
          v36 = v44;
          v37 = v46;
          v40 = BYTE4(v44);
        }

        while (v39 != v61);
      }

      v63 += v62;
      v22 = v59 + 24;
    }

    while (v59 != 72);
    fill_h_ramp<unsigned char>(&v64, v91 + v90, v96.i64[0] + v95.i64[1], v92, v96.i64[1], 0x10u, 235);
    v48 = vaddvq_s64(vaddq_s64(v95, v96));
    v49 = v94 - 4;
    v50 = v90 + 2;
    v51 = v95.i64[0];
    fill_h_ramp<unsigned char>(&v64, v90 + 2, v48, (v94 - 4) >> 1, v95.i64[0], 0x10u, 1);
    fill_h_ramp<unsigned char>(&v64, v50 + (v49 >> 1), v48, v49 - (v49 >> 1), v51, 1u, 16);
    v52 = v93 - 4;
    v53 = v90 + v94 + 2;
    fill_h_ramp<unsigned char>(&v64, v53, v48, (v93 - 4) >> 1, v51, 0xEBu, 254);
    fill_h_ramp<unsigned char>(&v64, v53 + (v52 >> 1), v48, v52 - (v52 >> 1), v51, 0xFEu, 235);
    v21 = v55;
  }

  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2578E504C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<2016687156u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v104 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v62 = a4;
  if (v6 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v10 = a2[1];
  v58 = a5;
  if (v10 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v93 = xmmword_25792C160;
  v73 = 0;
  v74 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v93, &v94, 2uLL);
  v11 = __p;
  v12 = v6 / v10;
  if (v73 != __p)
  {
    if (v73 - __p != 8)
    {
      v13 = (__p + 8);
      v14 = *__p;
      v15 = (__p + 8);
      do
      {
        v16 = *v15++;
        v17 = v16;
        if (vabdd_f64(v16, v12) < vabdd_f64(v14, v12))
        {
          v14 = v17;
          v11 = v13;
        }

        v13 = v15;
      }

      while (v15 != v73);
    }

    v12 = *v11;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>(a2, a3, a4, a5, &v69, v12);
  v19 = *(&v69 + 1);
  v18 = v70;
  SMPTE_RP219::Dimensions::Dimensions(&v93, v70, *(&v69 + 1), a5);
  _CF = v18 >= v102 && v19 >= v103;
  v21 = _CF;
  if (_CF)
  {
    v57 = v21;
    v22 = 0;
    v65 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v87 = *v24;
    v25 = v24[2];
    v86 = 152;
    v88 = v25;
    v90 = 168;
    v92 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v59 = _Q0;
    _D11 = 0;
    do
    {
      v61 = v22;
      v30 = (&v85 + v22);
      v64 = *(&v93 + *(&v85 + v22 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v75 = _Q1;
      v76 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v77 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v78 = 0.5 / (1.0 - *_Q1.i64);
      v79 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v80 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v59), vdupq_lane_s64(*&v76, 0));
      v81 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v82[0] = 0;
      v83 = 0x4000003FFLL;
      v84 = 512;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v33 = math_color::YCC_coder::YPbPr_to_YCbCr(v82, _Q0.f64[0], v77 * (0.0 - _Q0.f64[0]), v78 * (0.0 - _Q0.f64[0]));
      v35 = v30[1];
      if (v35)
      {
        v36 = 0;
        v37 = *v30;
        v63 = *v30 + 32 * v35;
        v38 = v34 << 22;
        v39 = (v33 >> 26) & 0xFFC0;
        v40 = v33 << 6;
        do
        {
          v41 = *(v37 + 16);
          v42 = *(v37 + 24);
          v43 = *(v37 + 8) * v76 + *v75.i64 * *v37 + *&v75.i64[1] * v41;
          v44 = math_color::YCC_coder::YPbPr_to_YCbCr(v82, v43, v77 * (v41 - v43), v78 * (*v37 - v43));
          v46 = v45;
          v47 = *(&v93 + v42);
          v48 = v44 << 6;
          v49 = (v44 >> 26) & 0xFFC0;
          v66 = v45 << 22;
          v67 = v67 & 0xFFFFFFFF00000000 | v39 | v38;
          v68 = v68 & 0xFFFFFFFF00000000 | v49 & 0x3FFFFF | (v46 << 22);
          v36 += v47;
          v37 += 32;
          v40 = v48;
          v38 = v66;
          LODWORD(v39) = v49;
        }

        while (v37 != v63);
      }

      v65 += v64;
      v22 = v61 + 24;
    }

    while (v61 != 72);
    fill_h_ramp<unsigned short>(&v69, v96 + v95, v101.i64[0] + v100.i64[1], v97, v101.i64[1], 0x1000u, 60160);
    v50 = vaddvq_s64(vaddq_s64(v100, v101));
    v51 = v99 - 4;
    v52 = v95 + 2;
    v53 = v100.i64[0];
    fill_h_ramp<unsigned short>(&v69, v95 + 2, v50, (v99 - 4) >> 1, v100.i64[0], 0x1000u, 256);
    fill_h_ramp<unsigned short>(&v69, v52 + (v51 >> 1), v50, v51 - (v51 >> 1), v53, 0x100u, 4096);
    v54 = v98 - 4;
    v55 = v95 + v99 + 2;
    fill_h_ramp<unsigned short>(&v69, v55, v50, (v98 - 4) >> 1, v53, 0xEB00u, 65216);
    fill_h_ramp<unsigned short>(&v69, v55 + (v54 >> 1), v50, v54 - (v54 >> 1), v53, 0xFEC0u, 60160);
    v21 = v57;
  }

  if (__p)
  {
    v73 = __p;
    operator delete(__p);
  }

  return v21;
}

void sub_2578E55B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SMPTE_RP219::render_4xx<PixelFormatTraits<1937126452u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v102 = *MEMORY[0x277D85DE8];
  v8 = a2[2];
  v62 = a4;
  if (v8 != a3[2] * a4)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v12 = a2[1];
  v58 = a5;
  if (v12 != a3[1] * a5)
  {
    SMPTE_RP219::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v91 = xmmword_25792C160;
  v71 = 0;
  v72 = 0;
  __p = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&__p, &v91, &v92, 2uLL);
  v13 = __p;
  v14 = v8 / v12;
  if (v71 != __p)
  {
    if (v71 - __p != 8)
    {
      v15 = (__p + 8);
      v16 = *__p;
      v17 = (__p + 8);
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (vabdd_f64(v18, v14) < vabdd_f64(v16, v14))
        {
          v16 = v19;
          v13 = v15;
        }

        v15 = v17;
      }

      while (v17 != v71);
    }

    v14 = *v13;
  }

  cinematic_bars::render_cinematic_bars<PixelFormatTraits<1937125938u>>(a2, a3, a4, a5, &v67, v14);
  v21 = *(&v67 + 1);
  v20 = v68;
  SMPTE_RP219::Dimensions::Dimensions(&v91, v68, *(&v67 + 1), a5);
  _CF = v20 >= v100 && v21 >= v101;
  v23 = _CF;
  if (_CF)
  {
    v57 = v23;
    v24 = 0;
    v65 = 0;
    _ZF = *(a1 + 24) == 0;
    if (!_ZF)
    {
    }

    v85 = *v26;
    v27 = v26[2];
    v84 = 152;
    v86 = v27;
    v88 = 168;
    v90 = 176;
    __asm { FMOV            V0.2D, #-2.0 }

    v59 = _Q0;
    _D11 = 0;
    do
    {
      v61 = v24;
      v32 = (&v83 + v24);
      v64 = *(&v91 + *(&v83 + v24 + 16));
      _Q1 = *(a1 + 8);
      _Q0 = vextq_s8(_Q1, _Q1, 8uLL);
      v73 = _Q1;
      v74 = 1.0 - *_Q1.i64 - *&_Q1.i64[1];
      v75 = 0.5 / (1.0 - *&_Q1.i64[1]);
      v76 = 0.5 / (1.0 - *_Q1.i64);
      v77 = 1.0 - *_Q1.i64 + 1.0 - *_Q1.i64;
      v78 = vdivq_f64(vmulq_f64(vmlsq_f64(_Q0, _Q0, _Q0), v59), vdupq_lane_s64(*&v74, 0));
      v79 = 1.0 - *&_Q1.i64[1] + 1.0 - *&_Q1.i64[1];
      v80[0] = 0;
      v81 = 0x1000000FFFFLL;
      v82 = 0x8000;
      __asm { FMLA            D0, D11, V1.D[1]; double }

      v35 = math_color::YCC_coder::YPbPr_to_YCbCr(v80, _Q0.f64[0], v75 * (0.0 - _Q0.f64[0]), v76 * (0.0 - _Q0.f64[0]));
      v37 = v32[1];
      if (v37)
      {
        v38 = v35;
        v39 = v36;
        v40 = 0;
        v41 = *v32;
        v63 = v41 + 32 * v37;
        v66 = WORD2(v35);
        do
        {
          v42 = *(v41 + 16);
          v43 = *(v41 + 24);
          v44 = *(v41 + 8) * v74 + *v73.i64 * *v41 + *&v73.i64[1] * v42;
          v45 = math_color::YCC_coder::YPbPr_to_YCbCr(v80, v44, v75 * (v42 - v44), v76 * (*v41 - v44));
          v47 = v46;
          v48 = *(&v91 + v43);
          v49 = v66 | (v39 << 16);
          v66 = WORD2(v45);
          v6 = v6 & 0xFFFFFFFF00000000 | v49;
          v5 = v5 & 0xFFFFFFFF00000000 | WORD2(v45) | (v47 << 16);
          v40 += v48;
          v41 += 32;
          v38 = v45;
          v39 = v47;
        }

        while (v41 != v63);
      }

      v65 += v64;
      v24 = v61 + 24;
    }

    while (v61 != 72);
    fill_h_ramp<unsigned short>(&v67, v94 + v93, v99.i64[0] + v98.i64[1], v95, v99.i64[1], 0x1000u, 60160);
    v50 = vaddvq_s64(vaddq_s64(v98, v99));
    v51 = v97 - 4;
    v52 = v93 + 2;
    v53 = v98.i64[0];
    fill_h_ramp<unsigned short>(&v67, v93 + 2, v50, (v97 - 4) >> 1, v98.i64[0], 0x1000u, 256);
    fill_h_ramp<unsigned short>(&v67, v52 + (v51 >> 1), v50, v51 - (v51 >> 1), v53, 0x100u, 4096);
    v54 = v96 - 4;
    v55 = v93 + v97 + 2;
    fill_h_ramp<unsigned short>(&v67, v55, v50, (v96 - 4) >> 1, v53, 0xEB00u, 65279);
    fill_h_ramp<unsigned short>(&v67, v55 + (v54 >> 1), v50, v54 - (v54 >> 1), v53, 0xFEFFu, 60160);
    v23 = v57;
  }

  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  return v23;
}

void sub_2578E5B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void frameSequenceValues(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_25792C650, sizeof(__dst));
  v9 = 0;
  v10 = 0;
  __p = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb const*,math_color::rgb const*>(&__p, __dst, &v12, 0x13uLL);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  memset(__dst, 0, 24);
  v6 = xmmword_25792C818;
  v7 = 0x3FE0000000000000;
  v4 = xmmword_25792C830;
  v5 = 0x3FF0000000000000;
  std::vector<math_color::rgb>::insert(a2, 0, a1, &v6);
  std::vector<BT_2111::rgb>::push_back[abi:ne200100](a2, __dst);
  std::vector<BT_2111::rgb>::push_back[abi:ne200100](a2, &v4);
  std::vector<BT_2111::rgb>::__insert_with_size[abi:ne200100]<std::__wrap_iter<BT_2111::rgb const*>,std::__wrap_iter<BT_2111::rgb const*>>(a2, *(a2 + 8), __p, v9, 0xAAAAAAAAAAAAAAABLL * ((v9 - __p) >> 3));
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }
}

void sub_2578E5C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *std::vector<math_color::rgb>::insert(void *a1, char *__src, unint64_t a3, unint64_t a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) >= a3)
  {
    v15 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __src) >> 3);
    v16 = a1[1];
    v17 = a3;
    if (a3 <= v15)
    {
LABEL_16:
      v21 = &__src[24 * a3];
      v22 = &v16[-24 * a3];
      v23 = v16;
      if (v22 < v8)
      {
        v23 = v16;
        do
        {
          v24 = *v22;
          *(v23 + 2) = *(v22 + 16);
          *v23 = v24;
          v23 += 24;
          v22 += 24;
        }

        while (v22 < v8);
      }

      a1[1] = v23;
      if (v16 != v21)
      {
        memmove(&__src[24 * a3], __src, v16 - v21);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v25 = 0;
        }

        else
        {
          v25 = a3;
        }

        v5 += 24 * v25;
      }

      v26 = __src;
      do
      {
        v27 = *v5;
        *(v26 + 2) = *(v5 + 16);
        *v26 = v27;
        v26 += 24;
        --v17;
      }

      while (v17);
      return __src;
    }

    v18 = 0;
    v16 = &v8[24 * (a3 - v15)];
    do
    {
      v19 = &v8[v18];
      v20 = *a4;
      *(v19 + 2) = *(a4 + 16);
      *v19 = v20;
      v18 += 24;
    }

    while (24 * a3 - 8 * ((v8 - __src) >> 3) != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __src) >> 3);
      goto LABEL_16;
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 - 0x5555555555555555 * (&v8[-*a1] >> 3);
  if (v11 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  v12 = __src - v10;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3);
  if (2 * v13 > v11)
  {
    v11 = 2 * v13;
  }

  if (v13 >= 0x555555555555555)
  {
    v14 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    std::allocator<CMTime>::allocate_at_least[abi:ne200100](a1, v14);
  }

  v28 = 8 * (v12 >> 3);
  v29 = (v28 + 24 * a3);
  v30 = 24 * a3;
  v31 = v28;
  do
  {
    v32 = *a4;
    *(v31 + 16) = *(a4 + 16);
    *v31 = v32;
    v31 += 24;
    v30 -= 24;
  }

  while (v30);
  memcpy(v29, __src, a1[1] - __src);
  v33 = *a1;
  v34 = &v29[a1[1] - __src];
  a1[1] = __src;
  v35 = (__src - v33);
  v36 = (v28 - (__src - v33));
  memcpy(v36, v33, v35);
  v37 = *a1;
  *a1 = v36;
  a1[1] = v34;
  a1[2] = 0;
  if (v37)
  {
    operator delete(v37);
  }

  return v28;
}

uint64_t ColorSequence::ColorSequence(uint64_t a1, uint64_t *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *a1 = &unk_2868CE648;
  *(a1 + 8) = 0;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = a5;
  *(a1 + 40) = a6;
  *(a1 + 48) = a7;
  *(a1 + 56) = a8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb*,math_color::rgb*>(a1 + 64, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  return a1;
}

BOOL ColorSequence::render_monochrome_plane<PixelFormatTraits<1278226488u>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v2 < v3)
  {
    *__b = 0u;
    *__len = 0u;
    makeCroppedImageBufferView<unsigned char>(a2, 1, 1, __b, *(a1 + 48) - *(a1 + 32) * 0.5, *(a1 + 56) - *(a1 + 40) * 0.5, *(a1 + 32), *(a1 + 40));
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v20[0] = 1;
    v21 = 0x1000000FFLL;
    v22 = 128;
    v11 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v11 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v13 = math_color::YCC_coder::YPbPr_to_YCbCr(v20, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v11 - _D0));
    v14 = __len[0];
    if (__len[0])
    {
      v15 = __b[1];
      if (__b[1])
      {
        v16 = v13;
        v17 = __len[1];
        v18 = __b[0];
        do
        {
          memset(v18, v16, v14);
          v18 += v17;
          --v15;
        }

        while (v15);
      }
    }
  }

  return v2 < v3;
}

BOOL ColorSequence::render_monochrome_plane<PixelFormatTraits<1278226736u>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v2 < v3)
  {
    v34 = 0u;
    v35 = 0u;
    makeCroppedImageBufferView<unsigned short>(a2, 1, 1, &v34, *(a1 + 48) - *(a1 + 32) * 0.5, *(a1 + 56) - *(a1 + 40) * 0.5, *(a1 + 32), *(a1 + 40));
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v31[0] = 1;
    v32 = 0x4000003FFLL;
    v33 = 512;
    v11 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v11 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v13 = math_color::YCC_coder::YPbPr_to_YCbCr(v31, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v11 - _D0));
    if (v35)
    {
      v14 = *(&v34 + 1);
      if (*(&v34 + 1))
      {
        v15 = 0;
        v16 = v13 << 6;
        v17 = vdupq_n_s64(v35 - 1);
        v18 = vdupq_n_s64(8uLL);
        v19 = *(&v35 + 1);
        v20 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
        v21 = (v34 + 8);
        do
        {
          v22 = v21;
          v23 = v20;
          v24 = xmmword_25792BAF0;
          v25 = xmmword_25792BAE0;
          v26 = xmmword_25792BB10;
          v27 = xmmword_25792BB00;
          do
          {
            v28 = vmovn_s64(vcgeq_u64(v17, v24));
            if (vuzp1_s8(vuzp1_s16(v28, *v17.i8), *v17.i8).u8[0])
            {
              *(v22 - 4) = v16;
            }

            if (vuzp1_s8(vuzp1_s16(v28, *&v17), *&v17).i8[1])
            {
              *(v22 - 3) = v16;
            }

            if (vuzp1_s8(vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v25))), *&v17).i8[2])
            {
              *(v22 - 2) = v16;
              *(v22 - 1) = v16;
            }

            v29 = vmovn_s64(vcgeq_u64(v17, v26));
            if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i32[1])
            {
              *v22 = v16;
            }

            if (vuzp1_s8(*&v17, vuzp1_s16(v29, *&v17)).i8[5])
            {
              v22[1] = v16;
            }

            if (vuzp1_s8(*&v17, vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v27)))).i8[6])
            {
              v22[2] = v16;
              v22[3] = v16;
            }

            v26 = vaddq_s64(v26, v18);
            v25 = vaddq_s64(v25, v18);
            v24 = vaddq_s64(v24, v18);
            v22 += 8;
            v27 = vaddq_s64(v27, v18);
            v23 -= 8;
          }

          while (v23);
          ++v15;
          v21 = (v21 + v19);
        }

        while (v15 != v14);
      }
    }
  }

  return v2 < v3;
}

void ColorSequence::~ColorSequence(ColorSequence *this)
{
  *this = &unk_2868CE648;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_2868CE648;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x259C68350);
}

BOOL ColorSequence::render_4xx<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v5 = a2[2];
  v6 = a4;
  if (v5 != a3[2] * a4)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v8 = a2[1];
  v9 = a5;
  if (v8 != a3[1] * a5)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v11 = *(a1 + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v11 < v12)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = (*(a1 + 48) - v13 * 0.5) * v5;
    v16 = (*(a1 + 56) - v14 * 0.5) * v8;
    v17 = v15 + v5 * v13;
    v18 = (a4 - 1);
    v19 = v16 + v8 * v14;
    v20 = (v15 + v18) / a4;
    v21 = v20 * a4;
    v22 = (v17 + v18);
    v23 = (a5 - 1);
    v24 = (v16 + v23) / a5;
    v25 = v24 * a5;
    v26 = v22 - v21 - v22 % a4;
    v27 = (v19 + v23) - v25 - (v19 + v23) % a5;
    v28 = v26 / v6;
    *__b = 0u;
    *__len = 0u;
    v29 = v27 / v9;
    makeCroppedImageBufferView<unsigned char>(a2, v21, v25, v26, v27, __b);
    v65 = 0u;
    v66 = 0u;
    makeCroppedImageBufferView<unsigned short>(a3, v20, v24, v28, v29, &v65);
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v62[0] = 0;
    v63 = 0x1000000FFLL;
    v64 = 128;
    v35 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v35 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v37 = math_color::YCC_coder::YPbPr_to_YCbCr(v62, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v35 - _D0));
    v39 = v38;
    v40 = __len[0];
    if (__len[0])
    {
      v41 = __b[1];
      if (__b[1])
      {
        v42 = __len[1];
        v43 = __b[0];
        do
        {
          memset(v43, v37, v40);
          v43 += v42;
          --v41;
        }

        while (v41);
      }
    }

    v44 = *(&v65 + 1);
    if (v66)
    {
      _ZF = *(&v65 + 1) == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v46 = 0;
      v47 = BYTE4(v37) | (v39 << 8);
      v48 = vdupq_n_s64(v66 - 1);
      v49 = vdupq_n_s64(8uLL);
      v50 = *(&v66 + 1);
      v51 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v65 + 8);
      do
      {
        v53 = v52;
        v54 = v51;
        v55 = xmmword_25792BAF0;
        v56 = xmmword_25792BAE0;
        v57 = xmmword_25792BB10;
        v58 = xmmword_25792BB00;
        do
        {
          v59 = vmovn_s64(vcgeq_u64(v48, v55));
          if (vuzp1_s8(vuzp1_s16(v59, *v48.i8), *v48.i8).u8[0])
          {
            *(v53 - 4) = v47;
          }

          if (vuzp1_s8(vuzp1_s16(v59, *&v48), *&v48).i8[1])
          {
            *(v53 - 3) = v47;
          }

          if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v56))), *&v48).i8[2])
          {
            *(v53 - 2) = v47;
            *(v53 - 1) = v47;
          }

          v60 = vmovn_s64(vcgeq_u64(v48, v57));
          if (vuzp1_s8(*&v48, vuzp1_s16(v60, *&v48)).i32[1])
          {
            *v53 = v47;
          }

          if (vuzp1_s8(*&v48, vuzp1_s16(v60, *&v48)).i8[5])
          {
            v53[1] = v47;
          }

          if (vuzp1_s8(*&v48, vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v58)))).i8[6])
          {
            v53[2] = v47;
            v53[3] = v47;
          }

          v57 = vaddq_s64(v57, v49);
          v56 = vaddq_s64(v56, v49);
          v55 = vaddq_s64(v55, v49);
          v53 += 8;
          v58 = vaddq_s64(v58, v49);
          v54 -= 8;
        }

        while (v54);
        ++v46;
        v52 = (v52 + v50);
      }

      while (v46 != v44);
    }
  }

  return v11 < v12;
}

BOOL ColorSequence::render_4xx<PixelFormatTraits<875704422u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v5 = a2[2];
  v6 = a4;
  if (v5 != a3[2] * a4)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v8 = a2[1];
  v9 = a5;
  if (v8 != a3[1] * a5)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v11 = *(a1 + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v11 < v12)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = (*(a1 + 48) - v13 * 0.5) * v5;
    v16 = (*(a1 + 56) - v14 * 0.5) * v8;
    v17 = v15 + v5 * v13;
    v18 = (a4 - 1);
    v19 = v16 + v8 * v14;
    v20 = (v15 + v18) / a4;
    v21 = v20 * a4;
    v22 = (v17 + v18);
    v23 = (a5 - 1);
    v24 = (v16 + v23) / a5;
    v25 = v24 * a5;
    v26 = v22 - v21 - v22 % a4;
    v27 = (v19 + v23) - v25 - (v19 + v23) % a5;
    v28 = v26 / v6;
    *__b = 0u;
    *__len = 0u;
    v29 = v27 / v9;
    makeCroppedImageBufferView<unsigned char>(a2, v21, v25, v26, v27, __b);
    v65 = 0u;
    v66 = 0u;
    makeCroppedImageBufferView<unsigned short>(a3, v20, v24, v28, v29, &v65);
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v62[0] = 1;
    v63 = 0x1000000FFLL;
    v64 = 128;
    v35 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v35 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v37 = math_color::YCC_coder::YPbPr_to_YCbCr(v62, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v35 - _D0));
    v39 = v38;
    v40 = __len[0];
    if (__len[0])
    {
      v41 = __b[1];
      if (__b[1])
      {
        v42 = __len[1];
        v43 = __b[0];
        do
        {
          memset(v43, v37, v40);
          v43 += v42;
          --v41;
        }

        while (v41);
      }
    }

    v44 = *(&v65 + 1);
    if (v66)
    {
      _ZF = *(&v65 + 1) == 0;
    }

    else
    {
      _ZF = 1;
    }

    if (!_ZF)
    {
      v46 = 0;
      v47 = BYTE4(v37) | (v39 << 8);
      v48 = vdupq_n_s64(v66 - 1);
      v49 = vdupq_n_s64(8uLL);
      v50 = *(&v66 + 1);
      v51 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
      v52 = (v65 + 8);
      do
      {
        v53 = v52;
        v54 = v51;
        v55 = xmmword_25792BAF0;
        v56 = xmmword_25792BAE0;
        v57 = xmmword_25792BB10;
        v58 = xmmword_25792BB00;
        do
        {
          v59 = vmovn_s64(vcgeq_u64(v48, v55));
          if (vuzp1_s8(vuzp1_s16(v59, *v48.i8), *v48.i8).u8[0])
          {
            *(v53 - 4) = v47;
          }

          if (vuzp1_s8(vuzp1_s16(v59, *&v48), *&v48).i8[1])
          {
            *(v53 - 3) = v47;
          }

          if (vuzp1_s8(vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v56))), *&v48).i8[2])
          {
            *(v53 - 2) = v47;
            *(v53 - 1) = v47;
          }

          v60 = vmovn_s64(vcgeq_u64(v48, v57));
          if (vuzp1_s8(*&v48, vuzp1_s16(v60, *&v48)).i32[1])
          {
            *v53 = v47;
          }

          if (vuzp1_s8(*&v48, vuzp1_s16(v60, *&v48)).i8[5])
          {
            v53[1] = v47;
          }

          if (vuzp1_s8(*&v48, vuzp1_s16(*&v48, vmovn_s64(vcgeq_u64(v48, *&v58)))).i8[6])
          {
            v53[2] = v47;
            v53[3] = v47;
          }

          v57 = vaddq_s64(v57, v49);
          v56 = vaddq_s64(v56, v49);
          v55 = vaddq_s64(v55, v49);
          v53 += 8;
          v58 = vaddq_s64(v58, v49);
          v54 -= 8;
        }

        while (v54);
        ++v46;
        v52 = (v52 + v50);
      }

      while (v46 != v44);
    }
  }

  return v11 < v12;
}

BOOL ColorSequence::render_4xx<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v5 = a2[2];
  v6 = a4;
  if (v5 != a3[2] * a4)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v8 = a2[1];
  v9 = a5;
  if (v8 != a3[1] * a5)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v11 = *(a1 + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v11 < v12)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = (*(a1 + 48) - v13 * 0.5) * v5;
    v16 = (*(a1 + 56) - v14 * 0.5) * v8;
    v17 = v15 + v5 * v13;
    v18 = (a4 - 1);
    v19 = v16 + v8 * v14;
    v20 = (v15 + v18) / a4;
    v21 = v20 * a4;
    v22 = (v17 + v18);
    v23 = (a5 - 1);
    v24 = (v16 + v23) / a5;
    v25 = v24 * a5;
    v26 = v22 - v21 - v22 % a4;
    v27 = (v19 + v23) - v25 - (v19 + v23) % a5;
    v28 = v26 / v6;
    v75 = 0u;
    v76 = 0u;
    v29 = v27 / v9;
    makeCroppedImageBufferView<unsigned short>(a2, v21, v25, v26, v27, &v75);
    v73 = 0u;
    v74 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a3, v20, v24, v28, v29, &v73);
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v70[0] = 0;
    v71 = 0x4000003FFLL;
    v72 = 512;
    v36 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v36 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v38 = math_color::YCC_coder::YPbPr_to_YCbCr(v70, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v36 - _D0));
    if (v76)
    {
      v40 = *(&v75 + 1);
      if (*(&v75 + 1))
      {
        v41 = 0;
        v42 = v38 << 6;
        v43 = vdupq_n_s64(v76 - 1);
        v44 = vdupq_n_s64(8uLL);
        v45 = *(&v76 + 1);
        v46 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v47 = (v75 + 8);
        do
        {
          v48 = v47;
          v49 = v46;
          v50 = xmmword_25792BAF0;
          v51 = xmmword_25792BAE0;
          v52 = xmmword_25792BB10;
          v53 = xmmword_25792BB00;
          do
          {
            v54 = vmovn_s64(vcgeq_u64(v43, v50));
            if (vuzp1_s8(vuzp1_s16(v54, *v43.i8), *v43.i8).u8[0])
            {
              *(v48 - 4) = v42;
            }

            if (vuzp1_s8(vuzp1_s16(v54, *&v43), *&v43).i8[1])
            {
              *(v48 - 3) = v42;
            }

            if (vuzp1_s8(vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, *&v51))), *&v43).i8[2])
            {
              *(v48 - 2) = v42;
              *(v48 - 1) = v42;
            }

            v55 = vmovn_s64(vcgeq_u64(v43, v52));
            if (vuzp1_s8(*&v43, vuzp1_s16(v55, *&v43)).i32[1])
            {
              *v48 = v42;
            }

            if (vuzp1_s8(*&v43, vuzp1_s16(v55, *&v43)).i8[5])
            {
              v48[1] = v42;
            }

            if (vuzp1_s8(*&v43, vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, *&v53)))).i8[6])
            {
              v48[2] = v42;
              v48[3] = v42;
            }

            v52 = vaddq_s64(v52, v44);
            v51 = vaddq_s64(v51, v44);
            v50 = vaddq_s64(v50, v44);
            v48 += 8;
            v53 = vaddq_s64(v53, v44);
            v49 -= 8;
          }

          while (v49);
          ++v41;
          v47 = (v47 + v45);
        }

        while (v41 != v40);
      }
    }

    if (v74)
    {
      v56 = *(&v73 + 1);
      if (*(&v73 + 1))
      {
        v57 = 0;
        v58 = (v38 >> 26) & 0xFFC0 | (v39 << 22);
        v59 = vdupq_n_s64(v74 - 1);
        v60 = vdupq_n_s64(4uLL);
        v61 = *(&v74 + 1);
        v62 = (v74 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v63 = (v73 + 8);
        do
        {
          v64 = v63;
          v65 = v62;
          v66 = xmmword_25792BAF0;
          v67 = xmmword_25792BAE0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v59, v66));
            if (vuzp1_s16(v68, *v59.i8).u8[0])
            {
              *(v64 - 2) = v58;
            }

            if (vuzp1_s16(v68, *&v59).i8[2])
            {
              *(v64 - 1) = v58;
            }

            if (vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v59, *&v67))).i32[1])
            {
              *v64 = v58;
              v64[1] = v58;
            }

            v67 = vaddq_s64(v67, v60);
            v66 = vaddq_s64(v66, v60);
            v64 += 4;
            v65 -= 4;
          }

          while (v65);
          ++v57;
          v63 = (v63 + v61);
        }

        while (v57 != v56);
      }
    }
  }

  return v11 < v12;
}

BOOL ColorSequence::render_4xx<PixelFormatTraits<2019963440u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v5 = a2[2];
  v6 = a4;
  if (v5 != a3[2] * a4)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v8 = a2[1];
  v9 = a5;
  if (v8 != a3[1] * a5)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v11 = *(a1 + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v11 < v12)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = (*(a1 + 48) - v13 * 0.5) * v5;
    v16 = (*(a1 + 56) - v14 * 0.5) * v8;
    v17 = v15 + v5 * v13;
    v18 = (a4 - 1);
    v19 = v16 + v8 * v14;
    v20 = (v15 + v18) / a4;
    v21 = v20 * a4;
    v22 = (v17 + v18);
    v23 = (a5 - 1);
    v24 = (v16 + v23) / a5;
    v25 = v24 * a5;
    v26 = v22 - v21 - v22 % a4;
    v27 = (v19 + v23) - v25 - (v19 + v23) % a5;
    v28 = v26 / v6;
    v75 = 0u;
    v76 = 0u;
    v29 = v27 / v9;
    makeCroppedImageBufferView<unsigned short>(a2, v21, v25, v26, v27, &v75);
    v73 = 0u;
    v74 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a3, v20, v24, v28, v29, &v73);
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v70[0] = 1;
    v71 = 0x4000003FFLL;
    v72 = 512;
    v36 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v36 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v38 = math_color::YCC_coder::YPbPr_to_YCbCr(v70, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v36 - _D0));
    if (v76)
    {
      v40 = *(&v75 + 1);
      if (*(&v75 + 1))
      {
        v41 = 0;
        v42 = v38 << 6;
        v43 = vdupq_n_s64(v76 - 1);
        v44 = vdupq_n_s64(8uLL);
        v45 = *(&v76 + 1);
        v46 = (v76 + 7) & 0xFFFFFFFFFFFFFFF8;
        v47 = (v75 + 8);
        do
        {
          v48 = v47;
          v49 = v46;
          v50 = xmmword_25792BAF0;
          v51 = xmmword_25792BAE0;
          v52 = xmmword_25792BB10;
          v53 = xmmword_25792BB00;
          do
          {
            v54 = vmovn_s64(vcgeq_u64(v43, v50));
            if (vuzp1_s8(vuzp1_s16(v54, *v43.i8), *v43.i8).u8[0])
            {
              *(v48 - 4) = v42;
            }

            if (vuzp1_s8(vuzp1_s16(v54, *&v43), *&v43).i8[1])
            {
              *(v48 - 3) = v42;
            }

            if (vuzp1_s8(vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, *&v51))), *&v43).i8[2])
            {
              *(v48 - 2) = v42;
              *(v48 - 1) = v42;
            }

            v55 = vmovn_s64(vcgeq_u64(v43, v52));
            if (vuzp1_s8(*&v43, vuzp1_s16(v55, *&v43)).i32[1])
            {
              *v48 = v42;
            }

            if (vuzp1_s8(*&v43, vuzp1_s16(v55, *&v43)).i8[5])
            {
              v48[1] = v42;
            }

            if (vuzp1_s8(*&v43, vuzp1_s16(*&v43, vmovn_s64(vcgeq_u64(v43, *&v53)))).i8[6])
            {
              v48[2] = v42;
              v48[3] = v42;
            }

            v52 = vaddq_s64(v52, v44);
            v51 = vaddq_s64(v51, v44);
            v50 = vaddq_s64(v50, v44);
            v48 += 8;
            v53 = vaddq_s64(v53, v44);
            v49 -= 8;
          }

          while (v49);
          ++v41;
          v47 = (v47 + v45);
        }

        while (v41 != v40);
      }
    }

    if (v74)
    {
      v56 = *(&v73 + 1);
      if (*(&v73 + 1))
      {
        v57 = 0;
        v58 = (v38 >> 26) & 0xFFC0 | (v39 << 22);
        v59 = vdupq_n_s64(v74 - 1);
        v60 = vdupq_n_s64(4uLL);
        v61 = *(&v74 + 1);
        v62 = (v74 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v63 = (v73 + 8);
        do
        {
          v64 = v63;
          v65 = v62;
          v66 = xmmword_25792BAF0;
          v67 = xmmword_25792BAE0;
          do
          {
            v68 = vmovn_s64(vcgeq_u64(v59, v66));
            if (vuzp1_s16(v68, *v59.i8).u8[0])
            {
              *(v64 - 2) = v58;
            }

            if (vuzp1_s16(v68, *&v59).i8[2])
            {
              *(v64 - 1) = v58;
            }

            if (vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v59, *&v67))).i32[1])
            {
              *v64 = v58;
              v64[1] = v58;
            }

            v67 = vaddq_s64(v67, v60);
            v66 = vaddq_s64(v66, v60);
            v64 += 4;
            v65 -= 4;
          }

          while (v65);
          ++v57;
          v63 = (v63 + v61);
        }

        while (v57 != v56);
      }
    }
  }

  return v11 < v12;
}

BOOL ColorSequence::render_4xx<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v5 = a2[2];
  v6 = a4;
  if (v5 != a3[2] * a4)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v8 = a2[1];
  v9 = a5;
  if (v8 != a3[1] * a5)
  {
    ColorSequence::render_4xx<PixelFormatTraits<875704438u>>();
  }

  v11 = *(a1 + 8);
  v12 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 72) - *(a1 + 64)) >> 3);
  if (v11 < v12)
  {
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = (*(a1 + 48) - v13 * 0.5) * v5;
    v16 = (*(a1 + 56) - v14 * 0.5) * v8;
    v17 = v15 + v5 * v13;
    v18 = (a4 - 1);
    v19 = v16 + v8 * v14;
    v20 = (v15 + v18) / a4;
    v21 = v20 * a4;
    v22 = (v17 + v18);
    v23 = (a5 - 1);
    v24 = (v16 + v23) / a5;
    v25 = v24 * a5;
    v26 = v22 - v21 - v22 % a4;
    v27 = (v19 + v23) - v25 - (v19 + v23) % a5;
    v28 = v26 / v6;
    v74 = 0u;
    v75 = 0u;
    v29 = v27 / v9;
    makeCroppedImageBufferView<unsigned short>(a2, v21, v25, v26, v27, &v74);
    v72 = 0u;
    v73 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a3, v20, v24, v28, v29, &v72);
    _Q1 = *(a1 + 16);
    __asm { FMOV            V4.2D, #-2.0 }

    v69[0] = 0;
    v70 = 0x1000000FFFFLL;
    v71 = 0x8000;
    v36 = *(a1 + 64) + 24 * *(a1 + 8);
    *&_Q4 = *(v36 + 16);
    __asm { FMLA            D0, D4, V1.D[1]; double }

    v38 = math_color::YCC_coder::YPbPr_to_YCbCr(v69, _D0, 0.5 / (1.0 - *(&_Q1 + 1)) * (*&_Q4 - _D0), 0.5 / (1.0 - *&_Q1) * (*v36 - _D0));
    if (v75)
    {
      v40 = *(&v74 + 1);
      if (*(&v74 + 1))
      {
        v41 = 0;
        v42 = vdupq_n_s64(v75 - 1);
        v43 = vdupq_n_s64(8uLL);
        v44 = *(&v75 + 1);
        v45 = (v75 + 7) & 0xFFFFFFFFFFFFFFF8;
        v46 = (v74 + 8);
        do
        {
          v47 = v46;
          v48 = v45;
          v49 = xmmword_25792BAF0;
          v50 = xmmword_25792BAE0;
          v51 = xmmword_25792BB10;
          v52 = xmmword_25792BB00;
          do
          {
            v53 = vmovn_s64(vcgeq_u64(v42, v49));
            if (vuzp1_s8(vuzp1_s16(v53, *v42.i8), *v42.i8).u8[0])
            {
              *(v47 - 4) = v38;
            }

            if (vuzp1_s8(vuzp1_s16(v53, *&v42), *&v42).i8[1])
            {
              *(v47 - 3) = v38;
            }

            if (vuzp1_s8(vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, *&v50))), *&v42).i8[2])
            {
              *(v47 - 2) = v38;
              *(v47 - 1) = v38;
            }

            v54 = vmovn_s64(vcgeq_u64(v42, v51));
            if (vuzp1_s8(*&v42, vuzp1_s16(v54, *&v42)).i32[1])
            {
              *v47 = v38;
            }

            if (vuzp1_s8(*&v42, vuzp1_s16(v54, *&v42)).i8[5])
            {
              v47[1] = v38;
            }

            if (vuzp1_s8(*&v42, vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, *&v52)))).i8[6])
            {
              v47[2] = v38;
              v47[3] = v38;
            }

            v51 = vaddq_s64(v51, v43);
            v50 = vaddq_s64(v50, v43);
            v49 = vaddq_s64(v49, v43);
            v47 += 8;
            v52 = vaddq_s64(v52, v43);
            v48 -= 8;
          }

          while (v48);
          ++v41;
          v46 = (v46 + v44);
        }

        while (v41 != v40);
      }
    }

    if (v73)
    {
      v55 = *(&v72 + 1);
      if (*(&v72 + 1))
      {
        v56 = 0;
        v57 = WORD2(v38) | (v39 << 16);
        v58 = vdupq_n_s64(v73 - 1);
        v59 = vdupq_n_s64(4uLL);
        v60 = *(&v73 + 1);
        v61 = (v73 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v62 = (v72 + 8);
        do
        {
          v63 = v62;
          v64 = v61;
          v65 = xmmword_25792BAF0;
          v66 = xmmword_25792BAE0;
          do
          {
            v67 = vmovn_s64(vcgeq_u64(v58, v65));
            if (vuzp1_s16(v67, *v58.i8).u8[0])
            {
              *(v63 - 2) = v57;
            }

            if (vuzp1_s16(v67, *&v58).i8[2])
            {
              *(v63 - 1) = v57;
            }

            if (vuzp1_s16(*&v58, vmovn_s64(vcgeq_u64(v58, *&v66))).i32[1])
            {
              *v63 = v57;
              v63[1] = v57;
            }

            v66 = vaddq_s64(v66, v59);
            v65 = vaddq_s64(v65, v59);
            v63 += 4;
            v64 -= 4;
          }

          while (v64);
          ++v56;
          v62 = (v62 + v60);
        }

        while (v56 != v55);
      }
    }
  }

  return v11 < v12;
}

uint64_t RecursiveQuads::RecursiveQuads(uint64_t result, int a2, int a3, int a4, int *a5, _DWORD *a6)
{
  *result = &unk_2868CE718;
  *(result + 8) = a2;
  *(result + 12) = a3;
  *(result + 16) = 0;
  v6 = *a5;
  *(result + 24) = a4;
  *(result + 28) = v6;
  *(result + 32) = a5[1];
  *(result + 36) = a5[2];
  *(result + 40) = a5[3];
  *(result + 44) = *a6;
  *(result + 48) = a6[1];
  *(result + 52) = a6[2];
  *(result + 56) = a6[3];
  return result;
}

int32x2_t RecursiveQuads::setFrame(int32x2_t *this, unsigned int a2)
{
  result = vmul_s32(this[1], vdup_n_s32(a2));
  this[2] = result;
  return result;
}

void *render_recursive_quads<unsigned char,0>(void *a1, size_t a2, unint64_t a3, size_t a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a6 & 0x80000001) != 0)
  {
LABEL_5:
    render_recursive_quads<unsigned char,0>();
  }

  v14 = a7 - a6;
  while (v14)
  {
    v15 = a6 - 2;
    v20 = a6;
    render_recursive_quads<unsigned char,0>(a1, a2, a3);
    v16 = a2 + (a4 >> 1);
    v19 = v16;
    a4 -= a4 >> 1;
    render_recursive_quads<unsigned char,0>(a1, v16, a3);
    a3 += a5 >> 1;
    a5 -= a5 >> 1;
    render_recursive_quads<unsigned char,0>(a1, a2, a3);
    a8 += *(a9 + 12) << v15;
    v14 += 2;
    a2 = v19;
    a6 = v15;
    if (v20 <= 1)
    {
      goto LABEL_5;
    }
  }

  return fill_rect<unsigned char>(a1, a2, a3, a4, a5, a8);
}

void *render_recursive_quads<unsigned short,6>(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a6 & 0x80000001) != 0)
  {
LABEL_5:
    render_recursive_quads<unsigned char,0>();
  }

  v14 = a7 - a6;
  while (v14)
  {
    v15 = a6 - 2;
    v20 = a6;
    render_recursive_quads<unsigned short,6>(a1, a2, a3);
    v16 = a2 + (a4 >> 1);
    v19 = v16;
    a4 -= a4 >> 1;
    render_recursive_quads<unsigned short,6>(a1, v16, a3);
    a3 += a5 >> 1;
    a5 -= a5 >> 1;
    render_recursive_quads<unsigned short,6>(a1, a2, a3);
    a8 += *(a9 + 12) << v15;
    v14 += 2;
    a2 = v19;
    a6 = v15;
    if (v20 <= 1)
    {
      goto LABEL_5;
    }
  }

  return fill_rect<unsigned short>(a1, a2, a3, a4, a5, (a8 & 0x3FFu) << 6);
}

void *RecursiveQuads::render_420<PixelFormatTraits<875704438u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void *RecursiveQuads::render_420<PixelFormatTraits<875704422u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void *RecursiveQuads::render_420<PixelFormatTraits<2016686640u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void *RecursiveQuads::render_420<PixelFormatTraits<2019963440u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    RecursiveQuads::render_420<PixelFormatTraits<875704438u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void *RecursiveQuads::render_422<PixelFormatTraits<875704950u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void *RecursiveQuads::render_422<PixelFormatTraits<875704934u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void *RecursiveQuads::render_422<PixelFormatTraits<2016686642u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void *RecursiveQuads::render_422<PixelFormatTraits<2019963442u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void *RecursiveQuads::render_422<PixelFormatTraits<1937125938u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_422<PixelFormatTraits<875704950u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void *RecursiveQuads::render_444<PixelFormatTraits<875836534u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void *RecursiveQuads::render_444<PixelFormatTraits<875836518u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void *RecursiveQuads::render_444<PixelFormatTraits<2016687156u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void *RecursiveQuads::render_444<PixelFormatTraits<2019963956u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void *RecursiveQuads::render_444<PixelFormatTraits<1937126452u>>(int *a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    RecursiveQuads::render_444<PixelFormatTraits<875836534u>>();
  }

  return RecursiveQuads::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void *RecursiveQuads::render_4xx<PixelFormatTraits<875704438u>>(int *a1, void *a2, void *a3)
{
  result = render_recursive_quads<unsigned char,0>(a2, 0, 0, a2[2], a2[1], 8, 0, a1[4], (a1 + 7));
  v6 = a1[6];
  switch(v6)
  {
    case 2:

      return render_chroma_gradient_blocks<unsigned char,8,0,false>(a3, 16, 16);
    case 1:
      return render_recursive_quads<math_color::CbCr<unsigned char>,0>(a3, 0, 0, a3[2], a3[1], 8, 0, a1[5], (a1 + 11));
    case 0:
      v8 = a3[1];
      v7 = a3[2];

      return fill_rect<unsigned short>(a3, 0, 0, v7, v8, 32896);
  }

  return result;
}

void *render_recursive_quads<math_color::CbCr<unsigned char>,0>(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a6 & 0x80000001) != 0)
  {
LABEL_5:
    render_recursive_quads<unsigned char,0>();
  }

  v14 = a7 - a6;
  while (v14)
  {
    v15 = a6 - 2;
    v20 = a6;
    render_recursive_quads<math_color::CbCr<unsigned char>,0>(a1, a2, a3);
    v16 = a2 + (a4 >> 1);
    v19 = v16;
    a4 -= a4 >> 1;
    render_recursive_quads<math_color::CbCr<unsigned char>,0>(a1, v16, a3);
    a3 += a5 >> 1;
    a5 -= a5 >> 1;
    render_recursive_quads<math_color::CbCr<unsigned char>,0>(a1, a2, a3);
    a8 += *(a9 + 12) << v15;
    v14 += 2;
    a2 = v19;
    a6 = v15;
    if (v20 <= 1)
    {
      goto LABEL_5;
    }
  }

  return fill_rect<unsigned short>(a1, a2, a3, a4, a5, a8 | (a8 << 8));
}

void *render_chroma_gradient_blocks<unsigned char,8,0,false>(void *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result[2];
    v15 = result[1];
    v6 = (a3 - 1);
    v17 = a3;
    do
    {
      v18 = v4 + 1;
      if (a2 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v15 * v4 / v17;
        v10 = llround((v4 / v6 + -0.5) * 224.0 + 128.0);
        if (v10 >= 255)
        {
          v10 = 255;
        }

        v11 = (v10 & ~(v10 >> 31)) << 8;
        do
        {
          v12 = v8 / (a2 - 1) + -0.5;
          v13 = v7 / a2;
          ++v8;
          v7 += v5;
          v14 = llround(v12 * 224.0 + 128.0);
          if (v14 >= 255)
          {
            v14 = 255;
          }

          result = fill_rect<unsigned short>(v3, v13, v9, v7 / a2 - v13, v15 * v18 / v17 - v9, v11 | (v14 & ~(v14 >> 31)));
        }

        while (a2 != v8);
      }

      v4 = v18;
    }

    while (v18 != v17);
  }

  return result;
}

void *RecursiveQuads::render_4xx<PixelFormatTraits<875704422u>>(int *a1, void *a2, void *a3)
{
  result = render_recursive_quads<unsigned char,0>(a2, 0, 0, a2[2], a2[1], 8, 0, a1[4], (a1 + 7));
  v6 = a1[6];
  switch(v6)
  {
    case 2:

      return render_chroma_gradient_blocks<unsigned char,8,0,true>(a3, 16, 16);
    case 1:
      return render_recursive_quads<math_color::CbCr<unsigned char>,0>(a3, 0, 0, a3[2], a3[1], 8, 0, a1[5], (a1 + 11));
    case 0:
      v8 = a3[1];
      v7 = a3[2];

      return fill_rect<unsigned short>(a3, 0, 0, v7, v8, 32896);
  }

  return result;
}

void *render_chroma_gradient_blocks<unsigned char,8,0,true>(void *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result[2];
    v15 = result[1];
    v17 = a3;
    v6 = (a3 - 1);
    do
    {
      v18 = v4 + 1;
      if (a2 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v15 * v4 / v17;
        v10 = llround((v4 / v6 + -0.5) * 255.0 + 128.0 + 1.0e-12);
        if (v10 >= 255)
        {
          v10 = 255;
        }

        v11 = (v10 & ~(v10 >> 31)) << 8;
        do
        {
          v12 = v8 / (a2 - 1) + -0.5;
          v13 = v7 / a2;
          ++v8;
          v7 += v5;
          v14 = llround(v12 * 255.0 + 128.0 + 1.0e-12);
          if (v14 >= 255)
          {
            v14 = 255;
          }

          result = fill_rect<unsigned short>(v3, v13, v9, v7 / a2 - v13, v15 * v18 / v17 - v9, v11 | (v14 & ~(v14 >> 31)));
        }

        while (a2 != v8);
      }

      v4 = v18;
    }

    while (v18 != v17);
  }

  return result;
}

void *RecursiveQuads::render_4xx<PixelFormatTraits<2016686640u>>(int *a1, void *a2, void *a3)
{
  result = render_recursive_quads<unsigned short,6>(a2, 0, 0, a2[2], a2[1], 10, 0, a1[4], (a1 + 7));
  v6 = a1[6];
  switch(v6)
  {
    case 2:

      return render_chroma_gradient_blocks<unsigned short,10,6,false>(a3, 32, 32);
    case 1:
      return render_recursive_quads<math_color::CbCr<unsigned short>,6>(a3, 0, 0, a3[2], a3[1], 10, 0, a1[5], (a1 + 11));
    case 0:
      v8 = a3[1];
      v7 = a3[2];

      return fill_rect<unsigned int>(a3, 0, 0, v7, v8, -2147450880);
  }

  return result;
}

void *render_recursive_quads<math_color::CbCr<unsigned short>,6>(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a6 & 0x80000001) != 0)
  {
LABEL_5:
    render_recursive_quads<unsigned char,0>();
  }

  v14 = a7 - a6;
  while (v14)
  {
    v15 = a6 - 2;
    v20 = a6;
    render_recursive_quads<math_color::CbCr<unsigned short>,6>(a1, a2, a3);
    v16 = a2 + (a4 >> 1);
    v19 = v16;
    a4 -= a4 >> 1;
    render_recursive_quads<math_color::CbCr<unsigned short>,6>(a1, v16, a3);
    a3 += a5 >> 1;
    a5 -= a5 >> 1;
    render_recursive_quads<math_color::CbCr<unsigned short>,6>(a1, a2, a3);
    a8 += *(a9 + 12) << v15;
    v14 += 2;
    a2 = v19;
    a6 = v15;
    if (v20 <= 1)
    {
      goto LABEL_5;
    }
  }

  return fill_rect<unsigned int>(a1, a2, a3, a4, a5, ((a8 & 0x3FF) << 6) | (a8 << 22));
}

void *render_chroma_gradient_blocks<unsigned short,10,6,false>(void *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = (a3 - 1);
    v6 = result[2];
    v15 = result[1];
    v17 = a3;
    do
    {
      v18 = v4 + 1;
      if (a2 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v15 * v4 / v17;
        v10 = llround(((v4 / v5 + -0.5) * 224.0 + 128.0) * 4.0);
        if (v10 >= 1023)
        {
          v10 = 1023;
        }

        v11 = (v10 & ~(v10 >> 31)) << 22;
        do
        {
          v12 = v8 / (a2 - 1) + -0.5;
          v13 = v7 / a2;
          ++v8;
          v7 += v6;
          v14 = llround((v12 * 224.0 + 128.0) * 4.0);
          if (v14 >= 1023)
          {
            v14 = 1023;
          }

          result = fill_rect<unsigned int>(v3, v13, v9, v7 / a2 - v13, v15 * v18 / v17 - v9, v11 | ((v14 & ~(v14 >> 31)) << 6));
        }

        while (a2 != v8);
      }

      v4 = v18;
    }

    while (v18 != v17);
  }

  return result;
}

void *RecursiveQuads::render_4xx<PixelFormatTraits<2019963440u>>(int *a1, void *a2, void *a3)
{
  result = render_recursive_quads<unsigned short,6>(a2, 0, 0, a2[2], a2[1], 10, 0, a1[4], (a1 + 7));
  v6 = a1[6];
  switch(v6)
  {
    case 2:

      return render_chroma_gradient_blocks<unsigned short,10,6,true>(a3, 32, 32);
    case 1:
      return render_recursive_quads<math_color::CbCr<unsigned short>,6>(a3, 0, 0, a3[2], a3[1], 10, 0, a1[5], (a1 + 11));
    case 0:
      v8 = a3[1];
      v7 = a3[2];

      return fill_rect<unsigned int>(a3, 0, 0, v7, v8, -2147450880);
  }

  return result;
}

void *render_chroma_gradient_blocks<unsigned short,10,6,true>(void *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = result[2];
    v15 = result[1];
    v17 = a3;
    v6 = (a3 - 1);
    do
    {
      v18 = v4 + 1;
      if (a2 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v15 * v4 / v17;
        v10 = llround((v4 / v6 + -0.5) * 1023.0 + 512.0 + 1.0e-12);
        if (v10 >= 1023)
        {
          v10 = 1023;
        }

        v11 = (v10 & ~(v10 >> 31)) << 22;
        do
        {
          v12 = v8 / (a2 - 1) + -0.5;
          v13 = v7 / a2;
          ++v8;
          v7 += v5;
          v14 = llround(v12 * 1023.0 + 512.0 + 1.0e-12);
          if (v14 >= 1023)
          {
            v14 = 1023;
          }

          result = fill_rect<unsigned int>(v3, v13, v9, v7 / a2 - v13, v15 * v18 / v17 - v9, v11 | ((v14 & ~(v14 >> 31)) << 6));
        }

        while (a2 != v8);
      }

      v4 = v18;
    }

    while (v18 != v17);
  }

  return result;
}

void *RecursiveQuads::render_4xx<PixelFormatTraits<1937125938u>>(int *a1, void *a2, void *a3)
{
  result = render_recursive_quads<unsigned short,0>(a2, 0, 0, a2[2], a2[1], 16, 0, a1[4], (a1 + 7));
  v6 = a1[6];
  switch(v6)
  {
    case 2:

      return render_chroma_gradient_blocks<unsigned short,16,0,false>(a3, 256, 256);
    case 1:
      return render_recursive_quads<math_color::CbCr<unsigned short>,0>(a3, 0, 0, a3[2], a3[1], 16, 0, a1[5], (a1 + 11));
    case 0:
      v8 = a3[1];
      v7 = a3[2];

      return fill_rect<unsigned int>(a3, 0, 0, v7, v8, -2147450880);
  }

  return result;
}

void *render_recursive_quads<unsigned short,0>(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a6 & 0x80000001) != 0)
  {
LABEL_5:
    render_recursive_quads<unsigned char,0>();
  }

  v14 = a7 - a6;
  while (v14)
  {
    v15 = a6 - 2;
    v20 = a6;
    render_recursive_quads<unsigned short,0>(a1, a2, a3);
    v16 = a2 + (a4 >> 1);
    v19 = v16;
    a4 -= a4 >> 1;
    render_recursive_quads<unsigned short,0>(a1, v16, a3);
    a3 += a5 >> 1;
    a5 -= a5 >> 1;
    render_recursive_quads<unsigned short,0>(a1, a2, a3);
    a8 += *(a9 + 12) << v15;
    v14 += 2;
    a2 = v19;
    a6 = v15;
    if (v20 <= 1)
    {
      goto LABEL_5;
    }
  }

  return fill_rect<unsigned short>(a1, a2, a3, a4, a5, a8);
}

void *render_recursive_quads<math_color::CbCr<unsigned short>,0>(void *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int a6, int a7, int a8, uint64_t a9)
{
  if ((a6 & 0x80000001) != 0)
  {
LABEL_5:
    render_recursive_quads<unsigned char,0>();
  }

  v14 = a7 - a6;
  while (v14)
  {
    v15 = a6 - 2;
    v20 = a6;
    render_recursive_quads<math_color::CbCr<unsigned short>,0>(a1, a2, a3);
    v16 = a2 + (a4 >> 1);
    v19 = v16;
    a4 -= a4 >> 1;
    render_recursive_quads<math_color::CbCr<unsigned short>,0>(a1, v16, a3);
    a3 += a5 >> 1;
    a5 -= a5 >> 1;
    render_recursive_quads<math_color::CbCr<unsigned short>,0>(a1, a2, a3);
    a8 += *(a9 + 12) << v15;
    v14 += 2;
    a2 = v19;
    a6 = v15;
    if (v20 <= 1)
    {
      goto LABEL_5;
    }
  }

  return fill_rect<unsigned int>(a1, a2, a3, a4, a5, a8 | (a8 << 16));
}

void *render_chroma_gradient_blocks<unsigned short,16,0,false>(void *result, int a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = (a3 - 1);
    v6 = result[2];
    v15 = result[1];
    v17 = a3;
    do
    {
      v18 = v4 + 1;
      if (a2 >= 1)
      {
        v7 = 0;
        v8 = 0;
        v9 = v15 * v4 / v17;
        v10 = llround(((v4 / v5 + -0.5) * 224.0 + 128.0) * 256.0);
        if (v10 >= 0xFFFF)
        {
          v10 = 0xFFFF;
        }

        v11 = (v10 & ~(v10 >> 31)) << 16;
        do
        {
          v12 = v7 / a2;
          v7 += v6;
          v13 = ((v8++ / (a2 - 1) + -0.5) * 224.0 + 128.0) * 256.0;
          v14 = llround(v13);
          if (v14 >= 0xFFFF)
          {
            v14 = 0xFFFF;
          }

          result = fill_rect<unsigned int>(v3, v12, v9, v7 / a2 - v12, v15 * v18 / v17 - v9, v14 & ~(v14 >> 31) | v11);
        }

        while (a2 != v8);
      }

      v4 = v18;
    }

    while (v18 != v17);
  }

  return result;
}

uint64_t ITU_R_BT2111::ITU_R_BT2111(uint64_t result, int a2)
{
  *result = &unk_2868CE7E8;
  *(result + 8) = a2;
  return result;
}

uint64_t ITU_R_BT2111::render_x420(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) == 2)
  {
    ITU_R_BT2111::render_x420();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3, 2, 2);
}

uint64_t ITU_R_BT2111::render_xf20(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) != 2)
  {
    ITU_R_BT2111::render_xf20();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3, 2, 2);
}

uint64_t ITU_R_BT2111::render_x422(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) == 2)
  {
    ITU_R_BT2111::render_x422();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686642u>>(a1, a2, a3, 2, 1);
}

uint64_t ITU_R_BT2111::render_xf22(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) != 2)
  {
    ITU_R_BT2111::render_xf22();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<2019963442u>>(a1, a2, a3, 2, 1);
}

uint64_t ITU_R_BT2111::render_sv22(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) == 2)
  {
    ITU_R_BT2111::render_sv22();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3, 2, 1);
}

uint64_t ITU_R_BT2111::render_x444(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) == 2)
  {
    ITU_R_BT2111::render_x444();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<2016687156u>>(a1, a2, a3, 1, 1);
}

uint64_t ITU_R_BT2111::render_xf44(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) != 2)
  {
    ITU_R_BT2111::render_xf44();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<2019963956u>>(a1, a2, a3, 1, 1);
}

uint64_t ITU_R_BT2111::render_sv44(uint64_t a1, void *a2, void *a3)
{
  if (*(a1 + 8) == 2)
  {
    ITU_R_BT2111::render_sv44();
  }

  return ITU_R_BT2111::render_4xx<PixelFormatTraits<1937126452u>>(a1, a2, a3, 1, 1);
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 10, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(2016686640))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(2016686640);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 10;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578E9EE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::render_row<PixelFormatTraits<2016686640u>,std::initializer_list<anonymous namespace::Feature>>(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, void *a6, int a7, int a8)
{
  v8 = a5[1];
  v35 = (a4 + a3);
  v42 = xmmword_25792C8D0;
  v43 = xmmword_25792C8E0;
  v44 = xmmword_25792C8F0;
  v45 = xmmword_25792C900;
  v46 = 0x3FFE1A36E2EB1C43;
  v47[0] = 0;
  v48 = 0x4000003FFLL;
  v49 = 512;
  v9 = *(a2 + 8);
  if (v9)
  {
    v13 = 0;
    v14 = (a8 - 1);
    v15 = ((v8 * v35) / 1080.0 + v14);
    v16 = ((v8 * a3) / 1080.0 + v14) / a8;
    v17 = v15 - (v15 % a8 + v16 * a8);
    v18 = (a7 - 1);
    v38 = v17;
    v39 = v16 * a8;
    v19 = *a2;
    v36 = v17 / a8;
    v37 = v16;
    v20 = 8 * v9;
    do
    {
      v21 = *v19++;
      v41 = v21;
      v22 = std::map<BT_2111::SignalLevel,BT_2111::rgb>::at(a1, &v41);
      v23 = v22[2];
      v24 = v22[1] * *&v43 + *&v42 * *v22 + *(&v42 + 1) * v23;
      v25 = math_color::YCC_coder::YPbPr_to_YCbCr(v47, v24, *(&v43 + 1) * (v23 - v24), *&v44 * (*v22 - v24));
      v27 = v26;
      v28 = SHIDWORD(v41) + v13;
      v29 = a5[2];
      v30 = (v29 * v28) / 1920.0;
      v31 = (v29 * v13) / 1920.0;
      LODWORD(v29) = (v31 + v18);
      v32 = v29 / a7;
      v33 = (v29 % a7 - v29 - (v30 + v18) % a7 + (v30 + v18)) / a7;
      fill_rect<unsigned short>(a5, v31, v39, v30 - v31, v38, (v25 & 0x3FF) << 6);
      fill_rect<unsigned int>(a6, v32, v37, v33, v36, (v25 >> 26) & 0xFFC0 | (v27 << 22));
      v13 = v28;
      v20 -= 8;
    }

    while (v20);
  }

  return v35;
}

void *anonymous namespace::render_ramp<unsigned short,6>(void *a1, int a2)
{
  v2 = a1[1];
  v3 = (a2 - 1);
  v4 = ((720 * v2) / 1080.0 + v3) / a2 * a2;
  return fill_h_ramp<unsigned short>(a1, ((799 * a1[2]) / 1920.0), v4, ((1813 * a1[2]) / 1920.0) - ((799 * a1[2]) / 1920.0), ((810 * v2) / 1080.0 + v3) - (((810 * v2) / 1080.0 + v3) % a2 + v4), 0x140u, 65152);
}

void anonymous namespace::AddLabel<unsigned short>(uint64_t a1, unint64_t a2, unint64_t a3, const char *a4, int a5, CGFloat a6)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
  v17 = CGBitmapContextCreate(v12, v14, v13, 0x10uLL, v15, v16, 0x1000u);
  CGColorSpaceRelease(v16);
  v18 = CTFontCreateWithName(@"Helvetica", ((*(a1 + 8) * a5) / 1080.0), 0);
  GenericGrayGamma2_2 = CGColorCreateGenericGrayGamma2_2(a6, 1.0);
  v20 = *MEMORY[0x277CC49C0];
  keys[0] = *MEMORY[0x277CC4838];
  keys[1] = v20;
  values[0] = v18;
  values[1] = GenericGrayGamma2_2;
  v21 = CFDictionaryCreate(0, keys, values, 2, 0, 0);
  v22 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], a4, 0x8000100u);
  v23 = CFAttributedStringCreate(0, v22, v21);
  v24 = CTLineCreateWithAttributedString(v23);
  BoundsWithOptions = CTLineGetBoundsWithOptions(v24, 0);
  Width = CGRectGetWidth(BoundsWithOptions);
  CGContextSetTextPosition(v17, (a2 + Width * -0.5), a3);
  CTLineDraw(v24, v17);
  CFRelease(v24);
  CFRelease(v23);
  CFRelease(v22);
  CFRelease(v21);
  CFRelease(GenericGrayGamma2_2);
  CFRelease(v18);
  CGContextRelease(v17);
}

uint64_t *std::map<BT_2111::SignalLevel,BT_2111::rgb>::at(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = *(v2 + 8);
      if (v3 >= v4)
      {
        break;
      }

      v2 = *v2;
      if (!v2)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= v3)
    {
      return v2 + 5;
    }

    v2 = v2[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<2019963440u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<2019963440u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 10, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(2019963440))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(2019963440);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 10;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578EAAAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

double cinematic_bars::render_cinematic_bars<PixelFormatTraits<2019963440u>>@<D0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, _OWORD *a5@<X8>, double a6@<D0>)
{
  v9 = *(a1 + 1);
  v39 = *a1;
  v40 = v9;
  v10 = *(a2 + 1);
  v37 = *a2;
  v38 = v10;
  v11 = a1[1];
  v12 = a1[2];
  v13 = v12 - llround(v11 * a6);
  if (v13 >= 1)
  {
    v14 = v13 - (v13 >> 1);
    v15 = (v13 >> 1) / a3;
    v35 = 0u;
    v36 = 0u;
    v16 = v14 / a3;
    makeCroppedImageBufferView<unsigned short>(a1, 0, 0, v13 >> 1, v11, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned short>(a1, a1[2] - v14, 0, v14, a1[1], &v33);
    makeCroppedImageBufferView<unsigned short>(a1, v13 >> 1, 0, a1[2] - v13, a1[1], &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, 0, v15, a2[1], &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, a2[2] - v16, 0, v16, a2[1], &v29);
    v17 = a2[1];
    v18 = a2[2] - v15 - v16;
    v19 = a2;
    v20 = v15;
    v21 = 0;
LABEL_5:
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(v19, v20, v21, v18, v17, &v37);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<2019963440u>>(&v35, &v31);
    cinematic_bars::fill_buffer_black<PixelFormatTraits<2019963440u>>(&v33, &v29);
    goto LABEL_6;
  }

  v22 = v11 - llround(v12 / a6);
  if (v22 >= 1)
  {
    v23 = v22 - (v22 >> 1);
    v24 = (v22 >> 1) / a4;
    v35 = 0u;
    v36 = 0u;
    v25 = v23 / a4;
    makeCroppedImageBufferView<unsigned short>(a1, 0, 0, v12, v22 >> 1, &v35);
    v33 = 0u;
    v34 = 0u;
    makeCroppedImageBufferView<unsigned short>(a1, 0, a1[1] - v23, a1[2], v23, &v33);
    makeCroppedImageBufferView<unsigned short>(a1, 0, v22 >> 1, a1[2], a1[1] - v22, &v39);
    v31 = 0u;
    v32 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, 0, a2[2], v24, &v31);
    v29 = 0u;
    v30 = 0u;
    makeCroppedImageBufferView<math_color::CbCr<unsigned short>>(a2, 0, a2[1] - v25, a2[2], v25, &v29);
    v18 = a2[2];
    v17 = a2[1] - v24 - v25;
    v19 = a2;
    v20 = 0;
    v21 = v24;
    goto LABEL_5;
  }

LABEL_6:
  v26 = v40;
  *a5 = v39;
  a5[1] = v26;
  result = *&v37;
  v28 = v38;
  a5[2] = v37;
  a5[3] = v28;
  return result;
}

uint64_t anonymous namespace::render_row<PixelFormatTraits<2019963440u>,std::initializer_list<anonymous namespace::Feature>>(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, void *a6, int a7, int a8)
{
  v8 = a5[1];
  v35 = (a4 + a3);
  v42 = xmmword_25792C8D0;
  v43 = xmmword_25792C8E0;
  v44 = xmmword_25792C8F0;
  v45 = xmmword_25792C900;
  v46 = 0x3FFE1A36E2EB1C43;
  v47[0] = 1;
  v48 = 0x4000003FFLL;
  v49 = 512;
  v9 = *(a2 + 8);
  if (v9)
  {
    v13 = 0;
    v14 = (a8 - 1);
    v15 = ((v8 * v35) / 1080.0 + v14);
    v16 = ((v8 * a3) / 1080.0 + v14) / a8;
    v17 = v15 - (v15 % a8 + v16 * a8);
    v18 = (a7 - 1);
    v38 = v17;
    v39 = v16 * a8;
    v19 = *a2;
    v36 = v17 / a8;
    v37 = v16;
    v20 = 8 * v9;
    do
    {
      v21 = *v19++;
      v41 = v21;
      v22 = std::map<BT_2111::SignalLevel,BT_2111::rgb>::at(a1, &v41);
      v23 = v22[2];
      v24 = v22[1] * *&v43 + *&v42 * *v22 + *(&v42 + 1) * v23;
      v25 = math_color::YCC_coder::YPbPr_to_YCbCr(v47, v24, *(&v43 + 1) * (v23 - v24), *&v44 * (*v22 - v24));
      v27 = v26;
      v28 = SHIDWORD(v41) + v13;
      v29 = a5[2];
      v30 = (v29 * v28) / 1920.0;
      v31 = (v29 * v13) / 1920.0;
      LODWORD(v29) = (v31 + v18);
      v32 = v29 / a7;
      v33 = (v29 % a7 - v29 - (v30 + v18) % a7 + (v30 + v18)) / a7;
      fill_rect<unsigned short>(a5, v31, v39, v30 - v31, v38, (v25 & 0x3FF) << 6);
      fill_rect<unsigned int>(a6, v32, v37, v33, v36, (v25 >> 26) & 0xFFC0 | (v27 << 22));
      v13 = v28;
      v20 -= 8;
    }

    while (v20);
  }

  return v35;
}

void *cinematic_bars::fill_buffer_black<PixelFormatTraits<2019963440u>>(void *a1, void *a2)
{
  v8[0] = 1;
  v9 = 0x4000003FFLL;
  v10 = 512;
  v4 = math_color::YCC_coder::YPbPr_to_YCbCr(v8, 0.0, 0.0, 0.0);
  v6 = v5;
  fill_rect<unsigned short>(a1, 0, 0, a1[2], a1[1], (v4 & 0x3FF) << 6);
  return fill_rect<unsigned int>(a2, 0, 0, a2[2], a2[1], (v4 >> 26) & 0xFFC0 | (v6 << 22));
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686642u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 10, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(2016686642))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(2016686642);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 10;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578EB694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<2019963442u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<2019963440u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 10, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(2019963442))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(2019963442);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 10;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578EBCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<1937125938u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 12, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(1937125938))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(1937125938);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 12;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578EC34C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::render_row<PixelFormatTraits<1937125938u>,std::initializer_list<anonymous namespace::Feature>>(uint64_t a1, uint64_t a2, int a3, int a4, void *a5, void *a6, int a7, int a8)
{
  v8 = a5[1];
  v36 = (a4 + a3);
  v43 = xmmword_25792C8D0;
  v44 = xmmword_25792C8E0;
  v45 = xmmword_25792C8F0;
  v46 = xmmword_25792C900;
  v47 = 0x3FFE1A36E2EB1C43;
  v48[0] = 0;
  v49 = 0x1000000FFFLL;
  v50 = 2048;
  v9 = *(a2 + 8);
  if (v9)
  {
    v13 = 0;
    v14 = (a8 - 1);
    v15 = ((v8 * v36) / 1080.0 + v14);
    v16 = ((v8 * a3) / 1080.0 + v14) / a8;
    v17 = v15 - (v15 % a8 + v16 * a8);
    v18 = (a7 - 1);
    v39 = v17;
    v40 = v16 * a8;
    v19 = *a2;
    v37 = v17 / a8;
    v38 = v16;
    v20 = 8 * v9;
    do
    {
      v21 = *v19++;
      v42 = v21;
      v22 = std::map<BT_2111::SignalLevel,BT_2111::rgb>::at(a1, &v42);
      v23 = v22[2];
      v24 = v22[1] * *&v44 + *&v43 * *v22 + *(&v43 + 1) * v23;
      v25 = math_color::YCC_coder::YPbPr_to_YCbCr(v48, v24, *(&v44 + 1) * (v23 - v24), *&v45 * (*v22 - v24));
      v27 = v26;
      v28 = (v25 >> 28) & 0xFFF0;
      v29 = SHIDWORD(v42) + v13;
      v30 = a5[2];
      v31 = (v30 * v29) / 1920.0;
      v32 = (v30 * v13) / 1920.0;
      LODWORD(v30) = (v32 + v18);
      v33 = v30 / a7;
      v34 = (v30 % a7 - v30 - (v31 + v18) % a7 + (v31 + v18)) / a7;
      fill_rect<unsigned short>(a5, v32, v40, v31 - v32, v39, 16 * (v25 & 0xFFF));
      fill_rect<unsigned int>(a6, v33, v38, v34, v37, v28 | (v27 << 20));
      v13 = v29;
      v20 -= 8;
    }

    while (v20);
  }

  return v36;
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<2016687156u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<2016686640u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 10, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(2016687156))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(2016687156);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 10;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578ECC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<2019963956u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<2019963440u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 10, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(2019963956))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(2019963956);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 10;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578ED264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t ITU_R_BT2111::render_4xx<PixelFormatTraits<1937126452u>>(uint64_t a1, void *a2, void *a3, int a4, int a5)
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  if (v6 != a3[2] * a4)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v8 = a2[1];
  if (v8 != a3[1] * a5)
  {
    ITU_R_BT2111::render_4xx<PixelFormatTraits<2016686640u>>();
  }

  v9 = 0;
  if (v6 >= 0x180 && v8 >= 0xD8)
  {
    cinematic_bars::render_cinematic_bars<PixelFormatTraits<1937125938u>>(a2, a3, a4, a5, &v32, 1.77777778);
    BT_2111::calculated_values(*(a1 + 8), 12, v31);
    v49 = 90;
    v51 = 540;
    v53 = 90;
    v55 = 90;
    v57 = 270;
    v39 = 90;
    v41 = 540;
    v43 = 90;
    v45 = 90;
    v47 = 270;
    v11 = *(a1 + 8);
    if (v11)
    {
      if (v11 != 1)
      {
        v9 = 0;
LABEL_44:
        std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(v31, v31[1]);
        return v9;
      }

      v12 = 0;
      v13 = &v38;
      v14 = 120;
      v15 = "PQ";
      do
      {
        v13 = (v13 + 24);
        v14 -= 24;
      }

      while (v14);
    }

    else
    {
      v16 = &v48;
      v17 = 120;
      v15 = "HLG";
      do
      {
        v16 = (v16 + 24);
        v17 -= 24;
      }

      while (v17);
    }

    v18 = v33;
    if (pixelFormat_is_444(1937126452))
    {
      v19 = "4:4:4";
    }

    else
    {
      is_422 = pixelFormat_is_422(1937126452);
      v19 = "4:2:0";
      if (is_422)
      {
        v19 = "4:2:2";
      }
    }

    v60 = 396;
    v58[0] = v15;
    v59 = v19;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 2;
    v36 = v58;
    v37 = 396;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{} {}", 5, &v35);
    v21 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v30 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__dst, __src, *(&v62 + 1));
    }

    *(&__dst + v21) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v30 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v23 = v33;
    v58[1] = 0;
    v59 = 3;
    v58[0] = 12;
    v61 = v65;
    v62 = xmmword_25792B5B0;
    v63 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
    v64 = 0;
    __src = v65;
    v35 = 1;
    v36 = v58;
    v37 = 3;
    std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v61, "{}-bit precision", 16, &v35);
    v24 = *(&v62 + 1);
    if (*(&v62 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (*(&v62 + 1) >= 0x17uLL)
    {
      operator new();
    }

    v28 = BYTE8(v62);
    if (*(&v62 + 1))
    {
      memmove(&__p, __src, *(&v62 + 1));
    }

    *(&__p + v24) = 0;
    if (__src != v65)
    {
      operator delete(__src);
    }

    if (v28 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v28 < 0)
    {
      operator delete(__p);
    }

    if (v30 < 0)
    {
      operator delete(__dst);
    }

    v9 = 1;
    goto LABEL_44;
  }

  return v9;
}

void sub_2578ED8C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a23, a24);
  _Unwind_Resume(a1);
}

uint64_t Ramp::Ramp(uint64_t a1, uint64_t a2, int a3, double a4, double a5)
{
  *a1 = &unk_2868CE8B8;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v6 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = a3;
  __asm { FMOV            V2.2D, #0.5 }

  *(a1 + 96) = _Q2;
  *(a1 + 112) = 0x3FE0000000000000;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= 1)
  {
    __assert_rtn("Ramp", "Ramp_renderer.cpp", 184, "rgbColors.size() >= 2");
  }

  std::vector<math_color::YPbPr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<math_color::YPbPr const*>,std::__wrap_iter<math_color::YPbPr const*>>(v6, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return a1;
}

void sub_2578EDA3C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  Ramp::Ramp(v1 + 32);
  _Unwind_Resume(a1);
}

void anonymous namespace::transform_rgb_to_YPbPr(double **a1, uint64_t a2, double a3, double a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    v9 = 1.0 - a3 - a4;
    v10 = 0.5 / (1.0 - a3);
    do
    {
      v11 = v4[2];
      v12 = v9 * v4[1] + a3 * *v4 + a4 * v11;
      v13 = v10 * (*v4 - v12);
      *&v14 = v12;
      *(&v14 + 1) = 0.5 / (1.0 - a4) * (v11 - v12);
      v15 = v13;
      std::vector<BT_2111::rgb>::push_back[abi:ne200100](a2, &v14);
      v4 += 3;
    }

    while (v4 != v5);
  }
}

uint64_t Ramp::Ramp(uint64_t a1, uint64_t *a2, double a3, double a4, double a5)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb*,math_color::rgb*>(&__p, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  Ramp::Ramp(a1, &__p, 2, a3, a4);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  *(a1 + 112) = a5;
  return a1;
}

{
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<math_color::rgb>::__init_with_size[abi:ne200100]<math_color::rgb*,math_color::rgb*>(&__p, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  Ramp::Ramp(a1, &__p, 2, a3, a4);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  *(a1 + 112) = a5;
  return a1;
}

void sub_2578EDBC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2578EDC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Ramp::Ramp(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7)
{
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v9 = (a1 + 56);
  *a1 = &unk_2868CE8B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a4;
  *(a1 + 84) = 0;
  *(a1 + 88) = a5;
  __asm { FMOV            V0.2D, #0.5 }

  *(a1 + 96) = _Q0;
  *(a1 + 112) = 0x3FE0000000000000;
  v15 = *(a2 + 8) - *a2;
  if (0xAAAAAAAAAAAAAAABLL * (v15 >> 3) < 2 || v15 != *(a3 + 8) - *a3)
  {
    __assert_rtn("Ramp", "Ramp_renderer.cpp", 205, "rgbColors0.size() >= 2 && (rgbColors0.size() == rgbColors1.size())");
  }

  std::vector<math_color::YPbPr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<math_color::YPbPr const*>,std::__wrap_iter<math_color::YPbPr const*>>(v9, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return a1;
}

void sub_2578EDDCC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  Ramp::Ramp(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t Ramp::Ramp(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  *a1 = &unk_2868CE8B8;
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v8 = (a1 + 56);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 68) = 0u;
  *(a1 + 84) = a3;
  *(a1 + 88) = 2;
  *(a1 + 96) = a6;
  *(a1 + 104) = a7;
  *(a1 + 112) = a6;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3) <= 1)
  {
    __assert_rtn("Ramp", "Ramp_renderer.cpp", 223, "rgbColors.size() >= 2");
  }

  std::vector<math_color::YPbPr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<math_color::YPbPr const*>,std::__wrap_iter<math_color::YPbPr const*>>(v8, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return a1;
}

void sub_2578EDEE4(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  Ramp::Ramp(v1 + 32);
  _Unwind_Resume(a1);
}

uint64_t Ramp::Ramp(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6, double a7, double a8, double a9)
{
  *(a1 + 8) = 0u;
  *(a1 + 56) = 0u;
  v11 = (a1 + 56);
  *a1 = &unk_2868CE8B8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a4;
  *(a1 + 84) = a5;
  *(a1 + 88) = 2;
  *(a1 + 96) = a8;
  *(a1 + 104) = a9;
  *(a1 + 112) = a8;
  v12 = *(a2 + 8) - *a2;
  if (0xAAAAAAAAAAAAAAABLL * (v12 >> 3) < 2 || v12 != *(a3 + 8) - *a3)
  {
    __assert_rtn("Ramp", "Ramp_renderer.cpp", 240, "rgbColors0.size() >= 2 && (rgbColors0.size() == rgbColors1.size())");
  }

  std::vector<math_color::YPbPr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<math_color::YPbPr const*>,std::__wrap_iter<math_color::YPbPr const*>>(v11, *(a1 + 8), *(a1 + 16), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3));
  return a1;
}

void sub_2578EE03C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 64) = v4;
    operator delete(v4);
  }

  Ramp::Ramp(v1 + 32);
  _Unwind_Resume(a1);
}

void Ramp::setFrame(Ramp *this, unint64_t a2)
{
  v3 = *(this + 20);
  v4 = a2;
  if (v3 >= 1)
  {
    *(this + 8) = *(this + 7);
    v5 = *(this + 1);
    v6 = *(this + 2);
    if (v5 != v6)
    {
      v7 = vabdd_f64(round(v4 / v3), v4 / v3);
      v8 = v7 + v7;
      v9 = *(this + 4);
      do
      {
        v10 = std::__lerp[abi:ne200100]<double>(*v5, *v9, v8);
        v11 = std::__lerp[abi:ne200100]<double>(v5[1], v9[1], v8);
        v12 = std::__lerp[abi:ne200100]<double>(v5[2], v9[2], v8);
        *&v15 = v10;
        *(&v15 + 1) = v11;
        v16 = v12;
        std::vector<BT_2111::rgb>::push_back[abi:ne200100](this + 56, &v15);
        v5 += 3;
        v9 += 3;
      }

      while (v5 != v6);
    }
  }

  v13 = *(this + 21);
  if (v13 >= 1)
  {
    v14 = vabdd_f64(round(v4 / v13), v4 / v13);
    *(this + 14) = std::__lerp[abi:ne200100]<double>(*(this + 12), *(this + 13), v14 + v14);
  }
}

uint64_t Ramp::render_L008(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(a1 + 88);
  v23 = *(a1 + 112);
  v7 = a2[2];
  v22 = a2[3];
  v8 = v7 / (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1);
  v9 = *a2;
  v10 = 0.5;
  v11 = 0.5;
  do
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v12 = 0;
    v13 = 0;
    v14 = **(a1 + 56);
    v15 = -1.0;
    do
    {
      if (v15 <= v13)
      {
        v16 = *(a1 + 56);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - v16) >> 3) >= v12)
        {
          v10 = *(v16 + 24 * ++v12);
          v15 = v8 * v12;
          v11 = v14;
          v14 = v10;
        }
      }

      v18 = fmod(v13, v8) / (v8 + -1.0);
      if (v6 == 1)
      {
        v18 = (1.0 - cos(v18 * 3.14159265)) * 0.5;
      }

      else if (v6 == 2)
      {
        goto LABEL_13;
      }

      v19 = std::__lerp[abi:ne200100]<double>(v11, v10, v18);
LABEL_13:
      v20 = llround(v19 * 255.0 + 1.0e-12);
      if (v20 >= 255)
      {
        v20 = 255;
      }

      *(v9 + v13++) = v20 & ~(v20 >> 31);
      v7 = a2[2];
    }

    while (v13 < v7);
    v2 = a2[1];
LABEL_17:
    v9 += v22;
    ++v5;
  }

  while (v5 < v2);
  return 1;
}

uint64_t Ramp::render_L010(uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (!v2)
  {
    return 1;
  }

  v5 = 0;
  v6 = *(a1 + 88);
  v23 = *(a1 + 112);
  v7 = a2[2];
  v8 = v7 / (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1);
  v9 = *a2;
  v22 = 2 * (a2[3] >> 1);
  v10 = 0.5;
  v11 = 0.5;
  do
  {
    if (!v7)
    {
      goto LABEL_17;
    }

    v12 = 0;
    v13 = 0;
    v14 = **(a1 + 56);
    v15 = -1.0;
    do
    {
      if (v15 <= v13)
      {
        v16 = *(a1 + 56);
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - v16) >> 3) >= v12)
        {
          v10 = *(v16 + 24 * ++v12);
          v15 = v8 * v12;
          v11 = v14;
          v14 = v10;
        }
      }

      v18 = fmod(v13, v8) / (v8 + -1.0);
      if (v6 == 1)
      {
        v18 = (1.0 - cos(v18 * 3.14159265)) * 0.5;
      }

      else if (v6 == 2)
      {
        goto LABEL_13;
      }

      v19 = std::__lerp[abi:ne200100]<double>(v11, v10, v18);
LABEL_13:
      v20 = llround(v19 * 1023.0 + 1.0e-12);
      if (v20 >= 1023)
      {
        v20 = 1023;
      }

      *(v9 + 2 * v13++) = (v20 & ~(v20 >> 31)) << 6;
      v7 = a2[2];
    }

    while (v13 < v7);
    v2 = a2[1];
LABEL_17:
    ++v5;
    v9 += v22;
  }

  while (v5 < v2);
  return 1;
}

void Ramp::render_420<PixelFormatTraits<875704438u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  if (*(a2 + 8) != 2 * *(a3 + 8))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void Ramp::render_420<PixelFormatTraits<875704422u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  if (*(a2 + 8) != 2 * *(a3 + 8))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void Ramp::render_420<PixelFormatTraits<2016686640u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  if (*(a2 + 8) != 2 * *(a3 + 8))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void Ramp::render_420<PixelFormatTraits<2019963440u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  if (*(a2 + 8) != 2 * *(a3 + 8))
  {
    Ramp::render_420<PixelFormatTraits<875704438u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void Ramp::render_422<PixelFormatTraits<875704950u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void Ramp::render_422<PixelFormatTraits<875704934u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void Ramp::render_422<PixelFormatTraits<2016686642u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void Ramp::render_422<PixelFormatTraits<2019963442u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void Ramp::render_422<PixelFormatTraits<1937125938u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 2 * *(a3 + 16))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_422<PixelFormatTraits<875704950u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void Ramp::render_444<PixelFormatTraits<875836534u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void Ramp::render_444<PixelFormatTraits<875836518u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void Ramp::render_444<PixelFormatTraits<2016687156u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void Ramp::render_444<PixelFormatTraits<2019963956u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void Ramp::render_444<PixelFormatTraits<1937126452u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != *(a3 + 16))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  if (*(a2 + 8) != *(a3 + 8))
  {
    Ramp::render_444<PixelFormatTraits<875836534u>>();
  }

  Ramp::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void *std::vector<math_color::YPbPr>::__assign_with_size[abi:ne200100]<std::__wrap_iter<math_color::YPbPr const*>,std::__wrap_iter<math_color::YPbPr const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *result) >> 3) < a4)
  {
    if (v9)
    {
      result[1] = v9;
      operator delete(v9);
      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<math_color::rgb>::__vallocate[abi:ne200100](v7, v12);
    }

    std::vector<Area_renderer>::__throw_length_error[abi:ne200100]();
  }

  v13 = result[1];
  v14 = v13 - v9;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v9) >> 3) >= a4)
  {
    v20 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v20);
    }

    v19 = &v9[v20];
  }

  else
  {
    if (v13 != v9)
    {
      result = memmove(*result, __src, v13 - v9);
      v13 = v7[1];
    }

    v15 = &__src[v14];
    v16 = v13;
    if (&__src[v14] != a3)
    {
      v16 = v13;
      v17 = v13;
      do
      {
        v18 = *v15;
        *(v17 + 2) = *(v15 + 2);
        *v17 = v18;
        v17 += 24;
        v15 += 24;
        v16 += 24;
      }

      while (v15 != a3);
    }

    v19 = v16;
  }

  v7[1] = v19;
  return result;
}

double std::__lerp[abi:ne200100]<double>(double a1, double a2, double a3)
{
  if (a1 <= 0.0 && a2 >= 0.0 || a1 >= 0.0 && a2 <= 0.0)
  {
    return (1.0 - a3) * a1 + a3 * a2;
  }

  v4 = a3 <= 1.0;
  if (a3 != 1.0)
  {
    v5 = a1 + a3 * (a2 - a1);
    v6 = !v4;
    v7 = (a2 <= a1) ^ v6;
    if (v5 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v5;
    }

    if (v5 < a2)
    {
      a2 = v5;
    }

    if (v7)
    {
      return v8;
    }
  }

  return a2;
}

double anonymous namespace::raised_cosine_interpolator(_anonymous_namespace_ *this, double a2, double a3, double a4, double a5)
{
  v7 = a5 * 0.5 + 0.5;
  v8 = fabs(a4);
  v9 = 1.0;
  if (v8 > 1.0 - v7)
  {
    v9 = 0.0;
    if (v8 < v7)
    {
      v9 = (cos((v8 + v7 + -1.0) * 1.57079633 / (v7 + -0.5)) + 1.0) * 0.5;
    }
  }

  v10 = 1.0 - v9;

  return std::__lerp[abi:ne200100]<double>(a2, a3, v10);
}

void Ramp::render_4xx<PixelFormatTraits<875704438u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v4 = a1 + 56;
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v29 = v4;
  v30 = 0;
  v31 = v6;
  v32 = v7;
  v40 = 0;
  v41 = 0;
  v8 = *(a2 + 16);
  v43 = 0;
  v44 = 0;
  v42 = 0x3FE0000000000000;
  v9 = (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v5) >> 3) - 1);
  v38 = v8 / v9;
  v39 = xmmword_25792F5B0;
  v33 = 0;
  v10 = *(v5 + 2);
  v36 = *v5;
  v11 = *(v5 + 2);
  v37 = v10;
  v35 = v11;
  v34 = *v5;
  v13 = v4;
  v14 = 1;
  v15 = v6;
  v16 = v7;
  v24 = 0;
  v25 = 0;
  v12 = *(a3 + 16);
  v27 = 0;
  v28 = 0;
  v26 = 0x3FE0000000000000;
  v22 = v12 / v9;
  v23 = xmmword_25792F5B0;
  v17 = 0;
  v20 = *v5;
  v21 = *(v5 + 2);
  v18 = v20;
  v19 = v21;
}

void anonymous namespace::render_ramp<PixelFormatTraits<875704438u>,anonymous namespace::ColorRampInterpolator<PixelFormatTraits<875704438u>,std::vector<math_color::YPbPr>>>(uint64_t *a1, uint64_t **a2)
{
  if (a1[1])
  {
    v4 = 0;
    v41 = a1[3];
    v5 = *a1;
    while (1)
    {
      a2[11] = 0xBFF0000000000000;
      *(a2 + 6) = 0;
      v6 = **a2;
      v7 = *(v6 + 16);
      *(a2 + 7) = *v6;
      a2[9] = v7;
      v8 = *(v6 + 16);
      *(a2 + 2) = *v6;
      a2[6] = v8;
      if (a1[2])
      {
        break;
      }

LABEL_32:
      v5 += v41;
      if (++v4 >= a1[1])
      {
        return;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (*(a2 + 11) <= v10)
      {
        v12 = *(a2 + 6);
        v13 = *a2;
        v11 = *(a2 + 10);
        if (0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - **a2) >> 3) >= v12)
        {
          a2[6] = a2[9];
          *(a2 + 2) = *(a2 + 7);
          v14 = v12 + 1;
          *(a2 + 6) = v14;
          v15 = *v13 + 24 * v14;
          v16 = *v15;
          a2[9] = *(v15 + 16);
          *(a2 + 7) = v16;
          *(a2 + 11) = v11 * v14;
          v17 = *(a2 + 3);
          *(a2 + 6) = *(a2 + 2);
          *(a2 + 7) = v17;
          *(a2 + 8) = *(a2 + 4);
        }
      }

      else
      {
        v11 = *(a2 + 10);
      }

      v19 = fmod(v10, v11);
      v20 = *(a2 + 2);
      v21 = v19 / (v11 + -1.0);
      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v22 = *(a2 + 3);
        v23 = *(a2 + 12);
        v24 = *(a2 + 15);
        if (v22 == 1)
        {
          v32 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
          v33 = v23;
          v34 = v24;
        }

        else
        {
          if (v22 == 2)
          {
            goto LABEL_27;
          }

          v33 = *(a2 + 12);
          v34 = *(a2 + 15);
          v32 = v21;
        }

        v25 = std::__lerp[abi:ne200100]<double>(v33, v34, v32);
LABEL_27:
        v40 = llround(v25 * 219.0 + 16.0);
        if (v40 >= 255)
        {
          v40 = 255;
        }

        v38 = v40 & ~(v40 >> 31);
        v39 = v10;
LABEL_30:
        *(v5 + v39) = v38;
      }

      ++v10;
      v9 += 2;
      if (v10 >= a1[2])
      {
        goto LABEL_32;
      }
    }

    v26 = *(a2 + 3);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    if (v26 == 1)
    {
      v21 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
    }

    else if (v26 == 2)
    {
LABEL_20:
      v35 = llround(v29 * 224.0 + 128.0);
      if (v35 >= 255)
      {
        v35 = 255;
      }

      v36 = v35 & ~(v35 >> 31);
      v37 = llround(v31 * 224.0 + 128.0);
      if (v37 >= 255)
      {
        v37 = 255;
      }

      v38 = v37 & ~(v37 >> 31);
      *(v5 + v9) = v36;
      v39 = v9 + 1;
      goto LABEL_30;
    }

    v29 = std::__lerp[abi:ne200100]<double>(v27, v28, v21);
    v31 = std::__lerp[abi:ne200100]<double>(*(a2 + 14), *(a2 + 17), v21);
    goto LABEL_20;
  }
}

void Ramp::render_4xx<PixelFormatTraits<875704422u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v4 = a1 + 56;
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v29 = v4;
  v30 = 0;
  v31 = v6;
  v32 = v7;
  v40 = 0;
  v41 = 0;
  v8 = *(a2 + 16);
  v43 = 0;
  v44 = 0;
  v42 = 0x3FE0000000000000;
  v9 = (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v5) >> 3) - 1);
  v38 = v8 / v9;
  v39 = xmmword_25792F5B0;
  v33 = 0;
  v10 = *(v5 + 2);
  v36 = *v5;
  v11 = *(v5 + 2);
  v37 = v10;
  v35 = v11;
  v34 = *v5;
  v13 = v4;
  v14 = 1;
  v15 = v6;
  v16 = v7;
  v24 = 0;
  v25 = 0;
  v12 = *(a3 + 16);
  v27 = 0;
  v28 = 0;
  v26 = 0x3FE0000000000000;
  v22 = v12 / v9;
  v23 = xmmword_25792F5B0;
  v17 = 0;
  v20 = *v5;
  v21 = *(v5 + 2);
  v18 = v20;
  v19 = v21;
}

void anonymous namespace::render_ramp<PixelFormatTraits<875704422u>,anonymous namespace::ColorRampInterpolator<PixelFormatTraits<875704422u>,std::vector<math_color::YPbPr>>>(uint64_t *a1, uint64_t **a2)
{
  if (a1[1])
  {
    v4 = 0;
    v41 = a1[3];
    v5 = *a1;
    while (1)
    {
      a2[11] = 0xBFF0000000000000;
      *(a2 + 6) = 0;
      v6 = **a2;
      v7 = *(v6 + 16);
      *(a2 + 7) = *v6;
      a2[9] = v7;
      v8 = *(v6 + 16);
      *(a2 + 2) = *v6;
      a2[6] = v8;
      if (a1[2])
      {
        break;
      }

LABEL_32:
      v5 += v41;
      if (++v4 >= a1[1])
      {
        return;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (*(a2 + 11) <= v10)
      {
        v12 = *(a2 + 6);
        v13 = *a2;
        v11 = *(a2 + 10);
        if (0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - **a2) >> 3) >= v12)
        {
          a2[6] = a2[9];
          *(a2 + 2) = *(a2 + 7);
          v14 = v12 + 1;
          *(a2 + 6) = v14;
          v15 = *v13 + 24 * v14;
          v16 = *v15;
          a2[9] = *(v15 + 16);
          *(a2 + 7) = v16;
          *(a2 + 11) = v11 * v14;
          v17 = *(a2 + 3);
          *(a2 + 6) = *(a2 + 2);
          *(a2 + 7) = v17;
          *(a2 + 8) = *(a2 + 4);
        }
      }

      else
      {
        v11 = *(a2 + 10);
      }

      v19 = fmod(v10, v11);
      v20 = *(a2 + 2);
      v21 = v19 / (v11 + -1.0);
      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v22 = *(a2 + 3);
        v23 = *(a2 + 12);
        v24 = *(a2 + 15);
        if (v22 == 1)
        {
          v32 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
          v33 = v23;
          v34 = v24;
        }

        else
        {
          if (v22 == 2)
          {
            goto LABEL_27;
          }

          v33 = *(a2 + 12);
          v34 = *(a2 + 15);
          v32 = v21;
        }

        v25 = std::__lerp[abi:ne200100]<double>(v33, v34, v32);
LABEL_27:
        v40 = llround(v25 * 255.0 + 1.0e-12);
        if (v40 >= 255)
        {
          v40 = 255;
        }

        v38 = v40 & ~(v40 >> 31);
        v39 = v10;
LABEL_30:
        *(v5 + v39) = v38;
      }

      ++v10;
      v9 += 2;
      if (v10 >= a1[2])
      {
        goto LABEL_32;
      }
    }

    v26 = *(a2 + 3);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    if (v26 == 1)
    {
      v21 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
    }

    else if (v26 == 2)
    {
LABEL_20:
      v35 = llround(v29 * 255.0 + 128.0 + 1.0e-12);
      if (v35 >= 255)
      {
        v35 = 255;
      }

      v36 = v35 & ~(v35 >> 31);
      v37 = llround(v31 * 255.0 + 128.0 + 1.0e-12);
      if (v37 >= 255)
      {
        v37 = 255;
      }

      v38 = v37 & ~(v37 >> 31);
      *(v5 + v9) = v36;
      v39 = v9 + 1;
      goto LABEL_30;
    }

    v29 = std::__lerp[abi:ne200100]<double>(v27, v28, v21);
    v31 = std::__lerp[abi:ne200100]<double>(*(a2 + 14), *(a2 + 17), v21);
    goto LABEL_20;
  }
}

void Ramp::render_4xx<PixelFormatTraits<2016686640u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v4 = a1 + 56;
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v29 = v4;
  v30 = 0;
  v31 = v6;
  v32 = v7;
  v40 = 0;
  v41 = 0;
  v8 = *(a2 + 16);
  v43 = 0;
  v44 = 0;
  v42 = 0x3FE0000000000000;
  v9 = (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v5) >> 3) - 1);
  v38 = v8 / v9;
  v39 = xmmword_25792F5B0;
  v33 = 0;
  v10 = *(v5 + 2);
  v36 = *v5;
  v11 = *(v5 + 2);
  v37 = v10;
  v35 = v11;
  v34 = *v5;
  v13 = v4;
  v14 = 1;
  v15 = v6;
  v16 = v7;
  v24 = 0;
  v25 = 0;
  v12 = *(a3 + 16);
  v27 = 0;
  v28 = 0;
  v26 = 0x3FE0000000000000;
  v22 = v12 / v9;
  v23 = xmmword_25792F5B0;
  v17 = 0;
  v20 = *v5;
  v21 = *(v5 + 2);
  v18 = v20;
  v19 = v21;
}

void anonymous namespace::render_ramp<PixelFormatTraits<2016686640u>,anonymous namespace::ColorRampInterpolator<PixelFormatTraits<2016686640u>,std::vector<math_color::YPbPr>>>(uint64_t *a1, uint64_t **a2)
{
  if (a1[1])
  {
    v4 = 0;
    v5 = *a1;
    v41 = 2 * (a1[3] >> 1);
    while (1)
    {
      a2[11] = 0xBFF0000000000000;
      *(a2 + 6) = 0;
      v6 = **a2;
      v7 = *(v6 + 16);
      *(a2 + 7) = *v6;
      a2[9] = v7;
      v8 = *(v6 + 16);
      *(a2 + 2) = *v6;
      a2[6] = v8;
      if (a1[2])
      {
        break;
      }

LABEL_32:
      v5 += v41;
      if (++v4 >= a1[1])
      {
        return;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (*(a2 + 11) <= v10)
      {
        v12 = *(a2 + 6);
        v13 = *a2;
        v11 = *(a2 + 10);
        if (0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - **a2) >> 3) >= v12)
        {
          a2[6] = a2[9];
          *(a2 + 2) = *(a2 + 7);
          v14 = v12 + 1;
          *(a2 + 6) = v14;
          v15 = *v13 + 24 * v14;
          v16 = *v15;
          a2[9] = *(v15 + 16);
          *(a2 + 7) = v16;
          *(a2 + 11) = v11 * v14;
          v17 = *(a2 + 3);
          *(a2 + 6) = *(a2 + 2);
          *(a2 + 7) = v17;
          *(a2 + 8) = *(a2 + 4);
        }
      }

      else
      {
        v11 = *(a2 + 10);
      }

      v19 = fmod(v10, v11);
      v20 = *(a2 + 2);
      v21 = v19 / (v11 + -1.0);
      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v22 = *(a2 + 3);
        v23 = *(a2 + 12);
        v24 = *(a2 + 15);
        if (v22 == 1)
        {
          v32 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
          v33 = v23;
          v34 = v24;
        }

        else
        {
          if (v22 == 2)
          {
            goto LABEL_27;
          }

          v33 = *(a2 + 12);
          v34 = *(a2 + 15);
          v32 = v21;
        }

        v25 = std::__lerp[abi:ne200100]<double>(v33, v34, v32);
LABEL_27:
        v40 = llround((v25 * 219.0 + 16.0) * 4.0);
        if (v40 >= 1023)
        {
          v40 = 1023;
        }

        v38 = v40 & ~(v40 >> 31);
        v39 = v10;
LABEL_30:
        *(v5 + 2 * v39) = v38 << 6;
      }

      ++v10;
      v9 += 2;
      if (v10 >= a1[2])
      {
        goto LABEL_32;
      }
    }

    v26 = *(a2 + 3);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    if (v26 == 1)
    {
      v21 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
    }

    else if (v26 == 2)
    {
LABEL_20:
      v35 = llround((v29 * 224.0 + 128.0) * 4.0);
      if (v35 >= 1023)
      {
        v35 = 1023;
      }

      v36 = v35 & ~(v35 >> 31);
      v37 = llround((v31 * 224.0 + 128.0) * 4.0);
      if (v37 >= 1023)
      {
        v37 = 1023;
      }

      v38 = v37 & ~(v37 >> 31);
      *(v5 + 2 * v9) = v36 << 6;
      v39 = v9 + 1;
      goto LABEL_30;
    }

    v29 = std::__lerp[abi:ne200100]<double>(v27, v28, v21);
    v31 = std::__lerp[abi:ne200100]<double>(*(a2 + 14), *(a2 + 17), v21);
    goto LABEL_20;
  }
}

void Ramp::render_4xx<PixelFormatTraits<2019963440u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v4 = a1 + 56;
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v29 = v4;
  v30 = 0;
  v31 = v6;
  v32 = v7;
  v40 = 0;
  v41 = 0;
  v8 = *(a2 + 16);
  v43 = 0;
  v44 = 0;
  v42 = 0x3FE0000000000000;
  v9 = (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v5) >> 3) - 1);
  v38 = v8 / v9;
  v39 = xmmword_25792F5B0;
  v33 = 0;
  v10 = *(v5 + 2);
  v36 = *v5;
  v11 = *(v5 + 2);
  v37 = v10;
  v35 = v11;
  v34 = *v5;
  v13 = v4;
  v14 = 1;
  v15 = v6;
  v16 = v7;
  v24 = 0;
  v25 = 0;
  v12 = *(a3 + 16);
  v27 = 0;
  v28 = 0;
  v26 = 0x3FE0000000000000;
  v22 = v12 / v9;
  v23 = xmmword_25792F5B0;
  v17 = 0;
  v20 = *v5;
  v21 = *(v5 + 2);
  v18 = v20;
  v19 = v21;
}

void anonymous namespace::render_ramp<PixelFormatTraits<2019963440u>,anonymous namespace::ColorRampInterpolator<PixelFormatTraits<2019963440u>,std::vector<math_color::YPbPr>>>(uint64_t *a1, uint64_t **a2)
{
  if (a1[1])
  {
    v4 = 0;
    v5 = *a1;
    v41 = 2 * (a1[3] >> 1);
    while (1)
    {
      a2[11] = 0xBFF0000000000000;
      *(a2 + 6) = 0;
      v6 = **a2;
      v7 = *(v6 + 16);
      *(a2 + 7) = *v6;
      a2[9] = v7;
      v8 = *(v6 + 16);
      *(a2 + 2) = *v6;
      a2[6] = v8;
      if (a1[2])
      {
        break;
      }

LABEL_32:
      v5 += v41;
      if (++v4 >= a1[1])
      {
        return;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (*(a2 + 11) <= v10)
      {
        v12 = *(a2 + 6);
        v13 = *a2;
        v11 = *(a2 + 10);
        if (0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - **a2) >> 3) >= v12)
        {
          a2[6] = a2[9];
          *(a2 + 2) = *(a2 + 7);
          v14 = v12 + 1;
          *(a2 + 6) = v14;
          v15 = *v13 + 24 * v14;
          v16 = *v15;
          a2[9] = *(v15 + 16);
          *(a2 + 7) = v16;
          *(a2 + 11) = v11 * v14;
          v17 = *(a2 + 3);
          *(a2 + 6) = *(a2 + 2);
          *(a2 + 7) = v17;
          *(a2 + 8) = *(a2 + 4);
        }
      }

      else
      {
        v11 = *(a2 + 10);
      }

      v19 = fmod(v10, v11);
      v20 = *(a2 + 2);
      v21 = v19 / (v11 + -1.0);
      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v22 = *(a2 + 3);
        v23 = *(a2 + 12);
        v24 = *(a2 + 15);
        if (v22 == 1)
        {
          v32 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
          v33 = v23;
          v34 = v24;
        }

        else
        {
          if (v22 == 2)
          {
            goto LABEL_27;
          }

          v33 = *(a2 + 12);
          v34 = *(a2 + 15);
          v32 = v21;
        }

        v25 = std::__lerp[abi:ne200100]<double>(v33, v34, v32);
LABEL_27:
        v40 = llround(v25 * 1023.0 + 1.0e-12);
        if (v40 >= 1023)
        {
          v40 = 1023;
        }

        v38 = v40 & ~(v40 >> 31);
        v39 = v10;
LABEL_30:
        *(v5 + 2 * v39) = v38 << 6;
      }

      ++v10;
      v9 += 2;
      if (v10 >= a1[2])
      {
        goto LABEL_32;
      }
    }

    v26 = *(a2 + 3);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    if (v26 == 1)
    {
      v21 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
    }

    else if (v26 == 2)
    {
LABEL_20:
      v35 = llround(v29 * 1023.0 + 512.0 + 1.0e-12);
      if (v35 >= 1023)
      {
        v35 = 1023;
      }

      v36 = v35 & ~(v35 >> 31);
      v37 = llround(v31 * 1023.0 + 512.0 + 1.0e-12);
      if (v37 >= 1023)
      {
        v37 = 1023;
      }

      v38 = v37 & ~(v37 >> 31);
      *(v5 + 2 * v9) = v36 << 6;
      v39 = v9 + 1;
      goto LABEL_30;
    }

    v29 = std::__lerp[abi:ne200100]<double>(v27, v28, v21);
    v31 = std::__lerp[abi:ne200100]<double>(*(a2 + 14), *(a2 + 17), v21);
    goto LABEL_20;
  }
}

void Ramp::render_4xx<PixelFormatTraits<1937125938u>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 56);
  v4 = a1 + 56;
  v6 = *(v4 + 32);
  v7 = *(v4 + 56);
  v29 = v4;
  v30 = 0;
  v31 = v6;
  v32 = v7;
  v40 = 0;
  v41 = 0;
  v8 = *(a2 + 16);
  v43 = 0;
  v44 = 0;
  v42 = 0x3FE0000000000000;
  v9 = (0xAAAAAAAAAAAAAAABLL * ((*(v4 + 8) - v5) >> 3) - 1);
  v38 = v8 / v9;
  v39 = xmmword_25792F5B0;
  v33 = 0;
  v10 = *(v5 + 2);
  v36 = *v5;
  v11 = *(v5 + 2);
  v37 = v10;
  v35 = v11;
  v34 = *v5;
  v13 = v4;
  v14 = 1;
  v15 = v6;
  v16 = v7;
  v24 = 0;
  v25 = 0;
  v12 = *(a3 + 16);
  v27 = 0;
  v28 = 0;
  v26 = 0x3FE0000000000000;
  v22 = v12 / v9;
  v23 = xmmword_25792F5B0;
  v17 = 0;
  v20 = *v5;
  v21 = *(v5 + 2);
  v18 = v20;
  v19 = v21;
}

void anonymous namespace::render_ramp<PixelFormatTraits<1937125938u>,anonymous namespace::ColorRampInterpolator<PixelFormatTraits<1937125938u>,std::vector<math_color::YPbPr>>>(uint64_t *a1, uint64_t **a2)
{
  if (a1[1])
  {
    v4 = 0;
    v5 = *a1;
    v41 = 2 * (a1[3] >> 1);
    while (1)
    {
      a2[11] = 0xBFF0000000000000;
      *(a2 + 6) = 0;
      v6 = **a2;
      v7 = *(v6 + 16);
      *(a2 + 7) = *v6;
      a2[9] = v7;
      v8 = *(v6 + 16);
      *(a2 + 2) = *v6;
      a2[6] = v8;
      if (a1[2])
      {
        break;
      }

LABEL_32:
      v5 += v41;
      if (++v4 >= a1[1])
      {
        return;
      }
    }

    v9 = 0;
    v10 = 0;
    while (1)
    {
      if (*(a2 + 11) <= v10)
      {
        v12 = *(a2 + 6);
        v13 = *a2;
        v11 = *(a2 + 10);
        if (0xAAAAAAAAAAAAAAABLL * (((*a2)[1] - **a2) >> 3) >= v12)
        {
          a2[6] = a2[9];
          *(a2 + 2) = *(a2 + 7);
          v14 = v12 + 1;
          *(a2 + 6) = v14;
          v15 = *v13 + 24 * v14;
          v16 = *v15;
          a2[9] = *(v15 + 16);
          *(a2 + 7) = v16;
          *(a2 + 11) = v11 * v14;
          v17 = *(a2 + 3);
          *(a2 + 6) = *(a2 + 2);
          *(a2 + 7) = v17;
          *(a2 + 8) = *(a2 + 4);
        }
      }

      else
      {
        v11 = *(a2 + 10);
      }

      v19 = fmod(v10, v11);
      v20 = *(a2 + 2);
      v21 = v19 / (v11 + -1.0);
      if (v20 == 1)
      {
        break;
      }

      if (!v20)
      {
        v22 = *(a2 + 3);
        v23 = *(a2 + 12);
        v24 = *(a2 + 15);
        if (v22 == 1)
        {
          v32 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
          v33 = v23;
          v34 = v24;
        }

        else
        {
          if (v22 == 2)
          {
            goto LABEL_27;
          }

          v33 = *(a2 + 12);
          v34 = *(a2 + 15);
          v32 = v21;
        }

        v25 = std::__lerp[abi:ne200100]<double>(v33, v34, v32);
LABEL_27:
        v40 = llround((v25 * 219.0 + 16.0) * 256.0);
        if (v40 >= 0xFFFF)
        {
          v40 = 0xFFFF;
        }

        v38 = v40 & ~(v40 >> 31);
        v39 = v10;
LABEL_30:
        *(v5 + 2 * v39) = v38;
      }

      ++v10;
      v9 += 2;
      if (v10 >= a1[2])
      {
        goto LABEL_32;
      }
    }

    v26 = *(a2 + 3);
    v27 = *(a2 + 13);
    v28 = *(a2 + 16);
    if (v26 == 1)
    {
      v21 = (1.0 - cos(v21 * 3.14159265)) * 0.5;
    }

    else if (v26 == 2)
    {
LABEL_20:
      v35 = llround((v29 * 224.0 + 128.0) * 256.0);
      if (v35 >= 0xFFFF)
      {
        v35 = 0xFFFF;
      }

      v36 = v35 & ~(v35 >> 31);
      v37 = llround((v31 * 224.0 + 128.0) * 256.0);
      if (v37 >= 0xFFFF)
      {
        v37 = 0xFFFF;
      }

      v38 = v37 & ~(v37 >> 31);
      *(v5 + 2 * v9) = v36;
      v39 = v9 + 1;
      goto LABEL_30;
    }

    v29 = std::__lerp[abi:ne200100]<double>(v27, v28, v21);
    v31 = std::__lerp[abi:ne200100]<double>(*(a2 + 14), *(a2 + 17), v21);
    goto LABEL_20;
  }
}

void ZonePlate::ZonePlate(ZonePlate *this, int a2, double a3, double a4, int a5, double a6)
{
  *this = &unk_2868CE988;
  *(this + 2) = a2;
  *(this + 12) = 0;
  *(this + 4) = 90;
  *(this + 3) = 0x3FF0000000000000;
  *(this + 4) = a3;
  *(this + 5) = a4;
  *(this + 12) = a5;
  *(this + 7) = a6;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0x4000000000000000;
}

void ZonePlate::ZonePlate(ZonePlate *this, int a2, int a3, double a4, double a5, double a6, int a7, double a8)
{
  *this = &unk_2868CE988;
  *(this + 2) = a2;
  *(this + 12) = 1;
  *(this + 4) = a3;
  *(this + 3) = a4;
  *(this + 4) = a5;
  *(this + 5) = a6;
  *(this + 12) = a7;
  *(this + 7) = a8;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0x4000000000000000;
}

void ZonePlate::setFrame(ZonePlate *this, unint64_t a2)
{
  v3 = *(this + 2);
  v4 = 0.0;
  v5 = a2;
  v6 = a2 / v3;
  if (!v3)
  {
    v6 = 0.0;
  }

  v7 = *(this + 4);
  v8 = v5 / v7;
  if (!v7)
  {
    v8 = 0.0;
  }

  *(this + 8) = v6;
  *(this + 9) = v8;
  v9 = *(this + 12);
  if (v9)
  {
    v4 = v5 / v9;
  }

  v10 = *(this + 4);
  v11 = *(this + 5);
  v12 = cos((v4 + *(this + 7) + v4 + *(this + 7)) * 3.14159265);
  *(this + 10) = std::__lerp[abi:ne200100]<double>(v10, v11, (1.0 - v12) * 0.5);
}

void render_zone_plate<PixelFormatTraits<1278226488u>>(void *a1, double a2, double a3)
{
  v107 = a1[1];
  if (v107)
  {
    v3 = 0;
    v4 = a1[2];
    v5 = a3 * 0.5;
    v111 = v5 / v4;
    v105 = a1[3];
    v106 = v4;
    v6 = vdupq_n_s64(v4 - 1);
    v104 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
    v7 = vdupq_n_s32(v4 >> 1);
    v108 = vdupq_lane_s64(*&a2, 0);
    v109 = v7;
    v8 = *a1 + 7;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = vnegq_f64(v9);
    v113 = v10;
    v11 = v5 / v107;
    v110 = v6;
    do
    {
      if (v106)
      {
        *v10.i64 = (v3 - (v107 >> 1));
        v7.i64[0] = 0;
        v112 = vdupq_lane_s64(COERCE__INT64(*vbslq_s8(v113, v7, v10).i64 + v11 * *v10.i64 * *v10.i64 + 0.0), 0);
        v12 = xmmword_25792F5E0;
        v13 = xmmword_25792F5F0;
        v14 = xmmword_25792F600;
        v15 = xmmword_25792F610;
        v7 = xmmword_25792C170;
        v16 = xmmword_25792C180;
        v17 = xmmword_25792C190;
        v18 = xmmword_25792C1A0;
        v19 = xmmword_25792BB00;
        v20 = xmmword_25792BB10;
        v21 = xmmword_25792BAE0;
        v22 = xmmword_25792BAF0;
        v23 = v8;
        v24 = v104;
        do
        {
          v119 = v21;
          v120 = v20;
          v121 = v19;
          v122 = v18;
          v123 = v17;
          v124 = v16;
          v125 = v7;
          v126 = v15;
          v118 = v22;
          v25 = vmovn_s64(vcgeq_u64(v6, v22));
          v26 = vsubq_s32(v15, v109);
          v127 = v14;
          v27 = vsubq_s32(v14, v109);
          v128 = v13;
          v129 = v12;
          v28 = vsubq_s32(v13, v109);
          v29 = vsubq_s32(v12, v109);
          v30.i64[0] = v29.i32[0];
          v30.i64[1] = v29.i32[1];
          v31 = vcvtq_f64_s64(v30);
          v30.i64[0] = v29.i32[2];
          v30.i64[1] = v29.i32[3];
          v32 = vcvtq_f64_s64(v30);
          v30.i64[0] = v28.i32[0];
          v30.i64[1] = v28.i32[1];
          v33 = vcvtq_f64_s64(v30);
          v30.i64[0] = v28.i32[2];
          v30.i64[1] = v28.i32[3];
          v34 = vcvtq_f64_s64(v30);
          v30.i64[0] = v27.i32[0];
          v30.i64[1] = v27.i32[1];
          v35 = vcvtq_f64_s64(v30);
          v30.i64[0] = v26.i32[0];
          v30.i64[1] = v26.i32[1];
          v36 = vcvtq_f64_s64(v30);
          v30.i64[0] = v27.i32[2];
          v30.i64[1] = v27.i32[3];
          v37 = vcvtq_f64_s64(v30);
          v30.i64[0] = v26.i32[2];
          v30.i64[1] = v26.i32[3];
          v38 = vcvtq_f64_s64(v30);
          v39 = vmlaq_f64(vbslq_s8(v113, 0, v31), v31, vmulq_n_f64(v31, v111));
          v40 = vmlaq_f64(vbslq_s8(v113, 0, v32), v32, vmulq_n_f64(v32, v111));
          v41 = vmlaq_f64(vbslq_s8(v113, 0, v33), v33, vmulq_n_f64(v33, v111));
          v42 = vmlaq_f64(vbslq_s8(v113, 0, v34), v34, vmulq_n_f64(v34, v111));
          v43 = vmlaq_f64(vbslq_s8(v113, 0, v38), v38, vmulq_n_f64(v38, v111));
          *&v38.f64[0] = vuzp1_s16(v25, *&v38.f64[0]);
          v117 = vuzp1_s8(*&v38.f64[0], *&v38.f64[0]).u8[0];
          v44 = vaddq_f64(vmlaq_f64(vbslq_s8(v113, 0, v35), v35, vmulq_n_f64(v35, v111)), 0);
          v45 = vaddq_f64(vaddq_f64(v112, vaddq_f64(v40, 0)), v108);
          v46 = vdupq_n_s64(0x401921FB54442D18uLL);
          v140 = vmulq_f64(v45, v46);
          v142 = vmulq_f64(vaddq_f64(vaddq_f64(v112, vaddq_f64(v39, 0)), v108), v46);
          v136 = vmulq_f64(vaddq_f64(vaddq_f64(v112, vaddq_f64(v42, 0)), v108), v46);
          v138 = vmulq_f64(vaddq_f64(vaddq_f64(v112, vaddq_f64(v41, 0)), v108), v46);
          v132 = vmulq_f64(vaddq_f64(vaddq_f64(v112, vaddq_f64(vmlaq_f64(vbslq_s8(v113, 0, v36), v36, vmulq_n_f64(v36, v111)), 0)), v108), v46);
          v134 = vmulq_f64(vaddq_f64(vaddq_f64(v112, v44), v108), v46);
          v130 = vmulq_f64(vaddq_f64(vaddq_f64(v112, vaddq_f64(vmlaq_f64(vbslq_s8(v113, 0, v37), v37, vmulq_n_f64(v37, v111)), 0)), v108), v46);
          __x = vmulq_f64(vaddq_f64(vaddq_f64(v112, vaddq_f64(v43, 0)), v108), v46);
          v115 = cos(__x.f64[1]);
          v47.f64[0] = cos(__x.f64[0]);
          v47.f64[1] = v115;
          v116 = v47;
          __x.f64[0] = cos(v130.f64[1]);
          v48.f64[0] = cos(v130.f64[0]);
          v48.f64[1] = __x.f64[0];
          v131 = v48;
          __x.f64[0] = cos(v132.f64[1]);
          v49.f64[0] = cos(v132.f64[0]);
          v49.f64[1] = __x.f64[0];
          v133 = v49;
          __x.f64[0] = cos(v134.f64[1]);
          v50.f64[0] = cos(v134.f64[0]);
          v50.f64[1] = __x.f64[0];
          v135 = v50;
          __x.f64[0] = cos(v136.f64[1]);
          v51.f64[0] = cos(v136.f64[0]);
          v51.f64[1] = __x.f64[0];
          v137 = v51;
          __x.f64[0] = cos(v138.f64[1]);
          v52.f64[0] = cos(v138.f64[0]);
          v52.f64[1] = __x.f64[0];
          v139 = v52;
          __x.f64[0] = cos(v140.f64[1]);
          v53.f64[0] = cos(v140.f64[0]);
          v53.f64[1] = __x.f64[0];
          v141 = v53;
          __x.f64[0] = cos(v142.f64[1]);
          v54.f64[0] = cos(v142.f64[0]);
          v54.f64[1] = __x.f64[0];
          __asm { FMOV            V1.2D, #0.5 }

          v60 = vdupq_n_s64(0x406FE00000000000uLL);
          v61 = vdupq_n_s64(0x3D719799812DEA11uLL);
          v62 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v116));
          v63 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v131));
          v64 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v133));
          v65 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v135));
          v66 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v137));
          v67 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v139));
          v68 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v141));
          v69 = vmlaq_f64(v61, v60, vmlaq_f64(_Q1, _Q1, v54));
          v70 = vrndaq_f64(v69);
          v71 = vrndaq_f64(v68);
          v72 = vrndaq_f64(v67);
          v73 = vrndaq_f64(v66);
          v74 = vrndaq_f64(v65);
          v75 = vrndaq_f64(v64);
          v76 = vrndaq_f64(v63);
          v77 = vrndaq_f64(v62);
          v78 = v77.f64[1];
          v79 = v77.f64[0];
          if (v77.f64[1] >= 0xFF)
          {
            v78 = 255;
          }

          if (v79 >= 0xFF)
          {
            v79 = 255;
          }

          *&v69.f64[0] = __PAIR64__(v78, v79);
          v80 = v76.f64[1];
          v81 = v76.f64[0];
          if (v76.f64[1] >= 0xFF)
          {
            v80 = 255;
          }

          if (v81 >= 0xFF)
          {
            v81 = 255;
          }

          *&v63.f64[0] = __PAIR64__(v80, v81);
          v82 = v75.f64[1];
          v83 = v75.f64[0];
          if (v75.f64[1] >= 0xFF)
          {
            v82 = 255;
          }

          if (v83 >= 0xFF)
          {
            v83 = 255;
          }

          *&v60.f64[0] = __PAIR64__(v82, v83);
          v84 = v74.f64[1];
          v85 = v74.f64[0];
          if (v74.f64[1] >= 0xFF)
          {
            v84 = 255;
          }

          if (v85 >= 0xFF)
          {
            v85 = 255;
          }

          *&v62.f64[0] = __PAIR64__(v84, v85);
          v86 = vmovl_u8(vqtbl4_s8(*v60.f64, 0x3430242014100400));
          v87 = v73.f64[1];
          v88 = vmovl_u16(*v86.i8);
          if (v73.f64[1] >= 0xFF)
          {
            v87 = 255;
          }

          if (v73.f64[0] >= 0xFF)
          {
            v89 = 255;
          }

          else
          {
            v89 = v73.f64[0];
          }

          v90 = v72.f64[1];
          if (v72.f64[1] >= 0xFF)
          {
            v90 = 255;
          }

          if (v72.f64[0] >= 0xFF)
          {
            v91 = 255;
          }

          else
          {
            v91 = v72.f64[0];
          }

          if (v71.f64[1] >= 0xFF)
          {
            v92 = 255;
          }

          else
          {
            v92 = v71.f64[1];
          }

          if (v71.f64[0] >= 0xFF)
          {
            v93 = 255;
          }

          else
          {
            v93 = v71.f64[0];
          }

          v94 = v70.f64[1];
          if (v70.f64[1] >= 0xFF)
          {
            v94 = 255;
          }

          v95 = v70.f64[0];
          if (v70.f64[0] >= 0xFF)
          {
            v95 = 255;
          }

          if (v117)
          {
            *(v23 - 7) = v88.i8[0];
          }

          if (vuzp1_s8(vuzp1_s16(v25, 0x3430242014100400), 0x3430242014100400).i8[1])
          {
            *(v23 - 6) = v88.i8[4];
          }

          v6 = v110;
          if (vuzp1_s8(vuzp1_s16(0x3430242014100400, vmovn_s64(vcgeq_u64(v110, *&v119))), 0x3430242014100400).i8[2])
          {
            *(v23 - 5) = v88.i8[8];
            *(v23 - 4) = v88.i8[12];
          }

          v96 = vmovl_high_u16(v86);
          v97 = vmovn_s64(vcgeq_u64(v110, v120));
          if (vuzp1_s8(0x3430242014100400, vuzp1_s16(v97, 0x3430242014100400)).i32[1])
          {
            *(v23 - 3) = v96.i8[0];
          }

          if (vuzp1_s8(0x3430242014100400, vuzp1_s16(v97, 0x3430242014100400)).i8[5])
          {
            *(v23 - 2) = v96.i8[4];
          }

          v98 = vcgeq_u64(v110, v121);
          if (vuzp1_s8(0x3430242014100400, vuzp1_s16(0x3430242014100400, vmovn_s64(v98))).i8[6])
          {
            *(v23 - 1) = v96.i8[8];
            *v23 = v96.i8[12];
          }

          v98.i64[0] = __PAIR64__(v87, v89);
          v96.i64[0] = __PAIR64__(v90, v91);
          *&v73.f64[0] = __PAIR64__(v92, v93);
          *&v72.f64[0] = __PAIR64__(v94, v95);
          v99 = vmovl_u8(vqtbl4_s8(*(&v72 - 2), 0x3430242014100400));
          v100 = vmovl_u16(*v99.i8);
          *v98.i8 = vmovn_s64(vcgeq_u64(v110, v122));
          if (vuzp1_s8(vuzp1_s16(*v98.i8, *v99.i8), *v99.i8).u8[0])
          {
            v23[1] = v100.i8[0];
          }

          if (vuzp1_s8(vuzp1_s16(*&v98, *&v99), *&v99).i8[1])
          {
            v23[2] = v100.i8[4];
          }

          if (vuzp1_s8(vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v110, *&v123))), *&v99).i8[2])
          {
            v23[3] = v100.i8[8];
            v23[4] = v100.i8[12];
          }

          v101 = vmovl_high_u16(v99);
          v102 = vmovn_s64(vcgeq_u64(v110, v124));
          if (vuzp1_s8(*&v101, vuzp1_s16(v102, *&v101)).i32[1])
          {
            v23[5] = v101.i8[0];
          }

          if (vuzp1_s8(*&v101, vuzp1_s16(v102, *&v101)).i8[5])
          {
            v23[6] = v101.i8[4];
          }

          if (vuzp1_s8(*&v101, vuzp1_s16(*&v101, vmovn_s64(vcgeq_u64(v110, *&v125)))).i8[6])
          {
            v23[7] = v101.i8[8];
            v23[8] = v101.i8[12];
          }

          v103 = vdupq_n_s64(0x10uLL);
          v20 = vaddq_s64(v120, v103);
          v21 = vaddq_s64(v119, v103);
          v22 = vaddq_s64(v118, v103);
          v19 = vaddq_s64(v121, v103);
          v18 = vaddq_s64(v122, v103);
          v17 = vaddq_s64(v123, v103);
          v16 = vaddq_s64(v124, v103);
          v7 = vaddq_s64(v125, v103);
          v10.i64[0] = 0x1000000010;
          v10.i64[1] = 0x1000000010;
          v15 = vaddq_s32(v126, v10);
          v14 = vaddq_s32(v127, v10);
          v13 = vaddq_s32(v128, v10);
          v12 = vaddq_s32(v129, v10);
          v23 += 16;
          v24 -= 16;
        }

        while (v24);
      }

      ++v3;
      v8 += v105;
    }

    while (v3 != v107);
  }
}

void render_zone_plate<PixelFormatTraits<1278226736u>>(void *a1, double a2, double a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    v5 = a1[2];
    v6 = a1[3];
    v7 = a3 * 0.5;
    v51 = v7 / v5;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = vdupq_n_s32(v5 >> 1);
    v48 = vdupq_lane_s64(*&a2, 0);
    v49 = v9;
    v10 = *a1 + 8;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v53 = vnegq_f64(v11);
    v47 = vdupq_n_s64(0x401921FB54442D18uLL);
    __asm { FMOV            V0.2D, #0.5 }

    v67 = _Q0;
    v17 = v7 / v3;
    v50 = v8;
    do
    {
      if (v5)
      {
        v18 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
        *_Q0.i64 = (v4 - (v3 >> 1));
        v9.i64[0] = 0;
        v19 = v10;
        v20 = xmmword_25792BAF0;
        v21 = xmmword_25792BAE0;
        v52 = vdupq_lane_s64(COERCE__INT64(*vbslq_s8(v53, v9, _Q0).i64 + v17 * *_Q0.i64 * *_Q0.i64 + 0.0), 0);
        v9 = xmmword_25792BB10;
        v22 = xmmword_25792BB00;
        v23 = xmmword_25792F610;
        v24 = xmmword_25792F600;
        do
        {
          v63 = v22;
          v64 = v9;
          v65 = v21;
          v66 = v20;
          v25 = vcgeq_u64(v8, v20);
          v26 = vmovn_s64(v25);
          *v25.i8 = vuzp1_s16(v26, *v25.i8);
          v60 = vuzp1_s8(*v25.i8, *v25.i8).u8[0];
          v62 = v23;
          v27 = vsubq_s32(v23, v49);
          v61 = v24;
          v28 = vsubq_s32(v24, v49);
          v29.i64[0] = v28.i32[0];
          v29.i64[1] = v28.i32[1];
          v30 = vcvtq_f64_s64(v29);
          v29.i64[0] = v28.i32[2];
          v29.i64[1] = v28.i32[3];
          v31 = vcvtq_f64_s64(v29);
          v29.i64[0] = v27.i32[0];
          v29.i64[1] = v27.i32[1];
          v32 = vcvtq_f64_s64(v29);
          v29.i64[0] = v27.i32[2];
          v29.i64[1] = v27.i32[3];
          v33 = vcvtq_f64_s64(v29);
          v70 = vmulq_f64(vaddq_f64(vaddq_f64(v52, vaddq_f64(vmlaq_f64(vbslq_s8(v53, 0, v31), v31, vmulq_n_f64(v31, v51)), 0)), v48), v47);
          v72 = vmulq_f64(vaddq_f64(vaddq_f64(v52, vaddq_f64(vmlaq_f64(vbslq_s8(v53, 0, v30), v30, vmulq_n_f64(v30, v51)), 0)), v48), v47);
          v68 = vmulq_f64(vaddq_f64(vaddq_f64(v52, vaddq_f64(vmlaq_f64(vbslq_s8(v53, 0, v32), v32, vmulq_n_f64(v32, v51)), 0)), v48), v47);
          __x = vmulq_f64(vaddq_f64(vaddq_f64(v52, vaddq_f64(vmlaq_f64(vbslq_s8(v53, 0, v33), v33, vmulq_n_f64(v33, v51)), 0)), v48), v47);
          v57 = cos(__x.f64[1]);
          v34.f64[0] = cos(__x.f64[0]);
          v34.f64[1] = v57;
          __xa = v34;
          v58 = cos(v68.f64[1]);
          v35.f64[0] = cos(v68.f64[0]);
          v35.f64[1] = v58;
          v54 = v35;
          v69 = cos(v70.f64[1]);
          v71 = cos(v70.f64[0]);
          v59 = cos(v72.f64[1]);
          v36.f64[0] = cos(v72.f64[0]);
          v37 = vdupq_n_s64(0x408FF80000000000uLL);
          v38 = vdupq_n_s64(0x3D719799812DEA11uLL);
          v39.i64[0] = 0x300000003;
          v39.i64[1] = 0x300000003;
          v40 = vmaxq_s32(vminq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v38, v37, vmlaq_f64(v67, v67, v54)))), vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v38, v37, vmlaq_f64(v67, v67, __xa))))), v39), 0);
          if (v60)
          {
            *(v19 - 4) = v40.i16[0] << 6;
          }

          if (vuzp1_s8(vuzp1_s16(v26, *&v36), *&v36).i8[1])
          {
            *(v19 - 3) = v40.i16[2] << 6;
          }

          v8 = v50;
          if (vuzp1_s8(vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v50, *&v65))), *&v36).i8[2])
          {
            *(v19 - 2) = v40.i16[4] << 6;
            *(v19 - 1) = v40.i16[6] << 6;
          }

          v41.f64[0] = v71;
          v41.f64[1] = v69;
          v36.f64[1] = v59;
          v42 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v38, v37, vmlaq_f64(v67, v67, v36)))), vcvtq_s64_f64(vrndaq_f64(vmlaq_f64(v38, v37, vmlaq_f64(v67, v67, v41)))));
          v43.i64[0] = 0x300000003;
          v43.i64[1] = 0x300000003;
          v44 = vmaxq_s32(vminq_s32(v42, v43), 0);
          v45 = vmovn_s64(vcgeq_u64(v50, v64));
          if (vuzp1_s8(*&v44, vuzp1_s16(v45, *&v44)).i32[1])
          {
            *v19 = v44.i16[0] << 6;
          }

          if (vuzp1_s8(*&v44, vuzp1_s16(v45, *&v44)).i8[5])
          {
            v19[1] = v44.i16[2] << 6;
          }

          if (vuzp1_s8(*&v44, vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v50, *&v63)))).i8[6])
          {
            v19[2] = v44.i16[4] << 6;
            v19[3] = v44.i16[6] << 6;
          }

          v46 = vdupq_n_s64(8uLL);
          v9 = vaddq_s64(v64, v46);
          v21 = vaddq_s64(v65, v46);
          v20 = vaddq_s64(v66, v46);
          v22 = vaddq_s64(v63, v46);
          _Q0.i64[0] = 0x800000008;
          _Q0.i64[1] = 0x800000008;
          v23 = vaddq_s32(v62, _Q0);
          v24 = vaddq_s32(v61, _Q0);
          v19 += 8;
          v18 -= 8;
        }

        while (v18);
      }

      ++v4;
      v10 += v6;
    }

    while (v4 != v3);
  }
}

void ZonePlate::render_420<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void ZonePlate::render_420<PixelFormatTraits<875704422u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void ZonePlate::render_420<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void ZonePlate::render_420<PixelFormatTraits<2019963440u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  if (a2[1] != 2 * a3[1])
  {
    ZonePlate::render_420<PixelFormatTraits<875704438u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void ZonePlate::render_422<PixelFormatTraits<875704950u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void ZonePlate::render_422<PixelFormatTraits<875704934u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void ZonePlate::render_422<PixelFormatTraits<2016686642u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void ZonePlate::render_422<PixelFormatTraits<2019963442u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void ZonePlate::render_422<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != 2 * a3[2])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_422<PixelFormatTraits<875704950u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void ZonePlate::render_444<PixelFormatTraits<875836534u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<875704438u>>(a1, a2, a3);
}

void ZonePlate::render_444<PixelFormatTraits<875836518u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<875704422u>>(a1, a2, a3);
}

void ZonePlate::render_444<PixelFormatTraits<2016687156u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<2016686640u>>(a1, a2, a3);
}

void ZonePlate::render_444<PixelFormatTraits<2019963956u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<2019963440u>>(a1, a2, a3);
}

void ZonePlate::render_444<PixelFormatTraits<1937126452u>>(uint64_t a1, void *a2, void *a3)
{
  if (a2[2] != a3[2])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  if (a2[1] != a3[1])
  {
    ZonePlate::render_444<PixelFormatTraits<875836534u>>();
  }

  ZonePlate::render_4xx<PixelFormatTraits<1937125938u>>(a1, a2, a3);
}

void ZonePlate::render_4xx<PixelFormatTraits<875704438u>>(uint64_t a1, void *a2, void *a3)
{
  render_zone_plate<PixelFormatTraits<875704438u>>(a2, *(a1 + 64), *(a1 + 80));
  if (*(a1 + 12) == 1)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 24);

    render_chroma_gradient<PixelFormatTraits<875704438u>>(a3, v5, v6);
  }

  else
  {
    v8 = a3[1];
    v7 = a3[2];

    fill_rect<unsigned short>(a3, 0, 0, v7, v8, 32896);
  }
}

void render_zone_plate<PixelFormatTraits<875704438u>>(void *a1, double a2, double a3)
{
  v105 = a1[1];
  if (v105)
  {
    v3 = 0;
    v4 = a1[2];
    v5 = a3 * 0.5;
    v109 = v5 / v4;
    v104 = a1[3];
    v6 = vdupq_n_s64(v4 - 1);
    v7 = vdupq_n_s32(v4 >> 1);
    v106 = vdupq_lane_s64(*&a2, 0);
    v107 = v7;
    v8 = *a1 + 7;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v10 = vnegq_f64(v9);
    v111 = v10;
    v11 = v5 / v105;
    v108 = v6;
    do
    {
      if (v4)
      {
        *v10.i64 = (v3 - (v105 >> 1));
        v7.i64[0] = 0;
        v110 = vdupq_lane_s64(COERCE__INT64(*vbslq_s8(v111, v7, v10).i64 + v11 * *v10.i64 * *v10.i64 + 0.0), 0);
        v12 = xmmword_25792F5E0;
        v13 = xmmword_25792F5F0;
        v14 = xmmword_25792F600;
        v15 = xmmword_25792F610;
        v7 = xmmword_25792C170;
        v16 = xmmword_25792C180;
        v17 = xmmword_25792C190;
        v18 = xmmword_25792C1A0;
        v19 = xmmword_25792BB00;
        v20 = xmmword_25792BB10;
        v21 = xmmword_25792BAE0;
        v22 = xmmword_25792BAF0;
        v23 = v8;
        v24 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
        do
        {
          v117 = v21;
          v118 = v20;
          v119 = v19;
          v120 = v18;
          v121 = v17;
          v122 = v16;
          v123 = v7;
          v124 = v15;
          v116 = v22;
          v25 = vmovn_s64(vcgeq_u64(v6, v22));
          v26 = vsubq_s32(v15, v107);
          v125 = v14;
          v27 = vsubq_s32(v14, v107);
          v126 = v13;
          v127 = v12;
          v28 = vsubq_s32(v13, v107);
          v29 = vsubq_s32(v12, v107);
          v30.i64[0] = v29.i32[0];
          v30.i64[1] = v29.i32[1];
          v31 = vcvtq_f64_s64(v30);
          v30.i64[0] = v29.i32[2];
          v30.i64[1] = v29.i32[3];
          v32 = vcvtq_f64_s64(v30);
          v30.i64[0] = v28.i32[0];
          v30.i64[1] = v28.i32[1];
          v33 = vcvtq_f64_s64(v30);
          v30.i64[0] = v28.i32[2];
          v30.i64[1] = v28.i32[3];
          v34 = vcvtq_f64_s64(v30);
          v30.i64[0] = v27.i32[0];
          v30.i64[1] = v27.i32[1];
          v35 = vcvtq_f64_s64(v30);
          v30.i64[0] = v26.i32[0];
          v30.i64[1] = v26.i32[1];
          v36 = vcvtq_f64_s64(v30);
          v30.i64[0] = v27.i32[2];
          v30.i64[1] = v27.i32[3];
          v37 = vcvtq_f64_s64(v30);
          v30.i64[0] = v26.i32[2];
          v30.i64[1] = v26.i32[3];
          v38 = vcvtq_f64_s64(v30);
          v39 = vmlaq_f64(vbslq_s8(v111, 0, v31), v31, vmulq_n_f64(v31, v109));
          v40 = vmlaq_f64(vbslq_s8(v111, 0, v32), v32, vmulq_n_f64(v32, v109));
          v41 = vmlaq_f64(vbslq_s8(v111, 0, v33), v33, vmulq_n_f64(v33, v109));
          v42 = vmlaq_f64(vbslq_s8(v111, 0, v34), v34, vmulq_n_f64(v34, v109));
          v43 = vmlaq_f64(vbslq_s8(v111, 0, v38), v38, vmulq_n_f64(v38, v109));
          *&v38.f64[0] = vuzp1_s16(v25, *&v38.f64[0]);
          v115 = vuzp1_s8(*&v38.f64[0], *&v38.f64[0]).u8[0];
          v44 = vaddq_f64(vmlaq_f64(vbslq_s8(v111, 0, v35), v35, vmulq_n_f64(v35, v109)), 0);
          v45 = vaddq_f64(vaddq_f64(v110, vaddq_f64(v40, 0)), v106);
          v46 = vdupq_n_s64(0x401921FB54442D18uLL);
          v138 = vmulq_f64(v45, v46);
          v140 = vmulq_f64(vaddq_f64(vaddq_f64(v110, vaddq_f64(v39, 0)), v106), v46);
          v134 = vmulq_f64(vaddq_f64(vaddq_f64(v110, vaddq_f64(v42, 0)), v106), v46);
          v136 = vmulq_f64(vaddq_f64(vaddq_f64(v110, vaddq_f64(v41, 0)), v106), v46);
          v130 = vmulq_f64(vaddq_f64(vaddq_f64(v110, vaddq_f64(vmlaq_f64(vbslq_s8(v111, 0, v36), v36, vmulq_n_f64(v36, v109)), 0)), v106), v46);
          v132 = vmulq_f64(vaddq_f64(vaddq_f64(v110, v44), v106), v46);
          v128 = vmulq_f64(vaddq_f64(vaddq_f64(v110, vaddq_f64(vmlaq_f64(vbslq_s8(v111, 0, v37), v37, vmulq_n_f64(v37, v109)), 0)), v106), v46);
          __x = vmulq_f64(vaddq_f64(vaddq_f64(v110, vaddq_f64(v43, 0)), v106), v46);
          v113 = cos(__x.f64[1]);
          v47.f64[0] = cos(__x.f64[0]);
          v47.f64[1] = v113;
          v114 = v47;
          __x.f64[0] = cos(v128.f64[1]);
          v48.f64[0] = cos(v128.f64[0]);
          v48.f64[1] = __x.f64[0];
          v129 = v48;
          __x.f64[0] = cos(v130.f64[1]);
          v49.f64[0] = cos(v130.f64[0]);
          v49.f64[1] = __x.f64[0];
          v131 = v49;
          __x.f64[0] = cos(v132.f64[1]);
          v50.f64[0] = cos(v132.f64[0]);
          v50.f64[1] = __x.f64[0];
          v133 = v50;
          __x.f64[0] = cos(v134.f64[1]);
          v51.f64[0] = cos(v134.f64[0]);
          v51.f64[1] = __x.f64[0];
          v135 = v51;
          __x.f64[0] = cos(v136.f64[1]);
          v52.f64[0] = cos(v136.f64[0]);
          v52.f64[1] = __x.f64[0];
          v137 = v52;
          __x.f64[0] = cos(v138.f64[1]);
          v53.f64[0] = cos(v138.f64[0]);
          v53.f64[1] = __x.f64[0];
          v139 = v53;
          __x.f64[0] = cos(v140.f64[1]);
          v54.f64[0] = cos(v140.f64[0]);
          v54.f64[1] = __x.f64[0];
          __asm { FMOV            V1.2D, #0.5 }

          v60 = vdupq_n_s64(0x406B600000000000uLL);
          __asm { FMOV            V17.2D, #16.0 }

          v62 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v114));
          v63 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v129));
          v64 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v131));
          v65 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v133));
          v66 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v135));
          v67 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v137));
          v68 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v139));
          v69 = vmlaq_f64(_Q17, v60, vmlaq_f64(_Q1, _Q1, v54));
          v70 = vrndaq_f64(v69);
          v71 = vrndaq_f64(v68);
          v72 = vrndaq_f64(v67);
          v73 = vrndaq_f64(v66);
          v74 = vrndaq_f64(v65);
          v75 = vrndaq_f64(v64);
          v76 = vrndaq_f64(v63);
          v77 = vrndaq_f64(v62);
          v78 = v77.f64[1];
          v79 = v77.f64[0];
          if (v77.f64[1] >= 0xFF)
          {
            v78 = 255;
          }

          if (v79 >= 0xFF)
          {
            v79 = 255;
          }

          *&v69.f64[0] = __PAIR64__(v78, v79);
          v80 = v76.f64[1];
          v81 = v76.f64[0];
          if (v76.f64[1] >= 0xFF)
          {
            v80 = 255;
          }

          if (v81 >= 0xFF)
          {
            v81 = 255;
          }

          *&v63.f64[0] = __PAIR64__(v80, v81);
          v82 = v75.f64[1];
          v83 = v75.f64[0];
          if (v75.f64[1] >= 0xFF)
          {
            v82 = 255;
          }

          if (v83 >= 0xFF)
          {
            v83 = 255;
          }

          *&v60.f64[0] = __PAIR64__(v82, v83);
          v84 = v74.f64[1];
          v85 = v74.f64[0];
          if (v74.f64[1] >= 0xFF)
          {
            v84 = 255;
          }

          if (v85 >= 0xFF)
          {
            v85 = 255;
          }

          *&v62.f64[0] = __PAIR64__(v84, v85);
          v86 = vmovl_u8(vqtbl4_s8(*v60.f64, 0x3430242014100400));
          v87 = v73.f64[1];
          v88 = vmovl_u16(*v86.i8);
          if (v73.f64[1] >= 0xFF)
          {
            v87 = 255;
          }

          if (v73.f64[0] >= 0xFF)
          {
            v89 = 255;
          }

          else
          {
            v89 = v73.f64[0];
          }

          v90 = v72.f64[1];
          if (v72.f64[1] >= 0xFF)
          {
            v90 = 255;
          }

          if (v72.f64[0] >= 0xFF)
          {
            v91 = 255;
          }

          else
          {
            v91 = v72.f64[0];
          }

          if (v71.f64[1] >= 0xFF)
          {
            v92 = 255;
          }

          else
          {
            v92 = v71.f64[1];
          }

          if (v71.f64[0] >= 0xFF)
          {
            v93 = 255;
          }

          else
          {
            v93 = v71.f64[0];
          }

          v94 = v70.f64[1];
          if (v70.f64[1] >= 0xFF)
          {
            v94 = 255;
          }

          v95 = v70.f64[0];
          if (v70.f64[0] >= 0xFF)
          {
            v95 = 255;
          }

          if (v115)
          {
            *(v23 - 7) = v88.i8[0];
          }

          if (vuzp1_s8(vuzp1_s16(v25, 0x3430242014100400), 0x3430242014100400).i8[1])
          {
            *(v23 - 6) = v88.i8[4];
          }

          v6 = v108;
          if (vuzp1_s8(vuzp1_s16(0x3430242014100400, vmovn_s64(vcgeq_u64(v108, *&v117))), 0x3430242014100400).i8[2])
          {
            *(v23 - 5) = v88.i8[8];
            *(v23 - 4) = v88.i8[12];
          }

          v96 = vmovl_high_u16(v86);
          v97 = vmovn_s64(vcgeq_u64(v108, v118));
          if (vuzp1_s8(0x3430242014100400, vuzp1_s16(v97, 0x3430242014100400)).i32[1])
          {
            *(v23 - 3) = v96.i8[0];
          }

          if (vuzp1_s8(0x3430242014100400, vuzp1_s16(v97, 0x3430242014100400)).i8[5])
          {
            *(v23 - 2) = v96.i8[4];
          }

          v98 = vcgeq_u64(v108, v119);
          if (vuzp1_s8(0x3430242014100400, vuzp1_s16(0x3430242014100400, vmovn_s64(v98))).i8[6])
          {
            *(v23 - 1) = v96.i8[8];
            *v23 = v96.i8[12];
          }

          v98.i64[0] = __PAIR64__(v87, v89);
          v96.i64[0] = __PAIR64__(v90, v91);
          *&v73.f64[0] = __PAIR64__(v92, v93);
          *&v72.f64[0] = __PAIR64__(v94, v95);
          v99 = vmovl_u8(vqtbl4_s8(*(&v72 - 2), 0x3430242014100400));
          v100 = vmovl_u16(*v99.i8);
          *v98.i8 = vmovn_s64(vcgeq_u64(v108, v120));
          if (vuzp1_s8(vuzp1_s16(*v98.i8, *v99.i8), *v99.i8).u8[0])
          {
            v23[1] = v100.i8[0];
          }

          if (vuzp1_s8(vuzp1_s16(*&v98, *&v99), *&v99).i8[1])
          {
            v23[2] = v100.i8[4];
          }

          if (vuzp1_s8(vuzp1_s16(*&v99, vmovn_s64(vcgeq_u64(v108, *&v121))), *&v99).i8[2])
          {
            v23[3] = v100.i8[8];
            v23[4] = v100.i8[12];
          }

          v101 = vmovl_high_u16(v99);
          v102 = vmovn_s64(vcgeq_u64(v108, v122));
          if (vuzp1_s8(*&v101, vuzp1_s16(v102, *&v101)).i32[1])
          {
            v23[5] = v101.i8[0];
          }

          if (vuzp1_s8(*&v101, vuzp1_s16(v102, *&v101)).i8[5])
          {
            v23[6] = v101.i8[4];
          }

          if (vuzp1_s8(*&v101, vuzp1_s16(*&v101, vmovn_s64(vcgeq_u64(v108, *&v123)))).i8[6])
          {
            v23[7] = v101.i8[8];
            v23[8] = v101.i8[12];
          }

          v103 = vdupq_n_s64(0x10uLL);
          v20 = vaddq_s64(v118, v103);
          v21 = vaddq_s64(v117, v103);
          v22 = vaddq_s64(v116, v103);
          v19 = vaddq_s64(v119, v103);
          v18 = vaddq_s64(v120, v103);
          v17 = vaddq_s64(v121, v103);
          v16 = vaddq_s64(v122, v103);
          v7 = vaddq_s64(v123, v103);
          v10.i64[0] = 0x1000000010;
          v10.i64[1] = 0x1000000010;
          v15 = vaddq_s32(v124, v10);
          v14 = vaddq_s32(v125, v10);
          v13 = vaddq_s32(v126, v10);
          v12 = vaddq_s32(v127, v10);
          v23 += 16;
          v24 -= 16;
        }

        while (v24);
      }

      ++v3;
      v8 += v104;
    }

    while (v3 != v105);
  }
}

void render_chroma_gradient<PixelFormatTraits<875704438u>>(void *a1, double a2, double a3)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = __sincos_stret(a2 * 6.28318531);
  if (v5)
  {
    v9 = 0;
    v10 = (1.0 - a3) * 128.0;
    v11 = *a1 + 1;
    do
    {
      if (v6)
      {
        v12 = 0;
        v13 = 1.0 - v9 / (v5 - 1) + -0.5;
        v14 = v13 * -v8.__sinval;
        v15 = v8.__cosval * v13;
        v16 = v11;
        do
        {
          v17 = v12 / (v6 - 1) + -0.5;
          v18 = v14 + v8.__cosval * v17;
          v19 = v15 + v8.__sinval * v17;
          v20 = llround(v18 * 224.0 + 128.0);
          if (v20 >= 255)
          {
            v20 = 255;
          }

          v21 = llround(v19 * 224.0 + 128.0);
          v22 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            v21 = 255;
          }

          *(v16 - 1) = (v10 + a3 * v22);
          *v16 = (v10 + a3 * (v21 & ~(v21 >> 31)));
          v16 += 2;
          ++v12;
        }

        while (v6 != v12);
      }

      ++v9;
      v11 += v7;
    }

    while (v9 != v5);
  }
}

void ZonePlate::render_4xx<PixelFormatTraits<875704422u>>(uint64_t a1, void *a2, void *a3)
{
  render_zone_plate<PixelFormatTraits<1278226488u>>(a2, *(a1 + 64), *(a1 + 80));
  if (*(a1 + 12) == 1)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 24);

    render_chroma_gradient<PixelFormatTraits<875704422u>>(a3, v5, v6);
  }

  else
  {
    v8 = a3[1];
    v7 = a3[2];

    fill_rect<unsigned short>(a3, 0, 0, v7, v8, 32896);
  }
}

void render_chroma_gradient<PixelFormatTraits<875704422u>>(void *a1, double a2, double a3)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = __sincos_stret(a2 * 6.28318531);
  if (v5)
  {
    v9 = 0;
    v10 = (1.0 - a3) * 128.0;
    v11 = *a1 + 1;
    do
    {
      if (v6)
      {
        v12 = 0;
        v13 = 1.0 - v9 / (v5 - 1) + -0.5;
        v14 = v13 * -v8.__sinval;
        v15 = v8.__cosval * v13;
        v16 = v11;
        do
        {
          v17 = v12 / (v6 - 1) + -0.5;
          v18 = v14 + v8.__cosval * v17;
          v19 = v15 + v8.__sinval * v17;
          v20 = llround(v18 * 255.0 + 128.0 + 1.0e-12);
          if (v20 >= 255)
          {
            v20 = 255;
          }

          v21 = llround(v19 * 255.0 + 128.0 + 1.0e-12);
          v22 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            v21 = 255;
          }

          *(v16 - 1) = (v10 + a3 * v22);
          *v16 = (v10 + a3 * (v21 & ~(v21 >> 31)));
          v16 += 2;
          ++v12;
        }

        while (v6 != v12);
      }

      ++v9;
      v11 += v7;
    }

    while (v9 != v5);
  }
}

void ZonePlate::render_4xx<PixelFormatTraits<2016686640u>>(uint64_t a1, void *a2, void *a3)
{
  render_zone_plate<PixelFormatTraits<2016686640u>>(a2, *(a1 + 64), *(a1 + 80));
  if (*(a1 + 12) == 1)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 24);

    render_chroma_gradient<PixelFormatTraits<2016686640u>>(a3, v5, v6);
  }

  else
  {
    v8 = a3[1];
    v7 = a3[2];

    fill_rect<unsigned int>(a3, 0, 0, v7, v8, -2147450880);
  }
}

void render_zone_plate<PixelFormatTraits<2016686640u>>(void *a1, double a2, double a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    v5 = a1[2];
    v6 = a1[3];
    v7 = a3 * 0.5;
    v56 = v7 / v5;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = vdupq_n_s32(v5 >> 1);
    v53 = vdupq_lane_s64(*&a2, 0);
    v54 = v9;
    v10 = *a1 + 8;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v58 = vnegq_f64(v11);
    v52 = vdupq_n_s64(0x401921FB54442D18uLL);
    __asm { FMOV            V0.2D, #0.5 }

    v72 = _Q0;
    v17 = v7 / v3;
    v55 = v8;
    do
    {
      if (v5)
      {
        *_Q0.i64 = (v4 - (v3 >> 1));
        v9.i64[0] = 0;
        v18 = v10;
        v19 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
        v20 = xmmword_25792BAF0;
        v21 = xmmword_25792BAE0;
        v57 = vdupq_lane_s64(COERCE__INT64(*vbslq_s8(v58, v9, _Q0).i64 + v17 * *_Q0.i64 * *_Q0.i64 + 0.0), 0);
        v9 = xmmword_25792BB10;
        v22 = xmmword_25792BB00;
        v23 = xmmword_25792F610;
        v24 = xmmword_25792F600;
        do
        {
          v68 = v22;
          v69 = v9;
          v70 = v21;
          v71 = v20;
          v25 = vcgeq_u64(v8, v20);
          v26 = vmovn_s64(v25);
          *v25.i8 = vuzp1_s16(v26, *v25.i8);
          v65 = vuzp1_s8(*v25.i8, *v25.i8).u8[0];
          v66 = v24;
          v27 = vsubq_s32(v24, v54);
          v67 = v23;
          v28 = vsubq_s32(v23, v54);
          v29.i64[0] = v28.i32[2];
          v29.i64[1] = v28.i32[3];
          v30 = vcvtq_f64_s64(v29);
          v29.i64[0] = v28.i32[0];
          v29.i64[1] = v28.i32[1];
          v31 = vcvtq_f64_s64(v29);
          v29.i64[0] = v27.i32[2];
          v29.i64[1] = v27.i32[3];
          v32 = vcvtq_f64_s64(v29);
          v29.i64[0] = v27.i32[0];
          v29.i64[1] = v27.i32[1];
          v33 = vcvtq_f64_s64(v29);
          v75 = vmulq_f64(vaddq_f64(vaddq_f64(v57, vaddq_f64(vmlaq_f64(vbslq_s8(v58, 0, v31), v31, vmulq_n_f64(v31, v56)), 0)), v53), v52);
          v77 = vmulq_f64(vaddq_f64(vaddq_f64(v57, vaddq_f64(vmlaq_f64(vbslq_s8(v58, 0, v30), v30, vmulq_n_f64(v30, v56)), 0)), v53), v52);
          v73 = vmulq_f64(vaddq_f64(vaddq_f64(v57, vaddq_f64(vmlaq_f64(vbslq_s8(v58, 0, v32), v32, vmulq_n_f64(v32, v56)), 0)), v53), v52);
          __xa = vmulq_f64(vaddq_f64(vaddq_f64(v57, vaddq_f64(vmlaq_f64(vbslq_s8(v58, 0, v33), v33, vmulq_n_f64(v33, v56)), 0)), v53), v52);
          v62 = cos(__xa.f64[1]);
          __x = cos(__xa.f64[0]);
          v61 = cos(v73.f64[1]);
          v74 = cos(v73.f64[0]);
          v59 = cos(v75.f64[1]);
          v34.f64[0] = cos(v75.f64[0]);
          v34.f64[1] = v59;
          v76 = v34;
          v60 = cos(v77.f64[1]);
          v35.f64[0] = cos(v77.f64[0]);
          v35.f64[1] = v60;
          v36 = v72;
          v37 = vmlaq_f64(v36, v36, v35);
          v38 = vdupq_n_s64(0x406B600000000000uLL);
          __asm { FMOV            V1.2D, #16.0 }

          v40 = vmlaq_f64(_Q1, v38, vmlaq_f64(v36, v36, v76));
          v41 = vmlaq_f64(_Q1, v38, v37);
          __asm { FMOV            V2.2D, #4.0 }

          v43 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v40, _Q2))), vcvtq_s64_f64(vrndaq_f64(vmulq_f64(v41, _Q2))));
          *&v40.f64[0] = 0x300000003;
          *&v40.f64[1] = 0x300000003;
          v44 = vmaxq_s32(vminq_s32(v43, v40), 0);
          if (v65)
          {
            *(v18 - 4) = v44.i16[0] << 6;
          }

          if (vuzp1_s8(vuzp1_s16(v26, *&v38), *&v38).i8[1])
          {
            *(v18 - 3) = v44.i16[2] << 6;
          }

          v8 = v55;
          if (vuzp1_s8(vuzp1_s16(*&v38, vmovn_s64(vcgeq_u64(v55, *&v70))), *&v38).i8[2])
          {
            *(v18 - 2) = v44.i16[4] << 6;
            *(v18 - 1) = v44.i16[6] << 6;
          }

          v45.f64[0] = __x;
          v45.f64[1] = v62;
          v46.f64[0] = v74;
          v46.f64[1] = v61;
          v47 = vuzp1q_s32(vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vmlaq_f64(_Q1, v38, vmlaq_f64(v72, v72, v45)), _Q2))), vcvtq_s64_f64(vrndaq_f64(vmulq_f64(vmlaq_f64(_Q1, v38, vmlaq_f64(v72, v72, v46)), _Q2))));
          v48.i64[0] = 0x300000003;
          v48.i64[1] = 0x300000003;
          v49 = vmaxq_s32(vminq_s32(v47, v48), 0);
          v50 = vmovn_s64(vcgeq_u64(v55, v69));
          if (vuzp1_s8(*&v49, vuzp1_s16(v50, *&v49)).i32[1])
          {
            *v18 = v49.i16[0] << 6;
          }

          if (vuzp1_s8(*&v49, vuzp1_s16(v50, *&v49)).i8[5])
          {
            v18[1] = v49.i16[2] << 6;
          }

          if (vuzp1_s8(*&v49, vuzp1_s16(*&v49, vmovn_s64(vcgeq_u64(v55, *&v68)))).i8[6])
          {
            v18[2] = v49.i16[4] << 6;
            v18[3] = v49.i16[6] << 6;
          }

          v51 = vdupq_n_s64(8uLL);
          v9 = vaddq_s64(v69, v51);
          v21 = vaddq_s64(v70, v51);
          v20 = vaddq_s64(v71, v51);
          v22 = vaddq_s64(v68, v51);
          _Q0.i64[0] = 0x800000008;
          _Q0.i64[1] = 0x800000008;
          v23 = vaddq_s32(v67, _Q0);
          v24 = vaddq_s32(v66, _Q0);
          v18 += 8;
          v19 -= 8;
        }

        while (v19);
      }

      ++v4;
      v10 += v6;
    }

    while (v4 != v3);
  }
}

void render_chroma_gradient<PixelFormatTraits<2016686640u>>(void *a1, double a2, double a3)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = __sincos_stret(a2 * 6.28318531);
  if (v5)
  {
    v9 = 0;
    v10 = (1.0 - a3) * 512.0;
    v11 = *a1 + 2;
    do
    {
      if (v6)
      {
        v12 = 0;
        v13 = 1.0 - v9 / (v5 - 1) + -0.5;
        v14 = v13 * -v8.__sinval;
        v15 = v8.__cosval * v13;
        v16 = v11;
        do
        {
          v17 = v12 / (v6 - 1) + -0.5;
          v18 = llround(((v14 + v8.__cosval * v17) * 224.0 + 128.0) * 4.0);
          v19 = (v15 + v8.__sinval * v17) * 224.0 + 128.0;
          if (v18 >= 1023)
          {
            v18 = 1023;
          }

          v20 = llround(v19 * 4.0);
          if (v20 >= 1023)
          {
            v20 = 1023;
          }

          *(v16 - 1) = (v10 + a3 * (v18 & ~(v18 >> 31))) << 6;
          *v16 = (v10 + a3 * (v20 & ~(v20 >> 31))) << 6;
          v16 += 2;
          ++v12;
        }

        while (v6 != v12);
      }

      ++v9;
      v11 += v7;
    }

    while (v9 != v5);
  }
}

void ZonePlate::render_4xx<PixelFormatTraits<2019963440u>>(uint64_t a1, void *a2, void *a3)
{
  render_zone_plate<PixelFormatTraits<1278226736u>>(a2, *(a1 + 64), *(a1 + 80));
  if (*(a1 + 12) == 1)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 24);

    render_chroma_gradient<PixelFormatTraits<2019963440u>>(a3, v5, v6);
  }

  else
  {
    v8 = a3[1];
    v7 = a3[2];

    fill_rect<unsigned int>(a3, 0, 0, v7, v8, -2147450880);
  }
}

void render_chroma_gradient<PixelFormatTraits<2019963440u>>(void *a1, double a2, double a3)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = __sincos_stret(a2 * 6.28318531);
  if (v5)
  {
    v9 = 0;
    v10 = (1.0 - a3) * 512.0;
    v11 = *a1 + 2;
    do
    {
      if (v6)
      {
        v12 = 0;
        v13 = 1.0 - v9 / (v5 - 1) + -0.5;
        v14 = v13 * -v8.__sinval;
        v15 = v8.__cosval * v13;
        v16 = v11;
        do
        {
          v17 = v12 / (v6 - 1) + -0.5;
          v18 = llround((v14 + v8.__cosval * v17) * 1023.0 + 512.0 + 1.0e-12);
          v19 = (v15 + v8.__sinval * v17) * 1023.0 + 512.0;
          if (v18 >= 1023)
          {
            v18 = 1023;
          }

          v20 = llround(v19 + 1.0e-12);
          if (v20 >= 1023)
          {
            v20 = 1023;
          }

          *(v16 - 1) = (v10 + a3 * (v18 & ~(v18 >> 31))) << 6;
          *v16 = (v10 + a3 * (v20 & ~(v20 >> 31))) << 6;
          v16 += 2;
          ++v12;
        }

        while (v6 != v12);
      }

      ++v9;
      v11 += v7;
    }

    while (v9 != v5);
  }
}

void ZonePlate::render_4xx<PixelFormatTraits<1937125938u>>(uint64_t a1, void *a2, void *a3)
{
  render_zone_plate<PixelFormatTraits<1937125938u>>(a2, *(a1 + 64), *(a1 + 80));
  if (*(a1 + 12) == 1)
  {
    v5 = *(a1 + 72);
    v6 = *(a1 + 24);

    render_chroma_gradient<PixelFormatTraits<1937125938u>>(a3, v5, v6);
  }

  else
  {
    v8 = a3[1];
    v7 = a3[2];

    fill_rect<unsigned int>(a3, 0, 0, v7, v8, -2147450880);
  }
}

void render_zone_plate<PixelFormatTraits<1937125938u>>(void *a1, double a2, double a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = 0;
    v5 = a1[2];
    v6 = a3 * 0.5;
    v74 = v6 / v5;
    v68 = a1[3];
    v7 = vdupq_n_s64(v5 - 1);
    v71 = vdupq_lane_s64(*&a2, 0);
    v72 = vdupq_n_s32(v5 >> 1);
    v8 = *a1 + 8;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v76 = vnegq_f64(v9);
    v10 = vdupq_n_s64(0x401921FB54442D18uLL);
    __asm { FMOV            V0.2D, #0.5 }

    v69 = _Q0;
    v70 = v10;
    v16 = v6 / v3;
    v73 = v7;
    do
    {
      if (v5)
      {
        v17 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
        *_Q0.i64 = (v4 - (v3 >> 1));
        v10.i64[0] = 0;
        v18 = *vbslq_s8(v76, v10, _Q0).i64;
        v19 = v8;
        v20 = xmmword_25792BAF0;
        v10 = xmmword_25792BAE0;
        v75 = vdupq_lane_s64(COERCE__INT64(v18 + v16 * *_Q0.i64 * *_Q0.i64 + 0.0), 0);
        v21 = xmmword_25792BB10;
        v22 = xmmword_25792BB00;
        v23 = xmmword_25792F610;
        v24 = xmmword_25792F600;
        do
        {
          v83 = v22;
          v84 = v21;
          v85 = v10;
          v86 = v20;
          v25 = vcgeq_u64(v7, v20);
          v26 = vmovn_s64(v25);
          *v25.i8 = vuzp1_s16(v26, *v25.i8);
          v80 = vuzp1_s8(*v25.i8, *v25.i8).u8[0];
          v81 = v24;
          v82 = v23;
          v27 = vsubq_s32(v24, v72);
          v28 = vsubq_s32(v23, v72);
          v29.i64[0] = v28.i32[2];
          v29.i64[1] = v28.i32[3];
          v30 = vcvtq_f64_s64(v29);
          v29.i64[0] = v28.i32[0];
          v29.i64[1] = v28.i32[1];
          v31 = vcvtq_f64_s64(v29);
          v29.i64[0] = v27.i32[2];
          v29.i64[1] = v27.i32[3];
          v32 = vcvtq_f64_s64(v29);
          v29.i64[0] = v27.i32[0];
          v29.i64[1] = v27.i32[1];
          v33 = vcvtq_f64_s64(v29);
          v89 = vmulq_f64(vaddq_f64(vaddq_f64(v75, vaddq_f64(vmlaq_f64(vbslq_s8(v76, 0, v31), v31, vmulq_n_f64(v31, v74)), 0)), v71), v70);
          v91 = vmulq_f64(vaddq_f64(vaddq_f64(v75, vaddq_f64(vmlaq_f64(vbslq_s8(v76, 0, v30), v30, vmulq_n_f64(v30, v74)), 0)), v71), v70);
          v87 = vmulq_f64(vaddq_f64(vaddq_f64(v75, vaddq_f64(vmlaq_f64(vbslq_s8(v76, 0, v32), v32, vmulq_n_f64(v32, v74)), 0)), v71), v70);
          __x = vmulq_f64(vaddq_f64(vaddq_f64(v75, vaddq_f64(vmlaq_f64(vbslq_s8(v76, 0, v33), v33, vmulq_n_f64(v33, v74)), 0)), v71), v70);
          v78 = cos(__x.f64[1]);
          v34.f64[0] = cos(__x.f64[0]);
          v34.f64[1] = v78;
          v79 = v34;
          __x.f64[0] = cos(v87.f64[1]);
          v35.f64[0] = cos(v87.f64[0]);
          v35.f64[1] = __x.f64[0];
          v88 = v35;
          __x.f64[0] = cos(v89.f64[1]);
          v36.f64[0] = cos(v89.f64[0]);
          v36.f64[1] = __x.f64[0];
          v90 = v36;
          __x.f64[0] = cos(v91.f64[1]);
          v37.f64[0] = cos(v91.f64[0]);
          v37.f64[1] = __x.f64[0];
          v38 = vdupq_n_s64(0x406B600000000000uLL);
          __asm { FMOV            V5.2D, #16.0 }

          v40 = vmlaq_f64(_Q5, v38, vmlaq_f64(v69, v69, v79));
          v41 = vmlaq_f64(_Q5, v38, vmlaq_f64(v69, v69, v88));
          v42 = vmlaq_f64(_Q5, v38, vmlaq_f64(v69, v69, v90));
          v43 = vmlaq_f64(_Q5, v38, vmlaq_f64(v69, v69, v37));
          v44 = vdupq_n_s64(0x4070000000000000uLL);
          v45 = vmulq_f64(v43, v44);
          v46 = vmulq_f64(v41, v44);
          v47 = vrndaq_f64(vmulq_f64(v40, v44));
          v48 = vrndaq_f64(vmulq_f64(v42, v44));
          v49 = vrndaq_f64(v45);
          v50 = v49.f64[1];
          v51 = v49.f64[0];
          if (v49.f64[1] >= 0xFFFF)
          {
            v50 = 0xFFFF;
          }

          if (v51 >= 0xFFFF)
          {
            v51 = 0xFFFF;
          }

          v52 = __PAIR64__(v50, v51);
          v53 = v48.f64[1];
          v54 = v48.f64[0];
          if (v48.f64[1] >= 0xFFFF)
          {
            v53 = 0xFFFF;
          }

          if (v54 >= 0xFFFF)
          {
            v54 = 0xFFFF;
          }

          v55.i64[0] = __PAIR64__(v53, v54);
          v56 = vrndaq_f64(v46);
          v55.i64[1] = v52;
          v57 = v56.f64[1];
          v58.i64[0] = 0xFFFF0000FFFFLL;
          v58.i64[1] = 0xFFFF0000FFFFLL;
          v59 = vandq_s8(v55, v58);
          if (v56.f64[1] >= 0xFFFF)
          {
            v57 = 0xFFFF;
          }

          if (v56.f64[0] >= 0xFFFF)
          {
            v60 = 0xFFFF;
          }

          else
          {
            v60 = v56.f64[0];
          }

          v61 = v47.f64[1];
          if (v47.f64[1] >= 0xFFFF)
          {
            v61 = 0xFFFF;
          }

          v62 = v47.f64[0];
          if (v47.f64[0] >= 0xFFFF)
          {
            v62 = 0xFFFF;
          }

          if (v80)
          {
            *(v19 - 4) = v59.i16[0];
          }

          if (vuzp1_s8(vuzp1_s16(v26, *&v59), *&v59).i8[1])
          {
            *(v19 - 3) = v59.i16[2];
          }

          v7 = v73;
          if (vuzp1_s8(vuzp1_s16(*&v59, vmovn_s64(vcgeq_u64(v73, *&v85))), *&v59).i8[2])
          {
            *(v19 - 2) = v59.i16[4];
            *(v19 - 1) = v59.i16[6];
          }

          v63.i64[0] = __PAIR64__(v61, v62);
          v63.i64[1] = __PAIR64__(v57, v60);
          v64.i64[0] = 0xFFFF0000FFFFLL;
          v64.i64[1] = 0xFFFF0000FFFFLL;
          v65 = vandq_s8(v63, v64);
          v66 = vmovn_s64(vcgeq_u64(v73, v84));
          if (vuzp1_s8(*&v65, vuzp1_s16(v66, *&v65)).i32[1])
          {
            *v19 = v65.i16[0];
          }

          if (vuzp1_s8(*&v65, vuzp1_s16(v66, *&v65)).i8[5])
          {
            v19[1] = v65.i16[2];
          }

          if (vuzp1_s8(*&v65, vuzp1_s16(*&v65, vmovn_s64(vcgeq_u64(v73, *&v83)))).i8[6])
          {
            v19[2] = v65.i16[4];
            v19[3] = v65.i16[6];
          }

          v67 = vdupq_n_s64(8uLL);
          v21 = vaddq_s64(v84, v67);
          v10 = vaddq_s64(v85, v67);
          v20 = vaddq_s64(v86, v67);
          v22 = vaddq_s64(v83, v67);
          _Q0.i64[0] = 0x800000008;
          _Q0.i64[1] = 0x800000008;
          v23 = vaddq_s32(v82, _Q0);
          v24 = vaddq_s32(v81, _Q0);
          v19 += 8;
          v17 -= 8;
        }

        while (v17);
      }

      ++v4;
      v8 += v68;
    }

    while (v4 != v3);
  }
}

void render_chroma_gradient<PixelFormatTraits<1937125938u>>(void *a1, double a2, double a3)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = __sincos_stret(a2 * 6.28318531);
  if (v5)
  {
    v9 = 0;
    v10 = (1.0 - a3) * 32768.0;
    v11 = *a1 + 2;
    do
    {
      if (v6)
      {
        v12 = 0;
        v13 = 1.0 - v9 / (v5 - 1) + -0.5;
        v14 = v13 * -v8.__sinval;
        v15 = v8.__cosval * v13;
        v16 = v11;
        do
        {
          v17 = v12 / (v6 - 1) + -0.5;
          v18 = v14 + v8.__cosval * v17;
          v19 = v15 + v8.__sinval * v17;
          v20 = llround((v18 * 224.0 + 128.0) * 256.0);
          if (v20 >= 0xFFFF)
          {
            v20 = 0xFFFF;
          }

          v21 = llround((v19 * 224.0 + 128.0) * 256.0);
          v22 = v20 & ~(v20 >> 31);
          if (v21 >= 0xFFFF)
          {
            v21 = 0xFFFF;
          }

          *(v16 - 1) = (v10 + a3 * v22);
          *v16 = (v10 + a3 * (v21 & ~(v21 >> 31)));
          v16 += 2;
          ++v12;
        }

        while (v6 != v12);
      }

      ++v9;
      v11 += v7;
    }

    while (v9 != v5);
  }
}

void sub_2578F3D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIOq8q2ToL010FrameProcessor;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2578F546C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t a11, uint64_t a12, __int16 buf)
{
  if (a2 == 1)
  {
    v15 = objc_begin_catch(exception_object);
    v16 = v14;
    v17 = [v13 avfAppendSignPostID];
    if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      buf = 0;
      _os_signpost_emit_with_name_impl(&dword_257883000, v16, OS_SIGNPOST_INTERVAL_END, v17, "mio.append.sample.buffer.attachments", "", &buf, 2u);
    }

    v18 = MEMORY[0x277CCACA8];
    v22 = [v13 streamId];
    v19 = [v18 stringWithFormat:@"Exception occurred during appendTimedMetadataGroup %@ for stream '%@'."];

    v20 = [MEMORY[0x277CCA9B8] streamErrorWithMessage:v19 code:21];
    v21 = [v13 writer];
    [v21 reportError:v20];

    objc_end_catch();
    JUMPOUT(0x2578F5434);
  }

  _Unwind_Resume(exception_object);
}

void sub_2578F6534(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2578F72AC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_2578F73F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F759C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void sub_2578F7C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, void *a11)
{
  std::__tree<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::__map_value_compare<BT_2111::SignalLevel,std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>,std::less<BT_2111::SignalLevel>,true>,std::allocator<std::__value_type<BT_2111::SignalLevel,BT_2111::rgb>>>::destroy(&a10, a11);

  _Unwind_Resume(a1);
}

void sub_2578F7F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F8240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F841C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _Unwind_Resume(a1);
}

void sub_2578F8564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F8730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F889C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F8974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F8B44(_Unwind_Exception *a1)
{

  _Unwind_Resume(a1);
}

void sub_2578F8C7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F8DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F8F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F90E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F9238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v18 = v17;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F9504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v19 = v18;

  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F97F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2578F9AC0(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,anonymous namespace::StreamRecordingData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,anonymous namespace::StreamRecordingData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void *std::set<unsigned int>::set[abi:ne200100](void *a1, unsigned int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(a1, v4, a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(void *a1, uint64_t *a2, unsigned int *a3)
{
  v3 = *std::__tree<unsigned int>::__find_equal<unsigned int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,anonymous namespace::MetadataRecordingData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

void MOVStreamHEVCLosslessEncoder::MOVStreamHEVCLosslessEncoder(MOVStreamHEVCLosslessEncoder *this)
{
  this->var2 = 0;
  *&this->var9 = 0x800000000;
  *&this->var12 = 0;
  *&this->var3 = 0x2D000000500;
  this->var5 = 30.0;
  this->var6 = 0;
  *&this->var0 = 0;
  *&this->var7.var0 = xmmword_25792F680;
  this->var7.var4 = 1.0;
  *&this->var7.var5 = 257;
}

uint64_t MOVStreamHEVCLosslessEncoder::Open(uint64_t a1, int32_t a2, int32_t a3, int a4, char a5, const opaqueCMFormatDescription *a6, void (__cdecl *a7)(void *, void *, OSStatus, VTEncodeInfoFlags, CMSampleBufferRef), void *a8, double a9)
{
  v106 = *MEMORY[0x277D85DE8];
  v96 = a1;
  if (a2 < 64 || a3 <= 63)
  {
    v16 = +[MIOLog defaultLog];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "Frame size too small";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
      *&buf[22] = 1024;
      *&buf[24] = 109;
      _os_log_impl(&dword_257883000, v16, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
    }

    a1 = v96;
  }

  *(a1 + 24) = a9;
  v17 = (a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  *(a1 + 104) = 1752589105;
  *(a1 + 1) = a5;
  v95 = (a1 + 32);
  if (*(a1 + 32))
  {
LABEL_7:
    *(a1 + 108) = 0;
    v18 = a4 - 1;
    if ((a4 - 1) > 9)
    {
      v19 = 8;
      v20 = 1;
    }

    else
    {
      v19 = dword_25792F690[v18];
      v20 = dword_25792F6B8[v18];
    }

    *(a1 + 100) = v19;
    v21 = (a1 + 100);
    *(a1 + 48) = v20;
    *(a1 + 64) = 1;
    v22 = *(a1 + 8);
    if (v22)
    {
      if (![v22 configureSessionOverride:*v95])
      {
        return 4294954394;
      }

      if (!+[MIOLog debugEnabled])
      {
        goto LABEL_17;
      }

      v23 = +[MIOLog defaultLog];
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v24 = "Custom video encoder configuration.";
      goto LABEL_15;
    }

    if (+[MIOLog debugEnabled])
    {
      v38 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_257883000, v38, OS_LOG_TYPE_DEBUG, "*-----------------------------------------------------------------------------*", buf, 2u);
      }
    }

    v39 = *MEMORY[0x277CBECE8];
    v40 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, (v96 + 44));
    if (+[MIOLog debugEnabled])
    {
      v41 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
      {
        v42 = *(v96 + 44);
        *buf = 67109120;
        *&buf[4] = v42;
        _os_log_impl(&dword_257883000, v41, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_Usage = %d", buf, 8u);
      }
    }

    v43 = VTSessionSetProperty(*v95, *MEMORY[0x277CE2608], v40);
    CFRelease(v40);
    if (v43)
    {
      v44 = +[MIOLog defaultLog];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109890;
        *&buf[4] = v43;
        *&buf[8] = 2080;
        *&buf[10] = "kVTCompressionPropertyKey_Usage failed";
        *&buf[18] = 2080;
        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
        v104 = 1024;
        v105 = 438;
        _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_ERROR, "Assert: (%d) %s - f: %s, l: %d\n", buf, 0x22u);
      }

      goto LABEL_97;
    }

    v45 = *(v96 + 48);
    if (v45 <= 121)
    {
      if (v45 <= 65)
      {
        switch(v45)
        {
          case 1:
            v46 = @"HEVC_Main_AutoLevel";
            goto LABEL_90;
          case 2:
            v46 = @"HEVC_Main10_AutoLevel";
            goto LABEL_90;
          case 3:
            v46 = @"HEVC_MainStill_AutoLevel";
            goto LABEL_90;
        }

LABEL_120:
        v44 = [MIOLog defaultLog:outputCallbackRefCon];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v62 = *(v96 + 48);
          *buf = 67109120;
          *&buf[4] = v62;
          _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_ERROR, "Profile passed unrecognized (%d). exit.", buf, 8u);
        }

        goto LABEL_97;
      }

      switch(v45)
      {
        case 'B':
          v50 = MEMORY[0x277CE2918];
          break;
        case 'M':
          v50 = MEMORY[0x277CE2988];
          break;
        case 'd':
          v50 = MEMORY[0x277CE2938];
          break;
        default:
          goto LABEL_120;
      }
    }

    else if (v45 <= 1309)
    {
      switch(v45)
      {
        case 122:
          v50 = MEMORY[0x277CE2928];
          break;
        case 244:
          v50 = MEMORY[0x277CE2930];
          break;
        case 1308:
          v46 = @"HEVC_Main444_AutoLevel";
          goto LABEL_90;
        default:
          goto LABEL_120;
      }
    }

    else
    {
      if (v45 <= 1311)
      {
        if (v45 == 1310)
        {
          v46 = @"HEVC_Main44410_AutoLevel";
        }

        else
        {
          v46 = @"HEVC_Monochrome12_AutoLevel";
        }

LABEL_90:
        if ([MIOLog debugEnabled:outputCallbackRefCon])
        {
          v51 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543362;
            *&buf[4] = v46;
            _os_log_impl(&dword_257883000, v51, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_ProfileLevel = %{public}@", buf, 0xCu);
          }
        }

        if (VTSessionSetProperty(*v95, *MEMORY[0x277CE25D8], v46))
        {
          v44 = +[MIOLog defaultLog];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            *&buf[4] = "VTVideoEncoderSetProperty failed";
            *&buf[12] = 2080;
            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
            *&buf[22] = 1024;
            *&buf[24] = 511;
            _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
          }
        }

        else
        {
          v53 = CFNumberCreate(v39, kCFNumberSInt32Type, (v96 + 52));
          if (+[MIOLog debugEnabled])
          {
            v54 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
            {
              v55 = *(v96 + 52);
              *buf = 67109120;
              *&buf[4] = v55;
              _os_log_impl(&dword_257883000, v54, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_Priority = %d", buf, 8u);
            }
          }

          v56 = VTSessionSetProperty(*v95, *MEMORY[0x277CE25D0], v53);
          CFRelease(v53);
          if (v56)
          {
            if (!+[MIOLog debugEnabled])
            {
              return 2;
            }

            v44 = +[MIOLog defaultLog];
            if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315650;
              *&buf[4] = "kVTCompressionPropertyKey_Priority failed";
              *&buf[12] = 2080;
              *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
              *&buf[22] = 1024;
              *&buf[24] = 528;
              _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_DEBUG, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
            }
          }

          else
          {
            v57 = *MEMORY[0x277CBED28];
            v58 = *MEMORY[0x277CBED10];
            if (*(v96 + 67))
            {
              v59 = *MEMORY[0x277CBED28];
            }

            else
            {
              v59 = *MEMORY[0x277CBED10];
            }

            if (+[MIOLog debugEnabled])
            {
              v60 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
              {
                v61 = *(v96 + 67);
                *buf = 67109120;
                *&buf[4] = v61;
                _os_log_impl(&dword_257883000, v60, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_AllowFrameReordering = %d", buf, 8u);
              }
            }

            if (VTSessionSetProperty(*v95, *MEMORY[0x277CE2500], v59))
            {
              v44 = +[MIOLog defaultLog];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315650;
                *&buf[4] = "VTVideoEncoderSetProperty failed";
                *&buf[12] = 2080;
                *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                *&buf[22] = 1024;
                *&buf[24] = 544;
                _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
              }
            }

            else
            {
              v63 = CFNumberCreate(v39, kCFNumberDoubleType, (v96 + 56));
              if (+[MIOLog debugEnabled])
              {
                v64 = +[MIOLog defaultLog];
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  v65 = *(v96 + 56);
                  *buf = 134217984;
                  *&buf[4] = v65;
                  _os_log_impl(&dword_257883000, v64, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration = %f", buf, 0xCu);
                }
              }

              v66 = VTSessionSetProperty(*v95, *MEMORY[0x277CE25A8], v63);
              CFRelease(v63);
              if (v66)
              {
                v44 = +[MIOLog defaultLog];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "VTVideoEncoderSetProperty kVTCompressionPropertyKey_MaxKeyFrameIntervalDuration failed";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 563;
                  _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
                }
              }

              else
              {
                v67 = CFNumberCreate(v39, kCFNumberDoubleType, v17);
                if (+[MIOLog debugEnabled])
                {
                  v68 = +[MIOLog defaultLog];
                  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
                  {
                    v69 = *v17;
                    *buf = 134217984;
                    *&buf[4] = v69;
                    _os_log_impl(&dword_257883000, v68, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_ExpectedFrameRate = %f", buf, 0xCu);
                  }
                }

                v70 = VTSessionSetProperty(*v95, *MEMORY[0x277CE2548], v67);
                CFRelease(v67);
                if (!v70)
                {
                  *valuePtr = 1.0;
                  v71 = CFNumberCreate(v39, kCFNumberFloat32Type, valuePtr);
                  if (+[MIOLog debugEnabled])
                  {
                    v72 = +[MIOLog defaultLog];
                    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134217984;
                      *&buf[4] = *valuePtr;
                      _os_log_impl(&dword_257883000, v72, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_Quality = %f", buf, 0xCu);
                    }
                  }

                  v73 = VTSessionSetProperty(*v95, *MEMORY[0x277CE25E0], v71);
                  CFRelease(v71);
                  if (v73)
                  {
                    v74 = +[MIOLog defaultLog];
                    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      *&buf[4] = "VTVideoEncoderSetProperty kVTCompressionPropertyKey_Quality failed";
                      *&buf[12] = 2080;
                      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                      *&buf[22] = 1024;
                      *&buf[24] = 599;
                      _os_log_impl(&dword_257883000, v74, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
                    }
                  }

                  else
                  {
                    if (*(v96 + 65))
                    {
                      v75 = v57;
                    }

                    else
                    {
                      v75 = v58;
                    }

                    if (*v96)
                    {
                      v76 = v58;
                    }

                    else
                    {
                      v76 = v75;
                    }

                    if (+[MIOLog debugEnabled])
                    {
                      v77 = +[MIOLog defaultLog];
                      if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                      {
                        v78 = *(v96 + 65);
                        *buf = 67109120;
                        *&buf[4] = v78;
                        _os_log_impl(&dword_257883000, v77, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_RealTime = %d", buf, 8u);
                      }
                    }

                    v79 = VTSessionSetProperty(*v95, *MEMORY[0x277CE25F0], v76);
                    if (v79)
                    {
                      v74 = +[MIOLog defaultLog];
                      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 67109890;
                        *&buf[4] = v79;
                        *&buf[8] = 2080;
                        *&buf[10] = "VTVideoEncoderSetProperty kVTCompressionPropertyKey_RealTime failed";
                        *&buf[18] = 2080;
                        *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                        v104 = 1024;
                        v105 = 622;
                        _os_log_impl(&dword_257883000, v74, OS_LOG_TYPE_ERROR, "Assert: (%d) %s - f: %s, l: %d\n", buf, 0x22u);
                      }
                    }

                    else
                    {
                      if (*v96 != 1)
                      {
                        goto LABEL_194;
                      }

                      if (+[MIOLog debugEnabled])
                      {
                        v80 = +[MIOLog defaultLog];
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
                        {
                          v81 = *(v96 + 65);
                          *buf = 67109120;
                          *&buf[4] = v81;
                          _os_log_impl(&dword_257883000, v80, OS_LOG_TYPE_DEBUG, "Encoder Config >> kVTCompressionPropertyKey_MaximizePowerEfficiency = %d", buf, 8u);
                        }
                      }

                      v82 = VTSessionSetProperty(*v95, *MEMORY[0x277CE25B0], v58);
                      if (v82)
                      {
                        v74 = +[MIOLog defaultLog];
                        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109890;
                          *&buf[4] = v82;
                          *&buf[8] = 2080;
                          *&buf[10] = "VTVideoEncoderSetProperty kVTCompressionPropertyKey_MaximizePowerEfficiency failed";
                          *&buf[18] = 2080;
                          *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                          v104 = 1024;
                          v105 = 640;
                          _os_log_impl(&dword_257883000, v74, OS_LOG_TYPE_ERROR, "Assert: (%d) %s - f: %s, l: %d\n", buf, 0x22u);
                        }
                      }

                      else
                      {
LABEL_194:
                        if (*(v96 + 66))
                        {
                          v83 = v57;
                        }

                        else
                        {
                          v83 = v58;
                        }

                        if (+[MIOLog debugEnabled])
                        {
                          v84 = +[MIOLog defaultLog];
                          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
                          {
                            v85 = *(v96 + 66);
                            *buf = 67109120;
                            *&buf[4] = v85;
                            _os_log_impl(&dword_257883000, v84, OS_LOG_TYPE_DEBUG, "Encoder Config >> my_kVTCompressionPropertyKey_DebugMetadataSEI2 = %d", buf, 8u);
                          }
                        }

                        v86 = VTSessionSetProperty(*v95, @"DebugMetadataSEI", v83);
                        if (v86)
                        {
                          v74 = +[MIOLog defaultLog];
                          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 67109890;
                            *&buf[4] = v86;
                            *&buf[8] = 2080;
                            *&buf[10] = "VTVideoEncoderSetProperty my_kVTCompressionPropertyKey_DebugMetadataSEI2 failed";
                            *&buf[18] = 2080;
                            *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                            v104 = 1024;
                            v105 = 655;
                            _os_log_impl(&dword_257883000, v74, OS_LOG_TYPE_ERROR, "Assert: (%d) %s - f: %s, l: %d\n", buf, 0x22u);
                          }
                        }

                        else
                        {
                          v87 = CFNumberCreate(v39, kCFNumberSInt32Type, v21);
                          if (+[MIOLog debugEnabled])
                          {
                            v88 = +[MIOLog defaultLog];
                            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
                            {
                              v89 = *v21;
                              *buf = 67109120;
                              *&buf[4] = v89;
                              _os_log_impl(&dword_257883000, v88, OS_LOG_TYPE_DEBUG, "Encoder Config >> my_kVTCompressionPropertyKey_OutputBitDepth = %d", buf, 8u);
                            }
                          }

                          v90 = VTSessionSetProperty(*v95, @"OutputBitDepth", v87);
                          CFRelease(v87);
                          if (!v90)
                          {
                            if (!+[MIOLog debugEnabled])
                            {
                              goto LABEL_17;
                            }

                            v23 = +[MIOLog defaultLog];
                            if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
                            {
LABEL_16:

LABEL_17:
                              *buf = *MEMORY[0x277CBED10];
                              if (VTSessionCopyProperty(*v95, *MEMORY[0x277CE2500], *MEMORY[0x277CBECE8], buf))
                              {
                                v25 = [MEMORY[0x277CCA9B8] writerWarningWithMessage:@"Cannot check AllowFrameReordering status of encoding session. Assuming disabled." code:0];
                              }

                              else
                              {
                                *(v96 + 109) = *buf == *MEMORY[0x277CBED28];
                                if (+[MIOLog debugEnabled])
                                {
                                  v47 = +[MIOLog defaultLog];
                                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                                  {
                                    v48 = *(v96 + 109);
                                    *valuePtr = 1.5047e-36;
                                    v98 = v48;
                                    _os_log_impl(&dword_257883000, v47, OS_LOG_TYPE_DEBUG, "AllowFrameReordering: %d", valuePtr, 8u);
                                  }
                                }

                                CFRelease(*buf);
                              }

                              if (a6)
                              {
                                MOVStreamHEVCLosslessEncoder::propagateColorAttachments(v25, a6, *v95);
                              }

                              else if (+[MIOLog debugEnabled])
                              {
                                v49 = +[MIOLog defaultLog];
                                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                                {
                                  *valuePtr = 0;
                                  _os_log_impl(&dword_257883000, v49, OS_LOG_TYPE_DEBUG, "Missing format discription for VTCompressionSession.", valuePtr, 2u);
                                }
                              }

                              return 0;
                            }

                            *buf = 0;
                            v24 = "*-----------------------------------------------------------------------------*";
LABEL_15:
                            _os_log_impl(&dword_257883000, v23, OS_LOG_TYPE_DEBUG, v24, buf, 2u);
                            goto LABEL_16;
                          }

                          v74 = +[MIOLog defaultLog];
                          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 136315650;
                            *&buf[4] = "VTVideoEncoderSetProperty my_kVTCompressionPropertyKey_OutputBitDepth failed";
                            *&buf[12] = 2080;
                            *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                            *&buf[22] = 1024;
                            *&buf[24] = 673;
                            _os_log_impl(&dword_257883000, v74, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
                          }
                        }
                      }
                    }
                  }

                  return 2;
                }

                v44 = +[MIOLog defaultLog];
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  *&buf[4] = "VTVideoEncoderSetProperty kVTCompressionPropertyKey_ExpectedFrameRate failed";
                  *&buf[12] = 2080;
                  *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
                  *&buf[22] = 1024;
                  *&buf[24] = 581;
                  _os_log_impl(&dword_257883000, v44, OS_LOG_TYPE_ERROR, "Assert: %s - f: %s, l: %d\n", buf, 0x1Cu);
                }
              }
            }
          }
        }

LABEL_97:

        return 2;
      }

      if (v45 != 1312)
      {
        if (v45 == 1313)
        {
          v46 = @"HEVC_Monochrome10_AutoLevel";
          goto LABEL_90;
        }

        goto LABEL_120;
      }

      v50 = MEMORY[0x277CE29C0];
    }

    v46 = *v50;
    goto LABEL_90;
  }

  v26 = MEMORY[0x277CBEC38];
  v27 = *MEMORY[0x277CE2BB0];
  v101[0] = *MEMORY[0x277CE2BA8];
  v101[1] = v27;
  v102[0] = MEMORY[0x277CBEC38];
  v102[1] = MEMORY[0x277CBEC38];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v102 forKeys:v101 count:2];
  v29 = v96;
  v30 = *(v96 + 8);
  if (v30)
  {
    v31 = [v30 overrideVideoEncoderSpecification];
    v32 = v31;
    if (v31)
    {
      v33 = v31;

      v28 = v33;
      v29 = v96;
    }

    v34 = [*(v29 + 8) codecTypeOverride];
    if (v34)
    {
      *(v29 + 104) = v34;
    }

    v29 = v96;
  }

  if (*(v29 + 1) != 1)
  {
    goto LABEL_29;
  }

  v35 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_257883000, v35, OS_LOG_TYPE_INFO, "VTCompressionSession: Enabling kVTCompressionSessionOption_AllowClientProcessEncode", buf, 2u);
  }

  v99 = *MEMORY[0x277CE2618];
  v100 = v26;
  compressionSessionOut = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  v93 = v95;
  outputCallbackRefCon = a8;
  v36 = VTCompressionSessionCreateWithOptions();

  v29 = v96;
  if ((*(v96 + 1) & 1) == 0)
  {
LABEL_29:
    v36 = VTCompressionSessionCreate(*MEMORY[0x277CBECE8], a2, a3, *(v29 + 104), v28, 0, 0, a7, a8, v95);
  }

  if (!v36)
  {

    a1 = v96;
    goto LABEL_7;
  }

  v37 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109890;
    *&buf[4] = v36;
    *&buf[8] = 2080;
    *&buf[10] = "VTCompressionSessionCreate failed\n";
    *&buf[18] = 2080;
    *&buf[20] = "/Library/Caches/com.apple.xbs/Sources/MOVStreamIO/MOVStreamIO/VTEncoder/MOVStreamHEVCLosslessEncoder.mm";
    v104 = 1024;
    v105 = 191;
    _os_log_impl(&dword_257883000, v37, OS_LOG_TYPE_ERROR, "Assert: (%d) %s - f: %s, l: %d\n", buf, 0x22u);
  }

  return v36;
}