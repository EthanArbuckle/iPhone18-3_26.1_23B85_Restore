double *cv::MulTransposedL<double,double>(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v78 = *MEMORY[0x277D85DE8];
  v6 = *(result + 2);
  v8 = *(v7 + 16);
  v9 = *(v3 + 16);
  v10 = *(result + 10) >> 3;
  v11 = *(v7 + 80) >> 3;
  if (*(v3 + 8) <= 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v3 + 80) >> 3;
  }

  v13 = *(result + 8);
  v14 = *v13;
  v15 = v13[1];
  v16 = v13[1];
  if (v9)
  {
    v17 = *(v3 + 12);
    result = v73;
    if ((8 * v15) >= 0x1009)
    {
      operator new[]();
    }

    if (v14 >= 1)
    {
      v18 = 0;
      v19 = 32 * (v17 == v15);
      v20 = 8 * v10;
      v21 = v6 + 2;
      v22 = *(v3 + 16);
      do
      {
        if (v17 >= v16)
        {
          v25 = v15;
          v26 = v6;
          v27 = v22;
          v28 = v73;
          if (v15 >= 1)
          {
            do
            {
              v29 = *v26++;
              v30 = v29;
              v31 = *v27++;
              *v28++ = v30 - v31;
              --v25;
            }

            while (v25);
          }
        }

        else if (v15 >= 1)
        {
          v23 = 0;
          v24 = *(v9 + 8 * v12 * v18);
          do
          {
            *&v73[v23 * 8] = v6[v23] - v24;
            ++v23;
          }

          while (v15 != v23);
        }

        v32 = v6;
        v33 = v21;
        v34 = v18;
        do
        {
          v35 = (v9 + 8 * v12 * v34);
          if (v17 < v15)
          {
            v76 = *v35;
            v77 = v76;
            *v75 = v76;
            *&v75[1] = v76;
            v35 = v75;
          }

          if (v16 >= 4)
          {
            v38 = 0;
            v39 = v35 + 2;
            v37 = 0.0;
            v40 = v33;
            v41 = &v74;
            do
            {
              v42 = *(v41 - 1) * (*(v40 - 1) - *(v39 - 1)) + *(v41 - 2) * (*(v40 - 2) - *(v39 - 2));
              v43 = *v40;
              v44 = v40[1];
              v40 += 4;
              v45 = *v41;
              v46 = v41[1];
              v41 += 4;
              v38 += 4;
              v37 = v37 + v42 + v45 * (v43 - *v39) + v46 * (v44 - v39[1]);
              v39 = (v39 + v19);
            }

            while (v38 <= v15 - 4);
            v35 = (v35 + v19 * (((v15 - 4) >> 2) + 1));
            v36 = ((v15 - 4) & 0xFFFFFFFC) + 4;
          }

          else
          {
            v36 = 0;
            v37 = 0.0;
          }

          if (v36 < v16)
          {
            v47 = &v32[v36];
            v48 = &v73[8 * v36];
            do
            {
              v49 = *v48++;
              v50 = v49;
              v51 = *v47++;
              v52 = v51;
              v53 = *v35++;
              v37 = v37 + v50 * (v52 - v53);
              ++v36;
            }

            while (v16 > v36);
          }

          *(v8 + 8 * v34++) = v37 * v5;
          v33 = (v33 + v20);
          v32 = (v32 + v20);
        }

        while (v34 != v14);
        v8 += 8 * v11;
        ++v18;
        v22 += v12;
        v6 = (v6 + v20);
        v21 = (v21 + v20);
      }

      while (v18 != v14);
    }
  }

  else if (v14 >= 1)
  {
    v54 = 0;
    v55 = v6 + 2;
    v56 = 8 * v10;
    do
    {
      v57 = v6;
      v58 = v55;
      v59 = v54;
      do
      {
        if (v16 >= 4)
        {
          v62 = 0;
          v61 = 0.0;
          v63 = v58;
          result = v55;
          do
          {
            v64 = *(result - 1) * *(v63 - 1) + *(result - 2) * *(v63 - 2);
            v65 = *result;
            v66 = result[1];
            result += 4;
            v67 = *v63;
            v68 = v63[1];
            v63 += 4;
            v61 = v61 + v64 + v65 * v67 + v66 * v68;
            v62 += 4;
          }

          while (v62 <= v15 - 4);
          v60 = ((v15 - 4) & 0xFFFFFFFC) + 4;
        }

        else
        {
          v60 = 0;
          v61 = 0.0;
        }

        if (v60 < v15)
        {
          v69 = &v57[v60];
          result = &v6[v60];
          do
          {
            v70 = *result++;
            v71 = v70;
            v72 = *v69++;
            v61 = v61 + v71 * v72;
            ++v60;
          }

          while (v16 > v60);
        }

        *(v8 + 8 * v59++) = v61 * v5;
        v58 = (v58 + v56);
        v57 = (v57 + v56);
      }

      while (v59 != v14);
      ++v54;
      v8 += 8 * v11;
      v55 = (v55 + v56);
      v6 = (v6 + v56);
    }

    while (v54 != v14);
  }

  return result;
}

void cv::gemm(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  if (*(a1 + 4) > 0)
  {
    v2 = 0;
    v3 = *(a1 + 64);
    do
    {
      *(v3 + 4 * v2++) = 0;
    }

    while (v2 < *(a1 + 4));
  }

  *a2 = 0;
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = v4 == a1 + 80;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    free(*(a1 + 72));
  }
}

void cv::mulTransposed(cv::Exception *a1, uint64_t a2, uint64_t a3, void **a4)
{
  cv::Exception::~Exception(a1);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  if (*(a3 + 23) < 0)
  {
    operator delete(*a3);
  }

  operator delete(*a4);
  __break(1u);
}

uint64_t cv::countNonZero(cv *this, const cv::_InputArray *a2)
{
  v26[3] = *MEMORY[0x277D85DE8];
  (**this)(v17);
  v2 = v17[0] & 7;
  v3 = cv::getCountNonZeroTab(int)::countNonZeroTab[v2];
  if ((v17[0] & 0xFF8) != 0 || v2 == 7)
  {
    std::string::basic_string[abi:ne200100]<0>(v26, "src.channels() == 1 && func != 0");
    std::string::basic_string[abi:ne200100]<0>(v25, "countNonZero");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/stat.cpp");
    cv::Exception::Exception(v14, 4294967081, v26, v25, __p, 549);
    cv::error(v14, v5);
  }

  v26[0] = v17;
  v26[1] = 0;
  v25[0] = 0;
  cv::NAryMatIterator::NAryMatIterator(v14, v26, v25, -1);
  v6 = 0;
  v7 = v16;
  v8 = -1;
  while (++v8 < v15)
  {
    v6 = (v3)(v25[0], v7) + v6;
    cv::NAryMatIterator::operator++(v14);
  }

  if (v18 && atomic_fetch_add(v18, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v17);
  }

  v17[2] = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (SHIDWORD(v17[0]) >= 1)
  {
    v9 = 0;
    v10 = v22;
    do
    {
      *(v10 + 4 * v9++) = 0;
    }

    while (v9 < SHIDWORD(v17[0]));
  }

  v18 = 0;
  if (v23)
  {
    v11 = v23 == &v24;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v23);
  }

  return v6;
}

void sub_22D2558E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::mean(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v7 = v6;
  v78[3] = *MEMORY[0x277D85DE8];
  (**v3)(v68);
  (**v5)(&v57, v5, 0xFFFFFFFFLL);
  if (v60)
  {
    v8 = HIDWORD(v57);
    if (SHIDWORD(v57) >= 3)
    {
      v10 = v65;
      v9 = 1;
      do
      {
        v11 = *v10++;
        v9 *= v11;
        --v8;
      }

      while (v8);
    }

    else
    {
      v9 = v59 * v58;
    }

    if (v9 && (v57 & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v54, "mask.empty() || mask.type() == CV_8U");
      std::string::basic_string[abi:ne200100]<0>(__p, "mean");
      std::string::basic_string[abi:ne200100]<0>(v78, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/stat.cpp");
      cv::Exception::Exception(v50, 4294967081, v54, __p, v78, 565);
      cv::error(v50, v12);
    }
  }

  v13 = LODWORD(v68[0]);
  v14 = (LODWORD(v68[0]) >> 3) & 0x1FF;
  v15 = v68[0] & 7;
  v49 = *(&cv::getSumFunc(int)::sumTab + (v68[0] & 7));
  if (v15 == 7 || v14 >= 4)
  {
    std::string::basic_string[abi:ne200100]<0>(v54, "cn <= 4 && func != 0");
    std::string::basic_string[abi:ne200100]<0>(__p, "mean");
    std::string::basic_string[abi:ne200100]<0>(v78, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/stat.cpp");
    cv::Exception::Exception(v50, 4294967081, v54, __p, v78, 645);
    cv::error(v50, v17);
  }

  v78[0] = v68;
  v78[1] = &v57;
  v78[2] = 0;
  v76 = 0;
  v77 = 0;
  cv::NAryMatIterator::NAryMatIterator(v54, v78, &v76, -1);
  v18 = (v14 + 1);
  v53 = 0u;
  *__p = 0u;
  v19 = v56;
  v50[0] = v51;
  v50[1] = 1032;
  v46 = v7;
  if (v15 > 3)
  {
    v48 = 0;
    v23 = 0;
    v24 = __p;
    v22 = v56;
  }

  else
  {
    v20 = v13 >> 3;
    if (v15 >= 2)
    {
      v21 = 0x8000;
    }

    else
    {
      v21 = 0x800000;
    }

    bzero(v51, 4 * (v20 & 0x1FF) + 4);
    v48 = v21;
    if (v21 >= v19)
    {
      v22 = v19;
    }

    else
    {
      v22 = v21;
    }

    if (v68[0] <= 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v74[HIDWORD(v68[0]) - 1];
    }

    v24 = v51;
  }

  v25 = 0;
  v26 = 0;
  for (i = 0; i < v55; i = v47)
  {
    v47 = i + 1;
    if (v19 >= 1)
    {
      v28 = 0;
      v30 = v76;
      v29 = v77;
      do
      {
        if (v22 >= v19 - v28)
        {
          v31 = (v19 - v28);
        }

        else
        {
          v31 = v22;
        }

        v32 = v49(v30, v29, v24, v31, v18);
        v25 += v32;
        if (v15 <= 3 && (v25 + v22 >= v48 || v47 >= v55 && v31 + v28 >= v19))
        {
          v33 = __p;
          v34 = v18;
          v35 = v24;
          do
          {
            *v33 = *v33 + *v35;
            ++v33;
            *v35++ = 0;
            --v34;
          }

          while (v34);
          v25 = 0;
        }

        v30 = &v76[v23 * v31];
        v76 = v30;
        if (v77)
        {
          v29 = v77 + v31;
          v77 = v29;
        }

        else
        {
          v29 = 0;
        }

        v26 += v32;
        v28 += v22;
      }

      while (v28 < v19);
    }

    cv::NAryMatIterator::operator++(v54);
  }

  if (v26)
  {
    v36 = 1.0 / v26;
  }

  else
  {
    v36 = 0.0;
  }

  v37 = vmulq_n_f64(*__p, v36);
  v38 = vmulq_n_f64(v53, v36);
  *v46 = v37;
  v46[1] = v38;
  if (v50[0] != v51 && v50[0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  if (v61 && atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v57);
  }

  v60 = 0;
  v62 = 0;
  v64 = 0;
  v63 = 0;
  if (SHIDWORD(v57) >= 1)
  {
    v40 = 0;
    v41 = v65;
    do
    {
      v41[v40++] = 0;
    }

    while (v40 < SHIDWORD(v57));
  }

  v61 = 0;
  if (v66)
  {
    v42 = v66 == &v67;
  }

  else
  {
    v42 = 1;
  }

  if (!v42)
  {
    free(v66);
  }

  if (v69 && atomic_fetch_add(v69, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v68);
  }

  v68[2] = 0;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  if (SHIDWORD(v68[0]) >= 1)
  {
    v43 = 0;
    v44 = v73;
    do
    {
      *(v44 + 4 * v43++) = 0;
    }

    while (v43 < SHIDWORD(v68[0]));
  }

  v69 = 0;
  if (v74)
  {
    v45 = v74 == &v75;
  }

  else
  {
    v45 = 1;
  }

  if (!v45)
  {
    free(v74);
  }
}

void sub_22D255F34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  cv::Exception::~Exception(va);
  if (v7[327] < 0)
  {
    operator delete(*(v8 - 128));
  }

  if (v7[23] < 0)
  {
    operator delete(STACK[0x1070]);
  }

  if (v7[55] < 0)
  {
    operator delete(STACK[0x1090]);
  }

  cv::Mat::~Mat(&STACK[0x10D0]);
  cv::Mat::~Mat((v8 - 240));
  _Unwind_Resume(a1);
}

void cv::minMaxIdx(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, double *a3, double *a4, int *a5, int *a6, const cv::_InputArray *a7)
{
  v97[3] = *MEMORY[0x277D85DE8];
  (**this)(&v84);
  (**a6)(&v73, a6, 0xFFFFFFFFLL);
  v12 = (v84 >> 3) & 0x1FF;
  v13 = v76;
  if (v12)
  {
    if (!v76)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v76)
    {
      goto LABEL_19;
    }

    v16 = HIDWORD(v73);
    if (SHIDWORD(v73) >= 3)
    {
      v21 = v81;
      v17 = 1;
      do
      {
        v22 = *v21++;
        v17 *= v22;
        --v16;
      }

      while (v16);
    }

    else
    {
      v17 = v75 * v74;
    }

    if (!v17 || (v73 & 0xFFF) == 0)
    {
      goto LABEL_19;
    }
  }

  v14 = HIDWORD(v73);
  if (SHIDWORD(v73) >= 3)
  {
    v18 = v81;
    v15 = 1;
    do
    {
      v19 = *v18++;
      v15 *= v19;
      --v14;
    }

    while (v14);
  }

  else
  {
    v15 = v75 * v74;
  }

  v13 = v15 != 0;
LABEL_11:
  if (a5 || a4 || v13)
  {
    std::string::basic_string[abi:ne200100]<0>(v97, "(cn == 1 && (mask.empty() || mask.type() == CV_8U)) || (cn >= 1 && mask.empty() && !minIdx && !maxIdx)");
    std::string::basic_string[abi:ne200100]<0>(&v95, "minMaxIdx");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/stat.cpp");
    cv::Exception::Exception(v70, 4294967081, v97, &v95, __p, 1013);
    cv::error(v70, v20);
  }

LABEL_19:
  v23 = v84 & 7;
  v24 = *(&cv::getMinmaxTab(int)::minmaxTab + (v84 & 7));
  if (v23 == 7)
  {
    std::string::basic_string[abi:ne200100]<0>(v97, "func != 0");
    std::string::basic_string[abi:ne200100]<0>(&v95, "minMaxIdx");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/stat.cpp");
    cv::Exception::Exception(v70, 4294967081, v97, &v95, __p, 1092);
    cv::error(v70, v25);
  }

  v61 = a3;
  v97[0] = &v84;
  v97[1] = &v73;
  v97[2] = 0;
  v95 = 0;
  v96 = 0;
  cv::NAryMatIterator::NAryMatIterator(v70, v97, &v95, -1);
  v66 = 0x80000000;
  v67 = 0x7FFFFFFF;
  v64 = -INFINITY;
  v65 = INFINITY;
  v26 = &v67;
  if (v23 == 6)
  {
    v26 = &v63;
  }

  v27 = &v66;
  v68 = 0;
  __p[0] = 0;
  if (v23 == 6)
  {
    v27 = &v62;
  }

  v62 = 0xFFF0000000000000;
  v63 = INFINITY;
  if (v23 == 5)
  {
    v28 = &v65;
  }

  else
  {
    v28 = v26;
  }

  if (v23 == 5)
  {
    v29 = &v64;
  }

  else
  {
    v29 = v27;
  }

  if (v71)
  {
    v30 = 0;
    v31 = (v12 + 1) * v72;
    v32 = 1;
    do
    {
      v24(v95, v96, v28, v29, __p, &v68, v31, v32);
      cv::NAryMatIterator::operator++(v70);
      ++v30;
      v32 += v31;
    }

    while (v30 < v71);
  }

  if (v87)
  {
    v33 = HIDWORD(v84);
    if (SHIDWORD(v84) >= 3)
    {
      v35 = v92;
      v34 = 1;
      do
      {
        v36 = *v35++;
        v34 *= v36;
        --v33;
      }

      while (v33);
    }

    else
    {
      v34 = v86 * v85;
    }

    if (v34)
    {
      if (!v76)
      {
        goto LABEL_46;
      }

      v37 = HIDWORD(v73);
      if (SHIDWORD(v73) >= 3)
      {
        v39 = v81;
        v38 = 1;
        do
        {
          v40 = *v39++;
          v38 *= v40;
          --v37;
        }

        while (v37);
      }

      else
      {
        v38 = v75 * v74;
      }

      if (!v38)
      {
LABEL_46:
        if (!__p[0])
        {
          __p[0] = 1;
        }

        if (!v68)
        {
          v68 = 1;
        }
      }
    }
  }

  v41 = __p[0];
  if (!__p[0])
  {
    v62 = 0;
    v63 = 0.0;
    goto LABEL_57;
  }

  if (v23 == 5)
  {
    v63 = v65;
    v42 = v64;
  }

  else
  {
    if (v23 > 4)
    {
      goto LABEL_57;
    }

    v63 = v67;
    v42 = v66;
  }

  v62 = *&v42;
LABEL_57:
  if (a2)
  {
    *a2 = v63;
  }

  if (v61)
  {
    *v61 = v62;
  }

  if (a4)
  {
    if (v41)
    {
      if (SHIDWORD(v84) >= 1)
      {
        v43 = (v41 - 1);
        v44 = v92;
        v45 = HIDWORD(v84) - 1;
        do
        {
          v46 = v44[v45];
          v47 = v43 / v46;
          *(a4 + v45) = v43 % v46;
          v48 = v45-- + 1;
          v43 = v47;
        }

        while (v48 > 1);
      }
    }

    else if (SHIDWORD(v84) >= 1)
    {
      memset(a4, 255, 4 * HIDWORD(v84));
    }
  }

  if (a5)
  {
    if (v68)
    {
      if (SHIDWORD(v84) >= 1)
      {
        v49 = v68 - 1;
        v50 = v92;
        v51 = HIDWORD(v84) - 1;
        do
        {
          v52 = v50[v51];
          v53 = v49 / v52;
          a5[v51] = v49 % v52;
          v54 = v51-- + 1;
          v49 = v53;
        }

        while (v54 > 1);
      }
    }

    else if (SHIDWORD(v84) >= 1)
    {
      memset(a5, 255, 4 * HIDWORD(v84));
    }
  }

  if (v77 && atomic_fetch_add(v77, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v73);
  }

  v76 = 0;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  if (SHIDWORD(v73) >= 1)
  {
    v55 = 0;
    v56 = v81;
    do
    {
      v56[v55++] = 0;
    }

    while (v55 < SHIDWORD(v73));
  }

  v77 = 0;
  if (v82)
  {
    v57 = v82 == &v83;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    free(v82);
  }

  if (v88 && atomic_fetch_add(v88, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v84);
  }

  v87 = 0;
  v89 = 0;
  v90 = 0;
  v91 = 0;
  if (SHIDWORD(v84) >= 1)
  {
    v58 = 0;
    v59 = v92;
    do
    {
      v59[v58++] = 0;
    }

    while (v58 < SHIDWORD(v84));
  }

  v88 = 0;
  if (v93)
  {
    v60 = v93 == &v94;
  }

  else
  {
    v60 = 1;
  }

  if (!v60)
  {
    free(v93);
  }
}

void sub_22D256658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::minMaxLoc(void (***a1)(uint64_t *__return_ptr), const cv::_InputArray *a2, double *a3, double *a4, int32x2_t *a5, int *a6)
{
  (**a1)(v21);
  if (SHIDWORD(v21[0]) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "img.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v18, "minMaxLoc");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/stat.cpp");
    cv::Exception::Exception(v20, 4294967081, v19, v18, __p, 1144);
    cv::error(v20, v13);
  }

  cv::minMaxIdx(a1, a2, a3, a4, a5, a6, v12);
  if (a4)
  {
    *a4 = vrev64_s32(*a4);
  }

  if (a5)
  {
    *a5 = vrev64_s32(*a5);
  }

  if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v21);
  }

  v21[2] = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (SHIDWORD(v21[0]) >= 1)
  {
    v14 = 0;
    v15 = v26;
    do
    {
      *(v15 + 4 * v14++) = 0;
    }

    while (v14 < SHIDWORD(v21[0]));
  }

  v22 = 0;
  if (v27)
  {
    v16 = v27 == &v28;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    free(v27);
  }
}

void sub_22D2568D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  cv::Mat::~Mat((v27 - 160));
  _Unwind_Resume(a1);
}

unint64_t cv::sum8u(cv *this, const unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4, int a5, double a6, uint8x8_t a7)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v18 = *a3;
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v19 = a4;
        a4 = 0;
        do
        {
          if (*a2++)
          {
            v18 += *this;
            a4 = (a4 + 1);
          }

          this = (this + 1);
          --v19;
        }

        while (v19);
      }

      *a3 = v18;
    }

    else if (a5 == 3)
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      v9 = *(a3 + 2);
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v10 = a4;
        v11 = this + 2;
        a4 = 0;
        do
        {
          if (*a2++)
          {
            v7 += *(v11 - 2);
            v8 += *(v11 - 1);
            v9 += *v11;
            a4 = (a4 + 1);
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      *a3 = v7;
      *(a3 + 1) = v8;
      *(a3 + 2) = v9;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v21 = 0;
      v22 = a4;
      a4 = 0;
      do
      {
        if (a2[v21])
        {
          if (a5 >= 4)
          {
            v23 = 0;
            v24 = a3 + 8;
            do
            {
              v25.i32[0] = *(this + v23);
              v25.i32[1] = *(this + v23 + 1);
              v26 = *v24;
              *(v24 - 1) = vadd_s32(*(v24 - 8), v25);
              v25.i32[0] = *(this + v23 + 2);
              v25.i32[1] = *(this + v23 + 3);
              *v24 = vadd_s32(v26, v25);
              v24 += 16;
              v23 += 4;
            }

            while (v23 <= a5 - 4);
            v23 = v23;
          }

          else
          {
            v23 = 0;
          }

          if (v23 < a5)
          {
            do
            {
              *&a3[4 * v23] += *(this + v23);
              ++v23;
            }

            while (a5 != v23);
          }

          a4 = (a4 + 1);
        }

        ++v21;
        this = (this + a5);
      }

      while (v21 != v22);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      LODWORD(v13) = -(-a5 & 3);
    }

    else
    {
      LODWORD(v13) = a5 & 3;
    }

    switch(v13)
    {
      case 3:
        v31 = *a3;
        v32 = *(a3 + 1);
        v33 = *(a3 + 2);
        if (a4 >= 1)
        {
          v34 = this + 2;
          v35 = a4;
          do
          {
            v31 += *(v34 - 2);
            v32 += *(v34 - 1);
            v33 += *v34;
            v34 += a5;
            --v35;
          }

          while (v35);
        }

        *a3 = v31;
        *(a3 + 1) = v32;
        *(a3 + 2) = v33;
        break;
      case 2:
        v27 = *a3;
        v28 = *(a3 + 1);
        if (a4 >= 1)
        {
          v29 = this + 1;
          v30 = a4;
          do
          {
            v27 += *(v29 - 1);
            v28 += *v29;
            v29 += a5;
            --v30;
          }

          while (v30);
        }

        *a3 = v27;
        *(a3 + 1) = v28;
        break;
      case 1:
        v14 = *a3;
        v15 = 0;
        v16 = a4 - 4;
        if (a4 >= 4)
        {
          v36 = 4 * a5;
          v37 = this;
          do
          {
            v14 += *v37 + *(v37 + a5) + *(v37 + 2 * a5) + *(v37 + 3 * a5);
            v15 += 4;
            v37 = (v37 + v36);
          }

          while (v15 <= v16);
          v15 = (v16 & 0xFFFFFFFC) + 4;
          v17 = (this + ((v16 >> 2) + 1) * v36);
        }

        else
        {
          v17 = this;
        }

        v38 = __OFSUB__(a4, v15);
        v39 = a4 - v15;
        if (!((v39 < 0) ^ v38 | (v39 == 0)))
        {
          do
          {
            v14 += *v17;
            v17 = (v17 + a5);
            --v39;
          }

          while (v39);
        }

        *a3 = v14;
        break;
    }

    if (v13 < a5)
    {
      v13 = v13;
      do
      {
        v40 = &a3[4 * v13];
        v41 = *v40;
        if (a4 >= 1)
        {
          v42 = a4;
          v43 = this;
          do
          {
            a7.i32[0] = *(v43 + v13);
            a7 = vmovl_u8(a7).u64[0];
            v41 = vaddw_u16(v41, a7);
            v43 = (v43 + a5);
            --v42;
          }

          while (v42);
        }

        *v40 = v41;
        v13 += 4;
      }

      while (v13 < a5);
    }
  }

  return a4;
}

unint64_t cv::sum8s(cv *this, const signed __int8 *a2, unsigned __int8 *a3, unint64_t a4, int a5, double a6, int8x8_t a7)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v18 = *a3;
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v19 = a4;
        a4 = 0;
        do
        {
          if (*a2++)
          {
            v18 += *this;
            a4 = (a4 + 1);
          }

          this = (this + 1);
          --v19;
        }

        while (v19);
      }

      *a3 = v18;
    }

    else if (a5 == 3)
    {
      v7 = *a3;
      v8 = *(a3 + 1);
      v9 = *(a3 + 2);
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v10 = a4;
        v11 = this + 2;
        a4 = 0;
        do
        {
          if (*a2++)
          {
            v7 += *(v11 - 2);
            v8 += *(v11 - 1);
            v9 += *v11;
            a4 = (a4 + 1);
          }

          v11 += 3;
          --v10;
        }

        while (v10);
      }

      *a3 = v7;
      *(a3 + 1) = v8;
      *(a3 + 2) = v9;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v21 = 0;
      v22 = a4;
      a4 = 0;
      do
      {
        if (a2[v21])
        {
          if (a5 >= 4)
          {
            v23 = 0;
            v24 = a3 + 8;
            do
            {
              v25.i32[0] = *(this + v23);
              v25.i32[1] = *(this + v23 + 1);
              v26 = *v24;
              *(v24 - 1) = vadd_s32(*(v24 - 8), v25);
              v25.i32[0] = *(this + v23 + 2);
              v25.i32[1] = *(this + v23 + 3);
              *v24 = vadd_s32(v26, v25);
              v24 += 16;
              v23 += 4;
            }

            while (v23 <= a5 - 4);
            v23 = v23;
          }

          else
          {
            v23 = 0;
          }

          if (v23 < a5)
          {
            do
            {
              *&a3[4 * v23] += *(this + v23);
              ++v23;
            }

            while (a5 != v23);
          }

          a4 = (a4 + 1);
        }

        ++v21;
        this = (this + a5);
      }

      while (v21 != v22);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      LODWORD(v13) = -(-a5 & 3);
    }

    else
    {
      LODWORD(v13) = a5 & 3;
    }

    switch(v13)
    {
      case 3:
        v31 = *a3;
        v32 = *(a3 + 1);
        v33 = *(a3 + 2);
        if (a4 >= 1)
        {
          v34 = this + 2;
          v35 = a4;
          do
          {
            v31 += *(v34 - 2);
            v32 += *(v34 - 1);
            v33 += *v34;
            v34 += a5;
            --v35;
          }

          while (v35);
        }

        *a3 = v31;
        *(a3 + 1) = v32;
        *(a3 + 2) = v33;
        break;
      case 2:
        v27 = *a3;
        v28 = *(a3 + 1);
        if (a4 >= 1)
        {
          v29 = this + 1;
          v30 = a4;
          do
          {
            v27 += *(v29 - 1);
            v28 += *v29;
            v29 += a5;
            --v30;
          }

          while (v30);
        }

        *a3 = v27;
        *(a3 + 1) = v28;
        break;
      case 1:
        v14 = *a3;
        v15 = 0;
        v16 = a4 - 4;
        if (a4 >= 4)
        {
          v36 = 4 * a5;
          v37 = this;
          do
          {
            v14 += *v37 + *(v37 + a5) + *(v37 + 2 * a5) + *(v37 + 3 * a5);
            v15 += 4;
            v37 = (v37 + v36);
          }

          while (v15 <= v16);
          v15 = (v16 & 0xFFFFFFFC) + 4;
          v17 = (this + ((v16 >> 2) + 1) * v36);
        }

        else
        {
          v17 = this;
        }

        v38 = __OFSUB__(a4, v15);
        v39 = a4 - v15;
        if (!((v39 < 0) ^ v38 | (v39 == 0)))
        {
          do
          {
            v14 += *v17;
            v17 = (v17 + a5);
            --v39;
          }

          while (v39);
        }

        *a3 = v14;
        break;
    }

    if (v13 < a5)
    {
      v13 = v13;
      do
      {
        v40 = &a3[4 * v13];
        v41 = *v40;
        if (a4 >= 1)
        {
          v42 = a4;
          v43 = this;
          do
          {
            a7.i32[0] = *(v43 + v13);
            a7 = vmovl_s8(a7).u64[0];
            v41 = vaddw_s16(v41, a7);
            v43 = (v43 + a5);
            --v42;
          }

          while (v42);
        }

        *v40 = v41;
        v13 += 4;
      }

      while (v13 < a5);
    }
  }

  return a4;
}

unint64_t cv::sum16u(cv *this, const unsigned __int16 *a2, uint32x4_t *a3, unint64_t a4, int a5)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v16 = a3->i32[0];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v17 = a4;
        a4 = 0;
        do
        {
          v18 = *a2;
          a2 = (a2 + 1);
          if (v18)
          {
            v16 += *this;
            a4 = (a4 + 1);
          }

          this = (this + 2);
          --v17;
        }

        while (v17);
      }

      a3->i32[0] = v16;
    }

    else if (a5 == 3)
    {
      v5 = a3->i32[0];
      v6 = a3->i32[1];
      v7 = a3->i32[2];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v8 = a4;
        v9 = (this + 4);
        a4 = 0;
        do
        {
          v10 = *a2;
          a2 = (a2 + 1);
          if (v10)
          {
            v5 += *(v9 - 2);
            v6 += *(v9 - 1);
            v7 += *v9;
            a4 = (a4 + 1);
          }

          v9 += 3;
          --v8;
        }

        while (v8);
      }

      a3->i32[0] = v5;
      a3->i32[1] = v6;
      a3->i32[2] = v7;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v19 = 0;
      v20 = a4;
      a4 = 0;
      do
      {
        if (*(a2 + v19))
        {
          if (a5 >= 4)
          {
            v21 = 0;
            v22 = a3;
            v23 = this;
            do
            {
              v24 = *v23;
              v23 = (v23 + 8);
              *v22 = vaddw_u16(*v22, v24);
              ++v22;
              v21 += 4;
            }

            while (v21 <= a5 - 4);
            v21 = v21;
          }

          else
          {
            v21 = 0;
          }

          if (v21 < a5)
          {
            do
            {
              a3->i32[v21] += *(this + v21);
              ++v21;
            }

            while (a5 != v21);
          }

          a4 = (a4 + 1);
        }

        ++v19;
        this = (this + 2 * a5);
      }

      while (v19 != v20);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      v11 = -(-a5 & 3);
    }

    else
    {
      v11 = a5 & 3;
    }

    switch(v11)
    {
      case 3:
        v29 = a3->i32[0];
        v30 = a3->i32[1];
        v31 = a3->i32[2];
        if (a4 >= 1)
        {
          v32 = (this + 4);
          v33 = a4;
          do
          {
            v29 += *(v32 - 2);
            v30 += *(v32 - 1);
            v31 += *v32;
            v32 += a5;
            --v33;
          }

          while (v33);
        }

        a3->i32[0] = v29;
        a3->i32[1] = v30;
        a3->i32[2] = v31;
        break;
      case 2:
        v25 = a3->i32[0];
        v26 = a3->i32[1];
        if (a4 >= 1)
        {
          v27 = (this + 2);
          v28 = a4;
          do
          {
            v25 += *(v27 - 1);
            v26 += *v27;
            v27 += a5;
            --v28;
          }

          while (v28);
        }

        a3->i32[0] = v25;
        a3->i32[1] = v26;
        break;
      case 1:
        v12 = a3->i32[0];
        v13 = a4 - 4;
        if (a4 >= 4)
        {
          v34 = 0;
          v15 = this;
          do
          {
            v12 += *v15 + *(v15 + a5) + *(v15 + 2 * a5) + *(v15 + 3 * a5);
            v34 += 4;
            v15 = (v15 + 8 * a5);
          }

          while (v34 <= v13);
          v14 = (v13 & 0xFFFFFFFC) + 4;
        }

        else
        {
          v14 = 0;
          v15 = this;
        }

        v35 = __OFSUB__(a4, v14);
        v36 = a4 - v14;
        if (!((v36 < 0) ^ v35 | (v36 == 0)))
        {
          do
          {
            v12 += *v15;
            v15 = (v15 + 2 * a5);
            --v36;
          }

          while (v36);
        }

        a3->i32[0] = v12;
        break;
    }

    if (v11 < a5)
    {
      v37 = v11;
      v38 = (this + 2 * v11);
      do
      {
        v39 = a3 + 4 * v37;
        v40 = *v39;
        if (a4 >= 1)
        {
          v41 = a4;
          v42 = v38;
          do
          {
            v40 = vaddw_u16(v40, *v42);
            v42 = (v42 + 2 * a5);
            --v41;
          }

          while (v41);
        }

        *v39 = v40;
        v37 += 4;
        ++v38;
      }

      while (v37 < a5);
    }
  }

  return a4;
}

unint64_t cv::sum16s(cv *this, const __int16 *a2, int32x4_t *a3, unint64_t a4, int a5)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v16 = a3->i32[0];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v17 = a4;
        a4 = 0;
        do
        {
          v18 = *a2;
          a2 = (a2 + 1);
          if (v18)
          {
            v16 += *this;
            a4 = (a4 + 1);
          }

          this = (this + 2);
          --v17;
        }

        while (v17);
      }

      a3->i32[0] = v16;
    }

    else if (a5 == 3)
    {
      v5 = a3->i32[0];
      v6 = a3->i32[1];
      v7 = a3->i32[2];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v8 = a4;
        v9 = (this + 4);
        a4 = 0;
        do
        {
          v10 = *a2;
          a2 = (a2 + 1);
          if (v10)
          {
            v5 += *(v9 - 2);
            v6 += *(v9 - 1);
            v7 += *v9;
            a4 = (a4 + 1);
          }

          v9 += 3;
          --v8;
        }

        while (v8);
      }

      a3->i32[0] = v5;
      a3->i32[1] = v6;
      a3->i32[2] = v7;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v19 = 0;
      v20 = a4;
      a4 = 0;
      do
      {
        if (*(a2 + v19))
        {
          if (a5 >= 4)
          {
            v21 = 0;
            v22 = a3;
            v23 = this;
            do
            {
              v24 = *v23;
              v23 = (v23 + 8);
              *v22 = vaddw_s16(*v22, v24);
              ++v22;
              v21 += 4;
            }

            while (v21 <= a5 - 4);
            v21 = v21;
          }

          else
          {
            v21 = 0;
          }

          if (v21 < a5)
          {
            do
            {
              a3->i32[v21] += *(this + v21);
              ++v21;
            }

            while (a5 != v21);
          }

          a4 = (a4 + 1);
        }

        ++v19;
        this = (this + 2 * a5);
      }

      while (v19 != v20);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      v11 = -(-a5 & 3);
    }

    else
    {
      v11 = a5 & 3;
    }

    switch(v11)
    {
      case 3:
        v29 = a3->i32[0];
        v30 = a3->i32[1];
        v31 = a3->i32[2];
        if (a4 >= 1)
        {
          v32 = (this + 4);
          v33 = a4;
          do
          {
            v29 += *(v32 - 2);
            v30 += *(v32 - 1);
            v31 += *v32;
            v32 += a5;
            --v33;
          }

          while (v33);
        }

        a3->i32[0] = v29;
        a3->i32[1] = v30;
        a3->i32[2] = v31;
        break;
      case 2:
        v25 = a3->i32[0];
        v26 = a3->i32[1];
        if (a4 >= 1)
        {
          v27 = (this + 2);
          v28 = a4;
          do
          {
            v25 += *(v27 - 1);
            v26 += *v27;
            v27 += a5;
            --v28;
          }

          while (v28);
        }

        a3->i32[0] = v25;
        a3->i32[1] = v26;
        break;
      case 1:
        v12 = a3->i32[0];
        v13 = a4 - 4;
        if (a4 >= 4)
        {
          v34 = 0;
          v15 = this;
          do
          {
            v12 += *v15 + *(v15 + a5) + *(v15 + 2 * a5) + *(v15 + 3 * a5);
            v34 += 4;
            v15 = (v15 + 8 * a5);
          }

          while (v34 <= v13);
          v14 = (v13 & 0xFFFFFFFC) + 4;
        }

        else
        {
          v14 = 0;
          v15 = this;
        }

        v35 = __OFSUB__(a4, v14);
        v36 = a4 - v14;
        if (!((v36 < 0) ^ v35 | (v36 == 0)))
        {
          do
          {
            v12 += *v15;
            v15 = (v15 + 2 * a5);
            --v36;
          }

          while (v36);
        }

        a3->i32[0] = v12;
        break;
    }

    if (v11 < a5)
    {
      v37 = v11;
      v38 = (this + 2 * v11);
      do
      {
        v39 = a3 + 4 * v37;
        v40 = *v39;
        if (a4 >= 1)
        {
          v41 = a4;
          v42 = v38;
          do
          {
            v40 = vaddw_s16(v40, *v42);
            v42 = (v42 + 2 * a5);
            --v41;
          }

          while (v41);
        }

        *v39 = v40;
        v37 += 4;
        ++v38;
      }

      while (v37 < a5);
    }
  }

  return a4;
}

unint64_t cv::sum32s(cv *this, const int *a2, double *a3, unint64_t a4, int a5)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v17 = *a3;
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v18 = a4;
        a4 = 0;
        do
        {
          v19 = *a2;
          a2 = (a2 + 1);
          if (v19)
          {
            v17 = v17 + *this;
            a4 = (a4 + 1);
          }

          this = (this + 4);
          --v18;
        }

        while (v18);
      }

      *a3 = v17;
    }

    else if (a5 == 3)
    {
      v5 = *a3;
      v6 = a3[2];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v7 = a4;
        v8 = (this + 8);
        a4 = 0;
        do
        {
          v9 = *a2;
          a2 = (a2 + 1);
          if (v9)
          {
            v10 = *(v8 - 1);
            v11.i64[0] = v10;
            v11.i64[1] = SHIDWORD(v10);
            v5 = vaddq_f64(v5, vcvtq_f64_s64(v11));
            v6 = v6 + *v8;
            a4 = (a4 + 1);
          }

          v8 += 3;
          --v7;
        }

        while (v7);
      }

      *a3 = v5;
      a3[2] = v6;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v20 = 0;
      v21 = 4 * a5;
      v22 = this + 8;
      v23 = a4;
      a4 = 0;
      do
      {
        if (*(a2 + v20))
        {
          if (a5 >= 4)
          {
            v24 = 0;
            v25 = (a3 + 2);
            v26 = v22;
            do
            {
              v27 = *(v26 - 1);
              v28.i64[0] = v27;
              v28.i64[1] = SHIDWORD(v27);
              v29 = vaddq_f64(v25[-1], vcvtq_f64_s64(v28));
              v28.i64[0] = *v26;
              v28.i64[1] = HIDWORD(*v26);
              v30 = vaddq_f64(*v25, vcvtq_f64_s64(v28));
              v25[-1] = v29;
              *v25 = v30;
              v24 += 4;
              v26 += 2;
              v25 += 2;
            }

            while (v24 <= a5 - 4);
            v24 = v24;
          }

          else
          {
            v24 = 0;
          }

          if (v24 < a5)
          {
            do
            {
              a3[v24] = a3[v24] + *(this + v24);
              ++v24;
            }

            while (a5 != v24);
          }

          a4 = (a4 + 1);
        }

        ++v20;
        v22 += v21;
        this = (this + v21);
      }

      while (v20 != v23);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      v12 = -(-a5 & 3);
    }

    else
    {
      v12 = a5 & 3;
    }

    switch(v12)
    {
      case 3:
        v35 = *a3;
        v36 = a3[2];
        if (a4 >= 1)
        {
          v37 = (this + 8);
          v38 = a4;
          do
          {
            v39 = *(v37 - 1);
            v40.i64[0] = v39;
            v40.i64[1] = SHIDWORD(v39);
            v35 = vaddq_f64(v35, vcvtq_f64_s64(v40));
            v36 = v36 + *v37;
            v37 += a5;
            --v38;
          }

          while (v38);
        }

        *a3 = v35;
        a3[2] = v36;
        break;
      case 2:
        v31 = *a3;
        if (a4 >= 1)
        {
          v32 = a4;
          v33 = this;
          do
          {
            v34.i64[0] = *v33;
            v34.i64[1] = HIDWORD(*v33);
            v31 = vaddq_f64(v31, vcvtq_f64_s64(v34));
            v33 = (v33 + 4 * a5);
            --v32;
          }

          while (v32);
        }

        *a3 = v31;
        break;
      case 1:
        v13 = *a3;
        v14 = a4 - 4;
        if (a4 >= 4)
        {
          v41 = 0;
          v16 = this;
          do
          {
            v13 = v13 + (*(v16 + a5) + *v16 + *(v16 + 2 * a5) + *(v16 + 3 * a5));
            v41 += 4;
            v16 = (v16 + 16 * a5);
          }

          while (v41 <= v14);
          v15 = (v14 & 0xFFFFFFFC) + 4;
        }

        else
        {
          v15 = 0;
          v16 = this;
        }

        v42 = __OFSUB__(a4, v15);
        v43 = a4 - v15;
        if (!((v43 < 0) ^ v42 | (v43 == 0)))
        {
          do
          {
            v13 = v13 + *v16;
            v16 = (v16 + 4 * a5);
            --v43;
          }

          while (v43);
        }

        *a3 = v13;
        break;
    }

    if (v12 < a5)
    {
      v44 = v12;
      v45 = this + 4 * v12 + 8;
      do
      {
        v46 = &a3[v44];
        v47 = *v46;
        v48 = *(v46 + 1);
        if (a4 >= 1)
        {
          v49 = a4;
          v50 = v45;
          do
          {
            v51 = *(v50 - 1);
            v52.i64[0] = v51;
            v52.i64[1] = SHIDWORD(v51);
            v47 = vaddq_f64(v47, vcvtq_f64_s64(v52));
            v52.i64[0] = *v50;
            v52.i64[1] = HIDWORD(*v50);
            v48 = vaddq_f64(v48, vcvtq_f64_s64(v52));
            v50 = (v50 + 4 * a5);
            --v49;
          }

          while (v49);
        }

        *v46 = v47;
        *(v46 + 1) = v48;
        v44 += 4;
        v45 += 16;
      }

      while (v44 < a5);
    }
  }

  return a4;
}

unint64_t cv::sum32f(float32x2_t *this, const float *a2, double *a3, unint64_t a4, int a5)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v15 = *a3;
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v16 = a4;
        a4 = 0;
        do
        {
          v17 = *a2;
          a2 = (a2 + 1);
          if (v17)
          {
            v15 = v15 + this->f32[0];
            a4 = (a4 + 1);
          }

          this = (this + 4);
          --v16;
        }

        while (v16);
      }

      *a3 = v15;
    }

    else if (a5 == 3)
    {
      v5 = *a3;
      v6 = a3[2];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v7 = a4;
        v8 = &this[1];
        a4 = 0;
        do
        {
          v9 = *a2;
          a2 = (a2 + 1);
          if (v9)
          {
            v5 = vaddq_f64(v5, vcvtq_f64_f32(*(v8 - 2)));
            v6 = v6 + *v8;
            a4 = (a4 + 1);
          }

          v8 += 3;
          --v7;
        }

        while (v7);
      }

      *a3 = v5;
      a3[2] = v6;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v18 = 0;
      v19 = 4 * a5;
      v20 = this + 1;
      v21 = a4;
      a4 = 0;
      do
      {
        if (*(a2 + v18))
        {
          if (a5 >= 4)
          {
            v22 = 0;
            v23 = (a3 + 2);
            v24 = v20;
            do
            {
              v25 = vaddq_f64(*v23, vcvtq_f64_f32(*v24));
              v23[-1] = vaddq_f64(v23[-1], vcvtq_f64_f32(v24[-1]));
              *v23 = v25;
              v22 += 4;
              v24 += 2;
              v23 += 2;
            }

            while (v22 <= a5 - 4);
            v22 = v22;
          }

          else
          {
            v22 = 0;
          }

          if (v22 < a5)
          {
            do
            {
              a3[v22] = a3[v22] + this->f32[v22];
              ++v22;
            }

            while (a5 != v22);
          }

          a4 = (a4 + 1);
        }

        ++v18;
        v20 = (v20 + v19);
        this = (this + v19);
      }

      while (v18 != v21);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      v10 = -(-a5 & 3);
    }

    else
    {
      v10 = a5 & 3;
    }

    switch(v10)
    {
      case 3:
        v29 = *a3;
        v30 = a3[2];
        if (a4 >= 1)
        {
          v31 = &this[1];
          v32 = a4;
          do
          {
            v29 = vaddq_f64(v29, vcvtq_f64_f32(*(v31 - 2)));
            v30 = v30 + *v31;
            v31 += a5;
            --v32;
          }

          while (v32);
        }

        *a3 = v29;
        a3[2] = v30;
        break;
      case 2:
        v26 = *a3;
        if (a4 >= 1)
        {
          v27 = a4;
          v28 = this;
          do
          {
            v26 = vaddq_f64(v26, vcvtq_f64_f32(*v28));
            v28 = (v28 + 4 * a5);
            --v27;
          }

          while (v27);
        }

        *a3 = v26;
        break;
      case 1:
        v11 = *a3;
        v12 = a4 - 4;
        if (a4 >= 4)
        {
          v33 = 0;
          v14 = this;
          do
          {
            v11 = v11 + (((*v14 + v14[a5]) + v14[2 * a5]) + v14[3 * a5]);
            v33 += 4;
            v14 += 4 * a5;
          }

          while (v33 <= v12);
          v13 = (v12 & 0xFFFFFFFC) + 4;
        }

        else
        {
          v13 = 0;
          v14 = this;
        }

        v34 = __OFSUB__(a4, v13);
        v35 = a4 - v13;
        if (!((v35 < 0) ^ v34 | (v35 == 0)))
        {
          do
          {
            v11 = v11 + *v14;
            v14 += a5;
            --v35;
          }

          while (v35);
        }

        *a3 = v11;
        break;
    }

    if (v10 < a5)
    {
      v36 = v10;
      v37 = (this + 4 * v10 + 8);
      do
      {
        v38 = &a3[v36];
        v39 = *v38;
        v40 = *(v38 + 1);
        if (a4 >= 1)
        {
          v41 = a4;
          v42 = v37;
          do
          {
            v39 = vaddq_f64(v39, vcvtq_f64_f32(v42[-1]));
            v40 = vaddq_f64(v40, vcvtq_f64_f32(*v42));
            v42 = (v42 + 4 * a5);
            --v41;
          }

          while (v41);
        }

        *v38 = v39;
        *(v38 + 1) = v40;
        v36 += 4;
        v37 += 2;
      }

      while (v36 < a5);
    }
  }

  return a4;
}

unint64_t cv::sum64f(float64x2_t *this, const double *a2, double *a3, unint64_t a4, int a5)
{
  if (a2)
  {
    if (a5 == 1)
    {
      v15 = *a3;
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v16 = a4;
        a4 = 0;
        do
        {
          v17 = *a2;
          a2 = (a2 + 1);
          if (v17)
          {
            v15 = v15 + this->f64[0];
            a4 = (a4 + 1);
          }

          this = (this + 8);
          --v16;
        }

        while (v16);
      }

      *a3 = v15;
    }

    else if (a5 == 3)
    {
      v5 = *a3;
      v6 = a3[2];
      if (a4 < 1)
      {
        a4 = 0;
      }

      else
      {
        v7 = a4;
        f64 = this[1].f64;
        a4 = 0;
        do
        {
          v9 = *a2;
          a2 = (a2 + 1);
          if (v9)
          {
            v5 = vaddq_f64(v5, *(f64 - 2));
            v6 = v6 + *f64;
            a4 = (a4 + 1);
          }

          f64 += 3;
          --v7;
        }

        while (v7);
      }

      *a3 = v5;
      a3[2] = v6;
    }

    else if (a4 < 1)
    {
      return 0;
    }

    else
    {
      v18 = 0;
      v19 = 8 * a5;
      v20 = this + 1;
      v21 = a4;
      a4 = 0;
      do
      {
        if (*(a2 + v18))
        {
          if (a5 >= 4)
          {
            v22 = 0;
            v23 = (a3 + 2);
            v24 = v20;
            do
            {
              v25 = *v23;
              *(v23 - 1) = vaddq_f64(*(v23 - 1), v24[-1]);
              v26 = *v24;
              v24 += 2;
              *v23 = vaddq_f64(v25, v26);
              v23 += 32;
              v22 += 4;
            }

            while (v22 <= a5 - 4);
            v22 = v22;
          }

          else
          {
            v22 = 0;
          }

          if (v22 < a5)
          {
            do
            {
              a3[v22] = this->f64[v22] + a3[v22];
              ++v22;
            }

            while (a5 != v22);
          }

          a4 = (a4 + 1);
        }

        ++v18;
        v20 = (v20 + v19);
        this = (this + v19);
      }

      while (v18 != v21);
    }
  }

  else
  {
    if (a5 <= 0)
    {
      v10 = -(-a5 & 3);
    }

    else
    {
      v10 = a5 & 3;
    }

    switch(v10)
    {
      case 3:
        v30 = *a3;
        v31 = a3[2];
        if (a4 >= 1)
        {
          v32 = this[1].f64;
          v33 = a4;
          do
          {
            v30 = vaddq_f64(v30, *(v32 - 2));
            v31 = v31 + *v32;
            v32 += a5;
            --v33;
          }

          while (v33);
        }

        *a3 = v30;
        a3[2] = v31;
        break;
      case 2:
        v27 = *a3;
        if (a4 >= 1)
        {
          v28 = a4;
          v29 = this;
          do
          {
            v27 = vaddq_f64(v27, *v29);
            v29 = (v29 + 8 * a5);
            --v28;
          }

          while (v28);
        }

        *a3 = v27;
        break;
      case 1:
        v11 = *a3;
        v12 = a4 - 4;
        if (a4 >= 4)
        {
          v34 = 0;
          v14 = this;
          do
          {
            v11 = v11 + *v14 + v14[a5] + v14[2 * a5] + v14[3 * a5];
            v34 += 4;
            v14 += 4 * a5;
          }

          while (v34 <= v12);
          v13 = (v12 & 0xFFFFFFFC) + 4;
        }

        else
        {
          v13 = 0;
          v14 = this;
        }

        v35 = __OFSUB__(a4, v13);
        v36 = a4 - v13;
        if (!((v36 < 0) ^ v35 | (v36 == 0)))
        {
          do
          {
            v11 = v11 + *v14;
            v14 += a5;
            --v36;
          }

          while (v36);
        }

        *a3 = v11;
        break;
    }

    if (v10 < a5)
    {
      v37 = v10;
      v38 = (this + 8 * v10 + 16);
      do
      {
        v39 = &a3[v37];
        v40 = *v39;
        v41 = *(v39 + 1);
        if (a4 >= 1)
        {
          v42 = a4;
          v43 = v38;
          do
          {
            v40 = vaddq_f64(v40, v43[-1]);
            v41 = vaddq_f64(v41, *v43);
            v43 = (v43 + 8 * a5);
            --v42;
          }

          while (v42);
        }

        *v39 = v40;
        *(v39 + 1) = v41;
        v37 += 4;
        v38 += 2;
      }

      while (v37 < a5);
    }
  }

  return a4;
}

uint64_t cv::countNonZero8u(cv *this, const unsigned __int8 *a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  LODWORD(v2) = 0;
  v3 = a2;
  do
  {
    v4 = *this;
    this = (this + 1);
    if (v4)
    {
      v2 = (v2 + 1);
    }

    else
    {
      v2 = v2;
    }

    --v3;
  }

  while (v3);
  return v2;
}

uint64_t cv::countNonZero16u(cv *this, const unsigned __int16 *a2)
{
  v3 = (a2 - 4);
  if (a2 >= 4)
  {
    v6 = 0;
    LODWORD(result) = 0;
    v7 = this;
    do
    {
      v8 = *v7;
      v7 = (v7 + 8);
      v9 = vbic_s8(0x8000400020001, vceqz_s16(v8));
      v9.i32[0] = vaddv_s16(v9) & 0xF;
      v10 = vcnt_s8(v9);
      v10.i16[0] = vaddlv_u8(v10);
      result = (result + v10.i32[0]);
      v6 += 4;
    }

    while (v6 <= v3);
    v4 = (v3 & 0xFFFFFFFC) + 4;
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  if (v4 < a2)
  {
    v11 = (this + 2 * v4);
    do
    {
      if (*v11++)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      ++v4;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t cv::countNonZero32s(cv *this, const int *a2)
{
  v3 = (a2 - 4);
  if (a2 >= 4)
  {
    v6 = 0;
    LODWORD(result) = 0;
    v7 = this;
    do
    {
      v8 = *v7;
      v7 = (v7 + 16);
      v9 = vbicq_s8(xmmword_22D29BA70, vceqzq_s32(v8));
      v9.i32[0] = vaddvq_s32(v9) & 0xF;
      *v9.i8 = vcnt_s8(*v9.i8);
      v9.i16[0] = vaddlv_u8(*v9.i8);
      result = (result + v9.i32[0]);
      v6 += 4;
    }

    while (v6 <= v3);
    v4 = (v3 & 0xFFFFFFFC) + 4;
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  if (v4 < a2)
  {
    v10 = (this + 4 * v4);
    do
    {
      if (*v10++)
      {
        result = (result + 1);
      }

      else
      {
        result = result;
      }

      ++v4;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t cv::countNonZero32f(cv *this, const float *a2)
{
  v3 = (a2 - 4);
  if (a2 >= 4)
  {
    v6 = 0;
    LODWORD(result) = 0;
    v7 = this;
    do
    {
      v8 = *v7;
      v7 = (v7 + 16);
      v9 = vbicq_s8(xmmword_22D29BA70, vceqzq_f32(v8));
      v9.i32[0] = vaddvq_s32(v9) & 0xF;
      *v9.i8 = vcnt_s8(*v9.i8);
      v9.i16[0] = vaddlv_u8(*v9.i8);
      result = (result + v9.i32[0]);
      v6 += 4;
    }

    while (v6 <= v3);
    v4 = (v3 & 0xFFFFFFFC) + 4;
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  if (v4 < a2)
  {
    v10 = (this + 4 * v4);
    do
    {
      v11 = *v10++;
      if (v11 == 0.0)
      {
        result = result;
      }

      else
      {
        result = (result + 1);
      }

      ++v4;
    }

    while (v4 < a2);
  }

  return result;
}

uint64_t cv::countNonZero64f(cv *this, const double *a2)
{
  v3 = (a2 - 4);
  if (a2 >= 4)
  {
    v6 = 0;
    LODWORD(result) = 0;
    v7 = this;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 1);
      v7 = (v7 + 32);
      v10 = vbicq_s8(xmmword_22D29BA70, vuzp1q_s32(vceqzq_f64(v8), vceqzq_f64(v9)));
      v10.i32[0] = vaddvq_s32(v10);
      *v10.i8 = vcnt_s8(*v10.i8);
      v10.i16[0] = vaddlv_u8(*v10.i8);
      result = (result + v10.i32[0]);
      v6 += 4;
    }

    while (v6 <= v3);
    v4 = (v3 & 0xFFFFFFFC) + 4;
  }

  else
  {
    v4 = 0;
    result = 0;
  }

  if (v4 < a2)
  {
    v11 = (this + 8 * v4);
    do
    {
      v12 = *v11++;
      if (v12 == 0.0)
      {
        result = result;
      }

      else
      {
        result = (result + 1);
      }

      ++v4;
    }

    while (v4 < a2);
  }

  return result;
}

unsigned __int8 *cv::minMaxIdx_8u(unsigned __int8 *this, const unsigned __int8 *a2, unsigned __int8 *a3, int *a4, int *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v15 = *this++;
        v14 = v15;
        v17 = *a2++;
        v16 = v17;
        if (v9 <= v14)
        {
          v18 = v11;
        }

        else
        {
          v18 = a8;
        }

        if (v9 >= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 = v9;
        }

        if (v10 >= v14)
        {
          v20 = v12;
        }

        else
        {
          v20 = a8;
        }

        if (v10 > v14)
        {
          v14 = v10;
        }

        if (v16)
        {
          v11 = v18;
          v9 = v19;
          v12 = v20;
          v10 = v14;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v21 = a7;
    do
    {
      v23 = *this++;
      v22 = v23;
      v25 = __OFSUB__(v9, v23);
      v24 = v9 - v23 < 0;
      if (v9 > v23)
      {
        v11 = a8;
      }

      if (v24 == v25)
      {
        v9 = v22;
      }

      if (v10 < v22)
      {
        v12 = a8;
      }

      if (v10 <= v22)
      {
        v10 = v22;
      }

      ++a8;
      --v21;
    }

    while (v21);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

char *cv::minMaxIdx_8s(char *this, const signed __int8 *a2, unsigned __int8 *a3, int *a4, int *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v15 = *this++;
        v14 = v15;
        v17 = *a2++;
        v16 = v17;
        if (v9 <= v14)
        {
          v18 = v11;
        }

        else
        {
          v18 = a8;
        }

        if (v9 >= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 = v9;
        }

        if (v10 >= v14)
        {
          v20 = v12;
        }

        else
        {
          v20 = a8;
        }

        if (v10 > v14)
        {
          v14 = v10;
        }

        if (v16)
        {
          v11 = v18;
          v9 = v19;
          v12 = v20;
          v10 = v14;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v21 = a7;
    do
    {
      v23 = *this++;
      v22 = v23;
      v25 = __OFSUB__(v9, v23);
      v24 = v9 - v23 < 0;
      if (v9 > v23)
      {
        v11 = a8;
      }

      if (v24 == v25)
      {
        v9 = v22;
      }

      if (v10 < v22)
      {
        v12 = a8;
      }

      if (v10 <= v22)
      {
        v10 = v22;
      }

      ++a8;
      --v21;
    }

    while (v21);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

unsigned __int16 *cv::minMaxIdx_16u(unsigned __int16 *this, const unsigned __int16 *a2, unsigned __int8 *a3, int *a4, int *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v15 = *this++;
        v14 = v15;
        v17 = *a2;
        a2 = (a2 + 1);
        v16 = v17;
        if (v9 <= v14)
        {
          v18 = v11;
        }

        else
        {
          v18 = a8;
        }

        if (v9 >= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 = v9;
        }

        if (v10 >= v14)
        {
          v20 = v12;
        }

        else
        {
          v20 = a8;
        }

        if (v10 > v14)
        {
          v14 = v10;
        }

        if (v16)
        {
          v11 = v18;
          v9 = v19;
          v12 = v20;
          v10 = v14;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v21 = a7;
    do
    {
      v23 = *this++;
      v22 = v23;
      v25 = __OFSUB__(v9, v23);
      v24 = v9 - v23 < 0;
      if (v9 > v23)
      {
        v11 = a8;
      }

      if (v24 == v25)
      {
        v9 = v22;
      }

      if (v10 < v22)
      {
        v12 = a8;
      }

      if (v10 <= v22)
      {
        v10 = v22;
      }

      ++a8;
      --v21;
    }

    while (v21);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

__int16 *cv::minMaxIdx_16s(__int16 *this, const __int16 *a2, unsigned __int8 *a3, int *a4, int *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v15 = *this++;
        v14 = v15;
        v17 = *a2;
        a2 = (a2 + 1);
        v16 = v17;
        if (v9 <= v14)
        {
          v18 = v11;
        }

        else
        {
          v18 = a8;
        }

        if (v9 >= v14)
        {
          v19 = v14;
        }

        else
        {
          v19 = v9;
        }

        if (v10 >= v14)
        {
          v20 = v12;
        }

        else
        {
          v20 = a8;
        }

        if (v10 > v14)
        {
          v14 = v10;
        }

        if (v16)
        {
          v11 = v18;
          v9 = v19;
          v12 = v20;
          v10 = v14;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v21 = a7;
    do
    {
      v23 = *this++;
      v22 = v23;
      v25 = __OFSUB__(v9, v23);
      v24 = v9 - v23 < 0;
      if (v9 > v23)
      {
        v11 = a8;
      }

      if (v24 == v25)
      {
        v9 = v22;
      }

      if (v10 < v22)
      {
        v12 = a8;
      }

      if (v10 <= v22)
      {
        v10 = v22;
      }

      ++a8;
      --v21;
    }

    while (v21);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

int *cv::minMaxIdx_32s(int *this, const int *a2, unsigned __int8 *a3, int *a4, int *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v15 = *this++;
        v14 = v15;
        v16 = *a2;
        a2 = (a2 + 1);
        v17 = v16 != 0;
        if (v16 != 0 && v14 < v9)
        {
          v11 = a8;
          v9 = v14;
        }

        if (v17 && v14 > v10)
        {
          v12 = a8;
          v10 = v14;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v18 = a7;
    do
    {
      v20 = *this++;
      v19 = v20;
      if (v20 < v9)
      {
        v11 = a8;
        v9 = v19;
      }

      if (v19 > v10)
      {
        v12 = a8;
        v10 = v19;
      }

      ++a8;
      --v18;
    }

    while (v18);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

float *cv::minMaxIdx_32f(float *this, const float *a2, float *a3, float *a4, float *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v14 = *this++;
        v15 = v14;
        v16 = *a2;
        a2 = (a2 + 1);
        v17 = v16 != 0;
        if (v16 != 0 && v15 < v9)
        {
          v11 = a8;
          v9 = v15;
        }

        if (v17 && v15 > v10)
        {
          v12 = a8;
          v10 = v15;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v18 = a7;
    do
    {
      v19 = *this++;
      v20 = v19;
      if (v19 < v9)
      {
        v11 = a8;
        v9 = v20;
      }

      if (v20 > v10)
      {
        v12 = a8;
        v10 = v20;
      }

      ++a8;
      --v18;
    }

    while (v18);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

double *cv::minMaxIdx_64f(double *this, const double *a2, double *a3, double *a4, double *a5, unint64_t *a6, unint64_t *a7, unint64_t a8, unint64_t a9)
{
  v9 = *a3;
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  if (a2)
  {
    if (a7 >= 1)
    {
      v13 = a7;
      do
      {
        v14 = *this++;
        v15 = v14;
        LODWORD(v14) = *a2;
        a2 = (a2 + 1);
        v16 = LODWORD(v14) != 0;
        if (LODWORD(v14) != 0 && v15 < v9)
        {
          v11 = a8;
          v9 = v15;
        }

        if (v16 && v15 > v10)
        {
          v12 = a8;
          v10 = v15;
        }

        ++a8;
        --v13;
      }

      while (v13);
    }
  }

  else if (a7 >= 1)
  {
    v17 = a7;
    do
    {
      v18 = *this++;
      v19 = v18;
      if (v18 < v9)
      {
        v11 = a8;
        v9 = v19;
      }

      if (v19 > v10)
      {
        v12 = a8;
        v10 = v19;
      }

      ++a8;
      --v17;
    }

    while (v17);
  }

  *a5 = v11;
  *a6 = v12;
  *a3 = v9;
  *a4 = v10;
  return this;
}

uint64_t cv::LU(cv *this, unint64_t a2, unsigned int a3, int *a4, unint64_t a5, int a6)
{
  if (a3 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 >> 2;
  v8 = a5 >> 2;
  if (a4)
  {
    v9 = a6 < 1;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = 4 * v7;
  v12 = 4 * v7 + 4;
  v13 = 1;
  v14 = 4 * v8;
  v15 = a4;
  v16 = this;
  v17 = this;
  v18 = a3;
  v19 = 1;
  v20 = (this + 4 * v7);
  v21 = &a4[v8];
  do
  {
    v22 = v6 + 1;
    if (v6 + 1 >= a3)
    {
      v25 = v6;
    }

    else
    {
      v23 = v20;
      v24 = v13;
      v25 = v6;
      do
      {
        if (fabsf(*v23) > fabsf(*(this + v6 + v7 * v25)))
        {
          v25 = v24;
        }

        ++v24;
        v23 = (v23 + v11);
      }

      while (a3 != v24);
    }

    if (fabsf(*(this + v7 * v25 + v6)) < 0.00000011921)
    {
      return 0;
    }

    if (v6 != v25)
    {
      v26 = (v17 + v11 * v25);
      v27 = v16;
      v28 = v18;
      do
      {
        v29 = *v27;
        *v27 = *v26;
        v27 = (v27 + 4);
        *v26++ = v29;
        --v28;
      }

      while (v28);
      if ((v10 & 1) == 0)
      {
        v30 = &a4[v8 * v25];
        v31 = v15;
        v32 = a6;
        do
        {
          v33 = *v31;
          *v31++ = *v30;
          *v30++ = v33;
          --v32;
        }

        while (v32);
      }

      v19 = -v19;
    }

    v34 = this + 4 * v6 * v7;
    v35 = -1.0 / *&v34[4 * v6];
    if (v22 < a3)
    {
      v36 = v21;
      v37 = v20;
      v38 = v13;
      do
      {
        v39 = v35 * *(this + v38 * v7 + v6);
        v40 = 1;
        do
        {
          v37[v40] = v37[v40] + (v39 * *(v16 + v40));
          ++v40;
        }

        while (v18 != v40);
        if ((v10 & 1) == 0)
        {
          v41 = 0;
          do
          {
            *&v36[v41 * 4] = *&v36[v41 * 4] + (v39 * *&v15[v41]);
            ++v41;
          }

          while (a6 != v41);
        }

        ++v38;
        v37 = (v37 + v11);
        v36 += v14;
      }

      while (v38 != a3);
    }

    *&v34[4 * v6] = -v35;
    ++v13;
    v20 = (v20 + v12);
    --v18;
    v17 = (v17 + 4);
    v16 = (v16 + v12);
    v15 = (v15 + v14);
    v21 += v14;
    ++v6;
  }

  while (v22 != a3);
  if (a4)
  {
    v42 = v7 + 1;
    v43 = &a4[v8 * a3];
    v44 = (this + 4 * v7 * (a3 - 1) + 4 * a3);
    v45 = 4 * ~v7;
    v46 = a3;
    do
    {
      v47 = v46 - 1;
      if (a6 >= 1)
      {
        v48 = 0;
        v49 = &a4[v47 * v8];
        v50 = v43;
        do
        {
          v51 = *&v49[v48];
          if (v46 < a3)
          {
            v52 = v44;
            v53 = v50;
            v54 = v46;
            do
            {
              v55 = *v52++;
              v51 = v51 - (v55 * *v53);
              ++v54;
              v53 = (v53 + v14);
            }

            while (v54 < a3);
          }

          *&v49[v48++] = v51 * *(this + v47 * v42);
          ++v50;
        }

        while (v48 != a6);
      }

      v43 -= v8;
      v44 = (v44 + v45);
      v9 = v46-- < 2;
    }

    while (!v9);
  }

  return v19;
}

uint64_t cv::LU(cv *this, unint64_t a2, unsigned int a3, uint64_t *a4, unint64_t a5, int a6)
{
  if (a3 < 1)
  {
    return 1;
  }

  v6 = 0;
  v7 = a2 >> 3;
  if (a4)
  {
    v8 = a6 < 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  v10 = 8 * v7;
  v11 = 8 * v7 + 8;
  v12 = 1;
  v13 = a5 >> 3;
  v14 = 8 * (a5 >> 3);
  v15 = a4;
  v16 = this;
  v17 = this;
  v18 = a3;
  v19 = 1;
  v20 = (this + 8 * v7);
  v21 = &a4[v14 / 8];
  do
  {
    v22 = v6 + 1;
    if (v6 + 1 >= a3)
    {
      v25 = v6;
    }

    else
    {
      v23 = v20;
      v24 = v12;
      v25 = v6;
      do
      {
        if (fabs(*v23) > fabs(*(this + v6 + v7 * v25)))
        {
          v25 = v24;
        }

        ++v24;
        v23 = (v23 + v10);
      }

      while (a3 != v24);
    }

    if (fabs(*(this + v7 * v25 + v6)) < 2.22044605e-16)
    {
      return 0;
    }

    if (v6 != v25)
    {
      v26 = (v17 + v10 * v25);
      v27 = v16;
      v28 = v18;
      do
      {
        v29 = *v27;
        *v27 = *v26;
        v27 = (v27 + 8);
        *v26++ = v29;
        --v28;
      }

      while (v28);
      if ((v9 & 1) == 0)
      {
        v30 = &a4[v13 * v25];
        v31 = v15;
        v32 = a6;
        do
        {
          v33 = *v31;
          *v31++ = *v30;
          *v30++ = v33;
          --v32;
        }

        while (v32);
      }

      v19 = -v19;
    }

    v34 = this + 8 * v6 * v7;
    v35 = -1.0 / *&v34[8 * v6];
    if (v22 < a3)
    {
      v36 = v21;
      v37 = v20;
      v38 = v12;
      do
      {
        v39 = v35 * *(this + v38 * v7 + v6);
        v40 = 1;
        do
        {
          v37[v40] = v37[v40] + v39 * *(v16 + v40);
          ++v40;
        }

        while (v18 != v40);
        if ((v9 & 1) == 0)
        {
          v41 = 0;
          do
          {
            *&v36[v41 * 8] = *&v36[v41 * 8] + v39 * *&v15[v41];
            ++v41;
          }

          while (a6 != v41);
        }

        ++v38;
        v37 = (v37 + v10);
        v36 += v14;
      }

      while (v38 != a3);
    }

    *&v34[8 * v6] = -v35;
    ++v12;
    v20 = (v20 + v11);
    --v18;
    v17 = (v17 + 8);
    v16 = (v16 + v11);
    v15 = (v15 + v14);
    v21 += v14;
    ++v6;
  }

  while (v22 != a3);
  if (a4)
  {
    v42 = v7 + 1;
    v43 = &a4[v13 * a3];
    v44 = (this + 8 * v7 * (a3 - 1) + 8 * a3);
    v45 = 8 * ~v7;
    v46 = a3;
    do
    {
      v47 = v46 - 1;
      if (a6 >= 1)
      {
        v48 = 0;
        v49 = &a4[v47 * v13];
        v50 = v43;
        do
        {
          v51 = *&v49[v48];
          if (v46 < a3)
          {
            v52 = v44;
            v53 = v50;
            v54 = v46;
            do
            {
              v55 = *v52++;
              v51 = v51 - v55 * *v53;
              ++v54;
              v53 = (v53 + v14);
            }

            while (v54 < a3);
          }

          *&v49[v48++] = v51 * *(this + v47 * v42);
          ++v50;
        }

        while (v48 != a6);
      }

      v43 -= v13;
      v44 = (v44 + v45);
      v8 = v46-- < 2;
    }

    while (!v8);
  }

  return v19;
}

BOOL cv::Cholesky(cv *this, unint64_t a2, int a3, float *a4, unint64_t a5, int a6)
{
  v6 = (a3 - 1);
  if (a3 < 1)
  {
    return 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a2 >> 2;
    v10 = a5 >> 2;
    v11 = (a2 >> 2) + 1;
    v12 = 4 * (a2 >> 2);
    v13 = this;
    v14 = a3;
    while (1)
    {
      v15 = (this + 4 * v7 * v9);
      if (v7)
      {
        v16 = 0;
        v17 = this;
        do
        {
          v18 = v15[v16];
          if (v16)
          {
            for (i = 0; i != v16; ++i)
            {
              v18 = v18 - (*(v13 + i) * *(v17 + i));
            }
          }

          v20 = v18 * *(this + v16 * v11);
          v15[v16++] = v20;
          v17 = (v17 + v12);
        }

        while (v16 != v7);
        v21 = 0;
        v15 += v7;
        v22 = *v15;
        do
        {
          v22 = v22 - *(v13 + v21) * *(v13 + v21);
          ++v21;
        }

        while (v7 != v21);
      }

      else
      {
        v22 = *v15;
      }

      if (v22 < 0.00000011920929)
      {
        break;
      }

      v23 = 1.0 / sqrt(v22);
      *v15 = v23;
      ++v7;
      v13 = (v13 + v12);
      v8 = v7 >= v14;
      if (v7 == v14)
      {
        if (a4)
        {
          v24 = 0;
          v25 = this;
          do
          {
            if (a6 >= 1)
            {
              v26 = 0;
              v27 = &a4[v24 * v10];
              v28 = a4;
              do
              {
                v29 = v27[v26];
                if (v24)
                {
                  v30 = 0;
                  v31 = v28;
                  do
                  {
                    v29 = v29 - (*(v25 + v30++) * *v31);
                    v31 += v10;
                  }

                  while (v24 != v30);
                }

                v32 = v29 * *(this + v24 * v11);
                v27[v26++] = v32;
                ++v28;
              }

              while (v26 != a6);
            }

            ++v24;
            v25 = (v25 + v12);
          }

          while (v24 != v14);
          v33 = v14 - 1;
          v34 = (this + 4 * v9 * (v14 - 1) + 4 * v6);
          v35 = -4 * v9;
          v36 = v6;
          do
          {
            if (a6 >= 1)
            {
              v37 = 0;
              v38 = &a4[v36 * v10];
              v39 = &a4[v10 * v33];
              do
              {
                v40 = v38[v37];
                if (v36 < v6)
                {
                  v41 = v39;
                  v42 = v34;
                  v43 = v33;
                  do
                  {
                    v40 = v40 - (*v42 * *v41);
                    --v43;
                    v42 = (v42 + v35);
                    v41 -= v10;
                  }

                  while (v36 < v43);
                }

                v44 = v40 * *(this + v36 * v11);
                v38[v37++] = v44;
                ++v39;
              }

              while (v37 != a6);
            }

            --v34;
          }

          while (v36-- > 0);
        }

        return 1;
      }
    }
  }

  return v8;
}

BOOL cv::Cholesky(cv *this, unint64_t a2, int a3, double *a4, unint64_t a5, int a6)
{
  v6 = (a3 - 1);
  if (a3 < 1)
  {
    return 1;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = a2 >> 3;
    v10 = a5 >> 3;
    v11 = (a2 >> 3) + 1;
    v12 = 8 * (a2 >> 3);
    v13 = this;
    v14 = a3;
    while (1)
    {
      v15 = (this + 8 * v7 * v9);
      if (v7)
      {
        v16 = 0;
        v17 = this;
        do
        {
          v18 = v15[v16];
          if (v16)
          {
            for (i = 0; i != v16; ++i)
            {
              v18 = v18 - *(v13 + i) * *(v17 + i);
            }
          }

          v15[v16] = v18 * *(this + v16 * v11);
          ++v16;
          v17 = (v17 + v12);
        }

        while (v16 != v7);
        v20 = 0;
        v15 += v7;
        v21 = *v15;
        do
        {
          v21 = v21 - *(v13 + v20) * *(v13 + v20);
          ++v20;
        }

        while (v7 != v20);
      }

      else
      {
        v21 = *v15;
      }

      if (v21 < 2.22044605e-16)
      {
        break;
      }

      *v15 = 1.0 / sqrt(v21);
      ++v7;
      v13 = (v13 + v12);
      v8 = v7 >= v14;
      if (v7 == v14)
      {
        if (a4)
        {
          v22 = 0;
          v23 = this;
          do
          {
            if (a6 >= 1)
            {
              v24 = 0;
              v25 = &a4[v22 * v10];
              v26 = a4;
              do
              {
                v27 = v25[v24];
                if (v22)
                {
                  v28 = 0;
                  v29 = v26;
                  do
                  {
                    v27 = v27 - *(v23 + v28++) * *v29;
                    v29 += v10;
                  }

                  while (v22 != v28);
                }

                v25[v24++] = v27 * *(this + v22 * v11);
                ++v26;
              }

              while (v24 != a6);
            }

            ++v22;
            v23 = (v23 + v12);
          }

          while (v22 != v14);
          v30 = v14 - 1;
          v31 = (this + 8 * v9 * (v14 - 1) + 8 * v6);
          v32 = -8 * v9;
          v33 = v6;
          do
          {
            if (a6 >= 1)
            {
              v34 = 0;
              v35 = &a4[v33 * v10];
              v36 = &a4[v10 * v30];
              do
              {
                v37 = v35[v34];
                if (v33 < v6)
                {
                  v38 = v36;
                  v39 = v31;
                  v40 = v30;
                  do
                  {
                    v37 = v37 - *v39 * *v38;
                    --v40;
                    v39 = (v39 + v32);
                    v38 -= v10;
                  }

                  while (v33 < v40);
                }

                v35[v34++] = v37 * *(this + v33 * v11);
                ++v36;
              }

              while (v34 != a6);
            }

            --v31;
          }

          while (v33-- > 0);
        }

        return 1;
      }
    }
  }

  return v8;
}

double cv::invert(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v5 = v4;
  v7 = v6;
  v180 = *MEMORY[0x277D85DE8];
  (**v3)(&v167);
  v8 = v167 & 0xFFF;
  if ((v8 - 5) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v154, "type == CV_32F || type == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(&v140, "invert");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v178, 4294967081, &v154, &v140, __p, 938);
    cv::error(&v178, v9);
  }

  v10 = (((v167 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v167 & 7))) & 3);
  v11 = v169;
  v120 = v169;
  if (v5 == 1)
  {
    if (v169 >= v168)
    {
      v12 = v168;
    }

    else
    {
      v12 = v169;
    }

    v178.i64[0] = v179;
    v178.i64[1] = 4104;
    if ((v10 * (v12 + v12 * (v168 + v169)) + 8) >= 0x1009)
    {
      v178.i64[1] = v10 * (v12 + v12 * (v168 + v169)) + 8;
      operator new[]();
    }

    v155 = v168;
    v156 = v12;
    v157 = ((v179 + v10 - 1) & -v10);
    v158 = 0;
    v163 = &v155;
    v164 = &v165;
    HIDWORD(v154) = 2;
    LODWORD(v154) = v8 | 0x42FF4000;
    v165 = (v10 * v12);
    v166 = (((v167 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v167 & 7))) & 3);
    v161 = v157 + v165 * v168;
    v162 = 0;
    v159 = v157;
    v160 = v161;
    v142 = v12;
    v143 = 1;
    v144 = (v157 + v10 * (v12 * v168));
    v145 = 0;
    v150 = &v142;
    v151 = &v152;
    v141 = 2;
    v140 = v8 | 0x42FF4000;
    v152 = v166;
    v153 = v166;
    v148 = v165 + v144;
    v149 = 0;
    v146 = v144;
    v147 = v165 + v144;
    __p[1] = __PAIR64__(v169, v12);
    v131 = v165 + v144;
    v136 = &__p[1];
    v137 = &v138;
    __p[0] = (v167 & 0xFFF | 0x242FF4000);
    v138 = (v169 * v10);
    v139 = v166;
    v134 = v165 + v144 + v138 * v12;
    v135 = 0;
    v132 = v165 + v144;
    v133 = v134;
    cv::_InputArray::_InputArray(v121, &v167);
    cv::_OutputArray::_OutputArray(v129, &v140);
    cv::_OutputArray::_OutputArray(v128, &v154);
    cv::_OutputArray::_OutputArray(v127, __p);
    cv::_SVDcompute(v121, v129, v128, v127, 0);
    cv::_InputArray::_InputArray(v129, &v140);
    cv::_InputArray::_InputArray(v128, &v154);
    cv::_InputArray::_InputArray(v127, __p);
    v122 = &v121[8];
    v123 = &v124;
    v124 = 0;
    v125 = 0;
    *v121 = 1124007936;
    memset(&v121[4], 0, 60);
    cv::_InputArray::_InputArray(v126, v121);
    cv::SVD::backSubst(v129, v128, v127, v126, v7, v13);
    if (*&v121[24] && atomic_fetch_add(*&v121[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v121);
    }

    *&v121[16] = 0;
    memset(&v121[32], 0, 24);
    if (*&v121[4] >= 1)
    {
      v14 = 0;
      v15 = v122;
      do
      {
        *&v15[4 * v14++] = 0;
      }

      while (v14 < *&v121[4]);
    }

    *&v121[24] = 0;
    if (v123)
    {
      v16 = v123 == &v124;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      free(v123);
    }

    if (v8 == 5)
    {
      v17 = 0.0;
      if (*v144 >= 0.00000011921)
      {
        v17 = (*(v144 + v120 - 1) / *v144);
      }
    }

    else
    {
      v17 = 0.0;
      if (*v144 >= 2.22044605e-16)
      {
        v17 = *(v144 + v120 - 1) / *v144;
      }
    }

    if (*(&v131 + 1) && atomic_fetch_add(*(&v131 + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(__p);
    }

    *&v131 = 0;
    v133 = 0;
    v134 = 0;
    v132 = 0;
    if (SHIDWORD(__p[0]) >= 1)
    {
      v57 = 0;
      v58 = v136;
      do
      {
        *(v58 + v57++) = 0;
      }

      while (v57 < SHIDWORD(__p[0]));
    }

    *(&v131 + 1) = 0;
    if (v137)
    {
      v59 = v137 == &v138;
    }

    else
    {
      v59 = 1;
    }

    if (!v59)
    {
      free(v137);
    }

    if (v145 && atomic_fetch_add(v145, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v140);
    }

    v144 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    if (v141 >= 1)
    {
      v60 = 0;
      v61 = v150;
      do
      {
        v61[v60++] = 0;
      }

      while (v60 < v141);
    }

    v145 = 0;
    if (v151)
    {
      v62 = v151 == &v152;
    }

    else
    {
      v62 = 1;
    }

    if (!v62)
    {
      free(v151);
    }

    if (v158 && atomic_fetch_add(v158, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v154);
    }

    v157 = 0;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    if (SHIDWORD(v154) >= 1)
    {
      v63 = 0;
      v64 = v163;
      do
      {
        v64[v63++] = 0;
      }

      while (v63 < SHIDWORD(v154));
    }

LABEL_117:
    v158 = 0;
    if (v164)
    {
      v74 = v164 == &v165;
    }

    else
    {
      v74 = 1;
    }

    if (!v74)
    {
      free(v164);
    }

    if (v178.i64[0] != v179 && v178.i64[0] != 0)
    {
      MEMORY[0x2318CB180]();
    }

    goto LABEL_179;
  }

  if (v168 != v169)
  {
    std::string::basic_string[abi:ne200100]<0>(&v154, "m == n");
    std::string::basic_string[abi:ne200100]<0>(&v140, "invert");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v178, 4294967081, &v154, &v140, __p, 962);
    cv::error(&v178, v18);
  }

  if (v5 == 2)
  {
    v19 = v169 * v169;
    v178.i64[0] = v179;
    v178.i64[1] = 4104;
    if ((v10 * (v169 + 2 * v169 * v169) + 8) >= 0x1009)
    {
      v178.i64[1] = v10 * (v169 + 2 * v19) + 8;
      operator new[]();
    }

    v155 = v169;
    v156 = v169;
    v157 = ((v179 + v10 - 1) & -v10);
    v158 = 0;
    v163 = &v155;
    v164 = &v165;
    HIDWORD(v154) = 2;
    LODWORD(v154) = v8 | 0x42FF4000;
    v165 = (v169 * v10);
    v166 = (((v167 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v167 & 7))) & 3);
    v161 = v157 + v165 * v169;
    v162 = 0;
    v159 = v157;
    v160 = v161;
    v142 = v169;
    v143 = 1;
    v144 = (v157 + v10 * v19);
    v145 = 0;
    v150 = &v142;
    v151 = &v152;
    v141 = 2;
    v140 = v8 | 0x42FF4000;
    v152 = v166;
    v153 = v166;
    v148 = v165 + v144;
    v149 = 0;
    v146 = v144;
    v147 = v165 + v144;
    LODWORD(__p[1]) = v169;
    HIDWORD(__p[1]) = v169;
    v131 = v165 + v144;
    v136 = &__p[1];
    v137 = &v138;
    __p[0] = (v167 & 0xFFF | 0x242FF4000);
    v138 = v165;
    v139 = v166;
    v134 = v165 + v144 + v165 * v169;
    v135 = 0;
    v132 = v165 + v144;
    v133 = v134;
    cv::_InputArray::_InputArray(v121, &v167);
    cv::_OutputArray::_OutputArray(v129, &v140);
    cv::_OutputArray::_OutputArray(v128, __p);
    cv::eigen(v121, 1, v129, v128, v20);
    cv::_InputArray::_InputArray(v121, __p);
    cv::_OutputArray::_OutputArray(v129, &v154);
    cv::transpose(v121, v129, v21);
    cv::_InputArray::_InputArray(v129, &v140);
    cv::_InputArray::_InputArray(v128, &v154);
    cv::_InputArray::_InputArray(v127, __p);
    v122 = &v121[8];
    v123 = &v124;
    v124 = 0;
    v125 = 0;
    *v121 = 1124007936;
    memset(&v121[4], 0, 60);
    cv::_InputArray::_InputArray(v126, v121);
    cv::SVD::backSubst(v129, v128, v127, v126, v7, v22);
    if (*&v121[24] && atomic_fetch_add(*&v121[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v121);
    }

    *&v121[16] = 0;
    memset(&v121[32], 0, 24);
    if (*&v121[4] >= 1)
    {
      v23 = 0;
      v24 = v122;
      do
      {
        *&v24[4 * v23++] = 0;
      }

      while (v23 < *&v121[4]);
    }

    *&v121[24] = 0;
    if (v123)
    {
      v25 = v123 == &v124;
    }

    else
    {
      v25 = 1;
    }

    if (!v25)
    {
      free(v123);
    }

    if (v8 == 5)
    {
      v17 = 0.0;
      if (*v144 >= 0.00000011921)
      {
        v17 = (*(v144 + v120 - 1) / *v144);
      }
    }

    else
    {
      v17 = 0.0;
      if (*v144 >= 2.22044605e-16)
      {
        v17 = *(v144 + v120 - 1) / *v144;
      }
    }

    if (*(&v131 + 1) && atomic_fetch_add(*(&v131 + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(__p);
    }

    *&v131 = 0;
    v133 = 0;
    v134 = 0;
    v132 = 0;
    if (SHIDWORD(__p[0]) >= 1)
    {
      v66 = 0;
      v67 = v136;
      do
      {
        *(v67 + v66++) = 0;
      }

      while (v66 < SHIDWORD(__p[0]));
    }

    *(&v131 + 1) = 0;
    if (v137)
    {
      v68 = v137 == &v138;
    }

    else
    {
      v68 = 1;
    }

    if (!v68)
    {
      free(v137);
    }

    if (v145 && atomic_fetch_add(v145, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v140);
    }

    v144 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    if (v141 >= 1)
    {
      v69 = 0;
      v70 = v150;
      do
      {
        v70[v69++] = 0;
      }

      while (v69 < v141);
    }

    v145 = 0;
    if (v151)
    {
      v71 = v151 == &v152;
    }

    else
    {
      v71 = 1;
    }

    if (!v71)
    {
      free(v151);
    }

    if (v158 && atomic_fetch_add(v158, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v154);
    }

    v157 = 0;
    v160 = 0;
    v161 = 0;
    v159 = 0;
    if (SHIDWORD(v154) >= 1)
    {
      v72 = 0;
      v73 = v163;
      do
      {
        v73[v72++] = 0;
      }

      while (v72 < SHIDWORD(v154));
    }

    goto LABEL_117;
  }

  if (v5 && v5 != 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v154, "method == DECOMP_LU || method == DECOMP_CHOLESKY");
    std::string::basic_string[abi:ne200100]<0>(&v140, "invert");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v178, 4294967081, &v154, &v140, __p, 982);
    cv::error(&v178, v26);
  }

  (*(*v7 + 136))(v7, v169, v169, v8, 0xFFFFFFFFLL, 0, 0);
  (**v7)(&v154, v7, 0xFFFFFFFFLL);
  if (v11 > 3)
  {
    v178.i64[0] = v179;
    v178.i64[1] = 4104;
    if ((v11 * v11 * v10) >= 0x1009)
    {
      v178.i64[1] = (v11 * v11 * v10);
      operator new[]();
    }

    v142 = v11;
    v143 = v11;
    v144 = v179;
    v145 = 0;
    v150 = &v142;
    v151 = &v152;
    v141 = 2;
    v140 = v8 | 0x42FF4000;
    v152 = (v11 * v10);
    v153 = ((v8 >> 3) + 1) << ((0xFA50u >> (2 * (v8 & 7))) & 3);
    v148 = v179 + v152 * v11;
    v149 = 0;
    v146 = v179;
    v147 = v148;
    cv::_OutputArray::_OutputArray(__p, &v140);
    cv::Mat::copyTo(&v167, __p);
    cv::_OutputArray::_OutputArray(__p, &v154);
    *v121 = 0x3FF0000000000000;
    memset(&v121[8], 0, 24);
    cv::setIdentity(__p, v121);
    if (v5 || v8 != 5)
    {
      if (v5 || v8 != 6)
      {
        if (v5 == 3 && v8 == 5)
        {
          v87 = cv::Cholesky(v144, v152, v11, v157, v165, v11);
        }

        else
        {
          v87 = cv::Cholesky(v144, v152, v11, v157, v165, v11);
        }

        v17 = 1.0;
        if (v87)
        {
          goto LABEL_152;
        }

LABEL_151:
        *__p = 0u;
        v131 = 0u;
        cv::Mat::operator=(&v154, __p);
        v17 = 0.0;
LABEL_152:
        if (v145 && atomic_fetch_add(v145, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v140);
        }

        v144 = 0;
        v147 = 0;
        v148 = 0;
        v146 = 0;
        if (v141 >= 1)
        {
          v109 = 0;
          v110 = v150;
          do
          {
            v110[v109++] = 0;
          }

          while (v109 < v141);
        }

        v145 = 0;
        if (v151)
        {
          v111 = v151 == &v152;
        }

        else
        {
          v111 = 1;
        }

        if (!v111)
        {
          free(v151);
        }

        if (v178.i64[0] != v179 && v178.i64[0] != 0)
        {
          MEMORY[0x2318CB180]();
        }

        goto LABEL_168;
      }

      v65 = cv::LU(v144, v152, v11, v157, v165, v11);
    }

    else
    {
      v65 = cv::LU(v144, v152, v11, v157, v165, v11);
    }

    v17 = 1.0;
    if (v65)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

  v27 = v170;
  v28 = v157;
  v29 = v165;
  switch(v11)
  {
    case 2:
      if (v8 == 5)
      {
        v76 = *v170;
        v77 = (v170 + v177);
        v78 = *(v170 + v177 + 4);
        v79 = v76 * v78 - *(v170 + 4) * *(v170 + v177);
        if (v79 != 0.0)
        {
          v17 = 1.0;
          v80 = 1.0 / v79;
          v81 = v80 * v76;
          v82 = (v165 + v157);
          v82[1] = v81;
          v83 = v80 * v78;
          *v28 = v83;
          v84 = v80 * -*v77;
          v85 = v80 * -*(v27 + 4);
          v28[1] = v85;
          v86 = v84;
          *v82 = v86;
          goto LABEL_168;
        }
      }

      else
      {
        v103 = (v170 + v177);
        v104 = *(v170 + v177 + 8);
        v105 = *v170 * v104 - *(v170 + 8) * *(v170 + v177);
        if (v105 != 0.0)
        {
          v17 = 1.0;
          v106 = 1.0 / v105;
          v107 = (v165 + v157);
          v107[1] = *v170 * v106;
          *v28 = v104 * v106;
          v108 = -(*v103 * v106);
          *(v28 + 1) = -(*(v27 + 8) * v106);
          *v107 = v108;
          goto LABEL_168;
        }
      }

      break;
    case 3:
      v30 = v170 + 2 * v177;
      if (v8 == 5)
      {
        v31 = *v170;
        v32 = *(v170 + v177 + 4);
        v33 = *(v30 + 8);
        v34 = *(v170 + v177 + 8);
        v35 = *(v30 + 4);
        v36.f64[0] = v32 * v33 - v34 * v35;
        v37 = *(v170 + 4);
        v38 = *(v170 + v177);
        v39 = *v30;
        v40 = *(v170 + 8);
        v41.f64[0] = v38 * v35 - v32 * v39;
        v42 = v31 * v36.f64[0] - (v38 * v33 - v34 * v39) * v37 + v40 * v41.f64[0];
        if (v42 != 0.0)
        {
          v17 = 1.0;
          v43 = 1.0 / v42;
          v44 = v40 * v35 - v37 * v33;
          v45 = (v37 * v34 - v40 * v32) * v43;
          v46 = (v34 * v39 - v38 * v33) * v43;
          v47 = (v31 * v33 - v40 * v39) * v43;
          v48 = (v40 * v38 - v31 * v34) * v43;
          v49 = v37 * v39 - v31 * v35;
          v50 = (v31 * v32 - v37 * v38) * v43;
          v36.f64[1] = v44;
          *v157 = vcvt_f32_f64(vmulq_n_f64(v36, v43));
          v51 = v45;
          v28[2] = v51;
          v52 = v46;
          v53 = (v29 + v28);
          v54 = v47;
          *v53 = v52;
          v53[1] = v54;
          v55 = v48;
          v53[2] = v55;
          v41.f64[1] = v49;
          v56 = (v28 + 2 * v29);
          *v56 = vcvt_f32_f64(vmulq_n_f64(v41, v43));
          *&v50 = v50;
          v56[1].i32[0] = LODWORD(v50);
          goto LABEL_168;
        }
      }

      else
      {
        v88 = *(v30 + 8);
        v89 = *(v30 + 16);
        v90 = *(v170 + v177 + 8);
        v91 = *(v170 + v177 + 16);
        v92 = *v30;
        v93 = *(v170 + v177);
        v94 = v90 * v89 - v91 * v88;
        v95 = *v170;
        v96 = *(v170 + 8);
        v97 = *(v170 + 16);
        v98 = v93 * v88 - v90 * *v30;
        v99 = *v170 * v94 - v96 * (v93 * v89 - v91 * *v30) + v97 * v98;
        if (v99 != 0.0)
        {
          v17 = 1.0;
          v100 = 1.0 / v99;
          *v157 = v94 * v100;
          *(v28 + 1) = (v89 * -v96 + v97 * v88) * v100;
          *(v28 + 2) = (v96 * v91 - v97 * v90) * v100;
          v101 = (v29 + v28);
          *v101 = (v91 * v92 - v93 * v89) * v100;
          v101[1] = (v95 * v89 - v97 * v92) * v100;
          v101[2] = (v97 * v93 - v95 * v91) * v100;
          v102 = (v28 + 2 * v29);
          *v102 = v98 * v100;
          v102[1] = (v96 * v92 - v95 * v88) * v100;
          v102[2] = (v93 * -v96 + v95 * v90) * v100;
          goto LABEL_168;
        }
      }

      break;
    case 1:
      if (v8 == 5)
      {
        if (*v170 != 0.0)
        {
          *v157 = 1.0 / *v170;
          v17 = 1.0;
          goto LABEL_168;
        }
      }

      else if (*v170 != 0.0)
      {
        v17 = 1.0;
        *v157 = 1.0 / *v170;
        goto LABEL_168;
      }

      break;
    default:
      __assert_rtn("invert", "lapack.cpp", 1137, "n == 1");
  }

  v178 = 0u;
  v179[0] = 0u;
  cv::Mat::operator=(&v154, &v178);
  v17 = 0.0;
LABEL_168:
  if (v158 && atomic_fetch_add(v158, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v154);
  }

  v157 = 0;
  v159 = 0;
  v160 = 0;
  v161 = 0;
  if (SHIDWORD(v154) >= 1)
  {
    v113 = 0;
    v114 = v163;
    do
    {
      v114[v113++] = 0;
    }

    while (v113 < SHIDWORD(v154));
  }

  v158 = 0;
  if (v164)
  {
    v115 = v164 == &v165;
  }

  else
  {
    v115 = 1;
  }

  if (!v115)
  {
    free(v164);
  }

LABEL_179:
  if (v171 && atomic_fetch_add(v171, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v167);
  }

  v170 = 0;
  v172 = 0;
  v174 = 0;
  v173 = 0;
  if (SHIDWORD(v167) >= 1)
  {
    v116 = 0;
    v117 = v175;
    do
    {
      *(v117 + 4 * v116++) = 0;
    }

    while (v116 < SHIDWORD(v167));
  }

  v171 = 0;
  if (v176)
  {
    v118 = v176 == &v177;
  }

  else
  {
    v118 = 1;
  }

  if (!v118)
  {
    free(v176);
  }

  return v17;
}

void sub_22D25A350(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::SVD::backSubst(cv::SVD *this, const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_InputArray *a4, const cv::_InputArray *a5, const cv::_OutputArray *a6)
{
  v6 = MEMORY[0x28223BE20](this, a2);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v105[515] = *MEMORY[0x277D85DE8];
  (**v6)(&v92);
  (**v14)(&v81, v14, 0xFFFFFFFFLL);
  (**v12)(&v70, v12, 0xFFFFFFFFLL);
  (**v10)(&v59, v10, 0xFFFFFFFFLL);
  if (SHIDWORD(v92) < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *(v101 + 2 * HIDWORD(v92) - 2);
  }

  v16 = v92 & 0xFFF;
  v17 = v82;
  v18 = v72;
  if (v62)
  {
    v19 = v61;
  }

  else
  {
    v19 = v82;
  }

  if (v72 >= v82)
  {
    v20 = v82;
  }

  else
  {
    v20 = v72;
  }

  if (v93 != 1)
  {
    if (v94 == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = v15;
    }

    v15 = v102 + v21;
  }

  v103 = v105;
  v104 = 4104;
  if ((8 * v19 + 16) >= 0x1009)
  {
    v104 = 8 * v19 + 16;
    operator new[]();
  }

  if (v16 != (v81 & 0xFFF) || v16 != (v70 & 0xFFF) || !v84 || !*v73 || !*v95)
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "w.type() == u.type() && u.type() == vt.type() && u.data && vt.data && w.data");
    std::string::basic_string[abi:ne200100]<0>(v57, "backSubst");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(v58, 4294967081, v47, v57, __p, 1598);
    cv::error(v58, v22);
  }

  if (v83 < v20 || v71 < v20 || ((v24 = *v100, v25 = v100[1], v25 != v20) || v24 != 1) && (v25 != 1 || v24 != v20) && (v25 != v71 || v24 != v83))
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "u.cols >= nm && vt.rows >= nm && (w.size() == Size(nm, 1) || w.size() == Size(1, nm) || w.size() == Size(vt.rows, u.cols))");
    std::string::basic_string[abi:ne200100]<0>(v57, "backSubst");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(v58, 4294967081, v47, v57, __p, 1600);
    cv::error(v58, v23);
  }

  if (v62 && ((v59 & 0xFFF) != v16 || v60 != v82))
  {
    std::string::basic_string[abi:ne200100]<0>(v47, "rhs.data == 0 || (rhs.type() == type && rhs.rows == m)");
    std::string::basic_string[abi:ne200100]<0>(v57, "backSubst");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(v58, 4294967081, v47, v57, __p, 1601);
    cv::error(v58, v26);
  }

  (*(*v8 + 136))(v8, v72, v19, v16, 0xFFFFFFFFLL, 0, 0);
  (**v8)(v47, v8, 0xFFFFFFFFLL);
  if (v16 == 6)
  {
    LODWORD(v44) = v19;
    cv::SVBkSb(v17, v18, *v95, v15, v84, v91, 0, *v73, v80, v62, v69, v44, v48, v55, v103, v45, v46[0]);
  }

  else
  {
    if (v16 != 5)
    {
      std::string::basic_string[abi:ne200100]<0>(v57, "");
      std::string::basic_string[abi:ne200100]<0>(__p, "backSubst");
      std::string::basic_string[abi:ne200100]<0>(v46, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
      cv::Exception::Exception(v58, 4294967086, v57, __p, v46, 1614);
      cv::error(v58, v27);
    }

    LODWORD(v44) = v19;
    cv::SVBkSb(v17, v18, *v95, v15, v84, v91, 0, *v73, v80, v62, v69, v44, v48, v55, v103, v45, v46[0]);
  }

  if (v49 && atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v47);
  }

  v48 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (SHIDWORD(v47[0]) >= 1)
  {
    v28 = 0;
    v29 = v53;
    do
    {
      *(v29 + 4 * v28++) = 0;
    }

    while (v28 < SHIDWORD(v47[0]));
  }

  v49 = 0;
  if (v54)
  {
    v30 = v54 == &v55;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v54);
  }

  if (v103 != v105 && v103 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  if (v63 && atomic_fetch_add(v63, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v59);
  }

  v62 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  if (SHIDWORD(v59) >= 1)
  {
    v32 = 0;
    v33 = v67;
    do
    {
      *(v33 + 4 * v32++) = 0;
    }

    while (v32 < SHIDWORD(v59));
  }

  v63 = 0;
  if (v68)
  {
    v34 = v68 == &v69;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    free(v68);
  }

  if (v74 && atomic_fetch_add(v74, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v70);
  }

  *v73 = 0;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (SHIDWORD(v70) >= 1)
  {
    v35 = 0;
    v36 = v78;
    do
    {
      *(v36 + 4 * v35++) = 0;
    }

    while (v35 < SHIDWORD(v70));
  }

  v74 = 0;
  if (v79)
  {
    v37 = v79 == &v80;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    free(v79);
  }

  if (v85 && atomic_fetch_add(v85, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v81);
  }

  v84 = 0;
  v86 = 0;
  v88 = 0;
  v87 = 0;
  if (SHIDWORD(v81) >= 1)
  {
    v38 = 0;
    v39 = v89;
    do
    {
      *(v39 + 4 * v38++) = 0;
    }

    while (v38 < SHIDWORD(v81));
  }

  v85 = 0;
  if (v90)
  {
    v40 = v90 == &v91;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    free(v90);
  }

  if (v96 && atomic_fetch_add(v96, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v92);
  }

  *v95 = 0;
  v97 = 0;
  v99 = 0;
  v98 = 0;
  if (SHIDWORD(v92) >= 1)
  {
    v41 = 0;
    v42 = v100;
    do
    {
      v42[v41++] = 0;
    }

    while (v41 < SHIDWORD(v92));
  }

  v96 = 0;
  if (v101)
  {
    v43 = v101 == &v102;
  }

  else
  {
    v43 = 1;
  }

  if (!v43)
  {
    free(v101);
  }
}

void sub_22D25ADA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::solve(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4)
{
  v4 = MEMORY[0x28223BE20](this, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v269[507] = *MEMORY[0x277D85DE8];
  (**v4)(&v249);
  (**v10)(&v241, v10, 0xFFFFFFFFLL);
  v11 = v249 & 0xFFF;
  if (v11 != (v241 & 0xFFF) || (v11 - 5) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v210, "type == _src2.type() && (type == CV_32F || type == CV_64F)");
    std::string::basic_string[abi:ne200100]<0>(v233, "solve");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v260, 4294967081, &v210, v233, __p, 1197);
    cv::error(&v260, v13);
  }

  if (v6 <= 0x13 && ((1 << v6) & 0x90009) != 0)
  {
    if ((v6 & 0x10) == 0 && v250 != v251)
    {
      std::string::basic_string[abi:ne200100]<0>(&v210, "(method != DECOMP_LU && method != DECOMP_CHOLESKY) || is_normal || src.rows == src.cols");
      std::string::basic_string[abi:ne200100]<0>(v233, "solve");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
      cv::Exception::Exception(&v260, 4294967081, &v210, v233, __p, 1201);
      cv::error(&v260, v14);
    }

    if (((1 << v6) & 0x90009) != 0 && (v6 & 0x10) == 0 && v250 <= 3 && v250 == v251 && HIDWORD(v241) == 1)
    {
      (*(*v8 + 136))(v8);
      (**v8)(&v260, v8, 0xFFFFFFFFLL);
      v15 = v262;
      v16 = v269[0];
      switch(v250)
      {
        case 2:
          if (v11 == 5)
          {
            v85 = *v252;
            v86 = *(v252 + v259 + 4);
            v87 = *(v252 + 4);
            v88 = *(v252 + v259);
            v89 = v85 * v86 - v87 * v88;
            if (v89 != 0.0)
            {
              v90 = 1.0 / v89;
              v91 = *v242;
              v92 = *(v242 + v248);
              v93 = v90 * (v91 * v86 - v92 * v87);
              v94 = v90 * (v92 * v85 - v91 * v88);
              *(v262 + v269[0]) = v94;
              *v15 = v93;
              goto LABEL_311;
            }
          }

          else
          {
            v175 = *(v252 + 8);
            v176 = *(v252 + v259 + 8);
            v177 = *v252 * v176 - v175 * *(v252 + v259);
            if (v177 != 0.0)
            {
              v178 = 1.0 / v177;
              v179 = *(v242 + v248);
              v180 = v178 * (*v242 * v176 - v179 * v175);
              *(v262 + v269[0]) = v178 * (v179 * *v252 - *v242 * *(v252 + v259));
              *v15 = v180;
              goto LABEL_311;
            }
          }

          break;
        case 3:
          if (v11 == 5)
          {
            v17 = *v252;
            v18 = *(v252 + v259 + 4);
            v19 = (v252 + 2 * v259);
            v20 = v19[2];
            v21 = v20;
            v22 = *(v252 + v259 + 8);
            v23 = v19[1];
            v24 = v18 * v20 - v22 * v23;
            v25 = *(v252 + 4);
            v26 = *(v252 + v259);
            v27 = *v19;
            v28 = -(v22 * v27);
            v29 = *(v252 + 8);
            v30 = v26 * v23 - v18 * v27;
            v31 = v17 * v24 - (v26 * v20 - v22 * v27) * v25 + v29 * v30;
            if (v31 != 0.0)
            {
              v32 = -v22;
              v33 = -(v28 + v26 * v21);
              v34 = 1.0 / v31;
              v35 = *v242;
              v36 = *(v242 + v248);
              v37 = *(v242 + 2 * v248);
              v38 = v34 * (v35 * v24 - (v32 * v37 + v36 * v21) * v25 + v29 * (-v18 * v37 + v36 * v23));
              v39 = v26 * v37 - v36 * v27;
              v40 = v34 * (v33 * v35 + v17 * ((v20 * v36) + v32 * v37) + v29 * v39);
              v41 = v34 * (v17 * (v18 * v37 - v36 * v23) - v39 * v25 + v35 * v30);
              *v262 = v38;
              *(v15 + v16) = v40;
              *(v15 + 2 * v16) = v41;
LABEL_311:
              v105 = 1;
              goto LABEL_313;
            }
          }

          else
          {
            v156 = (v252 + 2 * v259);
            v157 = v156[1];
            v158 = v156[2];
            v159 = *(v252 + v259 + 8);
            v160 = *(v252 + v259 + 16);
            v161 = *v156;
            v162 = *(v252 + v259);
            v163 = v159 * v158 - v160 * v157;
            v164 = *v252;
            v165 = *(v252 + 8);
            v166 = *(v252 + 16);
            v167 = v162 * v157 - v159 * *v156;
            v168 = *v252 * v163 - v165 * (v162 * v158 - v160 * *v156) + v166 * v167;
            if (v168 != 0.0)
            {
              v169 = 1.0 / v168;
              v170 = *(v242 + v248);
              v171 = *(v242 + 2 * v248);
              v172 = v169 * ((v158 * -v165 + v166 * v157) * v170 + v163 * *v242 + (v165 * v160 - v166 * v159) * v171);
              v173 = v169 * ((v164 * v158 - v166 * v161) * v170 + (v160 * v161 - v162 * v158) * *v242 + (v166 * v162 - v164 * v160) * v171);
              v174 = v169 * ((v165 * v161 - v164 * v157) * v170 + v167 * *v242 + (v162 * -v165 + v164 * v159) * v171);
              *v262 = v172;
              *(v15 + v16) = v173;
              *(v15 + 2 * v16) = v174;
              goto LABEL_311;
            }
          }

          break;
        case 1:
          if (v11 == 5)
          {
            if (*v252 != 0.0)
            {
              *v262 = *v242 / *v252;
              goto LABEL_311;
            }
          }

          else if (*v252 != 0.0)
          {
            *v262 = *v242 / *v252;
            goto LABEL_311;
          }

          break;
        default:
          __assert_rtn("solve", "lapack.cpp", 1314, "src.rows == 1");
      }

      v105 = 0;
LABEL_313:
      if (v263 && atomic_fetch_add(v263, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v260);
      }

      v262 = 0;
      v264 = 0;
      v266 = 0;
      v265 = 0;
      if (SHIDWORD(v260) >= 1)
      {
        v181 = 0;
        v182 = v267;
        do
        {
          *(v182 + 4 * v181++) = 0;
        }

        while (v181 < SHIDWORD(v260));
      }

      v263 = 0;
      if (v268)
      {
        v183 = v268 == v269;
      }

      else
      {
        v183 = 1;
      }

      if (!v183)
      {
        free(v268);
      }

      goto LABEL_282;
    }
  }

  if ((v6 & 0xFFFFFFEF) == 4)
  {
    v42 = 1;
  }

  else
  {
    v42 = v6 & 0xFFFFFFEF;
  }

  v43 = v42 == 1 && (v6 & 0x10) == 0;
  v44 = v250;
  v45 = v251;
  v260 = &v262;
  v261 = 4104;
  v46 = (((v249 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v249 & 7))) & 3);
  v47 = v46 * v251;
  *v233 = v241;
  v235 = v243;
  v236 = v244;
  v190 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v43)
  {
    v48 = (v250 * v46 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  }

  v234 = v242;
  v237 = v245;
  v238 = &v233[1];
  v239 = v240;
  v240[1] = 0;
  v240[0] = 0;
  v189 = HIDWORD(v241);
  if (v243)
  {
    atomic_fetch_add(v243, 1u);
  }

  if (SDWORD1(v241) > 2)
  {
    HIDWORD(v233[0]) = 0;
    cv::Mat::copySize(v233, &v241);
  }

  else
  {
    v49 = v247;
    v50 = v239;
    *v239 = *v247;
    v50[1] = v49[1];
  }

  (*(*v8 + 136))(v8, v251, HIDWORD(v233[1]), v249 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**v8)(__p, v8, 0xFFFFFFFFLL);
  if (v44 < v45)
  {
    std::string::basic_string[abi:ne200100]<0>(v205, "The function can not solve under-determined linear systems");
    std::string::basic_string[abi:ne200100]<0>(v198, "solve");
    std::string::basic_string[abi:ne200100]<0>(v193, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v210, 4294967291, v205, v198, v193, 1350);
    cv::error(&v210, v51);
  }

  v192 = v11;
  v52 = (v6 >> 4) & 1;
  if (v42 == 1)
  {
    v53 = 2;
  }

  else
  {
    v53 = v42;
  }

  if ((v6 & 0x10) != 0)
  {
    v54 = v45;
  }

  else
  {
    v54 = v44;
  }

  if ((v6 & 0x10) != 0)
  {
    v52 = 1;
  }

  else
  {
    v53 = v42;
  }

  if (v44 == v45)
  {
    v55 = v44;
  }

  else
  {
    v55 = v54;
  }

  v191 = v55;
  if (v44 == v45)
  {
    v56 = 0;
  }

  else
  {
    v56 = v52;
  }

  if (v44 == v45)
  {
    v57 = v42;
  }

  else
  {
    v57 = v53;
  }

  if (v57 == 1)
  {
    v58 = 1;
  }

  else
  {
    v58 = v56;
  }

  if (v58)
  {
    v59 = v45;
  }

  else
  {
    v59 = v44;
  }

  v60 = v48 * v59;
  v187 = v46 * (v189 * v45);
  v61 = v187 + 32;
  if (!v56)
  {
    v61 = 32;
  }

  v62 = v61 + v60;
  if (v57 - 1 <= 1)
  {
    v63 = 5 * v45 * v46 + 8 * v189 + v190 * v45 + v62 + 32;
  }

  else
  {
    v63 = v62;
  }

  if (v261 >= v63)
  {
    v64 = v260;
  }

  else
  {
    v64 = &v262;
    if (v260 != &v262)
    {
      if (v260)
      {
        MEMORY[0x2318CB180](v260, 0x1000C8077774924);
      }

      v260 = &v262;
    }

    v261 = v63;
    if (v63 >= 0x1009)
    {
      operator new[]();
    }
  }

  v65 = ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = 2;
  v212 = v191;
  v213 = v45;
  v214 = v65;
  v215 = 0;
  v216 = v65;
  v219 = 0;
  v220 = &v212;
  v221 = &v222;
  if (v48)
  {
    if (v191 == 1)
    {
      v66 = v47;
    }

    else
    {
      v66 = v48;
    }

    v67 = v192 | ((v66 == v47) << 14) | 0x42FF0000;
  }

  else
  {
    v67 = v192 | 0x42FF4000;
    v66 = v47;
  }

  v210 = v67;
  v222 = v66;
  v223 = v46;
  v218 = v65 + v66 * v191;
  v217 = &v218[v47 - v66];
  if (!v56)
  {
    if (v57 == 1)
    {
      *&v205[4] = 2;
      *&v205[8] = v45;
      *&v205[12] = v191;
      *&v205[16] = v65;
      *&v205[24] = 0;
      *&v205[32] = v65;
      *&v205[56] = 0;
      v206 = &v205[8];
      v76 = v191 * v46;
      v207 = &v208;
      v69 = v192;
      if (v48)
      {
        if (v45 == 1)
        {
          v77 = v191 * v46;
        }

        else
        {
          v77 = v48;
        }

        v78 = v192 | ((v77 == v76) << 14) | 0x42FF0000;
      }

      else
      {
        v78 = v192 | 0x42FF4000;
        v77 = v191 * v46;
      }

      v211 = 2;
      v210 = v78;
      v212 = v45;
      v213 = v191;
      v222 = v77;
      v223 = v46;
      v216 = v65;
      v217 = v65 + v77 * v45 - v77 + v76;
      v214 = v65;
      v215 = 0;
      v218 = v65 + v77 * v45;
      v219 = 0;
      cv::_InputArray::_InputArray(v205, &v249);
      cv::_OutputArray::_OutputArray(v198, &v210);
      cv::transpose(v205, v198, v84);
    }

    else
    {
      cv::_OutputArray::_OutputArray(v205, &v210);
      v69 = v192;
      cv::Mat::copyTo(&v249, v205);
    }

    v71 = v65 + v60;
    if (v57 == 3 || !v57)
    {
      cv::_OutputArray::_OutputArray(v205, __p);
      cv::Mat::copyTo(v233, v205);
    }

    goto LABEL_151;
  }

  cv::_InputArray::_InputArray(v205, &v249);
  v68 = cv::_OutputArray::_OutputArray(v198, &v210);
  v69 = v192;
  v70 = cv::noArray(v68);
  cv::mulTransposed(v205, v198, 1, v70, 0xFFFFFFFFLL, 1.0);
  v71 = v65 + v60;
  if (v57 != 3 && v57)
  {
    *&v205[8] = v45;
    *&v205[12] = v189;
    *&v205[16] = v71;
    *&v205[24] = 0;
    v206 = &v205[8];
    v207 = &v208;
    *&v205[4] = 2;
    *v205 = v192 | 0x42FF4000;
    v208 = (v46 * v189);
    v209 = v46;
    *&v205[40] = &v71[v208 * v45];
    *&v205[48] = *&v205[40];
    *&v205[32] = v71;
    cv::_InputArray::_InputArray(v193, &v249);
    cv::_InputArray::_InputArray(v204, v233);
    v199 = &v198[8];
    v200 = &v201;
    v201 = 0;
    v202 = 0;
    *v198 = 1124007936;
    memset(&v198[4], 0, 60);
    cv::_InputArray::_InputArray(v203, v198);
    cv::_OutputArray::_OutputArray(v197, v205);
    cv::gemm(v193, v204, v203, 1.0, v197, 0.0, 1);
    if (*&v198[24] && atomic_fetch_add(*&v198[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v198);
    }

    *&v198[16] = 0;
    memset(&v198[32], 0, 24);
    if (*&v198[4] >= 1)
    {
      v79 = 0;
      v80 = v199;
      do
      {
        *&v80[4 * v79++] = 0;
      }

      while (v79 < *&v198[4]);
    }

    *&v198[24] = 0;
    if (v200)
    {
      v81 = v200 == &v201;
    }

    else
    {
      v81 = 1;
    }

    if (!v81)
    {
      free(v200);
    }

    v69 = v192;
    if (*&v205[24])
    {
      atomic_fetch_add(*&v205[24], 1u);
    }

    if (v235 && atomic_fetch_add(v235, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v233);
    }

    v234 = 0;
    v236 = 0uLL;
    *(&v235 + 1) = 0;
    if (v233[0] <= 0)
    {
      *&v235 = 0;
      LODWORD(v233[0]) = *v205;
    }

    else
    {
      v82 = 0;
      v83 = v238;
      do
      {
        *(v83 + v82++) = 0;
      }

      while (v82 < SHIDWORD(v233[0]));
      *&v235 = 0;
      LODWORD(v233[0]) = *v205;
      if (SHIDWORD(v233[0]) > 2)
      {
        goto LABEL_139;
      }
    }

    if (*&v205[4] <= 2)
    {
      HIDWORD(v233[0]) = *&v205[4];
      v233[1] = *&v205[8];
      v95 = v207;
      v96 = v239;
      *v239 = *v207;
      v96[1] = v95[1];
LABEL_140:
      v236 = *&v205[40];
      v235 = *&v205[24];
      v234 = *&v205[16];
      v237 = *&v205[56];
      if (*&v205[24] && atomic_fetch_add(*&v205[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v205);
      }

      *&v205[16] = 0;
      memset(&v205[32], 0, 24);
      if (*&v205[4] >= 1)
      {
        v97 = 0;
        v98 = v206;
        do
        {
          *&v98[4 * v97++] = 0;
        }

        while (v97 < *&v205[4]);
      }

      v71 += v187;
      *&v205[24] = 0;
      v74 = v207;
      if (v207)
      {
        v99 = v207 == &v208;
      }

      else
      {
        v99 = 1;
      }

      if (!v99)
      {
        goto LABEL_150;
      }

      goto LABEL_151;
    }

LABEL_139:
    cv::Mat::copySize(v233, v205);
    goto LABEL_140;
  }

  cv::_InputArray::_InputArray(v198, &v249);
  cv::_InputArray::_InputArray(v193, v233);
  v206 = &v205[8];
  v207 = &v208;
  v209 = 0;
  v208 = 0;
  *v205 = 1124007936;
  memset(&v205[4], 0, 60);
  cv::_InputArray::_InputArray(v204, v205);
  cv::_OutputArray::_OutputArray(v203, __p);
  cv::gemm(v198, v193, v204, 1.0, v203, 0.0, 1);
  if (*&v205[24] && atomic_fetch_add(*&v205[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v205);
  }

  *&v205[16] = 0;
  memset(&v205[32], 0, 24);
  if (*&v205[4] >= 1)
  {
    v72 = 0;
    v73 = v206;
    do
    {
      *&v73[4 * v72++] = 0;
    }

    while (v72 < *&v205[4]);
  }

  *&v205[24] = 0;
  v74 = v207;
  if (v207)
  {
    v75 = v207 == &v208;
  }

  else
  {
    v75 = 1;
  }

  if (!v75)
  {
LABEL_150:
    free(v74);
  }

LABEL_151:
  if (v57 == 3)
  {
    if (v69 == 5)
    {
      if (cv::Cholesky(v214, v222, v45, v225, v232, v189))
      {
        goto LABEL_243;
      }
    }

    else if (cv::Cholesky(v214, v222, v45, v225, v232, v189))
    {
      goto LABEL_243;
    }

LABEL_167:
    memset(v205, 0, 32);
    cv::Mat::operator=(__p, v205);
    v105 = 0;
    goto LABEL_244;
  }

  if (v57)
  {
    v100 = ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
    *&v205[4] = 2;
    *&v205[8] = v45;
    v101 = &v205[8];
    *&v205[12] = v45;
    *&v205[16] = v100;
    *&v205[24] = 0;
    *&v205[32] = v100;
    *&v205[56] = 0;
    v206 = &v205[8];
    v207 = &v208;
    if (v190)
    {
      if (v45 == 1)
      {
        v102 = v46;
      }

      else
      {
        v102 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      v103 = v69 | ((v102 == v47) << 14) | 0x42FF0000;
      v104 = v69 | 0x42FF4000;
    }

    else
    {
      v104 = v69 | 0x42FF4000;
      v103 = v69 | 0x42FF4000;
      v102 = v47;
    }

    *v205 = v103;
    v208 = v102;
    v209 = v46;
    *&v205[40] = &v100[v102 * v45 - v102 + v47];
    *&v205[48] = &v100[v102 * v45];
    v106 = &v100[v190 * v45];
    *&v198[8] = v45 | 0x100000000;
    *&v198[16] = v106;
    v199 = &v198[8];
    v200 = &v201;
    *v198 = v104 | 0x200000000;
    v201 = v46;
    v202 = v46;
    *&v198[48] = (v106 + v47);
    *&v198[32] = v106;
    *&v198[40] = v106 + v47;
    v194 = &v193[8];
    v195 = v196;
    v196[0] = 0;
    v196[1] = 0;
    *v193 = 1124007936;
    memset(&v193[4], 0, 60);
    v107 = &v100[(v190 + v46) * v45];
    v188 = v107;
    if (v57 == 2)
    {
      if (v69 == 5)
      {
        cv::JacobiImpl_<float>(v214, v222, v106, v100, v102, v45, v107);
      }

      else
      {
        cv::JacobiImpl_<double>(v214, v222, v106, v100, v102, v45, v107);
      }

      if (*&v205[24])
      {
        atomic_fetch_add(*&v205[24], 1u);
      }

      if (*&v193[24] && atomic_fetch_add(*&v193[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v193);
      }

      v108 = &v205[12];
      v109 = &v205[16];
      v110 = &v205[24];
      v111 = &v205[56];
      v112 = &v207;
      v113 = &v205[40];
      v114 = &v205[48];
      *&v193[16] = 0;
      memset(&v193[32], 0, 24);
      if (*v193 <= 0)
      {
        *&v193[24] = 0;
        v117 = *&v205[4];
        *v193 = *v205;
        if (*&v205[4] >= 3)
        {
LABEL_187:
          cv::Mat::copySize(v193, v205);
          v119 = &v205[32];
LABEL_207:
          v125 = *v109;
          v126 = *v113;
          *&v193[32] = *v119;
          *&v193[40] = v126;
          v127 = *v114;
          v128 = *v110;
          *&v193[16] = v125;
          *&v193[24] = v128;
          v129 = *v111;
          *&v193[48] = v127;
          *&v193[56] = v129;
          LODWORD(v184) = v189;
          if (v192 == 5)
          {
            cv::SVBkSb(v191, v45, *&v198[16], 0, v125, v196[0], 1, *&v205[16], v208, v234, v240[0], v184, v225, v232, v188, &v208, &v201);
          }

          else
          {
            cv::SVBkSb(v191, v45, *&v198[16], 0, v125, v196[0], 1, *&v205[16], v208, v234, v240[0], v184, v225, v232, v188, &v208, &v201);
          }

          if (*&v193[24] && atomic_fetch_add(*&v193[24], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v193);
          }

          *&v193[16] = 0;
          memset(&v193[32], 0, 24);
          if (*&v193[4] >= 1)
          {
            v130 = 0;
            v131 = v194;
            do
            {
              *&v131[4 * v130++] = 0;
            }

            while (v130 < *&v193[4]);
          }

          *&v193[24] = 0;
          if (v195)
          {
            v132 = v195 == v196;
          }

          else
          {
            v132 = 1;
          }

          if (!v132)
          {
            free(v195);
          }

          if (*&v198[24] && atomic_fetch_add(*&v198[24], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v198);
          }

          *&v198[16] = 0;
          memset(&v198[32], 0, 24);
          if (*&v198[4] >= 1)
          {
            v133 = 0;
            v134 = v199;
            do
            {
              *&v134[4 * v133++] = 0;
            }

            while (v133 < *&v198[4]);
          }

          *&v198[24] = 0;
          if (v200)
          {
            v135 = v200 == v186;
          }

          else
          {
            v135 = 1;
          }

          if (!v135)
          {
            free(v200);
          }

          if (*&v205[24] && atomic_fetch_add(*&v205[24], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v205);
          }

          *&v205[16] = 0;
          memset(&v205[32], 0, 24);
          if (*&v205[4] >= 1)
          {
            v136 = 0;
            v137 = v206;
            do
            {
              *&v137[4 * v136++] = 0;
            }

            while (v136 < *&v205[4]);
          }

          *&v205[24] = 0;
          if (v207)
          {
            v138 = v207 == v185;
          }

          else
          {
            v138 = 1;
          }

          if (!v138)
          {
            free(v207);
          }

          goto LABEL_243;
        }
      }

      else
      {
        v115 = 0;
        v116 = v194;
        do
        {
          *&v116[4 * v115++] = 0;
        }

        while (v115 < *&v193[4]);
        *&v193[24] = 0;
        v117 = *&v205[4];
        *v193 = *v205;
        if (*&v193[4] > 2 || *&v205[4] >= 3)
        {
          goto LABEL_187;
        }
      }

      v119 = &v205[32];
LABEL_206:
      *&v193[4] = __PAIR64__(*v101, v117);
      *&v193[12] = *v108;
      v123 = *v112;
      v124 = v195;
      *v195 = **v112;
      v124[1] = v123[1];
      goto LABEL_207;
    }

    if (v69 == 5)
    {
      cv::JacobiSVDImpl_<float>(v214, v222);
    }

    else
    {
      cv::JacobiSVDImpl_<double>(v214, v222);
    }

    v101 = &v212;
    if (v215)
    {
      atomic_fetch_add(v215, 1u);
    }

    if (*&v193[24] && atomic_fetch_add(*&v193[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v193);
    }

    v108 = &v213;
    v109 = &v214;
    v110 = &v215;
    v111 = &v219;
    v112 = &v221;
    v113 = &v217;
    v114 = &v218;
    *&v193[16] = 0;
    memset(&v193[32], 0, 24);
    if (*v193 <= 0)
    {
      *&v193[24] = 0;
      v117 = v211;
      *v193 = v210;
      if (v211 >= 3)
      {
LABEL_201:
        cv::Mat::copySize(v193, &v210);
        v119 = &v216;
        goto LABEL_207;
      }
    }

    else
    {
      v120 = 0;
      v121 = v194;
      do
      {
        *&v121[4 * v120++] = 0;
      }

      while (v120 < *&v193[4]);
      *&v193[24] = 0;
      v117 = v211;
      *v193 = v210;
      if (*&v193[4] > 2 || v211 >= 3)
      {
        goto LABEL_201;
      }
    }

    v119 = &v216;
    goto LABEL_206;
  }

  if (v69 == 5)
  {
    if (!cv::LU(v214, v222, v45, v225, v232, v189))
    {
      goto LABEL_167;
    }
  }

  else if (!cv::LU(v214, v222, v45, v225, v232, v189))
  {
    goto LABEL_167;
  }

LABEL_243:
  v105 = 1;
LABEL_244:
  if (v215 && atomic_fetch_add(v215, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v210);
  }

  v214 = 0;
  v217 = 0;
  v218 = 0;
  v216 = 0;
  if (v211 >= 1)
  {
    v139 = 0;
    v140 = v220;
    do
    {
      v140[v139++] = 0;
    }

    while (v139 < v211);
  }

  v215 = 0;
  if (v221)
  {
    v141 = v221 == &v222;
  }

  else
  {
    v141 = 1;
  }

  if (!v141)
  {
    free(v221);
  }

  if (v226 && atomic_fetch_add(v226, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  v225 = 0;
  v227 = 0;
  v229 = 0;
  v228 = 0;
  if (SHIDWORD(__p[0]) >= 1)
  {
    v142 = 0;
    v143 = v230;
    do
    {
      *(v143 + 4 * v142++) = 0;
    }

    while (v142 < SHIDWORD(__p[0]));
  }

  v226 = 0;
  if (v231)
  {
    v144 = v231 == &v232;
  }

  else
  {
    v144 = 1;
  }

  if (!v144)
  {
    free(v231);
  }

  if (v235 && atomic_fetch_add(v235, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v233);
  }

  v234 = 0;
  v236 = 0uLL;
  *(&v235 + 1) = 0;
  if (SHIDWORD(v233[0]) >= 1)
  {
    v145 = 0;
    v146 = v238;
    do
    {
      *(v146 + v145++) = 0;
    }

    while (v145 < SHIDWORD(v233[0]));
  }

  *&v235 = 0;
  if (v239)
  {
    v147 = v239 == v240;
  }

  else
  {
    v147 = 1;
  }

  if (!v147)
  {
    free(v239);
  }

  if (v260 != &v262 && v260 != 0)
  {
    MEMORY[0x2318CB180]();
  }

LABEL_282:
  if (v243 && atomic_fetch_add(v243, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v241);
  }

  v242 = 0;
  *(&v243 + 1) = 0;
  v244 = 0uLL;
  if (SDWORD1(v241) >= 1)
  {
    v149 = 0;
    v150 = v246;
    do
    {
      *(v150 + 4 * v149++) = 0;
    }

    while (v149 < SDWORD1(v241));
  }

  *&v243 = 0;
  if (v247)
  {
    v151 = v247 == &v248;
  }

  else
  {
    v151 = 1;
  }

  if (!v151)
  {
    free(v247);
  }

  if (v253 && atomic_fetch_add(v253, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v249);
  }

  v252 = 0;
  v254 = 0;
  v256 = 0;
  v255 = 0;
  if (SHIDWORD(v249) >= 1)
  {
    v152 = 0;
    v153 = v257;
    do
    {
      *(v153 + 4 * v152++) = 0;
    }

    while (v152 < SHIDWORD(v249));
  }

  v253 = 0;
  if (v258)
  {
    v154 = v258 == &v259;
  }

  else
  {
    v154 = 1;
  }

  if (!v154)
  {
    free(v258);
  }

  return v105;
}

void sub_22D25C7DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::SVBkSb(cv *this, int a2, float *a3, uint64_t a4, float *a5, uint64_t a6, int a7, uint64_t a8, const float *a9, unint64_t a10, uint64_t a11, const float *a12, float *a13, unint64_t a14, float *a15, unint64_t a16, unsigned __int8 *a17)
{
  v21 = a10;
  v93 = a14 >> 2;
  if (a2 >= this)
  {
    v22 = this;
  }

  else
  {
    v22 = a2;
  }

  v96 = v22;
  v90 = this;
  if (a10)
  {
    v23 = a12;
  }

  else
  {
    v23 = this;
  }

  if (a2 >= 1)
  {
    v24 = 0;
    v25 = a2;
    do
    {
      if (v23 >= 1)
      {
        bzero(a13 + (v24 >> 30), 4 * v23);
        v21 = a10;
      }

      v24 += v93 << 32;
      --v25;
    }

    while (v25);
  }

  v26 = a3;
  if (v96 >= 1)
  {
    v27 = a2;
    v28 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v29 = (a6 >> 2);
    if (a4)
    {
      v30 = (a4 >> 2);
    }

    else
    {
      v30 = 1;
    }

    v31 = 0.0;
    v32 = a3;
    v33 = v96;
    do
    {
      v31 = v31 + *v32;
      v32 += v30;
      --v33;
    }

    while (v33);
    v34 = 0;
    v35 = v23 - 4;
    v36 = v90;
    v37 = v31 * 4.4408921e-16;
    v38 = v93;
    v39 = a7 == 0;
    v40 = (a9 >> 2);
    if (a7)
    {
      v41 = 1;
    }

    else
    {
      v41 = (a6 >> 2);
    }

    v89 = v41;
    if (v39)
    {
      v29 = 1;
    }

    v42 = 4 * (a11 >> 2);
    v92 = v30;
    v94 = v21 + 8;
    v43 = 4 * v29;
    v44 = v28 + 1;
    v45 = 4 * v41;
    v46 = 4 * v38;
    v47 = v27;
    v48 = 4 * v27;
    v49 = 4 * v40;
    v50 = v47;
    v87 = v43;
    v85 = 4 * v40;
    v86 = 4 * v41;
    do
    {
      v51 = v26[v34 * v30];
      if (fabs(v51) > v37)
      {
        v52 = 1.0 / v51;
        if (v23 == 1)
        {
          if (v21)
          {
            v53 = 0.0;
            v54 = a5;
            v55 = v21;
            v56 = v36;
            do
            {
              v53 = v53 + (*v54 * *v55);
              v55 = (v55 + v42);
              v54 = (v54 + v45);
              --v56;
            }

            while (v56);
          }

          else
          {
            v53 = *a5;
          }

          v67 = 0;
          v68 = v52 * v53;
          v69 = a13;
          do
          {
            v70 = *v69 + v68 * *(a8 + v67);
            *v69 = v70;
            v67 += 4;
            v69 = (v69 + v46);
          }

          while (v48 != v67);
        }

        else
        {
          if (v21)
          {
            if (v23 > 0)
            {
              bzero(v28, 8 * v23);
              v49 = v85;
              v45 = v86;
              v44 = v28 + 1;
              v43 = v87;
              v41 = v89;
              v36 = v90;
              v30 = v92;
              v21 = a10;
              v26 = a3;
            }

            v57 = 0;
            v58 = v21;
            v59 = v94;
            do
            {
              v60 = a5[v57 * v41];
              if (v23 >= 4)
              {
                v61 = 0;
                v62 = v44;
                v63 = v59;
                do
                {
                  v64 = vaddq_f64(*v62, vcvtq_f64_f32(vmul_n_f32(*v63, v60)));
                  v62[-1] = vaddq_f64(v62[-1], vcvtq_f64_f32(vmul_n_f32(v63[-1], v60)));
                  *v62 = v64;
                  v61 += 4;
                  v63 += 2;
                  v62 += 2;
                }

                while (v61 <= v35);
                v61 = v61;
              }

              else
              {
                v61 = 0;
              }

              if (v61 < v23)
              {
                do
                {
                  v28->f64[v61] = v28->f64[v61] + (v60 * *(v58 + 4 * v61));
                  ++v61;
                }

                while (v23 != v61);
              }

              ++v57;
              v59 = (v59 + v42);
              v58 += v42;
            }

            while (v57 != v36);
            if (v23 >= 1)
            {
              v65 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
              v66 = v23;
              do
              {
                *v65 = v52 * *v65;
                ++v65;
                --v66;
              }

              while (v66);
            }
          }

          else if (v23 >= 1)
          {
            v71 = a5;
            v72 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
            v73 = v23;
            do
            {
              *v72++ = v52 * *v71;
              v71 = (v71 + v45);
              --v73;
            }

            while (v73);
          }

          v74 = 0;
          v75 = a13;
          do
          {
            v76 = *(a8 + 4 * v74);
            if (v23 >= 4)
            {
              v77 = 0;
              v78 = vdupq_lane_s64(COERCE__INT64(v76), 0);
              v79 = v75;
              v80 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
              do
              {
                v81 = *v80;
                v82 = v80[1];
                v80 += 2;
                *v79->f32 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(*v79), v81, v78)), vmlaq_f64(vcvt_hight_f64_f32(*v79->f32), v82, v78));
                v79 += 2;
                v77 += 4;
              }

              while (v77 <= v35);
              v77 = v77;
            }

            else
            {
              v77 = 0;
            }

            if (v77 < v23)
            {
              v83 = v76;
              do
              {
                v84 = *(v75 + 4 * v77) + v83 * v28->f64[v77];
                *(v75 + 4 * v77++) = v84;
              }

              while (v23 != v77);
            }

            ++v74;
            v75 += v46;
          }

          while (v74 != v50);
        }
      }

      ++v34;
      a5 = (a5 + v43);
      a8 += v49;
    }

    while (v34 != v96);
  }
}

void cv::SVBkSb(cv *this, uint64_t a2, double *a3, uint64_t a4, double *a5, uint64_t a6, int a7, uint64_t a8, const double *a9, unint64_t a10, unint64_t a11, const double *a12, double *a13, unint64_t a14, double *a15, unint64_t a16, unsigned __int8 *a17)
{
  v60 = a14 >> 3;
  if (a7)
  {
    v21 = 1;
  }

  else
  {
    v21 = a6 >> 3;
  }

  v54 = v21;
  if (a2 >= this)
  {
    v22 = this;
  }

  else
  {
    v22 = a2;
  }

  v58 = v22;
  v55 = this;
  if (a10)
  {
    v23 = a12;
  }

  else
  {
    v23 = this;
  }

  if (a2 >= 1)
  {
    v24 = 0;
    v25 = a2;
    do
    {
      if (v23 >= 1)
      {
        bzero(a13 + (v24 >> 29), 8 * v23);
      }

      v24 += v60 << 32;
      --v25;
    }

    while (v25);
  }

  v27 = v58;
  v26 = a3;
  v28 = a10;
  if (v58 >= 1)
  {
    v53 = a11 >> 3;
    v62 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
    v29 = (a6 >> 3);
    if (a4)
    {
      v30 = (a4 >> 3);
    }

    else
    {
      v30 = 1;
    }

    v31 = 0.0;
    v32 = a3;
    v33 = v58;
    do
    {
      v31 = v31 + *v32;
      v32 += v30;
      --v33;
    }

    while (v33);
    v34 = 0;
    if (!a7)
    {
      v29 = 1;
    }

    v35 = 8 * v29;
    v36 = v31 * 4.4408921e-16;
    v37 = 8 * v54;
    v52 = v30;
    v57 = 8 * v29;
    do
    {
      v38 = v26[v34 * v30];
      if (fabs(v38) > v36)
      {
        v39 = 1.0 / v38;
        if (v23 == 1)
        {
          if (v28)
          {
            v40 = 0.0;
            v41 = a5;
            v42 = v28;
            v43 = v55;
            do
            {
              v40 = v40 + *v41 * *v42;
              v42 += v53;
              v41 = (v41 + v37);
              --v43;
            }

            while (v43);
          }

          else
          {
            v40 = *a5;
          }

          v46 = 0;
          v47 = v39 * v40;
          v48 = a13;
          do
          {
            *v48 = *v48 + v47 * *(a8 + v46);
            v46 += 8;
            v48 += v60;
          }

          while (8 * a2 != v46);
        }

        else
        {
          if (v28)
          {
            if (v23 <= 0)
            {
              cv::MatrAXPY<double,double,double>(v55, a12, a10, v53, a5, v54, v62, 0);
            }

            else
            {
              bzero(v62, 8 * v23);
              cv::MatrAXPY<double,double,double>(v55, a12, a10, v53, a5, v54, v62, 0);
              v44 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
              v30 = v52;
              v45 = v23;
              do
              {
                *v44 = v39 * *v44;
                ++v44;
                --v45;
              }

              while (v45);
            }
          }

          else if (v23 >= 1)
          {
            v49 = a5;
            v50 = ((a15 + 7) & 0xFFFFFFFFFFFFFFF8);
            v51 = v23;
            do
            {
              *v50++ = v39 * *v49;
              v49 = (v49 + v37);
              --v51;
            }

            while (v51);
          }

          cv::MatrAXPY<double,double,double>(a2, v23, v62, 0, a8, 1, a13, v60);
          v27 = v58;
          v26 = a3;
          v28 = a10;
          v35 = v57;
        }
      }

      ++v34;
      a5 = (a5 + v35);
      a8 += 8 * (a9 >> 3);
    }

    while (v34 != v27);
  }
}

uint64_t cv::eigen(cv *this, const cv::_InputArray *a2, BOOL a3, const cv::_OutputArray *a4, const cv::_OutputArray *a5)
{
  v5 = MEMORY[0x28223BE20](this, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v99[507] = *MEMORY[0x277D85DE8];
  (**v5)(&v80);
  v12 = v80;
  v13 = v81;
  if (v81 != v82)
  {
    std::string::basic_string[abi:ne200100]<0>(v76, "src.rows == src.cols");
    std::string::basic_string[abi:ne200100]<0>(&v63, "eigen");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v91, 4294967081, v76, &v63, &__p, 1472);
    cv::error(&v91, v14);
  }

  v15 = v80 & 0xFFF;
  if ((v15 - 5) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v76, "type == CV_32F || type == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(&v63, "eigen");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v91, 4294967081, v76, &v63, &__p, 1473);
    cv::error(&v91, v16);
  }

  v77 = &v76[8];
  v78 = v79;
  v79[0] = 0;
  v79[1] = 0;
  *v76 = 1124007936;
  memset(&v76[4], 0, 60);
  if (v11)
  {
    (*(*v7 + 136))(v7, v81, v81, v80 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
    (**v7)(&v91, v7, 0xFFFFFFFFLL);
    if (v94)
    {
      atomic_fetch_add(v94, 1u);
    }

    if (*&v76[24] && atomic_fetch_add(*&v76[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v76);
    }

    *&v76[16] = 0;
    memset(&v76[32], 0, 24);
    if (*v76 <= 0)
    {
      *&v76[24] = 0;
      *v76 = v91;
    }

    else
    {
      v17 = 0;
      v18 = v77;
      do
      {
        *&v18[4 * v17++] = 0;
      }

      while (v17 < *&v76[4]);
      *&v76[24] = 0;
      *v76 = v91;
      if (*&v76[4] > 2)
      {
        goto LABEL_19;
      }
    }

    if (SHIDWORD(v91) <= 2)
    {
      *&v76[4] = HIDWORD(v91);
      *&v76[8] = v92;
      v19 = v98;
      v20 = v78;
      *v78 = *v98;
      v20[1] = v19[1];
      goto LABEL_20;
    }

LABEL_19:
    cv::Mat::copySize(v76, &v91);
LABEL_20:
    *&v76[40] = v95;
    *&v76[24] = v94;
    *&v76[16] = v93;
    *&v76[56] = v96;
    if (v94 && atomic_fetch_add(v94, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v91);
    }

    v93 = 0;
    v95 = 0uLL;
    *(&v94 + 1) = 0;
    if (SHIDWORD(v91) >= 1)
    {
      v21 = 0;
      v22 = v97;
      do
      {
        *(v22 + 4 * v21++) = 0;
      }

      while (v21 < SHIDWORD(v91));
    }

    *&v94 = 0;
    if (v98)
    {
      v23 = v98 == v99;
    }

    else
    {
      v23 = 1;
    }

    if (!v23)
    {
      free(v98);
    }
  }

  v49 = v9;
  if (SHIDWORD(v80) < 1)
  {
    v24 = 0;
  }

  else
  {
    v24 = *(v89 + HIDWORD(v80) - 1);
  }

  v25 = v24 * v13;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF0;
  v91 = &v93;
  v92 = 4104;
  if (5 * v25 + v26 * v13 + 32 >= 0x1009)
  {
    v92 = 5 * v13 * v24 + v26 * v13 + 32;
    operator new[]();
  }

  v64 = 2;
  v65[0] = v13;
  v65[1] = v13;
  v66 = &v94;
  v67 = 0;
  v68 = &v94;
  v71 = 0;
  v72 = v65;
  v73 = v74;
  v27 = (((v12 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v15 & 7))) & 3);
  v28 = v27 * v13;
  if (v26)
  {
    if (v13 == 1)
    {
      v29 = (((v12 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v15 & 7))) & 3);
    }

    else
    {
      v29 = (v24 * v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    v30 = v15 | ((v29 == v28) << 14) | 0x42FF0000;
    v31 = v15 | 0x42FF4000;
  }

  else
  {
    v31 = v15 | 0x42FF4000;
    v30 = v15 | 0x42FF4000;
    v29 = v27 * v13;
  }

  v63 = v30;
  *v74 = v29;
  v75 = (((v12 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v15 & 7))) & 3);
  v69 = &v94 + v29 * v13 - v29 + v28;
  v70 = &v94 + v29 * v13;
  v32 = &v94 + v26 * v13;
  v53[0] = v13;
  v53[1] = 1;
  v54 = v32;
  v55 = 0;
  v60 = v53;
  v61 = v62;
  __p = v31;
  __p_4 = 2;
  v62[0] = v75;
  v62[1] = v75;
  v58 = &v32[v28];
  v59 = 0;
  v56 = v32;
  v57 = &v32[v28];
  cv::_OutputArray::_OutputArray(v50, &v63);
  cv::Mat::copyTo(&v80, v50);
  if (v15 == 5)
  {
    v33 = cv::JacobiImpl_<float>(v66, *v74, v54, *&v76[16], v79[0], v13, &v32[v25]);
  }

  else
  {
    v33 = cv::JacobiImpl_<double>(v66, *v74, v54, *&v76[16], v79[0], v13, &v32[v25]);
  }

  v34 = v33;
  cv::Mat::copyTo(&__p, v49);
  if (v55 && atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&__p);
  }

  v54 = 0;
  v57 = 0;
  v58 = 0;
  v56 = 0;
  if (__p_4 >= 1)
  {
    v35 = 0;
    v36 = v60;
    do
    {
      v36[v35++] = 0;
    }

    while (v35 < __p_4);
  }

  v55 = 0;
  if (v61)
  {
    v37 = v61 == v62;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    free(v61);
  }

  if (v67 && atomic_fetch_add(v67, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v63);
  }

  v66 = 0;
  v69 = 0;
  v70 = 0;
  v68 = 0;
  if (v64 >= 1)
  {
    v38 = 0;
    v39 = v72;
    do
    {
      v39[v38++] = 0;
    }

    while (v38 < v64);
  }

  v67 = 0;
  if (v73)
  {
    v40 = v73 == v74;
  }

  else
  {
    v40 = 1;
  }

  if (!v40)
  {
    free(v73);
  }

  if (v91 != &v93 && v91 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  if (*&v76[24] && atomic_fetch_add(*&v76[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v76);
  }

  *&v76[16] = 0;
  memset(&v76[32], 0, 24);
  if (*&v76[4] >= 1)
  {
    v42 = 0;
    v43 = v77;
    do
    {
      *&v43[4 * v42++] = 0;
    }

    while (v42 < *&v76[4]);
  }

  *&v76[24] = 0;
  if (v78)
  {
    v44 = v78 == v79;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    free(v78);
  }

  if (v84 && atomic_fetch_add(v84, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v80);
  }

  v83 = 0;
  v85 = 0;
  v86 = 0;
  v87 = 0;
  if (SHIDWORD(v80) >= 1)
  {
    v45 = 0;
    v46 = v88;
    do
    {
      *(v46 + 4 * v45++) = 0;
    }

    while (v45 < SHIDWORD(v80));
  }

  v84 = 0;
  if (v89)
  {
    v47 = v89 == &v90;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    free(v89);
  }

  return v34;
}

void sub_22D25D930(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::_SVDcompute(cv *this, const cv::_InputArray *a2, const cv::_OutputArray *a3, const cv::_OutputArray *a4, const cv::_OutputArray *a5)
{
  v5 = MEMORY[0x28223BE20](this, a2);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v126 = *MEMORY[0x277D85DE8];
  (**v5)(&v112);
  v14 = v114;
  v15 = v113;
  v16 = v112;
  if ((*(*v11 + 112))(v11))
  {
    v61 = 1;
  }

  else
  {
    v61 = (*(*v9 + 112))(v9);
  }

  v17 = v16 & 0xFFF;
  if ((v17 - 5) >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v99, "type == CV_32F || type == CV_64F");
    std::string::basic_string[abi:ne200100]<0>(&v87, "_SVDcompute");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/lapack.cpp");
    cv::Exception::Exception(&v123, 4294967081, &v99, &v87, &__p, 1518);
    cv::error(&v123, v18);
  }

  v58 = v11;
  v59 = v9;
  if ((v7 & 2) != 0)
  {
    (*(*v11 + 152))(v11);
    (*(*v9 + 152))(v9);
    v61 = 0;
    if (v15 <= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v15;
    }

    if (v15 >= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    v21 = v20;
  }

  else
  {
    if (v15 <= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v15;
    }

    if (v15 >= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v15;
    }

    if ((v7 & 4) != 0)
    {
      v21 = v19;
    }

    else
    {
      v21 = v20;
    }
  }

  v60 = v14;
  if (SHIDWORD(v112) < 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = *(v121 + HIDWORD(v112) - 1);
  }

  v23 = (v22 * v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v24 = v22 * v20;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v23 * v21;
  v123 = v125;
  v124 = 4104;
  if (v24 + v25 * v20 + v26 + 32 >= 0x1009)
  {
    v124 = v24 + v25 * v20 + v26 + 32;
    operator new[]();
  }

  v100 = 2;
  v101[0] = v20;
  v101[1] = v19;
  v102 = v125;
  v103 = 0;
  v104 = v125;
  v107 = 0;
  v108 = v101;
  v109 = &v110;
  v27 = (((v16 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
  v28 = v27 * v19;
  if (v23)
  {
    if (v20 == 1)
    {
      v29 = v27 * v19;
    }

    else
    {
      v29 = v23;
    }

    v30 = v17 | ((v29 == v28) << 14) | 0x42FF0000;
    v31 = v17 | 0x42FF4000;
  }

  else
  {
    v31 = v17 | 0x42FF4000;
    v30 = v17 | 0x42FF4000;
    v29 = v27 * v19;
  }

  v99 = v30;
  v110 = v29;
  v111 = (((v16 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
  v106 = &v125[v29 * v20];
  v105 = &v106[v28 - v29];
  v89[0] = v20;
  v89[1] = 1;
  v90 = &v125[v26];
  v91 = 0;
  v96 = v89;
  v97 = v98;
  v88 = 2;
  v87 = v31;
  v98[0] = v111;
  v98[1] = v111;
  v94 = &v125[v26 + v27 * v20];
  v95 = 0;
  v92 = &v125[v26];
  v93 = v94;
  __p_4 = 2;
  v77[0] = v21;
  v77[1] = v19;
  v78 = v125;
  v79 = 0;
  v80 = v125;
  v83 = 0;
  v84 = v77;
  v32 = v31;
  v33 = v27 * v19;
  v85 = v86;
  if (v23)
  {
    if (v21 == 1)
    {
      v33 = v27 * v19;
    }

    else
    {
      v33 = v23;
    }

    v32 = v17 | ((v33 == v28) << 14) | 0x42FF0000;
  }

  __p = v32;
  v86[0] = v33;
  v86[1] = (((v16 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
  v81 = &v125[v33 * v21 - v33 + v28];
  v82 = &v125[v33 * v21];
  v71 = &v70[8];
  v72 = &v73;
  v73 = 0;
  v74 = 0;
  *v70 = 1124007936;
  memset(&v70[4], 0, 60);
  if (v61)
  {
    v34 = v27 * v20;
    v63.i32[1] = 2;
    v63.i32[2] = v20;
    v35 = &v125[v26 + 15 + v24] & 0xFFFFFFFFFFFFFFF0;
    v63.i32[3] = v20;
    v64 = v35;
    v65 = v35;
    v66 = 0;
    v67 = &v63.i64[1];
    v68 = &v69;
    if (v25)
    {
      if (v20 == 1)
      {
        v36 = (((v16 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
      }

      else
      {
        v36 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
      }

      v31 = v17 | ((v36 == v34) << 14) | 0x42FF0000;
    }

    else
    {
      v36 = v27 * v20;
    }

    *v70 = v31 | 0x200000000;
    *&v70[8] = v20;
    *&v70[12] = v20;
    v73 = v36;
    v74 = (((v16 & 0xFFF) >> 3) + 1) << ((0xFA50u >> (2 * (v16 & 7))) & 3);
    *&v70[32] = v35;
    *&v70[40] = v35 + v36 * v20 - v36 + v34;
    *&v70[16] = v35;
    *&v70[48] = v35 + v36 * v20;
  }

  if (v21 > v20)
  {
    v63 = 0uLL;
    v64 = 0uLL;
    cv::Mat::operator=(&__p, &v63);
  }

  if (v15 >= v60)
  {
    cv::_InputArray::_InputArray(&v63, &v112);
    cv::_OutputArray::_OutputArray(v62, &v99);
    cv::transpose(&v63, v62, v37);
  }

  else
  {
    cv::_OutputArray::_OutputArray(&v63, &v99);
    cv::Mat::copyTo(&v112, &v63);
  }

  if (v17 == 5)
  {
    cv::JacobiSVDImpl_<float>(v102, v86[0]);
  }

  else
  {
    cv::JacobiSVDImpl_<double>(v102, v86[0]);
  }

  if ((*(*v13 + 112))(v13))
  {
    cv::Mat::copyTo(&v87, v13);
  }

  if (v61)
  {
    v38 = *(*v58 + 112);
    if (v15 >= v60)
    {
      if (v38(v58))
      {
        cv::_InputArray::_InputArray(&v63, &__p);
        cv::transpose(&v63, v58, v41);
      }

      if ((*(*v59 + 112))(v59))
      {
        p_p = v70;
        goto LABEL_67;
      }
    }

    else
    {
      if (v38(v58))
      {
        cv::_InputArray::_InputArray(&v63, v70);
        cv::transpose(&v63, v58, v39);
      }

      if ((*(*v59 + 112))(v59))
      {
        p_p = &__p;
LABEL_67:
        cv::Mat::copyTo(p_p, v59);
      }
    }
  }

  if (*&v70[24] && atomic_fetch_add(*&v70[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v70);
  }

  *&v70[16] = 0;
  memset(&v70[32], 0, 24);
  if (*&v70[4] >= 1)
  {
    v42 = 0;
    v43 = v71;
    do
    {
      *&v43[4 * v42++] = 0;
    }

    while (v42 < *&v70[4]);
  }

  *&v70[24] = 0;
  if (v72)
  {
    v44 = v72 == &v73;
  }

  else
  {
    v44 = 1;
  }

  if (!v44)
  {
    free(v72);
  }

  if (v79 && atomic_fetch_add(v79, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&__p);
  }

  v78 = 0;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  if (__p_4 >= 1)
  {
    v45 = 0;
    v46 = v84;
    do
    {
      v46[v45++] = 0;
    }

    while (v45 < __p_4);
  }

  v79 = 0;
  if (v85)
  {
    v47 = v85 == v86;
  }

  else
  {
    v47 = 1;
  }

  if (!v47)
  {
    free(v85);
  }

  if (v91 && atomic_fetch_add(v91, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v87);
  }

  v90 = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  if (v88 >= 1)
  {
    v48 = 0;
    v49 = v96;
    do
    {
      v49[v48++] = 0;
    }

    while (v48 < v88);
  }

  v91 = 0;
  if (v97)
  {
    v50 = v97 == v98;
  }

  else
  {
    v50 = 1;
  }

  if (!v50)
  {
    free(v97);
  }

  if (v103 && atomic_fetch_add(v103, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v99);
  }

  v102 = 0;
  v105 = 0;
  v106 = 0;
  v104 = 0;
  if (v100 >= 1)
  {
    v51 = 0;
    v52 = v108;
    do
    {
      v52[v51++] = 0;
    }

    while (v51 < v100);
  }

  v103 = 0;
  if (v109)
  {
    v53 = v109 == &v110;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    free(v109);
  }

  if (v123 != v125 && v123 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  if (v116 && atomic_fetch_add(v116, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v112);
  }

  v115 = 0;
  v117 = 0;
  v119 = 0;
  v118 = 0;
  if (SHIDWORD(v112) >= 1)
  {
    v55 = 0;
    v56 = v120;
    do
    {
      *(v56 + 4 * v55++) = 0;
    }

    while (v55 < SHIDWORD(v112));
  }

  v116 = 0;
  if (v121)
  {
    v57 = v121 == &v122;
  }

  else
  {
    v57 = 1;
  }

  if (!v57)
  {
    free(v121);
  }
}

void sub_22D25E418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  cv::Mat::~Mat(&a35);
  cv::Mat::~Mat(&__p);
  cv::Mat::~Mat(&a59);
  cv::Mat::~Mat(&a71);
  v72 = STACK[0x2B0];
  if (STACK[0x2B0] != a15)
  {
    if (v72)
    {
      MEMORY[0x2318CB180](v72, 0x1000C8077774924);
    }
  }

  cv::Mat::~Mat(&STACK[0x250]);
  _Unwind_Resume(a1);
}

uint64_t cv::JacobiImpl_<float>(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, unint64_t a5, int a6, uint64_t a7)
{
  if (a4)
  {
    if (a6 < 1)
    {
      return 1;
    }

    v107 = a2;
    v108 = a7;
    v106 = a5 >> 2;
    v10 = a5 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = (a5 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v12 = a4;
    v109 = a4;
    v13 = a4;
    v14 = a6;
    do
    {
      bzero(v12, 4 * a6);
      *v13 = 1065353216;
      v13 = (v13 + v11);
      v12 += v10;
      --v14;
    }

    while (v14);
    a5 = v106;
    a2 = v107;
    a7 = v108;
    a4 = v109;
  }

  v15 = (a6 - 1);
  if (a6 >= 1)
  {
    v16 = 0;
    v17 = a2 >> 2;
    v18 = 30 * a6 * a6;
    v19 = ((a7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = &v19[a6];
    v21 = (a1 + 8);
    v22 = 4 * (a2 >> 2);
    v23 = 2;
    v24 = (a1 + v22);
    do
    {
      *(a3 + 4 * v16) = *(a1 + 4 * ((a2 >> 2) + 1) * v16);
      if (v16 < v15)
      {
        v25 = v16 + 1;
        if (v16 + 2 < a6)
        {
          v26 = fabsf(*(a1 + 4 * v17 * v16 + 4 * v25));
          v27 = v21;
          v28 = v23;
          do
          {
            v29 = *v27++;
            v30 = fabsf(v29);
            if (v26 < v30)
            {
              v26 = v30;
              LODWORD(v25) = v28;
            }

            ++v28;
          }

          while (a6 != v28);
        }

        v19[v16] = v25;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = fabsf(*(a1 + 4 * v16));
          v33 = v24;
          for (i = 1; i != v16; ++i)
          {
            v35 = fabsf(*v33);
            if (v32 < v35)
            {
              v32 = v35;
              v31 = i;
            }

            v33 = (v33 + v22);
          }
        }

        v20[v16] = v31;
      }

      ++v16;
      ++v23;
      v21 = (v21 + v22 + 4);
      ++v24;
    }

    while (v16 != a6);
    if (a6 == 1 || !v18)
    {
      if (a6 == 1)
      {
        return 1;
      }
    }

    else
    {
      for (j = 0; j != v18; ++j)
      {
        v37 = *v19;
        v38 = fabsf(*(a1 + 4 * v37));
        if (a6 < 3)
        {
          LODWORD(v39) = 0;
        }

        else
        {
          LODWORD(v39) = 0;
          v40 = a1 + 4 * v17;
          v41 = 1;
          do
          {
            v42 = fabsf(*(v40 + 4 * v19[v41]));
            if (v38 < v42)
            {
              v38 = v42;
              LODWORD(v39) = v41;
            }

            ++v41;
            v40 += v22;
          }

          while (v15 != v41);
          LODWORD(v37) = v19[v39];
        }

        v43 = 1;
        do
        {
          v44 = v20[v43];
          v45 = fabsf(*(a1 + v22 * v44 + 4 * v43));
          if (v38 >= v45)
          {
            v39 = v39;
          }

          else
          {
            v38 = v45;
            LODWORD(v37) = v43;
            v39 = v44;
          }

          ++v43;
        }

        while (a6 != v43);
        v46 = a1 + 4 * v17 * v39;
        v47 = *(v46 + 4 * v37);
        v48 = fabsf(v47);
        if (v48 <= 0.00000011921)
        {
          break;
        }

        v49 = (*(a3 + 4 * v37) - *(a3 + 4 * v39)) * 0.5;
        v50 = fabsf(v49);
        if (v48 <= v50)
        {
          v51 = 0.0;
          if (v49 != 0.0)
          {
            v51 = v50 * sqrtf(((v48 / v50) * (v48 / v50)) + 1.0);
          }
        }

        else
        {
          v51 = v48 * sqrtf(((v50 / v48) * (v50 / v48)) + 1.0);
        }

        v52 = v50 + v51;
        v53 = fabsf(v52);
        if (v48 <= v53)
        {
          v54 = 0.0;
          if (v52 != 0.0)
          {
            v54 = v53 * sqrtf(((v48 / v53) * (v48 / v53)) + 1.0);
          }
        }

        else
        {
          v54 = v48 * sqrtf(((v53 / v48) * (v53 / v48)) + 1.0);
        }

        v55 = v52 / v54;
        v56 = v49 < 0.0;
        if (v49 >= 0.0)
        {
          v57 = v47 * (v47 / v52);
        }

        else
        {
          v57 = -(v47 * (v47 / v52));
        }

        *(v46 + 4 * v37) = 0;
        if (v56)
        {
          v58 = -(v47 / v54);
        }

        else
        {
          v58 = v47 / v54;
        }

        *(a3 + 4 * v39) = *(a3 + 4 * v39) - v57;
        *(a3 + 4 * v37) = v57 + *(a3 + 4 * v37);
        if (v39 >= 1)
        {
          v59 = v39;
          v60 = a1;
          do
          {
            v61 = *(v60 + 4 * v39);
            v62 = *(v60 + 4 * v37);
            *(v60 + 4 * v39) = (v61 * v55) - (v62 * v58);
            *(v60 + 4 * v37) = (v55 * v62) + (v61 * v58);
            v60 += v22;
            --v59;
          }

          while (v59);
        }

        v63 = v39 + 1;
        if (v39 + 1 < v37)
        {
          v64 = (a1 + v22 * v63 + 4 * v37);
          v65 = (a1 + v22 * v39 + 4 * v63);
          v66 = ~v39 + v37;
          do
          {
            v67 = *v65;
            v68 = *v64;
            *v65 = (*v65 * v55) - (*v64 * v58);
            ++v65;
            *v64 = (v55 * v68) + (v67 * v58);
            v64 = (v64 + v22);
            --v66;
          }

          while (v66);
        }

        v69 = v37 + 1;
        if (v37 + 1 < a6)
        {
          v70 = (a1 + v22 * v39 + 4 * v69);
          v71 = (a1 + v22 * v37 + 4 * v69);
          v72 = a6 - 1 - v37;
          do
          {
            v73 = *v70;
            v74 = *v71;
            *v70 = (*v70 * v55) - (*v71 * v58);
            ++v70;
            *v71++ = (v55 * v74) + (v73 * v58);
            --v72;
          }

          while (v72);
        }

        if (a4)
        {
          v75 = &a4[4 * a5 * v39];
          v76 = &a4[4 * a5 * v37];
          v77 = a6;
          do
          {
            v78 = *v75;
            v79 = *v76;
            *v75 = (*v75 * v55) - (*v76 * v58);
            ++v75;
            *v76++ = (v55 * v79) + (v78 * v58);
            --v77;
          }

          while (v77);
        }

        v80 = 1;
        do
        {
          v81 = v80;
          if (v80)
          {
            v82 = v39;
          }

          else
          {
            v82 = v37;
          }

          if (v82 < v15)
          {
            v83 = v82 + 1;
            v84 = v82 + 2;
            if (v82 + 2 < a6)
            {
              v85 = fabsf(*(a1 + 4 * v17 * v82 + 4 * v83));
              v86 = (a1 + v22 * v82 + 4 * v84);
              do
              {
                v87 = *v86++;
                v88 = fabsf(v87);
                if (v85 < v88)
                {
                  v85 = v88;
                  LODWORD(v83) = v84;
                }

                ++v84;
              }

              while (a6 != v84);
            }

            v19[v82] = v83;
          }

          if (v82 >= 1)
          {
            if (v82 == 1)
            {
              v89 = 0;
            }

            else
            {
              v89 = 0;
              v90 = fabsf(*(a1 + 4 * v82));
              v91 = (a1 + v22 + 4 * v82);
              for (k = 1; k != v82; ++k)
              {
                v93 = fabsf(*v91);
                if (v90 < v93)
                {
                  v90 = v93;
                  v89 = k;
                }

                v91 = (v91 + v22);
              }
            }

            v20[v82] = v89;
          }

          v80 = 0;
        }

        while ((v81 & 1) != 0);
      }
    }

    v94 = 0;
    v95 = 1;
    v96 = a4;
    do
    {
      v97 = v94++;
      v98 = v95;
      v99 = v97;
      do
      {
        if (*(a3 + 4 * v99) < *(a3 + 4 * v98))
        {
          v99 = v98;
        }

        ++v98;
      }

      while (a6 != v98);
      if (v97 != v99)
      {
        v100 = *(a3 + 4 * v99);
        *(a3 + 4 * v99) = *(a3 + 4 * v97);
        *(a3 + 4 * v97) = v100;
        if (a4)
        {
          v101 = &a4[4 * a5 * v99];
          v102 = a6;
          v103 = v96;
          do
          {
            v104 = *v101;
            *v101 = *v103;
            v101 += 4;
            *v103++ = v104;
            --v102;
          }

          while (v102);
        }
      }

      ++v95;
      v96 += 4 * a5;
    }

    while (v94 != v15);
  }

  return 1;
}

uint64_t cv::JacobiImpl_<double>(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, unint64_t a5, int a6, uint64_t a7)
{
  if (a4)
  {
    if (a6 < 1)
    {
      return 1;
    }

    v107 = a2;
    v108 = a7;
    v106 = a5 >> 3;
    v10 = a5 & 0xFFFFFFFFFFFFFFF8;
    v11 = (a5 & 0xFFFFFFFFFFFFFFF8) + 8;
    v12 = a4;
    v109 = a4;
    v13 = a4;
    v14 = a6;
    do
    {
      bzero(v12, 8 * a6);
      *v13 = 0x3FF0000000000000;
      v13 = (v13 + v11);
      v12 += v10;
      --v14;
    }

    while (v14);
    a5 = v106;
    a2 = v107;
    a7 = v108;
    a4 = v109;
  }

  v15 = (a6 - 1);
  if (a6 >= 1)
  {
    v16 = 0;
    v17 = a2 >> 3;
    v18 = 30 * a6 * a6;
    v19 = ((a7 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = &v19[a6];
    v21 = (a1 + 16);
    v22 = 8 * (a2 >> 3);
    v23 = 2;
    v24 = (a1 + v22);
    do
    {
      *(a3 + 8 * v16) = *(a1 + 8 * ((a2 >> 3) + 1) * v16);
      if (v16 < v15)
      {
        v25 = v16 + 1;
        if (v16 + 2 < a6)
        {
          v26 = fabs(*(a1 + 8 * v17 * v16 + 8 * v25));
          v27 = v21;
          v28 = v23;
          do
          {
            v29 = *v27++;
            v30 = fabs(v29);
            if (v26 < v30)
            {
              v26 = v30;
              LODWORD(v25) = v28;
            }

            ++v28;
          }

          while (a6 != v28);
        }

        v19[v16] = v25;
      }

      if (v16)
      {
        if (v16 == 1)
        {
          v31 = 0;
        }

        else
        {
          v31 = 0;
          v32 = fabs(*(a1 + 8 * v16));
          v33 = v24;
          for (i = 1; i != v16; ++i)
          {
            v35 = fabs(*v33);
            if (v32 < v35)
            {
              v32 = v35;
              v31 = i;
            }

            v33 = (v33 + v22);
          }
        }

        v20[v16] = v31;
      }

      ++v16;
      ++v23;
      v21 = (v21 + v22 + 8);
      ++v24;
    }

    while (v16 != a6);
    if (a6 == 1 || !v18)
    {
      if (a6 == 1)
      {
        return 1;
      }
    }

    else
    {
      for (j = 0; j != v18; ++j)
      {
        v37 = *v19;
        v38 = fabs(*(a1 + 8 * v37));
        if (a6 < 3)
        {
          LODWORD(v39) = 0;
        }

        else
        {
          LODWORD(v39) = 0;
          v40 = a1 + 8 * v17;
          v41 = 1;
          do
          {
            v42 = fabs(*(v40 + 8 * v19[v41]));
            if (v38 < v42)
            {
              v38 = v42;
              LODWORD(v39) = v41;
            }

            ++v41;
            v40 += v22;
          }

          while (v15 != v41);
          LODWORD(v37) = v19[v39];
        }

        v43 = 1;
        do
        {
          v44 = v20[v43];
          v45 = fabs(*(a1 + v22 * v44 + 8 * v43));
          if (v38 >= v45)
          {
            v39 = v39;
          }

          else
          {
            v38 = v45;
            LODWORD(v37) = v43;
            v39 = v44;
          }

          ++v43;
        }

        while (a6 != v43);
        v46 = a1 + 8 * v17 * v39;
        v47 = *(v46 + 8 * v37);
        v48 = fabs(v47);
        if (v48 <= 2.22044605e-16)
        {
          break;
        }

        v49 = (*(a3 + 8 * v37) - *(a3 + 8 * v39)) * 0.5;
        v50 = fabs(v49);
        if (v48 <= v50)
        {
          v51 = 0.0;
          if (v49 != 0.0)
          {
            v51 = v50 * sqrt(v48 / v50 * (v48 / v50) + 1.0);
          }
        }

        else
        {
          v51 = v48 * sqrt(v50 / v48 * (v50 / v48) + 1.0);
        }

        v52 = v50 + v51;
        v53 = fabs(v52);
        if (v48 <= v53)
        {
          v54 = 0.0;
          if (v52 != 0.0)
          {
            v54 = v53 * sqrt(v48 / v53 * (v48 / v53) + 1.0);
          }
        }

        else
        {
          v54 = v48 * sqrt(v53 / v48 * (v53 / v48) + 1.0);
        }

        v55 = v52 / v54;
        v56 = v49 < 0.0;
        if (v49 >= 0.0)
        {
          v57 = v47 * (v47 / v52);
        }

        else
        {
          v57 = -(v47 * (v47 / v52));
        }

        *(v46 + 8 * v37) = 0;
        if (v56)
        {
          v58 = -(v47 / v54);
        }

        else
        {
          v58 = v47 / v54;
        }

        *(a3 + 8 * v39) = *(a3 + 8 * v39) - v57;
        *(a3 + 8 * v37) = v57 + *(a3 + 8 * v37);
        if (v39 >= 1)
        {
          v59 = v39;
          v60 = a1;
          do
          {
            v61 = *(v60 + 8 * v39);
            v62 = *(v60 + 8 * v37);
            *(v60 + 8 * v39) = v61 * v55 - v62 * v58;
            *(v60 + 8 * v37) = v55 * v62 + v61 * v58;
            v60 += v22;
            --v59;
          }

          while (v59);
        }

        v63 = v39 + 1;
        if (v39 + 1 < v37)
        {
          v64 = (a1 + v22 * v63 + 8 * v37);
          v65 = (a1 + v22 * v39 + 8 * v63);
          v66 = ~v39 + v37;
          do
          {
            v67 = *v65;
            v68 = *v64;
            *v65 = *v65 * v55 - *v64 * v58;
            ++v65;
            *v64 = v55 * v68 + v67 * v58;
            v64 = (v64 + v22);
            --v66;
          }

          while (v66);
        }

        v69 = v37 + 1;
        if (v37 + 1 < a6)
        {
          v70 = (a1 + v22 * v39 + 8 * v69);
          v71 = (a1 + v22 * v37 + 8 * v69);
          v72 = a6 - 1 - v37;
          do
          {
            v73 = *v70;
            v74 = *v71;
            *v70 = *v70 * v55 - *v71 * v58;
            ++v70;
            *v71++ = v55 * v74 + v73 * v58;
            --v72;
          }

          while (v72);
        }

        if (a4)
        {
          v75 = &a4[8 * a5 * v39];
          v76 = &a4[8 * a5 * v37];
          v77 = a6;
          do
          {
            v78 = *v75;
            v79 = *v76;
            *v75 = *v75 * v55 - *v76 * v58;
            ++v75;
            *v76++ = v55 * v79 + v78 * v58;
            --v77;
          }

          while (v77);
        }

        v80 = 1;
        do
        {
          v81 = v80;
          if (v80)
          {
            v82 = v39;
          }

          else
          {
            v82 = v37;
          }

          if (v82 < v15)
          {
            v83 = v82 + 1;
            v84 = v82 + 2;
            if (v82 + 2 < a6)
            {
              v85 = fabs(*(a1 + 8 * v17 * v82 + 8 * v83));
              v86 = (a1 + v22 * v82 + 8 * v84);
              do
              {
                v87 = *v86++;
                v88 = fabs(v87);
                if (v85 < v88)
                {
                  v85 = v88;
                  LODWORD(v83) = v84;
                }

                ++v84;
              }

              while (a6 != v84);
            }

            v19[v82] = v83;
          }

          if (v82 >= 1)
          {
            if (v82 == 1)
            {
              v89 = 0;
            }

            else
            {
              v89 = 0;
              v90 = fabs(*(a1 + 8 * v82));
              v91 = (a1 + v22 + 8 * v82);
              for (k = 1; k != v82; ++k)
              {
                v93 = fabs(*v91);
                if (v90 < v93)
                {
                  v90 = v93;
                  v89 = k;
                }

                v91 = (v91 + v22);
              }
            }

            v20[v82] = v89;
          }

          v80 = 0;
        }

        while ((v81 & 1) != 0);
      }
    }

    v94 = 0;
    v95 = 1;
    v96 = a4;
    do
    {
      v97 = v94++;
      v98 = v95;
      v99 = v97;
      do
      {
        if (*(a3 + 8 * v99) < *(a3 + 8 * v98))
        {
          v99 = v98;
        }

        ++v98;
      }

      while (a6 != v98);
      if (v97 != v99)
      {
        v100 = *(a3 + 8 * v99);
        *(a3 + 8 * v99) = *(a3 + 8 * v97);
        *(a3 + 8 * v97) = v100;
        if (a4)
        {
          v101 = &a4[8 * a5 * v99];
          v102 = a6;
          v103 = v96;
          do
          {
            v104 = *v101;
            *v101 = *v103;
            v101 += 8;
            *v103++ = v104;
            --v102;
          }

          while (v102);
        }
      }

      ++v95;
      v96 += 8 * a5;
    }

    while (v94 != v15);
  }

  return 1;
}

void cv::JacobiSVDImpl_<float>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v126 = v7;
  v8 = v5;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = v2;
  v131 = v6;
  if (v6 >= 0x209)
  {
    operator new[]();
  }

  if (v5 <= 30)
  {
    v18 = 30;
  }

  else
  {
    v18 = v5;
  }

  v132 = v18;
  v127 = v3 >> 2;
  v128 = v4 >> 2;
  v19 = 4 * (v3 >> 2);
  v20 = (v6 - 1);
  if (v6 >= 1)
  {
    v21 = 0;
    v130 = 4 * v6;
    v22 = v2;
    v23 = v6;
    v129 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v24 = 0.0;
      if (v8 >= 1)
      {
        v25 = v8;
        v26 = v22;
        do
        {
          v27 = *v26++;
          v24 = v24 + v27 * v27;
          --v25;
        }

        while (v25);
      }

      *&v133[v21] = v24;
      if (v10)
      {
        bzero(v10 + v129 * v21, v130);
        v6 = v131;
        v10[(v128 + 1) * v21] = 1.0;
      }

      ++v21;
      v22 = (v22 + v19);
    }

    while (v21 != v23);
  }

  v28 = 0;
  v29 = v6;
  v30 = 4 * v128;
  do
  {
    if (v6 <= 1)
    {
      break;
    }

    v31 = 0;
    v32 = 0;
    v33 = v10;
    v34 = &v10[v128];
    v35 = v17;
    v36 = (v17 + 4 * v127);
    v37 = 1;
    do
    {
      v38 = v31++;
      v39 = v34;
      v40 = v36;
      v41 = v37;
      do
      {
        v42 = 0.0;
        if (v8 >= 1)
        {
          v43 = v8;
          v44 = v35;
          v45 = v40;
          do
          {
            v46 = *v44++;
            v47 = v46;
            v48 = *v45++;
            v42 = v42 + v47 * v48;
            --v43;
          }

          while (v43);
        }

        v49 = *&v133[v38];
        v50 = *&v133[v41];
        if (fabs(v42) > sqrt(v49 * v50) * v14)
        {
          v51 = v42 + v42;
          v52 = v49 - v50;
          v53 = fabs(v51);
          v54 = vabdd_f64(v49, v50);
          if (v53 <= v54)
          {
            v55 = 0.0;
            if (v52 != 0.0)
            {
              v55 = v54 * sqrt(v53 / v54 * (v53 / v54) + 1.0);
            }
          }

          else
          {
            v55 = v53 * sqrt(v54 / v53 * (v54 / v53) + 1.0);
          }

          v56 = v52 < 0.0;
          v57 = sqrt((v52 + v55) / (v55 + v55));
          v58 = v51 / (v55 * v57 + v55 * v57);
          v59 = sqrt((v55 - v52) * 0.5 / v55);
          v60 = v51 / (v55 * v59 + v55 * v59);
          if (v56)
          {
            v61 = v59;
          }

          else
          {
            v61 = v58;
          }

          if (v56)
          {
            v62 = v60;
          }

          else
          {
            v62 = v57;
          }

          v63 = -v61;
          if (v8 < 1)
          {
            v66 = 0.0;
            v65 = 0.0;
          }

          else
          {
            v64 = 0;
            v65 = 0.0;
            v66 = 0.0;
            do
            {
              v67 = v35[v64];
              v68 = v40[v64];
              v69 = (v61 * v68) + (v62 * v67);
              v70 = (v62 * v68) + (v63 * v67);
              v35[v64] = v69;
              v40[v64] = v70;
              v65 = v65 + v69 * v69;
              v66 = v66 + v70 * v70;
              ++v64;
            }

            while (v8 != v64);
          }

          *&v133[v38] = v65;
          *&v133[v41] = v66;
          if (v10)
          {
            v71 = v6;
            v72 = v33;
            v73 = v39;
            do
            {
              v74 = (v62 * *v73) + (v63 * *v72);
              *v72 = (v61 * *v73) + (v62 * *v72);
              ++v72;
              *v73++ = v74;
              --v71;
            }

            while (v71);
          }

          v32 = 1;
        }

        ++v41;
        v40 = (v40 + v19);
        v39 = (v39 + v30);
      }

      while (v41 != v6);
      ++v37;
      v36 = (v36 + v19);
      v35 = (v35 + v19);
      v34 = (v34 + v30);
      v33 = (v33 + v30);
    }

    while (v31 != v20);
    ++v28;
  }

  while ((v32 & (v28 != v132)) != 0);
  if (v6 >= 1)
  {
    v75 = 0;
    v76 = v17;
    do
    {
      v77 = 0.0;
      if (v8 >= 1)
      {
        v78 = v8;
        v79 = v76;
        do
        {
          v80 = *v79++;
          v77 = v77 + v80 * v80;
          --v78;
        }

        while (v78);
      }

      *&v133[v75++] = sqrt(v77);
      v76 = (v76 + v19);
    }

    while (v75 != v6);
    if (v6 >= 2)
    {
      v81 = 0;
      v82 = 1;
      v83 = v10;
      v84 = v17;
      do
      {
        v85 = v81++;
        v86 = v82;
        v87 = v85;
        do
        {
          if (*&v133[v87] < *&v133[v86])
          {
            v87 = v86;
          }

          ++v86;
        }

        while (v6 != v86);
        if (v85 != v87)
        {
          v88 = v133[v85];
          v133[v85] = v133[v87];
          v133[v87] = v88;
          if (v10)
          {
            v89 = v87;
            if (v8 >= 1)
            {
              v90 = (v17 + 4 * v127 * v87);
              v91 = v8;
              v92 = v84;
              do
              {
                v93 = *v92;
                *v92++ = *v90;
                *v90++ = v93;
                --v91;
              }

              while (v91);
            }

            v94 = &v10[v128 * v89];
            v95 = v6;
            v96 = v83;
            do
            {
              v97 = *v96;
              *v96++ = *v94;
              *v94++ = v97;
              --v95;
            }

            while (v95);
          }
        }

        ++v82;
        v84 = (v84 + v19);
        v83 = (v83 + v30);
      }

      while (v81 != v20);
    }

    v98 = v133;
    do
    {
      v99 = *v98++;
      v100 = v99;
      *v12++ = v100;
      --v29;
    }

    while (v29);
  }

  if (v10 && v126 >= 1)
  {
    v101 = 0;
    v103 = 4 * v8;
    v104 = 305419896;
    v105 = v17;
    do
    {
      v106 = 0.0;
      if (v101 < v6)
      {
        v106 = *&v133[v101];
      }

      while (v106 <= v16)
      {
        v107 = v8;
        v108 = v105;
        if (v8 >= 1)
        {
          do
          {
            v104 = HIDWORD(v104) + 4164903690 * v104;
            if ((v104 & 0x100) != 0)
            {
              v109 = 1.0 / v8;
            }

            else
            {
              v102 = 1.0 / v8;
              v109 = -v102;
            }

            *v108++ = v109;
            --v107;
          }

          while (v107);
        }

        v110 = 1;
        do
        {
          v111 = v110;
          if (v101)
          {
            v112 = 0;
            v113 = v17;
            do
            {
              if (v8 >= 1)
              {
                v114 = 0;
                v115 = 0.0;
                do
                {
                  v115 = v115 + (v105[v114 / 4] * *(v113 + v114));
                  v114 += 4;
                }

                while (v103 != v114);
                v116 = 0;
                v117 = -v115;
                v118 = 0.0;
                do
                {
                  v119 = v105[v116 / 4] + v117 * *(v113 + v116);
                  v105[v116 / 4] = v119;
                  v118 = v118 + fabsf(v119);
                  v116 += 4;
                }

                while (v103 != v116);
                v120 = 0;
                if (v118 <= (v14 * 100.0))
                {
                  v121 = 0.0;
                }

                else
                {
                  v121 = 1.0 / v118;
                }

                do
                {
                  v105[v120 / 4] = v121 * v105[v120 / 4];
                  v120 += 4;
                }

                while (v103 != v120);
              }

              ++v112;
              v113 += v19;
            }

            while (v112 != v101);
          }

          v110 = 0;
        }

        while ((v111 & 1) != 0);
        if (v8 < 1)
        {
          v123 = 0.0;
        }

        else
        {
          v122 = 0;
          v123 = 0.0;
          do
          {
            v123 = v123 + v105[v122 / 4] * v105[v122 / 4];
            v122 += 4;
          }

          while (v103 != v122);
        }

        v106 = sqrt(v123);
      }

      if (v8 >= 1)
      {
        v124 = 0;
        v125 = 1.0 / v106;
        do
        {
          v105[v124 / 4] = v105[v124 / 4] * v125;
          v124 += 4;
        }

        while (v103 != v124);
      }

      ++v101;
      v105 = (v105 + v19);
    }

    while (v101 != v126);
  }
}