void sub_18DFB1340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Unwind_Resume(a1);
}

BOOL RB::Path::ClipStroke::Transform::make_keyframes(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, double *a7)
{
  v29 = 0xFF8000007F800000;
  v30 = 0.0;
  v31 = 0.0;
  result = 0;
  if (single_keyframes)
  {
    v15 = *a5;
    v16 = a5[1] - *a5;
    v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
    if (v17 >= 2 && v16 != 48)
    {
      v18 = *(v15 + 32);
      v12.i32[0] = *(v15 + 8);
      v19 = v29;
      if (v17 <= 3)
      {
        v17 = 3;
      }

      v20 = v17 - 2;
      v21 = (v15 + 56);
      do
      {
        v22 = v18;
        v18 = *v21;
        if (v22 > *&v19 && v22 < *(&v19 + 1))
        {
          if (v22 >= *v12.i32)
          {
            v13.i32[0] = v12.i32[0];
          }

          else
          {
            *v13.i32 = v22;
          }

          if (v18 < *v13.i32)
          {
            v13.i32[0] = *v21;
          }

          if (*v12.i32 < v22)
          {
            *v12.i32 = v22;
          }

          if (*v12.i32 < v18)
          {
            v12.i32[0] = *v21;
          }

          v24 = a1[17];
          v13 = vcgt_f32(vdup_lane_s32(v13, 0), v24);
          v25 = vorr_s8(v13, vcgt_f32(v24, vdup_lane_s32(v12, 0)));
          v12 = vpmin_u32(v25, v25);
          if (v12.i32[0] < 0)
          {
            *(v21 - 6) = INFINITY;
          }
        }

        v21 += 6;
        *v12.i32 = v22;
        --v20;
      }

      while (v20);
    }

    *a6 = v29;
    v26 = 0.0;
    if (v31 > 0.0)
    {
      v27 = vrecpe_f32(LODWORD(v31));
      v28 = vmul_f32(v27, vrecps_f32(LODWORD(v31), v27));
      v26 = v30 * vmul_f32(v28, vrecps_f32(LODWORD(v31), v28)).f32[0];
    }

    *a7 = v26;
    return *a5 != a5[1];
  }

  return result;
}

void RB::Path::ClipStroke::Transform::Clipper::run(RB::Path::ClipStroke::Transform::Clipper *this, double a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v9 = *(this + 14);
  v10 = *(this + 11);
  v11 = *(this + 2);
  v12 = *v11;
  *&v38[0].v = *v11;
  v13 = *(v11 + 24);
  while (v13 < *(v11 + 32))
  {
    v14 = *v13;
    switch(v14)
    {
      case 4:
        v19 = *(v13 + 16);
        *&v36[0].v = *(v13 + 32);
        *&v37[0].v = v19;
        *&v35[0].v = *(v13 + 48);
        CG::Cubic::Cubic(&v28, v38, v37, v36, v35);
        if (v9 <= v10)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(this, &v28);
        }

        else
        {
          v20 = *(v13 + 8);
          v43 = v32;
          v44 = v33;
          v45 = v34;
          v39 = v28;
          v40 = v29;
          v41 = v30;
          v42 = v31;
          RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Cubic>(this, &v39, v20);
        }

        v12.f64[1] = *&v35[2].v;
        *&v38[0].v = *&v35[0].v;
        v13 += 64;
        break;
      case 3:
        v17 = *(v13 + 16);
        *&v36[0].v = *(v13 + 32);
        *&v37[0].v = v17;
        CG::Quadratic::Quadratic(&v28, v38, v37, v36);
        if (v9 <= v10)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(this, &v28);
        }

        else
        {
          v18 = *(v13 + 8);
          v41 = v30;
          v42 = v31;
          v43 = v32;
          v39 = v28;
          v40 = v29;
          RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Quadratic>(this, &v39, v18);
        }

        v12.f64[1] = *&v36[2].v;
        *&v38[0].v = *&v36[0].v;
        v13 += 48;
        break;
      case 2:
        v15 = *(v13 + 16);
        v16 = *(v13 + 8);
        v39 = *&v38[0].v;
        v40 = v15;
        v27 = v15;
        if (v9 <= v10)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(this, &v39, *&v38[0].v, a3, *&v15, a5, v16, a7, a8);
        }

        else
        {
          RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::LineSegment>(this, *&v38[0].v, *&v38[2].v, *&v15, *(&v15 + 1), v16, a7, a8);
        }

        v12.f64[1] = *(&v27 + 1);
        *&v38[0].v = v27;
        v13 += 32;
        break;
      default:
        RB::Path::Subpath::append_range();
    }
  }

  if (*(this + 140) == 1)
  {
    v12.f64[0] = *(this + 26);
    if ((*&v12.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v21 = *(this + 27);
      if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v22 = *(this + 21);
        if (v12.f64[0] != v22 || (v12.f64[0] = *(this + 22), v21 != v12.f64[0]))
        {
          if (*(this + 141))
          {
            *(this + 141) = 1;
            LODWORD(v12.f64[0]) = *(this + 62);
          }

          else
          {
            LODWORD(v12.f64[0]) = *(this + 62);
            v21 = *(this + 1);
            v22 = 0.0;
            if (*&v21 >= 0.0)
            {
              LODWORD(v22) = *(this + 1);
            }

            LODWORD(v21) = HIDWORD(*(this + 1));
            LODWORD(a5) = 1.0;
            if (*(&v21 + 1) > 1.0)
            {
              *&v21 = 1.0;
            }

            v23 = *&v22 >= *v12.f64;
            if (*&v21 <= *v12.f64)
            {
              v23 = 1;
            }

            *(this + 141) = v23;
            if (!v23)
            {
              goto LABEL_36;
            }
          }

          *(this + 34) = LODWORD(v12.f64[0]);
          v24 = *(this + 32);
          v25 = *(this + 33);
          while (v24 != v25)
          {
            v26 = *v24++;
            LODWORD(v39.f64[0]) = v26;
            std::vector<unsigned int>::push_back[abi:ne200100](this + 18, &v39);
          }

          v12 = RB::Path::ClipStroke::Transform::Clipper::emit_cap(this, this + 13, this + 14, *(this + 252), *(this + 30), v21, v22, a5, a6, a7, a8);
        }
      }
    }

LABEL_36:
    (*(**(*this + 96) + 8))(*(*this + 96), v12);
  }
}

uint64_t RB::Path::ClipStroke::anonymous namespace::BisectState::cut_range(const void **a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7, float a8)
{
  RB::Path::Subpath::reset(a1, a2, 0.0, 0.0);
  a1[8] = a1[7];
  v16 = a2[2];
  v17 = (a7 - floor(a7)) * v16;
  v18 = a8 - floor(a8);
  if (v18 != 0.0)
  {
    v16 = v18 * v16;
  }

  RB::Path::Subpath::append_range(a1, a2, v17, v16, (a1 + 7));
  RB::Path::Subpath::close(a1);
  v19.n128_u64[0] = a1[2];
  v52 = a1 + 11;
  a1[12] = a1[11];
  v20 = 0;
  if (a4)
  {
    v21 = ~a6;
    v22 = (a3 + 8);
    v23 = 1.0 / v19.n128_f64[0];
    v54 = ~a6;
    do
    {
      v24 = *(v22 - 2);
      v25 = *(v22 - 1);
      if (a5)
      {
        v26 = -1;
      }

      else
      {
        v26 = v21;
      }

      v27 = a2[2];
      v28 = v27 * (*v22 - floor(*v22));
      v29 = v27 * (v22[1] - floor(v22[1]));
      v19.n128_f64[0] = v28;
      RB::Path::Subpath::DistanceMap::operator()((a1 + 7), v19);
      v31 = v30;
      v32.n128_f64[0] = v29;
      RB::Path::Subpath::DistanceMap::operator()((a1 + 7), v32);
      v33 = v19.n128_f64[0];
      if (v31 >= INFINITY && v31 <= INFINITY && v28 == 0.0)
      {
        v19.n128_f64[0] = a2[2];
        RB::Path::Subpath::DistanceMap::operator()((a1 + 7), v19);
        v31 = v19.n128_f64[0];
      }

      if (v33 >= INFINITY && v33 <= INFINITY && v29 == 0.0)
      {
        v19.n128_f64[0] = a2[2];
        RB::Path::Subpath::DistanceMap::operator()((a1 + 7), v19);
        v33 = v19.n128_f64[0];
      }

      if (v31 != INFINITY && v33 != INFINITY)
      {
        v34 = v26 & v24;
        v35 = v23 * v31;
        v36 = v23 * v33;
        v37 = a1[12];
        v38 = a1[13];
        if (v37 >= v38)
        {
          v40 = *v52;
          v41 = v37 - *v52;
          v42 = v41 >> 4;
          v43 = (v41 >> 4) + 1;
          if (v43 >> 60)
          {
            std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
          }

          v44 = v38 - v40;
          if (v44 >> 3 > v43)
          {
            v43 = v44 >> 3;
          }

          if (v44 >= 0x7FFFFFFFFFFFFFF0)
          {
            v43 = 0xFFFFFFFFFFFFFFFLL;
          }

          v53 = v20;
          if (v43)
          {
            v45 = std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(v52, v43);
            v43 = v46;
            v40 = a1[11];
            v41 = a1[12] - v40;
          }

          else
          {
            v45 = 0;
          }

          v47 = v45 + 16 * v42;
          v48 = v45 + 16 * v43;
          *v47 = v34;
          *(v47 + 4) = v25;
          *(v47 + 8) = v35;
          *(v47 + 12) = v36;
          v39 = v47 + 16;
          v49 = (v47 - 16 * (v41 >> 4));
          memcpy(v49, v40, v41);
          v50 = a1[11];
          a1[11] = v49;
          a1[12] = v39;
          a1[13] = v48;
          if (v50)
          {
            operator delete(v50);
          }

          LODWORD(v20) = v53;
        }

        else
        {
          *v37 = v34;
          *(v37 + 1) = v25;
          *(v37 + 2) = v35;
          v39 = (v37 + 16);
          *(v37 + 3) = v36;
        }

        a1[12] = v39;
        v20 = v34 | v20;
        v21 = v54;
      }

      --a5;
      v22 += 4;
      --a4;
    }

    while (a4);
  }

  return v20;
}

__n128 RB::Path::ClipStroke::anonymous namespace::BisectState::replace(__int128 *a1, __int128 *a2, void *a3)
{
  v5 = *(a1 + 11);
  v6 = *(a1 + 16);
  v7 = a1[6];
  *(a1 + 88) = a1[7];
  *(a1 + 13) = v6;
  *(a1 + 14) = v5;
  *(a1 + 120) = v7;
  *a3 = v5;
  a3[1] = (v7 - v5) >> 4;
  v8 = *(a2 + 2);
  v13 = *(a2 + 24);
  v14 = *a2;
  *(a2 + 3) = 0;
  v9 = *(a2 + 5);
  v10 = *(a2 + 6);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *a2 = *a1;
  *(a2 + 2) = *(a1 + 2);
  std::vector<double>::__move_assign(a2 + 24, (a1 + 24));
  *(a2 + 6) = *(a1 + 6);
  *a1 = v14;
  *(a1 + 2) = v8;
  v11 = *(a1 + 3);
  if (v11)
  {
    *(a1 + 4) = v11;
    operator delete(v11);
  }

  result = v13;
  *(a1 + 24) = v13;
  *(a1 + 5) = v9;
  *(a1 + 6) = v10;
  return result;
}

void RB::Path::ClipStroke::anonymous namespace::BisectState::~BisectState(RB::Path::ClipStroke::_anonymous_namespace_::BisectState *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    *(this + 8) = v4;
    operator delete(v4);
  }

  v5 = *(this + 3);
  if (v5)
  {
    *(this + 4) = v5;
    operator delete(v5);
  }
}

BOOL RB::Path::ClipStroke::anonymous namespace::make_single_keyframes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v5 = 2 * a2;
  if (2 * a2)
  {
    a4[1] = *a4;
    std::vector<RB::Path::ClipStroke::SingleKeyframe>::reserve(a4, 2 * a2);
    if (a2)
    {
      v12 = 0;
      v13 = (a1 + 8);
      do
      {
        *&v26 = *(a3 + 16) * (*v13 - floorf(*v13));
        *(&v26 + 2) = *(v13 - 1);
        HIDWORD(v26) = v12;
        v27 = *(v13 - 2);
        std::vector<RB::Path::ClipStroke::SingleKeyframe>::push_back[abi:ne200100](a4, &v26);
        *&v26 = *(a3 + 16) * (v13[1] - floorf(v13[1]));
        *(&v26 + 2) = *(v13 - 1);
        HIDWORD(v26) = v12;
        v27 = *(v13 - 2);
        std::vector<RB::Path::ClipStroke::SingleKeyframe>::push_back[abi:ne200100](a4, &v26);
        v11.n128_f32[0] = *(v13 - 1);
        v14 = *(a5 + 4);
        if (v11.n128_f32[0] >= *a5)
        {
          v11.n128_u32[0] = *a5;
        }

        *a5 = v11.n128_u32[0];
        v11.n128_f32[0] = *(v13 - 1);
        if (v14 >= v11.n128_f32[0])
        {
          v11.n128_f32[0] = v14;
        }

        *(a5 + 4) = v11.n128_u32[0];
        ++v12;
        v13 += 4;
      }

      while (a2 != v12);
    }

    v15 = a4[1];
    v16 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3));
    if (v15 == *a4)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    v18 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    if (v18 >= 2)
    {
      v19 = *(a5 + 8);
      v20 = *(a5 + 16);
      v21 = v18 - 1;
      v22 = (*a4 + 32);
      do
      {
        v23 = *(v22 - 6);
        v24 = *v22;
        if (vabds_f32(v23, *v22) >= 0.0001)
        {
          v19 = v19 + *(v22 - 1) - *(v22 - 4);
          *(a5 + 8) = v19;
          v20 = vabds_f32(v24, v23) + v20;
          *(a5 + 16) = v20;
        }

        v22 += 6;
        --v21;
      }

      while (v21);
    }
  }

  return v5 != 0;
}

void RB::Path::ClipStroke::Transform::record_cap(uint64_t a1, int **a2, __n128 a3, __n128 a4)
{
  if (*(a1 + 120))
  {
    std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      v8 = -1;
      do
      {
        if (*v6 != v8)
        {
          v8 = *v6;
          v9 = *(a1 + 120);
          v10 = *(v9 + 8);
          v11 = *(v9 + 16);
          if (v10 >= v11)
          {
            v13 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *v9) >> 4);
            v14 = v13 + 1;
            if (v13 + 1 > 0x555555555555555)
            {
              std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
            }

            v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *v9) >> 4);
            if (2 * v15 > v14)
            {
              v14 = 2 * v15;
            }

            if (v15 >= 0x2AAAAAAAAAAAAAALL)
            {
              v16 = 0x555555555555555;
            }

            else
            {
              v16 = v14;
            }

            if (v16)
            {
              v17 = std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::ClipStroke::RecordedCap>>(*(a1 + 120), v16);
            }

            else
            {
              v17 = 0;
            }

            v18 = (v17 + 48 * v13);
            v19 = v17 + 48 * v16;
            v18->n128_u32[0] = v8;
            v18[1] = a3;
            v18[2] = a4;
            v12 = v18 + 3;
            v20 = *(v9 + 8) - *v9;
            v21 = v18 - v20;
            memcpy(v18 - v20, *v9, v20);
            v22 = *v9;
            *v9 = v21;
            *(v9 + 8) = v12;
            *(v9 + 16) = v19;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            v10->n128_u32[0] = v8;
            v12 = v10 + 3;
            v10[1] = a3;
            v10[2] = a4;
          }

          *(v9 + 8) = v12;
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }
}

void RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(RB::Path::ClipStroke::Transform::Clipper *this, double a2)
{
  v4 = this + 112;
  v5 = *(this + 14);
  if (v5 <= a2)
  {
    while (1)
    {
      v11 = *(this + 9);
      v12 = *(this + 6);
      if (v11 >= v12)
      {
        break;
      }

      v13 = *(this + 5) + 24 * v11;
      v6 = *v13;
      v14 = *(v13 + 8);
      v18 = *(v13 + 12);
      v19 = *(v13 + 20);
      if (v6 < v5)
      {
        break;
      }

      v15 = v11 + 1;
      *(this + 9) = v15;
      if ((v14 & 0x7FFFFFFFu) < 0x7F800000)
      {
        if (*(this + 141) == 1)
        {
          v16 = *(this + 32);
          if ((v16 & 0x80) != 0)
          {
            v17 = v16 >> 8;
            std::vector<unsigned int>::push_back[abi:ne200100](this + 18, &v17);
          }
        }

        *(this + 88) = *v4;
        *(this + 13) = *(v4 + 2);
        *(this + 14) = v6;
        *(this + 30) = v14;
        *(this + 124) = v18;
        *(this + 33) = v19;
        v5 = v6;
      }

      else
      {
        v6 = v5;
        if (v15 >= v12)
        {
          RB::Path::ClipStroke::Transform::Clipper::advance_keyframes();
        }
      }

      if (v6 > a2)
      {
        goto LABEL_3;
      }
    }
  }

  v6 = v5;
LABEL_3:
  if (v6 <= a2)
  {
    v7 = *(this + 9);
    if (v7 == *(this + 6))
    {
      if (*(this + 141) == 1)
      {
        v8 = *(this + 32);
        if ((v8 & 0x80) != 0)
        {
          LODWORD(v18) = v8 >> 8;
          std::vector<unsigned int>::push_back[abi:ne200100](this + 18, &v18);
          v7 = *(this + 6);
        }
      }

      *(this + 88) = *v4;
      *(this + 13) = *(v4 + 2);
      if (v7)
      {
        v9 = *(this + 5);
        v10 = *v9;
        *(v4 + 2) = *(v9 + 2);
        *v4 = v10;
        *(this + 14) = *(*(this + 2) + 16) + *(this + 14);
        ++*(this + 9);
      }
    }
  }
}

float64x2_t RB::Path::ClipStroke::Transform::Clipper::emit_cap(uint64_t a1, __n128 *a2, float64x2_t *a3, int a4, double a5, double a6, double a7, double a8, double a9, float64x2_t a10, float64x2_t a11)
{
  a11.f64[0] = a5;
  if ((*(a1 + 140) & 1) == 0)
  {
    *(a1 + 208) = *a2;
    *(a1 + 224) = *a3;
    *(a1 + 240) = a5;
    *(a1 + 248) = *(a1 + 136);
    *(a1 + 252) = a4;
    v31 = *(a1 + 256);
    result = *(a1 + 144);
    *(a1 + 256) = result;
    *(a1 + 144) = v31;
    *(a1 + 152) = v31;
    v33 = *(a1 + 272);
    *(a1 + 272) = *(a1 + 160);
    *(a1 + 160) = v33;
    return result;
  }

  v15 = *a1;
  v16 = *(*a1 + 128);
  v17 = (a1 + 168);
  v18 = *(a1 + 168);
  v19 = *a2;
  v77 = a11;
  if ((v16 & 8) != 0)
  {
    RB::Path::ClipStroke::Transform::record_cap(v15, (a1 + 144), v18, v19);
    *(a1 + 152) = *(a1 + 144);
    (*(**(*a1 + 96) + 24))(*(*a1 + 96), *a2);
    *v17 = *a2;
    *(a1 + 184) = vnegq_f64(*a3);
    result = v77;
    *(a1 + 200) = v77.n128_u64[0];
    return result;
  }

  v20 = vmulq_n_f64(*(a1 + 184), 1.0 / sqrt(vaddvq_f64(vmulq_f64(*(a1 + 184), *(a1 + 184)))));
  a10.f64[0] = *(a1 + 200);
  v21 = vmulq_n_f64(*a3, 1.0 / sqrt(vaddvq_f64(vmulq_f64(*a3, *a3))));
  v22 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(a10, a11).i64[0], 0), v20, v21);
  v23 = vmulq_f64(vsubq_f64(v19, v18), v22);
  v24 = vdupq_laneq_s64(v23, 1);
  v25 = vaddq_f64(v23, v24);
  v24.f64[0] = 0.0;
  v26 = vdupq_lane_s64(vcgtq_f64(v25, v24).i64[0], 0);
  v27 = vbslq_s8(v26, v19, vmlsq_lane_f64(v19, v22, v25.f64[0], 0));
  v69 = v22;
  v28 = vbslq_s8(v26, vmlaq_n_f64(v18, v22, v25.f64[0]), v18);
  if ((v16 & 2) == 0)
  {
    v29 = *(a1 + 136);
    if (a4)
    {
      if (v29 <= 0.0)
      {
        v30 = v29 - COERCE_FLOAT(*(a1 + 8));
        goto LABEL_11;
      }
    }

    else if (v29 >= 1.0)
    {
      v30 = *(a1 + 12) - v29;
LABEL_11:
      if (v30 > 0.0001)
      {
        v34 = vaddq_f64(v20, v21);
        v35 = vmulq_n_f64(vmulq_n_f64(v34, 1.0 / sqrt(vaddvq_f64(vmulq_f64(v34, v34)))), *(a1 + 64) * v30);
        v28 = vaddq_f64(v28, v35);
        v27 = vaddq_f64(v27, v35);
      }
    }
  }

  v36 = vceqq_f64(v28, v18);
  v73 = v28;
  v76 = v27;
  if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v36), 1), v36).u64[0] & 0x8000000000000000) != 0)
  {
    (*(**(v15 + 96) + 24))(*(v15 + 96), v28);
    v28 = v73;
    v27 = v76;
    v15 = *a1;
  }

  RB::Path::ClipStroke::Transform::record_cap(v15, (a1 + 144), v28, v27);
  *(a1 + 152) = *(a1 + 144);
  v38 = 32;
  if (a4)
  {
    v38 = 24;
  }

  v39 = *(a1 + v38);
  if (v39)
  {
    v40 = *(v39 + 32);
    if (*(v39 + 24) == v40)
    {
      RB::Path::ClipStroke::Transform::Clipper::emit_cap();
    }

    v41 = *v39;
    v42 = vsubq_f64(*(v40 - 16), *v39);
    v43 = vsubq_f64(v76, v73);
    *&v44 = sqrt(vaddvq_f64(vmulq_f64(v42, v42)));
    *&v45 = sqrt(vaddvq_f64(vmulq_f64(v43, v43)));
    v46 = vdivq_f64(v42, vdupq_lane_s64(v44, 0));
    v47 = vdupq_lane_s64(v45, 0);
    v48 = vdivq_f64(v43, v47);
    v49 = *&v45 * (1.0 / *&v44);
    v47.f64[0] = -v46.f64[1];
    v50 = vpaddq_f64(vmulq_f64(v48, v46), vmulq_f64(v48, vzip1q_s64(v47, v46)));
    *&v79.a = vmulq_n_f64(v50, v49);
    v79.c = -(v50.f64[1] * v49);
    v79.d = v79.a;
    *&v79.tx = v73;
    *&v78.a = *&v79.a;
    *&v78.c = *&v79.c;
    *&v78.tx = v73;
    CGAffineTransformTranslate(&v79, &v78, -v41.f64[0], -v41.f64[1]);
    RB::Path::Subpath::replay(v39, *(*a1 + 96), 0, &v79);
  }

  else
  {
    v51 = vsubq_f64(v76, v73);
    *v37.i64 = -v51.f64[1];
    v52 = vmulq_f64(v69, vzip1q_s64(v37, v51));
    v53 = vdupq_laneq_s64(v52, 1);
    v54 = vaddq_f64(v52, v53);
    v53.f64[0] = 0.0;
    v55 = vdupq_lane_s64(vcgtq_f64(v53, v54).i64[0], 0);
    v53.f64[0] = -v69.f64[1];
    v56 = vzip1q_s64(v53, v69);
    v51.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v51, v51))) * 0.5;
    v57 = vmulq_n_f64(vbslq_s8(v55, vnegq_f64(v56), v56), v51.f64[0]);
    v58 = vsubq_f64(v73, v57);
    v59 = vmulq_n_f64(v69, v51.f64[0]);
    v60 = *(*a1 + 144);
    v61 = *(*a1 + 96);
    if (v60 == 2)
    {
      v71 = v58;
      v75 = v59;
      v68 = v57;
      (*(*v61 + 24))(v61, vaddq_f64(v59, vaddq_f64(v57, v58)));
      v72 = vsubq_f64(v71, v68);
      (*(**(*a1 + 96) + 24))(*(*a1 + 96), vaddq_f64(v75, v72));
      (*(**(*a1 + 96) + 24))(v72);
    }

    else if (v60 == 1)
    {
      v74 = v59;
      v65 = vaddq_f64(v59, v58);
      v66 = vdupq_n_s64(0x3FE1AC51114F0EAFuLL);
      v67 = v57;
      v70 = v58;
      (*(*v61 + 40))(v61, vmlaq_f64(vaddq_f64(v57, v58), v66, v59), vmlaq_f64(v65, v66, v57), v65);
      (*(**(*a1 + 96) + 40))(*(*a1 + 96), vmlaq_f64(v65, vdupq_n_s64(0xBFE1AC51114F0EAFLL), v67), vmlaq_f64(vsubq_f64(v70, v67), v66, v74));
    }

    else
    {
      (*(*v61 + 24))(v76);
    }
  }

  v62 = vceqq_f64(v76, *a2);
  v63 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v62), 1), v62).u64[0];
  v64 = v77.n128_u64[0];
  if ((v63 & 0x8000000000000000) != 0)
  {
    (*(**(*a1 + 96) + 24))(*(*a1 + 96), *a2, v77);
    v64 = v77.n128_u64[0];
  }

  *v17 = *a2;
  result = vnegq_f64(*a3);
  *(a1 + 184) = result;
  *(a1 + 200) = v64;
  return result;
}

uint64_t RB::Path::ClipStroke::Transform::Clipper::Clipper(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, double a8, double a9)
{
  *result = a2;
  v9 = *(a2 + 136);
  *(result + 8) = v9;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  *(result + 56) = a8;
  *(result + 64) = a9;
  *(result + 140) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 142) = 0;
  *(result + 158) = 0;
  *(result + 150) = 0;
  *(result + 166) = 0;
  v10 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(result + 168) = v10;
  *(result + 184) = 0;
  *(result + 192) = 0;
  *(result + 208) = v10;
  *(result + 224) = 0;
  *(result + 232) = 0;
  *(result + 256) = 0;
  *(result + 264) = 0;
  *(result + 272) = 0;
  if (!a7)
  {
    v24 = "!keyframes.empty()";
    v25 = 1162;
    goto LABEL_25;
  }

  v11 = a6 + 24 * a7;
  v12 = *(v11 - 24);
  *(result + 104) = *(v11 - 8);
  *(result + 88) = v12;
  v13 = *(result + 88) - *(a3 + 16);
  *(result + 88) = v13;
  v14 = *a6;
  *(result + 128) = *(a6 + 2);
  *(result + 112) = v14;
  *(result + 72) = 1;
  v15 = *(result + 96);
  if ((LODWORD(v15) & 0x7FFFFFFFu) > 0x7F7FFFFF || (v16 = *(result + 120), (LODWORD(v16) & 0x7FFFFFFFu) > 0x7F7FFFFF))
  {
    v24 = "!_k0.is_skipped() && !_k1.is_skipped()";
    v25 = 1169;
    goto LABEL_25;
  }

  v17 = *(result + 112);
  if (v17 < 0.0)
  {
    v24 = "_k1.distance >= 0";
    v25 = 1170;
LABEL_25:
    __assert_rtn("Clipper", "path-clip-stroke.cc", v25, v24);
  }

  if (*&a8 == 0.0)
  {
    if (fabsf(*&v9) < 0.0001)
    {
LABEL_7:
      HIDWORD(v18) = HIDWORD(v9);
      LODWORD(v18) = 2143289344;
      *(result + 8) = v18;
      goto LABEL_10;
    }
  }

  else if (*&v9 < (*&a8 + 0.0001))
  {
    goto LABEL_7;
  }

  v18 = v9;
LABEL_10:
  if (*(&a8 + 1) == 1.0)
  {
    if (fabsf(*(&v9 + 1) + -1.0) >= 0.0001)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(&v9 + 1) > (*(&a8 + 1) + -0.0001))
  {
LABEL_12:
    *(result + 12) = 2143289344;
    v18 = *(result + 8);
  }

LABEL_13:
  v19 = (0.0 - v13) / (v17 - v13);
  v20 = -(-(v15 - (v19 * v15)) - (v19 * v16));
  *(result + 136) = v20;
  v21 = 0.0;
  if (*&v18 >= 0.0)
  {
    v21 = *&v18;
  }

  v22 = *(&v18 + 1);
  if (*(&v18 + 1) > 1.0)
  {
    v22 = 1.0;
  }

  v23 = v21 >= v20;
  if (v22 <= v20)
  {
    v23 = 1;
  }

  *(result + 141) = v23;
  return result;
}

void sub_18DFB28B0(_Unwind_Exception *exception_object)
{
  v3 = v1[32];
  if (v3)
  {
    v1[33] = v3;
    operator delete(v3);
  }

  v4 = v1[18];
  if (v4)
  {
    v1[19] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 2;
    v10 = (v8 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      v14 = std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v13);
      v13 = v15;
      v7 = *a1;
      v8 = a1[1] - *a1;
    }

    else
    {
      v14 = 0;
    }

    v16 = (v14 + 4 * v9);
    v17 = v14 + 4 * v13;
    v18 = *a2;
    v19 = &v16[-(v8 >> 2)];
    *v16 = v18;
    v6 = v16 + 1;
    memcpy(v19, v7, v8);
    v20 = *a1;
    *a1 = v19;
    a1[1] = v6;
    a1[2] = v17;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void RB::Path::ClipStroke::Transform::~Transform(RB::Path::ClipStroke::Transform *this)
{
  *this = &unk_1F00D5918;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F00D5918;
  v2 = *(this + 8);
  if (v2)
  {
    *(this + 9) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x193AC64C0);
}

void RB::Path::ClipStroke::Transform::Clipper::~Clipper(RB::Path::ClipStroke::Transform::Clipper *this)
{
  v2 = *(this + 32);
  if (v2)
  {
    *(this + 33) = v2;
    operator delete(v2);
  }

  v3 = *(this + 18);
  if (v3)
  {
    *(this + 19) = v3;
    operator delete(v3);
  }
}

void std::vector<RB::Path::ClipStroke::SingleKeyframe>::reserve(uint64_t a1, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    if (a2 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::ClipStroke::SingleKeyframe>>(a1, a2);
    v5 = v4 + v3;
    v7 = v4 + 24 * v6;
    v8 = *(a1 + 8) - *a1;
    v9 = (v4 + v3 - v8);
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

void std::vector<RB::Path::ClipStroke::SingleKeyframe>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<RB::Path::Subpath::DistanceMap::Element>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::ClipStroke::SingleKeyframe>>(a1, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 + 24 * v8;
    v14 = v12 + 24 * v11;
    v15 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v15;
    v7 = v13 + 24;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v7;
    *(a1 + 16) = v14;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  *(a1 + 8) = v7;
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::ClipStroke::SingleKeyframe>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,RB::Path::ClipStroke::anonymous namespace::make_single_keyframes(std::span<CGPathClipStrokeKeyframe const,18446744073709551615ul>,RB::Path::Subpath const&,std::vector<RB::Path::ClipStroke::SingleKeyframe> &,RB::Path::ClipStroke::anonymous namespace::KeyframesMetadata &)::$_0 &,RB::Path::ClipStroke::SingleKeyframe*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = *(a2 - 24);
        v89 = (a2 - 24);
        result.n128_f64[0] = v90;
        if (v90 >= *v12)
        {
          return result;
        }

LABEL_106:
        v198 = *(v12 + 16);
        v169 = *v12;
        v94 = *v89;
        *(v12 + 16) = v89[1].n128_u64[0];
        *v12 = v94;
        result = v169;
        v89[1].n128_u64[0] = v198;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v138 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v138;
          if (*(v12 + 24) < *v12)
          {
            v201 = *(v12 + 16);
            v174 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v174.n128_u64[1];
            *v91 = v174;
            *(v12 + 40) = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = *(v12 + 16);
          v170 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v170.n128_u64[1];
          *v96 = v170;
          v98 = v199;
          goto LABEL_177;
        }

        v203 = *(v12 + 16);
        v177 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        *v91 = v177;
        *(v12 + 40) = v203;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_177:
          *(v12 + 64) = v98;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v96->n128_f64[0])
      {
        return result;
      }

      result = *v96;
      v144 = *(v12 + 64);
      v145 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v145;
      *(a2 - 8) = v144;
      *v9 = result;
      result.n128_u64[0] = v96->n128_u64[0];
      if (v96->n128_f64[0] >= v91->n128_f64[0])
      {
        return result;
      }

      v146 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v146;
LABEL_181:
      result.n128_u64[0] = *(v12 + 24);
      if (result.n128_f64[0] < *v12)
      {
        v204 = *(v12 + 16);
        v178 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v178;
        *v91 = v178;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            result.n128_u64[0] = v103[1].n128_u64[1];
            if (result.n128_f64[0] < v103->n128_f64[0])
            {
              v171 = v103[2];
              v105 = v102;
              while (1)
              {
                v106 = v12 + v105;
                *(v106 + 24) = *(v12 + v105);
                *(v106 + 40) = *(v12 + v105 + 16);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (result.n128_f64[0] >= *(v106 - 24))
                {
                  v107 = v12 + v105 + 24;
                  goto LABEL_126;
                }
              }

              v107 = v12;
LABEL_126:
              *v107 = result.n128_u64[0];
              result = v171;
              *(v107 + 8) = v171;
            }

            v99 = &v104[1].n128_u64[1];
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v139 = v99;
          result.n128_u64[0] = *(a1 + 24);
          if (result.n128_f64[0] < *a1)
          {
            v175 = *(a1 + 32);
            v140 = v99;
            do
            {
              *v140 = *(v140 - 24);
              *(v140 + 16) = *(v140 - 8);
              v141 = *(v140 - 48);
              v140 -= 24;
            }

            while (result.n128_f64[0] < v141);
            *v140 = result.n128_u64[0];
            result = v175;
            *(v140 + 8) = v175;
          }

          v99 += 24;
          a1 = v139;
        }

        while (v139 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v12 + 24 * v111;
            if (2 * v110 + 2 < v14 && *v112 < *(v112 + 24))
            {
              v112 += 24;
              v111 = 2 * v110 + 2;
            }

            v113 = v12 + 24 * v110;
            v114 = *v113;
            if (*v112 >= *v113)
            {
              v172 = *(v113 + 8);
              do
              {
                v115 = v113;
                v113 = v112;
                v116 = *v112;
                *(v115 + 16) = *(v112 + 16);
                *v115 = v116;
                if (v108 < v111)
                {
                  break;
                }

                v117 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = v12 + 24 * v111;
                v118 = v117 + 2;
                if (v118 < v14 && *v112 < *(v112 + 24))
                {
                  v112 += 24;
                  v111 = v118;
                }
              }

              while (*v112 >= v114);
              *v113 = v114;
              *(v113 + 8) = v172;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v119 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v120 = 0;
          v200 = *(v12 + 16);
          v173 = *v12;
          v121 = v12;
          do
          {
            v122 = v121;
            v123 = v121 + 24 * v120;
            v121 = v123 + 24;
            v124 = 2 * v120;
            v120 = (2 * v120) | 1;
            v125 = v124 + 2;
            if (v125 < v119)
            {
              v127 = *(v123 + 48);
              v126 = v123 + 48;
              if (*(v126 - 24) < v127)
              {
                v121 = v126;
                v120 = v125;
              }
            }

            v128 = *v121;
            v122[1].n128_u64[0] = *(v121 + 16);
            *v122 = v128;
          }

          while (v120 <= ((v119 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v173;
            *(v121 + 16) = v200;
            *v121 = v173;
          }

          else
          {
            v129 = *a2;
            *(v121 + 16) = *(a2 + 16);
            *v121 = v129;
            result = v173;
            *(a2 + 16) = v200;
            *a2 = v173;
            v130 = v121 - v12 + 24;
            if (v130 >= 25)
            {
              v131 = (-2 - 0x5555555555555555 * (v130 >> 3)) >> 1;
              v132 = v12 + 24 * v131;
              result.n128_u64[0] = *v121;
              if (*v132 < *v121)
              {
                v149 = *(v121 + 8);
                do
                {
                  v133 = v121;
                  v121 = v132;
                  v134 = *v132;
                  *(v133 + 16) = *(v132 + 16);
                  *v133 = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = v12 + 24 * v131;
                }

                while (*v132 < result.n128_f64[0]);
                *v121 = result.n128_u64[0];
                result = v149;
                *(v121 + 8) = v149;
              }
            }
          }
        }

        while (v119-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] >= *v12)
      {
        if (v17 < v18)
        {
          v181 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v181;
          *v9 = v152;
          if (v16->n128_f64[0] < *v12)
          {
            v182 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v182;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v179 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v185 = *(v12 + 16);
        v156 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v185;
        *v16 = v156;
        if (*v9 < v16->n128_f64[0])
        {
          v179 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v179;
          *v9 = v150;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v31 = *(v29 - 24);
      v30 = (v29 - 24);
      v32 = v31;
      v33 = *v10;
      if (v31 >= *(v12 + 24))
      {
        if (v33 < v32)
        {
          v186 = v30[1].n128_i64[0];
          v157 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v186;
          *v10 = v157;
          if (v30->n128_f64[0] < v28->n128_f64[0])
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = v30[1].n128_i64[0];
            *v28 = *v30;
            *(v12 + 40) = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = v30[1].n128_i64[0];
        *v28 = *v30;
        *(v12 + 40) = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (*v10 < v30->n128_f64[0])
        {
          v188 = v30[1].n128_i64[0];
          v159 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v46;
          v34 = v159;
          *(a2 - 32) = v188;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v50 = *(v48 + 24);
      v49 = (v48 + 24);
      v51 = v50;
      v52 = *v11;
      if (v50 >= *(v12 + 48))
      {
        if (v52 < v51)
        {
          v189 = v49[1].n128_i64[0];
          v160 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v189;
          *v11 = v160;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 64) = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 64) = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_f64[0])
        {
          v190 = v49[1].n128_i64[0];
          v161 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v63;
          v53 = v161;
          *(a2 - 56) = v190;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_f64[0];
      v65 = v49->n128_f64[0];
      if (v16->n128_f64[0] >= v30->n128_f64[0])
      {
        if (v65 < v64)
        {
          v192 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v192;
          *v49 = v163;
          if (v16->n128_f64[0] < v30->n128_f64[0])
          {
            v193 = v30[1].n128_u64[0];
            v164 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v193;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v191 = v30[1].n128_u64[0];
          v162 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v194 = v30[1].n128_u64[0];
        v165 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (v49->n128_f64[0] < v16->n128_f64[0])
        {
          v191 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v191;
          *v49 = v162;
        }
      }

      v195 = *(v12 + 16);
      v166 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v195;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= v16->n128_f64[0])
    {
      if (v17 < v20)
      {
        v183 = *(v12 + 16);
        v154 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v183;
        *v9 = v154;
        if (*v12 < v16->n128_f64[0])
        {
          v184 = v16[1].n128_u64[0];
          v155 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v184;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v187 = v16[1].n128_u64[0];
      v158 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v187;
      *v12 = v158;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v180 = *(v12 + 16);
      v151 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v180 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v180;
    *v9 = v151;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v147 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v196 = *(v12 + 16);
          v167 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v196;
          *v74 = v167;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v147;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        a4 = 0;
      }
    }

    else
    {
      v148 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v197 = *(v12 + 16);
        v168 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v197;
        *v83 = v168;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v148;
      *(v12 - 16) = v148;
    }
  }

  v91 = (v12 + 24);
  result.n128_u64[0] = *(v12 + 24);
  v92 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v92;
  if (result.n128_f64[0] >= *v12)
  {
    if (v93 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v91;
    v136 = *(v12 + 40);
    v137 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v137;
    v89[1].n128_u64[0] = v136;
    *v89 = result;
    goto LABEL_181;
  }

  if (v93 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v202 = *(v12 + 16);
  v176 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v176.n128_u64[1];
  *v91 = v176;
  *(v12 + 40) = v202;
  result.n128_u64[0] = v89->n128_u64[0];
  if (v89->n128_f64[0] < *(v12 + 24))
  {
    result = *v91;
    v142 = *(v12 + 40);
    v143 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v143;
    v89[1].n128_u64[0] = v142;
    goto LABEL_107;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::ClipStroke::anonymous namespace::make_single_keyframes(std::span<CGPathClipStrokeKeyframe const,18446744073709551615ul>,RB::Path::Subpath const&,std::vector<RB::Path::ClipStroke::SingleKeyframe> &,RB::Path::ClipStroke::anonymous namespace::KeyframesMetadata &)::$_0 &,RB::Path::ClipStroke::SingleKeyframe*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<RB::Path::ClipStroke::RecordedCap>>(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x555555555555556)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

void RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::LineSegment>(uint64_t a1, float64_t a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v8 = a6;
  v24.f64[0] = a2;
  v24.f64[1] = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v10 = *(a1 + 80);
  v11 = v10 + a6;
  v12 = *(a1 + 112);
  if (v12 < v11)
  {
    do
    {
      v13 = CG::LineSegment::index(&v24, v12 - v10);
      if (v13 <= 0.0001)
      {
        v17 = *(a1 + 112);
      }

      else
      {
        CG::LineSegment::split(&v24, v13, &v19);
        v14.f64[0] = (v21 - v19.f64[1]) * (v21 - v19.f64[1]);
        v15 = sqrt(v14.f64[0] + (v20 - v19.f64[0]) * (v20 - v19.f64[0]));
        LODWORD(v14.f64[0]) = *(a1 + 120);
        RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>(a1, v19.f64[0], v19.f64[1], v20, v21, v15, v14, v16);
        v17 = *(a1 + 112);
        v24 = v22;
        v25 = v23;
        v8 = v8 - v15;
        v10 = v17;
      }

      RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(a1, v17);
      v12 = *(a1 + 112);
    }

    while (v12 < v11);
    a3 = v24.f64[1];
    a2 = v24.f64[0];
    a5 = *(&v25 + 1);
    a4 = *&v25;
  }

  a7.f64[0] = *(a1 + 88);
  a8.f64[0] = v11 - a7.f64[0];
  LODWORD(a8.f64[0]) = *(a1 + 120);
  v18 = (v11 - a7.f64[0]) / (v12 - a7.f64[0]);
  *a7.f64 = -(-(*(a1 + 96) - (v18 * *(a1 + 96))) - (v18 * *a8.f64));
  RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>(a1, a2, a3, a4, a5, v8, a7, a8);
  *(a1 + 80) = v11;
}

uint64_t RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(uint64_t result, float64x2_t *a2, double a3, double a4, double a5, double a6, double a7, float64x2_t a8, float64x2_t a9)
{
  v11 = vsubq_f64(a2[1], *a2);
  v12 = COERCE_DOUBLE(*&vmulq_f64(v11, v11).f64[1]) + v11.f64[0] * v11.f64[0];
  v13 = 0.00000001;
  if (v12 > 0.00000001)
  {
    v20 = v9;
    v21 = v10;
    v15 = result;
    if (*(result + 143) == 1)
    {
      v19 = vnegq_f64(v11);
      if (*(result + 128))
      {
        v16 = INFINITY;
      }

      else
      {
        v13 = *(*(result + 16) + 16);
        v16 = vabdd_f64(*(result + 112), *(result + 88));
        v12 = v13 - v16;
        if (v13 - v16 < v16)
        {
          v16 = v13 - v16;
        }
      }

      RB::Path::ClipStroke::Transform::Clipper::emit_cap(result, a2, &v19, *(result + 142), v16, v12, v13, a6, a7, a8, a9);
      if (*(v15 + 143) == 1)
      {
        *(v15 + 143) = 0;
      }
    }

    if ((*(v15 + 140) & 1) == 0)
    {
      *(v15 + 208) = *a2;
      *(v15 + 224) = vnegq_f64(vsubq_f64(a2[1], *a2));
      (*(**(*v15 + 96) + 16))(*(*v15 + 96));
      *(v15 + 140) = 1;
    }

    result = (*(**(*v15 + 96) + 24))(*(*v15 + 96), a2[1]);
    *(v15 + 168) = a2[1];
    *(v15 + 184) = vsubq_f64(a2[1], *a2);
    if (*(v15 + 128))
    {
      v18 = INFINITY;
    }

    else
    {
      v17 = *(*(v15 + 16) + 16);
      v18 = vabdd_f64(*(v15 + 112), *(v15 + 88));
      if (v17 - v18 < v18)
      {
        v18 = v17 - v18;
      }
    }

    *(v15 + 200) = v18;
  }

  return result;
}

void RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>(uint64_t a1, float64_t a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v8 = *a7.f64;
  v9 = a6;
  v11 = 0;
  v24.f64[0] = a2;
  v24.f64[1] = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v12 = *(a1 + 136);
  v13 = v12 >= *a7.f64;
  *&a2 = v12;
  v14 = 1;
  do
  {
    if (*&a2 == v8)
    {
      break;
    }

    v15 = v14;
    if (v11 == v13)
    {
      a3 = *(a1 + 8);
    }

    else
    {
      LODWORD(a3) = *(a1 + 12);
    }

    a4 = *(a1 + 56);
    if (*&a3 >= *&a4)
    {
      *&a4 = *&a3;
    }

    if (*&a4 <= COERCE_FLOAT(HIDWORD(*(a1 + 56))))
    {
      v16 = *&a4;
    }

    else
    {
      LODWORD(v16) = HIDWORD(*(a1 + 56));
    }

    *&a4 = v12 >= v8 ? v8 : *&a2;
    *&a5 = v12 >= v8 ? *&a2 : v8;
    if (v16 < *&a4 || v16 > *&a5)
    {
      goto LABEL_23;
    }

    if ((LODWORD(a3) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>();
    }

    if (*(a1 + 141) == ((v12 < v8) ^ (v11 == v13)))
    {
LABEL_23:
      v16 = *&a2;
    }

    else
    {
      v18 = (v16 - *&a2) / (v8 - *&a2);
      a2 = CG::LineSegment::index(&v24, v9 * v18);
      if (a2 > 0.0001)
      {
        *&v19 = *&CG::LineSegment::split(&v24, a2, v22);
        if ((*(a1 + 141) & 1) == 0)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(a1, v22, v19, v20, a4, a5, a6, a7, a8);
        }

        a3 = *&v23;
        v24 = v22[2];
        v25 = v23;
        a2 = (1.0 - v18);
        v9 = v9 * a2;
      }

      *(a1 + 136) = v16;
      if (*(a1 + 141) == 1)
      {
        *(a1 + 141) = 0;
        v21 = v11 == v13 ? 257 : 256;
        *(a1 + 142) = v21;
      }

      else
      {
        *(a1 + 141) = 1;
        if (*(a1 + 143) == 1)
        {
          *(a1 + 143) = 0;
        }
      }
    }

    v14 = 0;
    v11 = 1;
    *&a2 = v16;
  }

  while ((v15 & 1) != 0);
  if ((*(a1 + 141) & 1) == 0)
  {
    RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(a1, &v24, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 136) = v8;
}

void RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Quadratic>(__n128 *a1, float64x2_t *this, double a3)
{
  v3 = a3;
  v6 = a1[5].n128_f64[0];
  v7 = v6 + a3;
  for (i = a1[7].n128_f64[0]; i < v7; i = a1[7].n128_f64[0])
  {
    CG::Quadratic::index(this, i - v6);
    if (v9 > 0.0001)
    {
      CG::Quadratic::split(this, v9, &v18);
      v10 = CG::Quadratic::length(&v18, 0);
      v17[2] = v20;
      v17[3] = v21;
      v17[4] = v22;
      v17[0] = v18;
      v17[1] = v19;
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Quadratic>(a1, v17, v10, a1[7].n128_f32[2]);
      v6 = a1[7].n128_f64[0];
      v11 = v26;
      this[2] = v25;
      this[3] = v11;
      this[4] = v27;
      v12 = v24;
      v3 = v3 - v10;
      *this = v23;
      this[1] = v12;
    }

    RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(a1, a1[7].n128_f64[0]);
  }

  v13 = (v7 - a1[5].n128_f64[1]) / (i - a1[5].n128_f64[1]);
  v14 = -(-(a1[6].n128_f32[0] - (v13 * a1[6].n128_f32[0])) - (v13 * a1[7].n128_f32[2]));
  v15 = this[3];
  v20 = this[2];
  v21 = v15;
  v22 = this[4];
  v16 = this[1];
  v18 = *this;
  v19 = v16;
  RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Quadratic>(a1, &v18, v3, v14);
  a1[5].n128_f64[0] = v7;
}

void RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(__n128 *a1, float64x2_t *this)
{
  v4 = this[1].f64[0];
  v5 = this[1].f64[1];
  if ((v5 - this->f64[1]) * (v5 - this->f64[1]) + (v4 - this->f64[0]) * (v4 - this->f64[0]) > 0.00000001 || (this[2].f64[1] - v5) * (this[2].f64[1] - v5) + (this[2].f64[0] - v4) * (this[2].f64[0] - v4) > 0.00000001)
  {
    if (a1[8].n128_u8[15] == 1)
    {
      v6 = CG::Quadratic::derivative(this, 0.0);
      v13 = -v12;
      v21.f64[0] = -v6;
      v21.f64[1] = v13;
      if (a1[8].n128_u8[0])
      {
        v14 = INFINITY;
      }

      else
      {
        v7 = *(a1[1].n128_u64[0] + 16);
        v14 = vabdd_f64(a1[7].n128_f64[0], a1[5].n128_f64[1]);
        v13 = v7 - v14;
        if (v7 - v14 < v14)
        {
          v14 = v7 - v14;
        }
      }

      RB::Path::ClipStroke::Transform::Clipper::emit_cap(a1, this, &v21, a1[8].n128_u8[14], v14, v13, v7, v8, v9, v10, v11);
      if (a1[8].n128_u8[15] == 1)
      {
        a1[8].n128_u8[15] = 0;
      }
    }

    if ((a1[8].n128_u8[12] & 1) == 0)
    {
      a1[13].n128_f64[0] = CG::Quadratic::start_point(this);
      a1[13].n128_u64[1] = v15;
      a1[14].n128_f64[0] = -CG::Quadratic::derivative(this, 0.0);
      a1[14].n128_f64[1] = -v16;
      (*(**(a1->n128_u64[0] + 96) + 16))(*(a1->n128_u64[0] + 96), a1[13]);
      a1[8].n128_u8[12] = 1;
    }

    (*(**(a1->n128_u64[0] + 96) + 32))(*(a1->n128_u64[0] + 96), this[1], this[2]);
    a1[10].n128_f64[1] = CG::Quadratic::end_point(this);
    a1[11].n128_u64[0] = v17;
    a1[11].n128_f64[1] = CG::Quadratic::derivative(this, 1.0);
    a1[12].n128_u64[0] = v18;
    if (a1[8].n128_u8[0])
    {
      v20 = INFINITY;
    }

    else
    {
      v19 = *(a1[1].n128_u64[0] + 16);
      v20 = vabdd_f64(a1[7].n128_f64[0], a1[5].n128_f64[1]);
      if (v19 - v20 < v20)
      {
        v20 = v19 - v20;
      }
    }

    a1[12].n128_f64[1] = v20;
  }
}

void RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Quadratic>(__n128 *a1, float64x2_t *this, double a3, float a4)
{
  v8 = 0;
  v9 = a1[8].n128_f32[2];
  v10 = v9 >= a4;
  v11 = v9;
  v12 = 1;
  do
  {
    if (v11 == a4)
    {
      break;
    }

    v13 = v12;
    if (v8 == v10)
    {
      v14 = a1->n128_u64[1];
    }

    else
    {
      LODWORD(v14) = a1->n128_u32[3];
    }

    v15 = a1[3].n128_u64[1];
    if (*&v14 >= *&v15)
    {
      *&v15 = *&v14;
    }

    if (*&v15 <= COERCE_FLOAT(HIDWORD(a1[3].n128_u64[1])))
    {
      v16 = *&v15;
    }

    else
    {
      LODWORD(v16) = HIDWORD(a1[3].n128_u64[1]);
    }

    v17 = v9 >= a4 ? a4 : v11;
    v18 = v9 >= a4 ? v11 : a4;
    if (v16 < v17 || v16 > v18)
    {
      goto LABEL_23;
    }

    if ((v14 & 0x7FFFFFFF) >= 0x7F800000)
    {
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>();
    }

    if (a1[8].n128_u8[13] == ((v9 < a4) ^ (v8 == v10)))
    {
LABEL_23:
      v16 = v11;
    }

    else
    {
      v20 = (v16 - v11) / (a4 - v11);
      CG::Quadratic::index(this, a3 * v20);
      if (v21 > 0.0001)
      {
        CG::Quadratic::split(this, v21, v25);
        if ((a1[8].n128_u8[13] & 1) == 0)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(a1, v25);
        }

        v22 = v25[8];
        this[2] = v25[7];
        this[3] = v22;
        this[4] = v25[9];
        v23 = v25[6];
        *this = v25[5];
        this[1] = v23;
        a3 = a3 * (1.0 - v20);
      }

      a1[8].n128_f32[2] = v16;
      if (a1[8].n128_u8[13] == 1)
      {
        a1[8].n128_u8[13] = 0;
        v24 = v8 == v10 ? 257 : 256;
        a1[8].n128_u16[7] = v24;
      }

      else
      {
        a1[8].n128_u8[13] = 1;
        if (a1[8].n128_u8[15] == 1)
        {
          a1[8].n128_u8[15] = 0;
        }
      }
    }

    v12 = 0;
    v8 = 1;
    v11 = v16;
  }

  while ((v13 & 1) != 0);
  if ((a1[8].n128_u8[13] & 1) == 0)
  {
    RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(a1, this);
  }

  a1[8].n128_f32[2] = a4;
}

void RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Cubic>(uint64_t a1, float64x2_t *this, double a3)
{
  v3 = a3;
  v6 = *(a1 + 80);
  v7 = v6 + a3;
  for (i = *(a1 + 112); i < v7; i = *(a1 + 112))
  {
    CG::Cubic::index(this, i - v6, 0.5);
    if (v9 > 0.0001)
    {
      CG::Cubic::split(this, v9, &v21);
      v10 = CG::Cubic::length(&v21, 0.5);
      v20[4] = v25;
      v20[5] = v26;
      v20[6] = v27;
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23;
      v20[3] = v24;
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Cubic>(a1, v20, v10, *(a1 + 120));
      v6 = *(a1 + 112);
      v11 = v33;
      this[4] = v32;
      this[5] = v11;
      this[6] = v34;
      v12 = v29;
      *this = v28;
      this[1] = v12;
      v3 = v3 - v10;
      v13 = v31;
      this[2] = v30;
      this[3] = v13;
    }

    RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(a1, *(a1 + 112));
  }

  v14 = (v7 - *(a1 + 88)) / (i - *(a1 + 88));
  v15 = *(a1 + 96);
  v16 = this[5];
  v25 = this[4];
  v26 = v16;
  *&v14 = v14;
  v17 = -(-(v15 - (*&v14 * v15)) - (*&v14 * *(a1 + 120)));
  v27 = this[6];
  v18 = this[1];
  v21 = *this;
  v22 = v18;
  v19 = this[3];
  v23 = this[2];
  v24 = v19;
  RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Cubic>(a1, &v21, v3, v17);
  *(a1 + 80) = v7;
}

void RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(uint64_t a1, float64x2_t *this)
{
  v4 = this[1].f64[0];
  v5 = this[1].f64[1];
  if ((v5 - this->f64[1]) * (v5 - this->f64[1]) + (v4 - this->f64[0]) * (v4 - this->f64[0]) > 0.00000001 || (v6 = this[2].f64[0], v7 = this[2].f64[1], (v7 - v5) * (v7 - v5) + (v6 - v4) * (v6 - v4) > 0.00000001) || (this[3].f64[1] - v7) * (this[3].f64[1] - v7) + (this[3].f64[0] - v6) * (this[3].f64[0] - v6) > 0.00000001)
  {
    if (*(a1 + 143) == 1)
    {
      v8 = CG::Cubic::derivative(this, 0.0);
      v15 = -v14;
      v21.f64[0] = -v8;
      v21.f64[1] = v15;
      if (*(a1 + 128))
      {
        v16 = INFINITY;
      }

      else
      {
        v9 = *(*(a1 + 16) + 16);
        v16 = vabdd_f64(*(a1 + 112), *(a1 + 88));
        v15 = v9 - v16;
        if (v9 - v16 < v16)
        {
          v16 = v9 - v16;
        }
      }

      RB::Path::ClipStroke::Transform::Clipper::emit_cap(a1, this, &v21, *(a1 + 142), v16, v15, v9, v10, v11, v12, v13);
      if (*(a1 + 143) == 1)
      {
        *(a1 + 143) = 0;
      }
    }

    if ((*(a1 + 140) & 1) == 0)
    {
      *(a1 + 208) = *this;
      *(a1 + 224) = -CG::Cubic::derivative(this, 0.0);
      *(a1 + 232) = -v17;
      (*(**(*a1 + 96) + 16))(*(*a1 + 96), *(a1 + 208));
      *(a1 + 140) = 1;
    }

    (*(**(*a1 + 96) + 40))(*(*a1 + 96), this[1], this[2], this[3]);
    *(a1 + 168) = this[3];
    *(a1 + 184) = CG::Cubic::derivative(this, 1.0);
    *(a1 + 192) = v18;
    if (*(a1 + 128))
    {
      v20 = INFINITY;
    }

    else
    {
      v19 = *(*(a1 + 16) + 16);
      v20 = vabdd_f64(*(a1 + 112), *(a1 + 88));
      if (v19 - v20 < v20)
      {
        v20 = v19 - v20;
      }
    }

    *(a1 + 200) = v20;
  }
}

void RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Cubic>(uint64_t a1, float64x2_t *this, double a3, float a4)
{
  v8 = 0;
  v9 = *(a1 + 136);
  v10 = v9 >= a4;
  v11 = v9;
  v12 = 1;
  do
  {
    if (v11 == a4)
    {
      break;
    }

    v13 = v12;
    if (v8 == v10)
    {
      v14 = *(a1 + 8);
    }

    else
    {
      LODWORD(v14) = *(a1 + 12);
    }

    v15 = *(a1 + 56);
    if (*&v14 >= *&v15)
    {
      *&v15 = *&v14;
    }

    if (*&v15 <= COERCE_FLOAT(HIDWORD(*(a1 + 56))))
    {
      v16 = *&v15;
    }

    else
    {
      LODWORD(v16) = HIDWORD(*(a1 + 56));
    }

    v17 = v9 >= a4 ? a4 : v11;
    v18 = v9 >= a4 ? v11 : a4;
    if (v16 < v17 || v16 > v18)
    {
      goto LABEL_23;
    }

    if ((v14 & 0x7FFFFFFF) >= 0x7F800000)
    {
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>();
    }

    if (*(a1 + 141) == ((v9 < a4) ^ (v8 == v10)))
    {
LABEL_23:
      v16 = v11;
    }

    else
    {
      v20 = (v16 - v11) / (a4 - v11);
      CG::Cubic::index(this, a3 * v20, 0.5);
      if (v21 > 0.0001)
      {
        CG::Cubic::split(this, v21, v26);
        if ((*(a1 + 141) & 1) == 0)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(a1, v26);
        }

        v22 = v26[12];
        this[4] = v26[11];
        this[5] = v22;
        this[6] = v26[13];
        v23 = v26[8];
        *this = v26[7];
        this[1] = v23;
        v24 = v26[10];
        this[2] = v26[9];
        this[3] = v24;
        a3 = a3 * (1.0 - v20);
      }

      *(a1 + 136) = v16;
      if (*(a1 + 141) == 1)
      {
        *(a1 + 141) = 0;
        v25 = v8 == v10 ? 257 : 256;
        *(a1 + 142) = v25;
      }

      else
      {
        *(a1 + 141) = 1;
        if (*(a1 + 143) == 1)
        {
          *(a1 + 143) = 0;
        }
      }
    }

    v12 = 0;
    v8 = 1;
    v11 = v16;
  }

  while ((v13 & 1) != 0);
  if ((*(a1 + 141) & 1) == 0)
  {
    RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(a1, this);
  }

  *(a1 + 136) = a4;
}

void DrawThemeImageWithOperation(void *a1, CGContextRef c, CGBlendMode a3, int a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9)
{
  CGContextSaveGState(c);
  if (a4)
  {
    [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
  }

  if (a3)
  {
    CGContextSetBlendMode(c, a3);
  }

  v18 = fabs(a9);
  if (v18 != 1.0)
  {
    CGContextSetAlpha(c, v18);
  }

  v19 = [a1 image];
  if (v19)
  {
    v21.origin.x = a5;
    v21.origin.y = a6;
    v21.size.width = a7;
    v21.size.height = a8;
    CGContextDrawImage(c, v21, v19);
  }

  if (a4)
  {
    [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
  }

  CGContextRestoreGState(c);
}

void DrawOnePartElementFromRenditionWithOperation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, uint64_t a7, void *a8, CGContext *a9, int a10, uint64_t a11, CGBlendMode a12, int a13, void *a14)
{
  if ([a8 isTiled])
  {
    v26 = [a8 imageForSliceIndex:a13];
    [a8 scale];
    v28 = v27;
    if (a5 < 0.0)
    {
      a12 = kCGBlendModeSourceAtop;
    }

    v44.origin.x = a1;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    if (!NSIsEmptyRect(v44))
    {
      CGContextSaveGState(a9);
      if (a10)
      {
        [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
        _CUITileImageWithOperation(v26, a9, a12, a1, a2, a3, a4, v28, a5);
        [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
      }

      else
      {
        _CUITileImageWithOperation(v26, a9, a12, a1, a2, a3, a4, v28, a5);
      }

      CGContextRestoreGState(a9);
    }
  }

  else
  {
    v29 = [a8 isScaled];
    v30 = [a8 imageForSliceIndex:a13];
    v31 = v30;
    if (v29)
    {
      if (a5 >= 0.0)
      {
        v32 = a12;
      }

      else
      {
        v32 = kCGBlendModeSourceAtop;
      }

      v33 = a1;
      v34 = a2;
      v35 = a3;
      v36 = a4;
      v37 = a9;
      v38 = a5;
    }

    else
    {
      [a8 scale];
      v40 = v39;
      v45.origin.x = a1;
      v45.origin.y = a2;
      v45.size.width = a3;
      v45.size.height = a4;
      if (NSIsEmptyRect(v45))
      {
        return;
      }

      if (a5 < 0.0)
      {
        a12 = kCGBlendModeSourceAtop;
      }

      [v31 size];
      v35 = v41;
      v36 = v42;
      v33 = a1 + floor((a3 - v41 * a6 / v40) * 0.5);
      v34 = a2 + floor((a4 - v42 * a6 / v40) * 0.5);
      v30 = v31;
      v37 = a9;
      v38 = a5;
      v32 = a12;
    }

    DrawOnePartImageWithOperation(v30, v37, v32, a10, a14, v33, v34, v35, v36, v38);
  }
}

void DrawOnePartImageWithOperation(void *a1, CGContext *a2, CGBlendMode a3, int a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10)
{
  if (!NSIsEmptyRect(*&a6))
  {
    v27 = a10;
    CGContextSaveGState(a2);
    if (a4)
    {
      [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
    }

    v29.origin.x = a6;
    v29.origin.y = a7;
    v29.size.width = a8;
    v29.size.height = a9;
    CGContextClipToRect(a2, v29);
    ClipBoundingBox = CGContextGetClipBoundingBox(a2);
    x = ClipBoundingBox.origin.x;
    y = ClipBoundingBox.origin.y;
    width = ClipBoundingBox.size.width;
    height = ClipBoundingBox.size.height;
    if (a3)
    {
      CGContextSetBlendMode(a2, a3);
    }

    v24 = fabs(v27);
    if (v24 != 1.0)
    {
      CGContextSetAlpha(a2, v24);
    }

    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (!CGRectIsEmpty(v31))
    {
      v25 = [a1 image];
      v26 = v25;
      if (a5)
      {
        v26 = [a5 newFlattenedImageFromShapeCGImage:v25 withScale:1 cache:1.0];
      }

      else
      {
        CGImageRetain(v25);
      }

      v32.origin.x = a6;
      v32.origin.y = a7;
      v32.size.width = a8;
      v32.size.height = a9;
      CGContextDrawImage(a2, v32, v26);
      CGImageRelease(v26);
    }

    if (a4)
    {
      [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
    }

    CGContextRestoreGState(a2);
  }
}

void DrawOnePartMaskFromRenditionWithOperation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, uint64_t a6, void *a7, CGContext *a8, int a9, uint64_t a10, CGBlendMode a11, int a12)
{
  v20 = [a7 maskForSliceIndex:a12];
  if (a5 >= 0.0)
  {
    v21 = a11;
  }

  else
  {
    v21 = kCGBlendModeSourceAtop;
  }

  DrawOnePartImageWithOperation(v20, a8, v21, a9, 0, a1, a2, a3, a4, a5);
}

void DrawAbsoluteAnimationFrameWithOperation(void *a1, CGContext *a2, CGBlendMode a3, int a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, uint64_t a11, uint64_t a12)
{
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __DrawAbsoluteAnimationFrameWithOperation_block_invoke;
  v12[3] = &__block_descriptor_40_e8_q16__0q8l;
  *&v12[4] = a5;
  DrawQualifiedAnimationFrameWithOperation(v12, a1, a2, a3, a4, a6, a7, a8, a9, a10, a12, 0);
}

void DrawQualifiedAnimationFrameWithOperation(uint64_t a1, void *a2, CGContext *a3, CGBlendMode a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, uint64_t a11, void *a12)
{
  if (!NSIsEmptyRect(*&a6))
  {
    v53 = a10;
    v23 = +[CUIImage imageWithCGImage:](CUIImage, "imageWithCGImage:", [a2 unslicedImage]);
    [(CUIImage *)v23 size];
    v25 = v24;
    v27 = v26;
    [objc_msgSend(a2 imageForSliceIndex:{0), "size"}];
    v30 = v28;
    v31 = v29;
    v54 = a9;
    if (v28 >= v25)
    {
      v34 = 0.0;
      if (v29 == 0.0)
      {
        v33 = 1.0;
      }

      else
      {
        v33 = v27 / v29 + -1.0;
      }

      v32 = v29;
    }

    else
    {
      v32 = 0.0;
      if (v28 == 0.0)
      {
        v33 = 1.0;
      }

      else
      {
        v33 = v25 / v28 + -1.0;
      }

      v34 = v30;
    }

    v35 = (*(a1 + 16))(a1, v33);
    v36 = [(CUIImage *)v23 image];
    if (v36)
    {
      v43 = v36;
      if (a12)
      {
        [a2 scale];
        v44 = [a12 newFlattenedImageFromShapeCGImage:v43 withScale:1 cache:?];
        if (v44)
        {
          v43 = v44;
        }
      }

      v56.origin.x = v34 * v35;
      v56.origin.y = v32 * v35;
      v56.size.width = v30;
      v56.size.height = v31;
      v45 = CGImageCreateWithImageInRect(v43, v56);
      if (!v45)
      {
        v57.origin.x = a6;
        v57.origin.y = a7;
        v57.size.width = a8;
        v57.size.height = v54;
        NSStringFromRect(v57);
        _CUILog(4, "CoreUI: error %s got a invalid subimage '%@' for rendition %@", v46, v47, v48, v49, v50, v51, "void DrawQualifiedAnimationFrameWithOperation(CFIndex (^)(NSInteger), NSRect, CUIThemeRendition *, CGContextRef, CGBlendMode, CGFloat, CUIFocusRingType, CGColorRef, CUIShapeEffectStack *)");
      }

      CGContextSaveGState(a3);
      if (a5)
      {
        [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
      }

      if (a4)
      {
        CGContextSetBlendMode(a3, a4);
      }

      v52 = fabs(v53);
      if (v52 != 1.0)
      {
        CGContextSetAlpha(a3, v52);
      }

      v58.origin.x = a6;
      v58.origin.y = a7;
      v58.size.width = a8;
      v58.size.height = v54;
      CGContextDrawImage(a3, v58, v45);
      if (a5)
      {
        [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
      }

      CGContextRestoreGState(a3);

      CGImageRelease(v45);
    }

    else
    {
      _CUILog(4, "CoreUI: error %s got a couldn't find an image for %@", v37, v38, v39, v40, v41, v42, "void DrawQualifiedAnimationFrameWithOperation(CFIndex (^)(NSInteger), NSRect, CUIThemeRendition *, CGContextRef, CGBlendMode, CGFloat, CUIFocusRingType, CGColorRef, CUIShapeEffectStack *)");
    }
  }
}

void DrawAnimationFrameMappedFrom0_1RangedValue(void *a1, CGContext *a2, CGBlendMode a3, int a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, uint64_t a11, void *a12)
{
  if (a5 < 0.0)
  {
    a5 = 0.0;
  }

  if (a5 > 1.0)
  {
    a5 = 1.0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = __DrawAnimationFrameMappedFrom0_1RangedValue_block_invoke;
  v12[3] = &__block_descriptor_40_e8_q16__0q8l;
  *&v12[4] = a5;
  DrawQualifiedAnimationFrameWithOperation(v12, a1, a2, a3, a4, a6, a7, a8, a9, a10, a12, a12);
}

void DrawThreePartElementFromRenditionWithOperation(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, CGContext *a9, int a10, uint64_t a11, CGBlendMode a12, int a13, int a14, int a15, void *a16)
{
  v27 = [a8 imageForSliceIndex:a13];
  v28 = [a8 imageForSliceIndex:a14];
  v29 = [a8 imageForSliceIndex:a15];
  v30 = [a8 type] == 2;
  [a8 scale];

  DrawThreePartImageWithOperation(v27, v29, v28, v30, a9, a12, a10, a16, a1, a2, a3, a4, v31, a5, a6);
}

void DrawThreePartImageWithOperation(void *a1, void *a2, void *a3, int a4, CGContext *a5, CGBlendMode a6, int a7, void *a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15)
{
  if (a12 == 0.0 || a11 == 0.0)
  {
    return;
  }

  v26 = a12;
  [a1 size];
  v30 = v29;
  v32 = v31;
  [a2 size];
  v88 = v34;
  v89 = v33;
  v94 = 0;
  v95 = 0;
  v96 = 0;
  CGContextSaveGState(a5);
  if (a7)
  {
    [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
  }

  if (a6)
  {
    CGContextSetBlendMode(a5, a6);
  }

  v35 = fabs(a14);
  if (v35 != 1.0)
  {
    CGContextSetAlpha(a5, v35);
  }

  v36 = a15 / a13;
  aRect_8 = a15;
  v87 = a13;
  if (a4)
  {
    v37 = v36 * v32;
    v38 = v36 * v30;
    v39 = v36 * v88;
    v40 = a11;
    if (v38 == 0.0)
    {
      v41 = a10;
    }

    else
    {
      v41 = a10;
      if (v40 - v38 != 0.0)
      {
        v42 = a9;
        v43 = a10;
        v44 = v26;
        *(&v40 - 2) = NSInsetRect(*(&v40 - 2), (v40 - v38) * 0.5, 0.0);
        v41 = v45;
        v26 = v46;
        v48 = floor(v47 + 0.001);
LABEL_18:
        aRecta = v40;
        if (v37 + v39 > v26)
        {
          v61 = v26 * 0.5;
          if (v37 <= v26 * 0.5)
          {
            v62 = v37;
          }

          else
          {
            v62 = v26 * 0.5;
          }

          v37 = ceil(v62);
          if (v39 <= v61)
          {
            v61 = v36 * v88;
          }

          v39 = floor(v61);
        }

        v63 = [a1 image];
        v64 = v63;
        if (a8)
        {
          v64 = [a8 newFlattenedImageFromShapeCGImage:v63 withScale:1 cache:aRect_8];
        }

        else
        {
          CGImageRetain(v63);
        }

        v94 = v64;
        v74 = [a2 image];
        v75 = v74;
        if (a8)
        {
          v76 = aRect_8;
          v75 = [a8 newFlattenedImageFromShapeCGImage:v74 withScale:1 cache:aRect_8];
        }

        else
        {
          CGImageRetain(v74);
          v76 = aRect_8;
        }

        v95 = v75;
        if (v26 - (v39 + v37) <= 0.0)
        {
          v81 = 2;
        }

        else
        {
          v79 = [a3 image];
          v80 = v79;
          if (a8)
          {
            v80 = [a8 newFlattenedImageFromShapeCGImage:v79 withScale:1 cache:v76];
          }

          else
          {
            CGImageRetain(v79);
          }

          [a3 size];
          v98.origin.x = v48;
          v98.origin.y = v41 + v39;
          v98.size.width = aRecta;
          v98.size.height = v26 - (v39 + v37);
          v96 = v80;
          CGRectGetMaxY(v98);
          v81 = 3;
        }

        v85 = &v94;
        CGContextDrawImages();
        do
        {
          v86 = *v85++;
          CGImageRelease(v86);
          --v81;
        }

        while (v81);
        goto LABEL_62;
      }
    }

    v48 = a9;
    goto LABEL_18;
  }

  v49 = v36 * v30;
  v50 = v36 * v32;
  v51 = v36 * v89;
  v52 = a11;
  if (v36 * v32 == 0.0)
  {
    v53 = a10;
    goto LABEL_28;
  }

  v53 = a10;
  if (v26 - v50 == 0.0)
  {
LABEL_28:
    v58 = a9;
    goto LABEL_29;
  }

  v54 = a9;
  v55 = a10;
  v56 = v26;
  *(&v52 - 2) = NSInsetRect(*(&v52 - 2), 0.0, (v26 - v50) * 0.5);
  v58 = v57;
  v26 = v59;
  v53 = floor(v60 + 0.001);
LABEL_29:
  v65 = v52 * 0.5;
  v66 = ceil(v52 * 0.5);
  if (v49 <= v52 * 0.5)
  {
    v67 = v49;
  }

  else
  {
    v67 = v66;
  }

  v68 = floor(v65);
  if (v51 <= v65)
  {
    v69 = v36 * v89;
  }

  else
  {
    v69 = v68;
  }

  aRectb = v52;
  if (v49 + v51 <= v52)
  {
    v70 = v49;
  }

  else
  {
    v51 = v69;
    v70 = v67;
  }

  v71 = [a1 image];
  v72 = v71;
  if (a8)
  {
    v73 = aRect_8;
    v72 = [a8 newFlattenedImageFromShapeCGImage:v71 withScale:1 cache:aRect_8];
  }

  else
  {
    CGImageRetain(v71);
    v73 = aRect_8;
  }

  v94 = v72;
  v77 = [a2 image];
  v78 = v77;
  if (a8)
  {
    v78 = [a8 newFlattenedImageFromShapeCGImage:v77 withScale:1 cache:v73];
  }

  else
  {
    CGImageRetain(v77);
  }

  v95 = v78;
  v82 = [a3 image];
  v83 = v82;
  if (a8)
  {
    v83 = [a8 newFlattenedImageFromShapeCGImage:v82 withScale:1 cache:aRect_8];
  }

  else
  {
    CGImageRetain(v82);
  }

  [a3 size];
  v97.origin.x = v58 + v70;
  v97.origin.y = v53;
  v97.size.width = aRectb - v70 - v51;
  v97.size.height = v26;
  v96 = v83;
  CGRectGetMaxY(v97);
  CGContextDrawImages();
  for (i = 0; i != 24; i += 8)
  {
    CGImageRelease(*(&v94 + i));
  }

LABEL_62:
  if (a7)
  {
    [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
  }

  CGContextRestoreGState(a5);
}

void DrawThreePartMaskFromRenditionWithOperation(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, void *a8, CGContext *a9, int a10, uint64_t a11, CGBlendMode a12)
{
  v22 = [a8 maskForSliceIndex:0];
  v23 = [a8 maskForSliceIndex:2];
  v24 = [a8 maskForSliceIndex:1];
  v25 = [a8 type] == 2;
  [a8 scale];

  DrawThreePartImageWithOperation(v22, v23, v24, v25, a9, a12, a10, 0, a1, a2, a3, a4, v26, a5, a6);
}

void DrawPulsedElementFromRenditionKey(uint64_t a1, void *a2, CGContext *a3, int a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v24 = _LookupStructuredThemeProvider(a1, a2);
  if (a10 > 1.0 && ([v24 canGetRenditionWithKey:{objc_msgSend(a2, "keyList")}] & 1) == 0)
  {
    [a2 setThemeScale:1];
  }

  v25 = [v24 renditionWithKey:{objc_msgSend(a2, "keyList")}];
  v26 = [v25 type];
  if (v26 >= 3)
  {

    _CUILog(4, "Can only pulse one- and three-part renditions", v27, v28, v29, v30, v31, v32, a15);
  }

  else
  {
    v33 = v26;
    v34 = OBJC_CLASS___CUIPSDLayer_ptr;
    if (a4)
    {
      [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
    }

    CGContextBeginTransparencyLayer(a3, 0);
    v35 = objc_opt_respondsToSelector();
    v36 = 0;
    if (v35)
    {
      LOWORD(v36) = [a2 themeLayer];
      [a2 setThemeLayer:3];
      v36 = v36;
    }

    v37 = [v25 imageForSliceIndex:0];
    v38 = v37;
    if (v33)
    {
      v39 = v33 == 2;
      v40 = [v25 imageForSliceIndex:2];
      v52 = v35;
      v41 = a4;
      v42 = v36;
      v43 = [v25 imageForSliceIndex:1];
      [v25 scale];
      v44 = v40;
      v34 = OBJC_CLASS___CUIPSDLayer_ptr;
      DrawThreePartImageWithOperation(v38, v44, v43, v39, a3, kCGBlendModeCopy, 0, 0, a5, a6, a7, a8, v45, 1.0 - a9, a10);
      v46 = [v24 renditionWithKey:{objc_msgSend(a2, "keyList")}];
      v47 = [v46 imageForSliceIndex:0];
      v48 = [v46 imageForSliceIndex:2];
      v49 = [v46 imageForSliceIndex:1];
      v50 = v46;
      v36 = v42;
      a4 = v41;
      v35 = v52;
      [v50 scale];
      DrawThreePartImageWithOperation(v47, v48, v49, v39, a3, kCGBlendModePlusLighter, 0, 0, a5, a6, a7, a8, v51, a9, a10);
    }

    else
    {
      DrawThemeImageWithOperation(v37, a3, kCGBlendModeCopy, 0, a5, a6, a7, a8, 1.0 - a9);
      DrawThemeImageWithOperation([objc_msgSend(v24 renditionWithKey:{objc_msgSend(a2, "keyList")), "imageForSliceIndex:", 0}], a3, kCGBlendModeNormal, 0, a5, a6, a7, a8, a9);
    }

    CGContextEndTransparencyLayer(a3);
    if (a4)
    {
      [(__objc2_class *)v34[97] raise:NSGenericException format:@"Focus Ring drawing not supported"];
    }

    if (v35)
    {

      [a2 setThemeLayer:v36];
    }
  }
}

void DrawNinePartElementFromRenditionWithOperation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, uint64_t a7, void *a8, CGContext *a9, int a10, uint64_t a11, CGBlendMode a12, void *a13)
{
  v20 = [a8 edgesOnly];
  v36 = [_CUINineImagePieces alloc];
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = [a8 imageForSliceIndex:4];
  }

  v22 = [a8 imageForSliceIndex:0];
  v23 = [a8 imageForSliceIndex:1];
  v24 = [a8 imageForSliceIndex:2];
  v25 = [a8 imageForSliceIndex:5];
  v26 = [a8 imageForSliceIndex:8];
  v27 = [a8 imageForSliceIndex:7];
  v28 = [a8 imageForSliceIndex:6];
  v29 = [a8 imageForSliceIndex:3];
  LOBYTE(v31) = [a8 isTiled];
  v37 = [(_CUINineImagePieces *)v36 initWithCenter:v21 topLeft:v22 top:v23 topRight:v24 right:v25 bottomRight:v26 bottom:v27 bottomLeft:v28 left:v29 tileCenterAndEdges:v31];
  [a8 scale];
  DrawNinePartImageWithOperation(v37, a9, a12, a10, a13, a1, a2, a3, a4, v30, a5, a6);
}

void DrawNinePartImageWithOperation(void *a1, CGContext *a2, CGBlendMode a3, int a4, void *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, double a12)
{
  if (!NSIsEmptyRect(*&a6))
  {
    v205 = 0;
    memset(v204, 0, sizeof(v204));
    CGContextSaveGState(a2);
    if (a4 == 1)
    {
      [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
    }

    v213.origin.x = a6;
    v213.origin.y = a7;
    v213.size.width = a8;
    v213.size.height = a9;
    CGContextClipToRect(a2, v213);
    ClipBoundingBox = CGContextGetClipBoundingBox(a2);
    y = ClipBoundingBox.origin.y;
    rect = ClipBoundingBox.origin.x;
    r2_16 = ClipBoundingBox.size.height;
    r2_24 = ClipBoundingBox.size.width;
    if (a3)
    {
      CGContextSetBlendMode(a2, a3);
    }

    v24 = fabs(a11);
    if (v24 != 1.0)
    {
      CGContextSetAlpha(a2, v24);
    }

    v25 = [a1 topLeft];
    [v25 size];
    v166 = a10;
    v26 = a12 / a10;
    v168 = v26 * v27;
    v29 = v26 * v28;
    v30 = [v25 image];
    v31 = v30;
    v173 = a8;
    if (a5)
    {
      v31 = [a5 newFlattenedImageFromShapeCGImage:v30 withScale:1 cache:a12];
    }

    else
    {
      CGImageRetain(v30);
    }

    v172 = a9;
    v215.origin.x = a6;
    v215.origin.y = a7 + a9 - v29;
    v215.size.width = v168;
    v215.size.height = v29;
    v253.origin.y = y;
    v253.origin.x = rect;
    v253.size.height = r2_16;
    v253.size.width = r2_24;
    v216 = CGRectIntersection(v215, v253);
    r2_8 = a7;
    v174 = a12;
    v171 = v29;
    if (CGRectIsEmpty(v216))
    {
      v32 = a7 + a9 - v29;
      CGImageRelease(v31);
      v33 = 0;
      v34 = &v208;
      v35 = v206;
      v36 = v204;
    }

    else
    {
      v208 = a6;
      v209 = a7 + a9 - v29;
      v36 = v204 + 1;
      v35 = &v207;
      v34 = &v212;
      v210 = v168;
      v211 = v29;
      *v206 = a6;
      *&v206[1] = v209;
      v32 = v209;
      *&v204[0] = v31;
      v33 = 1;
      *&v206[2] = v168;
      *&v206[3] = v29;
    }

    v37 = [a1 topRight];
    [v37 size];
    v39 = v26 * v38;
    v41 = v26 * v40;
    v170 = a6 + a8;
    v42 = a6 + a8 - v26 * v38;
    v43 = [v37 image];
    v44 = v43;
    if (a5)
    {
      v44 = [a5 newFlattenedImageFromShapeCGImage:v43 withScale:1 cache:v174];
    }

    else
    {
      CGImageRetain(v43);
    }

    v217.origin.x = v42;
    v217.origin.y = v32;
    v217.size.width = v39;
    v217.size.height = v41;
    v254.origin.y = y;
    v254.origin.x = rect;
    v254.size.height = r2_16;
    v254.size.width = r2_24;
    v218 = CGRectIntersection(v217, v254);
    if (CGRectIsEmpty(v218))
    {
      CGImageRelease(v44);
    }

    else
    {
      *v34 = v42;
      v34[1] = v32;
      v34[2] = v39;
      v34[3] = v41;
      *v35 = v42;
      v35[1] = v32;
      v35[2] = v39;
      v35[3] = v41;
      ++v33;
      *v36 = v44;
    }

    v45 = [a1 bottomLeft];
    [v45 size];
    v47 = v26 * v46;
    r2 = v26 * v48;
    v49 = [v45 image];
    v50 = v49;
    if (a5)
    {
      v50 = [a5 newFlattenedImageFromShapeCGImage:v49 withScale:1 cache:v174];
    }

    else
    {
      CGImageRetain(v49);
    }

    v219.origin.x = a6;
    v219.origin.y = r2_8;
    v219.size.width = v47;
    v219.size.height = r2;
    v255.origin.y = y;
    v255.origin.x = rect;
    v255.size.height = r2_16;
    v255.size.width = r2_24;
    v220 = CGRectIntersection(v219, v255);
    if (CGRectIsEmpty(v220))
    {
      CGImageRelease(v50);
    }

    else
    {
      v51 = &v208 + 4 * v33;
      *v51 = a6;
      v51[1] = r2_8;
      v51[2] = v47;
      v51[3] = r2;
      *(v204 + v33) = v50;
      v52 = &v206[4 * v33];
      *v52 = a6;
      v52[1] = r2_8;
      ++v33;
      v52[2] = v47;
      v52[3] = r2;
    }

    v53 = [a1 bottomRight];
    [v53 size];
    v55 = v26 * v54;
    v56 = [v53 image];
    v57 = v56;
    v175 = a6;
    if (a5)
    {
      v57 = [a5 newFlattenedImageFromShapeCGImage:v56 withScale:1 cache:v174];
    }

    else
    {
      CGImageRetain(v56);
    }

    v58 = v170 - v55;
    v221.origin.x = v170 - v55;
    v221.origin.y = r2_8;
    v221.size.width = v55;
    v221.size.height = r2;
    v256.origin.y = y;
    v256.origin.x = rect;
    v256.size.height = r2_16;
    v256.size.width = r2_24;
    v222 = CGRectIntersection(v221, v256);
    if (CGRectIsEmpty(v222))
    {
      CGImageRelease(v57);
    }

    else
    {
      v59 = &v208 + 4 * v33;
      *v59 = v58;
      v59[1] = r2_8;
      v59[2] = v55;
      v59[3] = r2;
      *(v204 + v33) = v57;
      v60 = &v206[4 * v33];
      *v60 = v58;
      v60[1] = r2_8;
      ++v33;
      v60[2] = v55;
      v60[3] = r2;
    }

    v61 = [a1 top];
    [v61 size];
    v63 = v62;
    v65 = v26 * v64;
    v167 = a6 + v168;
    v169 = a8 - v168 - v39;
    v223.size.width = v169;
    v223.origin.x = v167;
    v223.origin.y = v32;
    v223.size.height = v65;
    v257.origin.y = y;
    v257.origin.x = rect;
    v257.size.height = r2_16;
    v257.size.width = r2_24;
    v224 = CGRectIntersection(v223, v257);
    x = v224.origin.x;
    width = v224.size.width;
    v224.origin.y = v32;
    v224.size.height = v65;
    if (CGRectIsEmpty(v224))
    {
      v68 = v172;
    }

    else
    {
      v69 = [a1 tileCenterAndEdges];
      v70 = [v61 image];
      v71 = v70;
      if (v69)
      {
        v72 = v26 * v63;
        if (a5)
        {
          v71 = [a5 newFlattenedImageFromShapeCGImage:v70 withScale:1 cache:v174];
        }

        else
        {
          CGImageRetain(v70);
        }

        v68 = v172;
        v225.origin.x = x;
        v225.origin.y = v32;
        v225.size.width = width;
        v225.size.height = v65;
        MaxY = CGRectGetMaxY(v225);
        *(v204 + v33) = v71;
        v74 = &v206[4 * v33];
        *v74 = x;
        v74[1] = MaxY - v65;
        v74[2] = v72;
        v74[3] = v65;
        v75 = &v208 + 4 * v33;
        *v75 = x;
        v75[1] = v32;
        v75[2] = width;
        v75[3] = v65;
        ++v33;
      }

      else
      {
        if (a5)
        {
          v71 = [a5 newFlattenedImageFromShapeCGImage:v70 withScale:1 cache:v174];
        }

        else
        {
          CGImageRetain(v70);
        }

        v68 = v172;
        v76 = &v208 + 4 * v33;
        *v76 = x;
        v76[1] = v32;
        v76[2] = width;
        v76[3] = v65;
        *(v204 + v33) = v71;
        v77 = &v206[4 * v33];
        *v77 = x;
        v77[1] = v32;
        ++v33;
        v77[2] = width;
        v77[3] = v65;
      }
    }

    v78 = [a1 bottom];
    [v78 size];
    v80 = v79;
    v82 = v26 * v81;
    v226.origin.x = v167;
    v226.size.width = v169;
    v258.size.height = r2_16;
    v226.origin.y = r2_8;
    v226.size.height = v82;
    v258.origin.y = y;
    v258.origin.x = rect;
    v258.size.width = r2_24;
    v227 = CGRectIntersection(v226, v258);
    v83 = v227.origin.x;
    v84 = v227.size.width;
    v227.origin.y = r2_8;
    v227.size.height = v82;
    if (!CGRectIsEmpty(v227))
    {
      v85 = [a1 tileCenterAndEdges];
      v86 = [v78 image];
      v87 = v86;
      if (v85)
      {
        v88 = v26 * v80;
        if (a5)
        {
          v87 = [a5 newFlattenedImageFromShapeCGImage:v86 withScale:1 cache:v174];
        }

        else
        {
          CGImageRetain(v86);
        }

        v228.origin.x = v83;
        v228.origin.y = r2_8;
        v228.size.width = v84;
        v228.size.height = v82;
        v89 = CGRectGetMaxY(v228);
        *(v204 + v33) = v87;
        v90 = &v206[4 * v33];
        *v90 = v83;
        v90[1] = v89 - v82;
        v90[2] = v88;
        v90[3] = v82;
        v91 = &v208 + 4 * v33;
        *v91 = v83;
        v91[1] = r2_8;
        v91[2] = v84;
        v91[3] = v82;
        ++v33;
      }

      else
      {
        if (a5)
        {
          v87 = [a5 newFlattenedImageFromShapeCGImage:v86 withScale:1 cache:v174];
        }

        else
        {
          CGImageRetain(v86);
        }

        v92 = &v208 + 4 * v33;
        *v92 = v83;
        v92[1] = r2_8;
        v92[2] = v84;
        v92[3] = v82;
        *(v204 + v33) = v87;
        v93 = &v206[4 * v33];
        *v93 = v83;
        v93[1] = r2_8;
        ++v33;
        v93[2] = v84;
        v93[3] = v82;
      }
    }

    v94 = [a1 left];
    [v94 size];
    v96 = v95;
    v98 = v26 * v97;
    v99 = v68 - r2 - v171;
    v229.origin.x = v175;
    v229.origin.y = r2_8 + r2;
    v229.size.width = v98;
    v229.size.height = v99;
    v259.origin.y = y;
    v259.origin.x = rect;
    v259.size.height = r2_16;
    v259.size.width = r2_24;
    v230 = CGRectIntersection(v229, v259);
    v100 = v230.origin.y;
    height = v230.size.height;
    v230.origin.x = v175;
    v230.size.width = v98;
    if (!CGRectIsEmpty(v230))
    {
      v102 = [a1 tileCenterAndEdges];
      v103 = [v94 image];
      v104 = v103;
      if (!v102)
      {
        v106 = r2;
        if (a5)
        {
          v104 = [a5 newFlattenedImageFromShapeCGImage:v103 withScale:1 cache:v174];
        }

        else
        {
          CGImageRetain(v103);
        }

        v110 = &v208 + 4 * v33;
        *v110 = v175;
        v110[1] = v100;
        v110[2] = v98;
        v110[3] = height;
        *(v204 + v33) = v104;
        v111 = &v206[4 * v33];
        *v111 = v175;
        v111[1] = v100;
        ++v33;
        v111[2] = v98;
        v111[3] = height;
LABEL_64:
        v112 = [a1 right];
        [v112 size];
        v114 = v113;
        v116 = v26 * v115;
        v232.origin.x = v170 - v26 * v115;
        v117 = v232.origin.x;
        v232.origin.y = r2_8 + r2;
        v232.size.width = v116;
        v232.size.height = v99;
        v260.origin.y = y;
        v260.origin.x = rect;
        v260.size.height = r2_16;
        v260.size.width = r2_24;
        v233 = CGRectIntersection(v232, v260);
        v118 = v233.origin.y;
        v119 = v233.size.height;
        v233.origin.x = v117;
        v233.size.width = v116;
        if (!CGRectIsEmpty(v233))
        {
          v120 = [a1 tileCenterAndEdges];
          v121 = [v112 image];
          v122 = v121;
          if (v120)
          {
            v123 = v26 * v114;
            if (a5)
            {
              v122 = [a5 newFlattenedImageFromShapeCGImage:v121 withScale:1 cache:v174];
            }

            else
            {
              CGImageRetain(v121);
            }

            v234.origin.x = v117;
            v234.origin.y = v118;
            v234.size.width = v116;
            v234.size.height = v119;
            v124 = CGRectGetMaxY(v234);
            *(v204 + v33) = v122;
            v125 = &v206[4 * v33];
            *v125 = v117;
            v125[1] = v124 - v123;
            v125[2] = v116;
            v125[3] = v123;
            v126 = &v208 + 4 * v33;
            *v126 = v117;
            v126[1] = v118;
            v126[2] = v116;
            v126[3] = v119;
            ++v33;
          }

          else
          {
            if (a5)
            {
              v122 = [a5 newFlattenedImageFromShapeCGImage:v121 withScale:1 cache:v174];
            }

            else
            {
              CGImageRetain(v121);
            }

            v127 = &v208 + 4 * v33;
            *v127 = v117;
            v127[1] = v118;
            v127[2] = v116;
            v127[3] = v119;
            *(v204 + v33) = v122;
            v128 = &v206[4 * v33];
            *v128 = v117;
            v128[1] = v118;
            ++v33;
            v128[2] = v116;
            v128[3] = v119;
          }
        }

        v129 = [a1 center];
        v130 = r2_8;
        if (v129 && (v131 = v129, v235.size.height = v172 - v171 - v106, v235.origin.x = v167, v235.size.width = v169, v235.origin.y = r2_8 + r2, v261.origin.y = y, v261.origin.x = rect, v261.size.height = r2_16, v261.size.width = r2_24, v236 = CGRectIntersection(v235, v261), v132 = v236.origin.x, v133 = v236.origin.y, v134 = v236.size.width, v135 = v236.size.height, !CGRectIsEmpty(v236)))
        {
          v137 = [a1 tileCenterAndEdges];
          v138 = [v131 image];
          v139 = v138;
          if (v137)
          {
            if (a5)
            {
              v140 = v174;
              v139 = [a5 newFlattenedImageFromShapeCGImage:v138 withScale:1 cache:v174];
            }

            else
            {
              CGImageRetain(v138);
              v140 = v174;
            }

            [v131 size];
            v142 = v141 * v140 / v166;
            v144 = v143 * v140 / v166;
            v237.origin.x = v132;
            v237.origin.y = v133;
            v237.size.width = v134;
            v237.size.height = v135;
            v145 = CGRectGetMaxY(v237);
            *(v204 + v33) = v139;
            v146 = &v206[4 * v33];
            *v146 = v132;
            v146[1] = v145 - v144;
            v146[2] = v142;
            v146[3] = v144;
            v147 = &v208 + 4 * v33;
            *v147 = v132;
            v147[1] = v133;
            v147[2] = v134;
            v147[3] = v135;
            v130 = r2_8;
          }

          else
          {
            if (a5)
            {
              v139 = [a5 newFlattenedImageFromShapeCGImage:v138 withScale:1 cache:v174];
            }

            else
            {
              CGImageRetain(v138);
            }

            v148 = &v208 + 4 * v33;
            *v148 = v132;
            v148[1] = v133;
            v148[2] = v134;
            v148[3] = v135;
            v149 = &v206[4 * v33];
            *v149 = v132;
            v149[1] = v133;
            v149[2] = v134;
            v149[3] = v135;
            *(v204 + v33) = v139;
          }

          ++v33;
          CGContextDrawImages();
          v136 = v175;
        }

        else
        {
          CGContextDrawImages();
          v136 = v175;
          if (!v33)
          {
            goto LABEL_90;
          }
        }

        v150 = v204;
        do
        {
          v151 = *v150++;
          CGImageRelease(v151);
          --v33;
        }

        while (v33);
LABEL_90:
        if (a4)
        {
          if (a4 == 1)
          {
            v152 = NSGenericException;
LABEL_95:
            [NSException raise:v152 format:@"Focus Ring drawing not supported"];
            goto LABEL_96;
          }

          if (a4 == 2)
          {
            v238.origin.x = v136;
            v238.origin.y = v130;
            v238.size.width = v173;
            v238.size.height = v172;
            v239 = CGRectInset(v238, 3.0, 3.0);
            r2_24a = v239.origin.y;
            v186 = v239.origin.x;
            r2_8a = v239.size.height;
            r2_16a = v239.size.width;
            v240 = CGRectInset(v239, 1.0, 1.0);
            v153 = v240.origin.x;
            v154 = v240.origin.y;
            recta = v240.origin.y;
            v155 = v240.size.width;
            v156 = v240.size.height;
            v240.origin.x = v136;
            v240.origin.y = v130;
            v240.size.width = v173;
            v240.size.height = v172;
            MinX = CGRectGetMinX(v240);
            v241.origin.x = v153;
            v241.origin.y = v154;
            v241.size.width = v155;
            v241.size.height = v156;
            v157 = CGRectGetMaxY(v241);
            v242.origin.x = v136;
            v242.origin.y = v130;
            v242.size.width = v173;
            v242.size.height = v172;
            rects.origin.x = MinX;
            rects.origin.y = v157;
            rects.size.width = CGRectGetWidth(v242);
            rects.size.height = 4.0;
            v243.origin.x = v136;
            v243.origin.y = v130;
            v243.size.width = v173;
            v243.size.height = v172;
            v158 = CGRectGetMaxX(v243) + -4.0;
            r2a = v153;
            v244.origin.x = v153;
            v244.origin.y = recta;
            v244.size.width = v155;
            v244.size.height = v156;
            MinY = CGRectGetMinY(v244);
            v245.origin.x = v136;
            v245.origin.y = v130;
            v245.size.width = v173;
            v245.size.height = v172;
            v192 = v158;
            v193 = MinY;
            v194 = 0x4010000000000000;
            v195 = CGRectGetHeight(v245);
            v246.origin.x = v136;
            v246.origin.y = v130;
            v246.size.width = v173;
            v246.size.height = v172;
            v160 = CGRectGetMinX(v246);
            v247.origin.x = v136;
            v247.origin.y = v130;
            v247.size.width = v173;
            v247.size.height = v172;
            v161 = CGRectGetMinY(v247);
            v248.origin.x = v136;
            v248.origin.y = v130;
            v248.size.width = v173;
            v248.size.height = v172;
            v196 = v160;
            v197 = v161;
            v198 = CGRectGetWidth(v248);
            v199 = 0x4010000000000000;
            v249.origin.x = v136;
            v249.origin.y = v130;
            v249.size.width = v173;
            v249.size.height = v172;
            v162 = CGRectGetMinX(v249);
            v250.origin.x = r2a;
            v250.origin.y = recta;
            v250.size.width = v155;
            v250.size.height = v156;
            v163 = CGRectGetMinY(v250);
            v251.origin.x = v136;
            v251.origin.y = v130;
            v251.size.width = v173;
            v251.size.height = v172;
            v200 = v162;
            v201 = v163;
            v202 = 0x4010000000000000;
            v203 = CGRectGetHeight(v251);
            [NSException raise:NSGenericException format:@"Focus Ring drawing not supported"];
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            *components = xmmword_18E021D80;
            v190 = unk_18E021D90;
            v165 = CGColorCreate(DeviceRGB, components);
            CGContextSetFillColorWithColor(a2, v165);
            CGContextClipToRects(a2, &rects, 4uLL);
            v252.origin.y = r2_24a;
            v252.origin.x = v186;
            v252.size.height = r2_8a;
            v252.size.width = r2_16a;
            CGContextFillRect(a2, v252);
            CGColorSpaceRelease(DeviceRGB);
            CGColorRelease(v165);
            v152 = NSGenericException;
            goto LABEL_95;
          }
        }

LABEL_96:
        CGContextRestoreGState(a2);
        return;
      }

      v105 = v26 * v96;
      if (a5)
      {
        v104 = [a5 newFlattenedImageFromShapeCGImage:v103 withScale:1 cache:v174];
      }

      else
      {
        CGImageRetain(v103);
      }

      v231.origin.x = v175;
      v231.origin.y = v100;
      v231.size.width = v98;
      v231.size.height = height;
      v107 = CGRectGetMaxY(v231);
      *(v204 + v33) = v104;
      v108 = &v206[4 * v33];
      *v108 = v175;
      v108[1] = v107 - v105;
      v108[2] = v98;
      v108[3] = v105;
      v109 = &v208 + 4 * v33;
      *v109 = v175;
      v109[1] = v100;
      v109[2] = v98;
      v109[3] = height;
      ++v33;
    }

    v106 = r2;
    goto LABEL_64;
  }
}

void DrawNinePartMaskFromRenditionWithOperation(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, uint64_t a7, void *a8, CGContext *a9, int a10, uint64_t a11, CGBlendMode a12)
{
  v33 = [_CUINineImagePieces alloc];
  v19 = [a8 maskForSliceIndex:4];
  v20 = [a8 maskForSliceIndex:0];
  v21 = [a8 maskForSliceIndex:1];
  v22 = [a8 maskForSliceIndex:2];
  v23 = [a8 maskForSliceIndex:5];
  v24 = [a8 maskForSliceIndex:8];
  v25 = [a8 maskForSliceIndex:7];
  v26 = [a8 maskForSliceIndex:6];
  v27 = [a8 maskForSliceIndex:3];
  LOBYTE(v29) = [a8 isTiled];
  v34 = [(_CUINineImagePieces *)v33 initWithCenter:v19 topLeft:v20 top:v21 topRight:v22 right:v23 bottomRight:v24 bottom:v25 bottomLeft:v26 left:v27 tileCenterAndEdges:v29];
  [a8 scale];
  DrawNinePartImageWithOperation(v34, a9, a12, a10, 0, a1, a2, a3, a4, v28, a5, a6);
}

void _CUITileImageWithOperation(void *a1, CGContext *a2, CGBlendMode a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, double a9)
{
  if (a1 && !NSIsEmptyRect(*&a4))
  {
    CGContextSaveGState(a2);
    if (a3)
    {
      CGContextSetBlendMode(a2, a3);
    }

    CGContextSetAlpha(a2, fabs(a9));
    [a1 size];
    v17.origin.x = a4;
    v17.origin.y = a5;
    v17.size.width = a6;
    v17.size.height = a7;
    CGRectGetMaxY(v17);
    [a1 image];
    CGContextDrawImages();
    CGContextRestoreGState(a2);
  }
}

const CGPath *CGPathCreateClippedStrokePath(const CGPath *a1, uint64_t a2, uint64_t a3, int a4, int a5, double a6)
{
  v6 = a1;
  if (a1)
  {
    v11 = a6;
    v18 = &unk_1F00D59E0;
    Mutable = CGPathCreateMutable();
    v12 = 0.0;
    if (a5)
    {
      v12 = v11;
    }

    v13 = 1.0;
    if ((a5 & 1) == 0)
    {
      v13 = v11;
    }

    RB::Path::ClipStroke::Transform::Transform(info, &v18, a5, a4, a2, a3, 0, 0, v12, v13, 0);
    (*info[0])(info);
    v6 = Mutable;
    info[0] = &unk_1F00D5918;
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  return v6;
}

void sub_18DFB97BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

CGPathRef CGPathCreateJoinedStrokePath(const CGPath *a1, void *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return 0;
  }

  RB::Path::JoinStroke::JoinStroke(info, 0, a5, a4, a2, *a3);
  if (v16 == v17)
  {
    v9 = CGPathRetain(a1);
  }

  else
  {
    v11 = &unk_1F00D59E0;
    Mutable = CGPathCreateMutable();
    info[1] = &v11;
    (*info[0])(info);
    v8 = (v15 - v14) >> 4;
    if (v8 > *a3)
    {
      __assert_rtn("CGPathCreateJoinedStrokePath", "CGPathClipStroke.cc", 120, "new_keyframes.size() <= *count");
    }

    if (v15 != v14)
    {
      memmove(a2, v14, v15 - v14);
    }

    *a3 = v8;
    v9 = Mutable;
  }

  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }

  return v9;
}

void sub_18DFB9980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  RB::Path::JoinStroke::~JoinStroke(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::apply_path(CGPath const*,RB::Path::Consumer &)::$_0::__invoke(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        return (*(*result + 24))(*v2);
      }
    }

    else
    {
      return (*(*result + 16))(*v2);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        return (*(*result + 32))(*v2, v2[1]);
      case 3:
        return (*(*result + 40))(*v2, v2[1], v2[2]);
      case 4:
        return (*(*result + 8))();
    }
  }

  return result;
}

void sub_18DFBA194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_18DFBA3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18DFBA5B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_18DFBA840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __FacetCache_block_invoke()
{
  result = [[NSMutableDictionary alloc] initWithCapacity:20];
  FacetCache_facetCache = result;
  return result;
}

id __RecentlyUsedFacetCacheKeys_block_invoke()
{
  result = [[NSMutableArray alloc] initWithCapacity:20];
  RecentlyUsedFacetCacheKeys_facetCacheKeys = result;
  return result;
}

void FrameIntersectionWithAxis(double *a1, double *a2, double a3, double a4, double a5, double a6, long double a7)
{
  v13 = remainder(a7, 360.0);
  if (v13 <= 90.0)
  {
    if (v13 >= -90.0)
    {
      v15 = a6 * 0.5;
      v16 = a4 + a6 * 0.5;
      if (v13 == 0.0)
      {
        v17 = a3 + a5;
        a4 = a4 + a6 * 0.5;
        goto LABEL_13;
      }

      v19 = 0;
      v18 = a5 * 0.5;
      v17 = a3 + a5 * 0.5;
LABEL_11:
      if (fabs(v13) == 90.0)
      {
        v16 = a4 + a6;
        a3 = v17;
        if (v13 < 0.0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v22 = tan(v13 * 3.14159265 / 180.0);
        v23 = v18 * v22;
        if (fabs(v18 * v22) <= v15)
        {
          a4 = v16 - v23;
          v17 = a3 + a5;
          v16 = v16 + v23;
        }

        else
        {
          a3 = v17 - v15 / v22;
          v17 = v17 + v15 / v22;
          v16 = a4 + a6;
          if (v22 < 0.0)
          {
            if ((v19 & 1) == 0)
            {
              goto LABEL_14;
            }

            goto LABEL_13;
          }
        }

        if (v19)
        {
          goto LABEL_14;
        }
      }

LABEL_13:
      v20 = v17;
      v21 = v16;
      v17 = a3;
      v16 = a4;
      a3 = v20;
      a4 = v21;
      goto LABEL_14;
    }

    v14 = 180.0;
  }

  else
  {
    v14 = -180.0;
  }

  v13 = v13 + v14;
  v15 = a6 * 0.5;
  v16 = a4 + a6 * 0.5;
  if (v13 != 0.0)
  {
    v18 = a5 * 0.5;
    v17 = a3 + a5 * 0.5;
    v19 = 1;
    goto LABEL_11;
  }

  v17 = a3 + a5;
  a4 = a4 + a6 * 0.5;
LABEL_14:
  *a1 = v17;
  a1[1] = v16;
  *a2 = a3;
  a2[1] = a4;
}

id LinearGradientShaderFunction(void *a1, double *a2, void *a3)
{
  result = [a1 _smoothedGradientColorAtLocation:*a2];
  *a3 = v5;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

void GradientEvaluatorRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

Class initMDLVertexAttribute()
{
  __NSGetFrameworkReference_0();
  result = objc_getClass("MDLVertexAttribute");
  classMDLVertexAttribute = result;
  if (!result)
  {
    initMDLVertexAttribute_cold_1();
  }

  getMDLVertexAttributeClass[0] = MDLVertexAttributeFunction;
  return result;
}

void __NSGetFrameworkReference_0()
{
  os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock_1);
  v0 = [__NSGetFrameworkReference_table_1 objectForKey:@"ModelIO"];
  os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock_1);
  if (!v0)
  {
    v1 = __NSLoadFramework(@"ModelIO");
    if (v1)
    {
      v2 = v1;
      os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock_1);
      v3 = __NSGetFrameworkReference_table_1;
      if (!__NSGetFrameworkReference_table_1)
      {
        v3 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:2 capacity:0];
        __NSGetFrameworkReference_table_1 = v3;
      }

      if (![v3 objectForKey:@"ModelIO"])
      {
        [__NSGetFrameworkReference_table_1 setObject:v2 forKey:@"ModelIO"];
      }

      os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock_1);
    }
  }
}

Class initMDLVertexBufferLayout()
{
  __NSGetFrameworkReference_0();
  result = objc_getClass("MDLVertexBufferLayout");
  classMDLVertexBufferLayout = result;
  if (!result)
  {
    initMDLVertexBufferLayout_cold_1();
  }

  getMDLVertexBufferLayoutClass[0] = MDLVertexBufferLayoutFunction;
  return result;
}

Class initMDLVertexDescriptor()
{
  __NSGetFrameworkReference_0();
  result = objc_getClass("MDLVertexDescriptor");
  classMDLVertexDescriptor = result;
  if (!result)
  {
    initMDLVertexDescriptor_cold_1();
  }

  getMDLVertexDescriptorClass[0] = MDLVertexDescriptorFunction;
  return result;
}

Class initMDLMesh()
{
  __NSGetFrameworkReference_0();
  result = objc_getClass("MDLMesh");
  classMDLMesh = result;
  if (!result)
  {
    initMDLMesh_cold_1();
  }

  getMDLMeshClass[0] = MDLMeshFunction;
  return result;
}

BOOL __copyBlock(uint64_t a1, uint64_t a2, const char *a3)
{
  NamedBlock = BOMStorageGetNamedBlock(a1, a3);
  if (!NamedBlock)
  {
    return 1;
  }

  v7 = NamedBlock;
  v8 = BOMStorageNewNamedBlock(a2, a3);
  v15 = BOMStorageSizeOfBlock(a1, v7, v9, v10, v11, v12, v13, v14);
  v16 = malloc_type_malloc(v15, 0xE31AF694uLL);
  if (BOMStorageCopyFromBlock(a1, v7, v16, v17, v18, v19, v20, v21))
  {
    free(v16);
    return 0;
  }

  v27 = BOMStorageCopyToBlock(a2, v8, v16, v15, v22, v23, v24, v25);
  free(v16);
  if (v27)
  {
    return 0;
  }

  return BOMStorageCommit(a2) == 0;
}

uint64_t __copyTree(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v7 = BOMTreeOpenWithName(a1, a3, 0);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (BOMTreePageSize(v7) <= 0x400)
  {
    a4 = BOMTreePageSize(v8);
  }

  v9 = BOMTreeUsesNumericKeys(v8);
  v10 = BOMTreeNewWithOptions(a2, 0, a3, a4, v9);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = BOMTreeIteratorNew(v8, 0, 0, 0);
  if (!v12)
  {
    return 0;
  }

  for (i = v12; !BOMTreeIteratorIsAtEnd(i, v13, v14, v15, v16, v17, v18, v19); BOMTreeIteratorNext(i, v56, v57, v58, v59, v60, v61, v62))
  {
    v28 = BOMTreeIteratorKey(i, v21, v22, v23, v24, v25, v26, v27);
    v36 = BOMTreeIteratorKeySize(i, v29, v30, v31, v32, v33, v34, v35);
    v44 = BOMTreeIteratorValue(i, v37, v38, v39, v40, v41, v42, v43);
    v52 = BOMTreeIteratorValueSize(i, v45, v46, v47, v48, v49, v50, v51);
    BOMTreeSetValue(v11, v28, v36, v44, v52, v53, v54, v55);
  }

  v63 = BOMStorageCommit(a2) == 0;
  BOMTreeIteratorFree(i);
  BOMTreeFree(v11);
  return v63;
}

Class initMDLAsset()
{
  os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock_2);
  v0 = [__NSGetFrameworkReference_table_2 objectForKey:@"ModelIO"];
  os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock_2);
  if (!v0)
  {
    v1 = __NSLoadFramework(@"ModelIO");
    if (v1)
    {
      v2 = v1;
      os_unfair_lock_lock(&__NSGetFrameworkReference_frameworkCacheLock_2);
      v3 = __NSGetFrameworkReference_table_2;
      if (!__NSGetFrameworkReference_table_2)
      {
        v3 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:2 capacity:0];
        __NSGetFrameworkReference_table_2 = v3;
      }

      if (![v3 objectForKey:@"ModelIO"])
      {
        [__NSGetFrameworkReference_table_2 setObject:v2 forKey:@"ModelIO"];
      }

      os_unfair_lock_unlock(&__NSGetFrameworkReference_frameworkCacheLock_2);
    }
  }

  result = objc_getClass("MDLAsset");
  classMDLAsset = result;
  if (!result)
  {
    initMDLAsset_cold_1();
  }

  getMDLAssetClass = MDLAssetFunction;
  return result;
}

uint64_t CUICGImageGetAlphaInfo(CGImage *a1)
{
  AlphaInfo = CGImageGetAlphaInfo(a1);
  v3 = AlphaInfo;
  if (AlphaInfo < 8 && ((0xE1u >> AlphaInfo) & 1) != 0)
  {
    return dword_18E021EB0[AlphaInfo];
  }

  memset(&src, 0, sizeof(src));
  v15 = 0;
  v11[0] = 0x2000000008;
  v11[1] = _CUIColorSpaceGetSRGB();
  v12 = 8194;
  v14 = 0;
  v13 = 0;
  if (MEMORY[0x193AC74A0](&src, v11, 0, a1, 256))
  {
    return v3;
  }

  dest.height = src.height;
  dest.width = src.width;
  dest.rowBytes = src.width;
  dest.data = malloc_type_malloc(src.width * src.height, 0x305F4AF3uLL);
  if (vImageExtractChannel_ARGB8888(&src, &dest, 3, 0))
  {
LABEL_6:
    free(src.data);
    free(dest.data);
    return v3;
  }

  if (dest.height)
  {
    v5 = 0;
    data = dest.data;
    while (1)
    {
      v7 = data;
      width = dest.width;
      if (dest.width)
      {
        break;
      }

LABEL_13:
      ++v5;
      data += dest.rowBytes;
      if (v5 == dest.height)
      {
        goto LABEL_14;
      }
    }

    while (1)
    {
      v9 = *v7++;
      if (v9 != 255)
      {
        goto LABEL_6;
      }

      if (!--width)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  free(src.data);
  free(dest.data);
  if ((v3 - 1) < 4)
  {
    return dword_18E021ED0[(v3 - 1)];
  }

  return v3;
}

CGFloat CUICalcNonAlphaAreaOfImage(CGImage *a1)
{
  memset(&src, 0, sizeof(src));
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  Width = CGImageGetWidth(a1);
  v5 = Width;
  Height = CGImageGetHeight(a1);
  v7 = malloc_type_malloc((Width * Height), 0x100004077774924uLL);
  v38[0] = 0x2000000008;
  v38[1] = _CUIColorSpaceGetSRGB();
  v39 = 8195;
  memset(v41, 0, sizeof(v41));
  v40 = 0;
  if (MEMORY[0x193AC74A0](&src, v38, 0, a1, 256) || (dest.width = src.width, dest.rowBytes = src.width, dest.data = v7, dest.height = src.height, v8 = vImageExtractChannel_ARGB8888(&src, &dest, 0, 0), free(src.data), v8))
  {
    free(v7);
  }

  else
  {
    v10 = Height;
    v11 = y;
    if (Height)
    {
      v12 = 0;
      v13 = v7;
      v11 = y;
      v10 = Height;
      while (!Width)
      {
LABEL_11:
        v11 = v11 + 1.0;
        v10 = v10 + -1.0;
        ++v12;
        v13 += v5;
        if (v12 >= Height)
        {
          goto LABEL_12;
        }
      }

      v14 = 1;
      v15 = v13;
      while (!*v15++)
      {
        v17 = v14++;
        if (v17 >= v5)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_12:
    LODWORD(v18) = (v10 + v11 + -1.0);
    if (v11 <= v18)
    {
      v18 = v18;
      v28 = &v7[v5 * v18];
      while (!Width)
      {
LABEL_28:
        v10 = v10 + -1.0;
        --v18;
        v28 -= v5;
        if (v11 > v18)
        {
          goto LABEL_13;
        }
      }

      v29 = 1;
      v30 = v28;
      while (!*v30++)
      {
        v32 = v29++;
        if (v32 >= v5)
        {
          goto LABEL_28;
        }
      }
    }

LABEL_13:
    v19 = Width;
    v20 = CGRectZero.origin.x;
    if (Width)
    {
      v21 = 0;
      v22 = v11 + v10;
      v23 = &v7[v5 * v11];
      v20 = CGRectZero.origin.x;
      v19 = Width;
      while (1)
      {
        v24 = v11 + 1;
        v25 = v23;
        if (v22 > v11)
        {
          break;
        }

LABEL_18:
        v20 = v20 + 1.0;
        v19 = v19 + -1.0;
        ++v21;
        ++v23;
        if (v21 >= v5)
        {
          goto LABEL_19;
        }
      }

      while (!*v25)
      {
        v25 += v5;
        v26 = v24++;
        if (v22 <= v26)
        {
          goto LABEL_18;
        }
      }
    }

LABEL_19:
    LODWORD(v27) = (v19 + v20 + -1.0);
    if (v20 <= v27)
    {
      v33 = v11 + v10;
      v27 = v27;
      while (1)
      {
        v34 = v11 + 1;
        v35 = &v7[v5 * v11];
        if (v33 > v11)
        {
          break;
        }

LABEL_34:
        v19 = v19 + -1.0;
        if (v20 > --v27)
        {
          goto LABEL_20;
        }
      }

      while (!v35[v27])
      {
        v35 += v5;
        v36 = v34++;
        if (v33 <= v36)
        {
          goto LABEL_34;
        }
      }
    }

LABEL_20:
    free(v7);
    v44.origin.x = CGRectZero.origin.x;
    v44.origin.y = y;
    v44.size.width = Width;
    v44.size.height = Height;
    v43.x = v20;
    v43.y = v11;
    if (CGRectContainsPoint(v44, v43))
    {
      return v20;
    }

    else
    {
      return CGPointZero.x;
    }
  }

  return x;
}

void CUIDrawExtrudedImageInContext(CGContext *a1, int a2, CGImageRef image, CGFloat a4, CGFloat a5, double a6, double a7)
{
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v19 = a5 + a7;
  if ((a2 & 0x10) != 0)
  {
    __drawTextureInContext(a1, image, 0.0, 0.0, Width, 1.0, a4, v19);
  }

  v18 = a5 + -1.0;
  if ((a2 & 8) != 0)
  {
    __drawTextureInContext(a1, image, 0.0, Height + -1.0, Width, 1.0, a4, v18);
  }

  if (a2)
  {
    __drawTextureInContext(a1, image, 0.0, 0.0, 1.0, Height, a4 + -1.0, a5);
  }

  v16 = Width + -1.0;
  v17 = a4 + a6;
  if ((a2 & 4) != 0)
  {
    __drawTextureInContext(a1, image, v16, 0.0, 1.0, Height, v17, a5);
  }

  if ((~a2 & 0x11) == 0)
  {
    __drawTextureInContext(a1, image, 0.0, 0.0, 1.0, 1.0, a4 + -1.0, v19);
  }

  if ((~a2 & 9) == 0)
  {
    __drawTextureInContext(a1, image, 0.0, Height + -1.0, 1.0, 1.0, a4 + -1.0, v18);
  }

  if ((~a2 & 0x14) == 0)
  {
    __drawTextureInContext(a1, image, v16, 0.0, 1.0, 1.0, v17, v19);
  }

  if ((~a2 & 0xC) == 0)
  {

    __drawTextureInContext(a1, image, v16, Height + -1.0, 1.0, 1.0, v17, v18);
  }
}

void __drawTextureInContext(CGContext *a1, CGImageRef image, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  if (image)
  {
    v13 = CGImageCreateWithImageInRect(image, *&a3);
    v15.origin.x = a7;
    v15.origin.y = a8;
    v15.size.width = a5;
    v15.size.height = a6;
    CGContextDrawImage(a1, v15, v13);

    CGImageRelease(v13);
  }
}

CGImage *CUIConvertDeepImageTo8(CGImage *a1, CGColorSpace *a2)
{
  dest.data = 0;
  v21 = 0;
  dest.rowBytes = 0;
  Height = CGImageGetHeight(a1);
  dest.height = Height;
  Width = CGImageGetWidth(a1);
  dest.width = Width;
  LODWORD(v22) = 8;
  v6 = 8 * CGImageGetBitsPerPixel(a1);
  DWORD1(v22) = v6 / CGImageGetBitsPerComponent(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  *v23 = AlphaInfo & 0xFFFFF0FF;
  *(&v22 + 1) = a2;
  memset(&v23[4], 0, 20);
  memset(&srcs, 0, sizeof(srcs));
  memset(&dests, 0, sizeof(dests));
  *(&srcFormat.renderingIntent + 1) = 0;
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  srcFormat.bitsPerComponent = BitsPerComponent;
  BitsPerPixel = CGImageGetBitsPerPixel(a1);
  srcFormat.bitsPerPixel = BitsPerPixel;
  srcFormat.colorSpace = CGImageGetColorSpace(a1);
  srcFormat.bitmapInfo = CGImageGetBitmapInfo(a1);
  srcFormat.version = 0;
  srcFormat.decode = CGImageGetDecode(a1);
  srcFormat.renderingIntent = CGImageGetRenderingIntent(a1);
  if (MEMORY[0x193AC74A0](&srcs, &srcFormat, 0, a1, 0))
  {
    return 0;
  }

  v10 = BitsPerPixel / BitsPerComponent;
  *&destFormat.bitsPerComponent = v22;
  *&destFormat.bitmapInfo = *v23;
  v11 = (BitsPerPixel / BitsPerComponent) > 4 || v10 == 2;
  if (v11)
  {
    v12 = 8448;
  }

  else
  {
    v12 = 4096;
  }

  if (v11)
  {
    v13 = 32;
  }

  else
  {
    v13 = 16;
  }

  destFormat.bitmapInfo = AlphaInfo & 0xFFFF80FF | v12;
  destFormat.decode = srcFormat.decode;
  *&destFormat.renderingIntent = *&v23[16];
  if (v11)
  {
    v14 = 5;
  }

  else
  {
    v14 = 4;
  }

  destFormat.bitsPerComponent = v13;
  destFormat.bitsPerPixel = v10 << v14;
  error = MEMORY[0x193AC7490](&dests, Height, Width);
  if (error)
  {
    free(srcs.data);
    return 0;
  }

  v15 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, 0, 0, &error);
  if (error)
  {
    goto LABEL_19;
  }

  v16 = v15;
  error = vImageConvert_AnyToAny(v15, &srcs, &dests, 0, 0);
  if (error)
  {
    vImageConverter_Release(v16);
LABEL_19:
    free(srcs.data);
    free(dests.data);
    goto LABEL_20;
  }

  dest.rowBytes = CGBitmapGetAlignedBytesPerRow();
  dest.data = CGBitmapAllocateData();
  switch(v10)
  {
    case 1:
      v20 = vImageConvert_Planar16UtoPlanar8_dithered(&dests, &dest, 268435458, 0);
      break;
    case 3:
      v20 = vImageConvert_RGB16UtoRGB888_dithered(&dests, &dest, 268435458, 0);
      break;
    case 4:
      v20 = vImageConvert_ARGB16UtoARGB8888_dithered(&dests, &dest, 268435458, 0, 0);
      break;
    default:
      error = -21778;
      goto LABEL_33;
  }

  error = v20;
LABEL_33:
  free(srcs.data);
  if (dests.data)
  {
    free(dests.data);
  }

  if (v16)
  {
    vImageConverter_Release(v16);
  }

LABEL_20:
  v21 = error;
  if (error)
  {
    return 0;
  }

  v17 = MEMORY[0x193AC7550](&dest, &v22, 0, 0, 256, &v21);
  CGBitmapFreeData();
  if (CGImageGetColorSpace(v17) != a2)
  {
    CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v17, a2);
    CGImageRelease(v17);
    return CopyWithColorSpace;
  }

  return v17;
}

vImage_Error CUIGetRGBAImageBuffer(CGImage *a1, uint64_t a2, vImage_Buffer *a3)
{
  if (CGImageGetBitsPerComponent(a1) < 9)
  {
    SRGB = _CUIColorSpaceGetSRGB();
    *a2 = 0x2000000008;
    *(a2 + 8) = SRGB;
    *(a2 + 16) = 2;
    *(a2 + 28) = 0;
    *(a2 + 20) = 0;

    JUMPOUT(0x193AC74A0);
  }

  ColorSpace = CGImageGetColorSpace(a1);
  ExtendedRangeSRGB = _CUIColorSpaceGetExtendedRangeSRGB();
  *a2 = 0x8000000020;
  *(a2 + 8) = ExtendedRangeSRGB;
  *(a2 + 16) = 8452;
  *(a2 + 28) = 0;
  *(a2 + 20) = 0;
  v8 = *(a2 + 16);
  *&v11.bitsPerComponent = *a2;
  *&v11.bitmapInfo = v8;
  *&v11.renderingIntent = *(a2 + 32);
  return CUIConvertCGImageFormat(a1, ColorSpace, &v11, a3);
}

void CUIDeallocateRGBAImageBuffer(uint64_t a1, void **a2)
{
  if (*a2)
  {
    if (*a1 == 8)
    {
      free(*a2);
    }

    else
    {
      CGBitmapFreeData();
    }

    *a2 = 0;
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 8) = 0;
  }
}

void sub_18DFCA440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_18DFCAF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double CG::Cubic::derivative(float64x2_t *this, double a2)
{
  if (a2 == 0.0)
  {
    *&result = *&CG::Cubic::tangent_at_0(this);
  }

  else if (a2 == 1.0)
  {
    *&result = *&CG::Cubic::tangent_at_1(this);
  }

  else
  {
    __asm { FMOV            V2.2D, #3.0 }

    *&result = *&vaddq_f64(this[4], vmulq_n_f64(vaddq_f64(vmulq_n_f64(vmulq_f64(this[6], _Q2), a2), vaddq_f64(this[5], this[5])), a2));
  }

  return result;
}

float64x2_t CG::Cubic::tangent_at_0(float64x2_t *this)
{
  v1 = *this;
  result = vsubq_f64(this[1], *this);
  if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
  {
    result = vsubq_f64(this[2], v1);
    if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
    {
      return vsubq_f64(this[3], v1);
    }
  }

  return result;
}

float64x2_t CG::Cubic::tangent_at_1(float64x2_t *this)
{
  v1 = this[3];
  result = vsubq_f64(v1, this[2]);
  if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
  {
    result = vsubq_f64(v1, this[1]);
    if (COERCE_DOUBLE(*&vmulq_f64(result, result).f64[1]) + result.f64[0] * result.f64[0] <= 0.00000001)
    {
      return vsubq_f64(v1, *this);
    }
  }

  return result;
}

void RB::cubic_index<double>(float64x2_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4, double a5, double a6)
{
  if (a5 > 0.0)
  {
    v7 = _ZN2RB13CubicIteratorIDv2_dE13segment_countIdEEiS1_S1_S1_S1_T_(a1, a2, a3, a4, a6);
    v8 = v7;
    _ZN2RB13CubicIteratorIDv2_dEC1ES1_S1_S1_S1_i(v21, v7, a1, a2, a3, a4);
    if (v8 >= 1)
    {
      v9 = 0;
      v11 = v21[0];
      v10 = v21[1];
      v12 = 0.0;
      v13 = v21[2];
      do
      {
        v14 = v11;
        v11 = vaddq_f64(v11, v10);
        v15 = vsubq_f64(v11, v14);
        v16 = v12 + sqrt(vaddvq_f64(vmulq_f64(v15, v15)));
        if (v16 > a5)
        {
          break;
        }

        v10 = vaddq_f64(v10, v13);
        v13 = vaddq_f64(v13, v21[3]);
        ++v9;
        v12 = v16;
      }

      while (v8 != v9);
    }
  }
}

float64x2_t CG::Cubic::split@<Q0>(float64x2_t *this@<X0>, double a2@<D0>, float64x2_t *a3@<X8>)
{
  v4 = *this;
  v3 = this[1];
  v5 = vaddq_f64(*this, vmulq_n_f64(vsubq_f64(v3, *this), a2));
  v6 = this[2];
  v7 = this[3];
  v8 = vaddq_f64(v3, vmulq_n_f64(vsubq_f64(v6, v3), a2));
  v9 = vaddq_f64(v5, vmulq_n_f64(vsubq_f64(v8, v5), a2));
  *a3 = *this;
  a3[1] = v5;
  v10 = vaddq_f64(v6, vmulq_n_f64(vsubq_f64(v7, v6), a2));
  v11 = vaddq_f64(v8, vmulq_n_f64(vsubq_f64(v10, v8), a2));
  v12 = vaddq_f64(v9, vmulq_n_f64(vsubq_f64(v11, v9), a2));
  a3[2] = v9;
  a3[3] = v12;
  v13 = vsubq_f64(v5, v4);
  __asm { FMOV            V7.2D, #3.0 }

  v19 = vsubq_f64(v9, v5);
  a3[4] = vmulq_f64(v13, _Q7);
  a3[5] = vmulq_f64(vsubq_f64(v19, v13), _Q7);
  a3[6] = vaddq_f64(v13, vsubq_f64(vsubq_f64(v12, v9), vaddq_f64(v19, v19)));
  a3[7] = v12;
  a3[8] = v11;
  a3[9] = v10;
  v20 = vsubq_f64(v11, v12);
  a3[10] = v7;
  a3[11] = vmulq_f64(v20, _Q7);
  v21 = vsubq_f64(v10, v11);
  v22 = vmulq_f64(vsubq_f64(v21, v20), _Q7);
  result = vaddq_f64(vsubq_f64(vsubq_f64(v7, v10), vaddq_f64(v21, v21)), v20);
  a3[12] = v22;
  a3[13] = result;
  return result;
}

id CUIPlaceHolderRendition(uint64_t a1, uint64_t a2)
{
  result = CUIPlaceHolderRendition_placeHolderRendition;
  if (!CUIPlaceHolderRendition_placeHolderRendition)
  {
    v4 = 0;
    v3 = 3538945;
    result = [_LookupStructuredThemeProvider(0 a2)];
    CUIPlaceHolderRendition_placeHolderRendition = result;
  }

  return result;
}

void *__csiBlockDataProviderGetBytePointer(uint64_t a1)
{
  v2 = [objc_loadWeak((a1 + 48)) key];
  CUIRenditionKeyValueForAttribute(v2, 17);
  CUIRenditionKeyValueForAttribute(v2, 1);
  CUIRenditionKeyValueForAttribute(v2, 2);
  kdebug_trace();
  v3 = [*(a1 + 24) bytes];
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = v3[3];
  v7 = v3[4];
  v8 = *(*(a1 + 32) + 8) - 2;
  v9 = (v8 >= 0xA || ((0x3CFu >> v8) & 1) == 0) && (v6 != v5 || v7 != HIDWORD(v5));
  v11 = *(a1 + 8);
  v12 = v3[6];
  if (v12 <= 1195456543)
  {
    if (v12 == 1095911234)
    {
      v13 = 1;
      v14 = 1;
      goto LABEL_22;
    }

    if (v12 == 1195454774)
    {
      v13 = 0;
      v14 = 5;
      goto LABEL_22;
    }
  }

  else
  {
    switch(v12)
    {
      case 1195456544:
        v14 = 2;
        v13 = 1;
        goto LABEL_22;
      case 1380401717:
        v13 = 0;
        v14 = 6;
        goto LABEL_22;
      case 1380401751:
        v13 = 0;
        v14 = 4;
        goto LABEL_22;
    }
  }

  v15 = +[NSAssertionHandler currentHandler];
  v16 = [NSString stringWithUTF8String:"const void * _Nullable __CUIBlockDataProviderGetBytePointer(void * _Nullable)"];
  [objc_loadWeak((a1 + 48)) name];
  v41 = "const void * _Nullable __CUIBlockDataProviderGetBytePointer(void * _Nullable)";
  [(NSAssertionHandler *)v15 handleFailureInFunction:v16 file:@"CUIThemeRendition.m" lineNumber:1722 description:@"CoreUI: %s unknown pixel format %d rendition '%@'"];
  v13 = 0;
  v14 = 0xFFFFFFFFLL;
LABEL_22:
  if (v9)
  {
    v26 = [[_CSIRenditionBlockData alloc] initWithPixelWidth:v5 pixelHeight:SHIDWORD(v5) sourceRowbytes:*(a1 + 112) pixelFormat:v14];
    v27 = v26;
    if (v26)
    {
      strlcpy(v26 + 48, v4 + 40, 0x80uLL);
      *(v27 + 8) = v4[6];
      [(_CSIRenditionBlockData *)v27 expandCSIBitmapData:v11 fromSlice:v5 makeReadOnly:1, v28, v29, v30];
      v24 = *(v27 + 16);
    }

    else
    {
      v24 = 0;
    }

    *(a1 + 80) = v27;
  }

  else if (_CSIAcquireCachedBlockData(a1, v14))
  {
    if (v13 && (Weak = objc_loadWeak((a1 + 8 * v14 + 56))) != 0)
    {
      v24 = (Weak[2] + Weak[4] * *(a1 + 12) + 4 * (v4[6] == 1095911234) * *(a1 + 8));
    }

    else
    {
      _CUILog(4, "CoreUI: image data is not available, returning a 1,1 image instead that is all black", v17, v18, v19, v20, v21, v22, v41);
      v24 = &__CUIBlockDataProviderGetBytePointer___imageData;
    }
  }

  else
  {
    v31 = v6 | (v7 << 32);
    v32 = __bppFromBlockPixelFormat(v14);
    v33 = [[_CSIRenditionBlockData alloc] initWithPixelWidth:v6 pixelHeight:v7 sourceRowbytes:*(a1 + 112) pixelFormat:v14];
    v37 = v33;
    if (v33)
    {
      strlcpy(v33 + 48, v4 + 40, 0x80uLL);
      v37[2] = v4[6];
    }

    [(_CSIRenditionBlockData *)v37 expandCSIBitmapData:0 fromSlice:v31 makeReadOnly:1, v34, v35, v36];
    v38 = _CSIStoreBlockData(a1, v37, v14);
    if (v38)
    {
      v39 = v38[2];
      v40 = v38[4];
    }

    else
    {
      v39 = 0;
      v40 = 0;
    }

    v24 = (v39 + v40 * *(a1 + 12) + (*(a1 + 8) * v32));
    *(a1 + 80) = v38;
  }

  kdebug_trace();
  return v24;
}

float64x2_t CG::Quadratic::Quadratic(CG::Quadratic *this, const Point *a2, const Point *a3, const Point *a4)
{
  *this = *&a2->v;
  *(this + 1) = *&a3->v;
  v4 = *(this + 1);
  v5 = vsubq_f64(v4, *this);
  *(this + 2) = *&a4->v;
  *(this + 3) = vaddq_f64(v5, v5);
  result = vsubq_f64(vsubq_f64(*(this + 2), v4), v5);
  *(this + 4) = result;
  return result;
}

double CG::Quadratic::length(float64x2_t *this, int a2)
{
  v6 = this[2].f64[0];
  v7 = this[2].f64[1];
  v8 = this->f64[0];
  v9 = this->f64[1];
  if (a2 > 32 || (v7 - this[1].f64[1] + v9 - this[1].f64[1]) * (v7 - this[1].f64[1] + v9 - this[1].f64[1]) + (v6 - this[1].f64[0] + v8 - this[1].f64[0]) * (v6 - this[1].f64[0] + v8 - this[1].f64[0]) < 4.0)
  {
    return sqrt((v7 - v9) * (v7 - v9) + (v6 - v8) * (v6 - v8));
  }

  v16[10] = v5;
  v16[11] = v4;
  v16[14] = v2;
  v16[15] = v3;
  CG::Quadratic::split(this, 0.5, v15);
  CG::Quadratic::length(v15, a2 + 1);
  v12 = v11;
  CG::Quadratic::length(v16, a2 + 1);
  return v12 + v13;
}

float64x2_t CG::Quadratic::split@<Q0>(float64x2_t *this@<X0>, double a2@<D0>, float64x2_t *a3@<X8>)
{
  v4 = *this;
  v3 = this[1];
  v5 = vaddq_f64(*this, vmulq_n_f64(vsubq_f64(v3, *this), a2));
  v6 = this[2];
  v7 = vaddq_f64(v3, vmulq_n_f64(vsubq_f64(v6, v3), a2));
  v8 = vaddq_f64(v5, vmulq_n_f64(vsubq_f64(v7, v5), a2));
  *a3 = *this;
  a3[1] = v5;
  v9 = vsubq_f64(v5, v4);
  a3[2] = v8;
  a3[3] = vaddq_f64(v9, v9);
  a3[4] = vsubq_f64(vsubq_f64(v8, v5), v9);
  a3[5] = v8;
  a3[6] = v7;
  a3[7] = v6;
  v10 = vsubq_f64(v7, v8);
  v11 = vaddq_f64(v10, v10);
  result = vsubq_f64(vsubq_f64(v6, v7), v10);
  a3[8] = v11;
  a3[9] = result;
  return result;
}

void CG::Quadratic::index(float64x2_t *this, double a2)
{
  if (a2 > 0.0 && CG::Quadratic::length(this, 0) > a2)
  {
    v4 = 1.0;
    v5 = 0.0;
    do
    {
      CG::Quadratic::split(this, (v4 + v5) * 0.5, v6);
      if (CG::Quadratic::length(v6, 0) <= a2)
      {
        v5 = (v4 + v5) * 0.5;
      }

      else
      {
        v4 = (v4 + v5) * 0.5;
      }
    }

    while (v4 - v5 > 0.0001);
  }
}

__CFString *CUIEffectBlendModeToString(int a1)
{
  result = @"<unknown>";
  if (a1 > 1749838195)
  {
    if (a1 > 1852797548)
    {
      if (a1 > 1935766559)
      {
        v3 = 1984719219;
        v4 = @"CUIEffectBlendModeVividLight";
        v13 = @"CUIEffectBlendModeVibrantColorSourceOver";
        if (a1 != 1986229103)
        {
          v13 = @"<unknown>";
        }

        if (a1 == 1986227573)
        {
          v14 = @"CUIEffectBlendModeVibrantColorMultiply";
        }

        else
        {
          v14 = v13;
        }

        if (a1 != 1984719220)
        {
          v4 = v14;
        }

        v7 = 1935766560;
        v8 = @"CUIEffectBlendModeSaturation";
        v9 = @"CUIEffectBlendModeScreen";
        v10 = 1935897198;
        v11 = a1 == 1936553316;
        v12 = @"CUIEffectBlendModeExclusion";
        goto LABEL_24;
      }

      v3 = 1884055923;
      v24 = @"CUIEffectBlendModePassThrough";
      v25 = @"CUIEffectBlendModeSoftLight";
      if (a1 != 1934387572)
      {
        v25 = @"<unknown>";
      }

      if (a1 != 1885434739)
      {
        v24 = v25;
      }

      if (a1 == 1884055924)
      {
        v4 = @"CUIEffectBlendModePinLight";
      }

      else
      {
        v4 = v24;
      }

      v7 = 1852797549;
      v8 = @"CUIEffectBlendModeNormal";
      v22 = 1870030194;
      v23 = @"CUIEffectBlendModeOverlay";
    }

    else
    {
      if (a1 > 1818391149)
      {
        v3 = 1818850404;
        v4 = @"CUIEffectBlendModeLighten";
        v5 = @"CUIEffectBlendModeMultiply";
        if (a1 != 1836411936)
        {
          v5 = @"<unknown>";
        }

        if (a1 == 1819634976)
        {
          v6 = @"CUIEffectBlendModeLuminosity";
        }

        else
        {
          v6 = v5;
        }

        if (a1 != 1818850405)
        {
          v4 = v6;
        }

        v7 = 1818391150;
        v8 = @"CUIEffectBlendModeLinearBurn";
        v9 = @"CUIEffectBlendModeLinearDodge";
        v10 = 1818518631;
        v11 = a1 == 1818706796;
        v12 = @"CUIEffectBlendModeLighterColor";
LABEL_24:
        if (!v11)
        {
          v12 = @"<unknown>";
        }

        if (a1 != v10)
        {
          v9 = v12;
        }

        goto LABEL_55;
      }

      v3 = 1752524063;
      v20 = @"CUIEffectBlendModeColorBurn";
      v21 = @"CUIEffectBlendModeLinearLight";
      if (a1 != 1816947060)
      {
        v21 = @"<unknown>";
      }

      if (a1 != 1768188278)
      {
        v20 = v21;
      }

      if (a1 == 1752524064)
      {
        v4 = @"CUIEffectBlendModeHue";
      }

      else
      {
        v4 = v20;
      }

      v7 = 1749838196;
      v8 = @"CUIEffectBlendModeHardLight";
      v22 = 1749903736;
      v23 = @"CUIEffectBlendModeHardMix";
    }

    if (a1 == v22)
    {
      v9 = v23;
    }

    else
    {
      v9 = @"<unknown>";
    }

LABEL_55:
    if (a1 == v7)
    {
      v16 = v8;
    }

    else
    {
      v16 = v9;
    }

LABEL_68:
    if (a1 <= v3)
    {
      return v16;
    }

    else
    {
      return v4;
    }
  }

  if (a1 > 1668246641)
  {
    if (a1 > 1684633119)
    {
      v3 = 1717856629;
      v26 = @"CUIEffectBlendModeSubtract";
      if (a1 != 1718842722)
      {
        v26 = @"<unknown>";
      }

      if (a1 == 1717856630)
      {
        v4 = @"CUIEffectBlendModeDivide";
      }

      else
      {
        v4 = v26;
      }

      v16 = @"CUIEffectBlendModeColorDodge";
      v17 = a1 == 1684751212;
      v18 = @"CUIEffectBlendModeDarkerColor";
      v19 = 1684633120;
    }

    else
    {
      v3 = 1684629093;
      v15 = @"CUIEffectBlendModeDissolve";
      if (a1 != 1684632435)
      {
        v15 = @"<unknown>";
      }

      if (a1 == 1684629094)
      {
        v4 = @"CUIEffectBlendModeDifference";
      }

      else
      {
        v4 = v15;
      }

      v16 = @"CUIEffectBlendModeColor";
      v17 = a1 == 1684107883;
      v18 = @"CUIEffectBlendModeDarken";
      v19 = 1668246642;
    }

    if (!v17)
    {
      v18 = @"<unknown>";
    }

    if (a1 != v19)
    {
      v16 = v18;
    }

    goto LABEL_68;
  }

  switch(a1)
  {
    case 0:
      result = @"CUIEffectBlendModeSourceOver";
      break;
    case 16:
      result = @"CUIEffectBlendModeClear";
      break;
    case 17:
      result = @"CUIEffectBlendModeCopy";
      break;
    case 18:
      result = @"CUIEffectBlendModeSourceIn";
      break;
    case 19:
      result = @"CUIEffectBlendModeSourceOut";
      break;
    case 20:
      result = @"CUIEffectBlendModeSourceAtop";
      break;
    case 21:
      result = @"CUIEffectBlendModeDestinationOver";
      break;
    case 22:
      result = @"CUIEffectBlendModeDestinationIn";
      break;
    case 23:
      result = @"CUIEffectBlendModeDestinationOut";
      break;
    case 24:
      result = @"CUIEffectBlendModeDestinationAtop";
      break;
    case 25:
      result = @"CUIEffectBlendModeXOR";
      break;
    case 26:
      result = @"CUIEffectBlendModePlusDarker";
      break;
    case 27:
      result = @"CUIEffectBlendModePlusLighter";
      break;
    default:
      return result;
  }

  return result;
}

__CFString *CUIEffectBlendModeDescription(int a1)
{
  if (a1)
  {
    v1 = a1;
  }

  else
  {
    v1 = 1852797549;
  }

  if ("Normal")
  {
    if (v1 == *"mron")
    {
      return [NSString stringWithUTF8String:?];
    }

    for (i = &off_1E7251768; *i; i += 3)
    {
      v3 = *(i - 4);
      if (v1 == v3)
      {
        return [NSString stringWithUTF8String:?];
      }
    }
  }

  return @"<unknown>";
}

__CFString *CUIEffectBevelStyleDescription(int a1)
{
  if ("Outer")
  {
    if (!a1)
    {
      return [NSString stringWithUTF8String:?];
    }

    for (i = &off_1E7251C90; *i; i += 3)
    {
      v2 = *(i - 4);
      if (v2 == a1)
      {
        return [NSString stringWithUTF8String:?];
      }
    }
  }

  return @"<unknown>";
}

CFStringRef CUICopyFingerPrintForImage(CGImage *a1)
{
  memset(&srcs, 0, sizeof(srcs));
  srcFormat.bitsPerComponent = CGImageGetBitsPerComponent(a1);
  srcFormat.bitsPerPixel = CGImageGetBitsPerPixel(a1);
  srcFormat.colorSpace = CGImageGetColorSpace(a1);
  srcFormat.bitmapInfo = CGImageGetBitmapInfo(a1);
  memset(&srcFormat.version, 0, 20);
  error = MEMORY[0x193AC74A0](&srcs, &srcFormat, 0, a1, 256);
  if (error)
  {
    return 0;
  }

  *&destFormat.bitsPerComponent = 0x800000008;
  memset(&destFormat.bitmapInfo, 0, 24);
  destFormat.colorSpace = CGColorSpaceCreateWithName(kCGColorSpaceGenericGrayGamma2_2);
  backgroundColor = 0.0;
  v2 = vImageConverter_CreateWithCGImageFormat(&srcFormat, &destFormat, &backgroundColor, 0x100u, &error);
  v3 = 0;
  v4 = 0;
  if (!error)
  {
    v5 = v2;
    dests.height = srcs.height;
    dests.width = srcs.width;
    dests.rowBytes = srcs.width * destFormat.bitsPerPixel;
    dests.data = malloc_type_calloc(dests.rowBytes * srcs.height, 1uLL, 0xB107283uLL);
    v3 = 0;
    v4 = 0;
    error = vImageConvert_AnyToAny(v5, &srcs, &dests, 0, 0x110u);
    if (!error)
    {
      *&dest.height = vdupq_n_s64(8uLL);
      dest.rowBytes = 8;
      dest.data = v22;
      error = vImageScale_Planar8(&dests, &dest, 0, 0x120u);
      if (error || !dest.height)
      {
        v3 = 0;
        v4 = 0;
      }

      else
      {
        v6 = 0;
        v7 = 0;
        v4 = 0;
        v3 = 0;
        v8 = v22;
        do
        {
          v9 = v6;
          v10 = v8;
          for (i = dest.width; i; --i)
          {
            v12 = (v9 + 1) <= 0x40 && *v10 < v10[1];
            v13 = dest.width + v9 <= 0x40 && *v10 < v10[dest.width];
            v3 = v12 | (2 * v3);
            ++v10;
            ++v9;
            v4 = v13 | (2 * v4);
          }

          ++v7;
          v8 += dest.width;
          v6 += dest.width;
        }

        while (v7 != dest.height);
      }

      free(dests.data);
    }

    vImageConverter_Release(v5);
  }

  free(srcs.data);
  CGColorSpaceRelease(destFormat.colorSpace);
  if (error)
  {
    return 0;
  }

  else
  {
    return CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%llx%llx", v3, v4);
  }
}

BOOL _CUIDebugUseSimplifiedTextAntialiasing()
{
  if (__CUIDebugAllowDebugging___once != -1)
  {
    _CUIDebugUseSimplifiedTextAntialiasing_cold_1();
  }

  if (__CUIDebugAllowDebugging___AllowDebugPrefs != 1)
  {
    return 0;
  }

  v0 = +[NSUserDefaults standardUserDefaults];

  return [(NSUserDefaults *)v0 BOOLForKey:@"CUIUseSimplifiedTextAntialiasing"];
}

uint64_t _CUIDebugUseSimplifiedTextEffects()
{
  if (__CUIDebugAllowDebugging___once != -1)
  {
    _CUIDebugUseSimplifiedTextAntialiasing_cold_1();
  }

  if (__CUIDebugAllowDebugging___AllowDebugPrefs != 1)
  {
    return 1;
  }

  v0 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"CUIUseSimplifiedTextEffects"];
  if (!v0)
  {
    return 1;
  }

  return [v0 BOOLValue];
}

id _CUIDebugAllowHardwareRendering()
{
  if (__CUIDebugAllowDebugging___once != -1)
  {
    _CUIDebugUseSimplifiedTextAntialiasing_cold_1();
  }

  if (__CUIDebugAllowDebugging___AllowDebugPrefs != 1)
  {
    return 0;
  }

  v0 = [+[NSUserDefaults standardUserDefaults](NSUserDefaults objectForKey:"objectForKey:", @"CUIAllowHardwareRendering"];
  if (!v0)
  {
    return 0;
  }

  return [v0 BOOLValue];
}

BOOL _CUIDebugUseStandardRendering()
{
  if (__CUIDebugAllowDebugging___once != -1)
  {
    _CUIDebugUseSimplifiedTextAntialiasing_cold_1();
  }

  if (__CUIDebugAllowDebugging___AllowDebugPrefs != 1)
  {
    return 0;
  }

  v0 = +[NSUserDefaults standardUserDefaults];

  return [(NSUserDefaults *)v0 BOOLForKey:@"CUIUseStandardRendering"];
}

BOOL _CUIDebugShowGraphicVariantMetrics()
{
  if (__CUIDebugAllowDebugging___once != -1)
  {
    _CUIDebugUseSimplifiedTextAntialiasing_cold_1();
  }

  if (__CUIDebugAllowDebugging___AllowDebugPrefs != 1)
  {
    return 0;
  }

  v0 = +[NSUserDefaults standardUserDefaults];

  return [(NSUserDefaults *)v0 BOOLForKey:@"CUIShowGraphicVariantMetrics"];
}

const void *CUIConstantToMapID(void *key)
{
  if (InitializeDictionaries(void)::sMutexInitConstantsDict == -1)
  {
    if (key)
    {
      return CFDictionaryGetValue(gConstants, key);
    }
  }

  else
  {
    CUIConstantToMapID_cold_1();
    if (key)
    {
      return CFDictionaryGetValue(gConstants, key);
    }
  }

  return 0;
}

CFDictionaryRef ___ZL22InitializeDictionariesv_block_invoke()
{
  off_1F00D3968();
  memcpy(v2, off_1E72555A0, sizeof(v2));
  memcpy(__dst, &unk_18E0222F0, sizeof(__dst));
  gConstants = CFDictionaryCreate(kCFAllocatorDefault, v2, __dst, 1231, &kCFTypeDictionaryKeyCallBacks, 0);
  result = CFDictionaryCreate(kCFAllocatorDefault, __dst, v2, 1231, 0, &kCFTypeDictionaryValueCallBacks);
  gIDs = result;
  return result;
}

uint64_t std::__allocate_at_least[abi:ne200100]<std::allocator<PSDGradientColorStop>>(uint64_t a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  return operator new();
}

CGContext *CreateARGBBitmapContext(CGFloat a1, CGFloat a2, CGFloat a3)
{
  v6 = CGColorSpaceCreateWithName(kCGColorSpaceSRGB);
  if (v6)
  {
    v13 = v6;
    BitmapContext = CreateBitmapContext(4, v6, 2, a1, a2, a3, v8, v9, v10, v11, v12);
    CGColorSpaceRelease(v13);
    return BitmapContext;
  }

  else
  {
    _CUILog(4, "CoreUI: CreateARGBBitmapContext() couldln't lookup colorspace kCGColorSpaceSRGB", v7, v8, v9, v10, v11, v12, v16);
    return 0;
  }
}

CGContext *CreateBitmapContext(uint64_t a1, CGColorSpaceRef space, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v20 = CUICGBitmapContextCreate((a4 * a6), (a5 * a6), 8uLL, (a4 * a6) * a1, space, a3, a10, a11);
  if (!v20)
  {
    _CUILog(4, "CoreUI: CreateBitmapContext() Context not created!", v14, v15, v16, v17, v18, v19, v22);
  }

  CGContextScaleCTM(v20, a6, a6);
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = a4;
  v23.size.height = a5;
  CGContextClearRect(v20, v23);
  return v20;
}

unint64_t CUIGetChannelDataForImage(CGImage *a1, void **a2, CGFloat a3, CGFloat a4)
{
  ARGBBitmapContext = CreateARGBBitmapContext(a3, a4, 1.0);
  if (ARGBBitmapContext)
  {
    v9 = ARGBBitmapContext;
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    v31.size.width = Width;
    v31.size.height = Height;
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    CGContextDrawImage(v9, v31, a1);
    Data = CGBitmapContextGetData(v9);
    if (Data)
    {
      v13 = a3;
      v14 = a4;
      src.data = Data;
      src.height = a4;
      src.width = a3;
      src.rowBytes = 4 * a3;
      v15 = malloc_type_malloc(src.rowBytes * a4, 0xD0163DD9uLL);
      dest.data = v15;
      dest.height = a4;
      dest.width = a3;
      dest.rowBytes = src.rowBytes;
      if (vImageUnpremultiplyData_ARGB8888(&src, &dest, 0))
      {
        v16 = v15;
      }

      else
      {
        v18 = 0;
        v17 = v14 * v13;
        do
        {
          a2[v18++] = malloc_type_malloc(v14 * v13, 0x100004077774924uLL);
        }

        while (v18 != 4);
        v19 = malloc_type_malloc(v14 * v13, 0xF9CE4CDFuLL);
        destA.data = *a2;
        destA.height = a4;
        destA.width = a3;
        destA.rowBytes = a3;
        v20 = malloc_type_malloc(v14 * v13, 0x5159D71CuLL);
        destR.data = a2[1];
        destR.height = a4;
        destR.width = a3;
        destR.rowBytes = a3;
        v21 = malloc_type_malloc(v14 * v13, 0x57A3D21AuLL);
        destG.data = a2[2];
        destG.height = a4;
        destG.width = a3;
        destG.rowBytes = a3;
        v22 = malloc_type_malloc(v14 * v13, 0x550A04A8uLL);
        destB.data = a2[3];
        destB.height = a4;
        destB.width = a3;
        destB.rowBytes = a3;
        v23 = vImageConvert_ARGB8888toPlanar8(&dest, &destA, &destR, &destG, &destB, 0);
        free(v15);
        if (!v23)
        {
          goto LABEL_12;
        }

        free(v19);
        free(v20);
        free(v21);
        v16 = v22;
      }

      free(v16);
    }

    v17 = 0;
LABEL_12:
    CGContextRelease(v9);
    return v17;
  }

  return 0;
}

double _CUIEffectiveScaleForContext(CGContext *a1)
{
  if (!a1)
  {
    return 1.0;
  }

  CGContextGetCTM(&v4, a1);
  v1 = v4.a * v4.d - v4.b * v4.c;
  v2 = sqrt(v1);
  result = sqrt(-v1);
  if (v1 >= 0.0)
  {
    return v2;
  }

  return result;
}

CGPathRef _CUICreateNewContinuousRoundedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v10 = getCGPathCreateWithContinuousRoundedRectSymbolLoc_ptr;
  v22 = getCGPathCreateWithContinuousRoundedRectSymbolLoc_ptr;
  if (!getCGPathCreateWithContinuousRoundedRectSymbolLoc_ptr)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __getCGPathCreateWithContinuousRoundedRectSymbolLoc_block_invoke;
    v18[3] = &unk_1E7257C20;
    v18[4] = &v19;
    __getCGPathCreateWithContinuousRoundedRectSymbolLoc_block_invoke(v18);
    v10 = v20[3];
  }

  _Block_object_dispose(&v19, 8);
  if (!v10)
  {
    _CUICreateNewContinuousRoundedRect_cold_1();
  }

  result = v10(0, a1, a2, a3, a4, a5, a5);
  if (!result)
  {
    _CUILog(4, "Failed to find CGPathCreateWithContinuousRoundedRect, falling back to a standard rect. LAR=%d", v12, v13, v14, v15, v16, v17, 0);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    return CGPathCreateWithRect(v23, 0);
  }

  return result;
}

void sub_18DFE3B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getCGPathCreateWithContinuousRoundedRectSymbolLoc_block_invoke(uint64_t a1)
{
  v4[0] = 0;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = __CoreGraphicsLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7257C40;
    v6 = 0;
    CoreGraphicsLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v2 = CoreGraphicsLibraryCore_frameworkLibrary;
  if (!CoreGraphicsLibraryCore_frameworkLibrary)
  {
    __getCGPathCreateWithContinuousRoundedRectSymbolLoc_block_invoke_cold_1(v4);
  }

  if (v4[0])
  {
    free(v4[0]);
  }

  result = dlsym(v2, "CGPathCreateWithContinuousRoundedRect");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getCGPathCreateWithContinuousRoundedRectSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreGraphicsLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  CoreGraphicsLibraryCore_frameworkLibrary = result;
  return result;
}

double CG::LineSegment::index(CG::LineSegment *this, double a2)
{
  v2 = 0.0;
  if (a2 > 0.0)
  {
    v3 = sqrt((*(this + 3) - *(this + 1)) * (*(this + 3) - *(this + 1)) + (*(this + 2) - *this) * (*(this + 2) - *this));
    if (v3 <= a2)
    {
      return 1.0;
    }

    else
    {
      return a2 / v3;
    }
  }

  return v2;
}

float64x2_t CG::LineSegment::split@<Q0>(float64x2_t *this@<X0>, double a2@<D0>, float64x2_t *a3@<X8>)
{
  result = vaddq_f64(*this, vmulq_n_f64(vsubq_f64(this[1], *this), a2));
  v4 = this[1];
  *a3 = *this;
  a3[1] = result;
  a3[2] = result;
  a3[3] = v4;
  return result;
}

void sub_18DFE4740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CUIRenditionKey *CUICreateRenditionKeyWithShapeEffectState(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 > 0x17)
  {
    v6 = 0;
  }

  else
  {
    v6 = *&aLumnrcsrevokra[2 * a1 + 60];
  }

  v7 = 0;
  if (a2 <= 2)
  {
    if (a2 == 1)
    {
      v7 = 2;
    }

    else if (a2 == 2)
    {
      v7 = 4;
    }
  }

  else
  {
    switch(a2)
    {
      case 3:
        v7 = 1;
        break;
      case 4:
        goto LABEL_17;
      case 5:
        v7 = 5;
        break;
    }
  }

  if (a4 != 1)
  {
    if (a4 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_19;
  }

LABEL_17:
  v8 = 1;
LABEL_19:
  v12[0] = 1;
  v12[1] = v6;
  v12[2] = 2;
  if (a5 == 1)
  {
    v9 = 179;
  }

  else
  {
    v9 = 178;
  }

  v12[3] = v9;
  v12[4] = 10;
  v12[5] = v7;
  v12[6] = 6;
  v12[7] = v8;
  v12[8] = 14;
  v12[9] = a3 == 1;
  v12[10] = 8;
  v12[11] = a6;
  v12[12] = 12;
  if (a5 == 144)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  v12[13] = v10;
  v13 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:v12];
}

void __GetShapeEffectCIContextOptions_block_invoke()
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionaryAddValue(Mutable, @"CoreUI", &__kCFBooleanTrue);
  CFDictionaryAddValue(Mutable, kCIContextWorkingColorSpace, kCFNull);
  CFDictionaryAddValue(Mutable, kCIContextCacheIntermediates, kCFBooleanFalse);
  if (_CUIDebugAllowHardwareRendering())
  {
    v1 = kCFBooleanFalse;
  }

  else
  {
    v1 = &unk_1F00F7DC0;
  }

  CFDictionaryAddValue(Mutable, kCIContextUseSoftwareRenderer, v1);
  gCIContextOptions = Mutable;
}

void sub_18DFEDA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t CUIGetDeviceArtworkDisplayGamut()
{
  if (__getDeviceTraits___getDeviceTraits_once != -1)
  {
    [CUICatalog _recognitionImageWithName:];
  }

  return __getDeviceTraits___deviceDisplayGamut;
}

uint64_t sub_18DFF9AC4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18DFF9B30(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_18DFF9B9C@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR___CUIVectorGlyphEncapsulation__samples);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  if (*v3)
  {
    v8 = *v3;
    v9 = v3[1];
    v10 = v3[2];
    v11 = v3[3];
    v12 = v3[4];
  }

  else
  {
    v28 = v3[4];
    v29 = v7;
    v30 = v6;
    v31 = v4;
    v13 = OBJC_IVAR___CUIVectorGlyphEncapsulation_shape;
    swift_beginAccess();
    v14 = *(v1 + v13);
    v15 = (v1 + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
    swift_beginAccess();
    v16 = [v14 pathInRect_];
    v38 = *v15;
    v17 = (v38.size.width + v38.size.height) / 100.0;
    CGRectGetMidX(*v15);
    CGRectGetMidY(*v15);
    sub_18E0020BC();
    v33 = &_swiftEmptyArrayStorage;
    v34 = &_swiftEmptyArrayStorage;
    v35 = &_swiftEmptyArrayStorage;
    v36 = &_swiftEmptyArrayStorage;
    v37 = &_swiftEmptyArrayStorage;
    v32 = 0.0;
    *&v18 = off_1F00D3980();
    *&v23[2] = v17;
    v23[3] = &v32;
    v23[4] = &v33;
    v24 = v18;
    sub_18E003034(sub_18DFFA45C, v23);

    sub_18DFFA7E8(v19, &v37);

    if (v32 < 0.0)
    {
      sub_18DFFA348();
    }

    v8 = v33;
    v9 = v34;
    v10 = v35;
    v11 = v36;
    v12 = v37;
    v20 = *v3;
    v21 = v3[3];
    v27 = v3[2];
    v26 = v21;
    v25 = v3[4];
    *v3 = v33;
    v3[1] = v9;
    v3[2] = v10;
    v3[3] = v11;
    v3[4] = v12;

    sub_18DFF9B30(v20);
  }

  result = sub_18DFF9AC4(v5);
  *a1 = v8;
  a1[1] = v9;
  a1[2] = v10;
  a1[3] = v11;
  a1[4] = v12;
  return result;
}

id sub_18DFF9E20()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_18DFF9E58()
{
  v1 = OBJC_IVAR___CUIVectorGlyphEncapsulation_shape;
  *&v0[v1] = [objc_opt_self() newRoundedRect];
  v2 = &v0[OBJC_IVAR___CUIVectorGlyphEncapsulation_rect];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = &v0[OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  *&v0[OBJC_IVAR___CUIVectorGlyphEncapsulation_representativePointSize] = 0;
  v4 = &v0[OBJC_IVAR___CUIVectorGlyphEncapsulation__samples];
  *(v4 + 4) = 0;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v6.receiver = v0;
  v6.super_class = CUIVectorGlyphEncapsulation;
  return objc_msgSendSuper2(&v6, sel_init);
}

char *sub_18DFF9FAC(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR___CUIVectorGlyphEncapsulation_shape;
  swift_beginAccess();
  v18 = *&v16[v17];
  *&v16[v17] = a1;
  v19 = a1;

  v20 = &v16[OBJC_IVAR___CUIVectorGlyphEncapsulation_rect];
  swift_beginAccess();
  *v20 = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v21 = &v16[OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize];
  swift_beginAccess();
  *v21 = a6;
  v21[1] = a7;
  v22 = OBJC_IVAR___CUIVectorGlyphEncapsulation_representativePointSize;
  swift_beginAccess();
  *&v16[v22] = a8;
  return v16;
}

id sub_18DFFA168@<X0>(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = OBJC_IVAR___CUIVectorGlyphEncapsulation_shape;
  swift_beginAccess();
  v7 = *(v2 + v6);
  v8 = (v2 + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  v13 = (v2 + OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize);
  swift_beginAccess();
  v14 = *v13;
  v15 = v13[1];
  v16 = OBJC_IVAR___CUIVectorGlyphEncapsulation_representativePointSize;
  swift_beginAccess();
  result = [ObjCClassFromMetadata newEncapsulationWithShape:v7 rect:v9 canvasSize:v10 representativePointSize:{v11, v12, v14, v15, *(v2 + v16)}];
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t sub_18DFFA348()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  v3 = v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_18DFFA9A4(v1);
  }

  v8 = 0xBFF0000000000000;
  vDSP_vsmulD((v1 + 32), 1, &v8, v3 + 4, 1, v2);
  *(v0 + 16) = v3;

  v4 = *(v0 + 24);
  v5 = *(v4 + 16);

  v6 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_18DFFA9A4(v4);
  }

  v8 = 0xBFF0000000000000;
  vDSP_vsmulD((v4 + 32), 1, &v8, v6 + 4, 1, v5);
  *(v0 + 24) = v6;
}

void sub_18DFFA45C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v30 = *(v0 + 48);
  v3 = ceil(sub_18E0031C4() / *(v0 + 16));
  *v1 = sub_18E0033D0() + *v1;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_32:
    __break(1u);
    return;
  }

  if (v4)
  {
    v5 = 0;
    do
    {
      v6.f64[0] = sub_18E0024E8(v5 / v3);
      v32 = v6;
      v7 = sub_18E003268();
      *&v8 = sub_18E003270(v7 & 1, v5 / v3);
      v31 = v8;
      v9 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_18DFFA8A0(0, *(v9 + 2) + 1, 1, v9);
        *v2 = v9;
      }

      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        v9 = sub_18DFFA8A0((v11 > 1), v12 + 1, 1, v9);
        *v2 = v9;
      }

      *(v9 + 2) = v12 + 1;
      *&v9[8 * v12 + 32] = v32.f64[0];
      v13 = v2[1];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v2[1] = v13;
      if ((v14 & 1) == 0)
      {
        v13 = sub_18DFFA8A0(0, *(v13 + 2) + 1, 1, v13);
        v2[1] = v13;
      }

      v16 = *(v13 + 2);
      v15 = *(v13 + 3);
      if (v16 >= v15 >> 1)
      {
        v13 = sub_18DFFA8A0((v15 > 1), v16 + 1, 1, v13);
        v2[1] = v13;
      }

      *(v13 + 2) = v16 + 1;
      *&v13[8 * v16 + 32] = v32.f64[1];
      v17 = v2[2];
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v2[2] = v17;
      if ((v18 & 1) == 0)
      {
        v17 = sub_18DFFA8A0(0, *(v17 + 2) + 1, 1, v17);
        v2[2] = v17;
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_18DFFA8A0((v19 > 1), v20 + 1, 1, v17);
        v2[2] = v17;
      }

      *(v17 + 2) = v20 + 1;
      *&v17[8 * v20 + 32] = v31;
      v21 = v2[3];
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v2[3] = v21;
      if ((v22 & 1) == 0)
      {
        v21 = sub_18DFFA8A0(0, *(v21 + 2) + 1, 1, v21);
        v2[3] = v21;
      }

      v24 = *(v21 + 2);
      v23 = *(v21 + 3);
      if (v24 >= v23 >> 1)
      {
        v21 = sub_18DFFA8A0((v23 > 1), v24 + 1, 1, v21);
        v2[3] = v21;
      }

      *(v21 + 2) = v24 + 1;
      *&v21[8 * v24 + 32] = *(&v31 + 1);
      v25 = v2[4];
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v25;
      if ((v26 & 1) == 0)
      {
        v25 = sub_18DFFA8A0(0, *(v25 + 2) + 1, 1, v25);
        v2[4] = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_18DFFA8A0((v27 > 1), v28 + 1, 1, v25);
        v2[4] = v25;
      }

      ++v5;
      v29 = vsubq_f64(v32, v30);
      *(v25 + 2) = v28 + 1;
      *&v25[8 * v28 + 32] = vaddvq_f64(vmulq_f64(v29, v29));
    }

    while (v4 != v5);
  }
}

void sub_18DFFA7E8(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  if (v4 != *(*a2 + 2))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v4 >> 31)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = a2;
  v3 = a1;
  v6 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_7:
    v5 = sub_18DFFA9A4(v5);
  }

  vvsqrt(v5 + 4, (v3 + 32), &v6);
  *v2 = v5;
}

char *sub_18DFFA8A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC0FB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_18DFFA9B8()
{
  result = qword_1EABC10D0;
  if (!qword_1EABC10D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABC10D0);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18DFFAA18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18DFFAA60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id sub_18DFFAB94()
{
  v1 = objc_opt_self();
  v2 = [objc_opt_self() newRoundedRect];
  v3 = [v1 newEncapsulationWithShape:v2 rect:0.0 canvasSize:0.0 representativePointSize:{0.0, 0.0, 0.0, 0.0, 0.0}];

  v4 = &v0[OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing];
  *v4 = 1;
  *(v4 + 1) = v3;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0x3FF0000000000000;
  v4[40] = 0;
  v6.receiver = v0;
  v6.super_class = CUIEncapsulatedVectorGlyphConfiguration;
  return objc_msgSendSuper2(&v6, sel_init);
}

char *sub_18DFFAD38(void *a1, uint64_t a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = &v10[OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing];
  swift_beginAccess();
  v12 = *(v11 + 1);
  *v11 = a2;
  *(v11 + 1) = a1;
  *(v11 + 2) = a3;
  *(v11 + 3) = a4;
  *(v11 + 4) = a5;
  v11[40] = 0;
  v13 = a1;

  return v10;
}

char *sub_18DFFAE68(void *a1, char a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v11 = v10;
  if (a3)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  v13 = &v10[OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing];
  swift_beginAccess();
  v14 = *(v13 + 1);
  *v13 = a5;
  *(v13 + 1) = a1;
  *(v13 + 2) = v12 & 0xFFFFFFFFFFFFFFFELL | a2 & 1;
  *(v13 + 3) = a4;
  *(v13 + 4) = 0;
  v13[40] = 1;
  v15 = a1;

  return v11;
}

id sub_18DFFAF9C@<X0>(void *a1@<X8>)
{
  a1[3] = sub_18DFFAFE8();
  *a1 = v3;

  return v3;
}

unint64_t sub_18DFFAFE8()
{
  result = qword_1EABC1308;
  if (!qword_1EABC1308)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EABC1308);
  }

  return result;
}

double sub_18DFFB038(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing);
  swift_beginAccess();
  if (*v3)
  {
    if (*v3 != 1 || a1)
    {
      goto LABEL_6;
    }

LABEL_7:
    v7 = (v3[1] + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
    swift_beginAccess();
    MidX = CGRectGetMidX(*v7);
    v8 = v3[1];
    swift_beginAccess();
    v9 = (v8 + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
    swift_beginAccess();
    CGRectGetMidY(*v9);
    return MidX;
  }

  if (a1 == 1)
  {
    goto LABEL_7;
  }

LABEL_6:
  v4 = (v3[1] + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
  swift_beginAccess();
  MidX = CGRectGetMidX(*v4);
  v6 = (v3[1] + OBJC_IVAR___CUIVectorGlyphEncapsulation_rect);
  swift_beginAccess();
  CGRectGetMidY(*v6);
  return MidX;
}

void sub_18DFFB1B4(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2 + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing;
  swift_beginAccess();
  if (*v5)
  {
    if (*v5 != 1 || a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1 != 1)
  {
LABEL_6:
    v6 = *(v5 + 8);
    sub_18DFF9B9C(&v21);

    v7 = v24;
    v8 = v25;
    v9 = v22;
    v10 = v23;
    v11 = v21;
    goto LABEL_12;
  }

  v12 = *(v5 + 8);
  sub_18DFF9B9C(&v21);

  v10 = v23;
  v13 = v24;
  v11 = v21;
  v14 = v22;
  v26 = v22;
  v27 = v24;
  v8 = v25;
  v15 = *(v5 + 8) + OBJC_IVAR___CUIVectorGlyphEncapsulation_canvasSize;
  swift_beginAccess();
  v16 = *(v15 + 8);
  v17 = *(v14 + 16);
  sub_18DFFB3BC(&v27, &__B);
  sub_18DFFB3BC(&v26, &__B);
  v9 = v14;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_18DFFA9A4(v14);
  }

  __B = -1.0;
  v19 = v16;
  vDSP_vsmsaD((v14 + 32), 1, &__B, &v19, v9 + 4, 1, v17);
  sub_18DFFB440(&v26);
  v18 = *(v13 + 16);
  v7 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_18DFFA9A4(v13);
  }

  __B = -1.0;
  vDSP_vsmulD((v13 + 32), 1, &__B, v7 + 4, 1, v18);
  sub_18DFFB440(&v27);
LABEL_12:
  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
  a2[3] = v7;
  a2[4] = v8;
}

uint64_t sub_18DFFB3BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC0FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18DFFB440(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EABC0FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18DFFB4BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18DFFB504(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s23AdjustmentConfigurationV7OptionsOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t _s23AdjustmentConfigurationV7OptionsOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s23AdjustmentConfigurationV7OptionsOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

void sub_18DFFB684(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_18DFFB71C()
{
  v1 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

double sub_18DFFB7CC()
{
  v1 = (v0 + OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageCenter);
  swift_beginAccess();
  v2 = *v1;
  v3 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(v0 + v3) scale];
  v5 = v2 / v4;
  [*(v0 + v3) scale];
  return v5;
}

double sub_18DFFB878(char *a1, uint64_t a2, void *a3)
{
  v4 = &a1[*a3];
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  v9 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  v10 = *&a1[v9];
  v11 = a1;
  [v10 scale];
  v13 = sub_18E001230(1.0 / v12, v5, v6, v7, v8);

  return v13;
}

void sub_18DFFB958(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(v1 + v7) scale];
  sub_18E001230(1.0 / v8, v3, v4, v5, v6);
}

uint64_t sub_18DFFBAD4()
{
  v1 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_18DFFBB30(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

double sub_18DFFBB78(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

id sub_18DFFBBBC()
{
  v1 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  *&v0[v1] = [objc_allocWithZone(CUINamedVectorGlyph) init];
  v2 = &v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageCenter];
  *v3 = 0;
  v3[1] = 0;
  v4 = &v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect];
  *v4 = 0u;
  v4[1] = 0u;
  *&v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem] = 1;
  v5 = &v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph_contextTransform];
  *v5 = 0x3FF0000000000000;
  v5[1] = 0;
  v5[2] = 0;
  v5[3] = 0x3FF0000000000000;
  v5[4] = 0;
  v5[5] = 0;
  v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph_useASG] = 0;
  v6 = &v0[OBJC_IVAR___CUIEncapsulatedVectorGlyph_canvasSize];
  *v6 = 0;
  v6[1] = 0;
  v8.receiver = v0;
  v8.super_class = CUIEncapsulatedVectorGlyph;
  return objc_msgSendSuper2(&v8, sel_init);
}

double sub_18DFFBCC4(uint64_t a1)
{
  [v1 imagePixelRectForCoordinateSystem_];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v1 imagePixelCenterForCoordinateSystem_];
  v12 = v11;
  v14 = v13;
  sub_18DFFC230(a1, &OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect);
  v16 = v15;
  v18 = v17;
  v26 = v20;
  v27 = v19;
  v21 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem;
  swift_beginAccess();
  *&v1[v21] = a1;
  v22 = &v1[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect];
  swift_beginAccess();
  *v22 = v4;
  *(v22 + 1) = v6;
  *(v22 + 2) = v8;
  *(v22 + 3) = v10;
  v23 = &v1[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageCenter];
  swift_beginAccess();
  *v23 = v12;
  *(v23 + 1) = v14;
  v24 = &v1[OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect];
  swift_beginAccess();
  *v24 = v16;
  *(v24 + 1) = v18;
  result = v26;
  *(v24 + 2) = v27;
  v24[3] = v26;
  return result;
}

void sub_18DFFBE08(uint64_t a1)
{
  [v1 imagePixelRectForCoordinateSystem_];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*&v1[v10] scale];
  sub_18E001230(1.0 / v11, v3, v5, v7, v9);
}

double sub_18DFFBF74(uint64_t a1)
{
  [v1 imagePixelCenterForCoordinateSystem_];
  v3 = v2;
  v4 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*&v1[v4] scale];
  v6 = v3 / v5;
  [*&v1[v4] scale];
  return v6;
}

void sub_18DFFC0C0(uint64_t a1)
{
  sub_18DFFC230(a1, &OBJC_IVAR___CUIEncapsulatedVectorGlyph__encapsulatedAlignmentRect);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(v1 + v10) scale];
  sub_18E001230(1.0 / v11, v3, v5, v7, v9);
}

void sub_18DFFC230(uint64_t a1, void *a2)
{
  v5 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    if (v6 != 1 || a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1 != 1)
  {
LABEL_6:
    swift_beginAccess();
    return;
  }

  v7 = (v2 + *a2);
  swift_beginAccess();
  v8 = *v7;
  swift_beginAccess();
  v9 = v7[2];
  v7 += 2;
  v10.size.width = v9;
  v10.origin.y = *(v7 - 1);
  v10.size.height = v7[1];
  v10.origin.x = v8;
  CGRectGetMaxY(v10);
}

void sub_18DFFC3AC(uint64_t a1)
{
  v3 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__coordinateSystem;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 != 1 || a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1 != 1)
  {
LABEL_6:
    swift_beginAccess();
    return;
  }

  swift_beginAccess();
  v5 = (v1 + OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect);
  swift_beginAccess();
  CGRectGetHeight(*v5);
}

void sub_18DFFC4F8(void (*a1)(void))
{
  v3 = &v1[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect];
  swift_beginAccess();
  if ((COERCE_UNSIGNED_INT64(CGRectGetWidth(*v3)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (COERCE_UNSIGNED_INT64(CGRectGetHeight(*v3)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return;
  }

  v4 = OBJC_IVAR___CUIEncapsulatedVectorGlyph_useASG;
  swift_beginAccess();
  v5 = v1[v4];
  Width = CGRectGetWidth(*v3);
  if (v5 == 1)
  {
    Width = Width * *sub_18E0008D4();
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (Width <= -9.22337204e18)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (Width < 9.22337204e18)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_11:
  v7 = v1[v4];
  Height = CGRectGetHeight(*v3);
  if (v7 != 1)
  {
    goto LABEL_16;
  }

  Height = Height * *sub_18E0008D4();
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (Height < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_16:
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    __break(1u);
    return;
  }

LABEL_19:
  v9 = [v1 glyph];
  v10 = [v1 createContextFor:v9 width:Width height:Height];

  if (v10)
  {
    v11 = &v1[OBJC_IVAR___CUIEncapsulatedVectorGlyph_contextTransform];
    swift_beginAccess();
    v12 = *(v11 + 1);
    *&v16.a = *v11;
    *&v16.c = v12;
    *&v16.tx = *(v11 + 2);
    CGContextConcatCTM(v10, &v16);
    v13 = [v1 glyph];
    a1();

    v14 = v1[v4];
    Image = CGBitmapContextCreateImage(v10);
    if (v14 == 1)
    {
      if (Image)
      {
        [objc_allocWithZone(CIImage) initWithCGImage_];
        sub_18E0131C8();
      }
    }

    else
    {
    }
  }
}

void sub_18DFFC9FC()
{
  swift_getObjectType();
  [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = OBJC_IVAR___CUIEncapsulatedVectorGlyph__glyph;
  swift_beginAccess();
  [*(v0 + v1) copy];
  sub_18E013298();
}

uint64_t sub_18DFFCDB0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_18DFFCDF8(char *a1, uint64_t a2)
{
  v4 = &a1[OBJC_IVAR___CUIEncapsulatedVectorGlyph__imageRect];
  swift_beginAccess();
  if ((COERCE_UNSIGNED_INT64(CGRectGetWidth(*v4)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL || (COERCE_UNSIGNED_INT64(CGRectGetHeight(*v4)) & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return;
  }

  v5 = OBJC_IVAR___CUIEncapsulatedVectorGlyph_useASG;
  swift_beginAccess();
  v6 = a1[v5];
  Width = CGRectGetWidth(*v4);
  if (v6 == 1)
  {
    Width = Width * *sub_18E0008D4();
    if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (Width <= -9.22337204e18)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (Width < 9.22337204e18)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  if ((*&Width & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (Width <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (Width >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

LABEL_11:
  v8 = a1[v5];
  Height = CGRectGetHeight(*v4);
  if (v8 != 1)
  {
    goto LABEL_16;
  }

  Height = Height * *sub_18E0008D4();
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (Height < 9.22337204e18)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_16:
  if ((*&Height & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (Height <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (Height >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    __break(1u);
    return;
  }

LABEL_19:
  v10 = [a1 glyph];
  v11 = [a1 createContextFor:v10 width:Width height:Height];

  if (v11)
  {
    v12 = &a1[OBJC_IVAR___CUIEncapsulatedVectorGlyph_contextTransform];
    swift_beginAccess();
    v13 = *(v12 + 1);
    *&v17.a = *v12;
    *&v17.c = v13;
    *&v17.tx = *(v12 + 2);
    CGContextConcatCTM(v11, &v17);
    v14 = [a1 glyph];
    (*(a2 + 16))(a2, v14, v11);

    v15 = a1[v5];
    Image = CGBitmapContextCreateImage(v11);
    if (v15 == 1)
    {
      if (Image)
      {
        [objc_allocWithZone(CIImage) initWithCGImage_];
        sub_18E0131C8();
      }
    }

    else
    {
    }
  }
}

CGContextRef sub_18DFFD298(void *a1, size_t a2, size_t a3)
{
  v5 = [a1 _containsWideGamutColor];
  if (v5)
  {
    v6 = 4097;
  }

  else
  {
    v6 = 8193;
  }

  if (v5)
  {
    v7 = 16;
  }

  else
  {
    v7 = 8;
  }

  v8 = &kCGColorSpaceDisplayP3;
  if (!v5)
  {
    v8 = &kCGColorSpaceSRGB;
  }

  v9 = CGColorSpaceCreateWithName(*v8);
  v12 = CUICGBitmapContextCreate(a2, a3, v7, 0, v9, v6, v10, v11);

  return v12;
}

id sub_18DFFD344()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  [objc_opt_self() defaultRoundedRectCornerRadius];

  return [ObjCClassFromMetadata newRoundedRectWithCornerRadius_];
}

uint64_t sub_18DFFD3C8(double a1)
{
  v2 = [objc_allocWithZone(CUIEncapsulationShape) init];
  v3 = &v2[OBJC_IVAR___CUIEncapsulationShape_backing];
  *v3 = a1;
  *(v3 + 8) = 0;

  return _swift_dynamicCastUnknownClassUnconditional();
}

uint64_t sub_18DFFD498(uint64_t a1)
{
  v2 = [objc_allocWithZone(CUIEncapsulationShape) init];
  v3 = &v2[OBJC_IVAR___CUIEncapsulationShape_backing];
  *v3 = a1;
  v3[8] = 1;

  return _swift_dynamicCastUnknownClassUnconditional();
}

CGPathRef sub_18DFFD570(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = v5 + OBJC_IVAR___CUIEncapsulationShape_backing;
  if (*(v5 + OBJC_IVAR___CUIEncapsulationShape_backing + 8) == 1 && !*v9)
  {
    v10 = a1;
    v11 = a2;
    Width = CGRectGetWidth(*&a1);
    v19.origin.x = v10;
    v19.origin.y = v11;
    v19.size.width = a3;
    v19.size.height = a4;
    v13 = fmin(Width, CGRectGetHeight(v19));
    v20.origin.x = v10;
    v20.origin.y = v11;
    v20.size.width = a3;
    v20.size.height = a4;
    v14 = CGRectGetMidX(v20) - v13 * 0.5;
    v21.origin.x = v10;
    v21.origin.y = v11;
    v21.size.width = a3;
    v21.size.height = a4;
    a2 = CGRectGetMidY(v21) - v13 * 0.5;
    a1 = v14;
    a3 = v13;
    a4 = v13;
  }

  v15 = a3;
  v16 = a4;
  v22 = CGRectInset(*&a1, a5, a5);
  if (*(v9 + 8))
  {
    v17 = fmin(a3, a4) * 0.5;
  }

  else
  {
    v17 = a3 * *v9;
  }

  result = _CUICreateNewContinuousRoundedRect(v22.origin.x, v22.origin.y, v22.size.width, v22.size.height, v17 - a5);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_18DFFD740()
{
  result = qword_1EABC1310[0];
  if (!qword_1EABC1310[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EABC1310);
  }

  return result;
}

id sub_18DFFD790()
{
  v1 = &v0[OBJC_IVAR___CUIEncapsulationShape_backing];
  [objc_opt_self() defaultRoundedRectCornerRadius];
  *v1 = v2;
  v1[8] = 0;
  v4.receiver = v0;
  v4.super_class = CUIEncapsulationShape;
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_18DFFD998()
{
  v1 = 0x70616C7265766FLL;
  if (*v0 != 1)
  {
    v1 = 0x7265746661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65726F666562;
  }
}

unint64_t sub_18DFFDA1C()
{
  result = qword_1EABC1020;
  if (!qword_1EABC1020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EABC1020);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18DFFDA94(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18DFFDAB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BezierPath.Segment.RelativePosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BezierPath.Segment.RelativePosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_18DFFDC78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18DFFDC98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_18DFFDCE8(uint64_t a1)
{
  type metadata accessor for CGPath(255);
  *(a1 + 16) = v2;
  return 0;
}

uint64_t sub_18DFFDD30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_18DFFDD74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t sub_18DFFDDC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18DFFDDE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

id sub_18DFFDEA4(double a1, double a2, double a3)
{
  if (a3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a3;
  }

  result = [v3 options];
  if (result)
  {
    v6 = result;
    v7 = [result fillColors];

    sub_18E013238();
  }

  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  return result;
}

void sub_18DFFE920(void *a1, uint64_t a2, unsigned __int8 a3, double a4, double a5, double a6)
{
  [v6 _backgroundShapeBoundsForTargetSize_scale_];
  v14 = v13;
  v16 = v15;
  v17 = [v6 _encapsulatedGlyphForTargetSize_displayScale_];
  v18 = [v6 _createBackgroundImageOfSize_scale_];
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = v6;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_18E000604;
  *(v21 + 24) = v20;
  *&aBlock[4] = sub_18E000614;
  *&aBlock[5] = v21;
  *&aBlock[0] = _NSConcreteStackBlock;
  *&aBlock[1] = 1107296256;
  *&aBlock[2] = sub_18E00055C;
  *&aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);
  v23 = v6;

  sub_18E000654(a1, a2, a3);

  v24 = [v17 rasterizeImageUsingRenderBlock_];
  _Block_release(v22);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    swift_once();
    sub_18E0131A8();
  }

  if (!v24)
  {

LABEL_15:
    return;
  }

  v26 = [objc_allocWithZone(CIImage) initWithCGImage_];
  v27 = [v23 options];
  if (!v27)
  {
    __break(1u);
    goto LABEL_19;
  }

  v28 = v27;
  v29 = [v27 contentEffect];

  aBlock[0] = 1.0;
  v53.origin.x = 0.0;
  v53.origin.y = 0.0;
  v53.size.width = v14 * a4;
  v53.size.height = v16 * a4;
  v54 = CGRectIntegral(v53);
  v30 = [v23 _createContentEffectsForTargetSize_scale_contentEffectStyle_];
  v51 = v19;
  if (v30)
  {
    v31 = v30;
    [v30 setBypassColorFills_];
    v32 = [v31 processedImageFromImage:v26 withScale:aBlock[0]];
    if (!v32)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v33 = v32;

    v26 = v33;
  }

  v34 = v26;
  [v17 imagePixelRect];
  v36 = v35;
  v38 = v37;
  v39 = objc_opt_self();
  v40 = [v39 offset:v34 by:{v36, v38}];

  if (!v40)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v41 = objc_allocWithZone(CIImage);
  v42 = v40;
  v43 = [v41 initWithCGImage_];
  [v43 extent];
  aBlock[0] = 1.0;
  v46 = [v23 _createShapeEffectsForTargetSize_scale_];
  if (v46)
  {
    v47 = v46;
    v48 = [v46 processedImageFromImage:v43 withScale:aBlock[0]];
    if (v48)
    {
      v49 = v48;

      v43 = v49;
      goto LABEL_12;
    }

LABEL_21:
    __break(1u);
    __break(1u);
    return;
  }

LABEL_12:
  v50 = [v39 composite:v42 over:v43];

  if (v50)
  {
    sub_18E0131C8();
  }
}

id sub_18DFFF1FC(void *a1, int a2, void *aBlock, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, double, double, double))
{
  v17 = _Block_copy(aBlock);
  if (v17)
  {
    v18 = v17;
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = a1;
    v21 = a10(a8, v19, a9, a4, a5, a6);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

id sub_18DFFF2F0(void *a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t (*a7)(void *, void, uint64_t, double, double, double))
{
  v13 = a6;
  v14 = a1;
  v15 = a7(a6, 0, 3, a2, a3, a4);

  return v15;
}

id sub_18DFFF390(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8)
{
  result = [v8 options];
  if (!result)
  {
    __break(1u);
    goto LABEL_64;
  }

  v18 = result;
  v19 = [result shape];

  result = [v8 options];
  if (!result)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v20 = result;
  [result roundedRectCornerRadius];
  v22 = v21;

  v23 = objc_opt_self();
  if (v19)
  {
    if (v19 == 2)
    {
      v24 = [v23 newCapsule];
    }

    else if (v19 == 1)
    {
      v24 = [v23 newCircle];
    }

    else
    {
      v24 = [v23 newRoundedRect];
    }
  }

  else
  {
    v24 = [v23 newRoundedRectWithCornerRadius_];
  }

  v25 = v24;
  v26 = objc_opt_self();
  v75.origin.x = a2;
  v75.origin.y = a3;
  v75.size.width = a4;
  v75.size.height = a5;
  v27 = [v26 newEncapsulationWithShape:v25 rect:a2 canvasSize:a3 representativePointSize:{a4, a5, a6, a7, CGRectGetHeight(v75)}];

  if (a8 == 1.0 || ([v8 glyphContinuousSize], objc_msgSend(v8, sel_glyphContinuousWeight), (v28 = objc_msgSend(v8, sel_copyWithContinuousWeight_continuousSize_)) == 0))
  {
    v28 = v8;
  }

  result = [v8 options];
  if (!result)
  {
    goto LABEL_65;
  }

  v29 = result;
  v30 = [result prefersAutomaticCentering];

  result = [v8 options];
  v31 = result;
  if (v30)
  {
    if (result)
    {
      v32 = [result imageScaling] != 0;

      v33 = [objc_opt_self() newAutomaticCenterConfigurationForEncapsulation:v27 adjustX:1 adjustY:1 sizeAdjustment:2 * v32 coordinateSystem:a1];
      v34 = [v28 newEncapsulatedGlyphWithConfiguration_];
LABEL_62:

      return v34;
    }

    goto LABEL_66;
  }

  if (!result)
  {
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v35 = [result imageScaling];

  v36 = 1.0;
  if (v35 == 3)
  {
    result = [v8 options];
    if (!result)
    {
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

    v37 = result;
    v38 = [result imageAlignment];

    if (v38)
    {
      v36 = 0.5;
    }

    else
    {
      v36 = 1.0;
    }
  }

  v39 = objc_opt_self();
  v40 = [v39 newMetricCenterConfigurationForEncapsulation:v27 offsetX:a1 offsetY:0.0 scaleFactor:0.0 coordinateSystem:v36];
  v41 = [v28 newEncapsulatedGlyphWithConfiguration_];

  [v41 imageRect];
  v43 = v42;
  v45 = v44;
  result = [v8 options];
  if (!result)
  {
    goto LABEL_68;
  }

  v46 = result;
  v47 = [result imageAlignment];

  result = [v8 options];
  if (!result)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v48 = result;
  [result imageOffset];
  v50 = v49;
  v52 = v51;

  [objc_opt_self() automaticOffset];
  if (v50 != v54 || (v55 = 0.0, v56 = 0.0, v52 != v53))
  {
    result = [v8 options];
    if (!result)
    {
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v57 = result;
    [result imageOffset];
    v55 = v58;
    v56 = v59;
  }

  result = [v8 options];
  if (!result)
  {
    goto LABEL_70;
  }

  v60 = result;
  v61 = [result imageScaling];

  v62 = 0.0;
  v63 = 0.0;
  if (v61 != 2)
  {
    [v8 pointSize];
    v65 = v64 * 0.1 + v64 * 0.1;
    v66 = (a4 - v43 - v65) / a4 * 0.5;
    v67 = (a5 - v45 - v65) / a5 * 0.5;
    v62 = v55 + v66;
    if (v47 <= 3)
    {
      v69 = v56 + v67;
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v62 = v55 - v66;
        }

        goto LABEL_50;
      }

      v62 = v55;
      if (v47)
      {
        if (v47 == 1)
        {
          goto LABEL_50;
        }

        goto LABEL_45;
      }

      v69 = v56;
    }

    else
    {
      v68 = v56 - v67;
      if (v47 <= 5)
      {
        v62 = v55 - v66;
        v69 = v56;
        if (v47 != 4)
        {
          v62 = v55;
          v69 = v68;
        }

        goto LABEL_50;
      }

      if (v47 == 6)
      {
        v62 = v55 - v66;
      }

      else if (v47 != 7)
      {
        v69 = v56;
        if (v47 == 8)
        {
          goto LABEL_50;
        }

LABEL_45:
        v62 = 0.0;
        v69 = 0.0;
        goto LABEL_50;
      }

      v69 = v56 - v67;
    }

LABEL_50:
    if (a1)
    {
      v63 = v69;
    }

    else
    {
      v63 = -v69;
    }
  }

  result = [v8 options];
  if (!result)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v70 = result;
  v71 = [result imageScaling];

  if (v71 == 2)
  {
    v72 = a4 / v43;
    goto LABEL_61;
  }

  v72 = 1.0;
  if (v71 != 3)
  {
LABEL_61:
    v33 = [v39 newMetricCenterConfigurationForEncapsulation:v27 offsetX:a1 offsetY:v62 scaleFactor:v63 coordinateSystem:v72];
    v34 = [v28 newEncapsulatedGlyphWithConfiguration_];

    v27 = v28;
    v28 = v41;
    goto LABEL_62;
  }

  result = [v8 options];
  if (result)
  {
    v73 = result;
    v74 = [result imageAlignment];

    if (v74)
    {
      v72 = 0.5;
    }

    else
    {
      v72 = 1.0;
    }

    goto LABEL_61;
  }

LABEL_74:
  __break(1u);
  return result;
}

void sub_18DFFFC38(id a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, void *a6)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      v30 = [a1 numberOfPaletteLayers];
      if ((v30 & 0x8000000000000000) != 0)
      {
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        __break(1u);
        return;
      }

      v31 = v30;
      if (!v30)
      {
        return;
      }

      sub_18DF639C0(0);
      v32 = swift_allocObject();
      *(v32 + 16) = a3;
      *(v32 + 24) = a4;
      v42 = sub_18E0008B4;
      v43 = v32;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_18E00052C;
      v41 = &block_descriptor_38;
      v33 = _Block_copy(&aBlock);

      [a1 drawPaletteLayerAtIndex:0 inContext:a2 withColorResolver:v33];
      _Block_release(v33);
      LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

      if (v33)
      {
        goto LABEL_38;
      }

      if (v31 != 1)
      {
        v34 = 1;
        do
        {

          sub_18DF639C0(a3);
          v35 = swift_allocObject();
          *(v35 + 16) = a3;
          *(v35 + 24) = a4;
          v42 = sub_18E0008B4;
          v43 = v35;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_18E00052C;
          v41 = &block_descriptor_38;
          v36 = _Block_copy(&aBlock);

          [a1 drawPaletteLayerAtIndex:v34 inContext:a2 withColorResolver:v36];
          _Block_release(v36);
          LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

          if (v36)
          {
            goto LABEL_38;
          }
        }

        while (v31 != ++v34);
      }

      v16 = a3;
      v17 = a4;
      v18 = 1;
    }

    else
    {
      v9 = [a1 numberOfMulticolorLayers];
      if ((v9 & 0x8000000000000000) != 0)
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v10 = v9;
      if (!v9)
      {
        return;
      }

      sub_18DF639C0(0);
      v11 = swift_allocObject();
      *(v11 + 16) = a3;
      *(v11 + 24) = a4;
      v42 = sub_18E000754;
      v43 = v11;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_18E0004B8;
      v41 = &block_descriptor_44;
      v12 = _Block_copy(&aBlock);

      [a1 drawMulticolorLayerAtIndex:0 inContext:a2 withColorResolver:v12];
      _Block_release(v12);
      LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

      if (v12)
      {
        goto LABEL_37;
      }

      if (v10 != 1)
      {
        v13 = 1;
        do
        {

          sub_18DF639C0(a3);
          v14 = swift_allocObject();
          *(v14 + 16) = a3;
          *(v14 + 24) = a4;
          v42 = sub_18E000754;
          v43 = v14;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_18E0004B8;
          v41 = &block_descriptor_44;
          v15 = _Block_copy(&aBlock);

          [a1 drawMulticolorLayerAtIndex:v13 inContext:a2 withColorResolver:v15];
          _Block_release(v15);
          LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

          if (v15)
          {
            goto LABEL_37;
          }
        }

        while (v10 != ++v13);
      }

      v16 = a3;
      v17 = a4;
      v18 = 0;
    }

    goto LABEL_34;
  }

  if (a5 == 2)
  {
    v19 = [a1 numberOfHierarchyLayers];
    if ((v19 & 0x8000000000000000) != 0)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v20 = v19;
    if (!v19)
    {
      return;
    }

    sub_18DF639C0(0);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    *(v21 + 24) = a4;
    v42 = sub_18E00072C;
    v43 = v21;
    aBlock = _NSConcreteStackBlock;
    v39 = 1107296256;
    v40 = sub_18E00052C;
    v41 = &block_descriptor_31;
    v22 = _Block_copy(&aBlock);

    [a1 drawHierarchyLayerAtIndex:0 inContext:a2 withColorResolver:v22];
    _Block_release(v22);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      goto LABEL_36;
    }

    if (v20 != 1)
    {
      v23 = 1;
      while (1)
      {

        sub_18DF639C0(a3);
        v24 = swift_allocObject();
        *(v24 + 16) = a3;
        *(v24 + 24) = a4;
        v42 = sub_18E00072C;
        v43 = v24;
        aBlock = _NSConcreteStackBlock;
        v39 = 1107296256;
        v40 = sub_18E00052C;
        v41 = &block_descriptor_31;
        v25 = _Block_copy(&aBlock);

        [a1 drawHierarchyLayerAtIndex:v23 inContext:a2 withColorResolver:v25];
        _Block_release(v25);
        LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

        if (v25)
        {
          break;
        }

        if (v20 == ++v23)
        {
          goto LABEL_23;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

LABEL_23:
    v16 = a3;
    v17 = a4;
    v18 = 2;
LABEL_34:
    sub_18E0005C8(v16, v17, v18);
    return;
  }

  if (a5 != 3)
  {
    CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    v27 = [a6 options];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 monochromeForegroundColor];

      sub_18E013298();
    }

    goto LABEL_42;
  }

  [a1 drawWithTintColor:a3 inContext:a2];
}