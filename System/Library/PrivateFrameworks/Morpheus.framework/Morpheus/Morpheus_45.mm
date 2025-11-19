void sub_25A4E50A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v83 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v104, v12, v10, (v10 - v12) >> 2);
  v13 = v104;
  v14 = 1;
  while (v13 != v105)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v103, 0, sizeof(v103));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v103, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v96, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v104, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v84 = 0;
    v82 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v103[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          v43 = mlx::core::array::shape(a2, v23);
          if (v42 >= 0)
          {
            v43 = 0;
          }

          v22 += *((*a2)[3] + 8 * v23) * (v43 + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v96, v84 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 2 * v22;
        v46 = v96;
        v47 = v99;
        v48 = (v98 - v97) >> 2;
        v49 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v50 = v101 + 4 * v49;
        v51 = v97 + 4 * v49;
        v88 = v101;
        v52 = v89;
        v53 = __p;
        v54 = (v91 - v90) >> 2;
        v55 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v87 = v94;
        v56 = &v94[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v85 = v90 - 8;
        v86 = v97 - 8;
        v59 = v90 + 4 * v55;
        do
        {
          v60 = COERCE_FLOAT(*(v19 + 2 * v46) << 16) + COERCE_FLOAT(*(v45 + 2 * v52) << 16);
          *(v45 + 2 * v52) = (LODWORD(v60) + (HIWORD(LODWORD(v60)) & 1u) + 0x7FFF) >> 16;
          if (v48)
          {
            v61 = *v50;
            if (v48 >= 2 && v61 == *v51 - 1)
            {
              v63 = (v48 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v86;
              v65 = v51;
              v66 = v50;
              v67 = v49;
              do
              {
                v68 = v63;
                *v66 = 0;
                v46 = (v46 - v47[v67] * (*v65 - 1));
                v96 = v46;
                --v63;
                v66 = &v62[v57 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v48 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v61 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v49;
              v70 = v50;
            }

            *v70 = v61 + 1;
            v46 = (v46 + v47[v63]);
            v96 = v46;
          }

          if (v54)
          {
            v71 = *v56;
            if (v54 >= 2 && v71 == *v59 - 1)
            {
              v73 = (v54 & 0x7FFFFFFF) - 1;
              v72 = v87;
              v74 = v85;
              v75 = v59;
              v76 = v56;
              v77 = v55;
              do
              {
                v78 = v73;
                *v76 = 0;
                v52 -= v53[v77] * (*v75 - 1);
                v89 = v52;
                --v73;
                v76 = &v72[v58 - 8];
                v71 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v74[v58];
                v79 = *&v74[4 * (v54 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v77 = v73;
              }

              while (v71 == v79);
              v80 = &v72[v58 - 4];
            }

            else
            {
              v73 = v55;
              v80 = v56;
            }

            *v80 = v71 + 1;
            v52 += v53[v73];
            v89 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v81 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      ++v84;
    }

    while (v84 != v83);
    if (v81)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v81 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v96 = v103;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v96);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_25A4E56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v83 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v104, v12, v10, (v10 - v12) >> 2);
  v13 = v104;
  v14 = 1;
  while (v13 != v105)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v103, 0, sizeof(v103));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v103, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v96, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v104, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v84 = 0;
    v82 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v103[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          v43 = mlx::core::array::shape(a2, v23);
          if (v42 >= 0)
          {
            v43 = 0;
          }

          v22 += *((*a2)[3] + 8 * v23) * (v43 + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v96, v84 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 2 * v22;
        v46 = v96;
        v47 = v99;
        v48 = (v98 - v97) >> 2;
        v49 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v50 = v101 + 4 * v49;
        v51 = v97 + 4 * v49;
        v88 = v101;
        v52 = v89;
        v53 = __p;
        v54 = (v91 - v90) >> 2;
        v55 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v87 = v94;
        v56 = &v94[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v85 = v90 - 8;
        v86 = v97 - 8;
        v59 = v90 + 4 * v55;
        do
        {
          v60 = COERCE_FLOAT(*(v19 + 2 * v46) << 16) * COERCE_FLOAT(*(v45 + 2 * v52) << 16);
          *(v45 + 2 * v52) = (LODWORD(v60) + (HIWORD(LODWORD(v60)) & 1u) + 0x7FFF) >> 16;
          if (v48)
          {
            v61 = *v50;
            if (v48 >= 2 && v61 == *v51 - 1)
            {
              v63 = (v48 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v86;
              v65 = v51;
              v66 = v50;
              v67 = v49;
              do
              {
                v68 = v63;
                *v66 = 0;
                v46 = (v46 - v47[v67] * (*v65 - 1));
                v96 = v46;
                --v63;
                v66 = &v62[v57 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v48 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v61 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v49;
              v70 = v50;
            }

            *v70 = v61 + 1;
            v46 = (v46 + v47[v63]);
            v96 = v46;
          }

          if (v54)
          {
            v71 = *v56;
            if (v54 >= 2 && v71 == *v59 - 1)
            {
              v73 = (v54 & 0x7FFFFFFF) - 1;
              v72 = v87;
              v74 = v85;
              v75 = v59;
              v76 = v56;
              v77 = v55;
              do
              {
                v78 = v73;
                *v76 = 0;
                v52 -= v53[v77] * (*v75 - 1);
                v89 = v52;
                --v73;
                v76 = &v72[v58 - 8];
                v71 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v74[v58];
                v79 = *&v74[4 * (v54 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v77 = v73;
              }

              while (v71 == v79);
              v80 = &v72[v58 - 4];
            }

            else
            {
              v73 = v55;
              v80 = v56;
            }

            *v80 = v71 + 1;
            v52 += v53[v73];
            v89 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v81 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      ++v84;
    }

    while (v84 != v83);
    if (v81)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v81 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v96 = v103;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v96);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_25A4E5CB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v83 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v104, v12, v10, (v10 - v12) >> 2);
  v13 = v104;
  v14 = 1;
  while (v13 != v105)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v103, 0, sizeof(v103));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v103, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v96, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v104, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v84 = 0;
    v82 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v103[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          v43 = mlx::core::array::shape(a2, v23);
          if (v42 >= 0)
          {
            v43 = 0;
          }

          v22 += *((*a2)[3] + 8 * v23) * (v43 + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v96, v84 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 2 * v22;
        v46 = v96;
        v47 = v99;
        v48 = (v98 - v97) >> 2;
        v49 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v50 = v101 + 4 * v49;
        v51 = v97 + 4 * v49;
        v88 = v101;
        v52 = v89;
        v53 = __p;
        v54 = (v91 - v90) >> 2;
        v55 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v87 = v94;
        v56 = &v94[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v85 = v90 - 8;
        v86 = v97 - 8;
        v59 = v90 + 4 * v55;
        do
        {
          v60 = *(v45 + 2 * v52);
          if (COERCE_FLOAT(v60 << 16) <= COERCE_FLOAT(*(v19 + 2 * v46) << 16))
          {
            LOWORD(v60) = *(v19 + 2 * v46);
          }

          *(v45 + 2 * v52) = v60;
          if (v48)
          {
            v61 = *v50;
            if (v48 >= 2 && v61 == *v51 - 1)
            {
              v63 = (v48 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v86;
              v65 = v51;
              v66 = v50;
              v67 = v49;
              do
              {
                v68 = v63;
                *v66 = 0;
                v46 = (v46 - v47[v67] * (*v65 - 1));
                v96 = v46;
                --v63;
                v66 = &v62[v57 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v48 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v61 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v49;
              v70 = v50;
            }

            *v70 = v61 + 1;
            v46 = (v46 + v47[v63]);
            v96 = v46;
          }

          if (v54)
          {
            v71 = *v56;
            if (v54 >= 2 && v71 == *v59 - 1)
            {
              v73 = (v54 & 0x7FFFFFFF) - 1;
              v72 = v87;
              v74 = v85;
              v75 = v59;
              v76 = v56;
              v77 = v55;
              do
              {
                v78 = v73;
                *v76 = 0;
                v52 -= v53[v77] * (*v75 - 1);
                v89 = v52;
                --v73;
                v76 = &v72[v58 - 8];
                v71 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v74[v58];
                v79 = *&v74[4 * (v54 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v77 = v73;
              }

              while (v71 == v79);
              v80 = &v72[v58 - 4];
            }

            else
            {
              v73 = v55;
              v80 = v56;
            }

            *v80 = v71 + 1;
            v52 += v53[v73];
            v89 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v81 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      ++v84;
    }

    while (v84 != v83);
    if (v81)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v81 = v94;
    if (v94)
    {
LABEL_56:
      v95 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v96 = v103;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v96);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_25A4E6298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,short,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v83 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v104, v12, v10, (v10 - v12) >> 2);
  v13 = v104;
  v14 = 1;
  while (v13 != v105)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v103, 0, sizeof(v103));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v103, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v96, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, &v104, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v84 = 0;
    v82 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v103[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          v43 = mlx::core::array::shape(a2, v23);
          if (v42 >= 0)
          {
            v43 = 0;
          }

          v22 += *((*a2)[3] + 8 * v23) * (v43 + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v96, v84 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 2 * v22;
        v46 = v96;
        v47 = v99;
        v48 = (v98 - v97) >> 2;
        v49 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v50 = v101 + 4 * v49;
        v51 = v97 + 4 * v49;
        v88 = v101;
        v52 = v89;
        v53 = __p;
        v54 = (v91 - v90) >> 2;
        v55 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v87 = v94;
        v56 = &v94[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v85 = v90 - 8;
        v86 = v97 - 8;
        v59 = v90 + 4 * v55;
        do
        {
          v60 = *(v45 + 2 * v52);
          if (COERCE_FLOAT(v60 << 16) >= COERCE_FLOAT(*(v19 + 2 * v46) << 16))
          {
            LOWORD(v60) = *(v19 + 2 * v46);
          }

          *(v45 + 2 * v52) = v60;
          if (v48)
          {
            v61 = *v50;
            if (v48 >= 2 && v61 == *v51 - 1)
            {
              v63 = (v48 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v86;
              v65 = v51;
              v66 = v50;
              v67 = v49;
              do
              {
                v68 = v63;
                *v66 = 0;
                v46 = (v46 - v47[v67] * (*v65 - 1));
                v96 = v46;
                --v63;
                v66 = &v62[v57 - 8];
                v61 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v48 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v61 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v49;
              v70 = v50;
            }

            *v70 = v61 + 1;
            v46 = (v46 + v47[v63]);
            v96 = v46;
          }

          if (v54)
          {
            v71 = *v56;
            if (v54 >= 2 && v71 == *v59 - 1)
            {
              v73 = (v54 & 0x7FFFFFFF) - 1;
              v72 = v87;
              v74 = v85;
              v75 = v59;
              v76 = v56;
              v77 = v55;
              do
              {
                v78 = v73;
                *v76 = 0;
                v52 -= v53[v77] * (*v75 - 1);
                v89 = v52;
                --v73;
                v76 = &v72[v58 - 8];
                v71 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v74[v58];
                v79 = *&v74[4 * (v54 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v77 = v73;
              }

              while (v71 == v79);
              v80 = &v72[v58 - 4];
            }

            else
            {
              v73 = v55;
              v80 = v56;
            }

            *v80 = v71 + 1;
            v52 += v53[v73];
            v89 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v81 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      ++v84;
    }

    while (v84 != v83);
    if (v81)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v81 = v94;
    if (v94)
    {
LABEL_56:
      v95 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v93 = __p;
    operator delete(__p);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  v96 = v103;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v96);
  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }
}

void sub_25A4E6878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,int,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          v22 += *((*a2)[3] + 8 * v23) * (v42 + (mlx::core::array::shape(a2, v23) & (v42 >> 31)));
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = COERCE_FLOAT(*(v19 + 2 * v45) << 16) + COERCE_FLOAT(*(v44 + 2 * v51) << 16);
          *(v44 + 2 * v51) = (LODWORD(v59) + (HIWORD(LODWORD(v59)) & 1u) + 0x7FFF) >> 16;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E6E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          v22 += *((*a2)[3] + 8 * v23) * (v42 + (mlx::core::array::shape(a2, v23) & (v42 >> 31)));
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = COERCE_FLOAT(*(v19 + 2 * v45) << 16) * COERCE_FLOAT(*(v44 + 2 * v51) << 16);
          *(v44 + 2 * v51) = (LODWORD(v59) + (HIWORD(LODWORD(v59)) & 1u) + 0x7FFF) >> 16;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E7478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          v22 += *((*a2)[3] + 8 * v23) * (v42 + (mlx::core::array::shape(a2, v23) & (v42 >> 31)));
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v44 + 2 * v51);
          if (COERCE_FLOAT(v59 << 16) <= COERCE_FLOAT(*(v19 + 2 * v45) << 16))
          {
            LOWORD(v59) = *(v19 + 2 * v45);
          }

          *(v44 + 2 * v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E7A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,int,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          v22 += *((*a2)[3] + 8 * v23) * (v42 + (mlx::core::array::shape(a2, v23) & (v42 >> 31)));
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v44 + 2 * v51);
          if (COERCE_FLOAT(v59 << 16) >= COERCE_FLOAT(*(v19 + 2 * v45) << 16))
          {
            LOWORD(v59) = *(v19 + 2 * v45);
          }

          *(v44 + 2 * v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E8028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          v22 += *((*a2)[3] + 8 * v23) * ((mlx::core::array::shape(a2, v23) & (v42 >> 63)) + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = COERCE_FLOAT(*(v19 + 2 * v45) << 16) + COERCE_FLOAT(*(v44 + 2 * v51) << 16);
          *(v44 + 2 * v51) = (LODWORD(v59) + (HIWORD(LODWORD(v59)) & 1u) + 0x7FFF) >> 16;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E862C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          v22 += *((*a2)[3] + 8 * v23) * ((mlx::core::array::shape(a2, v23) & (v42 >> 63)) + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = COERCE_FLOAT(*(v19 + 2 * v45) << 16) * COERCE_FLOAT(*(v44 + 2 * v51) << 16);
          *(v44 + 2 * v51) = (LODWORD(v59) + (HIWORD(LODWORD(v59)) & 1u) + 0x7FFF) >> 16;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E8C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          v22 += *((*a2)[3] + 8 * v23) * ((mlx::core::array::shape(a2, v23) & (v42 >> 63)) + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v44 + 2 * v51);
          if (COERCE_FLOAT(v59 << 16) <= COERCE_FLOAT(*(v19 + 2 * v45) << 16))
          {
            LOWORD(v59) = *(v19 + 2 * v45);
          }

          *(v44 + 2 * v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::_MLX_BFloat16,long long,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v103 = 0;
  v104 = 0;
  v105 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v103, v12, v10, (v10 - v12) >> 2);
  v13 = v103;
  v14 = 1;
  while (v13 != v104)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v102, 0, sizeof(v102));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v102, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v95, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, &v103, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v83 = 0;
    v81 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v102[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          v22 += *((*a2)[3] + 8 * v23) * ((mlx::core::array::shape(a2, v23) & (v42 >> 63)) + v42);
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 2 * v22;
        v45 = v95;
        v46 = v98;
        v47 = (v97 - v96) >> 2;
        v48 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v49 = v100 + 4 * v48;
        v50 = v96 + 4 * v48;
        v87 = v100;
        v51 = v88;
        v52 = __p;
        v53 = (v90 - v89) >> 2;
        v54 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v55 = &v93[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v58 = v89 + 4 * v54;
        do
        {
          v59 = *(v44 + 2 * v51);
          if (COERCE_FLOAT(v59 << 16) >= COERCE_FLOAT(*(v19 + 2 * v45) << 16))
          {
            LOWORD(v59) = *(v19 + 2 * v45);
          }

          *(v44 + 2 * v51) = v59;
          if (v47)
          {
            v60 = *v49;
            if (v47 >= 2 && v60 == *v50 - 1)
            {
              v62 = (v47 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v50;
              v65 = v49;
              v66 = v48;
              do
              {
                v67 = v62;
                *v65 = 0;
                v45 = (v45 - v46[v66] * (*v64 - 1));
                v95 = v45;
                --v62;
                v65 = &v61[v56 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v47 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v48;
              v69 = v49;
            }

            *v69 = v60 + 1;
            v45 = (v45 + v46[v62]);
            v95 = v45;
          }

          if (v53)
          {
            v70 = *v55;
            if (v53 >= 2 && v70 == *v58 - 1)
            {
              v72 = (v53 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v58;
              v75 = v55;
              v76 = v54;
              do
              {
                v77 = v72;
                *v75 = 0;
                v51 -= v52[v76] * (*v74 - 1);
                v88 = v51;
                --v72;
                v75 = &v71[v57 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v57];
                v78 = *&v73[4 * (v53 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v57 - 4];
            }

            else
            {
              v72 = v54;
              v79 = v55;
            }

            *v79 = v70 + 1;
            v51 += v52[v72];
            v88 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v88 = 0;
      v80 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      ++v83;
    }

    while (v83 != v82);
    if (v80)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v80 = v93;
    if (v93)
    {
LABEL_54:
      v94 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  v95 = v102;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v95);
  if (v103)
  {
    v104 = v103;
    operator delete(v103);
  }
}

void sub_25A4E97E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,unsigned long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,signed char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<mlx::core::complex64_t,long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v79 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v96, v12, v10, (v10 - v12) >> 2);
  v13 = v96;
  v14 = 1;
  while (v13 != v97)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v95, 0, sizeof(v95));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v95, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v96, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v79)
  {
    v19 = 0;
    v78 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v80 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v95[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v88, v80 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(v78 + 8 * v23 + 8 * v81) = *(v20 + 8 * v88);
          v45 = v90 - v89;
          v46 = (v90 - v89) >> 2;
          if (v46)
          {
            v47 = v93;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = v93 + 4 * v48;
            v50 = *v49;
            v51 = v89 + 4 * v48;
            v52 = v91;
            v53 = v88;
            if (v46 >= 2 && v50 == *v51 - 1)
            {
              v56 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v56 - 1;
              v57 = 4 * v56;
              v58 = v89 - 8;
              do
              {
                v59 = v55;
                *v49 = 0;
                v53 = (v53 - v52[v48] * (*v51 - 1));
                v88 = v53;
                --v55;
                v49 = &v47[v57 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v51 = &v58[v57];
                v60 = *&v58[4 * v56] - 1;
                v58 -= 4;
                v48 = v55;
              }

              while (v50 == v60);
              v49 = &v47[4 * v56 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v88 = (v53 + v52[v55]);
          }

          v61 = v83 - v82;
          v62 = (v83 - v82) >> 2;
          if (v62)
          {
            v63 = v86;
            v64 = ((v61 << 30) - 0x100000000) >> 32;
            v65 = &v86[4 * v64];
            v66 = *v65;
            v67 = v82 + 4 * v64;
            v68 = __p;
            v69 = v81;
            if (v62 >= 2 && v66 == *v67 - 1)
            {
              v72 = (v61 >> 2) & 0x7FFFFFFF;
              v71 = v72 - 1;
              v73 = 4 * v72;
              v74 = v82 - 8;
              do
              {
                v75 = v71;
                *v65 = 0;
                v69 -= v68[v64] * (*v67 - 1);
                v81 = v69;
                --v71;
                v65 = &v63[v73 - 8];
                v66 = *v65;
                v63 -= 4;
                if (v75 < 2)
                {
                  break;
                }

                v67 = &v74[v73];
                v76 = *&v74[4 * v72] - 1;
                v74 -= 4;
                v64 = v71;
              }

              while (v66 == v76);
              v65 = &v63[4 * v72 - 4];
            }

            else
            {
              v71 = ((v61 << 30) - 0x100000000) >> 32;
            }

            *v65 = v66 + 1;
            v81 = v68[v71] + v69;
          }
        }
      }

      v81 = 0;
      v77 = v86;
      if (v87 - v86 >= 1)
      {
        bzero(v86, v87 - v86);
      }

      v88 = 0;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v19 = v80 + 1;
    }

    while (v80 + 1 != v79);
    if (v77)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v77 = v86;
    if (v86)
    {
LABEL_56:
      v87 = v77;
      operator delete(v77);
    }
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  v88 = v95;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v88);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4EA0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a22);
  a22 = (v22 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a22);
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + 8 * v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + 8 * v51) = vadd_f32(*(v19 + 8 * v45), *(v44 + 8 * v51));
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A4EA6B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v80 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v97, v12, v10, (v10 - v12) >> 2);
  v13 = v97;
  v14 = 1;
  while (v13 != v98)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v96, 0, sizeof(v96));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v96, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v97, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v80)
  {
    v81 = 0;
    v79 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v96[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v89, v81 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v79 + 8 * v22;
        do
        {
          v45 = v44 + 8 * v82;
          v100 = *(v19 + 8 * v89);
          *v45 = std::operator*[abi:ne200100]<float,0>(v45, &v100);
          *(v45 + 4) = v46;
          v47 = v91 - v90;
          v48 = (v91 - v90) >> 2;
          if (v48)
          {
            v49 = v94;
            v50 = ((v47 << 30) - 0x100000000) >> 32;
            v51 = v94 + 4 * v50;
            v52 = *v51;
            v53 = v90 + 4 * v50;
            v54 = v92;
            v55 = v89;
            if (v48 >= 2 && v52 == *v53 - 1)
            {
              v58 = (v47 >> 2) & 0x7FFFFFFF;
              v57 = v58 - 1;
              v59 = 4 * v58;
              v60 = v90 - 8;
              do
              {
                v61 = v57;
                *v51 = 0;
                v55 = (v55 - v54[v50] * (*v53 - 1));
                v89 = v55;
                --v57;
                v51 = &v49[v59 - 8];
                v52 = *v51;
                v49 -= 4;
                if (v61 < 2)
                {
                  break;
                }

                v53 = &v60[v59];
                v62 = *&v60[4 * v58] - 1;
                v60 -= 4;
                v50 = v57;
              }

              while (v52 == v62);
              v51 = &v49[4 * v58 - 4];
            }

            else
            {
              v57 = ((v47 << 30) - 0x100000000) >> 32;
            }

            *v51 = v52 + 1;
            v89 = (v55 + v54[v57]);
          }

          v63 = v84 - v83;
          v64 = (v84 - v83) >> 2;
          if (v64)
          {
            v65 = v87;
            v66 = ((v63 << 30) - 0x100000000) >> 32;
            v67 = &v87[4 * v66];
            v68 = *v67;
            v69 = __p;
            v70 = v82;
            if (v64 >= 2 && (v71 = v83 + 4 * v66, v68 == *v71 - 1))
            {
              v72 = (v63 >> 2) & 0x7FFFFFFF;
              v73 = v72 - 1;
              v74 = 4 * v72;
              v75 = v83 - 8;
              do
              {
                v76 = v73;
                *v67 = 0;
                v70 -= v69[v66] * (*v71 - 1);
                v82 = v70;
                --v73;
                v67 = &v65[v74 - 8];
                v68 = *v67;
                v65 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v71 = &v75[v74];
                v77 = *&v75[4 * v72] - 1;
                v75 -= 4;
                v66 = v73;
              }

              while (v68 == v77);
              v67 = &v65[4 * v72 - 4];
            }

            else
            {
              v73 = ((v63 << 30) - 0x100000000) >> 32;
            }

            *v67 = v68 + 1;
            v82 = v69[v73] + v70;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v82 = 0;
      v78 = v87;
      if (v88 - v87 >= 1)
      {
        bzero(v87, v88 - v87);
      }

      v89 = 0;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      ++v81;
    }

    while (v81 != v80);
    if (v78)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v78 = v87;
    if (v87)
    {
LABEL_54:
      v88 = v78;
      operator delete(v78);
    }
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v89 = v96;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v89);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4EAC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v99, v12, v10, (v10 - v12) >> 2);
  v13 = v99;
  v14 = 1;
  while (v13 != v100)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v98, 0, sizeof(v98));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v98, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v91, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v99, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v19 = 0;
    v81 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v83 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v98[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v91, v83 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v45 = v81 + 8 * v23;
          v46 = (v45 + 8 * v84);
          v47 = *(v20 + 8 * v91);
          v102 = v47;
          if (*v46 > *&v47 || *v46 == *&v47 && v46[1] > *(&v47 + 1))
          {
            v48 = (v45 + 8 * v84);
          }

          else
          {
            v48 = &v102;
          }

          *v46 = *v48;
          v49 = v93 - v92;
          v50 = (v93 - v92) >> 2;
          if (v50)
          {
            v51 = v96;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = v96 + 4 * v52;
            v54 = *v53;
            v55 = v92 + 4 * v52;
            v56 = v94;
            v57 = v91;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v92 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 = (v57 - v56[v52] * (*v55 - 1));
                v91 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v91 = (v57 + v56[v59]);
          }

          v65 = v86 - v85;
          v66 = (v86 - v85) >> 2;
          if (v66)
          {
            v67 = v89;
            v68 = ((v65 << 30) - 0x100000000) >> 32;
            v69 = &v89[4 * v68];
            v70 = *v69;
            v71 = __p;
            v72 = v84;
            if (v66 >= 2 && (v73 = v85 + 4 * v68, v70 == *v73 - 1))
            {
              v74 = (v65 >> 2) & 0x7FFFFFFF;
              v75 = v74 - 1;
              v76 = 4 * v74;
              v77 = v85 - 8;
              do
              {
                v78 = v75;
                *v69 = 0;
                v72 -= v71[v68] * (*v73 - 1);
                v84 = v72;
                --v75;
                v69 = &v67[v76 - 8];
                v70 = *v69;
                v67 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v73 = &v77[v76];
                v79 = *&v77[4 * v74] - 1;
                v77 -= 4;
                v68 = v75;
              }

              while (v70 == v79);
              v69 = &v67[4 * v74 - 4];
            }

            else
            {
              v75 = ((v65 << 30) - 0x100000000) >> 32;
            }

            *v69 = v70 + 1;
            v84 = v71[v75] + v72;
          }
        }
      }

      v84 = 0;
      v80 = v89;
      if (v90 - v89 >= 1)
      {
        bzero(v89, v90 - v89);
      }

      v91 = 0;
      if (v97 - v96 >= 1)
      {
        bzero(v96, v97 - v96);
      }

      v19 = v83 + 1;
    }

    while (v83 + 1 != v82);
    if (v80)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v80 = v89;
    if (v89)
    {
LABEL_59:
      v90 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v91 = v98;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v91);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A4EB1EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned char,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v99, v12, v10, (v10 - v12) >> 2);
  v13 = v99;
  v14 = 1;
  while (v13 != v100)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v98, 0, sizeof(v98));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v98, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v91, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v99, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v19 = 0;
    v81 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v83 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v98[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v91, v83 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v45 = v81 + 8 * v23;
          v46 = (v45 + 8 * v84);
          v47 = *(v20 + 8 * v91);
          v102 = v47;
          if (*&v47 > *v46 || *&v47 == *v46 && *(&v47 + 1) > v46[1])
          {
            v48 = (v45 + 8 * v84);
          }

          else
          {
            v48 = &v102;
          }

          *v46 = *v48;
          v49 = v93 - v92;
          v50 = (v93 - v92) >> 2;
          if (v50)
          {
            v51 = v96;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = v96 + 4 * v52;
            v54 = *v53;
            v55 = v92 + 4 * v52;
            v56 = v94;
            v57 = v91;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v92 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 = (v57 - v56[v52] * (*v55 - 1));
                v91 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v91 = (v57 + v56[v59]);
          }

          v65 = v86 - v85;
          v66 = (v86 - v85) >> 2;
          if (v66)
          {
            v67 = v89;
            v68 = ((v65 << 30) - 0x100000000) >> 32;
            v69 = &v89[4 * v68];
            v70 = *v69;
            v71 = __p;
            v72 = v84;
            if (v66 >= 2 && (v73 = v85 + 4 * v68, v70 == *v73 - 1))
            {
              v74 = (v65 >> 2) & 0x7FFFFFFF;
              v75 = v74 - 1;
              v76 = 4 * v74;
              v77 = v85 - 8;
              do
              {
                v78 = v75;
                *v69 = 0;
                v72 -= v71[v68] * (*v73 - 1);
                v84 = v72;
                --v75;
                v69 = &v67[v76 - 8];
                v70 = *v69;
                v67 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v73 = &v77[v76];
                v79 = *&v77[4 * v74] - 1;
                v77 -= 4;
                v68 = v75;
              }

              while (v70 == v79);
              v69 = &v67[4 * v74 - 4];
            }

            else
            {
              v75 = ((v65 << 30) - 0x100000000) >> 32;
            }

            *v69 = v70 + 1;
            v84 = v71[v75] + v72;
          }
        }
      }

      v84 = 0;
      v80 = v89;
      if (v90 - v89 >= 1)
      {
        bzero(v89, v90 - v89);
      }

      v91 = 0;
      if (v97 - v96 >= 1)
      {
        bzero(v96, v97 - v96);
      }

      v19 = v83 + 1;
    }

    while (v83 + 1 != v82);
    if (v80)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v80 = v89;
    if (v89)
    {
LABEL_59:
      v90 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v91 = v98;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v91);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A4EB798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v79 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v96, v12, v10, (v10 - v12) >> 2);
  v13 = v96;
  v14 = 1;
  while (v13 != v97)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v95, 0, sizeof(v95));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v95, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v96, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v79)
  {
    v19 = 0;
    v78 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v80 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v95[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 2 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v88, v80 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(v78 + 8 * v23 + 8 * v81) = *(v20 + 8 * v88);
          v45 = v90 - v89;
          v46 = (v90 - v89) >> 2;
          if (v46)
          {
            v47 = v93;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = v93 + 4 * v48;
            v50 = *v49;
            v51 = v89 + 4 * v48;
            v52 = v91;
            v53 = v88;
            if (v46 >= 2 && v50 == *v51 - 1)
            {
              v56 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v56 - 1;
              v57 = 4 * v56;
              v58 = v89 - 8;
              do
              {
                v59 = v55;
                *v49 = 0;
                v53 = (v53 - v52[v48] * (*v51 - 1));
                v88 = v53;
                --v55;
                v49 = &v47[v57 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v51 = &v58[v57];
                v60 = *&v58[4 * v56] - 1;
                v58 -= 4;
                v48 = v55;
              }

              while (v50 == v60);
              v49 = &v47[4 * v56 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v88 = (v53 + v52[v55]);
          }

          v61 = v83 - v82;
          v62 = (v83 - v82) >> 2;
          if (v62)
          {
            v63 = v86;
            v64 = ((v61 << 30) - 0x100000000) >> 32;
            v65 = &v86[4 * v64];
            v66 = *v65;
            v67 = v82 + 4 * v64;
            v68 = __p;
            v69 = v81;
            if (v62 >= 2 && v66 == *v67 - 1)
            {
              v72 = (v61 >> 2) & 0x7FFFFFFF;
              v71 = v72 - 1;
              v73 = 4 * v72;
              v74 = v82 - 8;
              do
              {
                v75 = v71;
                *v65 = 0;
                v69 -= v68[v64] * (*v67 - 1);
                v81 = v69;
                --v71;
                v65 = &v63[v73 - 8];
                v66 = *v65;
                v63 -= 4;
                if (v75 < 2)
                {
                  break;
                }

                v67 = &v74[v73];
                v76 = *&v74[4 * v72] - 1;
                v74 -= 4;
                v64 = v71;
              }

              while (v66 == v76);
              v65 = &v63[4 * v72 - 4];
            }

            else
            {
              v71 = ((v61 << 30) - 0x100000000) >> 32;
            }

            *v65 = v66 + 1;
            v81 = v68[v71] + v69;
          }
        }
      }

      v81 = 0;
      v77 = v86;
      if (v87 - v86 >= 1)
      {
        bzero(v86, v87 - v86);
      }

      v88 = 0;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v19 = v80 + 1;
    }

    while (v80 + 1 != v79);
    if (v77)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v77 = v86;
    if (v86)
    {
LABEL_56:
      v87 = v77;
      operator delete(v77);
    }
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  v88 = v95;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v88);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4EBD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a22);
  a22 = (v22 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a22);
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + 8 * v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + 8 * v51) = vadd_f32(*(v19 + 8 * v45), *(v44 + 8 * v51));
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A4EC320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v80 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v97, v12, v10, (v10 - v12) >> 2);
  v13 = v97;
  v14 = 1;
  while (v13 != v98)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v96, 0, sizeof(v96));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v96, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v97, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v80)
  {
    v81 = 0;
    v79 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v96[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v89, v81 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v79 + 8 * v22;
        do
        {
          v45 = v44 + 8 * v82;
          v100 = *(v19 + 8 * v89);
          *v45 = std::operator*[abi:ne200100]<float,0>(v45, &v100);
          *(v45 + 4) = v46;
          v47 = v91 - v90;
          v48 = (v91 - v90) >> 2;
          if (v48)
          {
            v49 = v94;
            v50 = ((v47 << 30) - 0x100000000) >> 32;
            v51 = v94 + 4 * v50;
            v52 = *v51;
            v53 = v90 + 4 * v50;
            v54 = v92;
            v55 = v89;
            if (v48 >= 2 && v52 == *v53 - 1)
            {
              v58 = (v47 >> 2) & 0x7FFFFFFF;
              v57 = v58 - 1;
              v59 = 4 * v58;
              v60 = v90 - 8;
              do
              {
                v61 = v57;
                *v51 = 0;
                v55 = (v55 - v54[v50] * (*v53 - 1));
                v89 = v55;
                --v57;
                v51 = &v49[v59 - 8];
                v52 = *v51;
                v49 -= 4;
                if (v61 < 2)
                {
                  break;
                }

                v53 = &v60[v59];
                v62 = *&v60[4 * v58] - 1;
                v60 -= 4;
                v50 = v57;
              }

              while (v52 == v62);
              v51 = &v49[4 * v58 - 4];
            }

            else
            {
              v57 = ((v47 << 30) - 0x100000000) >> 32;
            }

            *v51 = v52 + 1;
            v89 = (v55 + v54[v57]);
          }

          v63 = v84 - v83;
          v64 = (v84 - v83) >> 2;
          if (v64)
          {
            v65 = v87;
            v66 = ((v63 << 30) - 0x100000000) >> 32;
            v67 = &v87[4 * v66];
            v68 = *v67;
            v69 = __p;
            v70 = v82;
            if (v64 >= 2 && (v71 = v83 + 4 * v66, v68 == *v71 - 1))
            {
              v72 = (v63 >> 2) & 0x7FFFFFFF;
              v73 = v72 - 1;
              v74 = 4 * v72;
              v75 = v83 - 8;
              do
              {
                v76 = v73;
                *v67 = 0;
                v70 -= v69[v66] * (*v71 - 1);
                v82 = v70;
                --v73;
                v67 = &v65[v74 - 8];
                v68 = *v67;
                v65 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v71 = &v75[v74];
                v77 = *&v75[4 * v72] - 1;
                v75 -= 4;
                v66 = v73;
              }

              while (v68 == v77);
              v67 = &v65[4 * v72 - 4];
            }

            else
            {
              v73 = ((v63 << 30) - 0x100000000) >> 32;
            }

            *v67 = v68 + 1;
            v82 = v69[v73] + v70;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v82 = 0;
      v78 = v87;
      if (v88 - v87 >= 1)
      {
        bzero(v87, v88 - v87);
      }

      v89 = 0;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      ++v81;
    }

    while (v81 != v80);
    if (v78)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v78 = v87;
    if (v87)
    {
LABEL_54:
      v88 = v78;
      operator delete(v78);
    }
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v89 = v96;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v89);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4EC8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v99, v12, v10, (v10 - v12) >> 2);
  v13 = v99;
  v14 = 1;
  while (v13 != v100)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v98, 0, sizeof(v98));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v98, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v91, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v99, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v19 = 0;
    v81 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v83 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v98[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 2 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v91, v83 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v45 = v81 + 8 * v23;
          v46 = (v45 + 8 * v84);
          v47 = *(v20 + 8 * v91);
          v102 = v47;
          if (*v46 > *&v47 || *v46 == *&v47 && v46[1] > *(&v47 + 1))
          {
            v48 = (v45 + 8 * v84);
          }

          else
          {
            v48 = &v102;
          }

          *v46 = *v48;
          v49 = v93 - v92;
          v50 = (v93 - v92) >> 2;
          if (v50)
          {
            v51 = v96;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = v96 + 4 * v52;
            v54 = *v53;
            v55 = v92 + 4 * v52;
            v56 = v94;
            v57 = v91;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v92 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 = (v57 - v56[v52] * (*v55 - 1));
                v91 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v91 = (v57 + v56[v59]);
          }

          v65 = v86 - v85;
          v66 = (v86 - v85) >> 2;
          if (v66)
          {
            v67 = v89;
            v68 = ((v65 << 30) - 0x100000000) >> 32;
            v69 = &v89[4 * v68];
            v70 = *v69;
            v71 = __p;
            v72 = v84;
            if (v66 >= 2 && (v73 = v85 + 4 * v68, v70 == *v73 - 1))
            {
              v74 = (v65 >> 2) & 0x7FFFFFFF;
              v75 = v74 - 1;
              v76 = 4 * v74;
              v77 = v85 - 8;
              do
              {
                v78 = v75;
                *v69 = 0;
                v72 -= v71[v68] * (*v73 - 1);
                v84 = v72;
                --v75;
                v69 = &v67[v76 - 8];
                v70 = *v69;
                v67 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v73 = &v77[v76];
                v79 = *&v77[4 * v74] - 1;
                v77 -= 4;
                v68 = v75;
              }

              while (v70 == v79);
              v69 = &v67[4 * v74 - 4];
            }

            else
            {
              v75 = ((v65 << 30) - 0x100000000) >> 32;
            }

            *v69 = v70 + 1;
            v84 = v71[v75] + v72;
          }
        }
      }

      v84 = 0;
      v80 = v89;
      if (v90 - v89 >= 1)
      {
        bzero(v89, v90 - v89);
      }

      v91 = 0;
      if (v97 - v96 >= 1)
      {
        bzero(v96, v97 - v96);
      }

      v19 = v83 + 1;
    }

    while (v83 + 1 != v82);
    if (v80)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v80 = v89;
    if (v89)
    {
LABEL_59:
      v90 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v91 = v98;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v91);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A4ECE58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned short,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v99, v12, v10, (v10 - v12) >> 2);
  v13 = v99;
  v14 = 1;
  while (v13 != v100)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v98, 0, sizeof(v98));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v98, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v91, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v99, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v19 = 0;
    v81 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v83 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v98[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 2 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v91, v83 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v45 = v81 + 8 * v23;
          v46 = (v45 + 8 * v84);
          v47 = *(v20 + 8 * v91);
          v102 = v47;
          if (*&v47 > *v46 || *&v47 == *v46 && *(&v47 + 1) > v46[1])
          {
            v48 = (v45 + 8 * v84);
          }

          else
          {
            v48 = &v102;
          }

          *v46 = *v48;
          v49 = v93 - v92;
          v50 = (v93 - v92) >> 2;
          if (v50)
          {
            v51 = v96;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = v96 + 4 * v52;
            v54 = *v53;
            v55 = v92 + 4 * v52;
            v56 = v94;
            v57 = v91;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v92 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 = (v57 - v56[v52] * (*v55 - 1));
                v91 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v91 = (v57 + v56[v59]);
          }

          v65 = v86 - v85;
          v66 = (v86 - v85) >> 2;
          if (v66)
          {
            v67 = v89;
            v68 = ((v65 << 30) - 0x100000000) >> 32;
            v69 = &v89[4 * v68];
            v70 = *v69;
            v71 = __p;
            v72 = v84;
            if (v66 >= 2 && (v73 = v85 + 4 * v68, v70 == *v73 - 1))
            {
              v74 = (v65 >> 2) & 0x7FFFFFFF;
              v75 = v74 - 1;
              v76 = 4 * v74;
              v77 = v85 - 8;
              do
              {
                v78 = v75;
                *v69 = 0;
                v72 -= v71[v68] * (*v73 - 1);
                v84 = v72;
                --v75;
                v69 = &v67[v76 - 8];
                v70 = *v69;
                v67 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v73 = &v77[v76];
                v79 = *&v77[4 * v74] - 1;
                v77 -= 4;
                v68 = v75;
              }

              while (v70 == v79);
              v69 = &v67[4 * v74 - 4];
            }

            else
            {
              v75 = ((v65 << 30) - 0x100000000) >> 32;
            }

            *v69 = v70 + 1;
            v84 = v71[v75] + v72;
          }
        }
      }

      v84 = 0;
      v80 = v89;
      if (v90 - v89 >= 1)
      {
        bzero(v89, v90 - v89);
      }

      v91 = 0;
      if (v97 - v96 >= 1)
      {
        bzero(v96, v97 - v96);
      }

      v19 = v83 + 1;
    }

    while (v83 + 1 != v82);
    if (v80)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v80 = v89;
    if (v89)
    {
LABEL_59:
      v90 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v91 = v98;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v91);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A4ED404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v79 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v96, v12, v10, (v10 - v12) >> 2);
  v13 = v96;
  v14 = 1;
  while (v13 != v97)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v95, 0, sizeof(v95));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v95, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v96, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v79)
  {
    v19 = 0;
    v78 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v80 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v95[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 4 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v88, v80 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(v78 + 8 * v23 + 8 * v81) = *(v20 + 8 * v88);
          v45 = v90 - v89;
          v46 = (v90 - v89) >> 2;
          if (v46)
          {
            v47 = v93;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = v93 + 4 * v48;
            v50 = *v49;
            v51 = v89 + 4 * v48;
            v52 = v91;
            v53 = v88;
            if (v46 >= 2 && v50 == *v51 - 1)
            {
              v56 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v56 - 1;
              v57 = 4 * v56;
              v58 = v89 - 8;
              do
              {
                v59 = v55;
                *v49 = 0;
                v53 = (v53 - v52[v48] * (*v51 - 1));
                v88 = v53;
                --v55;
                v49 = &v47[v57 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v51 = &v58[v57];
                v60 = *&v58[4 * v56] - 1;
                v58 -= 4;
                v48 = v55;
              }

              while (v50 == v60);
              v49 = &v47[4 * v56 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v88 = (v53 + v52[v55]);
          }

          v61 = v83 - v82;
          v62 = (v83 - v82) >> 2;
          if (v62)
          {
            v63 = v86;
            v64 = ((v61 << 30) - 0x100000000) >> 32;
            v65 = &v86[4 * v64];
            v66 = *v65;
            v67 = v82 + 4 * v64;
            v68 = __p;
            v69 = v81;
            if (v62 >= 2 && v66 == *v67 - 1)
            {
              v72 = (v61 >> 2) & 0x7FFFFFFF;
              v71 = v72 - 1;
              v73 = 4 * v72;
              v74 = v82 - 8;
              do
              {
                v75 = v71;
                *v65 = 0;
                v69 -= v68[v64] * (*v67 - 1);
                v81 = v69;
                --v71;
                v65 = &v63[v73 - 8];
                v66 = *v65;
                v63 -= 4;
                if (v75 < 2)
                {
                  break;
                }

                v67 = &v74[v73];
                v76 = *&v74[4 * v72] - 1;
                v74 -= 4;
                v64 = v71;
              }

              while (v66 == v76);
              v65 = &v63[4 * v72 - 4];
            }

            else
            {
              v71 = ((v61 << 30) - 0x100000000) >> 32;
            }

            *v65 = v66 + 1;
            v81 = v68[v71] + v69;
          }
        }
      }

      v81 = 0;
      v77 = v86;
      if (v87 - v86 >= 1)
      {
        bzero(v86, v87 - v86);
      }

      v88 = 0;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v19 = v80 + 1;
    }

    while (v80 + 1 != v79);
    if (v77)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v77 = v86;
    if (v86)
    {
LABEL_56:
      v87 = v77;
      operator delete(v77);
    }
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  v88 = v95;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v88);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4ED974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a22);
  a22 = (v22 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a22);
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + 8 * v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + 8 * v51) = vadd_f32(*(v19 + 8 * v45), *(v44 + 8 * v51));
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}

void sub_25A4EDF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a28);
  a28 = (v28 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a28);
  v30 = *(v28 - 112);
  if (v30)
  {
    *(v28 - 104) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v80 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v97 = 0;
  v98 = 0;
  v99 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v97, v12, v10, (v10 - v12) >> 2);
  v13 = v97;
  v14 = 1;
  while (v13 != v98)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v96, 0, sizeof(v96));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v96, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v89, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v82, &v97, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v80)
  {
    v81 = 0;
    v79 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v96[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 4 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v89, v81 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v79 + 8 * v22;
        do
        {
          v45 = v44 + 8 * v82;
          v100 = *(v19 + 8 * v89);
          *v45 = std::operator*[abi:ne200100]<float,0>(v45, &v100);
          *(v45 + 4) = v46;
          v47 = v91 - v90;
          v48 = (v91 - v90) >> 2;
          if (v48)
          {
            v49 = v94;
            v50 = ((v47 << 30) - 0x100000000) >> 32;
            v51 = v94 + 4 * v50;
            v52 = *v51;
            v53 = v90 + 4 * v50;
            v54 = v92;
            v55 = v89;
            if (v48 >= 2 && v52 == *v53 - 1)
            {
              v58 = (v47 >> 2) & 0x7FFFFFFF;
              v57 = v58 - 1;
              v59 = 4 * v58;
              v60 = v90 - 8;
              do
              {
                v61 = v57;
                *v51 = 0;
                v55 = (v55 - v54[v50] * (*v53 - 1));
                v89 = v55;
                --v57;
                v51 = &v49[v59 - 8];
                v52 = *v51;
                v49 -= 4;
                if (v61 < 2)
                {
                  break;
                }

                v53 = &v60[v59];
                v62 = *&v60[4 * v58] - 1;
                v60 -= 4;
                v50 = v57;
              }

              while (v52 == v62);
              v51 = &v49[4 * v58 - 4];
            }

            else
            {
              v57 = ((v47 << 30) - 0x100000000) >> 32;
            }

            *v51 = v52 + 1;
            v89 = (v55 + v54[v57]);
          }

          v63 = v84 - v83;
          v64 = (v84 - v83) >> 2;
          if (v64)
          {
            v65 = v87;
            v66 = ((v63 << 30) - 0x100000000) >> 32;
            v67 = &v87[4 * v66];
            v68 = *v67;
            v69 = __p;
            v70 = v82;
            if (v64 >= 2 && (v71 = v83 + 4 * v66, v68 == *v71 - 1))
            {
              v72 = (v63 >> 2) & 0x7FFFFFFF;
              v73 = v72 - 1;
              v74 = 4 * v72;
              v75 = v83 - 8;
              do
              {
                v76 = v73;
                *v67 = 0;
                v70 -= v69[v66] * (*v71 - 1);
                v82 = v70;
                --v73;
                v67 = &v65[v74 - 8];
                v68 = *v67;
                v65 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v71 = &v75[v74];
                v77 = *&v75[4 * v72] - 1;
                v75 -= 4;
                v66 = v73;
              }

              while (v68 == v77);
              v67 = &v65[4 * v72 - 4];
            }

            else
            {
              v73 = ((v63 << 30) - 0x100000000) >> 32;
            }

            *v67 = v68 + 1;
            v82 = v69[v73] + v70;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v82 = 0;
      v78 = v87;
      if (v88 - v87 >= 1)
      {
        bzero(v87, v88 - v87);
      }

      v89 = 0;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      ++v81;
    }

    while (v81 != v80);
    if (v78)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v78 = v87;
    if (v87)
    {
LABEL_54:
      v88 = v78;
      operator delete(v78);
    }
  }

  if (__p)
  {
    v86 = __p;
    operator delete(__p);
  }

  if (v83)
  {
    v84 = v83;
    operator delete(v83);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  v89 = v96;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v89);
  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }
}

void sub_25A4EE4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v99, v12, v10, (v10 - v12) >> 2);
  v13 = v99;
  v14 = 1;
  while (v13 != v100)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v98, 0, sizeof(v98));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v98, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v91, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v99, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v19 = 0;
    v81 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v83 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v98[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 4 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v91, v83 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v45 = v81 + 8 * v23;
          v46 = (v45 + 8 * v84);
          v47 = *(v20 + 8 * v91);
          v102 = v47;
          if (*v46 > *&v47 || *v46 == *&v47 && v46[1] > *(&v47 + 1))
          {
            v48 = (v45 + 8 * v84);
          }

          else
          {
            v48 = &v102;
          }

          *v46 = *v48;
          v49 = v93 - v92;
          v50 = (v93 - v92) >> 2;
          if (v50)
          {
            v51 = v96;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = v96 + 4 * v52;
            v54 = *v53;
            v55 = v92 + 4 * v52;
            v56 = v94;
            v57 = v91;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v92 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 = (v57 - v56[v52] * (*v55 - 1));
                v91 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v91 = (v57 + v56[v59]);
          }

          v65 = v86 - v85;
          v66 = (v86 - v85) >> 2;
          if (v66)
          {
            v67 = v89;
            v68 = ((v65 << 30) - 0x100000000) >> 32;
            v69 = &v89[4 * v68];
            v70 = *v69;
            v71 = __p;
            v72 = v84;
            if (v66 >= 2 && (v73 = v85 + 4 * v68, v70 == *v73 - 1))
            {
              v74 = (v65 >> 2) & 0x7FFFFFFF;
              v75 = v74 - 1;
              v76 = 4 * v74;
              v77 = v85 - 8;
              do
              {
                v78 = v75;
                *v69 = 0;
                v72 -= v71[v68] * (*v73 - 1);
                v84 = v72;
                --v75;
                v69 = &v67[v76 - 8];
                v70 = *v69;
                v67 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v73 = &v77[v76];
                v79 = *&v77[4 * v74] - 1;
                v77 -= 4;
                v68 = v75;
              }

              while (v70 == v79);
              v69 = &v67[4 * v74 - 4];
            }

            else
            {
              v75 = ((v65 << 30) - 0x100000000) >> 32;
            }

            *v69 = v70 + 1;
            v84 = v71[v75] + v72;
          }
        }
      }

      v84 = 0;
      v80 = v89;
      if (v90 - v89 >= 1)
      {
        bzero(v89, v90 - v89);
      }

      v91 = 0;
      if (v97 - v96 >= 1)
      {
        bzero(v96, v97 - v96);
      }

      v19 = v83 + 1;
    }

    while (v83 + 1 != v82);
    if (v80)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v80 = v89;
    if (v89)
    {
LABEL_59:
      v90 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v91 = v98;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v91);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A4EEA68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned int,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v82 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v99 = 0;
  v100 = 0;
  v101 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v99, v12, v10, (v10 - v12) >> 2);
  v13 = v99;
  v14 = 1;
  while (v13 != v100)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v98, 0, sizeof(v98));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v98, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v91, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v99, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v82)
  {
    v19 = 0;
    v81 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v83 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v98[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 4 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v91, v83 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v45 = v81 + 8 * v23;
          v46 = (v45 + 8 * v84);
          v47 = *(v20 + 8 * v91);
          v102 = v47;
          if (*&v47 > *v46 || *&v47 == *v46 && *(&v47 + 1) > v46[1])
          {
            v48 = (v45 + 8 * v84);
          }

          else
          {
            v48 = &v102;
          }

          *v46 = *v48;
          v49 = v93 - v92;
          v50 = (v93 - v92) >> 2;
          if (v50)
          {
            v51 = v96;
            v52 = ((v49 << 30) - 0x100000000) >> 32;
            v53 = v96 + 4 * v52;
            v54 = *v53;
            v55 = v92 + 4 * v52;
            v56 = v94;
            v57 = v91;
            if (v50 >= 2 && v54 == *v55 - 1)
            {
              v60 = (v49 >> 2) & 0x7FFFFFFF;
              v59 = v60 - 1;
              v61 = 4 * v60;
              v62 = v92 - 8;
              do
              {
                v63 = v59;
                *v53 = 0;
                v57 = (v57 - v56[v52] * (*v55 - 1));
                v91 = v57;
                --v59;
                v53 = &v51[v61 - 8];
                v54 = *v53;
                v51 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v55 = &v62[v61];
                v64 = *&v62[4 * v60] - 1;
                v62 -= 4;
                v52 = v59;
              }

              while (v54 == v64);
              v53 = &v51[4 * v60 - 4];
            }

            else
            {
              v59 = ((v49 << 30) - 0x100000000) >> 32;
            }

            *v53 = v54 + 1;
            v91 = (v57 + v56[v59]);
          }

          v65 = v86 - v85;
          v66 = (v86 - v85) >> 2;
          if (v66)
          {
            v67 = v89;
            v68 = ((v65 << 30) - 0x100000000) >> 32;
            v69 = &v89[4 * v68];
            v70 = *v69;
            v71 = __p;
            v72 = v84;
            if (v66 >= 2 && (v73 = v85 + 4 * v68, v70 == *v73 - 1))
            {
              v74 = (v65 >> 2) & 0x7FFFFFFF;
              v75 = v74 - 1;
              v76 = 4 * v74;
              v77 = v85 - 8;
              do
              {
                v78 = v75;
                *v69 = 0;
                v72 -= v71[v68] * (*v73 - 1);
                v84 = v72;
                --v75;
                v69 = &v67[v76 - 8];
                v70 = *v69;
                v67 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v73 = &v77[v76];
                v79 = *&v77[4 * v74] - 1;
                v77 -= 4;
                v68 = v75;
              }

              while (v70 == v79);
              v69 = &v67[4 * v74 - 4];
            }

            else
            {
              v75 = ((v65 << 30) - 0x100000000) >> 32;
            }

            *v69 = v70 + 1;
            v84 = v71[v75] + v72;
          }
        }
      }

      v84 = 0;
      v80 = v89;
      if (v90 - v89 >= 1)
      {
        bzero(v89, v90 - v89);
      }

      v91 = 0;
      if (v97 - v96 >= 1)
      {
        bzero(v96, v97 - v96);
      }

      v19 = v83 + 1;
    }

    while (v83 + 1 != v82);
    if (v80)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v80 = v89;
    if (v89)
    {
LABEL_59:
      v90 = v80;
      operator delete(v80);
    }
  }

  if (__p)
  {
    v88 = __p;
    operator delete(__p);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }

  if (v92)
  {
    v93 = v92;
    operator delete(v92);
  }

  v91 = v98;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v91);
  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }
}

void sub_25A4EF014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a23);
  a23 = (v23 - 144);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a23);
  v25 = *(v23 - 120);
  if (v25)
  {
    *(v23 - 112) = v25;
    operator delete(v25);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v79 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v96, v12, v10, (v10 - v12) >> 2);
  v13 = v96;
  v14 = 1;
  while (v13 != v97)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v95, 0, sizeof(v95));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v95, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v88, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v81, &v96, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v79)
  {
    v19 = 0;
    v78 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v80 = v19;
      v21 = *a3;
      if (a3[1] == *a3)
      {
        v23 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = *(*a4 + 4 * v22);
          v25 = (v95[0] + 80 * v22);
          v26 = v25[1];
          v27 = *v25;
          v28 = v25[2] - v26;
          if ((v28 >> 2))
          {
            v29 = v25[7];
            v30 = ((v28 << 30) - 0x100000000) >> 32;
            v31 = (v29 + 4 * v30);
            v32 = *v31;
            v33 = (v26 + 4 * v30);
            v34 = v25[4];
            if ((v28 >> 2) >= 2 && v32 == *v33 - 1)
            {
              v38 = (v28 >> 2) & 0x7FFFFFFF;
              v37 = v38 - 1;
              v39 = 4 * v38;
              v40 = v26 - 8;
              v36 = *v25;
              do
              {
                v41 = v37;
                *v31 = 0;
                v36 -= *(v34 + 8 * v30) * (*v33 - 1);
                *v25 = v36;
                --v37;
                v31 = (v29 + v39 - 8);
                v32 = *v31;
                v29 -= 4;
                if (v41 < 2)
                {
                  break;
                }

                v33 = (v40 + v39);
                v42 = *(v40 + 4 * v38) - 1;
                v40 -= 4;
                v30 = v37;
              }

              while (v32 == v42);
              v31 = (v29 + 4 * v38 - 4);
            }

            else
            {
              v36 = *v25;
              v37 = ((v28 << 30) - 0x100000000) >> 32;
            }

            *v31 = v32 + 1;
            *v25 = *(v34 + 8 * v37) + v36;
          }

          v43 = *(*(*(v21 + 16 * v22) + 152) + 8 * v27);
          mlx::core::array::shape(a2, v24);
          v23 += *((*a2)[3] + 8 * v24) * v43;
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v88, v80 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(v78 + 8 * v23 + 8 * v81) = *(v20 + 8 * v88);
          v45 = v90 - v89;
          v46 = (v90 - v89) >> 2;
          if (v46)
          {
            v47 = v93;
            v48 = ((v45 << 30) - 0x100000000) >> 32;
            v49 = v93 + 4 * v48;
            v50 = *v49;
            v51 = v89 + 4 * v48;
            v52 = v91;
            v53 = v88;
            if (v46 >= 2 && v50 == *v51 - 1)
            {
              v56 = (v45 >> 2) & 0x7FFFFFFF;
              v55 = v56 - 1;
              v57 = 4 * v56;
              v58 = v89 - 8;
              do
              {
                v59 = v55;
                *v49 = 0;
                v53 = (v53 - v52[v48] * (*v51 - 1));
                v88 = v53;
                --v55;
                v49 = &v47[v57 - 8];
                v50 = *v49;
                v47 -= 4;
                if (v59 < 2)
                {
                  break;
                }

                v51 = &v58[v57];
                v60 = *&v58[4 * v56] - 1;
                v58 -= 4;
                v48 = v55;
              }

              while (v50 == v60);
              v49 = &v47[4 * v56 - 4];
            }

            else
            {
              v55 = ((v45 << 30) - 0x100000000) >> 32;
            }

            *v49 = v50 + 1;
            v88 = (v53 + v52[v55]);
          }

          v61 = v83 - v82;
          v62 = (v83 - v82) >> 2;
          if (v62)
          {
            v63 = v86;
            v64 = ((v61 << 30) - 0x100000000) >> 32;
            v65 = &v86[4 * v64];
            v66 = *v65;
            v67 = v82 + 4 * v64;
            v68 = __p;
            v69 = v81;
            if (v62 >= 2 && v66 == *v67 - 1)
            {
              v72 = (v61 >> 2) & 0x7FFFFFFF;
              v71 = v72 - 1;
              v73 = 4 * v72;
              v74 = v82 - 8;
              do
              {
                v75 = v71;
                *v65 = 0;
                v69 -= v68[v64] * (*v67 - 1);
                v81 = v69;
                --v71;
                v65 = &v63[v73 - 8];
                v66 = *v65;
                v63 -= 4;
                if (v75 < 2)
                {
                  break;
                }

                v67 = &v74[v73];
                v76 = *&v74[4 * v72] - 1;
                v74 -= 4;
                v64 = v71;
              }

              while (v66 == v76);
              v65 = &v63[4 * v72 - 4];
            }

            else
            {
              v71 = ((v61 << 30) - 0x100000000) >> 32;
            }

            *v65 = v66 + 1;
            v81 = v68[v71] + v69;
          }
        }
      }

      v81 = 0;
      v77 = v86;
      if (v87 - v86 >= 1)
      {
        bzero(v86, v87 - v86);
      }

      v88 = 0;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v19 = v80 + 1;
    }

    while (v80 + 1 != v79);
    if (v77)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v77 = v86;
    if (v86)
    {
LABEL_56:
      v87 = v77;
      operator delete(v77);
    }
  }

  if (__p)
  {
    v85 = __p;
    operator delete(__p);
  }

  if (v82)
  {
    v83 = v82;
    operator delete(v82);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  v88 = v95;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v88);
  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }
}

void sub_25A4EF584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a22);
  a22 = (v22 - 136);
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&a22);
  v24 = *(v22 - 112);
  if (v24)
  {
    *(v22 - 104) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
{
  v8 = *a3;
  v9 = a3[1] - *a3;
  v10 = (*a1)[1];
  if ((v9 & 0xFFFFFFFF0) != 0)
  {
    v11 = *(*v8 + 48);
  }

  else
  {
    v11 = 1;
  }

  v81 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v102, v12, v10, (v10 - v12) >> 2);
  v13 = v102;
  v14 = 1;
  while (v13 != v103)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v101, 0, sizeof(v101));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v101, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v94, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v87, &v102, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v82 = 0;
    v80 = (*a2)[19];
    v19 = (*a1)[19];
    do
    {
      v20 = *a3;
      if (a3[1] == *a3)
      {
        v22 = 0;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        do
        {
          v23 = *(*a4 + 4 * v21);
          v24 = (v101[0] + 80 * v21);
          v25 = v24[1];
          v26 = *v24;
          v27 = v24[2] - v25;
          if ((v27 >> 2))
          {
            v28 = v24[7];
            v29 = ((v27 << 30) - 0x100000000) >> 32;
            v30 = (v28 + 4 * v29);
            v31 = *v30;
            v32 = (v25 + 4 * v29);
            v33 = v24[4];
            if ((v27 >> 2) >= 2 && v31 == *v32 - 1)
            {
              v37 = (v27 >> 2) & 0x7FFFFFFF;
              v36 = v37 - 1;
              v38 = 4 * v37;
              v39 = v25 - 8;
              v35 = *v24;
              do
              {
                v40 = v36;
                *v30 = 0;
                v35 -= *(v33 + 8 * v29) * (*v32 - 1);
                *v24 = v35;
                --v36;
                v30 = (v28 + v38 - 8);
                v31 = *v30;
                v28 -= 4;
                if (v40 < 2)
                {
                  break;
                }

                v32 = (v39 + v38);
                v41 = *(v39 + 4 * v37) - 1;
                v39 -= 4;
                v29 = v36;
              }

              while (v31 == v41);
              v30 = (v28 + 4 * v37 - 4);
            }

            else
            {
              v35 = *v24;
              v36 = ((v27 << 30) - 0x100000000) >> 32;
            }

            *v30 = v31 + 1;
            *v24 = *(v33 + 8 * v36) + v35;
          }

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v94, v82 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v80 + 8 * v22;
        v45 = v94;
        v46 = v97;
        v47 = (v96 - v95) >> 2;
        v48 = (((v96 - v95) << 30) - 0x100000000) >> 32;
        v49 = v99 + 4 * v48;
        v50 = v95 + 4 * v48;
        v86 = v99;
        v51 = v87;
        v52 = __p;
        v53 = (v89 - v88) >> 2;
        v54 = (((v89 - v88) << 30) - 0x100000000) >> 32;
        v85 = v92;
        v55 = &v92[4 * v54];
        v56 = 4 * (v47 & 0x7FFFFFFF);
        v57 = 4 * (v53 & 0x7FFFFFFF);
        v83 = v88 - 8;
        v84 = v95 - 8;
        v58 = v88 + 4 * v54;
        do
        {
          *(v44 + 8 * v51) = vadd_f32(*(v19 + 8 * v45), *(v44 + 8 * v51));
          if (v47)
          {
            v59 = *v49;
            if (v47 >= 2 && v59 == *v50 - 1)
            {
              v61 = (v47 & 0x7FFFFFFF) - 1;
              v60 = v86;
              v62 = v84;
              v63 = v50;
              v64 = v49;
              v65 = v48;
              do
              {
                v66 = v61;
                *v64 = 0;
                v45 = (v45 - v46[v65] * (*v63 - 1));
                v94 = v45;
                --v61;
                v64 = &v60[v56 - 8];
                v59 = *v64;
                v60 -= 4;
                if (v66 < 2)
                {
                  break;
                }

                v63 = &v62[v56];
                v67 = *&v62[4 * (v47 & 0x7FFFFFFF)] - 1;
                v62 -= 4;
                v65 = v61;
              }

              while (v59 == v67);
              v68 = &v60[v56 - 4];
            }

            else
            {
              v61 = v48;
              v68 = v49;
            }

            *v68 = v59 + 1;
            v45 = (v45 + v46[v61]);
            v94 = v45;
          }

          if (v53)
          {
            v69 = *v55;
            if (v53 >= 2 && v69 == *v58 - 1)
            {
              v71 = (v53 & 0x7FFFFFFF) - 1;
              v70 = v85;
              v72 = v83;
              v73 = v58;
              v74 = v55;
              v75 = v54;
              do
              {
                v76 = v71;
                *v74 = 0;
                v51 -= v52[v75] * (*v73 - 1);
                v87 = v51;
                --v71;
                v74 = &v70[v57 - 8];
                v69 = *v74;
                v70 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v73 = &v72[v57];
                v77 = *&v72[4 * (v53 & 0x7FFFFFFF)] - 1;
                v72 -= 4;
                v75 = v71;
              }

              while (v69 == v77);
              v78 = &v70[v57 - 4];
            }

            else
            {
              v71 = v54;
              v78 = v55;
            }

            *v78 = v69 + 1;
            v51 += v52[v71];
            v87 = v51;
          }

          ++v43;
        }

        while (v43 != v14);
      }

      v87 = 0;
      v79 = v92;
      if (v93 - v92 >= 1)
      {
        bzero(v92, v93 - v92);
      }

      v94 = 0;
      if (v100 - v99 >= 1)
      {
        bzero(v99, v100 - v99);
      }

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v79 = v92;
    if (v92)
    {
LABEL_52:
      v93 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v91 = __p;
    operator delete(__p);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
  }

  v94 = v101;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v94);
  if (v102)
  {
    v103 = v102;
    operator delete(v102);
  }
}