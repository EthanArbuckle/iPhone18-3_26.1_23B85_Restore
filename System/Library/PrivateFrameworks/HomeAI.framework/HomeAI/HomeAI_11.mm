void cv::JacobiSVDImpl_<double>(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v121 = v7;
  v8 = v6;
  v9 = v5;
  v11 = v10;
  __dst = v12;
  v14 = v13;
  v16 = v15;
  v17 = v2;
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

  v126 = v18;
  v123 = v3 >> 3;
  v124 = v4 >> 3;
  v19 = 8 * (v3 >> 3);
  v122 = v6;
  v20 = (v6 - 1);
  if (v6 >= 1)
  {
    v21 = 0;
    v125 = v4 & 0xFFFFFFFFFFFFFFF8;
    v22 = v2;
    do
    {
      v23 = 0.0;
      if (v9 >= 1)
      {
        v24 = v9;
        v25 = v22;
        do
        {
          v26 = *v25++;
          v23 = v23 + v26 * v26;
          --v24;
        }

        while (v24);
      }

      *&v127[v21] = v23;
      if (v11)
      {
        bzero(v11 + v125 * v21, 8 * v8);
        v11[(v124 + 1) * v21] = 1.0;
      }

      ++v21;
      v22 = (v22 + v19);
    }

    while (v21 != v122);
  }

  v27 = 0;
  v28 = 8 * v124;
  do
  {
    if (v122 <= 1)
    {
      break;
    }

    v29 = 0;
    v30 = 0;
    v31 = v11;
    v32 = &v11[v124];
    v33 = v17;
    v34 = (v17 + 8 * v123);
    v35 = 1;
    do
    {
      v36 = v29++;
      v37 = v32;
      v38 = v34;
      v39 = v35;
      do
      {
        v40 = 0.0;
        if (v9 >= 1)
        {
          v41 = v9;
          v42 = v33;
          v43 = v38;
          do
          {
            v44 = *v42++;
            v45 = v44;
            v46 = *v43++;
            v40 = v40 + v45 * v46;
            --v41;
          }

          while (v41);
        }

        v47 = *&v127[v36];
        v48 = *&v127[v39];
        if (fabs(v40) > sqrt(v47 * v48) * v14)
        {
          v49 = v40 + v40;
          v50 = v47 - v48;
          v51 = fabs(v49);
          v52 = vabdd_f64(v47, v48);
          if (v51 <= v52)
          {
            v53 = 0.0;
            if (v50 != 0.0)
            {
              v53 = v52 * sqrt(v51 / v52 * (v51 / v52) + 1.0);
            }
          }

          else
          {
            v53 = v51 * sqrt(v52 / v51 * (v52 / v51) + 1.0);
          }

          v54 = v50 < 0.0;
          v55 = sqrt((v50 + v53) / (v53 + v53));
          v56 = v49 / (v53 * v55 + v53 * v55);
          v57 = sqrt((v53 - v50) * 0.5 / v53);
          v58 = v49 / (v53 * v57 + v53 * v57);
          if (v54)
          {
            v59 = v57;
          }

          else
          {
            v59 = v56;
          }

          if (v54)
          {
            v60 = v58;
          }

          else
          {
            v60 = v55;
          }

          v61 = -v59;
          if (v9 < 1)
          {
            v64 = 0.0;
            v63 = 0.0;
          }

          else
          {
            v62 = 0;
            v63 = 0.0;
            v64 = 0.0;
            do
            {
              v65 = v33[v62];
              v66 = v38[v62];
              v67 = v59 * v66 + v60 * v65;
              v68 = v60 * v66 + v61 * v65;
              v33[v62] = v67;
              v38[v62] = v68;
              v63 = v63 + v67 * v67;
              v64 = v64 + v68 * v68;
              ++v62;
            }

            while (v9 != v62);
          }

          *&v127[v36] = v63;
          *&v127[v39] = v64;
          if (v11)
          {
            v69 = v122;
            v70 = v31;
            v71 = v37;
            do
            {
              v72 = v60 * *v71 + v61 * *v70;
              *v70 = v59 * *v71 + v60 * *v70;
              ++v70;
              *v71++ = v72;
              --v69;
            }

            while (v69);
          }

          v30 = 1;
        }

        ++v39;
        v38 = (v38 + v19);
        v37 = (v37 + v28);
      }

      while (v39 != v122);
      ++v35;
      v34 = (v34 + v19);
      v33 = (v33 + v19);
      v32 = (v32 + v28);
      v31 = (v31 + v28);
    }

    while (v29 != v20);
    ++v27;
  }

  while ((v30 & (v27 != v126)) != 0);
  if (v122 >= 1)
  {
    v73 = 0;
    v74 = v17;
    do
    {
      v75 = 0.0;
      if (v9 >= 1)
      {
        v76 = v9;
        v77 = v74;
        do
        {
          v78 = *v77++;
          v75 = v75 + v78 * v78;
          --v76;
        }

        while (v76);
      }

      *&v127[v73++] = sqrt(v75);
      v74 = (v74 + v19);
    }

    while (v73 != v122);
    if (v122 >= 2)
    {
      v79 = 0;
      v80 = 1;
      v81 = v11;
      v82 = v17;
      do
      {
        v83 = v79++;
        v84 = v80;
        v85 = v83;
        do
        {
          if (*&v127[v85] < *&v127[v84])
          {
            v85 = v84;
          }

          ++v84;
        }

        while (v122 != v84);
        if (v83 != v85)
        {
          v86 = v127[v83];
          v127[v83] = v127[v85];
          v127[v85] = v86;
          if (v11)
          {
            v87 = v85;
            if (v9 >= 1)
            {
              v88 = (v17 + 8 * v123 * v85);
              v89 = v9;
              v90 = v82;
              do
              {
                v91 = *v90;
                *v90++ = *v88;
                *v88++ = v91;
                --v89;
              }

              while (v89);
            }

            v92 = &v11[v124 * v87];
            v93 = v122;
            v94 = v81;
            do
            {
              v95 = *v94;
              *v94++ = *v92;
              *v92++ = v95;
              --v93;
            }

            while (v93);
          }
        }

        ++v80;
        v82 = (v82 + v19);
        v81 = (v81 + v28);
      }

      while (v79 != v20);
    }

    memcpy(__dst, v127, 8 * v122);
  }

  if (v11 && v121 >= 1)
  {
    v96 = 0;
    v97 = 8 * v9;
    v98 = 305419896;
    v99 = v17;
    do
    {
      v100 = 0.0;
      if (v96 < v122)
      {
        v100 = *&v127[v96];
      }

      while (v100 <= v16)
      {
        v101 = v9;
        v102 = v99;
        if (v9 >= 1)
        {
          do
          {
            v98 = HIDWORD(v98) + 4164903690 * v98;
            if ((v98 & 0x100) != 0)
            {
              v103 = 1.0 / v9;
            }

            else
            {
              v103 = -(1.0 / v9);
            }

            *v102++ = v103;
            --v101;
          }

          while (v101);
        }

        v104 = 1;
        do
        {
          v105 = v104;
          if (v96)
          {
            v106 = 0;
            v107 = v17;
            do
            {
              if (v9 >= 1)
              {
                v108 = 0;
                v109 = 0.0;
                do
                {
                  v109 = v109 + v99[v108 / 8] * *(v107 + v108);
                  v108 += 8;
                }

                while (v97 != v108);
                v110 = 0;
                v111 = -v109;
                v112 = 0.0;
                do
                {
                  v113 = v99[v110 / 8] + v111 * *(v107 + v110);
                  v99[v110 / 8] = v113;
                  v112 = v112 + fabs(v113);
                  v110 += 8;
                }

                while (v97 != v110);
                v114 = 0;
                if (v112 <= v14 * 100.0)
                {
                  v115 = 0.0;
                }

                else
                {
                  v115 = 1.0 / v112;
                }

                do
                {
                  v99[v114 / 8] = v115 * v99[v114 / 8];
                  v114 += 8;
                }

                while (v97 != v114);
              }

              ++v106;
              v107 += v19;
            }

            while (v106 != v96);
          }

          v104 = 0;
        }

        while ((v105 & 1) != 0);
        if (v9 < 1)
        {
          v117 = 0.0;
        }

        else
        {
          v116 = 0;
          v117 = 0.0;
          do
          {
            v117 = v117 + v99[v116 / 8] * v99[v116 / 8];
            v116 += 8;
          }

          while (v97 != v116);
        }

        v100 = sqrt(v117);
      }

      if (v9 >= 1)
      {
        v118 = 0;
        v119 = 1.0 / v100;
        do
        {
          v99[v118 / 8] = v119 * v99[v118 / 8];
          v118 += 8;
        }

        while (v97 != v118);
      }

      ++v96;
      v99 = (v99 + v19);
    }

    while (v96 != v121);
  }
}

uint64_t cv::MatrAXPY<double,double,double>(uint64_t result, int a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8)
{
  if (result >= 1)
  {
    v8 = 0;
    v9 = result;
    do
    {
      v10 = *(a5 + 8 * v8 * a6);
      if (a2 >= 4)
      {
        v12 = 0;
        v11 = 0;
        v13 = vdupq_lane_s64(v10, 0);
        do
        {
          v14 = (a7 + v12);
          result = a3 + v12;
          v15 = *(a7 + v12 + 16);
          *v14 = vmlaq_f64(*(a7 + v12), *(a3 + v12), v13);
          v14[1] = vmlaq_f64(v15, *(a3 + v12 + 16), v13);
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= a2 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < a2)
      {
        do
        {
          *(a7 + 8 * v11) = *(a7 + 8 * v11) + *&v10 * *(a3 + 8 * v11);
          ++v11;
        }

        while (a2 != v11);
      }

      ++v8;
      a3 += 8 * a4;
      a7 += 8 * a8;
    }

    while (v8 != v9);
  }

  return result;
}

int *cv::swap(int *this, Mat *a2, Mat *a3)
{
  v3 = *this;
  *this = *a2;
  *a2 = v3;
  v4 = this[1];
  this[1] = *(a2 + 1);
  *(a2 + 1) = v4;
  v5 = this[2];
  this[2] = *(a2 + 2);
  *(a2 + 2) = v5;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  v7 = *(this + 2);
  *(this + 2) = *(a2 + 2);
  *(a2 + 2) = v7;
  v8 = *(this + 3);
  *(this + 3) = *(a2 + 3);
  *(a2 + 3) = v8;
  v9 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v9;
  v10 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v10;
  v11 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v11;
  v12 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v12;
  v13 = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v13;
  v14 = *(this + 9);
  *(this + 9) = *(a2 + 9);
  v15 = this + 20;
  v16 = *(this + 10);
  *(a2 + 9) = v14;
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = *(this + 11);
  *(this + 11) = *(a2 + 11);
  *(a2 + 11) = v17;
  if (*(this + 9) == (a2 + 80))
  {
    *(this + 8) = this + 2;
    *(this + 9) = v15;
    v14 = *(a2 + 9);
  }

  if (v14 == v15)
  {
    *(a2 + 8) = a2 + 8;
    *(a2 + 9) = a2 + 80;
  }

  return this;
}

void cv::Mat::create(cv::Mat *this, cv::Mat *a2, const int *a3, __int16 a4)
{
  if (a2 > 0x20 || !a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "0 <= d && d <= CV_MAX_DIM && _sizes");
    std::string::basic_string[abi:ne200100]<0>(v24, "create");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 189);
    cv::error(v26, v7);
  }

  v8 = a4 & 0xFFF;
  if (*(this + 2))
  {
    v9 = *(this + 1);
    if (v9 == a2)
    {
      if (v8 == (*this & 0xFFF))
      {
        if (a2 == 2)
        {
          if (*(this + 2) == *a3 && *(this + 3) == a3[1])
          {
            return;
          }
        }

        else if (a2 < 1)
        {
          LODWORD(v10) = 0;
          goto LABEL_21;
        }

LABEL_16:
        v10 = 0;
        while (*(*(this + 8) + 4 * v10) == a3[v10])
        {
          if (a2 == ++v10)
          {
            goto LABEL_22;
          }
        }

LABEL_21:
        if (v10 == a2)
        {
LABEL_22:
          if (a2 > 1 || *(*(this + 8) + 4) == 1)
          {
            return;
          }
        }
      }
    }

    else if (a2 == 1 && v9 < 3 && v8 == (*this & 0xFFF))
    {
      goto LABEL_16;
    }
  }

  v11 = *(this + 3);
  if (v11 && atomic_fetch_add(v11, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(this);
  }

  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (*(this + 1) >= 1)
  {
    v12 = 0;
    v13 = *(this + 8);
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < *(this + 1));
  }

  *(this + 3) = 0;
  if (a2)
  {
    *this = v8 | 0x42FF0000;
    cv::setSize(this, a2, a3, 0, 1);
    v14 = *(this + 1);
    if (v14 >= 3)
    {
      v16 = *(this + 8);
      v15 = 1;
      v17 = *(this + 1);
      do
      {
        v18 = *v16++;
        v15 *= v18;
        --v17;
      }

      while (v17);
    }

    else
    {
      v15 = *(this + 3) * *(this + 2);
    }

    if (v15)
    {
      v19 = *(this + 7);
      if (v19)
      {
        (*(*v19 + 16))(v19);
        if (*(*(this + 9) + 8 * *(this + 1) - 8) != (((*this >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (*this & 7))) & 3))
        {
          std::string::basic_string[abi:ne200100]<0>(v25, "step[dims-1] == (size_t)CV_ELEM_SIZE(flags)");
          std::string::basic_string[abi:ne200100]<0>(v24, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 238);
          cv::error(v26, v20);
        }
      }

      else
      {
        v21 = (**(this + 9) * **(this + 8) + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v22 = malloc_type_malloc(v21 + 4, 0x100004052888210uLL);
        *(this + 2) = v22;
        *(this + 3) = &v22[v21];
        *(this + 4) = v22;
        *&v22[v21] = 1;
      }
    }

    cv::finalizeHdr(this, v14);
  }
}

void sub_22D26049C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::Mat::release(cv::Mat *this)
{
  v2 = *(this + 3);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(this);
  }

  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  if (*(this + 1) >= 1)
  {
    v3 = 0;
    v4 = *(this + 8);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(this + 1));
  }

  *(this + 3) = 0;
}

void cv::setSize(cv *this, cv::Mat *a2, uint64_t a3, const int *a4, const unint64_t *a5)
{
  v5 = a5;
  v8 = a2;
  if (a2 >= 0x21)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "0 <= _dims && _dims <= CV_MAX_DIM");
    std::string::basic_string[abi:ne200100]<0>(v22, "setSize");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v24, 4294967081, v23, v22, __p, 89);
    cv::error(v24, v10);
  }

  if (*(this + 1) != a2)
  {
    v11 = *(this + 9);
    if (v11 != this + 80)
    {
      if (v11)
      {
        free(v11);
      }

      *(this + 8) = this + 8;
      *(this + 9) = this + 80;
    }

    if (v8 >= 3)
    {
      v12 = malloc_type_malloc(4 * (v8 + 1) + 8 * v8, 0x100004000313F17uLL);
      *(this + 9) = v12;
      v13 = &v12[8 * v8];
      *v13 = v8;
      *(this + 8) = v13 + 1;
      *(this + 1) = -1;
    }
  }

  *(this + 1) = v8;
  if (a3 && v8 >= 1)
  {
    v14 = (((*this >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (*this & 7))) & 3);
    v15 = (v8 - 1);
    v16 = v14;
    do
    {
      v17 = *(a3 + 4 * v15);
      if (v17 < 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v23, "s >= 0");
        std::string::basic_string[abi:ne200100]<0>(v22, "setSize");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v24, 4294967081, v23, v22, __p, 118);
        cv::error(v24, v18);
      }

      *(*(this + 8) + 4 * v15) = v17;
      if (a4)
      {
        v19 = v14;
        if (v15 < (v8 - 1))
        {
          v19 = *&a4[2 * v15];
        }

        *(*(this + 9) + 8 * v15) = v19;
      }

      else if (v5)
      {
        *(*(this + 9) + 8 * v15) = v16;
        v16 *= v17;
      }
    }

    while (v15-- > 0);
    if (v8 == 1)
    {
      *(this + 1) = 2;
      *(this + 3) = 1;
      *(*(this + 9) + 8) = v14;
    }
  }
}

void sub_22D260810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::finalizeHdr(cv *this, cv::Mat *a2)
{
  result = cv::updateContinuityFlag(this, a2);
  v4 = *(this + 1);
  if (v4 >= 3)
  {
    *(this + 1) = -1;
  }

  v5 = *(this + 2);
  if (v5)
  {
    v6 = *(this + 8);
    v7 = *(this + 9);
    v8 = *v6;
    v9 = *(this + 4) + *v7 * v8;
    *(this + 6) = v9;
    if (v8 < 1)
    {
      *(this + 5) = v9;
    }

    else
    {
      v10 = (v4 - 1);
      v11 = v5 + v7[v10] * v6[v10];
      *(this + 5) = v11;
      if (v4 >= 2)
      {
        do
        {
          v12 = *v6++;
          v13 = v12 - 1;
          v14 = *v7++;
          v11 += v14 * v13;
          --v10;
        }

        while (v10);
        *(this + 5) = v11;
      }
    }
  }

  else
  {
    *(this + 5) = 0;
    *(this + 6) = 0;
  }

  return result;
}

void cv::Mat::copySize(cv::Mat *this, const cv::Mat *a2)
{
  cv::setSize(this, *(a2 + 1), 0, 0, 0);
  if (*(this + 1) >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 8);
    v6 = *(a2 + 9);
    v7 = *(this + 8);
    v8 = *(this + 9);
    do
    {
      *(v7 + 4 * v4) = *(v5 + 4 * v4);
      *(v8 + 8 * v4) = *(v6 + 8 * v4);
      ++v4;
    }

    while (v4 < *(this + 1));
  }
}

void cv::Mat::deallocate(cv::Mat *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 24))(v2, *(this + 3), *(this + 4), *(this + 2));
  }

  else
  {
    v3 = *(this + 4);
    if (v3)
    {
      free(v3);
    }
  }
}

uint64_t cv::Mat::Mat(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v2;
  v10 = (v2 + 8);
  *(v2 + 80) = 0;
  *(v2 + 64) = v2 + 8;
  *(v2 + 72) = v2 + 80;
  *(v2 + 88) = 0;
  *(v2 + 4) = 0u;
  v11 = (v2 + 4);
  *v2 = 1124007936;
  *(v2 + 20) = 0u;
  *(v2 + 36) = 0u;
  *(v2 + 48) = 0u;
  v12 = *(v3 + 4);
  if (v12 < 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "m.dims >= 2");
    std::string::basic_string[abi:ne200100]<0>(v64, "Mat");
    std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(&v60, 4294967081, &__p, v64, v63, 273);
    cv::error(&v60, v13);
  }

  if (v12 > 2)
  {
    bzero(v62, 0x1050uLL);
    v60 = v62;
    v61 = 520;
    if (v12 > 0x208)
    {
      v61 = v12;
      operator new[]();
    }

    v19 = *v5;
    v62[0] = *v7;
    v62[1] = v19;
    v20 = 2;
    do
    {
      v60[v20++] = 0x7FFFFFFF80000000;
    }

    while (v20 < *(v8 + 4));
    cv::Mat::Mat(&__p, v8, v60);
    v21 = v54;
    if (&__p == v9)
    {
      goto LABEL_59;
    }

    if (v54)
    {
      atomic_fetch_add(v54, 1u);
    }

    v22 = *(v9 + 24);
    if (v22 && atomic_fetch_add(v22, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v9);
    }

    *(v9 + 16) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 32) = 0;
    if (*(v9 + 4) <= 0)
    {
      *(v9 + 24) = 0;
      *v9 = __p;
    }

    else
    {
      v23 = 0;
      v24 = *(v9 + 64);
      do
      {
        *(v24 + 4 * v23++) = 0;
        v25 = *v11;
      }

      while (v23 < v25);
      *(v9 + 24) = 0;
      *v9 = __p;
      if (v25 > 2)
      {
        goto LABEL_57;
      }
    }

    if (__p_4 <= 2)
    {
      *(v9 + 4) = __p_4;
      *(v9 + 8) = v52;
      v38 = v58;
      v39 = *(v9 + 72);
      *v39 = *v58;
      v39[1] = v38[1];
LABEL_58:
      *(v9 + 16) = v53;
      *(v9 + 40) = v55;
      v40 = v54;
      *(v9 + 24) = v54;
      *(v9 + 56) = v56;
      v21 = v40;
LABEL_59:
      if (v21 && atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&__p);
      }

      v53 = 0;
      *(&v54 + 1) = 0;
      v55 = 0uLL;
      if (__p_4 >= 1)
      {
        v41 = 0;
        v42 = v57;
        do
        {
          *(v42 + 4 * v41++) = 0;
        }

        while (v41 < __p_4);
      }

      *&v54 = 0;
      if (v58)
      {
        v43 = v58 == &v59;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        free(v58);
      }

      if (v60 != v62 && v60 != 0)
      {
        MEMORY[0x2318CB180]();
      }

      return v9;
    }

LABEL_57:
    cv::Mat::copySize(v9, &__p);
    goto LABEL_58;
  }

  if (v2 != v3)
  {
    v14 = *(v3 + 24);
    if (v14)
    {
      atomic_fetch_add(v14, 1u);
    }

    v15 = *(v2 + 24);
    if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v2);
    }

    *(v9 + 16) = 0;
    *(v9 + 40) = 0;
    *(v9 + 48) = 0;
    *(v9 + 32) = 0;
    if (*(v9 + 4) <= 0)
    {
      *(v9 + 24) = 0;
      *v9 = *v8;
    }

    else
    {
      v16 = 0;
      v17 = *(v9 + 64);
      do
      {
        *(v17 + 4 * v16++) = 0;
        v18 = *v11;
      }

      while (v16 < v18);
      *(v9 + 24) = 0;
      *v9 = *v8;
      if (v18 > 2)
      {
        goto LABEL_33;
      }
    }

    v26 = *(v8 + 4);
    if (v26 <= 2)
    {
      *(v9 + 4) = v26;
      *(v9 + 8) = *(v8 + 8);
      v27 = *(v8 + 72);
      v28 = *(v9 + 72);
      *v28 = *v27;
      v28[1] = v27[1];
LABEL_34:
      *(v9 + 32) = *(v8 + 32);
      *(v9 + 48) = *(v8 + 48);
      *(v9 + 16) = *(v8 + 16);
      *(v9 + 56) = *(v8 + 56);
      goto LABEL_35;
    }

LABEL_33:
    cv::Mat::copySize(v9, v8);
    goto LABEL_34;
  }

LABEL_35:
  v29 = *v7;
  v30 = v7[1];
  if ((*v7 != 0x80000000 || v30 != 0x7FFFFFFF) && (v29 || v30 != *v10))
  {
    if (v29 < 0 || v29 > v30 || v30 > *(v8 + 8))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "0 <= _rowRange.start && _rowRange.start <= _rowRange.end && _rowRange.end <= m.rows");
      std::string::basic_string[abi:ne200100]<0>(v64, "Mat");
      std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v60, 4294967081, &__p, v64, v63, 291);
      cv::error(&v60, v31);
    }

    *(v9 + 8) = v30 - v29;
    *(v9 + 16) += *(v9 + 80) * v29;
    *v9 |= 0x8000u;
  }

  v32 = *v5;
  v33 = *(v5 + 1);
  if ((*v5 != 0x80000000 || v33 != 0x7FFFFFFF) && (v32 || v33 != *(v9 + 12)))
  {
    if (v32 < 0 || v32 > v33 || v33 > *(v8 + 12))
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "0 <= _colRange.start && _colRange.start <= _colRange.end && _colRange.end <= m.cols");
      std::string::basic_string[abi:ne200100]<0>(v64, "Mat");
      std::string::basic_string[abi:ne200100]<0>(v63, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v60, 4294967081, &__p, v64, v63, 300);
      cv::error(&v60, v34);
    }

    v35 = v33 - v32;
    *(v9 + 12) = v35;
    v36 = *(v9 + 4);
    if (v36 < 1)
    {
      v37 = 0;
    }

    else
    {
      v37 = *(*(v9 + 72) + 8 * v36 - 8);
    }

    *(v9 + 16) += v37 * v32;
    if (v35 >= *(v8 + 12))
    {
      v45 = -32769;
    }

    else
    {
      v45 = -49153;
    }

    *v9 = v45 & *v9 | 0x8000;
  }

  if (*v10 == 1)
  {
    *v9 |= 0x4000u;
    goto LABEL_83;
  }

  if (*v10 >= 1)
  {
LABEL_83:
    if (*(v9 + 12) > 0)
    {
      return v9;
    }
  }

  v46 = *(v9 + 24);
  if (v46 && atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v9);
  }

  *(v9 + 16) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0;
  if (*(v9 + 4) >= 1)
  {
    v47 = 0;
    v48 = *(v9 + 64);
    do
    {
      *(v48 + 4 * v47++) = 0;
    }

    while (v47 < *v11);
  }

  *(v9 + 24) = 0;
  *(v9 + 8) = 0;
  return v9;
}

void sub_22D261114(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  cv::Exception::~Exception(&a24);
  if (*(v25 + 23) < 0)
  {
    operator delete(*(v26 - 128));
  }

  if (*(v25 + 47) < 0)
  {
    operator delete(*(v26 - 104));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  __cxa_begin_catch(a1);
  cv::Mat::release(v24);
  __cxa_rethrow();
}

void sub_22D2611A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  cv::Mat::~Mat(&__p);
  if (a24 != v24 && a24 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

cv::Mat *cv::Mat::Mat(cv::Mat *this, int *a2, int32x2_t *a3)
{
  v4 = *a2;
  *this = *a2;
  *(this + 1) = 2;
  *(this + 1) = vrev64_s32(a3[1]);
  v5 = *(a2 + 2) + **(a2 + 9) * a3->i32[1];
  *(this + 2) = v5;
  *(this + 24) = *(a2 + 6);
  *(this + 40) = *(a2 + 10);
  v6 = *(a2 + 7);
  *(this + 10) = 0;
  v7 = this + 80;
  *(this + 7) = v6;
  *(this + 8) = this + 8;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  if (a2[1] >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "m.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v24, "Mat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 330);
    cv::error(v26, v8);
  }

  v9 = a2[3];
  v11 = a3[1].i32[0];
  v10 = a3[1].i32[1];
  if (v11 >= v9)
  {
    v12 = -1;
  }

  else
  {
    v12 = -16385;
  }

  *this = v12 & v4 | ((v10 == 1) << 14);
  v13 = (((v4 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v4 & 7))) & 3);
  v14 = a3->i32[0];
  *(this + 2) = v5 + v13 * a3->i32[0];
  if (v14 < 0 || v11 < 0 || v14 + v11 > v9 || (v15 = a3->i32[1], v15 < 0) || v10 < 0 || v15 + v10 > a2[2])
  {
    std::string::basic_string[abi:ne200100]<0>(v25, "0 <= roi.x && 0 <= roi.width && roi.x + roi.width <= m.cols && 0 <= roi.y && 0 <= roi.height && roi.y + roi.height <= m.rows");
    std::string::basic_string[abi:ne200100]<0>(v24, "Mat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v26, 4294967081, v25, v24, __p, 337);
    cv::error(v26, v16);
  }

  v17 = *(this + 3);
  if (v17)
  {
    atomic_fetch_add(v17, 1u);
  }

  if (a3[1].i32[0] < a2[3] || a3[1].i32[1] < a2[2])
  {
    *this |= 0x8000u;
  }

  v18 = *(this + 9);
  *v18 = **(a2 + 9);
  v18[1] = v13;
  if (*(this + 2) < 1 || *(this + 3) <= 0)
  {
    v19 = *(this + 3);
    if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(this);
    }

    *(this + 2) = 0;
    *(v7 - 5) = 0;
    *(v7 - 4) = 0;
    *(v7 - 6) = 0;
    if (*(this + 1) >= 1)
    {
      v20 = 0;
      v21 = *(this + 8);
      do
      {
        *(v21 + 4 * v20++) = 0;
      }

      while (v20 < *(this + 1));
    }

    *(this + 3) = 0;
    *(this + 1) = 0;
  }

  return this;
}

void sub_22D26155C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

cv::Mat *cv::Mat::Mat(cv::Mat *this, cv::Mat *a2, const int *a3, __int16 a4, void *a5, const unint64_t *a6)
{
  *(this + 10) = 0;
  *(this + 8) = this + 8;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  *this = a4 & 0xFFF | 0x42FF0000;
  *(this + 4) = a5;
  *(this + 2) = a5;
  cv::setSize(this, a2, a3, a6, 1);
  cv::finalizeHdr(this, v7);
  return this;
}

cv::Mat *cv::Mat::Mat(cv::Mat *this, cv::Mat *a2, uint64_t a3)
{
  *(this + 10) = 0;
  *(this + 8) = this + 8;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *this = 1124007936;
  *(this + 4) = 0u;
  v6 = (this + 4);
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 3) = 0u;
  v7 = *(a2 + 1);
  if (!a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v29, "ranges");
    std::string::basic_string[abi:ne200100]<0>(v28, "Mat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v30, 4294967081, v29, v28, __p, 368);
    cv::error(v30, v8);
  }

  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      v10 = *(a3 + 8 * i);
      v11 = v10 == 0x80000000 && HIDWORD(v10) == 0x7FFFFFFF;
      if (!v11 && ((v10 & 0x80000000) != 0 || v10 >= SHIDWORD(v10) || *(*(a2 + 8) + 4 * i) < SHIDWORD(v10)))
      {
        std::string::basic_string[abi:ne200100]<0>(v29, "r == Range::all() || (0 <= r.start && r.start < r.end && r.end <= m.size[i])");
        std::string::basic_string[abi:ne200100]<0>(v28, "Mat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v30, 4294967081, v29, v28, __p, 372);
        cv::error(v30, v12);
      }
    }
  }

  if (this != a2)
  {
    v13 = *(a2 + 3);
    if (v13)
    {
      atomic_fetch_add(v13, 1u);
    }

    v14 = *(this + 3);
    if (v14 && atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(this);
    }

    *(this + 2) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    if (*(this + 1) <= 0)
    {
      *(this + 3) = 0;
      *this = *a2;
    }

    else
    {
      v15 = 0;
      v16 = *(this + 8);
      do
      {
        *(v16 + 4 * v15++) = 0;
        v17 = *v6;
      }

      while (v15 < v17);
      *(this + 3) = 0;
      *this = *a2;
      if (v17 > 2)
      {
        goto LABEL_28;
      }
    }

    v18 = *(a2 + 1);
    if (v18 <= 2)
    {
      *(this + 1) = v18;
      *(this + 1) = *(a2 + 1);
      v19 = *(a2 + 9);
      v20 = *(this + 9);
      *v20 = *v19;
      v20[1] = v19[1];
LABEL_29:
      *(this + 2) = *(a2 + 2);
      *(this + 6) = *(a2 + 6);
      *(this + 1) = *(a2 + 1);
      *(this + 7) = *(a2 + 7);
      goto LABEL_30;
    }

LABEL_28:
    cv::Mat::copySize(this, a2);
    goto LABEL_29;
  }

LABEL_30:
  if (v7 >= 1)
  {
    for (j = 0; j != v7; ++j)
    {
      v22 = *(a3 + 8 * j);
      if (v22 != 0x80000000 || HIDWORD(v22) != 0x7FFFFFFF)
      {
        v24 = *(this + 8);
        if (v22)
        {
          v25 = 0;
        }

        else
        {
          v25 = *(v24 + 4 * j) == HIDWORD(v22);
        }

        if (!v25)
        {
          *(v24 + 4 * j) = HIDWORD(v22) - v22;
          *(this + 2) += *(*(this + 9) + 8 * j) * v22;
          *this |= 0x8000u;
        }
      }
    }
  }

  cv::updateContinuityFlag(this, a2);
  return this;
}

void sub_22D2619AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::updateContinuityFlag(uint64_t this, cv::Mat *a2)
{
  v2 = *(this + 4);
  v3 = *(this + 64);
  if (v2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    while (*(v3 + 4 * v4) <= 1)
    {
      if (v2 == ++v4)
      {
        LODWORD(v4) = *(this + 4);
        break;
      }
    }

    v4 = v4;
  }

  v5 = v2;
  v6 = (*(this + 72) + 8 * v2 - 8);
  v7 = v5 - 1;
  while (v7 > v4)
  {
    v8 = *v6 * *(v3 + 4 * v7);
    v9 = *--v6;
    --v7;
    if (v8 < v9)
    {
      v10 = 0;
      goto LABEL_13;
    }
  }

  v10 = 0x4000;
LABEL_13:
  *this = *this & 0xFFFFBFFF | v10;
  return this;
}

cv *cv::Mat::Mat(cv *this, uint64_t a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  *(this + 10) = 0;
  *(this + 8) = this + 8;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *this = 1124007936;
  *(this + 4) = 0u;
  v4 = (this + 4);
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 3) = 0u;
  if (a2)
  {
    v7 = *(a2 + 24);
    *(this + 4) = v7;
    *(this + 2) = v7;
    LODWORD(v7) = *a2;
    v8 = *(a2 + 4);
    *this = v7 & 0xFFF | 0x42FF0000;
    if (v8 >= 1)
    {
      v9 = (a2 + 36);
      v10 = v36;
      v11 = v37;
      v12 = v8;
      do
      {
        v13 = *v9;
        *v11++ = *(v9 - 1);
        *v10 = v13;
        v10 += 2;
        v9 += 2;
        v12 = (v12 - 1);
      }

      while (v12);
    }

    cv::setSize(this, v8, v37, v36, 0);
    cv::finalizeHdr(this, v14);
    if (a3)
    {
      v15 = *this;
      v28 = *this;
      v29 = *(this + 2);
      v16 = *(this + 24);
      v30 = v16;
      v31 = *(this + 40);
      v32 = *(this + 7);
      v33 = &v28 + 8;
      v35[0] = 0;
      v35[1] = 0;
      v34 = v35;
      if (v16)
      {
        atomic_fetch_add(v16, 1u);
        v17 = *v4;
      }

      else
      {
        v17 = DWORD1(v15);
      }

      if (v17 > 2)
      {
        DWORD1(v28) = 0;
        cv::Mat::copySize(&v28, this);
      }

      else
      {
        v18 = *(this + 9);
        v19 = v34;
        *v34 = *v18;
        v19[1] = v18[1];
      }

      v25 = 0x10000;
      v26 = this;
      v27 = 0;
      v24 = &unk_2840567A8;
      cv::Mat::copyTo(&v28, &v24);
      if (v30 && atomic_fetch_add(v30, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v28);
      }

      v29 = 0;
      v31 = 0uLL;
      *(&v30 + 1) = 0;
      if (SDWORD1(v28) >= 1)
      {
        v20 = 0;
        v21 = v33;
        do
        {
          *&v21[4 * v20++] = 0;
        }

        while (v20 < SDWORD1(v28));
      }

      *&v30 = 0;
      if (v34)
      {
        v22 = v34 == v35;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        free(v34);
      }
    }
  }

  return this;
}

void sub_22D261CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cv::_OutputArray::_OutputArray(uint64_t this, cv::Mat *a2)
{
  *(this + 8) = 0x10000;
  *(this + 16) = a2;
  *(this + 24) = 0;
  *this = &unk_2840567A8;
  return this;
}

void cv::Mat::diag(cv::Mat *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(this + 1);
  if (v6 >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v19, "diag");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 419);
    cv::error(v21, v7);
  }

  *a3 = *this;
  *(a3 + 4) = v6;
  *(a3 + 8) = *(this + 1);
  *(a3 + 16) = *(this + 2);
  v8 = *(this + 24);
  *(a3 + 24) = v8;
  *(a3 + 40) = *(this + 40);
  *(a3 + 56) = *(this + 7);
  *(a3 + 64) = a3 + 8;
  *(a3 + 80) = 0;
  *(a3 + 72) = a3 + 80;
  *(a3 + 88) = 0;
  if (v8)
  {
    atomic_fetch_add(v8, 1u);
    v6 = *(this + 1);
  }

  if (v6 > 2)
  {
    *(a3 + 4) = 0;
    cv::Mat::copySize(a3, this);
    v6 = *(this + 1);
  }

  else
  {
    v9 = *(this + 9);
    v10 = *(a3 + 72);
    *v10 = *v9;
    v10[1] = v9[1];
  }

  if (v6 < 1)
  {
    v11 = 0;
    if ((a2 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *(*(this + 9) + 8 * v6 - 8);
    if ((a2 & 0x80000000) == 0)
    {
LABEL_10:
      v12 = *(this + 3) - a2;
      if (*(this + 2) < v12)
      {
        v12 = *(this + 2);
      }

      v13 = *(a3 + 16) + v11 * a2;
      goto LABEL_17;
    }
  }

  v12 = *(this + 2) + a2;
  if (*(this + 3) < v12)
  {
    v12 = *(this + 3);
  }

  v13 = *(a3 + 16) - **(this + 9) * a2;
LABEL_17:
  *(a3 + 8) = v12;
  v14 = *(a3 + 64);
  v15 = *(a3 + 72);
  *v14 = v12;
  *(a3 + 12) = 1;
  v14[1] = 1;
  *(a3 + 16) = v13;
  if (v12 <= 1)
  {
    v11 = 0;
  }

  *v15 += v11;
  v16 = *a3 & 0xFFFFBFFF | ((*(a3 + 8) < 2) << 14);
  *a3 = v16;
  v17 = *(this + 8);
  if (v17[1] != 1 || *v17 != 1)
  {
    *a3 = v16 | 0x8000;
  }
}

void sub_22D261F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t cv::Mat::Mat(uint64_t a1, int *a2, char a3)
{
  *(a1 + 80) = 0;
  *(a1 + 64) = a1 + 8;
  *(a1 + 72) = a1 + 80;
  *(a1 + 88) = 0;
  *a1 = 1124007936;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0u;
  *(a1 + 48) = 0u;
  if (a2)
  {
    if (a3)
    {
      *(a1 + 32) = 0;
      *(a1 + 40) = 0;
      v4 = a2[8];
      v5 = a2[9];
      v6 = *(a2 + 3);
      v7 = *a2;
      v8 = a2[1];
      v9 = *a2 & 0xFFF;
      v30 = 2;
      v31[0] = v4;
      v31[1] = v5;
      v32 = v6;
      v33 = 0;
      v34 = v6;
      v37 = 0;
      v38 = v31;
      v39 = v40;
      v10 = (((v7 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v7 & 7))) & 3);
      v11 = v10 * v5;
      if (v8)
      {
        if (v4 == 1)
        {
          v8 = v11;
        }

        v12 = v9 | ((v8 == v11) << 14) | 0x42FF0000;
      }

      else
      {
        v12 = v9 | 0x42FF4000;
        v8 = v11;
      }

      v29 = v12;
      v40[0] = v8;
      v40[1] = v10;
      v20 = v6 + v8 * v4;
      v35 = v20 - v8 + v11;
      v36 = v20;
      v26 = 0x10000;
      v27 = a1;
      v28 = 0;
      v25 = &unk_2840567A8;
      cv::Mat::copyTo(&v29, &v25);
      if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v29);
      }

      v32 = 0;
      v35 = 0;
      v36 = 0;
      v34 = 0;
      if (v30 >= 1)
      {
        v21 = 0;
        v22 = v38;
        do
        {
          v22[v21++] = 0;
        }

        while (v21 < v30);
      }

      v33 = 0;
      if (v39)
      {
        v23 = v39 == v40;
      }

      else
      {
        v23 = 1;
      }

      if (!v23)
      {
        free(v39);
      }
    }

    else
    {
      v13 = *a2;
      v14 = a2[1];
      *a1 = *a2 & 0x4FFF | 0x42FF0000;
      *(a1 + 4) = 2;
      v15 = a2[8];
      *(a1 + 8) = v15;
      v16 = a2[9];
      *(a1 + 12) = v16;
      v17 = *(a2 + 3);
      *(a1 + 16) = v17;
      v18 = (((v13 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v13 & 7))) & 3);
      if (!v14)
      {
        v14 = v16 * v18;
      }

      v19 = v17 + v14 * v15;
      *(a1 + 48) = v19;
      *(a1 + 32) = v17;
      *(a1 + 40) = v19 - v14 + v16 * v18;
      *(a1 + 80) = v14;
      *(a1 + 88) = v18;
    }
  }

  return a1;
}

void sub_22D26221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  cv::Mat::~Mat(va);
  _Unwind_Resume(a1);
}

cv::Mat *cv::Mat::Mat(cv::Mat *this, uint64_t a2, int a3)
{
  v61[3] = *MEMORY[0x277D85DE8];
  *(this + 10) = 0;
  v4 = (this + 80);
  *(this + 8) = this + 8;
  *(this + 9) = this + 80;
  *(this + 11) = 0;
  *this = 1124007936;
  *(this + 4) = 0u;
  v5 = (this + 4);
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 3) = 0u;
  if (!a2)
  {
    return this;
  }

  *v5 = 2;
  v7 = (0x43160520u >> (((*(a2 + 16) >> 2) & 0x3C) + ((*(a2 + 16) >> 31) & 0x14))) & 7;
  v8 = *(a2 + 96);
  *v4 = v8;
  v9 = *(a2 + 48);
  v10 = *(a2 + 28);
  if (!v9)
  {
    if (v10)
    {
      std::string::basic_string[abi:ne200100]<0>(v57, "img->dataOrder == IPL_DATA_ORDER_PIXEL");
      std::string::basic_string[abi:ne200100]<0>(v61, "Mat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v45, 4294967081, v57, v61, __p, 497);
      cv::error(&v45, v21);
    }

    v22 = 8 * *(a2 + 8) - 8;
    v16 = (v22 | v7) + 1124007936;
    *this = v16;
    v17 = *(a2 + 44);
    *(this + 2) = v17;
    v18 = *(a2 + 40);
    *(this + 3) = v18;
    v23 = *(a2 + 88);
    *(this + 2) = v23;
    *(this + 4) = v23;
    v19 = (((v22 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * v7)) & 3);
    goto LABEL_18;
  }

  if (v10)
  {
    v11 = *v9;
    if (!*v9)
    {
      std::string::basic_string[abi:ne200100]<0>(v57, "img->dataOrder == IPL_DATA_ORDER_PIXEL || img->roi->coi != 0");
      std::string::basic_string[abi:ne200100]<0>(v61, "Mat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v45, 4294967081, v57, v61, __p, 505);
      cv::error(&v45, v12);
    }
  }

  else
  {
    v11 = *v9;
    if (!*v9)
    {
LABEL_10:
      v14 = 0;
      v13 = 8 * *(a2 + 8) - 8;
      goto LABEL_11;
    }

    v10 = *(a2 + 28);
  }

  if (v10 != 1)
  {
    goto LABEL_10;
  }

  v13 = 0;
  v14 = 1;
LABEL_11:
  v15 = v13 + v7;
  v16 = v13 + v7 + 1124007936;
  *this = v16;
  v17 = v9[4];
  *(this + 2) = v17;
  v18 = v9[3];
  *(this + 3) = v18;
  v19 = (((v15 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v15 & 7))) & 3);
  if (v14)
  {
    v20 = *v4 * (v11 - 1) * *(a2 + 44);
  }

  else
  {
    v20 = 0;
  }

  v24 = *(a2 + 88) + v20;
  v4 = *(this + 9);
  v8 = *v4;
  v23 = v24 + *v4 * v9[2] + v9[1] * v19;
  *(this + 4) = v23;
  *(this + 2) = v23;
LABEL_18:
  v25 = v23 + v8 * v17;
  v26 = v23 + v8 * (v17 - 1) + v19 * v18;
  *(this + 5) = v26;
  *(this + 6) = v25;
  if (v17 == 1 || v19 * v18 == v8)
  {
    v28 = 0x4000;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28 | v16;
  *this = v29;
  v4[1] = v19;
  if (a3)
  {
    v30 = *(this + 1);
    v45 = v29;
    v46 = v30;
    v47 = __PAIR64__(v18, v17);
    v31 = *(this + 3);
    v48 = v23;
    v49 = v31;
    v50 = v23;
    v51 = v26;
    v32 = *(this + 7);
    v52 = v25;
    v53 = v32;
    v54 = &v47;
    v55 = v56;
    v56[0] = 0;
    v56[1] = 0;
    if (v31)
    {
      atomic_fetch_add(v31, 1u);
      v30 = *v5;
    }

    if (v30 > 2)
    {
      v46 = 0;
      cv::Mat::copySize(&v45, this);
    }

    else
    {
      v33 = *(this + 9);
      v34 = v55;
      *v55 = *v33;
      v34[1] = v33[1];
    }

    v35 = *(this + 3);
    if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(this);
    }

    *(this + 2) = 0;
    *(this + 5) = 0;
    *(this + 6) = 0;
    *(this + 4) = 0;
    if (*(this + 1) >= 1)
    {
      v36 = 0;
      v37 = *(this + 8);
      do
      {
        *(v37 + 4 * v36++) = 0;
      }

      while (v36 < *v5);
    }

    *(this + 3) = 0;
    v38 = *(a2 + 48);
    if (v38 && (v39 = *v38) != 0 && *(a2 + 28) != 1)
    {
      v61[0] = (v39 - 1);
      *v57 = v47;
      cv::Mat::create(this, 2, v57, v45 & 0xFFF);
      cv::mixChannels(&v45, 1, this, 1, v61, 1);
    }

    else
    {
      v58 = 0x10000;
      v59 = this;
      v60 = 0;
      *v57 = &unk_2840567A8;
      cv::Mat::copyTo(&v45, v57);
    }

    if (v49 && atomic_fetch_add(v49, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v45);
    }

    v48 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    if (v46 >= 1)
    {
      v40 = 0;
      v41 = v54;
      do
      {
        *(v41 + v40++) = 0;
      }

      while (v40 < v46);
    }

    v49 = 0;
    if (v55)
    {
      v42 = v55 == v56;
    }

    else
    {
      v42 = 1;
    }

    if (!v42)
    {
      free(v55);
    }
  }

  return this;
}

void sub_22D262778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  cv::Exception::~Exception(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 73) < 0)
  {
    operator delete(*(v15 - 96));
  }

  if (*(v15 - 105) < 0)
  {
    operator delete(*(v15 - 128));
  }

  _Unwind_Resume(a1);
}

void cv::Mat::reserve(cv::Mat *this, unint64_t a2)
{
  if ((a2 & 0x80000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v36, "(int)nelems >= 0");
    std::string::basic_string[abi:ne200100]<0>(&v32, "reserve");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v45, 4294967081, v36, &v32, __p, 585);
    cv::error(v45, v4);
  }

  if ((*(this + 1) & 0x80) != 0 || *(this + 2) + **(this + 9) * a2 > *(this + 6))
  {
    v5 = *(this + 8);
    v6 = *v5;
    if (*v5 < a2)
    {
      if (a2 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = a2;
      }

      *v5 = v7;
      v8 = *(this + 1);
      if (v8 >= 3)
      {
        v9 = 1;
        v10 = v5;
        v11 = *(this + 1);
        do
        {
          v12 = *v10++;
          v9 *= v12;
          --v11;
        }

        while (v11);
      }

      else
      {
        v9 = *(this + 3) * *(this + 2);
      }

      if (v8 < 1)
      {
        v13 = 0;
      }

      else
      {
        v13 = *(*(this + 9) + 8 * v8 - 8);
      }

      v14 = v13 * v9;
      if (v14 <= 0x3F)
      {
        *v5 = (v14 + 63) * a2 / v14;
        v8 = *(this + 1);
      }

      v15 = *this;
      v46 = v45 + 8;
      v47 = v48;
      v48[0] = 0;
      v48[1] = 0;
      LODWORD(v45[0]) = 1124007936;
      memset(v45 + 4, 0, 48);
      v45[3] = 0u;
      cv::Mat::create(v45, v8, v5, v15 & 0xFFF);
      **(this + 8) = v6;
      if (v6 >= 1)
      {
        __p[0] = 0x7FFFFFFF80000000;
        cv::Mat::Mat(v36, v45);
        v33 = 0x10000;
        v34 = v36;
        v35 = 0;
        v32 = &unk_2840567A8;
        cv::Mat::copyTo(this, &v32);
        if (v37 && atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v36);
        }

        v36[2] = 0;
        v38 = 0;
        v39 = 0;
        v40 = 0;
        if (SHIDWORD(v36[0]) >= 1)
        {
          v16 = 0;
          v17 = v41;
          do
          {
            *(v17 + 4 * v16++) = 0;
          }

          while (v16 < SHIDWORD(v36[0]));
        }

        v37 = 0;
        if (v42)
        {
          v18 = v42 == &v43;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          free(v42);
        }
      }

      if (v45 == this)
      {
        v23 = *(this + 2);
        v24 = *(&v45[1] + 1);
        goto LABEL_47;
      }

      if (*(&v45[1] + 1))
      {
        atomic_fetch_add(*(&v45[1] + 1), 1u);
      }

      v19 = *(this + 3);
      if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(this);
      }

      *(this + 2) = 0;
      *(this + 5) = 0;
      *(this + 6) = 0;
      *(this + 4) = 0;
      if (*(this + 1) <= 0)
      {
        *(this + 3) = 0;
        *this = v45[0];
      }

      else
      {
        v20 = 0;
        v21 = *(this + 8);
        do
        {
          *(v21 + 4 * v20++) = 0;
          v22 = *(this + 1);
        }

        while (v20 < v22);
        *(this + 3) = 0;
        *this = v45[0];
        if (v22 > 2)
        {
          goto LABEL_45;
        }
      }

      if (SDWORD1(v45[0]) <= 2)
      {
        *(this + 1) = DWORD1(v45[0]);
        *(this + 1) = *(&v45[0] + 1);
        v25 = v47;
        v26 = *(this + 9);
        *v26 = *v47;
        v26[1] = v25[1];
LABEL_46:
        v23 = *&v45[1];
        v27 = *(&v45[3] + 1);
        *(this + 2) = *&v45[1];
        *(this + 40) = *(&v45[2] + 8);
        v28 = *(&v45[1] + 1);
        *(this + 24) = *(&v45[1] + 8);
        *(this + 7) = v27;
        v24 = v28;
LABEL_47:
        **(this + 8) = v6;
        *(this + 5) = v23 + **(this + 9) * v6;
        if (v24 && atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v45);
        }

        *&v45[1] = 0;
        memset(&v45[2], 0, 24);
        if (SDWORD1(v45[0]) >= 1)
        {
          v29 = 0;
          v30 = v46;
          do
          {
            *&v30[4 * v29++] = 0;
          }

          while (v29 < SDWORD1(v45[0]));
        }

        *(&v45[1] + 1) = 0;
        if (v47)
        {
          v31 = v47 == v48;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          free(v47);
        }

        return;
      }

LABEL_45:
      cv::Mat::copySize(this, v45);
      goto LABEL_46;
    }
  }
}

void cv::Mat::resize(cv::Mat *this, unint64_t a2)
{
  v2 = a2;
  v3 = **(this + 8);
  v4 = a2 - v3;
  if (a2 != v3)
  {
    if ((a2 & 0x80000000) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v10, "(int)nelems >= 0");
      std::string::basic_string[abi:ne200100]<0>(v9, "resize");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v11, 4294967081, v10, v9, __p, 619);
      cv::error(v11, v6);
    }

    if ((*(this + 1) & 0x80) != 0 || (v7 = **(this + 9), *(this + 2) + v7 * a2 > *(this + 6)))
    {
      cv::Mat::reserve(this, a2);
      v7 = **(this + 9);
    }

    **(this + 8) = v2;
    *(this + 5) += v7 * v4;
  }
}

void sub_22D262DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

cv *cv::cvarrToMat@<X0>(cv *this@<X0>, const void *a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (!this)
  {
    *(a4 + 80) = 0;
    *(a4 + 64) = a4 + 8;
    *(a4 + 72) = a4 + 80;
    *(a4 + 88) = 0;
    *a4 = 1124007936;
    *(a4 + 4) = 0u;
    *(a4 + 20) = 0u;
    *(a4 + 36) = 0u;
    *(a4 + 48) = 0u;
    return this;
  }

  v5 = this;
  v6 = *this;
  v7 = *this & 0xFFFF0000;
  if (v7 == 1111687168)
  {
    if (!*(this + 3))
    {
      goto LABEL_25;
    }

    return cv::Mat::Mat(a4, this, a2);
  }

  else
  {
    if (v7 == 1111621632)
    {
      if (*(this + 9) >= 1 && *(this + 8) >= 1 && *(this + 3))
      {

        return cv::Mat::Mat(a4, this, a2);
      }

LABEL_25:
      std::string::basic_string[abi:ne200100]<0>(v20, "Unknown array type");
      std::string::basic_string[abi:ne200100]<0>(v19, "cvarrToMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v21, 4294967291, v20, v19, __p, 712);
      cv::error(v21, v11);
    }

    if (v6 != 144)
    {
      if (v7 == 1117323264)
      {
        if (*(this + 10) < 1 || (((v6 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v6 & 7))) & 3) != *(this + 11))
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "seq->total > 0 && CV_ELEM_SIZE(seq->flags) == seq->elem_size");
          std::string::basic_string[abi:ne200100]<0>(v19, "cvarrToMat");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 705);
          cv::error(v21, v8);
        }

        if (a2)
        {
          v9 = *(this + 10);
          v10 = *this;
        }

        else
        {
          v12 = *(this + 11);
          v9 = *(this + 10);
          v10 = *this;
          if (*(v12 + 8) == v12)
          {
            v15 = *(v12 + 24);
            *(a4 + 8) = v9;
            *(a4 + 12) = 1;
            *(a4 + 16) = v15;
            *(a4 + 24) = 0;
            v16 = (((v10 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v10 & 7))) & 3);
            *(a4 + 80) = v16;
            *(a4 + 64) = a4 + 8;
            *(a4 + 72) = a4 + 80;
            *a4 = v10 & 0xFFF | 0x42FF4000;
            *(a4 + 4) = 2;
            *(a4 + 88) = v16;
            v17 = v15 + v16 * v9;
            *(a4 + 48) = v17;
            *(a4 + 56) = 0;
            *(a4 + 32) = v15;
            *(a4 + 40) = v17;
            return this;
          }
        }

        *(a4 + 80) = 0;
        *(a4 + 64) = a4 + 8;
        *(a4 + 72) = a4 + 80;
        *(a4 + 88) = 0;
        *a4 = 1124007936;
        *(a4 + 4) = 0u;
        *(a4 + 20) = 0u;
        *(a4 + 36) = 0u;
        *(a4 + 48) = 0u;
        v21[0] = v9;
        v21[1] = 1;
        cv::Mat::create(a4, 2, v21, v10 & 0xFFF);
        return cvCvtSeqToArray(v5, *(a4 + 16), 0x3FFFFFFF00000000);
      }

      goto LABEL_25;
    }

    if (!*(this + 11))
    {
      goto LABEL_25;
    }

    if (!a3)
    {
      v13 = *(this + 6);
      if (v13)
      {
        if (*v13 >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v20, "COI is not supported by the function");
          std::string::basic_string[abi:ne200100]<0>(v19, "cvarrToMat");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v21, 4294967272, v20, v19, __p, 699);
          cv::error(v21, v14);
        }
      }
    }

    return cv::Mat::Mat(a4, this, a2);
  }
}

void sub_22D2632E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::Mat::locateROI(uint64_t result, _DWORD *a2, _DWORD *a3)
{
  v3 = *(result + 4);
  if (v3 > 2 || !**(result + 72))
  {
    std::string::basic_string[abi:ne200100]<0>(v19, "dims <= 2 && step[0] > 0");
    std::string::basic_string[abi:ne200100]<0>(v18, "locateROI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v20, 4294967081, v19, v18, __p, 718);
    cv::error(v20, v4);
  }

  if (v3 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(result + 72) + 8 * v3 - 8);
  }

  v6 = *(result + 16);
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = v6 - v7;
  if (v6 == v7)
  {
    LODWORD(v11) = 0;
    v10 = **(result + 72);
  }

  else
  {
    v10 = **(result + 72);
    v11 = v9 / v10;
    v9 = (v9 - (v9 / v10) * v10) / v5;
  }

  *a3 = v9;
  a3[1] = v11;
  v12 = v8 - v7;
  v13 = *(result + 12) + v9;
  v14 = (v12 - v5 * v13) / v10;
  v15 = *(result + 8) + v11;
  if (v14 + 1 > v15)
  {
    v15 = v14 + 1;
  }

  v16 = (v12 - *(result + 80) * (v15 - 1)) / v5;
  if (v13 > v16)
  {
    LODWORD(v16) = *(result + 12) + v9;
  }

  *a2 = v16;
  a2[1] = v15;
  return result;
}

void sub_22D2634FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

cv::Mat *cv::Mat::adjustROI(cv::Mat *this, int a2, int a3, int a4, int a5)
{
  v10 = *(this + 1);
  if (v10 > 2 || !**(this + 9))
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "dims <= 2 && step[0] > 0");
    std::string::basic_string[abi:ne200100]<0>(v22, "adjustROI");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v24, 4294967081, v23, v22, __p, 739);
    cv::error(v24, v11);
  }

  *v24 = 0;
  v23[0] = 0;
  if (v10 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(*(this + 9) + 8 * v10 - 8);
  }

  cv::Mat::locateROI(this, v24, v23);
  v13 = HIDWORD(v23[0]) + a3 + *(this + 2);
  if (v24[1] < v13)
  {
    v13 = v24[1];
  }

  v14 = (HIDWORD(v23[0]) - a2) & ~((HIDWORD(v23[0]) - a2) >> 31);
  v15 = (LODWORD(v23[0]) - a4) & ~((LODWORD(v23[0]) - a4) >> 31);
  v16 = LODWORD(v23[0]) + a5 + *(this + 3);
  if (v24[0] < v16)
  {
    v16 = v24[0];
  }

  *(this + 2) += *(this + 10) * (v14 - HIDWORD(v23[0])) + v12 * (v15 - LODWORD(v23[0]));
  *(this + 2) = v13 - v14;
  *(this + 3) = v16 - v15;
  v17 = *(this + 8);
  *v17 = v13 - v14;
  v18 = *(this + 3);
  v17[1] = v18;
  if (v12 * v18 == **(this + 9) || *(this + 2) == 1)
  {
    v19 = *this | 0x4000;
  }

  else
  {
    v19 = *this & 0xFFFFBFFF;
  }

  *this = v19;
  return this;
}

void sub_22D263740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::Mat::reshape(cv::Mat *this@<X0>, signed int a2@<W1>, int a3@<W2>, unsigned int *a4@<X8>)
{
  v4 = a3;
  v8 = *this;
  *a4 = *this;
  *(a4 + 2) = *(this + 2);
  v9 = *(this + 24);
  *(a4 + 6) = v9;
  *(a4 + 10) = *(this + 40);
  *(a4 + 7) = *(this + 7);
  *(a4 + 8) = a4 + 2;
  *(a4 + 10) = 0;
  *(a4 + 9) = a4 + 20;
  *(a4 + 11) = 0;
  if (v9)
  {
    atomic_fetch_add(v9, 1u);
    v10 = *(this + 1);
  }

  else
  {
    v10 = DWORD1(v8);
  }

  v11 = ((v8 >> 3) & 0x1FF) + 1;
  if (v10 <= 2)
  {
    v12 = *(this + 9);
    v13 = *(a4 + 9);
    *v13 = *v12;
    v13[1] = v12[1];
    v14 = a3 == 0;
    goto LABEL_13;
  }

  a4[1] = 0;
  cv::Mat::copySize(a4, this);
  v15 = *(this + 1);
  v14 = v4 == 0;
  if (!v4 && a2 && v15 >= 3)
  {
    v16 = v15 - 1;
    if (!((*(*(this + 8) + 4 * v16) * v11) % a2))
    {
      v17 = *a4;
      v18 = 8 * a2 - 8;
      *a4 = *a4 & 0xFFFFF007 | v18;
      *(*(a4 + 9) + 8 * v16) = (((v18 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v17 & 7))) & 3);
      *(*(a4 + 8) + 4 * v16) = (*(*(a4 + 8) + 4 * v16) * v11) / a2;
      return;
    }

LABEL_12:
    std::string::basic_string[abi:ne200100]<0>(v32, "dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v31, "reshape");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v33, 4294967081, v32, v31, __p, 801);
    cv::error(v33, v19);
  }

  if (v15 >= 3)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (!a2)
  {
    a2 = v11;
  }

  v20 = *(this + 3) * v11;
  if (a2 > v20)
  {
    if (!v14)
    {
LABEL_24:
      v22 = *(this + 2);
      if (v4 != v22)
      {
        if ((*(this + 1) & 0x40) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v32, "The matrix is not continuous, thus its number of rows can not be changed");
          std::string::basic_string[abi:ne200100]<0>(v31, "reshape");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v33, 4294967283, v32, v31, __p, 816);
          cv::error(v33, v23);
        }

        v24 = v22 * v20;
        if (v4 > v24)
        {
          std::string::basic_string[abi:ne200100]<0>(v32, "Bad new number of rows");
          std::string::basic_string[abi:ne200100]<0>(v31, "reshape");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v33, 4294967085, v32, v31, __p, 819);
          cv::error(v33, v25);
        }

        v20 = v24 / v4;
        if (v24 / v4 * v4 != v24)
        {
          std::string::basic_string[abi:ne200100]<0>(v32, "The total number of matrix elements is not divisible by the new number of rows");
          std::string::basic_string[abi:ne200100]<0>(v31, "reshape");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v33, 4294967291, v32, v31, __p, 825);
          cv::error(v33, v26);
        }

        a4[2] = v4;
        **(a4 + 9) = ((0x88442211uLL >> (4 * (*this & 7u))) & 0xF) * v20;
      }

      goto LABEL_32;
    }

    goto LABEL_22;
  }

  if (v20 % a2)
  {
    v21 = v14;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
LABEL_22:
    v4 = *(this + 2) * v20 / a2;
  }

  if (v4)
  {
    goto LABEL_24;
  }

LABEL_32:
  if (v20 / a2 * a2 != v20)
  {
    std::string::basic_string[abi:ne200100]<0>(v32, "The total width is not divisible by the new number of channels");
    std::string::basic_string[abi:ne200100]<0>(v31, "reshape");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v33, 4294967281, v32, v31, __p, 835);
    cv::error(v33, v27);
  }

  a4[3] = v20 / a2;
  v28 = *a4;
  v29 = 8 * a2 - 8;
  *a4 = *a4 & 0xFFFFF007 | v29;
  *(*(a4 + 9) + 8) = (((v29 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v28 & 7))) & 3);
}

void sub_22D263CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  cv::Mat::~Mat(v27);
  _Unwind_Resume(a1);
}

uint64_t cv::Mat::checkVector(cv::Mat *this, int a2, int a3, char a4)
{
  v4 = *this;
  if (a3 >= 1 && (*this & 7) != a3 || (v4 & 0x4000) == 0 && (a4 & 1) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 1);
  if (v5 == 3)
  {
    if ((v4 & 0xFF8) == 0)
    {
      v11 = *(this + 8);
      if (v11[2] == a2 && (*v11 == 1 || v11[1] == 1) && ((v4 & 0x4000) != 0 || *(*(this + 9) + 8) == *(*(this + 9) + 16) * a2))
      {
        v10 = *v11 * v11[1] * v11[2];
        return (v10 + v10 * ((v4 >> 3) & 0x1FF)) / a2;
      }
    }

    return 0xFFFFFFFFLL;
  }

  if (v5 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(this + 2);
  if ((v6 == 1 || (v7 = *(this + 3), v7 == 1)) && (v7 = *(this + 3), ((v4 >> 3) & 0x1FF) + 1 == a2) || (result = 0xFFFFFFFFLL, (v4 & 0xFF8) == 0) && (v9 = v7 == a2, v7 = a2, v9))
  {
    v10 = v6 * v7;
    return (v10 + v10 * ((v4 >> 3) & 0x1FF)) / a2;
  }

  return result;
}

double cv::scalarToRawData(uint64_t a1, double *a2, unsigned int a3, int a4)
{
  v5 = (a3 >> 3) & 0x1FF;
  if (v5 >= 4)
  {
    std::string::basic_string[abi:ne200100]<0>(v24, "cn <= 4");
    std::string::basic_string[abi:ne200100]<0>(v23, "scalarToRawData");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v25, 4294967081, v24, v23, __p, 859);
    cv::error(v25, v6);
  }

  v7 = a3 & 7;
  v8 = v5 + 1;
  if (v7 > 3)
  {
    if ((a3 & 7) > 5)
    {
      if (v7 == 7)
      {
        std::string::basic_string[abi:ne200100]<0>(v24, "");
        std::string::basic_string[abi:ne200100]<0>(v23, "scalarToRawData");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v25, 4294967086, v24, v23, __p, 926);
        cv::error(v25, v15);
      }

      v21 = 0;
      do
      {
        result = *(a1 + 8 * v21);
        *a2++ = result;
        ++v21;
      }

      while (v8 != v21);
      if (v8 < a4)
      {
        do
        {
          result = *(a2 + ((8 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF000));
          *a2++ = result;
          ++v21;
        }

        while (v21 < a4);
      }
    }

    else if (v7 == 4)
    {
      v12 = 0;
      do
      {
        result = rint(*(a1 + 8 * v12));
        *a2 = result;
        a2 = (a2 + 4);
        ++v12;
      }

      while (v8 != v12);
      if (v8 < a4)
      {
        do
        {
          *a2 = *(a2 + ((4 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF800));
          a2 = (a2 + 4);
          ++v12;
        }

        while (v12 < a4);
      }
    }

    else
    {
      v18 = 0;
      do
      {
        result = *(a1 + 8 * v18);
        *&result = result;
        *a2 = LODWORD(result);
        a2 = (a2 + 4);
        ++v18;
      }

      while (v8 != v18);
      if (v8 < a4)
      {
        do
        {
          LODWORD(result) = *(a2 + ((4 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFF800));
          *a2 = LODWORD(result);
          a2 = (a2 + 4);
          ++v18;
        }

        while (v18 < a4);
      }
    }
  }

  else if ((a3 & 7) > 1)
  {
    if (v7 == 2)
    {
      v13 = 0;
      do
      {
        result = rint(*(a1 + 8 * v13));
        v14 = result & ~(result >> 31);
        if (v14 >= 0xFFFF)
        {
          LOWORD(v14) = -1;
        }

        *a2 = v14;
        a2 = (a2 + 2);
        ++v13;
      }

      while (v8 != v13);
      if (v8 < a4)
      {
        do
        {
          *a2 = *(a2 + ((2 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFFC00));
          a2 = (a2 + 2);
          ++v13;
        }

        while (v13 < a4);
      }
    }

    else
    {
      v19 = 0;
      do
      {
        result = rint(*(a1 + 8 * v19));
        v20 = result;
        if (result <= -32768)
        {
          LODWORD(v20) = -32768;
        }

        if (v20 >= 0x7FFF)
        {
          LOWORD(v20) = 0x7FFF;
        }

        *a2 = v20;
        a2 = (a2 + 2);
        ++v19;
      }

      while (v8 != v19);
      if (v8 < a4)
      {
        do
        {
          *a2 = *(a2 + ((2 * ~(a3 >> 3)) | 0xFFFFFFFFFFFFFC00));
          a2 = (a2 + 2);
          ++v19;
        }

        while (v19 < a4);
      }
    }
  }

  else if ((a3 & 7) != 0)
  {
    v16 = 0;
    do
    {
      result = rint(*(a1 + 8 * v16));
      v17 = result;
      if (result <= -128)
      {
        LODWORD(v17) = -128;
      }

      if (v17 >= 127)
      {
        LOBYTE(v17) = 127;
      }

      *a2 = v17;
      a2 = (a2 + 1);
      ++v16;
    }

    while (v8 != v16);
    if (v8 < a4)
    {
      do
      {
        *a2 = *(a2 + (~(a3 >> 3) | 0xFFFFFFFFFFFFFE00));
        a2 = (a2 + 1);
        ++v16;
      }

      while (v16 < a4);
    }
  }

  else
  {
    v9 = 0;
    do
    {
      result = rint(*(a1 + 8 * v9));
      v11 = result & ~(result >> 31);
      if (v11 >= 255)
      {
        LOBYTE(v11) = -1;
      }

      *a2 = v11;
      a2 = (a2 + 1);
      ++v9;
    }

    while (v8 != v9);
    if (v8 < a4)
    {
      do
      {
        *a2 = *(a2 + (~(a3 >> 3) | 0xFFFFFFFFFFFFFE00));
        a2 = (a2 + 1);
        ++v9;
      }

      while (v9 < a4);
    }
  }

  return result;
}

void sub_22D2642A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t cv::_InputArray::_InputArray(uint64_t this, const cv::Mat *a2)
{
  *this = &unk_284056738;
  *(this + 8) = 0x10000;
  *(this + 16) = a2;
  *(this + 24) = 0;
  return this;
}

uint64_t cv::_InputArray::_InputArray(uint64_t result, uint64_t a2)
{
  *result = &unk_284056738;
  *(result + 8) = 327680;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

double cv::_InputArray::_InputArray(cv::_InputArray *this, const double *a2)
{
  *this = &unk_284056738;
  *(this + 2) = -1073610746;
  *(this + 2) = a2;
  *&result = 0x100000001;
  *(this + 3) = 0x100000001;
  return result;
}

void cv::_InputArray::getMat(cv::_InputArray *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  HIDWORD(v7) = (*(*this + 40))(this);
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 16;
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 != 4)
      {
        v15 = *(this + 2);
        if ((a2 & 0x80000000) != 0 || (-1431655765 * ((v15[1] - *v15) >> 5)) <= a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v40, "0 <= i && i < (int)v.size()");
          std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v41, 4294967081, v40, v39, __p, 1006);
          cv::error(v41, v16);
        }

        v8 = *v15 + 96 * a2;
        *a3 = *v8;
        *(a3 + 16) = *(v8 + 16);
        v17 = *(v8 + 24);
        *(a3 + 24) = v17;
        *(a3 + 40) = *(v8 + 40);
        *(a3 + 56) = *(v8 + 56);
        *(a3 + 64) = a3 + 8;
        *(a3 + 80) = 0;
        *(a3 + 72) = a3 + 80;
        *(a3 + 88) = 0;
        if (v17)
        {
          atomic_fetch_add(v17, 1u);
        }

        if (*(v8 + 4) > 2)
        {
          *(a3 + 4) = 0;
          cv::Mat::copySize(a3, v8);
          return;
        }

        goto LABEL_25;
      }

      v11 = (*(*this + 64))(this, a2);
      v20 = *(this + 2);
      if ((a2 & 0x80000000) != 0 || (-1431655765 * ((v20[1] - *v20) >> 3)) <= a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v40, "0 <= i && i < (int)vv.size()");
        std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v41, 4294967081, v40, v39, __p, 991);
        cv::error(v41, v21);
      }

      v22 = (*v20 + 24 * a2);
      if (*v22 == v22[1])
      {
        goto LABEL_33;
      }

      (*(*this + 48))(v41, this, a2);
      v12 = *v22;
LABEL_32:
      v24 = v41[0];
      v23 = SHIDWORD(v41[0]);
      *(a3 + 8) = HIDWORD(v41[0]);
      *(a3 + 12) = v24;
      *(a3 + 16) = v12;
      *(a3 + 24) = 0;
      v25 = (((v11 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v11 & 7))) & 3);
      v26 = v24 * v25;
      *(a3 + 80) = v26;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *a3 = v11 & 0xFFF | 0x42FF4000;
      *(a3 + 4) = 2;
      *(a3 + 88) = v25;
      v27 = v12 + v26 * v23;
      *(a3 + 48) = v27;
      *(a3 + 56) = 0;
      *(a3 + 32) = v12;
      *(a3 + 40) = v27;
      return;
    }

    if (v6 != 6)
    {
      if (v6 == 10)
      {
        std::string::basic_string[abi:ne200100]<0>(v40, "This method is not implemented for oclMat yet");
        std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v41, 4294967083, v40, v39, __p, 999);
        cv::error(v41, v13);
      }

      goto LABEL_18;
    }

    if ((a2 & 0x80000000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v40, "i < 0");
      std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v41, 4294967081, v40, v39, __p, 965);
      cv::error(v41, v36);
    }

    cv::MatExpr::operator cv::Mat(*(this + 2), a3);
  }

  else
  {
    if (v6 <= 1)
    {
      if (v6)
      {
        if (v6 == 1)
        {
          v8 = *(this + 2);
          if ((a2 & 0x80000000) == 0)
          {
            LODWORD(v41[0]) = a2;
            HIDWORD(v41[0]) = a2 + 1;
            v40[0] = 0x7FFFFFFF80000000;
            cv::Mat::Mat(a3, v8);
            return;
          }

          *a3 = *v8;
          *(a3 + 16) = *(v8 + 16);
          v37 = *(v8 + 24);
          *(a3 + 24) = v37;
          *(a3 + 40) = *(v8 + 40);
          *(a3 + 56) = *(v8 + 56);
          *(a3 + 64) = a3 + 8;
          *(a3 + 80) = 0;
          *(a3 + 72) = a3 + 80;
          *(a3 + 88) = 0;
          if (v37)
          {
            atomic_fetch_add(v37, 1u);
          }

          if (*(v8 + 4) > 2)
          {
            *(a3 + 4) = 0;

            cv::Mat::copySize(a3, v8);
            return;
          }

LABEL_25:
          v18 = *(v8 + 72);
          v19 = *(a3 + 72);
          *v19 = *v18;
          v19[1] = v18[1];
          return;
        }

LABEL_18:
        std::string::basic_string[abi:ne200100]<0>(v40, "k == STD_VECTOR_MAT");
        std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v41, 4294967081, v40, v39, __p, 1002);
        cv::error(v41, v14);
      }

LABEL_33:
      *(a3 + 80) = 0;
      *(a3 + 64) = a3 + 8;
      *(a3 + 72) = a3 + 80;
      *(a3 + 88) = 0;
      *a3 = 1124007936;
      *(a3 + 4) = 0u;
      *(a3 + 20) = 0u;
      *(a3 + 36) = 0u;
      *(a3 + 48) = 0u;
      return;
    }

    if (v6 != 2)
    {
      if ((a2 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v40, "i < 0");
        std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v41, 4294967081, v40, v39, __p, 977);
        cv::error(v41, v9);
      }

      v10 = *(this + 2);
      if (*v10 == v10[1])
      {
        goto LABEL_33;
      }

      v11 = *(this + 2);
      (*(*this + 48))(v41, this, 0xFFFFFFFFLL);
      v12 = *v10;
      goto LABEL_32;
    }

    if ((a2 & 0x80000000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v40, "i < 0");
      std::string::basic_string[abi:ne200100]<0>(v39, "getMat");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v41, 4294967081, v40, v39, __p, 971);
      cv::error(v41, v28);
    }

    v29 = *(this + 6);
    v30 = *(this + 7);
    v31 = *(this + 2);
    v32 = *(this + 2);
    *(a3 + 8) = v30;
    *(a3 + 12) = v29;
    *(a3 + 16) = v32;
    *(a3 + 24) = 0;
    v33 = (((v31 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v31 & 7))) & 3);
    v34 = v33 * v29;
    *(a3 + 80) = v34;
    *(a3 + 64) = a3 + 8;
    *(a3 + 72) = a3 + 80;
    *a3 = v31 & 0xFFF | 0x42FF4000;
    *(a3 + 4) = 2;
    *(a3 + 88) = v33;
    v35 = v32 + v34 * v30;
    *(a3 + 48) = v35;
    *(a3 + 56) = 0;
    *(a3 + 32) = v32;
    *(a3 + 40) = v35;
  }
}

void sub_22D264BC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::_InputArray::getMatVector(uint64_t a1, cv::Mat **a2)
{
  HIDWORD(v4) = (*(*a1 + 40))(a1);
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 16;
  if (v3 <= 3)
  {
    if (v3 <= 1)
    {
      if (!v3)
      {
        v53 = *a2;

        std::vector<cv::Mat>::__base_destruct_at_end[abi:ne200100](a2, v53);
        return;
      }

      if (v3 == 1)
      {
        v5 = *(a1 + 16);
        v6 = **(v5 + 8);
        std::vector<cv::Mat>::resize(a2, v6);
        if (v6 >= 1)
        {
          v7 = 0;
          while (1)
          {
            v8 = v5[1];
            if (v8 != 2)
            {
              break;
            }

            v9 = v5[3];
            v10 = *v5;
            v11 = *v5 & 0xFFF;
            v12 = *(v5 + 2) + **(v5 + 9) * v7;
            *v116 = 0x100000002;
            *&v116[8] = v9;
            v117 = v12;
            *&v118 = 0;
            v121 = &v116[4];
            v122 = &v123;
            v13 = (((v10 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v10 & 7))) & 3);
            v115 = v11 | 0x42FF4000;
            v123 = v13 * v9;
            v124 = v13;
            *(&v119 + 1) = v12 + v123;
            v120 = 0;
            *(&v118 + 1) = v12;
            *&v119 = v12 + v123;
            v14 = *a2 + 96 * v7;
            if (v14 != &v115)
            {
              goto LABEL_13;
            }

LABEL_29:
            v117 = 0;
            v119 = 0uLL;
            *(&v118 + 1) = 0;
            if (*v116 >= 1)
            {
              v23 = 0;
              v24 = v121;
              do
              {
                v24[v23++] = 0;
              }

              while (v23 < *v116);
            }

            *&v118 = 0;
            if (v122)
            {
              v25 = v122 == &v123;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              free(v122);
            }

            if (++v7 == v6)
            {
              return;
            }
          }

          cv::Mat::Mat(&v115, (v8 - 1), (*(v5 + 8) + 4), *v5 & 0xFFF, (*(v5 + 2) + **(v5 + 9) * v7), (*(v5 + 9) + 8));
          v15 = v118;
          v14 = *a2 + 96 * v7;
          if (v14 == &v115)
          {
LABEL_26:
            if (v15 && atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v115);
            }

            goto LABEL_29;
          }

          if (v118)
          {
            atomic_fetch_add(v118, 1u);
          }

LABEL_13:
          v16 = *(v14 + 24);
          if (v16 && atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v14);
          }

          *(v14 + 16) = 0;
          *(v14 + 40) = 0;
          *(v14 + 48) = 0;
          *(v14 + 32) = 0;
          if (*(v14 + 4) <= 0)
          {
            *(v14 + 24) = 0;
            *v14 = v115;
          }

          else
          {
            v17 = 0;
            v18 = *(v14 + 64);
            do
            {
              *(v18 + 4 * v17++) = 0;
              v19 = *(v14 + 4);
            }

            while (v17 < v19);
            *(v14 + 24) = 0;
            *v14 = v115;
            if (v19 > 2)
            {
              goto LABEL_24;
            }
          }

          if (*v116 <= 2)
          {
            *(v14 + 4) = *v116;
            *(v14 + 8) = *&v116[4];
            v20 = v122;
            v21 = *(v14 + 72);
            *v21 = *v122;
            v21[1] = v20[1];
LABEL_25:
            *(v14 + 16) = v117;
            *(v14 + 40) = v119;
            v22 = v118;
            *(v14 + 24) = v118;
            *(v14 + 56) = v120;
            v15 = v22;
            goto LABEL_26;
          }

LABEL_24:
          cv::Mat::copySize(v14, &v115);
          goto LABEL_25;
        }

        return;
      }

LABEL_76:
      std::string::basic_string[abi:ne200100]<0>(v125, "k == STD_VECTOR_MAT");
      std::string::basic_string[abi:ne200100]<0>(v114, "getMatVector");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v115, 4294967081, v125, v114, __p, 1089);
      cv::error(&v115, v51);
    }

    if (v3 != 2)
    {
      v26 = *(a1 + 16);
      v28 = *v26;
      v27 = v26[1];
      v111 = v26;
      v29 = *(a1 + 8);
      std::vector<cv::Mat>::resize(a2, v27 - *v26);
      v30 = v27 - v28;
      if (v27 == v28)
      {
        return;
      }

      v31 = 0;
      v32 = (0xFA50uLL >> (2 * (v29 & 7))) & 3;
      v33 = ((v29 >> 3) & 0x1FF) + 1;
      v34 = (v33 << v32);
      v35 = 1 << v32;
      v36 = v29 & 7 | 0x42FF4000;
      if (v30 <= 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = v30;
      }

      while (1)
      {
        v38 = *v111 + v31 * v34;
        *v116 = 0x100000002;
        *&v116[8] = v33;
        v117 = v38;
        *&v118 = 0;
        v121 = &v116[4];
        v122 = &v123;
        v115 = v36;
        v123 = v34;
        v124 = v35;
        *(&v119 + 1) = v38 + v34;
        v120 = 0;
        *(&v118 + 1) = v38;
        *&v119 = v38 + v34;
        v39 = *a2 + 96 * v31;
        if (v39 != &v115)
        {
          break;
        }

LABEL_63:
        v117 = 0;
        v119 = 0uLL;
        *(&v118 + 1) = 0;
        if (*v116 >= 1)
        {
          v47 = 0;
          v48 = v121;
          do
          {
            v48[v47++] = 0;
          }

          while (v47 < *v116);
        }

        *&v118 = 0;
        if (v122)
        {
          v49 = v122 == &v123;
        }

        else
        {
          v49 = 1;
        }

        if (!v49)
        {
          free(v122);
        }

        if (++v31 == v37)
        {
          return;
        }
      }

      v40 = *(v39 + 24);
      if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v39);
      }

      *(v39 + 16) = 0;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 32) = 0;
      if (*(v39 + 4) <= 0)
      {
        *(v39 + 24) = 0;
        *v39 = v115;
      }

      else
      {
        v41 = 0;
        v42 = *(v39 + 64);
        do
        {
          *(v42 + 4 * v41++) = 0;
          v43 = *(v39 + 4);
        }

        while (v41 < v43);
        *(v39 + 24) = 0;
        *v39 = v115;
        if (v43 > 2)
        {
          goto LABEL_59;
        }
      }

      if (*v116 <= 2)
      {
        *(v39 + 4) = *v116;
        *(v39 + 8) = *&v116[4];
        v44 = v122;
        v45 = *(v39 + 72);
        *v45 = *v122;
        v45[1] = v44[1];
LABEL_60:
        *(v39 + 16) = v117;
        *(v39 + 40) = v119;
        v46 = v118;
        *(v39 + 24) = v118;
        *(v39 + 56) = v120;
        if (v46 && atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v115);
        }

        goto LABEL_63;
      }

LABEL_59:
      cv::Mat::copySize(v39, &v115);
      goto LABEL_60;
    }

    v74 = *(a1 + 28);
    v75 = *(a1 + 8);
    std::vector<cv::Mat>::resize(a2, v74);
    if (!v74)
    {
      return;
    }

    v76 = 0;
    while (1)
    {
      v77 = *(a1 + 24);
      v78 = *(a1 + 8);
      v79 = v78 & 0xFFF;
      v80 = *(a1 + 16) + v76 * ((((v75 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v75 & 7))) & 3)) * v77;
      *v116 = 0x100000002;
      *&v116[8] = v77;
      v117 = v80;
      *&v118 = 0;
      v121 = &v116[4];
      v122 = &v123;
      v81 = (((v78 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v78 & 7))) & 3);
      v115 = v79 | 0x42FF4000;
      v123 = v81 * v77;
      v124 = v81;
      *(&v119 + 1) = v80 + v123;
      v120 = 0;
      *(&v118 + 1) = v80;
      *&v119 = v80 + v123;
      v82 = *a2 + 96 * v76;
      if (v82 != &v115)
      {
        break;
      }

LABEL_127:
      v117 = 0;
      v119 = 0uLL;
      *(&v118 + 1) = 0;
      if (*v116 >= 1)
      {
        v90 = 0;
        v91 = v121;
        do
        {
          v91[v90++] = 0;
        }

        while (v90 < *v116);
      }

      *&v118 = 0;
      if (v122)
      {
        v92 = v122 == &v123;
      }

      else
      {
        v92 = 1;
      }

      if (!v92)
      {
        free(v122);
      }

      if (++v76 == v74)
      {
        return;
      }
    }

    v83 = *(v82 + 24);
    if (v83 && atomic_fetch_add(v83, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v82);
    }

    *(v82 + 16) = 0;
    *(v82 + 40) = 0;
    *(v82 + 48) = 0;
    *(v82 + 32) = 0;
    if (*(v82 + 4) <= 0)
    {
      *(v82 + 24) = 0;
      *v82 = v115;
    }

    else
    {
      v84 = 0;
      v85 = *(v82 + 64);
      do
      {
        *(v85 + 4 * v84++) = 0;
        v86 = *(v82 + 4);
      }

      while (v84 < v86);
      *(v82 + 24) = 0;
      *v82 = v115;
      if (v86 > 2)
      {
        goto LABEL_123;
      }
    }

    if (*v116 <= 2)
    {
      *(v82 + 4) = *v116;
      *(v82 + 8) = *&v116[4];
      v87 = v122;
      v88 = *(v82 + 72);
      *v88 = *v122;
      v88[1] = v87[1];
LABEL_124:
      *(v82 + 16) = v117;
      *(v82 + 40) = v119;
      v89 = v118;
      *(v82 + 24) = v118;
      *(v82 + 56) = v120;
      if (v89 && atomic_fetch_add(v89, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v115);
      }

      goto LABEL_127;
    }

LABEL_123:
    cv::Mat::copySize(v82, &v115);
    goto LABEL_124;
  }

  if (v3 > 5)
  {
    if (v3 != 6)
    {
      if (v3 == 10)
      {
        std::string::basic_string[abi:ne200100]<0>(v125, "This method is not implemented for oclMat yet");
        std::string::basic_string[abi:ne200100]<0>(v114, "getMatVector");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v115, 4294967083, v125, v114, __p, 1086);
        cv::error(&v115, v50);
      }

      goto LABEL_76;
    }

    cv::MatExpr::operator cv::Mat(*(a1 + 16), &v115);
    v93 = *v121;
    std::vector<cv::Mat>::resize(a2, v93);
    if (v93 < 1)
    {
LABEL_167:
      if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v115);
      }

      v117 = 0;
      *(&v118 + 1) = 0;
      v119 = 0uLL;
      if (*v116 >= 1)
      {
        v108 = 0;
        v109 = v121;
        do
        {
          v109[v108++] = 0;
        }

        while (v108 < *v116);
      }

      *&v118 = 0;
      if (v122)
      {
        v110 = v122 == &v123;
      }

      else
      {
        v110 = 1;
      }

      if (!v110)
      {
        free(v122);
      }

      return;
    }

    v94 = 0;
    while (1)
    {
      v95 = v94 + 1;
      v114[0] = v94;
      v114[1] = v94 + 1;
      __p[0] = 0x7FFFFFFF80000000;
      cv::Mat::Mat(v125, &v115);
      v96 = *a2 + 96 * v94;
      v97 = v127;
      if (v96 == v125)
      {
        goto LABEL_155;
      }

      if (v127)
      {
        atomic_fetch_add(v127, 1u);
      }

      v98 = *(v96 + 24);
      if (v98 && atomic_fetch_add(v98, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v96);
      }

      *(v96 + 16) = 0;
      *(v96 + 40) = 0;
      *(v96 + 48) = 0;
      *(v96 + 32) = 0;
      if (*(v96 + 4) <= 0)
      {
        *(v96 + 24) = 0;
        *v96 = v125[0];
      }

      else
      {
        v99 = 0;
        v100 = *(v96 + 64);
        do
        {
          *(v100 + 4 * v99++) = 0;
          v101 = *(v96 + 4);
        }

        while (v99 < v101);
        *(v96 + 24) = 0;
        *v96 = v125[0];
        if (v101 > 2)
        {
LABEL_153:
          cv::Mat::copySize(v96, v125);
          goto LABEL_154;
        }
      }

      if (SHIDWORD(v125[0]) > 2)
      {
        goto LABEL_153;
      }

      *(v96 + 4) = HIDWORD(v125[0]);
      *(v96 + 8) = v125[1];
      v102 = v131;
      v103 = *(v96 + 72);
      *v103 = *v131;
      v103[1] = v102[1];
LABEL_154:
      *(v96 + 16) = v126;
      *(v96 + 40) = v128;
      v104 = v127;
      *(v96 + 24) = v127;
      *(v96 + 56) = v129;
      v97 = v104;
LABEL_155:
      if (v97 && atomic_fetch_add(v97, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v125);
      }

      v126 = 0;
      v128 = 0uLL;
      *(&v127 + 1) = 0;
      if (SHIDWORD(v125[0]) >= 1)
      {
        v105 = 0;
        v106 = v130;
        do
        {
          *(v106 + 4 * v105++) = 0;
        }

        while (v105 < SHIDWORD(v125[0]));
      }

      *&v127 = 0;
      if (v131)
      {
        v107 = v131 == &v132;
      }

      else
      {
        v107 = 1;
      }

      if (!v107)
      {
        free(v131);
      }

      v94 = v95;
      if (v95 == v93)
      {
        goto LABEL_167;
      }
    }
  }

  if (v3 != 4)
  {
    v52 = *(a1 + 16);
    std::vector<cv::Mat>::resize(a2, 0xAAAAAAAAAAAAAAABLL * ((v52[1] - *v52) >> 5));
    std::__copy_impl::operator()[abi:ne200100]<cv::Mat const*,cv::Mat const*,cv::Mat*>(&v115, *v52, v52[1], *a2);
    return;
  }

  v54 = *(a1 + 16);
  v55 = -1431655765 * ((v54[1] - *v54) >> 3);
  v56 = *(a1 + 8);
  std::vector<cv::Mat>::resize(a2, v55);
  if (v55 >= 1)
  {
    v57 = 0;
    v58 = (((v56 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v56 & 7))) & 3);
    v59 = v56 & 0xFFF | 0x42FF4000;
    v60 = v55 & 0x7FFFFFFF;
    while (1)
    {
      v61 = *v54;
      (*(*a1 + 48))(v125, a1, v57);
      v62 = *(v61 + 24 * v57);
      *&v116[4] = HIDWORD(v125[0]);
      *&v116[8] = v125[0];
      v117 = v62;
      *&v118 = 0;
      v121 = &v116[4];
      v122 = &v123;
      v115 = v59;
      *v116 = 2;
      v123 = SLODWORD(v125[0]) * v58;
      v124 = v58;
      *(&v119 + 1) = v62 + v123 * SHIDWORD(v125[0]);
      v120 = 0;
      *(&v118 + 1) = v62;
      *&v119 = *(&v119 + 1);
      v63 = *a2 + 96 * v57;
      if (v63 != &v115)
      {
        break;
      }

LABEL_99:
      v117 = 0;
      v119 = 0uLL;
      *(&v118 + 1) = 0;
      if (*v116 >= 1)
      {
        v71 = 0;
        v72 = v121;
        do
        {
          v72[v71++] = 0;
        }

        while (v71 < *v116);
      }

      *&v118 = 0;
      if (v122)
      {
        v73 = v122 == &v123;
      }

      else
      {
        v73 = 1;
      }

      if (!v73)
      {
        free(v122);
      }

      if (++v57 == v60)
      {
        return;
      }
    }

    v64 = *(v63 + 24);
    if (v64 && atomic_fetch_add(v64, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v63);
    }

    *(v63 + 16) = 0;
    *(v63 + 40) = 0;
    *(v63 + 48) = 0;
    *(v63 + 32) = 0;
    if (*(v63 + 4) <= 0)
    {
      *(v63 + 24) = 0;
      *v63 = v115;
    }

    else
    {
      v65 = 0;
      v66 = *(v63 + 64);
      do
      {
        *(v66 + 4 * v65++) = 0;
        v67 = *(v63 + 4);
      }

      while (v65 < v67);
      *(v63 + 24) = 0;
      *v63 = v115;
      if (v67 > 2)
      {
        goto LABEL_95;
      }
    }

    if (*v116 <= 2)
    {
      *(v63 + 4) = *v116;
      *(v63 + 8) = *&v116[4];
      v68 = v122;
      v69 = *(v63 + 72);
      *v69 = *v122;
      v69[1] = v68[1];
LABEL_96:
      *(v63 + 16) = v117;
      *(v63 + 40) = v119;
      v70 = v118;
      *(v63 + 24) = v118;
      *(v63 + 56) = v120;
      if (v70 && atomic_fetch_add(v70, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v115);
      }

      goto LABEL_99;
    }

LABEL_95:
    cv::Mat::copySize(v63, &v115);
    goto LABEL_96;
  }
}

void sub_22D265A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  cv::Exception::~Exception(&a23);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  _Unwind_Resume(a1);
}

void std::vector<cv::Mat>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Mat>::__append(a1, v4);
  }

  else if (!v3)
  {
    std::vector<cv::Mat>::__base_destruct_at_end[abi:ne200100](a1, (*a1 + 96 * a2));
  }
}

void cv::_InputArray::getGlBuffer(cv::_InputArray *this)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "This function in deprecated, do not use it");
  std::string::basic_string[abi:ne200100]<0>(v3, "getGlBuffer");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
  cv::Exception::Exception(v5, 4294967083, v4, v3, __p, 1101);
  cv::error(v5, v1);
}

void sub_22D265BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::_InputArray::getGlTexture(cv::_InputArray *this)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "This function in deprecated, do not use it");
  std::string::basic_string[abi:ne200100]<0>(v3, "getGlTexture");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
  cv::Exception::Exception(v5, 4294967083, v4, v3, __p, 1107);
  cv::error(v5, v1);
}

void sub_22D265CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t cv::_InputArray::getGpuMat@<X0>(const cv::gpu::GpuMat **this@<X0>, cv::gpu::GpuMat *a2@<X8>)
{
  if ((*(*this + 5))(this) != 589824)
  {
    std::string::basic_string[abi:ne200100]<0>(v8, "k == GPU_MAT");
    std::string::basic_string[abi:ne200100]<0>(v7, "getGpuMat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v9, 4294967081, v8, v7, __p, 1115);
    cv::error(v9, v4);
  }

  return cv::gpu::GpuMat::GpuMat(a2, this[2]);
}

void sub_22D265E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::_InputArray::size(int32x2_t *this@<X0>, unsigned int a2@<W1>, int32x2_t *a3@<X8>)
{
  HIDWORD(v7) = (*(*this + 40))(this);
  LODWORD(v7) = HIDWORD(v7);
  v6 = v7 >> 16;
  if (v6 <= 4)
  {
    if (v6 > 1)
    {
      if (v6 == 2)
      {
        if ((a2 & 0x80000000) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
          std::string::basic_string[abi:ne200100]<0>(v29, "size");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1164);
          cv::error(v31, v21);
        }

        v22 = this[3];
        goto LABEL_47;
      }

      if (v6 == 3)
      {
        if ((a2 & 0x80000000) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
          std::string::basic_string[abi:ne200100]<0>(v29, "size");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1170);
          cv::error(v31, v18);
        }

        v19 = *(*&this[2] + 8) - **&this[2];
        if (v19 != v19 >> 2)
        {
          v19 /= ((((this[1].i32[0] >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (this[1].i32[0] & 7))) & 3));
        }

        goto LABEL_55;
      }

      v9 = this[2];
      if ((a2 & 0x80000000) == 0)
      {
        if ((-1431655765 * ((v9[1] - *v9) >> 3)) <= a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v30, "i < (int)vv.size()");
          std::string::basic_string[abi:ne200100]<0>(v29, "size");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1185);
          cv::error(v31, v10);
        }

        v11 = *(*v9 + 24 * a2 + 8) - *(*v9 + 24 * a2);
        if (v11 == v11 >> 2)
        {
          a3->i32[0] = v11;
          a3->i32[1] = 1;
          return;
        }

        v19 = v11 / ((((this[1].i32[0] >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (this[1].i32[0] & 7))) & 3));
        goto LABEL_55;
      }

      v26 = v9[1];
      if (*v9 != v26)
      {
        v19 = (v26 - *v9) >> 3;
LABEL_52:
        LODWORD(v19) = -1431655765 * v19;
LABEL_55:
        a3->i32[0] = v19;
        a3->i32[1] = 1;
        return;
      }

LABEL_53:
      *a3 = 0;
      return;
    }

    if (!v6)
    {
      goto LABEL_53;
    }

    if (v6 == 1)
    {
      if ((a2 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
        std::string::basic_string[abi:ne200100]<0>(v29, "size");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1152);
        cv::error(v31, v13);
      }

      v14 = this[2];
      goto LABEL_42;
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(v30, "k == GPU_MAT");
    std::string::basic_string[abi:ne200100]<0>(v29, "size");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1221);
    cv::error(v31, v15);
  }

  if (v6 > 7)
  {
    switch(v6)
    {
      case 8:
        if ((a2 & 0x80000000) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
          std::string::basic_string[abi:ne200100]<0>(v29, "size");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1211);
          cv::error(v31, v25);
        }

        goto LABEL_45;
      case 9:
        if ((a2 & 0x80000000) == 0)
        {
          std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
          std::string::basic_string[abi:ne200100]<0>(v29, "size");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1224);
          cv::error(v31, v16);
        }

        v17 = *(*&this[2] + 4);
        goto LABEL_46;
      case 10:
        std::string::basic_string[abi:ne200100]<0>(v30, "This method is not implemented for oclMat yet");
        std::string::basic_string[abi:ne200100]<0>(v29, "size");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v31, 4294967083, v30, v29, __p, 1218);
        cv::error(v31, v12);
    }

    goto LABEL_24;
  }

  if (v6 == 5)
  {
    v23 = this[2];
    if ((a2 & 0x80000000) == 0)
    {
      if ((-1431655765 * ((v23[1] - *v23) >> 5)) <= a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v30, "i < (int)vv.size()");
        std::string::basic_string[abi:ne200100]<0>(v29, "size");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1197);
        cv::error(v31, v24);
      }

      v14 = *v23 + 96 * a2;
LABEL_42:
      v17 = **(v14 + 64);
LABEL_46:
      v22 = vrev64_s32(v17);
LABEL_47:
      *a3 = v22;
      return;
    }

    v27 = v23[1];
    if (*v23 != v27)
    {
      v19 = (v27 - *v23) >> 5;
      goto LABEL_52;
    }

    goto LABEL_53;
  }

  if (v6 != 6)
  {
    if ((a2 & 0x80000000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
      std::string::basic_string[abi:ne200100]<0>(v29, "size");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1204);
      cv::error(v31, v8);
    }

LABEL_45:
    v17 = *(*&this[2] + 16);
    goto LABEL_46;
  }

  if ((a2 & 0x80000000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "i < 0");
    std::string::basic_string[abi:ne200100]<0>(v29, "size");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 1158);
    cv::error(v31, v20);
  }

  cv::MatExpr::size(*&this[2], a3);
}

void sub_22D2666F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

unint64_t cv::_InputArray::total(cv::_InputArray *this, uint64_t a2)
{
  v4 = (*(*this + 40))(this);
  if (v4 != 327680)
  {
    if (v4 != 0x10000)
    {
      (*(*this + 48))(v21, this, a2);
      v14 = v21[0];
      v15 = HIDWORD(v21[0]);
      return v15 * v14;
    }

    if ((a2 & 0x80000000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v20, "i < 0");
      std::string::basic_string[abi:ne200100]<0>(v19, "total");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 1236);
      cv::error(v21, v5);
    }

    v6 = *(this + 2);
    v7 = *(v6 + 4);
    if (v7 >= 3)
    {
      v8 = *(v6 + 64);
      result = 1;
      do
      {
        v10 = *v8++;
        result *= v10;
        --v7;
      }

      while (v7);
      return result;
    }

LABEL_13:
    v14 = *(v6 + 8);
    v15 = *(v6 + 12);
    return v15 * v14;
  }

  v11 = *(this + 2);
  result = 0xAAAAAAAAAAAAAAABLL * ((v11[1] - *v11) >> 5);
  if ((a2 & 0x80000000) != 0)
  {
    return result;
  }

  if (result <= a2)
  {
    std::string::basic_string[abi:ne200100]<0>(v20, "i < (int)vv.size()");
    std::string::basic_string[abi:ne200100]<0>(v19, "total");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 1246);
    cv::error(v21, v12);
  }

  v6 = *v11 + 96 * a2;
  v13 = *(v6 + 4);
  if (v13 < 3)
  {
    goto LABEL_13;
  }

  v16 = *(v6 + 64);
  result = 1;
  do
  {
    v17 = *v16++;
    result *= v17;
    --v13;
  }

  while (v13);
  return result;
}

void sub_22D266A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t cv::_InputArray::type(cv::_InputArray *this, int a2)
{
  HIDWORD(v5) = (*(*this + 40))(this);
  LODWORD(v5) = HIDWORD(v5);
  v4 = v5 >> 16;
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 != 7)
      {
        if (v4 != 9)
        {
          goto LABEL_14;
        }

        goto LABEL_15;
      }

      return *(*(this + 2) + 24);
    }

    else
    {
      if (v4 == 5)
      {
        v10 = *(this + 2);
        if ((-1431655765 * ((v10[1] - *v10) >> 5)) <= a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v14, "i < (int)vv.size()");
          std::string::basic_string[abi:ne200100]<0>(v13, "type");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v15, 4294967081, v14, v13, __p, 1272);
          cv::error(v15, v11);
        }

        v6 = *(*v10 + 96 * (a2 & ~(a2 >> 31)));
        return v6 & 0xFFF;
      }

      v7 = *(this + 2);

      return cv::MatExpr::type(v7);
    }
  }

  else
  {
    if ((v4 - 2) < 3)
    {
      v6 = *(this + 2);
      return v6 & 0xFFF;
    }

    if (v4)
    {
      if (v4 != 1)
      {
LABEL_14:
        std::string::basic_string[abi:ne200100]<0>(v14, "k == GPU_MAT");
        std::string::basic_string[abi:ne200100]<0>(v13, "type");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v15, 4294967081, v14, v13, __p, 1280);
        cv::error(v15, v9);
      }

LABEL_15:
      v6 = **(this + 2);
      return v6 & 0xFFF;
    }

    return 0xFFFFFFFFLL;
  }
}

void sub_22D266CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

BOOL cv::_InputArray::empty(cv::_InputArray *this)
{
  v2 = (*(*this + 40))(this);
  result = 0;
  HIDWORD(v5) = v2;
  LODWORD(v5) = v2;
  v4 = v5 >> 16;
  if (v4 <= 4)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        return result;
      }

      return **(this + 2) == *(*(this + 2) + 8);
    }

    if (!v4)
    {
      return 1;
    }

    if (v4 == 1)
    {
      v8 = *(this + 2);
      if (*(v8 + 16))
      {
        v9 = *(v8 + 4);
        if (v9 >= 3)
        {
          v13 = *(v8 + 64);
          v10 = 1;
          do
          {
            v14 = *v13++;
            v10 *= v14;
            --v9;
          }

          while (v9);
        }

        else
        {
          v10 = *(v8 + 12) * *(v8 + 8);
        }

        return v10 == 0;
      }

      return 1;
    }

LABEL_21:
    std::string::basic_string[abi:ne200100]<0>(v17, "k == GPU_MAT");
    std::string::basic_string[abi:ne200100]<0>(v16, "empty");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v18, 4294967081, v17, v16, __p, 1340);
    cv::error(v18, v12);
  }

  if (v4 <= 7)
  {
    if (v4 != 5)
    {
      if (v4 == 6)
      {
        return result;
      }

LABEL_18:
      v11 = *(this + 2);
      if (*(v11 + 16))
      {
        return *(v11 + 20) == 0;
      }

      return 1;
    }

    return **(this + 2) == *(*(this + 2) + 8);
  }

  if (v4 == 8)
  {
    goto LABEL_18;
  }

  if (v4 != 9)
  {
    if (v4 == 10)
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "This method is not implemented for oclMat yet");
      std::string::basic_string[abi:ne200100]<0>(v16, "empty");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v18, 4294967083, v17, v16, __p, 1337);
      cv::error(v18, v7);
    }

    goto LABEL_21;
  }

  return *(*(this + 2) + 24) == 0;
}

void sub_22D26703C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t cv::_OutputArray::_OutputArray(uint64_t result, uint64_t a2)
{
  *(result + 8) = 327680;
  *(result + 16) = a2;
  *(result + 24) = 0;
  *result = &unk_2840567A8;
  return result;
}

uint64_t cv::_OutputArray::_OutputArray(uint64_t this, const cv::Mat *a2)
{
  *(this + 16) = a2;
  *(this + 24) = 0;
  *this = &unk_2840567A8;
  *(this + 8) = -1073676288;
  return this;
}

void cv::_OutputArray::create(cv::gpu::GpuMat **a1, int32x2_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = (*(*a1 + 5))(a1);
  if (a6)
  {
    v13 = 1;
  }

  else
  {
    v13 = a5;
  }

  if ((v13 & 1) == 0 && (a4 & 0x80000000) != 0 && v12 == 0x10000)
  {
    if ((*(*a1 + 12))(a1))
    {
      if (*(*(a1[2] + 8) + 4) != a2->i32[0] || **(a1[2] + 8) != a2->i32[1])
      {
        std::string::basic_string[abi:ne200100]<0>(v31, "!fixedSize() || ((Mat*)obj)->size.operator()() == _sz");
        std::string::basic_string[abi:ne200100]<0>(v30, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v32, 4294967081, v31, v30, __p, 1378);
        cv::error(&v32, v15);
      }
    }

    if ((*(*a1 + 13))(a1) && (*a1[2] & 0xFFF) != a3)
    {
      std::string::basic_string[abi:ne200100]<0>(v31, "!fixedType() || ((Mat*)obj)->type() == mtype");
      std::string::basic_string[abi:ne200100]<0>(v30, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v32, 4294967081, v31, v30, __p, 1379);
      cv::error(&v32, v16);
    }

    v17 = a1[2];
    v18 = a2->i32[0];
    v19 = a3 & 0xFFF;
    if (*(v17 + 1) > 2 || *(v17 + 2) != a2->i32[1] || *(v17 + 3) != v18 || (*v17 & 0xFFF) != v19 || !*(v17 + 2))
    {
      v32.i32[0] = a2->i32[1];
      v32.i32[1] = v18;
      cv::Mat::create(v17, 2, &v32, v19);
    }
  }

  else
  {
    if (a4 < 0 && v12 == 589824)
    {
      v21 = v13;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {
      if (a4 >= 0 || v12 != 458752)
      {
        v13 = 1;
      }

      if (v13)
      {
        v32 = vrev64_s32(*a2);
        (*(*a1 + 18))(a1, 2, &v32, a3, a4, a5, a6);
      }

      else
      {
        if ((*(*a1 + 12))(a1))
        {
          if (*(a1[2] + 5) != a2->i32[0] || *(a1[2] + 4) != a2->i32[1])
          {
            std::string::basic_string[abi:ne200100]<0>(v31, "!fixedSize() || ((ogl::Buffer*)obj)->size() == _sz");
            std::string::basic_string[abi:ne200100]<0>(v30, "create");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
            cv::Exception::Exception(&v32, 4294967081, v31, v30, __p, 1392);
            cv::error(&v32, v27);
          }
        }

        if ((*(*a1 + 13))(a1) && *(a1[2] + 6) != a3)
        {
          std::string::basic_string[abi:ne200100]<0>(v31, "!fixedType() || ((ogl::Buffer*)obj)->type() == mtype");
          std::string::basic_string[abi:ne200100]<0>(v30, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(&v32, 4294967081, v31, v30, __p, 1393);
          cv::error(&v32, v28);
        }

        cv::ogl::Buffer::create(a1[2], a2->u32[1], a2->u32[0], a3, 34962, 0);
      }
    }

    else
    {
      if ((*(*a1 + 12))(a1))
      {
        if (*(a1[2] + 2) != a2->i32[0] || *(a1[2] + 1) != a2->i32[1])
        {
          std::string::basic_string[abi:ne200100]<0>(v31, "!fixedSize() || ((gpu::GpuMat*)obj)->size() == _sz");
          std::string::basic_string[abi:ne200100]<0>(v30, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(&v32, 4294967081, v31, v30, __p, 1385);
          cv::error(&v32, v24);
        }
      }

      if ((*(*a1 + 13))(a1) && (*a1[2] & 0xFFF) != a3)
      {
        std::string::basic_string[abi:ne200100]<0>(v31, "!fixedType() || ((gpu::GpuMat*)obj)->type() == mtype");
        std::string::basic_string[abi:ne200100]<0>(v30, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v32, 4294967081, v31, v30, __p, 1386);
        cv::error(&v32, v25);
      }

      cv::gpu::GpuMat::create(a1[2], a2->i32[1], a2->i32[0], a3);
    }
  }
}

void sub_22D2677A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void cv::_OutputArray::create(cv::_OutputArray *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v14 = (*(*this + 40))(this);
  if (a7)
  {
    v15 = 1;
  }

  else
  {
    v15 = a6;
  }

  if ((v15 & 1) == 0 && (a5 & 0x80000000) != 0 && v14 == 0x10000)
  {
    if ((*(*this + 96))(this))
    {
      if (*(*(*(this + 2) + 64) + 4) != a3 || **(*(this + 2) + 64) != a2)
      {
        std::string::basic_string[abi:ne200100]<0>(v32, "!fixedSize() || ((Mat*)obj)->size.operator()() == Size(cols, rows)");
        std::string::basic_string[abi:ne200100]<0>(v31, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v33, 4294967081, v32, v31, __p, 1406);
        cv::error(&v33, v17);
      }
    }

    if ((*(*this + 104))(this) && (**(this + 2) & 0xFFF) != a4)
    {
      std::string::basic_string[abi:ne200100]<0>(v32, "!fixedType() || ((Mat*)obj)->type() == mtype");
      std::string::basic_string[abi:ne200100]<0>(v31, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v33, 4294967081, v32, v31, __p, 1407);
      cv::error(&v33, v18);
    }

    v19 = *(this + 2);
    v20 = a4 & 0xFFF;
    if (*(v19 + 4) > 2 || *(v19 + 8) != a2 || *(v19 + 12) != a3 || (*v19 & 0xFFF) != v20 || !*(v19 + 16))
    {
      v33 = a2;
      v34 = a3;
      cv::Mat::create(v19, 2, &v33, v20);
    }
  }

  else
  {
    if (a5 < 0 && v14 == 589824)
    {
      v22 = v15;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      if (a5 >= 0 || v14 != 458752)
      {
        v15 = 1;
      }

      if (v15)
      {
        v33 = a2;
        v34 = a3;
        (*(*this + 144))(this, 2, &v33, a4, a5, a6, a7);
      }

      else
      {
        if ((*(*this + 96))(this))
        {
          if (*(*(this + 2) + 20) != a3 || *(*(this + 2) + 16) != a2)
          {
            std::string::basic_string[abi:ne200100]<0>(v32, "!fixedSize() || ((ogl::Buffer*)obj)->size() == Size(cols, rows)");
            std::string::basic_string[abi:ne200100]<0>(v31, "create");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
            cv::Exception::Exception(&v33, 4294967081, v32, v31, __p, 1420);
            cv::error(&v33, v28);
          }
        }

        if ((*(*this + 104))(this) && *(*(this + 2) + 24) != a4)
        {
          std::string::basic_string[abi:ne200100]<0>(v32, "!fixedType() || ((ogl::Buffer*)obj)->type() == mtype");
          std::string::basic_string[abi:ne200100]<0>(v31, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(&v33, 4294967081, v32, v31, __p, 1421);
          cv::error(&v33, v29);
        }

        cv::ogl::Buffer::create(*(this + 2), a2, a3, a4, 34962, 0);
      }
    }

    else
    {
      if ((*(*this + 96))(this))
      {
        if (*(*(this + 2) + 8) != a3 || *(*(this + 2) + 4) != a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v32, "!fixedSize() || ((gpu::GpuMat*)obj)->size() == Size(cols, rows)");
          std::string::basic_string[abi:ne200100]<0>(v31, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(&v33, 4294967081, v32, v31, __p, 1413);
          cv::error(&v33, v25);
        }
      }

      if ((*(*this + 104))(this) && (**(this + 2) & 0xFFF) != a4)
      {
        std::string::basic_string[abi:ne200100]<0>(v32, "!fixedType() || ((gpu::GpuMat*)obj)->type() == mtype");
        std::string::basic_string[abi:ne200100]<0>(v31, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v33, 4294967081, v32, v31, __p, 1414);
        cv::error(&v33, v26);
      }

      cv::gpu::GpuMat::create(*(this + 2), a2, a3, a4);
    }
  }
}

void sub_22D267EE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void cv::_OutputArray::create(cv::_OutputArray *this, cv::Mat *a2, const int *a3, unsigned int a4, signed int a5, int a6, unsigned int a7)
{
  v14 = (*(*this + 40))(this);
  v15 = a4 & 0xFFF;
  if (v14 == 0x20000)
  {
    if ((a5 & 0x80000000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "i < 0");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1470);
      cv::error(v84, v23);
    }

    if (v15 != (*(this + 2) & 0xFFF) && ((a4 & 0xFF8) != 0 || ((a7 >> *(this + 2)) & 1) == 0))
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "mtype == type0 || (CV_MAT_CN(mtype) == 1 && ((1 << type0) & fixedDepthMask) != 0)");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1472);
      cv::error(v84, v24);
    }

    if (a2 != 2 || ((v46 = *(this + 7), *a3 != v46) || a3[1] != *(this + 6)) && (!a6 || *a3 != *(this + 6) || a3[1] != v46))
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "dims == 2 && ((sizes[0] == sz.height && sizes[1] == sz.width) || (allowTransposed && sizes[0] == sz.width && sizes[1] == sz.height))");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1474);
      cv::error(v84, v47);
    }

    return;
  }

  if (v14 == 0x10000)
  {
    if ((a5 & 0x80000000) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "i < 0");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1436);
      cv::error(v84, v16);
    }

    v17 = *(this + 2);
    if (!a6)
    {
      goto LABEL_192;
    }

    if ((*(v17 + 1) & 0x40) == 0)
    {
      if (((*(*this + 104))(this) & 1) != 0 || (*(*this + 96))(this))
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "!fixedType() && !fixedSize()");
        std::string::basic_string[abi:ne200100]<0>(v82, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1442);
        cv::error(v84, v18);
      }

      v19 = *(v17 + 24);
      if (v19 && atomic_fetch_add(v19, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v17);
      }

      *(v17 + 16) = 0;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = 0;
      if (*(v17 + 4) >= 1)
      {
        v20 = 0;
        v21 = *(v17 + 64);
        do
        {
          *(v21 + 4 * v20++) = 0;
        }

        while (v20 < *(v17 + 4));
      }

      *(v17 + 24) = 0;
    }

    if (a2 != 2 || *(v17 + 4) != 2 || !*(v17 + 16) || (*v17 & 0xFFF) != v15 || *(v17 + 8) != a3[1] || *(v17 + 12) != *a3)
    {
LABEL_192:
      if ((*(*this + 104))(this))
      {
        if (((*v17 ^ a4) & 0xFF8) != 0 || ((a7 >> *(this + 2)) & 1) == 0)
        {
          if (v15 != (*v17 & 0xFFF))
          {
            std::string::basic_string[abi:ne200100]<0>(v83, "CV_MAT_TYPE(mtype) == m.type()");
            std::string::basic_string[abi:ne200100]<0>(v82, "create");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
            cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1456);
            cv::error(v84, v22);
          }
        }

        else
        {
          LOWORD(v15) = *v17 & 0xFFF;
        }
      }

      if ((*(*this + 96))(this))
      {
        if (*(v17 + 4) != a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v83, "m.dims == dims");
          std::string::basic_string[abi:ne200100]<0>(v82, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1460);
          cv::error(v84, v48);
        }

        if (a2 >= 1)
        {
          v49 = 0;
          do
          {
            if (*(*(v17 + 64) + v49 * 4) != a3[v49])
            {
              std::string::basic_string[abi:ne200100]<0>(v83, "m.size[j] == sizes[j]");
              std::string::basic_string[abi:ne200100]<0>(v82, "create");
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
              cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1462);
              cv::error(v84, v50);
            }

            ++v49;
          }

          while (a2 != v49);
        }
      }

LABEL_140:
      cv::Mat::create(v17, a2, a3, v15);
      return;
    }

    return;
  }

  HIDWORD(v26) = v14;
  LODWORD(v26) = v14;
  v25 = v26 >> 16;
  if (v25 <= 4)
  {
    if ((v25 - 3) < 2)
    {
      if (a2 != 2 || (v27 = *a3, *a3 != 1) && (v28 = a3[1], v28 != 1) && v28 * v27)
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "dims == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
        std::string::basic_string[abi:ne200100]<0>(v82, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1480);
        cv::error(v84, v29);
      }

      v30 = a3[1];
      v31 = v30 * v27;
      v32 = v27 + v30 - 1;
      if (v31 <= 0)
      {
        v32 = 0;
      }

      v33 = v32;
      v34 = *(this + 2);
      if (v14 == 0x40000)
      {
        if (a5 < 0)
        {
          if ((*(*this + 96))(this) && 0xAAAAAAAAAAAAAAABLL * ((v34->__end_ - v34->__begin_) >> 3) != v33)
          {
            std::string::basic_string[abi:ne200100]<0>(v83, "!fixedSize() || len == vv.size()");
            std::string::basic_string[abi:ne200100]<0>(v82, "create");
            std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
            cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1489);
            cv::error(v84, v77);
          }

          std::vector<std::vector<unsigned char>>::resize(v34, v33);
          return;
        }

        if ((-1431655765 * ((v34->__end_ - v34->__begin_) >> 3)) <= a5)
        {
          std::string::basic_string[abi:ne200100]<0>(v83, "i < (int)vv.size()");
          std::string::basic_string[abi:ne200100]<0>(v82, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1493);
          cv::error(v84, v35);
        }

        v34 = &v34->__begin_[6 * a5];
      }

      else if ((a5 & 0x80000000) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "i < 0");
        std::string::basic_string[abi:ne200100]<0>(v82, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1497);
        cv::error(v84, v51);
      }

      v52 = *(this + 2);
      if (v15 != (v52 & 0xFFF) && (((v52 ^ a4) & 0xFF8) != 0 || ((a7 >> *(this + 2)) & 1) == 0))
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "mtype == type0 || (CV_MAT_CN(mtype) == CV_MAT_CN(type0) && ((1 << type0) & fixedDepthMask) != 0)");
        std::string::basic_string[abi:ne200100]<0>(v82, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1500);
        cv::error(v84, v53);
      }

      v78 = (((v52 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v52 & 7))) & 3);
      if ((*(*this + 96))(this) && (v34->__end_ - v34->__begin_) / v78 != v33)
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "!fixedSize() || len == ((vector<uchar>*)v)->size() / esz");
        std::string::basic_string[abi:ne200100]<0>(v82, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1503);
        cv::error(v84, v79);
      }

      if (v78 > 23)
      {
        if (v78 > 63)
        {
          if (v78 > 255)
          {
            if (v78 == 256)
            {
              std::vector<cv::Vec<int,64>>::resize(v34, v33);
              return;
            }

            if (v78 == 512)
            {
              std::vector<cv::Vec<int,128>>::resize(v34, v33);
              return;
            }
          }

          else
          {
            if (v78 == 64)
            {
              std::vector<cv::Vec<int,16>>::resize(v34, v33);
              return;
            }

            if (v78 == 128)
            {
              std::vector<cv::Vec<int,32>>::resize(v34, v33);
              return;
            }
          }
        }

        else if (v78 > 35)
        {
          if (v78 == 36)
          {
            std::vector<cv::Vec<int,9>>::resize(v34, v33);
            return;
          }

          if (v78 == 48)
          {
            std::vector<cv::Vec<int,12>>::resize(v34, v33);
            return;
          }
        }

        else
        {
          if (v78 == 24)
          {
            std::vector<cv::Vec<int,6>>::resize(v34, v33);
            return;
          }

          if (v78 == 32)
          {
            std::vector<cv::Vec<int,8>>::resize(v34, v33);
            return;
          }
        }
      }

      else if (v78 > 5)
      {
        if (v78 > 11)
        {
          if (v78 == 12)
          {
            std::vector<cv::Vec<int,3>>::resize(v34, v33);
            return;
          }

          if (v78 == 16)
          {
            std::vector<cv::Vec<int,4>>::resize(v34, v33);
            return;
          }
        }

        else
        {
          if (v78 == 6)
          {
            std::vector<cv::Vec<short,3>>::resize(v34, v33);
            return;
          }

          if (v78 == 8)
          {
            std::vector<cv::Vec<int,2>>::resize(v34, v33);
            return;
          }
        }
      }

      else if (v78 > 2)
      {
        if (v78 == 3)
        {
          std::vector<cv::Vec<unsigned char,3>>::resize(v34, v33);
          return;
        }

        if (v78 == 4)
        {
          std::vector<float>::resize(v34, v33);
          return;
        }
      }

      else
      {
        if (v78 == 1)
        {
          std::vector<unsigned char>::resize(v34, v33);
          return;
        }

        if (v78 == 2)
        {
          std::vector<cv::Vec<unsigned char,2>>::resize(v34, v33);
          return;
        }
      }

      cv::format(v83, (((v52 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v52 & 7))) & 3));
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967291, v83, v82, __p, 1555);
      cv::error(v84, v80);
    }

    if (!v25)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "create() called for the missing output array");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967269, v83, v82, __p, 1567);
      cv::error(v84, v37);
    }

LABEL_51:
    std::string::basic_string[abi:ne200100]<0>(v83, "k == STD_VECTOR_MAT");
    std::string::basic_string[abi:ne200100]<0>(v82, "create");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1571);
    cv::error(v84, v38);
  }

  if (v25 != 5)
  {
    if (v25 == 10)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "This method is not implemented for oclMat yet");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967083, v83, v82, __p, 1562);
      cv::error(v84, v36);
    }

    goto LABEL_51;
  }

  v39 = *(this + 2);
  if (a5 < 0)
  {
    if (a2 != 2 || (v54 = *a3, *a3 != 1) && (v55 = a3[1], v55 != 1) && v55 * v54)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "dims == 2 && (sizes[0] == 1 || sizes[1] == 1 || sizes[0]*sizes[1] == 0)");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1578);
      cv::error(v84, v56);
    }

    v57 = a3[1];
    v58 = v57 * v54;
    v59 = v54 + v57 - 1;
    if (v58 <= 0)
    {
      v59 = 0;
    }

    v60 = v59;
    v61 = 0xAAAAAAAAAAAAAAABLL * ((v39[1] - *v39) >> 5);
    if ((*(*this + 96))(this) && v61 != v60)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "!fixedSize() || len == len0");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1581);
      cv::error(v84, v62);
    }

    std::vector<cv::Mat>::resize(v39, v60);
    if ((*(*this + 104))(this) && v61 < v60)
    {
      v63 = *(this + 2) & 0xFFF;
      v64 = *v39;
      do
      {
        v65 = v64 + 96 * v61;
        if ((*v65 & 0xFFF) != v63)
        {
          if (*(v65 + 16))
          {
            v66 = *(v65 + 4);
            if (v66 >= 3)
            {
              v68 = *(v65 + 64);
              v67 = 1;
              do
              {
                v69 = *v68++;
                v67 *= v69;
                --v66;
              }

              while (v66);
            }

            else
            {
              v67 = *(v65 + 12) * *(v65 + 8);
            }

            if (v67)
            {
              std::string::basic_string[abi:ne200100]<0>(v83, "v[j].empty()");
              std::string::basic_string[abi:ne200100]<0>(v82, "create");
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
              cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1590);
              cv::error(v84, v70);
            }
          }

          *(v64 + 96 * v61) = *(v64 + 96 * v61) & 0xFFFFF000 | v63;
        }

        ++v61;
      }

      while (v61 != v60);
    }
  }

  else
  {
    if ((-1431655765 * ((v39[1] - *v39) >> 5)) <= a5)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "i < (int)v.size()");
      std::string::basic_string[abi:ne200100]<0>(v82, "create");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1597);
      cv::error(v84, v40);
    }

    v17 = *v39 + 96 * a5;
    if (!a6)
    {
      goto LABEL_193;
    }

    if ((*(v17 + 1) & 0x40) != 0)
    {
      LODWORD(v43) = *(v17 + 4);
    }

    else
    {
      if (((*(*this + 104))(this) & 1) != 0 || (*(*this + 96))(this))
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "!fixedType() && !fixedSize()");
        std::string::basic_string[abi:ne200100]<0>(v82, "create");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1604);
        cv::error(v84, v41);
      }

      v42 = *(v17 + 24);
      if (v42 && atomic_fetch_add(v42, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v17);
      }

      *(v17 + 16) = 0;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 32) = 0;
      LODWORD(v43) = *(v17 + 4);
      if (v43 >= 1)
      {
        v44 = 0;
        v45 = *(v17 + 64);
        do
        {
          *(v45 + 4 * v44++) = 0;
          v43 = *(v17 + 4);
        }

        while (v44 < v43);
      }

      *(v17 + 24) = 0;
    }

    if (a2 != 2 || (v43 == 2 ? (v71 = *(v17 + 16) == 0) : (v71 = 1), v71 || (*v17 & 0xFFF) != v15 || *(v17 + 8) != a3[1] || *(v17 + 12) != *a3))
    {
LABEL_193:
      if ((*(*this + 104))(this))
      {
        v72 = (a4 >> 3) & 0x1FF;
        if (v72 == ((*v17 >> 3) & 0x1FF) && ((a7 >> *(this + 2)) & 1) != 0)
        {
          LOWORD(v15) = *v17 & 0xFFF;
        }

        else if ((*(*this + 104))(this) && (v72 != ((*v17 >> 3) & 0x1FF) || ((a7 >> *(this + 2)) & 1) == 0))
        {
          std::string::basic_string[abi:ne200100]<0>(v83, "!fixedType() || (CV_MAT_CN(mtype) == m.channels() && ((1 << CV_MAT_TYPE(flags)) & fixedDepthMask) != 0)");
          std::string::basic_string[abi:ne200100]<0>(v82, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1618);
          cv::error(v84, v73);
        }
      }

      if ((*(*this + 96))(this))
      {
        if (*(v17 + 4) != a2)
        {
          std::string::basic_string[abi:ne200100]<0>(v83, "m.dims == dims");
          std::string::basic_string[abi:ne200100]<0>(v82, "create");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1622);
          cv::error(v84, v74);
        }

        if (a2 >= 1)
        {
          v75 = 0;
          do
          {
            if (*(*(v17 + 64) + v75 * 4) != a3[v75])
            {
              std::string::basic_string[abi:ne200100]<0>(v83, "m.size[j] == sizes[j]");
              std::string::basic_string[abi:ne200100]<0>(v82, "create");
              std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
              cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 1624);
              cv::error(v84, v76);
            }

            ++v75;
          }

          while (a2 != v75);
        }
      }

      goto LABEL_140;
    }
  }
}

void sub_22D269788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  cv::Exception::~Exception(&a29);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<unsigned char>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<unsigned char>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<unsigned char>::resize(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char>::__append(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

void std::vector<cv::Vec<unsigned char,2>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<cv::Vec<unsigned char,2>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<unsigned char,3>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Vec<unsigned char,3>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 3 * a2;
  }
}

void std::vector<cv::Vec<short,3>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 1);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Vec<short,3>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 6 * a2;
  }
}

void std::vector<cv::Vec<int,2>>::resize(void *a1, unint64_t a2)
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
    std::vector<cv::Vec<int,2>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<int,3>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Vec<int,3>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

void std::vector<cv::Vec<int,4>>::resize(void *a1, unint64_t a2)
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
    std::vector<cv::Vec<int,4>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<int,6>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Vec<int,6>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<cv::Vec<int,8>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    std::vector<cv::Vec<int,8>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<int,9>>::resize(void *a1, unint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Vec<int,9>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 36 * a2;
  }
}

void std::vector<cv::Vec<int,12>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<cv::Vec<int,12>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 48 * a2;
  }
}

void std::vector<cv::Vec<int,16>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 6);
    }
  }

  else
  {
    std::vector<cv::Vec<int,16>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<int,32>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 7;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 7);
    }
  }

  else
  {
    std::vector<cv::Vec<int,32>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<int,64>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 8;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 8);
    }
  }

  else
  {
    std::vector<cv::Vec<int,64>>::__append(a1, a2 - v2);
  }
}

void std::vector<cv::Vec<int,128>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 9;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + (a2 << 9);
    }
  }

  else
  {
    std::vector<cv::Vec<int,128>>::__append(a1, a2 - v2);
  }
}

double cv::_OutputArray::release(cv::_OutputArray *this)
{
  if ((*(*this + 96))(this))
  {
    std::string::basic_string[abi:ne200100]<0>(v14, "!fixedSize()");
    std::string::basic_string[abi:ne200100]<0>(v13, "release");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v15, 4294967081, v14, v13, __p, 1633);
    cv::error(v15, v2);
  }

  HIDWORD(v4) = (*(*this + 40))(this);
  LODWORD(v4) = HIDWORD(v4);
  v3 = v4 >> 16;
  if (v3 <= 4)
  {
    if (v3 > 2)
    {
      if (v3 == 3)
      {
        v15[0] = 0;
        (*(*this + 128))(this, v15, *(this + 2) & 0xFFF, 0xFFFFFFFFLL, 0, 0);
      }

      else
      {
        std::vector<std::vector<long long>>::clear[abi:ne200100](*(this + 2));
      }
    }

    else if (v3)
    {
      if (v3 != 1)
      {
        goto LABEL_24;
      }

      v7 = *(this + 2);
      v8 = *(v7 + 24);
      if (v8 && atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v7);
      }

      *(v7 + 16) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      if (*(v7 + 4) >= 1)
      {
        v9 = 0;
        v10 = *(v7 + 64);
        do
        {
          *(v10 + 4 * v9++) = 0;
        }

        while (v9 < *(v7 + 4));
      }

      *(v7 + 24) = 0;
    }

    return result;
  }

  if (v3 <= 7)
  {
    if (v3 == 5)
    {
      std::vector<cv::Mat>::__base_destruct_at_end[abi:ne200100](*(this + 2), **(this + 2));
      return result;
    }

    if (v3 != 7)
    {
      goto LABEL_24;
    }

LABEL_23:
    cv::BaseRowFilter::~BaseRowFilter(*(this + 2));
    return result;
  }

  if (v3 == 8)
  {
    goto LABEL_23;
  }

  if (v3 != 9)
  {
    if (v3 == 10)
    {
      std::string::basic_string[abi:ne200100]<0>(v14, "This method is not implemented for oclMat yet");
      std::string::basic_string[abi:ne200100]<0>(v13, "release");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v15, 4294967083, v14, v13, __p, 1678);
      cv::error(v15, v6);
    }

LABEL_24:
    std::string::basic_string[abi:ne200100]<0>(v14, "k == STD_VECTOR_MAT");
    std::string::basic_string[abi:ne200100]<0>(v13, "release");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v15, 4294967081, v14, v13, __p, 1681);
    cv::error(v15, v11);
  }

  return cv::gpu::GpuMat::release(*(this + 2));
}

void sub_22D26A0A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::_OutputArray::clear(cv::Mat **this)
{
  v2 = (*(*this + 5))(this);
  v3 = *this;
  if (v2 == 0x10000)
  {
    if ((*(v3 + 12))(this))
    {
      std::string::basic_string[abi:ne200100]<0>(v8, "!fixedSize()");
      std::string::basic_string[abi:ne200100]<0>(v7, "clear");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v9, 4294967081, v8, v7, __p, 1694);
      cv::error(v9, v4);
    }

    cv::Mat::resize(this[2], 0);
  }

  else
  {
    v5 = *(v3 + 19);

    v5(this);
  }
}

void sub_22D26A278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

uint64_t cv::_OutputArray::getMatRef(cv::_OutputArray *this, signed int a2)
{
  v4 = (*(*this + 40))(this);
  if (a2 < 0)
  {
    if (v4 != 0x10000)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "k == MAT");
      std::string::basic_string[abi:ne200100]<0>(v11, "getMatRef");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 1712);
      cv::error(v13, v9);
    }

    return *(this + 2);
  }

  else
  {
    if (v4 != 327680)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "k == STD_VECTOR_MAT");
      std::string::basic_string[abi:ne200100]<0>(v11, "getMatRef");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 1717);
      cv::error(v13, v5);
    }

    v6 = *(this + 2);
    if ((-1431655765 * ((v6[1] - *v6) >> 5)) <= a2)
    {
      std::string::basic_string[abi:ne200100]<0>(v12, "i < (int)v.size()");
      std::string::basic_string[abi:ne200100]<0>(v11, "getMatRef");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v13, 4294967081, v12, v11, __p, 1719);
      cv::error(v13, v7);
    }

    return *v6 + 96 * a2;
  }
}

void sub_22D26A554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

  _Unwind_Resume(a1);
}

void cv::setIdentity(void (***a1)(uint64_t *__return_ptr), int64x2_t *a2)
{
  (**a1)(&v42);
  if (SHIDWORD(v42) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "m.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v32, "setIdentity");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(&v34, 4294967081, v33, v32, __p, 1838);
    cv::error(&v34, v3);
  }

  v4 = v43;
  v5 = v44;
  v6 = v44;
  if ((v42 & 0xFFF) == 6)
  {
    if (v43 >= 1)
    {
      v12 = 0;
      v13 = *a2->i64;
      v14 = vdupq_n_s64(v44 - 1);
      v15 = vdupq_n_s64(2uLL);
      v16 = (v45 + 8);
      v17 = 8 * (v52 >> 3);
      do
      {
        if (v6 >= 1)
        {
          v18 = v16;
          v19 = (v6 + 1) & 0xFFFFFFFE;
          v20 = v12;
          v21 = xmmword_22D297DE0;
          do
          {
            v22 = vmovn_s64(vcgeq_u64(v14, v21));
            if (v22.i8[0])
            {
              if (v20)
              {
                v23 = 0.0;
              }

              else
              {
                v23 = v13;
              }

              *(v18 - 1) = v23;
            }

            if (v22.i8[4])
            {
              if (v20 == 1)
              {
                v24 = v13;
              }

              else
              {
                v24 = 0.0;
              }

              *v18 = v24;
            }

            v21 = vaddq_s64(v21, v15);
            v20 -= 2;
            v18 += 2;
            v19 -= 2;
          }

          while (v19);
        }

        ++v12;
        v16 = (v16 + v17);
      }

      while (v12 != v4);
    }
  }

  else if ((v42 & 0xFFF) == 5)
  {
    if (v43 >= 1)
    {
      v7 = 0;
      v8 = *a2->i64;
      v9 = v45;
      v10 = 4 * (v52 >> 2);
      v11 = v45;
      do
      {
        if (v5 >= 1)
        {
          bzero(v9, 4 * v5);
        }

        if (v7 < v5)
        {
          *v11 = v8;
        }

        ++v7;
        v11 = (v11 + v10 + 4);
        v9 += v10;
      }

      while (v4 != v7);
    }
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    cv::Mat::operator=(&v42, &v34);
    cv::Mat::diag(&v42, 0, &v34);
    cv::Mat::operator=(&v34, a2);
    if (*(&v35 + 1) && atomic_fetch_add(*(&v35 + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v34);
    }

    *&v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    if (v34.i32[1] >= 1)
    {
      v25 = 0;
      v26 = v39;
      do
      {
        *(v26 + 4 * v25++) = 0;
      }

      while (v25 < v34.i32[1]);
    }

    *(&v35 + 1) = 0;
    if (v40)
    {
      v27 = v40 == &v41;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      free(v40);
    }
  }

  if (v46 && atomic_fetch_add(v46, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v42);
  }

  v45 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if (SHIDWORD(v42) >= 1)
  {
    v28 = 0;
    v29 = v50;
    do
    {
      *(v29 + 4 * v28++) = 0;
    }

    while (v28 < SHIDWORD(v42));
  }

  v46 = 0;
  if (v51)
  {
    v30 = v51 == &v52;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v51);
  }
}

void sub_22D26A954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Mat::~Mat(&a28);
  cv::Mat::~Mat((v28 - 192));
  _Unwind_Resume(a1);
}

void cv::transpose(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3)
{
  (**this)(&v36);
  if (SHIDWORD(v36) < 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v45[HIDWORD(v36) - 1];
  }

  if (SHIDWORD(v36) > 2 || v4 >= 0x21)
  {
    std::string::basic_string[abi:ne200100]<0>(&v19, "src.dims <= 2 && esz <= (size_t)32");
    std::string::basic_string[abi:ne200100]<0>(v31, "transpose");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(&v32, 4294967081, &v19, v31, __p, 2021);
    cv::error(&v32, v5);
  }

  (*(*a2 + 136))(a2, v38, v37, v36 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a2)(&v19, a2, 0xFFFFFFFFLL);
  if (v37 == v21 && v38 == v20)
  {
    v6 = 0xFEFEEEA1uLL >> v4;
    if (v22 == v39)
    {
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v31, "func != 0");
        std::string::basic_string[abi:ne200100]<0>(__p, "transpose");
        std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v32, 4294967081, v31, __p, v18, 2037);
        cv::error(&v32, v17);
      }

      cv::transposeInplaceTab[v4](v22, v29, v38);
    }

    else
    {
      v7 = cv::transposeTab[v4];
      if (v6)
      {
        std::string::basic_string[abi:ne200100]<0>(v31, "func != 0");
        std::string::basic_string[abi:ne200100]<0>(__p, "transpose");
        std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(&v32, 4294967081, v31, __p, v18, 2043);
        cv::error(&v32, v8);
      }

      v32 = vrev64_s32(*v44);
      v7();
    }
  }

  else
  {
    v9 = v44->i32[1] == v27[1] && v44->i32[0] == *v27;
    if (!v9 || v37 != 1 && v38 != 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v31, "src.size() == dst.size() && (src.cols == 1 || src.rows == 1)");
      std::string::basic_string[abi:ne200100]<0>(__p, "transpose");
      std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(&v32, 4294967081, v31, __p, v18, 2029);
      cv::error(&v32, v10);
    }

    v33 = 0x10000;
    v34 = &v19;
    v35 = 0;
    v32 = &unk_2840567A8;
    cv::Mat::copyTo(&v36, &v32);
  }

  if (v23 && atomic_fetch_add(v23, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v19);
  }

  v22 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (SHIDWORD(v19) >= 1)
  {
    v11 = 0;
    v12 = v27;
    do
    {
      v12[v11++] = 0;
    }

    while (v11 < SHIDWORD(v19));
  }

  v23 = 0;
  if (v28)
  {
    v13 = v28 == &v29;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    free(v28);
  }

  if (v40 && atomic_fetch_add(v40, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v36);
  }

  v39 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  if (SHIDWORD(v36) >= 1)
  {
    v14 = 0;
    v15 = v44;
    do
    {
      v15->i32[v14++] = 0;
    }

    while (v14 < SHIDWORD(v36));
  }

  v40 = 0;
  if (v45)
  {
    v16 = v45 == &v46;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    free(v45);
  }
}

void sub_22D26AEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  cv::Exception::~Exception(&a42);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a41 < 0)
  {
    operator delete(a36);
  }

  cv::Mat::~Mat(&a15);
  cv::Mat::~Mat((v42 - 128));
  _Unwind_Resume(a1);
}

void cv::completeSymm(void (***this)(uint64_t *__return_ptr), const cv::_OutputArray *a2)
{
  v17 = a2;
  (**this)(&v22);
  v2 = v32;
  if (SHIDWORD(v22) < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v31[HIDWORD(v22) - 1];
    if (HIDWORD(v22) > 2)
    {
LABEL_6:
      std::string::basic_string[abi:ne200100]<0>(v20, "m.dims <= 2 && m.rows == m.cols");
      std::string::basic_string[abi:ne200100]<0>(v19, "completeSymm");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v21, 4294967081, v20, v19, __p, 2055);
      cv::error(v21, v5);
    }
  }

  v4 = v23;
  if (v23 != v24)
  {
    goto LABEL_6;
  }

  if (v23 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = v25;
    v16 = v23;
    v9 = v25;
    do
    {
      if (!v17)
      {
        v4 = v6;
      }

      ++v6;
      if (v17)
      {
        v7 = v6;
      }

      if (v7 < v4)
      {
        v10 = (v9 + v3 * v7);
        v11 = (v8 + v2 * v7);
        v12 = v4 - v7;
        do
        {
          memcpy(v10, v11, v3);
          v10 += v3;
          v11 += v2;
          --v12;
        }

        while (v12);
      }

      v9 += v2;
      v8 += v3;
    }

    while (v6 != v16);
  }

  if (v26 && atomic_fetch_add(v26, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v22);
  }

  v25 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  if (SHIDWORD(v22) >= 1)
  {
    v13 = 0;
    v14 = v30;
    do
    {
      *(v14 + 4 * v13++) = 0;
    }

    while (v13 < SHIDWORD(v22));
  }

  v26 = 0;
  if (v31)
  {
    v15 = v31 == &v32;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    free(v31);
  }
}

void sub_22D26B24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  cv::Exception::~Exception(&a30);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  cv::Mat::~Mat((v30 - 184));
  _Unwind_Resume(a1);
}

void cv::NAryMatIterator::init(cv::NAryMatIterator *this, const cv::Mat **a2, unint64_t a3, unint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v6 = a2;
  if (!a2 || !(a3 | a4))
  {
    std::string::basic_string[abi:ne200100]<0>(v83, "_arrays && (_ptrs || _planes)");
    std::string::basic_string[abi:ne200100]<0>(v82, "init");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
    cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 3169);
    cv::error(v84, v8);
  }

  *(this + 1) = a3;
  *(this + 2) = a4;
  *this = a2;
  *(this + 6) = a5;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (a5 < 0)
  {
    v5 = -1;
    do
    {
      v9 = *v6++;
      ++v5;
    }

    while (v9);
    *(this + 6) = v5;
    if (v5 > 0x3E8)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "narrays <= 1000");
      std::string::basic_string[abi:ne200100]<0>(v82, "init");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 3184);
      cv::error(v84, v10);
    }
  }

  *(this + 12) = 0;
  if (v5 < 1)
  {
    v39 = 0;
LABEL_58:
    *(this + 12) = 0;
    goto LABEL_69;
  }

  v11 = 0;
  LODWORD(v12) = 0;
  v13 = -1;
  v14 = 0xFFFFFFFFLL;
  do
  {
    v15 = *(*this + 8 * v11);
    if (!v15)
    {
      std::string::basic_string[abi:ne200100]<0>(v83, "arrays[i] != 0");
      std::string::basic_string[abi:ne200100]<0>(v82, "init");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
      cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 3191);
      cv::error(v84, v16);
    }

    v17 = *(this + 2);
    v18 = *(v15 + 16);
    if (v17)
    {
      *(v17 + 8 * v11) = v18;
    }

    if (v18)
    {
      if ((v14 & 0x80000000) != 0)
      {
        v12 = *(v15 + 4);
        v14 = v11;
        if (v12 <= 0)
        {
          v13 = *(v15 + 4);
          LODWORD(v12) = 0;
        }

        else
        {
          v23 = 0;
          while (*(*(v15 + 64) + 4 * v23) <= 1)
          {
            if (v12 == ++v23)
            {
              v13 = *(v15 + 4);
              goto LABEL_33;
            }
          }

          v13 = *(v15 + 4);
          LODWORD(v12) = v23;
        }
      }

      else
      {
        v19 = *(v15 + 64);
        v20 = *(v19 - 1);
        v21 = *(*(*this + 8 * v14) + 64);
        if (v20 != *(v21 - 1))
        {
          goto LABEL_21;
        }

        if (v20 == 2)
        {
          if (*v19 != *v21 || v19[1] != v21[1])
          {
            goto LABEL_21;
          }
        }

        else if (v20 >= 1)
        {
          while (1)
          {
            v25 = *v19++;
            v24 = v25;
            v26 = *v21++;
            if (v24 != v26)
            {
              break;
            }

            if (!--v20)
            {
              goto LABEL_33;
            }
          }

LABEL_21:
          std::string::basic_string[abi:ne200100]<0>(v83, "A.size == arrays[i0]->size");
          std::string::basic_string[abi:ne200100]<0>(v82, "init");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 3211);
          cv::error(v84, v22);
        }
      }

LABEL_33:
      if ((*(v15 + 1) & 0x40) == 0)
      {
        v27 = *(v15 + 72);
        v28 = *(v15 + 4);
        if (v28 < 1)
        {
          v29 = 0;
        }

        else
        {
          v29 = *(v27 + 8 * v28 - 8);
        }

        v30 = v13 - 1;
        if (*(v27 + 8 * (v13 - 1)) != v29)
        {
          std::string::basic_string[abi:ne200100]<0>(v83, "A.step[d-1] == A.elemSize()");
          std::string::basic_string[abi:ne200100]<0>(v82, "init");
          std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
          cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 3215);
          cv::error(v84, v31);
        }

        v32 = v30;
        if (v12 >= v30)
        {
          v33 = v13 - 1;
        }

        else
        {
          v33 = v12;
        }

        v34 = v13;
        while (v32 > v12)
        {
          v35 = *(*(v15 + 72) + 8 * v32 - 8);
          v36 = *(*(v15 + 72) + 8 * v32) * *(*(v15 + 64) + 4 * v32);
          --v32;
          --v34;
          if (v36 < v35)
          {
            goto LABEL_47;
          }
        }

        v34 = v33;
LABEL_47:
        v37 = *(this + 12);
        if (v37 <= v34)
        {
          v37 = v34;
        }

        *(this + 12) = v37;
      }
    }

    ++v11;
    v38 = *(this + 6);
  }

  while (v11 < v38);
  v39 = v38 > 0;
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_58;
  }

  v40 = v13 - 1;
  v41 = *(*(*this + 8 * v14) + 64);
  v42 = (v13 - 1);
  v43 = *(v41 + 4 * v42);
  v44 = *(this + 12);
  if (v44 < (v13 - 1))
  {
    v40 = *(this + 12);
  }

  while (1)
  {
    v45 = v43;
    if (v42 <= v44)
    {
      break;
    }

    v46 = *(v41 - 4 + 4 * v42--);
    v43 = v45 * v46;
    --v13;
    if (v43 != v43)
    {
      goto LABEL_60;
    }
  }

  v13 = v40;
LABEL_60:
  *(this + 5) = v45;
  if (v13 == v12)
  {
    v47 = 0;
  }

  else
  {
    v47 = v13;
  }

  *(this + 12) = v47;
  if (v47 < 1)
  {
    v50 = 1;
    v51 = (this + 32);
  }

  else
  {
    v48 = v47 + 1;
    v49 = (v41 + 4 * v47 - 4);
    v50 = 1;
    v51 = (this + 32);
    do
    {
      v52 = *v49--;
      v50 *= v52;
      --v48;
    }

    while (v48 > 1);
  }

  *v51 = v50;
LABEL_69:
  *(this + 7) = 0;
  if (*(this + 1))
  {
    v53 = !v39;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    v54 = 0;
    while (1)
    {
      v55 = *(*this + 8 * v54);
      if (!v55)
      {
        std::string::basic_string[abi:ne200100]<0>(v83, "arrays[i] != 0");
        std::string::basic_string[abi:ne200100]<0>(v82, "init");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matrix.cpp");
        cv::Exception::Exception(v84, 4294967081, v83, v82, __p, 3252);
        cv::error(v84, v56);
      }

      v57 = *(v55 + 2);
      if (v57)
      {
        break;
      }

      v85 = v84 + 8;
      v86 = &v87;
      v87 = 0;
      v88 = 0;
      LODWORD(v84[0]) = 1124007936;
      memset(v84 + 4, 0, 48);
      v84[3] = 0u;
      v65 = *(this + 1) + 96 * v54;
      if (v65 != v84)
      {
        v66 = *(v65 + 24);
        if (v66 && atomic_fetch_add(v66, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v65);
        }

        *(v65 + 16) = 0;
        *(v65 + 40) = 0;
        *(v65 + 48) = 0;
        *(v65 + 32) = 0;
        if (*(v65 + 4) <= 0)
        {
          *(v65 + 24) = 0;
          *v65 = v84[0];
        }

        else
        {
          v67 = 0;
          v68 = *(v65 + 64);
          do
          {
            *(v68 + 4 * v67++) = 0;
            v69 = *(v65 + 4);
          }

          while (v67 < v69);
          *(v65 + 24) = 0;
          *v65 = v84[0];
          if (v69 > 2)
          {
LABEL_110:
            cv::Mat::copySize(v65, v84);
            goto LABEL_111;
          }
        }

        if (SDWORD1(v84[0]) > 2)
        {
          goto LABEL_110;
        }

        *(v65 + 4) = DWORD1(v84[0]);
        *(v65 + 8) = *(&v84[0] + 1);
        v75 = v86;
        v76 = *(v65 + 72);
        *v76 = *v86;
        v76[1] = v75[1];
LABEL_111:
        *(v65 + 16) = *&v84[1];
        *(v65 + 40) = *(&v84[2] + 8);
        v77 = *(&v84[1] + 1);
        *(v65 + 24) = *(&v84[1] + 8);
        *(v65 + 56) = *(&v84[3] + 1);
        if (v77 && atomic_fetch_add(v77, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v84);
        }

        *&v84[1] = 0;
        memset(&v84[2], 0, 24);
        if (SDWORD1(v84[0]) >= 1)
        {
          v78 = 0;
          v79 = v85;
          do
          {
            *&v79[4 * v78++] = 0;
          }

          while (v78 < SDWORD1(v84[0]));
        }

        goto LABEL_117;
      }

      memset(&v84[2], 0, 24);
LABEL_117:
      *(&v84[1] + 1) = 0;
      if (v86)
      {
        v80 = v86 == &v87;
      }

      else
      {
        v80 = 1;
      }

      if (!v80)
      {
        free(v86);
      }

      if (++v54 >= *(this + 6))
      {
        return;
      }
    }

    v58 = *(this + 5);
    v59 = *v55;
    *(v84 + 4) = 0x100000002;
    HIDWORD(v84[0]) = v58;
    v84[1] = v57;
    v85 = v84 + 8;
    v86 = &v87;
    LODWORD(v84[0]) = v59 & 0xFFF | 0x42FF4000;
    v87 = v58 * ((((v59 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v59 & 7))) & 3));
    v88 = (((v59 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v59 & 7))) & 3);
    v84[3] = v57 + v87;
    *&v84[2] = v57;
    *(&v84[2] + 1) = v57 + v87;
    v60 = *(this + 1) + 96 * v54;
    if (v60 == v84)
    {
LABEL_102:
      *&v84[1] = 0;
      memset(&v84[2], 0, 24);
      if (SDWORD1(v84[0]) >= 1)
      {
        v73 = 0;
        v74 = v85;
        do
        {
          *&v74[4 * v73++] = 0;
        }

        while (v73 < SDWORD1(v84[0]));
      }

      goto LABEL_117;
    }

    v61 = *(v60 + 24);
    if (v61 && atomic_fetch_add(v61, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v60);
    }

    *(v60 + 16) = 0;
    *(v60 + 40) = 0;
    *(v60 + 48) = 0;
    *(v60 + 32) = 0;
    if (*(v60 + 4) <= 0)
    {
      *(v60 + 24) = 0;
      *v60 = v84[0];
    }

    else
    {
      v62 = 0;
      v63 = *(v60 + 64);
      do
      {
        *(v63 + 4 * v62++) = 0;
        v64 = *(v60 + 4);
      }

      while (v62 < v64);
      *(v60 + 24) = 0;
      *v60 = v84[0];
      if (v64 > 2)
      {
        goto LABEL_98;
      }
    }

    if (SDWORD1(v84[0]) <= 2)
    {
      *(v60 + 4) = DWORD1(v84[0]);
      *(v60 + 8) = *(&v84[0] + 1);
      v70 = v86;
      v71 = *(v60 + 72);
      *v71 = *v86;
      v71[1] = v70[1];
LABEL_99:
      *(v60 + 16) = *&v84[1];
      *(v60 + 40) = *(&v84[2] + 8);
      v72 = *(&v84[1] + 1);
      *(v60 + 24) = *(&v84[1] + 8);
      *(v60 + 56) = *(&v84[3] + 1);
      if (v72 && atomic_fetch_add(v72, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v84);
      }

      goto LABEL_102;
    }

LABEL_98:
    cv::Mat::copySize(v60, v84);
    goto LABEL_99;
  }
}

void sub_22D26BC78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  cv::Exception::~Exception(&a28);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

cv::NAryMatIterator *cv::NAryMatIterator::NAryMatIterator(cv::NAryMatIterator *this, const cv::Mat **a2, unsigned __int8 **a3, int a4)
{
  *(this + 7) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  cv::NAryMatIterator::init(this, a2, 0, a3, a4);
  return this;
}

uint64_t cv::NAryMatIterator::operator++(uint64_t result)
{
  v1 = *(result + 56);
  if (v1 < *(result + 32) - 1)
  {
    v2 = v1 + 1;
    *(result + 56) = v2;
    v3 = *(result + 48);
    if (v3 == 1)
    {
      if (*(result + 16))
      {
        v4 = *(result + 24);
        if (v4 >= 1)
        {
          v5 = 0;
          v6 = 8 * v4;
          do
          {
            v7 = *(result + 16);
            if (*(v7 + v5))
            {
              *(v7 + v5) = *(*(*result + v5) + 16) + **(*(*result + v5) + 72) * v2;
            }

            v5 += 8;
          }

          while (v6 != v5);
        }
      }

      v8 = *(result + 8);
      if (v8)
      {
        v9 = *(result + 24);
        if (v9 >= 1)
        {
          v10 = 0;
          v11 = (v8 + 16);
          v12 = 8 * v9;
          do
          {
            if (*v11)
            {
              *v11 = *(*(*result + v10) + 16) + **(*(*result + v10) + 72) * v2;
            }

            v10 += 8;
            v11 += 12;
          }

          while (v12 != v10);
        }
      }
    }

    else
    {
      v13 = *(result + 24);
      if (v13 >= 1)
      {
        v14 = 0;
        v16 = v3 > 0 && v2 > 0;
        do
        {
          v17 = *(*result + 8 * v14);
          v18 = v17[2];
          if (v18)
          {
            if (v16)
            {
              v19 = v17[8];
              v20 = v17[9] - 8;
              v21 = v19 - 4;
              v22 = v3;
              v23 = v2;
              do
              {
                v24 = *(v21 + 4 * v22);
                v25 = v23 / v24;
                v18 += *(v20 + 8 * v22) * (v23 % v24);
                if (v22 < 2)
                {
                  break;
                }

                --v22;
                v23 /= v24;
              }

              while (v25 > 0);
            }

            v26 = *(result + 16);
            if (v26)
            {
              *(v26 + 8 * v14) = v18;
            }

            v27 = *(result + 8);
            if (v27)
            {
              *(v27 + 96 * v14 + 16) = v18;
            }
          }

          ++v14;
        }

        while (v14 != v13);
      }
    }
  }

  return result;
}

uint64_t cv::transposeI_8u(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 1;
    v7 = (this + 1);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          this = *v9;
          *v8++ = this;
          *v9 = v11;
          v9 = &a2[v9];
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

uint64_t cv::transposeI_16u(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 2;
    v7 = (this + 2);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          this = *v9;
          *v8 = this;
          v8 += 2;
          *v9 = v11;
          v9 = &a2[v9];
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

uint64_t cv::transposeI_8uC3(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = &a2[this];
    v7 = a2 + 3;
    v8 = (this + 3);
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = v9[2];
          this = *v9;
          v13 = v10[2];
          *v9 = *v10;
          v9[2] = v13;
          *v10 = this;
          v10[2] = v12;
          v10 = &a2[v10];
          v9 += 3;
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 = &v7[v6];
      v8 = &v7[v8];
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t cv::transposeI_32s(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 4;
    v7 = (this + 4);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          this = *v9;
          *v8 = this;
          v8 += 4;
          *v9 = v11;
          v9 = &a2[v9];
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

uint64_t cv::transposeI_16uC3(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = &a2[this];
    v7 = a2 + 6;
    v8 = (this + 6);
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *(v9 + 2);
          this = *v9;
          v13 = *(v10 + 2);
          *v9 = *v10;
          *(v9 + 2) = v13;
          *v10 = this;
          *(v10 + 2) = v12;
          v10 = &a2[v10];
          v9 += 6;
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 = &v7[v6];
      v8 = &v7[v8];
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t cv::transposeI_32sC2(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 8;
    v7 = (this + 8);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          this = *v9;
          *v8++ = *v9;
          *v9 = v11;
          v9 = &a2[v9];
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

uint64_t cv::transposeI_32sC3(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3;
    v5 = a3 - 1;
    v6 = &a2[this];
    v7 = a2 + 12;
    v8 = this + 12;
    do
    {
      if (++v3 < v4)
      {
        v9 = v8;
        v10 = v6;
        v11 = v5;
        do
        {
          v12 = *(v9 + 8);
          this = *v9;
          v13 = *(v10 + 2);
          *v9 = *v10;
          *(v9 + 8) = v13;
          *v10 = this;
          *(v10 + 2) = v12;
          v10 = &a2[v10];
          v9 += 12;
          --v11;
        }

        while (v11);
      }

      --v5;
      v6 = &v7[v6];
      v8 += v7;
    }

    while (v3 != v4);
  }

  return this;
}

uint64_t cv::transposeI_32sC4(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 16;
    v7 = (this + 16);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *v8;
          *v8 = *v9;
          v8 += 16;
          *v9 = v11;
          v9 = &a2[v9];
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

uint64_t cv::transposeI_32sC6(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 24;
    v7 = (this + 24);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v11 = *(v8 + 2);
          v12 = *v8;
          this = *(v9 + 2);
          *v8 = *v9;
          *(v8 + 2) = this;
          *v9 = v12;
          *(v9 + 2) = v11;
          v9 = &a2[v9];
          v8 += 24;
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

uint64_t cv::transposeI_32sC8(uint64_t this, unsigned __int8 *a2, int a3)
{
  if (a3 >= 1)
  {
    v3 = 0;
    v4 = a3 - 1;
    v5 = &a2[this];
    v6 = a2 + 32;
    v7 = (this + 32);
    do
    {
      if (++v3 < a3)
      {
        v8 = v7;
        v9 = v5;
        v10 = v4;
        do
        {
          v12 = *v8;
          v11 = *(v8 + 1);
          v13 = *(v9 + 1);
          *v8 = *v9;
          *(v8 + 1) = v13;
          v8 += 32;
          *v9 = v12;
          *(v9 + 1) = v11;
          v9 = &a2[v9];
          --v10;
        }

        while (v10);
      }

      --v4;
      v5 = &v6[v5];
      v7 = &v6[v7];
    }

    while (v3 != a3);
  }

  return this;
}

_BYTE *cv::transpose_8u(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  if (v5 >= 4)
  {
    v10 = 0;
    v42 = *a5;
    v11 = (v5 - 4);
    v12 = 4 * a4;
    v13 = a2 + 3;
    v14 = 2 * a2 + 3;
    v15 = a3 + 3 * a4;
    v16 = a3 + a4;
    v17 = result;
    v18 = a3;
    v19 = a3 + 2 * a4;
    do
    {
      if (v6 >= 4)
      {
        v20 = 0;
        v21 = v17;
        do
        {
          v22 = (v18 + v20);
          *v22 = *v21;
          v22[1] = v21[a2];
          v22[2] = v21[2 * a2];
          v22[3] = v21[3 * a2];
          v23 = (v18 + v20 + a4);
          *v23 = v21[1];
          v23[1] = v21[v13 - 2];
          v23[2] = v21[v14 - 2];
          v23[3] = v21[v9 + 1];
          v24 = &v23[a4];
          *v24 = v21[2];
          v24[1] = v21[v13 - 1];
          v24[2] = v21[v14 - 1];
          v24[3] = v21[v9 + 2];
          v25 = &v24[a4];
          *v25 = v21[3];
          v25[1] = v21[v13];
          v25[2] = v21[v14];
          v25[3] = v21[v9 + 3];
          v20 += 4;
          v21 += v8;
        }

        while (v20 <= v6 - 4);
        v20 = v20;
      }

      else
      {
        v20 = 0;
      }

      if (v20 < v7)
      {
        v26 = a2 * v20;
        v27 = v18;
        v28 = v16;
        v29 = v19;
        v30 = v15;
        v31 = v6;
        do
        {
          *(v27 + v20) = v17[v26];
          *(v28 + v20) = v17[v26 + 1];
          *(v29 + v20) = v17[v26 + 2];
          *(v30 + v20) = v17[v26 + 3];
          --v31;
          ++v30;
          ++v29;
          ++v28;
          ++v27;
          v26 += a2;
        }

        while (v20 != v31);
      }

      v10 += 4;
      v18 += v12;
      v17 += 4;
      v15 += v12;
      v19 += v12;
      v16 += v12;
    }

    while (v10 <= v11);
    v5 = v42;
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < v5)
  {
    v32 = v10;
    v33 = &result[v10];
    v34 = a3 + a4 * v32;
    result = (v34 + 1);
    do
    {
      if (v6 >= 4)
      {
        v36 = 0;
        v37 = v33;
        do
        {
          v38 = &result[v36];
          *(v38 - 1) = *v37;
          *v38 = v37[a2];
          v38[1] = v37[2 * a2];
          v38[2] = v37[3 * a2];
          v36 += 4;
          v37 += v8;
        }

        while (v36 <= v6 - 4);
        v35 = v36;
      }

      else
      {
        v35 = 0;
      }

      if (v35 < v7)
      {
        v39 = v6 - v35;
        v40 = (v34 + v35);
        v41 = a2 * v35;
        do
        {
          *v40++ = v33[v41];
          v41 += a2;
          --v39;
        }

        while (v39);
      }

      ++v32;
      ++v33;
      result += a4;
      v34 += a4;
    }

    while (v32 != v5);
  }

  return result;
}

_WORD *cv::transpose_16u(_WORD *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  if (v5 >= 4)
  {
    v10 = 0;
    v11 = 4 * a4;
    v12 = a2 + 6;
    v13 = 2 * a2 + 6;
    v14 = a3 + 3 * a4;
    v15 = a3 + a4;
    v16 = result;
    v17 = a3;
    v18 = a3 + 2 * a4;
    do
    {
      if (v6 >= 4)
      {
        v19 = 0;
        v20 = v16;
        do
        {
          v21 = (v17 + 2 * v19);
          *v21 = *v20;
          v21[1] = *(v20 + a2);
          v21[2] = v20[a2];
          v21[3] = *(v20 + 3 * a2);
          v22 = (v21 + a4);
          *v22 = v20[1];
          v22[1] = *(v20 + v12 - 4);
          v22[2] = *(v20 + v13 - 4);
          v22[3] = *(v20 + v9 + 2);
          v23 = (v22 + a4);
          *v23 = v20[2];
          v23[1] = *(v20 + v12 - 2);
          v23[2] = *(v20 + v13 - 2);
          v23[3] = *(v20 + v9 + 4);
          v24 = (v23 + a4);
          *v24 = v20[3];
          v24[1] = *(v20 + v12);
          v24[2] = *(v20 + v13);
          v24[3] = *(v20 + v9 + 6);
          v19 += 4;
          v20 = (v20 + v8);
        }

        while (v19 <= v6 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v7)
      {
        v25 = a2 * v19;
        do
        {
          *(v17 + 2 * v19) = *(v16 + v25);
          *(v15 + 2 * v19) = *(v16 + v25 + 2);
          *(v18 + 2 * v19) = *(v16 + v25 + 4);
          *(v14 + 2 * v19++) = *(v16 + v25 + 6);
          v25 += a2;
        }

        while (v6 != v19);
      }

      v10 += 4;
      v17 += v11;
      v16 += 4;
      v14 += v11;
      v18 += v11;
      v15 += v11;
    }

    while (v10 <= (v5 - 4));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < v5)
  {
    v26 = v10;
    v27 = &result[v10];
    v28 = a3 + a4 * v26;
    v29 = (v28 + 4);
    do
    {
      if (v6 >= 4)
      {
        result = 0;
        v31 = v29;
        v32 = v27;
        do
        {
          *(v31 - 2) = *v32;
          *(v31 - 1) = *(v32 + a2);
          *v31 = v32[a2];
          v31[1] = *(v32 + 3 * a2);
          result += 2;
          v32 = (v32 + v8);
          v31 += 4;
        }

        while (result <= v6 - 4);
        v30 = result;
      }

      else
      {
        v30 = 0;
      }

      if (v30 < v7)
      {
        result = (v6 - v30);
        v33 = (v28 + 2 * v30);
        v34 = a2 * v30;
        do
        {
          *v33++ = *(v27 + v34);
          v34 += a2;
          result = (result - 1);
        }

        while (result);
      }

      ++v26;
      ++v27;
      v29 = (v29 + a4);
      v28 += a4;
    }

    while (v26 != v5);
  }

  return result;
}

__int16 *cv::transpose_8uC3(__int16 *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  v10 = a2;
  if (v5 >= 4)
  {
    v11 = 0;
    v70 = a3;
    v71 = *a5;
    v12 = (v5 - 4);
    v13 = 4 * a4;
    v14 = a2 + 9;
    v15 = v10 * 2 + 9;
    v16 = a3 + 3 * a4;
    v17 = a3 + a4;
    v69 = result;
    v18 = result;
    v19 = a3;
    v20 = a3 + 2 * a4;
    v21 = v12;
    do
    {
      if (v6 >= 4)
      {
        v23 = 0;
        v24 = v18;
        v25 = v19;
        do
        {
          v26 = *v24;
          *(v25 + 2) = *(v24 + 2);
          *v25 = v26;
          v27 = *(v24 + a2);
          *(v25 + 5) = *(v24 + v14 - 7);
          *(v25 + 3) = v27;
          v28 = v24[a2];
          *(v25 + 8) = *(v24 + v15 - 7);
          *(v25 + 6) = v28;
          v29 = *(v24 + 3 * a2);
          *(v25 + 11) = *(v24 + v9 + 2);
          *(v25 + 9) = v29;
          v30 = v25 + a4;
          v31 = *(v24 + 3);
          *(v30 + 2) = *(v24 + 5);
          *v30 = v31;
          v32 = *(v24 + v14 - 6);
          *(v30 + 5) = *(v24 + v14 - 4);
          *(v30 + 3) = v32;
          v33 = *(v24 + v15 - 6);
          *(v30 + 8) = *(v24 + v15 - 4);
          *(v30 + 6) = v33;
          v34 = *(v24 + v9 + 3);
          *(v30 + 11) = *(v24 + v9 + 5);
          *(v30 + 9) = v34;
          v35 = v25 + a4 + a4;
          LOWORD(v30) = v24[3];
          *(v35 + 2) = *(v24 + 8);
          *v35 = v30;
          LOWORD(v30) = *(v24 + v14 - 3);
          *(v35 + 5) = *(v24 + v14 - 1);
          *(v35 + 3) = v30;
          LOWORD(v30) = *(v24 + v15 - 3);
          *(v35 + 8) = *(v24 + v15 - 1);
          *(v35 + 6) = v30;
          LOWORD(v30) = *(v24 + v9 + 6);
          *(v35 + 11) = *(v24 + v9 + 8);
          *(v35 + 9) = v30;
          v36 = v35 + a4;
          LOWORD(v30) = *(v24 + 9);
          *(v36 + 2) = *(v24 + 11);
          *v36 = v30;
          LOWORD(v30) = *(v24 + v14);
          *(v36 + 5) = *(v24 + v14 + 2);
          *(v36 + 3) = v30;
          v37 = *(v24 + v15);
          *(v36 + 8) = *(v24 + v15 + 2);
          *(v36 + 6) = v37;
          v38 = *(v24 + v9 + 9);
          *(v36 + 11) = *(v24 + v9 + 11);
          *(v36 + 9) = v38;
          v23 += 4;
          v25 += 12;
          v24 = (v24 + v8);
        }

        while (v23 <= v6 - 4);
        v22 = v23;
      }

      else
      {
        v22 = 0;
      }

      if (v22 < v7)
      {
        v39 = v6 - v22;
        v40 = a2 * v22;
        v41 = v19;
        v42 = v17;
        v43 = v20;
        v44 = v16;
        v45 = 3 * v22;
        do
        {
          v46 = v41 + v45;
          v47 = *(v18 + v40);
          *(v46 + 2) = *(v18 + v40 + 2);
          *v46 = v47;
          v48 = v42 + v45;
          v49 = *(v18 + v40 + 3);
          *(v48 + 2) = *(v18 + v40 + 5);
          *v48 = v49;
          v50 = v43 + v45;
          v51 = *(v18 + v40 + 6);
          *(v50 + 2) = *(v18 + v40 + 8);
          *v50 = v51;
          v52 = v44 + v45;
          v53 = *(v18 + v40 + 9);
          v44 += 3;
          v43 += 3;
          *(v52 + 2) = *(v18 + v40 + 11);
          *v52 = v53;
          v42 += 3;
          v41 += 3;
          v40 += a2;
          --v39;
        }

        while (v39);
      }

      v11 += 4;
      v19 += v13;
      v18 += 6;
      v16 += v13;
      v20 += v13;
      v17 += v13;
    }

    while (v11 <= v21);
    a3 = v70;
    v5 = v71;
    result = v69;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 < v5)
  {
    v54 = v11;
    v55 = (result + 3 * v11);
    v56 = a3 + a4 * v54;
    result = (v56 + 6);
    do
    {
      if (v6 >= 4)
      {
        v58 = 0;
        v59 = result;
        v60 = v55;
        do
        {
          v61 = *v60;
          *(v59 - 4) = *(v60 + 2);
          *(v59 - 3) = v61;
          v62 = *(v60 + a2);
          *(v59 - 1) = *(v60 + a2 + 2);
          *(v59 - 3) = v62;
          v63 = v60[a2];
          *(v59 + 2) = v60[v10 + 1];
          *v59 = v63;
          v64 = *(v60 + 3 * a2);
          *(v59 + 5) = *(v60 + v9 + 2);
          *(v59 + 3) = v64;
          v58 += 4;
          v60 = (v60 + v8);
          v59 += 6;
        }

        while (v58 <= v6 - 4);
        v57 = v58;
      }

      else
      {
        v57 = 0;
      }

      if (v57 < v7)
      {
        v65 = v6 - v57;
        v66 = v56 + 3 * v57;
        v67 = a2 * v57;
        do
        {
          v68 = *(v55 + v67);
          *(v66 + 2) = *(v55 + v67 + 2);
          *v66 = v68;
          v66 += 3;
          v67 += a2;
          --v65;
        }

        while (v65);
      }

      ++v54;
      v55 = (v55 + 3);
      result = (result + a4);
      v56 += a4;
    }

    while (v54 != v5);
  }

  return result;
}

_DWORD *cv::transpose_32s(_DWORD *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  if (v5 >= 4)
  {
    v10 = 0;
    v11 = 4 * a4;
    v12 = a2 + 12;
    v13 = 2 * a2 + 12;
    v14 = a3 + 3 * a4;
    v15 = a3 + a4;
    v16 = result;
    v17 = a3;
    v18 = a3 + 2 * a4;
    do
    {
      if (v6 >= 4)
      {
        v19 = 0;
        v20 = v16;
        do
        {
          v21 = (v17 + 4 * v19);
          *v21 = *v20;
          v21[1] = *(v20 + a2);
          v21[2] = *(v20 + 2 * a2);
          v21[3] = *(v20 + 3 * a2);
          v22 = (v21 + a4);
          *v22 = v20[1];
          v22[1] = *(v20 + v12 - 8);
          v22[2] = *(v20 + v13 - 8);
          v22[3] = *(v20 + v9 + 4);
          v23 = (v22 + a4);
          *v23 = v20[2];
          v23[1] = *(v20 + v12 - 4);
          v23[2] = *(v20 + v13 - 4);
          v23[3] = *(v20 + v9 + 8);
          v24 = (v23 + a4);
          *v24 = v20[3];
          v24[1] = *(v20 + v12);
          v24[2] = *(v20 + v13);
          v24[3] = *(v20 + v9 + 12);
          v19 += 4;
          v20 = (v20 + v8);
        }

        while (v19 <= v6 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v7)
      {
        v25 = a2 * v19;
        do
        {
          *(v17 + 4 * v19) = *(v16 + v25);
          *(v15 + 4 * v19) = *(v16 + v25 + 4);
          *(v18 + 4 * v19) = *(v16 + v25 + 8);
          *(v14 + 4 * v19++) = *(v16 + v25 + 12);
          v25 += a2;
        }

        while (v6 != v19);
      }

      v10 += 4;
      v17 += v11;
      v16 += 4;
      v14 += v11;
      v18 += v11;
      v15 += v11;
    }

    while (v10 <= (v5 - 4));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < v5)
  {
    v26 = v10;
    v27 = &result[v10];
    v28 = a3 + a4 * v26;
    result = (v28 + 8);
    do
    {
      if (v6 >= 4)
      {
        v30 = 0;
        v31 = result;
        v32 = v27;
        do
        {
          *(v31 - 2) = *v32;
          *(v31 - 1) = *(v32 + a2);
          *v31 = *(v32 + 2 * a2);
          v31[1] = *(v32 + 3 * a2);
          v30 += 4;
          v32 = (v32 + v8);
          v31 += 4;
        }

        while (v30 <= v6 - 4);
        v29 = v30;
      }

      else
      {
        v29 = 0;
      }

      if (v29 < v7)
      {
        v33 = v6 - v29;
        v34 = (v28 + 4 * v29);
        v35 = a2 * v29;
        do
        {
          *v34++ = *(v27 + v35);
          v35 += a2;
          --v33;
        }

        while (v33);
      }

      ++v26;
      ++v27;
      result = (result + a4);
      v28 += a4;
    }

    while (v26 != v5);
  }

  return result;
}

int *cv::transpose_16uC3(int *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  v10 = 2 * a2;
  if (v5 >= 4)
  {
    v11 = 0;
    v69 = a3;
    v70 = *a5;
    v12 = 4 * a4;
    v13 = a2 + 18;
    v14 = v10 + 18;
    v15 = a3 + 3 * a4;
    v16 = a3 + a4;
    v68 = result;
    v17 = result;
    v18 = a3;
    v19 = a3 + 2 * a4;
    v20 = (v5 - 4);
    do
    {
      if (v6 >= 4)
      {
        v22 = 0;
        v23 = v17;
        v24 = v18;
        do
        {
          v25 = *v23;
          *(v24 + 4) = *(v23 + 2);
          *v24 = v25;
          v26 = *(v23 + a2);
          *(v24 + 10) = *(v23 + v13 - 14);
          *(v24 + 6) = v26;
          v27 = *(v23 + 2 * a2);
          *(v24 + 16) = *(v23 + v14 - 14);
          *(v24 + 12) = v27;
          v28 = *(v23 + 3 * a2);
          *(v24 + 22) = *(v23 + v9 + 4);
          *(v24 + 18) = v28;
          v29 = v24 + a4;
          v30 = *(v23 + 6);
          *(v29 + 4) = *(v23 + 5);
          *v29 = v30;
          v31 = *(v23 + v13 - 12);
          *(v29 + 10) = *(v23 + v13 - 8);
          *(v29 + 6) = v31;
          v32 = *(v23 + v14 - 12);
          *(v29 + 16) = *(v23 + v14 - 8);
          *(v29 + 12) = v32;
          v33 = *(v23 + v9 + 6);
          *(v29 + 22) = *(v23 + v9 + 10);
          *(v29 + 18) = v33;
          v34 = v24 + a4 + a4;
          LODWORD(v29) = v23[3];
          *(v34 + 4) = *(v23 + 8);
          *v34 = v29;
          LODWORD(v29) = *(v23 + v13 - 6);
          *(v34 + 10) = *(v23 + v13 - 2);
          *(v34 + 6) = v29;
          LODWORD(v29) = *(v23 + v14 - 6);
          *(v34 + 16) = *(v23 + v14 - 2);
          *(v34 + 12) = v29;
          LODWORD(v29) = *(v23 + v9 + 12);
          *(v34 + 22) = *(v23 + v9 + 16);
          *(v34 + 18) = v29;
          v35 = v34 + a4;
          LODWORD(v29) = *(v23 + 18);
          *(v35 + 4) = *(v23 + 11);
          *v35 = v29;
          LODWORD(v29) = *(v23 + v13);
          *(v35 + 10) = *(v23 + v13 + 4);
          *(v35 + 6) = v29;
          v36 = *(v23 + v14);
          *(v35 + 16) = *(v23 + v14 + 4);
          *(v35 + 12) = v36;
          v37 = *(v23 + v9 + 18);
          *(v35 + 22) = *(v23 + v9 + 22);
          *(v35 + 18) = v37;
          v22 += 4;
          v24 += 24;
          v23 = (v23 + v8);
        }

        while (v22 <= v6 - 4);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < v7)
      {
        v38 = v6 - v21;
        v39 = 6 * v21;
        v40 = a2 * v21;
        v41 = v18;
        v42 = v16;
        v43 = v19;
        v44 = v15;
        do
        {
          v45 = v41 + v39;
          v46 = *(v17 + v40);
          *(v45 + 4) = *(v17 + v40 + 4);
          *v45 = v46;
          v47 = v42 + v39;
          v48 = *(v17 + v40 + 6);
          *(v47 + 4) = *(v17 + v40 + 10);
          *v47 = v48;
          v49 = v43 + v39;
          v50 = *(v17 + v40 + 12);
          *(v49 + 4) = *(v17 + v40 + 16);
          *v49 = v50;
          v51 = v44 + v39;
          v52 = *(v17 + v40 + 18);
          v44 += 6;
          v43 += 6;
          *(v51 + 4) = *(v17 + v40 + 22);
          *v51 = v52;
          v42 += 6;
          v41 += 6;
          v40 += a2;
          --v38;
        }

        while (v38);
      }

      v11 += 4;
      v18 += v12;
      v17 += 6;
      v15 += v12;
      v19 += v12;
      v16 += v12;
    }

    while (v11 <= v20);
    a3 = v69;
    v5 = v70;
    result = v68;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 < v5)
  {
    v53 = v11;
    v54 = (result + 6 * v11);
    result = (a3 + a4 * v53);
    v55 = result + 3;
    do
    {
      if (v6 >= 4)
      {
        v57 = 0;
        v58 = v55;
        v59 = v54;
        do
        {
          v60 = *v59;
          *(v58 - 4) = *(v59 + 2);
          *(v58 - 3) = v60;
          v61 = *(v59 + a2);
          *(v58 - 1) = *(v59 + a2 + 4);
          *(v58 - 6) = v61;
          v62 = *(v59 + 2 * a2);
          *(v58 + 2) = *(v59 + v10 + 4);
          *v58 = v62;
          v63 = *(v59 + 3 * a2);
          *(v58 + 5) = *(v59 + v9 + 4);
          *(v58 + 6) = v63;
          v57 += 4;
          v59 = (v59 + v8);
          v58 += 6;
        }

        while (v57 <= v6 - 4);
        v56 = v57;
      }

      else
      {
        v56 = 0;
      }

      if (v56 < v7)
      {
        v64 = v6 - v56;
        v65 = result + 6 * v56;
        v66 = a2 * v56;
        do
        {
          v67 = *(v54 + v66);
          *(v65 + 4) = *(v54 + v66 + 4);
          *v65 = v67;
          v65 += 6;
          v66 += a2;
          --v64;
        }

        while (v64);
      }

      ++v53;
      v54 = (v54 + 6);
      v55 = (v55 + a4);
      result = (result + a4);
    }

    while (v53 != v5);
  }

  return result;
}

void *cv::transpose_32sC2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  if (v5 >= 4)
  {
    v10 = 0;
    v11 = 4 * a4;
    v12 = a2 + 24;
    v13 = 2 * a2 + 24;
    v14 = a3 + 3 * a4;
    v15 = a3 + a4;
    v16 = result;
    v17 = a3;
    v18 = a3 + 2 * a4;
    do
    {
      if (v6 >= 4)
      {
        v19 = 0;
        v20 = v16;
        do
        {
          v21 = (v17 + 8 * v19);
          *v21 = *v20;
          v21[1] = *(v20 + a2);
          v21[2] = *(v20 + 2 * a2);
          v21[3] = *(v20 + 3 * a2);
          v22 = (v21 + a4);
          *v22 = v20[1];
          v22[1] = *(v20 + v12 - 16);
          v22[2] = *(v20 + v13 - 16);
          v22[3] = *(v20 + v9 + 8);
          v23 = (v22 + a4);
          *v23 = v20[2];
          v23[1] = *(v20 + v12 - 8);
          v23[2] = *(v20 + v13 - 8);
          v23[3] = *(v20 + v9 + 16);
          v24 = (v23 + a4);
          *v24 = v20[3];
          v24[1] = *(v20 + v12);
          v24[2] = *(v20 + v13);
          v24[3] = *(v20 + v9 + 24);
          v19 += 4;
          v20 = (v20 + v8);
        }

        while (v19 <= v6 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v7)
      {
        v25 = a2 * v19;
        do
        {
          *(v17 + 8 * v19) = *(v16 + v25);
          *(v15 + 8 * v19) = *(v16 + v25 + 8);
          *(v18 + 8 * v19) = *(v16 + v25 + 16);
          *(v14 + 8 * v19++) = *(v16 + v25 + 24);
          v25 += a2;
        }

        while (v6 != v19);
      }

      v10 += 4;
      v17 += v11;
      v16 += 4;
      v14 += v11;
      v18 += v11;
      v15 += v11;
    }

    while (v10 <= (v5 - 4));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < v5)
  {
    v26 = v10;
    v27 = &result[v10];
    v28 = a3 + a4 * v26;
    result = (v28 + 16);
    do
    {
      if (v6 >= 4)
      {
        v30 = 0;
        v31 = result;
        v32 = v27;
        do
        {
          *(v31 - 2) = *v32;
          *(v31 - 1) = *(v32 + a2);
          *v31 = *(v32 + 2 * a2);
          v31[1] = *(v32 + 3 * a2);
          v30 += 4;
          v32 = (v32 + v8);
          v31 += 4;
        }

        while (v30 <= v6 - 4);
        v29 = v30;
      }

      else
      {
        v29 = 0;
      }

      if (v29 < v7)
      {
        v33 = v6 - v29;
        v34 = (v28 + 8 * v29);
        v35 = a2 * v29;
        do
        {
          *v34++ = *(v27 + v35);
          v35 += a2;
          --v33;
        }

        while (v33);
      }

      ++v26;
      ++v27;
      result = (result + a4);
      v28 += a4;
    }

    while (v26 != v5);
  }

  return result;
}

uint64_t *cv::transpose_32sC3(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  v10 = 2 * a2;
  if (v5 >= 4)
  {
    v11 = 0;
    v75 = a3;
    v76 = *a5;
    v12 = 4 * a4;
    v13 = a2 + 36;
    v14 = v10 + 36;
    v15 = a3 + 3 * a4;
    v16 = a3 + a4;
    v74 = result;
    v17 = result;
    v18 = a3;
    v19 = a3 + 2 * a4;
    v20 = (v5 - 4);
    do
    {
      if (v6 >= 4)
      {
        v22 = 0;
        v23 = v17;
        v24 = v18;
        do
        {
          v25 = *v23;
          *(v24 + 8) = *(v23 + 2);
          *v24 = v25;
          v26 = *(v23 + a2);
          *(v24 + 20) = *(v23 + v13 - 28);
          *(v24 + 12) = v26;
          v27 = *(v23 + 2 * a2);
          *(v24 + 32) = *(v23 + v14 - 28);
          *(v24 + 24) = v27;
          v28 = *(v23 + 3 * a2);
          *(v24 + 44) = *(v23 + v9 + 8);
          *(v24 + 36) = v28;
          v29 = v24 + a4;
          v30 = *(v23 + 12);
          *(v29 + 8) = *(v23 + 5);
          *v29 = v30;
          v31 = *(v23 + v13 - 24);
          *(v29 + 20) = *(v23 + v13 - 16);
          *(v29 + 12) = v31;
          v32 = *(v23 + v14 - 24);
          *(v29 + 32) = *(v23 + v14 - 16);
          *(v29 + 24) = v32;
          v33 = *(v23 + v9 + 12);
          *(v29 + 44) = *(v23 + v9 + 20);
          *(v29 + 36) = v33;
          v34 = v24 + a4 + a4;
          v35 = v23[3];
          *(v34 + 8) = *(v23 + 8);
          *v34 = v35;
          v36 = *(v23 + v13 - 12);
          *(v34 + 20) = *(v23 + v13 - 4);
          *(v34 + 12) = v36;
          v37 = *(v23 + v14 - 12);
          *(v34 + 32) = *(v23 + v14 - 4);
          *(v34 + 24) = v37;
          v38 = *(v23 + v9 + 24);
          *(v34 + 44) = *(v23 + v9 + 32);
          *(v34 + 36) = v38;
          v39 = v34 + a4;
          v40 = *(v23 + 36);
          *(v39 + 8) = *(v23 + 11);
          *v39 = v40;
          v41 = *(v23 + v13);
          *(v39 + 20) = *(v23 + v13 + 8);
          *(v39 + 12) = v41;
          v42 = *(v23 + v14);
          *(v39 + 32) = *(v23 + v14 + 8);
          *(v39 + 24) = v42;
          v43 = *(v23 + v9 + 36);
          *(v39 + 44) = *(v23 + v9 + 44);
          *(v39 + 36) = v43;
          v22 += 4;
          v24 += 48;
          v23 = (v23 + v8);
        }

        while (v22 <= v6 - 4);
        v21 = v22;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < v7)
      {
        v44 = v6 - v21;
        v45 = 12 * v21;
        v46 = a2 * v21;
        v47 = v18;
        v48 = v16;
        v49 = v19;
        v50 = v15;
        do
        {
          v51 = v47 + v45;
          v52 = *(v17 + v46);
          *(v51 + 8) = *(v17 + v46 + 8);
          *v51 = v52;
          v53 = v48 + v45;
          v54 = *(v17 + v46 + 12);
          *(v53 + 8) = *(v17 + v46 + 20);
          *v53 = v54;
          v55 = v49 + v45;
          v56 = *(v17 + v46 + 24);
          *(v55 + 8) = *(v17 + v46 + 32);
          *v55 = v56;
          v57 = v50 + v45;
          v58 = *(v17 + v46 + 36);
          v50 += 12;
          v49 += 12;
          *(v57 + 8) = *(v17 + v46 + 44);
          *v57 = v58;
          v48 += 12;
          v47 += 12;
          v46 += a2;
          --v44;
        }

        while (v44);
      }

      v11 += 4;
      v18 += v12;
      v17 += 6;
      v15 += v12;
      v19 += v12;
      v16 += v12;
    }

    while (v11 <= v20);
    a3 = v75;
    v5 = v76;
    result = v74;
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 < v5)
  {
    v59 = v11;
    v60 = (result + 12 * v11);
    result = (a3 + a4 * v59);
    v61 = result + 3;
    do
    {
      if (v6 >= 4)
      {
        v63 = 0;
        v64 = v61;
        v65 = v60;
        do
        {
          v66 = *v65;
          *(v64 - 4) = *(v65 + 2);
          *(v64 - 3) = v66;
          v67 = *(v65 + a2);
          *(v64 - 1) = *(v65 + a2 + 8);
          *(v64 - 12) = v67;
          v68 = *(v65 + 2 * a2);
          *(v64 + 2) = *(v65 + v10 + 8);
          *v64 = v68;
          v69 = *(v65 + 3 * a2);
          *(v64 + 5) = *(v65 + v9 + 8);
          *(v64 + 12) = v69;
          v63 += 4;
          v65 = (v65 + v8);
          v64 += 6;
        }

        while (v63 <= v6 - 4);
        v62 = v63;
      }

      else
      {
        v62 = 0;
      }

      if (v62 < v7)
      {
        v70 = v6 - v62;
        v71 = result + 12 * v62;
        v72 = a2 * v62;
        do
        {
          v73 = *(v60 + v72);
          *(v71 + 8) = *(v60 + v72 + 8);
          *v71 = v73;
          v71 += 12;
          v72 += a2;
          --v70;
        }

        while (v70);
      }

      ++v59;
      v60 = (v60 + 12);
      v61 = (v61 + a4);
      result = (result + a4);
    }

    while (v59 != v5);
  }

  return result;
}

_OWORD *cv::transpose_32sC4(_OWORD *result, uint64_t a2, _OWORD *a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = a5[1];
  v8 = 4 * a2;
  v9 = 3 * a2;
  if (v5 >= 4)
  {
    v10 = 0;
    v11 = 4 * a4;
    v12 = a2 + 48;
    v13 = 2 * a2 + 48;
    v14 = a3 + 3 * a4;
    v15 = a3 + a4;
    v16 = result;
    v17 = a3;
    v18 = a3 + 2 * a4;
    do
    {
      if (v6 >= 4)
      {
        v20 = 0;
        v21 = v16;
        v22 = v17;
        do
        {
          *v22 = *v21;
          v22[1] = *(v21 + a2);
          v22[2] = *(v21 + 2 * a2);
          v22[3] = *(v21 + 3 * a2);
          v23 = (v22 + a4);
          *v23 = v21[1];
          v23[1] = *(v21 + v12 - 32);
          v23[2] = *(v21 + v13 - 32);
          v23[3] = *(v21 + v9 + 16);
          v24 = (v22 + a4 + a4);
          *v24 = v21[2];
          v24[1] = *(v21 + v12 - 16);
          v24[2] = *(v21 + v13 - 16);
          v24[3] = *(v21 + v9 + 32);
          v25 = (v24 + a4);
          *v25 = v21[3];
          v25[1] = *(v21 + v12);
          v25[2] = *(v21 + v13);
          v25[3] = *(v21 + v9 + 48);
          v20 += 4;
          v22 += 4;
          v21 = (v21 + v8);
        }

        while (v20 <= v6 - 4);
        v19 = v20;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v7)
      {
        v26 = v6 - v19;
        v27 = 16 * v19;
        v28 = a2 * v19;
        v29 = v17;
        v30 = v15;
        v31 = v18;
        v32 = v14;
        do
        {
          v29[v27 / 0x10] = *(v16 + v28);
          *(v30 + v27) = *(v16 + v28 + 16);
          *(v31 + v27) = *(v16 + v28 + 32);
          *(v32 + v27) = *(v16 + v28 + 48);
          v32 += 16;
          v31 += 16;
          v30 += 16;
          ++v29;
          v28 += a2;
          --v26;
        }

        while (v26);
      }

      v10 += 4;
      v17 = (v17 + v11);
      v16 += 4;
      v14 += v11;
      v18 += v11;
      v15 += v11;
    }

    while (v10 <= (v5 - 4));
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 < v5)
  {
    v33 = v10;
    v34 = &result[v10];
    v35 = a3 + a4 * v33;
    result = (v35 + 32);
    do
    {
      if (v6 >= 4)
      {
        v37 = 0;
        v38 = result;
        v39 = v34;
        do
        {
          *(v38 - 2) = *v39;
          *(v38 - 1) = *(v39 + a2);
          *v38 = *(v39 + 2 * a2);
          v38[1] = *(v39 + 3 * a2);
          v37 += 4;
          v39 = (v39 + v8);
          v38 += 4;
        }

        while (v37 <= v6 - 4);
        v36 = v37;
      }

      else
      {
        v36 = 0;
      }

      if (v36 < v7)
      {
        v40 = v6 - v36;
        v41 = (v35 + 16 * v36);
        v42 = a2 * v36;
        do
        {
          *v41++ = *(v34 + v42);
          v42 += a2;
          --v40;
        }

        while (v40);
      }

      ++v33;
      ++v34;
      result = (result + a4);
      v35 += a4;
    }

    while (v33 != v5);
  }

  return result;
}

unint64_t cv::transpose_32sC6(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v5 = result;
  v6 = *a5;
  v7 = a5[1];
  v8 = a5[1];
  v9 = 4 * a2;
  v10 = 3 * a2;
  v11 = 2 * a2;
  if (v6 >= 4)
  {
    v12 = 0;
    v73 = result;
    v74 = *a5;
    result = (v6 - 4);
    v13 = 4 * a4;
    v14 = a2 + 72;
    v15 = v11 + 72;
    v16 = a3 + 3 * a4;
    v17 = a3 + a4;
    v18 = a3;
    v19 = a3 + 2 * a4;
    do
    {
      if (v7 >= 4)
      {
        v21 = 0;
        v22 = v5;
        v23 = v18;
        do
        {
          v24 = *v22;
          *(v23 + 16) = *(v22 + 2);
          *v23 = v24;
          v25 = *(v22 + a2);
          *(v23 + 40) = *(v22 + v14 - 56);
          *(v23 + 24) = v25;
          v26 = *(v22 + 2 * a2);
          *(v23 + 64) = *(v22 + v15 - 56);
          *(v23 + 48) = v26;
          v27 = *(v22 + 3 * a2);
          *(v23 + 88) = *(v22 + v10 + 16);
          *(v23 + 72) = v27;
          v28 = v23 + a4;
          v29 = *(v22 + 24);
          *(v28 + 16) = *(v22 + 5);
          *v28 = v29;
          v30 = *(v22 + v14 - 48);
          *(v28 + 40) = *(v22 + v14 - 32);
          *(v28 + 24) = v30;
          v31 = *(v22 + v15 - 48);
          *(v28 + 64) = *(v22 + v15 - 32);
          *(v28 + 48) = v31;
          v32 = *(v22 + v10 + 24);
          *(v28 + 88) = *(v22 + v10 + 40);
          *(v28 + 72) = v32;
          v33 = v23 + a4 + a4;
          v34 = v22[3];
          *(v33 + 16) = *(v22 + 8);
          *v33 = v34;
          v35 = *(v22 + v14 - 24);
          *(v33 + 40) = *(v22 + v14 - 8);
          *(v33 + 24) = v35;
          v36 = *(v22 + v15 - 24);
          *(v33 + 64) = *(v22 + v15 - 8);
          *(v33 + 48) = v36;
          v37 = *(v22 + v10 + 48);
          *(v33 + 88) = *(v22 + v10 + 64);
          *(v33 + 72) = v37;
          v38 = v33 + a4;
          v39 = *(v22 + 72);
          *(v38 + 16) = *(v22 + 11);
          *v38 = v39;
          v40 = *(v22 + v14);
          *(v38 + 40) = *(v22 + v14 + 16);
          *(v38 + 24) = v40;
          v41 = *(v22 + v15);
          *(v38 + 64) = *(v22 + v15 + 16);
          *(v38 + 48) = v41;
          v42 = *(v22 + v10 + 72);
          *(v38 + 88) = *(v22 + v10 + 88);
          *(v38 + 72) = v42;
          v21 += 4;
          v23 += 96;
          v22 = (v22 + v9);
        }

        while (v21 <= v7 - 4);
        v20 = v21;
      }

      else
      {
        v20 = 0;
      }

      if (v20 < v8)
      {
        v43 = v7 - v20;
        v44 = 24 * v20;
        v45 = a2 * v20;
        v46 = v18;
        v47 = v17;
        v48 = v19;
        v49 = v16;
        do
        {
          v50 = v46 + v44;
          v51 = *(v5 + v45);
          *(v50 + 16) = *(v5 + v45 + 16);
          *v50 = v51;
          v52 = v47 + v44;
          v53 = *(v5 + v45 + 24);
          *(v52 + 16) = *(v5 + v45 + 40);
          *v52 = v53;
          v54 = v48 + v44;
          v55 = *(v5 + v45 + 48);
          *(v54 + 16) = *(v5 + v45 + 64);
          *v54 = v55;
          v56 = v49 + v44;
          v57 = *(v5 + v45 + 72);
          v49 += 24;
          v48 += 24;
          *(v56 + 16) = *(v5 + v45 + 88);
          *v56 = v57;
          v47 += 24;
          v46 += 24;
          v45 += a2;
          --v43;
        }

        while (v43);
      }

      v12 += 4;
      v18 += v13;
      v5 += 6;
      v16 += v13;
      v19 += v13;
      v17 += v13;
    }

    while (v12 <= result);
    v5 = v73;
    v6 = v74;
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 < v6)
  {
    v58 = v12;
    v59 = (v5 + 24 * v12);
    result = a3 + a4 * v58;
    v60 = result + 48;
    do
    {
      if (v7 >= 4)
      {
        v62 = 0;
        v63 = v60;
        v64 = v59;
        do
        {
          v65 = *v64;
          *(v63 - 32) = *(v64 + 2);
          *(v63 - 48) = v65;
          v66 = *(v64 + a2);
          *(v63 - 8) = *(v64 + a2 + 16);
          *(v63 - 24) = v66;
          v67 = *(v64 + 2 * a2);
          *(v63 + 16) = *(v64 + v11 + 16);
          *v63 = v67;
          v68 = *(v64 + 3 * a2);
          *(v63 + 40) = *(v64 + v10 + 16);
          *(v63 + 24) = v68;
          v62 += 4;
          v64 = (v64 + v9);
          v63 += 96;
        }

        while (v62 <= v7 - 4);
        v61 = v62;
      }

      else
      {
        v61 = 0;
      }

      if (v61 < v8)
      {
        v69 = v7 - v61;
        v70 = result + 24 * v61;
        v71 = a2 * v61;
        do
        {
          v72 = *(v59 + v71);
          *(v70 + 16) = *(v59 + v71 + 16);
          *v70 = v72;
          v70 += 24;
          v71 += a2;
          --v69;
        }

        while (v69);
      }

      ++v58;
      v59 = (v59 + 24);
      v60 += a4;
      result += a4;
    }

    while (v58 != v6);
  }

  return result;
}