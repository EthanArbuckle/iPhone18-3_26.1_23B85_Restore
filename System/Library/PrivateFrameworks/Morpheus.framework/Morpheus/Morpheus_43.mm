void sub_25A4CF648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned char,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) + *(v44 + 8 * v51);
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

void sub_25A4CFC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned char,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) * *(v44 + 8 * v51);
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

void sub_25A4D01C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) > v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D0780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned char,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) < v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D0D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned short,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45);
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

void sub_25A4D12F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) + *(v44 + 8 * v51);
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

void sub_25A4D18B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) * *(v44 + 8 * v51);
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

void sub_25A4D1E6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) > v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D242C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned short,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + 2 * v26);
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) < v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D29EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned int,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45);
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

void sub_25A4D2FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned int,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) + *(v44 + 8 * v51);
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

void sub_25A4D355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) * *(v44 + 8 * v51);
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

void sub_25A4D3B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) > v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D40D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned int,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) < v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D4698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned long long,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45);
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

void sub_25A4D4C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) + *(v44 + 8 * v51);
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

void sub_25A4D5208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45) * *(v44 + 8 * v51);
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

void sub_25A4D57C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) > v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D5D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,unsigned long long,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          mlx::core::array::shape(a2, v23);
          v22 += *((*a2)[3] + 8 * v23) * v42;
          ++v21;
          v20 = *a3;
        }

        while (v21 < (a3[1] - *a3) >> 4);
      }

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v43 = 0;
        v44 = v81 + 8 * v22;
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
          v59 = *(v19 + 8 * v45);
          if (*(v44 + 8 * v51) < v59)
          {
            v59 = *(v44 + 8 * v51);
          }

          *(v44 + 8 * v51) = v59;
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

void sub_25A4D6344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,signed char,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
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

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + 8 * v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + 8 * v52) = *(v19 + 8 * v46);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
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

void sub_25A4D6908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,signed char,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
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

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + 8 * v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + 8 * v52) = *(v19 + 8 * v46) + *(v45 + 8 * v52);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
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

void sub_25A4D6ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,signed char,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
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

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + 8 * v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + 8 * v52) = *(v19 + 8 * v46) * *(v45 + 8 * v52);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
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

void sub_25A4D74A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,signed char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
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
        v45 = v82 + 8 * v22;
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
          v60 = *(v19 + 8 * v46);
          if (*(v45 + 8 * v52) > v60)
          {
            v60 = *(v45 + 8 * v52);
          }

          *(v45 + 8 * v52) = v60;
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

void sub_25A4D7A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,signed char,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + v26);
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
        v45 = v82 + 8 * v22;
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
          v60 = *(v19 + 8 * v46);
          if (*(v45 + 8 * v52) < v60)
          {
            v60 = *(v45 + 8 * v52);
          }

          *(v45 + 8 * v52) = v60;
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

void sub_25A4D8040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,short,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + 8 * v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + 8 * v52) = *(v19 + 8 * v46);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
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

void sub_25A4D8604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + 8 * v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + 8 * v52) = *(v19 + 8 * v46) + *(v45 + 8 * v52);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
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

void sub_25A4D8BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

      mlx::core::ContiguousIterator::seek(&v95, v83 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v81 + 8 * v22;
        v46 = v95;
        v47 = v98;
        v48 = (v97 - v96) >> 2;
        v49 = (((v97 - v96) << 30) - 0x100000000) >> 32;
        v50 = v100 + 4 * v49;
        v51 = v96 + 4 * v49;
        v87 = v100;
        v52 = v88;
        v53 = __p;
        v54 = (v90 - v89) >> 2;
        v55 = (((v90 - v89) << 30) - 0x100000000) >> 32;
        v86 = v93;
        v56 = &v93[4 * v55];
        v57 = 4 * (v48 & 0x7FFFFFFF);
        v58 = 4 * (v54 & 0x7FFFFFFF);
        v84 = v89 - 8;
        v85 = v96 - 8;
        v59 = v89 + 4 * v55;
        do
        {
          *(v45 + 8 * v52) = *(v19 + 8 * v46) * *(v45 + 8 * v52);
          if (v48)
          {
            v60 = *v50;
            if (v48 >= 2 && v60 == *v51 - 1)
            {
              v62 = (v48 & 0x7FFFFFFF) - 1;
              v61 = v87;
              v63 = v85;
              v64 = v51;
              v65 = v50;
              v66 = v49;
              do
              {
                v67 = v62;
                *v65 = 0;
                v46 = (v46 - v47[v66] * (*v64 - 1));
                v95 = v46;
                --v62;
                v65 = &v61[v57 - 8];
                v60 = *v65;
                v61 -= 4;
                if (v67 < 2)
                {
                  break;
                }

                v64 = &v63[v57];
                v68 = *&v63[4 * (v48 & 0x7FFFFFFF)] - 1;
                v63 -= 4;
                v66 = v62;
              }

              while (v60 == v68);
              v69 = &v61[v57 - 4];
            }

            else
            {
              v62 = v49;
              v69 = v50;
            }

            *v69 = v60 + 1;
            v46 = (v46 + v47[v62]);
            v95 = v46;
          }

          if (v54)
          {
            v70 = *v56;
            if (v54 >= 2 && v70 == *v59 - 1)
            {
              v72 = (v54 & 0x7FFFFFFF) - 1;
              v71 = v86;
              v73 = v84;
              v74 = v59;
              v75 = v56;
              v76 = v55;
              do
              {
                v77 = v72;
                *v75 = 0;
                v52 -= v53[v76] * (*v74 - 1);
                v88 = v52;
                --v72;
                v75 = &v71[v58 - 8];
                v70 = *v75;
                v71 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v74 = &v73[v58];
                v78 = *&v73[4 * (v54 & 0x7FFFFFFF)] - 1;
                v73 -= 4;
                v76 = v72;
              }

              while (v70 == v78);
              v79 = &v71[v58 - 4];
            }

            else
            {
              v72 = v55;
              v79 = v56;
            }

            *v79 = v70 + 1;
            v52 += v53[v72];
            v88 = v52;
          }

          ++v44;
        }

        while (v44 != v14);
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

void sub_25A4D919C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
        v45 = v82 + 8 * v22;
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
          v60 = *(v19 + 8 * v46);
          if (*(v45 + 8 * v52) > v60)
          {
            v60 = *(v45 + 8 * v52);
          }

          *(v45 + 8 * v52) = v60;
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

void sub_25A4D976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,short,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
        v45 = v82 + 8 * v22;
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
          v60 = *(v19 + 8 * v46);
          if (*(v45 + 8 * v52) < v60)
          {
            v60 = *(v45 + 8 * v52);
          }

          *(v45 + 8 * v52) = v60;
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

void sub_25A4D9D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<double,int,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v22 += *((*a2)[3] + 8 * v23) * (v42 + (mlx::core::array::shape(a2, v23) & (v42 >> 31)));
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
          *(v44 + 8 * v51) = *(v19 + 8 * v45);
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