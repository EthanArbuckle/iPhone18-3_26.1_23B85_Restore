void sub_22D241890(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

const cv::Mat **cv::mixChannels(cv *this, const cv::Mat *a2, unint64_t a3, cv::Mat *a4, unint64_t a5, const int *a6)
{
  result = MEMORY[0x28223BE20](this, a2);
  v70 = v7;
  v82[514] = *MEMORY[0x277D85DE8];
  if (v11)
  {
    v12 = v11;
    v66 = v9;
    if (!result || !v7 || !v8 || !v9 || !v10)
    {
      std::string::basic_string[abi:ne200100]<0>(v75, "src && nsrcs > 0 && dst && ndsts > 0 && fromTo && npairs > 0");
      std::string::basic_string[abi:ne200100]<0>(v78, "mixChannels");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/convert.cpp");
      cv::Exception::Exception(&v79, 4294967081, v75, v78, __p, 460);
      cv::error(&v79, v13);
    }

    v14 = *v8;
    *v64 = v9 + v7;
    v79 = &v81;
    v80 = 4104;
    if ((40 * v11 + 16 * (v9 + v7) + 16) >= 0x1009)
    {
      v80 = 40 * v11 + 16 * (v9 + v7) + 16;
      operator new[]();
    }

    v15 = (0x88442211uLL >> (4 * (v14 & 7u))) & 0xF;
    v16 = &v82[v7 - 1];
    v17 = &v16[v9];
    v18 = &(&v17[v7])[v9];
    v19 = v18 + 8 + 8 * v11;
    v67 = v19 + 8 * v11;
    v20 = v67 + 16 * v11;
    v21 = (v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v22 = vdupq_n_s64(v7 - 1);
    v23 = xmmword_22D297DE0;
    v24 = v82;
    v25 = vdupq_n_s64(2uLL);
    v26 = result;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v22, v23));
      if (v27.i8[0])
      {
        *(v24 - 1) = v26;
      }

      if (v27.i8[4])
      {
        *v24 = v26 + 96;
      }

      v23 = vaddq_s64(v23, v25);
      v24 += 2;
      v26 += 192;
      v21 -= 2;
    }

    while (v21);
    v65 = v14 & 7;
    v28 = v20 + 4 * v11;
    v29 = v9;
    v30 = (v9 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v31 = vdupq_n_s64(v9 - 1);
    v32 = v16 + 1;
    v33 = xmmword_22D297DE0;
    v34 = vdupq_n_s64(2uLL);
    v35 = v8;
    do
    {
      v36 = vmovn_s64(vcgeq_u64(v31, v33));
      if (v36.i8[0])
      {
        *(v32 - 1) = v35;
      }

      if (v36.i8[4])
      {
        *v32 = v35 + 24;
      }

      v33 = vaddq_s64(v33, v34);
      v32 += 2;
      v35 += 48;
      v30 -= 2;
    }

    while (v30);
    v37 = 0;
    v17[*v64] = 0;
    do
    {
      v38 = (v10 + 8 * v37);
      v40 = *v38;
      v39 = v38[1];
      v72 = v37;
      v68 = (v67 + 16 * v37);
      if (*v38 < 0)
      {
        v46 = 0;
        *(v67 + 16 * v37) = v64[0];
      }

      else
      {
        v41 = 0;
        v42 = result;
        while (1)
        {
          v44 = *v42;
          v42 += 12;
          v43 = v44;
          v45 = (v44 >> 3) & 0x1FF;
          if (v40 <= v45)
          {
            break;
          }

          v40 += ~v45;
          if (v7 == ++v41)
          {
            goto LABEL_30;
          }
        }

        if ((v43 & 7) != v65)
        {
LABEL_30:
          std::string::basic_string[abi:ne200100]<0>(v78, "j < nsrcs && src[j].depth() == depth");
          std::string::basic_string[abi:ne200100]<0>(__p, "mixChannels");
          std::string::basic_string[abi:ne200100]<0>(v74, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/convert.cpp");
          cv::Exception::Exception(v75, 4294967081, v78, __p, v74, 487);
          cv::error(v75, v47);
        }

        *v68 = v41;
        v68[1] = v40 * v15;
        v46 = ((LODWORD(result[12 * v41]) >> 3) & 0x1FF) + 1;
        v29 = v9;
      }

      *(v20 + 4 * v72) = v46;
      v48 = 0;
      v49 = v8;
      while (1)
      {
        v51 = *v49;
        v49 += 24;
        v50 = v51;
        v52 = (v51 >> 3) & 0x1FF;
        if (v39 <= v52)
        {
          break;
        }

        v39 += ~v52;
        if (v29 == ++v48)
        {
          goto LABEL_38;
        }
      }

      if (v39 < 0 || (v50 & 7) != v65)
      {
LABEL_38:
        std::string::basic_string[abi:ne200100]<0>(v78, "i1 >= 0 && j < ndsts && dst[j].depth() == depth");
        std::string::basic_string[abi:ne200100]<0>(__p, "mixChannels");
        std::string::basic_string[abi:ne200100]<0>(v74, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/convert.cpp");
        cv::Exception::Exception(v75, 4294967081, v78, __p, v74, 500);
        cv::error(v75, v53);
      }

      v68[2] = v48 + v7;
      v68[3] = v39 * v15;
      *(v28 + 4 * v72) = ((v8[24 * v48] >> 3) & 0x1FF) + 1;
      v37 = v72 + 1;
    }

    while (v72 + 1 != v11);
    cv::NAryMatIterator::NAryMatIterator(v75, &v81, v17, v64[0]);
    v54 = v76;
    v73 = cv::getMixchFunc(int)::mixchTab[v65];
    if (((v15 + 1023) / v15) >= v76)
    {
      v55 = v76;
    }

    else
    {
      v55 = (v15 + 1023) / v15;
    }

    v56 = 0;
    v69 = &v82[2 * v12 + 2 * v66 + 2 * v70] + 4;
    while (1)
    {
      v57 = v69;
      v58 = (v18 + 8);
      v59 = v12;
      if (v56 >= v75[4])
      {
        break;
      }

      do
      {
        *v58 = &v17[*(v57 - 1)][*v57];
        v58[v12] = &v17[v57[1]][v57[2]];
        ++v58;
        v57 += 4;
        --v59;
      }

      while (v59);
      v71 = v56;
      if (v54 >= 1)
      {
        v60 = 0;
        do
        {
          if (v55 >= v54 - v60)
          {
            v61 = (v54 - v60);
          }

          else
          {
            v61 = v55;
          }

          (v73)(v18 + 8, v20, v18 + 8 + 8 * v12, v20 + 4 * v12, v61, v12);
          v60 += v55;
          if (v60 >= v54)
          {
            break;
          }

          for (i = 0; i != v12; ++i)
          {
            *(v18 + 8 * i + 8) += v15 * *(v20 + 4 * i) * v55;
            *(v19 + 8 * i) += v15 * *(v28 + 4 * i) * v55;
          }
        }

        while (v60 < v54);
      }

      v56 = v71 + 1;
      cv::NAryMatIterator::operator++(v75);
    }

    result = v79;
    if (v79 != &v81 && v79 != 0)
    {
      return MEMORY[0x2318CB180]();
    }
  }

  return result;
}

void sub_22D24203C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58)
{
  cv::Exception::~Exception(&a58);
  if (a51 < 0)
  {
    operator delete(__p);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

char *cv::cvt8u(char *__src, uint64_t a2, int a3, int a4, char *__dst, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v11 = __src;
    v12 = *a7;
    do
    {
      --v7;
      __src = memcpy(__dst, v11, v12);
      v11 += a2;
      __dst += a6;
    }

    while (v7);
  }

  return __src;
}

uint64_t cv::cvt8s8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
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
        do
        {
          v10 = *(result + v9 + 1) & ~(*(result + v9 + 1) >> 31);
          v11 = (a5 + v9);
          *v11 = *(result + v9) & ~(*(result + v9) >> 7);
          v11[1] = v10;
          v12 = *(result + v9 + 3) & ~(*(result + v9 + 3) >> 31);
          v11[2] = *(result + v9 + 2) & ~(*(result + v9 + 2) >> 31);
          v11[3] = v12;
          v9 += 4;
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
          *(a5 + v9) = *(result + v9) & ~(*(result + v9) >> 31);
          ++v9;
        }

        while (v9 < v8);
      }

      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt16u8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 4);
    v10 = 2 * (a2 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(v12 - 2);
          if (v13 >= 0xFF)
          {
            LOBYTE(v13) = -1;
          }

          v14 = *(v12 - 1);
          if (v14 >= 0xFF)
          {
            LOBYTE(v14) = -1;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12;
          if (v16 >= 0xFF)
          {
            LOBYTE(v16) = -1;
          }

          v17 = v12[1];
          if (v17 >= 0xFF)
          {
            LOBYTE(v17) = -1;
          }

          v15[2] = v16;
          v15[3] = v17;
          v11 += 4;
          v12 += 4;
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
          v18 = *(result + 2 * v11);
          if (v18 >= 0xFF)
          {
            LOBYTE(v18) = -1;
          }

          *(a5 + v11++) = v18;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt16s8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 4);
    v10 = 2 * (a2 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(v12 - 2) & ~(*(v12 - 2) >> 31);
          if (v13 >= 255)
          {
            LOBYTE(v13) = -1;
          }

          v14 = *(v12 - 1) & ~(*(v12 - 1) >> 31);
          if (v14 >= 255)
          {
            LOBYTE(v14) = -1;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12 & ~(*v12 >> 31);
          if (v16 >= 255)
          {
            LOBYTE(v16) = -1;
          }

          v17 = v12[1] & ~(v12[1] >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          v15[2] = v16;
          v15[3] = v17;
          v11 += 4;
          v12 += 4;
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
          v18 = *(result + 2 * v11) & ~(*(result + 2 * v11) >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          *(a5 + v11++) = v18;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32s8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 8);
    v10 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(v12 - 2) & ~(*(v12 - 2) >> 31);
          if (v13 >= 255)
          {
            LOBYTE(v13) = -1;
          }

          v14 = *(v12 - 1) & ~(*(v12 - 1) >> 31);
          if (v14 >= 255)
          {
            LOBYTE(v14) = -1;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12;
          v17 = v12[1];
          v12 += 4;
          v18 = v16 & ~(v16 >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          v19 = v17 & ~(v17 >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v15[2] = v18;
          v15[3] = v19;
          v11 += 4;
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
          v20 = *(result + 4 * v11) & ~(*(result + 4 * v11) >> 31);
          if (v20 >= 255)
          {
            LOBYTE(v20) = -1;
          }

          *(a5 + v11++) = v20;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32f8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 8);
    v10 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = rint(*(v12 - 2));
          v14 = v13 & ~(v13 >> 31);
          if (v14 >= 255)
          {
            LOBYTE(v14) = -1;
          }

          v15 = rint(*(v12 - 1));
          v16 = v15 & ~(v15 >> 31);
          if (v16 >= 255)
          {
            LOBYTE(v16) = -1;
          }

          v17 = (a5 + v11);
          *v17 = v14;
          v17[1] = v16;
          v18 = *v12;
          v19 = v12[1];
          v12 += 4;
          v20 = rint(v18);
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            LOBYTE(v21) = -1;
          }

          v22 = rint(v19);
          v23 = v22 & ~(v22 >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v17[2] = v21;
          v17[3] = v23;
          v11 += 4;
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
          v24 = rint(*(result + 4 * v11));
          v25 = v24 & ~(v24 >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          *(a5 + v11++) = v25;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt64f8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 16);
    v10 = 8 * (a2 >> 3);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = rint(*(v12 - 2));
          v14 = v13 & ~(v13 >> 31);
          if (v14 >= 255)
          {
            LOBYTE(v14) = -1;
          }

          v15 = rint(*(v12 - 1));
          v16 = v15 & ~(v15 >> 31);
          if (v16 >= 255)
          {
            LOBYTE(v16) = -1;
          }

          v17 = (a5 + v11);
          *v17 = v14;
          v17[1] = v16;
          v18 = *v12;
          v19 = v12[1];
          v12 += 4;
          v20 = rint(v18);
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            LOBYTE(v21) = -1;
          }

          v22 = rint(v19);
          v23 = v22 & ~(v22 >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          v17[2] = v21;
          v17[3] = v23;
          v11 += 4;
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
          v24 = rint(*(result + 8 * v11));
          v25 = v24 & ~(v24 >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          *(a5 + v11++) = v25;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8u8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
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
        do
        {
          v10 = (result + v9);
          v11 = *(result + v9);
          if (v11 >= 0x7F)
          {
            LOBYTE(v11) = 127;
          }

          v12 = v10[1];
          if (v12 >= 0x7F)
          {
            LOBYTE(v12) = 127;
          }

          v13 = (a5 + v9);
          *v13 = v11;
          v13[1] = v12;
          v14 = v10[2];
          if (v14 >= 0x7F)
          {
            LOBYTE(v14) = 127;
          }

          v15 = v10[3];
          if (v15 >= 0x7F)
          {
            LOBYTE(v15) = 127;
          }

          v13[2] = v14;
          v13[3] = v15;
          v9 += 4;
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
          v16 = *(result + v9);
          if (v16 >= 0x7F)
          {
            LOBYTE(v16) = 127;
          }

          *(a5 + v9++) = v16;
        }

        while (v9 < v8);
      }

      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt16u8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 4);
    v10 = 2 * (a2 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(v12 - 2);
          if (v13 >= 0x7F)
          {
            LOBYTE(v13) = 127;
          }

          v14 = *(v12 - 1);
          if (v14 >= 0x7F)
          {
            LOBYTE(v14) = 127;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12;
          if (v16 >= 0x7F)
          {
            LOBYTE(v16) = 127;
          }

          v17 = v12[1];
          if (v17 >= 0x7F)
          {
            LOBYTE(v17) = 127;
          }

          v15[2] = v16;
          v15[3] = v17;
          v11 += 4;
          v12 += 4;
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
          v18 = *(result + 2 * v11);
          if (v18 >= 0x7F)
          {
            LOBYTE(v18) = 127;
          }

          *(a5 + v11++) = v18;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt16s8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 4);
    v10 = 2 * (a2 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(v12 - 2);
          if (v13 <= -128)
          {
            v13 = -128;
          }

          if (v13 >= 127)
          {
            LOBYTE(v13) = 127;
          }

          v14 = *(v12 - 1);
          if (v14 <= -128)
          {
            v14 = -128;
          }

          if (v14 >= 127)
          {
            LOBYTE(v14) = 127;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12;
          if (v16 <= -128)
          {
            v16 = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v17 = v12[1];
          if (v17 <= -128)
          {
            v17 = -128;
          }

          if (v17 >= 127)
          {
            LOBYTE(v17) = 127;
          }

          v15[2] = v16;
          v15[3] = v17;
          v11 += 4;
          v12 += 4;
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
          v18 = *(result + 2 * v11);
          if (v18 <= -128)
          {
            v18 = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          *(a5 + v11++) = v18;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32s8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 8);
    v10 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v14 = *(v12 - 2);
          v13 = *(v12 - 1);
          if (v14 <= -128)
          {
            v14 = -128;
          }

          if (v14 >= 127)
          {
            LOBYTE(v14) = 127;
          }

          if (v13 <= -128)
          {
            v13 = -128;
          }

          if (v13 >= 127)
          {
            LOBYTE(v13) = 127;
          }

          v15 = (a5 + v11);
          *v15 = v14;
          v15[1] = v13;
          v17 = *v12;
          v16 = v12[1];
          v12 += 4;
          if (v17 <= -128)
          {
            v17 = -128;
          }

          if (v17 >= 127)
          {
            LOBYTE(v17) = 127;
          }

          if (v16 <= -128)
          {
            v16 = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v15[2] = v17;
          v15[3] = v16;
          v11 += 4;
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
          v18 = *(result + 4 * v11);
          if (v18 <= -128)
          {
            v18 = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          *(a5 + v11++) = v18;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32f8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 8);
    v10 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = rint(*(v12 - 2));
          if (v13 <= -128)
          {
            LODWORD(v13) = -128;
          }

          if (v13 >= 127)
          {
            LOBYTE(v13) = 127;
          }

          v14 = rint(*(v12 - 1));
          if (v14 <= -128)
          {
            LODWORD(v14) = -128;
          }

          if (v14 >= 127)
          {
            LOBYTE(v14) = 127;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12;
          v17 = v12[1];
          v12 += 4;
          v18 = rint(v16);
          if (v18 <= -128)
          {
            LODWORD(v18) = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          v19 = rint(v17);
          if (v19 <= -128)
          {
            LODWORD(v19) = -128;
          }

          if (v19 >= 127)
          {
            LOBYTE(v19) = 127;
          }

          v15[2] = v18;
          v15[3] = v19;
          v11 += 4;
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
          v20 = rint(*(result + 4 * v11));
          if (v20 <= -128)
          {
            LODWORD(v20) = -128;
          }

          if (v20 >= 127)
          {
            LOBYTE(v20) = 127;
          }

          *(a5 + v11++) = v20;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt64f8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (result + 16);
    v10 = 8 * (a2 >> 3);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = rint(*(v12 - 2));
          if (v13 <= -128)
          {
            LODWORD(v13) = -128;
          }

          if (v13 >= 127)
          {
            LOBYTE(v13) = 127;
          }

          v14 = rint(*(v12 - 1));
          if (v14 <= -128)
          {
            LODWORD(v14) = -128;
          }

          if (v14 >= 127)
          {
            LOBYTE(v14) = 127;
          }

          v15 = (a5 + v11);
          *v15 = v13;
          v15[1] = v14;
          v16 = *v12;
          v17 = v12[1];
          v12 += 4;
          v18 = rint(v16);
          if (v18 <= -128)
          {
            LODWORD(v18) = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          v19 = rint(v17);
          if (v19 <= -128)
          {
            LODWORD(v19) = -128;
          }

          if (v19 >= 127)
          {
            LOBYTE(v19) = 127;
          }

          v15[2] = v18;
          v15[3] = v19;
          v11 += 4;
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
          v20 = rint(*(result + 8 * v11));
          if (v20 <= -128)
          {
            LODWORD(v20) = -128;
          }

          if (v20 >= 127)
          {
            LOBYTE(v20) = 127;
          }

          *(a5 + v11++) = v20;
        }

        while (v11 < v8);
      }

      a5 += a6;
      v9 = (v9 + v10);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8u16u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = (a5 + 4);
    v11 = 2 * (a6 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = *(result + v12 + 1);
          *(v13 - 2) = *(result + v12);
          *(v13 - 1) = v14;
          v15 = *(result + v12 + 3);
          *v13 = *(result + v12 + 2);
          v13[1] = v15;
          v12 += 4;
          v13 += 4;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          *(a5 + 2 * v12) = *(result + v12);
          ++v12;
        }

        while (v8 != v12);
      }

      result += a2;
      v10 = (v10 + v11);
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8s16u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = (a5 + 4);
    v11 = 2 * (a6 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = *(result + v12 + 1) & ~(*(result + v12 + 1) >> 31);
          *(v13 - 2) = *(result + v12) & ~(*(result + v12) >> 31);
          *(v13 - 1) = v14;
          v15 = *(result + v12 + 3) & ~(*(result + v12 + 3) >> 31);
          *v13 = *(result + v12 + 2) & ~(*(result + v12 + 2) >> 31);
          v13[1] = v15;
          v12 += 4;
          v13 += 4;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          *(a5 + 2 * v12) = *(result + v12) & ~(*(result + v12) >> 31);
          ++v12;
        }

        while (v8 != v12);
      }

      result += a2;
      v10 = (v10 + v11);
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

char *cv::cvt16u(char *__src, unint64_t a2, int a3, int a4, char *__dst, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = __src;
    v10 = 2 * *a7;
    v11 = 2 * (a2 >> 1);
    v12 = 2 * (a6 >> 1);
    do
    {
      --v7;
      __src = memcpy(__dst, v9, v10);
      v9 += v11;
      __dst += v12;
    }

    while (v7);
  }

  return __src;
}

uint64_t cv::cvt16s16u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = 2 * (a2 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v11 = 0;
        do
        {
          v13 = *(result + v12 + 2) & ~(*(result + v12 + 2) >> 31);
          v14 = (a5 + v12);
          *v14 = *(result + v12) & ~(*(result + v12) >> 15);
          v14[1] = v13;
          v15 = *(result + v12 + 6) & ~(*(result + v12 + 6) >> 31);
          v14[2] = *(result + v12 + 4) & ~(*(result + v12 + 4) >> 15);
          v14[3] = v15;
          v11 += 4;
          v12 += 8;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          *(a5 + 2 * v11) = *(result + 2 * v11) & ~(*(result + 2 * v11) >> 15);
          ++v11;
        }

        while (v8 != v11);
      }

      a5 += 2 * (a6 >> 1);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t *cv::cvt32s16u(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10.i64[0] = 0xFFFF0000FFFFLL;
    v10.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a5;
        do
        {
          v14 = *v12++;
          *v13++ = vmovn_s32(vminq_s32(vmaxq_s32(v14, 0), v10));
          v11 += 4;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          v15 = result->i32[v11] & ~(result->i32[v11] >> 31);
          if (v15 >= 0xFFFF)
          {
            LOWORD(v15) = -1;
          }

          a5->i16[v11++] = v15;
        }

        while (v8 != v11);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + 4 * (a2 >> 2));
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x4_t *cv::cvt32f16u(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10.i64[0] = 0xFFFF0000FFFFLL;
    v10.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a5;
        do
        {
          v14 = *v12++;
          *v13++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v14.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v14)))), 0), v10));
          v11 += 4;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          v15 = rint(result->f32[v11]);
          v16 = v15 & ~(v15 >> 31);
          if (v16 >= 0xFFFF)
          {
            LOWORD(v16) = -1;
          }

          a5->i16[v11++] = v16;
        }

        while (v8 != v11);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + 4 * (a2 >> 2));
      --v7;
    }

    while (v7);
  }

  return result;
}

float64x2_t *cv::cvt64f16u(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10.i64[0] = 0xFFFF0000FFFFLL;
    v10.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a5;
        do
        {
          v14 = *v12;
          v15 = v12[1];
          v12 += 2;
          *v13++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v14)), vcvtq_s64_f64(vrndxq_f64(v15))), 0), v10));
          v11 += 4;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          v16 = rint(result->f64[v11]);
          v17 = v16 & ~(v16 >> 31);
          if (v17 >= 0xFFFF)
          {
            LOWORD(v17) = -1;
          }

          a5->i16[v11++] = v17;
        }

        while (v8 != v11);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + 8 * (a2 >> 3));
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8u16s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = (a5 + 4);
    v11 = 2 * (a6 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = *(result + v12 + 1);
          *(v13 - 2) = *(result + v12);
          *(v13 - 1) = v14;
          v15 = *(result + v12 + 3);
          *v13 = *(result + v12 + 2);
          v13[1] = v15;
          v12 += 4;
          v13 += 4;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          *(a5 + 2 * v12) = *(result + v12);
          ++v12;
        }

        while (v8 != v12);
      }

      result += a2;
      v10 = (v10 + v11);
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8s16s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = (a5 + 4);
    v11 = 2 * (a6 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = *(result + v12 + 1);
          *(v13 - 2) = *(result + v12);
          *(v13 - 1) = v14;
          v15 = *(result + v12 + 3);
          *v13 = *(result + v12 + 2);
          v13[1] = v15;
          v12 += 4;
          v13 += 4;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          *(a5 + 2 * v12) = *(result + v12);
          ++v12;
        }

        while (v8 != v12);
      }

      result += a2;
      v10 = (v10 + v11);
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt16u16s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = 2 * (a2 >> 1);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v11 = 0;
        do
        {
          v13 = (result + v12);
          v14 = *(result + v12);
          if (v14 >= 0x7FFF)
          {
            LOWORD(v14) = 0x7FFF;
          }

          v15 = v13[1];
          if (v15 >= 0x7FFF)
          {
            LOWORD(v15) = 0x7FFF;
          }

          v16 = (a5 + v12);
          *v16 = v14;
          v16[1] = v15;
          v17 = v13[2];
          if (v17 >= 0x7FFF)
          {
            LOWORD(v17) = 0x7FFF;
          }

          v18 = v13[3];
          if (v18 >= 0x7FFF)
          {
            LOWORD(v18) = 0x7FFF;
          }

          v16[2] = v17;
          v16[3] = v18;
          v11 += 4;
          v12 += 8;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          v19 = *(result + 2 * v11);
          if (v19 >= 0x7FFF)
          {
            LOWORD(v19) = 0x7FFF;
          }

          *(a5 + 2 * v11++) = v19;
        }

        while (v8 != v11);
      }

      a5 += 2 * (a6 >> 1);
      result += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

int32x4_t *cv::cvt32s16s(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a5;
        do
        {
          v14 = *v12++;
          *v13++ = vqmovn_s32(v14);
          v11 += 4;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          v15 = result->i32[v11];
          if (v15 <= -32768)
          {
            v15 = -32768;
          }

          if (v15 >= 0x7FFF)
          {
            LOWORD(v15) = 0x7FFF;
          }

          a5->i16[v11++] = v15;
        }

        while (v8 != v11);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32f16s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7)
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
          v10 = rint(*(result + 4 * i));
          if (v10 <= -32768)
          {
            LODWORD(v10) = -32768;
          }

          if (v10 >= 0x7FFF)
          {
            LOWORD(v10) = 0x7FFF;
          }

          *(a5 + 2 * i) = v10;
        }
      }

      a5 += 2 * (a6 >> 1);
      result += 4 * (a2 >> 2);
      --v7;
    }

    while (v7);
  }

  return result;
}

float64x2_t *cv::cvt64f16s(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = 8 * (a2 >> 3);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a5;
        do
        {
          v14 = *v12;
          v15 = v12[1];
          v12 += 2;
          *v13++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(v14)), vcvtq_s64_f64(vrndxq_f64(v15))));
          v11 += 4;
        }

        while (v11 <= v8 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v9)
      {
        do
        {
          v16 = rint(result->f64[v11]);
          if (v16 <= -32768)
          {
            LODWORD(v16) = -32768;
          }

          if (v16 >= 0x7FFF)
          {
            LOWORD(v16) = 0x7FFF;
          }

          a5->i16[v11++] = v16;
        }

        while (v8 != v11);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + v10);
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8u32s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (a5 + 8);
    v10 = 4 * (a6 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(result + v11 + 1);
          *(v12 - 2) = *(result + v11);
          *(v12 - 1) = v13;
          v14 = *(result + v11 + 3);
          *v12 = *(result + v11 + 2);
          v12[1] = v14;
          v12 += 4;
          v11 += 4;
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
          *(a5 + 4 * v11) = *(result + v11);
          ++v11;
        }

        while (v11 < v8);
      }

      result += a2;
      v9 = (v9 + v10);
      a5 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8s32s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (a5 + 8);
    v10 = 4 * (a6 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v12 = v9;
        do
        {
          v13 = *(result + v11 + 1);
          *(v12 - 2) = *(result + v11);
          *(v12 - 1) = v13;
          v14 = *(result + v11 + 3);
          *v12 = *(result + v11 + 2);
          v12[1] = v14;
          v12 += 4;
          v11 += 4;
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
          *(a5 + 4 * v11) = *(result + v11);
          ++v11;
        }

        while (v11 < v8);
      }

      result += a2;
      v9 = (v9 + v10);
      a5 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint16x4_t *cv::cvt16u32s(uint16x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, uint32x4_t *a5, unint64_t a6, int *a7)
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
        v10 = result;
        v11 = a5;
        do
        {
          v12 = *v10++;
          *v11++ = vmovl_u16(v12);
          v9 += 4;
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
          a5->i32[v9] = result->u16[v9];
          ++v9;
        }

        while (v9 < v8);
      }

      a5 = (a5 + 4 * (a6 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v7;
    }

    while (v7);
  }

  return result;
}

int16x4_t *cv::cvt16s32s(int16x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int32x4_t *a5, unint64_t a6, int *a7)
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
        v10 = result;
        v11 = a5;
        do
        {
          v12 = *v10++;
          *v11++ = vmovl_s16(v12);
          v9 += 4;
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
          a5->i32[v9] = result->i16[v9];
          ++v9;
        }

        while (v9 < v8);
      }

      a5 = (a5 + 4 * (a6 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v7;
    }

    while (v7);
  }

  return result;
}

char *cv::cvt32s(char *__src, unint64_t a2, int a3, int a4, char *__dst, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = __src;
    v10 = 4 * *a7;
    v11 = 4 * (a2 >> 2);
    v12 = 4 * (a6 >> 2);
    do
    {
      --v7;
      __src = memcpy(__dst, v9, v10);
      v9 += v11;
      __dst += v12;
    }

    while (v7);
  }

  return __src;
}

uint64_t cv::cvt32f32s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v10 = 0;
        do
        {
          v12 = rint(*(result + v11 + 4));
          v13 = rint(*(result + v11 + 8));
          v14 = (a5 + v11);
          v15 = rint(*(result + v11 + 12));
          *v14 = rint(*(result + v11));
          v14[1] = v12;
          v14[2] = v13;
          v14[3] = v15;
          v10 += 4;
          v11 += 16;
        }

        while (v10 <= v8 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < v8)
      {
        do
        {
          *(a5 + 4 * v10) = rint(*(result + 4 * v10));
          ++v10;
        }

        while (v10 < v8);
      }

      a5 += 4 * (a6 >> 2);
      result += v9;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt64f32s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = (a5 + 8);
    v10 = 4 * (a6 >> 2);
    v11 = (result + 16);
    v12 = 8 * (a2 >> 3);
    do
    {
      if (v8 >= 4)
      {
        v13 = 0;
        v14 = v11;
        v15 = v9;
        do
        {
          v16 = rint(*(v14 - 2));
          v17 = rint(*(v14 - 1));
          v18 = *v14;
          v19 = v14[1];
          v14 += 4;
          *(v15 - 2) = v16;
          *(v15 - 1) = v17;
          *v15 = rint(v18);
          v15[1] = rint(v19);
          v15 += 4;
          v13 += 4;
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
          *(a5 + 4 * v13) = rint(*(result + 8 * v13));
          ++v13;
        }

        while (v13 < v8);
      }

      v9 = (v9 + v10);
      v11 = (v11 + v12);
      a5 += v10;
      result += v12;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8u32f(uint64_t result, uint64_t a2, float a3, float a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, int *a9)
{
  v9 = a9[1];
  if (v9)
  {
    v10 = *a9;
    v11 = *a9;
    v12 = (a7 + 8);
    v13 = 4 * (a8 >> 2);
    do
    {
      if (v10 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          LOBYTE(a3) = *(result + v14);
          v16 = LODWORD(a3);
          LOBYTE(a4) = *(result + v14 + 1);
          v17 = LODWORD(a4);
          *(v15 - 2) = v16;
          *(v15 - 1) = v17;
          LOBYTE(v16) = *(result + v14 + 2);
          a3 = LODWORD(v16);
          LOBYTE(v17) = *(result + v14 + 3);
          a4 = LODWORD(v17);
          *v15 = a3;
          v15[1] = a4;
          v15 += 4;
          v14 += 4;
        }

        while (v14 <= v10 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v11)
      {
        do
        {
          LOBYTE(a3) = *(result + v14);
          a3 = LODWORD(a3);
          *(a7 + 4 * v14++) = a3;
        }

        while (v10 != v14);
      }

      result += a2;
      v12 = (v12 + v13);
      a7 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t cv::cvt8s32f(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = (a5 + 8);
    v11 = 4 * (a6 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = *(result + v12 + 1);
          *(v13 - 2) = *(result + v12);
          *(v13 - 1) = v14;
          v15 = *(result + v12 + 3);
          *v13 = *(result + v12 + 2);
          v13[1] = v15;
          v13 += 4;
          v12 += 4;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          *(a5 + 4 * v12) = *(result + v12);
          ++v12;
        }

        while (v8 != v12);
      }

      result += a2;
      v10 = (v10 + v11);
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint16x4_t *cv::cvt16u32f(uint16x4_t *result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, __n128 *a6, unint64_t a7, int *a8)
{
  v8 = a8[1];
  if (v8)
  {
    v9 = *a8;
    v10 = *a8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a6;
        do
        {
          v14 = *v12++;
          a3 = vcvtq_f32_u32(vmovl_u16(v14));
          *v13++ = a3;
          v11 += 4;
        }

        while (v11 <= v9 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v10)
      {
        do
        {
          a3.n128_u16[0] = result->u16[v11];
          a3.n128_f32[0] = a3.n128_u32[0];
          a6->n128_u32[v11++] = a3.n128_u32[0];
        }

        while (v9 != v11);
      }

      a6 = (a6 + 4 * (a7 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v8;
    }

    while (v8);
  }

  return result;
}

int16x4_t *cv::cvt16s32f(int16x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 0;
        v11 = result;
        v12 = a5;
        do
        {
          v13 = *v11++;
          *v12++ = vcvtq_f32_s32(vmovl_s16(v13));
          v10 += 4;
        }

        while (v10 <= v8 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < v9)
      {
        do
        {
          a5->f32[v10] = result->i16[v10];
          ++v10;
        }

        while (v8 != v10);
      }

      a5 = (a5 + 4 * (a6 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32s32f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v11 = 0;
        v10 = 0;
        do
        {
          *(a5 + v11) = vcvtq_f32_s32(*(result + v11));
          v10 += 4;
          v11 += 16;
        }

        while (v10 <= v8 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < v9)
      {
        do
        {
          *(a5 + 4 * v10) = *(result + 4 * v10);
          ++v10;
        }

        while (v8 != v10);
      }

      a5 += 4 * (a6 >> 2);
      result += 4 * (a2 >> 2);
      --v7;
    }

    while (v7);
  }

  return result;
}

float64x2_t *cv::cvt64f32f(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 0;
        v11 = result;
        v12 = a5;
        do
        {
          v14 = *v11;
          v13 = v11[1];
          v11 += 2;
          *v12++ = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v13);
          v10 += 4;
        }

        while (v10 <= v8 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < v9)
      {
        do
        {
          v15 = result->f64[v10];
          a5->f32[v10++] = v15;
        }

        while (v8 != v10);
      }

      a5 = (a5 + 4 * (a6 >> 2));
      result = (result + 8 * (a2 >> 3));
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt8u64f(uint64_t result, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, int *a9)
{
  v9 = a9[1];
  if (v9)
  {
    v10 = *a9;
    v11 = *a9;
    v12 = (a7 + 16);
    v13 = 8 * (a8 >> 3);
    do
    {
      if (v10 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          LOBYTE(a3) = *(result + v14);
          v16 = *&a3;
          LOBYTE(a4) = *(result + v14 + 1);
          v17 = *&a4;
          *(v15 - 2) = v16;
          *(v15 - 1) = v17;
          LOBYTE(v16) = *(result + v14 + 2);
          a3 = *&v16;
          LOBYTE(v17) = *(result + v14 + 3);
          a4 = *&v17;
          *v15 = a3;
          v15[1] = a4;
          v15 += 4;
          v14 += 4;
        }

        while (v14 <= v10 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v11)
      {
        do
        {
          LOBYTE(a3) = *(result + v14);
          a3 = *&a3;
          *(a7 + 8 * v14++) = a3;
        }

        while (v10 != v14);
      }

      result += a2;
      v12 = (v12 + v13);
      a7 += v13;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t cv::cvt8s64f(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = (a5 + 16);
    v11 = 8 * (a6 >> 3);
    do
    {
      if (v8 >= 4)
      {
        v12 = 0;
        v13 = v10;
        do
        {
          v14 = *(result + v12 + 1);
          *(v13 - 2) = *(result + v12);
          *(v13 - 1) = v14;
          v15 = *(result + v12 + 3);
          *v13 = *(result + v12 + 2);
          v13[1] = v15;
          v13 += 4;
          v12 += 4;
        }

        while (v12 <= v8 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          *(a5 + 8 * v12) = *(result + v12);
          ++v12;
        }

        while (v8 != v12);
      }

      result += a2;
      v10 = (v10 + v11);
      a5 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint16x4_t *cv::cvt16u64f(uint16x4_t *result, unint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, int *a8)
{
  v8 = a8[1];
  if (v8)
  {
    v9 = *a8;
    v10 = *a8;
    do
    {
      if (v9 >= 4)
      {
        v11 = 0;
        v12 = result;
        v13 = a6;
        do
        {
          v14 = *v12++;
          v15 = vmovl_u16(v14);
          v16.i64[0] = v15.u32[0];
          v16.i64[1] = v15.u32[1];
          v17 = vcvtq_f64_u64(v16);
          v16.i64[0] = v15.u32[2];
          v16.i64[1] = v15.u32[3];
          a3 = vcvtq_f64_u64(v16);
          *v13 = v17;
          *(v13 + 16) = a3;
          v13 += 32;
          v11 += 4;
        }

        while (v11 <= v9 - 4);
        v11 = v11;
      }

      else
      {
        v11 = 0;
      }

      if (v11 < v10)
      {
        do
        {
          a3.n128_u16[0] = result->u16[v11];
          a3.n128_f64[0] = a3.n128_u64[0];
          *(a6 + 8 * v11++) = a3.n128_u64[0];
        }

        while (v9 != v11);
      }

      a6 += 8 * (a7 >> 3);
      result = (result + 2 * (a2 >> 1));
      --v8;
    }

    while (v8);
  }

  return result;
}

int16x4_t *cv::cvt16s64f(int16x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v10 = 0;
        v11 = result;
        v12 = a5;
        do
        {
          v13 = *v11++;
          v14 = vmovl_s16(v13);
          v15.i64[0] = v14.i32[0];
          v15.i64[1] = v14.i32[1];
          v16 = vcvtq_f64_s64(v15);
          v15.i64[0] = v14.i32[2];
          v15.i64[1] = v14.i32[3];
          *v12 = v16;
          v12[1] = vcvtq_f64_s64(v15);
          v12 += 2;
          v10 += 4;
        }

        while (v10 <= v8 - 4);
        v10 = v10;
      }

      else
      {
        v10 = 0;
      }

      if (v10 < v9)
      {
        do
        {
          a5->f64[v10] = result->i16[v10];
          ++v10;
        }

        while (v8 != v10);
      }

      a5 = (a5 + 8 * (a6 >> 3));
      result = (result + 2 * (a2 >> 1));
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::cvt32s64f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a5 + 1;
    v11 = 8 * (a6 >> 3);
    v12 = (result + 8);
    v13 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v14 = 0;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = *(v15 - 1);
          v18.i64[0] = v17;
          v18.i64[1] = SHIDWORD(v17);
          v19 = vcvtq_f64_s64(v18);
          v18.i64[0] = *v15;
          v18.i64[1] = HIDWORD(*v15);
          v16[-1] = v19;
          *v16 = vcvtq_f64_s64(v18);
          v14 += 4;
          v16 += 2;
          v15 += 2;
        }

        while (v14 <= v8 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          a5->f64[v14] = *(result + 4 * v14);
          ++v14;
        }

        while (v8 != v14);
      }

      v10 = (v10 + v11);
      v12 = (v12 + v13);
      a5 = (a5 + v11);
      result += v13;
      --v7;
    }

    while (v7);
  }

  return result;
}

float32x2_t *cv::cvt32f64f(float32x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    v9 = *a7;
    v10 = a5 + 1;
    v11 = 8 * (a6 >> 3);
    v12 = result + 1;
    v13 = 4 * (a2 >> 2);
    do
    {
      if (v8 >= 4)
      {
        v14 = 0;
        v15 = v12;
        v16 = v10;
        do
        {
          v17 = vcvtq_f64_f32(*v15);
          v16[-1] = vcvtq_f64_f32(v15[-1]);
          *v16 = v17;
          v14 += 4;
          v16 += 2;
          v15 += 2;
        }

        while (v14 <= v8 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          a5->f64[v14] = result->f32[v14];
          ++v14;
        }

        while (v8 != v14);
      }

      v10 = (v10 + v11);
      v12 = (v12 + v13);
      a5 = (a5 + v11);
      result = (result + v13);
      --v7;
    }

    while (v7);
  }

  return result;
}

char *cv::cvt64s(char *__src, unint64_t a2, int a3, int a4, char *__dst, unint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v9 = __src;
    v10 = 8 * *a7;
    v11 = 8 * (a2 >> 3);
    v12 = 8 * (a6 >> 3);
    do
    {
      --v7;
      __src = memcpy(__dst, v9, v10);
      v9 += v11;
      __dst += v12;
    }

    while (v7);
  }

  return __src;
}

uint64_t cv::cvtScale8u(uint64_t result, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a11;
    v14 = a11[1];
    do
    {
      if (v12 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = result + v15;
          LOBYTE(a5) = *(result + v15);
          v17 = rint((v14 + (LODWORD(a5) * v13)));
          v18 = v17 & ~(v17 >> 31);
          LOBYTE(v17) = *(result + v15 + 1);
          v19 = rint((v14 + (LODWORD(v17) * v13)));
          v20 = v19 & ~(v19 >> 31);
          if (v18 >= 255)
          {
            LOBYTE(v18) = -1;
          }

          if (v20 >= 255)
          {
            LOBYTE(v20) = -1;
          }

          v21 = (a8 + v15);
          *v21 = v18;
          v21[1] = v20;
          LOBYTE(v19) = *(v16 + 2);
          v22 = rint((v14 + (LODWORD(v19) * v13)));
          v23 = v22 & ~(v22 >> 31);
          LOBYTE(v22) = *(v16 + 3);
          a5 = rint((v14 + (LODWORD(v22) * v13)));
          v24 = a5 & ~(a5 >> 31);
          if (v23 >= 255)
          {
            LOBYTE(v23) = -1;
          }

          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v21[2] = v23;
          v21[3] = v24;
          v15 += 4;
        }

        while (v15 <= v12 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v12)
      {
        do
        {
          LOBYTE(a5) = *(result + v15);
          a5 = rint((v14 + (LODWORD(a5) * v13)));
          v25 = a5 & ~(a5 >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          *(a8 + v15++) = v25;
        }

        while (v15 < v12);
      }

      result += a2;
      a8 += a9;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale8s8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    do
    {
      if (v9 >= 4)
      {
        v12 = 0;
        do
        {
          v13 = result + v12;
          v14 = rint((v11 + (*(result + v12) * v10)));
          v15 = v14 & ~(v14 >> 31);
          if (v15 >= 255)
          {
            LOBYTE(v15) = -1;
          }

          v16 = rint((v11 + (*(result + v12 + 1) * v10)));
          v17 = v16 & ~(v16 >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          v18 = (a5 + v12);
          *v18 = v15;
          v18[1] = v17;
          v19 = rint((v11 + (*(v13 + 2) * v10)));
          v20 = v19 & ~(v19 >> 31);
          v21 = rint((v11 + (*(v13 + 3) * v10)));
          v22 = v21 & ~(v21 >> 31);
          if (v20 >= 255)
          {
            LOBYTE(v20) = -1;
          }

          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v18[2] = v20;
          v18[3] = v22;
          v12 += 4;
        }

        while (v12 <= v9 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          v23 = rint((v11 + (*(result + v12) * v10)));
          v24 = v23 & ~(v23 >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          *(a5 + v12++) = v24;
        }

        while (v12 < v9);
      }

      result += a2;
      a5 += a6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale16u8u(uint64_t result, unint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a11;
    v14 = a11[1];
    v15 = (result + 4);
    v16 = 2 * (a2 >> 1);
    do
    {
      if (v12 >= 4)
      {
        v17 = 0;
        v18 = v15;
        do
        {
          LOWORD(a5) = *(v18 - 2);
          v19 = rint((v14 + (LODWORD(a5) * v13)));
          v20 = v19 & ~(v19 >> 31);
          if (v20 >= 255)
          {
            LOBYTE(v20) = -1;
          }

          LOWORD(v19) = *(v18 - 1);
          v21 = rint((v14 + (LODWORD(v19) * v13)));
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v23 = (a8 + v17);
          *v23 = v20;
          v23[1] = v22;
          LOWORD(v21) = *v18;
          v24 = rint((v14 + (LODWORD(v21) * v13)));
          v25 = v24 & ~(v24 >> 31);
          if (v25 >= 255)
          {
            LOBYTE(v25) = -1;
          }

          LOWORD(v24) = v18[1];
          a5 = rint((v14 + (LODWORD(v24) * v13)));
          v26 = a5 & ~(a5 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          v23[2] = v25;
          v23[3] = v26;
          v17 += 4;
          v18 += 4;
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
          LOWORD(a5) = *(result + 2 * v17);
          a5 = rint((v14 + (LODWORD(a5) * v13)));
          v27 = a5 & ~(a5 >> 31);
          if (v27 >= 255)
          {
            LOBYTE(v27) = -1;
          }

          *(a8 + v17++) = v27;
        }

        while (v17 < v12);
      }

      a8 += a9;
      v15 = (v15 + v16);
      result += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale16s8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (result + 4);
    v13 = 2 * (a2 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(v15 - 2) * v10)));
          v17 = v16 & ~(v16 >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          v18 = rint((v11 + (*(v15 - 1) * v10)));
          v19 = v18 & ~(v18 >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v20 = (a5 + v14);
          *v20 = v17;
          v20[1] = v19;
          v21 = rint((v11 + (*v15 * v10)));
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= 255)
          {
            LOBYTE(v22) = -1;
          }

          v23 = rint((v11 + (v15[1] * v10)));
          v24 = v23 & ~(v23 >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v20[2] = v22;
          v20[3] = v24;
          v14 += 4;
          v15 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          v25 = rint((v11 + (*(result + 2 * v14) * v10)));
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          *(a5 + v14++) = v26;
        }

        while (v14 < v9);
      }

      a5 += a6;
      v12 = (v12 + v13);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32s8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (result + 8);
    v13 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(v15 - 2) * v10)));
          v17 = v16 & ~(v16 >> 31);
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          v18 = rint((v11 + (*(v15 - 1) * v10)));
          v19 = v18 & ~(v18 >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v20 = (a5 + v14);
          *v20 = v17;
          v20[1] = v19;
          v21 = *v15;
          v22 = v15[1];
          v15 += 4;
          v23 = rint((v11 + (v21 * v10)));
          v24 = v23 & ~(v23 >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v25 = rint((v11 + (v22 * v10)));
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          v20[2] = v24;
          v20[3] = v26;
          v14 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          v27 = rint((v11 + (*(result + 4 * v14) * v10)));
          v28 = v27 & ~(v27 >> 31);
          if (v28 >= 255)
          {
            LOBYTE(v28) = -1;
          }

          *(a5 + v14++) = v28;
        }

        while (v14 < v9);
      }

      a5 += a6;
      v12 = (v12 + v13);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32f8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (result + 8);
    v13 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(v15 - 2) * v10)));
          v17 = v16 & ~(v16 >> 31);
          v18 = rint((v11 + (*(v15 - 1) * v10)));
          if (v17 >= 255)
          {
            LOBYTE(v17) = -1;
          }

          v19 = v18 & ~(v18 >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v20 = (a5 + v14);
          *v20 = v17;
          v20[1] = v19;
          v21 = *v15;
          v22 = v15[1];
          v15 += 4;
          v23 = rint((v11 + (v21 * v10)));
          v24 = v23 & ~(v23 >> 31);
          if (v24 >= 255)
          {
            LOBYTE(v24) = -1;
          }

          v25 = rint((v11 + (v22 * v10)));
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          v20[2] = v24;
          v20[3] = v26;
          v14 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          v27 = rint((v11 + (*(result + 4 * v14) * v10)));
          v28 = v27 & ~(v27 >> 31);
          if (v28 >= 255)
          {
            LOBYTE(v28) = -1;
          }

          *(a5 + v14++) = v28;
        }

        while (v14 < v9);
      }

      a5 += a6;
      v12 = (v12 + v13);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale64f8u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = a8[1];
    v11 = *a8;
    v12 = v11;
    v13 = v10;
    v14 = (result + 16);
    v15 = 8 * (a2 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          v18 = rint(v13 + *(v17 - 2) * v12);
          v19 = v18 & ~(v18 >> 31);
          if (v19 >= 255)
          {
            LOBYTE(v19) = -1;
          }

          v20 = rint(v13 + *(v17 - 1) * v12);
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 255)
          {
            LOBYTE(v21) = -1;
          }

          v22 = (a5 + v16);
          *v22 = v19;
          v22[1] = v21;
          v23 = *v17;
          v24 = v17[1];
          v17 += 4;
          v25 = rint(v13 + v23 * v12);
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 255)
          {
            LOBYTE(v26) = -1;
          }

          v27 = rint(v13 + v24 * v12);
          v28 = v27 & ~(v27 >> 31);
          if (v28 >= 255)
          {
            LOBYTE(v28) = -1;
          }

          v22[2] = v26;
          v22[3] = v28;
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v9)
      {
        do
        {
          v29 = rint(v13 + *(result + 8 * v16) * v12);
          v30 = v29 & ~(v29 >> 31);
          if (v30 >= 255)
          {
            LOBYTE(v30) = -1;
          }

          *(a5 + v16++) = v30;
        }

        while (v16 < v9);
      }

      a5 += a6;
      v14 = (v14 + v15);
      result += v15;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale8u8s(uint64_t result, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a11;
    v14 = a11[1];
    do
    {
      if (v12 >= 4)
      {
        v15 = 0;
        do
        {
          v16 = (result + v15);
          LOBYTE(a5) = *(result + v15);
          v17 = rint((v14 + (LODWORD(a5) * v13)));
          v18 = v17;
          if (v17 <= -128)
          {
            LODWORD(v18) = -128;
          }

          LOBYTE(v17) = v16[1];
          v19 = (v14 + (LODWORD(v17) * v13));
          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          v20 = rint(v19);
          v21 = v20;
          if (v20 <= -128)
          {
            LODWORD(v21) = -128;
          }

          if (v21 >= 127)
          {
            LOBYTE(v21) = 127;
          }

          v22 = (a8 + v15);
          *v22 = v18;
          v22[1] = v21;
          LOBYTE(v20) = v16[2];
          v23 = rint((v14 + (LODWORD(v20) * v13)));
          v24 = v23;
          if (v23 <= -128)
          {
            LODWORD(v24) = -128;
          }

          LOBYTE(v23) = v16[3];
          *&v23 = v14 + (LODWORD(v23) * v13);
          if (v24 >= 127)
          {
            v25 = 127;
          }

          else
          {
            v25 = v24;
          }

          a5 = rint(*&v23);
          v26 = a5;
          if (a5 <= -128)
          {
            LODWORD(v26) = -128;
          }

          if (v26 >= 127)
          {
            LOBYTE(v26) = 127;
          }

          v22[2] = v25;
          v22[3] = v26;
          v15 += 4;
        }

        while (v15 <= v12 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v12)
      {
        do
        {
          LOBYTE(a5) = *(result + v15);
          a5 = rint((v14 + (LODWORD(a5) * v13)));
          v27 = a5;
          if (a5 <= -128)
          {
            LODWORD(v27) = -128;
          }

          if (v27 >= 127)
          {
            LOBYTE(v27) = 127;
          }

          *(a8 + v15++) = v27;
        }

        while (v15 < v12);
      }

      result += a2;
      a8 += a9;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale8s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    do
    {
      if (v9 >= 4)
      {
        v12 = 0;
        do
        {
          v13 = result + v12;
          v14 = rint((v11 + (*(result + v12) * v10)));
          if (v14 <= -128)
          {
            LODWORD(v14) = -128;
          }

          v15 = rint((v11 + (*(result + v12 + 1) * v10)));
          if (v14 >= 127)
          {
            LOBYTE(v14) = 127;
          }

          if (v15 <= -128)
          {
            LODWORD(v15) = -128;
          }

          v16 = (a5 + v12);
          if (v15 >= 127)
          {
            LOBYTE(v15) = 127;
          }

          *v16 = v14;
          v16[1] = v15;
          v17 = rint((v11 + (*(v13 + 2) * v10)));
          if (v17 <= -128)
          {
            LODWORD(v17) = -128;
          }

          v18 = v11 + (*(v13 + 3) * v10);
          if (v17 >= 127)
          {
            v19 = 127;
          }

          else
          {
            v19 = v17;
          }

          v20 = rint(v18);
          if (v20 <= -128)
          {
            LODWORD(v20) = -128;
          }

          if (v20 >= 127)
          {
            LOBYTE(v20) = 127;
          }

          v16[2] = v19;
          v16[3] = v20;
          v12 += 4;
        }

        while (v12 <= v9 - 4);
        v12 = v12;
      }

      else
      {
        v12 = 0;
      }

      if (v12 < v9)
      {
        do
        {
          v21 = rint((v11 + (*(result + v12) * v10)));
          if (v21 <= -128)
          {
            LODWORD(v21) = -128;
          }

          if (v21 >= 127)
          {
            LOBYTE(v21) = 127;
          }

          *(a5 + v12++) = v21;
        }

        while (v12 < v9);
      }

      result += a2;
      a5 += a6;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale16u8s(uint64_t result, unint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a11;
    v14 = a11[1];
    v15 = (result + 4);
    v16 = 2 * (a2 >> 1);
    do
    {
      if (v12 >= 4)
      {
        v17 = 0;
        v18 = v15;
        do
        {
          LOWORD(a5) = *(v18 - 2);
          v19 = rint((v14 + (LODWORD(a5) * v13)));
          v20 = v19;
          if (v19 <= -128)
          {
            LODWORD(v20) = -128;
          }

          if (v20 >= 127)
          {
            LOBYTE(v20) = 127;
          }

          LOWORD(v19) = *(v18 - 1);
          v21 = rint((v14 + (LODWORD(v19) * v13)));
          v22 = v21;
          if (v21 <= -128)
          {
            LODWORD(v22) = -128;
          }

          if (v22 >= 127)
          {
            LOBYTE(v22) = 127;
          }

          v23 = (a8 + v17);
          *v23 = v20;
          v23[1] = v22;
          LOWORD(v21) = *v18;
          v24 = rint((v14 + (LODWORD(v21) * v13)));
          v25 = v24;
          if (v24 <= -128)
          {
            LODWORD(v25) = -128;
          }

          if (v25 >= 127)
          {
            LOBYTE(v25) = 127;
          }

          LOWORD(v24) = v18[1];
          a5 = rint((v14 + (LODWORD(v24) * v13)));
          v26 = a5;
          if (a5 <= -128)
          {
            LODWORD(v26) = -128;
          }

          if (v26 >= 127)
          {
            LOBYTE(v26) = 127;
          }

          v23[2] = v25;
          v23[3] = v26;
          v17 += 4;
          v18 += 4;
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
          LOWORD(a5) = *(result + 2 * v17);
          a5 = rint((v14 + (LODWORD(a5) * v13)));
          v27 = a5;
          if (a5 <= -128)
          {
            LODWORD(v27) = -128;
          }

          if (v27 >= 127)
          {
            LOBYTE(v27) = 127;
          }

          *(a8 + v17++) = v27;
        }

        while (v17 < v12);
      }

      a8 += a9;
      v15 = (v15 + v16);
      result += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale16s8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (result + 4);
    v13 = 2 * (a2 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(v15 - 2) * v10)));
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v17 = rint((v11 + (*(v15 - 1) * v10)));
          if (v17 <= -128)
          {
            LODWORD(v17) = -128;
          }

          if (v17 >= 127)
          {
            LOBYTE(v17) = 127;
          }

          v18 = (a5 + v14);
          *v18 = v16;
          v18[1] = v17;
          v19 = rint((v11 + (*v15 * v10)));
          if (v19 <= -128)
          {
            LODWORD(v19) = -128;
          }

          if (v19 >= 127)
          {
            LOBYTE(v19) = 127;
          }

          v20 = rint((v11 + (v15[1] * v10)));
          if (v20 <= -128)
          {
            LODWORD(v20) = -128;
          }

          if (v20 >= 127)
          {
            LOBYTE(v20) = 127;
          }

          v18[2] = v19;
          v18[3] = v20;
          v14 += 4;
          v15 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          v21 = rint((v11 + (*(result + 2 * v14) * v10)));
          if (v21 <= -128)
          {
            LODWORD(v21) = -128;
          }

          if (v21 >= 127)
          {
            LOBYTE(v21) = 127;
          }

          *(a5 + v14++) = v21;
        }

        while (v14 < v9);
      }

      a5 += a6;
      v12 = (v12 + v13);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32s8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (result + 8);
    v13 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(v15 - 2) * v10)));
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v17 = rint((v11 + (*(v15 - 1) * v10)));
          if (v17 <= -128)
          {
            LODWORD(v17) = -128;
          }

          if (v17 >= 127)
          {
            LOBYTE(v17) = 127;
          }

          v18 = (a5 + v14);
          *v18 = v16;
          v18[1] = v17;
          v19 = *v15;
          v20 = v15[1];
          v15 += 4;
          v21 = rint((v11 + (v19 * v10)));
          if (v21 <= -128)
          {
            LODWORD(v21) = -128;
          }

          if (v21 >= 127)
          {
            LOBYTE(v21) = 127;
          }

          v22 = rint((v11 + (v20 * v10)));
          if (v22 <= -128)
          {
            LODWORD(v22) = -128;
          }

          if (v22 >= 127)
          {
            LOBYTE(v22) = 127;
          }

          v18[2] = v21;
          v18[3] = v22;
          v14 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          v23 = rint((v11 + (*(result + 4 * v14) * v10)));
          if (v23 <= -128)
          {
            LODWORD(v23) = -128;
          }

          if (v23 >= 127)
          {
            LOBYTE(v23) = 127;
          }

          *(a5 + v14++) = v23;
        }

        while (v14 < v9);
      }

      a5 += a6;
      v12 = (v12 + v13);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32f8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (result + 8);
    v13 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(v15 - 2) * v10)));
          if (v16 <= -128)
          {
            LODWORD(v16) = -128;
          }

          if (v16 >= 127)
          {
            LOBYTE(v16) = 127;
          }

          v17 = rint((v11 + (*(v15 - 1) * v10)));
          if (v17 <= -128)
          {
            LODWORD(v17) = -128;
          }

          if (v17 >= 127)
          {
            LOBYTE(v17) = 127;
          }

          v18 = (a5 + v14);
          *v18 = v16;
          v18[1] = v17;
          v19 = *v15;
          v20 = v15[1];
          v15 += 4;
          v21 = rint((v11 + (v19 * v10)));
          if (v21 <= -128)
          {
            LODWORD(v21) = -128;
          }

          if (v21 >= 127)
          {
            LOBYTE(v21) = 127;
          }

          v22 = rint((v11 + (v20 * v10)));
          if (v22 <= -128)
          {
            LODWORD(v22) = -128;
          }

          if (v22 >= 127)
          {
            LOBYTE(v22) = 127;
          }

          v18[2] = v21;
          v18[3] = v22;
          v14 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          v23 = rint((v11 + (*(result + 4 * v14) * v10)));
          if (v23 <= -128)
          {
            LODWORD(v23) = -128;
          }

          if (v23 >= 127)
          {
            LOBYTE(v23) = 127;
          }

          *(a5 + v14++) = v23;
        }

        while (v14 < v9);
      }

      a5 += a6;
      v12 = (v12 + v13);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale64f8s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = a8[1];
    v11 = *a8;
    v12 = v11;
    v13 = v10;
    v14 = (result + 16);
    v15 = 8 * (a2 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = v14;
        do
        {
          v18 = rint(v13 + *(v17 - 2) * v12);
          if (v18 <= -128)
          {
            LODWORD(v18) = -128;
          }

          if (v18 >= 127)
          {
            LOBYTE(v18) = 127;
          }

          v19 = rint(v13 + *(v17 - 1) * v12);
          if (v19 <= -128)
          {
            LODWORD(v19) = -128;
          }

          if (v19 >= 127)
          {
            LOBYTE(v19) = 127;
          }

          v20 = (a5 + v16);
          *v20 = v18;
          v20[1] = v19;
          v21 = *v17;
          v22 = v17[1];
          v17 += 4;
          v23 = rint(v13 + v21 * v12);
          if (v23 <= -128)
          {
            LODWORD(v23) = -128;
          }

          if (v23 >= 127)
          {
            LOBYTE(v23) = 127;
          }

          v24 = rint(v13 + v22 * v12);
          if (v24 <= -128)
          {
            LODWORD(v24) = -128;
          }

          if (v24 >= 127)
          {
            LOBYTE(v24) = 127;
          }

          v20[2] = v23;
          v20[3] = v24;
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v9)
      {
        do
        {
          v25 = rint(v13 + *(result + 8 * v16) * v12);
          if (v25 <= -128)
          {
            LODWORD(v25) = -128;
          }

          if (v25 >= 127)
          {
            LOBYTE(v25) = 127;
          }

          *(a5 + v16++) = v25;
        }

        while (v16 < v9);
      }

      a5 += a6;
      v14 = (v14 + v15);
      result += v15;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale8u16u(uint64_t result, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a10;
    v14 = *a11;
    v15 = a11[1];
    v16 = (a8 + 4);
    v17 = 2 * (a9 >> 1);
    do
    {
      if (v12 >= 4)
      {
        v18 = 0;
        v19 = v16;
        do
        {
          v20 = (result + v18);
          LOBYTE(a5) = *(result + v18);
          v21 = rint((v15 + (LODWORD(a5) * v14)));
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= 0xFFFF)
          {
            LOWORD(v22) = -1;
          }

          LOBYTE(v21) = v20[1];
          v23 = rint((v15 + (LODWORD(v21) * v14)));
          v24 = v23 & ~(v23 >> 31);
          if (v24 >= 0xFFFF)
          {
            LOWORD(v24) = -1;
          }

          *(v19 - 2) = v22;
          *(v19 - 1) = v24;
          LOBYTE(v23) = v20[2];
          v25 = rint((v15 + (LODWORD(v23) * v14)));
          v26 = v25 & ~(v25 >> 31);
          if (v26 >= 0xFFFF)
          {
            LOWORD(v26) = -1;
          }

          LOBYTE(v25) = v20[3];
          a5 = rint((v15 + (LODWORD(v25) * v14)));
          v27 = a5 & ~(a5 >> 31);
          if (v27 >= 0xFFFF)
          {
            LOWORD(v27) = -1;
          }

          *v19 = v26;
          v19[1] = v27;
          v18 += 4;
          v19 += 4;
        }

        while (v18 <= v12 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v13)
      {
        do
        {
          LOBYTE(a5) = *(result + v18);
          a5 = rint((v15 + (LODWORD(a5) * v14)));
          v28 = a5 & ~(a5 >> 31);
          if (v28 >= 0xFFFF)
          {
            LOWORD(v28) = -1;
          }

          *(a8 + 2 * v18++) = v28;
        }

        while (v12 != v18);
      }

      result += a2;
      v16 = (v16 + v17);
      a8 += v17;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale8s16u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = (a5 + 4);
    v14 = 2 * (a6 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v17 = (result + v15);
          v18 = rint((v12 + (*(result + v15) * v11)));
          v19 = v18 & ~(v18 >> 31);
          if (v19 >= 0xFFFF)
          {
            LOWORD(v19) = -1;
          }

          v20 = rint((v12 + (v17[1] * v11)));
          v21 = v20 & ~(v20 >> 31);
          if (v21 >= 0xFFFF)
          {
            LOWORD(v21) = -1;
          }

          *(v16 - 2) = v19;
          *(v16 - 1) = v21;
          v22 = rint((v12 + (v17[2] * v11)));
          v23 = v22 & ~(v22 >> 31);
          if (v23 >= 0xFFFF)
          {
            LOWORD(v23) = -1;
          }

          v24 = rint((v12 + (v17[3] * v11)));
          v25 = v24 & ~(v24 >> 31);
          if (v25 >= 0xFFFF)
          {
            LOWORD(v25) = -1;
          }

          *v16 = v23;
          v16[1] = v25;
          v15 += 4;
          v16 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          v26 = rint((v12 + (*(result + v15) * v11)));
          v27 = v26 & ~(v26 >> 31);
          if (v27 >= 0xFFFF)
          {
            LOWORD(v27) = -1;
          }

          *(a5 + 2 * v15++) = v27;
        }

        while (v9 != v15);
      }

      result += a2;
      v13 = (v13 + v14);
      a5 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale16u(uint64_t result, unint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a10;
    v14 = *a11;
    v15 = a11[1];
    v16 = 2 * (a2 >> 1);
    do
    {
      if (v12 >= 4)
      {
        v18 = 0;
        v17 = 0;
        do
        {
          v19 = result + v18;
          LOWORD(a5) = *(result + v18);
          v20 = rint((v15 + (LODWORD(a5) * v14)));
          v21 = v20 & ~(v20 >> 31);
          LOWORD(v20) = *(result + v18 + 2);
          v22 = rint((v15 + (LODWORD(v20) * v14)));
          v23 = v22 & ~(v22 >> 31);
          if (v21 >= 0xFFFF)
          {
            LOWORD(v21) = -1;
          }

          if (v23 >= 0xFFFF)
          {
            LOWORD(v23) = -1;
          }

          v24 = (a8 + v18);
          *v24 = v21;
          v24[1] = v23;
          LOWORD(v22) = *(v19 + 4);
          v25 = rint((v15 + (LODWORD(v22) * v14)));
          v26 = v25 & ~(v25 >> 31);
          LOWORD(v25) = *(v19 + 6);
          v27 = v15 + (LODWORD(v25) * v14);
          if (v26 >= 0xFFFF)
          {
            v28 = -1;
          }

          else
          {
            v28 = v26;
          }

          a5 = rint(v27);
          v29 = a5 & ~(a5 >> 31);
          if (v29 >= 0xFFFF)
          {
            LOWORD(v29) = -1;
          }

          v24[2] = v28;
          v24[3] = v29;
          v17 += 4;
          v18 += 8;
        }

        while (v17 <= v12 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v13)
      {
        do
        {
          LOWORD(a5) = *(result + 2 * v17);
          a5 = rint((v15 + (LODWORD(a5) * v14)));
          v30 = a5 & ~(a5 >> 31);
          if (v30 >= 0xFFFF)
          {
            LOWORD(v30) = -1;
          }

          *(a8 + 2 * v17++) = v30;
        }

        while (v12 != v17);
      }

      a8 += 2 * (a9 >> 1);
      result += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale16s16u(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = 2 * (a2 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v14 = 0;
        do
        {
          v16 = result + v15;
          v17 = rint((v12 + (*(result + v15) * v11)));
          v18 = v17 & ~(v17 >> 31);
          if (v18 >= 0xFFFF)
          {
            LOWORD(v18) = -1;
          }

          v19 = rint((v12 + (*(result + v15 + 2) * v11)));
          v20 = v19 & ~(v19 >> 31);
          if (v20 >= 0xFFFF)
          {
            LOWORD(v20) = -1;
          }

          v21 = (a5 + v15);
          *v21 = v18;
          v21[1] = v20;
          v22 = rint((v12 + (*(v16 + 4) * v11)));
          v23 = v22 & ~(v22 >> 31);
          v24 = v12 + (*(v16 + 6) * v11);
          if (v23 >= 0xFFFF)
          {
            v25 = -1;
          }

          else
          {
            v25 = v23;
          }

          v26 = rint(v24);
          v27 = v26 & ~(v26 >> 31);
          if (v27 >= 0xFFFF)
          {
            LOWORD(v27) = -1;
          }

          v21[2] = v25;
          v21[3] = v27;
          v14 += 4;
          v15 += 8;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v10)
      {
        do
        {
          v28 = rint((v12 + (*(result + 2 * v14) * v11)));
          v29 = v28 & ~(v28 >> 31);
          if (v29 >= 0xFFFF)
          {
            LOWORD(v29) = -1;
          }

          *(a5 + 2 * v14++) = v29;
        }

        while (v9 != v14);
      }

      a5 += 2 * (a6 >> 1);
      result += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

int32x4_t *cv::cvtScale32s16u(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    *v11.i32 = *a8;
    *&v12 = v12;
    v13 = vdupq_lane_s32(v11, 0);
    v14 = vdupq_lane_s32(*&v12, 0);
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = result;
        v18 = a5;
        do
        {
          v19 = *v17++;
          v20 = vmlaq_f32(v14, v13, vcvtq_f32_s32(v19));
          *v18++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v20.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v20)))), 0), v15));
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v10)
      {
        do
        {
          v21 = rint((*&v12 + (result->i32[v16] * *v11.i32)));
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= 0xFFFF)
          {
            LOWORD(v22) = -1;
          }

          a5->i16[v16++] = v22;
        }

        while (v9 != v16);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + 4 * (a2 >> 2));
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x4_t *cv::cvtScale32f16u(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    *v11.i32 = *a8;
    *&v12 = v12;
    v13 = vdupq_lane_s32(v11, 0);
    v14 = vdupq_lane_s32(*&v12, 0);
    v15.i64[0] = 0xFFFF0000FFFFLL;
    v15.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = result;
        v18 = a5;
        do
        {
          v19 = *v17++;
          v20 = vmlaq_f32(v14, v13, v19);
          *v18++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v20.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v20)))), 0), v15));
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v10)
      {
        do
        {
          v21 = rint((*&v12 + (result->f32[v16] * *v11.i32)));
          v22 = v21 & ~(v21 >> 31);
          if (v22 >= 0xFFFF)
          {
            LOWORD(v22) = -1;
          }

          a5->i16[v16++] = v22;
        }

        while (v9 != v16);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + 4 * (a2 >> 2));
      --v8;
    }

    while (v8);
  }

  return result;
}

float64x2_t *cv::cvtScale64f16u(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = a8[1];
    v12 = *a8;
    *&v13 = v12;
    *&v14 = v11;
    v15 = vdupq_lane_s64(v13, 0);
    v16 = vdupq_lane_s64(v14, 0);
    v17.i64[0] = 0xFFFF0000FFFFLL;
    v17.i64[1] = 0xFFFF0000FFFFLL;
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v19 = result;
        v20 = a5;
        do
        {
          v22 = *v19;
          v21 = v19[1];
          v19 += 2;
          *v20++ = vmovn_s32(vminq_s32(vmaxq_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v16, v15, v22))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v16, v15, v21)))), 0), v17));
          v18 += 4;
        }

        while (v18 <= v9 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v10)
      {
        do
        {
          v23 = rint(*&v14 + result->f64[v18] * *&v13);
          v24 = v23 & ~(v23 >> 31);
          if (v24 >= 0xFFFF)
          {
            LOWORD(v24) = -1;
          }

          a5->i16[v18++] = v24;
        }

        while (v9 != v18);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + 8 * (a2 >> 3));
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale8u16s(uint64_t result, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a10;
    v14 = *a11;
    v15 = a11[1];
    v16 = (a8 + 4);
    v17 = 2 * (a9 >> 1);
    do
    {
      if (v12 >= 4)
      {
        v18 = 0;
        v19 = v16;
        do
        {
          v20 = (result + v18);
          LOBYTE(a5) = *(result + v18);
          v21 = rint((v15 + (LODWORD(a5) * v14)));
          v22 = v21;
          if (v21 <= -32768)
          {
            LODWORD(v22) = -32768;
          }

          if (v22 >= 0x7FFF)
          {
            LOWORD(v22) = 0x7FFF;
          }

          LOBYTE(v21) = v20[1];
          v23 = rint((v15 + (LODWORD(v21) * v14)));
          v24 = v23;
          if (v23 <= -32768)
          {
            LODWORD(v24) = -32768;
          }

          if (v24 >= 0x7FFF)
          {
            LOWORD(v24) = 0x7FFF;
          }

          *(v19 - 2) = v22;
          *(v19 - 1) = v24;
          LOBYTE(v23) = v20[2];
          v25 = rint((v15 + (LODWORD(v23) * v14)));
          v26 = v25;
          if (v25 <= -32768)
          {
            LODWORD(v26) = -32768;
          }

          if (v26 >= 0x7FFF)
          {
            LOWORD(v26) = 0x7FFF;
          }

          LOBYTE(v25) = v20[3];
          a5 = rint((v15 + (LODWORD(v25) * v14)));
          v27 = a5;
          if (a5 <= -32768)
          {
            LODWORD(v27) = -32768;
          }

          if (v27 >= 0x7FFF)
          {
            LOWORD(v27) = 0x7FFF;
          }

          *v19 = v26;
          v19[1] = v27;
          v18 += 4;
          v19 += 4;
        }

        while (v18 <= v12 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v13)
      {
        do
        {
          LOBYTE(a5) = *(result + v18);
          a5 = rint((v15 + (LODWORD(a5) * v14)));
          v28 = a5;
          if (a5 <= -32768)
          {
            LODWORD(v28) = -32768;
          }

          if (v28 >= 0x7FFF)
          {
            LOWORD(v28) = 0x7FFF;
          }

          *(a8 + 2 * v18++) = v28;
        }

        while (v12 != v18);
      }

      result += a2;
      v16 = (v16 + v17);
      a8 += v17;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale8s16s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = (a5 + 4);
    v14 = 2 * (a6 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v17 = (result + v15);
          v18 = rint((v12 + (*(result + v15) * v11)));
          if (v18 <= -32768)
          {
            LODWORD(v18) = -32768;
          }

          v19 = rint((v12 + (v17[1] * v11)));
          if (v18 >= 0x7FFF)
          {
            LOWORD(v18) = 0x7FFF;
          }

          if (v19 <= -32768)
          {
            LODWORD(v19) = -32768;
          }

          if (v19 >= 0x7FFF)
          {
            LOWORD(v19) = 0x7FFF;
          }

          *(v16 - 2) = v18;
          *(v16 - 1) = v19;
          v20 = rint((v12 + (v17[2] * v11)));
          if (v20 <= -32768)
          {
            LODWORD(v20) = -32768;
          }

          if (v20 >= 0x7FFF)
          {
            LOWORD(v20) = 0x7FFF;
          }

          v21 = rint((v12 + (v17[3] * v11)));
          if (v21 <= -32768)
          {
            LODWORD(v21) = -32768;
          }

          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          *v16 = v20;
          v16[1] = v21;
          v15 += 4;
          v16 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          v22 = rint((v12 + (*(result + v15) * v11)));
          if (v22 <= -32768)
          {
            LODWORD(v22) = -32768;
          }

          if (v22 >= 0x7FFF)
          {
            LOWORD(v22) = 0x7FFF;
          }

          *(a5 + 2 * v15++) = v22;
        }

        while (v9 != v15);
      }

      result += a2;
      v13 = (v13 + v14);
      a5 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale16u16s(uint64_t result, unint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a10;
    v14 = *a11;
    v15 = a11[1];
    v16 = 2 * (a9 >> 1);
    v17 = 2 * (a2 >> 1);
    do
    {
      if (v12 >= 4)
      {
        v19 = 0;
        v18 = 0;
        do
        {
          v20 = (result + v19);
          LOWORD(a5) = *(result + v19);
          v21 = rint((v15 + (LODWORD(a5) * v14)));
          v22 = v21;
          if (v21 <= -32768)
          {
            LODWORD(v22) = -32768;
          }

          LOWORD(v21) = v20[1];
          v23 = rint((v15 + (LODWORD(v21) * v14)));
          if (v22 >= 0x7FFF)
          {
            LOWORD(v22) = 0x7FFF;
          }

          v24 = v23;
          if (v23 <= -32768)
          {
            LODWORD(v24) = -32768;
          }

          if (v24 >= 0x7FFF)
          {
            LOWORD(v24) = 0x7FFF;
          }

          v25 = (a8 + v19);
          *v25 = v22;
          v25[1] = v24;
          LOWORD(v23) = v20[2];
          v26 = rint((v15 + (LODWORD(v23) * v14)));
          v27 = v26;
          if (v26 <= -32768)
          {
            LODWORD(v27) = -32768;
          }

          LOWORD(v26) = v20[3];
          v28 = (v15 + (LODWORD(v26) * v14));
          if (v27 >= 0x7FFF)
          {
            v29 = 0x7FFF;
          }

          else
          {
            v29 = v27;
          }

          a5 = rint(v28);
          v30 = a5;
          if (a5 <= -32768)
          {
            LODWORD(v30) = -32768;
          }

          if (v30 >= 0x7FFF)
          {
            LOWORD(v30) = 0x7FFF;
          }

          v25[2] = v29;
          v25[3] = v30;
          v18 += 4;
          v19 += 8;
        }

        while (v18 <= v12 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v13)
      {
        do
        {
          LOWORD(a5) = *(result + 2 * v18);
          a5 = rint((v15 + (LODWORD(a5) * v14)));
          v31 = a5;
          if (a5 <= -32768)
          {
            LODWORD(v31) = -32768;
          }

          if (v31 >= 0x7FFF)
          {
            LOWORD(v31) = 0x7FFF;
          }

          *(a8 + 2 * v18++) = v31;
        }

        while (v12 != v18);
      }

      a8 += v16;
      result += v17;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale16s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a8;
    v10 = *a7;
    v11 = a8[1];
    do
    {
      if (v10 >= 1)
      {
        v12 = 0;
        do
        {
          v13 = rint((v11 + (*(result + v12) * v9)));
          if (v13 <= -32768)
          {
            LODWORD(v13) = -32768;
          }

          if (v13 >= 0x7FFF)
          {
            LOWORD(v13) = 0x7FFF;
          }

          *(a5 + v12) = v13;
          v12 += 2;
        }

        while (2 * v10 != v12);
      }

      a5 += 2 * (a6 >> 1);
      result += 2 * (a2 >> 1);
      --v8;
    }

    while (v8);
  }

  return result;
}

int32x4_t *cv::cvtScale32s16s(int32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    *v11.i32 = *a8;
    *&v12 = v12;
    v13 = vdupq_lane_s32(v11, 0);
    v14 = vdupq_lane_s32(*&v12, 0);
    v15 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = result;
        v18 = a5;
        do
        {
          v19 = *v17++;
          v20 = vmlaq_f32(v14, v13, vcvtq_f32_s32(v19));
          *v18++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v20.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v20)))));
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v10)
      {
        do
        {
          v21 = rint((*&v12 + (result->i32[v16] * *v11.i32)));
          if (v21 <= -32768)
          {
            LODWORD(v21) = -32768;
          }

          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          a5->i16[v16++] = v21;
        }

        while (v9 != v16);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + v15);
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x4_t *cv::cvtScale32f16s(float32x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    *v11.i32 = *a8;
    *&v12 = v12;
    v13 = vdupq_lane_s32(v11, 0);
    v14 = vdupq_lane_s32(*&v12, 0);
    v15 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = result;
        v18 = a5;
        do
        {
          v19 = *v17++;
          v20 = vmlaq_f32(v14, v13, v19);
          *v18++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v20.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v20)))));
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v10)
      {
        do
        {
          v21 = rint((*&v12 + (result->f32[v16] * *v11.i32)));
          if (v21 <= -32768)
          {
            LODWORD(v21) = -32768;
          }

          if (v21 >= 0x7FFF)
          {
            LOWORD(v21) = 0x7FFF;
          }

          a5->i16[v16++] = v21;
        }

        while (v9 != v16);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + v15);
      --v8;
    }

    while (v8);
  }

  return result;
}

float64x2_t *cv::cvtScale64f16s(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, int16x4_t *a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = a8[1];
    v12 = *a8;
    *&v13 = v12;
    *&v14 = v11;
    v15 = vdupq_lane_s64(v13, 0);
    v16 = vdupq_lane_s64(v14, 0);
    v17 = 8 * (a2 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v18 = 0;
        v19 = result;
        v20 = a5;
        do
        {
          v22 = *v19;
          v21 = v19[1];
          v19 += 2;
          *v20++ = vqmovn_s32(vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v16, v15, v22))), vcvtq_s64_f64(vrndxq_f64(vmlaq_f64(v16, v15, v21)))));
          v18 += 4;
        }

        while (v18 <= v9 - 4);
        v18 = v18;
      }

      else
      {
        v18 = 0;
      }

      if (v18 < v10)
      {
        do
        {
          v23 = rint(*&v14 + result->f64[v18] * *&v13);
          if (v23 <= -32768)
          {
            LODWORD(v23) = -32768;
          }

          if (v23 >= 0x7FFF)
          {
            LOWORD(v23) = 0x7FFF;
          }

          a5->i16[v18++] = v23;
        }

        while (v9 != v18);
      }

      a5 = (a5 + 2 * (a6 >> 1));
      result = (result + v17);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale8u32s(uint64_t result, uint64_t a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, int *a10, double *a11)
{
  v11 = a10[1];
  if (v11)
  {
    v12 = *a10;
    v13 = *a11;
    v14 = a11[1];
    v15 = (a8 + 8);
    v16 = 4 * (a9 >> 2);
    do
    {
      if (v12 >= 4)
      {
        v17 = 0;
        v18 = v15;
        do
        {
          LOBYTE(a5) = *(result + v17);
          v19 = rint((v14 + (LODWORD(a5) * v13)));
          v20 = v19;
          LOBYTE(v19) = *(result + v17 + 1);
          v21 = rint((v14 + (LODWORD(v19) * v13)));
          *(v18 - 2) = v20;
          *(v18 - 1) = v21;
          LOBYTE(v21) = *(result + v17 + 2);
          v22 = rint((v14 + (LODWORD(v21) * v13)));
          v23 = v22;
          LOBYTE(v22) = *(result + v17 + 3);
          a5 = rint((v14 + (LODWORD(v22) * v13)));
          *v18 = v23;
          v18[1] = a5;
          v18 += 4;
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
          LOBYTE(a5) = *(result + v17);
          a5 = rint((v14 + (LODWORD(a5) * v13)));
          *(a8 + 4 * v17++) = a5;
        }

        while (v17 < v12);
      }

      result += a2;
      v15 = (v15 + v16);
      a8 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t cv::cvtScale8s32s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (a5 + 8);
    v13 = 4 * (a6 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v15 = v12;
        do
        {
          v16 = rint((v11 + (*(result + v14 + 1) * v10)));
          *(v15 - 2) = rint((v11 + (*(result + v14) * v10)));
          *(v15 - 1) = v16;
          v17 = rint((v11 + (*(result + v14 + 3) * v10)));
          *v15 = rint((v11 + (*(result + v14 + 2) * v10)));
          v15[1] = v17;
          v15 += 4;
          v14 += 4;
        }

        while (v14 <= v9 - 4);
        v14 = v14;
      }

      else
      {
        v14 = 0;
      }

      if (v14 < v9)
      {
        do
        {
          *(a5 + 4 * v14) = rint((v11 + (*(result + v14) * v10)));
          ++v14;
        }

        while (v14 < v9);
      }

      result += a2;
      v12 = (v12 + v13);
      a5 += v13;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint16x4_t *cv::cvtScale16u32s(uint16x4_t *result, unint64_t a2, double a3, double a4, double a5, double a6, __n128 a7, uint64_t a8, uint64_t a9, __n128 *a10, unint64_t a11, int *a12, uint64_t a13)
{
  v13 = a12[1];
  if (v13)
  {
    v14 = *a12;
    v15 = *a13;
    v16 = *(a13 + 8);
    *v15.i32 = *a13;
    *&v16 = v16;
    v17 = vdupq_lane_s32(v15, 0);
    v18 = vdupq_lane_s32(*&v16, 0);
    do
    {
      if (v14 >= 4)
      {
        v19 = 0;
        v20 = result;
        v21 = a10;
        do
        {
          v22 = *v20++;
          v23 = vmlaq_f32(v18, v17, vcvtq_f32_u32(vmovl_u16(v22)));
          a7 = vuzp1q_s32(vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(*v23.f32))), vcvtq_s64_f64(vrndxq_f64(vcvt_hight_f64_f32(v23))));
          *v21++ = a7;
          v19 += 4;
        }

        while (v19 <= v14 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v14)
      {
        do
        {
          a7.n128_u16[0] = result->u16[v19];
          a7.n128_f64[0] = rint((*&v16 + (a7.n128_u32[0] * *v15.i32)));
          a10->n128_u32[v19++] = a7.n128_f64[0];
        }

        while (v19 < v14);
      }

      a10 = (a10 + 4 * (a11 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t cv::cvtScale16s32s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unsigned int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a8;
    v10 = a8[1];
    v11 = *a7;
    do
    {
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          *(a5 + 4 * i) = rint((v10 + (*(result + 2 * i) * v9)));
        }
      }

      a5 += 4 * (a6 >> 2);
      result += 2 * (a2 >> 1);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v13 = 0;
        do
        {
          v15 = rint(v11 + *(result + v14 + 4) * v10);
          v16 = (a5 + v14);
          *v16 = rint(v11 + *(result + v14) * v10);
          v16[1] = v15;
          v17 = rint(v11 + *(result + v14 + 12) * v10);
          v16[2] = rint(v11 + *(result + v14 + 8) * v10);
          v16[3] = v17;
          v13 += 4;
          v14 += 16;
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
          *(a5 + 4 * v13) = rint(v11 + *(result + 4 * v13) * v10);
          ++v13;
        }

        while (v13 < v9);
      }

      a5 += 4 * (a6 >> 2);
      result += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32f32s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v14 = 0;
        v13 = 0;
        do
        {
          v15 = rint((v11 + (*(result + v14 + 4) * v10)));
          v16 = rint((v11 + (*(result + v14 + 8) * v10)));
          v17 = rint((v11 + (*(result + v14 + 12) * v10)));
          v18 = (a5 + v14);
          *v18 = rint((v11 + (*(result + v14) * v10)));
          v18[1] = v15;
          v18[2] = v16;
          v18[3] = v17;
          v13 += 4;
          v14 += 16;
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
          *(a5 + 4 * v13) = rint((v11 + (*(result + 4 * v13) * v10)));
          ++v13;
        }

        while (v13 < v9);
      }

      a5 += 4 * (a6 >> 2);
      result += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale64f32s(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a8;
    v11 = a8[1];
    v12 = (a5 + 8);
    v13 = 4 * (a6 >> 2);
    v14 = (result + 16);
    v15 = 8 * (a2 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v17 = v14;
        v18 = v12;
        do
        {
          v19 = rint(v11 + *(v17 - 2) * v10);
          v20 = rint(v11 + *(v17 - 1) * v10);
          v21 = *v17;
          v22 = v17[1];
          v17 += 4;
          *(v18 - 2) = v19;
          *(v18 - 1) = v20;
          *v18 = rint(v11 + v21 * v10);
          v18[1] = rint(v11 + v22 * v10);
          v18 += 4;
          v16 += 4;
        }

        while (v16 <= v9 - 4);
        v16 = v16;
      }

      else
      {
        v16 = 0;
      }

      if (v16 < v9)
      {
        do
        {
          *(a5 + 4 * v16) = rint(v11 + *(result + 8 * v16) * v10);
          ++v16;
        }

        while (v16 < v9);
      }

      v12 = (v12 + v13);
      v14 = (v14 + v15);
      a5 += v13;
      result += v15;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale8u32f(uint64_t result, uint64_t a2, double a3, double a4, float a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int *a11, double *a12)
{
  v12 = a11[1];
  if (v12)
  {
    v13 = *a11;
    v14 = *a11;
    v15 = *a12;
    v16 = a12[1];
    v17 = (a9 + 8);
    v18 = 4 * (a10 >> 2);
    do
    {
      if (v13 >= 4)
      {
        v19 = 0;
        v20 = v17;
        do
        {
          LOBYTE(a5) = *(result + v19);
          *&v21 = v16 + (LODWORD(a5) * v15);
          LOBYTE(a6) = *(result + v19 + 1);
          *&v22 = v16 + (LODWORD(a6) * v15);
          *(v20 - 2) = *&v21;
          *(v20 - 1) = *&v22;
          LOBYTE(v21) = *(result + v19 + 2);
          a5 = v16 + (v21 * v15);
          LOBYTE(v22) = *(result + v19 + 3);
          a6 = v16 + (v22 * v15);
          *v20 = a5;
          v20[1] = a6;
          v20 += 4;
          v19 += 4;
        }

        while (v19 <= v13 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v14)
      {
        do
        {
          LOBYTE(a5) = *(result + v19);
          a5 = v16 + (LODWORD(a5) * v15);
          *(a9 + 4 * v19++) = a5;
        }

        while (v13 != v19);
      }

      result += a2;
      v17 = (v17 + v18);
      a9 += v18;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::cvtScale8s32f(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = (a5 + 8);
    v14 = 4 * (a6 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v17 = v12 + (*(result + v15 + 1) * v11);
          *(v16 - 2) = v12 + (*(result + v15) * v11);
          *(v16 - 1) = v17;
          v18 = v12 + (*(result + v15 + 3) * v11);
          *v16 = v12 + (*(result + v15 + 2) * v11);
          v16[1] = v18;
          v16 += 4;
          v15 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          *(a5 + 4 * v15) = v12 + (*(result + v15) * v11);
          ++v15;
        }

        while (v9 != v15);
      }

      result += a2;
      v13 = (v13 + v14);
      a5 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint16x4_t *cv::cvtScale16u32f(uint16x4_t *result, unint64_t a2, double a3, double a4, double a5, double a6, float32x4_t a7, uint64_t a8, uint64_t a9, float32x4_t *a10, unint64_t a11, int *a12, uint64_t a13)
{
  v13 = a12[1];
  if (v13)
  {
    v14 = *a12;
    v15 = *a12;
    v16 = *a13;
    v17 = *(a13 + 8);
    *v16.i32 = *a13;
    *&v17 = v17;
    v18 = vdupq_lane_s32(v16, 0);
    v19 = vdupq_lane_s32(*&v17, 0);
    do
    {
      if (v14 >= 4)
      {
        v20 = 0;
        v21 = result;
        v22 = a10;
        do
        {
          v23 = *v21++;
          a7 = vcvtq_f32_u32(vmovl_u16(v23));
          *v22++ = vmlaq_f32(v19, v18, a7);
          v20 += 4;
        }

        while (v20 <= v14 - 4);
        v20 = v20;
      }

      else
      {
        v20 = 0;
      }

      if (v20 < v15)
      {
        do
        {
          a7.i16[0] = result->i16[v20];
          a7.f32[0] = *&v17 + (a7.u32[0] * *v16.i32);
          a10->i32[v20++] = a7.i32[0];
        }

        while (v14 != v20);
      }

      a10 = (a10 + 4 * (a11 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v13;
    }

    while (v13);
  }

  return result;
}

int16x4_t *cv::cvtScale16s32f(int16x4_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    *v11.i32 = *a8;
    *&v12 = v12;
    v13 = vdupq_lane_s32(v11, 0);
    v14 = vdupq_lane_s32(*&v12, 0);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v16 = result;
        v17 = a5;
        do
        {
          v18 = *v16++;
          *v17++ = vmlaq_f32(v14, v13, vcvtq_f32_s32(vmovl_s16(v18)));
          v15 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          a5->f32[v15] = *&v12 + (result->i16[v15] * *v11.i32);
          ++v15;
        }

        while (v9 != v15);
      }

      a5 = (a5 + 4 * (a6 >> 2));
      result = (result + 2 * (a2 >> 1));
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32s32f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = vdupq_lane_s64(*a8, 0);
    v14 = vdupq_lane_s64(v12, 0);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v15 = 0;
        do
        {
          v17 = *(result + v16);
          v18.i64[0] = v17;
          v18.i64[1] = SDWORD1(v17);
          v19 = vcvtq_f64_s64(v18);
          v18.i64[0] = SDWORD2(v17);
          v18.i64[1] = SHIDWORD(v17);
          *(a5 + v16) = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v14, v13, v19)), vmlaq_f64(v14, v13, vcvtq_f64_s64(v18)));
          v15 += 4;
          v16 += 16;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          v20 = *&v12 + *(result + 4 * v15) * v11;
          *(a5 + 4 * v15++) = v20;
        }

        while (v9 != v15);
      }

      a5 += 4 * (a6 >> 2);
      result += 4 * (a2 >> 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    *v11.i32 = *a8;
    *&v12 = v12;
    v13 = vdup_lane_s32(v11, 0);
    v14 = vdup_lane_s32(*&v12, 0);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v15 = 0;
        do
        {
          v17 = (a5 + v16);
          *v17 = vmla_f32(v14, v13, *(result + v16));
          v17[1] = vmla_f32(v14, v13, *(result + v16 + 8));
          v15 += 4;
          v16 += 16;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          *(a5 + 4 * v15) = *&v12 + (*(result + 4 * v15) * *v11.i32);
          ++v15;
        }

        while (v9 != v15);
      }

      a5 += 4 * (a6 >> 2);
      result += 4 * (a2 >> 2);
      --v8;
    }

    while (v8);
  }

  return result;
}

float64x2_t *cv::cvtScale64f32f(float64x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float32x4_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = vdupq_lane_s64(*a8, 0);
    v14 = vdupq_lane_s64(v12, 0);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v16 = result;
        v17 = a5;
        do
        {
          v18 = *v16;
          v19 = v16[1];
          v16 += 2;
          *v17++ = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_f64(v14, v13, v18)), vmlaq_f64(v14, v13, v19));
          v15 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          v20 = *&v12 + result->f64[v15] * v11;
          a5->f32[v15++] = v20;
        }

        while (v9 != v15);
      }

      a5 = (a5 + 4 * (a6 >> 2));
      result = (result + 8 * (a2 >> 3));
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale8u64f(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int *a11, double *a12)
{
  v12 = a11[1];
  if (v12)
  {
    v13 = *a11;
    v14 = *a11;
    v15 = *a12;
    v16 = a12[1];
    v17 = (a9 + 16);
    v18 = 8 * (a10 >> 3);
    do
    {
      if (v13 >= 4)
      {
        v19 = 0;
        v20 = v17;
        do
        {
          LOBYTE(a5) = *(result + v19);
          v21 = v16 + *&a5 * v15;
          LOBYTE(a6) = *(result + v19 + 1);
          v22 = v16 + *&a6 * v15;
          *(v20 - 2) = v21;
          *(v20 - 1) = v22;
          LOBYTE(v21) = *(result + v19 + 2);
          a5 = v16 + *&v21 * v15;
          LOBYTE(v22) = *(result + v19 + 3);
          a6 = v16 + *&v22 * v15;
          *v20 = a5;
          v20[1] = a6;
          v20 += 4;
          v19 += 4;
        }

        while (v19 <= v13 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v14)
      {
        do
        {
          LOBYTE(a5) = *(result + v19);
          a5 = v16 + *&a5 * v15;
          *(a9 + 8 * v19++) = a5;
        }

        while (v13 != v19);
      }

      result += a2;
      v17 = (v17 + v18);
      a9 += v18;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::cvtScale8s64f(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = (a5 + 16);
    v14 = 8 * (a6 >> 3);
    do
    {
      if (v9 >= 4)
      {
        v15 = 0;
        v16 = v13;
        do
        {
          v17 = v12 + *(result + v15 + 1) * v11;
          *(v16 - 2) = v12 + *(result + v15) * v11;
          *(v16 - 1) = v17;
          v18 = v12 + *(result + v15 + 3) * v11;
          *v16 = v12 + *(result + v15 + 2) * v11;
          v16[1] = v18;
          v16 += 4;
          v15 += 4;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          *(a5 + 8 * v15) = v12 + *(result + v15) * v11;
          ++v15;
        }

        while (v9 != v15);
      }

      result += a2;
      v13 = (v13 + v14);
      a5 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale16u64f(uint64_t result, unint64_t a2, double a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, int *a11, double *a12)
{
  v12 = a11[1];
  if (v12)
  {
    v13 = *a11;
    v14 = *a11;
    v15 = *a12;
    v16 = a12[1];
    v17 = (a9 + 16);
    v18 = 8 * (a10 >> 3);
    v19 = (result + 4);
    v20 = 2 * (a2 >> 1);
    do
    {
      if (v13 >= 4)
      {
        v21 = 0;
        v22 = v19;
        v23 = v17;
        do
        {
          LOWORD(a5) = *(v22 - 2);
          v24 = v16 + *&a5 * v15;
          LOWORD(a6) = *(v22 - 1);
          v25 = v16 + *&a6 * v15;
          *(v23 - 2) = v24;
          *(v23 - 1) = v25;
          LOWORD(v24) = *v22;
          a5 = v16 + *&v24 * v15;
          LOWORD(v25) = v22[1];
          a6 = v16 + *&v25 * v15;
          *v23 = a5;
          v23[1] = a6;
          v23 += 4;
          v21 += 4;
          v22 += 4;
        }

        while (v21 <= v13 - 4);
        v21 = v21;
      }

      else
      {
        v21 = 0;
      }

      if (v21 < v14)
      {
        do
        {
          LOWORD(a5) = *(result + 2 * v21);
          a5 = v16 + *&a5 * v15;
          *(a9 + 8 * v21++) = a5;
        }

        while (v13 != v21);
      }

      v17 = (v17 + v18);
      v19 = (v19 + v20);
      a9 += v18;
      result += v20;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t cv::cvtScale16s64f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, double *a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = a8[1];
    v13 = (a5 + 16);
    v14 = 8 * (a6 >> 3);
    v15 = (result + 4);
    v16 = 2 * (a2 >> 1);
    do
    {
      if (v9 >= 4)
      {
        v17 = 0;
        v18 = v15;
        v19 = v13;
        do
        {
          v20 = v12 + *(v18 - 1) * v11;
          v21 = *v18;
          *(v19 - 2) = v12 + *(v18 - 2) * v11;
          *(v19 - 1) = v20;
          v22 = v12 + v18[1] * v11;
          *v19 = v12 + v21 * v11;
          v19[1] = v22;
          v19 += 4;
          v17 += 4;
          v18 += 4;
        }

        while (v17 <= v9 - 4);
        v17 = v17;
      }

      else
      {
        v17 = 0;
      }

      if (v17 < v10)
      {
        do
        {
          *(a5 + 8 * v17) = v12 + *(result + 2 * v17) * v11;
          ++v17;
        }

        while (v9 != v17);
      }

      v13 = (v13 + v14);
      v15 = (v15 + v16);
      a5 += v14;
      result += v16;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale32s64f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = vdupq_lane_s64(*a8, 0);
    v14 = vdupq_lane_s64(v12, 0);
    v15 = a5 + 1;
    v16 = 8 * (a6 >> 3);
    v17 = (result + 8);
    v18 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v19 = 0;
        v20 = v17;
        v21 = v15;
        do
        {
          v22 = *(v20 - 1);
          v23.i64[0] = v22;
          v23.i64[1] = SHIDWORD(v22);
          v24 = vmlaq_f64(v14, v13, vcvtq_f64_s64(v23));
          v23.i64[0] = *v20;
          v23.i64[1] = HIDWORD(*v20);
          v21[-1] = v24;
          *v21 = vmlaq_f64(v14, v13, vcvtq_f64_s64(v23));
          v19 += 4;
          v21 += 2;
          v20 += 2;
        }

        while (v19 <= v9 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v10)
      {
        do
        {
          a5->f64[v19] = *&v12 + *(result + 4 * v19) * v11;
          ++v19;
        }

        while (v9 != v19);
      }

      v15 = (v15 + v16);
      v17 = (v17 + v18);
      a5 = (a5 + v16);
      result += v18;
      --v8;
    }

    while (v8);
  }

  return result;
}

float32x2_t *cv::cvtScale32f64f(float32x2_t *result, unint64_t a2, uint64_t a3, uint64_t a4, float64x2_t *a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = vdupq_lane_s64(*a8, 0);
    v14 = vdupq_lane_s64(v12, 0);
    v15 = a5 + 1;
    v16 = 8 * (a6 >> 3);
    v17 = result + 1;
    v18 = 4 * (a2 >> 2);
    do
    {
      if (v9 >= 4)
      {
        v19 = 0;
        v20 = v17;
        v21 = v15;
        do
        {
          v22 = vmlaq_f64(v14, v13, vcvtq_f64_f32(*v20));
          v21[-1] = vmlaq_f64(v14, v13, vcvtq_f64_f32(v20[-1]));
          *v21 = v22;
          v19 += 4;
          v21 += 2;
          v20 += 2;
        }

        while (v19 <= v9 - 4);
        v19 = v19;
      }

      else
      {
        v19 = 0;
      }

      if (v19 < v10)
      {
        do
        {
          a5->f64[v19] = *&v12 + result->f32[v19] * v11;
          ++v19;
        }

        while (v9 != v19);
      }

      v15 = (v15 + v16);
      v17 = (v17 + v18);
      a5 = (a5 + v16);
      result = (result + v18);
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t cv::cvtScale64f(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, int *a7, uint64_t a8)
{
  v8 = a7[1];
  if (v8)
  {
    v9 = *a7;
    v10 = *a7;
    v11 = *a8;
    v12 = *(a8 + 8);
    v13 = vdupq_lane_s64(*a8, 0);
    v14 = vdupq_lane_s64(v12, 0);
    do
    {
      if (v9 >= 4)
      {
        v16 = 0;
        v15 = 0;
        do
        {
          v17 = (a5 + v16);
          *v17 = vmlaq_f64(v14, v13, *(result + v16));
          v17[1] = vmlaq_f64(v14, v13, *(result + v16 + 16));
          v15 += 4;
          v16 += 32;
        }

        while (v15 <= v9 - 4);
        v15 = v15;
      }

      else
      {
        v15 = 0;
      }

      if (v15 < v10)
      {
        do
        {
          *(a5 + 8 * v15) = *&v12 + *(result + 8 * v15) * v11;
          ++v15;
        }

        while (v9 != v15);
      }

      a5 += 8 * (a6 >> 3);
      result += 8 * (a2 >> 3);
      --v8;
    }

    while (v8);
  }

  return result;
}

void cv::Mat::convertTo(cv::Mat *this, const cv::_OutputArray *a2, int a3, double a4, double a5)
{
  v67[2] = *MEMORY[0x277D85DE8];
  v9 = fabs(a4 + -1.0) >= 2.22044605e-16;
  v10 = fabs(a5) >= 2.22044605e-16 || v9;
  if (a3 < 0)
  {
    if ((*(*a2 + 104))(a2))
    {
      v12 = (*(*a2 + 64))(a2, 0xFFFFFFFFLL);
      v11 = *this;
    }

    else
    {
      v11 = *this;
      v12 = *this & 0xFFF;
    }
  }

  else
  {
    v11 = *this;
    v12 = *this & 0xFF8 | a3 & 7u;
  }

  v13 = v11 & 7;
  v14 = v12 & 7;
  if (v13 == v14)
  {
    v15 = v10;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    v16 = *(this + 4);
    v55 = v16;
    v17 = *(this + 3);
    v54 = v11;
    v56 = v17;
    v18 = *(this + 2);
    v19 = *(this + 24);
    v58 = v19;
    v59 = *(this + 40);
    v20 = *(this + 7);
    v57 = v18;
    v60 = v20;
    v61 = &v55 + 4;
    v62 = v63;
    v63[0] = 0;
    v63[1] = 0;
    if (v19)
    {
      atomic_fetch_add(v19, 1u);
      v21 = *(this + 1);
    }

    else
    {
      v21 = v16;
    }

    if (v21 > 2)
    {
      LODWORD(v55) = 0;
      cv::Mat::copySize(&v54, this);
    }

    else
    {
      v22 = *(this + 9);
      v23 = v62;
      *v62 = *v22;
      v23[1] = v22[1];
    }

    v24 = &cv::getConvertFunc(int,int)::cvtTab;
    if (v10)
    {
      v24 = cv::getConvertScaleFunc(int,int)::cvtScaleTab;
    }

    v25 = *(&v24[8 * v14] + v13);
    *v67 = a4;
    *&v67[1] = a5;
    if (!v25)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "func != 0");
      std::string::basic_string[abi:ne200100]<0>(v66, "convertTo");
      std::string::basic_string[abi:ne200100]<0>(&v64, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/convert.cpp");
      cv::Exception::Exception(&v45, 4294967081, __p, v66, &v64, 1115);
      cv::error(&v45, v26);
    }

    v27 = ((*this >> 3) & 0x1FF) + 1;
    if (*(this + 1) > 2)
    {
      (*(*a2 + 144))(a2);
      (**a2)(&v45, a2, 0xFFFFFFFFLL);
      v66[0] = &v54;
      v66[1] = &v45;
      v66[2] = 0;
      v64 = 0;
      v65 = 0;
      cv::NAryMatIterator::NAryMatIterator(__p, v66, &v64, -1);
      v30 = v27 * v44;
      v31 = -1;
      while (++v31 < v43)
      {
        v41[0] = v30;
        v41[1] = 1;
        v25(v64, 0, 0, 0, v65, 0, v41, v67);
        cv::NAryMatIterator::operator++(__p);
      }

      if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v45);
      }

      v46 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      if (v45.i32[1] >= 1)
      {
        v32 = 0;
        v33 = v51;
        do
        {
          *(v33 + 4 * v32++) = 0;
        }

        while (v32 < v45.i32[1]);
      }

      v47 = 0;
      v34 = v52;
    }

    else
    {
      v45 = vrev64_s32(**(this + 8));
      (*(*a2 + 128))(a2, &v45, v12, 0xFFFFFFFFLL, 0, 0);
      (**a2)(&v45, a2, 0xFFFFFFFFLL);
      v28 = HIDWORD(v55);
      if ((v54 & v45.i32[0] & 0x4000) != 0 && (v29 = v56 * v27 * SHIDWORD(v55), v29 == v29))
      {
        v28 = 1;
      }

      else
      {
        LODWORD(v29) = v56 * v27;
      }

      __p[0] = v29;
      __p[1] = v28;
      v25(v57, v63[0], 0, 0, v46, v53, __p, v67);
      if (v47 && atomic_fetch_add(v47, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v45);
      }

      v46 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      if (v45.i32[1] >= 1)
      {
        v35 = 0;
        v36 = v51;
        do
        {
          *(v36 + 4 * v35++) = 0;
        }

        while (v35 < v45.i32[1]);
      }

      v47 = 0;
      v34 = v52;
    }

    if (v34)
    {
      v37 = v34 == &v53;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      free(v34);
    }

    if (v58 && atomic_fetch_add(v58, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v54);
    }

    v57 = 0;
    v59 = 0uLL;
    *(&v58 + 1) = 0;
    if (v55 >= 1)
    {
      v38 = 0;
      v39 = v61;
      do
      {
        *&v39[4 * v38++] = 0;
      }

      while (v38 < v55);
    }

    *&v58 = 0;
    if (v62)
    {
      v40 = v62 == v63;
    }

    else
    {
      v40 = 1;
    }

    if (!v40)
    {
      free(v62);
    }
  }

  else
  {

    cv::Mat::copyTo(this, a2);
  }
}

void sub_22D247A78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t cv::mixChannels8u(uint64_t this, const unsigned __int8 **a2, const int *a3, unsigned __int8 **a4, const int *a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = 0;
    v7 = a5 - 2;
    do
    {
      v8 = *(this + 8 * v6);
      v9 = *&a3[2 * v6];
      v10 = *(a4 + v6);
      if (v8)
      {
        if (a5 < 2)
        {
          v11 = 0;
        }

        else
        {
          v13 = 0;
          v14 = *(a2 + v6);
          do
          {
            v15 = v8[v14];
            *v9 = *v8;
            v9[v10] = v15;
            v13 += 2;
            v8 += 2 * v14;
            v9 += 2 * v10;
          }

          while (v13 <= v7);
          v11 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v11 < a5)
        {
          *v9 = *v8;
        }
      }

      else
      {
        if (a5 < 2)
        {
          v12 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v9[v10] = 0;
            *v9 = 0;
            v16 += 2;
            v9 += 2 * v10;
          }

          while (v16 <= v7);
          v12 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v12 < a5)
        {
          *v9 = 0;
        }
      }

      ++v6;
    }

    while (v6 != a6);
  }

  return this;
}

uint64_t cv::mixChannels16u(uint64_t this, const unsigned __int16 **a2, const int *a3, unsigned __int16 **a4, const int *a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = 0;
    v7 = a5 - 2;
    do
    {
      v8 = *(this + 8 * v6);
      v9 = *&a3[2 * v6];
      v10 = *(a4 + v6);
      if (v8)
      {
        if (a5 < 2)
        {
          v11 = 0;
        }

        else
        {
          v13 = 0;
          v14 = *(a2 + v6);
          do
          {
            v15 = v8[v14];
            *v9 = *v8;
            v9[v10] = v15;
            v13 += 2;
            v8 += 2 * v14;
            v9 += 2 * v10;
          }

          while (v13 <= v7);
          v11 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v11 < a5)
        {
          *v9 = *v8;
        }
      }

      else
      {
        if (a5 < 2)
        {
          v12 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v9[v10] = 0;
            *v9 = 0;
            v16 += 2;
            v9 += 2 * v10;
          }

          while (v16 <= v7);
          v12 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v12 < a5)
        {
          *v9 = 0;
        }
      }

      ++v6;
    }

    while (v6 != a6);
  }

  return this;
}

uint64_t cv::mixChannels32s(uint64_t this, const int **a2, const int *a3, int **a4, const int *a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = 0;
    v7 = a5 - 2;
    do
    {
      v8 = *(this + 8 * v6);
      v9 = *&a3[2 * v6];
      v10 = *(a4 + v6);
      if (v8)
      {
        if (a5 < 2)
        {
          v11 = 0;
        }

        else
        {
          v13 = 0;
          v14 = *(a2 + v6);
          do
          {
            v15 = v8[v14];
            *v9 = *v8;
            v9[v10] = v15;
            v13 += 2;
            v8 += 2 * v14;
            v9 += 2 * v10;
          }

          while (v13 <= v7);
          v11 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v11 < a5)
        {
          *v9 = *v8;
        }
      }

      else
      {
        if (a5 < 2)
        {
          v12 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v9[v10] = 0;
            *v9 = 0;
            v16 += 2;
            v9 += 2 * v10;
          }

          while (v16 <= v7);
          v12 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v12 < a5)
        {
          *v9 = 0;
        }
      }

      ++v6;
    }

    while (v6 != a6);
  }

  return this;
}

uint64_t cv::mixChannels64s(uint64_t this, const uint64_t **a2, const int *a3, uint64_t **a4, const int *a5, int a6)
{
  if (a6 >= 1)
  {
    v6 = 0;
    v7 = a5 - 2;
    do
    {
      v8 = *(this + 8 * v6);
      v9 = *&a3[2 * v6];
      v10 = *(a4 + v6);
      if (v8)
      {
        if (a5 < 2)
        {
          v11 = 0;
        }

        else
        {
          v13 = 0;
          v14 = *(a2 + v6);
          do
          {
            v15 = v8[v14];
            *v9 = *v8;
            v9[v10] = v15;
            v13 += 2;
            v8 += 2 * v14;
            v9 += 2 * v10;
          }

          while (v13 <= v7);
          v11 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v11 < a5)
        {
          *v9 = *v8;
        }
      }

      else
      {
        if (a5 < 2)
        {
          v12 = 0;
        }

        else
        {
          v16 = 0;
          do
          {
            v9[v10] = 0;
            *v9 = 0;
            v16 += 2;
            v9 += 2 * v10;
          }

          while (v16 <= v7);
          v12 = (v7 & 0xFFFFFFFE) + 2;
        }

        if (v12 < a5)
        {
          *v9 = 0;
        }
      }

      ++v6;
    }

    while (v6 != a6);
  }

  return this;
}

void cv::gemm(cv *this, const cv::_InputArray *a2, const cv::_InputArray *a3, double a4, const cv::_InputArray *a5, double a6, const cv::_OutputArray *a7)
{
  v7 = MEMORY[0x28223BE20](this, a2);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v434[515] = *MEMORY[0x277D85DE8];
  (**v7)(v423);
  (**v19)(&v412, v19, 0xFFFFFFFFLL);
  if (v13 == 0.0)
  {
    v409 = v408 + 8;
    v410 = v411;
    v411[1] = 0;
    v411[0] = 0;
    LODWORD(v408[0]) = 1124007936;
    memset(v408 + 4, 0, 48);
    v408[3] = 0u;
  }

  else
  {
    (**v15)(v408, v15, 0xFFFFFFFFLL);
  }

  v21 = *v429;
  v20 = v429[1];
  v22 = v423[0];
  v23 = v423[0] & 0xFFF;
  if (v23 != (v412 & 0xFFF) || (v423[0] & 0xFF7) - 5 >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(&v384, "type == B.type() && (type == CV_32FC1 || type == CV_64FC1 || type == CV_32FC2 || type == CV_64FC2)");
    std::string::basic_string[abi:ne200100]<0>(v399, "gemm");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
    cv::Exception::Exception(&v432, 4294967081, &v384, v399, __p, 711);
    cv::error(&v432, v24);
  }

  if ((v9 & 3u) > 1)
  {
    if ((v9 & 3) == 2)
    {
      v25 = v413;
      if (v20 != v414)
      {
        std::string::basic_string[abi:ne200100]<0>(&v384, "a_size.width == len");
        std::string::basic_string[abi:ne200100]<0>(v399, "gemm");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
        cv::Exception::Exception(&v432, 4294967081, &v384, v399, __p, 728);
        cv::error(&v432, v29);
      }

      goto LABEL_13;
    }

    v25 = v413;
    if (v21 != v414)
    {
      std::string::basic_string[abi:ne200100]<0>(&v384, "a_size.height == len");
      std::string::basic_string[abi:ne200100]<0>(v399, "gemm");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
      cv::Exception::Exception(&v432, 4294967081, &v384, v399, __p, 733);
      cv::error(&v432, v31);
    }
  }

  else
  {
    if ((v9 & 3) == 0)
    {
      v25 = v414;
      if (v20 != v413)
      {
        std::string::basic_string[abi:ne200100]<0>(&v384, "a_size.width == len");
        std::string::basic_string[abi:ne200100]<0>(v399, "gemm");
        std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
        cv::Exception::Exception(&v432, 4294967081, &v384, v399, __p, 718);
        cv::error(&v432, v26);
      }

LABEL_13:
      v27 = v429[1];
      v30 = *v429;
      goto LABEL_20;
    }

    v25 = v414;
    if (v21 != v413)
    {
      std::string::basic_string[abi:ne200100]<0>(&v384, "a_size.height == len");
      std::string::basic_string[abi:ne200100]<0>(v399, "gemm");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
      cv::Exception::Exception(&v432, 4294967081, &v384, v399, __p, 723);
      cv::error(&v432, v28);
    }
  }

  v27 = *v429;
  v30 = v429[1];
LABEL_20:
  if (!*&v408[1])
  {
    goto LABEL_27;
  }

  if ((v408[0] & 0xFFF) != v23)
  {
    goto LABEL_26;
  }

  if ((v9 & 4) != 0)
  {
    if (*(&v408[0] + 1) == __PAIR64__(v30, v25))
    {
      goto LABEL_27;
    }

LABEL_26:
    std::string::basic_string[abi:ne200100]<0>(&v384, "C.type() == type && (((flags&GEMM_3_T) == 0 && C.rows == d_size.height && C.cols == d_size.width) || ((flags&GEMM_3_T) != 0 && C.rows == d_size.width && C.cols == d_size.height))");
    std::string::basic_string[abi:ne200100]<0>(v399, "gemm");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
    cv::Exception::Exception(&v432, 4294967081, &v384, v399, __p, 741);
    cv::error(&v432, v32);
  }

  if (*(&v408[0] + 1) != __PAIR64__(v25, v30))
  {
    goto LABEL_26;
  }

LABEL_27:
  (*(*v11 + 136))(v11, v30, v25, v23, 0xFFFFFFFFLL, 0, 0);
  (**v11)(v399, v11, 0xFFFFFFFFLL);
  if ((v9 & 4) != 0)
  {
    if (*&v408[1] != v400)
    {
      goto LABEL_136;
    }

    cv::_InputArray::_InputArray(&v432, v408);
    cv::_OutputArray::_OutputArray(&v384, v408);
    cv::transpose(&v432, &v384, v33);
    v9 &= ~4u;
  }

  if ((v27 - 2) > 2 || v9)
  {
    goto LABEL_136;
  }

  if (v27 != v25 && v27 != v30)
  {
    goto LABEL_135;
  }

  if (v23 == 6)
  {
    v59 = v400;
    v60 = v407 >> 3;
    v61 = v424;
    v62 = v431 >> 3;
    v63 = v415;
    v64 = v422 >> 3;
    v65 = *&v408[1];
    if (*&v408[1])
    {
      v66 = v411[0] >> 3;
    }

    else
    {
      v66 = 0;
    }

    if (!*&v408[1])
    {
      v65 = &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero;
    }

    if (v27 != 4)
    {
      if (v27 == 3)
      {
        if (v25 != 3 || v415 == v400)
        {
          if (v424 == v400)
          {
            goto LABEL_135;
          }

          if (v65 == &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero)
          {
            v162 = 1;
          }

          else
          {
            v162 = v66;
          }

          if (v25 >= 1)
          {
            v163 = 0;
            v164 = &v424[v62];
            v165 = &v424[2 * v62];
            v166 = (2 * v62) | 1;
            v167 = v400 + 8 * v60;
            v168 = v400 + 16 * v60;
            v169 = &v415[v64];
            v170 = 8 * (v65 != &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero);
            v171 = &v415[2 * v64];
            do
            {
              v172 = v63[v163];
              v173 = v169[v163];
              v174 = v171[v163];
              v175 = v61[1] * v173 + *v61 * v172 + v61[2] * v174;
              v176 = v173 * v164[1] + *v164 * v172 + v164[2] * v174;
              v177 = v173 * v61[v166] + *v165 * v172 + v165[2] * v174;
              v59[v163] = *v65 * v13 + v175 * v17;
              *(v167 + 8 * v163) = v65[v162] * v13 + v176 * v17;
              *(v168 + 8 * v163++) = v65[2 * v162] * v13 + v177 * v17;
              v65 = (v65 + v170);
            }

            while (v25 != v163);
          }
        }

        else if (v30 >= 1)
        {
          v67 = &v415[v64];
          v68 = &v415[2 * v64];
          v69 = v65 + 2;
          v70 = 8 * v66;
          v71 = v424 + 2;
          v72 = 8 * v62;
          v73 = (v400 + 16);
          v74 = 8 * v60;
          v75 = (2 * v64) | 1;
          do
          {
            v76 = *(v71 - 2);
            v77 = *(v71 - 1);
            v78 = v77 * *v67 + v76 * *v63 + *v71 * *v68;
            v79 = v77 * v67[1] + v76 * v63[1] + *v71 * v63[v75];
            v80 = v77 * v67[2] + v76 * v63[2] + *v71 * v68[2];
            *(v73 - 2) = *(v69 - 2) * v13 + v78 * v17;
            *(v73 - 1) = *(v69 - 1) * v13 + v79 * v17;
            *v73 = *v69 * v13 + v80 * v17;
            v69 = (v69 + v70);
            v71 = (v71 + v72);
            v73 = (v73 + v74);
            LODWORD(v30) = v30 - 1;
          }

          while (v30);
        }
      }

      else if (v25 != 2 || v415 == v400)
      {
        if (v424 == v400)
        {
          goto LABEL_135;
        }

        if (v65 == &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero)
        {
          v233 = 1;
        }

        else
        {
          v233 = v66;
        }

        if (v25 >= 1)
        {
          v234 = 8 * (v65 != &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero);
          v235 = &v424[v62];
          do
          {
            v236 = v63[v64];
            v237 = v236 * v235[1] + *v235 * *v63;
            *v59 = *v65 * v13 + (v61[1] * v236 + *v61 * *v63) * v17;
            v59[v60] = v65[v233] * v13 + v237 * v17;
            ++v59;
            ++v63;
            v65 = (v65 + v234);
            LODWORD(v25) = v25 - 1;
          }

          while (v25);
        }
      }

      else if (v30 >= 1)
      {
        v134 = 8 * v60;
        v135 = (v400 + 8);
        v136 = v424 + 1;
        v137 = 8 * v62;
        v138 = v65 + 1;
        v139 = &v415[v64];
        do
        {
          v140 = *(v136 - 1);
          v141 = *v136 * *v139 + v140 * *v63;
          v142 = *v136 * v139[1] + v140 * v63[1];
          *(v135 - 1) = *(v138 - 1) * v13 + v141 * v17;
          *v135 = *v138 * v13 + v142 * v17;
          v135 = (v135 + v134);
          v136 = (v136 + v137);
          v138 += v66;
          LODWORD(v30) = v30 - 1;
        }

        while (v30);
      }

      goto LABEL_239;
    }

    if (v25 == 4 && v415 != v400)
    {
      if (v30 >= 1)
      {
        v104 = &v415[v64];
        v105 = &v415[3 * v64];
        v106 = 8 * v66;
        v107 = 8 * v62;
        v108 = v65 + 2;
        v109 = v424 + 2;
        v110 = (v400 + 16);
        v111 = &v415[2 * v64];
        v112 = 8 * v60;
        v113 = (2 * v64) | 1;
        do
        {
          v114 = *(v109 - 2);
          v115 = *(v109 - 1);
          v116 = v109[1];
          v117 = v115 * *v104 + v114 * *v63 + *v109 * *v111 + v116 * *v105;
          v118 = v115 * v104[1] + v114 * v63[1] + *v109 * v63[v113] + v116 * v105[1];
          v119 = v115 * v104[2] + v114 * v63[2] + *v109 * v111[2];
          v120 = v115 * v104[3] + v114 * v63[3];
          v121 = v119 + v116 * v105[2];
          v122 = v120 + *v109 * v111[3] + v116 * v105[3];
          *(v110 - 2) = *(v108 - 2) * v13 + v117 * v17;
          *(v110 - 1) = *(v108 - 1) * v13 + v118 * v17;
          *v110 = *v108 * v13 + v121 * v17;
          v110[1] = v108[1] * v13 + v122 * v17;
          v108 = (v108 + v106);
          v109 = (v109 + v107);
          v110 = (v110 + v112);
          LODWORD(v30) = v30 - 1;
        }

        while (v30);
      }

      goto LABEL_239;
    }

    LOBYTE(v9) = 0;
    if (v25 <= 16 && v424 != v400)
    {
      if (v65 == &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero)
      {
        v204 = 1;
      }

      else
      {
        v204 = v66;
      }

      if (v25 >= 1)
      {
        v205 = 0;
        v206 = &v424[v62];
        v207 = &v424[2 * v62];
        v208 = (2 * v62) | 1;
        v209 = &v424[3 * v62];
        v210 = v25;
        v211 = v400 + 8 * v60;
        v212 = v400 + 16 * v60;
        v213 = v400 + 24 * v60;
        v214 = &v415[v64];
        v215 = &v415[3 * v64];
        v216 = 8 * (v65 != &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zero);
        v217 = &v415[2 * v64];
        do
        {
          v218 = v63[v205];
          v219 = v214[v205];
          v220 = v217[v205];
          v221 = v215[v205];
          v222 = v61[1] * v219 + *v61 * v218 + v61[2] * v220 + v61[3] * v221;
          v223 = v219 * v206[1] + *v206 * v218 + v206[2] * v220 + v206[3] * v221;
          v224 = v219 * v61[v208] + *v207 * v218 + v207[2] * v220 + v207[3] * v221;
          v225 = v219 * v209[1] + *v209 * v218 + v209[2] * v220 + v209[3] * v221;
          v59[v205] = *v65 * v13 + v222 * v17;
          *(v211 + 8 * v205) = v65[v204] * v13 + v223 * v17;
          *(v212 + 8 * v205) = v65[2 * v204] * v13 + v224 * v17;
          *(v213 + 8 * v205++) = v65[3 * v204] * v13 + v225 * v17;
          v65 = (v65 + v216);
        }

        while (v210 != v205);
      }

      goto LABEL_239;
    }

LABEL_136:
    v238 = v422;
    v396 = &__p[8];
    v397 = v398;
    v398[1] = 0;
    v398[0] = 0;
    *__p = 1124007936;
    memset(&__p[4], 0, 48);
    v239 = v411[0];
    v345 = *&v408[1];
    if (!*&v408[1])
    {
      v239 = 0;
    }

    v363 = v239;
    v432 = v434;
    v433 = 4104;
    v240 = v23 - 5;
    *&__p[48] = 0uLL;
    if ((v23 - 5) >= 0xA || ((0x303u >> v240) & 1) == 0)
    {
      std::string::basic_string[abi:ne200100]<0>(&v382, "type == CV_64FC2");
      std::string::basic_string[abi:ne200100]<0>(v381, "gemm");
      std::string::basic_string[abi:ne200100]<0>(v380, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/matmul.cpp");
      cv::Exception::Exception(&v384, 4294967081, &v382, v381, v380, 1041);
      cv::error(&v384, v241);
    }

    v360 = off_2840565C8[v240];
    v361 = off_284056578[v240];
    v347 = off_284056618[v240];
    if (v400 == v424 || v400 == v415)
    {
      v355 = &v397;
      v242 = (((v23 >> 3) + 1) << ((0xFA50u >> (2 * (v23 & 7))) & 3)) * v30 * v25;
      v243 = __p;
    }

    else
    {
      v242 = 0;
      v355 = &v406;
      v243 = v399;
    }

    v357 = v243;
    v377 = v25;
    v244 = v25 == 1 || v27 == 1;
    if (v244 && (v9 & 2) == 0 && (v412 & 0x4000) != 0)
    {
      if (v25 == 1)
      {
        v238 = 0;
      }

      else
      {
        v238 = ((v23 >> 3) + 1) << ((0xFA50u >> (2 * (v23 & 7))) & 3);
      }

      LOBYTE(v9) = v9 | 2;
    }

    v247 = (v30 < 65 || v25 < 65) && v27 < 10001;
    if (v27 < 11 || v247 || v27 <= 0x80 && v30 <= 128 && v25 <= 128)
    {
      if (!v242)
      {
LABEL_222:
        v384 = v20;
        v385 = v21;
        v382 = v25;
        v383 = v30;
        v361(v17, v13);
LABEL_223:
        if (v357 != v399)
        {
          cv::_OutputArray::_OutputArray(&v384, v399);
          cv::Mat::copyTo(v357, &v384);
        }

        if (v432 != v434 && v432)
        {
          MEMORY[0x2318CB180]();
        }

        if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(__p);
        }

        *&__p[16] = 0;
        memset(&__p[32], 0, 24);
        if (*&__p[4] >= 1)
        {
          v264 = 0;
          v265 = v396;
          do
          {
            *&v265[4 * v264++] = 0;
          }

          while (v264 < *&__p[4]);
        }

        *&__p[24] = 0;
        if (v397)
        {
          v266 = v397 == v398;
        }

        else
        {
          v266 = 1;
        }

        if (!v266)
        {
          free(v397);
        }

        goto LABEL_239;
      }

      v248 = v432;
      if (v433 < v242)
      {
        if (v432 != v434)
        {
          if (v432)
          {
            MEMORY[0x2318CB180](v432, 0x1000C8077774924, v415);
          }

          v248 = v434;
          v432 = v434;
        }

        v433 = v242;
        if (v242 >= 0x1009)
        {
          operator new[]();
        }
      }

      v386 = __PAIR64__(v25, v30);
      v387 = v248;
      *&v388 = 0;
      v391 = &v386;
      v392 = &v393;
      v385 = 2;
      v384 = v23 | 0x42FF4000;
      v393 = (((v23 >> 3) + 1) << ((0xFA50u >> (2 * (v23 & 7))) & 3)) * v25;
      v394 = ((v23 >> 3) + 1) << ((0xFA50u >> (2 * (v23 & 7))) & 3);
      *(&v389 + 1) = v248 + v393 * v30;
      v390 = 0;
      *(&v388 + 1) = v248;
      *&v389 = *(&v389 + 1);
      if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(__p);
      }

      *&__p[16] = 0;
      memset(&__p[32], 0, 24);
      if (*__p <= 0)
      {
        *&__p[24] = 0;
        *__p = v384;
      }

      else
      {
        v249 = 0;
        v250 = v396;
        do
        {
          *&v250[4 * v249++] = 0;
        }

        while (v249 < *&__p[4]);
        *&__p[24] = 0;
        *__p = v384;
        if (*&__p[4] > 2)
        {
          goto LABEL_210;
        }
      }

      if (v385 <= 2)
      {
        *&__p[4] = v385;
        *&__p[8] = v386;
        v259 = v392;
        v260 = v397;
        *v397 = *v392;
        v260[1] = v259[1];
        goto LABEL_211;
      }

LABEL_210:
      cv::Mat::copySize(__p, &v384);
LABEL_211:
      *&__p[40] = v389;
      *&__p[24] = v388;
      *&__p[16] = v387;
      *&__p[56] = v390;
      if (v388 && atomic_fetch_add(v388, 0xFFFFFFFF) == 1)
      {
        cv::Mat::deallocate(&v384);
      }

      v387 = 0;
      v389 = 0uLL;
      *(&v388 + 1) = 0;
      if (v385 >= 1)
      {
        v261 = 0;
        v262 = v391;
        do
        {
          *(v262 + v261++) = 0;
        }

        while (v261 < v385);
      }

      *&v388 = 0;
      if (v392)
      {
        v263 = v392 == &v393;
      }

      else
      {
        v263 = 1;
      }

      if (!v263)
      {
        free(v392);
      }

      goto LABEL_222;
    }

    v251 = (v23 >> 3) + 1;
    v252 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
    if (v9)
    {
      v253 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
    }

    else
    {
      v253 = v431;
    }

    v342 = v253;
    if (v9)
    {
      v254 = v431;
    }

    else
    {
      v254 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
    }

    if ((v9 & 2) != 0)
    {
      v255 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
    }

    else
    {
      v255 = v238;
    }

    v374 = v255;
    v375 = v254;
    if ((v9 & 2) != 0)
    {
      v256 = v238;
    }

    else
    {
      v256 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
    }

    v350 = v256;
    v379 = v9;
    v369 = (v23 >> 3) + 1;
    if (*&v408[1])
    {
      v257 = v411[0];
      if ((v9 & 4) != 0)
      {
        v258 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
      }

      else
      {
        v258 = v411[0];
      }

      v341 = v258;
      if ((v9 & 4) == 0)
      {
        v257 = v251 << ((0xFA50u >> (2 * (v22 & 7))) & 3);
      }

      v349 = v257;
      v376 = v9;
    }

    else
    {
      v341 = 0;
      v349 = 0;
      v376 = v9 & 0xFB;
    }

    if (v30 >= 128)
    {
      v279 = 128;
    }

    else
    {
      v279 = v30;
    }

    if (v377 >= 128)
    {
      v280 = 128;
    }

    else
    {
      v280 = v377;
    }

    v281 = 0x4000 / v279;
    if (0x4000 / v280 < 0x4000 / v279)
    {
      v281 = 0x4000 / v280;
    }

    v373 = v281;
    if (v27 >= v281)
    {
      v282 = v281;
    }

    else
    {
      v282 = v27;
    }

    if (v282 * v279 > 0x4000)
    {
      v279 = (0x4000 / v282);
    }

    v343 = v279;
    v351 = (v252 << ((v22 & 7) == 5));
    if (v282 * v280 > 0x4000)
    {
      v280 = (0x4000 / v282);
    }

    v344 = v30;
    v348 = v280;
    v283 = v282 + ((v282 + ((v282 >> 28) & 7)) >> 3);
    v365 = ((v280 + v280 / 8) & 0xFFFFFFFE) + 2;
    v367 = v283 + 1;
    v284 = v365 * (v283 + 1);
    v285 = v284 * v252;
    v286 = v284 * v351;
    if (v379)
    {
      v287 = (((v283 & 0xFFFFFFFE) + 2) * v252 + ((v283 & 0xFFFFFFFE) + 2) * v252 * (v279 + v279 / 8));
      v376 &= ~1u;
    }

    else
    {
      v287 = 0;
    }

    v288 = v285 + v242 + v286 + v287;
    v289 = v432;
    if (v433 < v288)
    {
      if (v432 != v434)
      {
        if (v432)
        {
          MEMORY[0x2318CB180](v432, 0x1000C8077774924, v415);
        }

        v432 = v434;
        v289 = v434;
      }

      v433 = v285 + v242 + v286 + v287;
      if (v288 >= 0x1009)
      {
        operator new[]();
      }
    }

    v362 = v289;
    v372 = v289 + v286;
    v371 = v289 + v286 + v285;
    if (v379)
    {
      v290 = v289 + v286 + v285;
    }

    else
    {
      v290 = 0;
    }

    v378 = v290;
    v291 = v343;
    if (!v242)
    {
LABEL_337:
      v299 = v344;
      v300 = v377;
      if (v344 >= 1)
      {
        v301 = 0;
        v359 = v362 + (v351 + v252) * v367 * v365 + 8;
        do
        {
          if (v301 + v291 >= v299 || (v302 = v291, v291 + 8 * (v301 + v291) > 8 * v344))
          {
            v302 = v299 - v301;
          }

          if (v300 >= 1)
          {
            v303 = 0;
            v346 = v301;
            v353 = v345 + v341 * v301;
            v356 = v301;
            v304 = v342 * v301;
            v352 = v376 & 0xF;
            v376 = v352 | 0x10;
            do
            {
              v305 = v348;
              if (v303 + v348 >= v300 || v348 + 8 * (v303 + v348) > 8 * v377)
              {
                v305 = v300 - v303;
              }

              v306 = 0;
              v354 = v303 * v252;
              v364 = *(v357 + 2) + v355[1] * v356 + v354;
              v366 = v355[1];
              v368 = v305 * v351;
              v370 = v353 + v349 * v303;
              v358 = v303;
              v307 = v350 * v303;
              v308 = v352;
              do
              {
                while (1)
                {
                  if (v306 + v282 >= v27 || (v309 = v282, v282 + 8 * (v306 + v282) > 8 * v27))
                  {
                    v309 = v27 - v306;
                  }

                  v310 = v431;
                  v311 = v375 * v306;
                  v312 = v424 + v304 + v311;
                  v313 = v415;
                  v314 = (v379 & 1) != 0 ? v309 : v302;
                  v315 = (v379 & 1) != 0 ? v302 : v309;
                  if (v378)
                  {
                    v316 = v309 * v252;
                    if (v315 < 1)
                    {
                      v329 = v315;
                      v315 = v314;
                      v312 = v371;
                    }

                    else
                    {
                      if (v252 > 0x10 || ((1 << v252) & 0x10110) == 0)
                      {
                        __assert_rtn("GEMM_TransposeBlock", "matmul.cpp", 124, "0");
                      }

                      v317 = 0;
                      v318 = v424 + v304 + v311 + 8;
                      v319 = v359;
                      v320 = v371;
                      do
                      {
                        if (v252 == 4)
                        {
                          if (v314 >= 1)
                          {
                            v324 = 0;
                            v325 = 0;
                            do
                            {
                              *&v320[v325] = *&v312[v324];
                              v325 += 4;
                              v324 += v310;
                            }

                            while (4 * v314 != v325);
                          }
                        }

                        else if (v252 == 8)
                        {
                          if (v314 >= 1)
                          {
                            v321 = 0;
                            v322 = 0;
                            v323 = 0;
                            do
                            {
                              *&v320[v322] = *&v312[v321];
                              v323 += 2;
                              v322 += 8;
                              v321 += v310;
                            }

                            while (v323 < (2 * v314));
                          }
                        }

                        else if (v314 >= 1)
                        {
                          v326 = 0;
                          v327 = v319;
                          v328 = v318;
                          do
                          {
                            *(v327 - 1) = *(v328 - 1);
                            *v327 = *v328;
                            v327 += 2;
                            v326 += 4;
                            v328 = (v328 + v310);
                          }

                          while (v326 < (4 * v314));
                        }

                        ++v317;
                        v320 += v316;
                        v312 += v252;
                        v318 += v252;
                        v319 = (v319 + v316);
                      }

                      while (v317 != v315);
                      v329 = v315;
                      v315 = v314;
                      v312 = v378;
                    }
                  }

                  else
                  {
                    v329 = v314;
                    v316 = v431;
                  }

                  v330 = v313 + v374 * v306 + v307;
                  if (v305 >= v377)
                  {
                    v333 = v238;
                  }

                  else
                  {
                    if ((v379 & 2) != 0)
                    {
                      v331 = v305;
                    }

                    else
                    {
                      v331 = v309;
                    }

                    if ((v379 & 2) != 0)
                    {
                      v332 = v309;
                    }

                    else
                    {
                      v332 = v305;
                    }

                    v333 = v332 * v252;
                    if (v331)
                    {
                      v334 = v332 * (v252 >> 2);
                      v335 = v372;
                      do
                      {
                        if (v334 >= 4)
                        {
                          v337 = 0;
                          v336 = 0;
                          do
                          {
                            v338 = &v335[v337];
                            *v338 = *&v330[v337];
                            *(v338 + 1) = *&v330[v337 + 8];
                            v336 += 4;
                            v337 += 16;
                          }

                          while (v336 <= v334 - 4);
                          v336 = v336;
                        }

                        else
                        {
                          v336 = 0;
                        }

                        if (v336 < v334)
                        {
                          do
                          {
                            *&v335[4 * v336] = *&v330[4 * v336];
                            ++v336;
                          }

                          while (v336 < v334);
                        }

                        v330 += v238;
                        v335 += v333;
                        --v331;
                      }

                      while (v331);
                    }

                    v330 = v372;
                  }

                  if (v373 < v27)
                  {
                    break;
                  }

                  v384 = v315;
                  v385 = v329;
                  v382 = v305;
                  v383 = v302;
                  (v361)(v312, v316, v330, v333, v370, v363, v364, v366, v17, v13, &v384, &v382, v308);
                  v306 += v309;
                  v308 = v352 | 0x10;
                  if (v306 >= v27)
                  {
                    goto LABEL_402;
                  }
                }

                v384 = v315;
                v385 = v329;
                v382 = v305;
                v383 = v302;
                v360(v312, v316, v330, v333, v362, v368, &v384, &v382, v308);
                v306 += v309;
                v308 = v352 | 0x10;
              }

              while (v306 < v27);
              v339 = *(v357 + 2);
              v340 = v355[1];
              v384 = v305;
              v385 = v302;
              (v347)(v370, v363, v362, v368, v339 + v340 * v356 + v354, v17, v13);
LABEL_402:
              v303 = v305 + v358;
              v300 = v377;
            }

            while (v305 + v358 < v377);
            v299 = v344;
            v291 = v343;
            v301 = v346;
          }

          v301 += v302;
        }

        while (v301 < v299);
      }

      goto LABEL_223;
    }

    v386 = __PAIR64__(v377, v344);
    v387 = &v371[v287];
    *&v388 = 0;
    v391 = &v386;
    v392 = &v393;
    v385 = 2;
    v384 = v23 | 0x42FF4000;
    v393 = (v369 << ((0xFA50u >> (2 * (v23 & 7))) & 3)) * v377;
    v394 = v369 << ((0xFA50u >> (2 * (v23 & 7))) & 3);
    *(&v389 + 1) = &v371[v287 + v393 * v344];
    v390 = 0;
    *(&v388 + 1) = &v371[v287];
    *&v389 = *(&v389 + 1);
    if (*&__p[24] && atomic_fetch_add(*&__p[24], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(__p);
    }

    *&__p[16] = 0;
    memset(&__p[32], 0, 24);
    if (*__p <= 0)
    {
      *&__p[24] = 0;
      *__p = v384;
    }

    else
    {
      v292 = 0;
      v293 = v396;
      do
      {
        *&v293[4 * v292++] = 0;
      }

      while (v292 < *&__p[4]);
      *&__p[24] = 0;
      *__p = v384;
      if (*&__p[4] > 2)
      {
        goto LABEL_325;
      }
    }

    if (v385 <= 2)
    {
      *&__p[4] = v385;
      *&__p[8] = v386;
      v294 = v392;
      v295 = v397;
      *v397 = *v392;
      v295[1] = v294[1];
      goto LABEL_326;
    }

LABEL_325:
    cv::Mat::copySize(__p, &v384);
LABEL_326:
    *&__p[40] = v389;
    *&__p[24] = v388;
    *&__p[16] = v387;
    *&__p[56] = v390;
    if (v388 && atomic_fetch_add(v388, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(&v384);
    }

    v387 = 0;
    v389 = 0uLL;
    *(&v388 + 1) = 0;
    if (v385 >= 1)
    {
      v296 = 0;
      v297 = v391;
      do
      {
        *(v297 + v296++) = 0;
      }

      while (v296 < v385);
    }

    *&v388 = 0;
    if (v392)
    {
      v298 = v392 == &v393;
    }

    else
    {
      v298 = 1;
    }

    if (!v298)
    {
      free(v392);
    }

    goto LABEL_337;
  }

  if (v23 != 5)
  {
    goto LABEL_135;
  }

  v34 = v400;
  v35 = v407 >> 2;
  v36 = v424;
  v37 = v431 >> 2;
  v38 = v415;
  v39 = v422 >> 2;
  v40 = *&v408[1];
  if (*&v408[1])
  {
    v41 = v411[0] >> 2;
  }

  else
  {
    v41 = 0;
  }

  if (!*&v408[1])
  {
    v40 = &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof;
  }

  if (v27 != 4)
  {
    if (v27 == 3)
    {
      if (v25 == 3 && v415 != v400)
      {
        if (v30 >= 1)
        {
          v42 = v415 + v39;
          v43 = &v415[v39];
          v44 = v40 + 2;
          v45 = 4 * v41;
          v46 = (v424 + 1);
          v47 = 4 * v37;
          v48 = (v400 + 8);
          v49 = 4 * v35;
          v50 = (2 * v39) | 1;
          do
          {
            v51 = *(v46 - 2);
            v52 = *(v46 - 1);
            v53 = ((v52 * *v42) + (v51 * *v38)) + (*v46 * *v43);
            v54 = ((v52 * v42[1]) + (v51 * v38[1])) + (*v46 * v38[v50]);
            v55 = ((v52 * v42[2]) + (v51 * v38[2])) + (*v46 * v43[2]);
            v56 = *(v44 - 2) * v13 + v53 * v17;
            *(v48 - 2) = v56;
            v57 = *(v44 - 1) * v13 + v54 * v17;
            *(v48 - 1) = v57;
            v58 = *v44 * v13 + v55 * v17;
            *v48 = v58;
            v44 = (v44 + v45);
            v46 = (v46 + v47);
            v48 = (v48 + v49);
            LODWORD(v30) = v30 - 1;
          }

          while (v30);
        }

        goto LABEL_239;
      }

      if (v424 != v400)
      {
        if (v40 == &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof)
        {
          v143 = 1;
        }

        else
        {
          v143 = v41;
        }

        if (v25 >= 1)
        {
          v144 = 0;
          v145 = v424 + v37;
          v146 = &v424[v37];
          v147 = (2 * v37) | 1;
          v148 = v400 + 4 * v35;
          v149 = v400 + 8 * v35;
          v150 = v415 + 4 * v39;
          v151 = 4 * (v40 != &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof);
          v152 = &v415[v39];
          do
          {
            v153 = v38[v144];
            v154 = *&v150[4 * v144];
            v155 = *(v152 + v144);
            v156 = ((v36[1] * v154) + (*v36 * v153)) + (v36[2] * v155);
            v157 = ((v154 * v145[1]) + (*v145 * v153)) + (v145[2] * v155);
            v158 = ((v154 * v36[v147]) + (*v146 * v153)) + (v146[2] * v155);
            v159 = *v40 * v13 + v156 * v17;
            v34[v144] = v159;
            v160 = v40[v143] * v13 + v157 * v17;
            *(v148 + 4 * v144) = v160;
            v161 = v40[2 * v143] * v13 + v158 * v17;
            *(v149 + 4 * v144++) = v161;
            v40 = (v40 + v151);
          }

          while (v25 != v144);
        }

        goto LABEL_239;
      }

      goto LABEL_135;
    }

    if (v25 == 2 && v415 != v400)
    {
      if (v30 >= 1)
      {
        v123 = 4 * v35;
        v124 = (v400 + 4);
        v125 = v424 + 1;
        v126 = 4 * v37;
        v127 = v40 + 1;
        v128 = v415 + v39;
        do
        {
          v129 = *(v125 - 1);
          v130 = (*v125 * *v128) + (v129 * *v38);
          v131 = (*v125 * v128[1]) + (v129 * v38[1]);
          v132 = *(v127 - 1) * v13 + v130 * v17;
          *(v124 - 1) = v132;
          v133 = *v127 * v13 + v131 * v17;
          *v124 = v133;
          v124 = (v124 + v123);
          v125 = (v125 + v126);
          v127 += v41;
          LODWORD(v30) = v30 - 1;
        }

        while (v30);
      }

      goto LABEL_239;
    }

    if (v424 != v400)
    {
      if (v40 == &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof)
      {
        v226 = 1;
      }

      else
      {
        v226 = v41;
      }

      if (v25 >= 1)
      {
        v227 = 4 * (v40 != &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof);
        v228 = v424 + v37;
        do
        {
          v229 = v38[v39];
          v230 = (v229 * v228[1]) + (*v228 * *v38);
          v231 = *v40 * v13 + ((v36[1] * v229) + (*v36 * *v38)) * v17;
          *v34 = v231;
          v232 = v40[v226] * v13 + v230 * v17;
          v34[v35] = v232;
          ++v34;
          ++v38;
          v40 = (v40 + v227);
          LODWORD(v25) = v25 - 1;
        }

        while (v25);
      }

      goto LABEL_239;
    }

LABEL_135:
    LOBYTE(v9) = 0;
    goto LABEL_136;
  }

  if (v25 != 4 || v415 == v400)
  {
    if (v424 == v400)
    {
      goto LABEL_135;
    }

    if (v40 == &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof)
    {
      v178 = 1;
    }

    else
    {
      v178 = v41;
    }

    if (v25 >= 1)
    {
      v179 = 0;
      v180 = v424 + v37;
      v181 = &v424[v37];
      v182 = (2 * v37) | 1;
      v183 = v424 + 3 * v37;
      v184 = v25;
      v185 = v400 + 4 * v35;
      v186 = v400 + 8 * v35;
      v187 = v400 + 12 * v35;
      v188 = v415 + 4 * v39;
      v189 = v415 + 12 * v39;
      v190 = 4 * (v40 != &cv::gemm(cv::_InputArray const&,cv::_InputArray const&,double,cv::_InputArray const&,double,cv::_OutputArray const&,int)::zerof);
      v191 = &v415[v39];
      do
      {
        v192 = v38[v179];
        v193 = *&v188[4 * v179];
        v194 = *(v191 + v179);
        v195 = *&v189[4 * v179];
        v196 = (((v36[1] * v193) + (*v36 * v192)) + (v36[2] * v194)) + (v36[3] * v195);
        v197 = (((v193 * v180[1]) + (*v180 * v192)) + (v180[2] * v194)) + (v180[3] * v195);
        v198 = (((v193 * v36[v182]) + (*v181 * v192)) + (v181[2] * v194)) + (v181[3] * v195);
        v199 = (((v193 * v183[1]) + (*v183 * v192)) + (v183[2] * v194)) + (v183[3] * v195);
        v200 = *v40 * v13 + v196 * v17;
        v34[v179] = v200;
        v201 = v40[v178] * v13 + v197 * v17;
        *(v185 + 4 * v179) = v201;
        v202 = v40[2 * v178] * v13 + v198 * v17;
        *(v186 + 4 * v179) = v202;
        v203 = v40[3 * v178] * v13 + v199 * v17;
        *(v187 + 4 * v179++) = v203;
        v40 = (v40 + v190);
      }

      while (v184 != v179);
    }
  }

  else if (v30 >= 1)
  {
    v81 = v415 + v39;
    v82 = v415 + 3 * v39;
    v83 = 4 * v41;
    v84 = 4 * v37;
    v85 = v40 + 2;
    v86 = (v424 + 1);
    v87 = (v400 + 8);
    v88 = &v415[v39];
    v89 = 4 * v35;
    v90 = (2 * v39) | 1;
    do
    {
      v91 = *(v86 - 2);
      v92 = *(v86 - 1);
      v93 = v86[1];
      v94 = (((v92 * *v81) + (v91 * *v38)) + (*v86 * *v88)) + (v93 * *v82);
      v95 = (((v92 * v81[1]) + (v91 * v38[1])) + (*v86 * v38[v90])) + (v93 * v82[1]);
      v96 = ((v92 * v81[2]) + (v91 * v38[2])) + (*v86 * v88[2]);
      v97 = (v92 * v81[3]) + (v91 * v38[3]);
      v98 = v96 + (v93 * v82[2]);
      v99 = (v97 + (*v86 * v88[3])) + (v93 * v82[3]);
      v100 = *(v85 - 2) * v13 + v94 * v17;
      *(v87 - 2) = v100;
      v101 = *(v85 - 1) * v13 + v95 * v17;
      *(v87 - 1) = v101;
      v102 = *v85 * v13 + v98 * v17;
      *v87 = v102;
      v103 = v85[1] * v13 + v99 * v17;
      v87[1] = v103;
      v85 = (v85 + v83);
      v86 = (v86 + v84);
      v87 = (v87 + v89);
      LODWORD(v30) = v30 - 1;
    }

    while (v30);
  }

LABEL_239:
  if (v401 && atomic_fetch_add(v401, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v399);
  }

  v400 = 0;
  v402 = 0;
  v404 = 0;
  v403 = 0;
  if (SHIDWORD(v399[0]) >= 1)
  {
    v267 = 0;
    v268 = v405;
    do
    {
      *(v268 + 4 * v267++) = 0;
    }

    while (v267 < SHIDWORD(v399[0]));
  }

  v401 = 0;
  if (v406)
  {
    v269 = v406 == &v407;
  }

  else
  {
    v269 = 1;
  }

  if (!v269)
  {
    free(v406);
  }

  if (*(&v408[1] + 1) && atomic_fetch_add(*(&v408[1] + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v408);
  }

  *&v408[1] = 0;
  memset(&v408[2], 0, 24);
  if (SDWORD1(v408[0]) >= 1)
  {
    v270 = 0;
    v271 = v409;
    do
    {
      *&v271[4 * v270++] = 0;
    }

    while (v270 < SDWORD1(v408[0]));
  }

  *(&v408[1] + 1) = 0;
  if (v410)
  {
    v272 = v410 == v411;
  }

  else
  {
    v272 = 1;
  }

  if (!v272)
  {
    free(v410);
  }

  if (v416 && atomic_fetch_add(v416, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v412);
  }

  v415 = 0;
  v417 = 0;
  v419 = 0;
  v418 = 0;
  if (SHIDWORD(v412) >= 1)
  {
    v273 = 0;
    v274 = v420;
    do
    {
      *(v274 + 4 * v273++) = 0;
    }

    while (v273 < SHIDWORD(v412));
  }

  v416 = 0;
  if (v421)
  {
    v275 = v421 == &v422;
  }

  else
  {
    v275 = 1;
  }

  if (!v275)
  {
    free(v421);
  }

  if (v425 && atomic_fetch_add(v425, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v423);
  }

  v424 = 0;
  v426 = 0;
  v428 = 0;
  v427 = 0;
  if (SHIDWORD(v423[0]) >= 1)
  {
    v276 = 0;
    v277 = v429;
    do
    {
      v277[v276++] = 0;
    }

    while (v276 < SHIDWORD(v423[0]));
  }

  v425 = 0;
  if (v430)
  {
    v278 = v430 == &v431;
  }

  else
  {
    v278 = 1;
  }

  if (!v278)
  {
    free(v430);
  }
}

void sub_22D24A0D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t cv::GEMMSingleMul_32f(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int *a9, int *a10, char a11)
{
  v11 = MEMORY[0x28223BE20](a1, a2);
  v19 = v18;
  v20 = v14;
  v22 = v21;
  v142 = v13;
  v24 = v23;
  v25 = v17;
  v26 = v11;
  v27 = *a10;
  v144 = a10[1];
  v28 = *a10;
  v29 = *a9;
  v30 = a9[1];
  v31 = v152;
  v150 = v152;
  v151 = 1032;
  v32 = v12 >> 2;
  v33 = v22 >> 2;
  v34 = v15 >> 2;
  if ((a11 & 4) != 0)
  {
    v35 = 1;
  }

  else
  {
    v35 = v15 >> 2;
  }

  if ((a11 & 4) == 0)
  {
    v34 = 1;
  }

  if (!v14)
  {
    v35 = 0;
  }

  v145 = v16 >> 2;
  v146 = v35;
  if (v14)
  {
    v36 = v34;
  }

  else
  {
    v36 = 0;
  }

  v141 = v17;
  if (a11)
  {
    v38 = 1;
    if (v12 >= 8 && v30 >= 2)
    {
      if (v30 >= 0x409)
      {
        v151 = v30;
        operator new[]();
      }

      v38 = 1;
      goto LABEL_61;
    }

    v29 = v30;
    v37 = v12 >> 2;
  }

  else
  {
    v37 = 1;
    v38 = v12 >> 2;
  }

  if (v29 == 1)
  {
    if (v12 < 8)
    {
      v61 = v13;
    }

    else
    {
      v61 = v13;
      if (v30 >= 2)
      {
        if (v144 >= 0x409)
        {
          v151 = v144;
          operator new[]();
        }

        if (v144 >= 1)
        {
          v62 = 0;
          do
          {
            *&v152[v62] = *v26;
            v62 += 4;
            v26 += v32;
          }

          while (4 * v144 != v62);
        }

        v26 = v152;
      }
    }

    if (v22 < 8)
    {
      v121 = v144;
    }

    else
    {
      v121 = v144;
      if (v27 > 0x408 && v28 >= 0x409)
      {
        operator new[]();
      }

      if (v28 >= 1)
      {
        v122 = 0;
        do
        {
          *&v148[v122] = v61->i32[0];
          v122 += 4;
          v61 = (v61 + 4 * v33);
        }

        while (4 * v27 != v122);
      }

      v61 = v148;
    }

    if (v121 >= 1)
    {
      for (i = 0; i != v121; ++i)
      {
        v124 = *&v26[i] * v25;
        if (v28 >= 2)
        {
          v125 = 0;
          v127 = v61 + 1;
          v128 = v19;
          v126 = v20;
          do
          {
            v129 = v124 * *(v127 - 1);
            v130 = v124 * *v127;
            if (v126)
            {
              v131 = v129 + *v126 * v24;
              *v128 = v131;
              v130 = v130 + v126[v36] * v24;
            }

            else
            {
              v132 = v129;
              *v128 = v132;
            }

            v125 += 2;
            v133 = v130;
            v128[1] = v133;
            v126 += 2 * v36;
            v128 += 2;
            v127 += 2;
          }

          while (v125 <= v27 - 2);
          v125 = v125;
        }

        else
        {
          v125 = 0;
          v126 = v20;
        }

        if (v125 < v27)
        {
          do
          {
            v134 = v124 * v61->f32[v125];
            if (v126)
            {
              v134 = v134 + *v126 * v24;
            }

            v135 = v134;
            v19[v125++] = v135;
            v126 += v36;
          }

          while (v27 != v125);
        }

        v20 += v35;
        v19 += v145;
      }
    }

    goto LABEL_165;
  }

  v31 = 0;
  v32 = v37;
  LODWORD(v30) = v29;
LABEL_61:
  if ((a11 & 2) != 0)
  {
    if (v144 >= 1)
    {
      v39 = 0;
      if (v31)
      {
        v40 = v30 < 1;
      }

      else
      {
        v40 = 1;
      }

      v41 = v40;
      v42 = 4 * v32;
      v43 = 4 * v33;
      do
      {
        if (v31)
        {
          v44 = v31;
        }

        else
        {
          v44 = v26;
        }

        if ((v41 & 1) == 0)
        {
          v45 = 0;
          v46 = v26;
          do
          {
            *&v31[v45] = *v46;
            v45 += 4;
            v46 = (v46 + v42);
          }

          while (4 * v30 != v45);
          v44 = v31;
        }

        if (v27 >= 1)
        {
          v47 = 0;
          v48 = v142;
          v49 = v20;
          do
          {
            if (v30 >= 4)
            {
              v53 = 0;
              v54 = 0;
              v51 = 0uLL;
              v52 = 0uLL;
              do
              {
                v55 = *&v44[v53 * 8];
                v56 = *v48[v53].f32;
                v52 = vmlaq_f64(v52, vcvt_hight_f64_f32(v56), vcvt_hight_f64_f32(v55));
                v51 = vmlaq_f64(v51, vcvtq_f64_f32(*v56.f32), vcvtq_f64_f32(*v55.f32));
                v54 += 4;
                v53 += 2;
              }

              while (v54 <= v30 - 4);
              v50 = ((v30 - 4) & 0xFFFFFFFC) + 4;
            }

            else
            {
              v50 = 0;
              v51 = 0uLL;
              v52 = 0uLL;
            }

            if (v50 >= v30)
            {
              v58 = v51.f64[0];
            }

            else
            {
              v57 = v50;
              v58 = v51.f64[0];
              do
              {
                v58 = v58 + *&v44[v57 * 4] * v48->f32[v57];
                ++v50;
                ++v57;
              }

              while (v30 > v50);
            }

            v59 = (v52.f64[1] + v52.f64[0] + v51.f64[1] + v58) * v25;
            if (v49)
            {
              v59 = v59 + *v49 * v24;
            }

            v60 = v59;
            v19[v47++] = v60;
            v49 += v36;
            v48 = (v48 + v43);
          }

          while (v47 != v27);
        }

        ++v39;
        v26 += v38;
        v20 += v35;
        v19 += v145;
      }

      while (v39 != v144);
    }
  }

  else if ((4 * v27) > 0x640)
  {
    if (v28 >= 0x209)
    {
      operator new[]();
    }

    if (v144 >= 1)
    {
      v97 = 0;
      v98 = 4 * v38;
      v99 = 4 * v32;
      v100 = 4 * v33;
      if (v31)
      {
        v101 = v30 < 1;
      }

      else
      {
        v101 = 1;
      }

      v140 = v98;
      v102 = v101;
      v139 = v102;
      v137 = v13 + 1;
      v138 = v146;
      v103 = 4 * v36;
      do
      {
        v147 = v20;
        if (v31)
        {
          v104 = v31;
        }

        else
        {
          v104 = v26;
        }

        if ((v139 & 1) == 0)
        {
          v105 = 0;
          v106 = v26;
          do
          {
            *&v31[v105] = *v106;
            v105 += 4;
            v106 = (v106 + v99);
          }

          while (4 * v30 != v105);
          v104 = v31;
        }

        if (v28 >= 1)
        {
          v143 = v97;
          bzero(v148, 8 * v27);
          v103 = 4 * v36;
          v97 = v143;
          v28 = v27;
          v25 = v141;
        }

        if (v30 >= 1)
        {
          v107 = 0;
          v108 = v142;
          v109 = v137;
          do
          {
            *&v110 = *&v104[4 * v107];
            if (v27 >= 4)
            {
              v111 = 0;
              v112 = vdupq_lane_s64(v110, 0);
              v113 = &v149;
              v114 = v109;
              do
              {
                v115 = vmlaq_f64(*v113, v112, vcvtq_f64_f32(*v114));
                v113[-1] = vmlaq_f64(v113[-1], v112, vcvtq_f64_f32(v114[-1]));
                *v113 = v115;
                v111 += 4;
                v114 += 2;
                v113 += 2;
              }

              while (v111 <= v27 - 4);
              v111 = v111;
            }

            else
            {
              v111 = 0;
            }

            if (v111 < v28)
            {
              do
              {
                *&v148[8 * v111] = *&v148[8 * v111] + v108->f32[v111] * *&v110;
                ++v111;
              }

              while (v27 != v111);
            }

            ++v107;
            v109 = (v109 + v100);
            v108 = (v108 + v100);
          }

          while (v107 != v30);
        }

        if (v147)
        {
          if (v28 >= 1)
          {
            v116 = 0;
            v117 = v147;
            do
            {
              v118 = *&v148[8 * v116] * v25 + *v117 * v24;
              v19[v116++] = v118;
              v117 = (v117 + v103);
            }

            while (v27 != v116);
          }
        }

        else if (v27 >= 1)
        {
          for (j = 0; j != v27; ++j)
          {
            v120 = *&v148[8 * j] * v25;
            v19[j] = v120;
          }
        }

        ++v97;
        v26 = (v26 + v140);
        v20 = &v147[v138];
        v19 += v145;
      }

      while (v97 != v144);
    }
  }

  else if (v144 >= 1)
  {
    v63 = 0;
    if (v31)
    {
      v64 = v30 < 1;
    }

    else
    {
      v64 = 1;
    }

    v65 = v64;
    v66 = 4 * v32;
    v67 = 4 * v33;
    do
    {
      if (v31)
      {
        v68 = v31;
      }

      else
      {
        v68 = v26;
      }

      if ((v65 & 1) == 0)
      {
        v69 = 0;
        v70 = v26;
        do
        {
          *&v31[v69] = *v70;
          v69 += 4;
          v70 = (v70 + v66);
        }

        while (4 * v30 != v69);
        v68 = v31;
      }

      if (v28 >= 4)
      {
        v71 = 0;
        v73 = v142;
        v72 = v20;
        do
        {
          v74 = 0uLL;
          if (v30 < 1)
          {
            v79 = 0.0;
            v75 = 0.0;
          }

          else
          {
            v75 = 0.0;
            v76 = v73;
            v77 = v68;
            v78 = v30;
            v79 = 0.0;
            do
            {
              v80 = *v77++;
              v79 = v79 + v80 * v76->f32[0];
              v74 = vmlaq_n_f64(v74, vcvtq_f64_f32(*(v76 + 4)), v80);
              v75 = v75 + v80 * v76[1].f32[1];
              v76 = (v76 + v67);
              --v78;
            }

            while (v78);
          }

          v81 = v79 * v25;
          v82 = &v19[v71];
          if (v72)
          {
            v83 = v81 + *v72 * v24;
            *v82 = v83;
            v84 = v25 * v74.f64[0] + v72[v36] * v24;
            v82[1] = v84;
            v85 = vmuld_lane_f64(v25, v74, 1) + v72[2 * v36] * v24;
            v82[2] = v85;
            v86 = v75 * v25 + v72[3 * v36] * v24;
          }

          else
          {
            v87 = v81;
            *v82 = v87;
            *(v82 + 1) = vcvt_f32_f64(vmulq_n_f64(v74, v25));
            v86 = v75 * v25;
          }

          v88 = v86;
          v82[3] = v88;
          v71 += 4;
          v72 += 4 * v36;
          v73 += 2;
        }

        while (v71 <= v27 - 4);
        v71 = v71;
      }

      else
      {
        v71 = 0;
        v72 = v20;
      }

      if (v71 < v27)
      {
        v89 = v142 + v71;
        do
        {
          v90 = 0.0;
          if (v30 >= 1)
          {
            v91 = v89;
            v92 = v68;
            v93 = v30;
            do
            {
              v94 = *v92++;
              v90 = v90 + v94 * *v91;
              v91 = (v91 + v67);
              --v93;
            }

            while (v93);
          }

          v95 = v90 * v25;
          if (v72)
          {
            v95 = v95 + *v72 * v24;
          }

          v96 = v95;
          v19[v71++] = v96;
          v72 += v36;
          ++v89;
        }

        while (v71 != v27);
      }

      ++v63;
      v26 += v38;
      v20 += v35;
      v19 += v145;
      v28 = v27;
    }

    while (v63 != v144);
  }

LABEL_165:
  result = v150;
  if (v150 != v152)
  {
    if (v150)
    {
      return MEMORY[0x2318CB180]();
    }
  }

  return result;
}