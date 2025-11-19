void geom::interpolating_curve<double>::build_natural_spline(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v75 = 0;
  v76 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  __p = 0;
  v69 = 0;
  v70 = 0;
  v4 = a1[1];
  memset(v67, 0, sizeof(v67));
  if (v4)
  {
    std::vector<double>::__vallocate[abi:nn200100](v67, v4);
  }

  v5 = v67[0];
  std::vector<double>::resize(&v77, 0);
  std::vector<double>::resize(&v74, 0);
  std::vector<double>::resize(&v71, 0);
  std::vector<double>::resize(&__p, 0);
  v6 = -1;
  v7 = v77;
  *(v77 - 1) = 0;
  *v7 = 0;
  v8 = __p;
  *(__p - 1) = 0x3FF0000000000000;
  *v8 = 1.0;
  v9 = v74;
  *(v74 - 1) = 0;
  *v9 = 0.0;
  v10 = v71;
  *(v71 - 1) = 0;
  *v10 = 0.0;
  v11 = -2;
  v12 = (*a1 + 56);
  v13 = v10 + 1;
  v14 = v9 + 1;
  v15 = v8 + 1;
  v16 = (v5 + 8);
  v17 = (v7 + 1);
  v18 = v12;
  do
  {
    v20 = *(v16 - 1);
    v19 = *v16;
    v21 = v16[1];
    ++v16;
    v22 = v19 - v20;
    v23 = v21 - v19;
    *v17++ = v22;
    *v15++ = v22 + v23 + v22 + v23;
    *v14++ = v23;
    v24 = v18[5];
    v18 += 5;
    *v13++ = -3.0 / v22 * (*v12 - *(v12 - 5)) + 3.0 / v23 * (v24 - *v12);
    v12 = v18;
    --v11;
  }

  while (v11);
  v25 = v69 - v8;
  v26 = ((v69 - v8) >> 3) - 1;
  *v9 = *v9 / *v8;
  *v10 = *v10 / *v8;
  if (v26 > 1)
  {
    v27 = v26 - 1;
    v28 = v8 + 1;
    v29 = (v7 + 1);
    v30 = v10 + 1;
    v31 = v9 + 1;
    do
    {
      v32 = *(v31 - 1);
      *v31 = *v31 / (*v28 - *v29 * v32);
      ++v31;
      v33 = *v29++;
      v34 = v33;
      v35 = *v30 - v33 * *(v30 - 1);
      v36 = *v28++;
      *v30++ = v35 / (v36 - v34 * v32);
      --v27;
    }

    while (v27);
  }

  v37 = (v10[v26] - *&v7[v26] * *(v10 + (((v25 << 29) - 0x200000000) >> 29))) / (v8[v26] - *&v7[v26] * *(v9 + (((v25 << 29) - 0x200000000) >> 29)));
  v10[v26] = v37;
  if (v26 >= 1)
  {
    v38 = v26 - 1;
    do
    {
      v37 = v10[v38] - v9[v38] * v37;
      v10[v38] = v37;
      v39 = v38-- + 1;
    }

    while (v39 > 1);
  }

  v40 = (*a1 + 56);
  v41 = (v5 + 8);
  v42 = v10 + 1;
  do
  {
    v43 = *v41 - *(v41 - 1);
    *v9++ = v43 / -3.0 * (*v42 + *(v42 - 1) * 2.0) + 1.0 / v43 * (*v40 - *(v40 - 5));
    *v8++ = 1.0 / (v43 * 3.0) * (*v42 - *(v42 - 1));
    v40 += 5;
    ++v41;
    ++v42;
    --v6;
  }

  while (v6);
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  v44 = *(a1 + 4);
  v45 = v44 - 1;
  if (v44 == 1)
  {
    *(a2 + 32) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      a2[4] = 0;
    }

    v51 = 0;
    v46 = 0;
    v47 = *a2;
  }

  else
  {
    std::vector<double>::resize(a2, (3 * v45 + 1));
    *(a2 + 32) = v45;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize(a2 + 3, v45 + 1);
    }

    LOWORD(v46) = 0;
    v47 = *a2;
    v48 = v74;
    v49 = v71;
    v50 = __p;
    v51 = v45;
    v52 = (*a1 + 56);
    v53 = (v5 + 8);
    v54 = v45;
    do
    {
      v55 = *(v53 - 1);
      v56 = *(v52 - 5);
      v57 = *v52;
      v52 += 5;
      v58 = v57;
      v59 = *v53 - v55;
      v60 = *v48++;
      v61 = v60;
      v62 = *v49++;
      v63 = v62;
      v64 = *v50++;
      *(v47 + 8 * v46) = v56;
      v65 = v46 + 2;
      v66 = (v46 + 1);
      LOWORD(v46) = v46 + 3;
      *(v47 + 8 * v66) = v56 + v59 * (v61 + (v55 - v55) * ((v55 - v55) * 3.0 * v64 + v63 * 2.0)) / 3.0;
      *(v47 + 8 * v65) = v58 - v59 * (v61 + v59 * (v59 * 3.0 * v64 + v63 * 2.0)) / 3.0;
      ++v53;
      --v54;
    }

    while (v54);
    v46 = v46;
  }

  *(v47 + 8 * v46) = *(*a1 + 40 * v51 + 16);
  *(a2 + 66) = 0;
  std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(a2 + 3, v5, 0, -v5 >> 3);
  a2[6] = *v5;
  a2[7] = MEMORY[0xFFFFFFFFFFFFFFF8];
  operator delete(v5);
  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (v71)
  {
    v72 = v71;
    operator delete(v71);
  }

  if (v74)
  {
    v75 = v74;
    operator delete(v74);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void geom::interpolating_curve<double>::build_hermite_spline(_WORD *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  a2[10] = 0;
  a2[11] = 0;
  a2[9] = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  if (v4 == 1)
  {
    *(a2 + 32) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      a2[4] = 0;
    }
  }

  else
  {
    std::vector<double>::resize(a2, (3 * v5 + 1));
    *(a2 + 32) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize(a2 + 3, v5 + 1);
    }
  }

  __p = 0;
  v20 = 0;
  v6 = v5;
  v21 = 0;
  std::vector<double>::resize(&__p, v5 + 1);
  v7 = *a1;
  v8 = __p;
  *__p = *(*a1 + 8);
  v9 = *a2;
  if (v5)
  {
    LOWORD(v10) = 0;
    v11 = (v8 + 8);
    v12 = (v7 + 64);
    do
    {
      v13 = *(v12 - 2);
      *v11 = v13;
      v14 = v13 - *(v11 - 1);
      v15 = *(v12 - 4) * v14;
      v16 = v14 * *v12;
      v17 = *(v12 - 6);
      *(v9 + 8 * v10) = v17;
      v18 = v10 + 2;
      *(v9 + 8 * (v10 + 1)) = v15 / 3.0 + v17;
      LOWORD(v10) = v10 + 3;
      *(v9 + 8 * v18) = *(v12 - 1) - v16 / 3.0;
      ++v11;
      v12 += 5;
      --v6;
    }

    while (v6);
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  *(v9 + 8 * v10) = *(v7 + 40 * *(a1 + 1) - 24);
  *(a2 + 66) = 0;
  if (a2 + 3 != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(a2 + 3, v8, v20, (v20 - v8) >> 3);
    v8 = __p;
  }

  a2[6] = *v8;
  a2[7] = *(v20 - 1);
  v20 = v8;
  operator delete(v8);
}

double geom::interpolating_spline<double>::evaluate_total_length(uint64_t a1)
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

  return geom::interpolating_spline<double>::evaluate_length_at(a1, v2);
}

void std::vector<double>::push_back[abi:nn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t std::vector<geom::interpolating_spline<double>>::push_back[abi:nn200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<geom::interpolating_spline<double>>::__emplace_back_slow_path<geom::interpolating_spline<double> const&>(a1, a2);
  }

  else
  {
    result = geom::interpolating_spline<double>::interpolating_spline(v3, a2) + 96;
  }

  a1[1] = result;
  return result;
}

void std::vector<double>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double>::__append(a1, a2 - v2);
  }
}

void _ZN4geom19interpolating_curveIDv2_fE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  _ZN4geom19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 0);
}

void _ZN4geom19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(uint64_t a1, void *a2, char a3)
{
  v6 = a2[1] - *a2;
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  if (v8 == v10)
  {
    v11 = v6 >> 5;
  }

  else
  {
    do
    {
      v8 = geom::interpolating_spline<float>::~interpolating_spline(v8 - 88);
    }

    while (v8 != v10);
    v11 = (a2[1] - *a2) >> 5;
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<float>>::reserve(v9, v11 - 1);
  *(a1 + 192) = 0;
  v12 = (v6 >> 5);
  if (v12 < 2)
  {
    v13 = 0;
    v16 = -1;
  }

  else
  {
    LOWORD(v13) = 0;
    v14 = 1;
    v15 = -1;
    do
    {
      if (*(*a2 + 32 * v14) != *(*a2 + 32 * v13))
      {
        v15 = v14 - 1;
        *&v103 = *a2 + 32 * v13;
        *(&v103 + 1) = (v14 - 1) - v13 + 1;
        _ZN4geom19interpolating_curveIDv2_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v103);
        LOWORD(v13) = v14;
      }

      ++v14;
    }

    while (v12 > v14);
    v16 = v15;
    v13 = v13;
  }

  if (v12 - 1 != v16)
  {
    *&v103 = *a2 + 32 * v13;
    *(&v103 + 1) = (v6 >> 5) - v13;
    _ZN4geom19interpolating_curveIDv2_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v103);
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3));
  if (v17 == v18)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v19 = 0;
    v20 = *v9;
    v21 = *(a1 + 24);
    if ((0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3)) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3);
    }

    v23 = (v20 + 56);
    v24 = v22;
    do
    {
      v25 = *v23;
      v23 += 44;
      *v21++ = v19;
      v19 += v25;
      --v24;
    }

    while (v24);
    std::vector<unsigned short>::resize(a1, v19);
    v27 = 0;
    v28 = 0;
    v29 = *(a1 + 72);
    do
    {
      v30 = *(v29 + 88 * v27 + 56);
      if (*(v29 + 88 * v27 + 56))
      {
        v31 = *a1;
        do
        {
          v32 = (v28 + 1);
          *(v31 + 2 * v28) = v27;
          LODWORD(v28) = v28 + 1;
          --v30;
        }

        while (v30);
      }

      else
      {
        v32 = v28;
      }

      ++v27;
      v28 = v32;
    }

    while (v27 != v22);
  }

  v33 = *a2;
  *(a1 + 184) = *(*a2 + 4);
  v34 = a2[1];
  *(a1 + 188) = *(v34 - 28);
  if (a3)
  {
    LOWORD(v113[0]) = 512;
    v35 = v34 - v33;
    v113[1] = 0.001;
    v114 = 1;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    *(a1 + 104) = *(a1 + 96);
    *(a1 + 152) = 0;
    v36 = *(a1 + 120);
    v101 = (a1 + 120);
    v102 = a1;
    *(a1 + 154) = 0;
    *(a1 + 128) = v36;
    if (v34 == v33)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v33 + 4);
    }

    if (v35 >= 0x21)
    {
      v38 = 1;
      do
      {
        v39 = v33 + 32 * v38;
        if (*v39 != *(v33 + 32 * (v38 - 1)))
        {
          goto LABEL_103;
        }

        v40 = *(v39 + 4);
        LOBYTE(v113[0]) = *v39 != 0;
        v108 = 0;
        v41 = v102;
        v109 = 0;
        *(&v103 + 1) = v103;
        *&v105 = *(&v104 + 1);
        v42 = v40;
        v26.f64[0] = (v40 + v37 * 2.0) * 0.333333333;
        v43 = v26.f64[0];
        v44 = (v37 + v40 * 2.0) * 0.333333333;
        v45 = v44;
        if (*(v102 + 192))
        {
          v46 = v37;
        }

        else
        {
          v47 = *(v102 + 72);
          v48 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v47) >> 3);
          if ((v48 & 0xFFFE) != 0 && *(v102 + 184) < v37)
          {
            LOWORD(v48) = v48 - 1;
            if (*(v102 + 188) > v37)
            {
              for (i = 0; ; i = v50 + 1)
              {
                while (1)
                {
                  v50 = (i + v48) >> 1;
                  v51 = v47 + 88 * v50;
                  if (*(v51 + 48) <= v37)
                  {
                    break;
                  }

                  LOWORD(v48) = v50 - 1;
                }

                if (*(v51 + 52) > v37)
                {
                  break;
                }
              }

              LODWORD(v48) = (i + v48) >> 1;
            }
          }

          else
          {
            LOWORD(v48) = 0;
          }

          v52 = v48;
          v53 = v48;
          v54 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v47 + 88 * v48, v37);
          if (v53)
          {
            v42 = *(*(v41 + 48) + 4 * (v52 - 1));
          }

          else
          {
            v42 = 0.0;
          }

          v44 = v42 + v54;
          v46 = v44;
          v55 = v102;
          if ((*(v102 + 192) & 1) == 0)
          {
            v56 = *(v102 + 72);
            v57 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v56) >> 3);
            if ((v57 & 0xFFFE) != 0 && *(v102 + 184) < v43)
            {
              LOWORD(v57) = v57 - 1;
              if (*(v102 + 188) > v43)
              {
                for (j = 0; ; j = v59 + 1)
                {
                  while (1)
                  {
                    v59 = (j + v57) >> 1;
                    v60 = v56 + 88 * v59;
                    if (*(v60 + 48) <= v43)
                    {
                      break;
                    }

                    LOWORD(v57) = v59 - 1;
                  }

                  if (*(v60 + 52) > v43)
                  {
                    break;
                  }
                }

                LODWORD(v57) = (j + v57) >> 1;
              }
            }

            else
            {
              LOWORD(v57) = 0;
            }

            v61 = v57;
            v62 = v57;
            v63 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v56 + 88 * v57, v43);
            v42 = v62 ? *(*(v55 + 48) + 4 * (v61 - 1)) : 0.0;
            v44 = v42 + v63;
            v43 = v44;
            v64 = v102;
            if ((*(v102 + 192) & 1) == 0)
            {
              v65 = *(v102 + 72);
              v66 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v65) >> 3);
              if ((v66 & 0xFFFE) != 0 && *(v102 + 184) < v45)
              {
                LOWORD(v66) = v66 - 1;
                if (*(v102 + 188) > v45)
                {
                  for (k = 0; ; k = v68 + 1)
                  {
                    while (1)
                    {
                      v68 = (k + v66) >> 1;
                      v69 = v65 + 88 * v68;
                      if (*(v69 + 48) <= v45)
                      {
                        break;
                      }

                      LOWORD(v66) = v68 - 1;
                    }

                    if (*(v69 + 52) > v45)
                    {
                      break;
                    }
                  }

                  LODWORD(v66) = (k + v66) >> 1;
                }
              }

              else
              {
                LOWORD(v66) = 0;
              }

              v70 = v66;
              v71 = v66;
              v72 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v65 + 88 * v66, v45);
              v42 = v71 ? *(*(v64 + 48) + 4 * (v70 - 1)) : 0.0;
              v44 = v42 + v72;
              v45 = v44;
              v73 = v102;
              if ((*(v102 + 192) & 1) == 0)
              {
                v93 = *(v102 + 72);
                v94 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v93) >> 3);
                if ((v94 & 0xFFFE) != 0 && *(v102 + 184) < v40)
                {
                  LOWORD(v94) = v94 - 1;
                  if (*(v102 + 188) > v40)
                  {
                    for (m = 0; ; m = v96 + 1)
                    {
                      while (1)
                      {
                        v96 = (m + v94) >> 1;
                        v97 = v93 + 88 * v96;
                        if (*(v97 + 48) <= v40)
                        {
                          break;
                        }

                        LOWORD(v94) = v96 - 1;
                      }

                      if (*(v97 + 52) > v40)
                      {
                        break;
                      }
                    }

                    LODWORD(v94) = (m + v94) >> 1;
                  }
                }

                else
                {
                  LOWORD(v94) = 0;
                }

                v98 = v94;
                v99 = v94;
                v100 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v93 + 88 * v94, v40);
                if (v99)
                {
                  v42 = *(*(v73 + 48) + 4 * (v98 - 1));
                }

                else
                {
                  v42 = 0.0;
                }

                v44 = v42 + v100;
                *&v44 = v44;
                goto LABEL_79;
              }
            }
          }
        }

        *&v44 = v40;
LABEL_79:
        *v115 = v37;
        *&v115[1] = v40;
        *&v115[2] = v46;
        *&v115[3] = v43;
        *&v115[4] = v45;
        v115[5] = LODWORD(v44);
        v116 = 0;
        _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(&v102, v115, v113, &v103, v44, v42, v26);
        v74 = v108;
        v75 = *(a1 + 104);
        v76 = *(a1 + 96);
        v77 = *(a1 + 152);
        if (v77)
        {
          v78 = v77 + 1;
        }

        else
        {
          v78 = 0;
        }

        v79 = v77 + v108;
        if (v77 + v108)
        {
          std::vector<float>::resize((a1 + 96), (3 * v79 + 1));
          *(a1 + 152) = v79;
          if ((*(a1 + 154) & 1) == 0)
          {
            std::vector<float>::resize(v101, v79 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v76;
          *(a1 + 152) = 0;
          if ((*(a1 + 154) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v74)
        {
          v80 = ((v75 - v76) >> 2);
          v81 = v78;
          v82 = v109;
          v83 = v108;
          v84 = v108;
          v85 = *(&v104 + 1);
          v86 = v103;
          begin = v101->__begin_;
          v88 = *(a1 + 96);
          v89 = 3;
          v90 = 1;
          do
          {
            if (v80)
            {
              if (v82)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v82)
              {
                if (v83)
                {
                  v92 = v106 + (((v107 - v106) / v84) * 0.0);
                }

                else
                {
                  v92 = v107;
                }
              }

              else
              {
                v92 = *v85;
              }

              *begin = v92;
              *v88 = *v86;
              ++v81;
              v80 = 1;
              if (v82)
              {
LABEL_91:
                if (v83 == v90)
                {
                  v91 = v107;
                }

                else
                {
                  v91 = v106 + (v90 * ((v107 - v106) / v84));
                }

                goto LABEL_101;
              }
            }

            v91 = v85[v90];
LABEL_101:
            begin[v81] = v91;
            v88[v80] = v86[(v89 - 2)];
            v88[(v80 + 1)] = v86[(v89 - 1)];
            v88[(v80 + 2)] = v86[v89];
            ++v81;
            v80 += 3;
            ++v90;
            v89 += 3;
            --v74;
          }

          while (v74);
        }

        v37 = v40;
LABEL_103:
        v38 = (v38 + 1);
        v33 = *a2;
        v35 = a2[1] - *a2;
      }

      while (v38 < v35 >> 5);
    }

    *(a1 + 192) = 1;
    *(a1 + 184) = *(v33 + 4);
    *(a1 + 188) = *(v33 + v35 - 28);
    geom::interpolating_spline<float>::~interpolating_spline(&v103);
  }
}

void _ZN4geom19interpolating_curveIDv2_fE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  _ZN4geom19interpolating_curveIDv2_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 1);
}

float32x2_t _ZNK4geom19interpolating_curveIDv2_fE11evaluate_atEf(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    a2 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
  }

  v5 = *(a1 + 72);
  v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
  if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
  {
    LOWORD(v6) = v6 - 1;
    if (*(a1 + 188) > a2)
    {
      for (i = 0; ; i = v8 + 1)
      {
        while (1)
        {
          v8 = (i + v6) >> 1;
          v9 = v5 + 88 * v8;
          if (*(v9 + 48) <= a2)
          {
            break;
          }

          LOWORD(v6) = v8 - 1;
        }

        if (*(v9 + 52) > a2)
        {
          break;
        }
      }

      LODWORD(v6) = (i + v6) >> 1;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = (v5 + 88 * v6);
  v11 = geom::interpolating_spline<float>::find_span(v10, a2);
  v12 = *(&v11 + 1);
  v13 = (*v10 + 8 * (3 * v11));
  v14 = 1.0 - *(&v11 + 1);
  v15 = (v14 * v14) * 3.0 * *(&v11 + 1);
  v16 = vmla_n_f32(vmul_n_f32(v13[1], v15), *v13, v14 * (v14 * v14));
  v17 = (1.0 - *(&v11 + 1)) * 3.0 * (v12 * v12);
  return vmla_n_f32(vmla_n_f32(v16, v13[2], v17), v13[3], (v12 * v12) * v12);
}

unint64_t _ZNK4geom19interpolating_curveIDv2_fE19evaluate_tangent_atEf(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    a2 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
    v5 = *(a1 + 72);
    v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
    if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
    {
      LOWORD(v6) = v6 - 1;
      if (*(a1 + 188) > a2)
      {
        for (i = 0; ; i = v8 + 1)
        {
          while (1)
          {
            v8 = (i + v6) >> 1;
            v9 = v5 + 88 * v8;
            if (*(v9 + 48) <= a2)
            {
              break;
            }

            LOWORD(v6) = v8 - 1;
          }

          if (*(v9 + 52) > a2)
          {
            break;
          }
        }

        LODWORD(v6) = (i + v6) >> 1;
      }
    }

    else
    {
      LOWORD(v6) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 72);
    v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
    if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
    {
      LOWORD(v6) = v6 - 1;
      if (*(a1 + 188) > a2)
      {
        for (j = 0; ; j = v11 + 1)
        {
          while (1)
          {
            v11 = (j + v6) >> 1;
            v12 = v5 + 88 * v11;
            if (*(v12 + 48) <= a2)
            {
              break;
            }

            LOWORD(v6) = v11 - 1;
          }

          if (*(v12 + 52) > a2)
          {
            break;
          }
        }

        LODWORD(v6) = (j + v6) >> 1;
      }
    }

    else
    {
      LOWORD(v6) = 0;
    }
  }

  v13 = (v5 + 88 * v6);
  result = geom::interpolating_spline<float>::find_span(v13, a2);
  v16 = (*v13 + 8 * (3 * result));
  v17 = ((1.0 - *(&result + 1)) + (1.0 - *(&result + 1))) * *(&result + 1);
  v18 = vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(vsub_f32(v16[2], v16[1]), v17), vsub_f32(v16[1], *v16), (1.0 - *(&result + 1)) * (1.0 - *(&result + 1))), vsub_f32(v16[3], v16[2]), *(&result + 1) * *(&result + 1)), v15 * 3.0);
  return result;
}

float _ZNK4geom19interpolating_curveIDv2_fE18evaluate_length_atEf(uint64_t a1, float result)
{
  if ((*(a1 + 192) & 1) == 0)
  {
    v3 = *(a1 + 72);
    v4 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v3) >> 3);
    if ((v4 & 0xFFFE) != 0 && *(a1 + 184) < result)
    {
      LOWORD(v4) = v4 - 1;
      if (*(a1 + 188) > result)
      {
        for (i = 0; ; i = v6 + 1)
        {
          while (1)
          {
            v6 = (i + v4) >> 1;
            v7 = v3 + 88 * v6;
            if (*(v7 + 48) <= result)
            {
              break;
            }

            LOWORD(v4) = v6 - 1;
          }

          if (*(v7 + 52) > result)
          {
            break;
          }
        }

        LODWORD(v4) = (i + v4) >> 1;
      }
    }

    else
    {
      LOWORD(v4) = 0;
    }

    v8 = v4;
    v9 = v4;
    v10 = _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v3 + 88 * v4, result);
    if (v9)
    {
      v11 = *(*(a1 + 48) + 4 * (v8 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    return v11 + v10;
  }

  return result;
}

float _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(uint64_t a1, float a2)
{
  span = geom::interpolating_spline<float>::find_span(a1, a2);
  v5 = span;
  v6 = *(a1 + 64);
  if (*(a1 + 72) == v6)
  {
    v8 = span;
    if (span)
    {
      v9 = 0;
      v7 = 0.0;
      do
      {
        v7 = v7 + _ZNK4geom20interpolating_splineIDv2_fE20evaluate_span_lengthEj(a1, v9++);
      }

      while (v8 != v9);
      goto LABEL_9;
    }
  }

  else if (span)
  {
    v7 = *(v6 + 4 * span - 4);
    goto LABEL_9;
  }

  v7 = 0.0;
LABEL_9:
  if (*(a1 + 58) == 1)
  {
    v10 = *(a1 + 56);
    if (v10 == v5)
    {
      v11 = *(a1 + 52);
    }

    else
    {
      v11 = *(a1 + 48) + (v5 * ((*(a1 + 52) - *(a1 + 48)) / v10));
    }
  }

  else
  {
    v11 = *(*(a1 + 24) + 4 * v5);
  }

  return v7 + _ZNK4geom20interpolating_splineIDv2_fE24evaluate_length_betweeenEff(a1, v11, a2);
}

void _ZNK4geom19interpolating_curveIDv2_fE10span_knotsEtRfS3_(uint64_t a1, unsigned int a2, float *a3, float *a4, double a5, double a6, float a7)
{
  v9 = *(*a1 + 2 * a2);
  v10 = a2 - *(*(a1 + 24) + 2 * v9);
  if (*(a1 + 192) == 1)
  {
    if (*(*a1 + 2 * a2))
    {
      v11 = *(*(a1 + 48) + 4 * (v9 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    v18 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v18 + 58))
    {
      v19 = *(v18 + 48);
      LOWORD(a7) = *(v18 + 56);
      v20 = (*(v18 + 52) - v19) / LODWORD(a7);
      v21 = v19 + (v10 * v20);
      v22 = v20 + v21;
    }

    else
    {
      v23 = (*(v18 + 24) + 4 * v10);
      v21 = *v23;
      v22 = v23[1];
    }

    *a3 = v11 + _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(v18, v21);
    v16 = v11 + _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(*(a1 + 72) + 88 * v9, v22);
  }

  else
  {
    v12 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v12 + 58))
    {
      v13 = *(v12 + 48);
      LOWORD(a7) = *(v12 + 56);
      v14 = (*(v12 + 52) - v13) / LODWORD(a7);
      v15 = v13 + ((a2 - *(*(a1 + 24) + 2 * v9)) * v14);
      *a3 = v15;
      v16 = v14 + v15;
    }

    else
    {
      v17 = *(v12 + 24) + 4 * v10;
      *a3 = *v17;
      v16 = *(v17 + 4);
    }
  }

  *a4 = v16;
}

uint64_t _ZNK4geom19interpolating_curveIDv2_fE33calculate_monomial_basis_for_spanEtPS1_(void *a1, unsigned int a2, float32x2_t *a3)
{
  v3 = a1[9];
  v4 = 88 * *(*a1 + 2 * a2);
  v5 = 3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)));
  *a3 = *(*(v3 + v4) + 8 * v5);
  v6 = v5 + 1;
  __asm { FMOV            V1.2S, #3.0 }

  a3[1] = vmul_f32(vsub_f32(*(*(v3 + v4) + 8 * v6), *(*(v3 + v4) + 8 * v5)), _D1);
  v12 = v5 + 2;
  v13 = vmul_f32(vadd_f32(vmla_f32(*(*(v3 + v4) + 8 * v5), 0xC0000000C0000000, *(*(v3 + v4) + 8 * v6)), *(*(v3 + v4) + 8 * v12)), _D1);
  a3[2] = v13;
  v14 = vsub_f32(vmla_f32(*(*(v3 + v4) + 8 * v5 + 24), _D1, vsub_f32(*(*(v3 + v4) + 8 * v6), *(*(v3 + v4) + 8 * v12))), *(*(v3 + v4) + 8 * v5));
  a3[3] = v14;
  if (sqrtf(vaddv_f32(vmul_f32(v13, v13))) <= 0.00001 && sqrtf(vaddv_f32(vmul_f32(v14, v14))) <= 0.00001)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t _ZNK4geom19interpolating_curveIDv2_fE31calculate_bezier_basis_for_spanEtPS1_(void *a1, unsigned int a2, float32x2_t *a3)
{
  v3 = (*(a1[9] + 88 * *(*a1 + 2 * a2)) + 8 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)))));
  v4 = *v3;
  v5 = v3[1];
  __asm { FMOV            V4.2S, #3.0 }

  v11 = vmul_f32(vsub_f32(v5, *v3), _D4);
  v12 = v3[2];
  v13 = vmul_f32(vadd_f32(vmla_f32(*v3, 0xC0000000C0000000, v5), v12), _D4);
  v14 = vsub_f32(vmla_f32(v3[3], _D4, vsub_f32(v5, v12)), *v3);
  if (sqrtf(vaddv_f32(vmul_f32(v13, v13))) <= 0.00001 && sqrtf(vaddv_f32(vmul_f32(v14, v14))) <= 0.00001)
  {
    *a3 = v4;
    a3[1] = vadd_f32(v4, v11);
    a3[2] = 0;
    a3[3] = 0;
    return 2;
  }

  else
  {
    v15 = vdup_n_s32(0x3EAAAAABu);
    *a3 = v4;
    a3[1] = vmla_f32(v4, v15, v11);
    a3[2] = vmla_f32(vmla_f32(v4, vdup_n_s32(0x3F2AAAABu), v11), v15, v13);
    a3[3] = vadd_f32(vadd_f32(vadd_f32(v4, v11), v13), v14);
    return 4;
  }
}

uint64_t _ZN4geom19interpolating_curveIDv2_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(uint64_t a1, float32x2_t **a2)
{
  memset(&v14, 0, sizeof(v14));
  memset(v12, 0, sizeof(v12));
  v3 = (*a2)->i32[0];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      _ZN4geom19interpolating_curveIDv2_fE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      _ZN4geom19interpolating_curveIDv2_fE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    _ZN4geom19interpolating_curveIDv2_fE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
  }

  else
  {
    _ZN4geom19interpolating_curveIDv2_fE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
  }

  geom::interpolating_spline<float>::operator=(v12, v11);
  geom::interpolating_spline<float>::~interpolating_spline(v11);
LABEL_11:
  v4 = __sz;
  std::vector<float>::resize(&v14, __sz);
  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + _ZNK4geom20interpolating_splineIDv2_fE20evaluate_span_lengthEj(v12, v5);
      *&v14.__begin_[v5++] = v6;
    }

    while (v4 != v5);
  }

  v7 = _ZNK4geom20interpolating_splineIDv2_fE21evaluate_total_lengthEv(v12);
  v8 = *(a1 + 80) - *(a1 + 72);
  if (v8)
  {
    v9 = *(*(a1 + 48) + 0x2E8BA2E8BA2E8BA3 * (v8 >> 1) - 4);
  }

  else
  {
    v9 = 0.0;
  }

  v11[0] = v7 + v9;
  std::vector<float>::push_back[abi:nn200100]((a1 + 48), v11);
  _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_fEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_((a1 + 72), v12);
  return geom::interpolating_spline<float>::~interpolating_spline(v12);
}

void _ZN4geom19interpolating_curveIDv2_fE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v5 + 1);
    }
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<float>::resize(&v25, v5 + 1);
  v6 = *a1;
  *v25.__begin_ = *(*a1 + 4);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 36;
    __asm { FMOV            V0.2S, #3.0 }

    do
    {
      v15 = *a1;
      v16 = *(*a1 + v9);
      v17 = &v25.__begin_[v7];
      v17[1] = v16;
      v18 = (v15 + 2 * v7);
      v19 = v18[1];
      v20 = vmul_n_f32(vsub_f32(v18[5], v19), v16 - *v17);
      *(*a2 + 8 * v8) = v19;
      v21 = vdiv_f32(v20, _D0);
      v22 = v8 + 2;
      *(*a2 + 8 * (v8 + 1)) = vadd_f32(v19, v21);
      LOWORD(v8) = v8 + 3;
      *(*a2 + 8 * v22) = vsub_f32(v18[5], v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 8 * v8) = *(v6 + 32 * *(a1 + 1) - 24);
  *(a2 + 58) = 0;
  if ((a2 + 24) != &v25)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v25.__begin_, v25.__end_, v25.__end_ - v25.__begin_);
  }

  begin = v25.__begin_;
  end = v25.__end_;
  *(a2 + 48) = *v25.__begin_;
  *(a2 + 52) = *(end - 1);
  v25.__end_ = begin;
  operator delete(begin);
}

void _ZN4geom19interpolating_curveIDv2_fE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(float32x2_t **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  memset(&v67, 0, sizeof(v67));
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v68, v6);
  std::vector<float>::resize(&v67, v6);
  *v68 = vmla_f32(vneg_f32((*a1)[5]), 0x4000000040000000, (*a1)[1]);
  begin = v67.__begin_;
  *v67.__begin_ = 0;
  v8 = *a1;
  v9 = vsub_f32((*a1)[5], (*a1)[1]);
  *(begin + 1) = sqrtf(sqrtf(vaddv_f32(vmul_f32(v9, v9))));
  if (v4 == 1)
  {
    v11 = 0;
  }

  else
  {
    v10 = 0;
    v11 = (v4 - 1);
    v12 = 8;
    do
    {
      *(v68 + v12) = v8[v10 * 4 + 1];
      v8 = *a1;
      v13 = vsub_f32((*a1)[v10 * 4 + 5], (*a1)[v10 * 4 + 1]);
      *&v67.__begin_[v10 + 2] = *&v67.__begin_[v10 + 1] + sqrtf(sqrtf(vaddv_f32(vmul_f32(v13, v13))));
      ++v10;
      v12 += 8;
    }

    while ((v4 - 1) != v10);
  }

  *(v68 + v6 - 2) = v8[4 * v11 + 1];
  *(v68 + v6 - 1) = vmla_f32(vneg_f32(*(v68 + 8 * v6 - 24)), 0x4000000040000000, *(v68 + 8 * v6 - 16));
  v14 = &(*a1)[4 * (v4 - 2)];
  v15 = vsub_f32(v14[5], v14[1]);
  *&v67.__begin_[v6 - 1] = *&v67.__begin_[v6 - 2] + sqrtf(sqrtf(vaddv_f32(vmul_f32(v15, v15))));
  if (v4 == 1)
  {
    v23 = 0;
    *(a2 + 8) = 0;
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      v23 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if (*(a2 + 58) != 1)
    {
      std::vector<float>::resize((a2 + 24), v11 + 1);
    }

    v22 = 0;
    LOWORD(v23) = 0;
    __asm { FMOV            V1.2S, #3.0 }

    do
    {
      v29 = v22 + 2;
      v30 = v68;
      v17.i32[0] = v67.__begin_[v22];
      v31 = *(v68 + 8 * v22);
      v32 = v22 + 1;
      v18.i32[0] = v67.__begin_[(v22 + 1)];
      v19.i32[0] = v67.__begin_[(v22 + 2)];
      v33 = *&v67.__begin_[(v22 + 3)];
      *v16.i32 = *v19.i32 - v18.f32[0];
      v34 = 1.0 / (v18.f32[0] - v17.f32[0]);
      v35 = 1.0 / (*v19.i32 - v17.f32[0]);
      v36 = 1.0 / (*v19.i32 - v18.f32[0]);
      v37 = v33 - v18.f32[0];
      v38 = 1.0 / (v33 - v18.f32[0]);
      v39 = v33 - *v19.i32;
      v40 = 1.0 / (v33 - *v19.i32);
      v20.f32[0] = v17.f32[0] - v18.f32[0];
      v21.f32[0] = v18.f32[0] - v18.f32[0];
      v41 = *(v68 + 8 * (v22 + 1));
      v42 = vneg_f32(vdup_lane_s32(v20, 0));
      v43 = vmul_n_f32(vmla_n_f32(vmul_f32(v41, v42), v31, v18.f32[0] - v18.f32[0]), v34);
      v44 = *(v68 + 8 * (v22 + 2));
      v45 = vneg_f32(vdup_lane_s32(v21, 0));
      v46 = vmul_n_f32(vmla_n_f32(vmul_f32(v44, v45), v41, *v19.i32 - v18.f32[0]), v36);
      v47 = *(v68 + 8 * (v22 + 3));
      v48 = vmul_n_f32(vmla_n_f32(vmul_f32(v47, vneg_f32(vdup_lane_s32(v16, 0))), v44, v37), v40);
      v49 = vmul_n_f32(vmla_n_f32(vmul_f32(v46, v42), v43, *v19.i32 - v18.f32[0]), v35);
      v50 = vmul_n_f32(vmla_n_f32(vmul_f32(v48, v45), v46, v37), v38);
      v51 = vmul_n_f32(vsub_f32(v41, v31), v34);
      v52 = vmul_n_f32(vsub_f32(v44, v41), v36);
      v53 = vmul_n_f32(vsub_f32(v47, v44), v40);
      v54 = vmul_n_f32(vmul_n_f32(vmls_lane_f32(vmla_n_f32(vsub_f32(v50, v49), vmul_n_f32(vmls_lane_f32(vmla_n_f32(vsub_f32(v46, v43), v51, *v19.i32 - v18.f32[0]), v52, v20, 0), v35), *v19.i32 - v18.f32[0]), vmul_n_f32(vmls_lane_f32(vmla_n_f32(vsub_f32(v48, v46), v52, v37), v53, v21, 0), v38), v21, 0), v36), *v19.i32 - v18.f32[0]);
      v17.f32[0] = v17.f32[0] - *v19.i32;
      v18.f32[0] = v18.f32[0] - *v19.i32;
      *v19.i32 = *v19.i32 - *v19.i32;
      v21 = vneg_f32(vdup_lane_s32(v17, 0));
      v55 = vmul_n_f32(vmla_n_f32(vmul_f32(v41, v21), v31, v18.f32[0]), v34);
      v20 = vneg_f32(vdup_lane_s32(v18, 0));
      v56 = vmul_n_f32(vmla_n_f32(vmul_f32(v44, v20), v41, *v19.i32), v36);
      v57 = vmul_n_f32(vmla_n_f32(vmul_f32(v47, vneg_f32(vdup_lane_s32(v19, 0))), v44, v39), v40);
      v58 = vmul_n_f32(vmla_n_f32(vmul_f32(v56, v21), v55, *v19.i32), v35);
      v59 = vmul_n_f32(vmls_lane_f32(vmla_n_f32(vsub_f32(v56, v55), v51, *v19.i32), v52, v17, 0), v35);
      v17 = vmls_lane_f32(vmla_n_f32(vsub_f32(v57, v56), v52, v39), v53, v18, 0);
      *(*a2 + 8 * v23) = v41;
      *(*a2 + 8 * (v23 + 1)) = vadd_f32(*&v30[8 * (v22 + 1)], vdiv_f32(v54, _D1));
      v60 = v23 + 2;
      LOWORD(v23) = v23 + 3;
      v16 = vsub_f32(*&v30[8 * v29], vdiv_f32(vmul_n_f32(vmul_n_f32(vmls_lane_f32(vmla_n_f32(vsub_f32(vmul_n_f32(vmla_n_f32(vmul_f32(v57, v20), v56, v39), v38), v58), v59, *v19.i32), vmul_n_f32(v17, v38), v18, 0), v36), *v16.i32), _D1));
      *(*a2 + 8 * v60) = v16;
      v22 = v32;
    }

    while (v11 != v32);
    v23 = v23;
  }

  *(*a2 + 8 * v23) = (*a1)[4 * v11 + 1];
  v61 = a1[1];
  v65 = 0;
  v66 = 0;
  __p = 0;
  if (v61)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v61);
  }

  v62 = 0;
  v63 = 0;
  *(a2 + 58) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), 0, 0, 0);
    v62 = __p;
    v63 = v65;
  }

  *(a2 + 48) = *v62;
  *(a2 + 52) = *(v63 - 1);
  v65 = v62;
  operator delete(v62);
  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

  if (v68)
  {
    v69 = v68;
    operator delete(v68);
  }
}

void _ZN4geom19interpolating_curveIDv2_fE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(void *a1@<X1>, uint64_t a2@<X8>)
{
  v60 = 0;
  v61 = 0;
  v62 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  __p = 0;
  v52 = 0;
  v53 = 0;
  v4 = a1[1];
  memset(v50, 0, sizeof(v50));
  if (v4)
  {
    std::vector<float>::__vallocate[abi:nn200100](v50, v4);
  }

  v5 = v50[0];
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v60, 0);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v57, 0);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&v54, 0);
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
  v8 = -1;
  v60[-1] = 0;
  *v60 = 0;
  __asm { FMOV            V1.2S, #1.0 }

  *(__p - 1) = _D1;
  *__p = _D1;
  *(v57 - 1) = 0;
  *v57 = 0;
  *(v54 - 1) = 0;
  *v54 = 0;
  v14 = 0;
  v15 = 0;
  v16 = (v5 + 4);
  do
  {
    _D1.i32[0] = *v16;
    *v6.i32 = *v16 - *(v16 - 1);
    v17 = *(v16 + 1);
    v16 += 4;
    *_D1.i32 = v17 - *_D1.i32;
    v7.f32[0] = (*v6.i32 + *_D1.i32) + (*v6.i32 + *_D1.i32);
    v60[v15 + 1] = vdup_lane_s32(v6, 0);
    *(__p + v15 + 1) = vdup_lane_s32(v7, 0);
    *(v57 + v15 + 1) = vdup_lane_s32(_D1, 0);
    v18 = (*a1 + v14);
    v19 = v18[5];
    *v6.i32 = 3.0 / *v6.i32;
    v7 = vsub_f32(v18[9], v19);
    v20 = v18[1];
    v6 = vmla_n_f32(vmul_f32(vsub_f32(v19, v20), vneg_f32(vdup_lane_s32(v6, 0))), v7, 3.0 / *_D1.i32);
    *(v54 + ++v15) = v6;
    v14 += 32;
  }

  while (v15 != -2);
  v21 = v52 - __p;
  v22 = ((v52 - __p) >> 3) - 1;
  *v57 = vdiv_f32(*v57, *__p);
  *v54 = vdiv_f32(*v54, *__p);
  if (v22 > 1)
  {
    v23 = v22 - 1;
    v24 = 8;
    do
    {
      *(v57 + v24) = vdiv_f32(*(v57 + v24), vmls_f32(*(__p + v24), *(v57 + v24 - 8), v60[v24 / 8]));
      *(v54 + v24) = vdiv_f32(vmls_f32(*(v54 + v24), *(v54 + v24 - 8), v60[v24 / 8]), vmls_f32(*(__p + v24), *(v57 + v24 - 8), v60[v24 / 8]));
      v24 += 8;
      --v23;
    }

    while (v23);
  }

  *(v54 + v22) = vdiv_f32(vmls_f32(*(v54 + 8 * v22), *(v54 + (((v21 << 29) - 0x200000000) >> 29)), v60[v22]), vmls_f32(*(__p + 8 * v22), *(v57 + (((v21 << 29) - 0x200000000) >> 29)), v60[v22]));
  if (v22 >= 1)
  {
    do
    {
      *(v54 + v22 - 1) = vmls_f32(*(v54 + 8 * v22 - 8), *(v54 + 8 * v22), *(v57 + 8 * v22 - 8));
    }

    while (v22-- > 1);
  }

  v26 = 0;
  v27 = 0;
  v28 = (v5 + 4);
  do
  {
    v20.f32[0] = *v28 - *(v28 - 1);
    v29 = v20.f32[0];
    v30 = 1.0 / v20.f32[0];
    v20.f32[0] = v20.f32[0] / 3.0;
    *(v57 + v26) = vmla_n_f32(vmul_f32(vmla_f32(*(v54 + v26 + 8), 0x4000000040000000, *(v54 + v26)), vneg_f32(vdup_lane_s32(v20, 0))), vsub_f32(*(*a1 + v27 + 40), *(*a1 + v27 + 8)), v30);
    v31 = 1.0 / (v29 * 3.0);
    v20 = vmul_n_f32(vsub_f32(*(v54 + v26 + 8), *(v54 + v26)), v31);
    *(__p + v26) = v20;
    v27 += 32;
    v26 += 8;
    ++v28;
    --v8;
  }

  while (v8);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v32 = *(a1 + 4);
  v33 = v32 - 1;
  if (v32 == 1)
  {
    *(a2 + 56) = 0;
    v37 = 0;
    v36 = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v33 + 1));
    *(a2 + 56) = v33;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v33 + 1);
    }

    v34 = 0;
    v35 = 0;
    LOWORD(v36) = 0;
    v37 = v33;
    v38 = (v5 + 4);
    __asm { FMOV            V2.2S, #3.0 }

    v40 = v33;
    do
    {
      v41 = *(v38 - 1);
      v42 = (*a1 + v35);
      v43 = *v38 - v41;
      v44 = v42[1];
      v45 = *(v54 + v34);
      v46 = *(__p + v34);
      v47 = vmul_n_f32(vmla_n_f32(*(v57 + v34), vmla_f32(vmul_n_f32(v46, (v41 - v41) * 3.0), 0x4000000040000000, v45), v41 - v41), v43);
      v48 = vmla_n_f32(*(v57 + v34), vmla_f32(vmul_n_f32(v46, v43 * 3.0), 0x4000000040000000, v45), v43);
      v49 = v42[5];
      *(*a2 + 8 * v36) = v44;
      *(*a2 + 8 * (v36 + 1)) = vadd_f32(v44, vdiv_f32(v47, _D2));
      LOWORD(v42) = v36 + 2;
      LOWORD(v36) = v36 + 3;
      *(*a2 + 8 * v42) = vsub_f32(v49, vdiv_f32(vmul_n_f32(v48, v43), _D2));
      v35 += 32;
      ++v38;
      v34 += 8;
      --v40;
    }

    while (v40);
    v36 = v36;
  }

  *(*a2 + 8 * v36) = *(*a1 + 32 * v37 + 8);
  *(a2 + 58) = 0;
  std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v5, 0, -v5 >> 2);
  *(a2 + 48) = *v5;
  *(a2 + 52) = MEMORY[0xFFFFFFFFFFFFFFFC];
  operator delete(v5);
  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }

  if (v54)
  {
    v55 = v54;
    operator delete(v54);
  }

  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (v60)
  {
    v61 = v60;
    operator delete(v60);
  }
}

void _ZN4geom19interpolating_curveIDv2_fE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v5 + 1);
    }
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<float>::resize(&v25, v5 + 1);
  v6 = *a1;
  *v25.__begin_ = *(*a1 + 4);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 36;
    __asm { FMOV            V0.2S, #3.0 }

    do
    {
      v15 = *a1;
      v16 = *(*a1 + v9);
      v17 = &v25.__begin_[v7];
      v17[1] = v16;
      v18 = v16 - *v17;
      v19 = (v15 + 2 * v7);
      v20 = vmul_n_f32(v19[3], v18);
      v21 = vmul_n_f32(v19[6], v18);
      v22 = v19[1];
      *(*a2 + 8 * v8) = v22;
      *(*a2 + 8 * (v8 + 1)) = vadd_f32(vdiv_f32(v20, _D0), v22);
      LOWORD(v17) = v8 + 2;
      LOWORD(v8) = v8 + 3;
      *(*a2 + 8 * v17) = vsub_f32(v19[5], vdiv_f32(v21, _D0));
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 8 * v8) = *(v6 + 32 * *(a1 + 1) - 24);
  *(a2 + 58) = 0;
  if ((a2 + 24) != &v25)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v25.__begin_, v25.__end_, v25.__end_ - v25.__begin_);
  }

  begin = v25.__begin_;
  end = v25.__end_;
  *(a2 + 48) = *v25.__begin_;
  *(a2 + 52) = *(end - 1);
  v25.__end_ = begin;
  operator delete(begin);
}

float _ZNK4geom20interpolating_splineIDv2_fE21evaluate_total_lengthEv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 58) == 1)
  {
    if (*(a1 + 56))
    {
      v2 = *(a1 + 52);
    }

    else
    {
      v2 = *(a1 + 48) + (((*(a1 + 52) - *(a1 + 48)) / 0.0) * 65535.0);
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      v1 = 0xFFFF;
    }

    v2 = *(*(a1 + 24) + 4 * v1);
  }

  return _ZNK4geom20interpolating_splineIDv2_fE18evaluate_length_atEf(a1, v2);
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_fEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_fEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(a1, a2);
  }

  else
  {
    result = _ZN4geom20interpolating_splineIDv2_fEC2ERKS2_(v3, a2) + 88;
  }

  a1[1] = result;
  return result;
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZN4geom19interpolating_curveIDv3_fE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  _ZN4geom19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 0);
}

void _ZN4geom19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(uint64_t a1, void *a2, char a3)
{
  v6 = a2[1] - *a2;
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  if (v8 == v10)
  {
    v11 = v6 >> 6;
  }

  else
  {
    do
    {
      v8 = geom::interpolating_spline<float>::~interpolating_spline(v8 - 88);
    }

    while (v8 != v10);
    v11 = (a2[1] - *a2) >> 6;
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<float>>::reserve(v9, v11 - 1);
  *(a1 + 192) = 0;
  v12 = (v6 >> 6);
  if (v12 < 2)
  {
    v13 = 0;
    v16 = -1;
  }

  else
  {
    LOWORD(v13) = 0;
    v14 = 1;
    v15 = -1;
    do
    {
      if (*(*a2 + (v14 << 6)) != *(*a2 + (v13 << 6)))
      {
        v15 = v14 - 1;
        *&v103 = *a2 + (v13 << 6);
        *(&v103 + 1) = (v14 - 1) - v13 + 1;
        _ZN4geom19interpolating_curveIDv3_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v103);
        LOWORD(v13) = v14;
      }

      ++v14;
    }

    while (v12 > v14);
    v16 = v15;
    v13 = v13;
  }

  if (v12 - 1 != v16)
  {
    *&v103 = *a2 + (v13 << 6);
    *(&v103 + 1) = (v6 >> 6) - v13;
    _ZN4geom19interpolating_curveIDv3_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v103);
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3));
  if (v17 == v18)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v19 = 0;
    v20 = *v9;
    v21 = *(a1 + 24);
    if ((0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3)) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3);
    }

    v23 = (v20 + 56);
    v24 = v22;
    do
    {
      v25 = *v23;
      v23 += 44;
      *v21++ = v19;
      v19 += v25;
      --v24;
    }

    while (v24);
    std::vector<unsigned short>::resize(a1, v19);
    v27 = 0;
    v28 = 0;
    v29 = *(a1 + 72);
    do
    {
      v30 = *(v29 + 88 * v27 + 56);
      if (*(v29 + 88 * v27 + 56))
      {
        v31 = *a1;
        do
        {
          v32 = (v28 + 1);
          *(v31 + 2 * v28) = v27;
          LODWORD(v28) = v28 + 1;
          --v30;
        }

        while (v30);
      }

      else
      {
        v32 = v28;
      }

      ++v27;
      v28 = v32;
    }

    while (v27 != v22);
  }

  v33 = *a2;
  *(a1 + 184) = *(*a2 + 4);
  v34 = a2[1];
  *(a1 + 188) = *(v34 - 60);
  if (a3)
  {
    LOWORD(v113[0]) = 512;
    v35 = v34 - v33;
    v113[1] = 0.001;
    v114 = 1;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    *(a1 + 104) = *(a1 + 96);
    *(a1 + 152) = 0;
    v36 = *(a1 + 120);
    v101 = (a1 + 120);
    v102 = a1;
    *(a1 + 154) = 0;
    *(a1 + 128) = v36;
    if (v34 == v33)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v33 + 4);
    }

    if (v35 >= 0x41)
    {
      v38 = 1;
      do
      {
        v39 = v33 + (v38 << 6);
        if (*v39 != *(v33 + ((v38 - 1) << 6)))
        {
          goto LABEL_103;
        }

        v40 = *(v39 + 4);
        LOBYTE(v113[0]) = *v39 != 0;
        v108 = 0;
        v41 = v102;
        v109 = 0;
        *(&v103 + 1) = v103;
        *&v105 = *(&v104 + 1);
        v42 = v40;
        v26.f64[0] = (v40 + v37 * 2.0) * 0.333333333;
        v43 = v26.f64[0];
        v44 = (v37 + v40 * 2.0) * 0.333333333;
        v45 = v44;
        if (*(v102 + 192))
        {
          v46 = v37;
        }

        else
        {
          v47 = *(v102 + 72);
          v48 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v47) >> 3);
          if ((v48 & 0xFFFE) != 0 && *(v102 + 184) < v37)
          {
            LOWORD(v48) = v48 - 1;
            if (*(v102 + 188) > v37)
            {
              for (i = 0; ; i = v50 + 1)
              {
                while (1)
                {
                  v50 = (i + v48) >> 1;
                  v51 = v47 + 88 * v50;
                  if (*(v51 + 48) <= v37)
                  {
                    break;
                  }

                  LOWORD(v48) = v50 - 1;
                }

                if (*(v51 + 52) > v37)
                {
                  break;
                }
              }

              LODWORD(v48) = (i + v48) >> 1;
            }
          }

          else
          {
            LOWORD(v48) = 0;
          }

          v52 = v48;
          v53 = v48;
          v54 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v47 + 88 * v48, v37);
          if (v53)
          {
            v42 = *(*(v41 + 48) + 4 * (v52 - 1));
          }

          else
          {
            v42 = 0.0;
          }

          v44 = v42 + v54;
          v46 = v44;
          v55 = v102;
          if ((*(v102 + 192) & 1) == 0)
          {
            v56 = *(v102 + 72);
            v57 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v56) >> 3);
            if ((v57 & 0xFFFE) != 0 && *(v102 + 184) < v43)
            {
              LOWORD(v57) = v57 - 1;
              if (*(v102 + 188) > v43)
              {
                for (j = 0; ; j = v59 + 1)
                {
                  while (1)
                  {
                    v59 = (j + v57) >> 1;
                    v60 = v56 + 88 * v59;
                    if (*(v60 + 48) <= v43)
                    {
                      break;
                    }

                    LOWORD(v57) = v59 - 1;
                  }

                  if (*(v60 + 52) > v43)
                  {
                    break;
                  }
                }

                LODWORD(v57) = (j + v57) >> 1;
              }
            }

            else
            {
              LOWORD(v57) = 0;
            }

            v61 = v57;
            v62 = v57;
            v63 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v56 + 88 * v57, v43);
            v42 = v62 ? *(*(v55 + 48) + 4 * (v61 - 1)) : 0.0;
            v44 = v42 + v63;
            v43 = v44;
            v64 = v102;
            if ((*(v102 + 192) & 1) == 0)
            {
              v65 = *(v102 + 72);
              v66 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v65) >> 3);
              if ((v66 & 0xFFFE) != 0 && *(v102 + 184) < v45)
              {
                LOWORD(v66) = v66 - 1;
                if (*(v102 + 188) > v45)
                {
                  for (k = 0; ; k = v68 + 1)
                  {
                    while (1)
                    {
                      v68 = (k + v66) >> 1;
                      v69 = v65 + 88 * v68;
                      if (*(v69 + 48) <= v45)
                      {
                        break;
                      }

                      LOWORD(v66) = v68 - 1;
                    }

                    if (*(v69 + 52) > v45)
                    {
                      break;
                    }
                  }

                  LODWORD(v66) = (k + v66) >> 1;
                }
              }

              else
              {
                LOWORD(v66) = 0;
              }

              v70 = v66;
              v71 = v66;
              v72 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v65 + 88 * v66, v45);
              v42 = v71 ? *(*(v64 + 48) + 4 * (v70 - 1)) : 0.0;
              v44 = v42 + v72;
              v45 = v44;
              v73 = v102;
              if ((*(v102 + 192) & 1) == 0)
              {
                v93 = *(v102 + 72);
                v94 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v93) >> 3);
                if ((v94 & 0xFFFE) != 0 && *(v102 + 184) < v40)
                {
                  LOWORD(v94) = v94 - 1;
                  if (*(v102 + 188) > v40)
                  {
                    for (m = 0; ; m = v96 + 1)
                    {
                      while (1)
                      {
                        v96 = (m + v94) >> 1;
                        v97 = v93 + 88 * v96;
                        if (*(v97 + 48) <= v40)
                        {
                          break;
                        }

                        LOWORD(v94) = v96 - 1;
                      }

                      if (*(v97 + 52) > v40)
                      {
                        break;
                      }
                    }

                    LODWORD(v94) = (m + v94) >> 1;
                  }
                }

                else
                {
                  LOWORD(v94) = 0;
                }

                v98 = v94;
                v99 = v94;
                v100 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v93 + 88 * v94, v40);
                if (v99)
                {
                  v42 = *(*(v73 + 48) + 4 * (v98 - 1));
                }

                else
                {
                  v42 = 0.0;
                }

                v44 = v42 + v100;
                *&v44 = v44;
                goto LABEL_79;
              }
            }
          }
        }

        *&v44 = v40;
LABEL_79:
        *v115 = v37;
        *&v115[1] = v40;
        *&v115[2] = v46;
        *&v115[3] = v43;
        *&v115[4] = v45;
        v115[5] = LODWORD(v44);
        v116 = 0;
        _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(&v102, v115, v113, &v103, v44, v42, v26);
        v74 = v108;
        v75 = *(a1 + 104);
        v76 = *(a1 + 96);
        v77 = *(a1 + 152);
        if (v77)
        {
          v78 = v77 + 1;
        }

        else
        {
          v78 = 0;
        }

        v79 = v77 + v108;
        if (v77 + v108)
        {
          std::vector<float>::resize((a1 + 96), (3 * v79 + 1));
          *(a1 + 152) = v79;
          if ((*(a1 + 154) & 1) == 0)
          {
            std::vector<float>::resize(v101, v79 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v76;
          *(a1 + 152) = 0;
          if ((*(a1 + 154) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v74)
        {
          v80 = ((v75 - v76) >> 2);
          v81 = v78;
          v82 = v109;
          v83 = v108;
          v84 = v108;
          v85 = *(&v104 + 1);
          v86 = v103;
          begin = v101->__begin_;
          v88 = *(a1 + 96);
          v89 = 3;
          v90 = 1;
          do
          {
            if (v80)
            {
              if (v82)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v82)
              {
                if (v83)
                {
                  v92 = v106 + (((v107 - v106) / v84) * 0.0);
                }

                else
                {
                  v92 = v107;
                }
              }

              else
              {
                v92 = *v85;
              }

              *begin = v92;
              *v88 = *v86;
              ++v81;
              v80 = 1;
              if (v82)
              {
LABEL_91:
                if (v83 == v90)
                {
                  v91 = v107;
                }

                else
                {
                  v91 = v106 + (v90 * ((v107 - v106) / v84));
                }

                goto LABEL_101;
              }
            }

            v91 = v85[v90];
LABEL_101:
            begin[v81] = v91;
            v88[v80] = v86[(v89 - 2)];
            v88[(v80 + 1)] = v86[(v89 - 1)];
            v88[(v80 + 2)] = v86[v89];
            ++v81;
            v80 += 3;
            ++v90;
            v89 += 3;
            --v74;
          }

          while (v74);
        }

        v37 = v40;
LABEL_103:
        v38 = (v38 + 1);
        v33 = *a2;
        v35 = a2[1] - *a2;
      }

      while (v38 < v35 >> 6);
    }

    *(a1 + 192) = 1;
    *(a1 + 184) = *(v33 + 4);
    *(a1 + 188) = *(v33 + v35 - 60);
    geom::interpolating_spline<float>::~interpolating_spline(&v103);
  }
}

void _ZN4geom19interpolating_curveIDv3_fE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  _ZN4geom19interpolating_curveIDv3_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 1);
}

double _ZNK4geom19interpolating_curveIDv3_fE11evaluate_atEf(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    a2 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
  }

  v5 = *(a1 + 72);
  v6 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v5) >> 3);
  if ((v6 & 0xFFFE) != 0 && *(a1 + 184) < a2)
  {
    LOWORD(v6) = v6 - 1;
    if (*(a1 + 188) > a2)
    {
      for (i = 0; ; i = v8 + 1)
      {
        while (1)
        {
          v8 = (i + v6) >> 1;
          v9 = v5 + 88 * v8;
          if (*(v9 + 48) <= a2)
          {
            break;
          }

          LOWORD(v6) = v8 - 1;
        }

        if (*(v9 + 52) > a2)
        {
          break;
        }
      }

      LODWORD(v6) = (i + v6) >> 1;
    }
  }

  else
  {
    LOWORD(v6) = 0;
  }

  v10 = (v5 + 88 * v6);
  v11 = geom::interpolating_spline<float>::find_span(v10, a2);
  v12 = *(&v11 + 1);
  v13 = (*v10 + 16 * (3 * v11));
  v14 = 1.0 - *(&v11 + 1);
  v15 = (v14 * v14) * 3.0 * *(&v11 + 1);
  v16 = vmlaq_n_f32(vmulq_n_f32(v13[1], v15), *v13, v14 * (v14 * v14));
  v17 = (1.0 - *(&v11 + 1)) * 3.0 * (v12 * v12);
  *&result = vmlaq_n_f32(vmlaq_n_f32(v16, v13[2], v17), v13[3], (v12 * v12) * v12).u64[0];
  return result;
}

unint64_t _ZNK4geom19interpolating_curveIDv3_fE19evaluate_tangent_atEf(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    v5 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
    v6 = *(a1 + 72);
    v7 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v6) >> 3);
    if ((v7 & 0xFFFE) != 0 && *(a1 + 184) < v5)
    {
      LOWORD(v7) = v7 - 1;
      if (*(a1 + 188) > v5)
      {
        for (i = 0; ; i = v9 + 1)
        {
          while (1)
          {
            v9 = (i + v7) >> 1;
            v10 = v6 + 88 * v9;
            if (*(v10 + 48) <= v5)
            {
              break;
            }

            LOWORD(v7) = v9 - 1;
          }

          if (*(v10 + 52) > v5)
          {
            break;
          }
        }

        LODWORD(v7) = (i + v7) >> 1;
      }
    }

    else
    {
      LOWORD(v7) = 0;
    }

    v16 = (v6 + 88 * v7);
    result = geom::interpolating_spline<float>::find_span(v16, v5);
    v19 = (*v16 + 16 * (3 * result));
    v20 = ((1.0 - *(&result + 1)) + (1.0 - *(&result + 1))) * *(&result + 1);
    v21 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vsubq_f32(v19[2], v19[1]), v20), vsubq_f32(v19[1], *v19), (1.0 - *(&result + 1)) * (1.0 - *(&result + 1))), vsubq_f32(v19[3], v19[2]), *(&result + 1) * *(&result + 1)), v18 * 3.0);
  }

  else
  {
    v11 = *(a1 + 72);
    v12 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v11) >> 3);
    if ((v12 & 0xFFFE) != 0 && *(a1 + 184) < a2)
    {
      LOWORD(v12) = v12 - 1;
      if (*(a1 + 188) > a2)
      {
        for (j = 0; ; j = v14 + 1)
        {
          while (1)
          {
            v14 = (j + v12) >> 1;
            v15 = v11 + 88 * v14;
            if (*(v15 + 48) <= a2)
            {
              break;
            }

            LOWORD(v12) = v14 - 1;
          }

          if (*(v15 + 52) > a2)
          {
            break;
          }
        }

        LODWORD(v12) = (j + v12) >> 1;
      }
    }

    else
    {
      LOWORD(v12) = 0;
    }

    v22 = (v11 + 88 * v12);
    result = geom::interpolating_spline<float>::find_span(v22, a2);
    v24 = (*v22 + 16 * (3 * result));
    v25 = ((1.0 - *(&result + 1)) + (1.0 - *(&result + 1))) * *(&result + 1);
    v26 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vsubq_f32(v24[2], v24[1]), v25), vsubq_f32(v24[1], *v24), (1.0 - *(&result + 1)) * (1.0 - *(&result + 1))), vsubq_f32(v24[3], v24[2]), *(&result + 1) * *(&result + 1)), v23 * 3.0).u64[0];
  }

  return result;
}

float _ZNK4geom19interpolating_curveIDv3_fE18evaluate_length_atEf(uint64_t a1, float result)
{
  if ((*(a1 + 192) & 1) == 0)
  {
    v3 = *(a1 + 72);
    v4 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v3) >> 3);
    if ((v4 & 0xFFFE) != 0 && *(a1 + 184) < result)
    {
      LOWORD(v4) = v4 - 1;
      if (*(a1 + 188) > result)
      {
        for (i = 0; ; i = v6 + 1)
        {
          while (1)
          {
            v6 = (i + v4) >> 1;
            v7 = v3 + 88 * v6;
            if (*(v7 + 48) <= result)
            {
              break;
            }

            LOWORD(v4) = v6 - 1;
          }

          if (*(v7 + 52) > result)
          {
            break;
          }
        }

        LODWORD(v4) = (i + v4) >> 1;
      }
    }

    else
    {
      LOWORD(v4) = 0;
    }

    v8 = v4;
    v9 = v4;
    v10 = _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v3 + 88 * v4, result);
    if (v9)
    {
      v11 = *(*(a1 + 48) + 4 * (v8 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    return v11 + v10;
  }

  return result;
}

float _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(uint64_t a1, float a2)
{
  span = geom::interpolating_spline<float>::find_span(a1, a2);
  v5 = span;
  v6 = *(a1 + 64);
  if (*(a1 + 72) == v6)
  {
    v8 = span;
    if (span)
    {
      v9 = 0;
      v7 = 0.0;
      do
      {
        v7 = v7 + _ZNK4geom20interpolating_splineIDv3_fE20evaluate_span_lengthEj(a1, v9++);
      }

      while (v8 != v9);
      goto LABEL_9;
    }
  }

  else if (span)
  {
    v7 = *(v6 + 4 * span - 4);
    goto LABEL_9;
  }

  v7 = 0.0;
LABEL_9:
  if (*(a1 + 58) == 1)
  {
    v10 = *(a1 + 56);
    if (v10 == v5)
    {
      v11 = *(a1 + 52);
    }

    else
    {
      v11 = *(a1 + 48) + (v5 * ((*(a1 + 52) - *(a1 + 48)) / v10));
    }
  }

  else
  {
    v11 = *(*(a1 + 24) + 4 * v5);
  }

  return v7 + _ZNK4geom20interpolating_splineIDv3_fE24evaluate_length_betweeenEff(a1, v11, a2);
}

void _ZNK4geom19interpolating_curveIDv3_fE10span_knotsEtRfS3_(uint64_t a1, unsigned int a2, float *a3, float *a4, double a5, double a6, float a7)
{
  v9 = *(*a1 + 2 * a2);
  v10 = a2 - *(*(a1 + 24) + 2 * v9);
  if (*(a1 + 192) == 1)
  {
    if (*(*a1 + 2 * a2))
    {
      v11 = *(*(a1 + 48) + 4 * (v9 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    v18 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v18 + 58))
    {
      v19 = *(v18 + 48);
      LOWORD(a7) = *(v18 + 56);
      v20 = (*(v18 + 52) - v19) / LODWORD(a7);
      v21 = v19 + (v10 * v20);
      v22 = v20 + v21;
    }

    else
    {
      v23 = (*(v18 + 24) + 4 * v10);
      v21 = *v23;
      v22 = v23[1];
    }

    *a3 = v11 + _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(v18, v21);
    v16 = v11 + _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(*(a1 + 72) + 88 * v9, v22);
  }

  else
  {
    v12 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v12 + 58))
    {
      v13 = *(v12 + 48);
      LOWORD(a7) = *(v12 + 56);
      v14 = (*(v12 + 52) - v13) / LODWORD(a7);
      v15 = v13 + ((a2 - *(*(a1 + 24) + 2 * v9)) * v14);
      *a3 = v15;
      v16 = v14 + v15;
    }

    else
    {
      v17 = *(v12 + 24) + 4 * v10;
      *a3 = *v17;
      v16 = *(v17 + 4);
    }
  }

  *a4 = v16;
}

uint64_t _ZNK4geom19interpolating_curveIDv3_fE33calculate_monomial_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = 88 * *(*a1 + 2 * a2);
  v5 = 3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)));
  *a3 = *(*(v3 + v4) + 16 * v5);
  v6 = v5 + 1;
  __asm { FMOV            V1.4S, #3.0 }

  *(a3 + 16) = vmulq_f32(vsubq_f32(*(*(v3 + v4) + 16 * v6), *(*(v3 + v4) + 16 * v5)), _Q1);
  v12.i64[0] = 0xC0000000C0000000;
  v12.i64[1] = 0xC0000000C0000000;
  v13 = v5 + 2;
  v14 = vmulq_f32(vaddq_f32(vmlaq_f32(*(*(v3 + v4) + 16 * v5), v12, *(*(v3 + v4) + 16 * v6)), *(*(v3 + v4) + 16 * v13)), _Q1);
  *(a3 + 32) = v14;
  v15 = vsubq_f32(vmlaq_f32(*(*(v3 + v4) + 16 * v5 + 48), _Q1, vsubq_f32(*(*(v3 + v4) + 16 * v6), *(*(v3 + v4) + 16 * v13))), *(*(v3 + v4) + 16 * v5));
  *(a3 + 48) = v15;
  v16 = vmulq_f32(v14, v14);
  if (sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.00001 && (v17 = vmulq_f32(v15, v15), sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) <= 0.00001))
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t _ZNK4geom19interpolating_curveIDv3_fE31calculate_bezier_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1[9] + 88 * *(*a1 + 2 * a2)) + 16 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v4 = *v3;
  v5 = *(v3 + 16);
  __asm { FMOV            V4.4S, #3.0 }

  v11 = vmulq_f32(vsubq_f32(v5, *v3), _Q4);
  v12.i64[0] = 0xC0000000C0000000;
  v12.i64[1] = 0xC0000000C0000000;
  v13 = *(v3 + 32);
  v14 = vmulq_f32(vaddq_f32(vmlaq_f32(*v3, v12, v5), v13), _Q4);
  v15 = vsubq_f32(vmlaq_f32(*(v3 + 48), _Q4, vsubq_f32(v5, v13)), *v3);
  v16 = vmulq_f32(v14, v14);
  if (sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.00001 && (v17 = vmulq_f32(v15, v15), sqrtf(v17.f32[2] + vaddv_f32(*v17.f32)) <= 0.00001))
  {
    *a3 = v4;
    *(a3 + 16) = vaddq_f32(v4, v11);
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    return 2;
  }

  else
  {
    v18 = vdupq_n_s32(0x3EAAAAABu);
    *a3 = v4;
    *(a3 + 16) = vmlaq_f32(v4, v18, v11);
    *(a3 + 32) = vmlaq_f32(vmlaq_f32(v4, vdupq_n_s32(0x3F2AAAABu), v11), v18, v14);
    *(a3 + 48) = vaddq_f32(vaddq_f32(vaddq_f32(v4, v11), v14), v15);
    return 4;
  }
}

uint64_t _ZN4geom19interpolating_curveIDv3_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(uint64_t a1, int **a2)
{
  memset(&v56, 0, sizeof(v56));
  memset(v54, 0, sizeof(v54));
  v4 = **a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      _ZN4geom19interpolating_curveIDv3_fE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, &v44);
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_19;
      }

      _ZN4geom19interpolating_curveIDv3_fE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, &v44);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      v5 = *(a2 + 4);
      v6 = v5 - 1;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v44, (3 * v5 - 2));
      v49 = v6;
      if ((v50 & 1) == 0)
      {
        std::vector<float>::resize((&v45 + 8), v6 + 1);
      }

      memset(&v57, 0, sizeof(v57));
      std::vector<float>::resize(&v57, v6 + 1);
      v7 = 0;
      v8 = 0;
      *v57.__begin_ = (*a2)[1];
      v9 = 17;
      __asm { FMOV            V0.4S, #3.0 }

      do
      {
        v15 = *a2;
        v16 = *&(*a2)[v9];
        v17 = &v57.__begin_[v7];
        v17[1] = v16;
        v18 = v16 - *v17;
        v19 = &v15[v7 * 4];
        v20 = v19[3];
        v21 = v19[6];
        *(v44 + 16 * v8) = v19[1];
        v22 = v8 + 2;
        *(v44 + 16 * (v8 + 1)) = vaddq_f32(vdivq_f32(vmulq_n_f32(v20, v18), _Q0), v19[1]);
        v8 += 3;
        *(v44 + 16 * v22) = vsubq_f32(v19[5], vdivq_f32(vmulq_n_f32(v21, v18), _Q0));
        ++v7;
        v9 += 16;
      }

      while (v6 != v7);
    }

    else
    {
      v23 = *(a2 + 4);
      v24 = v23 - 1;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      v44 = 0uLL;
      v45 = 0uLL;
      v46 = 0uLL;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v44, (3 * v23 - 2));
      v49 = v24;
      if ((v50 & 1) == 0)
      {
        std::vector<float>::resize((&v45 + 8), v24 + 1);
      }

      memset(&v57, 0, sizeof(v57));
      std::vector<float>::resize(&v57, v24 + 1);
      v25 = 0;
      v8 = 0;
      *v57.__begin_ = (*a2)[1];
      v26 = 17;
      __asm { FMOV            V0.4S, #3.0 }

      do
      {
        v28 = *a2;
        v29 = *&(*a2)[v26];
        v30 = &v57.__begin_[v25];
        v30[1] = v29;
        v31 = v29 - *v30;
        v32 = &v28[v25 * 4];
        v33 = v32[1];
        v34 = vsubq_f32(v32[5], v33);
        *(v44 + 16 * v8) = v33;
        v35 = vdivq_f32(vmulq_n_f32(v34, v31), _Q0);
        v36 = v8 + 2;
        *(v44 + 16 * (v8 + 1)) = vaddq_f32(v32[1], v35);
        v8 += 3;
        *(v44 + 16 * v36) = vsubq_f32(v32[5], v35);
        ++v25;
        v26 += 16;
      }

      while (v24 != v25);
    }

    *(v44 + 16 * v8) = *&(*a2)[16 * a2[1] - 12];
    v50 = 0;
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>(&v45 + 1, v57.__begin_, v57.__end_, v57.__end_ - v57.__begin_);
    v47 = *v57.__begin_;
    v48 = *(v57.__end_ - 1);
    v57.__end_ = v57.__begin_;
    operator delete(v57.__begin_);
  }

  geom::interpolating_spline<float>::operator=(v54, &v44);
  geom::interpolating_spline<float>::~interpolating_spline(&v44);
LABEL_19:
  v37 = __sz;
  std::vector<float>::resize(&v56, __sz);
  if (v37)
  {
    v38 = 0;
    v39 = 0.0;
    do
    {
      v39 = v39 + _ZNK4geom20interpolating_splineIDv3_fE20evaluate_span_lengthEj(v54, v38);
      *&v56.__begin_[v38++] = v39;
    }

    while (v37 != v38);
  }

  v40 = _ZNK4geom20interpolating_splineIDv3_fE21evaluate_total_lengthEv(v54);
  v41 = *(a1 + 80) - *(a1 + 72);
  if (v41)
  {
    v42 = *(*(a1 + 48) + 0x2E8BA2E8BA2E8BA3 * (v41 >> 1) - 4);
  }

  else
  {
    v42 = 0.0;
  }

  *&v44 = v40 + v42;
  std::vector<float>::push_back[abi:nn200100]((a1 + 48), &v44);
  _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_fEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_((a1 + 72), v54);
  return geom::interpolating_spline<float>::~interpolating_spline(v54);
}

void _ZN4geom19interpolating_curveIDv3_fE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v5 + 1);
    }
  }

  memset(&v26, 0, sizeof(v26));
  std::vector<float>::resize(&v26, v5 + 1);
  v6 = *a1;
  *v26.__begin_ = *(*a1 + 4);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 68;
    __asm { FMOV            V0.4S, #3.0 }

    do
    {
      v15 = *a1;
      v16 = *(*a1 + v9);
      v17 = &v26.__begin_[v7];
      v17[1] = v16;
      v18 = v16 - *v17;
      v19 = (v15 + 4 * v7);
      v20 = v19[1];
      v21 = vsubq_f32(v19[5], v20);
      *(*a2 + 16 * v8) = v20;
      v22 = vdivq_f32(vmulq_n_f32(v21, v18), _Q0);
      v23 = v8 + 2;
      *(*a2 + 16 * (v8 + 1)) = vaddq_f32(v19[1], v22);
      LOWORD(v8) = v8 + 3;
      *(*a2 + 16 * v23) = vsubq_f32(v19[5], v22);
      ++v7;
      v9 += 64;
    }

    while (v5 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 16 * v8) = *(v6 + (*(a1 + 1) << 6) - 48);
  *(a2 + 58) = 0;
  if ((a2 + 24) != &v26)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v26.__begin_, v26.__end_, v26.__end_ - v26.__begin_);
  }

  begin = v26.__begin_;
  end = v26.__end_;
  *(a2 + 48) = *v26.__begin_;
  *(a2 + 52) = *(end - 1);
  v26.__end_ = begin;
  operator delete(begin);
}

void _ZN4geom19interpolating_curveIDv3_fE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(float32x4_t **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  memset(&v71, 0, sizeof(v71));
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v72, v6);
  std::vector<float>::resize(&v71, v6);
  v7.i64[0] = 0x4000000040000000;
  v7.i64[1] = 0x4000000040000000;
  *v72 = vmlaq_f32(vnegq_f32((*a1)[5]), v7, (*a1)[1]);
  begin = v71.__begin_;
  *v71.__begin_ = 0;
  v9 = *a1;
  v10 = vsubq_f32((*a1)[5], (*a1)[1]);
  v11 = vmulq_f32(v10, v10);
  *(begin + 1) = sqrtf(sqrtf(v11.f32[2] + vaddv_f32(*v11.f32)));
  if (v4 == 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = (v4 - 1);
    v14 = 16;
    do
    {
      *(v72 + v14) = v9[v12 * 4 + 1];
      v9 = *a1;
      v15 = vsubq_f32((*a1)[v12 * 4 + 5], (*a1)[v12 * 4 + 1]);
      v16 = vmulq_f32(v15, v15);
      *&v71.__begin_[v12 + 2] = *&v71.__begin_[v12 + 1] + sqrtf(sqrtf(v16.f32[2] + vaddv_f32(*v16.f32)));
      ++v12;
      v14 += 16;
    }

    while ((v4 - 1) != v12);
  }

  *(v72 + v6 - 2) = v9[4 * v13 + 1];
  *(v72 + v6 - 1) = vmlaq_f32(vnegq_f32(*(v72 + v6 - 3)), v7, *(v72 + v6 - 2));
  v17 = &(*a1)[4 * (v4 - 2)];
  v18 = vsubq_f32(v17[5], v17[1]);
  v19 = vmulq_f32(v18, v18);
  *&v71.__begin_[v6 - 1] = *&v71.__begin_[v6 - 2] + sqrtf(sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)));
  if (v4 == 1)
  {
    v27 = 0;
    *(a2 + 8) = 0;
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      v27 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if (*(a2 + 58) != 1)
    {
      std::vector<float>::resize((a2 + 24), v13 + 1);
    }

    v26 = 0;
    LOWORD(v27) = 0;
    __asm { FMOV            V1.4S, #3.0 }

    do
    {
      v33 = v26 + 2;
      v34 = v72;
      v21.i32[0] = v71.__begin_[v26];
      v35 = *(v72 + v26);
      v36 = v26 + 1;
      v22.i32[0] = v71.__begin_[(v26 + 1)];
      v23.i32[0] = v71.__begin_[(v26 + 2)];
      v37 = *&v71.__begin_[(v26 + 3)];
      v20.f32[0] = *v23.i32 - v22.f32[0];
      v38 = 1.0 / (v22.f32[0] - v21.f32[0]);
      v39 = 1.0 / (*v23.i32 - v21.f32[0]);
      v40 = 1.0 / (*v23.i32 - v22.f32[0]);
      v41 = v37 - v22.f32[0];
      v42 = 1.0 / (v37 - v22.f32[0]);
      v43 = v37 - *v23.i32;
      v44 = 1.0 / (v37 - *v23.i32);
      v24.f32[0] = v21.f32[0] - v22.f32[0];
      v25.f32[0] = v22.f32[0] - v22.f32[0];
      v45 = *(v72 + (v26 + 1));
      v46 = vnegq_f32(vdupq_lane_s32(*v24.f32, 0));
      v47 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v45, v46), v35, v22.f32[0] - v22.f32[0]), v38);
      v48 = *(v72 + (v26 + 2));
      v49 = vnegq_f32(vdupq_lane_s32(*v25.f32, 0));
      v50 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v48, v49), v45, *v23.i32 - v22.f32[0]), v40);
      v51 = *(v72 + (v26 + 3));
      v52 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v51, vnegq_f32(vdupq_lane_s32(*v20.f32, 0))), v48, v41), v44);
      v53 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v50, v46), v47, *v23.i32 - v22.f32[0]), v39);
      v54 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v52, v49), v50, v41), v42);
      v55 = vmulq_n_f32(vsubq_f32(v45, v35), v38);
      v56 = vmulq_n_f32(vsubq_f32(v48, v45), v40);
      v57 = vmulq_n_f32(vsubq_f32(v51, v48), v44);
      v58 = vmulq_n_f32(vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v54, v53), vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v50, v47), v55, *v23.i32 - v22.f32[0]), v56, *v24.f32, 0), v39), *v23.i32 - v22.f32[0]), vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v52, v50), v56, v41), v57, *v25.f32, 0), v42), *v25.f32, 0), v40), *v23.i32 - v22.f32[0]);
      v21.f32[0] = v21.f32[0] - *v23.i32;
      v22.f32[0] = v22.f32[0] - *v23.i32;
      *v23.i32 = *v23.i32 - *v23.i32;
      v25 = vnegq_f32(vdupq_lane_s32(*v21.f32, 0));
      v59 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v45, v25), v35, v22.f32[0]), v38);
      v24 = vnegq_f32(vdupq_lane_s32(v22, 0));
      v60 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v48, v24), v45, *v23.i32), v40);
      v61 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v51, vnegq_f32(vdupq_lane_s32(v23, 0))), v48, v43), v44);
      v62 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v60, v25), v59, *v23.i32), v39);
      v63 = vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v60, v59), v55, *v23.i32), v56, *v21.f32, 0), v39);
      v21 = vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v61, v60), v56, v43), v57, v22, 0);
      *(*a2 + 16 * v27) = v45;
      *(*a2 + 16 * (v27 + 1)) = vaddq_f32(v34[(v26 + 1)], vdivq_f32(v58, _Q1));
      v64 = v27 + 2;
      LOWORD(v27) = v27 + 3;
      v20 = vsubq_f32(v34[v33], vdivq_f32(vmulq_n_f32(vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v61, v24), v60, v43), v42), v62), v63, *v23.i32), vmulq_n_f32(v21, v42), v22, 0), v40), v20.f32[0]), _Q1));
      *(*a2 + 16 * v64) = v20;
      v26 = v36;
    }

    while (v13 != v36);
    v27 = v27;
  }

  *(*a2 + 16 * v27) = (*a1)[4 * v13 + 1];
  v65 = a1[1];
  v69 = 0;
  v70 = 0;
  __p = 0;
  if (v65)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v65);
  }

  v66 = 0;
  v67 = 0;
  *(a2 + 58) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), 0, 0, 0);
    v66 = __p;
    v67 = v69;
  }

  *(a2 + 48) = *v66;
  *(a2 + 52) = *(v67 - 1);
  v69 = v66;
  operator delete(v66);
  if (v71.__begin_)
  {
    v71.__end_ = v71.__begin_;
    operator delete(v71.__begin_);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void _ZN4geom19interpolating_curveIDv3_fE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(void *a1@<X1>, uint64_t a2@<X8>)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  __p = 0;
  v54 = 0;
  v55 = 0;
  v4 = a1[1];
  memset(v52, 0, sizeof(v52));
  if (v4)
  {
    std::vector<float>::__vallocate[abi:nn200100](v52, v4);
  }

  v5 = v52[0];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v62, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v59, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v56, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
  v8 = -1;
  *(v62 - 1) = 0u;
  *v62 = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(__p - 1) = _Q1;
  *__p = _Q1;
  *(v59 - 1) = 0u;
  *v59 = 0u;
  *(v56 - 1) = 0u;
  *v56 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = (v5 + 4);
  do
  {
    LODWORD(_Q1) = *v16;
    v6.f32[0] = *v16 - *(v16 - 1);
    v17 = *(v16 + 1);
    v16 += 4;
    *&_Q1 = v17 - *&_Q1;
    v7.f32[0] = (v6.f32[0] + *&_Q1) + (v6.f32[0] + *&_Q1);
    v62[v15 + 1] = vdupq_lane_s32(*v6.f32, 0);
    *(__p + v15 + 1) = vdupq_lane_s32(*v7.f32, 0);
    *(v59 + v15 + 1) = vdupq_lane_s32(*&_Q1, 0);
    v18 = (*a1 + v14);
    v19 = v18[5];
    v7 = vsubq_f32(v18[9], v19);
    v6.f32[0] = 3.0 / v6.f32[0];
    v20 = v18[1];
    v6 = vmlaq_n_f32(vmulq_f32(vsubq_f32(v19, v20), vnegq_f32(vdupq_lane_s32(*v6.f32, 0))), v7, 3.0 / *&_Q1);
    *(v56 + ++v15) = v6;
    v14 += 64;
  }

  while (v15 != -2);
  v21 = v54 - __p;
  v22 = ((v54 - __p) >> 4) - 1;
  *v59 = vdivq_f32(*v59, *__p);
  *v56 = vdivq_f32(*v56, *__p);
  if (v22 > 1)
  {
    v23 = v22 - 1;
    v24 = 16;
    do
    {
      *(v59 + v24) = vdivq_f32(*(v59 + v24), vmlsq_f32(*(__p + v24), *(v59 + v24 - 16), v62[v24 / 0x10]));
      *(v56 + v24) = vdivq_f32(vmlsq_f32(*(v56 + v24), *(v56 + v24 - 16), v62[v24 / 0x10]), vmlsq_f32(*(__p + v24), *(v59 + v24 - 16), v62[v24 / 0x10]));
      v24 += 16;
      --v23;
    }

    while (v23);
  }

  *(v56 + v22) = vdivq_f32(vmlsq_f32(*(v56 + v22), *(v56 + (((v21 << 28) - 0x200000000) >> 28)), v62[v22]), vmlsq_f32(*(__p + v22), *(v59 + (((v21 << 28) - 0x200000000) >> 28)), v62[v22]));
  if (v22 >= 1)
  {
    do
    {
      *(v56 + v22 - 1) = vmlsq_f32(*(v56 + v22 - 1), *(v56 + v22), *(v59 + v22 - 1));
    }

    while (v22-- > 1);
  }

  v26 = 0;
  v27 = 0;
  v28 = (v5 + 4);
  v29.i64[0] = 0x4000000040000000;
  v29.i64[1] = 0x4000000040000000;
  do
  {
    v20.f32[0] = *v28 - *(v28 - 1);
    v30 = v20.f32[0];
    v31 = 1.0 / v20.f32[0];
    v20.f32[0] = v20.f32[0] / 3.0;
    *(v59 + v26) = vmlaq_n_f32(vmulq_f32(vmlaq_f32(*(v56 + v26 + 16), v29, *(v56 + v26)), vnegq_f32(vdupq_lane_s32(*v20.f32, 0))), vsubq_f32(*(*a1 + v27 + 80), *(*a1 + v27 + 16)), v31);
    v32 = 1.0 / (v30 * 3.0);
    v20 = vmulq_n_f32(vsubq_f32(*(v56 + v26 + 16), *(v56 + v26)), v32);
    *(__p + v26) = v20;
    v27 += 64;
    v26 += 16;
    ++v28;
    --v8;
  }

  while (v8);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v33 = *(a1 + 4);
  v34 = v33 - 1;
  if (v33 == 1)
  {
    *(a2 + 56) = 0;
    v38 = 0;
    v37 = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v34 + 1));
    *(a2 + 56) = v34;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v34 + 1);
    }

    v35 = 0;
    v36 = 0;
    LOWORD(v37) = 0;
    v38 = v34;
    v39 = (v5 + 4);
    v40.i64[0] = 0x4000000040000000;
    v40.i64[1] = 0x4000000040000000;
    __asm { FMOV            V2.4S, #3.0 }

    v42 = v34;
    do
    {
      v43 = *(v39 - 1);
      v44 = (*a1 + v36);
      v45 = v44[1];
      v46 = *v39 - v43;
      v47 = v44[5];
      v48 = *(v59 + v35);
      v49 = *(v56 + v35);
      v50 = *(__p + v35);
      *(*a2 + 16 * v37) = v45;
      v51 = v37 + 2;
      *(*a2 + 16 * (v37 + 1)) = vaddq_f32(v45, vdivq_f32(vmulq_n_f32(vmlaq_n_f32(v48, vmlaq_f32(vmulq_n_f32(v50, (v43 - v43) * 3.0), v40, v49), v43 - v43), v46), _Q2));
      LOWORD(v37) = v37 + 3;
      *(*a2 + 16 * v51) = vsubq_f32(v47, vdivq_f32(vmulq_n_f32(vmlaq_n_f32(v48, vmlaq_f32(vmulq_n_f32(v50, v46 * 3.0), v40, v49), v46), v46), _Q2));
      v36 += 64;
      ++v39;
      v35 += 16;
      --v42;
    }

    while (v42);
    v37 = v37;
  }

  *(*a2 + 16 * v37) = *(*a1 + (v38 << 6) + 16);
  *(a2 + 58) = 0;
  std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v5, 0, -v5 >> 2);
  *(a2 + 48) = *v5;
  *(a2 + 52) = MEMORY[0xFFFFFFFFFFFFFFFC];
  operator delete(v5);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void _ZN4geom19interpolating_curveIDv3_fE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v5 + 1);
    }
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<float>::resize(&v25, v5 + 1);
  v6 = *a1;
  *v25.__begin_ = *(*a1 + 4);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 68;
    __asm { FMOV            V0.4S, #3.0 }

    do
    {
      v15 = *a1;
      v16 = *(*a1 + v9);
      v17 = &v25.__begin_[v7];
      v17[1] = v16;
      v18 = v16 - *v17;
      v19 = (v15 + 4 * v7);
      v20 = v19[3];
      v21 = v19[6];
      *(*a2 + 16 * v8) = v19[1];
      v22 = v8 + 2;
      *(*a2 + 16 * (v8 + 1)) = vaddq_f32(vdivq_f32(vmulq_n_f32(v20, v18), _Q0), v19[1]);
      LOWORD(v8) = v8 + 3;
      *(*a2 + 16 * v22) = vsubq_f32(v19[5], vdivq_f32(vmulq_n_f32(v21, v18), _Q0));
      ++v7;
      v9 += 64;
    }

    while (v5 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 16 * v8) = *(v6 + (*(a1 + 1) << 6) - 48);
  *(a2 + 58) = 0;
  if ((a2 + 24) != &v25)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v25.__begin_, v25.__end_, v25.__end_ - v25.__begin_);
  }

  begin = v25.__begin_;
  end = v25.__end_;
  *(a2 + 48) = *v25.__begin_;
  *(a2 + 52) = *(end - 1);
  v25.__end_ = begin;
  operator delete(begin);
}

float _ZNK4geom20interpolating_splineIDv3_fE21evaluate_total_lengthEv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 58) == 1)
  {
    if (*(a1 + 56))
    {
      v2 = *(a1 + 52);
    }

    else
    {
      v2 = *(a1 + 48) + (((*(a1 + 52) - *(a1 + 48)) / 0.0) * 65535.0);
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      v1 = 0xFFFF;
    }

    v2 = *(*(a1 + 24) + 4 * v1);
  }

  return _ZNK4geom20interpolating_splineIDv3_fE18evaluate_length_atEf(a1, v2);
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_fEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_fEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(a1, a2);
  }

  else
  {
    result = _ZN4geom20interpolating_splineIDv3_fEC2ERKS2_(v3, a2) + 88;
  }

  a1[1] = result;
  return result;
}

void _ZN4geom19interpolating_curveIDv4_fE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  _ZN4geom19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 0);
}

void _ZN4geom19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(uint64_t a1, void *a2, char a3)
{
  v6 = a2[1] - *a2;
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  if (v8 == v10)
  {
    v11 = v6 >> 6;
  }

  else
  {
    do
    {
      v8 = geom::interpolating_spline<float>::~interpolating_spline(v8 - 88);
    }

    while (v8 != v10);
    v11 = (a2[1] - *a2) >> 6;
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<float>>::reserve(v9, v11 - 1);
  *(a1 + 192) = 0;
  v12 = (v6 >> 6);
  if (v12 < 2)
  {
    v13 = 0;
    v16 = -1;
  }

  else
  {
    LOWORD(v13) = 0;
    v14 = 1;
    v15 = -1;
    do
    {
      if (*(*a2 + (v14 << 6)) != *(*a2 + (v13 << 6)))
      {
        v15 = v14 - 1;
        *&v103 = *a2 + (v13 << 6);
        *(&v103 + 1) = (v14 - 1) - v13 + 1;
        _ZN4geom19interpolating_curveIDv4_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v103);
        LOWORD(v13) = v14;
      }

      ++v14;
    }

    while (v12 > v14);
    v16 = v15;
    v13 = v13;
  }

  if (v12 - 1 != v16)
  {
    *&v103 = *a2 + (v13 << 6);
    *(&v103 + 1) = (v6 >> 6) - v13;
    _ZN4geom19interpolating_curveIDv4_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v103);
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3));
  if (v17 == v18)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v19 = 0;
    v20 = *v9;
    v21 = *(a1 + 24);
    if ((0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3)) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 0x2E8BA2E8BA2E8BA3 * ((v17 - v18) >> 3);
    }

    v23 = (v20 + 56);
    v24 = v22;
    do
    {
      v25 = *v23;
      v23 += 44;
      *v21++ = v19;
      v19 += v25;
      --v24;
    }

    while (v24);
    std::vector<unsigned short>::resize(a1, v19);
    v27 = 0;
    v28 = 0;
    v29 = *(a1 + 72);
    do
    {
      v30 = *(v29 + 88 * v27 + 56);
      if (*(v29 + 88 * v27 + 56))
      {
        v31 = *a1;
        do
        {
          v32 = (v28 + 1);
          *(v31 + 2 * v28) = v27;
          LODWORD(v28) = v28 + 1;
          --v30;
        }

        while (v30);
      }

      else
      {
        v32 = v28;
      }

      ++v27;
      v28 = v32;
    }

    while (v27 != v22);
  }

  v33 = *a2;
  *(a1 + 184) = *(*a2 + 4);
  v34 = a2[1];
  *(a1 + 188) = *(v34 - 60);
  if (a3)
  {
    LOWORD(v113[0]) = 512;
    v35 = v34 - v33;
    v113[1] = 0.001;
    v114 = 1;
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    *(a1 + 104) = *(a1 + 96);
    *(a1 + 152) = 0;
    v36 = *(a1 + 120);
    v101 = (a1 + 120);
    v102 = a1;
    *(a1 + 154) = 0;
    *(a1 + 128) = v36;
    if (v34 == v33)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = *(v33 + 4);
    }

    if (v35 >= 0x41)
    {
      v38 = 1;
      do
      {
        v39 = v33 + (v38 << 6);
        if (*v39 != *(v33 + ((v38 - 1) << 6)))
        {
          goto LABEL_103;
        }

        v40 = *(v39 + 4);
        LOBYTE(v113[0]) = *v39 != 0;
        v108 = 0;
        v41 = v102;
        v109 = 0;
        *(&v103 + 1) = v103;
        *&v105 = *(&v104 + 1);
        v42 = v40;
        v26.f64[0] = (v40 + v37 * 2.0) * 0.333333333;
        v43 = v26.f64[0];
        v44 = (v37 + v40 * 2.0) * 0.333333333;
        v45 = v44;
        if (*(v102 + 192))
        {
          v46 = v37;
        }

        else
        {
          v47 = *(v102 + 72);
          v48 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v47) >> 3);
          if ((v48 & 0xFFFE) != 0 && *(v102 + 184) < v37)
          {
            LOWORD(v48) = v48 - 1;
            if (*(v102 + 188) > v37)
            {
              for (i = 0; ; i = v50 + 1)
              {
                while (1)
                {
                  v50 = (i + v48) >> 1;
                  v51 = v47 + 88 * v50;
                  if (*(v51 + 48) <= v37)
                  {
                    break;
                  }

                  LOWORD(v48) = v50 - 1;
                }

                if (*(v51 + 52) > v37)
                {
                  break;
                }
              }

              LODWORD(v48) = (i + v48) >> 1;
            }
          }

          else
          {
            LOWORD(v48) = 0;
          }

          v52 = v48;
          v53 = v48;
          v54 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v47 + 88 * v48, v37);
          if (v53)
          {
            v42 = *(*(v41 + 48) + 4 * (v52 - 1));
          }

          else
          {
            v42 = 0.0;
          }

          v44 = v42 + v54;
          v46 = v44;
          v55 = v102;
          if ((*(v102 + 192) & 1) == 0)
          {
            v56 = *(v102 + 72);
            v57 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v56) >> 3);
            if ((v57 & 0xFFFE) != 0 && *(v102 + 184) < v43)
            {
              LOWORD(v57) = v57 - 1;
              if (*(v102 + 188) > v43)
              {
                for (j = 0; ; j = v59 + 1)
                {
                  while (1)
                  {
                    v59 = (j + v57) >> 1;
                    v60 = v56 + 88 * v59;
                    if (*(v60 + 48) <= v43)
                    {
                      break;
                    }

                    LOWORD(v57) = v59 - 1;
                  }

                  if (*(v60 + 52) > v43)
                  {
                    break;
                  }
                }

                LODWORD(v57) = (j + v57) >> 1;
              }
            }

            else
            {
              LOWORD(v57) = 0;
            }

            v61 = v57;
            v62 = v57;
            v63 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v56 + 88 * v57, v43);
            v42 = v62 ? *(*(v55 + 48) + 4 * (v61 - 1)) : 0.0;
            v44 = v42 + v63;
            v43 = v44;
            v64 = v102;
            if ((*(v102 + 192) & 1) == 0)
            {
              v65 = *(v102 + 72);
              v66 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v65) >> 3);
              if ((v66 & 0xFFFE) != 0 && *(v102 + 184) < v45)
              {
                LOWORD(v66) = v66 - 1;
                if (*(v102 + 188) > v45)
                {
                  for (k = 0; ; k = v68 + 1)
                  {
                    while (1)
                    {
                      v68 = (k + v66) >> 1;
                      v69 = v65 + 88 * v68;
                      if (*(v69 + 48) <= v45)
                      {
                        break;
                      }

                      LOWORD(v66) = v68 - 1;
                    }

                    if (*(v69 + 52) > v45)
                    {
                      break;
                    }
                  }

                  LODWORD(v66) = (k + v66) >> 1;
                }
              }

              else
              {
                LOWORD(v66) = 0;
              }

              v70 = v66;
              v71 = v66;
              v72 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v65 + 88 * v66, v45);
              v42 = v71 ? *(*(v64 + 48) + 4 * (v70 - 1)) : 0.0;
              v44 = v42 + v72;
              v45 = v44;
              v73 = v102;
              if ((*(v102 + 192) & 1) == 0)
              {
                v93 = *(v102 + 72);
                v94 = 0x2E8BA2E8BA2E8BA3 * ((*(v102 + 80) - v93) >> 3);
                if ((v94 & 0xFFFE) != 0 && *(v102 + 184) < v40)
                {
                  LOWORD(v94) = v94 - 1;
                  if (*(v102 + 188) > v40)
                  {
                    for (m = 0; ; m = v96 + 1)
                    {
                      while (1)
                      {
                        v96 = (m + v94) >> 1;
                        v97 = v93 + 88 * v96;
                        if (*(v97 + 48) <= v40)
                        {
                          break;
                        }

                        LOWORD(v94) = v96 - 1;
                      }

                      if (*(v97 + 52) > v40)
                      {
                        break;
                      }
                    }

                    LODWORD(v94) = (m + v94) >> 1;
                  }
                }

                else
                {
                  LOWORD(v94) = 0;
                }

                v98 = v94;
                v99 = v94;
                v100 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v93 + 88 * v94, v40);
                if (v99)
                {
                  v42 = *(*(v73 + 48) + 4 * (v98 - 1));
                }

                else
                {
                  v42 = 0.0;
                }

                v44 = v42 + v100;
                *&v44 = v44;
                goto LABEL_79;
              }
            }
          }
        }

        *&v44 = v40;
LABEL_79:
        *v115 = v37;
        *&v115[1] = v40;
        *&v115[2] = v46;
        *&v115[3] = v43;
        *&v115[4] = v45;
        v115[5] = LODWORD(v44);
        v116 = 0;
        _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUlfE_fEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(&v102, v115, v113, &v103, v44, v42, v26);
        v74 = v108;
        v75 = *(a1 + 104);
        v76 = *(a1 + 96);
        v77 = *(a1 + 152);
        if (v77)
        {
          v78 = v77 + 1;
        }

        else
        {
          v78 = 0;
        }

        v79 = v77 + v108;
        if (v77 + v108)
        {
          std::vector<float>::resize((a1 + 96), (3 * v79 + 1));
          *(a1 + 152) = v79;
          if ((*(a1 + 154) & 1) == 0)
          {
            std::vector<float>::resize(v101, v79 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v76;
          *(a1 + 152) = 0;
          if ((*(a1 + 154) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v74)
        {
          v80 = ((v75 - v76) >> 2);
          v81 = v78;
          v82 = v109;
          v83 = v108;
          v84 = v108;
          v85 = *(&v104 + 1);
          v86 = v103;
          begin = v101->__begin_;
          v88 = *(a1 + 96);
          v89 = 3;
          v90 = 1;
          do
          {
            if (v80)
            {
              if (v82)
              {
                goto LABEL_91;
              }
            }

            else
            {
              if (v82)
              {
                if (v83)
                {
                  v92 = v106 + (((v107 - v106) / v84) * 0.0);
                }

                else
                {
                  v92 = v107;
                }
              }

              else
              {
                v92 = *v85;
              }

              *begin = v92;
              *v88 = *v86;
              ++v81;
              v80 = 1;
              if (v82)
              {
LABEL_91:
                if (v83 == v90)
                {
                  v91 = v107;
                }

                else
                {
                  v91 = v106 + (v90 * ((v107 - v106) / v84));
                }

                goto LABEL_101;
              }
            }

            v91 = v85[v90];
LABEL_101:
            begin[v81] = v91;
            v88[v80] = v86[(v89 - 2)];
            v88[(v80 + 1)] = v86[(v89 - 1)];
            v88[(v80 + 2)] = v86[v89];
            ++v81;
            v80 += 3;
            ++v90;
            v89 += 3;
            --v74;
          }

          while (v74);
        }

        v37 = v40;
LABEL_103:
        v38 = (v38 + 1);
        v33 = *a2;
        v35 = a2[1] - *a2;
      }

      while (v38 < v35 >> 6);
    }

    *(a1 + 192) = 1;
    *(a1 + 184) = *(v33 + 4);
    *(a1 + 188) = *(v33 + v35 - 60);
    geom::interpolating_spline<float>::~interpolating_spline(&v103);
  }
}

void _ZN4geom19interpolating_curveIDv4_fE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0;
  _ZN4geom19interpolating_curveIDv4_fE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 1);
}

unint64_t _ZNK4geom19interpolating_curveIDv4_fE19evaluate_tangent_atEf(uint64_t a1, float a2)
{
  if (*(a1 + 192) == 1)
  {
    span = geom::interpolating_spline<float>::find_span(a1 + 96, a2);
    v4 = (*(a1 + 96) + 4 * (3 * span));
    v5 = (*v4 * ((1.0 - *(&span + 1)) * ((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))))) + v4[1] * (((1.0 - *(&span + 1)) * (1.0 - *(&span + 1))) * 3.0 * *(&span + 1)) + v4[2] * ((1.0 - *(&span + 1)) * 3.0 * (*(&span + 1) * *(&span + 1))) + (v4[3] * ((*(&span + 1) * *(&span + 1)) * *(&span + 1)));
    v6 = *(a1 + 72);
    v7 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v6) >> 3);
    if ((v7 & 0xFFFE) != 0 && *(a1 + 184) < v5)
    {
      LOWORD(v7) = v7 - 1;
      if (*(a1 + 188) > v5)
      {
        for (i = 0; ; i = v9 + 1)
        {
          while (1)
          {
            v9 = (i + v7) >> 1;
            v10 = v6 + 88 * v9;
            if (*(v10 + 48) <= v5)
            {
              break;
            }

            LOWORD(v7) = v9 - 1;
          }

          if (*(v10 + 52) > v5)
          {
            break;
          }
        }

        LODWORD(v7) = (i + v7) >> 1;
      }
    }

    else
    {
      LOWORD(v7) = 0;
    }

    v16 = (v6 + 88 * v7);
    result = geom::interpolating_spline<float>::find_span(v16, v5);
    v19 = (*v16 + 16 * (3 * result));
    v20 = ((1.0 - *(&result + 1)) + (1.0 - *(&result + 1))) * *(&result + 1);
    v21 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vsubq_f32(v19[2], v19[1]), v20), vsubq_f32(v19[1], *v19), (1.0 - *(&result + 1)) * (1.0 - *(&result + 1))), vsubq_f32(v19[3], v19[2]), *(&result + 1) * *(&result + 1)), v18 * 3.0);
  }

  else
  {
    v11 = *(a1 + 72);
    v12 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v11) >> 3);
    if ((v12 & 0xFFFE) != 0 && *(a1 + 184) < a2)
    {
      LOWORD(v12) = v12 - 1;
      if (*(a1 + 188) > a2)
      {
        for (j = 0; ; j = v14 + 1)
        {
          while (1)
          {
            v14 = (j + v12) >> 1;
            v15 = v11 + 88 * v14;
            if (*(v15 + 48) <= a2)
            {
              break;
            }

            LOWORD(v12) = v14 - 1;
          }

          if (*(v15 + 52) > a2)
          {
            break;
          }
        }

        LODWORD(v12) = (j + v12) >> 1;
      }
    }

    else
    {
      LOWORD(v12) = 0;
    }

    v22 = (v11 + 88 * v12);
    result = geom::interpolating_spline<float>::find_span(v22, a2);
    v24 = (*v22 + 16 * (3 * result));
    v25 = ((1.0 - *(&result + 1)) + (1.0 - *(&result + 1))) * *(&result + 1);
    v26 = vmulq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(vsubq_f32(v24[2], v24[1]), v25), vsubq_f32(v24[1], *v24), (1.0 - *(&result + 1)) * (1.0 - *(&result + 1))), vsubq_f32(v24[3], v24[2]), *(&result + 1) * *(&result + 1)), v23 * 3.0).u64[0];
  }

  return result;
}

float _ZNK4geom19interpolating_curveIDv4_fE18evaluate_length_atEf(uint64_t a1, float result)
{
  if ((*(a1 + 192) & 1) == 0)
  {
    v3 = *(a1 + 72);
    v4 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 80) - v3) >> 3);
    if ((v4 & 0xFFFE) != 0 && *(a1 + 184) < result)
    {
      LOWORD(v4) = v4 - 1;
      if (*(a1 + 188) > result)
      {
        for (i = 0; ; i = v6 + 1)
        {
          while (1)
          {
            v6 = (i + v4) >> 1;
            v7 = v3 + 88 * v6;
            if (*(v7 + 48) <= result)
            {
              break;
            }

            LOWORD(v4) = v6 - 1;
          }

          if (*(v7 + 52) > result)
          {
            break;
          }
        }

        LODWORD(v4) = (i + v4) >> 1;
      }
    }

    else
    {
      LOWORD(v4) = 0;
    }

    v8 = v4;
    v9 = v4;
    v10 = _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v3 + 88 * v4, result);
    if (v9)
    {
      v11 = *(*(a1 + 48) + 4 * (v8 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    return v11 + v10;
  }

  return result;
}

float _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(uint64_t a1, float a2)
{
  span = geom::interpolating_spline<float>::find_span(a1, a2);
  v5 = span;
  v6 = *(a1 + 64);
  if (*(a1 + 72) == v6)
  {
    v8 = span;
    if (span)
    {
      v9 = 0;
      v7 = 0.0;
      do
      {
        v7 = v7 + _ZNK4geom20interpolating_splineIDv4_fE20evaluate_span_lengthEj(a1, v9++);
      }

      while (v8 != v9);
      goto LABEL_9;
    }
  }

  else if (span)
  {
    v7 = *(v6 + 4 * span - 4);
    goto LABEL_9;
  }

  v7 = 0.0;
LABEL_9:
  if (*(a1 + 58) == 1)
  {
    v10 = *(a1 + 56);
    if (v10 == v5)
    {
      v11 = *(a1 + 52);
    }

    else
    {
      v11 = *(a1 + 48) + (v5 * ((*(a1 + 52) - *(a1 + 48)) / v10));
    }
  }

  else
  {
    v11 = *(*(a1 + 24) + 4 * v5);
  }

  return v7 + _ZNK4geom20interpolating_splineIDv4_fE24evaluate_length_betweeenEff(a1, v11, a2);
}

void _ZNK4geom19interpolating_curveIDv4_fE10span_knotsEtRfS3_(uint64_t a1, unsigned int a2, float *a3, float *a4, double a5, double a6, float a7)
{
  v9 = *(*a1 + 2 * a2);
  v10 = a2 - *(*(a1 + 24) + 2 * v9);
  if (*(a1 + 192) == 1)
  {
    if (*(*a1 + 2 * a2))
    {
      v11 = *(*(a1 + 48) + 4 * (v9 - 1));
    }

    else
    {
      v11 = 0.0;
    }

    v18 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v18 + 58))
    {
      v19 = *(v18 + 48);
      LOWORD(a7) = *(v18 + 56);
      v20 = (*(v18 + 52) - v19) / LODWORD(a7);
      v21 = v19 + (v10 * v20);
      v22 = v20 + v21;
    }

    else
    {
      v23 = (*(v18 + 24) + 4 * v10);
      v21 = *v23;
      v22 = v23[1];
    }

    *a3 = v11 + _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(v18, v21);
    v16 = v11 + _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(*(a1 + 72) + 88 * v9, v22);
  }

  else
  {
    v12 = *(a1 + 72) + 88 * *(*a1 + 2 * a2);
    if (*(v12 + 58))
    {
      v13 = *(v12 + 48);
      LOWORD(a7) = *(v12 + 56);
      v14 = (*(v12 + 52) - v13) / LODWORD(a7);
      v15 = v13 + ((a2 - *(*(a1 + 24) + 2 * v9)) * v14);
      *a3 = v15;
      v16 = v14 + v15;
    }

    else
    {
      v17 = *(v12 + 24) + 4 * v10;
      *a3 = *v17;
      v16 = *(v17 + 4);
    }
  }

  *a4 = v16;
}

uint64_t _ZNK4geom19interpolating_curveIDv4_fE33calculate_monomial_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = 88 * *(*a1 + 2 * a2);
  v5 = 3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)));
  *a3 = *(*(v3 + v4) + 16 * v5);
  v6 = v5 + 1;
  __asm { FMOV            V1.4S, #3.0 }

  *(a3 + 16) = vmulq_f32(vsubq_f32(*(*(v3 + v4) + 16 * v6), *(*(v3 + v4) + 16 * v5)), _Q1);
  v12.i64[0] = 0xC0000000C0000000;
  v12.i64[1] = 0xC0000000C0000000;
  v13 = v5 + 2;
  v14 = vmulq_f32(vaddq_f32(vmlaq_f32(*(*(v3 + v4) + 16 * v5), v12, *(*(v3 + v4) + 16 * v6)), *(*(v3 + v4) + 16 * v13)), _Q1);
  *(a3 + 32) = v14;
  v15 = vsubq_f32(vmlaq_f32(*(*(v3 + v4) + 16 * v5 + 48), _Q1, vsubq_f32(*(*(v3 + v4) + 16 * v6), *(*(v3 + v4) + 16 * v13))), *(*(v3 + v4) + 16 * v5));
  *(a3 + 48) = v15;
  v16 = vmulq_f32(v14, v14);
  if (sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))) <= 0.00001 && (v17 = vmulq_f32(v15, v15), sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))) <= 0.00001))
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t _ZNK4geom19interpolating_curveIDv4_fE31calculate_bezier_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1[9] + 88 * *(*a1 + 2 * a2)) + 16 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v4 = *v3;
  v5 = *(v3 + 16);
  __asm { FMOV            V4.4S, #3.0 }

  v11 = vmulq_f32(vsubq_f32(v5, *v3), _Q4);
  v12.i64[0] = 0xC0000000C0000000;
  v12.i64[1] = 0xC0000000C0000000;
  v13 = *(v3 + 32);
  v14 = vmulq_f32(vaddq_f32(vmlaq_f32(*v3, v12, v5), v13), _Q4);
  v15 = vsubq_f32(vmlaq_f32(*(v3 + 48), _Q4, vsubq_f32(v5, v13)), *v3);
  v16 = vmulq_f32(v14, v14);
  if (sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))) <= 0.00001 && (v17 = vmulq_f32(v15, v15), sqrtf(vaddv_f32(vadd_f32(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))) <= 0.00001))
  {
    *a3 = v4;
    *(a3 + 16) = vaddq_f32(v4, v11);
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    return 2;
  }

  else
  {
    v18 = vdupq_n_s32(0x3EAAAAABu);
    *a3 = v4;
    *(a3 + 16) = vmlaq_f32(v4, v18, v11);
    *(a3 + 32) = vmlaq_f32(vmlaq_f32(v4, vdupq_n_s32(0x3F2AAAABu), v11), v18, v14);
    *(a3 + 48) = vaddq_f32(vaddq_f32(vaddq_f32(v4, v11), v14), v15);
    return 4;
  }
}

uint64_t _ZN4geom19interpolating_curveIDv4_fE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(uint64_t a1, float32x4_t **a2)
{
  memset(&v14, 0, sizeof(v14));
  memset(v12, 0, sizeof(v12));
  v3 = (*a2)->i32[0];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      _ZN4geom19interpolating_curveIDv4_fE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      _ZN4geom19interpolating_curveIDv4_fE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    _ZN4geom19interpolating_curveIDv4_fE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
  }

  else
  {
    _ZN4geom19interpolating_curveIDv4_fE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
  }

  geom::interpolating_spline<float>::operator=(v12, v11);
  geom::interpolating_spline<float>::~interpolating_spline(v11);
LABEL_11:
  v4 = __sz;
  std::vector<float>::resize(&v14, __sz);
  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + _ZNK4geom20interpolating_splineIDv4_fE20evaluate_span_lengthEj(v12, v5);
      *&v14.__begin_[v5++] = v6;
    }

    while (v4 != v5);
  }

  v7 = _ZNK4geom20interpolating_splineIDv4_fE21evaluate_total_lengthEv(v12);
  v8 = *(a1 + 80) - *(a1 + 72);
  if (v8)
  {
    v9 = *(*(a1 + 48) + 0x2E8BA2E8BA2E8BA3 * (v8 >> 1) - 4);
  }

  else
  {
    v9 = 0.0;
  }

  v11[0] = v7 + v9;
  std::vector<float>::push_back[abi:nn200100]((a1 + 48), v11);
  _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_fEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_((a1 + 72), v12);
  return geom::interpolating_spline<float>::~interpolating_spline(v12);
}

void _ZN4geom19interpolating_curveIDv4_fE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v5 + 1);
    }
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<float>::resize(&v25, v5 + 1);
  v6 = *a1;
  *v25.__begin_ = *(*a1 + 4);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 68;
    __asm { FMOV            V0.4S, #3.0 }

    do
    {
      v15 = *a1;
      v16 = *(*a1 + v9);
      v17 = &v25.__begin_[v7];
      v17[1] = v16;
      v18 = (v15 + 4 * v7);
      v19 = v18[1];
      v20 = vmulq_n_f32(vsubq_f32(v18[5], v19), v16 - *v17);
      *(*a2 + 16 * v8) = v19;
      v21 = vdivq_f32(v20, _Q0);
      v22 = v8 + 2;
      *(*a2 + 16 * (v8 + 1)) = vaddq_f32(v19, v21);
      LOWORD(v8) = v8 + 3;
      *(*a2 + 16 * v22) = vsubq_f32(v18[5], v21);
      ++v7;
      v9 += 64;
    }

    while (v5 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 16 * v8) = *(v6 + (*(a1 + 1) << 6) - 48);
  *(a2 + 58) = 0;
  if ((a2 + 24) != &v25)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v25.__begin_, v25.__end_, v25.__end_ - v25.__begin_);
  }

  begin = v25.__begin_;
  end = v25.__end_;
  *(a2 + 48) = *v25.__begin_;
  *(a2 + 52) = *(end - 1);
  v25.__end_ = begin;
  operator delete(begin);
}

void _ZN4geom19interpolating_curveIDv4_fE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(float32x4_t **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  memset(&v71, 0, sizeof(v71));
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v72, v6);
  std::vector<float>::resize(&v71, v6);
  v7.i64[0] = 0x4000000040000000;
  v7.i64[1] = 0x4000000040000000;
  *v72 = vmlaq_f32(vnegq_f32((*a1)[5]), v7, (*a1)[1]);
  begin = v71.__begin_;
  *v71.__begin_ = 0;
  v9 = *a1;
  v10 = vsubq_f32((*a1)[5], (*a1)[1]);
  v11 = vmulq_f32(v10, v10);
  *(begin + 1) = sqrtf(sqrtf(vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))));
  if (v4 == 1)
  {
    v13 = 0;
  }

  else
  {
    v12 = 0;
    v13 = (v4 - 1);
    v14 = 16;
    do
    {
      *(v72 + v14) = v9[v12 * 4 + 1];
      v9 = *a1;
      v15 = vsubq_f32((*a1)[v12 * 4 + 5], (*a1)[v12 * 4 + 1]);
      v16 = vmulq_f32(v15, v15);
      *&v71.__begin_[v12 + 2] = *&v71.__begin_[v12 + 1] + sqrtf(sqrtf(vaddv_f32(vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL)))));
      ++v12;
      v14 += 16;
    }

    while ((v4 - 1) != v12);
  }

  *(v72 + v6 - 2) = v9[4 * v13 + 1];
  *(v72 + v6 - 1) = vmlaq_f32(vnegq_f32(*(v72 + v6 - 3)), v7, *(v72 + v6 - 2));
  v17 = &(*a1)[4 * (v4 - 2)];
  v18 = vsubq_f32(v17[5], v17[1]);
  v19 = vmulq_f32(v18, v18);
  *&v71.__begin_[v6 - 1] = *&v71.__begin_[v6 - 2] + sqrtf(sqrtf(vaddv_f32(vadd_f32(*v19.i8, *&vextq_s8(v19, v19, 8uLL)))));
  if (v4 == 1)
  {
    v27 = 0;
    *(a2 + 8) = 0;
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      v27 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if (*(a2 + 58) != 1)
    {
      std::vector<float>::resize((a2 + 24), v13 + 1);
    }

    v26 = 0;
    LOWORD(v27) = 0;
    __asm { FMOV            V1.4S, #3.0 }

    do
    {
      v33 = v26 + 2;
      v34 = v72;
      v21.i32[0] = v71.__begin_[v26];
      v35 = *(v72 + v26);
      v36 = v26 + 1;
      v22.i32[0] = v71.__begin_[(v26 + 1)];
      v23.i32[0] = v71.__begin_[(v26 + 2)];
      v37 = *&v71.__begin_[(v26 + 3)];
      v20.f32[0] = *v23.i32 - v22.f32[0];
      v38 = 1.0 / (v22.f32[0] - v21.f32[0]);
      v39 = 1.0 / (*v23.i32 - v21.f32[0]);
      v40 = 1.0 / (*v23.i32 - v22.f32[0]);
      v41 = v37 - v22.f32[0];
      v42 = 1.0 / (v37 - v22.f32[0]);
      v43 = v37 - *v23.i32;
      v44 = 1.0 / (v37 - *v23.i32);
      v24.f32[0] = v21.f32[0] - v22.f32[0];
      v25.f32[0] = v22.f32[0] - v22.f32[0];
      v45 = *(v72 + (v26 + 1));
      v46 = vnegq_f32(vdupq_lane_s32(*v24.f32, 0));
      v47 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v45, v46), v35, v22.f32[0] - v22.f32[0]), v38);
      v48 = *(v72 + (v26 + 2));
      v49 = vnegq_f32(vdupq_lane_s32(*v25.f32, 0));
      v50 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v48, v49), v45, *v23.i32 - v22.f32[0]), v40);
      v51 = *(v72 + (v26 + 3));
      v52 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v51, vnegq_f32(vdupq_lane_s32(*v20.f32, 0))), v48, v41), v44);
      v53 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v50, v46), v47, *v23.i32 - v22.f32[0]), v39);
      v54 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v52, v49), v50, v41), v42);
      v55 = vmulq_n_f32(vsubq_f32(v45, v35), v38);
      v56 = vmulq_n_f32(vsubq_f32(v48, v45), v40);
      v57 = vmulq_n_f32(vsubq_f32(v51, v48), v44);
      v58 = vmulq_n_f32(vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v54, v53), vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v50, v47), v55, *v23.i32 - v22.f32[0]), v56, *v24.f32, 0), v39), *v23.i32 - v22.f32[0]), vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v52, v50), v56, v41), v57, *v25.f32, 0), v42), *v25.f32, 0), v40), *v23.i32 - v22.f32[0]);
      v21.f32[0] = v21.f32[0] - *v23.i32;
      v22.f32[0] = v22.f32[0] - *v23.i32;
      *v23.i32 = *v23.i32 - *v23.i32;
      v25 = vnegq_f32(vdupq_lane_s32(*v21.f32, 0));
      v59 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v45, v25), v35, v22.f32[0]), v38);
      v24 = vnegq_f32(vdupq_lane_s32(v22, 0));
      v60 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v48, v24), v45, *v23.i32), v40);
      v61 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v51, vnegq_f32(vdupq_lane_s32(v23, 0))), v48, v43), v44);
      v62 = vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v60, v25), v59, *v23.i32), v39);
      v63 = vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v60, v59), v55, *v23.i32), v56, *v21.f32, 0), v39);
      v21 = vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(v61, v60), v56, v43), v57, v22, 0);
      *(*a2 + 16 * v27) = v45;
      *(*a2 + 16 * (v27 + 1)) = vaddq_f32(v34[(v26 + 1)], vdivq_f32(v58, _Q1));
      v64 = v27 + 2;
      LOWORD(v27) = v27 + 3;
      v20 = vsubq_f32(v34[v33], vdivq_f32(vmulq_n_f32(vmulq_n_f32(vmlsq_lane_f32(vmlaq_n_f32(vsubq_f32(vmulq_n_f32(vmlaq_n_f32(vmulq_f32(v61, v24), v60, v43), v42), v62), v63, *v23.i32), vmulq_n_f32(v21, v42), v22, 0), v40), v20.f32[0]), _Q1));
      *(*a2 + 16 * v64) = v20;
      v26 = v36;
    }

    while (v13 != v36);
    v27 = v27;
  }

  *(*a2 + 16 * v27) = (*a1)[4 * v13 + 1];
  v65 = a1[1];
  v69 = 0;
  v70 = 0;
  __p = 0;
  if (v65)
  {
    std::vector<float>::__vallocate[abi:nn200100](&__p, v65);
  }

  v66 = 0;
  v67 = 0;
  *(a2 + 58) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), 0, 0, 0);
    v66 = __p;
    v67 = v69;
  }

  *(a2 + 48) = *v66;
  *(a2 + 52) = *(v67 - 1);
  v69 = v66;
  operator delete(v66);
  if (v71.__begin_)
  {
    v71.__end_ = v71.__begin_;
    operator delete(v71.__begin_);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }
}

void _ZN4geom19interpolating_curveIDv4_fE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(void *a1@<X1>, uint64_t a2@<X8>)
{
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  __p = 0;
  v54 = 0;
  v55 = 0;
  v4 = a1[1];
  memset(v52, 0, sizeof(v52));
  if (v4)
  {
    std::vector<float>::__vallocate[abi:nn200100](v52, v4);
  }

  v5 = v52[0];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v62, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v59, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v56, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
  v8 = -1;
  *(v62 - 1) = 0u;
  *v62 = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(__p - 1) = _Q1;
  *__p = _Q1;
  *(v59 - 1) = 0u;
  *v59 = 0u;
  *(v56 - 1) = 0u;
  *v56 = 0u;
  v14 = 0;
  v15 = 0;
  v16 = (v5 + 4);
  do
  {
    LODWORD(_Q1) = *v16;
    v6.f32[0] = *v16 - *(v16 - 1);
    v17 = *(v16 + 1);
    v16 += 4;
    *&_Q1 = v17 - *&_Q1;
    v7.f32[0] = (v6.f32[0] + *&_Q1) + (v6.f32[0] + *&_Q1);
    v62[v15 + 1] = vdupq_lane_s32(*v6.f32, 0);
    *(__p + v15 + 1) = vdupq_lane_s32(*v7.f32, 0);
    *(v59 + v15 + 1) = vdupq_lane_s32(*&_Q1, 0);
    v18 = (*a1 + v14);
    v19 = v18[5];
    v6.f32[0] = 3.0 / v6.f32[0];
    v7 = vsubq_f32(v18[9], v19);
    v20 = v18[1];
    v6 = vmlaq_n_f32(vmulq_f32(vsubq_f32(v19, v20), vnegq_f32(vdupq_lane_s32(*v6.f32, 0))), v7, 3.0 / *&_Q1);
    *(v56 + ++v15) = v6;
    v14 += 64;
  }

  while (v15 != -2);
  v21 = v54 - __p;
  v22 = ((v54 - __p) >> 4) - 1;
  *v59 = vdivq_f32(*v59, *__p);
  *v56 = vdivq_f32(*v56, *__p);
  if (v22 > 1)
  {
    v23 = v22 - 1;
    v24 = 16;
    do
    {
      *(v59 + v24) = vdivq_f32(*(v59 + v24), vmlsq_f32(*(__p + v24), *(v59 + v24 - 16), v62[v24 / 0x10]));
      *(v56 + v24) = vdivq_f32(vmlsq_f32(*(v56 + v24), *(v56 + v24 - 16), v62[v24 / 0x10]), vmlsq_f32(*(__p + v24), *(v59 + v24 - 16), v62[v24 / 0x10]));
      v24 += 16;
      --v23;
    }

    while (v23);
  }

  *(v56 + v22) = vdivq_f32(vmlsq_f32(*(v56 + v22), *(v56 + (((v21 << 28) - 0x200000000) >> 28)), v62[v22]), vmlsq_f32(*(__p + v22), *(v59 + (((v21 << 28) - 0x200000000) >> 28)), v62[v22]));
  if (v22 >= 1)
  {
    do
    {
      *(v56 + v22 - 1) = vmlsq_f32(*(v56 + v22 - 1), *(v56 + v22), *(v59 + v22 - 1));
    }

    while (v22-- > 1);
  }

  v26 = 0;
  v27 = 0;
  v28 = (v5 + 4);
  v29.i64[0] = 0x4000000040000000;
  v29.i64[1] = 0x4000000040000000;
  do
  {
    v20.f32[0] = *v28 - *(v28 - 1);
    v30 = v20.f32[0];
    v31 = 1.0 / v20.f32[0];
    v20.f32[0] = v20.f32[0] / 3.0;
    *(v59 + v26) = vmlaq_n_f32(vmulq_f32(vmlaq_f32(*(v56 + v26 + 16), v29, *(v56 + v26)), vnegq_f32(vdupq_lane_s32(*v20.f32, 0))), vsubq_f32(*(*a1 + v27 + 80), *(*a1 + v27 + 16)), v31);
    v32 = 1.0 / (v30 * 3.0);
    v20 = vmulq_n_f32(vsubq_f32(*(v56 + v26 + 16), *(v56 + v26)), v32);
    *(__p + v26) = v20;
    v27 += 64;
    v26 += 16;
    ++v28;
    --v8;
  }

  while (v8);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v33 = *(a1 + 4);
  v34 = v33 - 1;
  if (v33 == 1)
  {
    *(a2 + 56) = 0;
    v38 = 0;
    v37 = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v34 + 1));
    *(a2 + 56) = v34;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v34 + 1);
    }

    v35 = 0;
    v36 = 0;
    LOWORD(v37) = 0;
    v38 = v34;
    v39 = (v5 + 4);
    v40.i64[0] = 0x4000000040000000;
    v40.i64[1] = 0x4000000040000000;
    __asm { FMOV            V2.4S, #3.0 }

    v42 = v34;
    do
    {
      v43 = *(v39 - 1);
      v44 = (*a1 + v36);
      v45 = v44[1];
      v46 = *v39 - v43;
      v47 = v44[5];
      v48 = *(v56 + v35);
      v49 = *(__p + v35);
      v50 = vmulq_n_f32(vmlaq_n_f32(*(v59 + v35), vmlaq_f32(vmulq_n_f32(v49, (v43 - v43) * 3.0), v40, v48), v43 - v43), v46);
      v51 = vmlaq_n_f32(*(v59 + v35), vmlaq_f32(vmulq_n_f32(v49, v46 * 3.0), v40, v48), v46);
      *(*a2 + 16 * v37) = v45;
      *(*a2 + 16 * (v37 + 1)) = vaddq_f32(v45, vdivq_f32(v50, _Q2));
      LOWORD(v44) = v37 + 2;
      LOWORD(v37) = v37 + 3;
      *(*a2 + 16 * v44) = vsubq_f32(v47, vdivq_f32(vmulq_n_f32(v51, v46), _Q2));
      v36 += 64;
      ++v39;
      v35 += 16;
      --v42;
    }

    while (v42);
    v37 = v37;
  }

  *(*a2 + 16 * v37) = *(*a1 + (v38 << 6) + 16);
  *(a2 + 58) = 0;
  std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v5, 0, -v5 >> 2);
  *(a2 + 48) = *v5;
  *(a2 + 52) = MEMORY[0xFFFFFFFFFFFFFFFC];
  operator delete(v5);
  if (__p)
  {
    v54 = __p;
    operator delete(__p);
  }

  if (v56)
  {
    v57 = v56;
    operator delete(v56);
  }

  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }
}

void _ZN4geom19interpolating_curveIDv4_fE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
{
  v4 = a1[4];
  v5 = v4 - 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  if (v4 == 1)
  {
    *(a2 + 56) = 0;
    if ((*(a2 + 58) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 56) = v5;
    if ((*(a2 + 58) & 1) == 0)
    {
      std::vector<float>::resize((a2 + 24), v5 + 1);
    }
  }

  memset(&v25, 0, sizeof(v25));
  std::vector<float>::resize(&v25, v5 + 1);
  v6 = *a1;
  *v25.__begin_ = *(*a1 + 4);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 68;
    __asm { FMOV            V0.4S, #3.0 }

    do
    {
      v15 = *a1;
      v16 = *(*a1 + v9);
      v17 = &v25.__begin_[v7];
      v17[1] = v16;
      v18 = v16 - *v17;
      v19 = (v15 + 4 * v7);
      v20 = vmulq_n_f32(v19[3], v18);
      v21 = vmulq_n_f32(v19[6], v18);
      v22 = v19[1];
      *(*a2 + 16 * v8) = v22;
      *(*a2 + 16 * (v8 + 1)) = vaddq_f32(vdivq_f32(v20, _Q0), v22);
      LOWORD(v17) = v8 + 2;
      LOWORD(v8) = v8 + 3;
      *(*a2 + 16 * v17) = vsubq_f32(v19[5], vdivq_f32(v21, _Q0));
      ++v7;
      v9 += 64;
    }

    while (v5 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 16 * v8) = *(v6 + (*(a1 + 1) << 6) - 48);
  *(a2 + 58) = 0;
  if ((a2 + 24) != &v25)
  {
    std::vector<float>::__assign_with_size[abi:nn200100]<float *,float *>((a2 + 24), v25.__begin_, v25.__end_, v25.__end_ - v25.__begin_);
  }

  begin = v25.__begin_;
  end = v25.__end_;
  *(a2 + 48) = *v25.__begin_;
  *(a2 + 52) = *(end - 1);
  v25.__end_ = begin;
  operator delete(begin);
}

float _ZNK4geom20interpolating_splineIDv4_fE21evaluate_total_lengthEv(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 58) == 1)
  {
    if (*(a1 + 56))
    {
      v2 = *(a1 + 52);
    }

    else
    {
      v2 = *(a1 + 48) + (((*(a1 + 52) - *(a1 + 48)) / 0.0) * 65535.0);
    }
  }

  else
  {
    if (!*(a1 + 56))
    {
      v1 = 0xFFFF;
    }

    v2 = *(*(a1 + 24) + 4 * v1);
  }

  return _ZNK4geom20interpolating_splineIDv4_fE18evaluate_length_atEf(a1, v2);
}

void _ZN4geom19interpolating_curveIDv2_dE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  _ZN4geom19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 0);
}

void _ZN4geom19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(uint64_t a1, void *a2, char a3)
{
  v6 = a2[1] - *a2;
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  if (v8 == v10)
  {
    v11 = v6 >> 6;
  }

  else
  {
    do
    {
      v8 = geom::interpolating_spline<double>::~interpolating_spline(v8 - 96);
    }

    while (v8 != v10);
    v11 = (a2[1] - *a2) >> 6;
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<double>>::reserve(v9, v11 - 1);
  *(a1 + 208) = 0;
  v12 = (v6 >> 6);
  if (v12 < 2)
  {
    v13 = 0;
    v16 = -1;
  }

  else
  {
    LOWORD(v13) = 0;
    v14 = 1;
    v15 = -1;
    do
    {
      if (*(*a2 + (v14 << 6)) != *(*a2 + (v13 << 6)))
      {
        v15 = v14 - 1;
        *&v105 = *a2 + (v13 << 6);
        *(&v105 + 1) = (v14 - 1) - v13 + 1;
        _ZN4geom19interpolating_curveIDv2_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v105);
        LOWORD(v13) = v14;
      }

      ++v14;
    }

    while (v12 > v14);
    v16 = v15;
    v13 = v13;
  }

  if (v12 - 1 != v16)
  {
    *&v105 = *a2 + (v13 << 6);
    *(&v105 + 1) = (v6 >> 6) - v13;
    _ZN4geom19interpolating_curveIDv2_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v105);
  }

  v18 = *(a1 + 72);
  v17 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 5));
  if (v17 == v18)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v19 = 0;
    v20 = *v9;
    v21 = *(a1 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 5) <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 5);
    }

    v23 = (v20 + 64);
    v24 = v22;
    do
    {
      v25 = *v23;
      v23 += 48;
      *v21++ = v19;
      v19 += v25;
      --v24;
    }

    while (v24);
    std::vector<unsigned short>::resize(a1, v19);
    v26 = 0;
    v27 = 0;
    v28 = *(a1 + 72);
    do
    {
      v29 = *(v28 + 96 * v26 + 64);
      if (*(v28 + 96 * v26 + 64))
      {
        v30 = *a1;
        do
        {
          v31 = (v27 + 1);
          *(v30 + 2 * v27) = v26;
          LODWORD(v27) = v27 + 1;
          --v29;
        }

        while (v29);
      }

      else
      {
        v31 = v27;
      }

      ++v26;
      v27 = v31;
    }

    while (v26 != v22);
  }

  v32 = *a2;
  *(a1 + 192) = *(*a2 + 8);
  v33 = a2[1];
  *(a1 + 200) = *(v33 - 56);
  if (a3)
  {
    LOWORD(v115[0]) = 512;
    v34 = v33 - v32;
    v115[1] = 0.001;
    v116 = 1;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    *(a1 + 104) = *(a1 + 96);
    *(a1 + 160) = 0;
    v35 = *(a1 + 120);
    v103 = (a1 + 120);
    v104 = a1;
    *(a1 + 162) = 0;
    *(a1 + 128) = v35;
    if (v33 == v32)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *(v32 + 8);
    }

    if (v34 >= 0x41)
    {
      v37 = 1;
      while (1)
      {
        v38 = v32 + (v37 << 6);
        if (*v38 != *(v32 + ((v37 - 1) << 6)))
        {
          goto LABEL_96;
        }

        v39 = *(v38 + 8);
        LOBYTE(v115[0]) = *v38 != 0;
        v110 = 0;
        v40 = v104;
        v111 = 0;
        *(&v105 + 1) = v105;
        *&v107 = *(&v106 + 1);
        v41 = (v39 + v36 * 2.0) * 0.333333333;
        v42 = (v36 + v39 * 2.0) * 0.333333333;
        if (*(v104 + 208))
        {
          v43 = v36;
          goto LABEL_71;
        }

        v44 = *(v104 + 72);
        v45 = 0xAAAAAAAAAAAAAAABLL * ((*(v104 + 80) - v44) >> 5);
        if ((v45 & 0xFFFE) == 0 || *(v104 + 192) >= v36)
        {
          break;
        }

        LOWORD(v45) = v45 - 1;
        if (*(v104 + 200) > v36)
        {
          for (i = 0; ; i = v47 + 1)
          {
            while (1)
            {
              v47 = (i + v45) >> 1;
              v48 = v44 + 96 * v47;
              if (*(v48 + 48) <= v36)
              {
                break;
              }

              LOWORD(v45) = v47 - 1;
            }

            if (*(v48 + 56) > v36)
            {
              break;
            }
          }

          LODWORD(v45) = (i + v45) >> 1;
        }

        v88 = v45;
        v89 = v45;
        v49 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v44 + 96 * v45, v36);
        if (!v89)
        {
          goto LABEL_47;
        }

        v50 = *(*(v40 + 48) + 8 * (v88 - 1));
LABEL_48:
        v43 = v49 + v50;
        v51 = v104;
        if (*(v104 + 208))
        {
          goto LABEL_71;
        }

        v52 = *(v104 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v104 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) == 0 || *(v104 + 192) >= v41)
        {
          v57 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v52, (v39 + v36 * 2.0) * 0.333333333);
LABEL_58:
          v58 = 0.0;
          goto LABEL_59;
        }

        LOWORD(v53) = v53 - 1;
        if (*(v104 + 200) > v41)
        {
          for (j = 0; ; j = v55 + 1)
          {
            while (1)
            {
              v55 = (j + v53) >> 1;
              v56 = v52 + 96 * v55;
              if (*(v56 + 48) <= v41)
              {
                break;
              }

              LOWORD(v53) = v55 - 1;
            }

            if (*(v56 + 56) > v41)
            {
              break;
            }
          }

          LODWORD(v53) = (j + v53) >> 1;
        }

        v97 = v53;
        v98 = v53;
        v57 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v52 + 96 * v53, (v39 + v36 * 2.0) * 0.333333333);
        if (!v98)
        {
          goto LABEL_58;
        }

        v58 = *(*(v51 + 48) + 8 * (v97 - 1));
LABEL_59:
        v41 = v57 + v58;
        v59 = v104;
        if (*(v104 + 208))
        {
          goto LABEL_71;
        }

        v60 = *(v104 + 72);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((*(v104 + 80) - v60) >> 5);
        if ((v61 & 0xFFFE) == 0 || *(v104 + 192) >= v42)
        {
          v65 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v60, v42);
LABEL_69:
          v66 = 0.0;
          goto LABEL_70;
        }

        LOWORD(v61) = v61 - 1;
        if (*(v104 + 200) > v42)
        {
          for (k = 0; ; k = v63 + 1)
          {
            while (1)
            {
              v63 = (k + v61) >> 1;
              v64 = v60 + 96 * v63;
              if (*(v64 + 48) <= v42)
              {
                break;
              }

              LOWORD(v61) = v63 - 1;
            }

            if (*(v64 + 56) > v42)
            {
              break;
            }
          }

          LODWORD(v61) = (k + v61) >> 1;
        }

        v99 = v61;
        v100 = v61;
        v65 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v60 + 96 * v61, v42);
        if (!v100)
        {
          goto LABEL_69;
        }

        v66 = *(*(v59 + 48) + 8 * (v99 - 1));
LABEL_70:
        v42 = v65 + v66;
        v67 = v104;
        if ((*(v104 + 208) & 1) == 0)
        {
          v90 = *(v104 + 72);
          v91 = 0xAAAAAAAAAAAAAAABLL * ((*(v104 + 80) - v90) >> 5);
          if ((v91 & 0xFFFE) != 0 && *(v104 + 192) < v39)
          {
            LOWORD(v91) = v91 - 1;
            if (*(v104 + 200) > v39)
            {
              for (m = 0; ; m = v93 + 1)
              {
                while (1)
                {
                  v93 = (m + v91) >> 1;
                  v94 = v90 + 96 * v93;
                  if (*(v94 + 48) <= v39)
                  {
                    break;
                  }

                  LOWORD(v91) = v93 - 1;
                }

                if (*(v94 + 56) > v39)
                {
                  break;
                }
              }

              LODWORD(v91) = (m + v91) >> 1;
            }

            v101 = v91;
            v102 = v91;
            v95 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v90 + 96 * v91, v39);
            if (v102)
            {
              v96 = *(*(v67 + 48) + 8 * (v101 - 1));
              goto LABEL_111;
            }
          }

          else
          {
            v95 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v90, v39);
          }

          v96 = 0.0;
LABEL_111:
          v68 = v95 + v96;
          goto LABEL_72;
        }

LABEL_71:
        v68 = v39;
LABEL_72:
        *v117 = v36;
        *&v117[1] = v39;
        *&v117[2] = v43;
        *&v117[3] = v41;
        *&v117[4] = v42;
        *&v117[5] = v68;
        v118 = 0;
        _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(&v104, v117, v115, &v105);
        v69 = v110;
        v70 = *(a1 + 104);
        v71 = *(a1 + 96);
        v72 = *(a1 + 160);
        if (v72)
        {
          v73 = v72 + 1;
        }

        else
        {
          v73 = 0;
        }

        v74 = v72 + v110;
        if (v72 + v110)
        {
          std::vector<double>::resize((a1 + 96), (3 * v74 + 1));
          *(a1 + 160) = v74;
          if ((*(a1 + 162) & 1) == 0)
          {
            std::vector<double>::resize(v103, v74 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v71;
          *(a1 + 160) = 0;
          if ((*(a1 + 162) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v69)
        {
          v75 = ((v70 - v71) >> 3);
          v76 = v73;
          v77 = v111;
          v78 = v110;
          v79 = v110;
          v80 = *(&v106 + 1);
          v81 = v105;
          v82 = *v103;
          v83 = *(a1 + 96);
          v84 = 3;
          v85 = 1;
          do
          {
            if (v75)
            {
              if (v77)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v77)
              {
                if (v78)
                {
                  v87 = v108 + (v109 - v108) / v79 * 0.0;
                }

                else
                {
                  v87 = v109;
                }
              }

              else
              {
                v87 = *v80;
              }

              *v82 = v87;
              *v83 = *v81;
              ++v76;
              v75 = 1;
              if (v77)
              {
LABEL_84:
                if (v78 == v85)
                {
                  v86 = v109;
                }

                else
                {
                  v86 = v108 + v85 * ((v109 - v108) / v79);
                }

                goto LABEL_94;
              }
            }

            v86 = v80[v85];
LABEL_94:
            v82[v76] = v86;
            v83[v75] = v81[(v84 - 2)];
            v83[(v75 + 1)] = v81[(v84 - 1)];
            v83[(v75 + 2)] = v81[v84];
            ++v76;
            v75 += 3;
            ++v85;
            v84 += 3;
            --v69;
          }

          while (v69);
        }

        v36 = v39;
LABEL_96:
        v37 = (v37 + 1);
        v32 = *a2;
        v34 = a2[1] - *a2;
        if (v37 >= v34 >> 6)
        {
          goto LABEL_121;
        }
      }

      v49 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v44, v36);
LABEL_47:
      v50 = 0.0;
      goto LABEL_48;
    }

LABEL_121:
    *(a1 + 208) = 1;
    *(a1 + 192) = *(v32 + 8);
    *(a1 + 200) = *(v32 + v34 - 56);
    geom::interpolating_spline<double>::~interpolating_spline(&v105);
  }
}

void _ZN4geom19interpolating_curveIDv2_dE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  _ZN4geom19interpolating_curveIDv2_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 1);
}

double _ZNK4geom19interpolating_curveIDv2_dE11evaluate_atEd(uint64_t a1, double a2)
{
  if (*(a1 + 208) == 1)
  {
    v12 = 0;
    v13 = 0.0;
    v14 = 0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v12, a2);
    v3 = (*(a1 + 96) + 8 * (3 * v12));
    a2 = v3[1] * (v13 * ((1.0 - v13) * (1.0 - v13) * 3.0)) + *v3 * ((1.0 - v13) * ((1.0 - v13) * (1.0 - v13))) + v3[2] * (v13 * v13 * ((1.0 - v13) * 3.0)) + v3[3] * (v13 * (v13 * v13));
  }

  v4 = *(a1 + 72);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v4) >> 5);
  if ((v5 & 0xFFFE) != 0 && *(a1 + 192) < a2)
  {
    LOWORD(v5) = v5 - 1;
    if (*(a1 + 200) > a2)
    {
      for (i = 0; ; i = v7 + 1)
      {
        while (1)
        {
          v7 = (i + v5) >> 1;
          v8 = v4 + 96 * v7;
          if (*(v8 + 48) <= a2)
          {
            break;
          }

          LOWORD(v5) = v7 - 1;
        }

        if (*(v8 + 56) > a2)
        {
          break;
        }
      }

      LODWORD(v5) = (i + v5) >> 1;
    }
  }

  else
  {
    LOWORD(v5) = 0;
  }

  v9 = (v4 + 96 * v5);
  v12 = 0;
  v13 = 0.0;
  v14 = 0;
  geom::interpolating_spline<double>::find_span(v9, &v12, a2);
  v10 = (*v9 + 16 * (3 * v12));
  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v10[1], v13 * ((1.0 - v13) * (1.0 - v13) * 3.0)), *v10, (1.0 - v13) * ((1.0 - v13) * (1.0 - v13))), v10[2], v13 * v13 * ((1.0 - v13) * 3.0)), v10[3], v13 * (v13 * v13));
  return result;
}

uint64_t _ZNK4geom19interpolating_curveIDv2_dE19evaluate_tangent_atEd(uint64_t a1, double a2)
{
  if (*(a1 + 208) == 1)
  {
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v22, a2);
    v3 = (*(a1 + 96) + 8 * (3 * v22));
    v4 = v3[1] * (v23 * ((1.0 - v23) * (1.0 - v23) * 3.0)) + *v3 * ((1.0 - v23) * ((1.0 - v23) * (1.0 - v23))) + v3[2] * (v23 * v23 * ((1.0 - v23) * 3.0)) + v3[3] * (v23 * (v23 * v23));
    v5 = *(a1 + 72);
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v5) >> 5);
    if ((v6 & 0xFFFE) != 0 && *(a1 + 192) < v4)
    {
      LOWORD(v6) = v6 - 1;
      if (*(a1 + 200) > v4)
      {
        for (i = 0; ; i = v8 + 1)
        {
          while (1)
          {
            v8 = (i + v6) >> 1;
            v9 = v5 + 96 * v8;
            if (*(v9 + 48) <= v4)
            {
              break;
            }

            LOWORD(v6) = v8 - 1;
          }

          if (*(v9 + 56) > v4)
          {
            break;
          }
        }

        LODWORD(v6) = (i + v6) >> 1;
      }
    }

    else
    {
      LOWORD(v6) = 0;
    }

    v15 = (v5 + 96 * v6);
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v15, &v22, v4);
    v17 = (*v15 + 16 * (3 * v22));
    v18 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v17[2], v17[1]), v23 * (1.0 - v23 + 1.0 - v23)), vsubq_f64(v17[1], *v17), (1.0 - v23) * (1.0 - v23)), vsubq_f64(v17[3], v17[2]), v23 * v23), v24 * 3.0);
  }

  else
  {
    v10 = *(a1 + 72);
    v11 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v10) >> 5);
    if ((v11 & 0xFFFE) != 0 && *(a1 + 192) < a2)
    {
      LOWORD(v11) = v11 - 1;
      if (*(a1 + 200) > a2)
      {
        for (j = 0; ; j = v13 + 1)
        {
          while (1)
          {
            v13 = (j + v11) >> 1;
            v14 = v10 + 96 * v13;
            if (*(v14 + 48) <= a2)
            {
              break;
            }

            LOWORD(v11) = v13 - 1;
          }

          if (*(v14 + 56) > a2)
          {
            break;
          }
        }

        LODWORD(v11) = (j + v11) >> 1;
      }
    }

    else
    {
      LOWORD(v11) = 0;
    }

    v19 = (v10 + 96 * v11);
    v22 = 0;
    v23 = 0.0;
    v24 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v19, &v22, a2);
    v20 = (*v19 + 16 * (3 * v22));
    v21 = *&vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v20[2], v20[1]), v23 * (1.0 - v23 + 1.0 - v23)), vsubq_f64(v20[1], *v20), (1.0 - v23) * (1.0 - v23)), vsubq_f64(v20[3], v20[2]), v23 * v23), v24 * 3.0);
  }

  return result;
}

double _ZNK4geom19interpolating_curveIDv2_dE18evaluate_length_atEd(uint64_t a1, double result)
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
      v9 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v3 + 96 * v5, result);
      if (v12)
      {
        v10 = *(*(a1 + 48) + 8 * (v11 - 1));
        return v9 + v10;
      }
    }

    else
    {
      v9 = _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v3, result);
    }

    v10 = 0.0;
    return v9 + v10;
  }

  return result;
}

double _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(uint64_t a1, double a2)
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
        v6 = v6 + _ZNK4geom20interpolating_splineIDv2_dE20evaluate_span_lengthEj(a1, v7++);
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

  return v6 + _ZNK4geom20interpolating_splineIDv2_dE24evaluate_length_betweeenEdd(a1, v9, a2);
}

void _ZNK4geom19interpolating_curveIDv2_dE10span_knotsEtRdS3_(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
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

    *a3 = v11 + _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(v18, v21);
    v16 = v11 + _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(*(a1 + 72) + 96 * v9, v22);
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

uint64_t _ZNK4geom19interpolating_curveIDv2_dE33calculate_monomial_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = a1[9];
  v4 = 96 * *(*a1 + 2 * a2);
  v5 = 3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2)));
  *a3 = *(*(v3 + v4) + 16 * v5);
  v6 = v5 + 1;
  __asm { FMOV            V1.2D, #3.0 }

  *(a3 + 16) = vmulq_f64(vsubq_f64(*(*(v3 + v4) + 16 * v6), *(*(v3 + v4) + 16 * v5)), _Q1);
  __asm { FMOV            V3.2D, #-2.0 }

  v13 = v5 + 2;
  v14 = vmulq_f64(vaddq_f64(vmlaq_f64(*(*(v3 + v4) + 16 * v5), _Q3, *(*(v3 + v4) + 16 * v6)), *(*(v3 + v4) + 16 * v13)), _Q1);
  *(a3 + 32) = v14;
  v15 = vsubq_f64(vmlaq_f64(*(*(v3 + v4) + 16 * v5 + 48), _Q1, vsubq_f64(*(*(v3 + v4) + 16 * v6), *(*(v3 + v4) + 16 * v13))), *(*(v3 + v4) + 16 * v5));
  *(a3 + 48) = v15;
  if (sqrt(vaddvq_f64(vmulq_f64(v14, v14))) <= 0.000001 && sqrt(vaddvq_f64(vmulq_f64(v15, v15))) <= 0.000001)
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t _ZNK4geom19interpolating_curveIDv2_dE31calculate_bezier_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1[9] + 96 * *(*a1 + 2 * a2)) + 16 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v4 = *v3;
  v5 = *(v3 + 16);
  __asm { FMOV            V4.2D, #3.0 }

  v11 = vmulq_f64(vsubq_f64(v5, *v3), _Q4);
  __asm { FMOV            V2.2D, #-2.0 }

  v13 = *(v3 + 32);
  v14 = vmulq_f64(vaddq_f64(vmlaq_f64(*v3, _Q2, v5), v13), _Q4);
  v15 = vsubq_f64(vmlaq_f64(*(v3 + 48), _Q4, vsubq_f64(v5, v13)), *v3);
  if (sqrt(vaddvq_f64(vmulq_f64(v14, v14))) <= 0.000001 && sqrt(vaddvq_f64(vmulq_f64(v15, v15))) <= 0.000001)
  {
    *a3 = v4;
    *(a3 + 16) = vaddq_f64(v4, v11);
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    return 2;
  }

  else
  {
    v16 = vdupq_n_s64(0x3FD5555555555555uLL);
    *a3 = v4;
    *(a3 + 16) = vmlaq_f64(v4, v16, v11);
    *(a3 + 32) = vmlaq_f64(vmlaq_f64(v4, vdupq_n_s64(0x3FE5555555555555uLL), v11), v16, v14);
    *(a3 + 48) = vaddq_f64(vaddq_f64(vaddq_f64(v4, v11), v14), v15);
    return 4;
  }
}

uint64_t _ZN4geom19interpolating_curveIDv2_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(uint64_t a1, float64x2_t **a2)
{
  memset(v14, 0, sizeof(v14));
  memset(v12, 0, 48);
  v3 = LODWORD((*a2)->f64[0]);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      _ZN4geom19interpolating_curveIDv2_dE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      _ZN4geom19interpolating_curveIDv2_dE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_11;
    }

    _ZN4geom19interpolating_curveIDv2_dE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
  }

  else
  {
    _ZN4geom19interpolating_curveIDv2_dE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, v11);
  }

  geom::interpolating_spline<double>::operator=(v12, v11);
  geom::interpolating_spline<double>::~interpolating_spline(v11);
LABEL_11:
  v4 = v13;
  std::vector<double>::resize(v14, v13);
  if (v4)
  {
    v5 = 0;
    v6 = 0.0;
    do
    {
      v6 = v6 + _ZNK4geom20interpolating_splineIDv2_dE20evaluate_span_lengthEj(v12, v5);
      *(v14[0] + 8 * v5++) = v6;
    }

    while (v4 != v5);
  }

  v7 = _ZNK4geom20interpolating_splineIDv2_dE21evaluate_total_lengthEv(v12);
  v8 = *(a1 + 80) - *(a1 + 72);
  if (v8)
  {
    v9 = *(*(a1 + 48) - 0x5555555555555555 * (v8 >> 2) - 8);
  }

  else
  {
    v9 = 0.0;
  }

  v11[0] = v7 + v9;
  std::vector<double>::push_back[abi:nn200100]((a1 + 48), v11);
  _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_dEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_((a1 + 72), v12);
  return geom::interpolating_spline<double>::~interpolating_spline(v12);
}

void _ZN4geom19interpolating_curveIDv2_dE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
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
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 64) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v5 + 1);
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<double>::resize(&v24, v5 + 1);
  v6 = *a1;
  *v24 = *(*a1 + 8);
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    LOWORD(v9) = 0;
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v15 = (*a1 + v8);
      v16 = v15[4].f64[1];
      v17 = &v24[v7];
      v17[1] = v16;
      v18 = v15[1];
      v19 = vmulq_n_f64(vsubq_f64(v15[5], v18), v16 - *v17);
      *(*a2 + 16 * v9) = v18;
      v20 = vdivq_f64(v19, _Q0);
      v21 = v9 + 2;
      *(*a2 + 16 * (v9 + 1)) = vaddq_f64(v18, v20);
      LOWORD(v9) = v9 + 3;
      *(*a2 + 16 * v21) = vsubq_f64(v15[5], v20);
      v8 += 64;
      v7 += 8;
    }

    while (v5 << 6 != v8);
    v6 = *a1;
    v9 = v9;
  }

  else
  {
    v9 = 0;
  }

  *(*a2 + 16 * v9) = *(v6 + (*(a1 + 1) << 6) - 48);
  *(a2 + 66) = 0;
  if ((a2 + 24) != &v24)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v24, v25, (v25 - v24) >> 3);
  }

  v22 = v24;
  v23 = v25;
  *(a2 + 48) = *v24;
  *(a2 + 56) = *(v23 - 1);
  v25 = v22;
  operator delete(v22);
}

void _ZN4geom19interpolating_curveIDv2_dE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(float64x2_t **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v73, v6);
  std::vector<double>::resize(&v70, v6);
  __asm { FMOV            V0.2D, #2.0 }

  *v73 = vmlaq_f64(vnegq_f64((*a1)[5]), _Q0, (*a1)[1]);
  v12 = v70;
  *v70 = 0;
  v13 = *a1;
  v14 = vsubq_f64((*a1)[5], (*a1)[1]);
  v12[1] = sqrt(sqrt(vaddvq_f64(vmulq_f64(v14, v14))));
  if (v4 == 1)
  {
    v17 = 0;
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v17 = (v4 - 1);
    do
    {
      *(v73 + v16 + 1) = v13[v15 / 0x10 + 1];
      v18 = (v70 + 8 * v16++);
      v13 = *a1;
      v19 = vsubq_f64((*a1)[v15 / 0x10 + 5], (*a1)[v15 / 0x10 + 1]);
      v18[2] = v18[1] + sqrt(sqrt(vaddvq_f64(vmulq_f64(v19, v19))));
      v15 += 64;
    }

    while ((v4 - 1) << 6 != v15);
  }

  *(v73 + v6 - 2) = v13[4 * v17 + 1];
  *(v73 + v6 - 1) = vmlaq_f64(vnegq_f64(*(v73 + v6 - 3)), _Q0, *(v73 + v6 - 2));
  v20 = &(*a1)[4 * (v4 - 2)];
  v21 = vsubq_f64(v20[5], v20[1]);
  *(v70 + v6 - 1) = *(v70 + v6 - 2) + sqrt(sqrt(vaddvq_f64(vmulq_f64(v21, v21))));
  if (v4 == 1)
  {
    v23 = 0;
    *(a2 + 8) = 0;
    *(a2 + 64) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      v23 = 0;
      *(a2 + 32) = 0;
    }
  }

  else
  {
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 64) = v5;
    if (*(a2 + 66) != 1)
    {
      std::vector<double>::resize((a2 + 24), v17 + 1);
    }

    v22 = 0;
    LOWORD(v23) = 0;
    __asm { FMOV            V1.2D, #3.0 }

    do
    {
      v25 = v22 + 2;
      v26 = v73;
      v27 = *(v70 + v22);
      v28 = *(v73 + v22);
      v29 = v22 + 1;
      v30 = *(v70 + (v22 + 1));
      v31 = *(v70 + (v22 + 2));
      v32 = *(v70 + (v22 + 3));
      v33 = v31 - v30;
      v34 = 1.0 / (v30 - v27);
      v35 = 1.0 / (v31 - v27);
      v36 = 1.0 / (v31 - v30);
      v37 = v32 - v30;
      v38 = 1.0 / (v32 - v30);
      v39 = v32 - v31;
      v40 = 1.0 / (v32 - v31);
      v41 = *(v73 + (v22 + 1));
      v42 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v27 - v30), 0));
      v43 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v41, v42), v28, v30 - v30), v34);
      v44 = *(v73 + (v22 + 2));
      v45 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v30 - v30), 0));
      v46 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v44, v45), v41, v31 - v30), v36);
      v47 = *(v73 + (v22 + 3));
      v48 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v47, vnegq_f64(vdupq_lane_s64(COERCE__INT64(v31 - v30), 0))), v44, v37), v40);
      v49 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v46, v42), v43, v31 - v30), v35);
      v50 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v48, v45), v46, v37), v38);
      v51 = vmulq_n_f64(vsubq_f64(v41, v28), v34);
      v52 = vmulq_n_f64(vsubq_f64(v44, v41), v36);
      v53 = vmulq_n_f64(vsubq_f64(v47, v44), v40);
      v54 = vmulq_n_f64(vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v50, v49), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v46, v43), v51, v31 - v30), v52, v27 - v30, 0), v35), v31 - v30), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v48, v46), v52, v37), v53, v30 - v30, 0), v38), v30 - v30, 0), v36), v31 - v30);
      v55 = v27 - v31;
      v56 = v30 - v31;
      v57 = v31 - v31;
      v58 = vnegq_f64(vdupq_lane_s64(*&v55, 0));
      v59 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v41, v58), v28, v56), v34);
      v60 = vnegq_f64(vdupq_lane_s64(*&v56, 0));
      v61 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v44, v60), v41, v57), v36);
      v62 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v47, vnegq_f64(vdupq_lane_s64(*&v57, 0))), v44, v39), v40);
      *(*a2 + 16 * v23) = v41;
      *(*a2 + 16 * (v23 + 1)) = vaddq_f64(v26[(v22 + 1)], vdivq_f64(v54, _Q1));
      v63 = v23 + 2;
      LOWORD(v23) = v23 + 3;
      *(*a2 + 16 * v63) = vsubq_f64(v26[v25], vdivq_f64(vmulq_n_f64(vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v62, v60), v61, v39), v38), vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v61, v58), v59, v57), v35)), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v61, v59), v51, v57), v52, v55, 0), v35), v57), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v62, v61), v52, v39), v53, v56, 0), v38), v56, 0), v36), v33), _Q1));
      v22 = v29;
    }

    while (v17 != v29);
    v23 = v23;
  }

  *(*a2 + 16 * v23) = (*a1)[4 * v17 + 1];
  v64 = a1[1];
  v68 = 0;
  v69 = 0;
  __p = 0;
  if (v64)
  {
    std::vector<double>::__vallocate[abi:nn200100](&__p, v64);
  }

  v65 = 0;
  v66 = 0;
  *(a2 + 66) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), 0, 0, 0);
    v65 = __p;
    v66 = v68;
  }

  *(a2 + 48) = *v65;
  *(a2 + 56) = *(v66 - 1);
  v68 = v65;
  operator delete(v65);
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  if (v73)
  {
    v74 = v73;
    operator delete(v73);
  }
}

void _ZN4geom19interpolating_curveIDv2_dE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(void *a1@<X1>, uint64_t a2@<X8>)
{
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  __p = 0;
  v50 = 0;
  v51 = 0;
  v4 = a1[1];
  memset(v48, 0, sizeof(v48));
  if (v4)
  {
    std::vector<double>::__vallocate[abi:nn200100](v48, v4);
  }

  v5 = v48[0];
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v58, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v55, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&v52, 0);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
  v6 = -1;
  *(v58 - 1) = 0u;
  *v58 = 0u;
  __asm { FMOV            V1.2D, #1.0 }

  *(__p - 1) = _Q1;
  *__p = _Q1;
  *(v55 - 1) = 0u;
  *v55 = 0u;
  *(v52 - 1) = 0u;
  *v52 = 0u;
  v12 = 0;
  v13 = 0;
  v14 = (v5 + 8);
  do
  {
    v15 = *v14;
    *&v16 = *v14 - *(v14 - 1);
    v17 = v14[1];
    ++v14;
    *&v18 = v17 - v15;
    v58[v13 + 1] = vdupq_lane_s64(v16, 0);
    *(__p + v13 + 1) = vdupq_lane_s64(COERCE__INT64(*&v16 + *&v18 + *&v16 + *&v18), 0);
    *(v55 + v13 + 1) = vdupq_lane_s64(v18, 0);
    *(v52 + ++v13) = vmlaq_n_f64(vmulq_f64(vsubq_f64(*(*a1 + v12 + 80), *(*a1 + v12 + 16)), vnegq_f64(vdupq_lane_s64(COERCE__INT64(3.0 / *&v16), 0))), vsubq_f64(*(*a1 + v12 + 144), *(*a1 + v12 + 80)), 3.0 / *&v18);
    v12 += 64;
  }

  while (v13 != -2);
  v19 = v50 - __p;
  v20 = ((v50 - __p) >> 4) - 1;
  *v55 = vdivq_f64(*v55, *__p);
  *v52 = vdivq_f64(*v52, *__p);
  if (v20 > 1)
  {
    v21 = v20 - 1;
    v22 = 16;
    do
    {
      *(v55 + v22) = vdivq_f64(*(v55 + v22), vmlsq_f64(*(__p + v22), *(v55 + v22 - 16), v58[v22 / 0x10]));
      *(v52 + v22) = vdivq_f64(vmlsq_f64(*(v52 + v22), *(v52 + v22 - 16), v58[v22 / 0x10]), vmlsq_f64(*(__p + v22), *(v55 + v22 - 16), v58[v22 / 0x10]));
      v22 += 16;
      --v21;
    }

    while (v21);
  }

  *(v52 + v20) = vdivq_f64(vmlsq_f64(*(v52 + v20), *(v52 + (((v19 << 28) - 0x200000000) >> 28)), v58[v20]), vmlsq_f64(*(__p + v20), *(v55 + (((v19 << 28) - 0x200000000) >> 28)), v58[v20]));
  if (v20 >= 1)
  {
    do
    {
      *(v52 + v20 - 1) = vmlsq_f64(*(v52 + v20 - 1), *(v52 + v20), *(v55 + v20 - 1));
    }

    while (v20-- > 1);
  }

  __asm { FMOV            V16.2D, #2.0 }

  v25 = 0;
  v26 = 0;
  v27 = (v5 + 8);
  do
  {
    v28 = *v27 - *(v27 - 1);
    *(v55 + v25) = vmlaq_n_f64(vmulq_f64(vmlaq_f64(*(v52 + v25 + 16), _Q16, *(v52 + v25)), vnegq_f64(vdupq_lane_s64(COERCE__INT64(v28 / 3.0), 0))), vsubq_f64(*(*a1 + v26 + 80), *(*a1 + v26 + 16)), 1.0 / v28);
    *(__p + v25) = vmulq_n_f64(vsubq_f64(*(v52 + v25 + 16), *(v52 + v25)), 1.0 / (v28 * 3.0));
    v26 += 64;
    v25 += 16;
    ++v27;
    --v6;
  }

  while (v6);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v29 = *(a1 + 4);
  v30 = v29 - 1;
  if (v29 == 1)
  {
    *(a2 + 64) = 0;
    v34 = 0;
    v33 = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v47 = _Q16;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v30 + 1));
    *(a2 + 64) = v30;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v30 + 1);
    }

    v31 = 0;
    v32 = 0;
    LOWORD(v33) = 0;
    v34 = v30;
    v35 = (v5 + 8);
    __asm { FMOV            V1.2D, #3.0 }

    v37 = v30;
    do
    {
      v38 = *(v35 - 1);
      v39 = (*a1 + v32);
      v40 = *v35 - v38;
      v41 = v39[1];
      v42 = *(v52 + v31);
      v43 = *(__p + v31);
      v44 = vmulq_n_f64(vmlaq_n_f64(*(v55 + v31), vmlaq_f64(vmulq_n_f64(v43, (v38 - v38) * 3.0), v47, v42), v38 - v38), v40);
      v45 = vmlaq_n_f64(*(v55 + v31), vmlaq_f64(vmulq_n_f64(v43, v40 * 3.0), v47, v42), v40);
      v46 = v39[5];
      *(*a2 + 16 * v33) = v41;
      *(*a2 + 16 * (v33 + 1)) = vaddq_f64(v41, vdivq_f64(v44, _Q1));
      LOWORD(v39) = v33 + 2;
      LOWORD(v33) = v33 + 3;
      *(*a2 + 16 * v39) = vsubq_f64(v46, vdivq_f64(vmulq_n_f64(v45, v40), _Q1));
      v32 += 64;
      ++v35;
      v31 += 16;
      --v37;
    }

    while (v37);
    v33 = v33;
  }

  *(*a2 + 16 * v33) = *(*a1 + (v34 << 6) + 16);
  *(a2 + 66) = 0;
  std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v5, 0, -v5 >> 3);
  *(a2 + 48) = *v5;
  *(a2 + 56) = MEMORY[0xFFFFFFFFFFFFFFF8];
  operator delete(v5);
  if (__p)
  {
    v50 = __p;
    operator delete(__p);
  }

  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }
}

void _ZN4geom19interpolating_curveIDv2_dE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
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
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v5 + 1));
    *(a2 + 64) = v5;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v5 + 1);
    }
  }

  v24 = 0;
  v25 = 0;
  v26 = 0;
  std::vector<double>::resize(&v24, v5 + 1);
  v6 = *a1;
  *v24 = *(*a1 + 8);
  if (v5)
  {
    v7 = 0;
    LOWORD(v8) = 0;
    v9 = 8;
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v15 = (*a1 + v7);
      v16 = v15[4].f64[1];
      v17 = &v24[v9];
      *v17 = v16;
      v18 = v16 - *(v17 - 1);
      v19 = vmulq_n_f64(v15[3], v18);
      v20 = vmulq_n_f64(v15[6], v18);
      v21 = v15[1];
      *(*a2 + 16 * v8) = v21;
      *(*a2 + 16 * (v8 + 1)) = vaddq_f64(vdivq_f64(v19, _Q0), v21);
      LOWORD(v17) = v8 + 2;
      LOWORD(v8) = v8 + 3;
      *(*a2 + 16 * v17) = vsubq_f64(v15[5], vdivq_f64(v20, _Q0));
      v7 += 64;
      v9 += 8;
    }

    while (v5 << 6 != v7);
    v6 = *a1;
    v8 = v8;
  }

  else
  {
    v8 = 0;
  }

  *(*a2 + 16 * v8) = *(v6 + (*(a1 + 1) << 6) - 48);
  *(a2 + 66) = 0;
  if ((a2 + 24) != &v24)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v24, v25, (v25 - v24) >> 3);
  }

  v22 = v24;
  v23 = v25;
  *(a2 + 48) = *v24;
  *(a2 + 56) = *(v23 - 1);
  v25 = v22;
  operator delete(v22);
}

double _ZNK4geom20interpolating_splineIDv2_dE21evaluate_total_lengthEv(uint64_t a1)
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

  return _ZNK4geom20interpolating_splineIDv2_dE18evaluate_length_atEd(a1, v2);
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_dEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = _ZNSt3__16vectorIN4geom20interpolating_splineIDv2_dEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(a1, a2);
  }

  else
  {
    result = _ZN4geom20interpolating_splineIDv2_dEC2ERKS2_(v3, a2) + 96;
  }

  a1[1] = result;
  return result;
}

void _ZN4geom19interpolating_curveIDv3_dE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  _ZN4geom19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 0);
}

void _ZN4geom19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(uint64_t a1, void *a2, char a3)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  v11 = v6;
  if (v8 != v10)
  {
    do
    {
      v8 = geom::interpolating_spline<double>::~interpolating_spline(v8 - 96);
    }

    while (v8 != v10);
    v11 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<double>>::reserve(v9, v11 - 1);
  *(a1 + 208) = 0;
  if (v6 < 2u)
  {
    v12 = 0;
    v15 = -1;
  }

  else
  {
    LOWORD(v12) = 0;
    v13 = 1;
    v14 = -1;
    do
    {
      if (*(*a2 + 112 * v13) != *(*a2 + 112 * v12))
      {
        v14 = v13 - 1;
        *&v106 = *a2 + 112 * v12;
        *(&v106 + 1) = (v13 - 1) - v12 + 1;
        _ZN4geom19interpolating_curveIDv3_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v106);
        LOWORD(v12) = v13;
      }

      ++v13;
    }

    while (v6 > v13);
    v15 = v14;
    v12 = v12;
  }

  if (v6 - 1 != v15)
  {
    *&v106 = *a2 + 112 * v12;
    *(&v106 + 1) = v6 - v12;
    _ZN4geom19interpolating_curveIDv3_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v106);
  }

  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5));
  if (v16 == v17)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v18 = 0;
    v19 = *v9;
    v20 = *(a1 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5);
    }

    v22 = (v19 + 64);
    v23 = v21;
    do
    {
      v24 = *v22;
      v22 += 48;
      *v20++ = v18;
      v18 += v24;
      --v23;
    }

    while (v23);
    std::vector<unsigned short>::resize(a1, v18);
    v25 = 0;
    v26 = 0;
    v27 = *(a1 + 72);
    do
    {
      v28 = *(v27 + 96 * v25 + 64);
      if (*(v27 + 96 * v25 + 64))
      {
        v29 = *a1;
        do
        {
          v30 = (v26 + 1);
          *(v29 + 2 * v26) = v25;
          LODWORD(v26) = v26 + 1;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = v26;
      }

      ++v25;
      v26 = v30;
    }

    while (v25 != v21);
  }

  v31 = *a2;
  *(a1 + 192) = *(*a2 + 8);
  v32 = a2[1];
  *(a1 + 200) = *(v32 - 104);
  if (a3)
  {
    LOWORD(v116[0]) = 512;
    v33 = v32 - v31;
    v116[1] = 0.001;
    v117 = 1;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v34 = *(a1 + 96);
    v104 = (a1 + 96);
    v105 = a1;
    *(a1 + 104) = v34;
    *(a1 + 160) = 0;
    v35 = *(a1 + 120);
    v103 = (a1 + 120);
    *(a1 + 162) = 0;
    *(a1 + 128) = v35;
    if (v32 == v31)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if ((0x6DB6DB6DB6DB6DB7 * (v33 >> 4)) >= 2)
    {
      v37 = 1;
      while (1)
      {
        v38 = v31 + 112 * v37;
        if (*v38 != *(v31 + 112 * (v37 - 1)))
        {
          goto LABEL_96;
        }

        v39 = *(v38 + 8);
        LOBYTE(v116[0]) = *v38 != 0;
        v111 = 0;
        v40 = v105;
        v112 = 0;
        *(&v106 + 1) = v106;
        *&v108 = *(&v107 + 1);
        v41 = (v39 + v36 * 2.0) * 0.333333333;
        v42 = (v36 + v39 * 2.0) * 0.333333333;
        if (*(v105 + 208))
        {
          v43 = v36;
LABEL_70:
          v68 = v39;
          goto LABEL_71;
        }

        v44 = *(v105 + 72);
        v45 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v44) >> 5);
        if ((v45 & 0xFFFE) == 0 || *(v105 + 192) >= v36)
        {
          break;
        }

        LOWORD(v45) = v45 - 1;
        if (*(v105 + 200) > v36)
        {
          for (i = 0; ; i = v47 + 1)
          {
            while (1)
            {
              v47 = (i + v45) >> 1;
              v48 = v44 + 96 * v47;
              if (*(v48 + 48) <= v36)
              {
                break;
              }

              LOWORD(v45) = v47 - 1;
            }

            if (*(v48 + 56) > v36)
            {
              break;
            }
          }

          LODWORD(v45) = (i + v45) >> 1;
        }

        v88 = v45;
        v89 = v45;
        v49 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v44 + 96 * v45, v36);
        if (!v89)
        {
          goto LABEL_46;
        }

        v50 = *(*(v40 + 48) + 8 * (v88 - 1));
LABEL_47:
        v43 = v49 + v50;
        v51 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v52 = *(v105 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) == 0 || *(v105 + 192) >= v41)
        {
          v57 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v52, (v39 + v36 * 2.0) * 0.333333333);
LABEL_57:
          v58 = 0.0;
          goto LABEL_58;
        }

        LOWORD(v53) = v53 - 1;
        if (*(v105 + 200) > v41)
        {
          for (j = 0; ; j = v55 + 1)
          {
            while (1)
            {
              v55 = (j + v53) >> 1;
              v56 = v52 + 96 * v55;
              if (*(v56 + 48) <= v41)
              {
                break;
              }

              LOWORD(v53) = v55 - 1;
            }

            if (*(v56 + 56) > v41)
            {
              break;
            }
          }

          LODWORD(v53) = (j + v53) >> 1;
        }

        v97 = v53;
        v98 = v53;
        v57 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v52 + 96 * v53, (v39 + v36 * 2.0) * 0.333333333);
        if (!v98)
        {
          goto LABEL_57;
        }

        v58 = *(*(v51 + 48) + 8 * (v97 - 1));
LABEL_58:
        v41 = v57 + v58;
        v59 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v60 = *(v105 + 72);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v60) >> 5);
        if ((v61 & 0xFFFE) == 0 || *(v105 + 192) >= v42)
        {
          v65 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v60, v42);
LABEL_68:
          v66 = 0.0;
          goto LABEL_69;
        }

        LOWORD(v61) = v61 - 1;
        if (*(v105 + 200) > v42)
        {
          for (k = 0; ; k = v63 + 1)
          {
            while (1)
            {
              v63 = (k + v61) >> 1;
              v64 = v60 + 96 * v63;
              if (*(v64 + 48) <= v42)
              {
                break;
              }

              LOWORD(v61) = v63 - 1;
            }

            if (*(v64 + 56) > v42)
            {
              break;
            }
          }

          LODWORD(v61) = (k + v61) >> 1;
        }

        v99 = v61;
        v100 = v61;
        v65 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v60 + 96 * v61, v42);
        if (!v100)
        {
          goto LABEL_68;
        }

        v66 = *(*(v59 + 48) + 8 * (v99 - 1));
LABEL_69:
        v42 = v65 + v66;
        v67 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v90 = *(v105 + 72);
        v91 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v90) >> 5);
        if ((v91 & 0xFFFE) != 0 && *(v105 + 192) < v39)
        {
          LOWORD(v91) = v91 - 1;
          if (*(v105 + 200) > v39)
          {
            for (m = 0; ; m = v93 + 1)
            {
              while (1)
              {
                v93 = (m + v91) >> 1;
                v94 = v90 + 96 * v93;
                if (*(v94 + 48) <= v39)
                {
                  break;
                }

                LOWORD(v91) = v93 - 1;
              }

              if (*(v94 + 56) > v39)
              {
                break;
              }
            }

            LODWORD(v91) = (m + v91) >> 1;
          }

          v101 = v91;
          v102 = v91;
          v95 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v90 + 96 * v91, v39);
          if (v102)
          {
            v96 = *(*(v67 + 48) + 8 * (v101 - 1));
            goto LABEL_111;
          }
        }

        else
        {
          v95 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v90, v39);
        }

        v96 = 0.0;
LABEL_111:
        v68 = v95 + v96;
LABEL_71:
        *v118 = v36;
        *&v118[1] = v39;
        *&v118[2] = v43;
        *&v118[3] = v41;
        *&v118[4] = v42;
        *&v118[5] = v68;
        v119 = 0;
        _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(&v105, v118, v116, &v106);
        v69 = v111;
        v70 = *(a1 + 104);
        v71 = *(a1 + 96);
        v72 = *(a1 + 160);
        if (v72)
        {
          v73 = v72 + 1;
        }

        else
        {
          v73 = 0;
        }

        v74 = v72 + v111;
        if (v72 + v111)
        {
          std::vector<double>::resize(v104, (3 * v74 + 1));
          *(a1 + 160) = v74;
          if ((*(a1 + 162) & 1) == 0)
          {
            std::vector<double>::resize(v103, v74 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v71;
          *(a1 + 160) = 0;
          if ((*(a1 + 162) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v69)
        {
          v75 = ((v70 - v71) >> 3);
          v76 = v73;
          v77 = v112;
          v78 = v111;
          v79 = v111;
          v80 = *(&v107 + 1);
          v81 = v106;
          v82 = *v103;
          v83 = *v104;
          v84 = 3;
          v85 = 1;
          while (1)
          {
            if (v75)
            {
              if (v77)
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v77)
              {
                if (v78)
                {
                  v87 = v109 + (v110 - v109) / v79 * 0.0;
                }

                else
                {
                  v87 = v110;
                }
              }

              else
              {
                v87 = *v80;
              }

              *v82 = v87;
              *v83 = *v81;
              ++v76;
              v75 = 1;
              if (v77)
              {
LABEL_83:
                if (v78 == v85)
                {
                  v86 = v110;
                }

                else
                {
                  v86 = v109 + v85 * ((v110 - v109) / v79);
                }

                goto LABEL_93;
              }
            }

            v86 = v80[v85];
LABEL_93:
            v82[v76] = v86;
            v83[v75] = v81[(v84 - 2)];
            v83[(v75 + 1)] = v81[(v84 - 1)];
            v83[(v75 + 2)] = v81[v84];
            ++v76;
            v75 += 3;
            ++v85;
            v84 += 3;
            if (!--v69)
            {
              v36 = v39;
              goto LABEL_96;
            }
          }
        }

        v36 = v39;
LABEL_96:
        v37 = (v37 + 1);
        v31 = *a2;
        v33 = a2[1] - *a2;
        if (0x6DB6DB6DB6DB6DB7 * (v33 >> 4) <= v37)
        {
          goto LABEL_121;
        }
      }

      v49 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v44, v36);
LABEL_46:
      v50 = 0.0;
      goto LABEL_47;
    }

LABEL_121:
    *(a1 + 208) = 1;
    *(a1 + 192) = *(v31 + 8);
    *(a1 + 200) = *(v31 + v33 - 104);
    geom::interpolating_spline<double>::~interpolating_spline(&v106);
  }
}

void _ZN4geom19interpolating_curveIDv3_dE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  _ZN4geom19interpolating_curveIDv3_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 1);
}

double _ZNK4geom19interpolating_curveIDv3_dE11evaluate_atEd@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 208) == 1)
  {
    v20 = 0;
    v21 = 0.0;
    v22 = 0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v20, a3);
    v5 = (*(a1 + 96) + 8 * (3 * v20));
    a3 = v5[1] * (v21 * ((1.0 - v21) * (1.0 - v21) * 3.0)) + *v5 * ((1.0 - v21) * ((1.0 - v21) * (1.0 - v21))) + v5[2] * (v21 * v21 * ((1.0 - v21) * 3.0)) + v5[3] * (v21 * (v21 * v21));
  }

  v6 = *(a1 + 72);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v6) >> 5);
  if ((v7 & 0xFFFE) != 0 && *(a1 + 192) < a3)
  {
    LOWORD(v7) = v7 - 1;
    if (*(a1 + 200) > a3)
    {
      for (i = 0; ; i = v9 + 1)
      {
        while (1)
        {
          v9 = (i + v7) >> 1;
          v10 = v6 + 96 * v9;
          if (*(v10 + 48) <= a3)
          {
            break;
          }

          LOWORD(v7) = v9 - 1;
        }

        if (*(v10 + 56) > a3)
        {
          break;
        }
      }

      LODWORD(v7) = (i + v7) >> 1;
    }
  }

  else
  {
    LOWORD(v7) = 0;
  }

  v11 = (v6 + 96 * v7);
  v20 = 0;
  v21 = 0.0;
  v22 = 0;
  geom::interpolating_spline<double>::find_span(v11, &v20, a3);
  v12 = v21;
  v13 = (*v11 + 32 * (3 * v20));
  v14 = 1.0 - v21;
  v15 = v14 * (v14 * v14);
  v16 = v21 * (v14 * v14 * 3.0);
  v17 = v12 * v12 * ((1.0 - v21) * 3.0);
  result = v12 * (v12 * v12);
  v19 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v13[3], v16), v13[1], v15), v13[5], v17), v13[7], result);
  *a2 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v13[2], v16), *v13, v15), v13[4], v17), v13[6], result);
  a2[1] = v19;
  return result;
}

uint64_t _ZNK4geom19interpolating_curveIDv3_dE19evaluate_tangent_atEd@<X0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 208) == 1)
  {
    v42 = 0;
    v43 = 0.0;
    v44 = 0.0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v42, a3);
    v5 = (*(a1 + 96) + 8 * (3 * v42));
    v6 = v5[1] * (v43 * ((1.0 - v43) * (1.0 - v43) * 3.0)) + *v5 * ((1.0 - v43) * ((1.0 - v43) * (1.0 - v43))) + v5[2] * (v43 * v43 * ((1.0 - v43) * 3.0)) + v5[3] * (v43 * (v43 * v43));
    v7 = *(a1 + 72);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v7) >> 5);
    if ((v8 & 0xFFFE) != 0 && *(a1 + 192) < v6)
    {
      LOWORD(v8) = v8 - 1;
      if (*(a1 + 200) > v6)
      {
        for (i = 0; ; i = v10 + 1)
        {
          while (1)
          {
            v10 = (i + v8) >> 1;
            v11 = v7 + 96 * v10;
            if (*(v11 + 48) <= v6)
            {
              break;
            }

            LOWORD(v8) = v10 - 1;
          }

          if (*(v11 + 56) > v6)
          {
            break;
          }
        }

        LODWORD(v8) = (i + v8) >> 1;
      }
    }

    else
    {
      LOWORD(v8) = 0;
    }

    v17 = (v7 + 96 * v8);
    v42 = 0;
    v43 = 0.0;
    v44 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v17, &v42, v6);
    v19.f64[0] = v44 * 3.0;
    v20 = *v17 + 32 * (3 * v42);
    v22 = *(v20 + 32);
    v21 = *(v20 + 48);
    v23 = vsubq_f64(v22, *v20);
    v24 = vsubq_f64(v21, *(v20 + 16));
    v25 = *(v20 + 64);
    v26 = *(v20 + 80);
    v27 = vsubq_f64(v26, v21);
    v28 = vsubq_f64(v25, v22);
    v29 = *(v20 + 96);
    v30 = *(v20 + 112);
    v31 = vsubq_f64(v30, v26);
    v32 = vsubq_f64(v29, v25);
    v29.f64[0] = 1.0 - v43;
    v30.f64[0] = v29.f64[0] * v29.f64[0];
    v29.f64[0] = v43 * (v29.f64[0] + v29.f64[0]);
    v33.f64[0] = v43 * v43;
    v34 = vmulq_f64(v19, vmlaq_f64(vmlaq_f64(vmulq_f64(v29, v27), v30, v24), v33, v31));
    v35 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v28, v29.f64[0]), v23, v30.f64[0]), v32, v43 * v43), v44 * 3.0);
    v36 = vmulq_f64(v34, v34);
    *v36.f64 = sqrt(v36.f64[0] + vaddvq_f64(vmulq_f64(v35, v35)));
    if (*v36.f64 > 0.0)
    {
      v36.f64[0] = 1.0 / *v36.f64;
      v34 = vmulq_f64(v34, v36);
      *&v35.f64[1] = vextq_s8(v35, v35, 8uLL).u64[0];
      v35 = vmulq_n_f64(v35, v36.f64[0]);
    }
  }

  else
  {
    v12 = *(a1 + 72);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v12) >> 5);
    if ((v13 & 0xFFFE) != 0 && *(a1 + 192) < a3)
    {
      LOWORD(v13) = v13 - 1;
      if (*(a1 + 200) > a3)
      {
        for (j = 0; ; j = v15 + 1)
        {
          while (1)
          {
            v15 = (j + v13) >> 1;
            v16 = v12 + 96 * v15;
            if (*(v16 + 48) <= a3)
            {
              break;
            }

            LOWORD(v13) = v15 - 1;
          }

          if (*(v16 + 56) > a3)
          {
            break;
          }
        }

        LODWORD(v13) = (j + v13) >> 1;
      }
    }

    else
    {
      LOWORD(v13) = 0;
    }

    v37 = (v12 + 96 * v13);
    v42 = 0;
    v43 = 0.0;
    v44 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v37, &v42, a3);
    v38 = (*v37 + 32 * (3 * v42));
    v39 = 1.0 - v43;
    v40 = v39 * v39;
    v41 = v43 * (v39 + v39);
    v34 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v38[5], v38[3]), v41), vsubq_f64(v38[3], v38[1]), v40), vsubq_f64(v38[7], v38[5]), v43 * v43), v44 * 3.0);
    v35 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v38[4], v38[2]), v41), vsubq_f64(v38[2], *v38), v40), vsubq_f64(v38[6], v38[4]), v43 * v43), v44 * 3.0);
  }

  *a2 = v35;
  a2[1] = v34;
  return result;
}

double _ZNK4geom19interpolating_curveIDv3_dE18evaluate_length_atEd(uint64_t a1, double result)
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
      v9 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v3 + 96 * v5, result);
      if (v12)
      {
        v10 = *(*(a1 + 48) + 8 * (v11 - 1));
        return v9 + v10;
      }
    }

    else
    {
      v9 = _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v3, result);
    }

    v10 = 0.0;
    return v9 + v10;
  }

  return result;
}

double _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(uint64_t a1, double a2)
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
        v6 = v6 + _ZNK4geom20interpolating_splineIDv3_dE20evaluate_span_lengthEj(a1, v7++);
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

  return v6 + _ZNK4geom20interpolating_splineIDv3_dE24evaluate_length_betweeenEdd(a1, v9, a2);
}

void _ZNK4geom19interpolating_curveIDv3_dE10span_knotsEtRdS3_(uint64_t a1, unsigned int a2, double *a3, double *a4, double a5, double a6, double a7)
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

    *a3 = v11 + _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(v18, v21);
    v16 = v11 + _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(*(a1 + 72) + 96 * v9, v22);
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

uint64_t _ZNK4geom19interpolating_curveIDv3_dE33calculate_monomial_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
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
  v33 = vsubq_f64(vmlaq_f64(v30[7], _Q2, vsubq_f64(v31[1], v32[1])), v30[1]);
  v34 = vsubq_f64(vmlaq_f64(v30[6], _Q2, vsubq_f64(*v31, *v32)), *v30);
  *(a3 + 96) = v34;
  *(a3 + 112) = v33;
  if (sqrt(vmulq_f64(v28, v28).f64[0] + vaddvq_f64(vmulq_f64(v27, v27))) <= 0.000001 && (*&v34.f64[1] = vextq_s8(v34, v34, 8uLL).u64[0], sqrt(vmulq_f64(v33, v33).f64[0] + vaddvq_f64(vmulq_f64(v34, v34))) <= 0.000001))
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

uint64_t _ZNK4geom19interpolating_curveIDv3_dE31calculate_bezier_basis_for_spanEtPS1_(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a1[9] + 96 * *(*a1 + 2 * a2)) + 32 * (3 * (a2 - *(a1[3] + 2 * *(*a1 + 2 * a2))));
  v5 = *v4;
  v6 = *(v4 + 16);
  v8 = *(v4 + 32);
  v7 = *(v4 + 48);
  __asm { FMOV            V16.2D, #3.0 }

  v14 = vmulq_f64(vsubq_f64(v7, v6), _Q16);
  v15 = vmulq_f64(vsubq_f64(v8, *v4), _Q16);
  __asm { FMOV            V4.2D, #-2.0 }

  v18 = *(v4 + 64);
  v17 = *(v4 + 80);
  v19 = vaddq_f64(vmlaq_f64(*v4, _Q4, v8), v18);
  v20 = vmulq_f64(vaddq_f64(vmlaq_f64(v6, _Q4, v7), v17), _Q16);
  v21 = vmulq_f64(v19, _Q16);
  v22 = vmlaq_f64(*(v4 + 96), _Q16, vsubq_f64(v8, v18));
  v23 = vsubq_f64(vmlaq_f64(*(v4 + 112), _Q16, vsubq_f64(v7, v17)), v6);
  v24 = vsubq_f64(v22, *v4);
  if (sqrt(vmulq_f64(v20, v20).f64[0] + vaddvq_f64(vmulq_f64(v21, v21))) <= 0.000001 && (v25.f64[0] = v24.f64[0], *&v25.f64[1] = vextq_s8(v24, v24, 8uLL).u64[0], sqrt(vmulq_f64(v23, v23).f64[0] + vaddvq_f64(vmulq_f64(v25, v25))) <= 0.000001))
  {
    *a3 = v5;
    *(a3 + 16) = v6;
    *(a3 + 32) = vaddq_f64(v5, v15);
    *(a3 + 48) = vaddq_f64(v6, v14);
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    return 2;
  }

  else
  {
    v26.f64[0] = v15.f64[0];
    *&v26.f64[1] = vextq_s8(v15, v15, 8uLL).u64[0];
    v27.f64[0] = *v4;
    *&v27.f64[1] = vextq_s8(v5, v5, 8uLL).u64[0];
    v28 = vdupq_n_s64(0x3FD5555555555555uLL);
    v29 = vmlaq_f64(v27, v28, v26);
    v3.f64[0] = 0.333333333;
    *(a3 + 32) = v29;
    *(a3 + 48) = vmlaq_f64(v6, v3, v14);
    v29.f64[0] = 0.666666667;
    *a3 = v5;
    *(a3 + 16) = v6;
    v30 = vmlaq_f64(v27, vdupq_n_s64(0x3FE5555555555555uLL), v26);
    v26.f64[0] = v21.f64[0];
    *&v26.f64[1] = vextq_s8(v21, v21, 8uLL).u64[0];
    *(a3 + 64) = vmlaq_f64(v30, v28, v26);
    *(a3 + 80) = vmlaq_f64(vmlaq_f64(v6, v29, v14), v3, v20);
    *(a3 + 96) = vaddq_f64(vaddq_f64(vaddq_f64(v5, v15), v21), v24);
    *(a3 + 112) = vaddq_f64(vaddq_f64(vaddq_f64(v6, v14), v20), v23);
    return 4;
  }
}

uint64_t _ZN4geom19interpolating_curveIDv3_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(uint64_t a1, int **a2)
{
  memset(v72, 0, 24);
  memset(v70, 0, 48);
  v4 = **a2;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      _ZN4geom19interpolating_curveIDv3_dE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, &v60);
    }

    else
    {
      if (v4 != 3)
      {
        goto LABEL_19;
      }

      _ZN4geom19interpolating_curveIDv3_dE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a2, &v60);
    }
  }

  else
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_19;
      }

      v5 = *(a2 + 4);
      v6 = v5 - 1;
      v68 = 0;
      v69 = 0;
      v67 = 0;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v60, (3 * v5 - 2));
      v65 = v6;
      if ((v66 & 1) == 0)
      {
        std::vector<double>::resize(&v61 + 1, v6 + 1);
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
      std::vector<double>::resize(&v73, v6 + 1);
      v7 = 0;
      v8 = 0;
      v9 = v73;
      *v73 = *(*a2 + 1);
      v10 = 8;
      __asm { FMOV            V0.2D, #3.0 }

      do
      {
        v16 = &(*a2)[v7];
        v17 = v16[7].f64[1];
        *&v9[v10] = v17;
        v18 = v17 - *&v9[v10 - 8];
        v20 = v16[5];
        v19 = v16[6];
        v22 = v16[10];
        v21 = v16[11];
        v23 = v16[2];
        v24 = (v60 + 32 * v8);
        v25 = v8 + 2;
        *v24 = v16[1];
        v24[1] = v23;
        v26 = (v60 + 32 * (v8 + 1));
        v27 = vaddq_f64(vdivq_f64(vmulq_n_f64(v19, v18), _Q0), v16[2]);
        *v26 = vaddq_f64(vdivq_f64(vmulq_n_f64(v20, v18), _Q0), v16[1]);
        v26[1] = v27;
        v8 += 3;
        v29 = v16[8];
        v28 = v16[9];
        v30 = (v60 + 32 * v25);
        *v30 = vsubq_f64(v29, vdivq_f64(vmulq_n_f64(v22, v18), _Q0));
        v30[1] = vsubq_f64(v28, vdivq_f64(vmulq_n_f64(v21, v18), _Q0));
        v7 += 28;
        v10 += 8;
      }

      while (28 * v6 != v7);
    }

    else
    {
      v31 = *(a2 + 4);
      v32 = v31 - 1;
      v68 = 0;
      v69 = 0;
      v67 = 0;
      v60 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v60, (3 * v31 - 2));
      v65 = v32;
      if ((v66 & 1) == 0)
      {
        std::vector<double>::resize(&v61 + 1, v32 + 1);
      }

      v73 = 0;
      v74 = 0;
      v75 = 0;
      std::vector<double>::resize(&v73, v32 + 1);
      v34 = 0;
      v8 = 0;
      v9 = v73;
      v35 = v73;
      *v73 = *(*a2 + 1);
      v36 = (v35 + 8);
      __asm { FMOV            V0.2D, #3.0 }

      do
      {
        v38 = &(*a2)[v34];
        v33.f64[0] = v38[7].f64[1];
        *v36 = v33.f64[0];
        v33.f64[0] = v33.f64[0] - *(v36 - 1);
        v39 = v38[1];
        v40 = v38[2];
        v41 = vmulq_n_f64(vsubq_f64(v38[8], v39), v33.f64[0]);
        v42 = vmulq_f64(v33, vsubq_f64(v38[9], v40));
        v43 = (v60 + 32 * v8);
        *v43 = v39;
        v43[1] = v40;
        LOWORD(v43) = v8 + 2;
        v44 = vdivq_f64(v42, _Q0);
        v45 = vdivq_f64(v41, _Q0);
        v46 = vaddq_f64(v38[2], v44);
        v47 = (v60 + 32 * (v8 + 1));
        *v47 = vaddq_f64(v38[1], v45);
        v47[1] = v46;
        v8 += 3;
        v48 = vsubq_f64(v38[8], v45);
        v33 = vsubq_f64(v38[9], v44);
        v49 = (v60 + 32 * v43);
        *v49 = v48;
        v49[1] = v33;
        v34 += 28;
        ++v36;
      }

      while (28 * v32 != v34);
    }

    v50 = &(*a2)[28 * a2[1]];
    v51 = *(v50 - 80);
    v52 = (v60 + 32 * v8);
    *v52 = *(v50 - 96);
    v52[1] = v51;
    v66 = 0;
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>(&v61 + 1, v9, v74, (v74 - v9) >> 3);
    v63 = *v73;
    v64 = *(v74 - 1);
    v74 = v73;
    operator delete(v73);
  }

  geom::interpolating_spline<double>::operator=(v70, &v60);
  geom::interpolating_spline<double>::~interpolating_spline(&v60);
LABEL_19:
  v53 = v71;
  std::vector<double>::resize(v72, v71);
  if (v53)
  {
    v54 = 0;
    v55 = 0.0;
    do
    {
      v55 = v55 + _ZNK4geom20interpolating_splineIDv3_dE20evaluate_span_lengthEj(v70, v54);
      *(v72[0] + 8 * v54++) = v55;
    }

    while (v53 != v54);
  }

  v56 = _ZNK4geom20interpolating_splineIDv3_dE21evaluate_total_lengthEv(v70);
  v57 = *(a1 + 80) - *(a1 + 72);
  if (v57)
  {
    v58 = *(*(a1 + 48) - 0x5555555555555555 * (v57 >> 2) - 8);
  }

  else
  {
    v58 = 0.0;
  }

  *&v60 = v56 + v58;
  std::vector<double>::push_back[abi:nn200100]((a1 + 48), &v60);
  _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_dEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_((a1 + 72), v70);
  return geom::interpolating_spline<double>::~interpolating_spline(v70);
}

void _ZN4geom19interpolating_curveIDv3_dE19build_linear_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
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
  v33 = 0;
  v34 = 0;
  std::vector<double>::resize(&__p, v5 + 1);
  v7 = *a1;
  v8 = __p;
  *__p = *(*a1 + 8);
  if (v5)
  {
    v9 = 0;
    LOWORD(v10) = 0;
    v11 = (v8 + 8);
    __asm { FMOV            V0.2D, #3.0 }

    do
    {
      v17 = (*a1 + v9);
      v6.f64[0] = v17[7].f64[1];
      *v11 = v6.f64[0];
      v6.f64[0] = v6.f64[0] - *(v11 - 1);
      v18 = v17[1];
      v19 = v17[2];
      v20 = vmulq_n_f64(vsubq_f64(v17[8], v18), v6.f64[0]);
      v21 = vmulq_f64(v6, vsubq_f64(v17[9], v19));
      v22 = (*a2 + 32 * v10);
      *v22 = v18;
      v22[1] = v19;
      LOWORD(v22) = v10 + 2;
      v23 = vdivq_f64(v21, _Q0);
      v24 = vdivq_f64(v20, _Q0);
      v25 = vaddq_f64(v17[2], v23);
      v26 = *a2 + 32 * (v10 + 1);
      *v26 = vaddq_f64(v17[1], v24);
      *(v26 + 16) = v25;
      LOWORD(v10) = v10 + 3;
      v27 = vsubq_f64(v17[8], v24);
      v6 = vsubq_f64(v17[9], v23);
      v28 = (*a2 + 32 * v22);
      *v28 = v27;
      v28[1] = v6;
      v9 += 112;
      ++v11;
    }

    while (112 * v5 != v9);
    v7 = *a1;
    v10 = v10;
  }

  else
  {
    v10 = 0;
  }

  v29 = v7 + 112 * *(a1 + 1);
  v30 = *(v29 - 80);
  v31 = (*a2 + 32 * v10);
  *v31 = *(v29 - 96);
  v31[1] = v30;
  *(a2 + 66) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v8, v33, (v33 - v8) >> 3);
    v8 = __p;
  }

  *(a2 + 48) = *v8;
  *(a2 + 56) = *(v33 - 1);
  v33 = v8;
  operator delete(v8);
}

void _ZN4geom19interpolating_curveIDv3_dE24build_catmull_rom_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(float64x2_t **a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v134 = 0;
  v135 = 0;
  v136 = 0;
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v4 = a1[1];
  v5 = v4 - 1;
  v6 = (v4 + 2);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v134, v6);
  std::vector<double>::resize(&v131, v6);
  v7 = v134;
  __asm { FMOV            V0.2D, #2.0 }

  v13 = vmlaq_f64(vnegq_f64((*a1)[9]), _Q0, (*a1)[2]);
  *v134 = vmlaq_f64(vnegq_f64((*a1)[8]), _Q0, (*a1)[1]);
  *(v7 + 1) = v13;
  v14 = v131;
  *v131 = 0;
  v15 = *a1;
  v16 = vsubq_f64((*a1)[8], (*a1)[1]);
  v17 = vsubq_f64((*a1)[9], (*a1)[2]);
  v14[1] = sqrt(sqrt(vmulq_f64(v17, v17).f64[0] + vaddvq_f64(vmulq_f64(v16, v16))));
  if (v4 == 1)
  {
    v20 = 0;
  }

  else
  {
    v18 = 0;
    v19 = v14 + 2;
    v20 = (v4 - 1);
    v21 = v7 + 32;
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
      *v19 = *(v19 - 1) + sqrt(sqrt(vmulq_f64(v26, v26).f64[0] + vaddvq_f64(vmulq_f64(v25, v25))));
      ++v19;
      v18 += 7;
    }

    while (7 * (v4 - 1) != v18);
  }

  v27 = &v15[7 * v20];
  v28 = v27[1];
  v29 = v27[2];
  v30 = &v7[32 * v6 - 64];
  *v30 = v28;
  v30[1] = v29;
  v31 = &v7[32 * v6];
  v32 = v31[-5];
  v33 = &v7[32 * v6 - 32];
  *v33 = vmlaq_f64(vnegq_f64(v31[-6]), _Q0, v28);
  v33[1] = vmlaq_f64(vnegq_f64(v32), _Q0, v29);
  v34 = &(*a1)[7 * (v4 - 2)];
  v35 = vsubq_f64(v34[8], v34[1]);
  v36 = vsubq_f64(v34[9], v34[2]);
  v14[v6 - 1] = v14[v6 - 2] + sqrt(sqrt(vmulq_f64(v36, v36).f64[0] + vaddvq_f64(vmulq_f64(v35, v35))));
  if (v4 == 1)
  {
    v48 = 0;
    *(a2 + 8) = 0;
    *(a2 + 64) = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      v48 = 0;
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

    v47 = 0;
    LOWORD(v48) = 0;
    v49 = v131;
    v50 = v134;
    __asm { FMOV            V0.2D, #3.0 }

    v126 = _Q0;
    do
    {
      v52 = (v47 + 2);
      v41.f64[0] = v49[v47];
      v53 = (v47 + 3);
      v54 = &v50[32 * v47];
      v55 = v47 + 1;
      v43.f64[0] = v49[(v47 + 1)];
      v56 = v49[v52];
      v57 = &v50[32 * (v47 + 1)];
      v58 = &v50[32 * v52];
      v59 = v49[v53];
      v38.f64[0] = v56 - v43.f64[0];
      v42.f64[0] = 1.0 / (v43.f64[0] - v41.f64[0]);
      v37.f64[0] = 1.0 / (v56 - v43.f64[0]);
      v44.f64[0] = v59 - v43.f64[0];
      v39.f64[0] = v59 - v56;
      v40.f64[0] = 1.0 / (v59 - v56);
      v46.f64[0] = v41.f64[0] - v43.f64[0];
      v45.f64[0] = v43.f64[0] - v43.f64[0];
      v60 = &v50[32 * v53];
      v61 = v54[1];
      v62 = v57[1];
      v63 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v41.f64[0] - v43.f64[0]), 0));
      v64 = vnegq_f64(v46);
      v65 = vmulq_f64(v42, vmlaq_f64(vmulq_f64(v62, v64), v61, v45));
      v66 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v57, v63), *v54, v43.f64[0] - v43.f64[0]), v42.f64[0]);
      v67 = vdupq_lane_s64(COERCE__INT64(v56 - v43.f64[0]), 0);
      v68 = v58[1];
      v69 = vnegq_f64(v45);
      v70 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v43.f64[0] - v43.f64[0]), 0));
      v71 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v58, v70), *v57, v56 - v43.f64[0]), v37.f64[0]);
      v72 = vmulq_f64(v37, vmlaq_f64(vmulq_f64(v68, v69), v62, v38));
      v73 = vmlaq_n_f64(vmulq_f64(v71, v63), v66, v56 - v43.f64[0]);
      v74 = vmlaq_f64(vmulq_f64(v72, v64), v65, v38);
      v127 = vmulq_f64(v42, vsubq_f64(v62, v61));
      v75 = vmulq_n_f64(vsubq_f64(*v57, *v54), v42.f64[0]);
      v76 = vmulq_n_f64(vsubq_f64(*v58, *v57), v37.f64[0]);
      v77 = vmulq_f64(v37, vsubq_f64(v68, v62));
      v78 = vmlsq_f64(vmlaq_f64(vsubq_f64(v72, v65), v127, v38), v77, v46);
      v79 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v71, v66), v75, v56 - v43.f64[0]), v76, v41.f64[0] - v43.f64[0], 0);
      v80 = v60[1];
      v81 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v60, vnegq_f64(v67)), *v58, v44.f64[0]), v40.f64[0]);
      v82 = vmlaq_n_f64(vmulq_f64(v81, v70), v71, v44.f64[0]);
      v83 = vsubq_f64(v81, v71);
      v84 = vmulq_f64(v40, vmlaq_f64(vmulq_f64(v80, vnegq_f64(v38)), v68, v44));
      v85 = vmlaq_f64(vmulq_f64(v84, v69), v72, v44);
      v67.f64[0] = 1.0 / (v56 - v41.f64[0]);
      v86 = vmlaq_f64(vsubq_f64(v84, v72), v77, v44);
      v87 = vmlaq_n_f64(v83, v76, v44.f64[0]);
      v44.f64[0] = 1.0 / v44.f64[0];
      v88 = vmlaq_f64(vsubq_f64(vmulq_f64(v44, v85), vmulq_f64(v67, v74)), vmulq_f64(v67, v78), v38);
      v89 = vmlaq_n_f64(vsubq_f64(vmulq_n_f64(v82, v44.f64[0]), vmulq_n_f64(v73, v67.f64[0])), vmulq_n_f64(v79, v67.f64[0]), v56 - v43.f64[0]);
      v90 = vmulq_f64(v40, vsubq_f64(v80, v68));
      v91 = vmulq_n_f64(vsubq_f64(*v60, *v58), v40.f64[0]);
      v46 = vmlsq_lane_f64(v89, vmulq_n_f64(vmlsq_lane_f64(v87, v91, v43.f64[0] - v43.f64[0], 0), v44.f64[0]), v43.f64[0] - v43.f64[0], 0);
      v92 = vmlsq_f64(v88, vmulq_f64(v44, vmlsq_f64(v86, v90, v45)), v45);
      v45.f64[0] = v41.f64[0] - v56;
      v41.f64[0] = v43.f64[0] - v56;
      v43.f64[0] = v56 - v56;
      v93 = vnegq_f64(vdupq_lane_s64(*&v45.f64[0], 0));
      v94 = vnegq_f64(v45);
      v95 = vmulq_f64(v42, vmlaq_f64(vmulq_f64(v62, v94), v61, v41));
      v96 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v57, v93), *v54, v41.f64[0]), v42.f64[0]);
      v97 = vmulq_f64(v80, vnegq_f64(v43));
      v98 = vnegq_f64(v41);
      v99 = vnegq_f64(vdupq_lane_s64(*&v41.f64[0], 0));
      v100 = vmlaq_f64(v97, v68, v39);
      v101 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v58, v99), *v57, v43.f64[0]), v37.f64[0]);
      v102 = vmulq_f64(v37, vmlaq_f64(vmulq_f64(v68, v98), v62, v43));
      v103 = vmulq_n_f64(vmlaq_n_f64(vmulq_f64(*v60, vnegq_f64(vdupq_lane_s64(*&v43.f64[0], 0))), *v58, v39.f64[0]), v40.f64[0]);
      v104 = vmulq_f64(v40, v100);
      v105 = vmlaq_n_f64(vsubq_f64(v101, v96), v75, v43.f64[0]);
      v106 = vmlsq_f64(vmlaq_f64(vsubq_f64(v102, v95), v127, v43), v77, v45);
      v107 = vmlsq_lane_f64(v105, v76, v45.f64[0], 0);
      v45 = vmlaq_f64(vmulq_f64(v104, v98), v102, v39);
      v108 = vmlaq_f64(vsubq_f64(v104, v102), v77, v39);
      v109 = vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v103, v99), v101, v39.f64[0]), v44.f64[0]), vmulq_n_f64(vmlaq_n_f64(vmulq_f64(v101, v93), v96, v43.f64[0]), v67.f64[0])), vmulq_n_f64(v107, v67.f64[0]), v43.f64[0]), vmulq_n_f64(vmlsq_lane_f64(vmlaq_n_f64(vsubq_f64(v103, v101), v76, v39.f64[0]), v91, v41.f64[0], 0), v44.f64[0]), v41.f64[0], 0);
      v42 = vmlsq_f64(vmlaq_f64(vsubq_f64(vmulq_f64(v44, v45), vmulq_f64(v67, vmlaq_f64(vmulq_f64(v102, v94), v95, v43))), vmulq_f64(v67, v106), v43), vmulq_f64(v44, vmlsq_f64(v108, v90, v41)), v41);
      v40 = vmulq_f64(v37, v42);
      v110 = vmulq_n_f64(vmulq_n_f64(v46, v37.f64[0]), v38.f64[0]);
      v111 = vmulq_f64(v38, vmulq_f64(v37, v92));
      v37 = vmulq_n_f64(vmulq_n_f64(v109, v37.f64[0]), v38.f64[0]);
      v112 = vmulq_f64(v38, v40);
      v113 = (*a2 + 32 * v48);
      *v113 = *v57;
      v113[1] = v62;
      v39 = *v57;
      v38.f64[1] = v126.f64[1];
      v114 = vaddq_f64(*v57, vdivq_f64(v110, v126));
      v115 = vaddq_f64(v57[1], vdivq_f64(v111, v126));
      v116 = (*a2 + 32 * (v48 + 1));
      *v116 = v114;
      v116[1] = v115;
      v117 = vsubq_f64(*v58, vdivq_f64(v37, v126));
      v118 = vsubq_f64(v58[1], vdivq_f64(v112, v126));
      v119 = (*a2 + 32 * (v48 + 2));
      *v119 = v117;
      v119[1] = v118;
      LOWORD(v48) = v48 + 3;
      v47 = v55;
    }

    while (v20 != v55);
    v48 = v48;
  }

  v120 = &(*a1)[7 * v20];
  v121 = *(v120 + 32);
  v122 = (*a2 + 32 * v48);
  *v122 = *(v120 + 16);
  v122[1] = v121;
  v123 = a1[1];
  v129 = 0;
  v130 = 0;
  __p = 0;
  if (v123)
  {
    std::vector<double>::__vallocate[abi:nn200100](&__p, v123);
  }

  v124 = 0;
  v125 = 0;
  *(a2 + 66) = 0;
  if ((a2 + 24) != &__p)
  {
    std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), 0, 0, 0);
    v124 = __p;
    v125 = v129;
  }

  *(a2 + 48) = *v124;
  *(a2 + 56) = *(v125 - 1);
  v129 = v124;
  operator delete(v124);
  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }

  if (v134)
  {
    v135 = v134;
    operator delete(v134);
  }
}

void _ZN4geom19interpolating_curveIDv3_dE20build_natural_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(void *a1@<X1>, uint64_t a2@<X8>)
{
  v131 = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  v125 = 0;
  v126 = 0;
  v127 = 0;
  __p = 0;
  v123 = 0;
  v124 = 0;
  v4 = a1[1];
  memset(v121, 0, sizeof(v121));
  if (v4)
  {
    std::vector<double>::__vallocate[abi:nn200100](v121, v4);
  }

  v5 = v121[0];
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v131, 0);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v128, 0);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&v125, 0);
  _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(&__p, 0);
  v8 = -1;
  v9 = v131;
  v10 = &v131[-2];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *v9 = 0u;
  v9[1] = 0u;
  v11 = __p;
  v12 = (__p - 32);
  __asm { FMOV            V1.2D, #1.0 }

  *v12 = _Q1;
  v12[1] = _Q1;
  *v11 = _Q1;
  v11[1] = _Q1;
  v18 = v128;
  v19 = v128 - 32;
  *v19 = 0u;
  v19[1] = 0u;
  *v18 = 0u;
  v18[1] = 0u;
  v20 = v125;
  v21 = v125 - 32;
  *v21 = 0u;
  v21[1] = 0u;
  *v20 = 0u;
  v20[1] = 0u;
  v22 = 0;
  v23 = 0;
  v24 = (v5 + 8);
  do
  {
    _Q1.f64[0] = *v24;
    v6.f64[0] = *v24 - *(v24 - 1);
    v25 = *(v24 + 1);
    v24 += 8;
    _Q1.f64[0] = v25 - _Q1.f64[0];
    v7.f64[0] = v6.f64[0] + _Q1.f64[0] + v6.f64[0] + _Q1.f64[0];
    v26 = &v9[2 * v23 + 2];
    v27 = &v11[2 * v23 + 2];
    *v26 = vdupq_lane_s64(*&v6.f64[0], 0);
    *(v26 + 16) = v6;
    *v27 = vdupq_lane_s64(*&v7.f64[0], 0);
    *(v27 + 16) = v7;
    v28 = &v18[2 * v23 + 2];
    *v28 = vdupq_lane_s64(*&_Q1.f64[0], 0);
    *(v28 + 16) = _Q1;
    v29 = 3.0 / _Q1.f64[0];
    v30 = (*a1 + v22);
    v31 = v30[8];
    v32 = v30[9];
    v33 = vsubq_f64(v30[16], v32);
    v7 = vsubq_f64(v30[15], v31);
    v34 = v30[2];
    v35 = vsubq_f64(v31, v30[1]);
    v36 = &v20[2 * v23 + 2];
    v37 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(3.0 / v6.f64[0]), 0));
    v38 = vmulq_f64(vsubq_f64(v32, v34), v37);
    v6 = vmlaq_n_f64(vmulq_f64(v35, v37), v7, v29);
    *v36 = v6;
    *(v36 + 16) = vmlaq_n_f64(v38, v33, v29);
    ++v23;
    v22 += 112;
  }

  while (v23 != -2);
  v39 = v123 - v11;
  v40 = ((v123 - v11) >> 5) - 1;
  v41 = vdivq_f64(v18[1], v11[1]);
  *v18 = vdivq_f64(*v18, *v11);
  v18[1] = v41;
  v42 = vdivq_f64(v20[1], v11[1]);
  *v20 = vdivq_f64(*v20, *v11);
  v20[1] = v42;
  if (v40 > 1)
  {
    v43 = v40 - 1;
    v44 = v11 + 2;
    v45 = v9 + 2;
    v46 = v20 + 2;
    v47 = v18 + 2;
    do
    {
      v49 = v47[-2];
      v48 = v47[-1];
      v50 = vdivq_f64(v47[1], vmlsq_f64(v44[1], v48, v45[1]));
      *v47 = vdivq_f64(*v47, vmlsq_f64(*v44, v49, *v45));
      v47[1] = v50;
      v47 += 2;
      v52 = *v45;
      v51 = v45[1];
      v45 += 2;
      v54 = *v44;
      v53 = v44[1];
      v44 += 2;
      v55 = vdivq_f64(vmlsq_f64(v46[1], v46[-1], v51), vmlsq_f64(v53, v48, v51));
      *v46 = vdivq_f64(vmlsq_f64(*v46, v46[-2], v52), vmlsq_f64(v54, v49, v52));
      v46[1] = v55;
      v46 += 2;
      --v43;
    }

    while (v43);
  }

  v56 = &v20[2 * v40];
  v57 = &v9[2 * v40];
  v59 = *v57;
  v58 = v57[1];
  v60 = (v39 << 27) - 0x200000000;
  v61 = (v20 + (v60 >> 27));
  v62 = vmlsq_f64(*v56, *v61, v59);
  v63 = vmlsq_f64(v56[1], v61[1], v58);
  v64 = &v11[2 * v40];
  v65 = (v18 + (v60 >> 27));
  v66 = vdivq_f64(v63, vmlsq_f64(v64[1], v65[1], v58));
  v67 = vdivq_f64(v62, vmlsq_f64(*v64, *v65, v59));
  *v56 = v67;
  v56[1] = v66;
  if (v40 >= 1)
  {
    v68 = v40 - 1;
    do
    {
      v69 = &v18[2 * v68];
      v70 = *v69;
      v71 = v69[1];
      v72 = &v20[2 * v68];
      v73 = vmlsq_f64(v72[1], v66, v71);
      v74 = vmlsq_f64(*v72, v67, v70);
      *v72 = v74;
      v72[1] = v73;
      v75 = v68-- + 1;
      v67 = v74;
      v66 = v73;
    }

    while (v75 > 1);
  }

  __asm { FMOV            V19.2D, #2.0 }

  v77 = 0;
  v78 = (v5 + 8);
  v79 = v20 + 2;
  do
  {
    v80 = *v78 - *(v78 - 1);
    v81 = (*a1 + v77);
    v82 = vnegq_f64(vdupq_lane_s64(COERCE__INT64(v80 / 3.0), 0));
    v83 = vmlaq_n_f64(vmulq_f64(vmlaq_f64(v79[1], _Q19, v79[-1]), v82), vsubq_f64(v81[9], v81[2]), 1.0 / v80);
    *v18 = vmlaq_n_f64(vmulq_f64(vmlaq_f64(*v79, _Q19, v79[-2]), v82), vsubq_f64(v81[8], v81[1]), 1.0 / v80);
    v18[1] = v83;
    v18 += 2;
    v84 = 1.0 / (v80 * 3.0);
    v85 = vmulq_n_f64(vsubq_f64(*v79, v79[-2]), v84);
    v86 = vmulq_n_f64(vsubq_f64(v79[1], v79[-1]), v84);
    v77 += 112;
    *v11 = v85;
    v11[1] = v86;
    v11 += 2;
    ++v78;
    v79 += 2;
    --v8;
  }

  while (v8);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v87 = *(a1 + 4);
  v88 = v87 - 1;
  if (v87 == 1)
  {
    *(a2 + 64) = 0;
    v94 = 0;
    v90 = 0;
    if ((*(a2 + 66) & 1) == 0)
    {
      *(a2 + 32) = 0;
    }
  }

  else
  {
    v120 = _Q19;
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE6resizeEm(a2, (3 * v88 + 1));
    *(a2 + 64) = v88;
    if ((*(a2 + 66) & 1) == 0)
    {
      std::vector<double>::resize((a2 + 24), v88 + 1);
    }

    v89 = 0;
    LOWORD(v90) = 0;
    v91 = v128;
    v92 = v125;
    v93 = __p;
    v94 = v88;
    v95 = (v5 + 8);
    __asm { FMOV            V1.2D, #3.0 }

    v97 = v88;
    do
    {
      v98 = *(v95 - 1);
      v99 = (*a1 + v89);
      v100 = *v95 - v98;
      v101 = v98 - v98;
      v102 = v99[1];
      v103 = v99[2];
      v105 = *v91;
      v104 = v91[1];
      v91 += 2;
      v107 = *v92;
      v106 = v92[1];
      v92 += 2;
      v109 = v99[8];
      v108 = v99[9];
      v110 = *v93;
      v111 = v93[1];
      v93 += 2;
      v112 = (*a2 + 32 * v90);
      v113 = v90 + 2;
      *v112 = v102;
      v112[1] = v103;
      v114 = (*a2 + 32 * (v90 + 1));
      *v114 = vaddq_f64(v102, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v105, vmlaq_f64(vmulq_n_f64(v110, v101 * 3.0), v120, v107), v101), v100), _Q1));
      v114[1] = vaddq_f64(v103, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v104, vmlaq_f64(vmulq_n_f64(v111, v101 * 3.0), v120, v106), v101), v100), _Q1));
      LOWORD(v90) = v90 + 3;
      v115 = (*a2 + 32 * v113);
      ++v95;
      v89 += 112;
      *v115 = vsubq_f64(v109, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v105, vmlaq_f64(vmulq_n_f64(v110, v100 * 3.0), v120, v107), v100), v100), _Q1));
      v115[1] = vsubq_f64(v108, vdivq_f64(vmulq_n_f64(vmlaq_n_f64(v104, vmlaq_f64(vmulq_n_f64(v111, v100 * 3.0), v120, v106), v100), v100), _Q1));
      --v97;
    }

    while (v97);
    v90 = v90;
  }

  v116 = *a1 + 112 * v94;
  v117 = *(v116 + 16);
  v118 = *(v116 + 32);
  v119 = (*a2 + 32 * v90);
  *v119 = v117;
  v119[1] = v118;
  *(a2 + 66) = 0;
  std::vector<double>::__assign_with_size[abi:nn200100]<double *,double *>((a2 + 24), v5, 0, -v5 >> 3);
  *(a2 + 48) = *v5;
  *(a2 + 56) = MEMORY[0xFFFFFFFFFFFFFFF8];
  operator delete(v5);
  if (__p)
  {
    v123 = __p;
    operator delete(__p);
  }

  if (v125)
  {
    v126 = v125;
    operator delete(v125);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (v131)
  {
    v132 = v131;
    operator delete(v131);
  }
}

void _ZN4geom19interpolating_curveIDv3_dE20build_hermite_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(_WORD *a1@<X1>, uint64_t a2@<X8>)
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
      v20 = v16[5];
      v19 = v16[6];
      v22 = v16[10];
      v21 = v16[11];
      v23 = v16[2];
      v24 = (*a2 + 32 * v9);
      *v24 = v16[1];
      v24[1] = v23;
      LOWORD(v24) = v9 + 2;
      v25 = *a2 + 32 * (v9 + 1);
      v26 = vaddq_f64(vdivq_f64(vmulq_n_f64(v19, v18), _Q0), v16[2]);
      *v25 = vaddq_f64(vdivq_f64(vmulq_n_f64(v20, v18), _Q0), v16[1]);
      *(v25 + 16) = v26;
      LOWORD(v9) = v9 + 3;
      v28 = v16[8];
      v27 = v16[9];
      v29 = (*a2 + 32 * v24);
      *v29 = vsubq_f64(v28, vdivq_f64(vmulq_n_f64(v22, v18), _Q0));
      v29[1] = vsubq_f64(v27, vdivq_f64(vmulq_n_f64(v21, v18), _Q0));
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

double _ZNK4geom20interpolating_splineIDv3_dE21evaluate_total_lengthEv(uint64_t a1)
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

  return _ZNK4geom20interpolating_splineIDv3_dE18evaluate_length_atEd(a1, v2);
}

uint64_t _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_dEENS_9allocatorIS4_EEE9push_backB8nn200100ERKS4_(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = _ZNSt3__16vectorIN4geom20interpolating_splineIDv3_dEENS_9allocatorIS4_EEE24__emplace_back_slow_pathIJRKS4_EEEPS4_DpOT_(a1, a2);
  }

  else
  {
    result = _ZN4geom20interpolating_splineIDv3_dEC2ERKS2_(v3, a2) + 96;
  }

  a1[1] = result;
  return result;
}

void _ZN4geom19interpolating_curveIDv4_dE5buildERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  _ZN4geom19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 0);
}

void _ZN4geom19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(uint64_t a1, void *a2, char a3)
{
  v6 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
  v10 = *(a1 + 72);
  v8 = *(a1 + 80);
  v9 = (a1 + 72);
  v11 = v6;
  if (v8 != v10)
  {
    do
    {
      v8 = geom::interpolating_spline<double>::~interpolating_spline(v8 - 96);
    }

    while (v8 != v10);
    v11 = 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 4);
  }

  *(a1 + 80) = v10;
  std::vector<geom::interpolating_spline<double>>::reserve(v9, v11 - 1);
  *(a1 + 208) = 0;
  if (v6 < 2u)
  {
    v12 = 0;
    v15 = -1;
  }

  else
  {
    LOWORD(v12) = 0;
    v13 = 1;
    v14 = -1;
    do
    {
      if (*(*a2 + 112 * v13) != *(*a2 + 112 * v12))
      {
        v14 = v13 - 1;
        *&v106 = *a2 + 112 * v12;
        *(&v106 + 1) = (v13 - 1) - v12 + 1;
        _ZN4geom19interpolating_curveIDv4_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v106);
        LOWORD(v12) = v13;
      }

      ++v13;
    }

    while (v6 > v13);
    v15 = v14;
    v12 = v12;
  }

  if (v6 - 1 != v15)
  {
    *&v106 = *a2 + 112 * v12;
    *(&v106 + 1) = v6 - v12;
    _ZN4geom19interpolating_curveIDv4_dE13append_splineERKNS_5sliceINS_17interpolating_keyIS1_EEEE(a1, &v106);
  }

  v17 = *(a1 + 72);
  v16 = *(a1 + 80);
  std::vector<unsigned short>::resize((a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5));
  if (v16 == v17)
  {
    std::vector<unsigned short>::resize(a1, 0);
  }

  else
  {
    v18 = 0;
    v19 = *v9;
    v20 = *(a1 + 24);
    if (0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5) <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 5);
    }

    v22 = (v19 + 64);
    v23 = v21;
    do
    {
      v24 = *v22;
      v22 += 48;
      *v20++ = v18;
      v18 += v24;
      --v23;
    }

    while (v23);
    std::vector<unsigned short>::resize(a1, v18);
    v25 = 0;
    v26 = 0;
    v27 = *(a1 + 72);
    do
    {
      v28 = *(v27 + 96 * v25 + 64);
      if (*(v27 + 96 * v25 + 64))
      {
        v29 = *a1;
        do
        {
          v30 = (v26 + 1);
          *(v29 + 2 * v26) = v25;
          LODWORD(v26) = v26 + 1;
          --v28;
        }

        while (v28);
      }

      else
      {
        v30 = v26;
      }

      ++v25;
      v26 = v30;
    }

    while (v25 != v21);
  }

  v31 = *a2;
  *(a1 + 192) = *(*a2 + 8);
  v32 = a2[1];
  *(a1 + 200) = *(v32 - 104);
  if (a3)
  {
    LOWORD(v116[0]) = 512;
    v33 = v32 - v31;
    v116[1] = 0.001;
    v117 = 1;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v34 = *(a1 + 96);
    v104 = (a1 + 96);
    v105 = a1;
    *(a1 + 104) = v34;
    *(a1 + 160) = 0;
    v35 = *(a1 + 120);
    v103 = (a1 + 120);
    *(a1 + 162) = 0;
    *(a1 + 128) = v35;
    if (v32 == v31)
    {
      v36 = 0.0;
    }

    else
    {
      v36 = *(v31 + 8);
    }

    if ((0x6DB6DB6DB6DB6DB7 * (v33 >> 4)) >= 2)
    {
      v37 = 1;
      while (1)
      {
        v38 = v31 + 112 * v37;
        if (*v38 != *(v31 + 112 * (v37 - 1)))
        {
          goto LABEL_96;
        }

        v39 = *(v38 + 8);
        LOBYTE(v116[0]) = *v38 != 0;
        v111 = 0;
        v40 = v105;
        v112 = 0;
        *(&v106 + 1) = v106;
        *&v108 = *(&v107 + 1);
        v41 = (v39 + v36 * 2.0) * 0.333333333;
        v42 = (v36 + v39 * 2.0) * 0.333333333;
        if (*(v105 + 208))
        {
          v43 = v36;
LABEL_70:
          v68 = v39;
          goto LABEL_71;
        }

        v44 = *(v105 + 72);
        v45 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v44) >> 5);
        if ((v45 & 0xFFFE) == 0 || *(v105 + 192) >= v36)
        {
          break;
        }

        LOWORD(v45) = v45 - 1;
        if (*(v105 + 200) > v36)
        {
          for (i = 0; ; i = v47 + 1)
          {
            while (1)
            {
              v47 = (i + v45) >> 1;
              v48 = v44 + 96 * v47;
              if (*(v48 + 48) <= v36)
              {
                break;
              }

              LOWORD(v45) = v47 - 1;
            }

            if (*(v48 + 56) > v36)
            {
              break;
            }
          }

          LODWORD(v45) = (i + v45) >> 1;
        }

        v88 = v45;
        v89 = v45;
        v49 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v44 + 96 * v45, v36);
        if (!v89)
        {
          goto LABEL_46;
        }

        v50 = *(*(v40 + 48) + 8 * (v88 - 1));
LABEL_47:
        v43 = v49 + v50;
        v51 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v52 = *(v105 + 72);
        v53 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v52) >> 5);
        if ((v53 & 0xFFFE) == 0 || *(v105 + 192) >= v41)
        {
          v57 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v52, (v39 + v36 * 2.0) * 0.333333333);
LABEL_57:
          v58 = 0.0;
          goto LABEL_58;
        }

        LOWORD(v53) = v53 - 1;
        if (*(v105 + 200) > v41)
        {
          for (j = 0; ; j = v55 + 1)
          {
            while (1)
            {
              v55 = (j + v53) >> 1;
              v56 = v52 + 96 * v55;
              if (*(v56 + 48) <= v41)
              {
                break;
              }

              LOWORD(v53) = v55 - 1;
            }

            if (*(v56 + 56) > v41)
            {
              break;
            }
          }

          LODWORD(v53) = (j + v53) >> 1;
        }

        v97 = v53;
        v98 = v53;
        v57 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v52 + 96 * v53, (v39 + v36 * 2.0) * 0.333333333);
        if (!v98)
        {
          goto LABEL_57;
        }

        v58 = *(*(v51 + 48) + 8 * (v97 - 1));
LABEL_58:
        v41 = v57 + v58;
        v59 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v60 = *(v105 + 72);
        v61 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v60) >> 5);
        if ((v61 & 0xFFFE) == 0 || *(v105 + 192) >= v42)
        {
          v65 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v60, v42);
LABEL_68:
          v66 = 0.0;
          goto LABEL_69;
        }

        LOWORD(v61) = v61 - 1;
        if (*(v105 + 200) > v42)
        {
          for (k = 0; ; k = v63 + 1)
          {
            while (1)
            {
              v63 = (k + v61) >> 1;
              v64 = v60 + 96 * v63;
              if (*(v64 + 48) <= v42)
              {
                break;
              }

              LOWORD(v61) = v63 - 1;
            }

            if (*(v64 + 56) > v42)
            {
              break;
            }
          }

          LODWORD(v61) = (k + v61) >> 1;
        }

        v99 = v61;
        v100 = v61;
        v65 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v60 + 96 * v61, v42);
        if (!v100)
        {
          goto LABEL_68;
        }

        v66 = *(*(v59 + 48) + 8 * (v99 - 1));
LABEL_69:
        v42 = v65 + v66;
        v67 = v105;
        if (*(v105 + 208))
        {
          goto LABEL_70;
        }

        v90 = *(v105 + 72);
        v91 = 0xAAAAAAAAAAAAAAABLL * ((*(v105 + 80) - v90) >> 5);
        if ((v91 & 0xFFFE) != 0 && *(v105 + 192) < v39)
        {
          LOWORD(v91) = v91 - 1;
          if (*(v105 + 200) > v39)
          {
            for (m = 0; ; m = v93 + 1)
            {
              while (1)
              {
                v93 = (m + v91) >> 1;
                v94 = v90 + 96 * v93;
                if (*(v94 + 48) <= v39)
                {
                  break;
                }

                LOWORD(v91) = v93 - 1;
              }

              if (*(v94 + 56) > v39)
              {
                break;
              }
            }

            LODWORD(v91) = (m + v91) >> 1;
          }

          v101 = v91;
          v102 = v91;
          v95 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v90 + 96 * v91, v39);
          if (v102)
          {
            v96 = *(*(v67 + 48) + 8 * (v101 - 1));
            goto LABEL_111;
          }
        }

        else
        {
          v95 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v90, v39);
        }

        v96 = 0.0;
LABEL_111:
        v68 = v95 + v96;
LABEL_71:
        *v118 = v36;
        *&v118[1] = v39;
        *&v118[2] = v43;
        *&v118[3] = v41;
        *&v118[4] = v42;
        *&v118[5] = v68;
        v119 = 0;
        _ZN4geom12_GLOBAL__N_136fit_function_with_spline_recursivelyIZNS_19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS3_EENS5_9allocatorIS8_EEEEbEUldE_dEEvRKT_RKNS0_17fit_function_dataIT0_EERKNS0_20fit_function_optionsERNS_20interpolating_splineISJ_EE(&v105, v118, v116, &v106);
        v69 = v111;
        v70 = *(a1 + 104);
        v71 = *(a1 + 96);
        v72 = *(a1 + 160);
        if (v72)
        {
          v73 = v72 + 1;
        }

        else
        {
          v73 = 0;
        }

        v74 = v72 + v111;
        if (v72 + v111)
        {
          std::vector<double>::resize(v104, (3 * v74 + 1));
          *(a1 + 160) = v74;
          if ((*(a1 + 162) & 1) == 0)
          {
            std::vector<double>::resize(v103, v74 + 1);
          }
        }

        else
        {
          *(a1 + 104) = v71;
          *(a1 + 160) = 0;
          if ((*(a1 + 162) & 1) == 0)
          {
            *(a1 + 128) = *(a1 + 120);
          }
        }

        if (v69)
        {
          v75 = ((v70 - v71) >> 3);
          v76 = v73;
          v77 = v112;
          v78 = v111;
          v79 = v111;
          v80 = *(&v107 + 1);
          v81 = v106;
          v82 = *v103;
          v83 = *v104;
          v84 = 3;
          v85 = 1;
          while (1)
          {
            if (v75)
            {
              if (v77)
              {
                goto LABEL_83;
              }
            }

            else
            {
              if (v77)
              {
                if (v78)
                {
                  v87 = v109 + (v110 - v109) / v79 * 0.0;
                }

                else
                {
                  v87 = v110;
                }
              }

              else
              {
                v87 = *v80;
              }

              *v82 = v87;
              *v83 = *v81;
              ++v76;
              v75 = 1;
              if (v77)
              {
LABEL_83:
                if (v78 == v85)
                {
                  v86 = v110;
                }

                else
                {
                  v86 = v109 + v85 * ((v110 - v109) / v79);
                }

                goto LABEL_93;
              }
            }

            v86 = v80[v85];
LABEL_93:
            v82[v76] = v86;
            v83[v75] = v81[(v84 - 2)];
            v83[(v75 + 1)] = v81[(v84 - 1)];
            v83[(v75 + 2)] = v81[v84];
            ++v76;
            v75 += 3;
            ++v85;
            v84 += 3;
            if (!--v69)
            {
              v36 = v39;
              goto LABEL_96;
            }
          }
        }

        v36 = v39;
LABEL_96:
        v37 = (v37 + 1);
        v31 = *a2;
        v33 = a2[1] - *a2;
        if (0x6DB6DB6DB6DB6DB7 * (v33 >> 4) <= v37)
        {
          goto LABEL_121;
        }
      }

      v49 = _ZNK4geom20interpolating_splineIDv4_dE18evaluate_length_atEd(v44, v36);
LABEL_46:
      v50 = 0.0;
      goto LABEL_47;
    }

LABEL_121:
    *(a1 + 208) = 1;
    *(a1 + 192) = *(v31 + 8);
    *(a1 + 200) = *(v31 + v33 - 104);
    geom::interpolating_spline<double>::~interpolating_spline(&v106);
  }
}

void _ZN4geom19interpolating_curveIDv4_dE30build_arc_length_parameterizedERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEE(void *a1@<X0>, _OWORD *a2@<X8>)
{
  a2[7] = 0u;
  a2[8] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 193) = 0u;
  _ZN4geom19interpolating_curveIDv4_dE12build_helperERKNSt3__16vectorINS_17interpolating_keyIS1_EENS3_9allocatorIS6_EEEEb(a2, a1, 1);
}

double _ZNK4geom19interpolating_curveIDv4_dE11evaluate_atEd@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 208) == 1)
  {
    v20 = 0;
    v21 = 0.0;
    v22 = 0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v20, a3);
    v5 = (*(a1 + 96) + 8 * (3 * v20));
    a3 = v5[1] * (v21 * ((1.0 - v21) * (1.0 - v21) * 3.0)) + *v5 * ((1.0 - v21) * ((1.0 - v21) * (1.0 - v21))) + v5[2] * (v21 * v21 * ((1.0 - v21) * 3.0)) + v5[3] * (v21 * (v21 * v21));
  }

  v6 = *(a1 + 72);
  v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v6) >> 5);
  if ((v7 & 0xFFFE) != 0 && *(a1 + 192) < a3)
  {
    LOWORD(v7) = v7 - 1;
    if (*(a1 + 200) > a3)
    {
      for (i = 0; ; i = v9 + 1)
      {
        while (1)
        {
          v9 = (i + v7) >> 1;
          v10 = v6 + 96 * v9;
          if (*(v10 + 48) <= a3)
          {
            break;
          }

          LOWORD(v7) = v9 - 1;
        }

        if (*(v10 + 56) > a3)
        {
          break;
        }
      }

      LODWORD(v7) = (i + v7) >> 1;
    }
  }

  else
  {
    LOWORD(v7) = 0;
  }

  v11 = (v6 + 96 * v7);
  v20 = 0;
  v21 = 0.0;
  v22 = 0;
  geom::interpolating_spline<double>::find_span(v11, &v20, a3);
  v12 = v21;
  v13 = (*v11 + 32 * (3 * v20));
  v14 = 1.0 - v21;
  v15 = v14 * (v14 * v14);
  v16 = v21 * (v14 * v14 * 3.0);
  v17 = v12 * v12 * ((1.0 - v21) * 3.0);
  result = v12 * (v12 * v12);
  v19 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v13[3], v16), v13[1], v15), v13[5], v17), v13[7], result);
  *a2 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(v13[2], v16), *v13, v15), v13[4], v17), v13[6], result);
  a2[1] = v19;
  return result;
}

uint64_t _ZNK4geom19interpolating_curveIDv4_dE19evaluate_tangent_atEd@<X0>(uint64_t a1@<X0>, float64x2_t *a2@<X8>, double a3@<D0>)
{
  if (*(a1 + 208) == 1)
  {
    v32 = 0;
    v33 = 0.0;
    v34 = 0.0;
    geom::interpolating_spline<double>::find_span(a1 + 96, &v32, a3);
    v5 = (*(a1 + 96) + 8 * (3 * v32));
    v6 = v5[1] * (v33 * ((1.0 - v33) * (1.0 - v33) * 3.0)) + *v5 * ((1.0 - v33) * ((1.0 - v33) * (1.0 - v33))) + v5[2] * (v33 * v33 * ((1.0 - v33) * 3.0)) + v5[3] * (v33 * (v33 * v33));
    v7 = *(a1 + 72);
    v8 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v7) >> 5);
    if ((v8 & 0xFFFE) != 0 && *(a1 + 192) < v6)
    {
      LOWORD(v8) = v8 - 1;
      if (*(a1 + 200) > v6)
      {
        for (i = 0; ; i = v10 + 1)
        {
          while (1)
          {
            v10 = (i + v8) >> 1;
            v11 = v7 + 96 * v10;
            if (*(v11 + 48) <= v6)
            {
              break;
            }

            LOWORD(v8) = v10 - 1;
          }

          if (*(v11 + 56) > v6)
          {
            break;
          }
        }

        LODWORD(v8) = (i + v8) >> 1;
      }
    }

    else
    {
      LOWORD(v8) = 0;
    }

    v17 = (v7 + 96 * v8);
    v32 = 0;
    v33 = 0.0;
    v34 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v17, &v32, v6);
    v19 = (*v17 + 32 * (3 * v32));
    v20 = 1.0 - v33;
    v21 = v20 * v20;
    v22 = v33 * (v20 + v20);
    v23 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v19[4], v19[2]), v22), vsubq_f64(v19[2], *v19), v21), vsubq_f64(v19[6], v19[4]), v33 * v33), v34 * 3.0);
    v24 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v19[5], v19[3]), v22), vsubq_f64(v19[3], v19[1]), v21), vsubq_f64(v19[7], v19[5]), v33 * v33), v34 * 3.0);
    v25 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v23, v23), vmulq_f64(v24, v24))));
    if (v25 > 0.0)
    {
      v26 = 1.0 / v25;
      v24 = vmulq_n_f64(v24, v26);
      v23 = vmulq_n_f64(v23, v26);
    }
  }

  else
  {
    v12 = *(a1 + 72);
    v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 80) - v12) >> 5);
    if ((v13 & 0xFFFE) != 0 && *(a1 + 192) < a3)
    {
      LOWORD(v13) = v13 - 1;
      if (*(a1 + 200) > a3)
      {
        for (j = 0; ; j = v15 + 1)
        {
          while (1)
          {
            v15 = (j + v13) >> 1;
            v16 = v12 + 96 * v15;
            if (*(v16 + 48) <= a3)
            {
              break;
            }

            LOWORD(v13) = v15 - 1;
          }

          if (*(v16 + 56) > a3)
          {
            break;
          }
        }

        LODWORD(v13) = (j + v13) >> 1;
      }
    }

    else
    {
      LOWORD(v13) = 0;
    }

    v27 = (v12 + 96 * v13);
    v32 = 0;
    v33 = 0.0;
    v34 = 0.0;
    result = geom::interpolating_spline<double>::find_span(v27, &v32, a3);
    v28 = (*v27 + 32 * (3 * v32));
    v29 = 1.0 - v33;
    v30 = v29 * v29;
    v31 = v33 * (v29 + v29);
    v24 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v28[5], v28[3]), v31), vsubq_f64(v28[3], v28[1]), v30), vsubq_f64(v28[7], v28[5]), v33 * v33), v34 * 3.0);
    v23 = vmulq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vsubq_f64(v28[4], v28[2]), v31), vsubq_f64(v28[2], *v28), v30), vsubq_f64(v28[6], v28[4]), v33 * v33), v34 * 3.0);
  }

  *a2 = v23;
  a2[1] = v24;
  return result;
}