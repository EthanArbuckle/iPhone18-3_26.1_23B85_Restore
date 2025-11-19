void *std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void *std::vector<re::pathprocessing::Bezier2>::vector[abi:nn200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](result, a2);
  }

  return result;
}

float32x2_t re::pathprocessing::QuadraticBezierBVH::build(uint64_t **this)
{
  std::vector<re::pathprocessing::Bounds2<float>>::resize(this + 2, 0xAAAAAAAAAAAAAAABLL * (((*this)[1] - **this) >> 3));
  v3 = **this;
  if ((*this)[1] != v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = (v3 + v4);
      v8 = v7[1];
      v9 = vminnm_f32(*v7, v8);
      v10 = vmaxnm_f32(*v7, v8);
      v11 = v7[2];
      result = vmaxnm_f32(v10, v11);
      v12 = &this[2][v5];
      *v12 = vminnm_f32(v9, v11);
      v12[1] = result;
      ++v6;
      v3 = **this;
      v5 += 2;
      v4 += 24;
    }

    while (v6 < 0xAAAAAAAAAAAAAAABLL * (((*this)[1] - v3) >> 3));
  }

  return result;
}

void std::vector<re::pathprocessing::Bounds2<float>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<re::pathprocessing::Bounds2<float>>::__append(a1, a2 - v2);
  }
}

void re::pathprocessing::QuadraticBezierBVH::buildGroup(uint64_t a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v6 = v3;
    v7 = v2;
    v8 = v4;
    v9 = v5;
    re::pathprocessing::QuadraticBezierBVH::buildGroupRange();
  }
}

uint64_t re::pathprocessing::QuadraticBezierBVH::intersect(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8))
  {
    v6 = *(a1 + 8);
    *__p = 0u;
    v3 = 0u;
    v4 = 0u;
    v5 = __p;
    std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(1uLL);
  }

  return 0;
}

uint64_t *std::unique_ptr<re::pathprocessing::QuadraticBezierBVH::Node>::reset[abi:nn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::unique_ptr<re::pathprocessing::QuadraticBezierBVH::Node>::reset[abi:nn200100](v2 + 16, 0);
    std::unique_ptr<re::pathprocessing::QuadraticBezierBVH::Node>::reset[abi:nn200100](v2 + 8, 0);

    JUMPOUT(0x1E6906520);
  }

  return result;
}

void std::vector<re::pathprocessing::Bounds2<float>>::__append(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v3) >> 4)
  {
    if (a2)
    {
      v9 = &v3[2 * a2];
      v10 = vneg_f32(0x7F0000007FLL);
      do
      {
        *v3 = v10;
        v3[1] = 0x7F0000007FLL;
        v3 += 2;
      }

      while (v3 != v9);
      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = v3 - *a1;
    v6 = a2 + (v5 >> 4);
    if (v6 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v7 = v4 - *a1;
    if (v7 >> 3 > v6)
    {
      v6 = v7 >> 3;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 16 * (v5 >> 4);
    v12 = (v11 + 16 * a2);
    v13 = vneg_f32(0x7F0000007FLL);
    v14 = v11;
    do
    {
      *v14 = v13;
      v14[1] = 0x7F0000007FLL;
      v14 += 2;
    }

    while (v14 != v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

const void **std::__split_buffer<re::pathprocessing::QuadraticBezierBVH::Node const**>::emplace_front<re::pathprocessing::QuadraticBezierBVH::Node const**>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

uint64_t std::deque<re::pathprocessing::QuadraticBezierBVH::Node const*>::~deque[abi:nn200100](uint64_t a1)
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
    v5 = 256;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 512;
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

void *std::deque<re::pathprocessing::QuadraticBezierBVH::Node const*>::push_back(void *result, void *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v4) << 6) - 1;
  }

  v9 = result[4];
  v8 = result[5];
  v10 = v8 + v9;
  if (v7 == v8 + v9)
  {
    if (v9 < 0x200)
    {
      v11 = result[3];
      v12 = &v11[-*result];
      if (v6 < v12)
      {
        if (v11 != v5)
        {
          operator new();
        }

        operator new();
      }

      if (v11 == *result)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12 >> 2;
      }

      v15 = v3;
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::Node const**>>(v13);
    }

    result[4] = v9 - 512;
    *&v14 = *v4;
    result[1] = v4 + 8;
    result = std::__split_buffer<re::pathprocessing::Node const**>::emplace_back<re::pathprocessing::Node const**&>(result, &v14);
    v4 = v3[1];
    v8 = v3[5];
    v10 = v3[4] + v8;
  }

  *(*&v4[(v10 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v10 & 0x1FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void re::pathprocessing::PathTopologyGenerator::getLoops(uint64_t *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v503 = *MEMORY[0x1E69E9840];
  re::pathprocessing::BezierGraphInfo::BezierGraphInfo(&v454, a1);
  v4 = re::pathprocessing::HDSMesh::HDSMesh(&v460, &v454);
  v472[0] = 0;
  v472[1] = 0;
  v473 = 0;
  v465 = 0u;
  v466 = 0u;
  v467 = 0u;
  v468 = 0u;
  v469 = 0u;
  v470 = 0u;
  v471 = 0;
  v5 = v456;
  v6 = v457;
  if (v456 == v457)
  {
    goto LABEL_159;
  }

  if (v454 != v455 && v458 != v459 && v464 == 1)
  {
    LOBYTE(v481) = 0;
    std::vector<BOOL>::vector(&__p, (v463 - v462) >> 4);
    *&v500 = 0;
    v8 = v462;
    v7 = v463;
    if (v463 != v462)
    {
      v9 = 0;
      v10 = 0uLL;
      do
      {
        if (((*(__p + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          v11 = v467;
          if (v467 >= *(&v467 + 1))
          {
            v13 = *(&v466 + 1);
            v14 = v467 - *(&v466 + 1);
            v15 = 0xCCCCCCCCCCCCCCCDLL * ((v467 - *(&v466 + 1)) >> 4) + 1;
            if (v15 > 0x333333333333333)
            {
              std::string::__throw_length_error[abi:nn200100]();
            }

            if (0x999999999999999ALL * ((*(&v467 + 1) - *(&v466 + 1)) >> 4) > v15)
            {
              v15 = 0x999999999999999ALL * ((*(&v467 + 1) - *(&v466 + 1)) >> 4);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((*(&v467 + 1) - *(&v466 + 1)) >> 4) >= 0x199999999999999)
            {
              v16 = 0x333333333333333;
            }

            else
            {
              v16 = v15;
            }

            if (v16)
            {
              if (v16 <= 0x333333333333333)
              {
                operator new();
              }

LABEL_582:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v17 = 16 * ((v467 - *(&v466 + 1)) >> 4);
            *(v17 + 64) = 0;
            *(v17 + 72) = 0;
            *v17 = -1;
            *(v17 + 8) = -1;
            *(v17 + 16) = v10;
            *(v17 + 32) = v10;
            *(v17 + 48) = v10;
            v18 = v17 - v14;
            if (v13 != v11)
            {
              v19 = v13;
              v20 = v18;
              do
              {
                *v20 = *v19;
                *(v20 + 24) = 0;
                *(v20 + 32) = 0;
                *(v20 + 16) = 0;
                *(v20 + 16) = *(v19 + 1);
                *(v20 + 32) = v19[4];
                v19[2] = 0;
                v19[3] = 0;
                v19[4] = 0;
                *(v20 + 40) = 0;
                *(v20 + 48) = 0;
                *(v20 + 56) = 0;
                *(v20 + 40) = *(v19 + 5);
                *(v20 + 56) = v19[7];
                v19[5] = 0;
                v19[6] = 0;
                v19[7] = 0;
                *(v20 + 64) = *(v19 + 4);
                v19 += 10;
                v20 += 80;
              }

              while (v19 != v11);
              do
              {
                std::allocator<re::pathprocessing::FaceGroup>::destroy[abi:nn200100](v13);
                v13 += 10;
              }

              while (v13 != v11);
              v13 = *(&v466 + 1);
            }

            v12 = v17 + 80;
            *(&v466 + 1) = v18;
            v467 = v12;
            if (v13)
            {
              operator delete(v13);
            }
          }

          else
          {
            *(v467 + 64) = 0;
            *(v11 + 72) = 0;
            *v11 = -1;
            *(v11 + 8) = -1;
            *(v11 + 16) = v10;
            *(v11 + 32) = v10;
            v12 = v11 + 80;
            *(v11 + 48) = v10;
          }

          *&v467 = v12;
          std::vector<unsigned long>::push_back[abi:nn200100]((v12 - 64), &v500);
          *(__p + ((v500 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v500;
          *&v497 = v500;
          memset(v491, 0, sizeof(v491));
          std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(v491, &v497, 1uLL);
          v481 = v491[0];
          v482 = v491[1];
          memset(v491, 0, sizeof(v491));
          *v483 = v491[2];
          std::deque<unsigned long>::~deque[abi:nn200100](v491);
          v21 = *&v483[8];
          if (*&v483[8])
          {
            v22 = (v12 - 40);
            do
            {
              v23 = v21 - 1;
              v24 = *(*(*(&v481 + 1) + (((*v483 + v23) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v483 + v23) & 0x1FF));
              *&v483[8] = v23;
              std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v481, 1);
              v25 = (v462 + 16 * v24);
              v26 = *v25;
              do
              {
                v27 = v460 + 48 * v26;
                v28 = v460 + 48 * *(v27 + 3);
                if (((*(__p + ((*v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v28) & 1) == 0)
                {
                  std::deque<unsigned long>::push_back(&v481, v460 + 6 * *(v27 + 3));
                  *(__p + ((*v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v28;
                  std::vector<unsigned long>::push_back[abi:nn200100]((v12 - 64), v28);
                }

                v30 = *(v12 - 32);
                v29 = *(v12 - 24);
                if (v30 >= v29)
                {
                  v32 = *v22;
                  v33 = v30 - *v22;
                  v34 = v33 >> 3;
                  v35 = (v33 >> 3) + 1;
                  if (v35 >> 61)
                  {
LABEL_578:
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v36 = v29 - v32;
                  if (v36 >> 2 > v35)
                  {
                    v35 = v36 >> 2;
                  }

                  v37 = v36 >= 0x7FFFFFFFFFFFFFF8;
                  v38 = 0x1FFFFFFFFFFFFFFFLL;
                  if (!v37)
                  {
                    v38 = v35;
                  }

                  if (v38)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v12 - 40, v38);
                  }

                  *(8 * v34) = v26;
                  v31 = 8 * v34 + 8;
                  memcpy(0, v32, v33);
                  v39 = *(v12 - 40);
                  *(v12 - 40) = 0;
                  *(v12 - 32) = v31;
                  *(v12 - 24) = 0;
                  if (v39)
                  {
                    operator delete(v39);
                  }
                }

                else
                {
                  *v30 = v26;
                  v31 = (v30 + 8);
                }

                *(v12 - 32) = v31;
                v26 = *(v27 + 1);
              }

              while (v26 != *v25);
              v21 = *&v483[8];
            }

            while (*&v483[8]);
          }

          std::deque<unsigned long>::~deque[abi:nn200100](&v481);
          v9 = v500;
          v8 = v462;
          v7 = v463;
          v10 = 0uLL;
        }

        *&v500 = ++v9;
      }

      while (v9 < (v7 - v8) >> 4);
    }

    if (__p)
    {
      operator delete(__p);
    }

    v40 = 0x8E38E38E38E38E39 * ((v455 - v454) >> 3);
    v41 = v466;
    v42 = v465;
    if (v40 > (v466 - v465) >> 2)
    {
      if (v465)
      {
        *(&v465 + 1) = v465;
        operator delete(v465);
        v41 = 0;
        v465 = 0uLL;
        *&v466 = 0;
      }

      if (!(v40 >> 62))
      {
        v43 = v41 >> 1;
        if (v41 >> 1 <= v40)
        {
          v43 = v40;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v44 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v44 = v43;
        }

        std::vector<int>::__vallocate[abi:nn200100](&v465, v44);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v45 = *(&v465 + 1);
    v46 = *(&v465 + 1) - v465;
    v47 = (*(&v465 + 1) - v465) >> 2;
    if (v47 >= v40)
    {
      v48 = 0x8E38E38E38E38E39 * ((v455 - v454) >> 3);
    }

    else
    {
      v48 = (*(&v465 + 1) - v465) >> 2;
    }

    if (v48)
    {
      bzero(v465, 4 * v48);
    }

    v37 = v40 >= v47;
    v49 = v40 - v47;
    if (v49 != 0 && v37)
    {
      bzero(v45, ((4 * v40 - v46 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v50 = &v45[4 * v49];
    }

    else
    {
      v50 = &v42[4 * v40];
    }

    *(&v465 + 1) = v50;
    v51 = v50 - v42;
    if (v50 != v42)
    {
      v52 = 0;
      v53 = v51 >> 2;
      v54 = v454;
      if (v53 <= 1)
      {
        v53 = 1;
      }

      do
      {
        v55 = (v54 + 72 * v52);
        v56 = v55[1];
        if (v55[2] != v56)
        {
          v57 = v55[4];
          v58 = v55[5];
          v59 = (v56 + 8 * (v57 >> 9));
          v60 = *v59;
          v61 = &(*v59)[8 * (v57 & 0x1FF)];
          v62 = *(v56 + (((v58 + v57) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v58 + v57) & 0x1FF);
          if (v61 != v62)
          {
            v63 = *a1;
            v64 = *a2;
            v65 = *&v42[4 * v52];
            do
            {
              v66 = (v63 + 24 * *v61);
              v67 = *(v64 + 4 * *v61);
              v65 = v65 + ((-COERCE_FLOAT(HIDWORD(*v66)) * COERCE_FLOAT(*&v66[2])) + (COERCE_FLOAT(*v66) * COERCE_FLOAT(HIDWORD(*&v66[2])))) * 0.5;
              *&v42[4 * v52] = v65;
              if (v67 == 3)
              {
                v68 = vsub_f32(v66[1], *v66);
                v69 = vsub_f32(v66[2], *v66);
                v65 = v65 + (((-v68.f32[1] * v69.f32[0]) + (v68.f32[0] * v69.f32[1])) * 0.33333);
                *&v42[4 * v52] = v65;
              }

              v61 += 8;
              if (v61 - v60 == 4096)
              {
                v70 = v59[1];
                ++v59;
                v60 = v70;
                v61 = v70;
              }
            }

            while (v61 != v62);
          }
        }

        ++v52;
      }

      while (v52 != v53);
    }

    v71 = *(&v466 + 1);
    v72 = v462;
    if (v467 != *(&v466 + 1))
    {
      v73 = 0;
      v74 = v460;
      v75 = v454;
      v76 = 0xCCCCCCCCCCCCCCCDLL * ((v467 - *(&v466 + 1)) >> 4);
      if (v76 <= 1)
      {
        v76 = 1;
      }

      do
      {
        v77 = (v71 + 80 * v73);
        v78 = v77[2];
        v79 = v77[3];
        v80 = v79 - v78;
        if (v79 != v78)
        {
          v81 = 0;
          v82 = v80 >> 3;
          if (v82 <= 1)
          {
            v82 = 1;
          }

          v83 = INFINITY;
          do
          {
            v84 = 0;
            v85 = *(v78 + 8 * v81);
            v86 = &v72[2 * v85];
            v87 = 0.0;
            v88 = *v86;
            do
            {
              v89 = &v74[48 * v88];
              v90 = *&v42[4 * *(v89 + 4)];
              if (*(v89 + 10))
              {
                v90 = -v90;
              }

              v87 = v87 + v90;
              v88 = *(v89 + 1);
              ++v84;
            }

            while (v88 != *v86);
            if (v87 < v83)
            {
              *v77 = v85;
              v83 = v87;
            }

            if (fabsf(v87) < 0.0001 && v84 <= 2)
            {
              v86[1] |= 8uLL;
            }

            if (v84 == 1)
            {
              v86[1] |= 4uLL;
            }

            ++v81;
          }

          while (v81 != v82);
        }

        v72[2 * *v77 + 1] |= 1uLL;
        v92 = v72[2 * *v77];
        v93 = INFINITY;
        v94 = v92;
        do
        {
          v95 = &v74[48 * v94];
          v96 = (v75 + 72 * *(v95 + 4));
          v97 = v96[1];
          if (v96[2] != v97)
          {
            v98 = v96[4];
            v99 = v96[5];
            v100 = (v97 + 8 * (v98 >> 9));
            v101 = *v100;
            v102 = &(*v100)[8 * (v98 & 0x1FF)];
            v103 = *(v97 + (((v99 + v98) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v99 + v98) & 0x1FF);
            if (v102 != v103)
            {
              v104 = *a1 + 4;
              do
              {
                v105 = 0;
                v106 = *v102;
                v107 = v104 + 24 * *v102;
                v108 = 1;
                do
                {
                  v109 = v108;
                  v110 = *(v107 + 8 * v105);
                  if (v110 < v93)
                  {
                    v77[8] = v106;
                    v77[9] = v105;
                    v93 = v110;
                  }

                  v108 = 0;
                  v105 = 2;
                }

                while ((v109 & 1) != 0);
                if (++v102 - v101 == 4096)
                {
                  v111 = v100[1];
                  ++v100;
                  v101 = v111;
                  v102 = v111;
                }
              }

              while (v102 != v103);
            }
          }

          v94 = *(v95 + 1);
        }

        while (v94 != v92);
        ++v73;
      }

      while (v73 != v76);
    }

    v112 = *(&v469 + 1);
    v113 = v463 - v72;
    v114 = (v463 - v72) >> 4;
    v115 = *(&v470 + 1);
    if (v114 > (*(&v470 + 1) - *(&v469 + 1)) >> 2)
    {
      if (*(&v469 + 1))
      {
        *&v470 = *(&v469 + 1);
        operator delete(*(&v469 + 1));
        v115 = 0;
        *(&v469 + 1) = 0;
        v470 = 0uLL;
      }

      if (!(v114 >> 62))
      {
        v116 = v115 >> 1;
        if (v115 >> 1 <= v114)
        {
          v116 = v114;
        }

        if (v115 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v117 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v117 = v116;
        }

        std::vector<int>::__vallocate[abi:nn200100](&v469 + 8, v117);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    v118 = v470;
    v119 = v470 - *(&v469 + 1);
    v120 = (v470 - *(&v469 + 1)) >> 2;
    if (v120 >= v114)
    {
      v121 = v114;
    }

    else
    {
      v121 = (v470 - *(&v469 + 1)) >> 2;
    }

    if (v121)
    {
      bzero(*(&v469 + 1), 4 * v121);
    }

    v37 = v114 >= v120;
    v122 = v114 - v120;
    if (v122 != 0 && v37)
    {
      bzero(v118, (((v113 >> 2) - v119 - 4) & 0xFFFFFFFFFFFFFFFCLL) + 4);
      v123 = &v118[4 * v122];
    }

    else
    {
      v123 = (v112 + 4 * v114);
    }

    *&v470 = v123;
    LOBYTE(v481) = 0;
    std::vector<BOOL>::vector(&__p, v114);
    v124 = *(&v466 + 1);
    for (i = v467; v124 != i; v124 += 10)
    {
      *(__p + ((*v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v124;
      *&v500 = *v124;
      memset(v491, 0, sizeof(v491));
      std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(v491, &v500, 1uLL);
      v481 = v491[0];
      v482 = v491[1];
      memset(v491, 0, sizeof(v491));
      *v483 = v491[2];
      std::deque<unsigned long>::~deque[abi:nn200100](v491);
      while (*&v483[8])
      {
        v126 = *(*(*(&v481 + 1) + (((*v483 + *&v483[8] - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v483 + *&v483[8] - 1) & 0x1FF));
        --*&v483[8];
        std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v481, 1);
        v127 = (v462 + 16 * v126);
        v128 = *v127;
        v129 = *(*(&v469 + 1) + 4 * v126);
        v130 = __p;
        v131 = *v127;
        do
        {
          v132 = v460 + 48 * v131;
          v133 = v460 + 48 * *(v132 + 3);
          if (((*(v130 + ((*v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *v133) & 1) == 0)
          {
            std::deque<unsigned long>::push_back(&v481, v460 + 6 * *(v132 + 3));
            v130 = __p;
            *(__p + ((*v133 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *v133;
            if (*(v133 + 10))
            {
              v134 = v129 - 1;
            }

            else
            {
              v134 = v129 + 1;
            }

            *(*(&v469 + 1) + 4 * *v133) = v134;
            v128 = *v127;
          }

          v131 = *(v132 + 1);
        }

        while (v131 != v128);
      }

      std::deque<unsigned long>::~deque[abi:nn200100](&v481);
    }

    v4 = __p;
    if (__p)
    {
      operator delete(__p);
    }

    v5 = v456;
    v6 = v457;
  }

  if (v5 == v6 || v454 == v455 || v458 == v459 || v464 != 1)
  {
LABEL_159:
    v141 = v481;
    v142 = v482;
    *a4 = 0;
    *(a4 + 8) = 3;
    *(a4 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
    *(a4 + 24) = v141;
    *(a4 + 40) = v142;
    goto LABEL_160;
  }

  v135 = 0xCCCCCCCCCCCCCCCDLL * ((v467 - *(&v466 + 1)) >> 4);
  v136 = *(&v468 + 1);
  v137 = (*(&v468 + 1) - v468) >> 4;
  if (v135 > v137)
  {
    v138 = v135 - v137;
    if (v135 - v137 > (v469 - *(&v468 + 1)) >> 4)
    {
      if (v135 >> 60)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v139 = v469 - v468;
      if ((v469 - v468) >> 3 > v135)
      {
        v135 = v139 >> 3;
      }

      if (v139 >= 0x7FFFFFFFFFFFFFF0)
      {
        v140 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v140 = v135;
      }

      if (!(v140 >> 60))
      {
        operator new();
      }

      goto LABEL_582;
    }

    memset(*(&v468 + 1), 255, 16 * v138);
    v152 = v136 + 16 * v138;
    goto LABEL_191;
  }

  if (v135 < v137)
  {
    v152 = v468 - 0x3333333333333330 * ((v467 - *(&v466 + 1)) >> 4);
LABEL_191:
    *(&v468 + 1) = v152;
  }

  *&v491[0] = a1;
  memset(v491 + 8, 0, 32);
  re::pathprocessing::QuadraticBezierBVH::build(v491);
  LOBYTE(v481) = 0;
  std::vector<BOOL>::vector(&__p, 0x8E38E38E38E38E39 * ((v455 - v454) >> 3));
  v153 = *(&v466 + 1);
  v154 = v467;
  if (v467 != *(&v466 + 1))
  {
    v155 = 0;
    do
    {
      v481 = 0uLL;
      *&v482 = 0;
      v156 = v153 + 80 * v155;
      v157 = *(v156 + 40);
      v158 = *(v156 + 48);
      while (v157 != v158)
      {
        v159 = *(v460 + 6 * *v157 + 4);
        v160 = *(__p + 8 * (v159 >> 6));
        if (((1 << v159) & v160) == 0)
        {
          *(__p + 8 * (v159 >> 6)) = v160 | (1 << v159);
          v161 = (v454 + 72 * v159);
          v162 = v161[1];
          if (v161[2] != v162)
          {
            v163 = v161[4];
            v164 = (v162 + 8 * (v163 >> 9));
            v165 = (*v164 + 8 * (v163 & 0x1FF));
            v166 = *(v162 + (((v161[5] + v163) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v161[5] + v163) & 0x1FF);
            while (v165 != v166)
            {
              v167 = *v165++;
              *&v500 = v167;
              std::vector<unsigned long>::push_back[abi:nn200100](&v481, &v500);
              if ((v165 - *v164) == 4096)
              {
                v168 = v164[1];
                ++v164;
                v165 = v168;
              }
            }
          }
        }

        ++v157;
      }

      re::pathprocessing::QuadraticBezierBVH::buildGroup(v491, &v481);
      if (v481)
      {
        *(&v481 + 1) = v481;
        operator delete(v481);
      }

      ++v155;
      v153 = *(&v466 + 1);
      v154 = v467;
    }

    while (v155 < 0xCCCCCCCCCCCCCCCDLL * ((v467 - *(&v466 + 1)) >> 4));
  }

  if (v154 != v153)
  {
    v169 = 0;
    v170 = 0;
    v171 = 0;
    v172 = vneg_f32(0x7F0000007FLL);
    do
    {
      *&v481 = -1;
      *(&v481 + 1) = -1;
      *v483 = 0;
      v482 = 0uLL;
      *&v483[8] = v172;
      *&v500 = 0xBF80000000000000;
      if (re::pathprocessing::QuadraticBezierBVH::intersect(v491))
      {
        v173 = (*a1 + 24 * *(&v481 + 1));
        v174 = v173[1];
        v175 = v173[2];
        v176 = vadd_f32(vmul_n_f32(v175, *&v483[12]), vsub_f32(vmul_n_f32(*v173, *&v483[12] + -1.0), vmul_n_f32(v174, (*&v483[12] * 2.0) + -1.0)));
        v177 = vadd_f32(v176, v176);
        if (v177.f32[0] == 0.0)
        {
          v178 = vadd_f32(v175, vsub_f32(*v173, vadd_f32(v174, v174)));
          v179 = vadd_f32(v178, v178).u32[0];
          if (*&v483[12] == 1.0 || *&v483[12] > 0.0 && v177.f32[1] < 0.0)
          {
            v177.i32[0] = v179 ^ 0x80000000;
          }

          else
          {
            v177.i32[0] = v179;
          }
        }

        v180 = (v460 + 48 * ((v177.f32[0] <= 0.0) | (2 * *(v458 + *(&v481 + 1)))));
        v181 = *v180;
        v182 = *(v462 + 2 * *v180 + 1);
        if ((v182 & 8) != 0)
        {
          if ((v182 & 4) != 0)
          {
            v183 = v180[3];
          }

          else
          {
            v183 = *(v460 + 6 * v180[1] + 3);
          }

          v181 = *(v460 + 6 * v183);
        }

        v184 = (v468 + v170);
        *v184 = v481;
        v184[1] = v181;
      }

      ++v171;
      v170 += 16;
      v169 += 80;
    }

    while (v171 < 0xCCCCCCCCCCCCCCCDLL * ((v467 - *(&v466 + 1)) >> 4));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (*&v491[1])
  {
    *(&v491[1] + 1) = *&v491[1];
    operator delete(*&v491[1]);
  }

  v185 = *(&v491[0] + 1);
  *(&v491[0] + 1) = 0;
  if (v185)
  {
    re::pathprocessing::QuadraticBezierBVH::Node::~Node(v185);
    MEMORY[0x1E6906520]();
  }

  v186 = v468;
  v187 = (*(&v468 + 1) - v468) >> 4;
  std::vector<std::vector<unsigned long>>::vector[abi:nn200100](v491, v187);
  v482 = 0u;
  *v483 = 0u;
  v481 = 0u;
  LOBYTE(v500) = 0;
  std::vector<BOOL>::vector(&__p, v187);
  *&v500 = 0;
  if (*(&v186 + 1) != v186)
  {
    v188 = 0;
    do
    {
      v189 = *(v468 + 16 * v188);
      if (v189 == -1)
      {
        std::deque<unsigned long>::push_back(&v481, &v500);
      }

      else
      {
        std::vector<unsigned long>::push_back[abi:nn200100]((*&v491[0] + 24 * v189), &v500);
      }

      v188 = v500 + 1;
      *&v500 = v188;
    }

    while (v188 < v187);
  }

  v479 = 0;
  v480 = 0;
  v478 = 0;
  std::vector<unsigned long>::reserve(&v478, v187);
  for (j = *&v483[8]; *&v483[8]; j = *&v483[8])
  {
    v191 = j - 1;
    *&v500 = *(*(*(&v481 + 1) + (((*v483 + v191) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*v483 + v191) & 0x1FF));
    *&v483[8] = v191;
    std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v481, 1);
    std::vector<unsigned long>::push_back[abi:nn200100](&v478, &v500);
    v192 = *&v491[0] + 24 * v500;
    v193 = *v192;
    v194 = *(v192 + 8);
    while (v193 != v194)
    {
      v195 = *v193++;
      *&v497 = v195;
      std::deque<unsigned long>::push_back(&v481, &v497);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::deque<unsigned long>::~deque[abi:nn200100](&v481);
  *&v481 = v491;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v481);
  v196 = v478;
  if (v479 != v478)
  {
    v197 = 0;
    v198 = (v479 - v478) >> 3;
    if (v198 <= 1)
    {
      v198 = 1;
    }

    v199 = *(&v469 + 1);
    v200 = v468;
    v201 = *(&v466 + 1);
    do
    {
      v202 = v196[v197];
      v203 = (v200 + 16 * v202);
      if (*v203 != -1)
      {
        v204 = v201 + 80 * v202;
        v205 = *(v204 + 16);
        v206 = *(v204 + 24);
        if (v205 != v206)
        {
          v207 = *(v199 + 4 * v203[1]);
          do
          {
            v208 = *v205++;
            *(v199 + 4 * v208) += v207;
          }

          while (v205 != v206);
        }
      }

      ++v197;
    }

    while (v197 != v198);
  }

  LOBYTE(v481) = 0;
  std::vector<BOOL>::vector(&v477, (v463 - v462) >> 4);
  v209 = v462;
  if (a3)
  {
    if (v463 != v462)
    {
      v210 = 0;
      v211 = (v463 - v462) >> 4;
      v212 = *(&v469 + 1);
      v213 = v477;
      if (v211 <= 1)
      {
        v211 = 1;
      }

      v214 = (v462 + 8);
      do
      {
        v215 = v210 >> 6;
        v216 = 1 << v210;
        if (*(v212 + 4 * v210))
        {
          v213[v215] |= v216;
          v218 = &v209[16 * v210 + 8];
          v217 = *v214 | 2;
        }

        else
        {
          v213[v215] &= ~v216;
          v217 = *v214 & 0xFFFFFFFFFFFFFFFDLL;
          v218 = v214;
        }

        *v218 = v217;
        ++v210;
        v214 += 2;
      }

      while (v211 != v210);
    }
  }

  else if (v463 != v462)
  {
    v219 = 0;
    v220 = (v463 - v462) >> 4;
    v221 = *(&v469 + 1);
    v222 = v477;
    if (v220 <= 1)
    {
      v220 = 1;
    }

    v223 = (v462 + 8);
    do
    {
      v224 = v219 >> 6;
      v225 = 1 << v219;
      if (*(v221 + 4 * v219))
      {
        v222[v224] |= v225;
        v226 = &v209[16 * v219 + 8];
        v227 = *v223 | 2;
      }

      else
      {
        v222[v224] &= ~v225;
        v227 = *v223 & 0xFFFFFFFFFFFFFFFDLL;
        v226 = v223;
      }

      *v226 = v227;
      ++v219;
      v223 += 2;
    }

    while (v220 != v219);
  }

  v474 = 0u;
  v475 = 0u;
  v476 = 1065353216;
  v228 = v478;
  if (v479 != v478)
  {
    v229 = 0;
    do
    {
      v230 = v228[v229];
      *&v491[0] = v230;
      v231 = *(v468 + 16 * v230 + 8);
      if (v231 == -1 || ((*(v477 + ((v231 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v231) & 1) == 0)
      {
        *&v481 = v491;
        std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v474, v230);
      }

      else
      {
        *&__p = v230;
        *&v500 = -1;
        v232 = vcnt_s8(*(&v474 + 8));
        v232.i16[0] = vaddlv_u8(v232);
        v233 = *(&v474 + 1) - 1;
        do
        {
          do
          {
LABEL_274:
            v234 = (v468 + 16 * v230);
            *&v500 = v234[1];
            v230 = *v234;
            *&__p = *v234;
          }

          while (!*(&v474 + 1));
          if (v232.u32[0] > 1uLL)
          {
            v235 = v230;
            if (v230 >= *(&v474 + 1))
            {
              v235 = v230 % *(&v474 + 1);
            }
          }

          else
          {
            v235 = v230 & v233;
          }

          v236 = *(v474 + 8 * v235);
        }

        while (!v236);
        do
        {
          while (1)
          {
            v236 = *v236;
            if (!v236)
            {
              goto LABEL_274;
            }

            v237 = v236[1];
            if (v237 == v230)
            {
              break;
            }

            if (v232.u32[0] > 1uLL)
            {
              if (v237 >= *(&v474 + 1))
              {
                v237 %= *(&v474 + 1);
              }
            }

            else
            {
              v237 &= v233;
            }

            if (v237 != v235)
            {
              goto LABEL_274;
            }
          }
        }

        while (v236[2] != v230);
        *&v481 = &__p;
        v238 = std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(&v474, v230);
        *&v481 = &v500;
        v239 = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(v238 + 3, v500);
        std::vector<unsigned long>::push_back[abi:nn200100](v239 + 3, v491);
      }

      ++v229;
      v228 = v478;
    }

    while (v229 < (v479 - v478) >> 3);
  }

  v489 = 0uLL;
  v490 = 0;
  v487 = 0;
  v486 = 0;
  v488 = 0;
  if (v461 != v460)
  {
    v240 = 0xAAAAAAAAAAAAAAABLL * ((v461 - v460) >> 4);
    if (v240 <= 0x555555555555555)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::HalfEdge>>(&v486, v240);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  __p = 0u;
  v494 = 0u;
  v495 = 1065353216;
  v242 = v462;
  v241 = v463;
  if (v463 != v462)
  {
    v243 = 0;
    v244 = 0;
    v245.n128_u64[0] = -1;
    v245.n128_u64[1] = -1;
    while (1)
    {
      v246 = &v242[v243];
      if ((v242[v243 + 8] & 8) == 0)
      {
        goto LABEL_314;
      }

      v247 = *v246;
      v248 = 48 * *v246;
      if (*v248 == -1)
      {
        goto LABEL_314;
      }

      v249 = *(v248 + 8);
      if (v249 == -1)
      {
        goto LABEL_314;
      }

      v250 = *(v248 + 16);
      if (v250 == -1)
      {
        goto LABEL_314;
      }

      v251 = *(v248 + 24);
      if (v251 == -1 || *(v248 + 32) == -1)
      {
        goto LABEL_314;
      }

      if (v250 != v249)
      {
        v471 = 1;
        MEMORY[0x1E6905F60](v472, "Invalid topology for degenerated face\n", v245);
        v500 = 0u;
        v501 = 0u;
        v502 = 1065353216;
        goto LABEL_394;
      }

      v252 = 48 * v251;
      if (v249 != v247)
      {
        break;
      }

      v253 = *(48 * v251 + 8);
      v254 = *(48 * v251 + 0x10);
      *(48 * v254 + 8) = v253;
      *(48 * v253 + 0x10) = v254;
LABEL_313:
      *(v248 + 32) = -1;
      *v248 = v245;
      *(v248 + 16) = v245;
      *(v252 + 32) = -1;
      *v252 = v245;
      *(v252 + 16) = v245;
      v242 = v462;
      v241 = v463;
LABEL_314:
      ++v244;
      v243 += 16;
      if (v244 >= (v241 - v242) >> 4)
      {
        goto LABEL_317;
      }
    }

    v255 = 48 * v249;
    v256 = *(48 * v249 + 0x18);
    v257 = 48 * v256;
    v258 = *(48 * v256 + 8);
    if (v251 == v258)
    {
      v259 = *(48 * v251 + 8);
      v260 = *(48 * v256 + 0x10);
      *(48 * v260 + 8) = v259;
      *(48 * v259 + 0x10) = v260;
      *(v257 + 32) = -1;
      *v257 = v245;
      *(v257 + 16) = v245;
    }

    else
    {
      if (v251 != *(48 * v256 + 0x10))
      {
        *(48 * v251 + 0x18) = v256;
        *(48 * v256 + 0x18) = *(v248 + 24);
        goto LABEL_312;
      }

      v261 = *(48 * v251 + 0x10);
      *(48 * v261 + 8) = v258;
      *(48 * *(48 * v256 + 8) + 0x10) = v261;
      *v257 = v245;
      *(48 * v256 + 0x10) = v245;
      *(48 * v256 + 0x20) = -1;
    }

    *(v252 + 32) = -1;
    *v252 = v245;
    *(v252 + 16) = v245;
LABEL_312:
    v252 = v255;
    goto LABEL_313;
  }

  v242 = v463;
LABEL_317:
  v497 = 0uLL;
  *&v498 = 0;
  LOBYTE(v481) = 0;
  std::vector<BOOL>::vector(v492, (v241 - v242) >> 4);
  v262 = v494;
  if (!v494)
  {
    goto LABEL_368;
  }

  do
  {
    if ((*(v492[0] + ((v262[2] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v262[2]))
    {
      goto LABEL_367;
    }

    v263 = *(&v497 + 1);
    if (*(&v497 + 1) >= v498)
    {
      v265 = 0xAAAAAAAAAAAAAAABLL * ((*(&v497 + 1) - v497) >> 3);
      v266 = v265 + 1;
      if (v265 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
LABEL_579:
        std::string::__throw_length_error[abi:nn200100]();
      }

      if (0x5555555555555556 * ((v498 - v497) >> 3) > v266)
      {
        v266 = 0x5555555555555556 * ((v498 - v497) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v498 - v497) >> 3) >= 0x555555555555555)
      {
        v267 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v267 = v266;
      }

      *v483 = &v497;
      if (v267)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(&v497, v267);
      }

      v268 = (8 * ((*(&v497 + 1) - v497) >> 3));
      *v268 = 0;
      v268[1] = 0;
      v268[2] = 0;
      v264 = 24 * v265 + 24;
      v269 = v268 - (*(&v497 + 1) - v497);
      memcpy(v269, v497, *(&v497 + 1) - v497);
      v270 = v497;
      v271 = v498;
      *&v497 = v269;
      *(&v497 + 1) = v264;
      *&v498 = 0;
      *&v482 = v270;
      *(&v482 + 1) = v271;
      *&v481 = v270;
      *(&v481 + 1) = v270;
      std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(&v481);
    }

    else
    {
      **(&v497 + 1) = 0;
      *(v263 + 8) = 0;
      v264 = v263 + 24;
      *(v263 + 16) = 0;
    }

    *(&v497 + 1) = v264;
    v272 = (v264 - 24);
    *&v500 = v262[2];
    memset(v491, 0, sizeof(v491));
    std::deque<unsigned long>::__append_with_size[abi:nn200100]<unsigned long const*>(v491, &v500, 1uLL);
    v481 = v491[0];
    v482 = v491[1];
    memset(v491, 0, sizeof(v491));
    *v483 = v491[2];
    std::deque<unsigned long>::~deque[abi:nn200100](v491);
    v273 = *&v483[8];
    do
    {
      v274 = v273 - 1;
      v275 = *(*(*(&v481 + 1) + (((v274 + *v483) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v274 + *v483) & 0x1FF));
      *&v483[8] = v274;
      std::deque<unsigned long>::__maybe_remove_back_spare[abi:nn200100](&v481, 1);
      v276 = *(v492[0] + (v275 >> 6));
      if ((v276 & (1 << v275)) != 0)
      {
        goto LABEL_332;
      }

      *(v492[0] + (v275 >> 6)) = v276 | (1 << v275);
      v278 = *(v264 - 16);
      v277 = *(v264 - 8);
      if (v278 >= v277)
      {
        v280 = *v272;
        v281 = v278 - *v272;
        v282 = v281 >> 3;
        v283 = (v281 >> 3) + 1;
        if (v283 >> 61)
        {
          goto LABEL_578;
        }

        v284 = v277 - v280;
        if (v284 >> 2 > v283)
        {
          v283 = v284 >> 2;
        }

        if (v284 >= 0x7FFFFFFFFFFFFFF8)
        {
          v285 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v285 = v283;
        }

        if (v285)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v264 - 24, v285);
        }

        *(8 * v282) = v275;
        v279 = 8 * v282 + 8;
        memcpy(0, v280, v281);
        v286 = *(v264 - 24);
        *(v264 - 24) = 0;
        *(v264 - 16) = v279;
        *(v264 - 8) = 0;
        if (v286)
        {
          operator delete(v286);
        }
      }

      else
      {
        *v278 = v275;
        v279 = (v278 + 8);
      }

      *(v264 - 16) = v279;
      if (!*(&__p + 1))
      {
        goto LABEL_577;
      }

      v287 = vcnt_s8(*(&__p + 8));
      v287.i16[0] = vaddlv_u8(v287);
      if (v287.u32[0] > 1uLL)
      {
        v288 = v275;
        if (v275 >= *(&__p + 1))
        {
          v288 = v275 % *(&__p + 1);
        }
      }

      else
      {
        v288 = (*(&__p + 1) - 1) & v275;
      }

      v289 = *(__p + 8 * v288);
      if (!v289 || (v290 = *v289) == 0)
      {
LABEL_577:
        abort();
      }

      while (1)
      {
        v291 = v290[1];
        if (v291 == v275)
        {
          break;
        }

        if (v287.u32[0] > 1uLL)
        {
          if (v291 >= *(&__p + 1))
          {
            v291 %= *(&__p + 1);
          }
        }

        else
        {
          v291 &= *(&__p + 1) - 1;
        }

        if (v291 != v288)
        {
          goto LABEL_577;
        }

LABEL_361:
        v290 = *v290;
        if (!v290)
        {
          goto LABEL_577;
        }
      }

      if (v290[2] != v275)
      {
        goto LABEL_361;
      }

      v292 = v290[3];
      v293 = v290[4];
      while (v292 != v293)
      {
        *&v491[0] = *v292;
        if (((*(v492[0] + ((*&v491[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> SLOBYTE(v491[0])) & 1) == 0)
        {
          std::deque<unsigned long>::push_back(&v481, v491);
        }

        ++v292;
      }

LABEL_332:
      v273 = *&v483[8];
    }

    while (*&v483[8]);
    std::deque<unsigned long>::~deque[abi:nn200100](&v481);
LABEL_367:
    v262 = *v262;
  }

  while (v262);
LABEL_368:
  v500 = 0u;
  v501 = 0u;
  v502 = 1065353216;
  v294 = *(&v497 + 1);
  v295 = v497;
  if (*(&v497 + 1) == v497)
  {
    goto LABEL_391;
  }

  v296 = 0;
  while (2)
  {
    v297 = (v295 + 24 * v296);
    v298 = *v297;
    v299 = v297[1];
    if (*v297 == v299)
    {
      goto LABEL_390;
    }

    while (2)
    {
      v300 = *v298;
      if (!*(&v500 + 1))
      {
        goto LABEL_387;
      }

      v301 = vcnt_s8(*(&v500 + 8));
      v301.i16[0] = vaddlv_u8(v301);
      if (v301.u32[0] > 1uLL)
      {
        v302 = *v298;
        if (*(&v500 + 1) <= v300)
        {
          v302 = v300 % *(&v500 + 1);
        }
      }

      else
      {
        v302 = (*(&v500 + 1) - 1) & v300;
      }

      v303 = *(v500 + 8 * v302);
      if (!v303 || (v304 = *v303) == 0)
      {
LABEL_387:
        operator new();
      }

      while (2)
      {
        v305 = v304[1];
        if (v305 != v300)
        {
          if (v301.u32[0] > 1uLL)
          {
            if (v305 >= *(&v500 + 1))
            {
              v305 %= *(&v500 + 1);
            }
          }

          else
          {
            v305 &= *(&v500 + 1) - 1;
          }

          if (v305 != v302)
          {
            goto LABEL_387;
          }

          goto LABEL_386;
        }

        if (v304[2] != v300)
        {
LABEL_386:
          v304 = *v304;
          if (!v304)
          {
            goto LABEL_387;
          }

          continue;
        }

        break;
      }

      if (++v298 != v299)
      {
        continue;
      }

      break;
    }

    v294 = *(&v497 + 1);
    v295 = v497;
LABEL_390:
    if (++v296 < 0xAAAAAAAAAAAAAAABLL * ((v294 - v295) >> 3))
    {
      continue;
    }

    break;
  }

LABEL_391:
  if (v492[0])
  {
    operator delete(v492[0]);
  }

  *&v481 = &v497;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v481);
LABEL_394:
  std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(&__p);
  if (v471 == 1)
  {
    v306 = 0;
    v307 = 0;
    v308 = 0;
    v481 = 0uLL;
    *&v482 = 0;
    goto LABEL_553;
  }

  __p = 0u;
  v494 = 0u;
  v495 = 1065353216;
  v497 = 0u;
  v498 = 0u;
  v499 = 1065353216;
  LOBYTE(v481) = 0;
  std::vector<BOOL>::vector(v492, 0xAAAAAAAAAAAAAAABLL * ((v487 - v486) >> 4));
  v309 = v475;
  if (!v475)
  {
    goto LABEL_550;
  }

  while (2)
  {
    v444 = v309;
    v310 = (*(&v466 + 1) + 80 * v309[2]);
    v481 = 0u;
    v482 = 0u;
    *&v483[8] = 0u;
    v484 = 0u;
    *v483 = 1065353216;
    v485 = 1065353216;
    v311 = v310[5];
    v312 = v310[6];
    if (v312 == v311)
    {
      goto LABEL_498;
    }

    v313 = 0;
    while (2)
    {
      v496 = *(v311 + 8 * v313);
      v314 = *(v492[0] + (v496 >> 6));
      if ((v314 & (1 << v496)) != 0)
      {
        goto LABEL_400;
      }

      *(v492[0] + (v496 >> 6)) = v314 | (1 << v496);
      v315 = (v486 + 48 * v496);
      v316 = *v315;
      if (*v315 == -1 || v315[1] == -1 || v315[2] == -1 || v315[3] == -1)
      {
        goto LABEL_400;
      }

      v317 = v315[4] == -1 || v316 == *v310;
      if (v317 || (*(v462 + 16 * v316 + 8) & 2) == 0)
      {
        goto LABEL_400;
      }

      v318 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(v500, *(&v500 + 1), *v315);
      if (!v318)
      {
        *&v491[0] = v315;
        v322 = (std::__hash_table<std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<unsigned long>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v483[8], v316) + 3);
        goto LABEL_442;
      }

      v319 = v318[3];
      if (!*(&v481 + 1))
      {
        goto LABEL_429;
      }

      v320 = vcnt_s8(*(&v481 + 8));
      v320.i16[0] = vaddlv_u8(v320);
      if (v320.u32[0] > 1uLL)
      {
        v321 = v318[3];
        if (*(&v481 + 1) <= v319)
        {
          v321 = v319 % *(&v481 + 1);
        }
      }

      else
      {
        v321 = (*(&v481 + 1) - 1) & v319;
      }

      v323 = *(v481 + 8 * v321);
      if (!v323 || (v324 = *v323) == 0)
      {
LABEL_429:
        operator new();
      }

      while (2)
      {
        v325 = v324[1];
        if (v325 != v319)
        {
          if (v320.u32[0] > 1uLL)
          {
            if (v325 >= *(&v481 + 1))
            {
              v325 %= *(&v481 + 1);
            }
          }

          else
          {
            v325 &= *(&v481 + 1) - 1;
          }

          if (v325 != v321)
          {
            goto LABEL_429;
          }

          goto LABEL_428;
        }

        if (v324[2] != v319)
        {
LABEL_428:
          v324 = *v324;
          if (!v324)
          {
            goto LABEL_429;
          }

          continue;
        }

        break;
      }

      v326 = v324[4];
      v327 = v324[5];
      if (v326 < v327)
      {
        *v326 = 0;
        v326[1] = 0;
        v328 = (v326 + 3);
        v326[2] = 0;
        goto LABEL_441;
      }

      v329 = v324[3];
      v330 = 0xAAAAAAAAAAAAAAABLL * ((v326 - v329) >> 3);
      v331 = v330 + 1;
      if (v330 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_579;
      }

      v332 = 0xAAAAAAAAAAAAAAABLL * ((v327 - v329) >> 3);
      if (2 * v332 > v331)
      {
        v331 = 2 * v332;
      }

      if (v332 >= 0x555555555555555)
      {
        v333 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v333 = v331;
      }

      *&v491[2] = v324 + 3;
      if (v333)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>((v324 + 3), v333);
      }

      v334 = 24 * v330;
      *v334 = 0;
      *(v334 + 8) = 0;
      *(v334 + 16) = 0;
      v328 = 24 * v330 + 24;
      v335 = v324[3];
      v336 = v324[4] - v335;
      v337 = v334 - v336;
      memcpy((v334 - v336), v335, v336);
      v338 = v324[3];
      v324[3] = v337;
      v324[4] = v328;
      v339 = v324[5];
      v324[5] = 0;
      *&v491[1] = v338;
      *(&v491[1] + 1) = v339;
      *(&v491[0] + 1) = v338;
      *&v491[0] = v338;
      std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v491);
LABEL_441:
      v324[4] = v328;
      v322 = (v328 - 24);
LABEL_442:
      v340 = v496;
      do
      {
        v341 = v486;
        *(v492[0] + ((v340 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v340;
        std::vector<unsigned long>::push_back[abi:nn200100](v322, &v496);
        v340 = v341[6 * v340 + 1];
        v496 = v340;
        v311 = v310[5];
      }

      while (v340 != *(v311 + 8 * v313));
      v312 = v310[6];
LABEL_400:
      if (++v313 < ((v312 - v311) >> 3))
      {
        continue;
      }

      break;
    }

    for (k = v482; ; k = *v449)
    {
      v449 = k;
      if (!k)
      {
        break;
      }

      v343 = *(&v489 + 1);
      v344 = v489;
      v345 = *(&v489 + 1) - v489;
      v346 = 0xAAAAAAAAAAAAAAABLL * ((*(&v489 + 1) - v489) >> 4);
      v496 = v346;
      if (*(&v489 + 1) >= v490)
      {
        v348 = v346 + 1;
        if (v346 + 1 > 0x555555555555555)
        {
LABEL_580:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v490 - v489) >> 4) > v348)
        {
          v348 = 0x5555555555555556 * ((v490 - v489) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v490 - v489) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v349 = 0x555555555555555;
        }

        else
        {
          v349 = v348;
        }

        *&v491[2] = &v489;
        if (v349)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>>(v349);
        }

        v350 = (16 * ((*(&v489 + 1) - v489) >> 4));
        v350[1] = 0u;
        v350[2] = 0u;
        *v350 = 0u;
        v347 = 48 * v346 + 48;
        v351 = (48 * v346 - v345);
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>,re::pathprocessing::IslandHalfEdgeLoop*>(v344, v343, v351);
        v352 = v489;
        v353 = v490;
        *&v489 = v351;
        *(&v489 + 1) = v347;
        v490 = 0;
        *&v491[1] = v352;
        *(&v491[1] + 1) = v353;
        *(&v491[0] + 1) = v352;
        *&v491[0] = v352;
        std::__split_buffer<re::pathprocessing::IslandHalfEdgeLoop>::~__split_buffer(v491);
      }

      else
      {
        *(*(&v489 + 1) + 16) = 0u;
        v343[2] = 0u;
        v347 = (v343 + 3);
        *v343 = 0u;
      }

      *(&v489 + 1) = v347;
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,unsigned long &>(&v497, v449[2]);
      v354 = v449[3];
      v355 = v449[4];
      if (v355 - v354 == 24)
      {
        std::vector<unsigned long>::__move_assign(v347 - 48, v354);
      }

      else
      {
        v446 = v347 - 48;
        v447 = v347;
        if (v355 != v354)
        {
          v356 = 0;
          v357 = 0xAAAAAAAAAAAAAAABLL * ((v355 - v354) >> 3);
          v445 = (v347 - 24);
          if (v357 <= 1)
          {
            v357 = 1;
          }

          v448 = v357;
          do
          {
            v358 = v449[3] + 24 * v356;
            v359 = *v358;
            v360 = *(v358 + 8);
            if (*v358 != v360)
            {
              v361 = 0.0;
              do
              {
                v362 = *v359++;
                v363 = v460 + 48 * v362;
                v364 = *(v465 + 4 * *(v363 + 4));
                if (*(v363 + 10))
                {
                  v364 = -v364;
                }

                v361 = v361 + v364;
              }

              while (v359 != v360);
              if (fabsf(v361) >= 0.0001)
              {
                if (v361 <= 0.0)
                {
                  v365 = *(v447 - 16);
                  v366 = *(v447 - 8);
                  if (v365 >= v366)
                  {
                    v368 = 0xAAAAAAAAAAAAAAABLL * ((v365 - *v445) >> 3);
                    v369 = v368 + 1;
                    if (v368 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      goto LABEL_579;
                    }

                    v370 = 0xAAAAAAAAAAAAAAABLL * ((v366 - *v445) >> 3);
                    if (2 * v370 > v369)
                    {
                      v369 = 2 * v370;
                    }

                    if (v370 >= 0x555555555555555)
                    {
                      v371 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v371 = v369;
                    }

                    *&v491[2] = v445;
                    if (v371)
                    {
                      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v445, v371);
                    }

                    v372 = 24 * v368;
                    *v372 = 0;
                    *(v372 + 8) = 0;
                    *(v372 + 16) = 0;
                    v367 = 24 * v368 + 24;
                    v373 = *(v447 - 24);
                    v374 = *(v447 - 16) - v373;
                    v375 = (24 * v368 - v374);
                    memcpy(v375, v373, v374);
                    v376 = *(v447 - 24);
                    *(v447 - 24) = v375;
                    *(&v491[0] + 1) = v376;
                    *(v447 - 16) = v367;
                    *&v491[1] = v376;
                    v377 = *(v447 - 8);
                    *(v447 - 8) = 0;
                    *(&v491[1] + 1) = v377;
                    *&v491[0] = v376;
                    std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v491);
                  }

                  else
                  {
                    *v365 = 0;
                    v365[1] = 0;
                    v367 = (v365 + 3);
                    v365[2] = 0;
                  }

                  *(v447 - 16) = v367;
                  v378 = *v358;
                  if (*(v358 + 8) != *v358)
                  {
                    v379 = 0;
                    v380 = (v367 - 24);
                    v381 = *(v367 - 16);
                    do
                    {
                      v382 = v460 + 48 * v378[v379];
                      v383 = *(v367 - 8);
                      if (v381 >= v383)
                      {
                        v384 = *v380;
                        v385 = v381 - *v380;
                        v386 = (v385 >> 3) + 1;
                        if (v386 >> 61)
                        {
                          goto LABEL_578;
                        }

                        v387 = v383 - v384;
                        if (v387 >> 2 > v386)
                        {
                          v386 = v387 >> 2;
                        }

                        v37 = v387 >= 0x7FFFFFFFFFFFFFF8;
                        v388 = 0x1FFFFFFFFFFFFFFFLL;
                        if (!v37)
                        {
                          v388 = v386;
                        }

                        if (v388)
                        {
                          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long long>>(v367 - 24, v388);
                        }

                        v389 = (8 * (v385 >> 3));
                        *v389 = *(v382 + 3);
                        v381 = (v389 + 1);
                        memcpy(0, v384, v385);
                        v390 = *(v367 - 24);
                        *(v367 - 24) = 0;
                        *(v367 - 16) = v381;
                        *(v367 - 8) = 0;
                        if (v390)
                        {
                          operator delete(v390);
                        }
                      }

                      else
                      {
                        *v381 = *(v382 + 3);
                        v381 += 8;
                      }

                      *(v367 - 16) = v381;
                      ++v379;
                      v378 = *v358;
                    }

                    while (v379 < (*(v358 + 8) - *v358) >> 3);
                  }
                }

                else
                {
                  std::vector<unsigned long>::__move_assign(v446, (v449[3] + 24 * v356));
                }
              }
            }

            ++v356;
          }

          while (v356 != v448);
        }
      }
    }

LABEL_498:
    for (m = v484; m; m = *m)
    {
      v392 = *(&v489 + 1);
      v393 = v489;
      v394 = *(&v489 + 1) - v489;
      v395 = 0xAAAAAAAAAAAAAAABLL * ((*(&v489 + 1) - v489) >> 4);
      v496 = v395;
      if (*(&v489 + 1) >= v490)
      {
        v397 = v395 + 1;
        if (v395 + 1 > 0x555555555555555)
        {
          goto LABEL_580;
        }

        if (0x5555555555555556 * ((v490 - v489) >> 4) > v397)
        {
          v397 = 0x5555555555555556 * ((v490 - v489) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v490 - v489) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v398 = 0x555555555555555;
        }

        else
        {
          v398 = v397;
        }

        *&v491[2] = &v489;
        if (v398)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>>(v398);
        }

        v399 = (16 * ((*(&v489 + 1) - v489) >> 4));
        v399[1] = 0u;
        v399[2] = 0u;
        *v399 = 0u;
        v396 = 48 * v395 + 48;
        v400 = v399 - v394;
        std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>,re::pathprocessing::IslandHalfEdgeLoop*>(v393, v392, (v399 - v394));
        v401 = v489;
        v402 = v490;
        *&v489 = v400;
        *(&v489 + 1) = v396;
        v490 = 0;
        *&v491[1] = v401;
        *(&v491[1] + 1) = v402;
        *(&v491[0] + 1) = v401;
        *&v491[0] = v401;
        std::__split_buffer<re::pathprocessing::IslandHalfEdgeLoop>::~__split_buffer(v491);
      }

      else
      {
        *(*(&v489 + 1) + 16) = 0u;
        v392[2] = 0u;
        v396 = (v392 + 3);
        *v392 = 0u;
      }

      *(&v489 + 1) = v396;
      std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,unsigned long &>(&__p, m[2]);
      std::vector<unsigned long>::__move_assign(v396 - 48, (m + 3));
    }

    v403 = v444[5];
    if (v403)
    {
      do
      {
        v404 = v403[2];
        v405 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(v500, *(&v500 + 1), v404);
        if (v405)
        {
          v406 = *(&v497 + 1);
          v407 = v405[3];
          v408 = v497;
        }

        else
        {
          v406 = *(&__p + 1);
          v408 = __p;
          v407 = v404;
        }

        v409 = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(v408, v406, v407);
        v410 = v403[3];
        v411 = v403[4];
        v450 = v403;
        if (v410 != v411)
        {
          v412 = v489 + 48 * v409[3] + 24;
          do
          {
            v413 = (*(&v466 + 1) + 80 * *v410);
            v414 = v413[5];
            if (v413[6] != v414)
            {
              v415 = 0;
              v416 = v492[0];
              do
              {
                v496 = *(v414 + 8 * v415);
                v417 = v416[v496 >> 6];
                if ((v417 & (1 << v496)) == 0)
                {
                  v416[v496 >> 6] = v417 | (1 << v496);
                  v418 = (v486 + 48 * v496);
                  v419 = *v418;
                  if (*v418 != -1 && v418[1] != -1 && v418[2] != -1 && v418[3] != -1 && v418[4] != -1 && v419 != *v413 && (*(v462 + 16 * v419 + 8) & 2) == 0)
                  {
                    v420 = *(v412 + 8);
                    v421 = *(v412 + 16);
                    if (v420 >= v421)
                    {
                      v423 = 0xAAAAAAAAAAAAAAABLL * ((v420 - *v412) >> 3);
                      v424 = v423 + 1;
                      if (v423 + 1 > 0xAAAAAAAAAAAAAAALL)
                      {
                        goto LABEL_579;
                      }

                      v425 = 0xAAAAAAAAAAAAAAABLL * ((v421 - *v412) >> 3);
                      if (2 * v425 > v424)
                      {
                        v424 = 2 * v425;
                      }

                      if (v425 >= 0x555555555555555)
                      {
                        v426 = 0xAAAAAAAAAAAAAAALL;
                      }

                      else
                      {
                        v426 = v424;
                      }

                      *&v491[2] = v412;
                      if (v426)
                      {
                        std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<unsigned long>>>(v412, v426);
                      }

                      v427 = 24 * v423;
                      *v427 = 0;
                      *(v427 + 8) = 0;
                      *(v427 + 16) = 0;
                      v422 = 24 * v423 + 24;
                      v428 = *(v412 + 8) - *v412;
                      v429 = v427 - v428;
                      memcpy((v427 - v428), *v412, v428);
                      v430 = *v412;
                      *v412 = v429;
                      *(&v491[0] + 1) = v430;
                      *(v412 + 8) = v422;
                      *&v491[1] = v430;
                      v431 = *(v412 + 16);
                      *(v412 + 16) = 0;
                      *(&v491[1] + 1) = v431;
                      *&v491[0] = v430;
                      std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v491);
                    }

                    else
                    {
                      *v420 = 0;
                      v420[1] = 0;
                      v422 = (v420 + 3);
                      v420[2] = 0;
                    }

                    *(v412 + 8) = v422;
                    do
                    {
                      std::vector<unsigned long>::push_back[abi:nn200100]((v422 - 24), &v496);
                      v496 = *(v486 + 6 * v496 + 2);
                      v416 = v492[0];
                      *(v492[0] + ((v496 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v496;
                    }

                    while (v496 != *(v413[5] + 8 * v415));
                  }
                }

                ++v415;
                v414 = v413[5];
              }

              while (v415 < (v413[6] - v414) >> 3);
            }

            ++v410;
          }

          while (v410 != v411);
        }

        v403 = *v450;
      }

      while (*v450);
    }

    std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table(&v483[8]);
    v432 = v482;
    if (v482)
    {
      do
      {
        v433 = *v432;
        *&v491[0] = v432 + 3;
        std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](v491);
        operator delete(v432);
        v432 = v433;
      }

      while (v433);
    }

    v434 = v481;
    *&v481 = 0;
    if (v434)
    {
      operator delete(v434);
    }

    v309 = *v444;
    if (*v444)
    {
      continue;
    }

    break;
  }

LABEL_550:
  v307 = *(&v489 + 1);
  v308 = v489;
  v481 = v489;
  v306 = v490;
  *&v482 = v490;
  v489 = 0uLL;
  v490 = 0;
  if (v492[0])
  {
    operator delete(v492[0]);
  }

  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v497);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&__p);
LABEL_553:
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(&v500);
  if (v486)
  {
    v487 = v486;
    operator delete(v486);
  }

  *&v491[0] = &v489;
  std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](v491);
  if (v471)
  {
    v435 = v491;
  }

  else
  {
    *&v491[0] = v308;
    *(&v491[0] + 1) = v307;
    v435 = &v481;
    *&v491[1] = v306;
  }

  *v435 = 0;
  *(v435 + 1) = 0;
  *(v435 + 2) = 0;
  *&__p = &v481;
  std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](&__p);
  v436 = v475;
  if (v475)
  {
    do
    {
      v437 = *v436;
      std::__hash_table<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,std::vector<re::ProfilerDeferredStatisticCount>>>>::~__hash_table((v436 + 3));
      operator delete(v436);
      v436 = v437;
    }

    while (v437);
  }

  v438 = v474;
  *&v474 = 0;
  if (v438)
  {
    operator delete(v438);
  }

  if (v477)
  {
    operator delete(v477);
  }

  v439 = v478;
  if (v478)
  {
    v479 = v478;
    operator delete(v478);
  }

  if (v471 == 1)
  {
    if (v473 >= 0)
    {
      v440 = v472;
    }

    else
    {
      v440 = v472[0];
    }

    v441 = v481;
    v442 = v482;
    *a4 = 0;
    *(a4 + 8) = 3;
    *(a4 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
    *(a4 + 24) = v441;
    *(a4 + 40) = v442;
  }

  else
  {
    if (*(&v491[0] + 1) != *&v491[0])
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*(&v491[0] + 1) - *&v491[0]) >> 4) <= 0x555555555555555)
      {
        operator new();
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    __p = 0uLL;
    *&v494 = 0;
    *a4 = 1;
    *(a4 + 8) = 0u;
    *(a4 + 24) = 0;
    *&v482 = 0;
    v481 = 0uLL;
    *&v500 = &v481;
    std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v500);
    *&v500 = &__p;
    std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v500);
  }

  *&v481 = v491;
  std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](&v481);
LABEL_160:
  if (SHIBYTE(v473) < 0)
  {
    operator delete(v472[0]);
  }

  if (*(&v469 + 1))
  {
    *&v470 = *(&v469 + 1);
    operator delete(*(&v469 + 1));
  }

  if (v468)
  {
    *(&v468 + 1) = v468;
    operator delete(v468);
  }

  v143 = *(&v466 + 1);
  if (*(&v466 + 1))
  {
    v144 = v467;
    v145 = *(&v466 + 1);
    if (v467 != *(&v466 + 1))
    {
      do
      {
        v144 -= 10;
        std::allocator<re::pathprocessing::FaceGroup>::destroy[abi:nn200100](v144);
      }

      while (v144 != v143);
      v145 = *(&v466 + 1);
    }

    *&v467 = v143;
    operator delete(v145);
  }

  if (v465)
  {
    *(&v465 + 1) = v465;
    operator delete(v465);
  }

  if (v462)
  {
    v463 = v462;
    operator delete(v462);
  }

  if (v460)
  {
    v461 = v460;
    operator delete(v460);
  }

  if (v458)
  {
    v459 = v458;
    operator delete(v458);
  }

  v146 = v456;
  if (v456)
  {
    v147 = v457;
    v148 = v456;
    if (v457 != v456)
    {
      v149 = v457;
      do
      {
        v151 = *(v149 - 3);
        v149 -= 24;
        v150 = v151;
        if (v151)
        {
          *(v147 - 2) = v150;
          operator delete(v150);
        }

        v147 = v149;
      }

      while (v149 != v146);
      v148 = v456;
    }

    v457 = v146;
    operator delete(v148);
  }

  *&v481 = &v454;
  std::vector<re::pathprocessing::ContinuousEdge>::__destroy_vector::operator()[abi:nn200100](&v481);
}

void re::pathprocessing::PathTopologyGenerator::extractBoundary(uint64_t a1, void *a2, void *a3, int a4, const void **a5)
{
  if (a2 != a3)
  {
    do
    {
      v42 = a2;
      v7 = *(a1 + 96) + 48 * *a2;
      v8 = (*(a1 + 24) + 72 * *(v7 + 32));
      std::vector<re::pathprocessing::Bezier2>::reserve(a5, v8[5] - 0x5555555555555555 * ((a5[1] - *a5) >> 3));
      v9 = v8[5];
      if (*(v7 + 40) == a4)
      {
        if (v9)
        {
          v10 = 0;
          v11 = a5[1];
          do
          {
            v12 = **a1 + 24 * *(*(v8[1] + (((v10 + v8[4]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v10 + v8[4]) & 0x1FF));
            v13 = a5[2];
            if (v11 >= v13)
            {
              v15 = 0xAAAAAAAAAAAAAAABLL * ((v11 - *a5) >> 3);
              v16 = v15 + 1;
              if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_37;
              }

              v17 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a5) >> 3);
              if (2 * v17 > v16)
              {
                v16 = 2 * v17;
              }

              if (v17 >= 0x555555555555555)
              {
                v18 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v18 = v16;
              }

              if (v18)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a5, v18);
              }

              v19 = 8 * ((v11 - *a5) >> 3);
              v20 = *v12;
              *(v19 + 16) = *(v12 + 16);
              *v19 = v20;
              v11 = 24 * v15 + 24;
              v21 = a5[1] - *a5;
              v22 = 24 * v15 - v21;
              memcpy((v19 - v21), *a5, v21);
              v23 = *a5;
              *a5 = v22;
              a5[1] = v11;
              a5[2] = 0;
              if (v23)
              {
                operator delete(v23);
              }
            }

            else
            {
              v14 = *v12;
              *(v11 + 16) = *(v12 + 16);
              *v11 = v14;
              v11 += 24;
            }

            a5[1] = v11;
            ++v10;
          }

          while (v10 < v8[5]);
        }
      }

      else if (v9)
      {
        v24 = v9 - 1;
        do
        {
          if (v8[5] <= v24)
          {
            abort();
          }

          v25 = (**a1 + 24 * *(*(v8[1] + (((v24 + v8[4]) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v24 + v8[4]) & 0x1FF)));
          v27 = v25[1];
          v26 = v25[2];
          v28 = *v25;
          v30 = a5[1];
          v29 = a5[2];
          if (v30 >= v29)
          {
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a5) >> 3);
            v33 = v32 + 1;
            if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
LABEL_37:
              std::string::__throw_length_error[abi:nn200100]();
            }

            v34 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *a5) >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a5, v35);
            }

            v36 = 24 * v32;
            *v36 = v26;
            *(v36 + 8) = v27;
            *(v36 + 16) = v28;
            v31 = 24 * v32 + 24;
            v37 = a5[1] - *a5;
            v38 = (24 * v32 - v37);
            memcpy(v38, *a5, v37);
            v39 = *a5;
            *a5 = v38;
            a5[1] = v31;
            a5[2] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v30 = v26;
            *(v30 + 1) = v27;
            v31 = (v30 + 24);
            *(v30 + 2) = v28;
          }

          a5[1] = v31;
          --v24;
        }

        while (v24 != -1);
      }

      a2 = v42 + 1;
    }

    while (v42 + 1 != a3);
  }
}

void *std::vector<re::pathprocessing::Bezier2>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void re::pathprocessing::QuadraticBezierBVH::Node::~Node(re::pathprocessing::QuadraticBezierBVH::Node *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    re::pathprocessing::QuadraticBezierBVH::Node::~Node(v2);
    MEMORY[0x1E6906520]();
  }

  v3 = *(this + 1);
  *(this + 1) = 0;
  if (v3)
  {
    re::pathprocessing::QuadraticBezierBVH::Node::~Node(v3);
    MEMORY[0x1E6906520]();
  }
}

void std::vector<re::pathprocessing::IslandHalfEdgeLoop>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v3);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<re::pathprocessing::BezierIslandInfo>::destroy[abi:nn200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::allocator<re::pathprocessing::BezierIslandInfo>::destroy[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

void std::allocator<re::pathprocessing::FaceGroup>::destroy[abi:nn200100](void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;

    operator delete(v3);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>>(unint64_t a1)
{
  if (a1 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<re::pathprocessing::IslandHalfEdgeLoop>,re::pathprocessing::IslandHalfEdgeLoop*>(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      *a3 = *v5;
      a3[2] = *(v5 + 16);
      *v5 = 0;
      *(v5 + 8) = 0;
      *(v5 + 16) = 0;
      a3[3] = 0;
      a3[4] = 0;
      a3[5] = 0;
      *(a3 + 3) = *(v5 + 24);
      a3[5] = *(v5 + 40);
      *(v5 + 24) = 0;
      *(v5 + 32) = 0;
      *(v5 + 40) = 0;
      v5 += 48;
      a3 += 6;
    }

    while (v5 != a2);
    do
    {
      std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](v4);
      v4 += 48;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<re::pathprocessing::IslandHalfEdgeLoop>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::allocator<re::pathprocessing::IslandHalfEdgeLoop>::destroy[abi:nn200100](i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,unsigned long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,unsigned long const&,unsigned long &>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

__n128 std::vector<unsigned long>::__move_assign(uint64_t a1, __n128 *a2)
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

void *std::__hash_table<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unordered_map<unsigned long,std::vector<unsigned long>>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void std::vector<re::pathprocessing::PathCommand>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::PathCommand>>(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<re::pathprocessing::PathCommand>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t re::SpatialCurve<re::Vector2<float>>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a3;
  if (*a1 == 1)
  {
    v3 = re::BezierSpline<float>::evaluateAt(a1 + 208, a2, a3);
  }

  SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(a1, a2, v3);
  if (*(a1 + 184) <= SplineIndexForParameter)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = *(**(*(a1 + 200) + 24 * SplineIndexForParameter) + 120);
  v6.n128_f32[0] = v3;

  return v7(v6);
}

BOOL re::pathprocessing::computeNormal(_BOOL8 result, unint64_t a2, unint64_t a3, void *a4)
{
  if (a2 < a3)
  {
    v6 = a2;
    v7 = result;
    v8 = a3 - 1;
    v9 = 24 * a2;
    do
    {
      v10 = *v7;
      v11 = (*v7 + 24 * v8);
      isLine = re::pathprocessing::Bezier2::isLine(v11);
      v13 = *v11;
      if (isLine)
      {
        v14 = vsub_f32(v11[2], v13);
      }

      else
      {
        v15 = v11[1];
        v16 = vmul_f32(vsub_f32(v15, v13), 0);
        v17 = vsub_f32(v11[2], v15);
        v14 = vadd_f32(v16, vadd_f32(v17, v17));
      }

      result = re::pathprocessing::Bezier2::isLine((v10 + v9));
      v18 = *(v10 + v9);
      v19 = (v10 + v9);
      if (result)
      {
        v20 = v19[2];
        v21 = vsub_f32(v20, v18);
      }

      else
      {
        v22 = v19[1];
        v20 = v19[2];
        v23 = vsub_f32(v22, v18);
        v21 = vadd_f32(vadd_f32(v23, v23), vmul_f32(vsub_f32(v20, v22), 0));
      }

      v24 = vmul_f32(v14, v14);
      v24.i32[0] = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v25 = vrsqrte_f32(v24.u32[0]);
      v26 = vmul_f32(v25, vrsqrts_f32(v24.u32[0], vmul_f32(v25, v25)));
      v27 = vmul_n_f32(v14, vmul_f32(v26, vrsqrts_f32(v24.u32[0], vmul_f32(v26, v26))).f32[0]);
      v26.f32[0] = -*&v27.i32[1];
      v28 = vmul_f32(v21, v21);
      v28.i32[0] = vadd_f32(v28, vdup_lane_s32(v28, 1)).u32[0];
      v29 = vzip1_s32(v26, v27);
      v30 = vrsqrte_f32(v28.u32[0]);
      v31 = vmul_f32(v30, vrsqrts_f32(v28.u32[0], vmul_f32(v30, v30)));
      v32 = vmul_f32(v31, vrsqrts_f32(v28.u32[0], vmul_f32(v31, v31)));
      v33 = vmul_n_f32(v21, *v32.i32);
      *v32.i32 = -*&v33.i32[1];
      v34 = vmul_f32(vadd_f32(v29, vzip1_s32(v32, v33)), 0x3F0000003F000000);
      v35 = vaddv_f32(vmul_f32(v34, v34));
      if (fabsf(v35) < 1.0e-10)
      {
        v36 = vadd_f32(vsub_f32(*v11, vadd_f32(v11[1], v11[1])), v11[2]);
        v37 = vadd_f32(v36, v36);
        v38 = vmul_f32(v37, v37);
        v38.i32[0] = vadd_f32(v38, vdup_lane_s32(v38, 1)).u32[0];
        v39 = vrsqrte_f32(v38.u32[0]);
        v40 = vmul_f32(v39, vrsqrts_f32(v38.u32[0], vmul_f32(v39, v39)));
        v41 = vmul_n_f32(v37, vmul_f32(v40, vrsqrts_f32(v38.u32[0], vmul_f32(v40, v40))).f32[0]);
        v42 = vadd_f32(v20, vsub_f32(v18, vadd_f32(*(v10 + v9 + 8), *(v10 + v9 + 8))));
        v43 = vadd_f32(v42, v42);
        v44 = vmul_f32(v43, v43);
        v44.i32[0] = vadd_f32(v44, vdup_lane_s32(v44, 1)).u32[0];
        v45 = vrsqrte_f32(v44.u32[0]);
        v46 = vmul_f32(v45, vrsqrts_f32(v44.u32[0], vmul_f32(v45, v45)));
        v34 = vadd_f32(vmul_f32(v41, 0x3F0000003F000000), vmul_f32(vmul_n_f32(v43, vmul_f32(v46, vrsqrts_f32(v44.u32[0], vmul_f32(v46, v46))).f32[0]), 0x3F0000003F000000));
        v35 = vaddv_f32(vmul_f32(v34, v34));
      }

      v47 = vrsqrte_f32(LODWORD(v35));
      v48 = vmul_f32(v47, vrsqrts_f32(LODWORD(v35), vmul_f32(v47, v47)));
      *(*a4 + 8 * v6) = vmul_n_f32(v34, vmul_f32(v48, vrsqrts_f32(LODWORD(v35), vmul_f32(v48, v48))).f32[0]);
      v8 = v6;
      v9 += 24;
      ++v6;
    }

    while (a3 != v6);
  }

  return result;
}

uint64_t *re::pathprocessing::offsetBeziers(uint64_t *result, void *a2, unint64_t a3, unint64_t a4, uint64_t *a5, float a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (a4 > a3)
  {
    v12 = a4 - 1;
    v13 = 24 * a4 - 8;
    v14 = a3;
    do
    {
      v15 = *a5;
      v16 = (*a5 + v13);
      v17 = *result;
      v18 = *(*a2 + 4 * v12);
      if (v18 == 3)
      {
        v23 = *v16;
        v24 = v16[-2];
        v25 = vsub_f32(*v16, v24);
        *&a12 = -*&v25.i32[1];
        v26 = vzip1_s32(*&a12, v25);
        v27 = vmul_f32(v26, v26);
        v27.i32[0] = vadd_f32(v27, vdup_lane_s32(v27, 1)).u32[0];
        v28 = vrsqrte_f32(v27.u32[0]);
        v29 = vmul_f32(v28, vrsqrts_f32(v27.u32[0], vmul_f32(v28, v28)));
        v30 = vmul_n_f32(v26, vmul_f32(v29, vrsqrts_f32(v27.u32[0], vmul_f32(v29, v29))).f32[0]);
        a12 = COERCE_DOUBLE(vmul_n_f32(*(v17 + 8 * v12), a6));
        v31 = vadd_f32(v16[-1], vmul_n_f32(v30, a6));
        v16[-2] = vadd_f32(v24, *&a12);
        v16[-1] = v31;
        *v16 = vadd_f32(v23, vmul_n_f32(*(v17 + 8 * v14), a6));
      }

      else if (v18 == 2)
      {
        v19 = vadd_f32(v16[-2], vmul_n_f32(*(v17 + 8 * v12), a6));
        v16[-2] = v19;
        v20 = vmul_n_f32(*(v17 + 8 * v14), a6);
        v21 = (v15 + v13);
        v22 = vadd_f32(*(v15 + v13), v20);
        v21[-1] = vadd_f32(vmul_f32(v19, 0x3F0000003F000000), vmul_f32(v22, 0x3F0000003F000000));
        *v21 = v22;
      }

      v13 -= 24;
      v14 = --a4;
    }

    while (v12-- > a3);
  }

  return result;
}

void re::pathprocessing::createCapTriangles(uint64_t *a1, void *a2, uint64_t a3)
{
  v84 = 0;
  v85 = 0;
  v86 = 0;
  v82 = 0uLL;
  v83 = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v4 = (*(a3 + 8) - *a3) >> 4;
  v5 = *a1;
  v75 = *(a3 + 8) - *a3;
  v76 = v4;
  if (a1[1] != *a1)
  {
    v8 = 0;
    v9 = v4;
    do
    {
      v10 = (v5 + 24 * v8);
      v11 = v79;
      if (v79 == v80)
      {
        std::vector<re::Vector2<float>>::push_back[abi:nn200100](&v79, v10);
        ++v9;
        v11 = v79;
      }

      v12 = vceq_f32(v10[2], *v11);
      v13 = vpmin_u32(v12, v12).u32[0];
      if (*(*a2 + 4 * v8) == 3)
      {
        operator new();
      }

      std::vector<re::Vector2<float>>::push_back[abi:nn200100](&v79, &v10[2]);
      if ((v13 & 0x80000000) != 0)
      {
        v14 = v79;
        v15 = v80;
        v16 = v80 - 8;
        v80 = v16;
        if ((v16 - v79) < 0x11)
        {
          goto LABEL_16;
        }

        if (v79 == v16)
        {
          v20 = 0.0;
        }

        else
        {
          v17 = *(v15 - 2);
          v18 = 0.0;
          do
          {
            v19 = *v14;
            v14 += 8;
            v18 = v18 + ((-*(&v19 + 1) * *&v17) + (*&v19 * *(&v17 + 1)));
            v17 = v19;
          }

          while (v14 != v16);
          v20 = v18 * 0.5;
        }

        if (fabsf(v20) >= 0.0001)
        {
          v21 = &v84;
        }

        else
        {
LABEL_16:
          v21 = &v82;
        }

        std::vector<std::vector<re::Vector2<float>>>::push_back[abi:nn200100](v21, &v79);
        v80 = v79;
      }

      else
      {
        ++v9;
      }

      ++v8;
      v5 = *a1;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
    if (v79 != v80)
    {
      goto LABEL_76;
    }

    if (v84 != v85)
    {
      re::pathprocessing::triangulateIndexed(&v84, &__p);
      v23 = __p;
      v22 = v78;
      if (__p != v78)
      {
        v24 = __p;
        do
        {
          *v24 += v76;
          v24 += 4;
        }

        while (v24 != v22);
      }

      v25 = v22 - v23;
      v26 = (v22 - v23) >> 2;
      if (v26 >= 1)
      {
        v27 = *(a3 + 48);
        v28 = *(a3 + 56);
        v29 = *(a3 + 64);
        if (v29 - v28 >= v25)
        {
          if (v23 != v22)
          {
            memmove(*(a3 + 56), v23, v22 - v23);
          }

          *(a3 + 56) = &v28[v25];
        }

        else
        {
          v30 = v26 + (&v28[-v27] >> 2);
          if (v30 >> 62)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v31 = &v28[-v27] >> 2;
          v32 = v29 - v27;
          if (v32 >> 1 > v30)
          {
            v30 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v30;
          }

          if (v33)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a3 + 48, v33);
          }

          v34 = 4 * v31;
          v35 = (v34 + v25);
          v36 = v34;
          do
          {
            v37 = *v23;
            v23 += 4;
            *v36++ = v37;
            v25 -= 4;
          }

          while (v25);
          memcpy(v35, v28, *(a3 + 56) - v28);
          v38 = *(a3 + 48);
          v39 = &v35[*(a3 + 56) - v28];
          *(a3 + 56) = v28;
          v40 = (v34 - (v28 - v38));
          memcpy(v40, v38, v28 - v38);
          v41 = *(a3 + 48);
          *(a3 + 48) = v40;
          *(a3 + 56) = v39;
          *(a3 + 64) = 0;
          if (v41)
          {
            operator delete(v41);
          }
        }
      }

      v42 = v84;
      if (v84 != v85)
      {
        v43 = v85;
        do
        {
          std::vector<re::Vector3<float>>::reserve(a3, ((v42[1] - *v42) >> 3) + ((*(a3 + 8) - *a3) >> 4));
          v45 = *v42;
          v46 = v42[1];
          if (*v42 != v46)
          {
            v47 = *(a3 + 8);
            do
            {
              v48 = *(a3 + 16);
              if (v47 >= v48)
              {
                v49 = (v47 - *a3) >> 4;
                if ((v49 + 1) >> 60)
                {
                  goto LABEL_84;
                }

                v50 = v48 - *a3;
                v51 = v50 >> 3;
                if (v50 >> 3 <= (v49 + 1))
                {
                  v51 = v49 + 1;
                }

                if (v50 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v52 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v52 = v51;
                }

                if (v52)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a3, v52);
                }

                *&v44 = *v45;
                DWORD2(v44) = 0;
                *(16 * v49) = v44;
                v47 = (16 * v49 + 16);
                v53 = *(a3 + 8) - *a3;
                v54 = (16 * v49 - v53);
                memcpy(v54, *a3, v53);
                v55 = *a3;
                *a3 = v54;
                *(a3 + 8) = v47;
                *(a3 + 16) = 0;
                if (v55)
                {
                  operator delete(v55);
                }
              }

              else
              {
                *&v44 = *v45;
                DWORD2(v44) = 0;
                *v47++ = v44;
              }

              *(a3 + 8) = v47;
              ++v45;
            }

            while (v45 != v46);
          }

          v42 += 3;
        }

        while (v42 != v43);
      }

      if (__p)
      {
        v78 = __p;
        operator delete(__p);
      }
    }
  }

  v56 = (*(a3 + 8) - *a3) >> 4;
  v57 = v56 - v76;
  if (v56 != v76)
  {
    v58 = (v75 >> 4);
    v60 = *(a3 + 32);
    v59 = *(a3 + 40);
    if (v57 <= (v59 - v60) >> 4)
    {
      v65 = &v60[v57];
      v66 = 16 * v56 - 16 * v58;
      do
      {
        *v60++ = xmmword_1E30476A0;
        v66 -= 16;
      }

      while (v66);
      *(a3 + 32) = v65;
    }

    else
    {
      v61 = *(a3 + 24);
      v62 = v57 + ((v60 - v61) >> 4);
      if (v62 >> 60)
      {
LABEL_84:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v63 = v59 - v61;
      if (v63 >> 3 > v62)
      {
        v62 = v63 >> 3;
      }

      if (v63 >= 0x7FFFFFFFFFFFFFF0)
      {
        v64 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v64 = v62;
      }

      if (v64)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a3 + 24, v64);
      }

      v67 = 16 * ((v60 - v61) >> 4);
      v68 = (v67 + 16 * v57);
      v69 = v67;
      v70 = 16 * v56 - 16 * v58;
      do
      {
        *v69++ = xmmword_1E30476A0;
        v70 -= 16;
      }

      while (v70);
      memcpy(v68, v60, *(a3 + 32) - v60);
      v71 = *(a3 + 24);
      v72 = &v68[*(a3 + 32) - v60];
      *(a3 + 32) = v60;
      v73 = (v67 - (v60 - v71));
      memcpy(v73, v71, v60 - v71);
      v74 = *(a3 + 24);
      *(a3 + 24) = v73;
      *(a3 + 32) = v72;
      *(a3 + 40) = 0;
      if (v74)
      {
        operator delete(v74);
      }
    }
  }

LABEL_76:
  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  v79 = &v82;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v79);
  *&v82 = &v84;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:nn200100](&v82);
}

uint64_t std::vector<std::vector<re::Vector2<float>>>::push_back[abi:nn200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::vector<geo::math::Matrix<unsigned int,2,1>>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

void *std::vector<re::Vector3<float>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

void re::pathprocessing::generateCapAndBevel(uint64_t *a1, void *a2, uint64_t a3, int a4, uint64_t a5, void *a6, float a7, float a8)
{
  if (a4)
  {
    v15 = *a1;
    v14 = a1[1];
    memset(v39, 0, sizeof(v39));
    if (v14 != v15)
    {
      std::vector<unsigned long>::__vallocate[abi:nn200100](v39, 0xAAAAAAAAAAAAAAABLL * ((v14 - v15) >> 3));
    }

    re::pathprocessing::computeNormal(a1, 0, **a3, v39);
    v22 = *a3;
    if (*(a3 + 8) - *a3 != 8)
    {
      v23 = 0;
      do
      {
        v24 = &v22[v23++];
        re::pathprocessing::computeNormal(a1, *v24, v24[1], v39);
        v22 = *a3;
      }

      while (v23 < ((*(a3 + 8) - *a3) >> 3) - 1);
    }

    memset(v38, 0, sizeof(v38));
    v25 = a1[1];
    if (v25 != *a1)
    {
      std::vector<geo::math::Matrix<double,3,1>>::__vallocate[abi:nn200100](v38, 0xAAAAAAAAAAAAAAABLL * ((v25 - *a1) >> 3));
    }

    re::pathprocessing::offsetBeziers(v39, a2, 0, *v22, v38, a7, v16, v17, v18, v19, v20, v21);
    v32 = *a3;
    if (*(a3 + 8) - *a3 != 8)
    {
      v33 = 0;
      do
      {
        v34 = &v32[v33++];
        re::pathprocessing::offsetBeziers(v39, a2, *v34, v34[1], v38, a7, v26, v27, v28, v29, v30, v31);
        v32 = *a3;
      }

      while (v33 < ((*(a3 + 8) - *a3) >> 3) - 1);
    }

    std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::vector[abi:nn200100](__p, a6);
    re::pathprocessing::createCapTriangles(v38, a2, a5);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    memset(v40, 0, sizeof(v40));
    std::vector<unsigned long>::__vallocate[abi:nn200100](v40, a8);
  }

  std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::vector[abi:nn200100](v36, a6);
  re::pathprocessing::createCapTriangles(a1, a2, a5);
  if (v36[0])
  {
    v36[1] = v36[0];
    operator delete(v36[0]);
  }
}

unint64_t re::pathprocessing::convertCapToBottom(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, void *a7, float a8)
{
  v8 = a2 - result;
  if (a2 > result)
  {
    v9 = -a8;
    v10 = (16 * result) | 8;
    do
    {
      *(*a7 + v10) = v9 - *(*a7 + v10);
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  v11 = a4 - a3;
  if (a4 > a3)
  {
    v12 = (16 * a3) | 8;
    do
    {
      *(a7[3] + v12) = -*(a7[3] + v12);
      v12 += 16;
      --v11;
    }

    while (v11);
  }

  if (a5 < a6)
  {
    v13 = a7[6];
    do
    {
      v14 = (v13 + 4 * a5);
      v15 = *v14;
      *v14 = v14[2];
      v14[2] = v15;
      a5 += 3;
    }

    while (a5 < a6);
  }

  return result;
}

void std::vector<re::Vector3<float>>::resize(uint64_t a1, unint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 16 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = *(a1 + 16);
    if (v6 > (v7 - v4) >> 4)
    {
      if (!(a2 >> 60))
      {
        v8 = v7 - v3;
        v9 = v8 >> 3;
        if (v8 >> 3 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, v10);
      }

      std::string::__throw_length_error[abi:nn200100]();
    }

    bzero(*(a1 + 8), 16 * v6);
    v11 = v4 + 16 * v6;
  }

  *(a1 + 8) = v11;
}

void re::pathprocessing::simpleExtrudeMesh(unsigned __int8 **a1@<X0>, int a2@<W1>, float32x2_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a3;
  v200 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v9 = *(a4 + 8);
  if (a3[1].i32[0])
  {
    v11 = a3->f32[1] <= 0.0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = re::pathprocessing::IndexedMesh::IndexedMesh(v180, a1, 1);
  if (v184 == v183)
  {
    v138 = v187[0];
    v139 = v187[1];
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = &re::pathprocessing::PathProcessingErrorCategory(void)::instance;
    *(a5 + 24) = v138;
    *(a5 + 40) = v139;
  }

  else
  {
    if ((v6[3].i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v6[3].i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v6[4].i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (v6[4].i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v14 = v6[3];
      v15 = v6[4];
      v16 = vsub_f32(v180[0], v14);
    }

    else
    {
      v14 = v180[0];
      v15 = v180[1];
      v16 = v180[0];
    }

    v17 = vsub_f32(v15, v14);
    v18 = fmaxf(v17.f32[0], v17.f32[1]);
    v19 = v6->f32[1];
    v151 = v12;
    if ((v12 & 1) == 0)
    {
      v19 = 0.0;
    }

    if (v6[1].i8[4])
    {
      v20 = v18 * v19;
    }

    else
    {
      v20 = v19;
    }

    if (v6[1].i8[4])
    {
      v21 = v6->f32[0] * v18;
    }

    else
    {
      v21 = v6->f32[0];
    }

    v22 = -v21;
    v149 = v21;
    v23 = v20 - v21;
    if ((*&v6[2] & 4) != 0)
    {
      v22 = v23;
    }

    v157 = v22;
    v150 = v6[5].i32[0];
    re::pathprocessing::getBezierIslands(v180, a2, v177);
    if (v177[0])
    {
      v25 = v178;
      if (v178 != *(&v178 + 1))
      {
        v26 = v20 >= v149;
        if ((v151 & 1) == 0)
        {
          v26 = v149 <= 0.0;
        }

        v146 = v26;
        v24.n128_u64[0] = 0x3F8000003EAAAAABLL;
        v148 = v6;
        v144 = v9;
        v145 = a5;
        v142 = *(&v178 + 1);
        v143 = v10;
        do
        {
          v174 = 0;
          v175 = 0;
          v176 = 0;
          re::pathprocessing::subdivideBezierOnSelfIntersection(v25, v25 + 3, &v174, &v172, v24);
          v169 = 0;
          v170 = 0;
          v171 = 0;
          v147 = v25;
          if (v173 != v172)
          {
            if (!((0xAAAAAAAAAAAAAAABLL * ((v173 - v172) >> 3)) >> 62))
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(&v169, 0xAAAAAAAAAAAAAAABLL * ((v173 - v172) >> 3));
            }

            std::string::__throw_length_error[abi:nn200100]();
          }

          v28 = *a4;
          v27 = *(a4 + 8);
          v30 = *(a4 + 24);
          v29 = *(a4 + 32);
          v32 = *(a4 + 48);
          v31 = *(a4 + 56);
          v33 = v148;
          if (v148[2].i8[0])
          {
            __p = 0;
            __dst = 0;
            v168 = 0;
            if (v175 != v174)
            {
              std::vector<unsigned long>::__vallocate[abi:nn200100](&__p, (v175 - v174) >> 3);
            }

            v34 = v148[1].u32[0];
            memset(v165, 0, sizeof(v165));
            re::pathprocessing::generateCapAndBevel(&v172, &v169, &__p, v151 & 1, a4, v165, v20, v34);
            v33 = v148;
            if (__p)
            {
              __dst = __p;
              operator delete(__p);
            }
          }

          v35 = v33[2];
          if ((v35.i8[0] & 4) != 0)
          {
            v36 = v27 - v28;
            v37 = (v27 - v28) >> 4;
            v38 = v29 - v30;
            v39 = (v29 - v30) >> 4;
            v40 = v31 - v32;
            v41 = (v31 - v32) >> 2;
            if (v35.i8[0])
            {
              v43 = v39;
              v159 = v41;
              v44 = *(a4 + 8) - *a4;
              v45 = *(a4 + 24);
              v46 = *(a4 + 32);
              v152 = *(a4 + 48);
              v47 = (v44 >> 4) - v37;
              v48 = v47;
              v158 = v44 >> 4;
              v154 = *(a4 + 56);
              v155 = (v44 >> 4) + v47;
              std::vector<re::Vector3<float>>::resize(a4, v155);
              if (v47)
              {
                do
                {
                  *(*a4 + v44) = *(*a4 + v36);
                  v44 += 16;
                  v36 += 16;
                  --v48;
                }

                while (v48);
              }

              v49 = v46 - v45;
              v50 = (v46 - v45) >> 4;
              std::vector<re::Vector3<float>>::resize(a4 + 24, v50 - v43 + v50);
              if (v50 != v43)
              {
                v51 = v50 - v43;
                do
                {
                  *(*(a4 + 24) + v49) = *(*(a4 + 24) + v38);
                  v49 += 16;
                  v38 += 16;
                  --v51;
                }

                while (v51);
              }

              v52 = (v154 - v152) >> 2;
              std::vector<unsigned int>::resize((a4 + 48), v52 - v159 + v52);
              if (v52 != v159)
              {
                v53 = *(a4 + 48);
                v54 = (v53 + v40);
                v55 = (v53 + v154 - v152);
                v56 = v52 - v159;
                do
                {
                  v57 = *v54++;
                  *v55++ = v57 + v47;
                  --v56;
                }

                while (v56);
              }

              re::pathprocessing::convertCapToBottom(v158, v155, v50, v50 - v43 + v50, v52, v52 - v159 + v52, a4, v149);
              v33 = v148;
            }

            else
            {
              v162 = 0;
              v163 = 0;
              v164 = 0;
              if (v175 != v174)
              {
                std::vector<unsigned long>::__vallocate[abi:nn200100](&v162, (v175 - v174) >> 3);
              }

              v33 = v148;
              v42 = v148[1].u32[0];
              memset(v161, 0, sizeof(v161));
              re::pathprocessing::generateCapAndBevel(&v172, &v169, &v162, v151 & 1, a4, v161, v20, v42);
              if (v162)
              {
                v163 = v162;
                operator delete(v162);
              }

              re::pathprocessing::convertCapToBottom(v37, (*(a4 + 8) - *a4) >> 4, v39, (*(a4 + 32) - *(a4 + 24)) >> 4, v41, (*(a4 + 56) - *(a4 + 48)) >> 2, a4, v149);
            }
          }

          if ((v33[2].i8[0] & 2) != 0 && !v146 && v173 != v172)
          {
            v58 = 0;
            v59 = 0xAAAAAAAAAAAAAAABLL * ((v173 - v172) >> 3);
            if (v59 <= 1)
            {
              v59 = 1;
            }

            v153 = v59;
            do
            {
              v61 = *a4;
              v60 = *(a4 + 8);
              v62 = *(8 * v58);
              if (*v62 == 1)
              {
                if ((*(*(v62 + 208) + 40))(v62 + 208))
                {
                  v63 = (*(*(v62 + 208) + 40))(v62 + 208);
                }

                else
                {
                  v63 = 0xFFFF;
                }

                re::Spline<float>::knotAtIndex(v62 + 208, v63);
                v65 = v66;
              }

              else
              {
                v64 = *(v62 + 184);
                if (v64)
                {
                  v65 = *(*(v62 + 200) + 24 * v64 - 8);
                }

                else
                {
                  v65 = 0.0;
                }
              }

              v67 = (v172 + 24 * v58);
              v156 = v58;
              if (re::pathprocessing::Bezier2::isLine(v67))
              {
                v69 = 1;
              }

              else
              {
                v70 = (v65 * v150);
                if (v70 <= 1)
                {
                  v71 = 1;
                }

                else
                {
                  v71 = v70;
                }

                if (re::pathprocessing::Bezier2::isPoint(v67))
                {
                  v69 = 1;
                }

                else
                {
                  v69 = v71;
                }
              }

              v72 = 0;
              v73 = (v60 - v61) >> 4;
              v74 = v69;
              do
              {
                v76 = re::SpatialCurve<re::Vector2<float>>::evaluateAt(v62, v68, v65 * (v72 / v74));
                if (*v62 == 1)
                {
                  v77 = re::BezierSpline<float>::evaluateAt(v62 + 208, v75, v65 * (v72 / v74));
                  SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(v62, v78, v77);
                  v80 = *(v62 + 184);
                  if (v80 <= SplineIndexForParameter)
                  {
                    goto LABEL_160;
                  }

                  v81 = *(*(v62 + 200) + 24 * SplineIndexForParameter);
                  v82 = (*(*v81 + 128))(v81, 1, v77);
                  v84 = v82;
                  v85 = sqrtf(vaddv_f32(vmul_f32(v82, v82)));
                  if (v85 > 0.0)
                  {
                    v84 = vmul_n_f32(v82, 1.0 / v85);
                  }
                }

                else
                {
                  SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(v62, v75, v65 * (v72 / v74));
                  v80 = *(v62 + 184);
                  if (v80 <= SplineIndexForParameter)
                  {
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 797;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = SplineIndexForParameter;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v80;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_160:
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 797;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = SplineIndexForParameter;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v80;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    v186 = 0;
                    v198 = 0u;
                    v199 = 0u;
                    memset(v197, 0, sizeof(v197));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v190 = 136315906;
                    *&v190[4] = "operator[]";
                    v191 = 1024;
                    v192 = 789;
                    v193 = 2048;
                    v194 = 0;
                    v195 = 2048;
                    v196 = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    v186 = 0;
                    v198 = 0u;
                    v199 = 0u;
                    memset(v197, 0, sizeof(v197));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v190 = 136315906;
                    *&v190[4] = "operator[]";
                    v191 = 1024;
                    v192 = 797;
                    v193 = 2048;
                    v194 = 0;
                    v195 = 2048;
                    v196 = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    v186 = 0;
                    v198 = 0u;
                    v199 = 0u;
                    memset(v197, 0, sizeof(v197));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v190 = 136315906;
                    *&v190[4] = "operator[]";
                    v191 = 1024;
                    v192 = 789;
                    v193 = 2048;
                    v194 = 0;
                    v195 = 2048;
                    v196 = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = SplineIndexForParameter;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v80;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = SplineIndexForParameter;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v80;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = v58;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v76;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = v80;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v76;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = v69;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = v76;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = v69 + 1;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = SplineIndexForParameter;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    v185[3] = 0;
                    v198 = 0u;
                    v199 = 0u;
                    memset(v197, 0, sizeof(v197));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v190 = 136315906;
                    *&v190[4] = "operator[]";
                    v191 = 1024;
                    v192 = 789;
                    v193 = 2048;
                    v194 = v69 + 1;
                    v195 = 2048;
                    v196 = v76;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    v186 = 0;
                    v198 = 0u;
                    v199 = 0u;
                    memset(v197, 0, sizeof(v197));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v190 = 136315906;
                    *&v190[4] = "operator[]";
                    v191 = 1024;
                    v192 = 789;
                    v193 = 2048;
                    v194 = v58;
                    v195 = 2048;
                    v196 = v76;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
                    *v190 = 0;
                    v188 = 0u;
                    v189 = 0u;
                    memset(v187, 0, sizeof(v187));
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    LODWORD(v197[0]) = 136315906;
                    *(v197 + 4) = "operator[]";
                    WORD6(v197[0]) = 1024;
                    *(v197 + 14) = 789;
                    WORD1(v197[1]) = 2048;
                    *(&v197[1] + 4) = 0;
                    WORD6(v197[1]) = 2048;
                    *(&v197[1] + 14) = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_161:
                    std::string::__throw_length_error[abi:nn200100]();
                  }

                  v86 = *(*(v62 + 200) + 24 * SplineIndexForParameter);
                  v84 = (*(*v86 + 128))(v86, 1, v65 * (v72 / v74));
                }

                *&v83 = v76;
                v88 = *(a4 + 8);
                v87 = *(a4 + 16);
                if (v88 >= v87)
                {
                  v91 = (v88 - *a4) >> 4;
                  if ((v91 + 1) >> 60)
                  {
                    goto LABEL_161;
                  }

                  v92 = v87 - *a4;
                  v93 = v92 >> 3;
                  if (v92 >> 3 <= (v91 + 1))
                  {
                    v93 = v91 + 1;
                  }

                  if (v92 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v94 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v94 = v93;
                  }

                  v160 = v83;
                  if (v94)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a4, v94);
                  }

                  v58 = 0;
                  v95 = v83;
                  *(&v95 + 2) = -v20;
                  *(16 * v91) = v95;
                  v90 = (16 * v91 + 16);
                  v96 = *(a4 + 8) - *a4;
                  v97 = (16 * v91 - v96);
                  memcpy(v97, *a4, v96);
                  v98 = *a4;
                  *a4 = v97;
                  *(a4 + 8) = v90;
                  *(a4 + 16) = 0;
                  if (v98)
                  {
                    operator delete(v98);
                  }

                  v83 = v160;
                }

                else
                {
                  v89 = v83;
                  *(&v89 + 2) = -v20;
                  *v88 = v89;
                  v90 = v88 + 1;
                }

                *(a4 + 8) = v90;
                v99 = *(a4 + 16);
                if (v90 >= v99)
                {
                  v101 = (v90 - *a4) >> 4;
                  if ((v101 + 1) >> 60)
                  {
                    goto LABEL_161;
                  }

                  v102 = v99 - *a4;
                  v103 = v102 >> 3;
                  if (v102 >> 3 <= (v101 + 1))
                  {
                    v103 = v101 + 1;
                  }

                  if (v102 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v104 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v104 = v103;
                  }

                  if (v104)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a4, v104);
                  }

                  v58 = 0;
                  *(&v83 + 2) = v157;
                  *(16 * v101) = v83;
                  v100 = 16 * v101 + 16;
                  v105 = *(a4 + 8) - *a4;
                  v106 = (16 * v101 - v105);
                  memcpy(v106, *a4, v105);
                  v107 = *a4;
                  *a4 = v106;
                  *(a4 + 8) = v100;
                  *(a4 + 16) = 0;
                  if (v107)
                  {
                    operator delete(v107);
                  }
                }

                else
                {
                  *(&v83 + 2) = v157;
                  *v90 = v83;
                  v100 = (v90 + 1);
                }

                v108 = HIDWORD(v84) ^ 0x80000000;
                v109 = v84;
                *(a4 + 8) = v100;
                v111 = *(a4 + 32);
                v110 = *(a4 + 40);
                if (v111 >= v110)
                {
                  v113 = *(a4 + 24);
                  v114 = (v111 - v113) >> 4;
                  if ((v114 + 1) >> 60)
                  {
                    goto LABEL_161;
                  }

                  v115 = v110 - v113;
                  v116 = v115 >> 3;
                  if (v115 >> 3 <= (v114 + 1))
                  {
                    v116 = v114 + 1;
                  }

                  if (v115 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v117 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v117 = v116;
                  }

                  if (v117)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a4 + 24, v117);
                  }

                  v58 = 0;
                  *(16 * v114) = __PAIR64__(v84, v108);
                  v112 = (16 * v114 + 16);
                  v118 = *(a4 + 24);
                  v119 = *(a4 + 32) - v118;
                  v120 = (16 * v114 - v119);
                  memcpy(v120, v118, v119);
                  v121 = *(a4 + 24);
                  *(a4 + 24) = v120;
                  *(a4 + 32) = v112;
                  *(a4 + 40) = 0;
                  if (v121)
                  {
                    operator delete(v121);
                  }

                  v108 = HIDWORD(v84) ^ 0x80000000;
                  v109 = v84;
                }

                else
                {
                  *v111 = __PAIR64__(v84, v108);
                  v112 = v111 + 1;
                }

                *(a4 + 32) = v112;
                v122 = *(a4 + 40);
                if (v112 >= v122)
                {
                  v124 = *(a4 + 24);
                  v125 = (v112 - v124) >> 4;
                  if ((v125 + 1) >> 60)
                  {
                    goto LABEL_161;
                  }

                  v126 = v122 - v124;
                  v127 = v126 >> 3;
                  if (v126 >> 3 <= (v125 + 1))
                  {
                    v127 = v125 + 1;
                  }

                  if (v126 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v128 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v128 = v127;
                  }

                  if (v128)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a4 + 24, v128);
                  }

                  v58 = 0;
                  *(16 * v125) = __PAIR64__(v109, v108);
                  v123 = 16 * v125 + 16;
                  v129 = *(a4 + 24);
                  v130 = *(a4 + 32) - v129;
                  v131 = (16 * v125 - v130);
                  memcpy(v131, v129, v130);
                  v132 = *(a4 + 24);
                  *(a4 + 24) = v131;
                  *(a4 + 32) = v123;
                  *(a4 + 40) = 0;
                  if (v132)
                  {
                    operator delete(v132);
                  }
                }

                else
                {
                  *v112 = __PAIR64__(v109, v108);
                  v123 = (v112 + 1);
                }

                *(a4 + 32) = v123;
                ++v72;
              }

              while (v69 + 1 != v72);
              do
              {
                LODWORD(v187[0]) = v73;
                v133 = vadd_s32(vdup_n_s32(v73), 0x300000001);
                DWORD1(v187[0]) = v133.i32[0];
                *(v187 + 12) = v133;
                DWORD2(v187[0]) = v73 + 2;
                DWORD1(v187[1]) = v73 + 2;
                std::vector<unsigned int>::__insert_with_size[abi:nn200100]<unsigned int *,unsigned int *>(a4 + 48, *(a4 + 56), v187, &v187[1] + 8);
                LODWORD(v73) = v73 + 2;
                --v69;
              }

              while (v69);
              v58 = v156 + 1;
            }

            while (v156 + 1 != v153);
          }

          v9 = v144;
          a5 = v145;
          v10 = v143;
          if (v169)
          {
            v170 = v169;
            operator delete(v169);
          }

          v6 = v148;
          if (v172)
          {
            v173 = v172;
            operator delete(v172);
          }

          if (v174)
          {
            v175 = v174;
            operator delete(v174);
          }

          v25 = v147 + 6;
        }

        while (v147 + 6 != v142);
      }

      v134 = (v9 - v10) >> 4;
      v135 = *a4;
      v136 = *(a4 + 8) - *a4;
      if (v6[1].i8[4])
      {
        if (v9 - v10 < v136)
        {
          v137 = 16 * v134;
          do
          {
            *&v135[v137] = vadd_f32(v16, *&v135[v137]);
            *&v135[v137] = vmulq_n_f32(*&v135[v137], 1.0 / v18);
            ++v134;
            v135 = *a4;
            v137 += 16;
          }

          while (v134 < (*(a4 + 8) - *a4) >> 4);
        }
      }

      else if (v9 - v10 < v136)
      {
        v141 = 16 * v134;
        do
        {
          *&v135[v141] = vadd_f32(v16, *&v135[v141]);
          ++v134;
          v135 = *a4;
          v141 += 16;
        }

        while (v134 < (*(a4 + 8) - *a4) >> 4);
      }

      *a5 = 1;
    }

    else
    {
      v187[0] = v178;
      re::DynamicString::DynamicString(&v187[1], &v179);
      *a5 = 0;
      *(a5 + 8) = v187[0];
      v140 = *(&v187[2] + 1);
      *(a5 + 24) = *&v187[1];
      *(a5 + 48) = v140;
      *(a5 + 32) = *(&v187[1] + 8);
    }

    re::Result<std::vector<re::pathprocessing::BezierIslandInfo>,re::DetailedError>::~Result(v177);
  }

  std::__tree<unsigned long long>::destroy(v185, v185[1]);
  if (v183)
  {
    v184 = v183;
    operator delete(v183);
  }

  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }
}

void re::BezierSpline<float>::~BezierSpline(void *a1)
{
  re::Spline<float>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::BezierSpline<float>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    re::DynamicArray<float>::resize(a1 + 8, (3 * a2 + 1));
    *(a1 + 138) = a2;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, a2 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::BezierSpline<float>::reserveSpans(void *result, int a2)
{
  if (a2)
  {
    v2 = 3 * a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (result[2] < v2)
  {
    return re::DynamicArray<int>::setCapacity(result + 1, v2);
  }

  return result;
}

uint64_t re::Spline<float>::knotCount(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    return ((*(*a1 + 40))(a1) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Spline<float>::knotAtIndex(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (*(result + 136) == 1)
  {
    result = (*(*result + 40))(result);
    if (result != a2)
    {
      return (*(*v3 + 40))(v3);
    }
  }

  else if (*(result + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::BezierSpline<float>::findSpanIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a3)
    {
      LOWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a3)
      {
        LOWORD(v4) = v4 - 1;
      }

      else
      {
        v4 = (((a3 - v3) / (v5 - v3)) * v4);
      }
    }

    LOWORD(result) = v4;
    return result;
  }

  if ((*(a1 + 64) - 1) < 0x10000)
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
    return result;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
  result = _os_crash();
  __break(1u);
  return result;
}

BOOL re::Spline<float>::areKnotsNormalized(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 80);
    if (fabsf(*v2) < 0.00001)
    {
      v3 = v2[v1 - 1];
      return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
    }

    return 0;
  }

  if (fabsf(*(a1 + 128)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a1 + 132);
  return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
}

uint64_t re::Spline<float>::normalizeKnots(uint64_t result)
{
  v1 = *(result + 64);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = *(result + 80);
    v4 = *v3;
    v5 = v1 - 1;
    v6 = v3[v5];
    *v3 = 0.0;
    if (v5 >= 2)
    {
      v7 = v6 - v4;
      v8 = v3 + 1;
      do
      {
        *v8 = (*v8 - v4) / v7;
        ++v8;
        --v2;
      }

      while (v2);
    }

    v3[v5] = 1.0;
  }

  return result;
}

uint64_t re::Spline<float>::setNonUniformKnots(uint64_t a1)
{
  *(a1 + 136) = 0;
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    re::DynamicArray<float>::resize(a1 + 48, v2 + 1);
  }

  else
  {
    *(a1 + 64) = 0;
    ++*(a1 + 72);
  }

  return 1;
}

uint64_t re::Spline<float>::setNonUniformKnots(uint64_t a1, uint64_t *a2)
{
  *(a1 + 136) = 0;
  re::DynamicArray<float>::operator=(a1 + 48, a2);
  v4 = a2[2];
  if (!v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2[4];
  *(a1 + 128) = *v5;
  *(a1 + 132) = v5[v4 - 1];
  return 1;
}

uint64_t re::Spline<float>::setNonUniformKnotAtIndex(uint64_t a1, unsigned int a2, float a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 80) + 4 * a2) = a3;
  return 1;
}

uint64_t re::Spline<float>::setUniformKnots(uint64_t result, float a2, float a3)
{
  *(result + 136) = 1;
  *(result + 64) = 0;
  ++*(result + 72);
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

float re::BezierSpline<float>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 128);
    if (v4 >= a3)
    {
      LOWORD(v5) = 0;
      v8 = 0;
    }

    else
    {
      v5 = *(a1 + 138);
      v6 = *(a1 + 132);
      if (v6 <= a3)
      {
        LOWORD(v5) = v5 - 1;
        v8 = 0x3F80000000000000;
      }

      else
      {
        v7 = ((a3 - v4) / (v6 - v4)) * v5;
        v5 = v7;
        v8 = COERCE_UNSIGNED_INT(v7 - v7) << 32;
      }
    }

    NonUniformSpan = v8 | v5;
  }

  else
  {
    v9 = *(a1 + 64) - 1;
    if (v9 >= 0x10000)
    {
      goto LABEL_19;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v11 = (3 * NonUniformSpan);
  v12 = *(a1 + 24);
  if (v12 <= v11)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v13 = (v11 + 1);
  if (v12 <= v13)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v14 = (v11 + 2);
  if (v12 <= v14)
  {
LABEL_17:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v15 = (v11 + 3);
  if (v12 <= v15)
  {
LABEL_18:
    v18 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v19) = 136315906;
    *(&v19 + 4) = "operator[]";
    WORD6(v19) = 1024;
    HIWORD(v19) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, v9, v18, v19);
    _os_crash();
    __break(1u);
  }

  v16 = *(a1 + 40);
  return (((((((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1)) * *(v16 + 4 * v13)) + (*(v16 + 4 * v11) * ((1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))))) + (*(v16 + 4 * v14) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0)))) + (*(v16 + 4 * v15) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
}

float re::BezierSpline<float>::evaluateDerivativeAt(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash();
      __break(1u);
      goto LABEL_32;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = 3 * NonUniformSpan;
  result = 0.0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v30 = (3 * NonUniformSpan) + 2;
      v31 = *(a1 + 24);
      if (v31 > v30)
      {
        v32 = (3 * NonUniformSpan) + 3;
        if (v31 > v32)
        {
          v21 = (v12 * 6.0) * v12;
          v33 = *(a1 + 40);
          v22 = ((*(v33 + 4 * v13 + 4) + (*(v33 + 4 * v32) + (*(v33 + 4 * v30) * -2.0))) * *(&NonUniformSpan + 1)) + ((1.0 - *(&NonUniformSpan + 1)) * ((*(v33 + 4 * v30) + (*(v33 + 4 * v13 + 4) * -2.0)) + *(v33 + 4 * v13)));
          return v21 * v22;
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v3 != 3)
    {
      return result;
    }

    v23 = (3 * NonUniformSpan) + 3;
    if (*(a1 + 24) > v23)
    {
      v21 = ((v12 * 6.0) * v12) * v12;
      v22 = ((*(*(a1 + 40) + 4 * v23) + (*(*(a1 + 40) + 4 * (3 * NonUniformSpan) + 8) * -3.0)) + (*(*(a1 + 40) + 4 * (3 * NonUniformSpan) + 4) * 3.0)) - *(*(a1 + 40) + 4 * (3 * NonUniformSpan));
      return v21 * v22;
    }

    goto LABEL_33;
  }

  if (!v3)
  {
    v24 = *(a1 + 24);
    if (v24 > v13)
    {
      v25 = (3 * NonUniformSpan);
      v26 = (v25 + 1);
      if (v24 > v26)
      {
        v27 = (v25 + 2);
        if (v24 > v27)
        {
          v28 = (v25 + 3);
          if (v24 > v28)
          {
            v29 = *(a1 + 40);
            return (((((((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1)) * *(v29 + 4 * v26)) + (*(v29 + 4 * (3 * NonUniformSpan)) * ((1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))))) + (*(v29 + 4 * v27) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0)))) + (*(v29 + 4 * v28) * ((*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
          }

LABEL_41:
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

LABEL_40:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_41;
      }

      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v3 != 1)
  {
    return result;
  }

  v15 = (3 * NonUniformSpan);
  v16 = (v15 + 1);
  v17 = *(a1 + 24);
  if (v17 <= v16)
  {
LABEL_32:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
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
    goto LABEL_36;
  }

  v18 = (v15 + 2);
  if (v17 <= v18)
  {
LABEL_36:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  v19 = (v15 + 3);
  if (v17 <= v19)
  {
LABEL_39:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_40;
  }

  v20 = *(a1 + 40);
  v21 = v12 * 3.0;
  v22 = (((((1.0 - *(&NonUniformSpan + 1)) + (1.0 - *(&NonUniformSpan + 1))) * *(&NonUniformSpan + 1)) * (*(v20 + 4 * v18) - *(v20 + 4 * v16))) + ((*(v20 + 4 * v16) - *(v20 + 4 * (3 * NonUniformSpan))) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))))) + ((*(v20 + 4 * v19) - *(v20 + 4 * v18)) * (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)));
  return v21 * v22;
}

float re::BezierSpline<float>::evaluateLengthAt(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 128);
    if (v5 >= a3)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      v6 = *(a1 + 138);
      v7 = *(a1 + 132);
      if (v7 <= a3)
      {
        LOWORD(v6) = v6 - 1;
      }

      else
      {
        v6 = (((a3 - v5) / (v7 - v5)) * v6);
      }
    }

    NonUniformSpan = v6;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash();
      __break(1u);
      goto LABEL_23;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    if (NonUniformSpan)
    {
      v10 = NonUniformSpan - 1;
      if (v9 > v10)
      {
        v11 = *(*(a1 + 120) + 4 * v10);
        goto LABEL_19;
      }

LABEL_23:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    v11 = 0.0;
    goto LABEL_19;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(*a1 + 152))(a1, v12);
    v12 = (v12 + 1);
  }

  while (NonUniformSpan != v12);
LABEL_19:
  v13 = (*(*a1 + 56))(a1, NonUniformSpan);
  v14 = (v13 + a3) * 0.5;
  v15 = (a3 - v13) * 0.5;
  v16 = (qword_1ECEF6BB0 + 4);
  v17 = 0.0;
  v18 = 16;
  do
  {
    v17 = v17 + (*v16 * fabsf((*(*a1 + 128))(a1, 1, v14 + (v15 * *(v16 - 1)))));
    v16 += 2;
    --v18;
  }

  while (v18);
  return v11 + (v15 * v17);
}

uint64_t re::BezierSpline<float>::calculateMonomialBasisForSpan(uint64_t a1, __int16 a2, float *a3)
{
  v3 = (3 * a2);
  v4 = *(a1 + 24);
  if (v4 <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  v5 = (3 * a2);
  v6 = *(a1 + 40);
  v7 = *(v6 + 4 * v3);
  *a3 = v7;
  v8 = (v5 + 1);
  if (v4 <= v8)
  {
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  a3[1] = (*(v6 + 4 * v8) - v7) * 3.0;
  v9 = (v5 + 2);
  if (v4 <= v9)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  a3[2] = ((*(v6 + 4 * v3) + (*(v6 + 4 * v8) * -2.0)) + *(v6 + 4 * v9)) * 3.0;
  v10 = (v5 + 3);
  if (v4 <= v10)
  {
    goto LABEL_9;
  }

  a3[3] = (*(v6 + 4 * v10) + ((*(v6 + 4 * v8) - *(v6 + 4 * v9)) * 3.0)) - *(v6 + 4 * v3);
  return 4;
}

float re::BezierSpline<float>::evaluateSpanLength(uint64_t a1, unsigned __int16 a2)
{
  v4 = (*(*a1 + 56))(a1, a2);
  v5 = (*(*a1 + 56))(a1, (a2 + 1));
  v6 = (v4 + v5) * 0.5;
  v7 = (v5 - v4) * 0.5;
  v8 = (qword_1ECEF6BB0 + 4);
  v9 = 0.0;
  v10 = 16;
  do
  {
    v9 = v9 + (*v8 * fabsf((*(*a1 + 128))(a1, 1, v6 + (v7 * *(v8 - 1)))));
    v8 += 2;
    --v10;
  }

  while (v10);
  return v7 * v9;
}

void *re::Spline<float>::~Spline(void *a1)
{
  *a1 = &unk_1F5D1A598;
  v2 = (a1 + 1);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

__n128 re::DynamicArray<re::SpatialCurveKey<re::Vector2<float>>>::add(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
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

        re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 32 * v5);
  result = *a2;
  v13 = *(a2 + 16);
  *v11 = *a2;
  v11[1] = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::SpatialCurve<re::Vector2<float>>::addSpline(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a1 + 144) <= a2)
  {
LABEL_187:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_188;
  }

  v4 = a2;
  v6 = *(*(a1 + 160) + 32 * a2);
  v168 = a2;
  if (v6 <= 1)
  {
    if (!v6)
    {
      v34 = re::globalAllocators(a1);
      v8 = (*(*v34[2] + 32))(v34[2], 144, 8);
      *(v8 + 8) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 136) = 0;
      *(v8 + 24) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 132) = 1065353216;
      *(v8 + 136) = 1;
      *v8 = &unk_1F5D1A648;
      v35 = a3 - v4;
      if (v35)
      {
        v36 = v35 + 1;
        re::DynamicArray<unsigned long>::resize(v8 + 8, v36);
        *(v8 + 138) = v35;
        if ((*(v8 + 136) & 1) == 0)
        {
          re::DynamicArray<float>::resize(v8 + 48, v35 + 1);
        }
      }

      else
      {
        *(v8 + 32) = 1;
        *(v8 + 138) = 0;
        v36 = 1;
      }

      re::DynamicArray<float>::resize(a1 + 88, v36);
      v44 = 0;
      while (1)
      {
        v45 = v168 + v44;
        if (*(a1 + 144) <= v45)
        {
          goto LABEL_143;
        }

        v46 = v44;
        if (*(v8 + 24) <= v44)
        {
          goto LABEL_144;
        }

        v47 = *(a1 + 160) + 32 * v45;
        *(*(v8 + 40) + 8 * v46) = *(v47 + 8);
        if (*(a1 + 104) <= v46)
        {
          goto LABEL_145;
        }

        *(*(a1 + 120) + 4 * v46) = *(v47 + 4);
        v44 = v46 + 1;
        if ((v46 + 1) > v35)
        {
          goto LABEL_65;
        }
      }
    }

    if (v6 == 1)
    {
      v7 = re::globalAllocators(a1);
      v8 = (*(*v7[2] + 32))(v7[2], 144, 8);
      *(v8 + 8) = 0u;
      *(v8 + 120) = 0u;
      *(v8 + 136) = 0;
      *(v8 + 24) = 0u;
      *(v8 + 40) = 0u;
      *(v8 + 56) = 0u;
      *(v8 + 72) = 0u;
      *(v8 + 88) = 0u;
      *(v8 + 104) = 0u;
      *(v8 + 132) = 1065353216;
      *(v8 + 136) = 1;
      *v8 = &unk_1F5D1A7D0;
      v9 = a3;
      v10 = a3 - v4;
      if (a3 == v4)
      {
        *(v8 + 32) = 1;
        *(v8 + 138) = 0;
      }

      else
      {
        re::DynamicArray<unsigned long>::resize(v8 + 8, (3 * v10 + 1));
        *(v8 + 138) = v10;
        if ((*(v8 + 136) & 1) == 0)
        {
          re::DynamicArray<float>::resize(v8 + 48, (a3 - v4) + 1);
        }
      }

      v48 = (a3 - v4);
      re::DynamicArray<float>::resize(a1 + 88, v48 + 1);
      v49 = *(a1 + 144);
      if (v49 <= v168)
      {
        goto LABEL_192;
      }

      if (!*(a1 + 104))
      {
LABEL_195:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_196;
      }

      **(a1 + 120) = *(*(a1 + 160) + 32 * v168 + 4);
      if (v9 == v4)
      {
        v50 = 0;
      }

      else
      {
        v51 = 0;
        v52 = 0;
        __asm
        {
          FMOV            V0.2S, #3.0
          FMOV            V1.2S, #-3.0
        }

        do
        {
          v59 = (v51 + v4);
          v60 = *(a1 + 144);
          if (v60 <= v59)
          {
            goto LABEL_158;
          }

          if (v60 <= v59 + 1)
          {
            goto LABEL_159;
          }

          v61 = v51 + 1;
          if (*(a1 + 104) <= (v51 + 1))
          {
            goto LABEL_160;
          }

          v62 = *(a1 + 160);
          v63 = (v62 + 32 * (v59 + 1));
          v64 = v63->f32[1];
          v65 = (*(a1 + 120) + 4 * v51);
          v65[1] = v64;
          v66 = v64 - *v65;
          if (*(v8 + 24) <= v52)
          {
            goto LABEL_161;
          }

          v67 = (v62 + 32 * v59);
          v68 = v63[2];
          v69 = v67[1];
          v70 = v67[3];
          *(*(v8 + 40) + 8 * v52) = v69;
          if (*(v8 + 24) <= (v52 + 1))
          {
            goto LABEL_162;
          }

          *(*(v8 + 40) + 8 * (v52 + 1)) = vadd_f32(vdiv_f32(vmul_n_f32(v70, v66), _D0), v69);
          v71 = (v52 + 2);
          if (*(v8 + 24) <= v71)
          {
            goto LABEL_163;
          }

          v52 += 3;
          *(*(v8 + 40) + 8 * v71) = vadd_f32(v63[1], vdiv_f32(vmul_n_f32(v68, v66), _D1));
          v51 = v61;
        }

        while (v48 != v61);
        v49 = *(a1 + 144);
        v50 = v52;
      }

      if (v49 <= v9)
      {
        goto LABEL_212;
      }

      if (*(v8 + 24) <= v50)
      {
LABEL_213:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_214:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_215;
      }

      *(*(v8 + 40) + 8 * v50) = *(*(a1 + 160) + 32 * v9 + 8);
LABEL_65:
      (*(*v8 + 96))(v8, a1 + 88);
      goto LABEL_121;
    }

LABEL_218:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Unrecognized key type.", "!Unreachable code", "addSpline", 343);
    _os_crash();
    __break(1u);
    return;
  }

  v11 = a1 + 128;
  if (v6 == 2)
  {
    v37 = re::globalAllocators(a1);
    v8 = (*(*v37[2] + 32))(v37[2], 144, 8);
    *(v8 + 120) = 0u;
    *(v8 + 136) = 0;
    *(v8 + 104) = 0u;
    *(v8 + 88) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 132) = 1065353216;
    *(v8 + 136) = 1;
    *v8 = &unk_1F5D1A7D0;
    *(a1 + 564) = v4;
    *(a1 + 566) = a3;
    v38 = a3 - v4;
    *(a1 + 568) = v11;
    re::DynamicArray<unsigned long>::resize(a1 + 360, (v38 + 3));
    re::DynamicArray<float>::resize(a1 + 520, (v38 + 3));
    v39 = *(a1 + 568);
    v40 = *(a1 + 564);
    v41 = *(v39 + 16);
    if (v41 <= v40)
    {
LABEL_191:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_192:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_193;
    }

    if (v41 <= v40 + 1)
    {
LABEL_194:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_195;
    }

    if (!*(a1 + 376))
    {
LABEL_197:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_198;
    }

    **(a1 + 392) = vsub_f32(vadd_f32(*(*(v39 + 32) + 32 * v40 + 8), *(*(v39 + 32) + 32 * v40 + 8)), *(*(v39 + 32) + 32 * (v40 + 1) + 8));
    if (!*(a1 + 536))
    {
LABEL_199:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_200;
    }

    **(a1 + 552) = 0;
    v42 = re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(a1 + 360, 0);
    if (*(a1 + 536) <= 1uLL)
    {
LABEL_201:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_202;
    }

    *(*(a1 + 552) + 4) = v42;
    if (a3 != v4)
    {
      v72 = 0;
      v43 = v38;
      while (1)
      {
        v73 = *(a1 + 568);
        v74 = v72 + *(a1 + 564);
        if (*(v73 + 16) <= v74)
        {
          goto LABEL_154;
        }

        v75 = v72 + 1;
        v76 = (v72 + 1);
        if (*(a1 + 376) <= v76)
        {
          goto LABEL_155;
        }

        *(*(a1 + 392) + 8 * v76) = *(*(v73 + 32) + 32 * v74 + 8);
        if (*(a1 + 536) <= v76)
        {
          goto LABEL_156;
        }

        v77 = *(*(a1 + 552) + 4 * v76);
        v78 = re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(a1 + 360, v72);
        v79 = (v72 + 2);
        if (*(a1 + 536) <= v79)
        {
          goto LABEL_157;
        }

        *(*(a1 + 552) + 4 * v79) = v77 + v78;
        ++v72;
        if (v38 == v75)
        {
          goto LABEL_72;
        }
      }
    }

    v43 = 0;
LABEL_72:
    v80 = *(a1 + 568);
    v81 = v43 + *(a1 + 564);
    if (*(v80 + 16) <= v81)
    {
      goto LABEL_205;
    }

    v82 = (v38 + 3) - 2;
    if (*(a1 + 376) <= v82)
    {
LABEL_206:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_207;
    }

    *(*(a1 + 392) + 8 * v82) = *(*(v80 + 32) + 32 * v81 + 8);
    v83 = *(a1 + 376);
    if (v83 <= v82)
    {
LABEL_207:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_208;
    }

    v84 = (v38 + 3) - 3;
    if (v83 <= v84)
    {
LABEL_208:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_209;
    }

    v85 = (v38 + 3) - 1;
    if (v83 <= v85)
    {
LABEL_209:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_210;
    }

    *(*(a1 + 392) + 8 * v85) = vsub_f32(vadd_f32(*(*(a1 + 392) + 8 * v82), *(*(a1 + 392) + 8 * v82)), *(*(a1 + 392) + 8 * v84));
    if (*(a1 + 536) <= v82)
    {
LABEL_210:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_211;
    }

    v86 = *(*(a1 + 552) + 4 * v82);
    v87 = re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(a1 + 360, (v38 - 1));
    if (*(a1 + 536) <= v85)
    {
LABEL_211:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_212:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_213;
    }

    *(*(a1 + 552) + 4 * v85) = v86 + v87;
    v88 = *(a1 + 566);
    v89 = *(a1 + 564);
    (*(*v8 + 16))(v8, (v88 - v89));
    v90 = v88 - v89;
    if (v88 == v89)
    {
      v91 = 0;
      v92 = v90;
    }

    else
    {
      v108 = 0;
      LOWORD(v91) = 0;
      v92 = v90;
      __asm
      {
        FMOV            V9.2S, #3.0
        FMOV            V10.2S, #-3.0
      }

      do
      {
        v111 = v108 + 1;
        v112 = *(a1 + 536);
        if (v112 <= v108 + 1)
        {
          goto LABEL_173;
        }

        if (v112 <= v108 + 2)
        {
          goto LABEL_174;
        }

        v113 = *(a1 + 376);
        if (v113 <= v111)
        {
          goto LABEL_175;
        }

        if (v113 <= v108 + 2)
        {
          goto LABEL_176;
        }

        v114 = *(a1 + 552);
        v115 = v114 + 4 * v108;
        v116 = *(v115 + 4);
        v117 = *(v115 + 8);
        v118 = *(a1 + 392);
        v169 = v117 - v116;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateCatmullRomDerivative(v112, v114, v113, v118, v108, v116);
        v120 = v119;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateCatmullRomDerivative(*(a1 + 536), *(a1 + 552), *(a1 + 376), *(a1 + 392), v108, v117);
        if (*(v8 + 24) <= v91)
        {
          goto LABEL_177;
        }

        v122 = (v118 + 8 * v108);
        v123 = v122[1];
        *(*(v8 + 40) + 8 * v91) = v123;
        if (*(v8 + 24) <= (v91 + 1))
        {
          goto LABEL_178;
        }

        *(*(v8 + 40) + 8 * (v91 + 1)) = vadd_f32(vdiv_f32(vmul_n_f32(v120, v169), _D9), v123);
        v124 = (v91 + 2);
        if (*(v8 + 24) <= v124)
        {
          goto LABEL_179;
        }

        LOWORD(v91) = v91 + 3;
        *(*(v8 + 40) + 8 * v124) = vadd_f32(v122[2], vdiv_f32(vmul_n_f32(v121, v169), _D10));
        ++v108;
      }

      while (v92 != v111);
      v91 = v91;
    }

    v125 = *(a1 + 568);
    v126 = v92 + *(a1 + 564);
    if (*(v125 + 16) <= v126)
    {
      goto LABEL_214;
    }

    if (*(v8 + 24) <= v91)
    {
LABEL_215:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_216:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_217:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    *(*(v8 + 40) + 8 * v91) = *(*(v125 + 32) + 32 * v126 + 8);
    re::internal::CubicInterpolant<re::Vector2<float>>::setKnotsToKeyKnots(a1 + 360, a1 + 520);
  }

  else
  {
    if (v6 != 3)
    {
      goto LABEL_218;
    }

    v12 = re::globalAllocators(a1);
    v8 = (*(*v12[2] + 32))(v12[2], 144, 8);
    *(v8 + 120) = 0u;
    *(v8 + 136) = 0;
    *(v8 + 88) = 0u;
    *(v8 + 72) = 0u;
    *(v8 + 56) = 0u;
    *(v8 + 40) = 0u;
    *(v8 + 24) = 0u;
    *(v8 + 8) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 132) = 1065353216;
    *(v8 + 136) = 1;
    *v8 = &unk_1F5D1A7D0;
    *(a1 + 564) = v4;
    *(a1 + 566) = a3;
    *(a1 + 568) = v11;
    re::internal::CubicInterpolant<re::Vector2<float>>::setKnotsToKeyKnots(a1 + 360, a1 + 520);
    v13 = (*(a1 + 566) - *(a1 + 564) + 1);
    re::DynamicArray<unsigned long>::resize(a1 + 360, v13);
    re::DynamicArray<unsigned long>::resize(a1 + 400, v13);
    re::DynamicArray<unsigned long>::resize(a1 + 440, v13);
    re::DynamicArray<unsigned long>::resize(a1 + 480, v13);
    v17 = v13 - 1;
    if (*(a1 + 376) <= v13 - 1)
    {
LABEL_190:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_191;
    }

    *(*(a1 + 392) + 8 * v17) = 0;
    if (!*(a1 + 376))
    {
LABEL_193:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_194;
    }

    **(a1 + 392) = 0;
    if (*(a1 + 496) <= v17)
    {
LABEL_196:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_197;
    }

    *(*(a1 + 512) + 8 * v17) = 0x3F8000003F800000;
    if (!*(a1 + 496))
    {
LABEL_198:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_199;
    }

    **(a1 + 512) = 0x3F8000003F800000;
    if (*(a1 + 416) <= v17)
    {
LABEL_200:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_201;
    }

    *(*(a1 + 432) + 8 * v17) = 0;
    if (!*(a1 + 416))
    {
LABEL_202:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_203;
    }

    **(a1 + 432) = 0;
    if (*(a1 + 456) <= v17)
    {
LABEL_203:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_204;
    }

    *(*(a1 + 472) + 8 * v17) = 0;
    if (!*(a1 + 456))
    {
LABEL_204:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_205:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_206;
    }

    **(a1 + 472) = 0;
    if (v17 >= 2)
    {
      v18 = 2 - v13;
      v19 = 1;
      v20 = 8;
      do
      {
        v21 = *(a1 + 536);
        if (v21 <= v19)
        {
          goto LABEL_164;
        }

        v22 = v19 + 1;
        if (v21 <= v19 + 1)
        {
          goto LABEL_165;
        }

        if (*(a1 + 376) <= v19)
        {
          goto LABEL_166;
        }

        v23 = *(a1 + 552);
        v24 = *(v23 + 4 * v19);
        *v14.i32 = v24 - *(v23 + v20 - 8);
        v16.i32[0] = *(v23 + v20);
        *(*(a1 + 392) + 8 * v19) = vdup_lane_s32(v14, 0);
        if (*(a1 + 496) <= v19)
        {
          goto LABEL_167;
        }

        v15.f32[0] = v16.f32[0] - v24;
        v16.f32[0] = (*v14.i32 + v15.f32[0]) + (*v14.i32 + v15.f32[0]);
        *(*(a1 + 512) + 8 * v19) = vdup_lane_s32(v16, 0);
        if (*(a1 + 416) <= v19)
        {
          goto LABEL_168;
        }

        *(*(a1 + 432) + 8 * v19) = vdup_lane_s32(v15, 0);
        v25 = *(a1 + 568);
        v26 = *(a1 + 564);
        v27 = v26 + v22;
        v28 = *(v25 + 16);
        if (v28 <= v27)
        {
          goto LABEL_169;
        }

        v29 = v26 + v19;
        if (v28 <= v29)
        {
          goto LABEL_170;
        }

        v30 = v26 + (v19 - 1);
        if (v28 <= v30)
        {
          goto LABEL_171;
        }

        if (*(a1 + 456) <= v19)
        {
          goto LABEL_172;
        }

        v31 = *(v25 + 32);
        v32 = *(v31 + 32 * v29 + 8);
        v15 = vmul_n_f32(vsub_f32(*(v31 + 32 * v27 + 8), v32), 3.0 / v15.f32[0]);
        v16 = vsub_f32(v32, *(v31 + 32 * v30 + 8));
        v14 = vsub_f32(v15, vmul_n_f32(v16, 3.0 / *v14.i32));
        *(*(a1 + 472) + 8 * v19) = v14;
        v20 += 4;
        ++v19;
      }

      while (v18 + v22 != 1);
      v33.n128_u64[0] = re::internal::CubicInterpolant<re::Vector2<float>>::solveTriDiagonal(a1 + 360, a1 + 480, a1 + 400, a1 + 440);
      goto LABEL_82;
    }

    v33.n128_u64[0] = re::internal::CubicInterpolant<re::Vector2<float>>::solveTriDiagonal(a1 + 360, a1 + 480, a1 + 400, a1 + 440);
    if (v13 != 1)
    {
LABEL_82:
      v93 = 0;
      v94 = 4;
      v95 = 8;
      v33.n128_u32[0] = 1.0;
      do
      {
        v96 = v93 + 1;
        if (*(a1 + 536) <= v93 + 1)
        {
          goto LABEL_146;
        }

        v97 = *(a1 + 568);
        v98 = *(a1 + 564);
        v99 = v98 + v96;
        v100 = *(v97 + 16);
        if (v100 <= v99)
        {
          goto LABEL_147;
        }

        v101 = v98 + v93;
        if (v100 <= v101)
        {
          goto LABEL_148;
        }

        v102 = *(a1 + 456);
        if (v102 <= v93)
        {
          goto LABEL_149;
        }

        if (v102 <= v96)
        {
          goto LABEL_150;
        }

        if (*(a1 + 416) <= v93)
        {
          goto LABEL_151;
        }

        v103 = *(*(a1 + 552) + v94) - *(*(a1 + 552) + v94 - 4);
        *(*(a1 + 432) + 8 * v93) = vsub_f32(vmul_n_f32(vsub_f32(*(*(v97 + 32) + 32 * v99 + 8), *(*(v97 + 32) + 32 * v101 + 8)), 1.0 / v103), vmul_n_f32(vadd_f32(vadd_f32(*(*(a1 + 472) + v95 - 8), *(*(a1 + 472) + v95 - 8)), *(*(a1 + 472) + v95)), v103 / 3.0));
        if (*(a1 + 456) <= v96)
        {
          goto LABEL_152;
        }

        if (*(a1 + 496) <= v93)
        {
          goto LABEL_153;
        }

        *(*(a1 + 512) + 8 * v93) = vmul_n_f32(vsub_f32(*(*(a1 + 472) + v95), *(*(a1 + 472) + v95 - 8)), 1.0 / (v103 * 3.0));
        v94 += 4;
        v95 += 8;
        ++v93;
      }

      while (v17 != v96);
    }

    v104 = *(a1 + 566);
    v105 = *(a1 + 564);
    (*(*v8 + 16))(v8, (v104 - v105), v33);
    v106 = v104 - v105;
    if (v104 == v105)
    {
      v107 = 0;
    }

    else
    {
      v127 = 0;
      v128 = 0;
      __asm
      {
        FMOV            V9.2S, #3.0
        FMOV            V10.2S, #-3.0
      }

      do
      {
        v131 = *(a1 + 536);
        if (v131 <= v127)
        {
          goto LABEL_180;
        }

        if (v131 <= (v127 + 1))
        {
          goto LABEL_181;
        }

        v132 = *(a1 + 568);
        v133 = *(a1 + 564);
        v134 = v127 + v133;
        v135 = *(v132 + 16);
        if (v135 <= v127 + v133)
        {
          goto LABEL_182;
        }

        v136 = v133 + (v127 + 1);
        if (v135 <= v136)
        {
          goto LABEL_183;
        }

        v137 = *(a1 + 552);
        v138 = *(v137 + 4 * v127);
        v139 = *(v137 + 4 * (v127 + 1));
        v140 = *(v132 + 32);
        v141 = *(v140 + 32 * v134 + 8);
        v142 = *(v140 + 32 * v136 + 8);
        v170 = v139 - v138;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateNaturalSplineDerivative(v131, v137, *(a1 + 416), *(a1 + 432), *(a1 + 456), *(a1 + 472), *(a1 + 496), *(a1 + 512), v138, v127);
        v144 = v143;
        re::internal::CubicInterpolant<re::Vector2<float>>::evaluateNaturalSplineDerivative(*(a1 + 536), *(a1 + 552), *(a1 + 416), *(a1 + 432), *(a1 + 456), *(a1 + 472), *(a1 + 496), *(a1 + 512), v139, v127);
        if (*(v8 + 24) <= v128)
        {
          goto LABEL_184;
        }

        *(*(v8 + 40) + 8 * v128) = v141;
        if (*(v8 + 24) <= (v128 + 1))
        {
          goto LABEL_185;
        }

        *(*(v8 + 40) + 8 * (v128 + 1)) = vadd_f32(vdiv_f32(vmul_n_f32(v144, v170), _D9), v141);
        v146 = (v128 + 2);
        if (*(v8 + 24) <= v146)
        {
          goto LABEL_186;
        }

        v128 += 3;
        *(*(v8 + 40) + 8 * v146) = vadd_f32(v142, vdiv_f32(vmul_n_f32(v145, v170), _D10));
        ++v127;
      }

      while (v106 != v127);
      v107 = v128;
    }

    v147 = *(a1 + 568);
    v148 = *(a1 + 564) + v106;
    if (*(v147 + 16) <= v148)
    {
      goto LABEL_216;
    }

    if (*(v8 + 24) <= v107)
    {
      goto LABEL_217;
    }

    *(*(v8 + 40) + 8 * v107) = *(*(v147 + 32) + 32 * v148 + 8);
  }

  (*(*v8 + 96))(v8, a1 + 520);
LABEL_121:
  v149 = (*(*v8 + 40))(v8);
  re::DynamicArray<float>::resize(v8 + 88, v149);
  if (v149)
  {
    v150 = 0;
    v151 = 0.0;
    while (1)
    {
      (*(*v8 + 152))(v8, v150);
      if (*(v8 + 104) <= v150)
      {
        break;
      }

      v151 = v151 + v152;
      *(*(v8 + 120) + 4 * v150++) = v151;
      if (v149 == v150)
      {
        goto LABEL_125;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_143:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_144:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_145:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_146:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_147:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_148:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_149:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_150:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_151:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_152:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_153:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_154:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_155:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_156:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_157:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_158:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_159:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_160:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_161:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_162:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_163:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_164:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_165:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_166:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_167:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_168:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_169:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_170:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_171:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_172:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_173:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_174:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_175:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_176:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_177:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_178:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_179:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_180:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_181:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_182:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_183:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_184:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_185:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_186:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_187;
  }

LABEL_125:
  v153 = *(a1 + 144);
  if (v153 <= v168)
  {
LABEL_188:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_189;
  }

  if (v153 <= a3)
  {
LABEL_189:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_190;
  }

  v154 = *(a1 + 160);
  v155 = *(v154 + 32 * v168 + 4);
  v156 = *(v154 + 32 * a3 + 4);
  v157 = (*(*v8 + 48))(v8);
  (*(*v8 + 56))(v8, (v157 - 1));
  v159 = (*(*v8 + 136))(v8);
  v160 = *(a1 + 184);
  if (v160)
  {
    v161 = *(*(a1 + 200) + 24 * v160 - 8);
  }

  else
  {
    v161 = 0.0;
  }

  v162 = *(a1 + 176);
  if (v160 >= v162)
  {
    v163 = v160 + 1;
    if (v162 < v160 + 1)
    {
      if (*(a1 + 168))
      {
        v164 = 2 * v162;
        if (!v162)
        {
          v164 = 8;
        }

        if (v164 <= v163)
        {
          v165 = v163;
        }

        else
        {
          v165 = v164;
        }

        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 168), v165);
      }

      else
      {
        re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 168), v163);
        ++*(a1 + 192);
      }
    }

    v160 = *(a1 + 184);
  }

  v166 = *(a1 + 200) + 24 * v160;
  *v166 = v8;
  *(v166 + 8) = v155;
  *(v166 + 12) = v156;
  *(v166 + 16) = v159 + v161;
  *(a1 + 184) = v160 + 1;
  ++*(a1 + 192);
}

re *re::internal::destroyPersistent<re::Spline<re::Vector2<float>>>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::LinearSpline<re::Vector2<float>>::~LinearSpline(void *a1)
{
  re::Spline<re::Vector2<float>>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::LinearSpline<re::Vector2<float>>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a2;
    re::DynamicArray<unsigned long>::resize(a1 + 8, a2 + 1);
    *(a1 + 138) = v3;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, v4 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::LinearSpline<re::Vector2<float>>::reserveSpans(void *result, unsigned int a2)
{
  if (result[2] <= a2)
  {
    return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 1, a2 + 1);
  }

  return result;
}

uint64_t re::Spline<re::Vector2<float>>::knotCount(uint64_t a1)
{
  if ((*(*a1 + 40))(a1))
  {
    return ((*(*a1 + 40))(a1) + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t re::Spline<re::Vector2<float>>::knotAtIndex(uint64_t result, unsigned int a2)
{
  v3 = result;
  if (*(result + 136) == 1)
  {
    result = (*(*result + 40))(result);
    if (result != a2)
    {
      return (*(*v3 + 40))(v3);
    }
  }

  else if (*(result + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return result;
}

uint64_t re::LinearSpline<re::Vector2<float>>::findSpanIndex(uint64_t a1, float a2)
{
  if (*(a1 + 136) == 1)
  {
    v2 = *(a1 + 128);
    if (v2 >= a2)
    {
      LOWORD(v3) = 0;
    }

    else
    {
      v3 = *(a1 + 138);
      v4 = *(a1 + 132);
      if (v4 <= a2)
      {
        LOWORD(v3) = v3 - 1;
      }

      else
      {
        v3 = (((a2 - v2) / (v4 - v2)) * v3);
      }
    }

    LOWORD(result) = v3;
  }

  else
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a2);
  }

  return result;
}

BOOL re::Spline<re::Vector2<float>>::areKnotsNormalized(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1)
  {
    v2 = *(a1 + 80);
    if (fabsf(*v2) < 0.00001)
    {
      v3 = v2[v1 - 1];
      return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
    }

    return 0;
  }

  if (fabsf(*(a1 + 128)) >= 0.00001)
  {
    return 0;
  }

  v3 = *(a1 + 132);
  return v3 == 1.0 || fabsf(v3 + -1.0) < (((fabsf(v3) + 1.0) + 1.0) * 0.00001);
}

uint64_t re::Spline<re::Vector2<float>>::normalizeKnots(uint64_t result)
{
  v1 = *(result + 64);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = *(result + 80);
    v4 = *v3;
    v5 = v1 - 1;
    v6 = v3[v5];
    *v3 = 0.0;
    if (v5 >= 2)
    {
      v7 = v6 - v4;
      v8 = v3 + 1;
      do
      {
        *v8 = (*v8 - v4) / v7;
        ++v8;
        --v2;
      }

      while (v2);
    }

    v3[v5] = 1.0;
  }

  return result;
}

uint64_t re::Spline<re::Vector2<float>>::setNonUniformKnots(uint64_t a1)
{
  *(a1 + 136) = 0;
  if ((*(*a1 + 40))(a1))
  {
    v2 = (*(*a1 + 40))(a1);
    re::DynamicArray<float>::resize(a1 + 48, v2 + 1);
  }

  else
  {
    *(a1 + 64) = 0;
    ++*(a1 + 72);
  }

  return 1;
}

uint64_t re::Spline<re::Vector2<float>>::setNonUniformKnots(uint64_t a1, uint64_t *a2)
{
  *(a1 + 136) = 0;
  re::DynamicArray<float>::operator=(a1 + 48, a2);
  v4 = a2[2];
  if (!v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2[4];
  *(a1 + 128) = *v5;
  *(a1 + 132) = v5[v4 - 1];
  return 1;
}

uint64_t re::Spline<re::Vector2<float>>::setNonUniformKnotAtIndex(uint64_t a1, unsigned int a2, float a3)
{
  if (*(a1 + 64) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(a1 + 80) + 4 * a2) = a3;
  return 1;
}

uint64_t re::Spline<re::Vector2<float>>::setUniformKnots(uint64_t result, float a2, float a3)
{
  *(result + 136) = 1;
  *(result + 64) = 0;
  ++*(result + 72);
  *(result + 128) = a2;
  *(result + 132) = a3;
  return result;
}

float32x2_t re::LinearSpline<re::Vector2<float>>::evaluateAt(uint64_t a1, float a2)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a2)
    {
      LOWORD(v4) = 0;
      v7 = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a2)
      {
        LOWORD(v4) = v4 - 1;
        v7 = 0x3F80000000000000;
      }

      else
      {
        v6 = ((a2 - v3) / (v5 - v3)) * v4;
        v4 = v6;
        v7 = COERCE_UNSIGNED_INT(v6 - v6) << 32;
      }
    }

    NonUniformSpan = v7 | v4;
  }

  else
  {
    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a2);
  }

  v9 = *(a1 + 24);
  if (v9 <= NonUniformSpan)
  {
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

  if (v9 <= NonUniformSpan + 1)
  {
    goto LABEL_13;
  }

  return vadd_f32(vmul_n_f32(*(*(a1 + 40) + 8 * NonUniformSpan), 1.0 - *(&NonUniformSpan + 1)), vmul_n_f32(*(*(a1 + 40) + 8 * (NonUniformSpan + 1)), *(&NonUniformSpan + 1)));
}

float32x2_t re::LinearSpline<re::Vector2<float>>::evaluateDerivativeAt(uint64_t a1, int a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = *(a1 + 24);
  if (v13 <= NonUniformSpan)
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
  }

  v14 = NonUniformSpan + 1;
  if (v13 <= v14)
  {
    goto LABEL_17;
  }

  v15 = *(a1 + 40);
  if (a2 == 1)
  {
    return vmul_n_f32(vsub_f32(*(v15 + 8 * v14), *(v15 + 8 * NonUniformSpan)), v12);
  }

  else
  {
    result = 0;
    if (!a2)
    {
      return vadd_f32(vmul_n_f32(*(v15 + 8 * NonUniformSpan), 1.0 - *(&NonUniformSpan + 1)), vmul_n_f32(*(v15 + 8 * v14), *(&NonUniformSpan + 1)));
    }
  }

  return result;
}

float re::LinearSpline<re::Vector2<float>>::evaluateLengthAt(uint64_t a1, float a2)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a2)
    {
      LOWORD(v4) = 0;
      v7 = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a2)
      {
        LOWORD(v4) = v4 - 1;
        v7 = 0x3F80000000000000;
      }

      else
      {
        v6 = ((a2 - v3) / (v5 - v3)) * v4;
        v4 = v6;
        v7 = COERCE_UNSIGNED_INT(v6 - v6) << 32;
      }
    }

    NonUniformSpan = v7 | v4;
  }

  else
  {
    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a2);
  }

  v9 = *(a1 + 104);
  if (!v9)
  {
    if (NonUniformSpan)
    {
      v12 = 0;
      v11 = 0.0;
      do
      {
        v11 = v11 + (*(*a1 + 152))(a1, v12);
        v12 = (v12 + 1);
      }

      while (NonUniformSpan != v12);
      goto LABEL_18;
    }

LABEL_17:
    v11 = 0.0;
    goto LABEL_18;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_17;
  }

  v10 = NonUniformSpan - 1;
  if (v9 <= v10)
  {
    goto LABEL_21;
  }

  v11 = *(*(a1 + 120) + 4 * v10);
LABEL_18:
  v13 = NonUniformSpan + 1;
  if (*(a1 + 24) <= v13)
  {
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

  v14 = vsub_f32(*(*(a1 + 40) + 8 * NonUniformSpan), *(*(a1 + 40) + 8 * v13));
  return v11 + (*(&NonUniformSpan + 1) * sqrtf(vaddv_f32(vmul_f32(v14, v14))));
}

uint64_t re::LinearSpline<re::Vector2<float>>::calculateMonomialBasisForSpan(uint64_t a1, unsigned int a2, float32x2_t *a3)
{
  if (*(a1 + 24) <= a2)
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

  v3 = *(*(a1 + 40) + 8 * a2);
  *a3 = v3;
  v4 = a2 + 1;
  if (*(a1 + 24) <= v4)
  {
    goto LABEL_5;
  }

  a3[1] = vsub_f32(*(*(a1 + 40) + 8 * v4), v3);
  a3[2] = 0;
  a3[3] = 0;
  return 2;
}

float re::LinearSpline<re::Vector2<float>>::evaluateSpanLength(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 24);
  if (v2 <= a2)
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

  v3 = a2 + 1;
  if (v2 <= v3)
  {
    goto LABEL_5;
  }

  v4 = vsub_f32(*(*(a1 + 40) + 8 * v3), *(*(a1 + 40) + 8 * a2));
  return sqrtf(vaddv_f32(vmul_f32(v4, v4)));
}

void *re::Spline<re::Vector2<float>>::~Spline(void *a1)
{
  *a1 = &unk_1F5D1A720;
  v2 = (a1 + 1);
  re::DynamicArray<unsigned long>::deinit((a1 + 11));
  re::DynamicArray<unsigned long>::deinit((a1 + 6));
  re::DynamicArray<unsigned long>::deinit(v2);
  return a1;
}

void re::BezierSpline<re::Vector2<float>>::~BezierSpline(void *a1)
{
  re::Spline<re::Vector2<float>>::~Spline(a1);

  JUMPOUT(0x1E6906520);
}

void re::BezierSpline<re::Vector2<float>>::resizeSpans(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    re::DynamicArray<unsigned long>::resize(a1 + 8, (3 * a2 + 1));
    *(a1 + 138) = a2;
    if ((*(a1 + 136) & 1) == 0)
    {

      re::DynamicArray<float>::resize(a1 + 48, a2 + 1);
    }
  }

  else
  {
    *(a1 + 24) = 0;
    ++*(a1 + 32);
    *(a1 + 138) = 0;
    if ((*(a1 + 136) & 1) == 0)
    {
      *(a1 + 64) = 0;
      ++*(a1 + 72);
    }
  }
}

void *re::BezierSpline<re::Vector2<float>>::reserveSpans(void *result, int a2)
{
  if (a2)
  {
    v2 = 3 * a2 + 1;
  }

  else
  {
    v2 = 0;
  }

  if (result[2] < v2)
  {
    return re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(result + 1, v2);
  }

  return result;
}

uint64_t re::BezierSpline<re::Vector2<float>>::findSpanIndex(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 128);
    if (v3 >= a3)
    {
      LOWORD(v4) = 0;
    }

    else
    {
      v4 = *(a1 + 138);
      v5 = *(a1 + 132);
      if (v5 <= a3)
      {
        LOWORD(v4) = v4 - 1;
      }

      else
      {
        v4 = (((a3 - v3) / (v5 - v3)) * v4);
      }
    }

    LOWORD(result) = v4;
    return result;
  }

  if ((*(a1 + 64) - 1) < 0x10000)
  {
    LOWORD(result) = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
    return result;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
  result = _os_crash();
  __break(1u);
  return result;
}

float32x2_t re::BezierSpline<re::Vector2<float>>::evaluateAt(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v4 = *(a1 + 128);
    if (v4 >= a3)
    {
      LOWORD(v5) = 0;
      v8 = 0;
    }

    else
    {
      v5 = *(a1 + 138);
      v6 = *(a1 + 132);
      if (v6 <= a3)
      {
        LOWORD(v5) = v5 - 1;
        v8 = 0x3F80000000000000;
      }

      else
      {
        v7 = ((a3 - v4) / (v6 - v4)) * v5;
        v5 = v7;
        v8 = COERCE_UNSIGNED_INT(v7 - v7) << 32;
      }
    }

    NonUniformSpan = v8 | v5;
  }

  else
  {
    v9 = *(a1 + 64) - 1;
    if (v9 >= 0x10000)
    {
      goto LABEL_19;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v11 = (3 * NonUniformSpan);
  v12 = *(a1 + 24);
  if (v12 <= v11)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  v13 = (v11 + 1);
  if (v12 <= v13)
  {
LABEL_16:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v14 = (v11 + 2);
  if (v12 <= v14)
  {
LABEL_17:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  v15 = (v11 + 3);
  if (v12 <= v15)
  {
LABEL_18:
    v18 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v19) = 136315906;
    *(&v19 + 4) = "operator[]";
    WORD6(v19) = 1024;
    HIWORD(v19) = 797;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, v9, v18, v19);
    _os_crash();
    __break(1u);
  }

  v16 = *(a1 + 40);
  return vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(v16 + 8 * v11), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmul_n_f32(*(v16 + 8 * v13), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmul_n_f32(*(v16 + 8 * v14), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmul_n_f32(*(v16 + 8 * v15), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
}

uint64_t re::BezierSpline<re::Vector2<float>>::evaluateDerivativeAt(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a2;
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 138);
    v6 = *(a1 + 128);
    v7 = *(a1 + 132);
    if (v6 >= a3)
    {
      LOWORD(v9) = 0;
      v10 = 0;
    }

    else if (v7 <= a3)
    {
      LOWORD(v9) = v5 - 1;
      v10 = 0x3F80000000000000;
    }

    else
    {
      v8 = ((a3 - v6) / (v7 - v6)) * v5;
      v9 = v8;
      v10 = COERCE_UNSIGNED_INT(v8 - v8) << 32;
    }

    v12 = v5 / (v7 - v6);
    NonUniformSpan = v10 | v9;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash();
      __break(1u);
LABEL_32:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_33;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v13 = 3 * NonUniformSpan;
  v14 = 0;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v36 = (3 * NonUniformSpan) + 2;
      v37 = *(a1 + 24);
      if (v37 > v36)
      {
        v38 = (3 * NonUniformSpan) + 3;
        if (v37 > v38)
        {
          v39 = *(a1 + 40);
          v20 = (v12 * 6.0) * v12;
          v40 = (v39 + 8 * v13);
          v23 = vadd_f32(vmul_n_f32(vadd_f32(*v40, vsub_f32(*(v39 + 8 * v36), vadd_f32(v40[1], v40[1]))), 1.0 - *(&NonUniformSpan + 1)), vmul_n_f32(vadd_f32(v40[1], vsub_f32(*(v39 + 8 * v38), vadd_f32(*(v39 + 8 * v36), *(v39 + 8 * v36)))), *(&NonUniformSpan + 1)));
          return vmul_n_f32(v23, v20);
        }

        goto LABEL_38;
      }

      goto LABEL_35;
    }

    if (v3 == 3)
    {
      v24 = (3 * NonUniformSpan) + 3;
      if (*(a1 + 24) <= v24)
      {
LABEL_33:
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_34;
      }

      __asm { FMOV            V3.2S, #3.0 }

      return vmul_n_f32(vsub_f32(vadd_f32(vsub_f32(*(*(a1 + 40) + 8 * v24), vmul_f32(*(*(a1 + 40) + 8 * (3 * NonUniformSpan) + 16), _D3)), vmul_f32(*(*(a1 + 40) + 8 * (3 * NonUniformSpan) + 8), _D3)), *(*(a1 + 40) + 8 * (3 * NonUniformSpan))), ((v12 * 6.0) * v12) * v12);
    }
  }

  else if (v3)
  {
    if (v3 == 1)
    {
      v15 = (3 * NonUniformSpan);
      v16 = (v15 + 1);
      v17 = *(a1 + 24);
      if (v17 > v16)
      {
        v18 = (v15 + 2);
        if (v17 > v18)
        {
          v19 = (v15 + 3);
          if (v17 > v19)
          {
            v20 = v12 * 3.0;
            v21 = *(a1 + 40);
            v22 = 1.0 - *(&NonUniformSpan + 1);
            v23 = vadd_f32(vadd_f32(vmul_n_f32(vsub_f32(*(v21 + 8 * v16), *(v21 + 8 * (3 * NonUniformSpan))), v22 * v22), vmul_n_f32(vsub_f32(*(v21 + 8 * v18), *(v21 + 8 * v16)), (v22 + v22) * *(&NonUniformSpan + 1))), vmul_n_f32(vsub_f32(*(v21 + 8 * v19), *(v21 + 8 * v18)), *(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)));
            return vmul_n_f32(v23, v20);
          }

          goto LABEL_39;
        }

        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v30 = *(a1 + 24);
    if (v30 <= v13)
    {
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
      goto LABEL_37;
    }

    v31 = (3 * NonUniformSpan);
    v32 = (v31 + 1);
    if (v30 <= v32)
    {
LABEL_37:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_39:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
      goto LABEL_40;
    }

    v33 = (v31 + 2);
    if (v30 <= v33)
    {
LABEL_40:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_41:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v34 = (v31 + 3);
    if (v30 <= v34)
    {
      goto LABEL_41;
    }

    v35 = *(a1 + 40);
    return vadd_f32(vadd_f32(vadd_f32(vmul_n_f32(*(v35 + 8 * (3 * NonUniformSpan)), (1.0 - *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1)))), vmul_n_f32(*(v35 + 8 * v32), (((1.0 - *(&NonUniformSpan + 1)) * (1.0 - *(&NonUniformSpan + 1))) * 3.0) * *(&NonUniformSpan + 1))), vmul_n_f32(*(v35 + 8 * v33), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * ((1.0 - *(&NonUniformSpan + 1)) * 3.0))), vmul_n_f32(*(v35 + 8 * v34), (*(&NonUniformSpan + 1) * *(&NonUniformSpan + 1)) * *(&NonUniformSpan + 1)));
  }

  return v14;
}

float re::BezierSpline<re::Vector2<float>>::evaluateLengthAt(uint64_t a1, uint64_t a2, float a3)
{
  if (*(a1 + 136) == 1)
  {
    v5 = *(a1 + 128);
    if (v5 >= a3)
    {
      LOWORD(v6) = 0;
    }

    else
    {
      v6 = *(a1 + 138);
      v7 = *(a1 + 132);
      if (v7 <= a3)
      {
        LOWORD(v6) = v6 - 1;
      }

      else
      {
        v6 = (((a3 - v5) / (v7 - v5)) * v6);
      }
    }

    NonUniformSpan = v6;
  }

  else
  {
    if ((*(a1 + 64) - 1) >= 0x10000)
    {
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_knots.size() (%zu) too large for 16-bit integer", "!overflow", "findSpan", 134, *(a1 + 64) - 1);
      _os_crash();
      __break(1u);
      goto LABEL_23;
    }

    NonUniformSpan = re::internal::findNonUniformSpan(a1 + 48, 0, (*(a1 + 64) - 1), a3);
  }

  v9 = *(a1 + 104);
  if (v9)
  {
    if (NonUniformSpan)
    {
      v10 = NonUniformSpan - 1;
      if (v9 > v10)
      {
        v11 = *(*(a1 + 120) + 4 * v10);
        goto LABEL_19;
      }

LABEL_23:
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_18:
    v11 = 0.0;
    goto LABEL_19;
  }

  if (!NonUniformSpan)
  {
    goto LABEL_18;
  }

  v12 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + (*(*a1 + 152))(a1, v12);
    v12 = (v12 + 1);
  }

  while (NonUniformSpan != v12);
LABEL_19:
  v13 = (*(*a1 + 56))(a1, NonUniformSpan);
  v14 = (v13 + a3) * 0.5;
  v15 = (a3 - v13) * 0.5;
  v16 = (qword_1ECEF6BB0 + 4);
  v17 = 0.0;
  v18 = 16;
  do
  {
    v19 = *v16;
    v20 = (*(*a1 + 128))(a1, 1, v14 + (v15 * *(v16 - 1)));
    v17 = v17 + (v19 * sqrtf(vaddv_f32(vmul_f32(v20, v20))));
    v16 += 2;
    --v18;
  }

  while (v18);
  return v11 + (v15 * v17);
}

uint64_t re::BezierSpline<re::Vector2<float>>::calculateMonomialBasisForSpan(uint64_t a1, __int16 a2, float32x2_t *a3)
{
  v3 = (3 * a2);
  if (*(a1 + 24) <= v3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_9;
  }

  v4 = (3 * a2);
  *a3 = *(*(a1 + 40) + 8 * v3);
  v5 = (v4 + 1);
  if (*(a1 + 24) <= v5)
  {
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_10;
  }

  __asm { FMOV            V0.2S, #3.0 }

  a3[1] = vmul_f32(vsub_f32(*(*(a1 + 40) + 8 * v5), *(*(a1 + 40) + 8 * v3)), _D0);
  v11 = *(a1 + 24);
  if (v11 <= v3)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  if (v11 <= v5)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v12 = (v4 + 2);
  if (v11 <= v12)
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

  a3[2] = vmul_f32(vadd_f32(*(*(a1 + 40) + 8 * v12), vsub_f32(*(*(a1 + 40) + 8 * v3), vadd_f32(*(*(a1 + 40) + 8 * v5), *(*(a1 + 40) + 8 * v5)))), _D0);
  v13 = (v4 + 3);
  if (*(a1 + 24) <= v13)
  {
    goto LABEL_13;
  }

  a3[3] = vsub_f32(vadd_f32(*(*(a1 + 40) + 8 * v13), vmul_f32(vsub_f32(*(*(a1 + 40) + 8 * v5), *(*(a1 + 40) + 8 * v12)), _D0)), *(*(a1 + 40) + 8 * v3));
  return 4;
}

float re::BezierSpline<re::Vector2<float>>::evaluateSpanLength(uint64_t a1, unsigned __int16 a2)
{
  v4 = (*(*a1 + 56))(a1, a2);
  v5 = (*(*a1 + 56))(a1, (a2 + 1));
  v6 = (v4 + v5) * 0.5;
  v7 = (v5 - v4) * 0.5;
  v8 = (qword_1ECEF6BB0 + 4);
  v9 = 0.0;
  v10 = 16;
  do
  {
    v11 = *v8;
    v12 = (*(*a1 + 128))(a1, 1, v6 + (v7 * *(v8 - 1)));
    v9 = v9 + (v11 * sqrtf(vaddv_f32(vmul_f32(v12, v12))));
    v8 += 2;
    --v10;
  }

  while (v10);
  return v7 * v9;
}

float32x2_t re::internal::CubicInterpolant<re::Vector2<float>>::evaluateCatmullRomDerivative(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, float a6)
{
  if (a5 >= a1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_11;
  }

  v6 = a5 + 1;
  if (v6 >= a1)
  {
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_12;
  }

  v7 = a5 + 2;
  if (v7 >= a1)
  {
LABEL_12:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_13;
  }

  v8 = a5 + 3;
  if (v8 >= a1)
  {
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_14;
  }

  if (a5 >= a3)
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  if (v6 >= a3)
  {
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  if (v7 >= a3)
  {
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

  if (v8 >= a3)
  {
    goto LABEL_17;
  }

  v9 = *(a2 + 4 * a5);
  v10 = *(a2 + 4 * v6);
  v11 = *(a2 + 4 * v7);
  v12 = *(a2 + 4 * v8);
  v13 = *(a4 + 8 * a5);
  v14 = *(a4 + 8 * v6);
  v15 = *(a4 + 8 * v7);
  v16 = *(a4 + 8 * v8);
  v17 = v12 - a6;
  v18 = v11 - a6;
  v19 = v10 - a6;
  v20 = v9 - a6;
  v21 = 1.0 / (v12 - v11);
  v22 = 1.0 / (v12 - v10);
  v23 = 1.0 / (v11 - v10);
  v24 = 1.0 / (v11 - v9);
  v25 = 1.0 / (v10 - v9);
  v26 = vmul_n_f32(vsub_f32(vmul_n_f32(v13, v19), vmul_n_f32(v14, v20)), v25);
  v27 = vmul_n_f32(vsub_f32(vmul_n_f32(v14, v18), vmul_n_f32(v15, v19)), v23);
  v28 = vmul_n_f32(vsub_f32(vmul_n_f32(v15, v17), vmul_n_f32(v16, v18)), v21);
  v29 = vmul_n_f32(vsub_f32(v14, v13), v25);
  v30 = vmul_n_f32(vsub_f32(v15, v14), v23);
  return vmul_n_f32(vsub_f32(vadd_f32(vsub_f32(vmul_n_f32(vsub_f32(vmul_n_f32(v27, v17), vmul_n_f32(v28, v19)), v22), vmul_n_f32(vsub_f32(vmul_n_f32(v26, v18), vmul_n_f32(v27, v20)), v24)), vmul_n_f32(vmul_n_f32(vsub_f32(vadd_f32(vmul_n_f32(v29, v18), vsub_f32(v27, v26)), vmul_n_f32(v30, v20)), v24), v18)), vmul_n_f32(vmul_n_f32(vsub_f32(vadd_f32(vmul_n_f32(v30, v17), vsub_f32(v28, v27)), vmul_n_f32(vmul_n_f32(vsub_f32(v16, v15), v21), v19)), v22), v19)), v23);
}

float re::internal::CubicInterpolant<re::Vector2<float>>::setKnotsToKeyKnots(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 204);
  v5 = *(a1 + 206) + 1;
  v6 = v5 - v4;
  re::DynamicArray<float>::resize(a2, (v5 - v4));
  if (v4 != v5)
  {
    v8 = *(a1 + 208);
    v9 = *(a1 + 204);
    v10 = *(v8 + 16);
    v11 = *(a2 + 32);
    v12 = v10 - v9;
    if (v10 < v9)
    {
      v12 = 0;
    }

    if ((v6 & 0xFFFE) != 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = 1;
    }

    v14 = (32 * v9) | 4;
    v15 = *(a2 + 16);
    do
    {
      if (!v12)
      {
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

      if (!v15)
      {
        goto LABEL_13;
      }

      result = *(*(v8 + 32) + v14);
      *v11++ = result;
      --v15;
      --v12;
      ++v9;
      v14 += 32;
      --v13;
    }

    while (v13);
  }

  return result;
}

float re::internal::CubicInterpolant<re::Vector2<float>>::evaluateSpanLength(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 204);
  v4 = v3 + (a2 + 1);
  v5 = *(v2 + 16);
  if (v5 <= v4)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = v3 + a2;
  if (v5 <= v6)
  {
    goto LABEL_7;
  }

  v7 = *(a1 + 200);
  v8 = vsub_f32(*(*(v2 + 32) + 32 * v4 + 8), *(*(v2 + 32) + 32 * v6 + 8));
  v9 = sqrtf(vaddv_f32(vmul_f32(v8, v8)));

  return powf(v9, v7);
}

float32x2_t re::internal::CubicInterpolant<re::Vector2<float>>::evaluateNaturalSplineDerivative(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, float a9, unsigned __int16 a10)
{
  if (a10 >= a1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_7;
  }

  if (a10 >= a3)
  {
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_8;
  }

  if (a10 >= a5)
  {
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_9:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (a10 >= a7)
  {
    goto LABEL_9;
  }

  v10 = a9 - *(a2 + 4 * a10);
  return vadd_f32(*(a4 + 8 * a10), vmul_n_f32(vadd_f32(vadd_f32(*(a6 + 8 * a10), *(a6 + 8 * a10)), vmul_n_f32(*(a8 + 8 * a10), v10 * 3.0)), v10));
}

float32x2_t re::internal::CubicInterpolant<re::Vector2<float>>::solveTriDiagonal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 16);
  if (!v4)
  {
LABEL_39:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_40;
  }

  if (!*(a3 + 16))
  {
LABEL_40:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_41;
  }

  **(a3 + 32) = vdiv_f32(**(a3 + 32), **(a2 + 32));
  if (!*(a2 + 16))
  {
LABEL_41:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_42;
  }

  if (!*(a4 + 16))
  {
LABEL_42:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_43;
  }

  v5 = (v4 - 1);
  **(a4 + 32) = vdiv_f32(**(a4 + 32), **(a2 + 32));
  if (v5 >= 2)
  {
    v6 = 1;
    while (*(a2 + 16) > v6)
    {
      if (*(a1 + 16) <= v6)
      {
        goto LABEL_32;
      }

      v7 = v6 - 1;
      v8 = *(a3 + 16);
      if (v8 <= v6 - 1)
      {
        goto LABEL_33;
      }

      if (v8 <= v6)
      {
        goto LABEL_34;
      }

      *(*(a3 + 32) + 8 * v6) = vdiv_f32(*(*(a3 + 32) + 8 * v6), vsub_f32(*(*(a2 + 32) + 8 * v6), vmul_f32(*(*(a1 + 32) + 8 * v6), *(*(a3 + 32) + 8 * v7))));
      if (*(a4 + 16) <= v6)
      {
        goto LABEL_35;
      }

      if (*(a1 + 16) <= v6)
      {
        goto LABEL_36;
      }

      if (*(a2 + 16) <= v6)
      {
        goto LABEL_37;
      }

      if (*(a3 + 16) <= v7)
      {
        goto LABEL_38;
      }

      v9 = *(*(a1 + 32) + 8 * v6);
      *(*(a4 + 32) + 8 * v6) = vdiv_f32(vsub_f32(*(*(a4 + 32) + 8 * v6), vmul_f32(v9, *(*(a4 + 32) + 8 * v7))), vsub_f32(*(*(a2 + 32) + 8 * v6), vmul_f32(v9, *(*(a3 + 32) + 8 * v7))));
      if (++v6 == v5)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_31;
  }

LABEL_16:
  v10 = *(a4 + 16);
  if (v10 <= v5)
  {
LABEL_43:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_44;
  }

  if (*(a1 + 16) <= v5)
  {
LABEL_44:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  v11 = v4 - 2;
  if (v10 <= v11)
  {
LABEL_45:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_46;
  }

  if (*(a2 + 16) <= v5)
  {
LABEL_46:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_47:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a3 + 16) <= v11)
  {
    goto LABEL_47;
  }

  v12 = *(a4 + 32);
  v13 = *(*(a1 + 32) + 8 * v5);
  result = vdiv_f32(vsub_f32(*(v12 + 8 * v5), vmul_f32(v13, *(v12 + 8 * v11))), vsub_f32(*(*(a2 + 32) + 8 * v5), vmul_f32(v13, *(*(a3 + 32) + 8 * v11))));
  *(v12 + 8 * v5) = result;
  if (v5 >= 1)
  {
    LODWORD(v15) = v4;
    while (1)
    {
      v16 = (v15 - 2);
      if (*(a3 + 16) <= v16)
      {
        break;
      }

      v15 = (v15 - 1);
      v17 = *(a4 + 16);
      if (v17 <= v15)
      {
        goto LABEL_29;
      }

      if (v17 <= v16)
      {
        goto LABEL_30;
      }

      v18 = *(a4 + 32);
      result = vsub_f32(*(v18 + 8 * v16), vmul_f32(*(*(a3 + 32) + 8 * v16), *(v18 + 8 * v15)));
      *(v18 + 8 * v16) = result;
      if (v15 <= 1)
      {
        return result;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
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
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_32:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_33:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
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
LABEL_37:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_38:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_39;
  }

  return result;
}

float re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(uint64_t a1, uint64_t a2, float a3)
{
  v3 = a3;
  if ((*a1 & 1) == 0)
  {
    SplineIndexForParameter = re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(a1, a2, a3);
    if (*(a1 + 184) <= SplineIndexForParameter)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      v6 = *(*(a1 + 200) + 24 * SplineIndexForParameter);
      (*(*v6 + 136))(v6, v3);
      if (!SplineIndexForParameter)
      {
        v9 = 0.0;
        return v7 + v9;
      }

      v8 = (SplineIndexForParameter - 1);
      if (*(a1 + 184) > v8)
      {
        v9 = *(*(a1 + 200) + 24 * v8 + 16);
        return v7 + v9;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v3;
}

uint64_t re::internal::FunctionFitter::build<re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}>(float *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int32x4_t a5, double a6, double a7, double a8, int32x4_t a9)
{
  v9.i32[0] = *(a3 + 8);
  v13 = *(a3 + 12);
  v15 = *(a3 + 16);
  v14 = *(a3 + 20);
  v17 = *a3;
  v16 = *(a3 + 4);
  if (*(a1 + 8) != 1)
  {
    *a9.i8 = vmul_f32(vmla_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(0x40000000C0A00000, v14), 0xC0A0000040000000, *v9.i32), 0x41900000C1100000, v13), 0xC110000041900000, v15), vdup_n_s32(0x3E2AAAABu));
    v29 = *(a3 + 24);
    if (*(a1 + 1) <= v29)
    {
      v39 = *(a3 + 8);
      v38 = *(a3 + 20);
      goto LABEL_11;
    }

    v55 = a9;
    v56 = *(a3 + 8);
    v51 = *(a3 + 12);
    v52 = *(a3 + 16);
    v57 = *(a3 + 20);
    v53 = v9;
    v54 = v57;
LABEL_6:
    v30 = (v16 + (v17 * 5.0)) * 0.16667;
    v31 = (v17 + v16) * 0.5;
    v32 = (v17 + (v16 * 5.0)) * 0.16667;
    v33 = re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(*a2, a2, v30);
    v35 = re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(*a2, v34, v31);
    v37 = re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}::operator()(*a2, v36, v32);
    v9.i32[0] = v56;
    v14 = v57;
    v38 = v54;
    a9.i64[0] = v55.i64[0];
    v39 = *v53.i32;
    if (*a1 > v29)
    {
LABEL_7:
      v60 = v17;
      v61 = (v17 + v16) * 0.5;
      v62 = v56;
      v63 = v33;
      v64 = v51;
      v65 = v35;
      v66 = v29 + 1;
      v58[0] = v61;
      v58[1] = v16;
      v58[2] = v35;
      v58[3] = v52;
      v58[4] = v37;
      v58[5] = v57;
      v59 = v29 + 1;
      re::internal::FunctionFitter::build<re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}>(a1, a2, &v60, a4);
      return re::internal::FunctionFitter::build<re::SpatialCurve<re::Vector2<float>>::reparameterizeByLength(void)::{lambda(float)#1}>(a1, a2, v58, a4);
    }

    v44 = vuzp1q_s32(v53, v55);
    v44.i32[1] = v55.i32[1];
    v44.f32[3] = v54;
    v45 = vmulq_f32(v44, xmmword_1E310A1E0);
    v46 = vaddv_f32(vadd_f32(*v45.i8, *&vextq_s8(v45, v45, 8uLL)));
    v47 = vmulq_f32(v44, xmmword_1E310A1F0);
    v48 = vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)));
    v49 = vmulq_f32(v44, xmmword_1E310A200);
    v50 = vaddv_f32(vadd_f32(*v49.i8, *&vextq_s8(v49, v49, 8uLL)));
    if (*(a1 + 8) == 1)
    {
      if (fabsf(v30) >= 0.00001)
      {
        if (fabsf((v30 - v46) / v30) > a1[1])
        {
          goto LABEL_7;
        }
      }

      else if (fabsf(v46) >= 0.00001)
      {
        goto LABEL_7;
      }

      if (fabsf(v31) >= 0.00001)
      {
        if (fabsf((v31 - v48) / v31) > a1[1])
        {
          goto LABEL_7;
        }
      }

      else if (fabsf(v48) >= 0.00001)
      {
        goto LABEL_7;
      }

      if (fabsf(v32) >= 0.00001)
      {
        if (fabsf((v32 - v50) / v32) > a1[1])
        {
          goto LABEL_7;
        }
      }

      else if (fabsf(v50) >= 0.00001)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    if (fabsf(v33) >= 0.00001)
    {
      if (fabsf((v33 - v46) / v33) > a1[1])
      {
        goto LABEL_7;
      }
    }

    else if (fabsf(v46) >= 0.00001)
    {
      goto LABEL_7;
    }

    if (fabsf(v35) >= 0.00001)
    {
      if (fabsf((v35 - v48) / v35) > a1[1])
      {
        goto LABEL_7;
      }
    }

    else if (fabsf(v48) >= 0.00001)
    {
      goto LABEL_7;
    }

    if (fabsf(v37) >= 0.00001)
    {
      if (fabsf((v37 - v50) / v37) > a1[1])
      {
        goto LABEL_7;
      }
    }

    else if (fabsf(v50) >= 0.00001)
    {
      goto LABEL_7;
    }

LABEL_11:
    v41 = *&a9.i32[1];
    v42 = v17;
    v43 = v16;
    goto LABEL_12;
  }

  v18 = (v13 - *v9.i32) / (v14 - *v9.i32);
  v19 = (v15 - *v9.i32) / (v14 - *v9.i32);
  v20 = 1.0 - v18;
  v21 = 1.0 - v19;
  v22 = -(v18 * v18);
  v23.f32[0] = (((v16 + (v17 * 2.0)) * 0.33333) + (-((v20 * v20) * v20) * v17)) + ((v18 * v22) * v16);
  v23.f32[1] = (((v17 + (v16 * 2.0)) * 0.33333) + ((v21 * -(v21 * v21)) * v17)) + (-((v19 * v19) * v19) * v16);
  v24.f32[0] = (v19 * v19) * (1.0 - v19);
  v24.f32[1] = v22 * (1.0 - v18);
  v25.f32[0] = (1.0 - v19) * -(v19 * (1.0 - v19));
  v26 = v18 * (1.0 - v18);
  v25.f32[1] = (1.0 - v18) * v26;
  v27 = vmul_f32(v24, v23);
  v28 = vmul_f32(v25, v23);
  *a5.i8 = vadd_f32(vzip1_s32(v28, v27), vzip2_s32(v28, v27));
  *a9.i8 = vmul_n_f32(*a5.i8, 1.0 / (((v18 * 3.0) * v19) * ((v21 * -(v26 * v21)) + ((v19 * (v20 * v20)) * v21))));
  v29 = *(a3 + 24);
  if (*(a1 + 1) > v29)
  {
    v55 = a9;
    v56 = *(a3 + 8);
    v51 = *(a3 + 12);
    v52 = *(a3 + 16);
    v57 = *(a3 + 20);
    a5.i32[0] = *a3;
    v53 = a5;
    v54 = *(a3 + 4);
    goto LABEL_6;
  }

  v39 = *a3;
  v38 = *(a3 + 4);
LABEL_9:
  v41 = *&a9.i32[1];
  v42 = *v9.i32;
  v43 = v14;
LABEL_12:

  return re::internal::FunctionFitter::addSpanToBezierSpline(a4, v42, v43, v39, v41, *a9.i32, v38);
}

uint64_t re::SpatialCurve<re::Vector2<float>>::findSplineIndexForParameter(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a1 + 184);
  if (v3 >= 0x10000)
  {
    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) splineCount (%zu) is too large for 16-bit unsigned integer", "!overflow", "findSplineIndexForParameter", 481, v3);
    _os_crash();
    __break(1u);
  }

  if (v3 < 2 || *(a1 + 352) >= a3)
  {
    return 0;
  }

  v4 = v3 - 1;
  if (*(a1 + 356) > a3)
  {
    v5 = v4 >> 1;
    if (v3 > v5)
    {
      v6 = 0;
      do
      {
        v7 = *(a1 + 200) + 24 * v5;
        if (*(v7 + 8) <= a3)
        {
          if (*(v7 + 12) > a3)
          {
            return v5;
          }

          v6 = v5 + 1;
        }

        else
        {
          v4 = v5 - 1;
        }

        v5 = (v4 + v6) >> 1;
      }

      while (v3 > v5);
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    return 0;
  }

  return v4;
}

uint64_t re::internal::FunctionFitter::addSpanToBezierSpline(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v14 = (*(*a1 + 40))(a1);
  if (v14 == 0xFFFF)
  {
    re::internal::assertLog(5, v15, "assertion failure: '%s' (%s:line %i) spanCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "addSpanToBezierSpline", 120, 0x10000);
    _os_crash();
    __break(1u);
    goto LABEL_14;
  }

  v16 = (v14 + 1);
  v17 = 3 * (v14 + 1);
  (*(*a1 + 16))(a1, v16);
  if (v17 != 3)
  {
    if (v16 < 0x5556)
    {
      goto LABEL_7;
    }

    re::internal::assertLog(5, v18, "assertion failure: '%s' (%s:line %i) pointIndex (%u) is too large for a 16-bit unsigned integer", "pointIndex + 3 <= std::numeric_limits<uint16_t>::max()", "addSpanToBezierSpline", 130, (v17 - 3));
    _os_crash();
    __break(1u);
  }

  if (!*(a1 + 24))
  {
    goto LABEL_17;
  }

  **(a1 + 40) = a4;
  (*(*a1 + 104))(a1, 0, a2);
LABEL_7:
  v20 = *(a1 + 24);
  if (v20 <= (v17 - 2))
  {
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_15;
  }

  v21 = *(a1 + 40);
  *(v21 + 4 * (v17 - 2)) = a5;
  if (v20 <= (v17 - 1))
  {
LABEL_15:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_16;
  }

  *(v21 + 4 * (v17 - 1)) = a6;
  if (v20 <= v17)
  {
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

  *(v21 + 4 * v17) = a7;
  v22 = *(*a1 + 104);
  v19.n128_f32[0] = a3;

  return v22(a1, v16, v19);
}

void std::vector<unsigned int>::__insert_with_size[abi:nn200100]<unsigned int *,unsigned int *>(uint64_t a1, char *__src, char *a3, _BYTE *a4)
{
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v7 - v8 >= 24)
  {
    v15 = v8 - __src;
    v16 = (v8 - __src) >> 2;
    if (v16 > 5)
    {
      v24 = __src + 24;
      v25 = v8 - 24;
      v26 = *(a1 + 8);
      while (v25 < v8)
      {
        v27 = *v25;
        v25 += 4;
        *v26++ = v27;
      }

      *(a1 + 8) = v26;
      if (v8 != v24)
      {
        memmove(__src + 24, __src, v8 - v24);
      }

      v28 = *a3;
      *(__src + 2) = *(a3 + 2);
      *__src = v28;
    }

    else
    {
      v18 = a4 - &a3[v15];
      if (a4 != &a3[v15])
      {
        memmove(*(a1 + 8), &a3[v15], a4 - &a3[v15]);
      }

      v19 = &v8[v18];
      *(a1 + 8) = &v8[v18];
      if (v16 >= 1)
      {
        v20 = __src + 24;
        v21 = &v8[v18];
        if (v19 - 24 < v8)
        {
          v22 = &a4[__src];
          v23 = &a4[__src - 24];
          do
          {
            *(v22 - a3) = *(v23 - a3);
            v23 += 4;
            v22 += 4;
          }

          while (v23 - a3 < v8);
          v21 = (v22 - a3);
        }

        *(a1 + 8) = v21;
        if (v19 != v20)
        {
          memmove(__src + 24, __src, v19 - v20);
        }

        if (v8 != __src)
        {

          memmove(__src, a3, v8 - __src);
        }
      }
    }
  }

  else
  {
    v9 = *a1;
    v10 = (&v8[-*a1] >> 2) + 6;
    if (v10 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = __src - v9;
    v12 = v7 - v9;
    v13 = v12 >> 1;
    if (v12 >> 1 <= v10)
    {
      v13 = (&v8[-*a1] >> 2) + 6;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    if (v14)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned int>>(a1, v14);
    }

    v29 = 0;
    v30 = 4 * (v11 >> 2);
    do
    {
      *(v30 + v29) = *&a3[v29];
      v29 += 4;
    }

    while (v29 != 24);
    memcpy((v30 + 24), __src, *(a1 + 8) - __src);
    v31 = *a1;
    v32 = v30 + 24 + *(a1 + 8) - __src;
    *(a1 + 8) = __src;
    v33 = (__src - v31);
    v34 = (v30 - (__src - v31));
    memcpy(v34, v31, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = v32;
    *(a1 + 16) = 0;
    if (v35)
    {

      operator delete(v35);
    }
  }
}

void std::vector<re::Vector3<float>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::vector<re::Vector3<float>>::__insert_with_size[abi:nn200100]<std::__wrap_iter<re::Vector3<float>*>,std::__wrap_iter<re::Vector3<float>*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 4);
    if (v12 >> 60)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<chunk_offset_t>>(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v6++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = &v10[-16 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 16;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[16 * a5];
    v23 = &v10[v20];
    if (&v21[-16 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -16 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[16 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_29:

      memmove(v26, v27, v28);
    }
  }
}

void *std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<re::SpatialCurve<re::Vector2<float>> *,std::allocator<re::SpatialCurve<re::Vector2<float>> *>>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<zip_entry_t *>>(a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t re::Result<std::vector<re::pathprocessing::BezierIslandInfo>,re::DetailedError>::~Result(uint64_t a1)
{
  if (*a1 == 1)
  {
    v3 = (a1 + 8);
    std::vector<re::pathprocessing::BezierIslandInfo>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  else
  {
    re::DynamicString::deinit((a1 + 24));
  }

  return a1;
}

void re::pathprocessing::subdivideBezierOnSelfIntersection(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v92 = 0;
  v93 = 0uLL;
  v9 = *a1;
  v10 = a1[1];
  v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
  if (v10 != *a1)
  {
    if (v11 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    std::__split_buffer<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier> &>::__split_buffer(__p, v11, 0, &v92);
    v12 = __p[1] - (v93.n128_u64[0] - v92);
    memcpy(v12, v92, v93.n128_u64[0] - v92);
    v13 = v92;
    v14 = v93.n128_u64[1];
    v92 = v12;
    a5 = v90;
    v93 = v90;
    v90.n128_u64[0] = v13;
    v90.n128_u64[1] = v14;
    __p[0] = v13;
    __p[1] = v13;
    if (v13)
    {
      operator delete(v13);
    }

    v9 = *a1;
    v10 = a1[1];
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
  }

  if (v10 != v9)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = (v9 + v15);
      __p[0] = v16;
      v18 = *v17;
      v19 = v17[1];
      v20 = vmul_f32(v19, 0);
      v21 = v17[2];
      v22 = vmul_f32(v21, 0);
      __p[1] = vadd_f32(vadd_f32(*v17, v20), v22);
      v90.n128_u64[0] = vadd_f32(vadd_f32(v19, v22), vmul_f32(__p[1], 0));
      *&v90.n128_i8[8] = vadd_f32(v21, vadd_f32(vmul_f32(v18, 0), v20));
      *(v91.n128_u64 + 4) = 0x3F80000000000000;
      v23 = vsub_f32(__p[1], v90.n128_u64[0]);
      v24 = vmul_f32(v23, v23);
      v24.i32[0] = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v25 = vrsqrte_f32(v24.u32[0]);
      v26 = vmul_f32(v25, vrsqrts_f32(v24.u32[0], vmul_f32(v25, v25)));
      v27 = vmul_n_f32(v23, vmul_f32(v26, vrsqrts_f32(v24.u32[0], vmul_f32(v26, v26))).f32[0]);
      v28 = vsub_f32(*&v90.n128_i8[8], v90.n128_u64[0]);
      v29 = vmul_f32(v28, v28);
      v29.i32[0] = vadd_f32(v29, vdup_lane_s32(v29, 1)).u32[0];
      v30 = vrsqrte_f32(v29.u32[0]);
      v31 = vmul_f32(v30, vrsqrts_f32(v29.u32[0], vmul_f32(v30, v30)));
      v91.n128_f32[0] = (vaddv_f32(vmul_f32(v27, vmul_n_f32(v28, vmul_f32(v31, vrsqrts_f32(v29.u32[0], vmul_f32(v31, v31))).f32[0]))) * 0.5) + 0.5;
      std::vector<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier,std::allocator<re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier>>::push_back[abi:nn200100](&v92, __p);
      ++v16;
      v9 = *a1;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
      v15 += 24;
    }

    while (v16 < v11);
  }

  v81 = a2;
  v82 = a3;
  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v86 = 0;
  v87 = 0;
  v88 = 0;
  v84[0] = 0;
  v84[1] = 0;
  v85 = 0;
  v33 = v92;
  v32 = v93.n128_u64[0];
  if (v92 != v93.n128_u64[0])
  {
    do
    {
      std::__introsort<std::_ClassicAlgPolicy,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::$_0 &,re::pathprocessing::subdivideBezierOnSelfIntersection(std::vector<re::pathprocessing::Bezier2> const&,std::vector<unsigned long> const*,std::vector<unsigned long>*)::SubBezier *,false>(v33, v32, 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v32 - v33) >> 4)), 1, a5);
      v33 = v92;
      v34 = (v93.n128_u64[0] - 48);
      v35 = *(v93.n128_u64[0] - 32);
      a5 = *(v93.n128_u64[0] - 16);
      *__p = *(v93.n128_u64[0] - 48);
      v90 = v35;
      v91 = a5;
      if ((v93.n128_u64[0] - 48) != v92)
      {
        v36 = (v93.n128_u64[0] - 48);
        v37 = (v93.n128_u64[0] - 48);
        while (1)
        {
          v38 = v37[-6];
          v37 -= 6;
          if (__p[0] != v38 && re::pathprocessing::Bezier2::enclosingTriangleOverlaps(&__p[1], v36 - 5))
          {
            break;
          }

          v34 -= 48;
          v36 = v37;
          if (v37 == v33)
          {
            v34 = v33;
            break;
          }
        }

        v33 = v92;
      }

      if (v33 != v34)
      {
        v39 = *(v34 - 3);
        v40 = *(v34 - 1);
        v83[1] = *(v34 - 2);
        v83[2] = v40;
        *(&v83[0] + 1) = *(&v39 + 1);
        re::pathprocessing::Bezier2::removeOverlaps(&__p[1], (v83 + 8));
      }

      v93.n128_u64[0] -= 48;
      v32 = v93.n128_u64[0];
    }

    while (v33 != v93.n128_u64[0]);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  std::vector<re::pathprocessing::Bezier2>::reserve(a4, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  if (a1[1] != *a1)
  {
    v41 = 0;
    do
    {
      std::__sort<std::__less<float,float> &,float *>();
      v43 = *(24 * v41);
      v42 = *(24 * v41 + 8);
      if (v43 != v42)
      {
        v44 = v43 + 1;
        while (v44 != v42)
        {
          v45 = *(v44 - 1);
          v46 = *v44++;
          if (v45 == v46)
          {
            v47 = v44 - 2;
            while (v44 != v42)
            {
              v48 = *v44;
              if (v45 != *v44)
              {
                v47[1] = v48;
                ++v47;
                v45 = v48;
              }

              ++v44;
            }

            if (v47 + 1 != v42)
            {
              v42 = v47 + 1;
              *(24 * v41 + 8) = v47 + 1;
            }

            break;
          }
        }
      }

      if (v42 != v43)
      {
        if (fabsf(*v43) < 0.0001)
        {
          v49 = v42 - (v43 + 1);
          if (v42 != v43 + 1)
          {
            memmove(v43, v43 + 1, v42 - (v43 + 1));
          }

          v42 = (v43 + v49);
          *(24 * v41 + 8) = v43 + v49;
        }

        v51 = *(v42 - 1);
        v50 = v42 - 1;
        v52 = v51;
        if (v51 == 1.0 || fabsf(v52 + -1.0) <= 0.0001)
        {
          *(24 * v41 + 8) = v50;
        }
      }

      re::pathprocessing::Bezier2::split((*a1 + 24 * v41), (24 * v41), __p);
      v53 = __p[0];
      v54 = __p[1] - __p[0];
      if (__p[1] - __p[0] >= 1)
      {
        v56 = *(a4 + 8);
        v55 = *(a4 + 16);
        if (v55 - v56 >= v54)
        {
          if (__p[0] != __p[1])
          {
            memmove(*(a4 + 8), __p[0], __p[1] - __p[0]);
          }

          *(a4 + 8) = &v56[v54];
        }

        else
        {
          v57 = 0xAAAAAAAAAAAAAAABLL * (&v56[-*a4] >> 3) - 0x5555555555555555 * (v54 >> 3);
          if (v57 > 0xAAAAAAAAAAAAAAALL)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v58 = 0xAAAAAAAAAAAAAAABLL * ((v55 - *a4) >> 3);
          if (2 * v58 > v57)
          {
            v57 = 2 * v58;
          }

          if (v58 >= 0x555555555555555)
          {
            v59 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v59 = v57;
          }

          if (v59)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<geo::math::Matrix<double,3,1>>>(a4, v59);
          }

          v60 = 8 * (&v56[-*a4] >> 3);
          v61 = (v60 + v54);
          v62 = v60;
          do
          {
            v63 = *v53;
            *(v62 + 16) = v53[2];
            *v62 = v63;
            v62 += 24;
            v53 += 3;
            v54 -= 24;
          }

          while (v54);
          memcpy(v61, v56, *(a4 + 8) - v56);
          v64 = *a4;
          v65 = &v61[*(a4 + 8) - v56];
          *(a4 + 8) = v56;
          v66 = v56 - v64;
          v67 = (v60 - (v56 - v64));
          memcpy(v67, v64, v66);
          v68 = *a4;
          *a4 = v67;
          *(a4 + 8) = v65;
          *(a4 + 16) = 0;
          if (v68)
          {
            operator delete(v68);
          }
        }
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v41;
    }

    while (v41 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }

  if (v81)
  {
    v70 = *v81;
    v69 = v81[1];
    v71 = (v69 - *v81) >> 3;
    std::vector<unsigned long>::resize(v82, v71);
    if (v69 != v70)
    {
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = *v81;
      v76 = (v81[1] - *v81) >> 3;
      if (v71 <= 1)
      {
        v77 = 1;
      }

      else
      {
        v77 = v71;
      }

      do
      {
        if (v72 == v76)
        {
          goto LABEL_82;
        }

        v78 = *(v75 + 8 * v72);
        v79 = v78 - v73;
        if (v78 > v73)
        {
          v80 = (24 * v73 + 8);
          do
          {
            v74 += ((*v80 - *(v80 - 1)) >> 2) + 1;
            v80 += 3;
            --v79;
          }

          while (v79);
        }

        if (v72 >= (v82[1] - *v82) >> 3)
        {
LABEL_82:
          std::string::__throw_length_error[abi:nn200100]();
        }

        *(*v82 + 8 * v72++) = v74;
        v73 = v78;
      }

      while (v72 != v77);
    }
  }

  if (v84[0])
  {
    v84[1] = v84[0];
    operator delete(v84[0]);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v92)
  {
    v93.n128_u64[0] = v92;
    operator delete(v92);
  }
}