void sub_25A4EFB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
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

void sub_25A4F00C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v43 = *(*(*(v21 + 16 * v22) + 152) + 8 * v27);
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

void sub_25A4F0678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,unsigned long long,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v43 = *(*(*(v21 + 16 * v22) + 152) + 8 * v27);
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

void sub_25A4F0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
    v19 = 0;
    v79 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v81 = v19;
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
          v25 = (v96[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v89, v81 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(v79 + 8 * v23 + 8 * v82) = *(v20 + 8 * v89);
          v46 = v91 - v90;
          v47 = (v91 - v90) >> 2;
          if (v47)
          {
            v48 = v94;
            v49 = ((v46 << 30) - 0x100000000) >> 32;
            v50 = v94 + 4 * v49;
            v51 = *v50;
            v52 = v90 + 4 * v49;
            v53 = v92;
            v54 = v89;
            if (v47 >= 2 && v51 == *v52 - 1)
            {
              v57 = (v46 >> 2) & 0x7FFFFFFF;
              v56 = v57 - 1;
              v58 = 4 * v57;
              v59 = v90 - 8;
              do
              {
                v60 = v56;
                *v50 = 0;
                v54 = (v54 - v53[v49] * (*v52 - 1));
                v89 = v54;
                --v56;
                v50 = &v48[v58 - 8];
                v51 = *v50;
                v48 -= 4;
                if (v60 < 2)
                {
                  break;
                }

                v52 = &v59[v58];
                v61 = *&v59[4 * v57] - 1;
                v59 -= 4;
                v49 = v56;
              }

              while (v51 == v61);
              v50 = &v48[4 * v57 - 4];
            }

            else
            {
              v56 = ((v46 << 30) - 0x100000000) >> 32;
            }

            *v50 = v51 + 1;
            v89 = (v54 + v53[v56]);
          }

          v62 = v84 - v83;
          v63 = (v84 - v83) >> 2;
          if (v63)
          {
            v64 = v87;
            v65 = ((v62 << 30) - 0x100000000) >> 32;
            v66 = &v87[4 * v65];
            v67 = *v66;
            v68 = v83 + 4 * v65;
            v69 = __p;
            v70 = v82;
            if (v63 >= 2 && v67 == *v68 - 1)
            {
              v73 = (v62 >> 2) & 0x7FFFFFFF;
              v72 = v73 - 1;
              v74 = 4 * v73;
              v75 = v83 - 8;
              do
              {
                v76 = v72;
                *v66 = 0;
                v70 -= v69[v65] * (*v68 - 1);
                v82 = v70;
                --v72;
                v66 = &v64[v74 - 8];
                v67 = *v66;
                v64 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v68 = &v75[v74];
                v77 = *&v75[4 * v73] - 1;
                v75 -= 4;
                v65 = v72;
              }

              while (v67 == v77);
              v66 = &v64[4 * v73 - 4];
            }

            else
            {
              v72 = ((v62 << 30) - 0x100000000) >> 32;
            }

            *v66 = v67 + 1;
            v82 = v69[v72] + v70;
          }
        }
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

      v19 = v81 + 1;
    }

    while (v81 + 1 != v80);
    if (v78)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v78 = v87;
    if (v87)
    {
LABEL_58:
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

void sub_25A4F11A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
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

void mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v45 + 8 * v52) = vadd_f32(*(v19 + 8 * v46), *(v45 + 8 * v52));
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

void sub_25A4F1770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v24 = (v97[0] + 80 * v21);
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

      mlx::core::ContiguousIterator::seek(&v90, v82 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v80 + 8 * v22;
        do
        {
          v46 = v45 + 8 * v83;
          v101 = *(v19 + 8 * v90);
          *v46 = std::operator*[abi:ne200100]<float,0>(v46, &v101);
          *(v46 + 4) = v47;
          v48 = v92 - v91;
          v49 = (v92 - v91) >> 2;
          if (v49)
          {
            v50 = v95;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v95 + 4 * v51;
            v53 = *v52;
            v54 = v91 + 4 * v51;
            v55 = v93;
            v56 = v90;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v91 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v90 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v90 = (v56 + v55[v58]);
          }

          v64 = v85 - v84;
          v65 = (v85 - v84) >> 2;
          if (v65)
          {
            v66 = v88;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = &v88[4 * v67];
            v69 = *v68;
            v70 = __p;
            v71 = v83;
            if (v65 >= 2 && (v72 = v84 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v84 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v83 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v83 = v70[v74] + v71;
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

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v79 = v88;
    if (v88)
    {
LABEL_56:
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

void sub_25A4F1D08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  v100 = 0;
  v101 = 0;
  v102 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v100, v12, v10, (v10 - v12) >> 2);
  v13 = v100;
  v14 = 1;
  while (v13 != v101)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v99, 0, sizeof(v99));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v99, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v92, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v100, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v84 = v19;
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
          v25 = (v99[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v92, v84 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v46 = v82 + 8 * v23;
          v47 = (v46 + 8 * v85);
          v48 = *(v20 + 8 * v92);
          v103 = v48;
          if (*v47 > *&v48 || *v47 == *&v48 && v47[1] > *(&v48 + 1))
          {
            v49 = (v46 + 8 * v85);
          }

          else
          {
            v49 = &v103;
          }

          *v47 = *v49;
          v50 = v94 - v93;
          v51 = (v94 - v93) >> 2;
          if (v51)
          {
            v52 = v97;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v97 + 4 * v53;
            v55 = *v54;
            v56 = v93 + 4 * v53;
            v57 = v95;
            v58 = v92;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v93 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v92 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v92 = (v58 + v57[v60]);
          }

          v66 = v87 - v86;
          v67 = (v87 - v86) >> 2;
          if (v67)
          {
            v68 = v90;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = &v90[4 * v69];
            v71 = *v70;
            v72 = __p;
            v73 = v85;
            if (v67 >= 2 && (v74 = v86 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v86 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v85 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v85 = v72[v76] + v73;
          }
        }
      }

      v85 = 0;
      v81 = v90;
      if (v91 - v90 >= 1)
      {
        bzero(v90, v91 - v90);
      }

      v92 = 0;
      if (v98 - v97 >= 1)
      {
        bzero(v97, v98 - v97);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v81 = v90;
    if (v90)
    {
LABEL_61:
      v91 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
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

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v92 = v99;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v92);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_25A4F22C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,signed char,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  v100 = 0;
  v101 = 0;
  v102 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v100, v12, v10, (v10 - v12) >> 2);
  v13 = v100;
  v14 = 1;
  while (v13 != v101)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v99, 0, sizeof(v99));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v99, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v92, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v100, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v84 = v19;
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
          v25 = (v99[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v92, v84 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v46 = v82 + 8 * v23;
          v47 = (v46 + 8 * v85);
          v48 = *(v20 + 8 * v92);
          v103 = v48;
          if (*&v48 > *v47 || *&v48 == *v47 && *(&v48 + 1) > v47[1])
          {
            v49 = (v46 + 8 * v85);
          }

          else
          {
            v49 = &v103;
          }

          *v47 = *v49;
          v50 = v94 - v93;
          v51 = (v94 - v93) >> 2;
          if (v51)
          {
            v52 = v97;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v97 + 4 * v53;
            v55 = *v54;
            v56 = v93 + 4 * v53;
            v57 = v95;
            v58 = v92;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v93 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v92 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v92 = (v58 + v57[v60]);
          }

          v66 = v87 - v86;
          v67 = (v87 - v86) >> 2;
          if (v67)
          {
            v68 = v90;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = &v90[4 * v69];
            v71 = *v70;
            v72 = __p;
            v73 = v85;
            if (v67 >= 2 && (v74 = v86 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v86 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v85 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v85 = v72[v76] + v73;
          }
        }
      }

      v85 = 0;
      v81 = v90;
      if (v91 - v90 >= 1)
      {
        bzero(v90, v91 - v90);
      }

      v92 = 0;
      if (v98 - v97 >= 1)
      {
        bzero(v97, v98 - v97);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v81 = v90;
    if (v90)
    {
LABEL_61:
      v91 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
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

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v92 = v99;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v92);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_25A4F2884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
    v19 = 0;
    v79 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v81 = v19;
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
          v25 = (v96[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v89, v81 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          *(v79 + 8 * v23 + 8 * v82) = *(v20 + 8 * v89);
          v46 = v91 - v90;
          v47 = (v91 - v90) >> 2;
          if (v47)
          {
            v48 = v94;
            v49 = ((v46 << 30) - 0x100000000) >> 32;
            v50 = v94 + 4 * v49;
            v51 = *v50;
            v52 = v90 + 4 * v49;
            v53 = v92;
            v54 = v89;
            if (v47 >= 2 && v51 == *v52 - 1)
            {
              v57 = (v46 >> 2) & 0x7FFFFFFF;
              v56 = v57 - 1;
              v58 = 4 * v57;
              v59 = v90 - 8;
              do
              {
                v60 = v56;
                *v50 = 0;
                v54 = (v54 - v53[v49] * (*v52 - 1));
                v89 = v54;
                --v56;
                v50 = &v48[v58 - 8];
                v51 = *v50;
                v48 -= 4;
                if (v60 < 2)
                {
                  break;
                }

                v52 = &v59[v58];
                v61 = *&v59[4 * v57] - 1;
                v59 -= 4;
                v49 = v56;
              }

              while (v51 == v61);
              v50 = &v48[4 * v57 - 4];
            }

            else
            {
              v56 = ((v46 << 30) - 0x100000000) >> 32;
            }

            *v50 = v51 + 1;
            v89 = (v54 + v53[v56]);
          }

          v62 = v84 - v83;
          v63 = (v84 - v83) >> 2;
          if (v63)
          {
            v64 = v87;
            v65 = ((v62 << 30) - 0x100000000) >> 32;
            v66 = &v87[4 * v65];
            v67 = *v66;
            v68 = v83 + 4 * v65;
            v69 = __p;
            v70 = v82;
            if (v63 >= 2 && v67 == *v68 - 1)
            {
              v73 = (v62 >> 2) & 0x7FFFFFFF;
              v72 = v73 - 1;
              v74 = 4 * v73;
              v75 = v83 - 8;
              do
              {
                v76 = v72;
                *v66 = 0;
                v70 -= v69[v65] * (*v68 - 1);
                v82 = v70;
                --v72;
                v66 = &v64[v74 - 8];
                v67 = *v66;
                v64 -= 4;
                if (v76 < 2)
                {
                  break;
                }

                v68 = &v75[v74];
                v77 = *&v75[4 * v73] - 1;
                v75 -= 4;
                v65 = v72;
              }

              while (v67 == v77);
              v66 = &v64[4 * v73 - 4];
            }

            else
            {
              v72 = ((v62 << 30) - 0x100000000) >> 32;
            }

            *v66 = v67 + 1;
            v82 = v69[v72] + v70;
          }
        }
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

      v19 = v81 + 1;
    }

    while (v81 + 1 != v80);
    if (v78)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v78 = v87;
    if (v87)
    {
LABEL_58:
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

void sub_25A4F2E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
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

void mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          *(v45 + 8 * v52) = vadd_f32(*(v19 + 8 * v46), *(v45 + 8 * v52));
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

void sub_25A4F33D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v24 = (v97[0] + 80 * v21);
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

      mlx::core::ContiguousIterator::seek(&v90, v82 * v14);
      if (v14)
      {
        v44 = 0;
        v45 = v80 + 8 * v22;
        do
        {
          v46 = v45 + 8 * v83;
          v101 = *(v19 + 8 * v90);
          *v46 = std::operator*[abi:ne200100]<float,0>(v46, &v101);
          *(v46 + 4) = v47;
          v48 = v92 - v91;
          v49 = (v92 - v91) >> 2;
          if (v49)
          {
            v50 = v95;
            v51 = ((v48 << 30) - 0x100000000) >> 32;
            v52 = v95 + 4 * v51;
            v53 = *v52;
            v54 = v91 + 4 * v51;
            v55 = v93;
            v56 = v90;
            if (v49 >= 2 && v53 == *v54 - 1)
            {
              v59 = (v48 >> 2) & 0x7FFFFFFF;
              v58 = v59 - 1;
              v60 = 4 * v59;
              v61 = v91 - 8;
              do
              {
                v62 = v58;
                *v52 = 0;
                v56 = (v56 - v55[v51] * (*v54 - 1));
                v90 = v56;
                --v58;
                v52 = &v50[v60 - 8];
                v53 = *v52;
                v50 -= 4;
                if (v62 < 2)
                {
                  break;
                }

                v54 = &v61[v60];
                v63 = *&v61[4 * v59] - 1;
                v61 -= 4;
                v51 = v58;
              }

              while (v53 == v63);
              v52 = &v50[4 * v59 - 4];
            }

            else
            {
              v58 = ((v48 << 30) - 0x100000000) >> 32;
            }

            *v52 = v53 + 1;
            v90 = (v56 + v55[v58]);
          }

          v64 = v85 - v84;
          v65 = (v85 - v84) >> 2;
          if (v65)
          {
            v66 = v88;
            v67 = ((v64 << 30) - 0x100000000) >> 32;
            v68 = &v88[4 * v67];
            v69 = *v68;
            v70 = __p;
            v71 = v83;
            if (v65 >= 2 && (v72 = v84 + 4 * v67, v69 == *v72 - 1))
            {
              v73 = (v64 >> 2) & 0x7FFFFFFF;
              v74 = v73 - 1;
              v75 = 4 * v73;
              v76 = v84 - 8;
              do
              {
                v77 = v74;
                *v68 = 0;
                v71 -= v70[v67] * (*v72 - 1);
                v83 = v71;
                --v74;
                v68 = &v66[v75 - 8];
                v69 = *v68;
                v66 -= 4;
                if (v77 < 2)
                {
                  break;
                }

                v72 = &v76[v75];
                v78 = *&v76[4 * v73] - 1;
                v76 -= 4;
                v67 = v74;
              }

              while (v69 == v78);
              v68 = &v66[4 * v73 - 4];
            }

            else
            {
              v74 = ((v64 << 30) - 0x100000000) >> 32;
            }

            *v68 = v69 + 1;
            v83 = v70[v74] + v71;
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

      ++v82;
    }

    while (v82 != v81);
    if (v79)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v79 = v88;
    if (v88)
    {
LABEL_56:
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

void sub_25A4F3968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  v100 = 0;
  v101 = 0;
  v102 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v100, v12, v10, (v10 - v12) >> 2);
  v13 = v100;
  v14 = 1;
  while (v13 != v101)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v99, 0, sizeof(v99));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v99, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v92, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v100, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v84 = v19;
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
          v25 = (v99[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v92, v84 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v46 = v82 + 8 * v23;
          v47 = (v46 + 8 * v85);
          v48 = *(v20 + 8 * v92);
          v103 = v48;
          if (*v47 > *&v48 || *v47 == *&v48 && v47[1] > *(&v48 + 1))
          {
            v49 = (v46 + 8 * v85);
          }

          else
          {
            v49 = &v103;
          }

          *v47 = *v49;
          v50 = v94 - v93;
          v51 = (v94 - v93) >> 2;
          if (v51)
          {
            v52 = v97;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v97 + 4 * v53;
            v55 = *v54;
            v56 = v93 + 4 * v53;
            v57 = v95;
            v58 = v92;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v93 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v92 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v92 = (v58 + v57[v60]);
          }

          v66 = v87 - v86;
          v67 = (v87 - v86) >> 2;
          if (v67)
          {
            v68 = v90;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = &v90[4 * v69];
            v71 = *v70;
            v72 = __p;
            v73 = v85;
            if (v67 >= 2 && (v74 = v86 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v86 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v85 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v85 = v72[v76] + v73;
          }
        }
      }

      v85 = 0;
      v81 = v90;
      if (v91 - v90 >= 1)
      {
        bzero(v90, v91 - v90);
      }

      v92 = 0;
      if (v98 - v97 >= 1)
      {
        bzero(v97, v98 - v97);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v81 = v90;
    if (v90)
    {
LABEL_61:
      v91 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
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

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v92 = v99;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v92);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_25A4F3F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,short,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
  v100 = 0;
  v101 = 0;
  v102 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<std::__wrap_iter<int const*>,std::__wrap_iter<int const*>>(&v100, v12, v10, (v10 - v12) >> 2);
  v13 = v100;
  v14 = 1;
  while (v13 != v101)
  {
    v15 = *v13++;
    v14 *= v15;
  }

  v16 = *a3;
  v17 = a3[1];
  v18 = (v17 - *a3) >> 4;
  memset(v99, 0, sizeof(v99));
  std::vector<mlx::core::ContiguousIterator>::__init_with_size[abi:ne200100]<std::__wrap_iter<mlx::core::array const*>,std::__wrap_iter<mlx::core::array const*>>(v99, v16, v17, v18);
  mlx::core::ContiguousIterator::ContiguousIterator(&v92, a1);
  mlx::core::ContiguousIterator::ContiguousIterator(&v85, &v100, *a2 + 3, ((*a2)[1] - **a2) >> 2);
  if (v83)
  {
    v19 = 0;
    v82 = (*a2)[19];
    v20 = (*a1)[19];
    do
    {
      v84 = v19;
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
          v25 = (v99[0] + 80 * v22);
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

      mlx::core::ContiguousIterator::seek(&v92, v84 * v14);
      if (v14)
      {
        for (i = 0; i != v14; ++i)
        {
          v46 = v82 + 8 * v23;
          v47 = (v46 + 8 * v85);
          v48 = *(v20 + 8 * v92);
          v103 = v48;
          if (*&v48 > *v47 || *&v48 == *v47 && *(&v48 + 1) > v47[1])
          {
            v49 = (v46 + 8 * v85);
          }

          else
          {
            v49 = &v103;
          }

          *v47 = *v49;
          v50 = v94 - v93;
          v51 = (v94 - v93) >> 2;
          if (v51)
          {
            v52 = v97;
            v53 = ((v50 << 30) - 0x100000000) >> 32;
            v54 = v97 + 4 * v53;
            v55 = *v54;
            v56 = v93 + 4 * v53;
            v57 = v95;
            v58 = v92;
            if (v51 >= 2 && v55 == *v56 - 1)
            {
              v61 = (v50 >> 2) & 0x7FFFFFFF;
              v60 = v61 - 1;
              v62 = 4 * v61;
              v63 = v93 - 8;
              do
              {
                v64 = v60;
                *v54 = 0;
                v58 = (v58 - v57[v53] * (*v56 - 1));
                v92 = v58;
                --v60;
                v54 = &v52[v62 - 8];
                v55 = *v54;
                v52 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v56 = &v63[v62];
                v65 = *&v63[4 * v61] - 1;
                v63 -= 4;
                v53 = v60;
              }

              while (v55 == v65);
              v54 = &v52[4 * v61 - 4];
            }

            else
            {
              v60 = ((v50 << 30) - 0x100000000) >> 32;
            }

            *v54 = v55 + 1;
            v92 = (v58 + v57[v60]);
          }

          v66 = v87 - v86;
          v67 = (v87 - v86) >> 2;
          if (v67)
          {
            v68 = v90;
            v69 = ((v66 << 30) - 0x100000000) >> 32;
            v70 = &v90[4 * v69];
            v71 = *v70;
            v72 = __p;
            v73 = v85;
            if (v67 >= 2 && (v74 = v86 + 4 * v69, v71 == *v74 - 1))
            {
              v75 = (v66 >> 2) & 0x7FFFFFFF;
              v76 = v75 - 1;
              v77 = 4 * v75;
              v78 = v86 - 8;
              do
              {
                v79 = v76;
                *v70 = 0;
                v73 -= v72[v69] * (*v74 - 1);
                v85 = v73;
                --v76;
                v70 = &v68[v77 - 8];
                v71 = *v70;
                v68 -= 4;
                if (v79 < 2)
                {
                  break;
                }

                v74 = &v78[v77];
                v80 = *&v78[4 * v75] - 1;
                v78 -= 4;
                v69 = v76;
              }

              while (v71 == v80);
              v70 = &v68[4 * v75 - 4];
            }

            else
            {
              v76 = ((v66 << 30) - 0x100000000) >> 32;
            }

            *v70 = v71 + 1;
            v85 = v72[v76] + v73;
          }
        }
      }

      v85 = 0;
      v81 = v90;
      if (v91 - v90 >= 1)
      {
        bzero(v90, v91 - v90);
      }

      v92 = 0;
      if (v98 - v97 >= 1)
      {
        bzero(v97, v98 - v97);
      }

      v19 = v84 + 1;
    }

    while (v84 + 1 != v83);
    if (v81)
    {
      goto LABEL_61;
    }
  }

  else
  {
    v81 = v90;
    if (v90)
    {
LABEL_61:
      v91 = v81;
      operator delete(v81);
    }
  }

  if (__p)
  {
    v89 = __p;
    operator delete(__p);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
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

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }

  v92 = v99;
  std::vector<mlx::core::ContiguousIterator>::__destroy_vector::operator()[abi:ne200100](&v92);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }
}

void sub_25A4F44E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
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

void sub_25A4F4A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
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

void mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

void sub_25A4F5020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v22 += *((*a2)[3] + 8 * v23) * (v42 + (mlx::core::array::shape(a2, v23) & (v42 >> 31)));
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

void sub_25A4F55B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
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

void sub_25A4F5B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,int,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v23 += *((*a2)[3] + 8 * v24) * (v43 + (mlx::core::array::shape(a2, v24) & (v43 >> 31)));
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

void sub_25A4F611C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::None>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
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

void sub_25A4F6698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
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

void mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Sum>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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
          v22 += *((*a2)[3] + 8 * v23) * ((mlx::core::array::shape(a2, v23) & (v42 >> 63)) + v42);
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

void sub_25A4F6C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28)
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

void mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Prod>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v42 = *(*(*(v20 + 16 * v21) + 152) + 8 * v26);
          v22 += *((*a2)[3] + 8 * v23) * ((mlx::core::array::shape(a2, v23) & (v42 >> 63)) + v42);
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

void sub_25A4F71F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Max>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v43 = *(*(*(v21 + 16 * v22) + 152) + 8 * v27);
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
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

void sub_25A4F77B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

void mlx::core::scatter<mlx::core::complex64_t,long long,mlx::core::Min>(uint64_t **a1, uint64_t **a2, uint64_t *a3, void *a4)
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

          v43 = *(*(*(v21 + 16 * v22) + 152) + 8 * v27);
          v23 += *((*a2)[3] + 8 * v24) * ((mlx::core::array::shape(a2, v24) & (v43 >> 63)) + v43);
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

void sub_25A4F7D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void **a23)
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

uint64_t std::__function::__func<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_286BF65B8;
  mlx::core::array::~array((a1 + 80));
  v4 = (a1 + 56);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

{
  *a1 = &unk_286BF65B8;
  mlx::core::array::~array((a1 + 80));
  v4 = (a1 + 56);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v4);
  mlx::core::array::~array((a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return MEMORY[0x25F851760](a1, 0x10B1C40A51AE736);
}

void sub_25A4F7FA0(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  v5 = *v2;
  if (*v2)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF65B8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a2 + 8, *(a1 + 8), *(a1 + 16), (*(a1 + 16) - *(a1 + 8)) >> 2);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  result = std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(a2 + 56, *(a1 + 56), *(a1 + 64), (*(a1 + 64) - *(a1 + 56)) >> 4);
  v7 = *(a1 + 88);
  *(a2 + 80) = *(a1 + 80);
  *(a2 + 88) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 100) = 0;
  *(a2 + 97) = 0;
  return result;
}

void sub_25A4F80A0(_Unwind_Exception *a1)
{
  mlx::core::array::~array(v3);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy(uint64_t a1)
{
  mlx::core::array::~array((a1 + 80));
  v3 = (a1 + 56);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  mlx::core::array::~array((a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  mlx::core::array::~array((a1 + 80));
  v3 = (a1 + 56);
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v3);
  mlx::core::array::~array((a1 + 40));
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>,std::allocator<std::__bind<mlx::core::Scatter::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *_ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF66B0;
  v2 = (a1 + 4);
  mlx::core::array::~array((a1 + 8));
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array(v2);
  return a1;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF66B0;
  v2 = (a1 + 4);
  mlx::core::array::~array((a1 + 8));
  mlx::core::array::~array((a1 + 6));
  mlx::core::array::~array(v2);

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7__cloneEPNS0_6__baseISO_EE(uint64_t result, uint64_t a2)
{
  *a2 = &unk_286BF66B0;
  v2 = *(result + 8);
  *(a2 + 16) = *(result + 16);
  *(a2 + 8) = v2;
  *(a2 + 24) = *(result + 24);
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(result + 72);
  *(a2 + 64) = *(result + 64);
  *(a2 + 72) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE7destroyEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));

  mlx::core::array::~array((a1 + 32));
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE18destroy_deallocateEv(uint64_t a1)
{
  mlx::core::array::~array((a1 + 64));
  mlx::core::array::~array((a1 + 48));
  mlx::core::array::~array((a1 + 32));

  operator delete(a1);
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEEclEv(uint64_t a1)
{
  std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(a1 + 24);
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11ScatterAxis8eval_cpuERKNS_6vectorINS3_5arrayENS_9allocatorIS9_EEEERS9_E3__0JEEEvOT_DpOT0_EUlvE_NSA_ISM_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<mlx::core::ScatterAxis::eval_cpu(std::vector<mlx::core::array> const&,mlx::core::array&)::$_0>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v3 = *(a1 + 40);
  v2 = (a1 + 40);
  switch(*(v3 + 56))
  {
    case 0:
      mlx::core::dispatch_scatter_axis<BOOL>(v2, (a1 + 8), (a1 + 24), *a1, *(a1 + 4));
      return;
    case 1:
      v16 = *a1;
      v17 = *(a1 + 4);
      v18 = (a1 + 8);
      v19 = (a1 + 24);
      goto LABEL_14;
    case 2:
      v8 = *a1;
      v9 = *(a1 + 4);
      v10 = (a1 + 8);
      v11 = (a1 + 24);
      goto LABEL_9;
    case 3:
      v12 = *a1;
      v13 = *(a1 + 4);
      v14 = (a1 + 8);
      v15 = (a1 + 24);
      goto LABEL_11;
    case 4:
      v4 = *a1;
      v5 = *(a1 + 4);
      v6 = (a1 + 8);
      v7 = (a1 + 24);
      goto LABEL_5;
    case 5:
      v16 = *a1;
      v17 = *(a1 + 4);
      v18 = (a1 + 8);
      v19 = (a1 + 24);
LABEL_14:
      mlx::core::dispatch_scatter_axis<unsigned char>(v2, v18, v19, v16, v17);
      return;
    case 6:
      v8 = *a1;
      v9 = *(a1 + 4);
      v10 = (a1 + 8);
      v11 = (a1 + 24);
LABEL_9:
      mlx::core::dispatch_scatter_axis<unsigned short>(v2, v10, v11, v8, v9);
      break;
    case 7:
      v12 = *a1;
      v13 = *(a1 + 4);
      v14 = (a1 + 8);
      v15 = (a1 + 24);
LABEL_11:
      mlx::core::dispatch_scatter_axis<unsigned int>(v2, v14, v15, v12, v13);
      break;
    case 8:
      v4 = *a1;
      v5 = *(a1 + 4);
      v6 = (a1 + 8);
      v7 = (a1 + 24);
LABEL_5:
      mlx::core::dispatch_scatter_axis<unsigned long long>(v2, v6, v7, v4, v5);
      break;
    case 9:
      mlx::core::dispatch_scatter_axis<half>(v2, (a1 + 8), (a1 + 24), *a1, *(a1 + 4));
      break;
    case 0xA:
      mlx::core::dispatch_scatter_axis<float>(v2, (a1 + 8), (a1 + 24), *a1, *(a1 + 4));
      break;
    case 0xB:
      mlx::core::dispatch_scatter_axis<double>(v2, (a1 + 8), (a1 + 24), *a1, *(a1 + 4));
      break;
    case 0xC:
      mlx::core::dispatch_scatter_axis<mlx::core::_MLX_BFloat16>(v2, (a1 + 8), (a1 + 24), *a1, *(a1 + 4));
      break;
    case 0xD:
      mlx::core::dispatch_scatter_axis<mlx::core::complex64_t>(v2, (a1 + 8), (a1 + 24), *a1, *(a1 + 4));
      break;
    default:
      return;
  }
}

void mlx::core::dispatch_scatter_axis<BOOL>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<BOOL,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<BOOL,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<BOOL,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<BOOL,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<BOOL,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<BOOL,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<BOOL,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<BOOL,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned char,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<unsigned char,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned char,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned char,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<unsigned char,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned short,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<unsigned short,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned short,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned short,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<unsigned short,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned int,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<unsigned int,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned int,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned int,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned int,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned int,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned int,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<unsigned int,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned long long,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<unsigned long long,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned long long,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned long long,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<unsigned long long,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<unsigned long long,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<unsigned long long,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<unsigned long long,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<half>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<half,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<half,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<half,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<half,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<half,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<half,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<half,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<half,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<float>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<float,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<float,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<float,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<float,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<float,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<float,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<float,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<float,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<double>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<double,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<double,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<double,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<double,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<double,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<double,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<double,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<double,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<mlx::core::_MLX_BFloat16>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<mlx::core::_MLX_BFloat16,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis<mlx::core::complex64_t>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  v5 = *(*a2 + 56);
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {

        mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,int>(a1, a2, a3, a4, a5);
      }

      else
      {
        if (v5 != 8)
        {
          goto LABEL_34;
        }

        mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,long long>(a1, a2, a3, a4, a5);
      }
    }

    else if (v5 == 5)
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,signed char>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,short>(a1, a2, a3, a4, a5);
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned int>(a1, a2, a3, a4, a5);
    }

    else
    {

      mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned long long>(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {

        mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned short>(a1, a2, a3, a4, a5);
        return;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "[ScatterAxis::eval_cpu] Cannot scatter with indices type.");
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    mlx::core::dispatch_scatter_axis_op<mlx::core::complex64_t,unsigned char>(a1, a2, a3, a4, a5);
  }
}

void mlx::core::dispatch_scatter_axis_op<BOOL,unsigned char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,unsigned char,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,unsigned char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,unsigned short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,unsigned short,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,unsigned short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,unsigned int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,unsigned int,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,unsigned int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,unsigned long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,unsigned long long,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,unsigned long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,signed char>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,signed char,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,signed char,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,short>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,short,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,short,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,int>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,int,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,int,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::dispatch_scatter_axis_op<BOOL,long long>(mlx::core::array *a1, void *a2, mlx::core::array *a3, int a4, int a5)
{
  if (a5)
  {
    if (a5 != 1)
    {
      return;
    }

    v5 = a2[1];
    v9[0] = *a2;
    v9[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v9;
    mlx::core::scatter_axis<BOOL,long long,mlx::core::None>(a1, v9, a3, a4);
  }

  else
  {
    v7 = a2[1];
    v8[0] = *a2;
    v8[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v8;
    mlx::core::scatter_axis<BOOL,long long,mlx::core::Sum>(a1, v8, a3, a4);
  }

  mlx::core::array::~array(v6);
}

void mlx::core::scatter_axis<BOOL,unsigned char,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v93 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v73 = *(*a3 + 152);
  v74 = *(*a2 + 152);
  v75 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v66 = v26 * v21;
    v28 = v83;
    v29 = (v85 - v84) >> 2;
    v30 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v31 = v84 + 4 * v30;
    v32 = v76;
    v33 = (v78 - v77) >> 2;
    v34 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v35 = v77 + 4 * v34;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v37 = 4 * (v33 & 0x7FFFFFFF);
    v69 = v77 - 8;
    v67 = v23;
    do
    {
      v68 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v86;
        v72 = v88;
        v40 = v88 + 4 * v30;
        v41 = v79;
        v71 = __p;
        v42 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v28);
            v44 = (v73 + v32);
            v45 = v20;
            do
            {
              *(v75 + v38 + v19 * *v43) = *v44;
              v44 += v18;
              v43 += v17;
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v46 = *v40;
            if (v29 >= 2 && v46 == *v31 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v29 & 0x7FFFFFFF) - 1;
              v50 = v31;
              v51 = v40;
              v52 = v30;
              do
              {
                v53 = v49;
                *v51 = 0;
                v28 -= v39[v52] * (*v50 - 1);
                v83 = v28;
                --v49;
                v51 = &v47[v36 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v36];
                v54 = *&v48[4 * (v29 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v36 - 4];
            }

            else
            {
              v49 = v30;
              v55 = v40;
            }

            *v55 = v46 + 1;
            v28 += v39[v49];
            v83 = v28;
          }

          if (v33)
          {
            v56 = *v42;
            if (v33 >= 2 && v56 == *v35 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v33 & 0x7FFFFFFF) - 1;
              v60 = v35;
              v61 = v42;
              v62 = v34;
              do
              {
                v63 = v59;
                *v61 = 0;
                v32 -= v41[v62] * (*v60 - 1);
                v76 = v32;
                --v59;
                v61 = &v57[v37 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v37];
                v64 = *&v58[4 * (v33 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v37 - 4];
            }

            else
            {
              v59 = v34;
              v65 = v42;
            }

            *v65 = v56 + 1;
            v32 += v41[v59];
            v76 = v32;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v75 += v66;
      v27 = v68 + 1;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A4FA0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,unsigned char,mlx::core::Sum>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v94 = 0;
  v95 = 0;
  v93 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v93, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v93[8 * a4];
  v10 = v94 - (v9 + 8);
  if (v94 != v9 + 8)
  {
    memmove(&v93[8 * a4], v9 + 8, v94 - (v9 + 8));
  }

  v94 = &v9[v10];
  v11 = *a2;
  v91 = 0;
  v92 = 0;
  v90 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v90, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v90[4 * a4];
  v13 = v91 - (v12 + 4);
  if (v91 != v12 + 4)
  {
    memmove(&v90[4 * a4], v12 + 4, v91 - (v12 + 4));
  }

  v91 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v83, &v90, &v93, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v93 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v93, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v93[v14];
  v16 = v94 - &v93[v14 + 8];
  if (v94 != &v93[v14 + 8])
  {
    memmove(&v93[v14], &v93[v14 + 8], v94 - (v15 + 8));
  }

  v94 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v76, &v90, &v93, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v73 = *(*a3 + 152);
  v74 = *(*a2 + 152);
  v75 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v66 = v26 * v21;
    v28 = v83;
    v29 = (v85 - v84) >> 2;
    v30 = (((v85 - v84) << 30) - 0x100000000) >> 32;
    v31 = v84 + 4 * v30;
    v32 = v76;
    v33 = (v78 - v77) >> 2;
    v34 = (((v78 - v77) << 30) - 0x100000000) >> 32;
    v35 = v77 + 4 * v34;
    v36 = 4 * (v29 & 0x7FFFFFFF);
    v70 = v84 - 8;
    v37 = 4 * (v33 & 0x7FFFFFFF);
    v69 = v77 - 8;
    v67 = v23;
    do
    {
      v68 = v27;
      if (v26)
      {
        v38 = 0;
        v39 = v86;
        v72 = v88;
        v40 = v88 + 4 * v30;
        v41 = v79;
        v71 = __p;
        v42 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v43 = (v74 + v28);
            v44 = (v73 + v32);
            v45 = v20;
            do
            {
              *(v75 + v38 + v19 * *v43) |= *v44;
              v44 += v18;
              v43 += v17;
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v46 = *v40;
            if (v29 >= 2 && v46 == *v31 - 1)
            {
              v47 = v72;
              v48 = v70;
              v49 = (v29 & 0x7FFFFFFF) - 1;
              v50 = v31;
              v51 = v40;
              v52 = v30;
              do
              {
                v53 = v49;
                *v51 = 0;
                v28 -= v39[v52] * (*v50 - 1);
                v83 = v28;
                --v49;
                v51 = &v47[v36 - 8];
                v46 = *v51;
                v47 -= 4;
                if (v53 < 2)
                {
                  break;
                }

                v50 = &v48[v36];
                v54 = *&v48[4 * (v29 & 0x7FFFFFFF)] - 1;
                v48 -= 4;
                v52 = v49;
              }

              while (v46 == v54);
              v55 = &v47[v36 - 4];
            }

            else
            {
              v49 = v30;
              v55 = v40;
            }

            *v55 = v46 + 1;
            v28 += v39[v49];
            v83 = v28;
          }

          if (v33)
          {
            v56 = *v42;
            if (v33 >= 2 && v56 == *v35 - 1)
            {
              v57 = v71;
              v58 = v69;
              v59 = (v33 & 0x7FFFFFFF) - 1;
              v60 = v35;
              v61 = v42;
              v62 = v34;
              do
              {
                v63 = v59;
                *v61 = 0;
                v32 -= v41[v62] * (*v60 - 1);
                v76 = v32;
                --v59;
                v61 = &v57[v37 - 8];
                v56 = *v61;
                v57 -= 4;
                if (v63 < 2)
                {
                  break;
                }

                v60 = &v58[v37];
                v64 = *&v58[4 * (v33 & 0x7FFFFFFF)] - 1;
                v58 -= 4;
                v62 = v59;
              }

              while (v56 == v64);
              v65 = &v57[v37 - 4];
            }

            else
            {
              v59 = v34;
              v65 = v42;
            }

            *v65 = v56 + 1;
            v32 += v41[v59];
            v76 = v32;
          }

          ++v38;
        }

        while (v38 != v26);
      }

      v75 += v66;
      v27 = v68 + 1;
    }

    while (v68 + 1 != v67);
  }

  if (__p)
  {
    v82 = __p;
    operator delete(__p);
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }

  if (v86)
  {
    v87 = v86;
    operator delete(v86);
  }

  if (v84)
  {
    v85 = v84;
    operator delete(v84);
  }

  if (v90)
  {
    v91 = v90;
    operator delete(v90);
  }

  if (v93)
  {
    v94 = v93;
    operator delete(v93);
  }
}

void sub_25A4FA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void mlx::core::scatter_axis<BOOL,unsigned short,mlx::core::None>(mlx::core::array *a1, mlx::core::array *a2, mlx::core::array *a3, int a4)
{
  v8 = *a2;
  v95 = 0;
  v96 = 0;
  v94 = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&v94, v8[3], v8[4], (v8[4] - v8[3]) >> 3);
  v9 = &v94[8 * a4];
  v10 = v95 - (v9 + 8);
  if (v95 != v9 + 8)
  {
    memmove(&v94[8 * a4], v9 + 8, v95 - (v9 + 8));
  }

  v95 = &v9[v10];
  v11 = *a2;
  v92 = 0;
  v93 = 0;
  v91 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v91, *v11, v11[1], (v11[1] - *v11) >> 2);
  v12 = &v91[4 * a4];
  v13 = v92 - (v12 + 4);
  if (v92 != v12 + 4)
  {
    memmove(&v91[4 * a4], v12 + 4, v92 - (v12 + 4));
  }

  v92 = &v12[v13];
  mlx::core::ContiguousIterator::ContiguousIterator(&v84, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  if (&v94 != (*a3 + 24))
  {
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v94, *(*a3 + 24), *(*a3 + 32), (*(*a3 + 32) - *(*a3 + 24)) >> 3);
  }

  v14 = 8 * a4;
  v15 = &v94[v14];
  v16 = v95 - &v94[v14 + 8];
  if (v95 != &v94[v14 + 8])
  {
    memmove(&v94[v14], &v94[v14 + 8], v95 - (v15 + 8));
  }

  v95 = &v15[v16];
  mlx::core::ContiguousIterator::ContiguousIterator(&v77, &v91, &v94, ((*(*a3 + 8) - **a3) >> 2) - 1);
  v74 = *(*a3 + 152);
  v75 = *(*a2 + 152);
  v76 = *(*a1 + 152);
  v17 = mlx::core::array::strides(a2, a4);
  v18 = mlx::core::array::strides(a3, a4);
  v19 = mlx::core::array::strides(a1, a4);
  v20 = mlx::core::array::shape(a2, a4);
  v21 = mlx::core::array::shape(a1, a4);
  if (a4 < 1)
  {
    v23 = 1;
  }

  else
  {
    v22 = 0;
    v23 = 1;
    do
    {
      v23 *= mlx::core::array::shape(a2, v22++);
    }

    while (a4 != v22);
  }

  v24 = a4 + 1;
  v25 = *(*a2 + 8) - **a2;
  v26 = 1;
  while (v24 < v25 >> 2)
  {
    v26 *= mlx::core::array::shape(a2, v24++);
    v25 = *(*a2 + 8) - **a2;
  }

  if (v23)
  {
    v27 = 0;
    v67 = v26 * v21;
    v28 = v84;
    v29 = (v86 - v85) >> 2;
    v30 = (((v86 - v85) << 30) - 0x100000000) >> 32;
    v31 = v85 + 4 * v30;
    v32 = v77;
    v33 = (v79 - v78) >> 2;
    v34 = (((v79 - v78) << 30) - 0x100000000) >> 32;
    v35 = v78 + 4 * v34;
    v36 = 2 * v17;
    v37 = 4 * (v29 & 0x7FFFFFFF);
    v71 = v85 - 8;
    v38 = 4 * (v33 & 0x7FFFFFFF);
    v70 = v78 - 8;
    v68 = v23;
    do
    {
      v69 = v27;
      if (v26)
      {
        v39 = 0;
        v40 = v87;
        v73 = v89;
        v41 = v89 + 4 * v30;
        v42 = v80;
        v72 = __p;
        v43 = __p + 4 * v34;
        do
        {
          if (v20 >= 1)
          {
            v44 = (v74 + v32);
            v45 = v20;
            v46 = (v75 + 2 * v28);
            do
            {
              *(v76 + v39 + v19 * *v46) = *v44;
              v44 += v18;
              v46 = (v46 + v36);
              --v45;
            }

            while (v45);
          }

          if (v29)
          {
            v47 = *v41;
            if (v29 >= 2 && v47 == *v31 - 1)
            {
              v48 = v73;
              v49 = v71;
              v50 = (v29 & 0x7FFFFFFF) - 1;
              v51 = v31;
              v52 = v41;
              v53 = v30;
              do
              {
                v54 = v50;
                *v52 = 0;
                v28 -= v40[v53] * (*v51 - 1);
                v84 = v28;
                --v50;
                v52 = &v48[v37 - 8];
                v47 = *v52;
                v48 -= 4;
                if (v54 < 2)
                {
                  break;
                }

                v51 = &v49[v37];
                v55 = *&v49[4 * (v29 & 0x7FFFFFFF)] - 1;
                v49 -= 4;
                v53 = v50;
              }

              while (v47 == v55);
              v56 = &v48[v37 - 4];
            }

            else
            {
              v50 = v30;
              v56 = v41;
            }

            *v56 = v47 + 1;
            v28 += v40[v50];
            v84 = v28;
          }

          if (v33)
          {
            v57 = *v43;
            if (v33 >= 2 && v57 == *v35 - 1)
            {
              v58 = v72;
              v59 = v70;
              v60 = (v33 & 0x7FFFFFFF) - 1;
              v61 = v35;
              v62 = v43;
              v63 = v34;
              do
              {
                v64 = v60;
                *v62 = 0;
                v32 -= v42[v63] * (*v61 - 1);
                v77 = v32;
                --v60;
                v62 = &v58[v38 - 8];
                v57 = *v62;
                v58 -= 4;
                if (v64 < 2)
                {
                  break;
                }

                v61 = &v59[v38];
                v65 = *&v59[4 * (v33 & 0x7FFFFFFF)] - 1;
                v59 -= 4;
                v63 = v60;
              }

              while (v57 == v65);
              v66 = &v58[v38 - 4];
            }

            else
            {
              v60 = v34;
              v66 = v43;
            }

            *v66 = v57 + 1;
            v32 += v42[v60];
            v77 = v32;
          }

          ++v39;
        }

        while (v39 != v26);
      }

      v76 += v67;
      v27 = v69 + 1;
    }

    while (v69 + 1 != v68);
  }

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (v80)
  {
    v81 = v80;
    operator delete(v80);
  }

  if (v78)
  {
    v79 = v78;
    operator delete(v78);
  }

  if (v89)
  {
    v90 = v89;
    operator delete(v89);
  }

  if (v87)
  {
    v88 = v87;
    operator delete(v87);
  }

  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v91)
  {
    v92 = v91;
    operator delete(v91);
  }

  if (v94)
  {
    v95 = v94;
    operator delete(v94);
  }
}

void sub_25A4FACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  mlx::core::ContiguousIterator::~ContiguousIterator(&a32);
  v34 = *(v32 - 136);
  if (v34)
  {
    *(v32 - 128) = v34;
    operator delete(v34);
  }

  v35 = *(v32 - 112);
  if (v35)
  {
    *(v32 - 104) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}