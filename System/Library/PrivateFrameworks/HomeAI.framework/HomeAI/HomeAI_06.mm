void sub_22D229674(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

cv::Mat *cv::Mat::operator=(cv::Mat *this, cv::Mat *a2)
{
  if (this != a2)
  {
    v4 = *(a2 + 3);
    if (v4)
    {
      atomic_fetch_add(v4, 1u);
    }

    v5 = *(this + 3);
    if (v5 && atomic_fetch_add(v5, 0xFFFFFFFF) == 1)
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
      v6 = 0;
      v7 = *(this + 8);
      do
      {
        *(v7 + 4 * v6++) = 0;
        v8 = *(this + 1);
      }

      while (v6 < v8);
      *(this + 3) = 0;
      *this = *a2;
      if (v8 > 2)
      {
        goto LABEL_15;
      }
    }

    v9 = *(a2 + 1);
    if (v9 <= 2)
    {
      *(this + 1) = v9;
      *(this + 1) = *(a2 + 1);
      v10 = *(a2 + 9);
      v11 = *(this + 9);
      *v11 = *v10;
      v11[1] = v10[1];
LABEL_16:
      *(this + 2) = *(a2 + 2);
      *(this + 6) = *(a2 + 6);
      *(this + 1) = *(a2 + 1);
      *(this + 7) = *(a2 + 7);
      return this;
    }

LABEL_15:
    cv::Mat::copySize(this, a2);
    goto LABEL_16;
  }

  return this;
}

_WORD *anonymous namespace::calcSharrDeriv(_anonymous_namespace_ *this, const cv::Mat *a2, cv::Mat *a3)
{
  v3 = MEMORY[0x28223BE20](this, a2);
  v83 = v4;
  v93 = *MEMORY[0x277D85DE8];
  v8 = v3[2];
  v9 = v3[3];
  v82 = v3;
  v10 = *v3;
  if ((v10 & 7) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v89, "depth == CV_8U");
    std::string::basic_string[abi:ne200100]<0>(v88, "calcSharrDeriv");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(v90, 4294967081, v89, v88, __p, 53);
    cv::error(v90, v11);
  }

  v12 = ((v10 >> 3) & 0x1FF) + 1;
  v13 = (16 * v12 + 4091) & 0xFFF;
  v15 = *(v4 + 4) <= 2 && *(v4 + 8) == v8 && *(v4 + 12) == v9;
  if (!v15 || ((*v4 & 0xFFF) == v13 ? (v16 = *(v4 + 16) == 0) : (v16 = 1), v16))
  {
    v90[0] = v3[2];
    v90[1] = v9;
    cv::Mat::create(v4, 2, v90, v13);
  }

  v17 = (v12 * (v9 + 2) + 15) & 0xFFFFFFF0;
  v18 = 2 * v17 + 64;
  *v90 = v92;
  v91 = 2056;
  result = v92;
  if (v18 >= 0x809)
  {
    v91 = v18;
    operator new[]();
  }

  if (v8 >= 1)
  {
    v20 = 0;
    v21 = (v12 * v9);
    v22 = (&v92[v12 + 7] + 1) & 0xFFFFFFFFFFFFFFF0;
    v23 = 2 * v17;
    v24 = v8 - 2;
    v80 = (v8 - 1);
    v79 = v8 != 1;
    if (v8 == 1)
    {
      v24 = 0;
    }

    v78 = v24;
    v25 = v9 - 2;
    v26 = v21 - 8;
    if (v9 <= 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = ((v10 >> 3) & 0x1FF) + 1;
    }

    v28 = v22 + 2 * v21;
    if (v9 <= 1)
    {
      v25 = 0;
    }

    v29 = v12 * v25;
    v77 = v22 + v23;
    v30 = v22 + v23 + 2 * v21;
    v31 = v22 + v23 + 2 * v29;
    v32 = v22 + v23 + 2 * v27;
    v33 = 2 * ((v10 >> 3) & 0x1FF);
    v34 = v33 ^ 0xFFFFFFFFFFFFFFFELL;
    v35 = v22 + (v33 ^ 0xFFFFFFFFFFFFFFFELL);
    v76 = (v10 >> 3) & 0x1FF;
    v36 = v23 - v33 - 2;
    v37 = v22 + v36;
    v38 = v33 + 2;
    v5.n128_u64[0] = 0x3000300030003;
    v5.n128_u64[1] = 0x3000300030003;
    v6.n128_u64[0] = 0xA000A000A000ALL;
    v6.n128_u64[1] = 0xA000A000A000ALL;
    v7.n128_u64[0] = 0xA0A0A0A0A0A0A0ALL;
    v39 = v33 + 2 + v23;
    v75 = v22 + 2;
    v74 = v22 + 2 + v23;
    v40 = v22 + 2 * v29;
    v84 = (&v92[v12 + 7] + 1) & 0xFFFFFFFFFFFFFFF0;
    v41 = v22 + 2 * v27;
    v81 = v8;
    do
    {
      v42 = v20;
      v43 = v20 - 1;
      if (!v20)
      {
        v43 = v79;
      }

      v44 = *(v82 + 2);
      v45 = **(v82 + 9);
      v46 = v45 * v43;
      ++v20;
      v47 = v78;
      if (v42 < v80)
      {
        v47 = v20;
      }

      v48 = v45 * v47;
      v85 = **(v83 + 9);
      v86 = *(v83 + 2);
      if (v21 >= 8)
      {
        v50 = 0;
        v51 = v84;
        do
        {
          v52 = *(v44 + v46 + v50);
          v53 = *(v44 + v48 + v50);
          *v51 = vmlal_u8(vmulq_s16(vaddl_u8(v53, v52), v5), *(v44 + v45 * v42 + v50), 0xA0A0A0A0A0A0A0ALL);
          *(v51 + v23) = vsubl_u8(v53, v52);
          v50 += 8;
          ++v51;
        }

        while (v50 <= v26);
        v49 = v50;
      }

      else
      {
        v49 = 0;
      }

      if (v49 < v21)
      {
        v54 = 0;
        v55 = v77 + 2 * v49;
        v56 = v84 + 2 * v49;
        v57 = v44 + v49 + v45 * v42;
        v58 = v44 + v48 + v49;
        v59 = v44 + v46 + v49;
        v60 = v21 - v49;
        do
        {
          v61 = *(v59 + v54);
          v62 = *(v58 + v54);
          *(v56 + 2 * v54) = 3 * (v62 + v61) + 10 * *(v57 + v54);
          *(v55 + 2 * v54++) = v62 - v61;
        }

        while (v60 != v54);
      }

      v63 = 0;
      do
      {
        *(v35 + v63) = *(v41 + v63);
        *(v28 + v63) = *(v40 + v63);
        *(v37 + v63) = *(v32 + v63);
        *(v30 + v63) = *(v31 + v63);
        v63 += 2;
      }

      while (v38 != v63);
      if (v21 >= 8)
      {
        v65 = 0;
        v66 = (v86 + v85 * v42 + 16);
        v67 = v84;
        do
        {
          v68 = vsubq_s16(*(v67 + v38), *(v67 + v34));
          v69 = vmlaq_s16(vmulq_s16(*(v67 + v23), v6), vaddq_s16(*(v67 + v36), *(v67 + v39)), v5);
          v94.val[1] = vextq_s8(v69, v69, 8uLL).u64[0];
          v94.val[0] = vextq_s8(v68, v68, 8uLL).u64[0];
          v70 = v66 - 8;
          vst2_s16(v70, v68);
          vst2_s16(v66, v94);
          v65 += 8;
          v67 += 16;
          v66 += 16;
        }

        while (v65 <= v26);
        v64 = v65;
      }

      else
      {
        v64 = 0;
      }

      if (v64 < v21)
      {
        v71 = 0;
        v72 = (v86 + v85 * v42 + 4 * v64 + 2);
        do
        {
          v73 = 3 * (*(v37 + 2 * v64 + 2 * v71) + *(v74 + 2 * (v76 + v64) + 2 * v71)) + 10 * *(v77 + 2 * v64 + 2 * v71);
          *(v72 - 1) = *(v75 + 2 * (v76 + v64) + 2 * v71) - *(v35 + 2 * v64 + 2 * v71);
          *v72 = v73;
          v72 += 2;
          ++v71;
        }

        while (v21 - v64 != v71);
      }
    }

    while (v20 != v81);
    result = *v90;
  }

  if (result != v92)
  {
    if (result)
    {
      return MEMORY[0x2318CB180](result, 0x1000C80BDFB0063, v5, v6, v7);
    }
  }

  return result;
}

void sub_22D229DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, char a42)
{
  cv::Exception::~Exception(&a42);
  if (a29 < 0)
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

  _Unwind_Resume(a1);
}

void cv::calcOpticalFlowPyrLK(void (***a1)(uint64_t *__return_ptr), void (***a2)(uint64_t *__return_ptr), void (***a3)(void *__return_ptr, void, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, int32x2_t *a7, signed int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, unsigned int a17, int a18, double a19, int a20)
{
  v181[2] = *MEMORY[0x277D85DE8];
  (**a3)(v169, a3, 0xFFFFFFFFLL);
  if (a8 < 0 || a7->i32[0] < 3 || a7->i32[1] <= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v148, "maxLevel >= 0 && winSize.width > 2 && winSize.height > 2");
    std::string::basic_string[abi:ne200100]<0>(v139, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v148, v139, __p, 842);
    cv::error(&v157, v21);
  }

  v22 = cv::Mat::checkVector(v169, 2, 5, 1);
  v23 = v22;
  if ((v22 & 0x80000000) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v148, "(npoints = prevPtsMat.checkVector(2, CV_32F, true)) >= 0");
    std::string::basic_string[abi:ne200100]<0>(v139, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v148, v139, __p, 845);
    cv::error(&v157, v24);
  }

  if (!v22)
  {
    (*(*a4 + 152))(a4);
    (*(*a5 + 152))(a5);
    (*(*a6 + 152))(a6);
    goto LABEL_223;
  }

  if ((a20 & 4) == 0)
  {
    v157 = vrev64_s32(*v175);
    (*(*a4 + 128))(a4, &v157, v169[0] & 0xFFF, 0xFFFFFFFFLL, 1, 0);
  }

  (**a4)(v148, a4, 0xFFFFFFFFLL);
  if (cv::Mat::checkVector(v148, 2, 5, 1) != v23)
  {
    std::string::basic_string[abi:ne200100]<0>(v139, "nextPtsMat.checkVector(2, CV_32F, true) == npoints");
    std::string::basic_string[abi:ne200100]<0>(__p, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v125, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v139, __p, v125, 859);
    cv::error(&v157, v25);
  }

  v111 = v149;
  v112 = v170;
  (*(*a5 + 136))(a5, v23, 1, 0, 0xFFFFFFFFLL, 1, 0);
  (**a5)(v139, a5, 0xFFFFFFFFLL);
  v136 = &__p[8];
  v137 = v138;
  v138[1] = 0;
  v138[0] = 0;
  *__p = 1124007936;
  memset(&__p[4], 0, 60);
  if ((v139[0] & 0x4000) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v125, "statusMat.isContinuous()");
    std::string::basic_string[abi:ne200100]<0>(v178, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v117, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v125, v178, v117, 866);
    cv::error(&v157, v26);
  }

  v27 = v140;
  if (v23 >= 1)
  {
    memset(v140, 1, v23);
  }

  if (!(*(*a6 + 112))(a6))
  {
    v110 = 0;
    goto LABEL_47;
  }

  (*(*a6 + 136))(a6, v23, 1, 5, 0xFFFFFFFFLL, 1, 0);
  (**a6)(&v157, a6, 0xFFFFFFFFLL);
  if (v160)
  {
    atomic_fetch_add(v160, 1u);
  }

  if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  *&__p[16] = 0;
  memset(&__p[32], 0, 24);
  if (*__p <= 0)
  {
    *&__p[24] = 0;
    *__p = v157;
  }

  else
  {
    v28 = 0;
    v29 = v136;
    do
    {
      *&v29[4 * v28++] = 0;
    }

    while (v28 < *&__p[4]);
    *&__p[24] = 0;
    *__p = v157;
    if (*&__p[4] > 2)
    {
      goto LABEL_32;
    }
  }

  if (SHIDWORD(v157) <= 2)
  {
    *&__p[4] = HIDWORD(v157);
    *&__p[8] = v158;
    v30 = v164;
    v31 = v137;
    *v137 = *v164;
    v31[1] = v30[1];
    goto LABEL_33;
  }

LABEL_32:
  cv::Mat::copySize(__p, &v157);
LABEL_33:
  *&__p[40] = v161;
  *&__p[24] = v160;
  *&__p[16] = v159;
  *&__p[56] = v162;
  if (v160 && atomic_fetch_add(v160, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v157);
  }

  v159 = 0;
  v161 = 0uLL;
  *(&v160 + 1) = 0;
  if (SHIDWORD(v157) >= 1)
  {
    v32 = 0;
    v33 = v163;
    do
    {
      *(v33 + v32++) = 0;
    }

    while (v32 < SHIDWORD(v157));
  }

  *&v160 = 0;
  if (v164)
  {
    v34 = v164 == &v165;
  }

  else
  {
    v34 = 1;
  }

  if (!v34)
  {
    free(v164);
  }

  if ((__p[1] & 0x40) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v125, "errMat.isContinuous()");
    std::string::basic_string[abi:ne200100]<0>(v178, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v117, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v125, v178, v117, 877);
    cv::error(&v157, v35);
  }

  v110 = *&__p[16];
LABEL_47:
  v132 = 0;
  v133 = 0;
  v134 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  if (((*a1)[5])(a1) != 327680)
  {
    v41 = 1;
    v40 = 1;
    goto LABEL_67;
  }

  ((*a1)[1])(a1, &v132);
  v36 = -1431655765 * ((v133 - v132) >> 5);
  if (v36 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v125, "levels1 >= 0");
    std::string::basic_string[abi:ne200100]<0>(v178, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v117, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v125, v178, v117, 892);
    cv::error(&v157, v37);
  }

  v38 = v36 - 1;
  if ((v38 & 0x80000001) == 1)
  {
    v39 = v132;
    if (((v132->i32[0] >> 2) & 0x3FE | 1) != ((v132[12].i32[0] >> 3) & 0x1FF) || (v132[12].i32[0] & 7) != 3)
    {
      v40 = 1;
      goto LABEL_59;
    }

    v38 = v38 >> 1;
    v40 = 2;
  }

  else
  {
    v40 = 1;
  }

  if (v38 >= 1)
  {
    v39 = v132;
LABEL_59:
    v116[0] = 0;
    v114[0] = 0;
    cv::Mat::locateROI(&v39[12 * v40], v116, v114);
    if (SLODWORD(v114[0]) < a7->i32[0] || (v42 = a7->i32[1], SHIDWORD(v114[0]) < v42) || (v43 = &v132[12 * v40], a7->i32[0] + LODWORD(v114[0]) + v43[1].i32[1] > SLODWORD(v116[0])) || v42 + HIDWORD(v114[0]) + v43[1].i32[0] > SHIDWORD(v116[0]))
    {
      std::string::basic_string[abi:ne200100]<0>(v125, "ofs.x >= winSize.width && ofs.y >= winSize.height && ofs.x + prevPyr[lvlStep1].cols + winSize.width <= fullSize.width && ofs.y + prevPyr[lvlStep1].rows + winSize.height <= fullSize.height");
      std::string::basic_string[abi:ne200100]<0>(v178, "calcOpticalFlowPyrLK");
      std::string::basic_string[abi:ne200100]<0>(v117, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
      cv::Exception::Exception(&v157, 4294967081, v125, v178, v117, 908);
      cv::error(&v157, v44);
    }
  }

  if (v38 < a8)
  {
    a8 = v38;
  }

  v41 = v38 >> 31;
LABEL_67:
  v109 = v27;
  if (((*a2)[5])(a2) != 327680)
  {
    v51 = 1;
    v113 = 1;
    if (!v41)
    {
      goto LABEL_89;
    }

    goto LABEL_75;
  }

  ((*a2)[1])(a2, &v129);
  v45 = -1431655765 * ((v130 - v129) >> 5);
  if (v45 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v125, "levels2 >= 0");
    std::string::basic_string[abi:ne200100]<0>(v178, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v117, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v125, v178, v117, 920);
    cv::error(&v157, v46);
  }

  v47 = v45 - 1;
  if ((v47 & 0x80000001) == 1)
  {
    v48 = v129;
    v49 = a7;
    if (((*v129 >> 2) & 0x3FE | 1) != ((v129[24] >> 3) & 0x1FF) || (v129[24] & 7) != 3)
    {
      v50 = 1;
      goto LABEL_81;
    }

    v47 = v47 >> 1;
    v50 = 2;
  }

  else
  {
    v49 = a7;
    v50 = 1;
  }

  if (v47 < 1)
  {
    goto LABEL_86;
  }

  v48 = v129;
LABEL_81:
  v116[0] = 0;
  v114[0] = 0;
  cv::Mat::locateROI(&v48[24 * v50], v116, v114);
  if (SLODWORD(v114[0]) < v49->i32[0] || (v52 = v49->i32[1], SHIDWORD(v114[0]) < v52) || (v53 = &v129[24 * v50], v49->i32[0] + LODWORD(v114[0]) + v53[3] > SLODWORD(v116[0])) || v52 + HIDWORD(v114[0]) + v53[2] > SHIDWORD(v116[0]))
  {
    std::string::basic_string[abi:ne200100]<0>(v125, "ofs.x >= winSize.width && ofs.y >= winSize.height && ofs.x + nextPyr[lvlStep2].cols + winSize.width <= fullSize.width && ofs.y + nextPyr[lvlStep2].rows + winSize.height <= fullSize.height");
    std::string::basic_string[abi:ne200100]<0>(v178, "calcOpticalFlowPyrLK");
    std::string::basic_string[abi:ne200100]<0>(v117, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    cv::Exception::Exception(&v157, 4294967081, v125, v178, v117, 936);
    cv::error(&v157, v54);
  }

LABEL_86:
  if (v47 < a8)
  {
    a8 = v47;
  }

  v51 = v47 >> 31;
  v113 = v50;
  a7 = v49;
  if (!v41)
  {
LABEL_89:
    if (!v51)
    {
      goto LABEL_91;
    }

    goto LABEL_90;
  }

LABEL_75:
  cv::_OutputArray::_OutputArray(&v157, &v132);
  *v125 = *a7;
  a8 = cv::buildOpticalFlowPyramid(a1, &v157, v125, a8, 0, 4, 0, 1);
  if (!v51)
  {
    goto LABEL_91;
  }

LABEL_90:
  cv::_OutputArray::_OutputArray(&v157, &v129);
  *v125 = *a7;
  a8 = cv::buildOpticalFlowPyramid(a2, &v157, v125, a8, 0, 4, 0, 1);
LABEL_91:
  v55 = a19;
  v56 = a18 & ~(a18 >> 31);
  if (v56 >= 100)
  {
    v56 = 100;
  }

  if (a17)
  {
    v57 = v56;
  }

  else
  {
    v57 = 30;
  }

  if (a19 < 0.0)
  {
    v55 = 0.0;
  }

  if (v55 > 10.0)
  {
    v55 = 10.0;
  }

  v126 = &v125[8];
  v127 = v128;
  if ((a17 & 2) != 0)
  {
    v58 = v55;
  }

  else
  {
    v58 = 0.01;
  }

  v128[0] = 0;
  v128[1] = 0;
  *v125 = 1124007936;
  memset(&v125[4], 0, 60);
  if (v40 == 1)
  {
    v59 = (16 * (v132->i32[0] >> 3)) | 0xB;
    *v178 = vadd_s32(vrev64_s32(vadd_s32(*a7, *a7)), v132[1]);
    cv::Mat::create(v125, 2, v178, v59);
  }

  if ((a8 & 0x80000000) == 0)
  {
    v60 = v58 * v58;
    v61 = (a17 | (v57 << 32));
    v62 = a9;
    v63 = a8;
    while (1)
    {
      v179 = &v178[8];
      v180 = v181;
      v181[0] = 0;
      v181[1] = 0;
      *v178 = 1124007936;
      memset(&v178[4], 0, 60);
      if (v40 == 1)
      {
        *&v64 = *a7;
        DWORD2(v64) = HIDWORD(**&v132[12 * v63 + 8]);
        HIDWORD(v64) = **&v132[12 * v63 + 8];
        v65 = DWORD2(v64) + 2 * *a7;
        LODWORD(v158) = HIDWORD(v64) + 2 * HIDWORD(*a7);
        HIDWORD(v158) = v65;
        v159 = *&v125[16];
        *&v160 = 0;
        v163 = &v158;
        v164 = &v165;
        HIDWORD(v157) = 2;
        LODWORD(v157) = *v125 & 0xFFF | 0x42FF4000;
        v165 = ((((*v125 >> 3) & 0x1FF) + 1) << ((0xFA50u >> (2 * (v125[0] & 7))) & 3)) * v65;
        v166 = (((*v125 >> 3) & 0x1FFu) + 1) << ((0xFA50u >> (2 * (v125[0] & 7))) & 3);
        v162 = 0;
        *(&v161 + 1) = *&v125[16] + v165 * v158;
        *(&v160 + 1) = *&v125[16];
        *&v161 = *(&v161 + 1);
        *v116 = v64;
        cv::Mat::Mat(v117, &v157, v116);
        if (v119)
        {
          atomic_fetch_add(v119, 1u);
        }

        if (*&v178[24] && atomic_fetch_add(*&v178[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v178);
        }

        *&v178[16] = 0;
        memset(&v178[32], 0, 24);
        if (*&v178[4] <= 0)
        {
          *&v178[24] = 0;
          *v178 = v117[0];
        }

        else
        {
          v67 = 0;
          v68 = v179;
          do
          {
            *&v68[4 * v67++] = 0;
          }

          while (v67 < *&v178[4]);
          *&v178[24] = 0;
          *v178 = v117[0];
          if (*&v178[4] > 2)
          {
LABEL_131:
            cv::Mat::copySize(v178, v117);
            goto LABEL_132;
          }
        }

        if (SHIDWORD(v117[0]) > 2)
        {
          goto LABEL_131;
        }

        *&v178[4] = HIDWORD(v117[0]);
        *&v178[8] = v117[1];
        v73 = v123;
        v74 = v180;
        *v180 = *v123;
        v74[1] = v73[1];
LABEL_132:
        *&v178[40] = v120;
        *&v178[24] = v119;
        *&v178[16] = v118;
        *&v178[56] = v121;
        if (v119 && atomic_fetch_add(v119, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v117);
        }

        v118 = 0;
        v120 = 0uLL;
        *(&v119 + 1) = 0;
        if (SHIDWORD(v117[0]) >= 1)
        {
          v75 = 0;
          v76 = v122;
          do
          {
            *(v76 + 4 * v75++) = 0;
          }

          while (v75 < SHIDWORD(v117[0]));
        }

        *&v119 = 0;
        if (v123)
        {
          v77 = v123 == &v124;
        }

        else
        {
          v77 = 1;
        }

        if (!v77)
        {
          free(v123);
        }

        cv::_InputArray::_InputArray(v117, v178);
        cv::_OutputArray::_OutputArray(v116, &v157);
        *v114 = 0u;
        v115 = 0u;
        cv::copyMakeBorder(v117, v116);
        if (v160 && atomic_fetch_add(v160, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v157);
        }

        v159 = 0;
        v161 = 0uLL;
        *(&v160 + 1) = 0;
        if (SHIDWORD(v157) >= 1)
        {
          v78 = 0;
          v79 = v163;
          do
          {
            *(v79 + v78++) = 0;
          }

          while (v78 < SHIDWORD(v157));
        }

        *&v160 = 0;
        if (v164)
        {
          v80 = v164 == &v165;
        }

        else
        {
          v80 = 1;
        }

        if (!v80)
        {
          free(v164);
        }

        goto LABEL_159;
      }

      v69 = &v132[12 * ((2 * v63) | 1)];
      if (v178 != v69)
      {
        break;
      }

LABEL_159:
      v83 = a7;
      v84 = v63 * v40;
      v85 = v132[12 * v84 + 8];
      v86 = v63 * v113;
      if (v85[1] != *(*&v129[24 * v63 * v113 + 16] + 4) || *v85 != **&v129[24 * v63 * v113 + 16])
      {
        std::string::basic_string[abi:ne200100]<0>(v117, "prevPyr[level * lvlStep1].size() == nextPyr[level * lvlStep2].size()");
        std::string::basic_string[abi:ne200100]<0>(v116, "calcOpticalFlowPyrLK");
        std::string::basic_string[abi:ne200100]<0>(v114, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
        cv::Exception::Exception(&v157, 4294967081, v117, v116, v114, 979);
        cv::error(&v157, v88);
      }

      if (((v129[24 * v86] ^ v132[12 * v84].i32[0]) & 0xFFF) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v117, "prevPyr[level * lvlStep1].type() == nextPyr[level * lvlStep2].type()");
        std::string::basic_string[abi:ne200100]<0>(v116, "calcOpticalFlowPyrLK");
        std::string::basic_string[abi:ne200100]<0>(v114, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
        cv::Exception::Exception(&v157, 4294967081, v117, v116, v114, 980);
        cv::error(&v157, v89);
      }

      LODWORD(v117[0]) = 0;
      HIDWORD(v117[0]) = v23;
      v157 = &unk_284055B70;
      v158 = &v132[12 * v84];
      *&v160 = v178;
      v159 = &v129[24 * v86];
      *(&v160 + 1) = v112;
      *&v161 = v111;
      *(&v161 + 1) = v109;
      v162 = v110;
      a7 = v83;
      v163 = *v83;
      v164 = v61;
      v165 = *&v60;
      v166 = __PAIR64__(a8, v63);
      v167 = a20;
      v168 = v62;
      cv::parallel_for_(v117, &v157, -1.0);
      cv::BaseRowFilter::~BaseRowFilter(&v157);
      if (*&v178[24] && atomic_fetch_add(*&v178[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v178);
      }

      *&v178[16] = 0;
      memset(&v178[32], 0, 24);
      if (*&v178[4] >= 1)
      {
        v90 = 0;
        v91 = v179;
        do
        {
          *&v91[4 * v90++] = 0;
        }

        while (v90 < *&v178[4]);
      }

      *&v178[24] = 0;
      if (v180)
      {
        v92 = v180 == v181;
      }

      else
      {
        v92 = 1;
      }

      if (!v92)
      {
        free(v180);
      }

      if (v63-- <= 0)
      {
        goto LABEL_179;
      }
    }

    v70 = v69[3];
    if (v70)
    {
      atomic_fetch_add(v70, 1u);
      if (*&v178[24])
      {
        if (atomic_fetch_add(*&v178[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v178);
        }
      }
    }

    *&v178[16] = 0;
    memset(&v178[32], 0, 24);
    if (*&v178[4] <= 0)
    {
      *&v178[24] = 0;
      *v178 = v69->i32[0];
    }

    else
    {
      v71 = 0;
      v72 = v179;
      do
      {
        *&v72[4 * v71++] = 0;
      }

      while (v71 < *&v178[4]);
      *&v178[24] = 0;
      *v178 = v69->i32[0];
      if (*&v178[4] > 2)
      {
        goto LABEL_157;
      }
    }

    if (v69->i32[1] <= 2)
    {
      *&v178[4] = v69->i32[1];
      *&v178[8] = v69[1];
      v81 = v69[9];
      v82 = v180;
      *v180 = *v81;
      v82[1] = v81[1];
LABEL_158:
      *&v178[32] = *v69[4].i8;
      *&v178[48] = v69[6];
      *&v178[16] = *v69[2].i8;
      *&v178[56] = v69[7];
      goto LABEL_159;
    }

LABEL_157:
    cv::Mat::copySize(v178, v69);
    goto LABEL_158;
  }

LABEL_179:
  if (*&v125[24] && atomic_fetch_add(*&v125[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v125);
  }

  *&v125[16] = 0;
  memset(&v125[32], 0, 24);
  if (*&v125[4] >= 1)
  {
    v94 = 0;
    v95 = v126;
    do
    {
      *&v95[4 * v94++] = 0;
    }

    while (v94 < *&v125[4]);
  }

  *&v125[24] = 0;
  if (v127)
  {
    v96 = v127 == v128;
  }

  else
  {
    v96 = 1;
  }

  if (!v96)
  {
    free(v127);
  }

  v157 = &v129;
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&v157);
  v157 = &v132;
  std::vector<cv::Mat>::__destroy_vector::operator()[abi:ne200100](&v157);
  if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(__p);
  }

  *&__p[16] = 0;
  memset(&__p[32], 0, 24);
  if (*&__p[4] >= 1)
  {
    v97 = 0;
    v98 = v136;
    do
    {
      *&v98[4 * v97++] = 0;
    }

    while (v97 < *&__p[4]);
  }

  *&__p[24] = 0;
  if (v137)
  {
    v99 = v137 == v138;
  }

  else
  {
    v99 = 1;
  }

  if (!v99)
  {
    free(v137);
  }

  if (v141 && atomic_fetch_add(v141, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v139);
  }

  v140 = 0;
  v142 = 0;
  v144 = 0;
  v143 = 0;
  if (SHIDWORD(v139[0]) >= 1)
  {
    v100 = 0;
    v101 = v145;
    do
    {
      *(v101 + 4 * v100++) = 0;
    }

    while (v100 < SHIDWORD(v139[0]));
  }

  v141 = 0;
  if (v146)
  {
    v102 = v146 == &v147;
  }

  else
  {
    v102 = 1;
  }

  if (!v102)
  {
    free(v146);
  }

  if (v150 && atomic_fetch_add(v150, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v148);
  }

  v149 = 0;
  v151 = 0;
  v153 = 0;
  v152 = 0;
  if (SHIDWORD(v148[0]) >= 1)
  {
    v103 = 0;
    v104 = v154;
    do
    {
      *(v104 + 4 * v103++) = 0;
    }

    while (v103 < SHIDWORD(v148[0]));
  }

  v150 = 0;
  if (v155)
  {
    v105 = v155 == &v156;
  }

  else
  {
    v105 = 1;
  }

  if (!v105)
  {
    free(v155);
  }

LABEL_223:
  if (v171 && atomic_fetch_add(v171, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v169);
  }

  v170 = 0;
  v172 = 0;
  v174 = 0;
  v173 = 0;
  if (SHIDWORD(v169[0]) >= 1)
  {
    v106 = 0;
    v107 = v175;
    do
    {
      v107->i32[v106++] = 0;
    }

    while (v106 < SHIDWORD(v169[0]));
  }

  v171 = 0;
  if (v176)
  {
    v108 = v176 == &v177;
  }

  else
  {
    v108 = 1;
  }

  if (!v108)
  {
    free(v176);
  }
}

void sub_22D22B644(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::detail::LKTrackerInvoker::~LKTrackerInvoker(cv::detail::LKTrackerInvoker *this)
{
  cv::BaseRowFilter::~BaseRowFilter(this);

  JUMPOUT(0x2318CB1A0);
}

uint64_t cv::convertAndUnrollScalar(cv *this, const cv::Mat *a2, _BYTE *a3, unsigned __int8 *a4)
{
  v6 = a2;
  v8 = *(this + 1);
  if (v8 >= 3)
  {
    v10 = *(this + 8);
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
    v9 = *(this + 3) * *(this + 2);
  }

  v12 = (a2 >> 3) & 0x1FF;
  ConvertFunc = cv::getConvertFunc((*this & 7), a2);
  v14 = *(this + 2);
  if (v12 < v9)
  {
    v15 = v12 + 1;
  }

  else
  {
    v15 = v9;
  }

  v27[0] = v15;
  v27[1] = 1;
  result = ConvertFunc(v14, 0, 0, 0, a3, 0, v27, 0);
  v17 = v6 & 7;
  v18 = (v12 + 1) << ((0xFA50u >> (2 * (v6 & 7))) & 3);
  if (v12 >= v9)
  {
    if (v9 != 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v26, "scn == 1");
      std::string::basic_string[abi:ne200100]<0>(v25, "convertAndUnrollScalar");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(v27, 4294967081, v26, v25, __p, 976);
      cv::error(v27, v19);
    }

    v20 = (0x88442211uLL >> (4 * v17)) & 0xF;
    v21 = v18 - v20;
    if (v18 > v20)
    {
      v22 = a3;
      do
      {
        v22[v20] = *v22;
        ++v22;
        --v21;
      }

      while (v21);
    }
  }

  if (v18 * a4 > v18)
  {
    v23 = (a4 - 1) * v18;
    do
    {
      a3[v18] = *a3;
      ++a3;
      --v23;
    }

    while (v23);
  }

  return result;
}

void sub_22D22BBCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void cv::binary_op(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v2;
  v191[507] = *MEMORY[0x277D85DE8];
  v14 = (*(*v2 + 40))(v2);
  v15 = (*(*v12 + 40))(v12);
  (**v13)(&v165, v13, 0xFFFFFFFFLL);
  (**v12)(&v154, v12, 0xFFFFFFFFLL);
  v16 = (*(*v8 + 88))(v8);
  v18 = v16;
  if (SHIDWORD(v165) > 2)
  {
    goto LABEL_27;
  }

  if (SHIDWORD(v154) > 2)
  {
    goto LABEL_27;
  }

  if (v14 != v15)
  {
    goto LABEL_27;
  }

  if (v173[1] != v162[1])
  {
    goto LABEL_27;
  }

  v19 = *v173;
  if (*v173 != *v162)
  {
    goto LABEL_27;
  }

  v17 = (v165 & 0xFFF);
  if (((v17 == (v154 & 0xFFF)) & v16) != 1)
  {
    goto LABEL_27;
  }

  v183[0] = v173[1];
  v183[1] = v19;
  (*(*v10 + 128))(v10, v183);
  (**v10)(v183, v10, 0xFFFFFFFFLL);
  if (v4)
  {
    v20 = *v6;
    if (SHIDWORD(v165) < 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(v174 + 2 * HIDWORD(v165) - 2);
    }
  }

  else
  {
    v20 = v6[v165 & 7];
    v21 = ((v165 >> 3) & 0x1FF) + 1;
  }

  v22 = v167;
  v23 = v166;
  if ((v165 & v154 & v183[0] & 0x4000) != 0 && v166 * v167 == v166 * v167)
  {
    v22 = v166 * v167;
    v23 = 1;
  }

  v24 = v22 * v21;
  if (v24 != v24)
  {
    if (v186 && atomic_fetch_add(v186, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v183);
    }

    v185 = 0;
    *(&v186 + 1) = 0;
    v187 = 0uLL;
    if (v183[1] >= 1)
    {
      v25 = 0;
      v26 = v189;
      do
      {
        v26[v25++] = 0;
      }

      while (v25 < v183[1]);
    }

    *&v186 = 0;
    if (v190)
    {
      v27 = v190 == v191;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      free(v190);
    }

LABEL_27:
    if ((v14 == 0x20000) != (v15 == 0x20000))
    {
      goto LABEL_37;
    }

    v28 = v173;
    v29 = *(v173 - 1);
    v30 = v162;
    if (v29 != *(v162 - 1))
    {
      goto LABEL_37;
    }

    if (v29 == 2)
    {
      if (*v173 != *v162 || v173[1] != v162[1])
      {
        goto LABEL_37;
      }
    }

    else if (v29 >= 1)
    {
      do
      {
        v32 = *v28++;
        v31 = v32;
        v33 = *v30++;
        if (v31 != v33)
        {
          goto LABEL_37;
        }
      }

      while (--v29);
    }

    if (((v154 ^ v165) & 0xFFF) == 0)
    {
      v47 = 0;
      goto LABEL_77;
    }

LABEL_37:
    v34 = v154 & 0xFFF;
    if (SHIDWORD(v165) < 3)
    {
      v35 = v165;
      if (v167 == 1 || v166 == 1)
      {
        v37 = v14 != 0x20000 && v15 == 0x20000;
        v38 = v37;
        if ((v165 & 0x4000) != 0 && !v38)
        {
          v39 = (v34 >> 3) + 1;
          v40 = *v173;
          v41 = v173[1];
          v42 = v41 == v39;
          if (*v173 != 1)
          {
            v42 = 0;
          }

          v43 = v40 == v39 || *v173 == 1;
          if (v41 != 1)
          {
            v43 = 0;
          }

          if (v43 || v42 || v41 == 1 && v40 == 4 && v34 <= 0x1F && (v165 & 0xFFF) == 6)
          {
            cv::swap(&v165, &v154, v17);
            v47 = 1;
            goto LABEL_77;
          }
        }
      }
    }

    else
    {
      v35 = v165;
    }

    if (SHIDWORD(v154) > 2)
    {
      goto LABEL_76;
    }

    v44 = v155 == 1 || v156 == 1;
    v45 = !v44 || (v154 & 0x4000) == 0;
    if (v45 || v14 == 0x20000 && v15 != 0x20000)
    {
      goto LABEL_76;
    }

    v125 = (v35 >> 3) & 0x1FF;
    v126 = *v162;
    v127 = v162[1];
    v128 = v127 == v125 + 1;
    if (*v162 != 1)
    {
      v128 = 0;
    }

    v129 = v126 == v125 + 1 || *v162 == 1;
    if (v127 != 1)
    {
      v129 = 0;
    }

    v47 = 1;
    if (!v129 && !v128 && (v127 != 1 || v126 != 4 || v34 != 6 || v125 >= 4))
    {
LABEL_76:
      std::string::basic_string[abi:ne200100]<0>(v149, "The operation is neither 'array op array' (where arrays have the same size and type), nor 'array op scalar', nor 'scalar op array'");
      std::string::basic_string[abi:ne200100]<0>(v141, "binary_op");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(v183, 4294967087, v149, v141, __p, 1029);
      cv::error(v183, v46);
    }

LABEL_77:
    v48 = v4;
    if (SHIDWORD(v165) < 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = *(v174 + HIDWORD(v165) - 1);
    }

    v152[1] = 0;
    v153 = v49;
    v50 = v165;
    v150 = &v149[8];
    v151 = v152;
    v152[0] = 0;
    *v149 = 1124007936;
    memset(&v149[4], 0, 60);
    if (v18)
    {
      CopyMaskFunc = 0;
      v51 = 1;
LABEL_137:
      *v183 = &v185;
      v184 = 4104;
      (*(*v10 + 144))(v10);
      (**v10)(v141, v10, 0xFFFFFFFFLL);
      if (!v51)
      {
        *__p = 0u;
        v138 = 0u;
        cv::Mat::operator=(v141, __p);
      }

      v76 = v48 == 0;
      if (v48)
      {
        v77 = v153;
      }

      else
      {
        v77 = ((v50 >> 3) & 0x1FF) + 1;
      }

      if (v76)
      {
        v78 = v165 & 7;
      }

      else
      {
        v78 = 0;
      }

      v79 = v6[v78];
      v80 = (v49 + 1023) / v49;
      if (v47)
      {
        v178 = &v165;
        v179 = v141;
        v180 = v149;
        v181 = 0;
        v176 = 0uLL;
        *&v177 = 0;
        cv::NAryMatIterator::NAryMatIterator(__p, &v178, &v176, -1);
        v81 = v140;
        if (v80 >= v140)
        {
          v80 = v140;
        }

        v82 = (v80 << (v18 ^ 1u)) * v153 + 32;
        v83 = *v183;
        if (v184 < v82)
        {
          if (*v183 != &v185)
          {
            if (*v183)
            {
              MEMORY[0x2318CB180](*v183, 0x1000C8077774924);
            }

            v83 = &v185;
            *v183 = &v185;
          }

          v184 = v82;
          if (v82 >= 0x1009)
          {
            operator new[]();
          }
        }

        v84 = v153;
        cv::convertAndUnrollScalar(&v154, (v165 & 0xFFF), v83, v80);
        v85 = 0;
        v86 = (v83 + v84 * v80 + 15) & 0xFFFFFFFFFFFFFFF0;
        while (v85 < v139)
        {
          v132 = v85;
          if (v81)
          {
            v87 = 0;
            v89 = *(&v176 + 1);
            v88 = v176;
            do
            {
              if (v81 - v87 >= v80)
              {
                v90 = v80;
              }

              else
              {
                v90 = v81 - v87;
              }

              v135 = v77 * v90;
              v136 = 1;
              if (v18)
              {
                v91 = v89;
              }

              else
              {
                v91 = v86;
              }

              v79(v88, 0, v83, 0, v91, 0, &v135, 0);
              if (v18)
              {
                v92 = v90 << 32;
              }

              else
              {
                v135 = v90;
                v136 = 1;
                CopyMaskFunc(v86, 0, v177, 0, *(&v176 + 1), 0, &v135, &v153);
                v92 = v90 << 32;
                *&v177 = v177 + v90;
              }

              v93 = v92 * v153;
              v88 = v176 + (v93 >> 32);
              v89 = *(&v176 + 1) + (v93 >> 32);
              *&v176 = v88;
              *(&v176 + 1) = v89;
              v87 += v80;
            }

            while (v87 < v81);
          }

          v85 = v132 + 1;
          cv::NAryMatIterator::operator++(__p);
        }
      }

      else
      {
        v178 = &v165;
        v179 = &v154;
        v180 = v141;
        v181 = v149;
        v182 = 0;
        v176 = 0u;
        v177 = 0u;
        cv::NAryMatIterator::NAryMatIterator(__p, &v178, &v176, -1);
        v94 = v140;
        v95 = v140;
        if ((v140 * v77) >> 31)
        {
          v95 = 0x7FFFFFFF / v77;
        }

        if (v18)
        {
          v96 = 0;
        }

        else
        {
          if (v80 < v95)
          {
            v95 = (v49 + 1023) / v49;
          }

          v97 = v153 * v95;
          v96 = *v183;
          if (v184 < v153 * v95)
          {
            if (*v183 != &v185)
            {
              if (*v183)
              {
                MEMORY[0x2318CB180](*v183, 0x1000C8077774924);
              }

              v96 = &v185;
              *v183 = &v185;
            }

            v184 = v97;
            if (v97 >= 0x1009)
            {
              operator new[]();
            }
          }
        }

        v98 = 0;
        while (v98 < v139)
        {
          v133 = v98;
          if (v94)
          {
            v99 = 0;
            v101 = *(&v176 + 1);
            v100 = v176;
            v102 = v94;
            v103 = v177;
            do
            {
              v104 = v102 - v95;
              if (v102 >= v95)
              {
                v105 = v95;
              }

              else
              {
                v105 = v102;
              }

              v135 = v77 * v105;
              v136 = 1;
              if (v18)
              {
                v106 = v103;
              }

              else
              {
                v106 = v96;
              }

              v79(v100, 0, v101, 0, v106, 0, &v135, 0);
              if (v18)
              {
                v107 = v105 << 32;
              }

              else
              {
                v135 = v105;
                v136 = 1;
                CopyMaskFunc(v96, 0, *(&v177 + 1), 0, v177, 0, &v135, &v153);
                v107 = v105 << 32;
                *(&v177 + 1) += v105;
              }

              v108 = v107 * v153;
              v100 = v176 + (v108 >> 32);
              v101 = *(&v176 + 1) + (v108 >> 32);
              *&v176 = v100;
              *(&v176 + 1) = v101;
              v103 = (v177 + (v108 >> 32));
              *&v177 = v103;
              v99 += v95;
              v102 = v104;
            }

            while (v99 < v94);
          }

          v98 = v133 + 1;
          cv::NAryMatIterator::operator++(__p);
        }
      }

      if (v142 && atomic_fetch_add(v142, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v141);
      }

      v141[2] = 0;
      v143 = 0;
      v144 = 0;
      v145 = 0;
      if (SHIDWORD(v141[0]) >= 1)
      {
        v109 = 0;
        v110 = v146;
        do
        {
          *(v110 + 4 * v109++) = 0;
        }

        while (v109 < SHIDWORD(v141[0]));
      }

      v142 = 0;
      if (v147)
      {
        v111 = v147 == &v148;
      }

      else
      {
        v111 = 1;
      }

      if (!v111)
      {
        free(v147);
      }

      if (*v183 != &v185 && *v183 != 0)
      {
        MEMORY[0x2318CB180]();
      }

      if (*&v149[24] && atomic_fetch_add(*&v149[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v149);
      }

      *&v149[16] = 0;
      memset(&v149[32], 0, 24);
      if (*&v149[4] >= 1)
      {
        v113 = 0;
        v114 = v150;
        do
        {
          v114[v113++] = 0;
        }

        while (v113 < *&v149[4]);
      }

      *&v149[24] = 0;
      v115 = v151;
      v116 = v151 == 0;
      v117 = v152;
      goto LABEL_221;
    }

    (**v8)(v183, v8, 0xFFFFFFFFLL);
    if (v186)
    {
      atomic_fetch_add(v186, 1u);
    }

    if (*&v149[24] && atomic_fetch_add(*&v149[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v149);
    }

    *&v149[16] = 0;
    memset(&v149[32], 0, 24);
    if (*v149 <= 0)
    {
      *&v149[24] = 0;
      *v149 = v183[0];
    }

    else
    {
      v52 = 0;
      v53 = v150;
      do
      {
        v53[v52++] = 0;
      }

      while (v52 < *&v149[4]);
      *&v149[24] = 0;
      *v149 = v183[0];
      if (*&v149[4] > 2)
      {
        goto LABEL_95;
      }
    }

    if (v183[1] <= 2)
    {
      *&v149[4] = v183[1];
      *&v149[8] = v184;
      v54 = v190;
      v55 = v151;
      *v151 = *v190;
      v55[1] = v54[1];
LABEL_96:
      *&v149[40] = v187;
      *&v149[24] = v186;
      *&v149[16] = v185;
      *&v149[56] = v188;
      if (v186 && atomic_fetch_add(v186, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(v183);
      }

      v185 = 0;
      v187 = 0uLL;
      *(&v186 + 1) = 0;
      if (v183[1] >= 1)
      {
        v56 = 0;
        v57 = v189;
        do
        {
          v57[v56++] = 0;
        }

        while (v56 < v183[1]);
      }

      *&v186 = 0;
      if (v190)
      {
        v58 = v190 == v191;
      }

      else
      {
        v58 = 1;
      }

      if (!v58)
      {
        free(v190);
      }

      if ((*v149 & 0xFFE) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v141, "(mask.type() == CV_8UC1 || mask.type() == CV_8SC1)");
        std::string::basic_string[abi:ne200100]<0>(__p, "binary_op");
        std::string::basic_string[abi:ne200100]<0>(&v178, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
        cv::Exception::Exception(v183, 4294967081, v141, __p, &v178, 1043);
        cv::error(v183, v59);
      }

      v60 = v150;
      v61 = *(v150 - 1);
      v62 = v173;
      if (v61 == *(v173 - 1))
      {
        if (v61 == 2)
        {
          if (*v150 != *v173 || v150[1] != v173[1])
          {
            goto LABEL_113;
          }

LABEL_117:
          CopyMaskFunc = cv::getCopyMaskFunc(v153);
          (**v10)(v183, v10, 0xFFFFFFFFLL);
          v67 = v189;
          v68 = *(v189 - 1);
          v69 = v173;
          if (v68 == *(v173 - 1))
          {
            if (v68 == 2)
            {
              if (*v189 != *v173 || v189[1] != v173[1])
              {
                goto LABEL_121;
              }
            }

            else if (v68 >= 1)
            {
              do
              {
                v71 = *v67++;
                v70 = v71;
                v72 = *v69++;
                if (v70 != v72)
                {
                  goto LABEL_121;
                }
              }

              while (--v68);
            }

            v51 = ((v165 ^ v183[0]) & 0xFFF) == 0;
LABEL_126:
            if (v186 && atomic_fetch_add(v186, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(v183);
            }

            v185 = 0;
            *(&v186 + 1) = 0;
            v187 = 0uLL;
            if (v183[1] >= 1)
            {
              v73 = 0;
              v74 = v189;
              do
              {
                v74[v73++] = 0;
              }

              while (v73 < v183[1]);
            }

            *&v186 = 0;
            if (v190)
            {
              v75 = v190 == v191;
            }

            else
            {
              v75 = 1;
            }

            if (!v75)
            {
              free(v190);
            }

            goto LABEL_137;
          }

LABEL_121:
          v51 = 0;
          goto LABEL_126;
        }

        if (v61 < 1)
        {
          goto LABEL_117;
        }

        while (1)
        {
          v65 = *v60++;
          v64 = v65;
          v66 = *v62++;
          if (v64 != v66)
          {
            break;
          }

          if (!--v61)
          {
            goto LABEL_117;
          }
        }
      }

LABEL_113:
      std::string::basic_string[abi:ne200100]<0>(v141, "mask.size == src1.size");
      std::string::basic_string[abi:ne200100]<0>(__p, "binary_op");
      std::string::basic_string[abi:ne200100]<0>(&v178, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(v183, 4294967081, v141, __p, &v178, 1044);
      cv::error(v183, v63);
    }

LABEL_95:
    cv::Mat::copySize(v149, v183);
    goto LABEL_96;
  }

  *v149 = __PAIR64__(v23, v24);
  v20(v168, v175, v157, v164, v185, v191[0], v149, 0);
  if (v186 && atomic_fetch_add(v186, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v183);
  }

  v117 = v191;
  v185 = 0;
  *(&v186 + 1) = 0;
  v187 = 0uLL;
  if (v183[1] >= 1)
  {
    v130 = 0;
    v131 = v189;
    do
    {
      v131[v130++] = 0;
    }

    while (v130 < v183[1]);
  }

  *&v186 = 0;
  v115 = v190;
  v116 = v190 == 0;
LABEL_221:
  if (!v116 && v115 != v117)
  {
    free(v115);
  }

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
    v119 = 0;
    v120 = v162;
    do
    {
      v120[v119++] = 0;
    }

    while (v119 < SHIDWORD(v154));
  }

  v158 = 0;
  if (v163)
  {
    v121 = v163 == &v164;
  }

  else
  {
    v121 = 1;
  }

  if (!v121)
  {
    free(v163);
  }

  if (v169 && atomic_fetch_add(v169, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v165);
  }

  v168 = 0;
  v170 = 0;
  v171 = 0;
  v172 = 0;
  if (SHIDWORD(v165) >= 1)
  {
    v122 = 0;
    v123 = v173;
    do
    {
      v123[v122++] = 0;
    }

    while (v122 < SHIDWORD(v165));
  }

  v169 = 0;
  if (v174)
  {
    v124 = v174 == &v175;
  }

  else
  {
    v124 = 1;
  }

  if (!v124)
  {
    free(v174);
  }
}

void sub_22D22CE60(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::max(cv *this, const cv::Mat *a2, const cv::Mat *a3, cv::Mat *a4)
{
  cv::_OutputArray::_OutputArray(v9, a3);
  cv::_InputArray::_InputArray(v8, this);
  v6 = cv::_InputArray::_InputArray(v7, a2);
  cv::noArray(v6);
  cv::binary_op(v8, v7);
}

void cv::min(cv *this, const cv::Mat *a2, const cv::Mat *a3, cv::Mat *a4)
{
  cv::_OutputArray::_OutputArray(v9, a3);
  cv::_InputArray::_InputArray(v8, this);
  v6 = cv::_InputArray::_InputArray(v7, a2);
  cv::noArray(v6);
  cv::binary_op(v8, v7);
}

void cv::max(cv *this, const cv::Mat *a2, double a3, cv::Mat *a4)
{
  v9 = a3;
  cv::_OutputArray::_OutputArray(v8, a2);
  cv::_InputArray::_InputArray(v7, this);
  cv::_InputArray::_InputArray(v6, &v9);
  cv::noArray(v5);
  cv::binary_op(v7, v6);
}

void cv::min(cv *this, const cv::Mat *a2, double a3, cv::Mat *a4)
{
  v9 = a3;
  cv::_OutputArray::_OutputArray(v8, a2);
  cv::_InputArray::_InputArray(v7, this);
  cv::_InputArray::_InputArray(v6, &v9);
  cv::noArray(v5);
  cv::binary_op(v7, v6);
}

void cv::arithm_op(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x28223BE20](a1, a2);
  v205 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v2;
  v263[507] = *MEMORY[0x277D85DE8];
  v17 = (*(*v2 + 40))(v2);
  v18 = (*(*v15 + 40))(v15);
  (**v16)(&v237, v16, 0xFFFFFFFFLL);
  (**v15)(&v226, v15, 0xFFFFFFFFLL);
  v197 = ((*v11)[11])(v11);
  v202 = v7;
  v20 = v226 & 0xFFF;
  if (SHIDWORD(v237) < 3)
  {
    v21 = 0;
    v22 = v237;
    v25 = v238 == 1 || v239 == 1;
    if (v25 && (v237 & 0x4000) != 0)
    {
      if (v17 == 0x20000 || v18 != 0x20000)
      {
        v60 = (v20 >> 3) + 1;
        v61 = v245->i32[0];
        v62 = v245->i32[1];
        v63 = v62 == v60;
        if (v245->i32[0] != 1)
        {
          v63 = 0;
        }

        v64 = v61 == v60 || v245->i32[0] == 1;
        if (v62 != 1)
        {
          v64 = 0;
        }

        v21 = 1;
        if (!v64 && !v63)
        {
          v21 = 0;
          if (v62 == 1 && v61 == 4)
          {
            v21 = v20 < 0x20 && (v237 & 0xFFF) == 6;
          }
        }
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 0;
    v22 = v237;
  }

  v189 = v11;
  v23 = v22 & 0xFFF;
  if (SHIDWORD(v226) > 2)
  {
    goto LABEL_4;
  }

  v24 = 0;
  v26 = v227 == 1 || v228 == 1;
  if (v26 && (v226 & 0x4000) != 0)
  {
    if (v17 == 0x20000 && v18 != 0x20000)
    {
LABEL_4:
      v24 = 0;
      goto LABEL_5;
    }

    v27 = (v23 >> 3) + 1;
    v28 = *v234;
    v29 = v234[1];
    v30 = v29 == v27;
    if (*v234 != 1)
    {
      v30 = 0;
    }

    v31 = v28 == v27 || *v234 == 1;
    if (v29 != 1)
    {
      v31 = 0;
    }

    v24 = 1;
    if (!v31 && !v30)
    {
      v24 = 0;
      if (v29 == 1 && v28 == 4)
      {
        v32 = v20 != 6 || v23 >= 0x20;
        v24 = !v32;
      }
    }
  }

LABEL_5:
  if (v17 == v18)
  {
    if (SHIDWORD(v237) > 2 || SHIDWORD(v226) > 2)
    {
      goto LABEL_63;
    }
  }

  else if (SHIDWORD(v226) > 2 || SHIDWORD(v237) > 2 || (v22 & 0xFF8) != 0)
  {
    goto LABEL_63;
  }

  v35 = v245->i32[1] == v234[1] && v245->i32[0] == *v234 && v23 == v20;
  if ((v35 & v197) == 1)
  {
    if (((*(*v13 + 104))(v13) & 1) == 0 && (v9 < 0 || ((v237 ^ v9) & 7) == 0) || (*(*v13 + 104))(v13) && (v36 = (*(*v13 + 64))(v13, 0xFFFFFFFFLL), v36 == (*(*v16 + 64))(v16, 0xFFFFFFFFLL)))
    {
      if ((v21 & v24 & 1) != 0 || ((v21 | v24) & 1) == 0)
      {
        v255 = vrev64_s32(*v245);
        (*(*v13 + 128))(v13, &v255, v237 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
        (**v13)(&v255, v13, 0xFFFFFFFFLL);
        v80 = v238;
        v81 = ((v237 >> 3) & 0x1FF) + 1;
        if ((v237 & v226 & v255.i32[0] & 0x4000) != 0 && (v82 = v239 * v81 * v238, v82 == v82))
        {
          v80 = 1;
        }

        else
        {
          LODWORD(v82) = v239 * v81;
        }

        v83 = *(v202 + 8 * (v237 & 7));
        *v221 = __PAIR64__(v80, v82);
        v83(v240, v247, v229, v236, v257, v263[0], v221, v205);
        if (v258 && atomic_fetch_add(v258, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v255);
        }

        v257 = 0;
        *(&v258 + 1) = 0;
        v259 = 0uLL;
        if (v255.i32[1] >= 1)
        {
          v84 = 0;
          v85 = v261;
          do
          {
            v85[v84++] = 0;
          }

          while (v84 < v255.i32[1]);
        }

        *&v258 = 0;
        v86 = v262;
        if (v262)
        {
          v87 = v262 == v263;
        }

        else
        {
          v87 = 1;
        }

        if (!v87)
        {
          goto LABEL_465;
        }

        goto LABEL_466;
      }
    }
  }

LABEL_63:
  v37 = v245[-1].u32[1];
  if (v37 != *(v234 - 1))
  {
    goto LABEL_73;
  }

  if (v37 == 2)
  {
    if (v245->i32[0] != *v234 || v245->i32[1] != v234[1])
    {
      goto LABEL_73;
    }
  }

  else if (v37 >= 1)
  {
    v38 = v245;
    v39 = v234;
    do
    {
      v41 = v38->i32[0];
      v38 = (v38 + 4);
      v40 = v41;
      v42 = *v39++;
      if (v40 != v42)
      {
        goto LABEL_73;
      }
    }

    while (--v37);
  }

  v43 = v237;
  if (((v237 ^ v226) & 0xFF8) == 0)
  {
    if (v17 != 0x20000 || (v245->i32[0] != 4 ? (v76 = v245->i32[0] == 1) : (v76 = 1), !v76 ? (v77 = 0) : (v77 = 1), v245->i32[1] != 1 || (v77 & 1) == 0))
    {
      v53 = v226 & 7;
      if (v18 != 0x20000)
      {
        v51 = 0;
        v191 = 0;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_216;
      }

      v51 = 0;
      v79 = *v234 == 4 || *v234 == 1;
      if (v234[1] != 1)
      {
        v191 = 0;
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_216;
      }

      v191 = 0;
      if (!v79)
      {
LABEL_215:
        if ((v9 & 0x80000000) == 0)
        {
          goto LABEL_221;
        }

        goto LABEL_216;
      }
    }
  }

LABEL_73:
  v44 = v226 & 0xFFF;
  if (SHIDWORD(v237) >= 3)
  {
    v45 = v237;
LABEL_84:
    if (SHIDWORD(v226) > 2 || (v227 != 1 ? (v48 = v228 == 1) : (v48 = 1), v48 ? (v49 = (v226 & 0x4000) == 0) : (v49 = 1), v49 || v17 == 0x20000 && v18 != 0x20000))
    {
LABEL_94:
      std::string::basic_string[abi:ne200100]<0>(v221, "The operation is neither 'array op array' (where arrays have the same size and the same number of channels), nor 'array op scalar', nor 'scalar op array'");
      std::string::basic_string[abi:ne200100]<0>(v213, "arithm_op");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(&v255, 4294967087, v221, v213, __p, 1295);
      cv::error(&v255, v50);
    }

    v51 = 0;
    v71 = (v45 >> 3) & 0x1FF;
    v72 = *v234;
    v73 = v234[1];
    v74 = v73 == v71 + 1;
    if (*v234 != 1)
    {
      v74 = 0;
    }

    v75 = v72 == v71 + 1 || *v234 == 1;
    if (v73 != 1)
    {
      v75 = 0;
    }

    if (!v75 && !v74)
    {
      if (v73 != 1 || v72 != 4 || v44 != 6 || v71 >= 4)
      {
        goto LABEL_94;
      }

      v51 = 0;
    }

    goto LABEL_96;
  }

  v45 = v237;
  v47 = v238 != 1 && v239 != 1 || (v237 & 0x4000) == 0;
  if (v47 || v17 != 0x20000 && v18 == 0x20000)
  {
    goto LABEL_84;
  }

  v66 = (v44 >> 3) + 1;
  v67 = v245->i32[0];
  v68 = v245->i32[1];
  v69 = v68 == v66;
  if (v245->i32[0] != 1)
  {
    v69 = 0;
  }

  v70 = v67 == v66 || v245->i32[0] == 1;
  if (v68 != 1)
  {
    v70 = 0;
  }

  if (!v70 && !v69 && (v68 != 1 || v67 != 4 || v44 > 0x1F || (v237 & 0xFFF) != 6))
  {
    goto LABEL_84;
  }

  cv::swap(&v237, &v226, v19);
  v51 = 1;
LABEL_96:
  if ((v226 & 0xFFF) != 6 || v227 != 1 && v227 != 4)
  {
    std::string::basic_string[abi:ne200100]<0>(v221, "src2.type() == CV_64F && (src2.rows == 4 || src2.rows == 1)");
    std::string::basic_string[abi:ne200100]<0>(v213, "arithm_op");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v255, 4294967081, v221, v213, __p, 1297);
    cv::error(&v255, v52);
  }

  v43 = v237;
  if (v5)
  {
    v191 = 1;
    v53 = 6;
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_221;
    }

    goto LABEL_216;
  }

  v54 = v229;
  v55 = ((v237 >> 3) & 0x1FF) + 1;
  v56 = 0x7FFFFFFF;
  v57 = 0x80000000;
  do
  {
    v58 = rint(*v54);
    if (*v54 != v58)
    {
      if ((v237 & 7) == 5)
      {
        v59 = 5;
      }

      else
      {
        v59 = 6;
      }

      if ((v237 & 7u) >= 4)
      {
        v53 = v59;
      }

      else
      {
        v53 = 5;
      }

      goto LABEL_214;
    }

    if (v57 <= v58)
    {
      v57 = v58;
    }

    if (v56 >= v58)
    {
      v56 = v58;
    }

    ++v54;
    --v55;
  }

  while (v55);
  if ((v56 & 0x80000000) == 0 && v57 < 256)
  {
    v53 = 0;
LABEL_214:
    v191 = 1;
    goto LABEL_215;
  }

  if (v56 >= -128 && v57 < 128)
  {
    v53 = 1;
    goto LABEL_214;
  }

  if (v56 < 0 || v57 >= 0x10000)
  {
    if (v57 >= 0x8000 || v56 <= -32769)
    {
      v53 = 4;
    }

    else
    {
      v53 = 3;
    }

    goto LABEL_214;
  }

  v191 = 1;
  v53 = 2;
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_221;
  }

LABEL_216:
  if ((*(*v13 + 104))(v13))
  {
    LOBYTE(v9) = (*(*v13 + 64))(v13, 0xFFFFFFFFLL);
  }

  else
  {
    LOBYTE(v9) = v237;
    if ((v191 & 1) == 0 && ((v226 ^ v237) & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v221, "When the input arrays in add/subtract/multiply/divide functions have different types, the output array type must be explicitly specified");
      std::string::basic_string[abi:ne200100]<0>(v213, "arithm_op");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(&v255, 4294967291, v221, v213, __p, 1321);
      cv::error(&v255, v89);
    }
  }

LABEL_221:
  v90 = v43 & 7;
  v91 = v9 & 7;
  if (v90 != v53 || (v92 = v53, v91 != v90))
  {
    if (v5)
    {
      if (v53 <= v90)
      {
        v93 = v43 & 7;
      }

      else
      {
        v93 = v53;
      }

      if (v93 <= v91)
      {
        v93 = v9 & 7;
      }

      v94 = v93 > 5;
      v95 = 5;
    }

    else
    {
      if (v90 > 1 || v53 >= 2)
      {
        if (v90 <= v53)
        {
          v93 = v53;
        }

        else
        {
          v93 = v43 & 7;
        }

        if (v53 < 5 && v90 < 5)
        {
          v93 = 4;
        }
      }

      else
      {
        v93 = 3;
      }

      if (v93 <= v91)
      {
        v93 = v9 & 7;
      }

      if (v53 >= 5 && v90 >= 5)
      {
        v95 = v93;
      }

      else
      {
        v95 = 4;
      }

      v94 = v91 > 4;
    }

    if (v94)
    {
      v92 = v93;
    }

    else
    {
      v92 = v95;
    }
  }

  if (v90 == v92)
  {
    ConvertFunc = 0;
  }

  else
  {
    ConvertFunc = cv::getConvertFunc((v43 & 7), v92);
  }

  v206 = ConvertFunc;
  v199 = ConvertFunc;
  if (v90 != v53)
  {
    if (v53 == v92)
    {
      v199 = 0;
    }

    else
    {
      v199 = cv::getConvertFunc(v53, v92);
    }
  }

  if (v91 == v92)
  {
    v196 = 0;
  }

  else
  {
    v196 = cv::getConvertFunc(v92, v9 & 7);
  }

  v204 = ((v43 >> 3) & 0x1FF) + 1;
  v99 = 8 * v204 - 8;
  if (SHIDWORD(v237) < 1)
  {
    v201 = 0;
  }

  else
  {
    v201 = *(v246 + HIDWORD(v237) - 1);
  }

  v100 = v91 | v99;
  if (SHIDWORD(v226) < 1)
  {
    v194 = 0;
  }

  else
  {
    v194 = *(v235 + HIDWORD(v226) - 1);
  }

  v101 = (v99 >> 3) + 1;
  v224[1] = 0;
  v225 = (v101 << ((0xFA50u >> (2 * (v100 & 7))) & 3));
  v222 = &v221[8];
  v223 = v224;
  v224[0] = 0;
  *v221 = 1124007936;
  memset(&v221[4], 0, 60);
  if (v197)
  {
    v102 = 0;
    CopyMaskFunc = 0;
    v103 = 1;
    goto LABEL_327;
  }

  (**v189)(&v255);
  if (v258)
  {
    atomic_fetch_add(v258, 1u);
  }

  if (*&v221[24] && atomic_fetch_add(*&v221[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v221);
  }

  *&v221[16] = 0;
  memset(&v221[32], 0, 24);
  if (*v221 <= 0)
  {
    *&v221[24] = 0;
    *v221 = v255.i32[0];
  }

  else
  {
    v104 = 0;
    v105 = v222;
    do
    {
      v105[v104++] = 0;
    }

    while (v104 < *&v221[4]);
    *&v221[24] = 0;
    *v221 = v255.i32[0];
    if (*&v221[4] > 2)
    {
      goto LABEL_284;
    }
  }

  if (v255.i32[1] > 2)
  {
LABEL_284:
    cv::Mat::copySize(v221, &v255);
    goto LABEL_285;
  }

  *&v221[4] = v255.i32[1];
  *&v221[8] = v256;
  v106 = v262;
  v107 = v223;
  *v223 = *v262;
  v107[1] = v106[1];
LABEL_285:
  *&v221[40] = v259;
  *&v221[24] = v258;
  *&v221[16] = v257;
  *&v221[56] = v260;
  if (v258 && atomic_fetch_add(v258, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v255);
  }

  v257 = 0;
  v259 = 0uLL;
  *(&v258 + 1) = 0;
  if (v255.i32[1] >= 1)
  {
    v108 = 0;
    v109 = v261;
    do
    {
      v109[v108++] = 0;
    }

    while (v108 < v255.i32[1]);
  }

  *&v258 = 0;
  if (v262)
  {
    v110 = v262 == v263;
  }

  else
  {
    v110 = 1;
  }

  if (!v110)
  {
    free(v262);
  }

  if ((*v221 & 0xFFE) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v213, "(mask.type() == CV_8UC1 || mask.type() == CV_8SC1)");
    std::string::basic_string[abi:ne200100]<0>(__p, "arithm_op");
    std::string::basic_string[abi:ne200100]<0>(&v250, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v255, 4294967081, v213, __p, &v250, 1363);
    cv::error(&v255, v111);
  }

  v112 = v222;
  v113 = *(v222 - 1);
  v114 = v245;
  if (v113 != v245[-1].i32[1])
  {
    goto LABEL_302;
  }

  if (v113 != 2)
  {
    if (v113 < 1)
    {
      goto LABEL_306;
    }

    while (1)
    {
      v117 = *v112++;
      v116 = v117;
      v118 = v114->i32[0];
      v114 = (v114 + 4);
      if (v116 != v118)
      {
        break;
      }

      if (!--v113)
      {
        goto LABEL_306;
      }
    }

LABEL_302:
    std::string::basic_string[abi:ne200100]<0>(v213, "mask.size == src1.size");
    std::string::basic_string[abi:ne200100]<0>(__p, "arithm_op");
    std::string::basic_string[abi:ne200100]<0>(&v250, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v255, 4294967081, v213, __p, &v250, 1364);
    cv::error(&v255, v115);
  }

  if (*v222 != v245->i32[0] || v222[1] != v245->i32[1])
  {
    goto LABEL_302;
  }

LABEL_306:
  CopyMaskFunc = cv::getCopyMaskFunc(v225);
  (**v13)(&v255, v13, 0xFFFFFFFFLL);
  v119 = v261;
  v120 = *(v261 - 1);
  v121 = v245;
  if (v120 != v245[-1].i32[1])
  {
LABEL_310:
    v103 = 0;
    goto LABEL_315;
  }

  if (v120 == 2)
  {
    if (*v261 != v245->i32[0] || v261[1] != v245->i32[1])
    {
      goto LABEL_310;
    }
  }

  else if (v120 >= 1)
  {
    do
    {
      v123 = *v119++;
      v122 = v123;
      v124 = v121->i32[0];
      v121 = (v121 + 4);
      if (v122 != v124)
      {
        goto LABEL_310;
      }
    }

    while (--v120);
  }

  v103 = (v255.i16[0] & 0xFFF) == v100;
LABEL_315:
  if (v258 && atomic_fetch_add(v258, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v255);
  }

  v257 = 0;
  *(&v258 + 1) = 0;
  v259 = 0uLL;
  if (v255.i32[1] >= 1)
  {
    v125 = 0;
    v126 = v261;
    do
    {
      v126[v125++] = 0;
    }

    while (v125 < v255.i32[1]);
  }

  *&v258 = 0;
  if (v262)
  {
    v127 = v262 == v263;
  }

  else
  {
    v127 = 1;
  }

  if (!v127)
  {
    free(v262);
  }

  v102 = v225;
LABEL_327:
  v128 = (v99 & 0xFFFFFFF8 | v92 & 7);
  v129 = (v101 << ((0xFA50u >> (2 * (v128 & 7))) & 3));
  v255 = &v257;
  v256 = 4104;
  if (v206)
  {
    v130 = v129;
  }

  else
  {
    v130 = 0;
  }

  v131 = v191;
  if (v199)
  {
    v131 = 1;
  }

  if (v131)
  {
    v132 = v129;
  }

  else
  {
    v132 = 0;
  }

  if (v196)
  {
    v133 = v129;
  }

  else
  {
    v133 = 0;
  }

  (*(*v13 + 144))(v13);
  (**v13)(v213, v13, 0xFFFFFFFFLL);
  if (!v103)
  {
    *__p = 0u;
    v210 = 0u;
    cv::Mat::operator=(v213, __p);
  }

  v134 = v197 ^ 1;
  v135 = v102 + v132 + v130 + v133;
  v203 = *(v202 + 8 * (v92 & 7));
  v136 = (v129 + 1023) / v129;
  if (v191)
  {
    v250 = &v237;
    v251 = v213;
    v252 = v221;
    v253 = 0;
    v248 = 0uLL;
    *&v249 = 0;
    cv::NAryMatIterator::NAryMatIterator(__p, &v250, &v248, -1);
    v137 = v212;
    if (v212 < v136)
    {
      v136 = v212;
    }

    v138 = v136 * v135 + 64;
    v139 = v255;
    if (v256 < v138)
    {
      if (v255 != &v257)
      {
        if (v255)
        {
          MEMORY[0x2318CB180](*&v255, 0x1000C8077774924);
        }

        v139 = &v257;
        v255 = &v257;
      }

      v256 = v138;
      if (v138 >= 0x1009)
      {
        operator new[]();
      }
    }

    v140 = v136 * v129;
    if (v206)
    {
      v141 = ((v139 + v140 + 15) & 0xFFFFFFFFFFFFFFF0);
    }

    else
    {
      v141 = v139;
    }

    cv::convertAndUnrollScalar(&v226, v128, v141, v136);
    v142 = 0;
    v200 = (v141 + v140 + 15) & 0xFFFFFFFFFFFFFFF0;
    v195 = v200 + v140 + 15;
    if (v196)
    {
      v134 = 1;
    }

    while (v142 < v211)
    {
      v192 = v142;
      if (v137)
      {
        v143 = 0;
        v145 = *(&v248 + 1);
        v144 = v248;
        do
        {
          if (&v137[-v143] >= v136)
          {
            v146 = v136;
          }

          else
          {
            v146 = &v137[-v143];
          }

          if (v206)
          {
            v207 = v204 * v146;
            v208 = 1;
            v206(v144, 0, 0, 0, v139, 0, &v207, 0);
            v144 = v139;
          }

          if (v51)
          {
            v147 = v141;
          }

          else
          {
            v147 = v144;
          }

          if (v51)
          {
            v148 = v144;
          }

          else
          {
            v148 = v141;
          }

          if (v134)
          {
            v207 = v204 * v146;
            v208 = 1;
            v203(v147, 0, v148, 0, v200, 0, &v207, v205);
            if (v197)
            {
              v207 = v204 * v146;
              v208 = 1;
              v196(v200, 0, 0, 0, v145, 0, &v207, 0);
            }

            else
            {
              if (v196)
              {
                v207 = v204 * v146;
                v208 = 1;
                v196(v200, 0, 0, 0, v195 & 0xFFFFFFFFFFFFFFF0, 0, &v207, 0);
                v207 = v146;
                v208 = 1;
                CopyMaskFunc(v195 & 0xFFFFFFFFFFFFFFF0, 0, v249, 0, v145, 0, &v207, &v225);
              }

              else
              {
                v207 = v146;
                v208 = 1;
                CopyMaskFunc(v200, 0, v249, 0, v145, 0, &v207, &v225);
              }

              *&v249 = v249 + v146;
            }
          }

          else
          {
            v207 = v204 * v146;
            v208 = 1;
            v203(v147, 0, v148, 0, v145, 0, &v207, v205);
          }

          v144 = (v248 + v146 * v201);
          v145 = *(&v248 + 1) + v225 * v146;
          *&v248 = v144;
          *(&v248 + 1) = v145;
          v143 += v136;
        }

        while (v143 < v137);
      }

      v142 = v192 + 1;
      cv::NAryMatIterator::operator++(__p);
    }
  }

  else
  {
    v250 = &v237;
    v251 = &v226;
    v252 = v213;
    v253 = v221;
    v254 = 0;
    v248 = 0u;
    v249 = 0u;
    cv::NAryMatIterator::NAryMatIterator(__p, &v250, &v248, -1);
    if (v206)
    {
      v149 = 1;
    }

    else
    {
      v149 = v197 ^ 1;
    }

    if (v199)
    {
      v149 = 1;
    }

    if (v196)
    {
      v149 = 1;
    }

    if (v212 >= v136)
    {
      v150 = ((v129 + 1023) / v129);
    }

    else
    {
      v150 = v212;
    }

    v198 = v212;
    if (v149)
    {
      v151 = v150;
    }

    else
    {
      v151 = v212;
    }

    v152 = v151 * v135 + 64;
    v153 = v255;
    if (v256 >= v152)
    {
      v154 = v206;
    }

    else
    {
      if (v255 == &v257)
      {
        v154 = v206;
      }

      else
      {
        v154 = v206;
        if (v255)
        {
          MEMORY[0x2318CB180](*&v255, 0x1000C8077774924);
        }

        v153 = &v257;
        v255 = &v257;
      }

      v256 = v152;
      if (v152 >= 0x1009)
      {
        operator new[]();
      }
    }

    v155 = 0;
    v156 = v151 * v129;
    if (v154)
    {
      v157 = (v153 + v151 * v129 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v157 = v153;
    }

    if (v199)
    {
      v158 = (v157 + v156 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    else
    {
      v158 = v157;
    }

    if (v199)
    {
      v159 = v157;
    }

    else
    {
      v159 = 0;
    }

    v186 = v159;
    v187 = v157;
    v190 = v158;
    v185 = v158 + v156 + 15;
    if (v196)
    {
      v160 = 1;
    }

    else
    {
      v160 = v197 ^ 1;
    }

    v193 = v160;
    while (v155 < v211)
    {
      v184 = v155;
      if (v198)
      {
        v161 = 0;
        v163 = *(&v248 + 1);
        v162 = v248;
        v164 = v198;
        v165 = v249;
        do
        {
          v166 = v164;
          v32 = v164 >= v151;
          v164 -= v151;
          if (v32)
          {
            v167 = v151;
          }

          else
          {
            v167 = v166;
          }

          if (v154)
          {
            v207 = v204 * v167;
            v208 = 1;
            v154(v162, 0, 0, 0, v153, 0, &v207, 0);
            v168 = *(&v248 + 1);
            v162 = v248;
            v169 = v153;
          }

          else
          {
            v168 = v163;
            v169 = v162;
          }

          if (v162 == v168)
          {
            v170 = v169;
          }

          else
          {
            v170 = v163;
          }

          if (v162 != v168 && v199)
          {
            v207 = v204 * v167;
            v208 = 1;
            v199(v163, 0, 0, 0, v187, 0, &v207, 0);
            v170 = v186;
          }

          if (v193)
          {
            v207 = v204 * v167;
            v208 = 1;
            v203(v169, 0, v170, 0, v190, 0, &v207, v205);
            if (v197)
            {
              v207 = v204 * v167;
              v208 = 1;
              v196(v190, 0, 0, 0, v165, 0, &v207, 0);
            }

            else
            {
              if (v196)
              {
                v207 = v204 * v167;
                v208 = 1;
                v196(v190, 0, 0, 0, v185 & 0xFFFFFFFFFFFFFFF0, 0, &v207, 0);
                v207 = v167;
                v208 = 1;
                CopyMaskFunc(v185 & 0xFFFFFFFFFFFFFFF0, 0, *(&v249 + 1), 0, v165, 0, &v207, &v225);
              }

              else
              {
                v207 = v167;
                v208 = 1;
                CopyMaskFunc(v190, 0, *(&v249 + 1), 0, v165, 0, &v207, &v225);
              }

              *(&v249 + 1) += v167;
            }
          }

          else
          {
            v207 = v204 * v167;
            v208 = 1;
            v203(v169, 0, v170, 0, v165, 0, &v207, v205);
          }

          v162 = (v248 + v167 * v201);
          v163 = (*(&v248 + 1) + v167 * v194);
          *&v248 = v162;
          *(&v248 + 1) = v163;
          v165 = v249 + v225 * v167;
          *&v249 = v165;
          v161 += v151;
          v154 = v206;
        }

        while (v161 < v198);
      }

      v155 = v184 + 1;
      cv::NAryMatIterator::operator++(__p);
    }
  }

  if (v214 && atomic_fetch_add(v214, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v213);
  }

  v213[2] = 0;
  v215 = 0;
  v216 = 0;
  v217 = 0;
  if (SHIDWORD(v213[0]) >= 1)
  {
    v171 = 0;
    v172 = v218;
    do
    {
      *(v172 + 4 * v171++) = 0;
    }

    while (v171 < SHIDWORD(v213[0]));
  }

  v214 = 0;
  if (v219)
  {
    v173 = v219 == &v220;
  }

  else
  {
    v173 = 1;
  }

  if (!v173)
  {
    free(v219);
  }

  if (v255 != &v257 && *&v255 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  if (*&v221[24] && atomic_fetch_add(*&v221[24], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v221);
  }

  *&v221[16] = 0;
  memset(&v221[32], 0, 24);
  if (*&v221[4] >= 1)
  {
    v175 = 0;
    v176 = v222;
    do
    {
      v176[v175++] = 0;
    }

    while (v175 < *&v221[4]);
  }

  *&v221[24] = 0;
  v86 = v223;
  if (v223)
  {
    v177 = v223 == v224;
  }

  else
  {
    v177 = 1;
  }

  if (!v177)
  {
LABEL_465:
    free(v86);
  }

LABEL_466:
  if (v230 && atomic_fetch_add(v230, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v226);
  }

  v229 = 0;
  v231 = 0;
  v232 = 0;
  v233 = 0;
  if (SHIDWORD(v226) >= 1)
  {
    v178 = 0;
    v179 = v234;
    do
    {
      v179[v178++] = 0;
    }

    while (v178 < SHIDWORD(v226));
  }

  v230 = 0;
  if (v235)
  {
    v180 = v235 == &v236;
  }

  else
  {
    v180 = 1;
  }

  if (!v180)
  {
    free(v235);
  }

  if (v241 && atomic_fetch_add(v241, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v237);
  }

  v240 = 0;
  v242 = 0;
  v244 = 0;
  v243 = 0;
  if (SHIDWORD(v237) >= 1)
  {
    v181 = 0;
    v182 = v245;
    do
    {
      v182->i32[v181++] = 0;
    }

    while (v181 < SHIDWORD(v237));
  }

  v241 = 0;
  if (v246)
  {
    v183 = v246 == &v247;
  }

  else
  {
    v183 = 1;
  }

  if (!v183)
  {
    free(v246);
  }
}

void sub_22D22EE88(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void cv::absdiff(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4)
{
  cv::noArray(this);

  cv::arithm_op(this, a2);
}

void cv::compare(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4)
{
  v4 = MEMORY[0x28223BE20](this, a2);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v160[3] = *MEMORY[0x277D85DE8];
  v133 = v10;
  if (v10 >= 6)
  {
    std::string::basic_string[abi:ne200100]<0>(&v124, "op == CMP_LT || op == CMP_LE || op == CMP_EQ || op == CMP_NE || op == CMP_GE || op == CMP_GT");
    std::string::basic_string[abi:ne200100]<0>(&v115, "compare");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
    cv::Exception::Exception(&v144, 4294967081, &v124, &v115, &__p, 2464);
    cv::error(&v144, v11);
  }

  v12 = (*(*v4 + 40))(v4);
  v13 = (*(*v8 + 40))(v8);
  (**v9)(&v124, v9, 0xFFFFFFFFLL);
  (**v8)(&v115, v8, 0xFFFFFFFFLL);
  v16 = v12 == v13 && SHIDWORD(v124) <= 2 && SHIDWORD(v115) <= 2;
  if (!v16 || ((v17 = *v130, v130[1] == v121[1]) ? (v18 = v17 == *v121) : (v18 = 0), !v18 || ((v115 ^ v124) & 0xFFF) != 0))
  {
    if ((v12 == 0x20000) != (v13 == 0x20000))
    {
      goto LABEL_27;
    }

    v19 = v130;
    v20 = *(v130 - 1);
    v21 = v121;
    if (v20 != *(v121 - 1))
    {
      goto LABEL_27;
    }

    if (v20 == 2)
    {
      if (*v130 != *v121 || v130[1] != v121[1])
      {
        goto LABEL_27;
      }
    }

    else if (v20 >= 1)
    {
      do
      {
        v23 = *v19++;
        v22 = v23;
        v24 = *v21++;
        if (v22 != v24)
        {
          goto LABEL_27;
        }
      }

      while (--v20);
    }

    if (((v115 ^ v124) & 0xFFF) == 0)
    {
      v91 = 0;
      goto LABEL_68;
    }

LABEL_27:
    v25 = v115 & 0xFFF;
    if (SHIDWORD(v124) < 3)
    {
      v26 = v124;
      if (HIDWORD(v125) == 1 || v125 == 1)
      {
        v28 = v12 != 0x20000 && v13 == 0x20000;
        v29 = v28;
        if ((v124 & 0x4000) != 0 && !v29)
        {
          v30 = (v25 >> 3) + 1;
          v31 = *v130;
          v32 = v130[1];
          v33 = v32 == v30;
          if (*v130 != 1)
          {
            v33 = 0;
          }

          v34 = v31 == v30 || *v130 == 1;
          if (v32 != 1)
          {
            v34 = 0;
          }

          if (v34 || v33 || v32 == 1 && v31 == 4 && v25 <= 0x1F && (v124 & 0xFFF) == 6)
          {
            cv::swap(&v124, &v115, v14);
            v35 = v133;
            if ((v133 - 2) >= 3)
            {
              if (v133 == 1)
              {
                v35 = 3;
              }
            }

            else
            {
              v35 = dword_22D29B868[v133 - 2];
            }

            v133 = v35;
            v91 = 1;
LABEL_68:
            v39 = v115;
            v40 = v124;
            (*(*v6 + 144))(v6, HIDWORD(v124), v130, v124 & 0xFF8, 0xFFFFFFFFLL, 0, 0);
            cv::Mat::reshape(&v124, 1, 0, &v144);
            if (v147)
            {
              atomic_fetch_add(v147, 1u);
            }

            if (v127 && atomic_fetch_add(v127, 0xFFFFFFFF) == 1)
            {
              cv::Mat::deallocate(&v124);
            }

            v126 = 0;
            v128 = 0uLL;
            *(&v127 + 1) = 0;
            if (v124 <= 0)
            {
              *&v127 = 0;
              LODWORD(v124) = v144;
            }

            else
            {
              v41 = 0;
              v42 = v130;
              do
              {
                v42[v41++] = 0;
              }

              while (v41 < SHIDWORD(v124));
              *&v127 = 0;
              LODWORD(v124) = v144;
              if (SHIDWORD(v124) > 2)
              {
                goto LABEL_81;
              }
            }

            if (SHIDWORD(v144) <= 2)
            {
              HIDWORD(v124) = HIDWORD(v144);
              v125 = v145;
              v43 = v151;
              v44 = v131;
              *v131 = *v151;
              v44[1] = v43[1];
LABEL_82:
              v126 = v146;
              v128 = v148;
              v127 = v147;
              v129 = v149;
              if (v147 && atomic_fetch_add(v147, 0xFFFFFFFF) == 1)
              {
                cv::Mat::deallocate(&v144);
              }

              v146 = 0;
              v148 = 0uLL;
              *(&v147 + 1) = 0;
              if (SHIDWORD(v144) >= 1)
              {
                v45 = 0;
                v46 = v150;
                do
                {
                  *(v46 + 4 * v45++) = 0;
                }

                while (v45 < SHIDWORD(v144));
              }

              *&v147 = 0;
              if (v151)
              {
                v47 = v151 == v152;
              }

              else
              {
                v47 = 1;
              }

              if (!v47)
              {
                free(v151);
              }

              cv::Mat::reshape(&v115, 1, 0, &v144);
              if (v147)
              {
                atomic_fetch_add(v147, 1u);
              }

              if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
              {
                cv::Mat::deallocate(&v115);
              }

              v117 = 0;
              v119 = 0uLL;
              *(&v118 + 1) = 0;
              if (v115 <= 0)
              {
                *&v118 = 0;
                LODWORD(v115) = v144;
              }

              else
              {
                v48 = 0;
                v49 = v121;
                do
                {
                  v49[v48++] = 0;
                }

                while (v48 < SHIDWORD(v115));
                *&v118 = 0;
                LODWORD(v115) = v144;
                if (SHIDWORD(v115) > 2)
                {
                  goto LABEL_106;
                }
              }

              if (SHIDWORD(v144) <= 2)
              {
                HIDWORD(v115) = HIDWORD(v144);
                v116 = v145;
                v50 = v151;
                v51 = v122;
                *v122 = *v151;
                v51[1] = v50[1];
LABEL_107:
                v117 = v146;
                v119 = v148;
                v118 = v147;
                v120 = v149;
                if (v147 && atomic_fetch_add(v147, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(&v144);
                }

                v146 = 0;
                v148 = 0uLL;
                *(&v147 + 1) = 0;
                if (SHIDWORD(v144) >= 1)
                {
                  v52 = 0;
                  v53 = v150;
                  do
                  {
                    *(v53 + 4 * v52++) = 0;
                  }

                  while (v52 < SHIDWORD(v144));
                }

                *&v147 = 0;
                if (v151)
                {
                  v54 = v151 == v152;
                }

                else
                {
                  v54 = 1;
                }

                if (!v54)
                {
                  free(v151);
                }

                (**v6)(&v144, v6, 0xFFFFFFFFLL);
                cv::Mat::reshape(&v144, 1, 0, &__p);
                if (v147 && atomic_fetch_add(v147, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(&v144);
                }

                v146 = 0;
                v148 = 0uLL;
                *(&v147 + 1) = 0;
                if (SHIDWORD(v144) >= 1)
                {
                  v55 = 0;
                  v56 = v150;
                  do
                  {
                    *(v56 + 4 * v55++) = 0;
                  }

                  while (v55 < SHIDWORD(v144));
                }

                v57 = (v40 & 7);
                *&v147 = 0;
                if (v151)
                {
                  v58 = v151 == v152;
                }

                else
                {
                  v58 = 1;
                }

                if (!v58)
                {
                  free(v151);
                }

                if (SHIDWORD(v124) < 1)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = v131[HIDWORD(v124) - 1];
                }

                v60 = cv::getCmpFunc(int)::cmpTab[v57];
                if ((v91 & 1) == 0)
                {
                  v134.i64[0] = &v124;
                  v134.i64[1] = &v115;
                  v135 = COERCE_DOUBLE(&__p);
                  v136 = 0.0;
                  v153 = 0;
                  v154 = 0;
                  v155 = 0;
                  cv::NAryMatIterator::NAryMatIterator(&v144, &v134, &v153, -1);
                  v68 = v148;
                  v69 = -1;
                  while (++v69 < *(&v147 + 1))
                  {
                    v160[0] = (v68 | 0x100000000);
                    (v60)(v153, 0, v154, 0, v155, 0, v160, &v133);
                    cv::NAryMatIterator::operator++(&v144);
                  }

LABEL_175:
                  if (v108 && atomic_fetch_add(v108, 0xFFFFFFFF) == 1)
                  {
                    cv::Mat::deallocate(&__p);
                  }

                  v107 = 0;
                  v109 = 0;
                  v110 = 0;
                  v111 = 0;
                  if (__p_4 >= 1)
                  {
                    v75 = 0;
                    v76 = v112;
                    do
                    {
                      *(v76 + 4 * v75++) = 0;
                    }

                    while (v75 < __p_4);
                  }

                  v108 = 0;
                  v77 = v113;
                  v78 = &v114;
                  goto LABEL_182;
                }

                v160[0] = &v124;
                v160[1] = &__p;
                v160[2] = 0;
                v158 = 0;
                v159 = 0;
                cv::NAryMatIterator::NAryMatIterator(&v153, v160, &v158, -1);
                v61 = v157;
                if ((v59 + 1023) / v59 >= v157)
                {
                  v62 = v157;
                }

                else
                {
                  v62 = (v59 + 1023) / v59;
                }

                v144 = &v146;
                v145 = 4104;
                if (v62 * v59 >= 0x1009)
                {
                  v145 = v62 * v59;
                  operator new[]();
                }

                if (v57 >= 5)
                {
                  cv::convertAndUnrollScalar(&v115, v57, &v146, v62);
LABEL_140:
                  for (i = 0; i < v156; ++i)
                  {
                    if (v61)
                    {
                      v64 = 0;
                      v65 = v158;
                      v66 = v159;
                      do
                      {
                        if (v61 - v64 >= v62)
                        {
                          v67 = v62;
                        }

                        else
                        {
                          v67 = v61 - v64;
                        }

                        v134.i64[0] = v67 | 0x100000000;
                        (v60)(v65, 0, &v146, 0, v66, 0, &v134, &v133);
                        v65 = &v158[v67 * v59];
                        v66 = v159 + v67;
                        v158 = v65;
                        v159 = v66;
                        v64 += v62;
                      }

                      while (v64 < v61);
                    }

                    cv::NAryMatIterator::operator++(&v153);
                  }

                  if (v144 != &v146 && v144 != 0)
                  {
                    MEMORY[0x2318CB180]();
                  }

                  goto LABEL_175;
                }

                v104 = 0.0;
                ConvertFunc = cv::getConvertFunc((v39 & 7), 6);
                v134.i64[0] = 0x100000001;
                ConvertFunc(v117, 0, 0, 0, &v104, 0, &v134, 0);
                if (v104 >= cv::getMinVal(int)::tab[v57])
                {
                  if (v104 <= cv::getMaxVal(int)::tab[v57])
                  {
                    v103 = rint(v104);
                    if (v104 != v103)
                    {
                      if ((v133 & 0xFFFFFFFE) == 2)
                      {
                        v98 = v104;
                        if (v104 > v104)
                        {
                          ++v98;
                        }
                      }

                      else
                      {
                        if (v133 != 4 && v133 != 1)
                        {
                          if (v133 == 5)
                          {
                            v102 = 255;
                          }

                          else
                          {
                            v102 = 0;
                          }

                          *v134.i64 = v102;
                          *&v134.i64[1] = v102;
                          v135 = v102;
                          v136 = v102;
                          cv::Mat::operator=(&__p, &v134);
LABEL_172:
                          if (v144 != &v146 && v144)
                          {
                            MEMORY[0x2318CB180]();
                          }

                          goto LABEL_175;
                        }

                        v98 = v104 - (v104 < v104);
                      }

                      v103 = v98;
                    }

                    *(v134.i64 + 4) = 0x100000002;
                    v135 = COERCE_DOUBLE(&v103);
                    v136 = 0.0;
                    v137 = &v103;
                    v140 = 0;
                    v141 = &v134.i64[1];
                    v142 = &v143;
                    v134.i32[3] = 1;
                    v134.i32[0] = 1124024324;
                    v143 = vdupq_n_s64(4uLL);
                    v138 = &v104;
                    v139 = &v104;
                    cv::convertAndUnrollScalar(&v134, v57, &v146, v62);
                    if (v136 != 0.0 && atomic_fetch_add(*&v136, 0xFFFFFFFF) == 1)
                    {
                      cv::Mat::deallocate(&v134);
                    }

                    v135 = 0.0;
                    v138 = 0;
                    v139 = 0;
                    v137 = 0;
                    if (v134.i32[1] >= 1)
                    {
                      v99 = 0;
                      v100 = v141;
                      do
                      {
                        *(v100 + v99++) = 0;
                      }

                      while (v99 < v134.i32[1]);
                    }

                    v136 = 0.0;
                    if (v142)
                    {
                      v101 = v142 == &v143;
                    }

                    else
                    {
                      v101 = 1;
                    }

                    if (!v101)
                    {
                      free(v142);
                    }

                    goto LABEL_140;
                  }

                  if (v133 == 5)
                  {
                    v74 = 255;
                  }

                  else
                  {
                    v74 = 0;
                  }

                  v73 = v74;
                  if ((v133 - 3) < 2)
                  {
                    v73 = 255.0;
                  }
                }

                else
                {
                  if (v133 == 5)
                  {
                    v72 = 255;
                  }

                  else
                  {
                    v72 = 0;
                  }

                  v73 = v72;
                  if ((v133 - 1) < 2)
                  {
                    v73 = 255.0;
                  }
                }

                *v134.i64 = v73;
                *&v134.i64[1] = v73;
                v135 = v73;
                v136 = v73;
                cv::Mat::operator=(&__p, &v134);
                goto LABEL_172;
              }

LABEL_106:
              cv::Mat::copySize(&v115, &v144);
              goto LABEL_107;
            }

LABEL_81:
            cv::Mat::copySize(&v124, &v144);
            goto LABEL_82;
          }
        }
      }
    }

    else
    {
      v26 = v124;
    }

    if (SHIDWORD(v115) > 2)
    {
      goto LABEL_67;
    }

    v36 = v116 == 1 || HIDWORD(v116) == 1;
    v37 = !v36 || (v115 & 0x4000) == 0;
    if (v37 || v12 == 0x20000 && v13 != 0x20000)
    {
      goto LABEL_67;
    }

    v86 = (v26 >> 3) & 0x1FF;
    v87 = *v121;
    v88 = v121[1];
    v89 = v88 == v86 + 1;
    if (*v121 != 1)
    {
      v89 = 0;
    }

    v90 = v87 == v86 + 1 || *v121 == 1;
    if (v88 != 1)
    {
      v90 = 0;
    }

    v91 = 1;
    if (!v90 && !v89 && (v88 != 1 || v87 != 4 || v25 != 6 || v86 >= 4))
    {
LABEL_67:
      std::string::basic_string[abi:ne200100]<0>(&__p, "The operation is neither 'array op array' (where arrays have the same size and the same type), nor 'array op scalar', nor 'scalar op array'");
      std::string::basic_string[abi:ne200100]<0>(&v134, "compare");
      std::string::basic_string[abi:ne200100]<0>(&v153, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/arithm.cpp");
      cv::Exception::Exception(&v144, 4294967087, &__p, &v134, &v153, 2494);
      cv::error(&v144, v38);
    }

    goto LABEL_68;
  }

  LODWORD(v144) = v130[1];
  HIDWORD(v144) = v17;
  (*(*v6 + 128))(v6, &v144, v124 & 0xFF8, 0xFFFFFFFFLL, 0, 0);
  (**v6)(&v144, v6, 0xFFFFFFFFLL);
  v92 = v125;
  v93 = ((v124 >> 3) & 0x1FF) + 1;
  if ((v124 & v115 & v144 & 0x4000) != 0 && (v94 = SHIDWORD(v125) * v93 * v125, v94 == v94))
  {
    v92 = 1;
  }

  else
  {
    LODWORD(v94) = HIDWORD(v125) * v93;
  }

  v95 = cv::getCmpFunc(int)::cmpTab[v124 & 7];
  __p = v94;
  __p_4 = v92;
  (v95)(v126, v132, v117, v123, v146, v152[0], &__p, &v133);
  if (v147 && atomic_fetch_add(v147, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v144);
  }

  v78 = v152;
  v146 = 0;
  v148 = 0uLL;
  *(&v147 + 1) = 0;
  if (SHIDWORD(v144) >= 1)
  {
    v96 = 0;
    v97 = v150;
    do
    {
      *(v97 + 4 * v96++) = 0;
    }

    while (v96 < SHIDWORD(v144));
  }

  *&v147 = 0;
  v77 = v151;
LABEL_182:
  if (v77)
  {
    v79 = v77 == v78;
  }

  else
  {
    v79 = 1;
  }

  if (!v79)
  {
    free(v77);
  }

  if (v118 && atomic_fetch_add(v118, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v115);
  }

  v117 = 0;
  v119 = 0uLL;
  *(&v118 + 1) = 0;
  if (SHIDWORD(v115) >= 1)
  {
    v80 = 0;
    v81 = v121;
    do
    {
      v81[v80++] = 0;
    }

    while (v80 < SHIDWORD(v115));
  }

  *&v118 = 0;
  if (v122)
  {
    v82 = v122 == &v123;
  }

  else
  {
    v82 = 1;
  }

  if (!v82)
  {
    free(v122);
  }

  if (v127 && atomic_fetch_add(v127, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v124);
  }

  v126 = 0;
  v128 = 0uLL;
  *(&v127 + 1) = 0;
  if (SHIDWORD(v124) >= 1)
  {
    v83 = 0;
    v84 = v130;
    do
    {
      v84[v83++] = 0;
    }

    while (v83 < SHIDWORD(v124));
  }

  *&v127 = 0;
  if (v131)
  {
    v85 = v131 == &v132;
  }

  else
  {
    v85 = 1;
  }

  if (!v85)
  {
    free(v131);
  }
}

void sub_22D2302D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61)
{
  if (a61 != a9 && a61 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  cv::Mat::~Mat(&__p);
  cv::Mat::~Mat(&a24);
  cv::Mat::~Mat(&a36);
  _Unwind_Resume(a1);
}

uint64_t cv::vBinOp8<unsigned char,cv::OpAnd<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(a3 + v10) & *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = *(a3 + v10 - 1) & *(result + v10 - 1);
          *v12 = v11;
          v13 = *(a3 + v10 + 2) & *(result + v10 + 2);
          v12[1] = *(a3 + v10 + 1) & *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(a3 + v9) & *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpOr<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(a3 + v10) | *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = *(a3 + v10 - 1) | *(result + v10 - 1);
          *v12 = v11;
          v13 = *(a3 + v10 + 2) | *(result + v10 + 2);
          v12[1] = *(a3 + v10 + 1) | *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(a3 + v9) | *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpXor<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(a3 + v10) ^ *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = *(a3 + v10 - 1) ^ *(result + v10 - 1);
          *v12 = v11;
          v13 = *(a3 + v10 + 2) ^ *(result + v10 + 2);
          v12[1] = *(a3 + v10 + 1) ^ *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(a3 + v9) ^ *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpNot<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        do
        {
          v10 = ~*(result + v9 + 1);
          v11 = (a5 + v9);
          *v11 = ~*(result + v9);
          v11[1] = v10;
          v12 = ~*(result + v9 + 3);
          v11[2] = ~*(result + v9 + 2);
          v11[3] = v12;
          v9 += 4;
          v8 = *a7;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = ~*(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a5 += a6;
      v13 = a7[1];
      a7[1] = v13 - 1;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpMax<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = cv::g_Saturate8u[*(a3 + v10) - *(result + v10) + 256] + *(result + v10);
          v12 = (a5 + v10);
          *(v12 - 1) = cv::g_Saturate8u[*(a3 + v10 - 1) - *(result + v10 - 1) + 256] + *(result + v10 - 1);
          *v12 = v11;
          v13 = cv::g_Saturate8u[*(a3 + v10 + 2) - *(result + v10 + 2) + 256] + *(result + v10 + 2);
          v12[1] = cv::g_Saturate8u[*(a3 + v10 + 1) - *(result + v10 + 1) + 256] + *(result + v10 + 1);
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = cv::g_Saturate8u[*(a3 + v9) - *(result + v9) + 256] + *(result + v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpMax<signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = *(result + v10 - 1);
          v13 = (a3 + v10);
          if (v12 <= *(a3 + v10 - 1))
          {
            LOBYTE(v12) = *(a3 + v10 - 1);
          }

          v14 = *v11;
          if (v14 <= *v13)
          {
            LOBYTE(v14) = *v13;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v12;
          *v15 = v14;
          v16 = v11[1];
          if (v16 <= v13[1])
          {
            LOBYTE(v16) = v13[1];
          }

          v17 = v11[2];
          v18 = v13[2];
          if (v17 <= v18)
          {
            LOBYTE(v17) = v18;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v19 = v10 + 3;
          v10 += 4;
        }

        while (v19 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v20 = *(result + v9);
          if (v20 <= *(a3 + v9))
          {
            LOBYTE(v20) = *(a3 + v9);
          }

          *(a5 + v9++) = v20;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v21 = a7[1];
      a7[1] = v21 - 1;
    }

    while (v21);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpMax<unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (v16 <= *(a3 + v14 - 4))
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (v18 <= *(v17 - 1))
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (v20 <= *v17)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v21 <= v22)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (v23 <= *(a3 + 2 * v13))
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpMax<short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (v16 <= *(a3 + v14 - 4))
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (v18 <= *(v17 - 1))
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (v20 <= *v17)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v21 <= v22)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (v23 <= *(a3 + 2 * v13))
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpMax<int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vmax_s32(*(result + v10 - 8), *(a3 + v10 - 8));
          *v11 = vmax_s32(*(result + v10), *(a3 + v10));
          v9 += 4;
          v8 = *a7;
          v10 += 16;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v12 = *(result + 4 * v9);
          if (v12 <= *(a3 + 4 * v9))
          {
            v12 = *(a3 + 4 * v9);
          }

          *(a5 + 4 * v9++) = v12;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v13 = a7[1];
      a7[1] = v13 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpMax<float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbsl_s8(vcgt_f32(*(a3 + v12 - 8), *(result + v12 - 8)), *(a3 + v12 - 8), *(result + v12 - 8));
          *v13 = vbsl_s8(vcgt_f32(*(a3 + v12), *(result + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 4 * v11);
          if (v14 < *(a3 + 4 * v11))
          {
            v14 = *(a3 + 4 * v11);
          }

          *(a5 + 4 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpMax<double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbslq_s8(vcgtq_f64(*(a3 + v12 - 16), *(result + v12 - 16)), *(a3 + v12 - 16), *(result + v12 - 16));
          *v13 = vbslq_s8(vcgtq_f64(*(a3 + v12), *(result + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 8 * v11);
          if (v14 < *(a3 + 8 * v11))
          {
            v14 = *(a3 + 8 * v11);
          }

          *(a5 + 8 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpMin<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = *(result + v10) - cv::g_Saturate8u[(*(result + v10) | 0x100) - *(a3 + v10)];
          v12 = (a5 + v10);
          *(v12 - 1) = *(result + v10 - 1) - cv::g_Saturate8u[(*(result + v10 - 1) | 0x100) - *(a3 + v10 - 1)];
          *v12 = v11;
          v13 = *(result + v10 + 2) - cv::g_Saturate8u[(*(result + v10 + 2) | 0x100) - *(a3 + v10 + 2)];
          v12[1] = *(result + v10 + 1) - cv::g_Saturate8u[(*(result + v10 + 1) | 0x100) - *(a3 + v10 + 1)];
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = *(result + v9) - cv::g_Saturate8u[(*(result + v9) | 0x100) - *(a3 + v9)];
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpMin<signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = *(result + v10 - 1);
          v13 = (a3 + v10);
          if (*(a3 + v10 - 1) < v12)
          {
            LOBYTE(v12) = *(a3 + v10 - 1);
          }

          v14 = *v11;
          if (*v13 < v14)
          {
            LOBYTE(v14) = *v13;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v12;
          *v15 = v14;
          v16 = v11[1];
          if (v13[1] < v16)
          {
            LOBYTE(v16) = v13[1];
          }

          v17 = v11[2];
          v18 = v13[2];
          if (v18 < v17)
          {
            LOBYTE(v17) = v18;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v19 = v10 + 3;
          v10 += 4;
        }

        while (v19 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v20 = *(result + v9);
          if (*(a3 + v9) < v20)
          {
            LOBYTE(v20) = *(a3 + v9);
          }

          *(a5 + v9++) = v20;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v21 = a7[1];
      a7[1] = v21 - 1;
    }

    while (v21);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpMin<unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (*(a3 + v14 - 4) < v16)
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (*(v17 - 1) < v18)
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (*v17 < v20)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v22 < v21)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (*(a3 + 2 * v13) < v23)
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpMin<short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = *(result + v14 - 4);
          v17 = (a3 + v14);
          if (*(a3 + v14 - 4) < v16)
          {
            LOWORD(v16) = *(a3 + v14 - 4);
          }

          v18 = *(v15 - 1);
          if (*(v17 - 1) < v18)
          {
            LOWORD(v18) = *(v17 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v16;
          *(v19 - 1) = v18;
          v20 = *v15;
          if (*v17 < v20)
          {
            LOWORD(v20) = *v17;
          }

          v21 = v15[1];
          v22 = v17[1];
          if (v22 < v21)
          {
            LOWORD(v21) = v22;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v23 = *(result + 2 * v13);
          if (*(a3 + 2 * v13) < v23)
          {
            LOWORD(v23) = *(a3 + 2 * v13);
          }

          *(a5 + 2 * v13++) = v23;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpMin<int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vmin_s32(*(a3 + v10 - 8), *(result + v10 - 8));
          *v11 = vmin_s32(*(a3 + v10), *(result + v10));
          v9 += 4;
          v8 = *a7;
          v10 += 16;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v12 = *(result + 4 * v9);
          if (*(a3 + 4 * v9) < v12)
          {
            v12 = *(a3 + 4 * v9);
          }

          *(a5 + 4 * v9++) = v12;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v13 = a7[1];
      a7[1] = v13 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpMin<float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbsl_s8(vcgt_f32(*(result + v12 - 8), *(a3 + v12 - 8)), *(a3 + v12 - 8), *(result + v12 - 8));
          *v13 = vbsl_s8(vcgt_f32(*(result + v12), *(a3 + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 4 * v11);
          if (*(a3 + 4 * v11) < v14)
          {
            v14 = *(a3 + 4 * v11);
          }

          *(a5 + 4 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpMin<double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vbslq_s8(vcgtq_f64(*(result + v12 - 16), *(a3 + v12 - 16)), *(a3 + v12 - 16), *(result + v12 - 16));
          *v13 = vbslq_s8(vcgtq_f64(*(result + v12), *(a3 + v12)), *(a3 + v12), *(result + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          v14 = *(result + 8 * v11);
          if (*(a3 + 8 * v11) < v14)
          {
            v14 = *(a3 + 8 * v11);
          }

          *(a5 + 8 * v11++) = v14;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpAdd<unsigned char,unsigned char,unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = cv::g_Saturate8u[*(a3 + v10) + 256 + *(result + v10)];
          v12 = (a5 + v10);
          *(v12 - 1) = cv::g_Saturate8u[*(a3 + v10 - 1) + 256 + *(result + v10 - 1)];
          *v12 = v11;
          v13 = cv::g_Saturate8u[*(a3 + v10 + 2) + 256 + *(result + v10 + 2)];
          v12[1] = cv::g_Saturate8u[*(a3 + v10 + 1) + 256 + *(result + v10 + 1)];
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = cv::g_Saturate8u[*(a3 + v9) + 256 + *(result + v9)];
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpAdd<signed char,signed char,signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) + *(a3 + v10 - 1);
          if (v13 >= 127)
          {
            v13 = 127;
          }

          if (v13 <= -128)
          {
            LOBYTE(v13) = 0x80;
          }

          v14 = *v11 + *v12;
          if (v14 >= 127)
          {
            v14 = 127;
          }

          if (v14 <= -128)
          {
            LOBYTE(v14) = 0x80;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] + v12[1];
          if (v16 >= 127)
          {
            v16 = 127;
          }

          v17 = v11[2];
          v18 = v12[2];
          if (v16 <= -128)
          {
            LOBYTE(v16) = 0x80;
          }

          v19 = v17 + v18;
          if (v19 >= 127)
          {
            v19 = 127;
          }

          if (v19 <= -128)
          {
            LOBYTE(v19) = 0x80;
          }

          v15[1] = v16;
          v15[2] = v19;
          v8 = *a7;
          v20 = v10 + 3;
          v10 += 4;
        }

        while (v20 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v21 = *(result + v9) + *(a3 + v9);
          if (v21 >= 127)
          {
            v21 = 127;
          }

          if (v21 <= -128)
          {
            LOBYTE(v21) = 0x80;
          }

          *(a5 + v9++) = v21;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v22 = a7[1];
      a7[1] = v22 - 1;
    }

    while (v22);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpAdd<unsigned short,unsigned short,unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(a3 + v13 - 4) + *(result + v13 - 4);
          if (v16 >= 0xFFFF)
          {
            LOWORD(v16) = -1;
          }

          v17 = *(v15 - 1) + *(v14 - 1);
          if (v17 >= 0xFFFF)
          {
            LOWORD(v17) = -1;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v15 + *v14;
          if (v19 >= 0xFFFF)
          {
            LOWORD(v19) = -1;
          }

          v20 = v15[1] + v14[1];
          if (v20 >= 0xFFFF)
          {
            LOWORD(v20) = -1;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(a3 + 2 * v12) + *(result + 2 * v12);
          if (v21 >= 0xFFFF)
          {
            LOWORD(v21) = -1;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpAdd<short,short,short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(result + v13 - 4) + *(a3 + v13 - 4);
          if (v16 >= 0x7FFF)
          {
            v16 = 0x7FFF;
          }

          if (v16 <= -32768)
          {
            LOWORD(v16) = 0x8000;
          }

          v17 = *(v14 - 1) + *(v15 - 1);
          if (v17 >= 0x7FFF)
          {
            v17 = 0x7FFF;
          }

          if (v17 <= -32768)
          {
            LOWORD(v17) = 0x8000;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v14 + *v15;
          if (v19 >= 0x7FFF)
          {
            v19 = 0x7FFF;
          }

          if (v19 <= -32768)
          {
            LOWORD(v19) = 0x8000;
          }

          v20 = v14[1] + v15[1];
          if (v20 >= 0x7FFF)
          {
            v20 = 0x7FFF;
          }

          if (v20 <= -32768)
          {
            LOWORD(v20) = 0x8000;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(result + 2 * v12) + *(a3 + 2 * v12);
          if (v21 >= 0x7FFF)
          {
            v21 = 0x7FFF;
          }

          if (v21 <= -32768)
          {
            LOWORD(v21) = 0x8000;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpAdd<int,int,int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vadd_s32(*(a3 + v10 - 8), *(result + v10 - 8));
          *v11 = vadd_s32(*(a3 + v10), *(result + v10));
          v9 += 4;
          v8 = *a7;
          v10 += 16;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + 4 * v9) = *(a3 + 4 * v9) + *(result + 4 * v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v12 = a7[1];
      a7[1] = v12 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpAdd<float,float,float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vadd_f32(*(result + v12 - 8), *(a3 + v12 - 8));
          *v13 = vadd_f32(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 4 * v11) = *(result + 4 * v11) + *(a3 + 4 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpAdd<double,double,double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vaddq_f64(*(result + v12 - 16), *(a3 + v12 - 16));
          *v13 = vaddq_f64(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 8 * v11) = *(result + 8 * v11) + *(a3 + 8 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpSub<unsigned char,unsigned char,unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = cv::g_Saturate8u[(*(result + v10) | 0x100) - *(a3 + v10)];
          v12 = (a5 + v10);
          *(v12 - 1) = cv::g_Saturate8u[(*(result + v10 - 1) | 0x100) - *(a3 + v10 - 1)];
          *v12 = v11;
          v13 = cv::g_Saturate8u[(*(result + v10 + 2) | 0x100) - *(a3 + v10 + 2)];
          v12[1] = cv::g_Saturate8u[(*(result + v10 + 1) | 0x100) - *(a3 + v10 + 1)];
          v12[2] = v13;
          v8 = *a7;
          v14 = v10 + 3;
          v10 += 4;
        }

        while (v14 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + v9) = cv::g_Saturate8u[(*(result + v9) | 0x100) - *(a3 + v9)];
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v15 = a7[1];
      a7[1] = v15 - 1;
    }

    while (v15);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpSub<signed char,signed char,signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) - *(a3 + v10 - 1);
          if (v13 >= 127)
          {
            v13 = 127;
          }

          if (v13 <= -128)
          {
            LOBYTE(v13) = 0x80;
          }

          v14 = *v11 - *v12;
          if (v14 >= 127)
          {
            v14 = 127;
          }

          if (v14 <= -128)
          {
            LOBYTE(v14) = 0x80;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] - v12[1];
          if (v16 >= 127)
          {
            v16 = 127;
          }

          v17 = v11[2];
          v18 = v12[2];
          if (v16 <= -128)
          {
            LOBYTE(v16) = 0x80;
          }

          v19 = v17 - v18;
          if (v19 >= 127)
          {
            v19 = 127;
          }

          if (v19 <= -128)
          {
            LOBYTE(v19) = 0x80;
          }

          v15[1] = v16;
          v15[2] = v19;
          v8 = *a7;
          v20 = v10 + 3;
          v10 += 4;
        }

        while (v20 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v21 = *(result + v9) - *(a3 + v9);
          if (v21 >= 127)
          {
            v21 = 127;
          }

          if (v21 <= -128)
          {
            LOBYTE(v21) = 0x80;
          }

          *(a5 + v9++) = v21;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v22 = a7[1];
      a7[1] = v22 - 1;
    }

    while (v22);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpSub<unsigned short,unsigned short,unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = *(result + v13 - 4) - *(a3 + v13 - 4);
          v15 = *(result + v13 - 2) - *(a3 + v13 - 2);
          v16 = (a5 + v13);
          *(v16 - 2) = v14 & ~(v14 >> 31);
          *(v16 - 1) = v15 & ~(v15 >> 31);
          v17 = *(result + v13 + 2) - *(a3 + v13 + 2);
          *v16 = (*(result + v13) - *(a3 + v13)) & ~((*(result + v13) - *(a3 + v13)) >> 31);
          v16[1] = v17 & ~(v17 >> 31);
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v18 = *(result + 2 * v12) - *(a3 + 2 * v12);
          *(a5 + 2 * v12++) = v18 & ~(v18 >> 31);
        }

        while (v8 != v12);
      }

      result += v10;
      a3 += a4 & 0xFFFFFFFFFFFFFFFELL;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpSub<short,short,short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(result + v13 - 4) - *(a3 + v13 - 4);
          if (v16 >= 0x7FFF)
          {
            v16 = 0x7FFF;
          }

          if (v16 <= -32768)
          {
            LOWORD(v16) = 0x8000;
          }

          v17 = *(v14 - 1) - *(v15 - 1);
          if (v17 >= 0x7FFF)
          {
            v17 = 0x7FFF;
          }

          if (v17 <= -32768)
          {
            LOWORD(v17) = 0x8000;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v14 - *v15;
          if (v19 >= 0x7FFF)
          {
            v19 = 0x7FFF;
          }

          if (v19 <= -32768)
          {
            LOWORD(v19) = 0x8000;
          }

          v20 = v14[1] - v15[1];
          if (v20 >= 0x7FFF)
          {
            v20 = 0x7FFF;
          }

          if (v20 <= -32768)
          {
            LOWORD(v20) = 0x8000;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(result + 2 * v12) - *(a3 + 2 * v12);
          if (v21 >= 0x7FFF)
          {
            v21 = 0x7FFF;
          }

          if (v21 <= -32768)
          {
            LOWORD(v21) = 0x8000;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpSub<int,int,int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vsub_s32(*(result + v10 - 8), *(a3 + v10 - 8));
          *v11 = vsub_s32(*(result + v10), *(a3 + v10));
          v9 += 4;
          v8 = *a7;
          v10 += 16;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          *(a5 + 4 * v9) = *(result + 4 * v9) - *(a3 + 4 * v9);
          ++v9;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v12 = a7[1];
      a7[1] = v12 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpSub<float,float,float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vsub_f32(*(result + v12 - 8), *(a3 + v12 - 8));
          *v13 = vsub_f32(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 4 * v11) = *(result + 4 * v11) - *(a3 + 4 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpSub<double,double,double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vsubq_f64(*(result + v12 - 16), *(a3 + v12 - 16));
          *v13 = vsubq_f64(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 8 * v11) = *(result + 8 * v11) - *(a3 + 8 * v11);
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp8<unsigned char,cv::OpAbsDiff<unsigned char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) - *(a3 + v10 - 1);
          if (v13 < 0)
          {
            LOBYTE(v13) = *(a3 + v10 - 1) - *(result + v10 - 1);
          }

          v14 = *v11 - *v12;
          if (v14 < 0)
          {
            LOBYTE(v14) = *v12 - *v11;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] - v12[1];
          if (v16 < 0)
          {
            LOBYTE(v16) = v12[1] - v11[1];
          }

          v17 = v11[2] - v12[2];
          if (v17 < 0)
          {
            v17 = -v17;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v18 = v10 + 3;
          v10 += 4;
        }

        while (v18 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v19 = *(result + v9) - *(a3 + v9);
          if (v19 < 0)
          {
            LOBYTE(v19) = *(a3 + v9) - *(result + v9);
          }

          *(a5 + v9++) = v19;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v20 = a7[1];
      a7[1] = v20 - 1;
    }

    while (v20);
  }

  return result;
}

uint64_t cv::vBinOp8<signed char,cv::OpAbsDiff<signed char>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 1;
        do
        {
          v11 = (result + v10);
          v12 = (a3 + v10);
          v13 = *(result + v10 - 1) - *(a3 + v10 - 1);
          if (v13 < 0)
          {
            v13 = *(a3 + v10 - 1) - *(result + v10 - 1);
          }

          if (v13 >= 0x7F)
          {
            LOBYTE(v13) = 127;
          }

          v14 = *v11 - *v12;
          if (v14 < 0)
          {
            v14 = *v12 - *v11;
          }

          if (v14 >= 0x7F)
          {
            LOBYTE(v14) = 127;
          }

          v15 = (a5 + v10);
          *(v15 - 1) = v13;
          *v15 = v14;
          v16 = v11[1] - v12[1];
          if (v16 < 0)
          {
            v16 = v12[1] - v11[1];
          }

          if (v16 >= 0x7F)
          {
            LOBYTE(v16) = 127;
          }

          v17 = v11[2] - v12[2];
          if (v17 < 0)
          {
            v17 = -v17;
          }

          if (v17 >= 0x7F)
          {
            LOBYTE(v17) = 127;
          }

          v15[1] = v16;
          v15[2] = v17;
          v8 = *a7;
          v18 = v10 + 3;
          v10 += 4;
        }

        while (v18 <= v8 - 4);
        v9 = (v10 - 1);
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v19 = *(result + v9) - *(a3 + v9);
          if (v19 < 0)
          {
            v19 = *(a3 + v9) - *(result + v9);
          }

          if (v19 >= 0x7F)
          {
            LOBYTE(v19) = 127;
          }

          *(a5 + v9++) = v19;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v20 = a7[1];
      a7[1] = v20 - 1;
    }

    while (v20);
  }

  return result;
}

uint64_t cv::vBinOp16<unsigned short,cv::OpAbsDiff<unsigned short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v12 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v9 >= 4)
      {
        v13 = 0;
        v14 = 4;
        do
        {
          v15 = (result + v14);
          v16 = (a3 + v14);
          v17 = *(result + v14 - 4) - *(a3 + v14 - 4);
          if (v17 < 0)
          {
            LOWORD(v17) = *(a3 + v14 - 4) - *(result + v14 - 4);
          }

          v18 = *(v15 - 1) - *(v16 - 1);
          if (v18 < 0)
          {
            LOWORD(v18) = *(v16 - 1) - *(v15 - 1);
          }

          v19 = (a5 + v14);
          *(v19 - 2) = v17;
          *(v19 - 1) = v18;
          v20 = *v15 - *v16;
          if (v20 < 0)
          {
            LOWORD(v20) = *v16 - *v15;
          }

          v21 = v15[1] - v16[1];
          if (v21 < 0)
          {
            v21 = -v21;
          }

          *v19 = v20;
          v19[1] = v21;
          v13 += 4;
          v14 += 8;
        }

        while (v13 <= v8 - 4);
        v13 = v13;
      }

      else
      {
        v13 = 0;
      }

      if (v13 < v8)
      {
        do
        {
          v22 = *(result + 2 * v13) - *(a3 + 2 * v13);
          if (v22 < 0)
          {
            LOWORD(v22) = *(a3 + 2 * v13) - *(result + 2 * v13);
          }

          *(a5 + 2 * v13++) = v22;
        }

        while (v8 != v13);
      }

      result += v10;
      a3 += v11;
      a5 += v12;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp16<short,cv::OpAbsDiff<short>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v10 = a4 & 0xFFFFFFFFFFFFFFFELL;
    v11 = a6 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = 4;
        do
        {
          v14 = (result + v13);
          v15 = (a3 + v13);
          v16 = *(result + v13 - 4) - *(a3 + v13 - 4);
          if (v16 < 0)
          {
            v16 = *(a3 + v13 - 4) - *(result + v13 - 4);
          }

          if (v16 >= 0x7FFF)
          {
            LOWORD(v16) = 0x7FFF;
          }

          v17 = *(v14 - 1) - *(v15 - 1);
          if (v17 < 0)
          {
            v17 = *(v15 - 1) - *(v14 - 1);
          }

          if (v17 >= 0x7FFF)
          {
            LOWORD(v17) = 0x7FFF;
          }

          v18 = (a5 + v13);
          *(v18 - 2) = v16;
          *(v18 - 1) = v17;
          v19 = *v14 - *v15;
          if (v19 < 0)
          {
            v19 = *v15 - *v14;
          }

          if (v19 >= 0x7FFF)
          {
            LOWORD(v19) = 0x7FFF;
          }

          v20 = v14[1] - v15[1];
          if (v20 < 0)
          {
            v20 = -v20;
          }

          if (v20 >= 0x7FFF)
          {
            LOWORD(v20) = 0x7FFF;
          }

          *v18 = v19;
          v18[1] = v20;
          v12 += 4;
          v13 += 8;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v8)
      {
        do
        {
          v21 = *(result + 2 * v12) - *(a3 + 2 * v12);
          if (v21 < 0)
          {
            v21 = *(a3 + 2 * v12) - *(result + 2 * v12);
          }

          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          *(a5 + 2 * v12++) = v21;
        }

        while (v8 != v12);
      }

      result += v9;
      a3 += v10;
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp32s<cv::OpAbsDiff<int>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  a7[1] = v7 - 1;
  if (v7)
  {
    LODWORD(v8) = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          v11 = (a5 + v10);
          v11[-1] = vabd_s32(*(result + v10 - 8), *(a3 + v10 - 8));
          *v11 = vabd_s32(*(result + v10), *(a3 + v10));
          v9 += 4;
          v8 = *a7;
          v10 += 16;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          v12 = *(result + 4 * v9) - *(a3 + 4 * v9);
          if (v12 < 0)
          {
            v12 = *(a3 + 4 * v9) - *(result + 4 * v9);
          }

          *(a5 + 4 * v9++) = v12;
          v8 = *a7;
        }

        while (v9 < v8);
      }

      v13 = a7[1];
      a7[1] = v13 - 1;
      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += a4 & 0xFFFFFFFFFFFFFFFCLL;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::vBinOp32f<cv::OpAbsDiff<float>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 8;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vabd_f32(*(result + v12 - 8), *(a3 + v12 - 8));
          *v13 = vabd_f32(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 16;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 4 * v11) = vabds_f32(*(result + 4 * v11), *(a3 + 4 * v11));
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFFCLL;
      a5 += a6 & 0xFFFFFFFFFFFFFFFCLL;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::vBinOp64f<cv::OpAbsDiff<double>,cv::NOP>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a4 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = 16;
        do
        {
          v13 = (a5 + v12);
          v13[-1] = vabdq_f64(*(result + v12 - 16), *(a3 + v12 - 16));
          *v13 = vabdq_f64(*(result + v12), *(a3 + v12));
          v11 += 4;
          v12 += 32;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v8)
      {
        do
        {
          *(a5 + 8 * v11) = vabdd_f64(*(result + 8 * v11), *(a3 + 8 * v11));
          ++v11;
        }

        while (v8 != v11);
      }

      result += a2 & 0xFFFFFFFFFFFFFFF8;
      a5 += a6 & 0xFFFFFFFFFFFFFFF8;
      a3 += v10;
      --v7;
    }

    while (v7);
  }

  a7[1] = -1;
  return result;
}

uint64_t cv::mul8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, double a9, double a10, float a11)
{
  v11 = a7[1];
  v12 = *a7;
  v13 = *a8;
  v14 = v11 - 1;
  LODWORD(v15) = 1.0;
  if (v13 == 1.0)
  {
    if (v11)
    {
      do
      {
        v16 = v14;
        if (v12 >= 4)
        {
          v17 = 0;
          do
          {
            v18 = (result + v17);
            v19 = (a3 + v17);
            v20 = *(a3 + v17) * *(result + v17);
            if (v20 >= 0xFF)
            {
              LOBYTE(v20) = -1;
            }

            v21 = v19[1] * v18[1];
            if (v21 >= 0xFF)
            {
              LOBYTE(v21) = -1;
            }

            v22 = (a5 + v17);
            *v22 = v20;
            v22[1] = v21;
            v23 = v19[2] * v18[2];
            if (v23 >= 0xFF)
            {
              LOBYTE(v23) = -1;
            }

            v24 = v19[3] * v18[3];
            if (v24 >= 0xFF)
            {
              LOBYTE(v24) = -1;
            }

            v22[2] = v23;
            v22[3] = v24;
            v17 += 4;
          }

          while (v17 <= v12 - 4);
          v17 = v17;
        }

        else
        {
          v17 = 0;
        }

        if (v17 < v12)
        {
          do
          {
            v25 = *(a3 + v17) * *(result + v17);
            if (v25 >= 0xFF)
            {
              LOBYTE(v25) = -1;
            }

            *(a5 + v17++) = v25;
          }

          while (v17 < v12);
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        v14 = v16 - 1;
      }

      while (v16);
    }
  }

  else if (v11)
  {
    do
    {
      v26 = v14;
      if (v12 >= 4)
      {
        v27 = 0;
        do
        {
          v28 = result + v27;
          LOBYTE(v15) = *(result + v27);
          v29 = a3 + v27;
          LOBYTE(a11) = *(a3 + v27);
          *&v30 = LODWORD(a11);
          v31 = rint(((v13 * LODWORD(v15)) * *&v30));
          v32 = v31 & ~(v31 >> 31);
          LOBYTE(v31) = *(result + v27 + 1);
          LOBYTE(v30) = *(a3 + v27 + 1);
          v33 = v30;
          v34 = rint(((v13 * LODWORD(v31)) * v33));
          if (v32 >= 255)
          {
            LOBYTE(v32) = -1;
          }

          v35 = v34 & ~(v34 >> 31);
          if (v35 >= 255)
          {
            LOBYTE(v35) = -1;
          }

          v36 = (a5 + v27);
          *v36 = v32;
          v36[1] = v35;
          LOBYTE(v34) = *(v28 + 2);
          LOBYTE(v33) = *(v29 + 2);
          *&v37 = LODWORD(v33);
          v38 = rint(((v13 * LODWORD(v34)) * *&v37));
          v39 = v38;
          LOBYTE(v38) = *(v28 + 3);
          v40 = v39 & ~(v39 >> 31);
          LOBYTE(v37) = *(v29 + 3);
          a11 = v37;
          v15 = rint(((v13 * LODWORD(v38)) * a11));
          v41 = v15 & ~(v15 >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }

          if (v41 >= 255)
          {
            LOBYTE(v41) = -1;
          }

          v36[2] = v40;
          v36[3] = v41;
          v27 += 4;
        }

        while (v27 <= v12 - 4);
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v12)
      {
        do
        {
          LOBYTE(v15) = *(result + v27);
          LOBYTE(a11) = *(a3 + v27);
          a11 = LODWORD(a11);
          v15 = rint(((v13 * LODWORD(v15)) * a11));
          v42 = v15 & ~(v15 >> 31);
          if (v42 >= 255)
          {
            LOBYTE(v42) = -1;
          }

          *(a5 + v27++) = v42;
        }

        while (v27 < v12);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v14 = v26 - 1;
    }

    while (v26);
  }

  return result;
}

uint64_t cv::mul8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = v8 - 1;
  if (v10 == 1.0)
  {
    if (v8)
    {
      do
      {
        v12 = v11;
        if (v9 >= 4)
        {
          v13 = 0;
          do
          {
            v14 = (result + v13);
            v15 = (a3 + v13);
            v16 = *(a3 + v13) * *(result + v13);
            if (v16 <= -128)
            {
              v16 = -128;
            }

            if (v16 >= 127)
            {
              LOBYTE(v16) = 127;
            }

            v17 = v15[1] * v14[1];
            if (v17 <= -128)
            {
              v17 = -128;
            }

            if (v17 >= 127)
            {
              LOBYTE(v17) = 127;
            }

            v18 = (a5 + v13);
            *v18 = v16;
            v18[1] = v17;
            v19 = v15[2] * v14[2];
            if (v19 <= -128)
            {
              v19 = -128;
            }

            if (v19 >= 127)
            {
              LOBYTE(v19) = 127;
            }

            v20 = v15[3] * v14[3];
            if (v20 <= -128)
            {
              v20 = -128;
            }

            if (v20 >= 127)
            {
              LOBYTE(v20) = 127;
            }

            v18[2] = v19;
            v18[3] = v20;
            v13 += 4;
          }

          while (v13 <= v9 - 4);
          v13 = v13;
        }

        else
        {
          v13 = 0;
        }

        if (v13 < v9)
        {
          do
          {
            v21 = *(a3 + v13) * *(result + v13);
            if (v21 <= -128)
            {
              v21 = -128;
            }

            if (v21 >= 127)
            {
              LOBYTE(v21) = 127;
            }

            *(a5 + v13++) = v21;
          }

          while (v13 < v9);
        }

        result += a2;
        a3 += a4;
        a5 += a6;
        v11 = v12 - 1;
      }

      while (v12);
    }
  }

  else if (v8)
  {
    do
    {
      v22 = v11;
      if (v9 >= 4)
      {
        v23 = 0;
        do
        {
          v24 = result + v23;
          v25 = (a3 + v23);
          v26 = rint(((v10 * *(result + v23)) * *(a3 + v23)));
          if (v26 <= -128)
          {
            LODWORD(v26) = -128;
          }

          if (v26 >= 127)
          {
            LOBYTE(v26) = 127;
          }

          v27 = rint(((v10 * *(result + v23 + 1)) * v25[1]));
          if (v27 <= -128)
          {
            LODWORD(v27) = -128;
          }

          if (v27 >= 127)
          {
            LOBYTE(v27) = 127;
          }

          v28 = (a5 + v23);
          *v28 = v26;
          v28[1] = v27;
          v29 = rint(((v10 * *(v24 + 2)) * v25[2]));
          if (v29 <= -128)
          {
            LODWORD(v29) = -128;
          }

          v30 = (v10 * *(v24 + 3)) * v25[3];
          if (v29 >= 127)
          {
            v31 = 127;
          }

          else
          {
            v31 = v29;
          }

          v32 = rint(v30);
          if (v32 <= -128)
          {
            LODWORD(v32) = -128;
          }

          if (v32 >= 127)
          {
            LOBYTE(v32) = 127;
          }

          v28[2] = v31;
          v28[3] = v32;
          v23 += 4;
        }

        while (v23 <= v9 - 4);
        v23 = v23;
      }

      else
      {
        v23 = 0;
      }

      if (v23 < v9)
      {
        do
        {
          v33 = rint(((v10 * *(result + v23)) * *(a3 + v23)));
          if (v33 <= -128)
          {
            LODWORD(v33) = -128;
          }

          if (v33 >= 127)
          {
            LOBYTE(v33) = 127;
          }

          *(a5 + v23++) = v33;
        }

        while (v23 < v9);
      }

      result += a2;
      a3 += a4;
      a5 += a6;
      v11 = v22 - 1;
    }

    while (v22);
  }

  return result;
}

uint64_t cv::mul16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8, double a9, double a10, float a11)
{
  v11 = a7[1];
  v12 = *a7;
  v13 = *a7;
  v14 = *a8;
  v15 = a2 >> 1;
  v16 = a4 >> 1;
  v17 = a6 >> 1;
  v18 = v11 - 1;
  LODWORD(v19) = 1.0;
  if (v14 == 1.0)
  {
    if (v11)
    {
      v20 = 2 * v17;
      v21 = 2 * v16;
      v22 = 2 * v15;
      do
      {
        v23 = v18;
        if (v12 >= 4)
        {
          v25 = 0;
          v24 = 0;
          do
          {
            v26 = (result + v25);
            v27 = (a3 + v25);
            v28 = *(a3 + v25) * *(result + v25);
            if (v28 >= 0xFFFF)
            {
              LOWORD(v28) = -1;
            }

            v29 = v27[1] * v26[1];
            if (v29 >= 0xFFFF)
            {
              LOWORD(v29) = -1;
            }

            v30 = (a5 + v25);
            *v30 = v28;
            v30[1] = v29;
            v31 = v27[2] * v26[2];
            if (v31 >= 0xFFFF)
            {
              LOWORD(v31) = -1;
            }

            v32 = v27[3] * v26[3];
            if (v32 >= 0xFFFF)
            {
              LOWORD(v32) = -1;
            }

            v30[2] = v31;
            v30[3] = v32;
            v24 += 4;
            v25 += 8;
          }

          while (v24 <= v12 - 4);
          v24 = v24;
        }

        else
        {
          v24 = 0;
        }

        if (v24 < v13)
        {
          do
          {
            v33 = *(a3 + 2 * v24) * *(result + 2 * v24);
            if (v33 >= 0xFFFF)
            {
              LOWORD(v33) = -1;
            }

            *(a5 + 2 * v24++) = v33;
          }

          while (v12 != v24);
        }

        v18 = v23 - 1;
        a5 += v20;
        a3 += v21;
        result += v22;
      }

      while (v23);
    }
  }

  else if (v11)
  {
    v34 = 2 * v17;
    v35 = 2 * v16;
    v36 = 2 * v15;
    do
    {
      v37 = v18;
      if (v12 >= 4)
      {
        v39 = 0;
        v38 = 0;
        do
        {
          v40 = result + v39;
          LOWORD(v19) = *(result + v39);
          v41 = a3 + v39;
          LOWORD(a11) = *(a3 + v39);
          *&v42 = LODWORD(a11);
          v43 = rint(((v14 * LODWORD(v19)) * *&v42));
          v44 = v43;
          LOWORD(v43) = *(result + v39 + 2);
          v45 = v44 & ~(v44 >> 31);
          LOWORD(v42) = *(a3 + v39 + 2);
          v46 = v42;
          v47 = rint(((v14 * LODWORD(v43)) * v46));
          v48 = v47 & ~(v47 >> 31);
          if (v45 >= 0xFFFF)
          {
            LOWORD(v45) = -1;
          }

          if (v48 >= 0xFFFF)
          {
            LOWORD(v48) = -1;
          }

          v49 = (a5 + v39);
          *v49 = v45;
          v49[1] = v48;
          LOWORD(v47) = *(v40 + 4);
          LOWORD(v46) = *(v41 + 4);
          *&v50 = LODWORD(v46);
          v51 = rint(((v14 * LODWORD(v47)) * *&v50));
          v52 = v51 & ~(v51 >> 31);
          LOWORD(v51) = *(v40 + 6);
          LOWORD(v50) = *(v41 + 6);
          a11 = v50;
          v53 = (v14 * LODWORD(v51)) * a11;
          if (v52 >= 0xFFFF)
          {
            v54 = -1;
          }

          else
          {
            v54 = v52;
          }

          v19 = rint(v53);
          v55 = v19 & ~(v19 >> 31);
          if (v55 >= 0xFFFF)
          {
            LOWORD(v55) = -1;
          }

          v49[2] = v54;
          v49[3] = v55;
          v38 += 4;
          v39 += 8;
        }

        while (v38 <= v12 - 4);
        v38 = v38;
      }

      else
      {
        v38 = 0;
      }

      if (v38 < v13)
      {
        do
        {
          LOWORD(v19) = *(result + 2 * v38);
          LOWORD(a11) = *(a3 + 2 * v38);
          a11 = LODWORD(a11);
          v19 = rint(((v14 * LODWORD(v19)) * a11));
          v56 = v19 & ~(v19 >> 31);
          if (v56 >= 0xFFFF)
          {
            LOWORD(v56) = -1;
          }

          *(a5 + 2 * v38++) = v56;
        }

        while (v12 != v38);
      }

      v18 = v37 - 1;
      a5 += v34;
      a3 += v35;
      result += v36;
    }

    while (v37);
  }

  return result;
}

uint64_t cv::mul16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = a2 >> 1;
  v13 = a4 >> 1;
  v14 = a6 >> 1;
  v15 = v8 - 1;
  if (v11 == 1.0)
  {
    if (v8)
    {
      v16 = 2 * v14;
      v17 = 2 * v13;
      v18 = 2 * v12;
      do
      {
        v19 = v15;
        if (v9 >= 4)
        {
          v21 = 0;
          v20 = 0;
          do
          {
            v22 = (result + v21);
            v23 = (a3 + v21);
            v24 = *(a3 + v21) * *(result + v21);
            if (v24 <= -32768)
            {
              v24 = -32768;
            }

            if (v24 >= 0x7FFF)
            {
              LOWORD(v24) = 0x7FFF;
            }

            v25 = v23[1] * v22[1];
            if (v25 <= -32768)
            {
              v25 = -32768;
            }

            if (v25 >= 0x7FFF)
            {
              LOWORD(v25) = 0x7FFF;
            }

            v26 = (a5 + v21);
            *v26 = v24;
            v26[1] = v25;
            v27 = v23[2] * v22[2];
            if (v27 <= -32768)
            {
              v27 = -32768;
            }

            if (v27 >= 0x7FFF)
            {
              LOWORD(v27) = 0x7FFF;
            }

            v28 = v23[3] * v22[3];
            if (v28 <= -32768)
            {
              v28 = -32768;
            }

            if (v28 >= 0x7FFF)
            {
              LOWORD(v28) = 0x7FFF;
            }

            v26[2] = v27;
            v26[3] = v28;
            v20 += 4;
            v21 += 8;
          }

          while (v20 <= v9 - 4);
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v10)
        {
          do
          {
            v29 = *(a3 + 2 * v20) * *(result + 2 * v20);
            if (v29 <= -32768)
            {
              v29 = -32768;
            }

            if (v29 >= 0x7FFF)
            {
              LOWORD(v29) = 0x7FFF;
            }

            *(a5 + 2 * v20++) = v29;
          }

          while (v9 != v20);
        }

        v15 = v19 - 1;
        a5 += v16;
        a3 += v17;
        result += v18;
      }

      while (v19);
    }
  }

  else if (v8)
  {
    v30 = 2 * v14;
    v31 = 2 * v13;
    v32 = 2 * v12;
    do
    {
      v33 = v15;
      if (v9 >= 4)
      {
        v35 = 0;
        v34 = 0;
        do
        {
          v36 = (result + v35);
          v37 = (a3 + v35);
          v38 = rint(((v11 * *(result + v35)) * *(a3 + v35)));
          if (v38 <= -32768)
          {
            LODWORD(v38) = -32768;
          }

          if (v38 >= 0x7FFF)
          {
            LOWORD(v38) = 0x7FFF;
          }

          v39 = rint(((v11 * v36[1]) * v37[1]));
          if (v39 <= -32768)
          {
            LODWORD(v39) = -32768;
          }

          if (v39 >= 0x7FFF)
          {
            LOWORD(v39) = 0x7FFF;
          }

          v40 = (a5 + v35);
          *v40 = v38;
          v40[1] = v39;
          v41 = rint(((v11 * v36[2]) * v37[2]));
          if (v41 <= -32768)
          {
            LODWORD(v41) = -32768;
          }

          v42 = ((v11 * v36[3]) * v37[3]);
          if (v41 >= 0x7FFF)
          {
            v43 = 0x7FFF;
          }

          else
          {
            v43 = v41;
          }

          v44 = rint(v42);
          if (v44 <= -32768)
          {
            LODWORD(v44) = -32768;
          }

          if (v44 >= 0x7FFF)
          {
            LOWORD(v44) = 0x7FFF;
          }

          v40[2] = v43;
          v40[3] = v44;
          v34 += 4;
          v35 += 8;
        }

        while (v34 <= v9 - 4);
        v34 = v34;
      }

      else
      {
        v34 = 0;
      }

      if (v34 < v10)
      {
        do
        {
          v45 = rint(((v11 * *(result + 2 * v34)) * *(a3 + 2 * v34)));
          if (v45 <= -32768)
          {
            LODWORD(v45) = -32768;
          }

          if (v45 >= 0x7FFF)
          {
            LOWORD(v45) = 0x7FFF;
          }

          *(a5 + 2 * v34++) = v45;
        }

        while (v9 != v34);
      }

      v15 = v33 - 1;
      a5 += v30;
      a3 += v31;
      result += v32;
    }

    while (v33);
  }

  return result;
}

uint64_t cv::mul32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a8;
  v11 = a2 >> 2;
  v12 = a4 >> 2;
  v13 = a6 >> 2;
  v14 = v8 - 1;
  if (*a8 == 1.0)
  {
    if (v8)
    {
      v15 = 4 * v13;
      v16 = 4 * v12;
      v17 = 4 * v11;
      do
      {
        v18 = v14;
        if (v9 >= 4)
        {
          v20 = 0;
          v19 = 0;
          do
          {
            v21 = (a5 + v20);
            *v21 = vmul_s32(*(a3 + v20), *(result + v20));
            v21[1] = vmul_s32(*(a3 + v20 + 8), *(result + v20 + 8));
            v19 += 4;
            v20 += 16;
          }

          while (v19 <= v9 - 4);
          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

        if (v19 < v9)
        {
          do
          {
            *(a5 + 4 * v19) = *(a3 + 4 * v19) * *(result + 4 * v19);
            ++v19;
          }

          while (v19 < v9);
        }

        v14 = v18 - 1;
        a5 += v15;
        a3 += v16;
        result += v17;
      }

      while (v18);
    }
  }

  else if (v8)
  {
    v22 = 4 * v13;
    v23 = 4 * v12;
    v24 = 4 * v11;
    do
    {
      v25 = v14;
      if (v9 >= 4)
      {
        v27 = 0;
        v26 = 0;
        do
        {
          v28 = rint(v10 * *(result + v27 + 4) * *(a3 + v27 + 4));
          v29 = (a5 + v27);
          *v29 = rint(v10 * *(result + v27) * *(a3 + v27));
          v29[1] = v28;
          v30 = rint(v10 * *(result + v27 + 12) * *(a3 + v27 + 12));
          v29[2] = rint(v10 * *(result + v27 + 8) * *(a3 + v27 + 8));
          v29[3] = v30;
          v26 += 4;
          v27 += 16;
        }

        while (v26 <= v9 - 4);
        v26 = v26;
      }

      else
      {
        v26 = 0;
      }

      if (v26 < v9)
      {
        do
        {
          *(a5 + 4 * v26) = rint(v10 * *(result + 4 * v26) * *(a3 + 4 * v26));
          ++v26;
        }

        while (v26 < v9);
      }

      v14 = v25 - 1;
      a5 += v22;
      a3 += v23;
      result += v24;
    }

    while (v25);
  }

  return result;
}

uint64_t cv::mul32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = a2 >> 2;
  v13 = a4 >> 2;
  v14 = a6 >> 2;
  v15 = v8 - 1;
  if (v11 == 1.0)
  {
    if (v8)
    {
      v16 = 4 * v14;
      v17 = 4 * v13;
      v18 = 4 * v12;
      do
      {
        v19 = v15;
        if (v9 >= 4)
        {
          v21 = 0;
          v20 = 0;
          do
          {
            v22 = (a5 + v21);
            *v22 = vmul_f32(*(result + v21), *(a3 + v21));
            v22[1] = vmul_f32(*(result + v21 + 8), *(a3 + v21 + 8));
            v20 += 4;
            v21 += 16;
          }

          while (v20 <= v9 - 4);
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v10)
        {
          do
          {
            *(a5 + 4 * v20) = *(result + 4 * v20) * *(a3 + 4 * v20);
            ++v20;
          }

          while (v9 != v20);
        }

        v15 = v19 - 1;
        a5 += v16;
        a3 += v17;
        result += v18;
      }

      while (v19);
    }
  }

  else if (v8)
  {
    v23 = 4 * v14;
    v24 = 4 * v13;
    v25 = 4 * v12;
    do
    {
      v26 = v15;
      if (v9 >= 4)
      {
        v28 = 0;
        v27 = 0;
        do
        {
          v29 = (a5 + v28);
          *v29 = vmul_f32(vmul_n_f32(*(result + v28), v11), *(a3 + v28));
          v29[1] = vmul_f32(vmul_n_f32(*(result + v28 + 8), v11), *(a3 + v28 + 8));
          v27 += 4;
          v28 += 16;
        }

        while (v27 <= v9 - 4);
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v10)
      {
        do
        {
          *(a5 + 4 * v27) = (*(result + 4 * v27) * v11) * *(a3 + 4 * v27);
          ++v27;
        }

        while (v9 != v27);
      }

      v15 = v26 - 1;
      a5 += v23;
      a3 += v24;
      result += v25;
    }

    while (v26);
  }

  return result;
}

uint64_t cv::mul64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = a2 >> 3;
  v13 = a4 >> 3;
  v14 = a6 >> 3;
  v15 = v8 - 1;
  if (*a8 == 1.0)
  {
    if (v8)
    {
      v16 = 8 * v14;
      v17 = 8 * v13;
      v18 = 8 * v12;
      do
      {
        v19 = v15;
        if (v9 >= 4)
        {
          v21 = 0;
          v20 = 0;
          do
          {
            v22 = (a5 + v21);
            *v22 = vmulq_f64(*(result + v21), *(a3 + v21));
            v22[1] = vmulq_f64(*(result + v21 + 16), *(a3 + v21 + 16));
            v20 += 4;
            v21 += 32;
          }

          while (v20 <= v9 - 4);
          v20 = v20;
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v10)
        {
          do
          {
            *(a5 + 8 * v20) = *(result + 8 * v20) * *(a3 + 8 * v20);
            ++v20;
          }

          while (v9 != v20);
        }

        v15 = v19 - 1;
        a5 += v16;
        a3 += v17;
        result += v18;
      }

      while (v19);
    }
  }

  else if (v8)
  {
    v23 = 8 * v14;
    v24 = 8 * v13;
    v25 = 8 * v12;
    do
    {
      v26 = v15;
      if (v9 >= 4)
      {
        v28 = 0;
        v27 = 0;
        do
        {
          v29 = (a5 + v28);
          *v29 = vmulq_f64(vmulq_n_f64(*(result + v28), v11), *(a3 + v28));
          v29[1] = vmulq_f64(vmulq_n_f64(*(result + v28 + 16), v11), *(a3 + v28 + 16));
          v27 += 4;
          v28 += 32;
        }

        while (v27 <= v9 - 4);
        v27 = v27;
      }

      else
      {
        v27 = 0;
      }

      if (v27 < v10)
      {
        do
        {
          *(a5 + 8 * v27) = v11 * *(result + 8 * v27) * *(a3 + 8 * v27);
          ++v27;
        }

        while (v9 != v27);
      }

      v15 = v26 - 1;
      a5 += v23;
      a3 += v24;
      result += v25;
    }

    while (v26);
  }

  return result;
}

uint64_t cv::div8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8, double a9, double a10)
{
  v10 = a5;
  if (!result)
  {
    v41 = *a7;
    return cv::recip_<unsigned char>(a3, a4, a5, a6, &v41, *a8);
  }

  v11 = a7[1];
  if (!v11)
  {
    return result;
  }

  v12 = *a7;
  v13 = *a8;
  do
  {
    if (v12 < 4)
    {
      v14 = 0;
      goto LABEL_38;
    }

    v15 = 0;
    v16 = 3;
    do
    {
      v17 = v16;
      v18 = a3 + v16;
      v19 = *(a3 + v16 - 3);
      v20 = *(v18 - 2);
      if (v19)
      {
        if (*(v18 - 2))
        {
          v21 = *(a3 + v17 - 1);
          if (*(a3 + v17 - 1))
          {
            v22 = *(a3 + v17);
            if (*(a3 + v17))
            {
              v23 = v15 | 2;
              v24 = v19;
              v25 = v15 | 3;
              v26 = v19 * v20;
              v27 = v21;
              v28 = v22;
              v29 = v21 * v22;
              *&v30 = v13 / (v26 * v29);
              v31 = v29 * *&v30;
              v32 = v26 * *&v30;
              v33 = (result + v17);
              LOBYTE(v30) = *(result + v17 - 3);
              *&v34 = rint(v31 * v30 * v20);
              v19 = *&v34 & ~(*&v34 >> 31);
              LOBYTE(v34) = *(result + v17 - 2);
              v35 = rint(v31 * v34 * v24);
              if (v19 >= 255)
              {
                LOBYTE(v19) = -1;
              }

              v20 = v35 & ~(v35 >> 31);
              if (v20 >= 255)
              {
                LOBYTE(v20) = -1;
              }

              LOBYTE(v35) = *(v33 - 1);
              v36 = rint(v32 * *&v35 * v28);
              v37 = v36 & ~(v36 >> 31);
              if (v37 >= 255)
              {
                LOBYTE(v37) = -1;
              }

              LOBYTE(v36) = *v33;
              a10 = rint(v32 * *&v36 * v27);
              v38 = a10 & ~(a10 >> 31);
              if (v38 >= 255)
              {
                LOBYTE(v38) = -1;
              }

              goto LABEL_36;
            }
          }
        }

        LOBYTE(a10) = *(result + v17 - 3);
        a10 = rint(v13 * *&a10 / v19);
        v19 = a10 & ~(a10 >> 31);
        if (v19 >= 255)
        {
          LOBYTE(v19) = -1;
        }
      }

      if (*(v18 - 2))
      {
        LOBYTE(a10) = *(result + v17 - 2);
        a10 = rint(v13 * *&a10 / v20);
        if ((a10 & ~(a10 >> 31)) >= 255)
        {
          LOBYTE(v20) = -1;
        }

        else
        {
          LOBYTE(v20) = a10 & ~(a10 >> 31);
        }
      }

      if (*(a3 + v17 - 1))
      {
        LOBYTE(a10) = *(result + v17 - 1);
        a10 = rint(v13 * *&a10 / *(a3 + v17 - 1));
        if ((a10 & ~(a10 >> 31)) >= 255)
        {
          LOBYTE(v37) = -1;
        }

        else
        {
          LOBYTE(v37) = a10 & ~(a10 >> 31);
        }
      }

      else
      {
        LOBYTE(v37) = 0;
      }

      v23 = v17 - 1;
      if (*(a3 + v17))
      {
        LOBYTE(a10) = *(result + v17);
        a10 = rint(v13 * *&a10 / *(a3 + v17));
        if ((a10 & ~(a10 >> 31)) >= 255)
        {
          LOBYTE(v38) = -1;
        }

        else
        {
          LOBYTE(v38) = a10 & ~(a10 >> 31);
        }
      }

      else
      {
        LOBYTE(v38) = 0;
      }

      v25 = v17;
LABEL_36:
      v39 = v10 + v17;
      *(v39 - 3) = v19;
      *(v39 - 2) = v20;
      *(v10 + v23) = v37;
      *(v10 + v25) = v38;
      v15 += 4;
      v16 = v17 + 4;
    }

    while (v17 + 1 <= v12 - 4);
    v14 = (v17 + 1);
LABEL_38:
    if (v14 < v12)
    {
      do
      {
        v40 = *(a3 + v14);
        if (*(a3 + v14))
        {
          LOBYTE(a10) = *(result + v14);
          a10 = rint(v13 * *&a10 / v40);
          v40 = a10 & ~(a10 >> 31);
          if (v40 >= 255)
          {
            LOBYTE(v40) = -1;
          }
        }

        *(v10 + v14++) = v40;
      }

      while (v14 < v12);
    }

    result += a2;
    a3 += a4;
    v10 += a6;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t cv::div8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  do
  {
    if (v9 < 4)
    {
      v11 = 0;
      goto LABEL_53;
    }

    v12 = 0;
    v13 = 3;
    do
    {
      v14 = v13;
      v15 = a3 + v13;
      LODWORD(v13) = *(a3 + v13 - 3);
      LOBYTE(v16) = *(v15 - 2);
      if (v13)
      {
        if (*(v15 - 2) && *(a3 + v14 - 1) && *(a3 + v14))
        {
          v17 = v12 | 2;
          v18 = v12 | 3;
          v19 = v13;
          v20 = v16;
          v21 = *(a3 + v14 - 1);
          v22 = *(a3 + v14);
          v23 = v10 / (v19 * v20 * (v21 * v22));
          v24 = v21 * v22 * v23;
          v25 = v19 * v20 * v23;
          v26 = (result + v14);
          v13 = rint(v24 * *(result + v14 - 3) * v20);
          if (v13 <= -128)
          {
            LODWORD(v13) = -128;
          }

          if (v13 >= 127)
          {
            LOBYTE(v13) = 127;
          }

          v16 = rint(v24 * *(v26 - 2) * v19);
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v27 = rint(v25 * *(v26 - 1) * v22);
          if (v27 <= -128)
          {
            LODWORD(v27) = -128;
          }

          if (v27 >= 127)
          {
            LOBYTE(v27) = 127;
          }

          v28 = rint(v25 * *v26 * v21);
          if (v28 <= -128)
          {
            LODWORD(v28) = -128;
          }

          if (v28 >= 127)
          {
            LOBYTE(v28) = 127;
          }

          goto LABEL_51;
        }

        v13 = rint(v10 * *(result + v14 - 3) / v13);
        if (v13 <= -128)
        {
          LODWORD(v13) = -128;
        }

        if (v13 >= 127)
        {
          LOBYTE(v13) = 127;
        }
      }

      if (*(v15 - 2))
      {
        v29 = rint(v10 * *(result + v14 - 2) / v16);
        if (v29 <= -128)
        {
          LODWORD(v29) = -128;
        }

        if (v29 >= 127)
        {
          LOBYTE(v16) = 127;
        }

        else
        {
          LOBYTE(v16) = v29;
        }
      }

      if (*(a3 + v14 - 1))
      {
        v30 = rint(v10 * *(result + v14 - 1) / *(a3 + v14 - 1));
        if (v30 <= -128)
        {
          LODWORD(v30) = -128;
        }

        if (v30 >= 127)
        {
          LOBYTE(v27) = 127;
        }

        else
        {
          LOBYTE(v27) = v30;
        }
      }

      else
      {
        LOBYTE(v27) = 0;
      }

      v17 = v14 - 1;
      if (*(a3 + v14))
      {
        v31 = rint(v10 * *(result + v14) / *(a3 + v14));
        if (v31 <= -128)
        {
          LODWORD(v31) = -128;
        }

        if (v31 >= 127)
        {
          LOBYTE(v28) = 127;
        }

        else
        {
          LOBYTE(v28) = v31;
        }
      }

      else
      {
        LOBYTE(v28) = 0;
      }

      v18 = v14;
LABEL_51:
      v32 = a5 + v14;
      *(v32 - 3) = v13;
      *(v32 - 2) = v16;
      *(a5 + v17) = v27;
      *(a5 + v18) = v28;
      v12 += 4;
      v13 = v14 + 4;
    }

    while (v14 + 1 <= v9 - 4);
    v11 = (v14 + 1);
LABEL_53:
    if (v11 < v9)
    {
      do
      {
        LOBYTE(v33) = *(a3 + v11);
        if (v33)
        {
          v33 = rint(v10 * *(result + v11) / v33);
          if (v33 <= -128)
          {
            LODWORD(v33) = -128;
          }

          if (v33 >= 127)
          {
            LOBYTE(v33) = 127;
          }
        }

        *(a5 + v11++) = v33;
      }

      while (v11 < v9);
    }

    result += a2;
    a3 += a4;
    a5 += a6;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div16u(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8, double a9, double a10)
{
  v10 = a7[1];
  if (!v10)
  {
    return result;
  }

  v11 = *a7;
  v12 = *a7;
  v13 = *a8;
  v14 = 2 * (a6 >> 1);
  v15 = 2 * (a4 >> 1);
  v16 = 2 * (a2 >> 1);
  do
  {
    if (v11 < 4)
    {
      v17 = 0;
      goto LABEL_34;
    }

    v18 = 0;
    v17 = 0;
    do
    {
      v19 = *(a3 + v18);
      v20 = *(a3 + v18 + 2);
      if (*(a3 + v18))
      {
        if (*(a3 + v18 + 2))
        {
          v21 = a3 + v18;
          v22 = *(a3 + v18 + 4);
          if (*(a3 + v18 + 4))
          {
            v23 = *(v21 + 6);
            if (*(v21 + 6))
            {
              v24 = v17 | 2;
              v25 = v19;
              v26 = v17 | 3;
              v27 = v19 * v20;
              v28 = v22;
              v29 = v23;
              v30 = v22 * v23;
              *&v31 = v13 / (v27 * v30);
              v32 = v30 * *&v31;
              v33 = v27 * *&v31;
              v34 = result + v18;
              LOWORD(v31) = *(result + v18);
              *&v35 = rint(v32 * v31 * v20);
              v19 = *&v35 & ~(*&v35 >> 31);
              LOWORD(v35) = *(result + v18 + 2);
              v36 = rint(v32 * v35 * v25);
              if (v19 >= 0xFFFF)
              {
                LOWORD(v19) = -1;
              }

              v20 = v36 & ~(v36 >> 31);
              if (v20 >= 0xFFFF)
              {
                LOWORD(v20) = -1;
              }

              LOWORD(v36) = *(v34 + 4);
              v37 = rint(v33 * *&v36 * v29);
              v38 = v37 & ~(v37 >> 31);
              if (v38 >= 0xFFFF)
              {
                LOWORD(v38) = -1;
              }

              LOWORD(v37) = *(v34 + 6);
              v39 = v33 * *&v37 * v28;
              goto LABEL_30;
            }
          }
        }

        LOWORD(a10) = *(result + v18);
        a10 = rint(v13 * *&a10 / v19);
        v19 = a10 & ~(a10 >> 31);
        if (v19 >= 0xFFFF)
        {
          LOWORD(v19) = -1;
        }
      }

      if (*(a3 + v18 + 2))
      {
        LOWORD(a10) = *(result + v18 + 2);
        a10 = rint(v13 * *&a10 / v20);
        if ((a10 & ~(a10 >> 31)) >= 0xFFFF)
        {
          LOWORD(v20) = -1;
        }

        else
        {
          LOWORD(v20) = a10 & ~(a10 >> 31);
        }
      }

      if (*(a3 + v18 + 4))
      {
        LOWORD(a10) = *(result + v18 + 4);
        a10 = rint(v13 * *&a10 / *(a3 + v18 + 4));
        if ((a10 & ~(a10 >> 31)) >= 0xFFFF)
        {
          LOWORD(v38) = -1;
        }

        else
        {
          LOWORD(v38) = a10 & ~(a10 >> 31);
        }
      }

      else
      {
        LOWORD(v38) = 0;
      }

      v24 = v17 + 2;
      v26 = v17 + 3;
      v40 = *(a3 + v18 + 6);
      if (*(a3 + v18 + 6))
      {
        LOWORD(a10) = *(result + v18 + 6);
        v39 = v13 * *&a10 / v40;
LABEL_30:
        a10 = rint(v39);
        v40 = a10 & ~(a10 >> 31);
        if (v40 >= 0xFFFF)
        {
          LOWORD(v40) = -1;
        }
      }

      v41 = (a5 + v18);
      *v41 = v19;
      v41[1] = v20;
      *(a5 + 2 * v24) = v38;
      *(a5 + 2 * v26) = v40;
      v17 += 4;
      v18 += 8;
    }

    while (v17 <= v11 - 4);
    v17 = v17;
LABEL_34:
    if (v17 < v12)
    {
      do
      {
        v42 = *(a3 + 2 * v17);
        if (*(a3 + 2 * v17))
        {
          LOWORD(a10) = *(result + 2 * v17);
          a10 = rint(v13 * *&a10 / v42);
          v42 = a10 & ~(a10 >> 31);
          if (v42 >= 0xFFFF)
          {
            LOWORD(v42) = -1;
          }
        }

        *(a5 + 2 * v17++) = v42;
      }

      while (v11 != v17);
    }

    a5 += v14;
    a3 += v15;
    result += v16;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t cv::div16s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = 2 * (a6 >> 1);
  v12 = *a8;
  v13 = 2 * (a4 >> 1);
  v14 = 2 * (a2 >> 1);
  do
  {
    if (v9 < 4)
    {
      v15 = 0;
      goto LABEL_48;
    }

    v16 = 0;
    v15 = 0;
    do
    {
      LOWORD(v17) = *(a3 + v16);
      LOWORD(v18) = *(a3 + v16 + 2);
      if (v17)
      {
        if (*(a3 + v16 + 2))
        {
          if (*(a3 + v16 + 4))
          {
            v19 = *(a3 + v16 + 6);
            if (v19)
            {
              v20 = v15 | 2;
              v21 = v15 | 3;
              v22 = v17;
              v23 = v18;
              v24 = *(a3 + v16 + 4);
              v25 = v19;
              v26 = v12 / (v22 * v23 * (v24 * v25));
              v27 = v24 * v25 * v26;
              v28 = v22 * v23 * v26;
              v29 = (result + v16);
              v17 = rint(v27 * *(result + v16) * v23);
              if (v17 <= -32768)
              {
                LODWORD(v17) = -32768;
              }

              if (v17 >= 0x7FFF)
              {
                LOWORD(v17) = 0x7FFF;
              }

              v18 = rint(v27 * v29[1] * v22);
              if (v18 <= -32768)
              {
                LODWORD(v18) = -32768;
              }

              if (v18 >= 0x7FFF)
              {
                LOWORD(v18) = 0x7FFF;
              }

              v30 = rint(v28 * v29[2] * v25);
              if (v30 <= -32768)
              {
                LODWORD(v30) = -32768;
              }

              if (v30 >= 0x7FFF)
              {
                LOWORD(v30) = 0x7FFF;
              }

              v31 = v28 * v29[3] * v24;
              goto LABEL_42;
            }
          }
        }

        v17 = rint(v12 * *(result + v16) / v17);
        if (v17 <= -32768)
        {
          LODWORD(v17) = -32768;
        }

        if (v17 >= 0x7FFF)
        {
          LOWORD(v17) = 0x7FFF;
        }
      }

      if (*(a3 + v16 + 2))
      {
        v32 = rint(v12 * *(result + v16 + 2) / v18);
        if (v32 <= -32768)
        {
          LODWORD(v32) = -32768;
        }

        if (v32 >= 0x7FFF)
        {
          LOWORD(v18) = 0x7FFF;
        }

        else
        {
          LOWORD(v18) = v32;
        }
      }

      if (*(a3 + v16 + 4))
      {
        v33 = rint(v12 * *(result + v16 + 4) / *(a3 + v16 + 4));
        if (v33 <= -32768)
        {
          LODWORD(v33) = -32768;
        }

        if (v33 >= 0x7FFF)
        {
          LOWORD(v30) = 0x7FFF;
        }

        else
        {
          LOWORD(v30) = v33;
        }
      }

      else
      {
        LOWORD(v30) = 0;
      }

      v20 = v15 + 2;
      v21 = v15 + 3;
      LOWORD(v34) = *(a3 + v16 + 6);
      if (v34)
      {
        v31 = v12 * *(result + v16 + 6) / v34;
LABEL_42:
        v34 = rint(v31);
        if (v34 <= -32768)
        {
          LODWORD(v34) = -32768;
        }

        if (v34 >= 0x7FFF)
        {
          LOWORD(v34) = 0x7FFF;
        }
      }

      v35 = (a5 + v16);
      *v35 = v17;
      v35[1] = v18;
      *(a5 + 2 * v20) = v30;
      *(a5 + 2 * v21) = v34;
      v15 += 4;
      v16 += 8;
    }

    while (v15 <= v9 - 4);
    v15 = v15;
LABEL_48:
    if (v15 < v10)
    {
      do
      {
        LOWORD(v36) = *(a3 + 2 * v15);
        if (v36)
        {
          v36 = rint(v12 * *(result + 2 * v15) / v36);
          if (v36 <= -32768)
          {
            LODWORD(v36) = -32768;
          }

          if (v36 >= 0x7FFF)
          {
            LOWORD(v36) = 0x7FFF;
          }
        }

        *(a5 + 2 * v15++) = v36;
      }

      while (v9 != v15);
    }

    a5 += v11;
    a3 += v13;
    result += v14;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div32s(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a8;
  v11 = 4 * (a6 >> 2);
  v12 = 4 * (a4 >> 2);
  v13 = 4 * (a2 >> 2);
  do
  {
    if (v9 < 4)
    {
      v14 = 0;
      goto LABEL_21;
    }

    v15 = 0;
    v14 = 0;
    do
    {
      LODWORD(v17) = *(a3 + v15);
      LODWORD(v16) = *(a3 + v15 + 4);
      if (v17)
      {
        if (v16)
        {
          v18 = *(a3 + v15 + 8);
          if (v18)
          {
            v19 = *(a3 + v15 + 12);
            if (v19)
            {
              v20 = v18;
              v21 = v19;
              v22 = v17 * v16;
              v23 = v18 * v19;
              v24 = v10 / (v22 * v23);
              v25 = v23 * v24;
              v26 = v14 | 2;
              v27 = rint(v25 * *(result + v15) * v16);
              v28 = v14 | 3;
              v16 = rint(v25 * *(result + v15 + 4) * v17);
              v29 = rint(v22 * v24 * *(result + v15 + 8) * v21);
              v30 = rint(v22 * v24 * *(result + v15 + 12) * v20);
              LODWORD(v17) = v27;
              goto LABEL_19;
            }
          }
        }

        v17 = rint(v10 * *(result + v15) / v17);
      }

      if (v16)
      {
        v16 = rint(v10 * *(result + v15 + 4) / v16);
      }

      v31 = *(a3 + v15 + 8);
      if (v31)
      {
        v29 = rint(v10 * *(result + v15 + 8) / v31);
      }

      else
      {
        LODWORD(v29) = 0;
      }

      v26 = v14 + 2;
      v28 = v14 + 3;
      LODWORD(v30) = *(a3 + v15 + 12);
      if (v30)
      {
        v30 = rint(v10 * *(result + v15 + 12) / v30);
      }

LABEL_19:
      v32 = (a5 + v15);
      *v32 = v17;
      v32[1] = v16;
      *(a5 + 4 * v26) = v29;
      *(a5 + 4 * v28) = v30;
      v14 += 4;
      v15 += 16;
    }

    while (v14 <= v9 - 4);
    v14 = v14;
LABEL_21:
    if (v14 < v9)
    {
      do
      {
        LODWORD(v33) = *(a3 + 4 * v14);
        if (v33)
        {
          v33 = rint(v10 * *(result + 4 * v14) / v33);
        }

        *(a5 + 4 * v14++) = v33;
      }

      while (v14 < v9);
    }

    a5 += v11;
    a3 += v12;
    result += v13;
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div32f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 4 * (a2 >> 2);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_21;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      v15 = *(a3 + v14);
      v16 = 0.0;
      v17.i32[0] = 0;
      if (v15.f32[0] != 0.0)
      {
        if (v15.f32[1] != 0.0)
        {
          v18 = *(a3 + v14 + 8);
          if (v18 != 0.0)
          {
            v19 = *(a3 + v14 + 12);
            if (v19 != 0.0)
            {
              v20 = v13 + 2;
              v21 = v13 + 3;
              v22 = vcvtq_f64_f32(v15);
              v23 = vextq_s8(v22, v22, 8uLL);
              v22.f64[0] = vmulq_f64(v23, v22).f64[0];
              v24 = v18;
              v25 = v19;
              v26 = v18 * v25;
              v27 = v11 / (v26 * v22.f64[0]);
              v22.f64[0] = v27 * v22.f64[0];
              v17 = vcvt_f32_f64(vmulq_f64(vmulq_n_f64(vcvtq_f64_f32(*(result + v14)), v26 * v27), v23));
              v28 = v22.f64[0] * *(result + v14 + 8) * v25;
              v29 = v22.f64[0] * *(result + v14 + 12) * v24;
LABEL_18:
              v31 = v29;
              goto LABEL_19;
            }
          }
        }

        v17.f32[0] = v11 * *(result + v14) / v15.f32[0];
      }

      if (v15.f32[1] != 0.0)
      {
        v16 = v11 * *(result + v14 + 4) / v15.f32[1];
      }

      v30 = *(a3 + v14 + 8);
      v31 = 0.0;
      v28 = 0.0;
      if (v30 != 0.0)
      {
        v28 = v11 * *(result + v14 + 8) / v30;
      }

      v20 = v13 | 2;
      v21 = v13 | 3;
      v32 = *(a3 + v14 + 12);
      v17.f32[1] = v16;
      if (v32 != 0.0)
      {
        v29 = v11 * *(result + v14 + 12) / v32;
        goto LABEL_18;
      }

LABEL_19:
      *(a5 + v14) = v17;
      *(a5 + 4 * v20) = v28;
      *(a5 + 4 * v21) = v31;
      v13 += 4;
      v14 += 16;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_21:
    if (v13 < v10)
    {
      do
      {
        v33 = *(a3 + 4 * v13);
        if (v33 == 0.0)
        {
          v34 = 0.0;
        }

        else
        {
          v34 = v11 * *(result + 4 * v13) / v33;
        }

        *(a5 + 4 * v13++) = v34;
      }

      while (v9 != v13);
    }

    a5 += 4 * (a6 >> 2);
    result += v12;
    a3 += 4 * (a4 >> 2);
    --v8;
  }

  while (v8);
  return result;
}

uint64_t cv::div64f(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (!v8)
  {
    return result;
  }

  v9 = *a7;
  v10 = *a7;
  v11 = *a8;
  v12 = 8 * (a2 >> 3);
  do
  {
    if (v9 < 4)
    {
      v13 = 0;
      goto LABEL_20;
    }

    v14 = 0;
    v13 = 0;
    do
    {
      v15 = *(a3 + v14);
      v16 = 0.0;
      v17 = *(a3 + v14 + 8);
      v18.f64[0] = 0.0;
      if (*v15.i64 != 0.0)
      {
        if (v17 != 0.0)
        {
          v19 = *(a3 + v14 + 16);
          if (v19 != 0.0)
          {
            v20 = *(a3 + v14 + 24);
            if (v20 != 0.0)
            {
              v21 = vextq_s8(v15, v15, 8uLL);
              v22 = v13 + 2;
              v23 = v13 + 3;
              v24 = *v15.i64 * v17;
              v25 = v11 / (*v15.i64 * v17 * (v19 * v20));
              v26 = v24 * v25;
              v18 = vmulq_f64(v21, vmulq_n_f64(*(result + v14), v19 * v20 * v25));
              v27 = v20 * (v26 * *(result + v14 + 16));
              v28 = v19 * (v26 * *(result + v14 + 24));
              goto LABEL_18;
            }
          }
        }

        v18.f64[0] = v11 * *(result + v14) / *v15.i64;
      }

      if (v17 != 0.0)
      {
        v16 = v11 * *(result + v14 + 8) / v17;
      }

      v29 = *(a3 + v14 + 16);
      v28 = 0.0;
      v27 = 0.0;
      if (v29 != 0.0)
      {
        v27 = v11 * *(result + v14 + 16) / v29;
      }

      v22 = v13 | 2;
      v23 = v13 | 3;
      v30 = *(a3 + v14 + 24);
      v18.f64[1] = v16;
      if (v30 != 0.0)
      {
        v28 = v11 * *(result + v14 + 24) / v30;
      }

LABEL_18:
      *(a5 + v14) = v18;
      *(a5 + 8 * v22) = v27;
      *(a5 + 8 * v23) = v28;
      v13 += 4;
      v14 += 32;
    }

    while (v13 <= v9 - 4);
    v13 = v13;
LABEL_20:
    if (v13 < v10)
    {
      do
      {
        v31 = *(a3 + 8 * v13);
        if (v31 == 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v11 * *(result + 8 * v13) / v31;
        }

        *(a5 + 8 * v13++) = v32;
      }

      while (v9 != v13);
    }

    a5 += 8 * (a6 >> 3);
    result += v12;
    a3 += 8 * (a4 >> 3);
    --v8;
  }

  while (v8);
  return result;
}