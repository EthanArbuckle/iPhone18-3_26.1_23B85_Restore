void sub_25A48F960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) *= *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A48FF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) > v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A4904F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned int,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) < v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A490AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned long long,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) = *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A491080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) += *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A491648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) *= *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A491C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) > v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A4921DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,unsigned long long,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) < v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A4927A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,signed char,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v83 + 8 * v23;
        v47 = (v98 - v97) >> 2;
        v48 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v49 = v99;
        v88 = v101;
        v50 = v101 + 4 * v48;
        v51 = v97 + 4 * v48;
        v52 = (v91 - v90) >> 2;
        v53 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v54 = v94;
        v55 = __p;
        v56 = &v94[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v59 = v90 + 4 * v53;
        do
        {
          *(v46 + 8 * v89) = *(v20 + 8 * v96);
          if (v47)
          {
            v60 = *v50;
            v61 = v96;
            if (v47 >= 2 && v60 == *v51 - 1)
            {
              v63 = (v47 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v51;
              v66 = v50;
              v67 = v48;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v49[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v57 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v47 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v48;
              v70 = v50;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v49[v63]);
          }

          if (v52)
          {
            v71 = *v56;
            v72 = v89;
            if (v52 >= 2 && v71 == *v59 - 1)
            {
              v73 = v54;
              v74 = v86;
              v75 = (v52 & 0x7FFFFFFF) - 1;
              v76 = v59;
              v77 = v56;
              v78 = v53;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v55[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v58 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v58];
                v80 = *&v74[4 * (v52 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v58 - 4];
            }

            else
            {
              v75 = v53;
              v81 = v56;
            }

            *v81 = v71 + 1;
            v89 = v55[v75] + v72;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A492D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,signed char,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v83 + 8 * v23;
        v47 = (v98 - v97) >> 2;
        v48 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v49 = v99;
        v88 = v101;
        v50 = v101 + 4 * v48;
        v51 = v97 + 4 * v48;
        v52 = (v91 - v90) >> 2;
        v53 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v54 = v94;
        v55 = __p;
        v56 = &v94[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v59 = v90 + 4 * v53;
        do
        {
          *(v46 + 8 * v89) += *(v20 + 8 * v96);
          if (v47)
          {
            v60 = *v50;
            v61 = v96;
            if (v47 >= 2 && v60 == *v51 - 1)
            {
              v63 = (v47 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v51;
              v66 = v50;
              v67 = v48;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v49[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v57 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v47 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v48;
              v70 = v50;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v49[v63]);
          }

          if (v52)
          {
            v71 = *v56;
            v72 = v89;
            if (v52 >= 2 && v71 == *v59 - 1)
            {
              v73 = v54;
              v74 = v86;
              v75 = (v52 & 0x7FFFFFFF) - 1;
              v76 = v59;
              v77 = v56;
              v78 = v53;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v55[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v58 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v58];
                v80 = *&v74[4 * (v52 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v58 - 4];
            }

            else
            {
              v75 = v53;
              v81 = v56;
            }

            *v81 = v71 + 1;
            v89 = v55[v75] + v72;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A493350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,signed char,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v83 + 8 * v23;
        v47 = (v98 - v97) >> 2;
        v48 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v49 = v99;
        v88 = v101;
        v50 = v101 + 4 * v48;
        v51 = v97 + 4 * v48;
        v52 = (v91 - v90) >> 2;
        v53 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v54 = v94;
        v55 = __p;
        v56 = &v94[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v59 = v90 + 4 * v53;
        do
        {
          *(v46 + 8 * v89) *= *(v20 + 8 * v96);
          if (v47)
          {
            v60 = *v50;
            v61 = v96;
            if (v47 >= 2 && v60 == *v51 - 1)
            {
              v63 = (v47 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v51;
              v66 = v50;
              v67 = v48;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v49[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v57 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v47 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v48;
              v70 = v50;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v49[v63]);
          }

          if (v52)
          {
            v71 = *v56;
            v72 = v89;
            if (v52 >= 2 && v71 == *v59 - 1)
            {
              v73 = v54;
              v74 = v86;
              v75 = (v52 & 0x7FFFFFFF) - 1;
              v76 = v59;
              v77 = v56;
              v78 = v53;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v55[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v58 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v58];
                v80 = *&v74[4 * (v52 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v58 - 4];
            }

            else
            {
              v75 = v53;
              v81 = v56;
            }

            *v81 = v71 + 1;
            v89 = v55[v75] + v72;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A493928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,signed char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v85 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v105, v12, v10, (v10 - v12) >> 2);
  v13 = v105;
  v14 = 1;
  while (v13 != v106)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v104, 0, sizeof(v104));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v104, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v97, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v105, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v85)
  {
    v19 = 0;
    v84 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v104[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v86 = v19;
      mlx::core::ContiguousIterator::seek(&v97, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v84 + 8 * v23;
        v47 = (v99 - v98) >> 2;
        v48 = (((v99 - v98) << 30) - 0x100000000) >> 32;
        v49 = v100;
        v89 = v102;
        v50 = v102 + 4 * v48;
        v51 = v98 + 4 * v48;
        v52 = (v92 - v91) >> 2;
        v53 = (((v92 - v91) << 30) - 0x100000000) >> 32;
        v54 = v95;
        v55 = __p;
        v56 = &v95[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v88 = v98 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v87 = v91 - 8;
        v59 = v91 + 4 * v53;
        do
        {
          v60 = *(v20 + 8 * v97);
          if (*(v46 + 8 * v90) > v60)
          {
            v60 = *(v46 + 8 * v90);
          }

          *(v46 + 8 * v90) = v60;
          if (v47)
          {
            v61 = *v50;
            v62 = v97;
            if (v47 >= 2 && v61 == *v51 - 1)
            {
              v64 = (v47 & 0x7FFFFFFF) - 1;
              v63 = v89;
              v65 = v88;
              v66 = v51;
              v67 = v50;
              v68 = v48;
              do
              {
                v69 = v64;
                *v67 = 0;
                v62 = (v62 - v49[v68] * (*v66 - 1));
                v97 = v62;
                --v64;
                v67 = &v63[v57 - 8];
                v61 = *v67;
                v63 -= 4;
                if (v69 < 2)
                {
                  break;
                }

                v66 = &v65[v57];
                v70 = *&v65[4 * (v47 & 0x7FFFFFFF)] - 1;
                v65 -= 4;
                v68 = v64;
              }

              while (v61 == v70);
              v71 = &v63[v57 - 4];
            }

            else
            {
              v64 = v48;
              v71 = v50;
            }

            *v71 = v61 + 1;
            v97 = (v62 + v49[v64]);
          }

          if (v52)
          {
            v72 = *v56;
            v73 = v90;
            if (v52 >= 2 && v72 == *v59 - 1)
            {
              v74 = v54;
              v75 = v87;
              v76 = (v52 & 0x7FFFFFFF) - 1;
              v77 = v59;
              v78 = v56;
              v79 = v53;
              do
              {
                v80 = v76;
                *v78 = 0;
                v73 -= v55[v79] * (*v77 - 1);
                v90 = v73;
                --v76;
                v78 = &v74[v58 - 8];
                v72 = *v78;
                v74 -= 4;
                if (v80 < 2)
                {
                  break;
                }

                v77 = &v75[v58];
                v81 = *&v75[4 * (v52 & 0x7FFFFFFF)] - 1;
                v75 -= 4;
                v79 = v76;
              }

              while (v72 == v81);
              v82 = &v74[v58 - 4];
            }

            else
            {
              v76 = v53;
              v82 = v56;
            }

            *v82 = v72 + 1;
            v90 = v55[v76] + v73;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v90 = 0;
      v83 = v95;
      if (v96 - v95 >= 1)
      {
        bzero(v95, v96 - v95);
      }

      v97 = 0;
      if (v103 - v102 >= 1)
      {
        bzero(v102, v103 - v102);
      }

      v19 = v86 + 1;
    }

    while (v86 + 1 != v85);
    if (v83)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v83 = v95;
    if (v95)
    {
LABEL_56:
      v96 = v83;
      operator delete(v83);
    }
  }

  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
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

  v97 = v104;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_25A493F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,signed char,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v85 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v105, v12, v10, (v10 - v12) >> 2);
  v13 = v105;
  v14 = 1;
  while (v13 != v106)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v104, 0, sizeof(v104));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v104, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v97, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v105, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v85)
  {
    v19 = 0;
    v84 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v104[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v86 = v19;
      mlx::core::ContiguousIterator::seek(&v97, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v84 + 8 * v23;
        v47 = (v99 - v98) >> 2;
        v48 = (((v99 - v98) << 30) - 0x100000000) >> 32;
        v49 = v100;
        v89 = v102;
        v50 = v102 + 4 * v48;
        v51 = v98 + 4 * v48;
        v52 = (v92 - v91) >> 2;
        v53 = (((v92 - v91) << 30) - 0x100000000) >> 32;
        v54 = v95;
        v55 = __p;
        v56 = &v95[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v88 = v98 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v87 = v91 - 8;
        v59 = v91 + 4 * v53;
        do
        {
          v60 = *(v20 + 8 * v97);
          if (*(v46 + 8 * v90) < v60)
          {
            v60 = *(v46 + 8 * v90);
          }

          *(v46 + 8 * v90) = v60;
          if (v47)
          {
            v61 = *v50;
            v62 = v97;
            if (v47 >= 2 && v61 == *v51 - 1)
            {
              v64 = (v47 & 0x7FFFFFFF) - 1;
              v63 = v89;
              v65 = v88;
              v66 = v51;
              v67 = v50;
              v68 = v48;
              do
              {
                v69 = v64;
                *v67 = 0;
                v62 = (v62 - v49[v68] * (*v66 - 1));
                v97 = v62;
                --v64;
                v67 = &v63[v57 - 8];
                v61 = *v67;
                v63 -= 4;
                if (v69 < 2)
                {
                  break;
                }

                v66 = &v65[v57];
                v70 = *&v65[4 * (v47 & 0x7FFFFFFF)] - 1;
                v65 -= 4;
                v68 = v64;
              }

              while (v61 == v70);
              v71 = &v63[v57 - 4];
            }

            else
            {
              v64 = v48;
              v71 = v50;
            }

            *v71 = v61 + 1;
            v97 = (v62 + v49[v64]);
          }

          if (v52)
          {
            v72 = *v56;
            v73 = v90;
            if (v52 >= 2 && v72 == *v59 - 1)
            {
              v74 = v54;
              v75 = v87;
              v76 = (v52 & 0x7FFFFFFF) - 1;
              v77 = v59;
              v78 = v56;
              v79 = v53;
              do
              {
                v80 = v76;
                *v78 = 0;
                v73 -= v55[v79] * (*v77 - 1);
                v90 = v73;
                --v76;
                v78 = &v74[v58 - 8];
                v72 = *v78;
                v74 -= 4;
                if (v80 < 2)
                {
                  break;
                }

                v77 = &v75[v58];
                v81 = *&v75[4 * (v52 & 0x7FFFFFFF)] - 1;
                v75 -= 4;
                v79 = v76;
              }

              while (v72 == v81);
              v82 = &v74[v58 - 4];
            }

            else
            {
              v76 = v53;
              v82 = v56;
            }

            *v82 = v72 + 1;
            v90 = v55[v76] + v73;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v90 = 0;
      v83 = v95;
      if (v96 - v95 >= 1)
      {
        bzero(v95, v96 - v95);
      }

      v97 = 0;
      if (v103 - v102 >= 1)
      {
        bzero(v102, v103 - v102);
      }

      v19 = v86 + 1;
    }

    while (v86 + 1 != v85);
    if (v83)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v83 = v95;
    if (v95)
    {
LABEL_56:
      v96 = v83;
      operator delete(v83);
    }
  }

  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
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

  v97 = v104;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_25A4944E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,short,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v83 + 8 * v23;
        v47 = (v98 - v97) >> 2;
        v48 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v49 = v99;
        v88 = v101;
        v50 = v101 + 4 * v48;
        v51 = v97 + 4 * v48;
        v52 = (v91 - v90) >> 2;
        v53 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v54 = v94;
        v55 = __p;
        v56 = &v94[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v59 = v90 + 4 * v53;
        do
        {
          *(v46 + 8 * v89) = *(v20 + 8 * v96);
          if (v47)
          {
            v60 = *v50;
            v61 = v96;
            if (v47 >= 2 && v60 == *v51 - 1)
            {
              v63 = (v47 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v51;
              v66 = v50;
              v67 = v48;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v49[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v57 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v47 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v48;
              v70 = v50;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v49[v63]);
          }

          if (v52)
          {
            v71 = *v56;
            v72 = v89;
            if (v52 >= 2 && v71 == *v59 - 1)
            {
              v73 = v54;
              v74 = v86;
              v75 = (v52 & 0x7FFFFFFF) - 1;
              v76 = v59;
              v77 = v56;
              v78 = v53;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v55[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v58 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v58];
                v80 = *&v74[4 * (v52 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v58 - 4];
            }

            else
            {
              v75 = v53;
              v81 = v56;
            }

            *v81 = v71 + 1;
            v89 = v55[v75] + v72;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A494AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v83 + 8 * v23;
        v47 = (v98 - v97) >> 2;
        v48 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v49 = v99;
        v88 = v101;
        v50 = v101 + 4 * v48;
        v51 = v97 + 4 * v48;
        v52 = (v91 - v90) >> 2;
        v53 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v54 = v94;
        v55 = __p;
        v56 = &v94[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v59 = v90 + 4 * v53;
        do
        {
          *(v46 + 8 * v89) += *(v20 + 8 * v96);
          if (v47)
          {
            v60 = *v50;
            v61 = v96;
            if (v47 >= 2 && v60 == *v51 - 1)
            {
              v63 = (v47 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v51;
              v66 = v50;
              v67 = v48;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v49[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v57 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v47 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v48;
              v70 = v50;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v49[v63]);
          }

          if (v52)
          {
            v71 = *v56;
            v72 = v89;
            if (v52 >= 2 && v71 == *v59 - 1)
            {
              v73 = v54;
              v74 = v86;
              v75 = (v52 & 0x7FFFFFFF) - 1;
              v76 = v59;
              v77 = v56;
              v78 = v53;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v55[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v58 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v58];
                v80 = *&v74[4 * (v52 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v58 - 4];
            }

            else
            {
              v75 = v53;
              v81 = v56;
            }

            *v81 = v71 + 1;
            v89 = v55[v75] + v72;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A495088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v83 + 8 * v23;
        v47 = (v98 - v97) >> 2;
        v48 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v49 = v99;
        v88 = v101;
        v50 = v101 + 4 * v48;
        v51 = v97 + 4 * v48;
        v52 = (v91 - v90) >> 2;
        v53 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v54 = v94;
        v55 = __p;
        v56 = &v94[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v59 = v90 + 4 * v53;
        do
        {
          *(v46 + 8 * v89) *= *(v20 + 8 * v96);
          if (v47)
          {
            v60 = *v50;
            v61 = v96;
            if (v47 >= 2 && v60 == *v51 - 1)
            {
              v63 = (v47 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v51;
              v66 = v50;
              v67 = v48;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v49[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v57 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v57];
                v69 = *&v64[4 * (v47 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v57 - 4];
            }

            else
            {
              v63 = v48;
              v70 = v50;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v49[v63]);
          }

          if (v52)
          {
            v71 = *v56;
            v72 = v89;
            if (v52 >= 2 && v71 == *v59 - 1)
            {
              v73 = v54;
              v74 = v86;
              v75 = (v52 & 0x7FFFFFFF) - 1;
              v76 = v59;
              v77 = v56;
              v78 = v53;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v55[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v58 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v58];
                v80 = *&v74[4 * (v52 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v58 - 4];
            }

            else
            {
              v75 = v53;
              v81 = v56;
            }

            *v81 = v71 + 1;
            v89 = v55[v75] + v72;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A495660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v85 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v105, v12, v10, (v10 - v12) >> 2);
  v13 = v105;
  v14 = 1;
  while (v13 != v106)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v104, 0, sizeof(v104));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v104, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v97, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v105, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v85)
  {
    v19 = 0;
    v84 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v104[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v86 = v19;
      mlx::core::ContiguousIterator::seek(&v97, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v84 + 8 * v23;
        v47 = (v99 - v98) >> 2;
        v48 = (((v99 - v98) << 30) - 0x100000000) >> 32;
        v49 = v100;
        v89 = v102;
        v50 = v102 + 4 * v48;
        v51 = v98 + 4 * v48;
        v52 = (v92 - v91) >> 2;
        v53 = (((v92 - v91) << 30) - 0x100000000) >> 32;
        v54 = v95;
        v55 = __p;
        v56 = &v95[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v88 = v98 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v87 = v91 - 8;
        v59 = v91 + 4 * v53;
        do
        {
          v60 = *(v20 + 8 * v97);
          if (*(v46 + 8 * v90) > v60)
          {
            v60 = *(v46 + 8 * v90);
          }

          *(v46 + 8 * v90) = v60;
          if (v47)
          {
            v61 = *v50;
            v62 = v97;
            if (v47 >= 2 && v61 == *v51 - 1)
            {
              v64 = (v47 & 0x7FFFFFFF) - 1;
              v63 = v89;
              v65 = v88;
              v66 = v51;
              v67 = v50;
              v68 = v48;
              do
              {
                v69 = v64;
                *v67 = 0;
                v62 = (v62 - v49[v68] * (*v66 - 1));
                v97 = v62;
                --v64;
                v67 = &v63[v57 - 8];
                v61 = *v67;
                v63 -= 4;
                if (v69 < 2)
                {
                  break;
                }

                v66 = &v65[v57];
                v70 = *&v65[4 * (v47 & 0x7FFFFFFF)] - 1;
                v65 -= 4;
                v68 = v64;
              }

              while (v61 == v70);
              v71 = &v63[v57 - 4];
            }

            else
            {
              v64 = v48;
              v71 = v50;
            }

            *v71 = v61 + 1;
            v97 = (v62 + v49[v64]);
          }

          if (v52)
          {
            v72 = *v56;
            v73 = v90;
            if (v52 >= 2 && v72 == *v59 - 1)
            {
              v74 = v54;
              v75 = v87;
              v76 = (v52 & 0x7FFFFFFF) - 1;
              v77 = v59;
              v78 = v56;
              v79 = v53;
              do
              {
                v80 = v76;
                *v78 = 0;
                v73 -= v55[v79] * (*v77 - 1);
                v90 = v73;
                --v76;
                v78 = &v74[v58 - 8];
                v72 = *v78;
                v74 -= 4;
                if (v80 < 2)
                {
                  break;
                }

                v77 = &v75[v58];
                v81 = *&v75[4 * (v52 & 0x7FFFFFFF)] - 1;
                v75 -= 4;
                v79 = v76;
              }

              while (v72 == v81);
              v82 = &v74[v58 - 4];
            }

            else
            {
              v76 = v53;
              v82 = v56;
            }

            *v82 = v72 + 1;
            v90 = v55[v76] + v73;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v90 = 0;
      v83 = v95;
      if (v96 - v95 >= 1)
      {
        bzero(v95, v96 - v95);
      }

      v97 = 0;
      if (v103 - v102 >= 1)
      {
        bzero(v102, v103 - v102);
      }

      v19 = v86 + 1;
    }

    while (v86 + 1 != v85);
    if (v83)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v83 = v95;
    if (v95)
    {
LABEL_56:
      v96 = v83;
      operator delete(v83);
    }
  }

  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
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

  v97 = v104;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_25A495C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,short,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v85 = v11;
  v12 = ((v10 - (**a1 + (*a2)[1]) + **a2) & 0xFFFFFFFFFFFFFFFCLL) + **a1;
  v105 = 0;
  v106 = 0;
  v107 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v105, v12, v10, (v10 - v12) >> 2);
  v13 = v105;
  v14 = 1;
  while (v13 != v106)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v104, 0, sizeof(v104));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v104, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v97, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v90, &v105, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v85)
  {
    v19 = 0;
    v84 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v104[0] + 80 * v22);
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
          v44 = mlx::core::array::shape(a2, v24);
          if (v43 >= 0)
          {
            v44 = 0;
          }

          v23 += *((*a2)[3] + 8 * v24) * (v44 + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v86 = v19;
      mlx::core::ContiguousIterator::seek(&v97, v19 * v14);
      if (v14)
      {
        v45 = 0;
        v46 = v84 + 8 * v23;
        v47 = (v99 - v98) >> 2;
        v48 = (((v99 - v98) << 30) - 0x100000000) >> 32;
        v49 = v100;
        v89 = v102;
        v50 = v102 + 4 * v48;
        v51 = v98 + 4 * v48;
        v52 = (v92 - v91) >> 2;
        v53 = (((v92 - v91) << 30) - 0x100000000) >> 32;
        v54 = v95;
        v55 = __p;
        v56 = &v95[4 * v53];
        v57 = 4 * (v47 & 0x7FFFFFFF);
        v88 = v98 - 8;
        v58 = 4 * (v52 & 0x7FFFFFFF);
        v87 = v91 - 8;
        v59 = v91 + 4 * v53;
        do
        {
          v60 = *(v20 + 8 * v97);
          if (*(v46 + 8 * v90) < v60)
          {
            v60 = *(v46 + 8 * v90);
          }

          *(v46 + 8 * v90) = v60;
          if (v47)
          {
            v61 = *v50;
            v62 = v97;
            if (v47 >= 2 && v61 == *v51 - 1)
            {
              v64 = (v47 & 0x7FFFFFFF) - 1;
              v63 = v89;
              v65 = v88;
              v66 = v51;
              v67 = v50;
              v68 = v48;
              do
              {
                v69 = v64;
                *v67 = 0;
                v62 = (v62 - v49[v68] * (*v66 - 1));
                v97 = v62;
                --v64;
                v67 = &v63[v57 - 8];
                v61 = *v67;
                v63 -= 4;
                if (v69 < 2)
                {
                  break;
                }

                v66 = &v65[v57];
                v70 = *&v65[4 * (v47 & 0x7FFFFFFF)] - 1;
                v65 -= 4;
                v68 = v64;
              }

              while (v61 == v70);
              v71 = &v63[v57 - 4];
            }

            else
            {
              v64 = v48;
              v71 = v50;
            }

            *v71 = v61 + 1;
            v97 = (v62 + v49[v64]);
          }

          if (v52)
          {
            v72 = *v56;
            v73 = v90;
            if (v52 >= 2 && v72 == *v59 - 1)
            {
              v74 = v54;
              v75 = v87;
              v76 = (v52 & 0x7FFFFFFF) - 1;
              v77 = v59;
              v78 = v56;
              v79 = v53;
              do
              {
                v80 = v76;
                *v78 = 0;
                v73 -= v55[v79] * (*v77 - 1);
                v90 = v73;
                --v76;
                v78 = &v74[v58 - 8];
                v72 = *v78;
                v74 -= 4;
                if (v80 < 2)
                {
                  break;
                }

                v77 = &v75[v58];
                v81 = *&v75[4 * (v52 & 0x7FFFFFFF)] - 1;
                v75 -= 4;
                v79 = v76;
              }

              while (v72 == v81);
              v82 = &v74[v58 - 4];
            }

            else
            {
              v76 = v53;
              v82 = v56;
            }

            *v82 = v72 + 1;
            v90 = v55[v76] + v73;
          }

          ++v45;
        }

        while (v45 != v14);
      }

      v90 = 0;
      v83 = v95;
      if (v96 - v95 >= 1)
      {
        bzero(v95, v96 - v95);
      }

      v97 = 0;
      if (v103 - v102 >= 1)
      {
        bzero(v102, v103 - v102);
      }

      v19 = v86 + 1;
    }

    while (v86 + 1 != v85);
    if (v83)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v83 = v95;
    if (v95)
    {
LABEL_56:
      v96 = v83;
      operator delete(v83);
    }
  }

  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v102)
  {
    v103 = v102;
    operator delete(v102);
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

  v97 = v104;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v97);
  if (v105)
  {
    v106 = v105;
    operator delete(v105);
  }
}

void sub_25A496218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,int,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) = *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A4967E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,int,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) += *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A496DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) *= *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A497380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) > v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A497954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,int,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) < v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A497F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,long long,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) = *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A4984F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) += *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A498AC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v102[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v84 = v19;
      mlx::core::ContiguousIterator::seek(&v95, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v82 + 8 * v23;
        v46 = (v97 - v96) >> 2;
        v47 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v48 = v98;
        v87 = v100;
        v49 = v100 + 4 * v47;
        v50 = v96 + 4 * v47;
        v51 = (v90 - v89) >> 2;
        v52 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v53 = v93;
        v54 = __p;
        v55 = &v93[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v86 = v96 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v85 = v89 - 8;
        v58 = v89 + 4 * v52;
        do
        {
          *(v45 + 8 * v88) *= *(v20 + 8 * v95);
          if (v46)
          {
            v59 = *v49;
            v60 = v95;
            if (v46 >= 2 && v59 == *v50 - 1)
            {
              v62 = (v46 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v86;
              v64 = v50;
              v65 = v49;
              v66 = v47;
              do
              {
                v67 = v62;
                *v65 = 0;
                v60 = (v60 - v48[v66] * (*v64 - 1));
                v95 = v60;
                --v62;
                v65 = &v61[v56 - 8];
                v59 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v56];
                v68 = *&v63[4 * (v46 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v59 == v68);
              v69 = &v61[v56 - 4];
            }

            else
            {
              v62 = v47;
              v69 = v49;
            }

            *v69 = v59 + 1;
            v95 = (v60 + v48[v62]);
          }

          if (v51)
          {
            v70 = *v55;
            v71 = v88;
            if (v51 >= 2 && v70 == *v58 - 1)
            {
              v72 = v53;
              v73 = v85;
              v74 = (v51 & 0x7FFFFFFF) - 1;
              v75 = v58;
              v76 = v55;
              v77 = v52;
              do
              {
                v78 = v74;
                *v76 = 0;
                v71 -= v54[v77] * (*v75 - 1);
                v88 = v71;
                --v74;
                v76 = &v72[v57 - 8];
                v70 = *v76;
                v72 -= 4;
                if (v78 < 2)
                {
                  break;
                }

                v75 = &v73[v57];
                v79 = *&v73[4 * (v51 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v77 = v74;
              }

              while (v70 == v79);
              v80 = &v72[v57 - 4];
            }

            else
            {
              v74 = v52;
              v80 = v55;
            }

            *v80 = v70 + 1;
            v88 = v54[v74] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v88 = 0;
      v81 = v93;
      if (v94 - v93 >= 1)
      {
        bzero(v93, v94 - v93);
      }

      v95 = 0;
      if (v101 - v100 >= 1)
      {
        bzero(v100, v101 - v100);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v81 = v93;
    if (v93)
    {
LABEL_52:
      v94 = v81;
      operator delete(v81);
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

void sub_25A49909C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) > v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A499674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<unsigned long long,long long,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

  v84 = v11;
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
  if (v84)
  {
    v19 = 0;
    v83 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
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
          v25 = (v103[0] + 80 * v22);
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
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
          ++v22;
          v21 = *a3;
        }

        while (v22 < (a3[1] - *a3) >> 4);
      }

      v85 = v19;
      mlx::core::ContiguousIterator::seek(&v96, v19 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v83 + 8 * v23;
        v46 = (v98 - v97) >> 2;
        v47 = (((v98 - v97) << 30) - 0x100000000) >> 32;
        v48 = v99;
        v88 = v101;
        v49 = v101 + 4 * v47;
        v50 = v97 + 4 * v47;
        v51 = (v91 - v90) >> 2;
        v52 = (((v91 - v90) << 30) - 0x100000000) >> 32;
        v53 = v94;
        v54 = __p;
        v55 = &v94[4 * v52];
        v56 = 4 * (v46 & 0x7FFFFFFF);
        v87 = v97 - 8;
        v57 = 4 * (v51 & 0x7FFFFFFF);
        v86 = v90 - 8;
        v58 = v90 + 4 * v52;
        do
        {
          v59 = *(v20 + 8 * v96);
          if (*(v45 + 8 * v89) < v59)
          {
            v59 = *(v45 + 8 * v89);
          }

          *(v45 + 8 * v89) = v59;
          if (v46)
          {
            v60 = *v49;
            v61 = v96;
            if (v46 >= 2 && v60 == *v50 - 1)
            {
              v63 = (v46 & 0x7FFFFFFF) - 1;
              v62 = v88;
              v64 = v87;
              v65 = v50;
              v66 = v49;
              v67 = v47;
              do
              {
                v68 = v63;
                *v66 = 0;
                v61 = (v61 - v48[v67] * (*v65 - 1));
                v96 = v61;
                --v63;
                v66 = &v62[v56 - 8];
                v60 = *v66;
                v62 -= 4;
                if (v68 < 2)
                {
                  break;
                }

                v65 = &v64[v56];
                v69 = *&v64[4 * (v46 & 0x7FFFFFFF)] - 1;
                v64 -= 4;
                v67 = v63;
              }

              while (v60 == v69);
              v70 = &v62[v56 - 4];
            }

            else
            {
              v63 = v47;
              v70 = v49;
            }

            *v70 = v60 + 1;
            v96 = (v61 + v48[v63]);
          }

          if (v51)
          {
            v71 = *v55;
            v72 = v89;
            if (v51 >= 2 && v71 == *v58 - 1)
            {
              v73 = v53;
              v74 = v86;
              v75 = (v51 & 0x7FFFFFFF) - 1;
              v76 = v58;
              v77 = v55;
              v78 = v52;
              do
              {
                v79 = v75;
                *v77 = 0;
                v72 -= v54[v78] * (*v76 - 1);
                v89 = v72;
                --v75;
                v77 = &v73[v57 - 8];
                v71 = *v77;
                v73 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v76 = &v74[v57];
                v80 = *&v74[4 * (v51 & 0x7FFFFFFF)] - 1;
                v74 -= 4;
                v78 = v75;
              }

              while (v71 == v80);
              v81 = &v73[v57 - 4];
            }

            else
            {
              v75 = v52;
              v81 = v55;
            }

            *v81 = v71 + 1;
            v89 = v54[v75] + v72;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v89 = 0;
      v82 = v94;
      if (v95 - v94 >= 1)
      {
        bzero(v94, v95 - v94);
      }

      v96 = 0;
      if (v102 - v101 >= 1)
      {
        bzero(v101, v102 - v101);
      }

      v19 = v85 + 1;
    }

    while (v85 + 1 != v84);
    if (v82)
    {
      goto LABEL_54;
    }
  }

  else
  {
    v82 = v94;
    if (v94)
    {
LABEL_54:
      v95 = v82;
      operator delete(v82);
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

void sub_25A499C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::dispatch_scatter_inds<signed char,unsigned char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,unsigned char,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,unsigned char,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,unsigned char,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,unsigned char,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,unsigned char,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,unsigned short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,unsigned short,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,unsigned short,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,unsigned short,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,unsigned short,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,unsigned short,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,unsigned int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,unsigned int,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,unsigned int,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,unsigned int,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,unsigned int,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,unsigned int,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,unsigned long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,unsigned long long,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,unsigned long long,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,unsigned long long,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,unsigned long long,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,unsigned long long,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,signed char>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,signed char,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,signed char,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,signed char,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,signed char,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,signed char,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,short>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,short,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,short,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,short,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,short,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,short,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,int>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,int,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,int,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,int,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,int,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,int,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::dispatch_scatter_inds<signed char,long long>(uint64_t **a1, uint64_t *a2, uint64_t **a3, void *a4, int a5)
{
  if (a5 <= 1)
  {
    if (a5)
    {
      if (a5 == 1)
      {
        mlx::core::scatter<signed char,long long,mlx::core::Min>(a3, a1, a2, a4);
      }
    }

    else
    {
      mlx::core::scatter<signed char,long long,mlx::core::Max>(a3, a1, a2, a4);
    }
  }

  else
  {
    switch(a5)
    {
      case 2:
        mlx::core::scatter<unsigned char,long long,mlx::core::Sum>(a3, a1, a2, a4);
        break;
      case 3:
        mlx::core::scatter<unsigned char,long long,mlx::core::Prod>(a3, a1, a2, a4);
        break;
      case 4:
        mlx::core::scatter<unsigned char,long long,mlx::core::None>(a3, a1, a2, a4);
        break;
    }
  }
}

void mlx::core::scatter<signed char,unsigned char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  v98 = 0;
  v99 = 0;
  v100 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v98, v12, v10, (v10 - v12) >> 2);
  v13 = v98;
  v14 = 1;
  while (v13 != v99)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v97, 0, sizeof(v97));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v97, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v90, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v98, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v81)
  {
    v19 = 0;
    v80 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v82 = v19;
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
          v25 = (v97[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v90, v82 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v80 + v23;
        do
        {
          v46 = *(v90 + v20);
          if (*(v45 + v83) > v46)
          {
            LOBYTE(v46) = *(v45 + v83);
          }

          *(v45 + v83) = v46;
          v47 = v92 - v91;
          v48 = (v92 - v91) >> 2;
          if (v48)
          {
            v49 = v95;
            v50 = ((v47 << 30) - 0x100000000) >> 32;
            v51 = v95 + 4 * v50;
            v52 = *v51;
            v53 = v91 + 4 * v50;
            v54 = v93;
            v55 = v90;
            if (v48 >= 2 && v52 == *v53 - 1)
            {
              v58 = (v47 >> 2) & 0x7FFFFFFF;
              v57 = v58 - 1;
              v59 = 4 * v58;
              v60 = v91 - 8;
              do
              {
                v61 = v57;
                *v51 = 0;
                v55 = (v55 - v54[v50] * (*v53 - 1));
                v90 = v55;
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
            v90 = (v55 + v54[v57]);
          }

          v63 = v85 - v84;
          v64 = (v85 - v84) >> 2;
          if (v64)
          {
            v65 = v88;
            v66 = ((v63 << 30) - 0x100000000) >> 32;
            v67 = &v88[4 * v66];
            v68 = *v67;
            v69 = v84 + 4 * v66;
            v70 = __p;
            v71 = v83;
            if (v64 >= 2 && v68 == *v69 - 1)
            {
              v74 = (v63 >> 2) & 0x7FFFFFFF;
              v73 = v74 - 1;
              v75 = 4 * v74;
              v76 = v84 - 8;
              do
              {
                v77 = v73;
                *v67 = 0;
                v71 -= v70[v66] * (*v69 - 1);
                v83 = v71;
                --v73;
                v67 = &v65[v75 - 8];
                v68 = *v67;
                v65 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v69 = &v76[v75];
                v78 = *&v76[4 * v74] - 1;
                v76 -= 4;
                v66 = v73;
              }

              while (v68 == v78);
              v67 = &v65[4 * v74 - 4];
            }

            else
            {
              v73 = ((v63 << 30) - 0x100000000) >> 32;
            }

            *v67 = v68 + 1;
            v83 = v70[v73] + v71;
          }

          ++v44;
        }

        while (v44 != v14);
      }

      v83 = 0;
      v79 = v88;
      if (v89 - v88 >= 1)
      {
        bzero(v88, v89 - v88);
      }

      v90 = 0;
      if (v96 - v95 >= 1)
      {
        bzero(v95, v96 - v95);
      }

      v19 = v82 + 1;
    }

    while (v82 + 1 != v81);
    if (v79)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v79 = v88;
    if (v88)
    {
LABEL_58:
      v89 = v79;
      operator delete(v79);
    }
  }

  if (__p)
  {
    v87 = __p;
    operator delete(__p);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v95)
  {
    v96 = v95;
    operator delete(v95);
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

  v90 = v97;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v90);
  if (v98)
  {
    v99 = v98;
    operator delete(v98);
  }
}