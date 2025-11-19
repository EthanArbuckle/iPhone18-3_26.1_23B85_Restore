void sub_22D21DC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  cv::Exception::~Exception(&a75);
  if (a72 < 0)
  {
    operator delete(__p);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  cv::Mat::~Mat(&STACK[0x260]);
  cv::Mat::~Mat(&STACK[0x2C0]);
  if (STACK[0x3B0] != a21 && STACK[0x3B0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

uint64_t cv::DFTFactorize(cv *this, unsigned int *a2, int *a3)
{
  v3 = this;
  if (this <= 5)
  {
    *a2 = this;
    return 1;
  }

  v5 = (this - 1) ^ this;
  if (v5 == 1)
  {
    result = 0;
LABEL_5:
    v6 = 3;
    while (1)
    {
      if (v3 / v6 * v6 == v3)
      {
        a2[result] = v6;
        result = (result + 1);
        v3 /= v6;
      }

      else
      {
        v6 += 2;
        if (v6 * v6 > v3)
        {
          a2[result] = v3;
          result = (result + 1);
          goto LABEL_16;
        }
      }

      if (v3 <= 1)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = (v5 + 1) >> 1;
  *a2 = v7;
  if (v7 != this)
  {
    v3 = this / v7;
    result = 1;
    if (v3 < 2)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  result = 1;
LABEL_16:
  v8 = (*a2 & 1) == 0;
  if (v8 < (v8 + result) / 2)
  {
    v9 = &a2[v8];
    v10 = result - 1;
    v11 = (v8 + result) / 2 - v8;
    do
    {
      v12 = *v9;
      *v9++ = a2[v10];
      a2[v10--] = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

double cv::DFTInit(cv *this, int a2, signed int *a3, int *a4, int *a5, _OWORD *a6, void *a7, double result)
{
  v9 = a5;
  v11 = this;
  v91[16] = *MEMORY[0x277D85DE8];
  if (this > 5)
  {
    if (a2 >= 34)
    {
      cv::DFTInit();
    }

    v14 = a7;
    v84 = a5;
    v16 = *a3;
    v85[a2] = 1;
    *(&v89 + a2) = 0;
    if (a2 >= 1)
    {
      v17 = a2;
      bzero(&v89, 4 * a2);
      v18 = v85[a2];
      v19 = 4 * a2 - 4;
      v20 = (v85 + v19);
      v21 = (a3 + v19);
      do
      {
        v22 = *v21--;
        v18 *= v22;
        *v20-- = v18;
        --v17;
      }

      while (v17);
    }

    v23 = a4;
    if (v14)
    {
      if (v16 == a3[a2 - 1])
      {
        v23 = a4;
      }

      else
      {
        v23 = a6;
      }
    }

    v9 = v84;
    if (v16)
    {
      v31 = 0;
      *v23 = 0;
      v32 = v86;
      v33 = 1;
      do
      {
        v31 += v32;
        if (++v89 >= *a3)
        {
          v34 = &v90;
          v35 = a3 + 1;
          v36 = &v87;
          do
          {
            v31 = *v36 + v31 - *(v36 - 2);
            v37 = *v34 + 1;
            *(v34 - 1) = 0;
            *v34 = v37;
            v38 = *v35++;
            ++v36;
            ++v34;
          }

          while (v37 >= v38);
        }

        v23[v33++] = v31;
      }

      while (v33 != v11);
      v12 = 0;
    }

    else
    {
      v24 = 0;
      v25 = v86;
      v26 = (v86 * v16) >> 1;
      do
      {
        v27 = 1 << v24++;
      }

      while (v27 < v16);
      v12 = v24 - 1;
      if (v16 > 2)
      {
        v39 = (v86 * v16) >> 2;
        if (v16 > 0x100)
        {
          v46 = 0;
          v47 = 35 - v24;
          v48 = v23 + 2;
          v49 = 3;
          do
          {
            v50 = (((cv::bitrevTab[v46] << 24) | (cv::bitrevTab[((v49 - 3) >> 10)] << 16) | (cv::bitrevTab[((v49 - 3) >> 18)] << 8) | cv::bitrevTab[(v49 - 3) >> 26]) >> v47) * v25;
            *(v48 - 2) = v50;
            *(v48 - 1) = v50 + v26;
            v51 = v49 + 1;
            v49 += 4;
            *v48 = v50 + v39;
            v48[1] = v50 + v26 + v39;
            v48 += 4;
            ++v46;
          }

          while (v51 < v16);
        }

        else if (v16 != 3)
        {
          v40 = 0;
          v41 = 11 - v24;
          v42 = v23 + 2;
          v43 = cv::bitrevTab;
          do
          {
            v44 = *v43++;
            v45 = (v44 >> v41) * v25;
            *(v42 - 2) = v45;
            *(v42 - 1) = v45 + v26;
            *v42 = v45 + v39;
            v42[1] = v45 + v26 + v39;
            v42 += 4;
            v40 += 4;
          }

          while (v40 <= (v16 - 4));
        }
      }

      else
      {
        *v23 = 0;
        v23[1] = v26;
      }

      ++v90;
      if (a2 >= 2 && v16 < v11)
      {
        v52 = v87;
        v53 = v16;
        v54 = v16;
        v55 = v87;
        while (1)
        {
          if (v16 >= 1)
          {
            v56 = v16;
            v57 = v23;
            do
            {
              v57[v53] = *v57 + v55;
              ++v57;
              --v56;
            }

            while (v56);
          }

          v54 += v16;
          if (v54 >= v11)
          {
            break;
          }

          v55 += v52;
          if (++v90 >= a3[1])
          {
            v58 = v91;
            v59 = a3 + 2;
            v60 = &v88;
            do
            {
              v55 = *v60 + v55 - *(v60 - 2);
              v61 = *v58 + 1;
              *(v58 - 1) = 0;
              *v58 = v61;
              v62 = *v59++;
              ++v60;
              ++v58;
            }

            while (v61 >= v62);
          }

          v53 += v16;
        }
      }
    }

    if (v23 != a4)
    {
      *a4 = 0;
      v63 = v11 & 1;
      do
      {
        v64 = &v23[v63];
        v66 = *v64;
        v65 = v64[1];
        a4[v66] = v63;
        a4[v65] = v63 + 1;
        v63 += 2;
      }

      while (v63 < v11);
    }

    goto LABEL_56;
  }

  *a4 = 0;
  a4[this - 1] = this - 1;
  if (this == 4)
  {
    *(a4 + 1) = 0x100000002;
    v12 = 2;
LABEL_56:
    if ((v11 & (v11 - 1)) != 0)
    {
      result = sin(-6.28318531 / v11);
      v68 = sqrt(1.0 - result * result);
    }

    else
    {
      v67 = (&cv::DFTTab + 16 * v12);
      v68 = *v67;
      result = -v67[1];
    }

    LODWORD(v69) = (v11 + 1) / 2;
    if (v9 == 16)
    {
      *a6 = xmmword_22D298030;
      if ((v11 & 1) == 0)
      {
        a6[v69] = xmmword_22D297FE0;
      }

      if (v11 >= 3)
      {
        if (v69 <= 2)
        {
          v69 = 2;
        }

        else
        {
          v69 = v69;
        }

        v70 = v69 - 1;
        v71 = &a6[v11 - 1] + 1;
        v72 = a6 + 3;
        v73 = v68;
        v74 = result;
        do
        {
          *(v72 - 1) = v73;
          *v72 = v74;
          *(v71 - 1) = v73;
          *v71 = -v74;
          v75 = -(v74 * result);
          v74 = v68 * v74 + v73 * result;
          v73 = v75 + v73 * v68;
          v71 -= 2;
          v72 += 2;
          --v70;
        }

        while (v70);
      }
    }

    else
    {
      if (v9 != 8)
      {
        cv::DFTInit();
      }

      *a6 = 1065353216;
      if ((v11 & 1) == 0)
      {
        *(a6 + v69) = 3212836864;
      }

      if (v11 >= 3)
      {
        if (v69 <= 2)
        {
          v69 = 2;
        }

        else
        {
          v69 = v69;
        }

        v76 = v69 - 1;
        v77 = a6 + 2 * v11 - 1;
        v78 = a6 + 3;
        v79 = v68;
        v80 = result;
        do
        {
          v81 = v79;
          v82 = v80;
          *(v78 - 1) = v81;
          *v78 = v82;
          *(v77 - 1) = v81;
          *v77 = -v82;
          v83 = -(v80 * result);
          v80 = v68 * v80 + v79 * result;
          v79 = v83 + v79 * v68;
          v77 -= 2;
          v78 += 2;
          --v76;
        }

        while (v76);
      }
    }

    return result;
  }

  if (this >= 3)
  {
    v28 = vdupq_n_s64(this - 3);
    v29 = vmovn_s64(vcgeq_u64(v28, xmmword_22D297DE0));
    if (vuzp1_s16(v29, *v28.i8).u8[0])
    {
      a4[1] = 1;
    }

    if (vuzp1_s16(v29, *&v28).i8[2])
    {
      a4[2] = 2;
    }

    v30 = vmovn_s64(vcgeq_u64(v28, xmmword_22D297DD0));
    if (vuzp1_s16(v30, v30).i32[1])
    {
      a4[3] = 3;
    }

    result = COERCE_DOUBLE(vuzp1_s16(v30, v30));
    if (BYTE6(result))
    {
      a4[4] = 4;
    }

    if (this == 5)
    {
      if (a5 == 16)
      {
        result = 1.0;
        *a6 = xmmword_22D298030;
      }

      else
      {
        *&result = 1065353216;
        *a6 = 1065353216;
      }
    }
  }

  return result;
}

uint64_t cv::complementComplexOutput(uint64_t this, Mat *a2, int a3)
{
  v3 = *(this + 12);
  v4 = *(this + 16);
  v5 = *(this + 80);
  if (((0x88442211uLL >> (4 * (*this & 7u))) & 0xF) == 4)
  {
    if (a2 >= 1)
    {
      v6 = 0;
      v7 = v5 >> 2;
      v8 = (v3 + 1) / 2;
      if (v8 <= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8;
      }

      v10 = v9 - 1;
      v11 = v4 + 8 * v3 - 4;
      do
      {
        if (2 * v6 == a2 || v6 == 0 || a3 == 1)
        {
          v14 = v6;
        }

        else
        {
          v14 = a2 - v6;
        }

        if (v3 >= 3)
        {
          v15 = (v4 + 4 * v7 * v14 + 12);
          v16 = v11;
          this = v10;
          do
          {
            *(v16 - 1) = *(v15 - 1);
            v17 = *v15;
            v15 += 2;
            *v16 = -v17;
            v16 -= 2;
            --this;
          }

          while (this);
        }

        ++v6;
        v11 += 4 * v7;
      }

      while (v6 != a2);
    }
  }

  else if (a2 >= 1)
  {
    v18 = 0;
    v19 = v5 >> 3;
    v20 = (v3 + 1) / 2;
    if (v20 <= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = v21 - 1;
    v23 = v4 + 16 * v3 - 8;
    do
    {
      if (2 * v18 == a2 || v18 == 0 || a3 == 1)
      {
        v26 = v18;
      }

      else
      {
        v26 = a2 - v18;
      }

      if (v3 >= 3)
      {
        v27 = (v4 + 8 * v19 * v26 + 24);
        v28 = v23;
        this = v22;
        do
        {
          *(v28 - 1) = *(v27 - 1);
          v29 = *v27;
          v27 += 2;
          *v28 = -v29;
          v28 -= 2;
          --this;
        }

        while (this);
      }

      ++v18;
      v23 += 8 * v19;
    }

    while (v18 != a2);
  }

  return this;
}

_DWORD *cv::CopyColumn(_DWORD *this, unint64_t a2, _DWORD *a3, unint64_t a4, int a5, uint64_t a6)
{
  v6 = a2 >> 2;
  v7 = a4 >> 2;
  if (a6 == 4)
  {
    if (a5 >= 1)
    {
      v14 = 4 * v7;
      v15 = 4 * v6;
      do
      {
        *a3 = *this;
        a3 = (a3 + v14);
        this = (this + v15);
        --a5;
      }

      while (a5);
    }
  }

  else if (a6 == 8)
  {
    if (a5 >= 1)
    {
      v12 = 4 * v7;
      v13 = 4 * v6;
      do
      {
        *a3 = *this;
        a3 = (a3 + v12);
        this = (this + v13);
        --a5;
      }

      while (a5);
    }
  }

  else if (a6 == 16 && a5 >= 1)
  {
    v8 = a3 + 2;
    v9 = 4 * v7;
    v10 = this + 2;
    v11 = 4 * v6;
    do
    {
      *(v8 - 1) = *(v10 - 1);
      *v8 = *v10;
      v8 = (v8 + v9);
      v10 = (v10 + v11);
      --a5;
    }

    while (a5);
  }

  return this;
}

uint64_t cv::ExpandCCS(uint64_t this, unsigned __int8 *a2, int a3)
{
  v3 = a2 + 1;
  if (a3 == 4)
  {
    if (a2 >= 3)
    {
      v4 = (v3 >> 1) - 1;
      v5 = (this + 8);
      v6 = (this + 8 * a2 - 4);
      do
      {
        *(v6 - 1) = *(v5 - 1);
        v7 = *v5;
        v5 += 2;
        *v6 = -v7;
        v6 -= 2;
        --v4;
      }

      while (v4);
    }

    if ((a2 & 1) == 0)
    {
      *(this + 4 * a2) = *(this + 4 * a2 - 4);
      *(this + 4 * v3) = 0;
      LODWORD(a2) = a2 - 1;
    }

    if (a2 >= 2)
    {
      v8 = a2 + 1;
      v9 = (this + 4 * a2);
      v10 = v9;
      do
      {
        v11 = *--v10;
        *v9 = v11;
        --v8;
        v9 = v10;
      }

      while (v8 > 2);
    }

    *(this + 4) = 0;
  }

  else
  {
    if (a2 >= 3)
    {
      v12 = (v3 >> 1) - 1;
      v13 = (this + 16);
      v14 = (this + 16 * a2 - 8);
      do
      {
        *(v14 - 1) = *(v13 - 1);
        v15 = *v13;
        v13 += 2;
        *v14 = -v15;
        v14 -= 2;
        --v12;
      }

      while (v12);
    }

    if ((a2 & 1) == 0)
    {
      *(this + 8 * a2) = *(this + 8 * a2 - 8);
      *(this + 8 * v3) = 0;
      LODWORD(a2) = a2 - 1;
    }

    if (a2 >= 2)
    {
      v16 = a2 + 1;
      v17 = (this + 8 * a2);
      v18 = v17;
      do
      {
        v19 = *--v18;
        *v17 = v19;
        --v16;
        v17 = v18;
      }

      while (v16 > 2);
    }

    *(this + 8) = 0;
  }

  return this;
}

void cv::mulSpectrums(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4, char a5)
{
  v6 = a4;
  (**this)(&v420);
  (**a2)(v412, a2, 0xFFFFFFFFLL);
  v9 = v420;
  v10 = v421;
  v11 = v422;
  if ((v420 & 0xFFF) != (v412[0] & 0xFFF) || (v428[1] == v417[1] ? (v12 = *v428 == *v417) : (v12 = 0), !v12))
  {
    std::string::basic_string[abi:ne200100]<0>(v398, "type == srcB.type() && srcA.size() == srcB.size()");
    std::string::basic_string[abi:ne200100]<0>(v431, "mulSpectrums");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
    cv::Exception::Exception(v403, 4294967081, v398, v431, __p, 2020);
    cv::error(v403, v13);
  }

  if ((v420 & 0xFFFu) > 0xE || ((1 << v420) & 0x6060) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v398, "type == CV_32FC1 || type == CV_32FC2 || type == CV_64FC1 || type == CV_64FC2");
    std::string::basic_string[abi:ne200100]<0>(v431, "mulSpectrums");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
    cv::Exception::Exception(v403, 4294967081, v398, v431, __p, 2021);
    cv::error(v403, v16);
  }

  (*(*a3 + 136))(a3, v421, v422, v420 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a3)(v403, a3, 0xFFFFFFFFLL);
  if (v404 == v413)
  {
    v399 = v398 + 8;
    v400 = v401;
    v401[0] = 0;
    v401[1] = 0;
    LODWORD(v398[0]) = 1124007936;
    memset(v398 + 4, 0, 48);
    v398[3] = 0u;
    cv::_OutputArray::_OutputArray(v431, v398);
    cv::Mat::copyTo(v412, v431);
    if (*(&v398[1] + 1))
    {
      atomic_fetch_add(*(&v398[1] + 1), 1u);
    }

    if (v414 && atomic_fetch_add(v414, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v412);
    }

    v413 = 0;
    *(&v414 + 1) = 0;
    v415 = 0uLL;
    if (v412[0] <= 0)
    {
      *&v414 = 0;
      LODWORD(v412[0]) = v398[0];
    }

    else
    {
      v14 = 0;
      v15 = v417;
      do
      {
        v15[v14++] = 0;
      }

      while (v14 < SHIDWORD(v412[0]));
      *&v414 = 0;
      LODWORD(v412[0]) = v398[0];
      if (SHIDWORD(v412[0]) > 2)
      {
        goto LABEL_24;
      }
    }

    if (SDWORD1(v398[0]) <= 2)
    {
      HIDWORD(v412[0]) = DWORD1(v398[0]);
      v412[1] = *(&v398[0] + 1);
      v17 = v400;
      v18 = v418;
      *v418 = *v400;
      v18[1] = v17[1];
      goto LABEL_25;
    }

LABEL_24:
    cv::Mat::copySize(v412, v398);
LABEL_25:
    v415 = *(&v398[2] + 8);
    v414 = *(&v398[1] + 8);
    v413 = *&v398[1];
    v416 = *(&v398[3] + 1);
    if (*(&v398[1] + 1) && atomic_fetch_add(*(&v398[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v398);
    }

    *&v398[1] = 0;
    memset(&v398[2], 0, 24);
    if (SDWORD1(v398[0]) >= 1)
    {
      v19 = 0;
      v20 = v399;
      do
      {
        *&v20[4 * v19++] = 0;
      }

      while (v19 < SDWORD1(v398[0]));
    }

    *(&v398[1] + 1) = 0;
    if (v400)
    {
      v21 = v400 == v401;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      free(v400);
    }
  }

  v22 = (v9 >> 3) & 0x1FF;
  v23 = 1;
  if ((v6 & 4) == 0 && v10 != 1)
  {
    if (v11 == 1 && (v420 & 0x4000) != 0 && (v412[0] & 0x4000) != 0)
    {
      v23 = (BYTE1(v403[0]) >> 6) & 1;
    }

    else
    {
      v23 = 0;
    }
  }

  v24 = v23 ^ 1 | ((v6 & 4) >> 2);
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v10 - 1;
  }

  v27 = v26 + v11;
  if (v25)
  {
    v28 = 1;
  }

  else
  {
    v28 = v10;
  }

  v29 = v22 == 0;
  if (v22)
  {
    v30 = 1;
  }

  else
  {
    v30 = v23;
  }

  v31 = (v27 & 1) == 0;
  v32 = (v27 & 1) == 0 && v22 == 0;
  v33 = v27 * (v22 + 1) - v32;
  v34 = v423;
  v35 = v430;
  v36 = v413;
  v37 = v419;
  v38 = v404;
  v39 = v411;
  if ((v9 & 7) == 5)
  {
    if (a5)
    {
      if (v423 != v404)
      {
        if ((v30 & 1) == 0)
        {
          *v404 = *v423 * *v413;
          v40 = v28 - 2;
          if (v28 == 2)
          {
            goto LABEL_62;
          }

          v41 = 1;
          v42 = v34;
          v43 = v36;
          v44 = v38;
          do
          {
            v45 = *(v42 + v35);
            v42 = (v42 + 2 * v35);
            v46 = *v42;
            v47 = *(v43 + v37);
            v43 = (v43 + 2 * v37);
            v48 = *v43;
            v49 = v46 * v48 + v45 * v47;
            v50 = v46 * v47;
            *&v47 = v49;
            *(v44 + v39) = *&v47;
            *&v45 = v50 - v45 * v48;
            v44 = (v44 + 2 * v39);
            *v44 = *&v45;
            v41 += 2;
          }

          while (v41 <= v40);
          if ((v28 & 1) == 0)
          {
LABEL_62:
            *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
          }

          if ((v27 & 1) == 0)
          {
            v51 = &v34[v27];
            v53 = *(v51 - 1);
            v52 = v51 - 1;
            v54 = v53;
            v55 = &v36[v27];
            v57 = *(v55 - 1);
            v56 = v55 - 1;
            v58 = &v38[v27];
            *(v58 - 1) = v54 * v57;
            v59 = v58 - 1;
            if (v28 != 2)
            {
              v60 = 2 * v39;
              v61 = v38 + v39 - 4;
              v62 = v36 + v37 - 4;
              v63 = v38 + 2 * v39 - 4;
              v64 = v36 + 2 * v37 - 4;
              v65 = v34 + 2 * v35 - 4;
              v66 = 2 * v37;
              v67 = 2 * v35;
              v68 = v34 + v35 - 4;
              v69 = 1;
              do
              {
                v70 = *(v68 + 4 * v27);
                v71 = *(v65 + 4 * v27);
                v72 = *(v62 + 4 * v27);
                v73 = *(v64 + 4 * v27);
                v74 = v71 * v73 + v70 * v72;
                v75 = v71 * v72;
                *&v72 = v74;
                *(v61 + 4 * v27) = LODWORD(v72);
                *&v70 = v75 - v70 * v73;
                *(v63 + 4 * v27) = LODWORD(v70);
                v69 += 2;
                v61 += v60;
                v62 += v66;
                v63 += v60;
                v64 += v66;
                v65 += v67;
                v68 += v67;
              }

              while (v69 <= v40);
              if (v28)
              {
                v31 = 1;
LABEL_70:
                if (v22)
                {
                  v76 = 0;
                }

                else
                {
                  v76 = v23;
                }

                do
                {
                  if (v76)
                  {
                    *v38 = *v34 * *v36;
                    if (v33 > v29)
                    {
                      v77 = v29;
                      v78 = v29;
                      do
                      {
                        v79 = vcvtq_f64_f32(*&v36[v77]);
                        v80 = -v79.f64[1];
                        v81 = vmulq_n_f64(v79, v34[v77 + 1]);
                        v82 = vdupq_lane_s64(*&v79.f64[0], 0);
                        v82.f64[0] = v80;
                        *&v38[v77] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v81, v82, v34[v77])));
                        v78 += 2;
                        v77 += 2;
                      }

                      while (v78 < v33);
                    }

                    if ((v76 & v31) != 0)
                    {
                      v38[v33] = v34[v33] * v36[v33];
                    }
                  }

                  else if (v33 > v29)
                  {
                    v83 = v29;
                    v84 = v29;
                    do
                    {
                      v85 = vcvtq_f64_f32(*&v36[v83]);
                      v86 = -v85.f64[1];
                      v87 = vmulq_n_f64(v85, v34[v83 + 1]);
                      v88 = vdupq_lane_s64(*&v85.f64[0], 0);
                      v88.f64[0] = v86;
                      *&v38[v83] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v87, v88, v34[v83])));
                      v84 += 2;
                      v83 += 2;
                    }

                    while (v84 < v33);
                  }

                  v34 = (v34 + v35);
                  v36 = (v36 + v37);
                  v38 = (v38 + v39);
                  --v28;
                }

                while (v28);
                goto LABEL_279;
              }
            }

            *(v59 + v39 * (v28 - 1)) = *(v52 + v35 * (v28 - 1)) * *(v56 + v37 * (v28 - 1));
          }
        }

        if (!v28)
        {
          goto LABEL_279;
        }

        goto LABEL_70;
      }

      if ((v30 & 1) == 0)
      {
        *v404 = *v404 * *v413;
        v226 = v28 - 2;
        if (v28 == 2)
        {
          goto LABEL_174;
        }

        v227 = 1;
        v228 = v38;
        v229 = v36;
        do
        {
          v230 = *(v228 + v39);
          v231 = *(v228 + 2 * v39);
          v232 = *(v229 + v37);
          v229 = (v229 + 2 * v37);
          v233 = *v229;
          v234 = v231 * v233 + v230 * v232;
          v235 = v231 * v232;
          *&v232 = v234;
          *(v228 + v39) = *&v232;
          *&v230 = v235 - v230 * v233;
          *(v228 + 2 * v39) = *&v230;
          v227 += 2;
          v228 = (v228 + 2 * v39);
        }

        while (v227 <= v226);
        if ((v28 & 1) == 0)
        {
LABEL_174:
          *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
        }

        if ((v27 & 1) == 0)
        {
          v236 = &v36[v27];
          v238 = *(v236 - 1);
          v237 = v236 - 1;
          v239 = v238;
          v240 = &v38[v27];
          v242 = *(v240 - 1);
          v241 = v240 - 1;
          *v241 = v242 * v239;
          if (v28 != 2)
          {
            v243 = 1;
            v244 = v241;
            v245 = v237;
            do
            {
              v246 = *(v244 + v39);
              v247 = *(v244 + 2 * v39);
              v248 = *(v245 + v37);
              v245 = (v245 + 2 * v37);
              v249 = *v245;
              v250 = v247 * v249 + v246 * v248;
              v251 = v247 * v248;
              *&v248 = v250;
              *(v244 + v39) = *&v248;
              *&v246 = v251 - v246 * v249;
              *(v244 + 2 * v39) = *&v246;
              v243 += 2;
              v244 = (v244 + 2 * v39);
            }

            while (v243 <= v226);
            if (v28)
            {
              v31 = 1;
LABEL_182:
              if (v22)
              {
                v252 = 0;
              }

              else
              {
                v252 = v23;
              }

              v253 = &v36[v29];
              do
              {
                if (v252)
                {
                  *v38 = *v34 * *v36;
                  if (v33 > v29)
                  {
                    v254 = v29;
                    v255 = v253;
                    v256 = v29;
                    do
                    {
                      v257 = *v255++;
                      v258 = vcvtq_f64_f32(v257);
                      v259 = -v258.f64[1];
                      v260 = vmulq_n_f64(v258, v38[v256 + 1]);
                      v261 = vdupq_lane_s64(*&v258.f64[0], 0);
                      v261.f64[0] = v259;
                      *&v38[v254] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v260, v261, v38[v254])));
                      v256 += 2;
                      v254 += 2;
                    }

                    while (v256 < v33);
                  }

                  if ((v252 & v31) != 0)
                  {
                    v38[v33] = v34[v33] * v36[v33];
                  }
                }

                else if (v33 > v29)
                {
                  v262 = v29;
                  v263 = v253;
                  v264 = v29;
                  do
                  {
                    v265 = *v263++;
                    v266 = vcvtq_f64_f32(v265);
                    v267 = -v266.f64[1];
                    v268 = vmulq_n_f64(v266, v38[v264 + 1]);
                    v269 = vdupq_lane_s64(*&v266.f64[0], 0);
                    v269.f64[0] = v267;
                    *&v38[v262] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v268, v269, v38[v262])));
                    v264 += 2;
                    v262 += 2;
                  }

                  while (v264 < v33);
                }

                v34 = (v34 + v35);
                v36 = (v36 + v37);
                v38 = (v38 + v39);
                v253 = (v253 + v37);
                --v28;
              }

              while (v28);
              goto LABEL_279;
            }
          }

          *(v241 + v39 * (v28 - 1)) = *(v241 + v39 * (v28 - 1)) * *(v237 + v37 * (v28 - 1));
        }
      }

      if (!v28)
      {
        goto LABEL_279;
      }

      goto LABEL_182;
    }

    if (v423 != v404)
    {
      if ((v30 & 1) == 0)
      {
        *v404 = *v423 * *v413;
        v136 = v28 - 2;
        if (v28 == 2)
        {
          goto LABEL_119;
        }

        v137 = 1;
        v138 = v34;
        v139 = v36;
        v140 = v38;
        do
        {
          v141 = *(v138 + v35);
          v138 = (v138 + 2 * v35);
          v142 = *v138;
          v143 = *(v139 + v37);
          v139 = (v139 + 2 * v37);
          v144 = *v139;
          v145 = v141 * v143 - v142 * v144;
          v146 = v142 * v143;
          *&v143 = v145;
          *(v140 + v39) = *&v143;
          *&v141 = v146 + v141 * v144;
          v140 = (v140 + 2 * v39);
          *v140 = *&v141;
          v137 += 2;
        }

        while (v137 <= v136);
        if ((v28 & 1) == 0)
        {
LABEL_119:
          *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
        }

        if ((v27 & 1) == 0)
        {
          v147 = &v34[v27];
          v149 = *(v147 - 1);
          v148 = v147 - 1;
          v150 = v149;
          v151 = &v36[v27];
          v153 = *(v151 - 1);
          v152 = v151 - 1;
          v154 = &v38[v27];
          *(v154 - 1) = v150 * v153;
          v155 = v154 - 1;
          if (v28 != 2)
          {
            v156 = 2 * v39;
            v157 = v38 + v39 - 4;
            v158 = v36 + v37 - 4;
            v159 = v38 + 2 * v39 - 4;
            v160 = v36 + 2 * v37 - 4;
            v161 = v34 + 2 * v35 - 4;
            v162 = 2 * v37;
            v163 = 2 * v35;
            v164 = v34 + v35 - 4;
            v165 = 1;
            do
            {
              v166 = *(v164 + 4 * v27);
              v167 = *(v161 + 4 * v27);
              v168 = *(v158 + 4 * v27);
              v169 = *(v160 + 4 * v27);
              v170 = v166 * v168 - v167 * v169;
              v171 = v167 * v168;
              *&v168 = v170;
              *(v157 + 4 * v27) = LODWORD(v168);
              *&v166 = v171 + v166 * v169;
              *(v159 + 4 * v27) = LODWORD(v166);
              v165 += 2;
              v157 += v156;
              v158 += v162;
              v159 += v156;
              v160 += v162;
              v161 += v163;
              v164 += v163;
            }

            while (v165 <= v136);
            if (v28)
            {
              v31 = 1;
LABEL_127:
              if (v22)
              {
                v172 = 0;
              }

              else
              {
                v172 = v23;
              }

              do
              {
                if (v172)
                {
                  *v38 = *v34 * *v36;
                  if (v33 > v29)
                  {
                    v173 = v29;
                    v174 = v29;
                    do
                    {
                      v175.f64[0] = v34[v173 + 1];
                      v176 = vcvtq_f64_f32(*&v36[v173]);
                      v175.f64[1] = -v175.f64[0];
                      v177 = vmulq_f64(v175, v176);
                      *&v38[v173] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v177, v177, 8uLL), v176, v34[v173]));
                      v174 += 2;
                      v173 += 2;
                    }

                    while (v174 < v33);
                  }

                  if ((v172 & v31) != 0)
                  {
                    v38[v33] = v34[v33] * v36[v33];
                  }
                }

                else if (v33 > v29)
                {
                  v178 = v29;
                  v179 = v29;
                  do
                  {
                    v180.f64[0] = v34[v178 + 1];
                    v181 = vcvtq_f64_f32(*&v36[v178]);
                    v180.f64[1] = -v180.f64[0];
                    v182 = vmulq_f64(v180, v181);
                    *&v38[v178] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v182, v182, 8uLL), v181, v34[v178]));
                    v179 += 2;
                    v178 += 2;
                  }

                  while (v179 < v33);
                }

                v34 = (v34 + v35);
                v36 = (v36 + v37);
                v38 = (v38 + v39);
                --v28;
              }

              while (v28);
              goto LABEL_279;
            }
          }

          *(v155 + v39 * (v28 - 1)) = *(v148 + v35 * (v28 - 1)) * *(v152 + v37 * (v28 - 1));
        }
      }

      if (!v28)
      {
        goto LABEL_279;
      }

      goto LABEL_127;
    }

    if ((v30 & 1) == 0)
    {
      *v404 = *v404 * *v413;
      v309 = v28 - 2;
      if (v28 == 2)
      {
        goto LABEL_229;
      }

      v310 = 1;
      v311 = v38;
      v312 = v36;
      do
      {
        v313 = *(v311 + v39);
        v314 = *(v311 + 2 * v39);
        v315 = *(v312 + v37);
        v312 = (v312 + 2 * v37);
        v316 = *v312;
        v317 = v313 * v315 - v314 * v316;
        v318 = v314 * v315;
        *&v315 = v317;
        *(v311 + v39) = *&v315;
        *&v313 = v318 + v313 * v316;
        *(v311 + 2 * v39) = *&v313;
        v310 += 2;
        v311 = (v311 + 2 * v39);
      }

      while (v310 <= v309);
      if ((v28 & 1) == 0)
      {
LABEL_229:
        *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
      }

      if ((v27 & 1) == 0)
      {
        v319 = &v36[v27];
        v321 = *(v319 - 1);
        v320 = v319 - 1;
        v322 = v321;
        v323 = &v38[v27];
        v325 = *(v323 - 1);
        v324 = v323 - 1;
        *v324 = v325 * v322;
        if (v28 != 2)
        {
          v326 = 1;
          v327 = v324;
          v328 = v320;
          do
          {
            v329 = *(v327 + v39);
            v330 = *(v327 + 2 * v39);
            v331 = *(v328 + v37);
            v328 = (v328 + 2 * v37);
            v332 = *v328;
            v333 = v329 * v331 - v330 * v332;
            v334 = v330 * v331;
            *&v331 = v333;
            *(v327 + v39) = *&v331;
            *&v329 = v334 + v329 * v332;
            *(v327 + 2 * v39) = *&v329;
            v326 += 2;
            v327 = (v327 + 2 * v39);
          }

          while (v326 <= v309);
          if (v28)
          {
            v31 = 1;
LABEL_237:
            if (v22)
            {
              v335 = 0;
            }

            else
            {
              v335 = v23;
            }

            v336 = &v36[v29];
            do
            {
              if (v335)
              {
                *v38 = *v34 * *v36;
                if (v33 > v29)
                {
                  v337 = v29;
                  v338 = v336;
                  v339 = v29;
                  do
                  {
                    v340.f64[0] = v38[v339 + 1];
                    v341 = *v338++;
                    v342 = vcvtq_f64_f32(v341);
                    v340.f64[1] = -v340.f64[0];
                    v343 = vmulq_f64(v340, v342);
                    *&v38[v337] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v343, v343, 8uLL), v342, v38[v337]));
                    v339 += 2;
                    v337 += 2;
                  }

                  while (v339 < v33);
                }

                if ((v335 & v31) != 0)
                {
                  v38[v33] = v34[v33] * v36[v33];
                }
              }

              else if (v33 > v29)
              {
                v344 = v29;
                v345 = v336;
                v346 = v29;
                do
                {
                  v347.f64[0] = v38[v346 + 1];
                  v348 = *v345++;
                  v349 = vcvtq_f64_f32(v348);
                  v347.f64[1] = -v347.f64[0];
                  v350 = vmulq_f64(v347, v349);
                  *&v38[v344] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v350, v350, 8uLL), v349, v38[v344]));
                  v346 += 2;
                  v344 += 2;
                }

                while (v346 < v33);
              }

              v34 = (v34 + v35);
              v36 = (v36 + v37);
              v38 = (v38 + v39);
              v336 = (v336 + v37);
              --v28;
            }

            while (v28);
            goto LABEL_279;
          }
        }

        *(v324 + v39 * (v28 - 1)) = *(v324 + v39 * (v28 - 1)) * *(v320 + v37 * (v28 - 1));
      }
    }

    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_237;
  }

  if (a5)
  {
    if (v423 != v404)
    {
      if ((v30 & 1) == 0)
      {
        *v404 = *v423 * *v413;
        v89 = v28 - 2;
        if (v28 == 2)
        {
          goto LABEL_91;
        }

        v90 = 1;
        v91 = v34;
        v92 = v36;
        v93 = v38;
        do
        {
          v94 = *(v91 + v35);
          v91 = (v91 + 2 * v35);
          v95 = *(v92 + v37);
          v92 = (v92 + 2 * v37);
          v96 = *v91 * *v92 + v94 * v95;
          v97 = *v91 * v95 - v94 * *v92;
          *(v93 + v39) = v96;
          v93 = (v93 + 2 * v39);
          *v93 = v97;
          v90 += 2;
        }

        while (v90 <= v89);
        if ((v28 & 1) == 0)
        {
LABEL_91:
          *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
        }

        if ((v27 & 1) == 0)
        {
          v98 = &v34[2 * v27];
          v100 = *(v98 - 1);
          v99 = v98 - 2;
          v101 = v100;
          v102 = &v36[2 * v27];
          v104 = *(v102 - 1);
          v103 = v102 - 2;
          v105 = &v38[2 * v27];
          *(v105 - 1) = v101 * v104;
          v106 = v105 - 2;
          if (v28 != 2)
          {
            v107 = 2 * v39;
            v108 = v38 + v39 - 8;
            v109 = v36 + v37 - 8;
            v110 = v38 + 2 * v39 - 8;
            v111 = v36 + 2 * v37 - 8;
            v112 = v34 + 2 * v35 - 8;
            v113 = 2 * v37;
            v114 = 2 * v35;
            v115 = v34 + v35 - 8;
            v116 = 1;
            do
            {
              v117 = *(v115 + 8 * v27);
              v118 = *(v112 + 8 * v27);
              v119 = *(v109 + 8 * v27);
              v120 = *(v111 + 8 * v27);
              *(v108 + 8 * v27) = v118 * v120 + v117 * v119;
              *(v110 + 8 * v27) = v118 * v119 - v117 * v120;
              v116 += 2;
              v108 += v107;
              v109 += v113;
              v110 += v107;
              v111 += v113;
              v112 += v114;
              v115 += v114;
            }

            while (v116 <= v89);
            if (v28)
            {
              v31 = 1;
LABEL_99:
              if (v22)
              {
                v121 = 0;
              }

              else
              {
                v121 = v23;
              }

              do
              {
                if (v121)
                {
                  *v38 = *v34 * *v36;
                  if (v33 > v29)
                  {
                    v122 = 8 * v29 + 8;
                    v123 = v29;
                    do
                    {
                      v124 = *(v34 + v122 - 8);
                      v125 = *(v34 + v122);
                      v126 = *(v36 + v122 - 8);
                      v127 = *(v36 + v122);
                      v128 = (v38 + v122);
                      *(v128 - 1) = v125 * v127 + v124 * v126;
                      *v128 = v125 * v126 - v124 * v127;
                      v123 += 2;
                      v122 += 16;
                    }

                    while (v123 < v33);
                  }

                  if ((v121 & v31) != 0)
                  {
                    *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
                  }
                }

                else if (v33 > v29)
                {
                  v129 = 8 * v29 + 8;
                  v130 = v29;
                  do
                  {
                    v131 = *(v34 + v129 - 8);
                    v132 = *(v34 + v129);
                    v133 = *(v36 + v129 - 8);
                    v134 = *(v36 + v129);
                    v135 = (v38 + v129);
                    *(v135 - 1) = v132 * v134 + v131 * v133;
                    *v135 = v132 * v133 - v131 * v134;
                    v130 += 2;
                    v129 += 16;
                  }

                  while (v130 < v33);
                }

                v34 = (v34 + v35);
                v36 = (v36 + v37);
                v38 = (v38 + v39);
                --v28;
              }

              while (v28);
              goto LABEL_279;
            }
          }

          *(v106 + v39 * (v28 - 1)) = *(v99 + v35 * (v28 - 1)) * *(v103 + v37 * (v28 - 1));
        }
      }

      if (!v28)
      {
        goto LABEL_279;
      }

      goto LABEL_99;
    }

    if ((v30 & 1) == 0)
    {
      *v404 = *v404 * *v413;
      v270 = v28 - 2;
      if (v28 == 2)
      {
        goto LABEL_202;
      }

      v271 = 1;
      v272 = v38;
      v273 = v36;
      do
      {
        v274 = *(v272 + v39);
        v275 = *(v272 + 2 * v39);
        v276 = *(v273 + v37);
        v273 = (v273 + 2 * v37);
        v277 = v275 * *v273 + v274 * v276;
        v278 = v275 * v276 - v274 * *v273;
        *(v272 + v39) = v277;
        *(v272 + 2 * v39) = v278;
        v271 += 2;
        v272 = (v272 + 2 * v39);
      }

      while (v271 <= v270);
      if ((v28 & 1) == 0)
      {
LABEL_202:
        *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
      }

      if ((v27 & 1) == 0)
      {
        v279 = &v36[2 * v27];
        v281 = *(v279 - 1);
        v280 = (v279 - 2);
        v282 = v281;
        v283 = &v38[2 * v27];
        v285 = *(v283 - 1);
        v284 = (v283 - 2);
        *v284 = v285 * v282;
        if (v28 != 2)
        {
          v286 = 1;
          v287 = v284;
          v288 = v280;
          do
          {
            v289 = *(v287 + v39);
            v290 = *(v287 + 2 * v39);
            v291 = *(v288 + v37);
            v288 = (v288 + 2 * v37);
            v292 = v290 * *v288 + v289 * v291;
            v293 = v290 * v291 - v289 * *v288;
            *(v287 + v39) = v292;
            *(v287 + 2 * v39) = v293;
            v286 += 2;
            v287 = (v287 + 2 * v39);
          }

          while (v286 <= v270);
          if (v28)
          {
            v31 = 1;
LABEL_210:
            if (v22)
            {
              v294 = 0;
            }

            else
            {
              v294 = v23;
            }

            do
            {
              if (v294)
              {
                *v38 = *v34 * *v36;
                if (v33 > v29)
                {
                  v295 = 8 * v29 + 8;
                  v296 = v29;
                  do
                  {
                    v297 = (v38 + v295);
                    v298 = *(v38 + v295 - 8);
                    v299 = *(v38 + v295);
                    v300 = *(v36 + v295 - 8);
                    v301 = *(v36 + v295);
                    *(v297 - 1) = v299 * v301 + v298 * v300;
                    *v297 = v299 * v300 - v298 * v301;
                    v296 += 2;
                    v295 += 16;
                  }

                  while (v296 < v33);
                }

                if ((v294 & v31) != 0)
                {
                  *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
                }
              }

              else if (v33 > v29)
              {
                v302 = 8 * v29 + 8;
                v303 = v29;
                do
                {
                  v304 = (v38 + v302);
                  v305 = *(v38 + v302 - 8);
                  v306 = *(v38 + v302);
                  v307 = *(v36 + v302 - 8);
                  v308 = *(v36 + v302);
                  *(v304 - 1) = v306 * v308 + v305 * v307;
                  *v304 = v306 * v307 - v305 * v308;
                  v303 += 2;
                  v302 += 16;
                }

                while (v303 < v33);
              }

              v34 = (v34 + v35);
              v36 = (v36 + v37);
              v38 = (v38 + v39);
              --v28;
            }

            while (v28);
            goto LABEL_279;
          }
        }

        *(v284 + v39 * (v28 - 1)) = *(v284 + v39 * (v28 - 1)) * *(v280 + v37 * (v28 - 1));
      }
    }

    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_210;
  }

  if (v423 != v404)
  {
    if ((v30 & 1) == 0)
    {
      *v404 = *v423 * *v413;
      v183 = v28 - 2;
      if (v28 == 2)
      {
        goto LABEL_147;
      }

      v184 = 1;
      v185 = v34;
      v186 = v36;
      v187 = v38;
      do
      {
        v188 = *(v185 + v35);
        v185 = (v185 + 2 * v35);
        v189 = *(v186 + v37);
        v186 = (v186 + 2 * v37);
        v190 = v188 * v189 - *v185 * *v186;
        v191 = *v185 * v189 + v188 * *v186;
        *(v187 + v39) = v190;
        v187 = (v187 + 2 * v39);
        *v187 = v191;
        v184 += 2;
      }

      while (v184 <= v183);
      if ((v28 & 1) == 0)
      {
LABEL_147:
        *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
      }

      if ((v27 & 1) == 0)
      {
        v192 = &v34[2 * v27];
        v194 = *(v192 - 1);
        v193 = v192 - 2;
        v195 = v194;
        v196 = &v36[2 * v27];
        v198 = *(v196 - 1);
        v197 = v196 - 2;
        v199 = &v38[2 * v27];
        *(v199 - 1) = v195 * v198;
        v200 = v199 - 2;
        if (v28 != 2)
        {
          v201 = 2 * v39;
          v202 = v38 + v39 - 8;
          v203 = v36 + v37 - 8;
          v204 = v38 + 2 * v39 - 8;
          v205 = v36 + 2 * v37 - 8;
          v206 = v34 + 2 * v35 - 8;
          v207 = 2 * v37;
          v208 = 2 * v35;
          v209 = v34 + v35 - 8;
          v210 = 1;
          do
          {
            v211 = *(v209 + 8 * v27);
            v212 = *(v206 + 8 * v27);
            v213 = *(v203 + 8 * v27);
            v214 = *(v205 + 8 * v27);
            *(v202 + 8 * v27) = v211 * v213 - v212 * v214;
            *(v204 + 8 * v27) = v212 * v213 + v211 * v214;
            v210 += 2;
            v202 += v201;
            v203 += v207;
            v204 += v201;
            v205 += v207;
            v206 += v208;
            v209 += v208;
          }

          while (v210 <= v183);
          if (v28)
          {
            v31 = 1;
LABEL_155:
            if (v22)
            {
              v215 = 0;
            }

            else
            {
              v215 = v23;
            }

            do
            {
              if (v215)
              {
                *v38 = *v34 * *v36;
                if (v33 > v29)
                {
                  v216 = 2 * v29;
                  v217 = v29;
                  do
                  {
                    v218.f64[0] = *&v34[v216 + 2];
                    v219 = *&v36[v216];
                    v218.f64[1] = -v218.f64[0];
                    v220 = vmulq_f64(v219, v218);
                    *&v38[v216] = vmlaq_n_f64(vextq_s8(v220, v220, 8uLL), v219, *&v34[v216]);
                    v217 += 2;
                    v216 += 4;
                  }

                  while (v217 < v33);
                }

                if ((v215 & v31) != 0)
                {
                  *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
                }
              }

              else if (v33 > v29)
              {
                v221 = 2 * v29;
                v222 = v29;
                do
                {
                  v223.f64[0] = *&v34[v221 + 2];
                  v224 = *&v36[v221];
                  v223.f64[1] = -v223.f64[0];
                  v225 = vmulq_f64(v224, v223);
                  *&v38[v221] = vmlaq_n_f64(vextq_s8(v225, v225, 8uLL), v224, *&v34[v221]);
                  v222 += 2;
                  v221 += 4;
                }

                while (v222 < v33);
              }

              v34 = (v34 + v35);
              v36 = (v36 + v37);
              v38 = (v38 + v39);
              --v28;
            }

            while (v28);
            goto LABEL_279;
          }
        }

        *(v200 + v39 * (v28 - 1)) = *(v193 + v35 * (v28 - 1)) * *(v197 + v37 * (v28 - 1));
      }
    }

    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_155;
  }

  if (v30)
  {
    goto LABEL_264;
  }

  *v404 = *v404 * *v413;
  v351 = v28 - 2;
  if (v28 == 2)
  {
    goto LABEL_257;
  }

  v352 = 1;
  v353 = v38;
  v354 = v36;
  do
  {
    v355 = *(v353 + v39);
    v356 = *(v353 + 2 * v39);
    v357 = *(v354 + v37);
    v354 = (v354 + 2 * v37);
    v358 = v355 * v357 - v356 * *v354;
    v359 = v356 * v357 + v355 * *v354;
    *(v353 + v39) = v358;
    *(v353 + 2 * v39) = v359;
    v352 += 2;
    v353 = (v353 + 2 * v39);
  }

  while (v352 <= v351);
  if ((v28 & 1) == 0)
  {
LABEL_257:
    *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
  }

  if (v27)
  {
    goto LABEL_264;
  }

  v360 = &v36[2 * v27];
  v362 = *(v360 - 1);
  v361 = (v360 - 2);
  v363 = v362;
  v364 = &v38[2 * v27];
  v366 = *(v364 - 1);
  v365 = (v364 - 2);
  *v365 = v366 * v363;
  if (v28 == 2)
  {
    goto LABEL_263;
  }

  v367 = 1;
  v368 = v365;
  v369 = v361;
  do
  {
    v370 = *(v368 + v39);
    v371 = *(v368 + 2 * v39);
    v372 = *(v369 + v37);
    v369 = (v369 + 2 * v37);
    v373 = v370 * v372 - v371 * *v369;
    v374 = v371 * v372 + v370 * *v369;
    *(v368 + v39) = v373;
    *(v368 + 2 * v39) = v374;
    v367 += 2;
    v368 = (v368 + 2 * v39);
  }

  while (v367 <= v351);
  if ((v28 & 1) == 0)
  {
LABEL_263:
    *(v365 + v39 * (v28 - 1)) = *(v365 + v39 * (v28 - 1)) * *(v361 + v37 * (v28 - 1));
LABEL_264:
    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_265;
  }

  v31 = 1;
LABEL_265:
  if (v22)
  {
    v375 = 0;
  }

  else
  {
    v375 = v23;
  }

  v376 = &v36[2 * v29];
  do
  {
    if (v375)
    {
      *v38 = *v34 * *v36;
      if (v33 > v29)
      {
        v377 = 2 * v29;
        v378 = v376;
        v379 = v29;
        do
        {
          v380.f64[0] = *&v38[2 * v379 + 2];
          v381 = *v378++;
          v380.f64[1] = -v380.f64[0];
          v382 = vmulq_f64(v381, v380);
          *&v38[v377] = vmlaq_n_f64(vextq_s8(v382, v382, 8uLL), v381, *&v38[v377]);
          v379 += 2;
          v377 += 4;
        }

        while (v379 < v33);
      }

      if ((v375 & v31) != 0)
      {
        *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
      }
    }

    else if (v33 > v29)
    {
      v383 = 2 * v29;
      v384 = v376;
      v385 = v29;
      do
      {
        v386.f64[0] = *&v38[2 * v385 + 2];
        v387 = *v384++;
        v386.f64[1] = -v386.f64[0];
        v388 = vmulq_f64(v387, v386);
        *&v38[v383] = vmlaq_n_f64(vextq_s8(v388, v388, 8uLL), v387, *&v38[v383]);
        v385 += 2;
        v383 += 4;
      }

      while (v385 < v33);
    }

    v34 = (v34 + v35);
    v36 = (v36 + v37);
    v38 = (v38 + v39);
    v376 = (v376 + v37);
    --v28;
  }

  while (v28);
LABEL_279:
  if (v405 && atomic_fetch_add(v405, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v403);
  }

  v404 = 0;
  v406 = 0;
  v407 = 0;
  v408 = 0;
  if (SHIDWORD(v403[0]) >= 1)
  {
    v389 = 0;
    v390 = v409;
    do
    {
      *(v390 + 4 * v389++) = 0;
    }

    while (v389 < SHIDWORD(v403[0]));
  }

  v405 = 0;
  if (v410)
  {
    v391 = v410 == &v411;
  }

  else
  {
    v391 = 1;
  }

  if (!v391)
  {
    free(v410);
  }

  if (v414 && atomic_fetch_add(v414, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v412);
  }

  v413 = 0;
  *(&v414 + 1) = 0;
  v415 = 0uLL;
  if (SHIDWORD(v412[0]) >= 1)
  {
    v392 = 0;
    v393 = v417;
    do
    {
      v393[v392++] = 0;
    }

    while (v392 < SHIDWORD(v412[0]));
  }

  *&v414 = 0;
  if (v418)
  {
    v394 = v418 == &v419;
  }

  else
  {
    v394 = 1;
  }

  if (!v394)
  {
    free(v418);
  }

  if (v424 && atomic_fetch_add(v424, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v420);
  }

  v423 = 0;
  v425 = 0;
  v426 = 0;
  v427 = 0;
  if (SHIDWORD(v420) >= 1)
  {
    v395 = 0;
    v396 = v428;
    do
    {
      v396[v395++] = 0;
    }

    while (v395 < SHIDWORD(v420));
  }

  v424 = 0;
  if (v429)
  {
    v397 = v429 == &v430;
  }

  else
  {
    v397 = 1;
  }

  if (!v397)
  {
    free(v429);
  }
}

void sub_22D2201FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  cv::Exception::~Exception(&a30);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  cv::Mat::~Mat(&a45);
  cv::Mat::~Mat((v45 - 208));
  _Unwind_Resume(a1);
}

uint64_t cv::getOptimalDFTSize(cv *this)
{
  if (this > 0x7EB4959F)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = 1650;
  do
  {
    v4 = (v3 + v2) >> 1;
    if (cv::optimalDFTSizeTab[v4] >= this)
    {
      v3 = (v3 + v2) >> 1;
    }

    else
    {
      v2 = v4 + 1;
    }
  }

  while (v2 < v3);
  return cv::optimalDFTSizeTab[v3];
}

uint64_t cv::DFT<float>(uint64_t result, float32x2_t *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float32x2_t *a10, __int16 a11)
{
  v15 = a4;
  v16 = a3;
  v17 = a2;
  if (a8 == a3)
  {
    v18 = 1;
  }

  else if (a8 == 2 * a3)
  {
    v18 = 2;
  }

  else
  {
    v18 = a8 / a3;
  }

  if (a2 == result)
  {
    if ((a11 & 0x100) == 0)
    {
      if (*a5 != a5[a4 - 1])
      {
        std::string::basic_string[abi:ne200100]<0>(v341, "factors[0] == factors[nf-1]");
        std::string::basic_string[abi:ne200100]<0>(v340, "DFT");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
        v25 = cv::Exception::Exception(v342, 4294967081, v341, v340, __p, 599);
        cv::error(v25, v26);
      }

      if (a4 == 1)
      {
        if ((a3 & 3) == 0 && a3 >> 1 >= 1)
        {
          v27 = 0;
          v28 = a3 >> 1;
          v29 = &a2[v28 + 1];
          do
          {
            v30 = *a6;
            if (v30 >= v28)
            {
              cv::DFT<float>();
            }

            v31 = &a2[v27];
            v32 = v31[1];
            v33 = &a2[(a3 >> 1) + v30];
            v31[1] = *v33;
            *v33 = v32;
            if (v27 < v30)
            {
              v34 = a2[v27];
              a2[v27] = a2[v30];
              a2[v30] = v34;
              v35 = *(v29 + 8 * v27);
              *(v29 + 8 * v27) = v33[1];
              v33[1] = v35;
            }

            v27 += 2;
            a6 += 2 * v18;
          }

          while (v27 < v28);
        }
      }

      else if (a3 >= 1)
      {
        for (i = 0; i != a3; ++i)
        {
          v49 = *a6;
          if (v49 >= a3)
          {
            cv::DFT<float>();
          }

          if (i < v49)
          {
            v50 = a2[i];
            a2[i] = a2[v49];
            a2[v49] = v50;
          }

          a6 += v18;
        }
      }
    }

    if (a11)
    {
      if (a3 >= 2)
      {
        v51 = 0;
        v52 = &a2[1] + 1;
        do
        {
          v53 = -*v52;
          *(v52 - 2) = -*(v52 - 2);
          *v52 = v53;
          v52 += 4;
          v51 += 2;
        }

        while (v51 <= (a3 - 2));
      }

      else
      {
        LODWORD(v51) = 0;
      }

      if (v51 < a3)
      {
        a2[a3 - 1].f32[1] = -a2[a3 - 1].f32[1];
      }
    }
  }

  else
  {
    if ((a11 & 0x100) != 0)
    {
      cv::DFT<float>();
    }

    v19 = a3 - 2;
    v20 = 0;
    if (a11)
    {
      if (a3 >= 2)
      {
        v36 = a2 + 1;
        do
        {
          v37 = *a6;
          v38 = a6[v18];
          if (v37 >= a3 || v38 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          v40 = result + 8 * v37;
          v41 = -*(v40 + 4);
          v36[-1].i32[0] = *v40;
          v36[-1].f32[1] = v41;
          v42 = result + 8 * v38;
          v43 = -*(v42 + 4);
          v36->i32[0] = *v42;
          v36->f32[1] = v43;
          v36 += 2;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        v44 = result + 8 * a3;
        v45 = *(v44 - 8);
        v46 = -*(v44 - 4);
        v47 = &a2[v20];
        v47->i32[0] = v45;
        v47->f32[1] = v46;
      }
    }

    else
    {
      if (a3 >= 2)
      {
        v21 = a2 + 1;
        do
        {
          v22 = *a6;
          v23 = a6[v18];
          if (v22 >= a3 || v23 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          v21[-1] = *(result + 8 * v22);
          *v21 = *(result + 8 * v23);
          v21 += 2;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        a2[a3 - 1] = *(result + 8 * a3 - 8);
      }
    }
  }

  v54 = *a5;
  if (*a5)
  {
    v320 = a8;
    v57 = 1;
  }

  else
  {
    if (v54 >= 4 && (result = cv::checkHardwareSupport(4), v54 = *a5, *a5 >= 4))
    {
      v331 = v15;
      v58 = v16;
      v333 = a7 + 4;
      v59 = 1;
      v60 = 4;
      v56 = a8;
      v335 = *a5;
      do
      {
        v337 = v60;
        v56 /= 4;
        if (v16 >= 1)
        {
          v61 = 0;
          result = 8 * v56;
          v62 = 8 * v337;
          v63 = &v17[v59];
          v64 = &v17[2 * v59];
          v65 = &v17[3 * v59];
          v66 = v17;
          do
          {
            v67 = &v17[v61];
            v68 = &v67[4 * v59];
            v69 = v68[1];
            v70 = &v68[2 * v59];
            v71 = v70[1];
            v72 = *v68 + *v70;
            v73 = v69 + v71;
            v74 = v69 - v71;
            v75 = *v70 - *v68;
            v76 = v67[1];
            v77 = &v67[2 * v59];
            v78 = v77[1];
            v79 = *v67 + *v77;
            v80 = v76 + v78;
            v81 = *v67 - *v77;
            v82 = v76 - v78;
            *v67 = v72 + v79;
            v67[1] = v73 + v80;
            *v68 = v79 - v72;
            v68[1] = v80 - v73;
            *v77 = v74 + v81;
            v77[1] = v75 + v82;
            *v70 = v81 - v74;
            v70[1] = v82 - v75;
            if (v59 >= 2)
            {
              v83 = 0;
              v84 = (v333 + 24 * v56);
              v85 = (v333 + 16 * v56);
              v86 = (v333 + 8 * v56);
              do
              {
                v87 = &v66[v83 / 8];
                v88 = &v64[v83 / 8];
                v89 = &v63[v83 / 8];
                v90 = v63[v83 / 8 + 1].f32[0];
                v91 = v63[v83 / 8 + 1].f32[1];
                v92 = *(v85 - 1);
                v93 = (v90 * v92) - (v91 * *v85);
                v94 = (v92 * v91) + (v90 * *v85);
                v95 = v64[v83 / 8 + 1].f32[0];
                v96 = v64[v83 / 8 + 1].f32[1];
                v97 = *(v86 - 1);
                v98 = (v96 * v97) + (v95 * *v86);
                v99 = (v95 * v97) - (v96 * *v86);
                v100 = &v65[v83 / 8];
                v101 = v65[v83 / 8 + 1].f32[0];
                v102 = v65[v83 / 8 + 1].f32[1];
                v103 = *(v84 - 1);
                v104 = (v102 * v103) + (v101 * *v84);
                v105 = (v101 * v103) - (v102 * *v84);
                v106 = v99 + v105;
                v107 = v98 + v104;
                v108 = v98 - v104;
                v109 = v105 - v99;
                v110 = v66[v83 / 8 + 1].f32[0];
                v111 = v66[v83 / 8 + 1].f32[1];
                v112 = v93 + v110;
                v113 = v94 + v111;
                v114 = v110 - v93;
                v115 = v111 - v94;
                v87[1].f32[0] = v112 + v106;
                v87[1].f32[1] = v113 + v107;
                v88[1].f32[0] = v112 - v106;
                v88[1].f32[1] = v113 - v107;
                v89[1].f32[0] = v114 + v108;
                v89[1].f32[1] = v109 + v115;
                v100[1].f32[0] = v114 - v108;
                v100[1].f32[1] = v115 - v109;
                v86 = (v86 + result);
                v83 += 8;
                v85 += 4 * v56;
                v84 += 6 * v56;
              }

              while (8 * v59 - 8 != v83);
            }

            v61 += v337;
            v66 = (v66 + v62);
            v63 = (v63 + v62);
            v64 = (v64 + v62);
            v65 = (v65 + v62);
            v17 = a2;
          }

          while (v61 < v58);
        }

        v59 = v337;
        v60 = 4 * v337;
        v54 = v335;
        v16 = a3;
      }

      while (4 * v337 <= v335);
      v55 = v337;
      v15 = v331;
    }

    else
    {
      v55 = 1;
      v56 = a8;
    }

    while (v55 < v54)
    {
      v116 = v55;
      v55 *= 2;
      v56 /= 2;
      if (v16 >= 1)
      {
        v117 = 0;
        result = 8 * v55;
        v118 = 2 * v116;
        v119 = v17;
        do
        {
          v120 = &v17[v117];
          v121 = &v120[2 * v116];
          v122 = v120[1];
          v123 = v121[1];
          v124 = *v120 - *v121;
          *v120 = *v120 + *v121;
          v120[1] = v122 + v123;
          *v121 = v124;
          v121[1] = v122 - v123;
          if (v116 >= 2)
          {
            v125 = v116 - 1;
            v126 = v119;
            v127 = (a7 + 4 + 8 * v56);
            v128 = v119;
            do
            {
              v129 = &v126[v118];
              v130 = v126[v118 + 2];
              v131 = v126[v118 + 3];
              v132 = *(v127 - 1);
              v133 = (v130 * v132) - (v131 * *v127);
              v134 = (v130 * *v127) + (v131 * v132);
              v135 = v128[2];
              v128 += 2;
              v136 = v126[3];
              *v128 = v135 + v133;
              v126[3] = v136 + v134;
              v129[2] = v135 - v133;
              v129[3] = v136 - v134;
              v127 += 2 * v56;
              v126 = v128;
              --v125;
            }

            while (v125);
          }

          v117 += v55;
          v119 = (v119 + result);
        }

        while (v117 < v16);
      }
    }

    v320 = v56;
    v57 = v55;
  }

  v137.f32[0] = a9;
  v138 = (v54 & 1) == 0;
  if (v138 < v15)
  {
    v329 = v16;
    v322 = a7 + 4;
    v314 = v17 + 4;
    v315 = v15;
    do
    {
      v318 = v138;
      v139 = a5[v138];
      v319 = v139 * v57;
      v320 /= v139;
      if (v139 == 3)
      {
        if (v16 >= 1)
        {
          v201 = 0;
          v202 = 8 * v319;
          v203 = &v17[2 * v57];
          v204 = &v17[v57];
          result = 8 * v57 - 8;
          v205 = v17;
          do
          {
            v206 = &v17[v201];
            v207 = &v206[2 * v57];
            v208 = &v206[4 * v57];
            v209 = v207[1];
            v210 = v208[1];
            v211 = *v207 + *v208;
            v212 = v209 + v210;
            v213 = *v206;
            v214 = v206[1];
            v215 = (v209 - v210) * 0.86603;
            v216 = (*v208 - *v207) * 0.86603;
            *v206 = v211 + *v206;
            v206[1] = v212 + v214;
            v217 = v213 + (v211 * -0.5);
            v218 = v214 + (v212 * -0.5);
            *v207 = v217 + v215;
            v207[1] = v216 + v218;
            *v208 = v217 - v215;
            v208[1] = v218 - v216;
            if (v57 >= 2)
            {
              v219 = 0;
              v220 = (v322 + 16 * v320);
              v221 = (v322 + 8 * v320);
              do
              {
                v222 = &v205[v219 / 8];
                v223 = &v204[v219 / 8];
                v224 = v204[v219 / 8 + 1].f32[0];
                v225 = v204[v219 / 8 + 1].f32[1];
                v226 = *(v221 - 1);
                v227 = -(v225 * *v221);
                v228 = v226 * v225;
                v229 = v227 + (v224 * v226);
                v230 = &v203[v219 / 8];
                v231 = v203[v219 / 8 + 1].f32[0];
                v232 = v203[v219 / 8 + 1].f32[1];
                v233 = *(v220 - 1);
                v234 = v228 + (v224 * *v221);
                v235 = (v231 * v233) - (v232 * *v220);
                v236 = (v233 * v232) + (v231 * *v220);
                v237 = v229 + v235;
                v238 = v234 + v236;
                v239 = (v234 - v236) * 0.86603;
                v240 = v235 - v229;
                v241 = v205[v219 / 8 + 1].f32[0];
                v242 = v205[v219 / 8 + 1].f32[1];
                v243 = v240 * 0.86603;
                v244 = v241 + v237;
                v245 = v241 + (v237 * -0.5);
                v246 = v242 + v238;
                v247 = v242 + (v238 * -0.5);
                v222[1].f32[0] = v244;
                v222[1].f32[1] = v246;
                v223[1].f32[0] = v239 + v245;
                v223[1].f32[1] = v247 + v243;
                v230[1].f32[0] = v245 - v239;
                v230[1].f32[1] = v247 - v243;
                v221 += 2 * v320;
                v219 += 8;
                v220 += 4 * v320;
              }

              while (result != v219);
            }

            v201 += v319;
            v205 = (v205 + v202);
            v203 = (v203 + v202);
            v204 = (v204 + v202);
          }

          while (v201 < v329);
        }
      }

      else
      {
        v323 = v57;
        if (v139 == 5)
        {
          if (v16 >= 1)
          {
            v140 = 0;
            v336 = 8 * v319;
            v141 = &v17[2 * v57];
            v142 = &v17[4 * v57];
            result = &v17[2 * v57 + v57];
            v143 = 8 * v57;
            v144 = v17;
            v145 = &v17[v57];
            do
            {
              if (v57 >= 1)
              {
                v146 = 0;
                v147 = (a7 + 4);
                v148 = (a7 + 4);
                v149 = (a7 + 4);
                v150 = (a7 + 4);
                do
                {
                  v151 = &v144[v146 / 8];
                  v152 = &v141[v146 / 8];
                  v153 = &v142[v146 / 8];
                  v154 = &v145[v146 / 8];
                  v155 = v145[v146 / 8].f32[0];
                  v156 = v145[v146 / 8].f32[1];
                  v157 = *(v147 - 1);
                  v158 = (v155 * v157) - (v156 * *v147);
                  v159 = (v157 * v156) + (v155 * *v147);
                  v160 = v142[v146 / 8].f32[0];
                  v161 = v142[v146 / 8].f32[1];
                  v162 = *(v150 - 1);
                  v163 = (v160 * v162) - (v161 * *v150);
                  v164 = (v162 * v161) + (v160 * *v150);
                  v165 = v158 + v163;
                  v166 = (result + v146);
                  v167 = *(result + v146);
                  v168 = *(result + v146 + 4);
                  v169 = v159 + v164;
                  v170 = *(v149 - 1);
                  v171 = (v167 * v170) - (v168 * *v149);
                  v172 = v158 - v163;
                  v173 = (v170 * v168) + (v167 * *v149);
                  v174 = v141[v146 / 8].f32[0];
                  v175 = v141[v146 / 8].f32[1];
                  v176 = v159 - v164;
                  v177 = *(v148 - 1);
                  v178 = (v174 * v177) - (v175 * *v148);
                  v179 = (v177 * v175) + (v174 * *v148);
                  v180 = v171 + v178;
                  v181 = v173 + v179;
                  v182 = v171 - v178;
                  v183 = v173 - v179;
                  v184 = v144[v146 / 8].f32[0];
                  v185 = v144[v146 / 8].f32[1];
                  v186 = v184 + (v165 + v180);
                  v187 = v185 + (v169 + v181);
                  v188 = v184 + ((v165 + v180) * -0.25);
                  v189 = v165 - v180;
                  v190 = v185 + ((v169 + v181) * -0.25);
                  v191 = v189 * 0.55902;
                  v192 = (v169 - v181) * 0.55902;
                  v193 = (v176 + v183) * 0.95106;
                  v194 = (v172 + v182) * -0.95106;
                  *v151 = v186;
                  v151[1] = v187;
                  v195 = v193 - (v176 * 0.36327);
                  v196 = (v172 * 0.36327) + v194;
                  v197 = v193 - (v183 * 1.5388);
                  v198 = v194 + (v182 * 1.5388);
                  v199 = v188 + v191;
                  v200 = v188 - v191;
                  *v154 = v197 + v199;
                  v154[1] = (v190 + v192) + v198;
                  *v153 = v199 - v197;
                  v153[1] = (v190 + v192) - v198;
                  v147 += 2 * v320;
                  v146 += 8;
                  *v152 = v195 + v200;
                  v152[1] = (v190 - v192) + v196;
                  *v166 = v200 - v195;
                  v166[1] = (v190 - v192) - v196;
                  v150 += 8 * v320;
                  v149 += 6 * v320;
                  v148 += 4 * v320;
                }

                while (v143 != v146);
              }

              v140 += v319;
              v144 = (v144 + v336);
              v141 = (v141 + v336);
              v142 = (v142 + v336);
              result += v336;
              v145 = (v145 + v336);
              v17 = a2;
              v57 = v323;
            }

            while (v140 < v329);
          }
        }

        else if (v16 >= 1)
        {
          v248 = (v139 - 1 + ((v139 - 1) >> 31)) >> 1;
          v249 = v57;
          if ((v139 - 1) / 2 <= 1)
          {
            v250 = 1;
          }

          else
          {
            v250 = ((v139 - 1) / 2);
          }

          v251 = 8 * v57;
          v321 = 8 * v319;
          v327 = &v314[v321 - v251];
          v328 = 0;
          v334 = (8 * v139 - 8) * v320;
          v332 = v57;
          v252 = -8 * v57;
          v326 = &v314[v251];
          v338 = a5[v138];
          v253 = a8 / v139;
          v254 = 8 * v320;
          v325 = (v17 + v321 - v251);
          v324 = &v17[v251 / 8];
          while (v57 < 1)
          {
LABEL_117:
            v327 = (v327 + v321);
            v328 += v319;
            v326 = (v326 + v321);
            v57 = v323;
            v324 = (v324 + v321);
            v325 = (v325 + v321);
            v17 = a2;
            if (v328 >= v329)
            {
              goto LABEL_118;
            }
          }

          v255 = 0;
          v256 = 0;
          v257 = 0;
          v258 = v324;
          v259 = v325;
          v260 = (a7 + 4);
          result = a7 + 4;
          v262 = v326;
          v261 = v327;
          while (2)
          {
            v263 = &a2[v328 + v257];
            v264 = *v263;
            v265 = v263[1];
            if (v257)
            {
              if (v338 >= 3)
              {
                v266 = result;
                v267 = v260;
                v268 = v250;
                v269 = v262;
                v270 = a10 + 1;
                v271 = v261;
                v272 = *v263;
                v273 = v263[1];
                do
                {
                  v274 = *(v269 - 1);
                  v275 = *(v266 - 1);
                  v276 = (v274 * v275) - (*v269 * *v266);
                  v277 = (v275 * *v269) + (v274 * *v266);
                  v278 = *(v271 - 1);
                  v279 = *(v267 - 1);
                  v280 = (v278 * v279) - (*v271 * *v267);
                  v281 = (v279 * *v271) + (v278 * *v267);
                  v282 = v277 - v281;
                  v283 = v277 + v281;
                  v272 = v272 + (v276 + v280);
                  v273 = v273 + v283;
                  *(v270 - 1) = v276 + v280;
                  *v270 = v282;
                  v284 = &v270[2 * v248];
                  v271 = (v271 + v252);
                  v270 += 2;
                  *(v284 - 1) = v276 - v280;
                  *v284 = v283;
                  v269 = (v269 + v251);
                  v267 = (v267 + v256);
                  v266 = (v266 + v255);
                  --v268;
                }

                while (v268);
LABEL_108:
                *v263 = v272;
                v263[1] = v273;
                v291 = 1;
                v292 = v249;
                do
                {
                  v293 = v291 * v253;
                  v294 = v250;
                  v295 = a10;
                  v296 = v264;
                  v297 = v265;
                  v298 = v264;
                  v299 = v265;
                  v300 = v291 * v253;
                  do
                  {
                    v301 = *(a7 + 8 * v300);
                    v302 = vmul_f32(v301, *v295);
                    v303 = vmul_f32(v301, vrev64_s32(v295[v248]));
                    v296 = v296 + vaddv_f32(v302);
                    v298 = v298 + (v302.f32[0] - v302.f32[1]);
                    v297 = v297 + (v303.f32[0] - v303.f32[1]);
                    v299 = v299 + vaddv_f32(v303);
                    v304 = v300 + v293;
                    if (v300 + v293 >= a8)
                    {
                      v305 = a8;
                    }

                    else
                    {
                      v305 = 0;
                    }

                    v300 = v304 - v305;
                    ++v295;
                    --v294;
                  }

                  while (v294);
                  v306 = &v263[2 * v292];
                  *v306 = v298;
                  v306[1] = v299;
                  v307 = &v263[2 * (v319 - v292)];
                  *v307 = v296;
                  v307[1] = v297;
                  v292 += v249;
                }

                while (v291++ != v250);
              }
            }

            else if (v338 >= 3)
            {
              v285 = v259;
              v286 = v258;
              v287 = v250;
              v288 = a10;
              v272 = *v263;
              v273 = v263[1];
              do
              {
                v289 = vadd_f32(*v286, *v285);
                v290 = vsub_f32(*v286, *v285);
                *v288 = __PAIR64__(v290.u32[1], v289.u32[0]);
                v290.i32[1] = v289.i32[1];
                v288[v248] = v290;
                v272 = v272 + v289.f32[0];
                v273 = v273 + v289.f32[1];
                ++v288;
                v286 = (v286 + v251);
                v285 = (v285 + v252);
                --v287;
              }

              while (v287);
              goto LABEL_108;
            }

            ++v257;
            v261 += 2;
            v262 += 2;
            v260 = (v260 + v334);
            v256 -= v254;
            result += v254;
            v255 += v254;
            ++v258;
            ++v259;
            if (v257 == v332)
            {
              goto LABEL_117;
            }

            continue;
          }
        }
      }

LABEL_118:
      v57 = v319;
      v138 = v318 + 1;
      v16 = a3;
    }

    while (v318 + 1 != v315);
  }

  if (v137.f32[0] == 1.0)
  {
    if (a11)
    {
      if (v16 >= 2)
      {
        v311 = 0;
        v312 = &v17[1] + 1;
        do
        {
          v313 = -*v312;
          *(v312 - 2) = -*(v312 - 2);
          *v312 = v313;
          v312 += 4;
          v311 += 2;
        }

        while (v311 <= (v16 - 2));
      }

      else
      {
        LODWORD(v311) = 0;
      }

      if (v311 < v16)
      {
        v17[v16 - 1].f32[1] = -v17[v16 - 1].f32[1];
      }
    }
  }

  else if (v16 >= 1)
  {
    v309 = -v137.f32[0];
    if ((a11 & 1) == 0)
    {
      v309 = a9;
    }

    v310 = v16;
    v137.f32[1] = v309;
    do
    {
      *v17 = vmul_f32(*v17, v137);
      ++v17;
      --v310;
    }

    while (v310);
  }

  return result;
}

void sub_22D22121C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  cv::Exception::~Exception((v49 - 224));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

float *cv::RealDFT<float>(float *result, float32x2_t *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float32x2_t *a10, unsigned int a11)
{
  if (a8 != a3)
  {
    cv::RealDFT<float>();
  }

  v12 = a2;
  v13 = (a11 >> 9) & 1;
  v14 = a9;
  v15 = a2 + v13;
  if (a3 == 1)
  {
    *v15 = *result * v14;
LABEL_6:
    if ((a11 & 0x200) == 0)
    {
      return result;
    }

    v18 = (a3 & 1) == 0;
    v12 = v15;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v16 = result[1];
    v17 = (*result - v16) * v14;
    *v15 = (*result + v16) * v14;
    v15[1] = v17;
    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    v21 = a3 >> 1;
    v22 = *a5 >> 1;
    *a5 = v22;
    result = cv::DFT<float>(result, (a2 + 4 * v13), a3 >> 1, a4 - (v22 == 1), &a5[v22 == 1], a6, a7, a3, 1.0, a10, 0);
    *a5 *= 2;
    v23 = v15[1];
    v24 = (*v15 - v23) * v14;
    *v15 = (*v15 + v23) * v14;
    v15[1] = v24;
    v25 = &v15[v21];
    v26 = *v25;
    v27 = &v15[a3];
    v28 = *(v27 - 1);
    *(v27 - 1) = v24;
    if (v21 < 3)
    {
      LODWORD(v34) = 2;
    }

    else
    {
      v29 = v12 + v13;
      v30 = v14 * 0.5;
      v31 = &v29[a3 - 3];
      v32 = (a7 + 12);
      v33 = (v29 + 2);
      v34 = 2;
      do
      {
        v35 = v33[1];
        v36 = v30 * (v28 + v35);
        v37 = v35 - v28;
        v28 = *v31;
        v38 = v31[1];
        v39 = v30 * (v38 - *v33);
        v40 = v38 + *v33;
        v41 = *(v32 - 1);
        v42 = (v36 * v41) - (v39 * *v32);
        v43 = v30 * v40;
        v44 = v30 * v37;
        v45 = (v41 * v39) + (v36 * *v32);
        *(v33 - 1) = v43 + v42;
        *v31 = v43 - v42;
        *v33 = v44 + v45;
        v33 += 2;
        v34 += 2;
        v31[1] = v45 - v44;
        v31 -= 2;
        v32 += 2;
      }

      while (v34 < v21);
    }

    if (v34 <= v21)
    {
      *(v25 - 1) = v26 * v14;
      *v25 = -(v28 * v14);
    }

    goto LABEL_6;
  }

  a2->f32[0] = *result * v14;
  a2->i32[1] = 0;
  if (a3 >= 2)
  {
    v46 = &a2[1] + 1;
    v47 = a6 + 2;
    for (i = 1; i < a3; i += 2)
    {
      v49 = result[*v47] * v14;
      *(v46 - 1) = result[*(v47 - 1)] * v14;
      *v46 = 0.0;
      v46[1] = v49;
      v46[2] = 0.0;
      v46 += 4;
      v47 += 2;
    }
  }

  result = cv::DFT<float>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
  if ((a11 & 0x200) == 0)
  {
    v12->i32[1] = v12->i32[0];
    return result;
  }

  v18 = 0;
LABEL_8:
  if (a3 == 1 || v18)
  {
    v12[-1].i32[1] = v12->i32[0];
    v12->i32[0] = 0;
    if (a3 >= 2)
    {
      v12->i32[a3] = 0;
    }
  }

  return result;
}

float32x2_t *cv::CCSIDFT<float>(float32x2_t *result, float32x2_t *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float32x2_t *a10, __int16 a11)
{
  if (a8 != a3)
  {
    cv::CCSIDFT<float>();
  }

  v13 = a2;
  v14 = result;
  v15 = 0;
  if ((a11 & 0x200) != 0)
  {
    if (result == a2)
    {
      cv::CCSIDFT<float>();
    }

    v14 = result + 1;
    v15 = result->i32[1];
    result->i32[1] = result->i32[0];
  }

  v16 = a9;
  if (a3 == 2)
  {
    v18 = v14[1];
    v17 = *v14 + v18;
    a2->f32[1] = (*v14 - v18) * v16;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v17 = *v14;
LABEL_9:
    a2->f32[0] = v17 * v16;
    goto LABEL_10;
  }

  v19 = ((a3 + 1) >> 1);
  v71 = a9;
  if (a3)
  {
    a2->f32[0] = *v14;
    a2->i32[1] = 0;
    if (v19 >= 2)
    {
      v48 = &a6[a3 - 1];
      v49 = (v14 + 1);
      v50 = a6 + 1;
      v51 = v19 - 1;
      do
      {
        v53 = *v50++;
        v52 = v53;
        v55 = *v48--;
        v54 = v55;
        v56 = &a2[v52];
        v57 = *v49++;
        v56->i32[0] = v57.i32[0];
        v56->f32[1] = -v57.f32[1];
        a2[v54] = v57;
        --v51;
      }

      while (v51);
    }

    result = cv::DFT<float>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
    v13->f32[0] = v13->f32[0] * v71;
    if (a3 >= 2)
    {
      v58 = &v13[2];
      v59 = &v13[1];
      v60 = 1;
      do
      {
        v61 = *(v58 - 2) * v71;
        v62 = *v58;
        v58 += 4;
        *(v59 - 1) = v61;
        *v59 = v62 * v71;
        v60 += 2;
        v59 += 2;
      }

      while (v60 < a3);
    }
  }

  else
  {
    v20 = v14[1];
    v21 = v14[a3 - 1];
    v22 = v21 - *v14;
    a2->f32[0] = *v14 + v21;
    a2->f32[1] = v22;
    if (v19 < 3)
    {
      LODWORD(v30) = 2;
    }

    else
    {
      v23 = a3;
      v24 = v14 - 3;
      v25 = (a7 + 12);
      v26 = &a2[1] + 1;
      v27 = v14 + 3;
      v28 = a6 + 1;
      v29 = &a6[v19 - 1];
      v30 = 2;
      v31 = a2;
      do
      {
        v32 = v24[a3];
        v33 = v24[v23 + 1];
        v34 = v20 + v32;
        v35 = v20 - v32;
        v36 = *(v27 - 1);
        v20 = *v27;
        v37 = v36 - v33;
        v38 = v36 + v33;
        v39 = *(v25 - 1);
        v40 = (v38 * *v25) + (v35 * v39);
        v41 = (v38 * v39) - (v35 * *v25);
        v42 = v34 - v41;
        v43 = -v37 - v40;
        v44 = v34 + v41;
        if (v14 == a2)
        {
          *(v26 - 1) = v42;
          *v26 = v43;
          v31[-1].f32[v23] = v44;
          v47 = (v31 + v23 * 4 - 4);
        }

        else
        {
          v45 = a2 + *v28;
          *v45 = v42;
          v45[1] = v43;
          v46 = a2 + *v29;
          *v46 = v44;
          v47 = v46 + 1;
        }

        v30 += 2;
        --v31;
        v24 -= 2;
        v25 += 2;
        *v47 = v37 - v40;
        v26 += 2;
        v27 += 2;
        ++v28;
        --v29;
      }

      while (v30 < v19);
    }

    if (v30 <= v19)
    {
      v63 = v20 + v20;
      v64 = v14[v19] + v14[v19];
      if (v14 == a2)
      {
        v67 = a2 + v19;
        *v67 = v63;
        v66 = v67 + 1;
      }

      else
      {
        v65 = a6[v19];
        a2[v65].f32[0] = v63;
        v66 = a2 + ((2 * v65) | 1);
      }

      *v66 = v64;
    }

    v68 = *a5 >> 1;
    *a5 = v68;
    result = cv::DFT<float>(a2, a2, v19, a4 - (v68 == 1), &a5[v68 == 1], a6, a7, a3, 1.0, a10, (v14 != a2) << 8);
    *a5 *= 2;
    v69.f32[0] = v71;
    if (a3 >= 1)
    {
      v70 = 0;
      do
      {
        v69.f32[1] = -v71;
        *v13 = vmul_f32(*v13, v69);
        ++v13;
        v70 += 2;
      }

      while (v70 < a3);
    }
  }

LABEL_10:
  if ((a11 & 0x200) != 0)
  {
    *v14 = v15;
  }

  return result;
}

float64_t cv::DFT<double>(uint64_t a1, uint64_t a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, float64_t a9, float64x2_t *a10, __int16 a11)
{
  v11.f64[0] = a9;
  v15 = a4;
  v16 = a3;
  v17 = a2;
  if (a8 == a3)
  {
    v18 = 1;
  }

  else if (a8 == 2 * a3)
  {
    v18 = 2;
  }

  else
  {
    v18 = a8 / a3;
  }

  if (a2 == a1)
  {
    if ((a11 & 0x100) == 0)
    {
      if (*a5 != a5[a4 - 1])
      {
        std::string::basic_string[abi:ne200100]<0>(v347, "factors[0] == factors[nf-1]");
        std::string::basic_string[abi:ne200100]<0>(v346, "DFT");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
        v25 = cv::Exception::Exception(v348, 4294967081, v347, v346, __p, 599);
        cv::error(v25, v26);
      }

      if (a4 == 1)
      {
        if ((a3 & 3) == 0 && a3 >> 1 >= 1)
        {
          v27 = 0;
          v28 = a3 >> 1;
          v29 = (a2 + 16);
          do
          {
            v30 = *a6;
            if (v30 >= v28)
            {
              cv::DFT<float>();
            }

            v31 = (a2 + 16 * (a3 >> 1) + 16 * v30);
            v32 = *v29;
            *v29 = *v31;
            *v31 = v32;
            if (v27 < v30)
            {
              v33 = *(v29 - 1);
              *(v29 - 1) = *(a2 + 16 * v30);
              *(a2 + 16 * v30) = v33;
              v34 = v29[v28];
              v29[v28] = v31[1];
              v31[1] = v34;
            }

            v27 += 2;
            v29 += 2;
            a6 += 2 * v18;
          }

          while (v27 < v28);
        }
      }

      else if (a3 >= 1)
      {
        v47 = 0;
        v48 = a2;
        do
        {
          v49 = *a6;
          if (v49 >= a3)
          {
            cv::DFT<float>();
          }

          if (v47 < v49)
          {
            v50 = *v48;
            *v48 = *(a2 + 16 * v49);
            *(a2 + 16 * v49) = v50;
          }

          ++v47;
          ++v48;
          a6 += v18;
        }

        while (a3 != v47);
      }
    }

    if (a11)
    {
      if (a3 >= 2)
      {
        v51 = 0;
        v52 = (a2 + 24);
        do
        {
          v53 = -*v52;
          *(v52 - 2) = -*(v52 - 2);
          *v52 = v53;
          v52 += 4;
          v51 += 2;
        }

        while (v51 <= (a3 - 2));
      }

      else
      {
        LODWORD(v51) = 0;
      }

      if (v51 < a3)
      {
        *(a2 + 16 * a3 - 8) = -*(a2 + 16 * a3 - 8);
      }
    }
  }

  else
  {
    if ((a11 & 0x100) != 0)
    {
      cv::DFT<float>();
    }

    v19 = a3 - 2;
    v20 = 0;
    if (a11)
    {
      if (a3 >= 2)
      {
        v35 = a2 + 16;
        do
        {
          v36 = *a6;
          v37 = a6[v18];
          if (v36 >= a3 || v37 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          v39 = a1 + 16 * v36;
          v40 = -*(v39 + 8);
          *(v35 - 16) = *v39;
          *(v35 - 8) = v40;
          v41 = a1 + 16 * v37;
          v42 = -*(v41 + 8);
          *v35 = *v41;
          *(v35 + 8) = v42;
          v35 += 32;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        v43 = a1 + 16 * a3;
        v44 = *(v43 - 16);
        v45 = -*(v43 - 8);
        v46 = a2 + 16 * v20;
        *v46 = v44;
        *(v46 + 8) = v45;
      }
    }

    else
    {
      if (a3 >= 2)
      {
        v21 = (a2 + 16);
        do
        {
          v22 = *a6;
          v23 = a6[v18];
          if (v22 >= a3 || v23 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          *(v21 - 1) = *(a1 + 16 * v22);
          *v21 = *(a1 + 16 * v23);
          v21 += 2;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        *(a2 + 16 * a3 - 16) = *(a1 + 16 * a3 - 16);
      }
    }
  }

  v54 = *a5;
  if (*a5)
  {
    v325 = a8;
    v57 = 1;
  }

  else
  {
    if (v54 < 4)
    {
      v55 = 1;
      v56 = a8;
    }

    else
    {
      v337 = v11.f64[0];
      cv::checkHardwareSupport(4);
      v54 = *a5;
      if (*a5 >= 4)
      {
        v336 = v15;
        v58 = v16;
        v339 = a7 + 8;
        v59 = 1;
        v60 = 4;
        v56 = a8;
        v11.f64[0] = v337;
        v341 = *a5;
        do
        {
          v343 = v60;
          v56 /= 4;
          if (v16 >= 1)
          {
            v61 = 0;
            v62 = 16 * v343;
            v63 = &v17[v59];
            v64 = &v17[2 * v59];
            v65 = &v17[3 * v59];
            v66 = v17;
            do
            {
              f64 = v17[v61].f64;
              v68 = &f64[4 * v59];
              v69 = v68[1];
              v70 = &v68[2 * v59];
              v71 = v70[1];
              v72 = *v68 + *v70;
              v73 = v69 + v71;
              v74 = v69 - v71;
              v75 = *v70 - *v68;
              v76 = f64[1];
              v77 = &f64[2 * v59];
              v78 = v77[1];
              v79 = *f64 + *v77;
              v80 = v76 + v78;
              v81 = *f64 - *v77;
              v82 = v76 - v78;
              *f64 = v72 + v79;
              f64[1] = v73 + v80;
              *v68 = v79 - v72;
              v68[1] = v80 - v73;
              *v77 = v74 + v81;
              v77[1] = v75 + v82;
              *v70 = v81 - v74;
              v70[1] = v82 - v75;
              if (v59 >= 2)
              {
                v83 = 0;
                v84 = (v339 + 48 * v56);
                v85 = (v339 + 32 * v56);
                v86 = (v339 + 16 * v56);
                do
                {
                  v87 = &v66[v83 / 0x10];
                  v88 = &v64[v83 / 0x10];
                  v89 = &v63[v83 / 0x10];
                  v90 = v63[v83 / 0x10 + 1].f64[0];
                  v91 = v63[v83 / 0x10 + 1].f64[1];
                  v92 = *(v85 - 1);
                  v93 = v90 * v92 - v91 * *v85;
                  v94 = v92 * v91 + v90 * *v85;
                  v95 = v64[v83 / 0x10 + 1].f64[0];
                  v96 = v64[v83 / 0x10 + 1].f64[1];
                  v97 = *(v86 - 1);
                  v98 = v96 * v97 + v95 * *v86;
                  v99 = v95 * v97 - v96 * *v86;
                  v100 = &v65[v83 / 0x10];
                  v101 = v65[v83 / 0x10 + 1].f64[0];
                  v102 = v65[v83 / 0x10 + 1].f64[1];
                  v103 = *(v84 - 1);
                  v104 = v102 * v103 + v101 * *v84;
                  v105 = v101 * v103 - v102 * *v84;
                  v106 = v99 + v105;
                  v107 = v98 + v104;
                  v108 = v98 - v104;
                  v109 = v105 - v99;
                  v110 = v66[v83 / 0x10 + 1].f64[0];
                  v111 = v66[v83 / 0x10 + 1].f64[1];
                  v112 = v93 + v110;
                  v113 = v94 + v111;
                  v114 = v110 - v93;
                  v115 = v111 - v94;
                  v87[1].f64[0] = v112 + v106;
                  v87[1].f64[1] = v113 + v107;
                  v88[1].f64[0] = v112 - v106;
                  v88[1].f64[1] = v113 - v107;
                  v89[1].f64[0] = v114 + v108;
                  v89[1].f64[1] = v109 + v115;
                  v100[1].f64[0] = v114 - v108;
                  v100[1].f64[1] = v115 - v109;
                  v86 += 2 * v56;
                  v83 += 16;
                  v85 += 4 * v56;
                  v84 += 6 * v56;
                }

                while (16 * v59 - 16 != v83);
              }

              v61 += v343;
              v66 = (v66 + v62);
              v63 = (v63 + v62);
              v64 = (v64 + v62);
              v65 = (v65 + v62);
              v17 = a2;
            }

            while (v61 < v58);
          }

          v59 = v343;
          v60 = 4 * v343;
          v54 = v341;
          v16 = a3;
        }

        while (4 * v343 <= v341);
        v55 = v343;
        v15 = v336;
      }

      else
      {
        v55 = 1;
        v56 = a8;
        v11.f64[0] = v337;
      }
    }

    while (v55 < v54)
    {
      v116 = v55;
      v55 *= 2;
      v56 /= 2;
      if (v16 >= 1)
      {
        v117 = 0;
        v118 = 2 * v116;
        v119 = v17;
        do
        {
          v120 = v17[v117].f64;
          v121 = &v120[2 * v116];
          v122 = v120[1];
          v123 = v121[1];
          v124 = *v120 - *v121;
          *v120 = *v120 + *v121;
          v120[1] = v122 + v123;
          *v121 = v124;
          v121[1] = v122 - v123;
          if (v116 >= 2)
          {
            v125 = v116 - 1;
            v126 = v119;
            v127 = (a7 + 8 + 16 * v56);
            v128 = v119;
            do
            {
              v129 = &v126[v118];
              v130 = v126[v118 + 2];
              v131 = v126[v118 + 3];
              v132 = *(v127 - 1);
              v133 = v130 * v132 - v131 * *v127;
              v134 = v130 * *v127 + v131 * v132;
              v135 = v128[2];
              v128 += 2;
              v136 = v126[3];
              *v128 = v135 + v133;
              v126[3] = v136 + v134;
              v129[2] = v135 - v133;
              v129[3] = v136 - v134;
              v127 += 2 * v56;
              v126 = v128;
              --v125;
            }

            while (v125);
          }

          v117 += v55;
          v119 += v55;
        }

        while (v117 < v16);
      }
    }

    v325 = v56;
    v57 = v55;
  }

  v137 = (v54 & 1) == 0;
  if (v137 < v15)
  {
    v334 = v16;
    v327 = a7 + 8;
    v319 = &v17->f64[1];
    v320 = v15;
    do
    {
      v323 = v137;
      v138 = a5[v137];
      v324 = v138 * v57;
      v325 /= v138;
      if (v138 == 3)
      {
        if (v16 >= 1)
        {
          v201 = 0;
          v202 = 16 * v324;
          v203 = &v17[2 * v57];
          v204 = &v17[v57];
          v205 = v17;
          do
          {
            v206 = v17[v201].f64;
            v207 = &v206[2 * v57];
            v208 = &v206[4 * v57];
            v209 = v207[1];
            v210 = v208[1];
            v211 = *v207 + *v208;
            v212 = v209 + v210;
            v213 = *v206;
            v214 = v206[1];
            v215 = (v209 - v210) * 0.866025404;
            v216 = (*v208 - *v207) * 0.866025404;
            *v206 = v211 + *v206;
            v206[1] = v212 + v214;
            v217 = v213 + v211 * -0.5;
            v218 = v214 + v212 * -0.5;
            *v207 = v217 + v215;
            v207[1] = v216 + v218;
            *v208 = v217 - v215;
            v208[1] = v218 - v216;
            if (v57 >= 2)
            {
              v219 = 0;
              v220 = (v327 + 32 * v325);
              v221 = (v327 + 16 * v325);
              do
              {
                v222 = &v205[v219 / 0x10];
                v223 = &v204[v219 / 0x10];
                v224 = v204[v219 / 0x10 + 1].f64[0];
                v225 = v204[v219 / 0x10 + 1].f64[1];
                v226 = *(v221 - 1);
                v227 = -(v225 * *v221);
                v228 = v226 * v225;
                v229 = v227 + v224 * v226;
                v230 = &v203[v219 / 0x10];
                v231 = v203[v219 / 0x10 + 1].f64[0];
                v232 = v203[v219 / 0x10 + 1].f64[1];
                v233 = *(v220 - 1);
                v234 = v228 + v224 * *v221;
                v235 = v231 * v233 - v232 * *v220;
                v236 = v233 * v232 + v231 * *v220;
                v237 = v229 + v235;
                v238 = v234 + v236;
                v239 = (v234 - v236) * 0.866025404;
                v240 = v235 - v229;
                v241 = v205[v219 / 0x10 + 1].f64[0];
                v242 = v205[v219 / 0x10 + 1].f64[1];
                v243 = v240 * 0.866025404;
                v244 = v241 + v237;
                v245 = v241 + v237 * -0.5;
                v246 = v242 + v238;
                v247 = v242 + v238 * -0.5;
                v222[1].f64[0] = v244;
                v222[1].f64[1] = v246;
                v223[1].f64[0] = v239 + v245;
                v223[1].f64[1] = v247 + v243;
                v230[1].f64[0] = v245 - v239;
                v230[1].f64[1] = v247 - v243;
                v221 += 2 * v325;
                v219 += 16;
                v220 += 4 * v325;
              }

              while (16 * v57 - 16 != v219);
            }

            v201 += v324;
            v205 = (v205 + v202);
            v203 = (v203 + v202);
            v204 = (v204 + v202);
          }

          while (v201 < v334);
        }
      }

      else
      {
        v328 = v57;
        if (v138 == 5)
        {
          if (v16 >= 1)
          {
            v139 = 0;
            v342 = 16 * v324;
            v140 = &v17[2 * v57];
            v141 = &v17[4 * v57];
            v142 = &v17[2 * v57 + v57];
            v143 = 16 * v57;
            v144 = v17;
            v145 = &v17[v57];
            do
            {
              if (v57 >= 1)
              {
                v146 = 0;
                v147 = (a7 + 8);
                v148 = (a7 + 8);
                v149 = (a7 + 8);
                v150 = (a7 + 8);
                do
                {
                  v151 = v144[v146 / 0x10].f64;
                  v152 = v140[v146 / 0x10].f64;
                  v153 = v141[v146 / 0x10].f64;
                  v154 = v145[v146 / 0x10].f64;
                  v155 = v145[v146 / 0x10].f64[0];
                  v156 = v145[v146 / 0x10].f64[1];
                  v157 = *(v147 - 1);
                  v158 = v155 * v157 - v156 * *v147;
                  v159 = v157 * v156 + v155 * *v147;
                  v160 = v141[v146 / 0x10].f64[0];
                  v161 = v141[v146 / 0x10].f64[1];
                  v162 = *(v150 - 1);
                  v163 = v160 * v162 - v161 * *v150;
                  v164 = v162 * v161 + v160 * *v150;
                  v165 = v158 + v163;
                  v166 = v142[v146 / 0x10].f64;
                  v167 = v142[v146 / 0x10].f64[0];
                  v168 = v142[v146 / 0x10].f64[1];
                  v169 = v159 + v164;
                  v170 = *(v149 - 1);
                  v171 = v167 * v170 - v168 * *v149;
                  v172 = v158 - v163;
                  v173 = v170 * v168 + v167 * *v149;
                  v174 = v140[v146 / 0x10].f64[0];
                  v175 = v140[v146 / 0x10].f64[1];
                  v176 = v159 - v164;
                  v177 = *(v148 - 1);
                  v178 = v174 * v177 - v175 * *v148;
                  v179 = v177 * v175 + v174 * *v148;
                  v180 = v171 + v178;
                  v181 = v173 + v179;
                  v182 = v171 - v178;
                  v183 = v173 - v179;
                  v184 = v144[v146 / 0x10].f64[0];
                  v185 = v144[v146 / 0x10].f64[1];
                  v186 = v184 + v165 + v180;
                  v187 = v185 + v169 + v181;
                  v188 = v184 + (v165 + v180) * -0.25;
                  v189 = v165 - v180;
                  v190 = v185 + (v169 + v181) * -0.25;
                  v191 = v189 * 0.559016994;
                  v192 = (v169 - v181) * 0.559016994;
                  v193 = (v176 + v183) * 0.951056516;
                  v194 = (v172 + v182) * -0.951056516;
                  *v151 = v186;
                  v151[1] = v187;
                  v195 = v193 - v176 * 0.363271264;
                  v196 = v172 * 0.363271264 + v194;
                  v197 = v193 - v183 * 1.53884177;
                  v198 = v194 + v182 * 1.53884177;
                  v199 = v188 + v191;
                  v200 = v188 - v191;
                  *v154 = v197 + v199;
                  v154[1] = v190 + v192 + v198;
                  *v153 = v199 - v197;
                  v153[1] = v190 + v192 - v198;
                  v147 += 2 * v325;
                  v146 += 16;
                  *v152 = v195 + v200;
                  v152[1] = v190 - v192 + v196;
                  *v166 = v200 - v195;
                  v166[1] = v190 - v192 - v196;
                  v150 += 8 * v325;
                  v149 += 6 * v325;
                  v148 += 4 * v325;
                }

                while (v143 != v146);
              }

              v139 += v324;
              v144 = (v144 + v342);
              v140 = (v140 + v342);
              v141 = (v141 + v342);
              v142 = (v142 + v342);
              v145 = (v145 + v342);
              v17 = a2;
              v57 = v328;
            }

            while (v139 < v334);
          }
        }

        else if (v16 >= 1)
        {
          v248 = (v138 - 1 + ((v138 - 1) >> 31)) >> 1;
          v249 = v57;
          if ((v138 - 1) / 2 <= 1)
          {
            v250 = 1;
          }

          else
          {
            v250 = ((v138 - 1) / 2);
          }

          v251 = 16 * v57;
          v326 = 16 * v324;
          v332 = (v319 + v326 - v251);
          v333 = 0;
          v340 = (16 * v138 - 16) * v325;
          v338 = v57;
          v252 = -16 * v57;
          v331 = &v319[v251 / 8];
          v344 = a5[v137];
          v253 = a8 / v138;
          v254 = 16 * v325;
          v330 = (v17 + v326 - v251);
          v329 = &v17[v251 / 0x10];
          while (v57 < 1)
          {
LABEL_118:
            v332 = (v332 + v326);
            v333 += v324;
            v331 = (v331 + v326);
            v57 = v328;
            v329 = (v329 + v326);
            v330 = (v330 + v326);
            v17 = a2;
            if (v333 >= v334)
            {
              goto LABEL_119;
            }
          }

          v255 = 0;
          v256 = 0;
          v257 = 0;
          v258 = v329;
          v259 = v330;
          v260 = (a7 + 8);
          v261 = (a7 + 8);
          v263 = v331;
          v262 = v332;
          while (2)
          {
            v264 = (a2 + 16 * v333 + 16 * v257);
            v265 = *v264;
            v266 = v264[1];
            if (v257)
            {
              if (v344 >= 3)
              {
                v267 = v261;
                v268 = v260;
                v269 = v250;
                v270 = v263;
                v271 = &a10->f64[1];
                v272 = v262;
                v273 = *v264;
                v274 = v264[1];
                do
                {
                  v275 = *(v270 - 1);
                  v276 = *(v267 - 1);
                  v277 = v275 * v276 - *v270 * *v267;
                  v278 = v276 * *v270 + v275 * *v267;
                  v279 = *(v272 - 1);
                  v280 = *(v268 - 1);
                  v281 = v279 * v280 - *v272 * *v268;
                  v282 = v280 * *v272 + v279 * *v268;
                  v283 = v278 - v282;
                  v284 = v278 + v282;
                  v273 = v273 + v277 + v281;
                  v274 = v274 + v284;
                  *(v271 - 1) = v277 + v281;
                  *v271 = v283;
                  v285 = &v271[2 * v248];
                  v272 = (v272 + v252);
                  v271 += 2;
                  *(v285 - 1) = v277 - v281;
                  *v285 = v284;
                  v270 = (v270 + v251);
                  v268 = (v268 + v256);
                  v267 = (v267 + v255);
                  --v269;
                }

                while (v269);
LABEL_109:
                *v264 = v273;
                v264[1] = v274;
                v293 = 1;
                v294 = v249;
                do
                {
                  v295 = v293 * v253;
                  v296 = v250;
                  v297 = a10;
                  v298 = v265;
                  v299 = v266;
                  v300 = v265;
                  v301 = v266;
                  v302 = v293 * v253;
                  do
                  {
                    v303 = *(a7 + 16 * v302);
                    v304 = vmulq_f64(v303, *v297);
                    v305 = vmulq_f64(v303, vextq_s8(v297[v248], v297[v248], 8uLL));
                    v298 = v298 + vaddvq_f64(v304);
                    v300 = v300 + v304.f64[0] - v304.f64[1];
                    v299 = v299 + v305.f64[0] - v305.f64[1];
                    v301 = v301 + vaddvq_f64(v305);
                    v306 = v302 + v295;
                    if (v302 + v295 >= a8)
                    {
                      v307 = a8;
                    }

                    else
                    {
                      v307 = 0;
                    }

                    v302 = v306 - v307;
                    ++v297;
                    --v296;
                  }

                  while (v296);
                  v308 = &v264[2 * v294];
                  *v308 = v300;
                  v308[1] = v301;
                  v309 = &v264[2 * (v324 - v294)];
                  *v309 = v298;
                  v309[1] = v299;
                  v294 += v249;
                }

                while (v293++ != v250);
              }
            }

            else if (v344 >= 3)
            {
              v286 = v259;
              v287 = v258;
              v288 = v250;
              v289 = a10;
              v273 = *v264;
              v274 = v264[1];
              do
              {
                v290 = vaddq_f64(*v287, *v286);
                v291 = vsubq_f64(*v287, *v286);
                v292.f64[0] = v290.f64[0];
                v292.f64[1] = v291.f64[1];
                *v289 = v292;
                v291.f64[1] = v290.f64[1];
                v289[v248] = v291;
                v273 = v273 + v290.f64[0];
                v274 = v274 + v290.f64[1];
                ++v289;
                v287 = (v287 + v251);
                v286 = (v286 + v252);
                --v288;
              }

              while (v288);
              goto LABEL_109;
            }

            ++v257;
            v262 += 2;
            v263 += 2;
            v260 = (v260 + v340);
            v256 -= v254;
            v261 = (v261 + v254);
            v255 += v254;
            ++v258;
            ++v259;
            if (v257 == v338)
            {
              goto LABEL_118;
            }

            continue;
          }
        }
      }

LABEL_119:
      v57 = v324;
      v137 = v323 + 1;
      v16 = a3;
    }

    while (v323 + 1 != v320);
  }

  v311.f64[0] = 1.0;
  if (v11.f64[0] == 1.0)
  {
    if (a11)
    {
      if (v16 >= 2)
      {
        v314 = 0;
        v315 = &v17[1].f64[1];
        do
        {
          v311.f64[0] = -*(v315 - 2);
          v316 = -*v315;
          *(v315 - 2) = v311.f64[0];
          *v315 = v316;
          v315 += 4;
          v314 += 2;
        }

        while (v314 <= (v16 - 2));
      }

      else
      {
        LODWORD(v314) = 0;
      }

      if (v314 < v16)
      {
        v317 = &v17[v16];
        v311.f64[0] = -v317[-1].f64[1];
        v317[-1].f64[1] = v311.f64[0];
      }
    }
  }

  else if (v16 >= 1)
  {
    v312 = -v11.f64[0];
    if ((a11 & 1) == 0)
    {
      v312 = v11.f64[0];
    }

    v313 = v16;
    v11.f64[1] = v312;
    do
    {
      v311 = vmulq_f64(v11, *v17);
      *v17++ = v311;
      --v313;
    }

    while (v313);
  }

  return v311.f64[0];
}

void sub_22D2227B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  cv::Exception::~Exception((v45 - 208));
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 209) < 0)
  {
    operator delete(*(v45 - 232));
  }

  _Unwind_Resume(a1);
}

void cv::RealDFT<double>(double *a1, uint64_t a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float64x2_t *a10, unsigned int a11)
{
  if (a8 != a3)
  {
    cv::RealDFT<float>();
  }

  v13 = a2;
  v14 = (a11 >> 9) & 1;
  v15 = (a2 + 8 * v14);
  if (a3 == 1)
  {
    *v15 = *a1 * a9;
LABEL_6:
    if ((a11 & 0x200) == 0)
    {
      return;
    }

    v19 = (a3 & 1) == 0;
    v13 = v15;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v16 = a1[1];
    v17 = (*a1 + v16) * a9;
    v18 = (*a1 - v16) * a9;
    *v15 = v17;
    v15[1] = v18;
    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    v22 = a3 >> 1;
    v23 = *a5 >> 1;
    *a5 = v23;
    cv::DFT<double>(a1, a2 + 8 * v14, a3 >> 1, a4 - (v23 == 1), &a5[v23 == 1], a6, a7, a3, 1.0, a10, 0);
    *a5 *= 2;
    v24 = v15[1];
    v25 = (*v15 - v24) * a9;
    *v15 = (*v15 + v24) * a9;
    v15[1] = v25;
    v26 = &v15[v22];
    v27 = *v26;
    v28 = &v15[a3];
    v29 = *(v28 - 1);
    *(v28 - 1) = v25;
    if (v22 < 3)
    {
      LODWORD(v35) = 2;
    }

    else
    {
      v30 = &v13[v14];
      v31 = a9 * 0.5;
      v32 = &v30[a3 - 3];
      v33 = (a7 + 24);
      v34 = (v30 + 2);
      v35 = 2;
      do
      {
        v36 = v34[1];
        v37 = v31 * (v29 + v36);
        v38 = v36 - v29;
        v29 = *v32;
        v39 = v32[1];
        v40 = v31 * (v39 - *v34);
        v41 = v39 + *v34;
        v42 = *(v33 - 1);
        v43 = v37 * v42 - v40 * *v33;
        v44 = v31 * v41;
        v45 = v31 * v38;
        v46 = v42 * v40 + v37 * *v33;
        *(v34 - 1) = v44 + v43;
        *v32 = v44 - v43;
        *v34 = v45 + v46;
        v34 += 2;
        v35 += 2;
        v32[1] = v46 - v45;
        v32 -= 2;
        v33 += 2;
      }

      while (v35 < v22);
    }

    if (v35 <= v22)
    {
      *(v26 - 1) = v27 * a9;
      *v26 = -(v29 * a9);
    }

    goto LABEL_6;
  }

  *a2 = *a1 * a9;
  *(a2 + 8) = 0;
  if (a3 >= 2)
  {
    v47 = a2 + 24;
    v48 = a6 + 2;
    for (i = 1; i < a3; i += 2)
    {
      v50 = a1[*v48] * a9;
      *(v47 - 8) = a1[*(v48 - 1)] * a9;
      *v47 = 0;
      *(v47 + 8) = v50;
      *(v47 + 16) = 0;
      v47 += 32;
      v48 += 2;
    }
  }

  cv::DFT<double>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
  if ((a11 & 0x200) == 0)
  {
    v13[1] = *v13;
    return;
  }

  v19 = 0;
LABEL_8:
  if (a3 == 1 || v19)
  {
    *(v13 - 1) = *v13;
    *v13 = 0;
    if (a3 >= 2)
    {
      v13[a3] = 0;
    }
  }
}

void cv::CCSIDFT<double>(double *a1, double *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, float64_t a9, float64x2_t *a10, __int16 a11)
{
  if (a8 != a3)
  {
    cv::CCSIDFT<float>();
  }

  v13 = a2;
  v14 = a1;
  v15 = 0;
  if ((a11 & 0x200) != 0)
  {
    if (a1 == a2)
    {
      cv::CCSIDFT<float>();
    }

    v14 = a1 + 1;
    v15 = *(a1 + 1);
    a1[1] = *a1;
  }

  if (a3 == 2)
  {
    v17 = v14[1];
    v16 = *v14 + v17;
    a2[1] = (*v14 - v17) * a9;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v16 = *v14;
LABEL_9:
    *a2 = v16 * a9;
    goto LABEL_10;
  }

  v18 = ((a3 + 1) >> 1);
  if (a3)
  {
    *a2 = *v14;
    a2[1] = 0.0;
    if (v18 >= 2)
    {
      v47 = &a6[a3 - 1];
      v48 = (v14 + 1);
      v49 = a6 + 1;
      v50 = v18 - 1;
      do
      {
        v52 = *v49++;
        v51 = v52;
        v54 = *v47--;
        v53 = v54;
        v55 = &a2[2 * v51];
        v56 = *v48++;
        *v55 = v56;
        v55[1] = -*(&v56 + 1);
        *&a2[2 * v53] = v56;
        --v50;
      }

      while (v50);
    }

    cv::DFT<double>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
    v13->f64[0] = v13->f64[0] * a9;
    if (a3 >= 2)
    {
      f64 = v13[2].f64;
      v58 = v13[1].f64;
      v59 = 1;
      do
      {
        v60 = *(f64 - 2) * a9;
        v61 = *f64;
        f64 += 4;
        *(v58 - 1) = v60;
        *v58 = v61 * a9;
        v59 += 2;
        v58 += 2;
      }

      while (v59 < a3);
    }
  }

  else
  {
    v19 = v14[1];
    v20 = v14[a3 - 1];
    v21 = v20 - *v14;
    *a2 = *v14 + v20;
    a2[1] = v21;
    if (v18 < 3)
    {
      LODWORD(v29) = 2;
    }

    else
    {
      v22 = a3;
      v23 = v14 - 3;
      v24 = (a7 + 24);
      v25 = a2 + 3;
      v26 = v14 + 3;
      v27 = a6 + 1;
      v28 = &a6[v18 - 1];
      v29 = 2;
      v30 = a2;
      do
      {
        v31 = v23[a3];
        v32 = v23[v22 + 1];
        v33 = v19 + v31;
        v34 = v19 - v31;
        v35 = *(v26 - 1);
        v19 = *v26;
        v36 = v35 - v32;
        v37 = v35 + v32;
        v38 = *(v24 - 1);
        v39 = v37 * *v24 + v34 * v38;
        v40 = v37 * v38 - v34 * *v24;
        v41 = v33 - v40;
        v42 = -v36 - v39;
        v43 = v33 + v40;
        if (v14 == a2)
        {
          *(v25 - 1) = v41;
          *v25 = v42;
          v30[v22 - 2] = v43;
          v46 = &v30[v22 - 1];
        }

        else
        {
          v44 = &a2[*v27];
          *v44 = v41;
          v44[1] = v42;
          v45 = &a2[*v28];
          *v45 = v43;
          v46 = v45 + 1;
        }

        v29 += 2;
        v30 -= 2;
        v23 -= 2;
        v24 += 2;
        *v46 = v36 - v39;
        v25 += 2;
        v26 += 2;
        ++v27;
        --v28;
      }

      while (v29 < v18);
    }

    if (v29 <= v18)
    {
      v62 = v19 + v19;
      v63 = v14[v18] + v14[v18];
      if (v14 == a2)
      {
        v66 = &a2[v18];
        *v66 = v62;
        v65 = v66 + 1;
      }

      else
      {
        v64 = a6[v18];
        a2[2 * v64] = v62;
        v65 = &a2[((2 * v64) | 1)];
      }

      *v65 = v63;
    }

    v67 = *a5 >> 1;
    *a5 = v67;
    cv::DFT<double>(a2, a2, v18, a4 - (v67 == 1), &a5[v67 == 1], a6, a7, a3, 1.0, a10, (v14 != a2) << 8);
    *a5 *= 2;
    v68.f64[0] = a9;
    if (a3 >= 1)
    {
      v69 = 0;
      do
      {
        v68.f64[1] = -a9;
        *v13 = vmulq_f64(*v13, v68);
        ++v13;
        v69 += 2;
      }

      while (v69 < a3);
    }
  }

LABEL_10:
  if ((a11 & 0x200) != 0)
  {
    *v14 = v15;
  }
}

void cv::DFTInit()
{
  __assert_rtn("DFTInit", "dxt.cpp", 211, "nf < 34");
}

{
  __assert_rtn("DFTInit", "dxt.cpp", 347, "elem_size == sizeof(Complex<float>)");
}

void cv::DFT<float>()
{
  __assert_rtn("DFT", "dxt.cpp", 563, "(flags & DFT_NO_PERMUTE) == 0");
}

{
  __assert_rtn("DFT", "dxt.cpp", 581, "(unsigned)k0 < (unsigned)n && (unsigned)k1 < (unsigned)n");
}

{
  __assert_rtn("DFT", "dxt.cpp", 569, "(unsigned)k0 < (unsigned)n && (unsigned)k1 < (unsigned)n");
}

{
  __assert_rtn("DFT", "dxt.cpp", 627, "(unsigned)j < (unsigned)n");
}

{
  __assert_rtn("DFT", "dxt.cpp", 610, "(unsigned)j < (unsigned)n2");
}

void cv::CCSIDFT<float>()
{
  __assert_rtn("CCSIDFT", "dxt.cpp", 1102, "tab_size == n");
}

{
  __assert_rtn("CCSIDFT", "dxt.cpp", 1106, "src != dst");
}

uint64_t cv::copyMask8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*(a3 + i))
          {
            *(a5 + i) = *(result + i);
          }
        }
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask16u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*(a3 + i))
          {
            *(a5 + 2 * i) = *(result + 2 * i);
          }
        }
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask8uC3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 6;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 6);
            *(v11 - 4) = *(result + v10 - 4);
            *(v11 - 6) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 3);
            *(v13 - 1) = *(result + v10 - 1);
            *(v13 - 3) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 2) = *(result + v10 + 2);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 3);
            *(v17 + 5) = *(result + v10 + 5);
            *(v17 + 3) = v18;
          }

          v9 += 4;
          v10 += 12;
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
        v19 = 3 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 2) = *(result + v19 + 2);
            *v20 = v21;
          }

          ++v9;
          v19 += 3;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v10 - 8) = *(result + v10 - 8);
          }

          if (*(a3 + v9 + 1))
          {
            *(a5 + v10 - 4) = *(result + v10 - 4);
          }

          if (*(a3 + v9 + 2))
          {
            *(a5 + v10) = *(result + v10);
          }

          if (*(a3 + v9 + 3))
          {
            *(a5 + v10 + 4) = *(result + v10 + 4);
          }

          v9 += 4;
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
          if (*(a3 + v9))
          {
            *(a5 + 4 * v9) = *(result + 4 * v9);
          }

          ++v9;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask16uC3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 12;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 12);
            *(v11 - 8) = *(result + v10 - 8);
            *(v11 - 12) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 6);
            *(v13 - 2) = *(result + v10 - 2);
            *(v13 - 6) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 4) = *(result + v10 + 4);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 6);
            *(v17 + 10) = *(result + v10 + 10);
            *(v17 + 6) = v18;
          }

          v9 += 4;
          v10 += 24;
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
        v19 = 6 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 4) = *(result + v19 + 4);
            *v20 = v21;
          }

          ++v9;
          v19 += 6;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 16;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v10 - 16) = *(result + v10 - 16);
          }

          if (*(a3 + v9 + 1))
          {
            *(a5 + v10 - 8) = *(result + v10 - 8);
          }

          if (*(a3 + v9 + 2))
          {
            *(a5 + v10) = *(result + v10);
          }

          if (*(a3 + v9 + 3))
          {
            *(a5 + v10 + 8) = *(result + v10 + 8);
          }

          v9 += 4;
          v10 += 32;
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
          if (*(a3 + v9))
          {
            *(a5 + 8 * v9) = *(result + 8 * v9);
          }

          ++v9;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 24;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 24);
            *(v11 - 16) = *(result + v10 - 16);
            *(v11 - 24) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 12);
            *(v13 - 4) = *(result + v10 - 4);
            *(v13 - 12) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 8) = *(result + v10 + 8);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 12);
            *(v17 + 20) = *(result + v10 + 20);
            *(v17 + 12) = v18;
          }

          v9 += 4;
          v10 += 48;
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
        v19 = 12 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 8) = *(result + v19 + 8);
            *v20 = v21;
          }

          ++v9;
          v19 += 12;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 32;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v10 - 32) = *(result + v10 - 32);
          }

          if (*(a3 + v9 + 1))
          {
            *(a5 + v10 - 16) = *(result + v10 - 16);
          }

          if (*(a3 + v9 + 2))
          {
            *(a5 + v10) = *(result + v10);
          }

          if (*(a3 + v9 + 3))
          {
            *(a5 + v10 + 16) = *(result + v10 + 16);
          }

          v9 += 4;
          v10 += 64;
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
        v11 = 16 * v9;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v11) = *(result + v11);
          }

          ++v9;
          v11 += 16;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 48;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 48);
            *(v11 - 32) = *(result + v10 - 32);
            *(v11 - 48) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 24);
            *(v13 - 8) = *(result + v10 - 8);
            *(v13 - 24) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 16) = *(result + v10 + 16);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 24);
            *(v17 + 40) = *(result + v10 + 40);
            *(v17 + 24) = v18;
          }

          v9 += 4;
          v10 += 96;
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
        v19 = 24 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 16) = *(result + v19 + 16);
            *v20 = v21;
          }

          ++v9;
          v19 += 24;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 64;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 48);
            *(v11 - 64) = *(result + v10 - 64);
            *(v11 - 48) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 16);
            *(v13 - 32) = *(result + v10 - 32);
            *(v13 - 16) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = (a5 + v10);
            v16 = *(result + v10 + 16);
            *v15 = *(result + v10);
            v15[1] = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 48);
            *(v17 + 32) = *(result + v10 + 32);
            *(v17 + 48) = v18;
          }

          v9 += 4;
          v10 += 128;
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
        v19 = 32 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = (a5 + v19);
            v21 = *(result + v19 + 16);
            *v20 = *(result + v19);
            v20[1] = v21;
          }

          ++v9;
          v19 += 32;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t (*cv::getCopyMaskFunc(unint64_t this))(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t *a8)
{
  if (this > 0x20)
  {
    return cv::copyMaskGeneric;
  }

  if (cv::copyMaskTab[this])
  {
    return cv::copyMaskTab[this];
  }

  return cv::copyMaskGeneric;
}

uint64_t cv::copyMaskGeneric(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t *a8)
{
  v8 = *a8;
  v9 = a7[1];
  v10 = v9 - 1;
  a7[1] = v9 - 1;
  if (v9)
  {
    v11 = *a7;
    do
    {
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = a5;
        v14 = result;
        do
        {
          if (*(a3 + v12))
          {
            v15 = v8 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = 0;
            do
            {
              *(v13 + v16) = *(v14 + v16);
              ++v16;
            }

            while (v8 != v16);
            v11 = *a7;
          }

          ++v12;
          v14 += v8;
          v13 += v8;
        }

        while (v12 < v11);
        v10 = a7[1];
      }

      v17 = v10;
      a3 += a4;
      result += a2;
      a5 += a6;
      a7[1] = --v10;
    }

    while (v17);
  }

  return result;
}

void cv::Mat::copyTo(cv::Mat *this, const cv::_OutputArray *a2)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 64))(a2, 0xFFFFFFFFLL);
  if ((*(*a2 + 104))(a2) && v4 != (*this & 0xFFF))
  {
    if (((*this ^ v4) & 0xFF8) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "channels() == CV_MAT_CN(dtype)");
      std::string::basic_string[abi:ne200100]<0>(v47, "copyTo");
      std::string::basic_string[abi:ne200100]<0>(&v45, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
      cv::Exception::Exception(v36, 4294967081, __p, v47, &v45, 212);
      cv::error(v36, v15);
    }

    cv::Mat::convertTo(this, a2, v4, 1.0, 0.0);
  }

  else
  {
    if (*(this + 2))
    {
      if (*(this + 1) >= 3)
      {
        v16 = *(this + 8);
        v17 = 1;
        v18 = *(this + 1);
        do
        {
          v19 = *v16++;
          v17 *= v19;
          --v18;
        }

        while (v18);
        if (v17)
        {
          (*(*a2 + 144))(a2);
          (**a2)(v36, a2, 0xFFFFFFFFLL);
          if (*(this + 2) != __dst)
          {
            v20 = *(this + 1);
            if (v20 >= 3)
            {
              v23 = *(this + 8);
              v21 = 1;
              do
              {
                v24 = *v23++;
                v21 *= v24;
                --v20;
              }

              while (v20);
            }

            else
            {
              v21 = *(this + 3) * *(this + 2);
            }

            if (v21)
            {
              v47[0] = this;
              v47[1] = v36;
              v45 = 0;
              v46 = 0;
              cv::NAryMatIterator::NAryMatIterator(__p, v47, &v45, 2);
              v25 = *(this + 1);
              if (v25 < 1)
              {
                v26 = 0;
              }

              else
              {
                v26 = *(*(this + 9) + 8 * v25 - 8);
              }

              v27 = v26 * __p[5];
              v28 = -1;
              while (++v28 < __p[4])
              {
                memcpy(v46, v45, v27);
                cv::NAryMatIterator::operator++(__p);
              }
            }
          }

          if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v36);
          }

          __dst = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          if (SHIDWORD(v36[0]) >= 1)
          {
            v29 = 0;
            v30 = v42;
            do
            {
              *(v30 + 4 * v29++) = 0;
            }

            while (v29 < SHIDWORD(v36[0]));
          }

          goto LABEL_57;
        }
      }

      else if (*(this + 3) * *(this + 2))
      {
        (*(*a2 + 136))(a2, *(this + 2), *(this + 3), *this & 0xFFF, 0xFFFFFFFFLL, 0, 0);
        (**a2)(v36, a2, 0xFFFFFFFFLL);
        v5 = *(this + 2);
        v6 = __dst;
        if (v5 != __dst)
        {
          v7 = *(this + 2);
          if (v7 >= 1)
          {
            LODWORD(v8) = *(this + 3);
            if (v8 >= 1)
            {
              v9 = *(this + 1);
              v10 = *this & v36[0];
              v11 = v8 * v7;
              if (v11 >> 31)
              {
                LODWORD(v11) = *(this + 3);
                v12 = *(this + 2);
              }

              else
              {
                v12 = 1;
              }

              if ((v10 & 0x4000) != 0)
              {
                v8 = v11;
              }

              else
              {
                v8 = v8;
              }

              if ((v10 & 0x4000) != 0)
              {
                v13 = v12;
              }

              else
              {
                v13 = *(this + 2);
              }

              if (v9 < 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = *(*(this + 9) + 8 * v9 - 8);
              }

              v31 = v14 * v8;
              do
              {
                --v13;
                memcpy(v6, v5, v31);
                v5 += *(this + 10);
                v6 += v44;
              }

              while (v13);
            }
          }
        }

        if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v36);
        }

        __dst = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        if (SHIDWORD(v36[0]) >= 1)
        {
          v32 = 0;
          v33 = v42;
          do
          {
            *(v33 + 4 * v32++) = 0;
          }

          while (v32 < SHIDWORD(v36[0]));
        }

LABEL_57:
        v38 = 0;
        if (v43)
        {
          v34 = v43 == &v44;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          free(v43);
        }

        return;
      }
    }

    v22 = *(*a2 + 152);

    v22(a2);
  }
}

void sub_22D223E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::Mat::copyTo(cv::Mat *this, const cv::_OutputArray *a2, const cv::_InputArray *a3)
{
  v64 = *MEMORY[0x277D85DE8];
  (**a3)(v51, a3, 0xFFFFFFFFLL);
  if (!v52)
  {
    cv::Mat::copyTo(this, a2);
    goto LABEL_53;
  }

  v5 = (LODWORD(v51[0]) >> 3) & 0x1FF;
  if ((v51[0] & 7) != 0 || (v5 ? (v6 = v5 == ((*this >> 3) & 0x1FF)) : (v6 = 1), !v6))
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "mask.depth() == CV_8U && (mcn == 1 || mcn == cn)");
    std::string::basic_string[abi:ne200100]<0>(v60, "copyTo");
    std::string::basic_string[abi:ne200100]<0>(&v61, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(&v43, 4294967081, v33, v60, &v61, 271);
    cv::error(&v43, v7);
  }

  if (v5)
  {
    v8 = (0x88442211uLL >> (4 * (*this & 7u))) & 0xF;
LABEL_10:
    v42 = v8;
    goto LABEL_11;
  }

  v31 = *(this + 1);
  if (v31 <= 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = *(*(this + 9) + 8 * v31 - 8);
  v42 = v8;
  if (v8 <= 0x20)
  {
LABEL_11:
    v9 = cv::copyMaskTab[v8];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = cv::copyMaskGeneric;
    }

    goto LABEL_14;
  }

  v10 = cv::copyMaskGeneric;
LABEL_14:
  (**a2)(&v43, a2, 0xFFFFFFFFLL);
  v11 = v44;
  if (*(&v44 + 1) && atomic_fetch_add(*(&v44 + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v43);
  }

  *&v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v43.i32[1] >= 1)
  {
    v12 = 0;
    v13 = v48;
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < v43.i32[1]);
  }

  *(&v44 + 1) = 0;
  if (v49)
  {
    v14 = v49 == &v50;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    free(v49);
  }

  (*(*a2 + 144))(a2, *(this + 1), *(this + 8), *this & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v33, a2, 0xFFFFFFFFLL);
  if (v34 != v11)
  {
    v43 = 0u;
    v44 = 0u;
    cv::Mat::operator=(v33, &v43);
  }

  v15 = v5 + 1;
  if (*(this + 1) > 2)
  {
    v60[0] = this;
    v60[1] = v33;
    v60[2] = v51;
    v60[3] = 0;
    v61 = 0;
    v62 = 0;
    v63 = 0;
    cv::NAryMatIterator::NAryMatIterator(&v43, v60, &v61, -1);
    v21 = v15 * v46;
    v22 = -1;
    while (++v22 < v45)
    {
      __p[0] = v21;
      __p[1] = 1;
      v10(v61, 0, v63, 0, v62, 0, __p, &v42);
      cv::NAryMatIterator::operator++(&v43);
    }
  }

  else
  {
    if (*(*(this + 8) + 4) != v57[1] || **(this + 8) != *v57)
    {
      std::string::basic_string[abi:ne200100]<0>(v60, "size() == mask.size()");
      std::string::basic_string[abi:ne200100]<0>(&v61, "copyTo");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
      cv::Exception::Exception(&v43, 4294967081, v60, &v61, __p, 286);
      cv::error(&v43, v17);
    }

    v18 = *(this + 2);
    v19 = *(this + 3);
    if ((*this & v33[0] & v51[0] & 0x4000) != 0 && (v20 = v19 * v15 * v18, v20 == v20))
    {
      v18 = 1;
    }

    else
    {
      LODWORD(v20) = v19 * v15;
    }

    v23 = *(this + 2);
    v24 = *(this + 10);
    v43.i64[0] = __PAIR64__(v18, v20);
    v10(v23, v24, v52, v59, v34, v41, v43.i32, &v42);
  }

  if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v33);
  }

  v34 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (SHIDWORD(v33[0]) >= 1)
  {
    v25 = 0;
    v26 = v39;
    do
    {
      *(v26 + 4 * v25++) = 0;
    }

    while (v25 < SHIDWORD(v33[0]));
  }

  v35 = 0;
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

LABEL_53:
  if (v53 && atomic_fetch_add(v53, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v51);
  }

  v52 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (SHIDWORD(v51[0]) >= 1)
  {
    v28 = 0;
    v29 = v57;
    do
    {
      v29[v28++] = 0;
    }

    while (v28 < SHIDWORD(v51[0]));
  }

  v53 = 0;
  if (v58)
  {
    v30 = v58 == &v59;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v58);
  }
}

void sub_22D2244B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  cv::Exception::~Exception(&a31);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  cv::Mat::~Mat(&a15);
  cv::Mat::~Mat((v31 - 208));
  _Unwind_Resume(a1);
}

uint64_t cv::Mat::operator=(uint64_t a1, int64x2_t *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = a1;
  __dst = 0;
  cv::NAryMatIterator::NAryMatIterator(v14, v19, &__dst, 1);
  v4 = *(a1 + 4);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 72) + 8 * v4 - 8);
  }

  v6 = v5 * v16;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*a2), vceqzq_s64(a2[1]))))))
  {
    if (v15)
    {
      cv::scalarToRawData(a2, __src, *a1 & 0xFFF, 12);
      if (v6)
      {
        v7 = 0;
        v8 = 12 * ((0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF);
        v9 = v6;
        do
        {
          if (v8 >= v9)
          {
            v10 = v9;
          }

          else
          {
            v10 = v8;
          }

          memcpy(__dst + v7, __src, v10);
          v7 += v8;
          v9 -= v8;
        }

        while (v7 < v6);
      }

      if (v15 >= 2)
      {
        for (i = 1; i < v15; ++i)
        {
          cv::NAryMatIterator::operator++(v14);
          memcpy(__dst, *(a1 + 16), v6);
        }
      }
    }
  }

  else if (v15)
  {
    for (j = 0; j < v15; ++j)
    {
      bzero(__dst, v6);
      cv::NAryMatIterator::operator++(v14);
    }
  }

  return a1;
}

uint64_t cv::Mat::setTo(cv::Mat *this, const cv::_InputArray *a2, const cv::_InputArray *a3)
{
  v5 = MEMORY[0x28223BE20](this, a2);
  v80 = *MEMORY[0x277D85DE8];
  if (!*(v5 + 16))
  {
    return v5;
  }

  v6 = v4;
  v7 = v3;
  (**v3)(&v61, v3, 0xFFFFFFFFLL);
  (**v6)(&v50, v6, 0xFFFFFFFFLL);
  v8 = *v5;
  ((*v7)[5])(v7);
  if (SHIDWORD(v61) > 2 || v63 != 1 && v62 != 1 || (v61 & 0x4000) == 0)
  {
    goto LABEL_6;
  }

  v40 = (v8 >> 3) & 0x1FF;
  v41 = *v69;
  v42 = v69[1];
  v43 = v42 == v40 + 1;
  if (*v69 != 1)
  {
    v43 = 0;
  }

  v44 = v41 == v40 + 1 || *v69 == 1;
  if (v42 != 1)
  {
    v44 = 0;
  }

  if (!v44 && !v43 && (v42 != 1 || v41 != 4 || v40 > 3 || (v61 & 0xFFF) != 6))
  {
LABEL_6:
    std::string::basic_string[abi:ne200100]<0>(__p, "checkScalar(value, type(), _value.kind(), _InputArray::MAT)");
    std::string::basic_string[abi:ne200100]<0>(&v77, "setTo");
    std::string::basic_string[abi:ne200100]<0>(&v75, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(&v72, 4294967081, __p, &v77, &v75, 346);
    cv::error(&v72, v9);
  }

  if (v53)
  {
    v10 = HIDWORD(v50);
    if (SHIDWORD(v50) >= 3)
    {
      v12 = v58;
      v11 = 1;
      do
      {
        v13 = *v12++;
        v11 *= v13;
        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = v52 * v51;
    }

    if (v11 && (v50 & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "mask.empty() || mask.type() == CV_8U");
      std::string::basic_string[abi:ne200100]<0>(&v77, "setTo");
      std::string::basic_string[abi:ne200100]<0>(&v75, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
      cv::Exception::Exception(&v72, 4294967081, __p, &v77, &v75, 347);
      cv::error(&v72, v14);
    }
  }

  v15 = *(v5 + 4);
  if (v15 <= 0)
  {
    v16 = 0;
    v49 = 0;
  }

  else
  {
    v16 = *(*(v5 + 72) + 8 * v15 - 8);
    v49 = v16;
    if (v16 > 0x20)
    {
      v17 = cv::copyMaskGeneric;
      goto LABEL_22;
    }
  }

  v18 = cv::copyMaskTab[v16];
  if (v18)
  {
    v17 = v18;
  }

  else
  {
    v17 = cv::copyMaskGeneric;
  }

LABEL_22:
  v78 = 0;
  v79 = 0;
  v77 = v5;
  if (!v53)
  {
    goto LABEL_29;
  }

  v19 = HIDWORD(v50);
  if (SHIDWORD(v50) >= 3)
  {
    v21 = v58;
    v20 = 1;
    do
    {
      v22 = *v21++;
      v20 *= v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = v52 * v51;
  }

  if (v20)
  {
    v23 = &v50;
  }

  else
  {
LABEL_29:
    v23 = 0;
  }

  v78 = v23;
  v79 = 0;
  v75 = 0;
  v76 = 0;
  cv::NAryMatIterator::NAryMatIterator(__p, &v77, &v75, -1);
  v24 = v48;
  v25 = (v49 + 1023) / v49;
  if (v25 >= v48)
  {
    LODWORD(v25) = v48;
  }

  v26 = v25;
  v72 = v74;
  v73 = 4104;
  if (v49 * v25 + 32 >= 0x1009)
  {
    v73 = v49 * v25 + 32;
    operator new[]();
  }

  v45 = v5;
  cv::convertAndUnrollScalar(&v61, (*v5 & 0xFFF), v74, v25);
  for (i = 0; i < __p[4]; ++i)
  {
    if (v24 >= 1)
    {
      for (j = 0; j < v24; j += v26)
      {
        v29 = v24 - j;
        if (v24 - j >= v26)
        {
          v29 = v26;
        }

        v30 = v29;
        v31 = v49 * v29;
        if (v76)
        {
          v46[0] = v29;
          v46[1] = 1;
          v17(v74, 0, v76, 0, v75, 0, v46, &v49);
          v76 += v30;
        }

        else
        {
          memcpy(v75, v74, v49 * v29);
        }

        v75 += v31;
      }
    }

    cv::NAryMatIterator::operator++(__p);
  }

  if (v72 != v74 && v72 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  v5 = v45;
  if (v54 && atomic_fetch_add(v54, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v50);
  }

  v53 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (SHIDWORD(v50) >= 1)
  {
    v33 = 0;
    v34 = v58;
    do
    {
      v34[v33++] = 0;
    }

    while (v33 < SHIDWORD(v50));
  }

  v54 = 0;
  if (v59)
  {
    v35 = v59 == &v60;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    free(v59);
  }

  if (v65 && atomic_fetch_add(v65, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v61);
  }

  v64 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  if (SHIDWORD(v61) >= 1)
  {
    v36 = 0;
    v37 = v69;
    do
    {
      v37[v36++] = 0;
    }

    while (v36 < SHIDWORD(v61));
  }

  v65 = 0;
  if (v70)
  {
    v38 = v70 == &v71;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    free(v70);
  }

  return v5;
}

void sub_22D224DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  cv::Exception::~Exception(&a47);
  if (*(v47 + 23) < 0)
  {
    operator delete(*(v48 - 144));
  }

  if (*(v47 + 47) < 0)
  {
    operator delete(*(v48 - 120));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a35);
  _Unwind_Resume(a1);
}

void cv::repeat(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, int a3, uint64_t a4, const cv::_OutputArray *a5)
{
  v7 = a2;
  (**this)(&v40);
  if (SHIDWORD(v40) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "src.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(v29, "repeat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 485);
    cv::error(v31, v8);
  }

  if (v7 < 1 || a3 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "ny > 0 && nx > 0");
    std::string::basic_string[abi:ne200100]<0>(v29, "repeat");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(v31, 4294967081, v30, v29, __p, 486);
    cv::error(v31, v9);
  }

  (*(*a4 + 136))(a4, (v41 * v7), (v42 * a3), v40 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a4)(v31, a4, 0xFFFFFFFFLL);
  v10 = *v48;
  v11 = *v37;
  if (SHIDWORD(v40) < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v49[HIDWORD(v40) - 1];
  }

  v13 = v37[1] * v12;
  if (v10 < 1)
  {
    v17 = 0;
  }

  else
  {
    v14 = 0;
    v15 = (v12 * v48[1]);
    do
    {
      if (v13 >= 1)
      {
        v16 = 0;
        do
        {
          memcpy((v32 + v14 * v39 + v16), (v43 + v50 * v14), v15);
          v16 += v15;
        }

        while (v16 < v13);
      }

      ++v14;
    }

    while (v14 != v10);
    v17 = v10;
  }

  if (v17 < v11)
  {
    v18 = v10;
    v19 = v13;
    v20 = v17;
    v21 = v17 - v18;
    do
    {
      memcpy((v32 + v39 * v20++), (v32 + v39 * v21++), v19);
    }

    while (v11 != v20);
  }

  if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v31);
  }

  v32 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (SHIDWORD(v31[0]) >= 1)
  {
    v22 = 0;
    v23 = v37;
    do
    {
      v23[v22++] = 0;
    }

    while (v22 < SHIDWORD(v31[0]));
  }

  v33 = 0;
  if (v38)
  {
    v24 = v38 == &v39;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    free(v38);
  }

  if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v40);
  }

  v43 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (SHIDWORD(v40) >= 1)
  {
    v25 = 0;
    v26 = v48;
    do
    {
      v26[v25++] = 0;
    }

    while (v25 < SHIDWORD(v40));
  }

  v44 = 0;
  if (v49)
  {
    v27 = v49 == &v50;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v49);
  }
}

void sub_22D225288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

void cvCopy(uint64_t a1, uint64_t a2, cv *a3)
{
  v4 = a2;
  v5 = a1;
  v71[5] = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 || *(a1 + 2) << 16 != 1111752704 || *(a2 + 2) != 16964)
  {
    cv::cvarrToMat(a1, 0, 1, v54);
    cv::cvarrToMat(v4, 0, 1, v44);
    if (((LOBYTE(v44[0]) ^ LOBYTE(v54[0])) & 7) == 0)
    {
      v20 = v59;
      v21 = *(v59 - 1);
      v22 = v51;
      if (v21 == *(v51 - 1))
      {
        if (v21 == 2)
        {
          if (*v59 != *v51 || v59[1] != v51[1])
          {
            goto LABEL_26;
          }

LABEL_27:
          if (v5)
          {
            if (*v5 != 144 || !*(v5 + 88))
            {
              LODWORD(v5) = 0;
              if (!v4)
              {
LABEL_38:
                if (v5 | v4)
                {
                  if (!v5 && (v54[0] & 0xFF8) != 0 || !v4 && (v44[0] & 0xFF8) != 0)
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "(coi1 != 0 || src.channels() == 1) && (coi2 != 0 || dst.channels() == 1)");
                    std::string::basic_string[abi:ne200100]<0>(v41, "cvCopy");
                    std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
                    v30 = cv::Exception::Exception(&v62, 4294967081, __p, v41, v43, 567);
                    cv::error(v30, v31);
                  }

                  v62 = vadd_s32(vmax_s32(__PAIR64__(v4, v5), 0x100000001), -1);
                  cv::mixChannels(v54, 1, v44, 1, &v62, 1);
                }

                else
                {
                  if (((v44[0] ^ LOWORD(v54[0])) & 0xFF8) != 0)
                  {
                    std::string::basic_string[abi:ne200100]<0>(__p, "src.channels() == dst.channels()");
                    std::string::basic_string[abi:ne200100]<0>(v41, "cvCopy");
                    std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
                    v25 = cv::Exception::Exception(&v62, 4294967081, __p, v41, v43, 574);
                    cv::error(v25, v26);
                  }

                  if (a3)
                  {
                    cv::_OutputArray::_OutputArray(__p, v44);
                    cv::cvarrToMat(a3, 0, 0, &v62);
                    cv::_InputArray::_InputArray(v41, &v62);
                    cv::Mat::copyTo(v54, __p, v41);
                    if (v65 && atomic_fetch_add(v65, 0xFFFFFFFF) == 1)
                    {
                      cv::Mat::deallocate(&v62);
                    }

                    v64 = 0;
                    v66 = 0;
                    v67 = 0;
                    v68 = 0;
                    if (v62.i32[1] >= 1)
                    {
                      v27 = 0;
                      v28 = v69;
                      do
                      {
                        *(v28 + 4 * v27++) = 0;
                      }

                      while (v27 < v62.i32[1]);
                    }

                    v65 = 0;
                    if (v70)
                    {
                      v29 = v70 == v71;
                    }

                    else
                    {
                      v29 = 1;
                    }

                    if (!v29)
                    {
                      free(v70);
                    }
                  }

                  else
                  {
                    cv::_OutputArray::_OutputArray(&v62, v44);
                    cv::Mat::copyTo(v54, &v62);
                  }
                }

                if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(v44);
                }

                v46 = 0;
                v48 = 0;
                v49 = 0;
                v50 = 0;
                if (v45 >= 1)
                {
                  v32 = 0;
                  v33 = v51;
                  do
                  {
                    v33[v32++] = 0;
                  }

                  while (v32 < v45);
                }

                v47 = 0;
                if (v52)
                {
                  v34 = v52 == &v53;
                }

                else
                {
                  v34 = 1;
                }

                if (!v34)
                {
                  free(v52);
                }

                if (v55 && atomic_fetch_add(v55, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(v54);
                }

                v54[2] = 0;
                v56 = 0;
                v57 = 0;
                v58 = 0;
                if (SHIDWORD(v54[0]) >= 1)
                {
                  v35 = 0;
                  v36 = v59;
                  do
                  {
                    v36[v35++] = 0;
                  }

                  while (v35 < SHIDWORD(v54[0]));
                }

                v55 = 0;
                if (v60)
                {
                  v37 = v60 == &v61;
                }

                else
                {
                  v37 = 1;
                }

                if (!v37)
                {
                  free(v60);
                }

                return;
              }

LABEL_34:
              if (*v4 == 144 && *(v4 + 88))
              {
                LODWORD(v4) = cvGetImageCOI(v4);
              }

              else
              {
                LODWORD(v4) = 0;
              }

              goto LABEL_38;
            }

            LODWORD(v5) = cvGetImageCOI(v5);
          }

          if (!v4)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        if (v21 < 1)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v39 = *v20++;
          v38 = v39;
          v40 = *v22++;
          if (v38 != v40)
          {
            break;
          }

          if (!--v21)
          {
            goto LABEL_27;
          }
        }
      }
    }

LABEL_26:
    std::string::basic_string[abi:ne200100]<0>(__p, "src.depth() == dst.depth() && src.size == dst.size");
    std::string::basic_string[abi:ne200100]<0>(v41, "cvCopy");
    std::string::basic_string[abi:ne200100]<0>(v43, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    v23 = cv::Exception::Exception(&v62, 4294967081, __p, v41, v43, 556);
    cv::error(v23, v24);
  }

  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v54, "maskarr == 0");
    std::string::basic_string[abi:ne200100]<0>(v44, "cvCopy");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    v6 = cv::Exception::Exception(&v62, 4294967081, v54, v44, __p, 522);
    cv::error(v6, v7);
  }

  v8 = *(a1 + 4);
  *(a2 + 4) = v8;
  memcpy((a2 + 52), (a1 + 52), 4 * v8);
  *(v4 + 44) = *(v5 + 44);
  cvClearSet(*(v4 + 24));
  v9 = *(v4 + 40);
  v10 = *(v4 + 32);
  if (*(*(v5 + 24) + 104) >= 3 * v9)
  {
    cvFree_(v10);
    v11 = *(v5 + 40);
    *(v4 + 40) = v11;
    *(v4 + 32) = 0;
    v10 = malloc_type_malloc(8 * v11, 0x80040B8603338uLL);
    *(v4 + 32) = v10;
    v9 = *(v4 + 40);
  }

  bzero(v10, 8 * v9);
  inited = cvInitSparseMatIterator(v5, &v62);
  if (inited)
  {
    while (1)
    {
      v13 = *(v4 + 24);
      v14 = *(v13 + 96);
      v54[0] = v14;
      if (v14)
      {
        *(v13 + 96) = v14[1];
        *v14 &= 0x3FFFFFFu;
        ++*(v13 + 104);
      }

      else
      {
        cvSetAdd(v13, 0, v54);
        v14 = v54[0];
        v13 = *(v4 + 24);
      }

      v15 = (*(v4 + 40) - 1) & *inited;
      memcpy(v14, inited, *(v13 + 44));
      v16 = *(v4 + 32);
      v14[1] = *(v16 + 8 * v15);
      *(v16 + 8 * v15) = v14;
      inited = *(v63 + 1);
      if (!inited)
      {
        v17 = *(*&v62 + 40);
        if (v64 + 1 >= v17)
        {
          return;
        }

        v18 = v64 + 1;
        v19 = ~v64 + v17;
        while (1)
        {
          inited = *(*(*&v62 + 32) + 8 * v18);
          if (inited)
          {
            break;
          }

          ++v18;
          if (!--v19)
          {
            return;
          }
        }

        LODWORD(v64) = v18;
      }

      v63 = inited;
    }
  }
}

void sub_22D225A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::throw_nogl(_anonymous_namespace_ *this)
{
  std::string::basic_string[abi:ne200100]<0>(v4, "The library is compiled without OpenGL support");
  std::string::basic_string[abi:ne200100]<0>(v3, "throw_nogl");
  std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/opengl_interop.cpp");
  cv::Exception::Exception(v5, 4294967078, v4, v3, __p, 63);
  cv::error(v5, v1);
}

void sub_22D225C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
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

double cv::threshold(void (***this)(int *__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, double a4, double a5)
{
  v5 = a3;
  v119 = *MEMORY[0x277D85DE8];
  (**this)(&v108);
  if ((v5 & 8) != 0)
  {
    v11 = v108;
    if ((v108 & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v98, "src.type() == CV_8UC1");
      std::string::basic_string[abi:ne200100]<0>(v107, "threshold");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
      cv::Exception::Exception(v118, 4294967081, v98, v107, __p, 718);
      cv::error(v118, v12);
    }

    v10 = *v115;
    v9 = v115[1];
    if ((v108 & 0x4000) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    if ((v108 & 0x4000) != 0)
    {
      v14 = *v115;
    }

    else
    {
      v14 = 1;
    }

    v15 = (v14 * v9);
    bzero(v118, 0x400uLL);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v111;
      v18 = v117;
      do
      {
        if (v15 >= 4)
        {
          v19 = 0;
          do
          {
            v20 = *(v17 + v19 + 1);
            ++v118[*(v17 + v19)];
            ++v118[v20];
            v21 = *(v17 + v19 + 3);
            ++v118[*(v17 + v19 + 2)];
            ++v118[v21];
            v19 += 4;
          }

          while (v19 <= v15 - 4);
          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

        if (v19 < v15)
        {
          do
          {
            ++v118[*(v17 + v19++)];
          }

          while (v15 != v19);
        }

        ++v16;
        v17 += v18;
      }

      while (v16 != v13);
    }

    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + v22 * v118[v22];
      ++v22;
    }

    while (v22 != 256);
    v24 = 0;
    v25 = 1.0 / (v15 * v13);
    v26 = v25 * v23;
    a4 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = v25 * v118[v24];
      v28 = v28 * v29;
      v29 = v29 + v30;
      v31 = 1.0 - v29;
      if (1.0 - v29 >= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = 1.0 - v29;
      }

      if (v32 >= 0.00000011920929)
      {
        v33 = v29 >= v31 ? v29 : 1.0 - v29;
        if (v33 <= 0.999999881)
        {
          v28 = (v28 + v24 * v30) / v29;
          v34 = (v28 - (v26 - v29 * v28) / v31) * (v29 * v31 * (v28 - (v26 - v29 * v28) / v31));
          if (v34 > v27)
          {
            v27 = v34;
            a4 = v24;
          }
        }
      }

      ++v24;
    }

    while (v24 != 256);
  }

  else
  {
    v10 = *v115;
    v9 = v115[1];
    v11 = v108;
  }

  v118[0] = v9;
  v118[1] = v10;
  (*(*a2 + 128))(a2, v118, v11 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v98, a2, 0xFFFFFFFFLL);
  v35 = v5 & 7;
  if ((v108 & 7) == 5)
  {
    goto LABEL_53;
  }

  if ((v108 & 7) == 3)
  {
    v39 = a4 - (a4 < a4);
    a4 = v39;
    v40 = rint(a5);
    if (v35 == 2)
    {
      LODWORD(v40) = v39;
    }

    if (v40 <= -32768)
    {
      LODWORD(v40) = -32768;
    }

    if (v40 >= 0x7FFF)
    {
      LODWORD(v40) = 0x7FFF;
    }

    if ((v39 + 0x8000) < 0xFFFF)
    {
      a5 = v40;
      goto LABEL_53;
    }

    if (v35 < 2 || (v35 == 3 ? (v56 = v39 <= 32766) : (v56 = 1), v56 ? (v57 = 0) : (v57 = 1), v35 != 4 ? (v58 = v35 == 2) : (v58 = 1), v58 ? (v59 = v39 < -32768) : (v59 = 0), !v59 ? (v60 = v57 == 0) : (v60 = 0), !v60))
    {
      if (v35 == 1)
      {
        if (v39 <= 32766)
        {
          v61 = 0;
        }

        else
        {
          v61 = v40;
        }
      }

      else if (v35)
      {
        v61 = 0;
      }

      else if (v39 <= 32766)
      {
        v61 = v40;
      }

      else
      {
        v61 = 0;
      }

      *v107 = v61;
      cv::_InputArray::_InputArray(v118, v107);
      v69 = cv::noArray(v68);
      cv::Mat::setTo(v98, v118, v69);
      goto LABEL_145;
    }

LABEL_136:
    cv::_OutputArray::_OutputArray(v118, v98);
    cv::Mat::copyTo(&v108, v118);
    goto LABEL_145;
  }

  if ((v108 & 7) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v107, "");
    std::string::basic_string[abi:ne200100]<0>(__p, "threshold");
    std::string::basic_string[abi:ne200100]<0>(v97, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
    cv::Exception::Exception(v118, 4294967086, v107, __p, v97, 782);
    cv::error(v118, v41);
  }

  v36 = a4 - (a4 < a4);
  a4 = v36;
  v37 = rint(a5);
  if (v35 == 2)
  {
    LODWORD(v37) = v36;
  }

  v38 = v37 & ~(v37 >> 31);
  if (v38 >= 255)
  {
    v38 = 255;
  }

  if (v36 >= 0xFF)
  {
    if (v35 < 2 || (v35 == 3 ? (v62 = v36 <= 254) : (v62 = 1), v62 ? (v63 = 0) : (v63 = 1), v35 != 4 ? (v64 = v35 == 2) : (v64 = 1), v64 ? (v65 = v36 < 0) : (v65 = 0), !v65 ? (v66 = v63 == 0) : (v66 = 0), !v66))
    {
      if (v35 == 1)
      {
        if (v36 <= 254)
        {
          v67 = 0;
        }

        else
        {
          v67 = v38;
        }
      }

      else if (v35)
      {
        v67 = 0;
      }

      else if (v36 <= 254)
      {
        v67 = v38;
      }

      else
      {
        v67 = 0;
      }

      *v107 = v67;
      cv::_InputArray::_InputArray(v118, v107);
      v71 = cv::noArray(v70);
      cv::Mat::setTo(v98, v118, v71);
      goto LABEL_145;
    }

    goto LABEL_136;
  }

  a5 = v38;
LABEL_53:
  LODWORD(v107[0]) = 0;
  HIDWORD(v107[0]) = v98[1];
  v87 = v108;
  v88 = v109;
  v89 = v110;
  v91 = v112;
  v92 = v113;
  v90 = v111;
  v93 = v114;
  v94 = &v88 + 4;
  v95 = v96;
  v96[0] = 0;
  v96[1] = 0;
  if (v112)
  {
    atomic_fetch_add(v112, 1u);
  }

  if (v109 > 2)
  {
    LODWORD(v88) = 0;
    cv::Mat::copySize(&v87, &v108);
  }

  else
  {
    v42 = v116;
    v43 = v95;
    *v95 = *v116;
    v43[1] = v42[1];
  }

  v80 = v99;
  v79 = *v98;
  v81 = v100;
  v82 = v101;
  v83 = v102;
  v84 = &v79 + 8;
  v86[0] = 0;
  v86[1] = 0;
  v85 = v86;
  if (v100)
  {
    atomic_fetch_add(v100, 1u);
  }

  if (SHIDWORD(v98[0]) > 2)
  {
    DWORD1(v79) = 0;
    cv::Mat::copySize(&v79, v98);
  }

  else
  {
    v44 = v104;
    v45 = v85;
    *v85 = *v104;
    v45[1] = v44[1];
  }

  cv::ThresholdRunner::ThresholdRunner(v118, &v87, &v79, v35, a4, a5);
  v46 = HIDWORD(v98[0]);
  if (SHIDWORD(v98[0]) >= 3)
  {
    v48 = v103;
    v47 = 1;
    do
    {
      v49 = *v48++;
      v47 *= v49;
      --v46;
    }

    while (v46);
  }

  else
  {
    v47 = SHIDWORD(v98[1]) * SLODWORD(v98[1]);
  }

  cv::parallel_for_(v107, v118, vcvtd_n_f64_u64(v47, 0x10uLL));
  cv::ThresholdRunner::~ThresholdRunner(v118);
  if (v81 && atomic_fetch_add(v81, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v79);
  }

  v80 = 0;
  v82 = 0uLL;
  *(&v81 + 1) = 0;
  if (SDWORD1(v79) >= 1)
  {
    v50 = 0;
    v51 = v84;
    do
    {
      *&v51[4 * v50++] = 0;
    }

    while (v50 < SDWORD1(v79));
  }

  *&v81 = 0;
  if (v85)
  {
    v52 = v85 == v86;
  }

  else
  {
    v52 = 1;
  }

  if (!v52)
  {
    free(v85);
  }

  if (v91 && atomic_fetch_add(v91, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v87);
  }

  v90 = 0;
  v92 = 0uLL;
  *(&v91 + 1) = 0;
  if (v88 >= 1)
  {
    v53 = 0;
    v54 = v94;
    do
    {
      *&v54[4 * v53++] = 0;
    }

    while (v53 < v88);
  }

  *&v91 = 0;
  if (v95)
  {
    v55 = v95 == v96;
  }

  else
  {
    v55 = 1;
  }

  if (!v55)
  {
    free(v95);
  }

LABEL_145:
  if (v100 && atomic_fetch_add(v100, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v98);
  }

  v99 = 0;
  *(&v100 + 1) = 0;
  v101 = 0uLL;
  if (SHIDWORD(v98[0]) >= 1)
  {
    v72 = 0;
    v73 = v103;
    do
    {
      v73[v72++] = 0;
    }

    while (v72 < SHIDWORD(v98[0]));
  }

  *&v100 = 0;
  if (v104)
  {
    v74 = v104 == &v105;
  }

  else
  {
    v74 = 1;
  }

  if (!v74)
  {
    free(v104);
  }

  if (v112 && atomic_fetch_add(v112, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v108);
  }

  v111 = 0;
  *(&v112 + 1) = 0;
  v113 = 0uLL;
  if (v109 >= 1)
  {
    v75 = 0;
    v76 = v115;
    do
    {
      v76[v75++] = 0;
    }

    while (v75 < v109);
  }

  *&v112 = 0;
  if (v116)
  {
    v77 = v116 == &v117;
  }

  else
  {
    v77 = 1;
  }

  if (!v77)
  {
    free(v116);
  }

  return a4;
}

void sub_22D226648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, char a56)
{
  cv::Mat::~Mat(&a37);
  cv::Mat::~Mat(&a56);
  _Unwind_Resume(a1);
}

uint64_t cv::ThresholdRunner::ThresholdRunner(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  *a1 = &unk_284055B30;
  *(a1 + 8) = 1124007936;
  v11 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 12) = 0u;
  v12 = (a1 + 12);
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 1124007936;
  v13 = (a1 + 104);
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 108) = 0u;
  v14 = (a1 + 108);
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 152) = 0u;
  if (a1 + 8 != a2)
  {
    v16 = *(a2 + 24);
    if (v16)
    {
      atomic_fetch_add(v16, 1u);
      v17 = *(a1 + 32);
      if (v17)
      {
        if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 8));
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (*(a1 + 12) <= 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 8) = *a2;
    }

    else
    {
      v18 = 0;
      v19 = *(a1 + 72);
      do
      {
        *(v19 + 4 * v18++) = 0;
        v20 = *v12;
      }

      while (v18 < v20);
      *(a1 + 32) = 0;
      *(a1 + 8) = *a2;
      if (v20 > 2)
      {
        goto LABEL_14;
      }
    }

    v21 = *(a2 + 4);
    if (v21 <= 2)
    {
      *(a1 + 12) = v21;
      *(a1 + 16) = *(a2 + 8);
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
LABEL_15:
      *(a1 + 40) = *(a2 + 32);
      *(a1 + 56) = *(a2 + 48);
      *(a1 + 24) = *(a2 + 16);
      *(a1 + 64) = *(a2 + 56);
      goto LABEL_16;
    }

LABEL_14:
    cv::Mat::copySize(v11, a2);
    goto LABEL_15;
  }

LABEL_16:
  if (v13 != a3)
  {
    v24 = *(a3 + 24);
    if (v24)
    {
      atomic_fetch_add(v24, 1u);
    }

    v25 = *(a1 + 128);
    if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v13);
    }

    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    if (*(a1 + 108) <= 0)
    {
      *(a1 + 128) = 0;
      *(a1 + 104) = *a3;
    }

    else
    {
      v26 = 0;
      v27 = *(a1 + 168);
      do
      {
        *(v27 + 4 * v26++) = 0;
        v28 = *v14;
      }

      while (v26 < v28);
      *(a1 + 128) = 0;
      *(a1 + 104) = *a3;
      if (v28 > 2)
      {
        goto LABEL_30;
      }
    }

    v29 = *(a3 + 4);
    if (v29 <= 2)
    {
      *(a1 + 108) = v29;
      *(a1 + 112) = *(a3 + 8);
      v30 = *(a3 + 72);
      v31 = *(a1 + 176);
      *v31 = *v30;
      v31[1] = v30[1];
LABEL_31:
      *(a1 + 136) = *(a3 + 32);
      *(a1 + 152) = *(a3 + 48);
      *(a1 + 120) = *(a3 + 16);
      *(a1 + 160) = *(a3 + 56);
      goto LABEL_32;
    }

LABEL_30:
    cv::Mat::copySize(v13, a3);
    goto LABEL_31;
  }

LABEL_32:
  *(a1 + 200) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a4;
  return a1;
}

void sub_22D226A54(_Unwind_Exception *a1)
{
  cv::Mat::~Mat(v3);
  cv::Mat::~Mat(v2);
  cv::BaseRowFilter::~BaseRowFilter(v1);
  _Unwind_Resume(a1);
}

void cv::ThresholdRunner::~ThresholdRunner(cv::ThresholdRunner *this)
{
  cv::ThresholdRunner::~ThresholdRunner(this);

  JUMPOUT(0x2318CB1A0);
}

{
  *this = &unk_284055B30;
  v2 = *(this + 16);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 104));
  }

  *(this + 15) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  if (*(this + 27) >= 1)
  {
    v3 = 0;
    v4 = *(this + 21);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(this + 27));
  }

  *(this + 16) = 0;
  v5 = *(this + 22);
  if (v5)
  {
    v6 = v5 == this + 184;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  v7 = *(this + 4);
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 8));
  }

  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  if (*(this + 3) >= 1)
  {
    v8 = 0;
    v9 = *(this + 9);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(this + 3));
  }

  *(this + 4) = 0;
  v10 = *(this + 10);
  if (v10)
  {
    v11 = v10 == this + 88;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v10);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

void cv::ThresholdRunner::operator()(uint64_t a1, int *a2)
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  __b = *a2;
  v3 = __b;
  v150 = v4;
  v146[0] = 0x7FFFFFFF80000000;
  cv::Mat::Mat(&v135, a1 + 8, &__b, v146);
  __b = v3;
  v150 = v4;
  v146[0] = 0x7FFFFFFF80000000;
  cv::Mat::Mat(&v125, a1 + 104, &__b, v146);
  if ((v135 & 7) == 5)
  {
    v29 = *(a1 + 216);
    v30 = v137;
    v31 = *v142;
    v32 = v142[1] + v142[1] * ((v135 >> 3) & 0x1FF);
    v33 = v127;
    if ((v135 & 0x4000) != 0)
    {
      if ((v125 & 0x4000) != 0)
      {
        v34 = *v142;
      }

      else
      {
        v34 = 1;
      }

      if ((v125 & 0x4000) != 0)
      {
        v31 = 1;
      }

      v32 *= v34;
    }

    v35 = *(a1 + 200);
    v36 = v144 >> 2;
    v37 = v134 >> 2;
    if (v29 <= 1)
    {
      v49 = *(a1 + 208);
      if (!v29)
      {
        if (v31 >= 1)
        {
          v95 = 0;
          v96 = 4 * v37;
          v97 = 4 * v36;
          do
          {
            if (v32 >= 1)
            {
              v98 = 0;
              do
              {
                if (*(v30 + v98) <= v35)
                {
                  v99 = 0.0;
                }

                else
                {
                  v99 = v49;
                }

                *(v33 + v98) = v99;
                v98 += 4;
              }

              while (4 * v32 != v98);
            }

            ++v95;
            v33 += v96;
            v30 += v97;
          }

          while (v95 != v31);
        }

        goto LABEL_194;
      }

      if (v29 == 1)
      {
        if (v31 >= 1)
        {
          v50 = 0;
          v51 = 4 * v37;
          v52 = 4 * v36;
          do
          {
            if (v32 >= 1)
            {
              v53 = 0;
              do
              {
                if (*(v30 + v53) > v35)
                {
                  v54 = 0.0;
                }

                else
                {
                  v54 = v49;
                }

                *(v33 + v53) = v54;
                v53 += 4;
              }

              while (4 * v32 != v53);
            }

            ++v50;
            v33 += v51;
            v30 += v52;
          }

          while (v50 != v31);
        }

        goto LABEL_194;
      }
    }

    else
    {
      switch(v29)
      {
        case 2:
          if (v31 >= 1)
          {
            v72 = 0;
            v73 = 4 * v37;
            v74 = 4 * v36;
            do
            {
              if (v32 >= 1)
              {
                v75 = 0;
                do
                {
                  v76 = *(v30 + v75);
                  if (v76 > v35)
                  {
                    v76 = v35;
                  }

                  *(v33 + v75) = v76;
                  v75 += 4;
                }

                while (4 * v32 != v75);
              }

              ++v72;
              v33 += v73;
              v30 += v74;
            }

            while (v72 != v31);
          }

          goto LABEL_194;
        case 3:
          if (v31 >= 1)
          {
            v77 = 0;
            v78 = 4 * v37;
            v79 = 4 * v36;
            do
            {
              if (v32 >= 1)
              {
                v80 = 0;
                do
                {
                  v81 = *(v30 + v80);
                  if (v81 <= v35)
                  {
                    v81 = 0.0;
                  }

                  *(v33 + v80) = v81;
                  v80 += 4;
                }

                while (4 * v32 != v80);
              }

              ++v77;
              v33 += v78;
              v30 += v79;
            }

            while (v77 != v31);
          }

          goto LABEL_194;
        case 4:
          if (v31 >= 1)
          {
            v38 = 0;
            v39 = 4 * v37;
            v40 = 4 * v36;
            do
            {
              if (v32 >= 1)
              {
                v41 = 0;
                do
                {
                  v42 = *(v30 + v41);
                  if (v42 > v35)
                  {
                    v42 = 0.0;
                  }

                  *(v33 + v41) = v42;
                  v41 += 4;
                }

                while (4 * v32 != v41);
              }

              ++v38;
              v33 += v39;
              v30 += v40;
            }

            while (v38 != v31);
          }

          goto LABEL_194;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v146, "");
    std::string::basic_string[abi:ne200100]<0>(v148, "thresh_32f");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
    cv::Exception::Exception(&__b, 4294967291, v146, v148, __p, 598);
    cv::error(&__b, v101);
  }

  if ((v135 & 7) != 3)
  {
    if ((v135 & 7) != 0)
    {
      goto LABEL_194;
    }

    v5 = *(a1 + 200);
    v6 = *(a1 + 216);
    v7 = *v142;
    v8 = v142[1] + v142[1] * ((v135 >> 3) & 0x1FF);
    if ((v135 & 0x4000) != 0)
    {
      if ((v125 & 0x4000) != 0)
      {
        v9 = *v142;
      }

      else
      {
        v9 = 1;
      }

      if ((v125 & 0x4000) != 0)
      {
        v7 = 1;
      }

      v8 *= v9;
    }

    v10 = v5;
    if (v6 <= 1)
    {
      v55 = *(a1 + 208);
      v56 = v55;
      if (v6)
      {
        if (v6 == 1)
        {
          memset(&__b, v55, v10 + 1);
          if (v10 != 255)
          {
            v13 = &__b + v10 + 1;
            v14 = ~v10;
            goto LABEL_87;
          }

LABEL_182:
          if (v8 >= 1 && v7 >= 1)
          {
            for (i = 0; i != v7; ++i)
            {
              v104 = v137;
              v105 = v144;
              v106 = v127;
              v107 = v134;
              if (v8 >= 4)
              {
                v109 = 0;
                v110 = v137 + v144 * i;
                v111 = v127 + v134 * i;
                do
                {
                  v112 = *(&__b + *(v110 + v109 + 1));
                  v113 = (v111 + v109);
                  *v113 = *(&__b + *(v110 + v109));
                  v113[1] = v112;
                  v114 = *(&__b + *(v110 + v109 + 3));
                  v113[2] = *(&__b + *(v110 + v109 + 2));
                  v113[3] = v114;
                  v109 += 4;
                }

                while (v109 <= v8 - 4);
                v108 = v109;
              }

              else
              {
                v108 = 0;
              }

              if (v108 < v8)
              {
                v115 = v8 - v108;
                v116 = (v106 + v108 + v107 * i);
                v117 = (v104 + v108 + v105 * i);
                do
                {
                  v118 = *v117++;
                  *v116++ = *(&__b + v118);
                  --v115;
                }

                while (v115);
              }
            }
          }

          goto LABEL_194;
        }

LABEL_181:
        std::string::basic_string[abi:ne200100]<0>(v148, "Unknown threshold type");
        std::string::basic_string[abi:ne200100]<0>(__p, "thresh_8u");
        std::string::basic_string[abi:ne200100]<0>(v145, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
        cv::Exception::Exception(v146, 4294967291, v148, __p, v145, 100);
        cv::error(v146, v102);
      }

      bzero(&__b, v10 + 1);
      if (v10 == 255)
      {
        goto LABEL_182;
      }

      v84 = &__b + v10 + 1;
      v85 = ~v10;
      v86 = v56;
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          bzero(&__b, v10 + 1);
          if (v10 != 255)
          {
            v87 = 0;
            v88 = vdupq_n_s64(254 - v10);
            v89 = &__b + v10;
            do
            {
              v90 = vdupq_n_s64(v87);
              v91 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D297DE0)));
              if (vuzp1_s8(vuzp1_s16(v91, *v88.i8), *v88.i8).u8[0])
              {
                v89[v87 + 1] = v10 + v87 + 1;
              }

              if (vuzp1_s8(vuzp1_s16(v91, *&v88), *&v88).i8[1])
              {
                v89[v87 + 2] = v10 + v87 + 2;
              }

              if (vuzp1_s8(vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D297DD0)))), *&v88).i8[2])
              {
                v89[v87 + 3] = v10 + v87 + 3;
                v89[v87 + 4] = v10 + v87 + 4;
              }

              v92 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B790)));
              if (vuzp1_s8(*&v88, vuzp1_s16(v92, *&v88)).i32[1])
              {
                v89[v87 + 5] = v10 + v87 + 5;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(v92, *&v88)).i8[5])
              {
                v89[v87 + 6] = v10 + v87 + 6;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B780))))).i8[6])
              {
                v89[v87 + 7] = v10 + v87 + 7;
                v89[v87 + 8] = v10 + v87 + 8;
              }

              v93 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B770)));
              if (vuzp1_s8(vuzp1_s16(v93, *v88.i8), *v88.i8).u8[0])
              {
                v89[v87 + 9] = v10 + v87 + 9;
              }

              if (vuzp1_s8(vuzp1_s16(v93, *&v88), *&v88).i8[1])
              {
                v89[v87 + 10] = v10 + v87 + 10;
              }

              if (vuzp1_s8(vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B760)))), *&v88).i8[2])
              {
                v89[v87 + 11] = v10 + v87 + 11;
                v89[v87 + 12] = v10 + v87 + 12;
              }

              v94 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B750)));
              if (vuzp1_s8(*&v88, vuzp1_s16(v94, *&v88)).i32[1])
              {
                v89[v87 + 13] = v10 + v87 + 13;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(v94, *&v88)).i8[5])
              {
                v89[v87 + 14] = v10 + v87 + 14;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B740))))).i8[6])
              {
                v89[v87 + 15] = v10 + v87 + 15;
                v89[v87 + 16] = v10 + v87 + 16;
              }

              v87 += 16;
            }

            while (((270 - v10) & 0x1F0) != v87);
          }

          goto LABEL_182;
        }

        if (v6 == 4)
        {
          v11 = 0;
          v12 = (v10 + 1);
          do
          {
            *(&__b + v11) = v11;
            ++v11;
          }

          while (v12 != v11);
          if ((v11 - 1) <= 0xFE)
          {
            v13 = &__b + v12;
            v14 = (254 - v10) + 1;
LABEL_87:
            bzero(v13, v14);
            goto LABEL_182;
          }

          goto LABEL_182;
        }

        goto LABEL_181;
      }

      v82 = 0;
      v83 = (v10 + 1);
      do
      {
        *(&__b + v82) = v82;
        ++v82;
      }

      while (v83 != v82);
      if ((v82 - 1) > 0xFE)
      {
        goto LABEL_182;
      }

      v84 = &__b + v83;
      v85 = (254 - v10) + 1;
      v86 = v5;
    }

    memset(v84, v86, v85);
    goto LABEL_182;
  }

  v15 = *(a1 + 216);
  v16 = v137;
  v17 = *v142;
  v18 = v142[1] + v142[1] * ((v135 >> 3) & 0x1FF);
  v19 = v127;
  if ((v135 & 0x4000) != 0)
  {
    if ((v125 & 0x4000) != 0)
    {
      v20 = *v142;
    }

    else
    {
      v20 = 1;
    }

    if ((v125 & 0x4000) != 0)
    {
      v17 = 1;
    }

    v18 *= v20;
  }

  v21 = *(a1 + 200);
  v22 = v144 >> 1;
  v23 = v134 >> 1;
  if (v15 <= 1)
  {
    v43 = *(a1 + 208);
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_179;
      }

      if (v17 >= 1)
      {
        v44 = 0;
        v45 = 2 * v23;
        v46 = 2 * v22;
        do
        {
          if (v18 >= 1)
          {
            v47 = 0;
            do
            {
              if (*(v16 + v47) <= v21)
              {
                v48 = v43;
              }

              else
              {
                v48 = 0;
              }

              *(v19 + v47) = v48;
              v47 += 2;
            }

            while (2 * v18 != v47);
          }

          ++v44;
          v19 += v45;
          v16 += v46;
        }

        while (v44 != v17);
      }
    }

    else if (v17 >= 1)
    {
      v67 = 0;
      v68 = 2 * v23;
      v69 = 2 * v22;
      do
      {
        if (v18 >= 1)
        {
          v70 = 0;
          do
          {
            if (*(v16 + v70) <= v21)
            {
              v71 = 0;
            }

            else
            {
              v71 = v43;
            }

            *(v19 + v70) = v71;
            v70 += 2;
          }

          while (2 * v18 != v70);
        }

        ++v67;
        v19 += v68;
        v16 += v69;
      }

      while (v67 != v17);
    }
  }

  else
  {
    switch(v15)
    {
      case 2:
        if (v17 >= 1)
        {
          v57 = 0;
          v58 = 2 * v23;
          v59 = 2 * v22;
          do
          {
            if (v18 >= 1)
            {
              v60 = 0;
              do
              {
                v61 = *(v16 + v60);
                if (v61 >= v21)
                {
                  LOWORD(v61) = v21;
                }

                *(v19 + v60) = v61;
                v60 += 2;
              }

              while (2 * v18 != v60);
            }

            ++v57;
            v19 += v58;
            v16 += v59;
          }

          while (v57 != v17);
        }

        break;
      case 3:
        if (v17 >= 1)
        {
          v62 = 0;
          v63 = 2 * v23;
          v64 = 2 * v22;
          do
          {
            if (v18 >= 1)
            {
              v65 = 0;
              do
              {
                v66 = *(v16 + v65);
                if (v66 <= v21)
                {
                  LOWORD(v66) = 0;
                }

                *(v19 + v65) = v66;
                v65 += 2;
              }

              while (2 * v18 != v65);
            }

            ++v62;
            v19 += v63;
            v16 += v64;
          }

          while (v62 != v17);
        }

        break;
      case 4:
        if (v17 >= 1)
        {
          v24 = 0;
          v25 = 2 * v23;
          v26 = 2 * v22;
          do
          {
            if (v18 >= 1)
            {
              v27 = 0;
              do
              {
                v28 = *(v16 + v27);
                if (v28 > v21)
                {
                  LOWORD(v28) = 0;
                }

                *(v19 + v27) = v28;
                v27 += 2;
              }

              while (2 * v18 != v27);
            }

            ++v24;
            v19 += v25;
            v16 += v26;
          }

          while (v24 != v17);
        }

        break;
      default:
LABEL_179:
        std::string::basic_string[abi:ne200100]<0>(v146, "");
        std::string::basic_string[abi:ne200100]<0>(v148, "thresh_16s");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
        cv::Exception::Exception(&__b, 4294967291, v146, v148, __p, 426);
        cv::error(&__b, v100);
    }
  }

LABEL_194:
  if (v128 && atomic_fetch_add(v128, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v125);
  }

  v127 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  if (v126 >= 1)
  {
    v119 = 0;
    v120 = v132;
    do
    {
      *(v120 + 4 * v119++) = 0;
    }

    while (v119 < v126);
  }

  v128 = 0;
  if (v133)
  {
    v121 = v133 == &v134;
  }

  else
  {
    v121 = 1;
  }

  if (!v121)
  {
    free(v133);
  }

  if (v138 && atomic_fetch_add(v138, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v135);
  }

  v137 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  if (v136 >= 1)
  {
    v122 = 0;
    v123 = v142;
    do
    {
      v123[v122++] = 0;
    }

    while (v122 < v136);
  }

  v138 = 0;
  if (v143)
  {
    v124 = v143 == &v144;
  }

  else
  {
    v124 = 1;
  }

  if (!v124)
  {
    free(v143);
  }
}

void sub_22D227750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  cv::Exception::~Exception(&a40);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a66 < 0)
  {
    operator delete(a61);
  }

  cv::Mat::~Mat(&a10);
  cv::Mat::~Mat(&a22);
  _Unwind_Resume(a1);
}

uint64_t cv::detail::LKTrackerInvoker::operator()(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x28223BE20](a1, a2);
  v5 = *(v4 + 64);
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v196 = *(v4 + 8);
  v8 = *v196;
  v9 = ((v8 >> 3) & 0x1FF) + 1;
  v10 = 3 * v5.i32[0] * v5.i32[1] * v9;
  v221 = v223;
  v222 = 2056;
  v189 = v3;
  if (v10 >= 0x809)
  {
    v222 = v10;
    operator new[]();
  }

  v11 = 8 * v9 - 5;
  v210 = 2;
  v211[0] = v5.i32[1];
  v211[1] = v5.i32[0];
  v212 = v223;
  v213 = 0;
  v218 = v211;
  v219 = v220;
  v209 = v11 | 0x42FF4000;
  v220[0] = ((v11 >> 2) + 2) * v5.i32[0];
  v220[1] = (v11 >> 2) + 2;
  v216 = &v223[v220[0] * v5.i32[1]];
  v217 = 0;
  v214 = v223;
  v215 = v216;
  v12 = 16 * v9 - 5;
  v199[0] = v5.i32[1];
  v199[1] = v5.i32[0];
  v200 = &v223[2 * v5.i32[0] * v9 * v5.i32[1]];
  v201 = 0;
  v206 = v199;
  v207 = v208;
  v197 = v12 & 0xFFF | 0x42FF4000;
  v198 = 2;
  v208[0] = (((v12 >> 2) & 0x3FE) + 2) * v5.i32[0];
  v208[1] = ((v12 >> 2) & 0x3FE) + 2;
  v204 = &v200[v208[0] * v5.i32[1]];
  v205 = 0;
  v202 = v200;
  v203 = v204;
  v13 = *v3;
  if (v13 < v3[1])
  {
    v14 = 2 * v9;
    v15 = vmul_f32(vcvt_f32_s32(vadd_s32(v5, -1)), 0x3F0000003F000000);
    __asm { FMOV            V3.2S, #1.0 }

    v19 = vdup_n_s32(0x46800000u);
    v192 = 4 * ((v8 >> 3) & 0x1FF) + 6;
    v20.i64[0] = 0x800000008;
    v20.i64[1] = 0x800000008;
    v21.i64[0] = 0xD0000000DLL;
    v21.i64[1] = 0xD0000000DLL;
    v190 = v6;
    v195 = v7;
    while (1)
    {
      v22 = *(v4 + 88);
      v23 = 1.0 / (1 << v22);
      v24 = vmul_n_f32(*(*(v4 + 32) + 8 * v13), v23);
      if (v22 != *(v4 + 92))
      {
        break;
      }

      v25 = *(v4 + 40);
      v26 = v24;
      if ((*(v4 + 96) & 4) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      *(v25 + 8 * v13) = v26;
      v27 = vsub_f32(v24, v15);
      v28 = vcvt_s32_f32(v27);
      v29.i64[0] = v28.i32[0];
      v29.i64[1] = v28.i32[1];
      v30 = vadd_s32(vmovn_s64(vcgtq_f64(vcvtq_f64_s64(v29), vcvtq_f64_f32(v27))), v28);
      v31 = *(v4 + 64);
      v32 = v30.i32[0];
      if (v30.i32[0] < -v31 || v30.i32[0] >= *(v7 + 12) || (LODWORD(v33) = *(v4 + 68), v34 = v30.i32[1], v30.i32[1] < -v33) || v30.i32[1] >= *(v7 + 8))
      {
        if (!v22)
        {
          v80 = *(v4 + 48);
          if (v80)
          {
            *(v80 + v13) = 0;
          }

          v81 = *(v4 + 56);
          if (v81)
          {
            *(v81 + 4 * v13) = 0;
          }
        }
      }

      else
      {
        v35 = *(v6 + 10);
        v36 = *v6;
        v191 = v13;
        if (v33 < 1)
        {
          v54 = 0;
          v56 = 0;
          v58 = 0uLL;
          v57 = 0uLL;
          v55 = 0uLL;
        }

        else
        {
          v186 = *v6;
          v188 = *(v6 + 10);
          v37 = 0;
          v38 = vsub_f32(v27, vcvt_f32_s32(v30));
          v39 = vsub_f32(_D3, v38);
          v40 = vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(vmul_f32(vmul_f32(v39, vext_s8(v39, v38, 4uLL)), v19))));
          v41 = rint((16384.0 * vmul_lane_f32(v39, v38, 1).f32[0]));
          v42 = vmovn_s64(v40);
          v43 = v42.i32[1];
          v44 = v42.i32[0];
          v45 = 0x4000 - (v42.i32[0] + v41) - v42.i32[1];
          v2.i32[0] = v45;
          v46 = *(v7 + 80) / ((0x88442211uLL >> (4 * (*v7 & 7u))) & 0xF);
          v47 = v9 * v32;
          v48 = v32 * v14;
          v49 = v46;
          v50 = v14 + v46;
          v51 = v46 + 1;
          v52 = (*(v196 + 10) / ((0x88442211uLL >> (4 * (*v196 & 7))) & 0xF));
          v53 = v34;
          v54 = 0;
          v55 = 0uLL;
          v56 = 0;
          v57 = 0uLL;
          v58 = 0uLL;
          v193 = v48;
          do
          {
            v59 = *(v196 + 2) + (v37 + v53) * v52 + v47;
            v60 = (*(v7 + 16) + 2 * (v37 + v53) * v49 + 2 * v48);
            v61 = v212;
            v62 = v220[0];
            v63 = &v200[v208[0] * v37];
            v64 = v31 * v9;
            if (v31 * v9 >= 4)
            {
              v65 = 0;
              v66 = &v212->i8[v220[0] * v37];
              v67 = (*(v7 + 16) + 2 * (v37 + v53) * v49 + 2 * v48);
              do
              {
                v225 = vld2_s16(v67);
                v67 += 8;
                v68 = &v60[2 * v9];
                v226 = vld2_s16(v68);
                *v66++ = vmovn_s32(vqrshlq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_laneq_s16(*&vmovl_u8(*(v59 + v9 + v65)), v40, 4), *&vmovl_u8(*(v59 + v65)), *v40.i8, 0), *&vmovl_u8(*(v59 + v65 + v52)), v41, 0), *&vmovl_u8(*(v59 + v9 + v65 + v52)), v2, 0), v20));
                v69 = &v60[v49];
                v227 = vld2_s16(v69);
                v70 = &v60[v50];
                v224 = vld2_s16(v70);
                v71 = vqrshlq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_laneq_s16(v226.val[0], v40, 4), *v225.i8, *v40.i8, 0), v227.val[0], v41, 0), v224.val[0], v2, 0), v21);
                v225 = vqrshlq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_laneq_s16(v226.val[1], v40, 4), v225.u64[1], *v40.i8, 0), v227.val[1], v41, 0), v224.val[1], v2, 0), v21);
                v55 = vmlaq_s32(v55, v71, v71);
                v57 = vmlaq_s32(v57, v225, v71);
                v225.u64[1] = vmovn_s32(v71);
                v226.val[0] = vmovn_s32(v225);
                vst2_s16(v63, *(&v225 + 8));
                v63 += 8;
                v58 = vmlaq_s32(v58, v225, v225);
                v65 += 4;
                v31 = *(v4 + 64);
                v64 = v31 * v9;
                v60 = v67;
              }

              while (v65 <= v31 * v9 - 4);
              v65 = v65;
            }

            else
            {
              v65 = 0;
            }

            if (v65 < v64)
            {
              v72 = v47;
              v73 = v54.f32[1];
              v74 = (&v61->i16[v65] + v62 * v37);
              v75 = v64 - v65;
              v76 = v63 + 1;
              v77 = (v60 + v192);
              do
              {
                v78 = (v43 * *(v77 - 1) + v44 * *v60 + v60[v49] * v41 + v45 * v60[v50] + 0x2000) >> 14;
                v79 = (v43 * *v77 + v44 * v60[1] + v60[v51] * v41 + v45 * v60[v50 + 1] + 0x2000) >> 14;
                *v74++ = (v43 * *(v59 + v9 + v65) + v44 * *(v59 + v65) + *(v59 + v65 + v52) * v41 + v45 * *(v59 + v9 + v65 + v52) + 256) >> 9;
                *(v76 - 1) = v78;
                *v76 = v79;
                v76 += 2;
                v73 = v73 + (v78 * v78);
                *v56.i32 = *v56.i32 + (v79 * v78);
                ++v65;
                v54.f32[0] = v54.f32[0] + (v79 * v79);
                v77 += 2;
                v60 += 2;
                --v75;
              }

              while (v75);
              v54.f32[1] = v73;
              v47 = v72;
              v48 = v193;
              v7 = v195;
              v53 = v34;
            }

            ++v37;
            v33 = *(v4 + 68);
          }

          while (v37 < v33);
          v3 = v189;
          v6 = v190;
          LOBYTE(v36) = v186;
          v35 = v188;
          v13 = v191;
        }

        v82 = *v56.i32 + (v57.i32[0] + v57.i32[1] + v57.i32[2] + v57.i32[3]);
        v83 = vadd_s32(vzip1_s32(*v58.i8, *v55.i8), vzip2_s32(*v58.i8, *v55.i8));
        v84 = vextq_s8(v55, v55, 8uLL).u64[0];
        v85 = vextq_s8(v58, v58, 8uLL).u64[0];
        *v56.i32 = v82 * 0.00000095367;
        v86 = vadd_f32(v54, vcvt_f32_s32(vadd_s32(vadd_s32(v83, vzip1_s32(v85, v84)), vzip2_s32(v85, v84))));
        v87 = vdup_n_s32(0x35800000u);
        v88 = vmul_f32(v86, v87);
        v89 = (vaddv_f32(v88) - sqrtf((*v56.i32 * (*v56.i32 * 4.0)) + ((v88.f32[1] - v88.f32[0]) * (v88.f32[1] - v88.f32[0])))) / (2 * v33 * v31);
        v90 = *(v4 + 56);
        if (v90 && (*(v4 + 96) & 8) != 0)
        {
          *(v90 + 4 * v13) = v89;
        }

        v91 = (v88.f32[1] * v88.f32[0]) - (*v56.i32 * *v56.i32);
        if (v89 < *(v4 + 100) || v91 < 0.00000011921)
        {
          if (!*(v4 + 88))
          {
            v93 = *(v4 + 48);
            if (v93)
            {
              *(v93 + v13) = 0;
            }
          }
        }

        else
        {
          v184 = v35 / ((0x88442211uLL >> (4 * (v36 & 7u))) & 0xF);
          v187 = *(v4 + 76);
          if (v187 >= 1)
          {
            v94 = 0;
            v95 = vsub_f32(v26, v15);
            v185 = v212;
            v96 = v220[0];
            v97 = v200;
            v98 = v208[0];
            v99 = vneg_f32(v88);
            v100 = v31 * v9;
            v101 = vdup_lane_s32(v56, 0);
            v102.i32[0] = 0;
            v103 = 0.0;
            v104 = 1.0 / v91;
            while (1)
            {
              v105 = v103;
              v106 = v102.f32[0];
              v107 = vcvt_s32_f32(v95);
              v108.i64[0] = v107.i32[0];
              v108.i64[1] = v107.i32[1];
              v109 = vadd_s32(vmovn_s64(vcgtq_f64(vcvtq_f64_s64(v108), vcvtq_f64_f32(v95))), v107);
              v110 = v109.i32[0];
              if (v109.i32[0] < -v31)
              {
                break;
              }

              v111 = v109.i32[1];
              v112 = v109.i32[0] >= v6[3] || v109.i32[1] < -v33;
              if (v112 || v109.i32[1] >= v6[2])
              {
                break;
              }

              v194 = v94;
              if (v33 < 1)
              {
                v125 = 0;
                v128 = 0uLL;
                v126 = 0uLL;
              }

              else
              {
                v113 = 0;
                v114 = vsub_f32(v95, vcvt_f32_s32(v109));
                v115 = vsub_f32(_D3, v114);
                v116 = vrev64_s32(v115);
                v117 = rint((16384.0 * vmul_f32(v115, v116).f32[0]));
                v118 = vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(vmul_f32(vmul_f32(v114, v116), v19))));
                v119 = vmovn_s64(v118);
                v120 = v119.i32[1];
                v121 = v119.i32[0];
                v122 = 0x4000 - v117 - (v119.i32[1] + v119.i32[0]);
                v2.i32[0] = v122;
                v123 = *(v6 + 2) + v9 * v110;
                v124 = v111;
                v125 = 0;
                v126 = 0uLL;
                v127 = v185;
                v128 = 0uLL;
                do
                {
                  v129 = v123 + (v113 + v124) * v184;
                  v130 = &v97[v98 * v113];
                  if (v100 >= 8)
                  {
                    v132 = 0;
                    v133 = v129 + v9;
                    v134 = v127;
                    do
                    {
                      v135 = vmovl_u8(*(v129 + v132));
                      v136 = vmovl_u8(*(v133 + v132));
                      v137 = vmovl_u8(*(v129 + v132 + v184));
                      v138 = vmovl_u8(*(v133 + v132 + v184));
                      v139 = vmull_lane_s16(*v136.i8, *v118.i8, 0);
                      v140 = *v134++;
                      v141 = vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v136, *v118.i8, 0), v135, v117, 0), v137, v118, 4), v138, v2, 0);
                      v142 = vqrshlq_s32(vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(v139, *v135.i8, v117, 0), *v137.i8, v118, 4), *v138.i8, v2, 0), v20);
                      v228 = vld2q_s16(v130);
                      v130 += 16;
                      v143 = vsubw_s16(v142, *v140.i8);
                      v144 = vsubw_high_s16(vqrshlq_s32(v141, v20), v140);
                      v126 = vmlaq_s32(vmlaq_s32(v126, v144, vmovl_high_s16(v228.val[0])), v143, vmovl_s16(*v228.val[0].i8));
                      v128 = vmlaq_s32(vmlaq_s32(v128, v144, vmovl_high_s16(v228.val[1])), v143, vmovl_s16(*v228.val[1].i8));
                      v132 += 8;
                    }

                    while (v132 <= v31 * v9 - 8);
                    LODWORD(v131) = ((v31 * v9 - 8) & 0xFFFFFFF8) + 8;
                  }

                  else
                  {
                    LODWORD(v131) = 0;
                  }

                  if (v131 < v100)
                  {
                    v131 = v131;
                    do
                    {
                      v145 = ((v121 * *(v129 + v9 + v131) + *(v129 + v131) * v117 + v120 * *(v129 + v131 + v184) + v122 * *(v129 + v9 + v131 + v184) + 256) >> 9) - v127->i16[v131];
                      v125 = vadd_f32(v125, vcvt_f32_s32(__PAIR64__(v145 * *v130, v145 * v130[1])));
                      ++v131;
                      v130 += 2;
                    }

                    while (v31 * v9 != v131);
                  }

                  ++v113;
                  v127 = (v127 + v96);
                }

                while (v113 != v33);
              }

              v146 = vadd_s32(vzip1_s32(*v128.i8, *v126.i8), vzip2_s32(*v128.i8, *v126.i8));
              v147 = vextq_s8(v126, v126, 8uLL).u64[0];
              v148 = vextq_s8(v128, v128, 8uLL).u64[0];
              v149 = vmul_f32(vadd_f32(v125, vcvt_f32_s32(vadd_s32(vadd_s32(v146, vzip1_s32(v148, v147)), vzip2_s32(v148, v147)))), v87);
              v102 = vmul_n_f32(vmla_f32(vmul_f32(vrev64_s32(v149), v99), v149, v101), v104);
              v95 = vadd_f32(v95, v102);
              v150 = vadd_f32(v15, v95);
              v151 = *(v4 + 40);
              v6 = v190;
              v13 = v191;
              *(v151 + 8 * v191) = v150;
              v103 = v102.f32[1];
              v7 = v195;
              if (v102.f32[1] * v102.f32[1] + v102.f32[0] * v102.f32[0] <= *(v4 + 80))
              {
                goto LABEL_77;
              }

              if (v194 && fabsf(v106 + v102.f32[0]) < 0.01 && fabsf(v105 + v102.f32[1]) < 0.01)
              {
                *(v151 + 8 * v191) = vadd_f32(v150, vmul_f32(v102, 0xBF000000BF000000));
                goto LABEL_77;
              }

              v94 = v194 + 1;
              if (v194 + 1 == v187)
              {
                goto LABEL_77;
              }
            }

            if (!*(v4 + 88))
            {
              v152 = *(v4 + 48);
              if (v152)
              {
                *(v152 + v13) = 0;
              }
            }
          }

LABEL_77:
          v153 = *(v4 + 48);
          v3 = v189;
          if (*(v153 + v13))
          {
            v154 = *(v4 + 56);
            if (v154)
            {
              if (!*(v4 + 88) && (*(v4 + 96) & 8) == 0)
              {
                v155 = (*(v4 + 40) + 8 * v13);
                v156 = *v155 - v15.f32[0];
                v157 = v155[1] - v15.f32[1];
                v158 = v156 - (v156 > v156);
                v159 = *(v4 + 64);
                if (v158 < -v159 || v158 >= v6[3] || (v160 = v157 - (v157 > v157), v161 = *(v4 + 68), v160 < -v161) || v160 >= v6[2])
                {
                  *(v153 + v13) = 0;
                }

                else
                {
                  if (v161 < 1)
                  {
                    v170 = 0.0;
                  }

                  else
                  {
                    v162 = 0;
                    v163 = v156 - v158;
                    v164 = v157 - v160;
                    v165 = rint((((1.0 - v163) * (1.0 - v164)) * 16384.0));
                    v166 = rint(((v163 * (1.0 - v164)) * 16384.0));
                    v167 = rint((((1.0 - v163) * v164) * 16384.0));
                    v168 = *(v6 + 2) + v9 * v158;
                    v169 = v212;
                    v170 = 0.0;
                    do
                    {
                      if (v159 * v9 >= 1)
                      {
                        v171 = 0;
                        v173 = 2 * (v159 * v9);
                        v174 = v169;
                        do
                        {
                          v175 = v174->i16[0];
                          v174 = (v174 + 2);
                          v172 = v168 + (v162 + v160) * v184;
                          v170 = v170 + fabsf((((*(v172 + v9 + v171) * v166 + *(v172 + v171) * v165 + *(v172 + v171 + v184) * v167 + (0x4000 - v165 - (v167 + v166)) * *(v172 + v9 + v171 + v184) + 256) >> 9) - v175));
                          ++v171;
                          v173 -= 2;
                        }

                        while (v173);
                      }

                      ++v162;
                      v169 = (v169 + v220[0]);
                    }

                    while (v162 != v161);
                  }

                  v6 = v190;
                  v13 = v191;
                  *(v154 + 4 * v191) = v170 / (32 * v9 * v159 * v161);
                  v7 = v195;
                }
              }
            }
          }
        }
      }

      if (++v13 >= v3[1])
      {
        if (v201 && atomic_fetch_add(v201, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v197);
        }

        goto LABEL_98;
      }
    }

    v25 = *(v4 + 40);
    v23 = 2.0;
LABEL_9:
    v26 = vmul_n_f32(*(v25 + 8 * v13), v23);
    goto LABEL_10;
  }

LABEL_98:
  v200 = 0;
  v203 = 0;
  v204 = 0;
  v202 = 0;
  if (v198 >= 1)
  {
    v176 = 0;
    v177 = v206;
    do
    {
      v177[v176++] = 0;
    }

    while (v176 < v198);
  }

  v201 = 0;
  if (v207)
  {
    _ZF = v207 == v208;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    free(v207);
  }

  if (v213 && atomic_fetch_add(v213, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v209);
  }

  v212 = 0;
  v215 = 0;
  v216 = 0;
  v214 = 0;
  if (v210 >= 1)
  {
    v179 = 0;
    v180 = v218;
    do
    {
      v180[v179++] = 0;
    }

    while (v179 < v210);
  }

  v213 = 0;
  if (v219)
  {
    v181 = v219 == v220;
  }

  else
  {
    v181 = 1;
  }

  if (!v181)
  {
    free(v219);
  }

  result = v221;
  if (v221 != v223 && v221 != 0)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

uint64_t cv::buildOpticalFlowPyramid(void (***a1)(uint64_t *__return_ptr), uint64_t a2, int *a3, unsigned int a4, int a5, int a6, int a7, int a8)
{
  v126[5] = *MEMORY[0x277D85DE8];
  (**a1)(&v105);
  if ((v105 & 7) != 0 || *a3 < 3 || a3[1] <= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v99, "img.depth() == CV_8U && winSize.width > 2 && winSize.height > 2");
    std::string::basic_string[abi:ne200100]<0>(v115, "buildOpticalFlowPyramid");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    v12 = cv::Exception::Exception(v122, 4294967081, v99, v115, __p, 740);
    cv::error(v12, v13);
  }

  (*(*a2 + 136))(a2, 1, (a4 + 1) << a5, 0, 0xFFFFFFFFLL, 1, 0);
  v14 = v105;
  if (!a8 || (a6 & 0x10) != 0 || (v105 & 0x8000) == 0 || (*v122 = 0, v99[0] = 0, cv::Mat::locateROI(&v105, v122, v99), SLODWORD(v99[0]) < *a3) || (v15 = a3[1], SHIDWORD(v99[0]) < v15) || *a3 + LODWORD(v99[0]) + HIDWORD(v106) > v122[0] || v15 + HIDWORD(v99[0]) + v106 > v122[1])
  {
    v16 = (*(*a2 + 120))(a2, 0);
    v17 = v16;
    if (*(v16 + 16))
    {
      v18 = *(v16 + 4);
      if (v18 >= 3)
      {
        v20 = *(v16 + 64);
        v19 = 1;
        do
        {
          v21 = *v20++;
          v19 *= v21;
          --v18;
        }

        while (v18);
      }

      else
      {
        v19 = *(v16 + 12) * *(v16 + 8);
      }

      if (v19)
      {
        cv::Mat::adjustROI(v16, a3[1], a3[1], *a3, *a3);
      }
    }

    v22 = v105 & 0xFFF;
    v23 = *a3;
    if ((*v17 & 0xFFF) == v22)
    {
      v24 = *(v17 + 12);
      v25 = HIDWORD(v106) + 2 * v23;
      if (v24 == v25 && *(v17 + 8) == v106 + 2 * a3[1])
      {
LABEL_29:
        if (a6 == 5)
        {
          v26.i64[0] = *a3;
          v26.i64[1] = v106;
          v27 = vrev64q_s32(v26);
          v27.i64[0] = *a3;
          *v115 = v27;
          cv::Mat::Mat(v122, v17, v115);
          cv::_OutputArray::_OutputArray(v99, v122);
          cv::Mat::copyTo(&v105, v99);
          if (*&v123[8] && atomic_fetch_add(*&v123[8], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v122);
          }

          *v123 = 0;
          memset(&v123[16], 0, 24);
          if (v122[1] >= 1)
          {
            v28 = 0;
            v29 = v124;
            do
            {
              v29[v28++] = 0;
            }

            while (v28 < v122[1]);
          }

          *&v123[8] = 0;
          if (v125)
          {
            v30 = v125 == v126;
          }

          else
          {
            v30 = 1;
          }

          if (!v30)
          {
            free(v125);
          }
        }

        else
        {
          cv::_InputArray::_InputArray(v122, &v105);
          cv::_OutputArray::_OutputArray(v99, v17);
          *v115 = 0u;
          *v116 = 0u;
          cv::copyMakeBorder(v122, v99);
        }

        cv::Mat::adjustROI(v17, -a3[1], -a3[1], -*a3, -*a3);
        goto LABEL_43;
      }
    }

    else
    {
      v24 = *(v17 + 12);
      v25 = HIDWORD(v106) + 2 * v23;
    }

    if ((*v17 & 0xFFF) != v22 || *(v17 + 4) > 2 || *(v17 + 8) != v106 + 2 * a3[1] || v24 != v25 || !*(v17 + 16))
    {
      v122[0] = v106 + 2 * a3[1];
      v122[1] = v25;
      cv::Mat::create(v17, 2, v122, v22);
    }

    goto LABEL_29;
  }

  v92 = (*(*a2 + 120))(a2, 0);
  cv::Mat::operator=(v92, &v105);
LABEL_43:
  v104 = vrev64_s32(*v112);
  v31 = (*(*a2 + 120))(a2, 0);
  *v122 = *v31;
  v32 = *(v31 + 16);
  v33 = *(v31 + 24);
  *&v123[8] = v33;
  *&v123[24] = *(v31 + 40);
  v34 = *(v31 + 56);
  *v123 = v32;
  *&v123[40] = v34;
  v124 = &v122[2];
  v125 = v126;
  v126[0] = 0;
  v126[1] = 0;
  if (v33)
  {
    atomic_fetch_add(v33, 1u);
  }

  if (*(v31 + 4) > 2)
  {
    v122[1] = 0;
    cv::Mat::copySize(v122, v31);
  }

  else
  {
    v35 = *(v31 + 72);
    v36 = v125;
    *v125 = *v35;
    v36[1] = v35[1];
  }

  *v100 = *v123;
  *v99 = *v122;
  *&v100[8] = *&v123[8];
  *&v100[24] = *&v123[24];
  *&v100[40] = *&v123[40];
  v101 = &v99[1];
  v103[0] = 0;
  v103[1] = 0;
  v102 = v103;
  if (*&v123[8])
  {
    atomic_fetch_add(*&v123[8], 1u);
  }

  if (v122[1] > 2)
  {
    HIDWORD(v99[0]) = 0;
    cv::Mat::copySize(v99, v122);
  }

  else
  {
    v37 = v125;
    v38 = v102;
    *v102 = *v125;
    v38[1] = v37[1];
  }

  if ((a4 & 0x80000000) != 0)
  {
    v39 = 0;
    goto LABEL_167;
  }

  v39 = 0;
  v93 = (16 * ((v14 >> 3) & 0x1FF)) & 0xFF0 | 0xB;
  while (1)
  {
    if (!v39)
    {
      goto LABEL_107;
    }

    v40 = (*(*a2 + 120))(a2, v39 << a5);
    v41 = v40;
    if (*(v40 + 16))
    {
      v42 = *(v40 + 4);
      if (v42 >= 3)
      {
        v44 = *(v40 + 64);
        v43 = 1;
        do
        {
          v45 = *v44++;
          v43 *= v45;
          --v42;
        }

        while (v42);
      }

      else
      {
        v43 = *(v40 + 12) * *(v40 + 8);
      }

      if (v43)
      {
        cv::Mat::adjustROI(v40, a3[1], a3[1], *a3, *a3);
      }
    }

    v46 = v105 & 0xFFF;
    if ((*v41 & 0xFFF) == v46)
    {
      v47 = *(v41 + 12);
      *&v50 = *a3;
      v49 = v104.i32[0] + 2 * *a3;
      *&v48 = *a3;
      *(&v48 + 1) = v104;
      if (v47 == v49)
      {
        if (*(v41 + 8) == v104.i32[1] + 2 * DWORD1(v50))
        {
          goto LABEL_79;
        }

        *(&v50 + 1) = v104;
        v48 = v50;
      }
    }

    else
    {
      *&v48 = *a3;
      v47 = *(v41 + 12);
      *(&v48 + 1) = v104;
      v49 = v104.i32[0] + 2 * *a3;
    }

    if ((*v41 & 0xFFF) != v46 || *(v41 + 4) > 2 || (*(v41 + 8) == HIDWORD(v48) + 2 * DWORD1(v48) ? (v51 = v47 == v49) : (v51 = 0), v51 ? (v52 = *(v41 + 16) == 0) : (v52 = 1), v52))
    {
      LODWORD(v115[0]) = HIDWORD(v48) + 2 * DWORD1(v48);
      HIDWORD(v115[0]) = v49;
      cv::Mat::create(v41, 2, v115, v46);
      *&v48 = *a3;
      *(&v48 + 1) = v104;
    }

LABEL_79:
    *__p = v48;
    cv::Mat::Mat(v115, v41, __p);
    if (*&v116[8])
    {
      atomic_fetch_add(*&v116[8], 1u);
    }

    if (*&v100[8] && atomic_fetch_add(*&v100[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v99);
    }

    *v100 = 0;
    memset(&v100[16], 0, 24);
    if (v99[0] <= 0)
    {
      *&v100[8] = 0;
      LODWORD(v99[0]) = v115[0];
    }

    else
    {
      v53 = 0;
      v54 = v101;
      do
      {
        *(v54 + v53++) = 0;
      }

      while (v53 < SHIDWORD(v99[0]));
      *&v100[8] = 0;
      LODWORD(v99[0]) = v115[0];
      if (SHIDWORD(v99[0]) > 2)
      {
        goto LABEL_92;
      }
    }

    if (SHIDWORD(v115[0]) <= 2)
    {
      HIDWORD(v99[0]) = HIDWORD(v115[0]);
      v99[1] = v115[1];
      v55 = v120;
      v56 = v102;
      *v102 = *v120;
      v56[1] = v55[1];
      goto LABEL_93;
    }

LABEL_92:
    cv::Mat::copySize(v99, v115);
LABEL_93:
    *v100 = *v116;
    *&v100[24] = v117;
    *&v100[8] = *&v116[8];
    *&v100[40] = v118;
    if (*&v116[8] && atomic_fetch_add(*&v116[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v115);
    }

    *v116 = 0;
    v117 = 0uLL;
    *&v116[16] = 0;
    if (SHIDWORD(v115[0]) >= 1)
    {
      v57 = 0;
      v58 = v119;
      do
      {
        *(v58 + 4 * v57++) = 0;
      }

      while (v57 < SHIDWORD(v115[0]));
    }

    *&v116[8] = 0;
    if (v120)
    {
      v59 = v120 == v121;
    }

    else
    {
      v59 = 1;
    }

    if (!v59)
    {
      free(v120);
    }

    cv::_InputArray::_InputArray(v115, v122);
    cv::_OutputArray::_OutputArray(__p, v99);
    cv::pyrDown(v115, __p, &v104, 4);
    if (a6 != 5)
    {
      cv::_InputArray::_InputArray(v115, v99);
      cv::_OutputArray::_OutputArray(__p, v41);
      memset(v97, 0, sizeof(v97));
      cv::copyMakeBorder(v115, __p);
    }

    cv::Mat::adjustROI(v41, -a3[1], -a3[1], -*a3, -*a3);
LABEL_107:
    if (!a5)
    {
      goto LABEL_146;
    }

    v60 = (*(*a2 + 120))(a2, (2 * v39) | 1);
    v61 = v60;
    if (*(v60 + 16))
    {
      v62 = *(v60 + 4);
      if (v62 >= 3)
      {
        v64 = *(v60 + 64);
        v63 = 1;
        do
        {
          v65 = *v64++;
          v63 *= v65;
          --v62;
        }

        while (v62);
      }

      else
      {
        v63 = *(v60 + 12) * *(v60 + 8);
      }

      if (v63)
      {
        cv::Mat::adjustROI(v60, a3[1], a3[1], *a3, *a3);
      }
    }

    if ((*v61 & 0xFFF) != ((16 * ((v14 >> 3) & 0x1FF)) | 0xB))
    {
      *&v69 = *a3;
      v66 = *(v61 + 12);
      *(&v69 + 1) = v104;
      v68 = v104.i32[0] + 2 * *a3;
      goto LABEL_120;
    }

    v66 = *(v61 + 12);
    *&v67 = *a3;
    v68 = v104.i32[0] + 2 * *a3;
    *&v69 = *a3;
    *(&v69 + 1) = v104;
    if (v66 != v68)
    {
      goto LABEL_120;
    }

    if (*(v61 + 8) != v104.i32[1] + 2 * DWORD1(v67))
    {
      *(&v67 + 1) = v104;
      v69 = v67;
LABEL_120:
      if (*(v61 + 4) > 2 || (*(v61 + 8) == HIDWORD(v69) + 2 * DWORD1(v69) ? (v70 = v66 == v68) : (v70 = 0), v70 ? (v71 = (*v61 & 0xFFF) == v93) : (v71 = 0), v71 ? (v72 = *(v61 + 16) == 0) : (v72 = 1), v72))
      {
        LODWORD(v115[0]) = HIDWORD(v69) + 2 * DWORD1(v69);
        HIDWORD(v115[0]) = v68;
        cv::Mat::create(v61, 2, v115, v93);
        *&v69 = *a3;
        *(&v69 + 1) = v104;
      }
    }

    *__p = v69;
    cv::Mat::Mat(v115, v61, __p);
    if (a7 != 5)
    {
      cv::_InputArray::_InputArray(__p, v115);
      cv::_OutputArray::_OutputArray(v97, v61);
      cv::copyMakeBorder(__p, v97);
    }

    cv::Mat::adjustROI(v61, -a3[1], -a3[1], -*a3, -*a3);
    if (*&v116[8] && atomic_fetch_add(*&v116[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v115);
    }

    *v116 = 0;
    v117 = 0uLL;
    *&v116[16] = 0;
    if (SHIDWORD(v115[0]) >= 1)
    {
      v74 = 0;
      v75 = v119;
      do
      {
        *(v75 + 4 * v74++) = 0;
      }

      while (v74 < SHIDWORD(v115[0]));
    }

    *&v116[8] = 0;
    if (v120)
    {
      v76 = v120 == v121;
    }

    else
    {
      v76 = 1;
    }

    if (!v76)
    {
      free(v120);
    }

LABEL_146:
    v77 = (v104.i32[1] + 1) / 2;
    v104.i32[0] = (v104.i32[0] + 1) / 2;
    v104.i32[1] = v77;
    if (v104.i32[0] <= *a3 || v77 <= a3[1])
    {
      break;
    }

    if (*&v100[8])
    {
      atomic_fetch_add(*&v100[8], 1u);
    }

    if (*&v123[8] && atomic_fetch_add(*&v123[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v122);
    }

    *v123 = 0;
    memset(&v123[16], 0, 24);
    if (v122[1] <= 0)
    {
      *&v123[8] = 0;
      v122[0] = v99[0];
    }

    else
    {
      v78 = 0;
      v79 = v124;
      do
      {
        v79[v78++] = 0;
      }

      while (v78 < v122[1]);
      *&v123[8] = 0;
      v122[0] = v99[0];
      if (v122[1] > 2)
      {
LABEL_161:
        cv::Mat::copySize(v122, v99);
        goto LABEL_162;
      }
    }

    if (SHIDWORD(v99[0]) > 2)
    {
      goto LABEL_161;
    }

    v122[1] = HIDWORD(v99[0]);
    *&v122[2] = v99[1];
    v80 = v102;
    v81 = v125;
    *v125 = *v102;
    v81[1] = v80[1];
LABEL_162:
    *v123 = *v100;
    *&v123[16] = *&v100[16];
    *&v123[32] = *&v100[32];
    v30 = v39++ == a4;
    if (v30)
    {
      v39 = a4 + 1;
      goto LABEL_167;
    }
  }

  (*(*a2 + 136))(a2, 1, (v39 + 1) << a5, 0, 0xFFFFFFFFLL, 1, 0);
LABEL_167:
  if (*&v100[8] && atomic_fetch_add(*&v100[8], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v99);
  }

  *v100 = 0;
  memset(&v100[16], 0, 24);
  if (SHIDWORD(v99[0]) >= 1)
  {
    v82 = 0;
    v83 = v101;
    do
    {
      *(v83 + v82++) = 0;
    }

    while (v82 < SHIDWORD(v99[0]));
  }

  *&v100[8] = 0;
  if (v102)
  {
    v84 = v102 == v103;
  }

  else
  {
    v84 = 1;
  }

  if (!v84)
  {
    free(v102);
  }

  if (*&v123[8] && atomic_fetch_add(*&v123[8], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v122);
  }

  *v123 = 0;
  memset(&v123[16], 0, 24);
  if (v122[1] >= 1)
  {
    v85 = 0;
    v86 = v124;
    do
    {
      v86[v85++] = 0;
    }

    while (v85 < v122[1]);
  }

  *&v123[8] = 0;
  if (v125)
  {
    v87 = v125 == v126;
  }

  else
  {
    v87 = 1;
  }

  if (!v87)
  {
    free(v125);
  }

  if (v108 && atomic_fetch_add(v108, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v105);
  }

  v107 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  if (SHIDWORD(v105) >= 1)
  {
    v88 = 0;
    v89 = v112;
    do
    {
      v89->i32[v88++] = 0;
    }

    while (v88 < SHIDWORD(v105));
  }

  v108 = 0;
  if (v113)
  {
    v90 = v113 == &v114;
  }

  else
  {
    v90 = 1;
  }

  if (!v90)
  {
    free(v113);
  }

  if (v39 >= a4)
  {
    return a4;
  }

  else
  {
    return v39;
  }
}