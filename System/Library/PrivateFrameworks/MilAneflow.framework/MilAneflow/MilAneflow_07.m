void sub_2599C1960(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, unint64_t **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((a4[1] - *a4 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = a4[1] - *a4;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v62 = *(*a3 + 1);
  v63 = **a3;
  v61 = *(*a3 + 2);
  v74 = *(*a3 + 4);
  v76 = a4;
  v68 = (*a4)[1];
  v69 = **a4;
  v67 = (*a4)[2];
  v24 = **a5;
  v58 = *(*a5 + 1);
  v59 = *(*a5 + 2);
  v60 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v65 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v65, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&__e = v56 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v24)
  {
    v70 = 0;
    v57 = v24;
    while (!v58)
    {
LABEL_68:
      if (++v70 == v57)
      {
        goto LABEL_69;
      }
    }

    v33 = 0;
    while (!v59)
    {
LABEL_67:
      if (++v33 == v58)
      {
        goto LABEL_68;
      }
    }

    v34 = 0;
    while (!v60)
    {
LABEL_66:
      if (++v34 == v59)
      {
        goto LABEL_67;
      }
    }

    v75 = 0;
    while (!v65)
    {
LABEL_65:
      if (++v75 == v60)
      {
        goto LABEL_66;
      }
    }

    v71 = 0;
    while (1)
    {
      if (v74)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        do
        {
          if (!a11 || (v39 = a12, v35 != *(v76[1] - 2)))
          {
          }

          if (!v36)
          {
            v40 = v39 * v38;
            if (a7)
            {
              v41 = (v40 + (1 << ~a7)) >> -a7;
              v40 <<= a7;
              if (a7 < 1)
              {
                v40 = v41;
              }
            }

            v42 = v37 + v40;
            if (v42 <= 0x7FFFFFFF)
            {
              if (v42 >= 0xFFFFFFFF80000000)
              {
                v37 = v42;
              }

              else
              {
                v37 = -8388608;
              }

              v36 = 2 * (v42 < 0xFFFFFFFF80000000);
            }

            else
            {
              v36 = 1;
              v37 = 2139095040;
            }
          }

          ++v35;
        }

        while (v74 != v35);
        v43 = *&__src.__begin_[v71];
        if (v36)
        {
          v44 = INFINITY;
          if (v36 == 2)
          {
            v44 = -INFINITY;
          }

          goto LABEL_54;
        }

        if (v37)
        {
          v44 = v37;
LABEL_54:
          *&__e = 0.0;
          v46 = frexp(v44, &__e);
          v47 = ldexp(v46, 11);
          v45 = ldexp(round(v47), __e - 11);
          goto LABEL_55;
        }
      }

      else
      {
        v43 = *&__src.__begin_[v71];
      }

      v45 = 0.0;
LABEL_55:
      v48 = v43 * v45;
      v49 = 0.0;
      if (v48 != 0.0)
      {
        *&__e = 0.0;
        v50 = frexp(v48, &__e);
        v51 = ldexp(v50, 11);
        v49 = ldexp(round(v51), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v49);
      if (v52 == INFINITY)
      {
        LOBYTE(v53) = -1;
      }

      else if (v52 == -INFINITY)
      {
        LOBYTE(v53) = 0;
      }

      else
      {
        v54 = llroundf(v52);
        if (v54 >= 255)
        {
          v54 = 255;
        }

        v53 = v54 & ~(v54 >> 31);
      }

      if (v71 == v65)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_69:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2599C202C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<unsigned char,signed char,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, unint64_t **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((a4[1] - *a4 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = a4[1] - *a4;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v62 = *(*a3 + 1);
  v63 = **a3;
  v61 = *(*a3 + 2);
  v74 = *(*a3 + 4);
  v76 = a4;
  v68 = (*a4)[1];
  v69 = **a4;
  v67 = (*a4)[2];
  v24 = **a5;
  v58 = *(*a5 + 1);
  v59 = *(*a5 + 2);
  v60 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v65 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v65, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&__e = v56 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v24)
  {
    v70 = 0;
    v57 = v24;
    while (!v58)
    {
LABEL_70:
      if (++v70 == v57)
      {
        goto LABEL_71;
      }
    }

    v33 = 0;
    while (!v59)
    {
LABEL_69:
      if (++v33 == v58)
      {
        goto LABEL_70;
      }
    }

    v34 = 0;
    while (!v60)
    {
LABEL_68:
      if (++v34 == v59)
      {
        goto LABEL_69;
      }
    }

    v75 = 0;
    while (!v65)
    {
LABEL_67:
      if (++v75 == v60)
      {
        goto LABEL_68;
      }
    }

    v71 = 0;
    while (1)
    {
      if (v74)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        do
        {
          if (!a11 || (v39 = a12, v35 != *(v76[1] - 2)))
          {
          }

          if (!v36)
          {
            v40 = v39 * v38;
            if (a7)
            {
              v41 = (v40 + (1 << ~a7)) >> -a7;
              v40 <<= a7;
              if (a7 < 1)
              {
                v40 = v41;
              }
            }

            v42 = v37 + v40;
            if (v42 <= 0x7FFFFFFF)
            {
              if (v42 >= 0xFFFFFFFF80000000)
              {
                v37 = v42;
              }

              else
              {
                v37 = -8388608;
              }

              v36 = 2 * (v42 < 0xFFFFFFFF80000000);
            }

            else
            {
              v36 = 1;
              v37 = 2139095040;
            }
          }

          ++v35;
        }

        while (v74 != v35);
        v43 = *&__src.__begin_[v71];
        if (v36)
        {
          v44 = INFINITY;
          if (v36 == 2)
          {
            v44 = -INFINITY;
          }

          goto LABEL_54;
        }

        if (v37)
        {
          v44 = v37;
LABEL_54:
          *&__e = 0.0;
          v46 = frexp(v44, &__e);
          v47 = ldexp(v46, 11);
          v45 = ldexp(round(v47), __e - 11);
          goto LABEL_55;
        }
      }

      else
      {
        v43 = *&__src.__begin_[v71];
      }

      v45 = 0.0;
LABEL_55:
      v48 = v43 * v45;
      v49 = 0.0;
      if (v48 != 0.0)
      {
        *&__e = 0.0;
        v50 = frexp(v48, &__e);
        v51 = ldexp(v50, 11);
        v49 = ldexp(round(v51), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v49);
      if (v52 == INFINITY)
      {
        v53 = 127;
      }

      else if (v52 == -INFINITY)
      {
        v53 = 0x80;
      }

      else
      {
        v54 = llroundf(v52);
        if (v54 >= 127)
        {
          v54 = 127;
        }

        if (v54 <= -128)
        {
          v53 = 0x80;
        }

        else
        {
          v53 = v54;
        }
      }

      if (v71 == v65)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_71:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2599C26FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v89 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = (a3[1] - *a3) >> 3;
  if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v17 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v17 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a4;
  v23 = (a4[1] - *a4) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v22 + 8, &__src, &__src.__end_, 1);
  }

  v24 = *a5;
  v25 = (a5[1] - *a5) >> 3;
  if (v25 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v24 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v25 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v24 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v69 = **a3;
  v70 = *(*a3 + 1);
  v85 = *(*a3 + 4);
  v81 = *(*a4 + 1);
  v82 = **a4;
  v80 = *(*a4 + 2);
  v26 = **a5;
  v71 = *(*a5 + 1);
  v72 = *(*a3 + 2);
  v73 = *(*a5 + 2);
  v74 = *(*a5 + 3);
  v27 = *(*a5 + 4);
  v28 = ldexp(1.0, a7 + 10);
  v29 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v76 = v27;
  std::vector<int>::reserve(&__src, v27);
  v31 = v29;
  v32 = *a10;
  v33 = a10[1];
  if (v33 - *a10 == 4)
  {
    v86 = MIL::Fp16::FromFloat(v30, *v32);
    MIL::Fp16::GetFloat(&v86);
    *v35.i32 = v34 * v31;
    __e = v35.i32[0];
    std::vector<float>::assign(&__src, v76, &__e, v35);
  }

  else
  {
    while (v32 != v33)
    {
      v86 = MIL::Fp16::FromFloat(v30, *v32);
      MIL::Fp16::GetFloat(&v86);
      *&__e = v67 * v31;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v32;
    }
  }

  if (v26)
  {
    v36 = 0;
    v77 = -20 - a7;
    v37 = v28;
    v68 = v26;
    while (!v71)
    {
LABEL_60:
      if (++v36 == v68)
      {
        goto LABEL_61;
      }
    }

    v38 = 0;
    while (!v73)
    {
LABEL_59:
      if (++v38 == v71)
      {
        goto LABEL_60;
      }
    }

    v39 = 0;
    while (!v74)
    {
LABEL_58:
      if (++v39 == v73)
      {
        goto LABEL_59;
      }
    }

    v40 = 0;
    while (!v76)
    {
LABEL_57:
      if (++v40 == v74)
      {
        goto LABEL_58;
      }
    }

    v41 = 0;
    while (1)
    {
      if (v85)
      {
        v42 = 0;
        v43 = 0;
        v78 = 0;
        do
        {
          if (!a11 || (v45 = a13, v42 != *(a4[1] - 2)))
          {
          }

          if (!v43)
          {
            LOWORD(__e) = v45;
            MIL::Fp16::GetFloat(&__e);
            v47 = v46;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v49 = v47 - v48;
            v50 = ilogbf(v49);
            if (v50 <= -14)
            {
              v51 = -14;
            }

            else
            {
              v51 = v50;
            }

            if (v51 >= v77)
            {
              v52 = llroundf((v49 * v44) * v37) + v78;
              if (v52 <= 0x7FFFFFFF)
              {
                v53 = v52 < 0xFFFFFFFF80000000;
                if (v52 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v52) = -8388608;
                }

                v78 = v52;
                v43 = 2 * v53;
              }

              else
              {
                v43 = 1;
                v78 = 2139095040;
              }
            }

            else
            {
              v43 = 0;
            }
          }

          ++v42;
        }

        while (v85 != v42);
        v54 = *&__src.__begin_[v41];
        if (v43)
        {
          v55 = INFINITY;
          if (v43 == 2)
          {
            v55 = -INFINITY;
          }

          goto LABEL_53;
        }

        if (v78)
        {
          v55 = v78;
LABEL_53:
          *&__e = 0.0;
          v57 = frexp(v55, &__e);
          v58 = ldexp(v57, 11);
          v56 = ldexp(round(v58), __e - 11);
          goto LABEL_54;
        }
      }

      else
      {
        v54 = *&__src.__begin_[v41];
      }

      v56 = 0.0;
LABEL_54:
      v59 = v54 * v56;
      v60 = 0.0;
      if (v59 != 0.0)
      {
        *&__e = 0.0;
        v61 = frexp(v59, &__e);
        v62 = ldexp(v61, 11);
        v60 = ldexp(round(v62), __e - 11);
      }

      v63 = std::function<float ()(float)>::operator()(a15, v60);
      v65 = MIL::Fp16::FromFloat(v63, v64);
      if (v41 == v76)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_61:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v66 = *MEMORY[0x277D85DE8];
}

void sub_2599C2DB4(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v89 = *MEMORY[0x277D85DE8];
  v16 = *a3;
  v17 = (a3[1] - *a3) >> 3;
  if ((v17 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v17 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v17 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v16 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a4;
  v23 = (a4[1] - *a4) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v22 + 8, &__src, &__src.__end_, 1);
  }

  v24 = *a5;
  v25 = (a5[1] - *a5) >> 3;
  if (v25 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v24 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v25 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v24 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v72 = *(*a3 + 2);
  v73 = *(*a3 + 1);
  v84 = *(*a3 + 4);
  v80 = *(*a4 + 1);
  v81 = **a4;
  v79 = *(*a4 + 2);
  v26 = **a5;
  v68 = **a3;
  v69 = *(*a5 + 1);
  v70 = *(*a5 + 2);
  v71 = *(*a5 + 3);
  v27 = *(*a5 + 4);
  v28 = ldexp(1.0, a7 + 10);
  v29 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  v75 = v27;
  std::vector<int>::reserve(&__src, v27);
  v31 = v29;
  v32 = *a10;
  v33 = a10[1];
  if (v33 - *a10 == 4)
  {
    v86 = MIL::Fp16::FromFloat(v30, *v32);
    MIL::Fp16::GetFloat(&v86);
    *v35.i32 = v34 * v31;
    __e = v35.i32[0];
    std::vector<float>::assign(&__src, v75, &__e, v35);
  }

  else
  {
    while (v32 != v33)
    {
      v86 = MIL::Fp16::FromFloat(v30, *v32);
      MIL::Fp16::GetFloat(&v86);
      *&__e = v66 * v31;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v32;
    }
  }

  if (v26)
  {
    v36 = 0;
    v76 = -20 - a7;
    v37 = v28;
    v67 = v26;
    while (!v69)
    {
LABEL_69:
      if (++v36 == v67)
      {
        goto LABEL_70;
      }
    }

    v38 = 0;
    while (!v70)
    {
LABEL_68:
      if (++v38 == v69)
      {
        goto LABEL_69;
      }
    }

    v39 = 0;
    while (!v71)
    {
LABEL_67:
      if (++v39 == v70)
      {
        goto LABEL_68;
      }
    }

    v85 = 0;
    while (!v75)
    {
LABEL_66:
      if (++v85 == v71)
      {
        goto LABEL_67;
      }
    }

    v40 = 0;
    while (1)
    {
      if (v84)
      {
        v41 = 0;
        v42 = 0;
        v77 = 0;
        do
        {
          if (!a11 || (v44 = a13, v41 != *(a4[1] - 2)))
          {
          }

          if (!v42)
          {
            LOWORD(__e) = v44;
            MIL::Fp16::GetFloat(&__e);
            v46 = v45;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v48 = v46 - v47;
            v49 = ilogbf(v48);
            if (v49 <= -14)
            {
              v50 = -14;
            }

            else
            {
              v50 = v49;
            }

            if (v50 >= v76)
            {
              v51 = llroundf((v48 * v43) * v37) + v77;
              if (v51 <= 0x7FFFFFFF)
              {
                v52 = v51 < 0xFFFFFFFF80000000;
                if (v51 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v51) = -8388608;
                }

                v77 = v51;
                v42 = 2 * v52;
              }

              else
              {
                v42 = 1;
                v77 = 2139095040;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          ++v41;
        }

        while (v84 != v41);
        v53 = *&__src.__begin_[v40];
        if (v42)
        {
          v54 = INFINITY;
          if (v42 == 2)
          {
            v54 = -INFINITY;
          }

          goto LABEL_55;
        }

        if (v77)
        {
          v54 = v77;
LABEL_55:
          *&__e = 0.0;
          v56 = frexp(v54, &__e);
          v57 = ldexp(v56, 11);
          v55 = ldexp(round(v57), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v53 = *&__src.__begin_[v40];
      }

      v55 = 0.0;
LABEL_56:
      v58 = v53 * v55;
      v59 = 0.0;
      if (v58 != 0.0)
      {
        *&__e = 0.0;
        v60 = frexp(v58, &__e);
        v61 = ldexp(v60, 11);
        v59 = ldexp(round(v61), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v59);
      if (v62 == INFINITY)
      {
        LOBYTE(v63) = -1;
      }

      else if (v62 == -INFINITY)
      {
        LOBYTE(v63) = 0;
      }

      else
      {
        v64 = llroundf(v62);
        if (v64 >= 255)
        {
          v64 = 255;
        }

        v63 = v64 & ~(v64 >> 31);
      }

      if (v40 == v75)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_70:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v65 = *MEMORY[0x277D85DE8];
}

void sub_2599C34B4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,MIL::Fp16,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, int a12, __int16 a13, __int16 a14, uint64_t a15)
{
  v88 = *MEMORY[0x277D85DE8];
  v15 = *a3;
  v16 = (a3[1] - *a3) >> 3;
  if ((v16 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v16 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v15 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v16 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v15 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a4;
  v22 = (a4[1] - *a4) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v21 + 8, &__src, &__src.__end_, 1);
  }

  v23 = *a5;
  v24 = (a5[1] - *a5) >> 3;
  if (v24 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v24 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v23 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v71 = *(*a3 + 1);
  v72 = **a3;
  v82 = *(*a3 + 4);
  v78 = *(*a4 + 1);
  v79 = **a4;
  v77 = *(*a4 + 2);
  v25 = **a5;
  v67 = *(*a5 + 1);
  v68 = *(*a5 + 2);
  v26 = *(*a5 + 4);
  v69 = *(*a5 + 3);
  v70 = *(*a3 + 2);
  v27 = ldexp(1.0, a7 + 10);
  v28 = exp2(-(a7 + 10 + a8));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v26);
  v30 = v28;
  v31 = *a10;
  v32 = a10[1];
  if (v32 - *a10 == 4)
  {
    v85 = MIL::Fp16::FromFloat(v29, *v31);
    MIL::Fp16::GetFloat(&v85);
    *v34.i32 = v33 * v30;
    __e = v34.i32[0];
    std::vector<float>::assign(&__src, v26, &__e, v34);
  }

  else
  {
    while (v31 != v32)
    {
      v85 = MIL::Fp16::FromFloat(v29, *v31);
      MIL::Fp16::GetFloat(&v85);
      *&__e = v65 * v30;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v31;
    }
  }

  if (v25)
  {
    v35 = 0;
    v74 = -20 - a7;
    v36 = v27;
    v66 = v25;
    while (!v67)
    {
LABEL_71:
      if (++v35 == v66)
      {
        goto LABEL_72;
      }
    }

    v37 = 0;
    while (!v68)
    {
LABEL_70:
      if (++v37 == v67)
      {
        goto LABEL_71;
      }
    }

    v38 = 0;
    while (!v69)
    {
LABEL_69:
      if (++v38 == v68)
      {
        goto LABEL_70;
      }
    }

    v83 = 0;
    while (!v26)
    {
LABEL_68:
      if (++v83 == v69)
      {
        goto LABEL_69;
      }
    }

    v39 = 0;
    while (1)
    {
      if (v82)
      {
        v40 = 0;
        v41 = 0;
        v75 = 0;
        do
        {
          if (!a11 || (v43 = a13, v40 != *(a4[1] - 2)))
          {
          }

          if (!v41)
          {
            LOWORD(__e) = v43;
            MIL::Fp16::GetFloat(&__e);
            v45 = v44;
            LOWORD(__e) = 0;
            MIL::Fp16::GetFloat(&__e);
            v47 = v45 - v46;
            v48 = ilogbf(v47);
            if (v48 <= -14)
            {
              v49 = -14;
            }

            else
            {
              v49 = v48;
            }

            if (v49 >= v74)
            {
              v50 = llroundf((v47 * v42) * v36) + v75;
              if (v50 <= 0x7FFFFFFF)
              {
                v51 = v50 < 0xFFFFFFFF80000000;
                if (v50 < 0xFFFFFFFF80000000)
                {
                  LODWORD(v50) = -8388608;
                }

                v75 = v50;
                v41 = 2 * v51;
              }

              else
              {
                v41 = 1;
                v75 = 2139095040;
              }
            }

            else
            {
              v41 = 0;
            }
          }

          ++v40;
        }

        while (v82 != v40);
        v52 = *&__src.__begin_[v39];
        if (v41)
        {
          v53 = INFINITY;
          if (v41 == 2)
          {
            v53 = -INFINITY;
          }

          goto LABEL_55;
        }

        if (v75)
        {
          v53 = v75;
LABEL_55:
          *&__e = 0.0;
          v55 = frexp(v53, &__e);
          v56 = ldexp(v55, 11);
          v54 = ldexp(round(v56), __e - 11);
          goto LABEL_56;
        }
      }

      else
      {
        v52 = *&__src.__begin_[v39];
      }

      v54 = 0.0;
LABEL_56:
      v57 = v52 * v54;
      v58 = 0.0;
      if (v57 != 0.0)
      {
        *&__e = 0.0;
        v59 = frexp(v57, &__e);
        v60 = ldexp(v59, 11);
        v58 = ldexp(round(v60), __e - 11);
      }

      std::function<float ()(float)>::operator()(a15, v58);
      if (v61 == INFINITY)
      {
        v62 = 127;
      }

      else if (v61 == -INFINITY)
      {
        v62 = 0x80;
      }

      else
      {
        v63 = llroundf(v61);
        if (v63 >= 127)
        {
          v63 = 127;
        }

        if (v63 <= -128)
        {
          v62 = 0x80;
        }

        else
        {
          v62 = v63;
        }
      }

      if (v39 == v26)
      {
        goto LABEL_68;
      }
    }
  }

LABEL_72:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void sub_2599C3BC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = *v30;
  if (*v30)
  {
    *(v30 + 8) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a4;
  v20 = (a4[1] - *a4) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a5;
  v22 = (a5[1] - *a5) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v60 = **a3;
  v61 = *(*a3 + 1);
  v75 = *(*a3 + 4);
  v70 = *(*a4 + 1);
  v71 = **a4;
  v69 = *(*a4 + 2);
  v23 = **a5;
  v62 = *(*a5 + 1);
  v63 = *(*a3 + 2);
  v64 = *(*a5 + 2);
  v65 = *(*a5 + 3);
  v24 = *(*a5 + 4);
  v25 = ldexp(1.0, a7);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v67 = v24;
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    v78 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v78, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&v78 = v58 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v78);
      ++v29;
    }
  }

  v76 = a4;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v59 = v23;
    while (!v62)
    {
LABEL_57:
      if (++v33 == v59)
      {
        goto LABEL_58;
      }
    }

    v35 = 0;
    while (!v64)
    {
LABEL_56:
      if (++v35 == v62)
      {
        goto LABEL_57;
      }
    }

    v36 = 0;
    while (!v65)
    {
LABEL_55:
      if (++v36 == v64)
      {
        goto LABEL_56;
      }
    }

    v37 = 0;
    while (!v67)
    {
LABEL_54:
      if (++v37 == v65)
      {
        goto LABEL_55;
      }
    }

    v38 = 0;
    while (1)
    {
      if (v75)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        do
        {
          if (!a11 || (v43 = a12, v39 != *(v76[1] - 2)))
          {
          }

          if (!v40 && a7 >= -20)
          {
            v44 = llroundf((v42 * v43) * v34) + v41;
            if (v44 <= 0x7FFFFFFF)
            {
              if (v44 >= 0xFFFFFFFF80000000)
              {
                v41 = v44;
              }

              else
              {
                v41 = -8388608;
              }

              v40 = 2 * (v44 < 0xFFFFFFFF80000000);
            }

            else
            {
              v40 = 1;
              v41 = 2139095040;
            }
          }

          ++v39;
        }

        while (v75 != v39);
        v45 = *&__src.__begin_[v38];
        if (v40)
        {
          v46 = INFINITY;
          if (v40 == 2)
          {
            v46 = -INFINITY;
          }

          goto LABEL_50;
        }

        if (v41)
        {
          v46 = v41;
LABEL_50:
          *&v78 = 0.0;
          v48 = frexp(v46, &v78);
          v49 = ldexp(v48, 11);
          v47 = ldexp(round(v49), v78 - 11);
          goto LABEL_51;
        }
      }

      else
      {
        v45 = *&__src.__begin_[v38];
      }

      v47 = 0.0;
LABEL_51:
      v50 = v45 * v47;
      v51 = 0.0;
      if (v50 != 0.0)
      {
        *&v78 = 0.0;
        v52 = frexp(v50, &v78);
        v53 = ldexp(v52, 11);
        v51 = ldexp(round(v53), v78 - 11);
      }

      v54 = std::function<float ()(float)>::operator()(a13, v51);
      v56 = MIL::Fp16::FromFloat(v54, v55);
      if (v38 == v67)
      {
        goto LABEL_54;
      }
    }
  }

LABEL_58:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v57 = *MEMORY[0x277D85DE8];
}

void sub_2599C4238(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v81 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a4;
  v20 = (a4[1] - *a4) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a5;
  v22 = (a5[1] - *a5) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v60 = **a3;
  v61 = *(*a3 + 1);
  v75 = *(*a3 + 4);
  v70 = *(*a4 + 1);
  v71 = **a4;
  v69 = *(*a4 + 2);
  v23 = **a5;
  v62 = *(*a5 + 1);
  v63 = *(*a5 + 2);
  v24 = *(*a5 + 4);
  v64 = *(*a5 + 3);
  v65 = *(*a3 + 2);
  v25 = ldexp(1.0, a7);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v67 = v24;
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v78 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v78);
    *v32.i32 = v31 * v28;
    v79 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v79, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v78 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v78);
      *&v79 = v58 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v79);
      ++v29;
    }
  }

  v77 = a4;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v59 = v23;
    while (!v62)
    {
LABEL_66:
      if (++v33 == v59)
      {
        goto LABEL_67;
      }
    }

    v35 = 0;
    while (!v63)
    {
LABEL_65:
      if (++v35 == v62)
      {
        goto LABEL_66;
      }
    }

    v36 = 0;
    while (!v64)
    {
LABEL_64:
      if (++v36 == v63)
      {
        goto LABEL_65;
      }
    }

    v76 = 0;
    while (!v67)
    {
LABEL_63:
      if (++v76 == v64)
      {
        goto LABEL_64;
      }
    }

    v37 = 0;
    while (1)
    {
      if (v75)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = a9;
          if (!a11 || (v43 = a12, v38 != *(v77[1] - 2)))
          {
          }

          if (!v39 && a7 >= -20)
          {
            v44 = llroundf((v42 * v43) * v34) + v40;
            if (v44 <= 0x7FFFFFFF)
            {
              if (v44 >= 0xFFFFFFFF80000000)
              {
                v40 = v44;
              }

              else
              {
                v40 = -8388608;
              }

              v39 = 2 * (v44 < 0xFFFFFFFF80000000);
            }

            else
            {
              v39 = 1;
              v40 = 2139095040;
            }
          }

          a9 = v41;
          ++v38;
        }

        while (v75 != v38);
        v45 = *&__src.__begin_[v37];
        if (v39)
        {
          v46 = INFINITY;
          if (v39 == 2)
          {
            v46 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v40)
        {
          v46 = v40;
LABEL_52:
          *&v79 = 0.0;
          v48 = frexp(v46, &v79);
          v49 = ldexp(v48, 11);
          v47 = ldexp(round(v49), v79 - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v45 = *&__src.__begin_[v37];
      }

      v47 = 0.0;
LABEL_53:
      v50 = v45 * v47;
      v51 = 0.0;
      if (v50 != 0.0)
      {
        *&v79 = 0.0;
        v52 = frexp(v50, &v79);
        v53 = ldexp(v52, 11);
        v51 = ldexp(round(v53), v79 - 11);
      }

      std::function<float ()(float)>::operator()(a13, v51);
      if (v54 == INFINITY)
      {
        LOBYTE(v55) = -1;
      }

      else if (v54 == -INFINITY)
      {
        LOBYTE(v55) = 0;
      }

      else
      {
        v56 = llroundf(v54);
        if (v56 >= 255)
        {
          v56 = 255;
        }

        v55 = v56 & ~(v56 >> 31);
      }

      if (v37 == v67)
      {
        goto LABEL_63;
      }
    }
  }

LABEL_67:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v57 = *MEMORY[0x277D85DE8];
}

void sub_2599C48F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,unsigned char,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, unsigned __int8 a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v19 = *a4;
  v20 = (a4[1] - *a4) >> 3;
  if (v20 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v20 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v19 + 8, &__src, &__src.__end_, 1);
  }

  v21 = *a5;
  v22 = (a5[1] - *a5) >> 3;
  if (v22 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v22 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v21 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v63 = *(*a3 + 2);
  v64 = *(*a3 + 1);
  v74 = *(*a3 + 4);
  v68 = *(*a4 + 1);
  v69 = **a4;
  v67 = *(*a4 + 2);
  v23 = **a5;
  v59 = **a3;
  v60 = *(*a5 + 1);
  v61 = *(*a5 + 2);
  v62 = *(*a5 + 3);
  v24 = *(*a5 + 4);
  v25 = ldexp(1.0, a7);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  std::vector<int>::reserve(&__src, v24);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    v78 = v32.i32[0];
    std::vector<float>::assign(&__src, v24, &v78, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&v78 = v57 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &v78);
      ++v29;
    }
  }

  v76 = a4;
  if (v23)
  {
    v33 = 0;
    v34 = v25;
    v58 = v23;
    while (!v60)
    {
LABEL_68:
      if (++v33 == v58)
      {
        goto LABEL_69;
      }
    }

    v35 = 0;
    while (!v61)
    {
LABEL_67:
      if (++v35 == v60)
      {
        goto LABEL_68;
      }
    }

    v36 = 0;
    while (!v62)
    {
LABEL_66:
      if (++v36 == v61)
      {
        goto LABEL_67;
      }
    }

    v75 = 0;
    while (!v24)
    {
LABEL_65:
      if (++v75 == v62)
      {
        goto LABEL_66;
      }
    }

    v71 = 0;
    while (1)
    {
      if (v74)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        do
        {
          v40 = a9;
          if (!a11 || (v42 = a12, v37 != *(v76[1] - 2)))
          {
          }

          if (!v38 && a7 >= -20)
          {
            v43 = llroundf((v41 * v42) * v34) + v39;
            if (v43 <= 0x7FFFFFFF)
            {
              if (v43 >= 0xFFFFFFFF80000000)
              {
                v39 = v43;
              }

              else
              {
                v39 = -8388608;
              }

              v38 = 2 * (v43 < 0xFFFFFFFF80000000);
            }

            else
            {
              v38 = 1;
              v39 = 2139095040;
            }
          }

          a9 = v40;
          ++v37;
        }

        while (v74 != v37);
        v44 = *&__src.__begin_[v71];
        if (v38)
        {
          v45 = INFINITY;
          if (v38 == 2)
          {
            v45 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v39)
        {
          v45 = v39;
LABEL_52:
          *&v78 = 0.0;
          v47 = frexp(v45, &v78);
          v48 = ldexp(v47, 11);
          v46 = ldexp(round(v48), v78 - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v44 = *&__src.__begin_[v71];
      }

      v46 = 0.0;
LABEL_53:
      v49 = v44 * v46;
      v50 = 0.0;
      if (v49 != 0.0)
      {
        *&v78 = 0.0;
        v51 = frexp(v49, &v78);
        v52 = ldexp(v51, 11);
        v50 = ldexp(round(v52), v78 - 11);
      }

      std::function<float ()(float)>::operator()(a13, v50);
      if (v53 == INFINITY)
      {
        v54 = 127;
      }

      else if (v53 == -INFINITY)
      {
        v54 = 0x80;
      }

      else
      {
        v55 = llroundf(v53);
        if (v55 >= 127)
        {
          v55 = 127;
        }

        if (v55 <= -128)
        {
          v54 = 0x80;
        }

        else
        {
          v54 = v55;
        }
      }

      if (v71 == v24)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_69:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v56 = *MEMORY[0x277D85DE8];
}

void sub_2599C4FBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,MIL::Fp16>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, char **a4@<X3>, char **a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v83 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a4[1] - *a4) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = (a4[1] - *a4) >> 3;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<MIL::Fp16>::resize(a9, a6);
  v61 = **a3;
  v62 = *(*a3 + 1);
  v64 = *(*a3 + 2);
  v78 = *(*a3 + 4);
  v74 = *(*a4 + 1);
  v75 = **a4;
  v73 = *(*a4 + 2);
  v24 = **a5;
  v63 = *(*a5 + 1);
  v65 = *(*a5 + 2);
  v66 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v68 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v80 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v80);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v68, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v80 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v80);
      *&__e = v59 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  v79 = a4;
  if (v24)
  {
    v33 = 0;
    v70 = -a7;
    v69 = 1 << ~a7;
    v71 = a7;
    v60 = v24;
    while (!v63)
    {
LABEL_59:
      if (++v33 == v60)
      {
        goto LABEL_60;
      }
    }

    v34 = 0;
    while (!v65)
    {
LABEL_58:
      if (++v34 == v63)
      {
        goto LABEL_59;
      }
    }

    v35 = 0;
    while (!v66)
    {
LABEL_57:
      if (++v35 == v65)
      {
        goto LABEL_58;
      }
    }

    v36 = 0;
    while (!v68)
    {
LABEL_56:
      if (++v36 == v66)
      {
        goto LABEL_57;
      }
    }

    v37 = 0;
    while (1)
    {
      if (v78)
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
        do
        {
          if (!a11 || (v42 = a12, v38 != *(v79[1] - 2)))
          {
          }

          if (!v39)
          {
            v43 = v42 * v41;
            if (v71)
            {
              v44 = (v43 + v69) >> v70;
              v43 <<= v71;
              if (v71 < 1)
              {
                v43 = v44;
              }
            }

            v45 = v40 + v43;
            if (v45 <= 0x7FFFFFFF)
            {
              if (v45 >= 0xFFFFFFFF80000000)
              {
                v40 = v45;
              }

              else
              {
                v40 = -8388608;
              }

              v39 = 2 * (v45 < 0xFFFFFFFF80000000);
            }

            else
            {
              v39 = 1;
              v40 = 2139095040;
            }
          }

          ++v38;
        }

        while (v78 != v38);
        v46 = *&__src.__begin_[v37];
        if (v39)
        {
          v47 = INFINITY;
          if (v39 == 2)
          {
            v47 = -INFINITY;
          }

          goto LABEL_52;
        }

        if (v40)
        {
          v47 = v40;
LABEL_52:
          *&__e = 0.0;
          v49 = frexp(v47, &__e);
          v50 = ldexp(v49, 11);
          v48 = ldexp(round(v50), __e - 11);
          goto LABEL_53;
        }
      }

      else
      {
        v46 = *&__src.__begin_[v37];
      }

      v48 = 0.0;
LABEL_53:
      v51 = v46 * v48;
      v52 = 0.0;
      if (v51 != 0.0)
      {
        *&__e = 0.0;
        v53 = frexp(v51, &__e);
        v54 = ldexp(v53, 11);
        v52 = ldexp(round(v54), __e - 11);
      }

      v55 = std::function<float ()(float)>::operator()(a13, v52);
      v57 = MIL::Fp16::FromFloat(v55, v56);
      if (v37 == v68)
      {
        goto LABEL_56;
      }
    }
  }

LABEL_60:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_2599C5638(_Unwind_Exception *exception_object)
{
  v4 = *(v2 - 144);
  if (v4)
  {
    *(v2 - 136) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,unsigned char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, unint64_t **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((a4[1] - *a4 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = a4[1] - *a4;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v62 = *(*a3 + 1);
  v63 = **a3;
  v61 = *(*a3 + 2);
  v74 = *(*a3 + 4);
  v76 = a4;
  v68 = (*a4)[1];
  v69 = **a4;
  v67 = (*a4)[2];
  v24 = **a5;
  v58 = *(*a5 + 1);
  v59 = *(*a5 + 2);
  v60 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v65 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v65, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&__e = v56 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v24)
  {
    v70 = 0;
    v57 = v24;
    while (!v58)
    {
LABEL_68:
      if (++v70 == v57)
      {
        goto LABEL_69;
      }
    }

    v33 = 0;
    while (!v59)
    {
LABEL_67:
      if (++v33 == v58)
      {
        goto LABEL_68;
      }
    }

    v34 = 0;
    while (!v60)
    {
LABEL_66:
      if (++v34 == v59)
      {
        goto LABEL_67;
      }
    }

    v75 = 0;
    while (!v65)
    {
LABEL_65:
      if (++v75 == v60)
      {
        goto LABEL_66;
      }
    }

    v71 = 0;
    while (1)
    {
      if (v74)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        do
        {
          if (!a11 || (v39 = a12, v35 != *(v76[1] - 2)))
          {
          }

          if (!v36)
          {
            v40 = v39 * v38;
            if (a7)
            {
              v41 = (v40 + (1 << ~a7)) >> -a7;
              v40 <<= a7;
              if (a7 < 1)
              {
                v40 = v41;
              }
            }

            v42 = v37 + v40;
            if (v42 <= 0x7FFFFFFF)
            {
              if (v42 >= 0xFFFFFFFF80000000)
              {
                v37 = v42;
              }

              else
              {
                v37 = -8388608;
              }

              v36 = 2 * (v42 < 0xFFFFFFFF80000000);
            }

            else
            {
              v36 = 1;
              v37 = 2139095040;
            }
          }

          ++v35;
        }

        while (v74 != v35);
        v43 = *&__src.__begin_[v71];
        if (v36)
        {
          v44 = INFINITY;
          if (v36 == 2)
          {
            v44 = -INFINITY;
          }

          goto LABEL_54;
        }

        if (v37)
        {
          v44 = v37;
LABEL_54:
          *&__e = 0.0;
          v46 = frexp(v44, &__e);
          v47 = ldexp(v46, 11);
          v45 = ldexp(round(v47), __e - 11);
          goto LABEL_55;
        }
      }

      else
      {
        v43 = *&__src.__begin_[v71];
      }

      v45 = 0.0;
LABEL_55:
      v48 = v43 * v45;
      v49 = 0.0;
      if (v48 != 0.0)
      {
        *&__e = 0.0;
        v50 = frexp(v48, &__e);
        v51 = ldexp(v50, 11);
        v49 = ldexp(round(v51), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v49);
      if (v52 == INFINITY)
      {
        LOBYTE(v53) = -1;
      }

      else if (v52 == -INFINITY)
      {
        LOBYTE(v53) = 0;
      }

      else
      {
        v54 = llroundf(v52);
        if (v54 >= 255)
        {
          v54 = 255;
        }

        v53 = v54 & ~(v54 >> 31);
      }

      if (v71 == v65)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_69:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2599C5D04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<signed char,signed char,signed char>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X2>, unint64_t **a4@<X3>, char **a5@<X4>, size_t a6@<X5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, float **a10, char a11, char a12, uint64_t a13)
{
  v80 = *MEMORY[0x277D85DE8];
  v14 = *a3;
  v15 = (a3[1] - *a3) >> 3;
  if ((v15 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((a4[1] - *a4 - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if ((((a5[1] - *a5) >> 3) - 6) <= 0xFFFFFFFFFFFFFFFCLL)
  {
  }

  if (v15 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v15 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a3, v14 + 8, &__src, &__src.__end_, 1);
  }

  v20 = *a4;
  v21 = a4[1] - *a4;
  if (v21 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v21 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a4, v20 + 8, &__src, &__src.__end_, 1);
  }

  v22 = *a5;
  v23 = (a5[1] - *a5) >> 3;
  if (v23 == 3)
  {
    *&__src.__begin_ = vdupq_n_s64(1uLL);
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_cap_, 2);
  }

  else if (v23 == 4)
  {
    __src.__begin_ = 1;
    std::vector<unsigned long long>::__insert_with_size[abi:ne200100]<unsigned long long const*,unsigned long long const*>(a5, v22 + 8, &__src, &__src.__end_, 1);
  }

  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  if (a6)
  {
    std::vector<unsigned char>::__append(a9, a6);
  }

  v62 = *(*a3 + 1);
  v63 = **a3;
  v61 = *(*a3 + 2);
  v74 = *(*a3 + 4);
  v76 = a4;
  v68 = (*a4)[1];
  v69 = **a4;
  v67 = (*a4)[2];
  v24 = **a5;
  v58 = *(*a5 + 1);
  v59 = *(*a5 + 2);
  v60 = *(*a5 + 3);
  v25 = *(*a5 + 4);
  v26 = exp2(-(a8 + a7));
  memset(&__src, 0, sizeof(__src));
  v65 = v25;
  std::vector<int>::reserve(&__src, v25);
  v28 = v26;
  v29 = *a10;
  v30 = a10[1];
  if (v30 - *a10 == 4)
  {
    v77 = MIL::Fp16::FromFloat(v27, *v29);
    MIL::Fp16::GetFloat(&v77);
    *v32.i32 = v31 * v28;
    __e = v32.i32[0];
    std::vector<float>::assign(&__src, v65, &__e, v32);
  }

  else
  {
    while (v29 != v30)
    {
      v77 = MIL::Fp16::FromFloat(v27, *v29);
      MIL::Fp16::GetFloat(&v77);
      *&__e = v56 * v28;
      std::vector<float>::push_back[abi:ne200100](&__src.__begin_, &__e);
      ++v29;
    }
  }

  if (v24)
  {
    v70 = 0;
    v57 = v24;
    while (!v58)
    {
LABEL_70:
      if (++v70 == v57)
      {
        goto LABEL_71;
      }
    }

    v33 = 0;
    while (!v59)
    {
LABEL_69:
      if (++v33 == v58)
      {
        goto LABEL_70;
      }
    }

    v34 = 0;
    while (!v60)
    {
LABEL_68:
      if (++v34 == v59)
      {
        goto LABEL_69;
      }
    }

    v75 = 0;
    while (!v65)
    {
LABEL_67:
      if (++v75 == v60)
      {
        goto LABEL_68;
      }
    }

    v71 = 0;
    while (1)
    {
      if (v74)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        do
        {
          if (!a11 || (v39 = a12, v35 != *(v76[1] - 2)))
          {
          }

          if (!v36)
          {
            v40 = v39 * v38;
            if (a7)
            {
              v41 = (v40 + (1 << ~a7)) >> -a7;
              v40 <<= a7;
              if (a7 < 1)
              {
                v40 = v41;
              }
            }

            v42 = v37 + v40;
            if (v42 <= 0x7FFFFFFF)
            {
              if (v42 >= 0xFFFFFFFF80000000)
              {
                v37 = v42;
              }

              else
              {
                v37 = -8388608;
              }

              v36 = 2 * (v42 < 0xFFFFFFFF80000000);
            }

            else
            {
              v36 = 1;
              v37 = 2139095040;
            }
          }

          ++v35;
        }

        while (v74 != v35);
        v43 = *&__src.__begin_[v71];
        if (v36)
        {
          v44 = INFINITY;
          if (v36 == 2)
          {
            v44 = -INFINITY;
          }

          goto LABEL_54;
        }

        if (v37)
        {
          v44 = v37;
LABEL_54:
          *&__e = 0.0;
          v46 = frexp(v44, &__e);
          v47 = ldexp(v46, 11);
          v45 = ldexp(round(v47), __e - 11);
          goto LABEL_55;
        }
      }

      else
      {
        v43 = *&__src.__begin_[v71];
      }

      v45 = 0.0;
LABEL_55:
      v48 = v43 * v45;
      v49 = 0.0;
      if (v48 != 0.0)
      {
        *&__e = 0.0;
        v50 = frexp(v48, &__e);
        v51 = ldexp(v50, 11);
        v49 = ldexp(round(v51), __e - 11);
      }

      std::function<float ()(float)>::operator()(a13, v49);
      if (v52 == INFINITY)
      {
        v53 = 127;
      }

      else if (v52 == -INFINITY)
      {
        v53 = 0x80;
      }

      else
      {
        v54 = llroundf(v52);
        if (v54 >= 127)
        {
          v54 = 127;
        }

        if (v54 <= -128)
        {
          v53 = 0x80;
        }

        else
        {
          v53 = v54;
        }
      }

      if (v71 == v65)
      {
        goto LABEL_67;
      }
    }
  }

LABEL_71:
  if (__src.__begin_)
  {
    __src.__end_ = __src.__begin_;
    operator delete(__src.__begin_);
  }

  v55 = *MEMORY[0x277D85DE8];
}

void sub_2599C63D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float const*,float const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2599C6494(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::ANEMachineIR::Interpreter::anonymous namespace::GetRank5TensorIndex(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1[1] - *a1 != 40)
  {
  }

  return a6 + (a5 + (a4 + *(*a1 + 16) * a3 + *(*a1 + 8) * a2 * *(*a1 + 16)) * *(*a1 + 24)) * *(*a1 + 32);
}

void MIL::ANEMachineIR::Interpreter::anonymous namespace::ComputeValue<MIL::Fp16,MIL::Fp16,MIL::Fp16>()
{
  __assert_rtn("ComputeValue", "NeBatchMatmulCpu.cpp", 65, "o_shape.size() >= 3 && o_shape.size() <= 5");
}

{
  __assert_rtn("ComputeValue", "NeBatchMatmulCpu.cpp", 64, "y_shape.size() >= 3 && y_shape.size() <= 5");
}

{
  __assert_rtn("ComputeValue", "NeBatchMatmulCpu.cpp", 63, "x_shape.size() >= 3 && x_shape.size() <= 5");
}

void MilTranslator::MilTranslator::~MilTranslator(MilTranslator::MilTranslator *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void *MilTranslator::MilTranslator::MilTranslator(void *result, void *a2, uint64_t a3, void *a4)
{
  v4 = a2[1];
  *result = *a2;
  result[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result[2] = a3;
  v5 = a4[1];
  result[3] = *a4;
  result[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MilTranslator::MilTranslator::Compile(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(**a1 + 48))(&v28);
  v10 = *a1;
  Function = MIL::IRProgram::GetFunction();
  v25 = v28;
  v26 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = a1[1];
  v23 = *a1;
  v24 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MilTranslator::OpTranslator::OpTranslator(v27, &v25, &v23, a4, a1[2], a3, 1);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  MilTranslator::OpTranslator::Translate(v27, Function, a5);
  if (!*a5)
  {
    if (*(a5 + 31) < 0)
    {
      operator delete(*(a5 + 8));
    }

    MilTranslator::OpTranslator::GetBlockBuilder(v27, &v21);
    v13 = a1[3];
    v19 = v21;
    v20 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    MilTranslator::Passes::PassManager::Run(v13, &v19, a5);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (!*a5)
    {
      if (*(a5 + 31) < 0)
      {
        operator delete(*(a5 + 8));
      }

      v14 = (*(*Function + 128))(Function);
      std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](v18, v14);
      v15 = (*(*Function + 40))(Function);
      v16 = (*(*v15 + 88))(v15);
      memset(v17, 0, sizeof(v17));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v17, *v16, v16[1], 0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 3));
      MilTranslator::OpTranslator::ConstructProgram(v27, a2, v18, v17, a5);
      if (!*a5)
      {
        if (*(a5 + 31) < 0)
        {
          operator delete(*(a5 + 8));
        }

        *a5 = 0;
        std::string::basic_string[abi:ne200100]<0>((a5 + 8), &unk_259A4D977);
      }

      v30 = v17;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
      std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(v18, v18[1]);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  MilTranslator::OpTranslator::~OpTranslator(v27);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }
}

void sub_2599C68B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, char *);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, std::__shared_weak_count *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  *(v6 - 72) = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v6 - 72));
  std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(va, v11);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  MilTranslator::OpTranslator::~OpTranslator(va1);
  v8 = *(v6 - 80);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  _Unwind_Resume(a1);
}

void sub_2599C69E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    MilTranslator::RegisterDefaultOptimizationPasses(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_2599C6BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = *v18;
  *v18 = 0;
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  MilTranslator::MilTranslator::~MilTranslator(&a17);
  std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  _Unwind_Resume(a1);
}

void MilTranslator::TranslateProgram(uint64_t a1)
{
  MIL::MILContext::Make(&v7, a1);
  if (v7)
  {
    operator new();
  }

  v3 = register_aneflow_opsets(0, v2);
  MIL::ParserOptions::Make(&v7, v3);
  v4 = v7;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a1, *(a1 + 8));
  }

  else
  {
    v6 = *a1;
  }

  (*(*v4 + 48))(v4, &v6);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }

  (*(*v7 + 64))(v7, 1);
  MIL::Text::ParseProgramFromFile();
  if (v5)
  {
    operator new();
  }

  MilTranslator::TranslateProgram();
}

void sub_2599C6EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  if (a21)
  {
    (*(*a21 + 8))(a21);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::CheckSupportedOps()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Not implemented.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Not implemented.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *std::map<std::string,MIL::IRValueType const*>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,MIL::IRValueType const*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,MIL::IRValueType const*>,std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MIL::IRValueType const*> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__construct_node<std::pair<std::string const,MIL::IRValueType const*> const&>();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 8;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(a1, a3, a5);
}

void sub_2599C73F4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

BOOL std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a3 + 23);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v3 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v3 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  if (v7 >= v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  v10 = memcmp(v6, v8, v9);
  if (v10)
  {
    return v10 < 0;
  }

  else
  {
    return v5 < v7;
  }
}

uint64_t std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MIL::IRValueType const*>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

MilTranslator::Passes::FuseConvScale *MilTranslator::Passes::FuseConvScale::FuseConvScale(MilTranslator::Passes::FuseConvScale *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "FuseConvScale");
  memset(v3, 0, sizeof(v3));
  v4 = 1065353216;
  MilTranslator::Passes::Pass::Pass(this, __p, v3);
  *this = &unk_286AB1E58;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_286AB28A0;
  return this;
}

void sub_2599C7880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t MilTranslator::Passes::Pass::Pass(uint64_t a1, __int128 *a2, uint64_t a3)
{
  *a1 = &unk_286AB1EB8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v5;
  }

  std::unordered_set<std::string>::unordered_set(a1 + 32, a3);
  return a1;
}

void sub_2599C792C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void MilTranslator::Passes::PatternPass::Apply(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  while (1)
  {
    v6 = a2[1];
    v10 = *a2;
    v11 = v6;
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 24))(v12, a1, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v12[0] == v12[1])
    {
      v13 = v12;
      std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v13);
      *a3 = 0;
      std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
      return;
    }

    v7 = a2[1];
    v8 = *a2;
    v9 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 32))(a1, &v8, v12);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (*a3)
    {
      break;
    }

    if (*(a3 + 31) < 0)
    {
      operator delete(*(a3 + 8));
    }

    v13 = v12;
    std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v13);
  }

  v13 = v12;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&v13);
}

void sub_2599C7AA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  a16 = &a13;
  std::vector<std::shared_ptr<MIL::IRParameter>>::__destroy_vector::operator()[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<MIL::IRParameter>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

void std::__shared_ptr_emplace<MilTranslator::Passes::PassManager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286AB1EE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

void MilTranslator::Passes::PassManager::~PassManager(MilTranslator::Passes::PassManager *this)
{
  *this = &unk_286AB1F30;
  v1 = (this + 8);
  std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::__destroy_vector::operator()[abi:ne200100](&v1);
}

{
  *this = &unk_286AB1F30;
  v2 = (this + 8);
  std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::__destroy_vector::operator()[abi:ne200100](&v2);
  MEMORY[0x259CA9760](this, 0xA1C4030951706);
}

void std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<MilTranslator::Passes::Pass>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void std::__shared_ptr_pointer<MIL::MILContext  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::MILContext  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_pointer<MIL::IRProgram  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259CA9760);
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MIL::IRProgram  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ANEMachineIR::Validators::ValidateBaseActivation(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v50, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  v6 = (*(*v5 + 96))(v5);
  v53 = 0;
  v54 = 0;
  v55 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v53, *v6, v6[1], (v6[1] - *v6) >> 3);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v50);
  }

  v7 = (*(*a1 + 176))(a1);
  if (*(v7 + 8) == *v7)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v7);
  v9 = MIL::IRValueType::AsTensorType(Type);
  v10 = (*(*v9 + 96))(v9);
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v50, *v10, v10[1], (v10[1] - *v10) >> 3);
  if (v51 - v50 != v54 - v53)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v24 = LocationPtr[1];
    v48 = *LocationPtr;
    v49 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v46, "Activation input and output must have same rank.");
    MEMORY[0x259CA8EE0](a2, &v48, 319, v46);
    if (v47 < 0)
    {
      operator delete(v46[0]);
    }

    v25 = v49;
    if (!v49)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (v54 != v53)
  {
    v11 = 0;
    if (((v54 - v53) >> 3) <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v54 - v53) >> 3;
    }

    while (1)
    {
      if (v11 >= (v54 - v53) >> 3)
      {
        goto LABEL_51;
      }

      if (!(*(*v53[v11] + 16))(v53[v11]))
      {
        break;
      }

      if (v11 >= (v51 - v50) >> 3)
      {
LABEL_51:
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }

      if (!(*(**(v50 + v11) + 16))(*(v50 + v11)))
      {
        break;
      }

      if (v11 >= (v51 - v50) >> 3)
      {
        goto LABEL_51;
      }

      v13 = MIL::IRDimension::AsConstant(*(v50 + v11));
      v14 = (*(*v13 + 48))(v13);
      if (v11 >= (v54 - v53) >> 3)
      {
        goto LABEL_51;
      }

      v15 = v14;
      v16 = MIL::IRDimension::AsConstant(v53[v11]);
      if (v15 != (*(*v16 + 48))(v16))
      {
        v30 = MIL::IRObject::GetLocationPtr(a1);
        v31 = v30[1];
        v40 = *v30;
        v41 = v31;
        if (v31)
        {
          atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v38, "Activation input and output must have same shape.");
        MEMORY[0x259CA8EE0](a2, &v40, 319, v38);
        if (v39 < 0)
        {
          operator delete(v38[0]);
        }

        v25 = v41;
        if (v41)
        {
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      if (v12 == ++v11)
      {
        goto LABEL_17;
      }
    }

    v26 = MIL::IRObject::GetLocationPtr(a1);
    v27 = v26[1];
    v44 = *v26;
    v45 = v27;
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v42, "Activation input and output must have known shape.");
    MEMORY[0x259CA8EE0](a2, &v44, 319, v42);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    v25 = v45;
    if (v45)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

LABEL_17:
  std::string::basic_string[abi:ne200100]<0>(&__p, "x");
  v17 = MIL::IROperation::GetParameterType();
  v18 = MIL::IRValueType::AsTensorType(v17);
  v19 = (*(*v18 + 88))(v18);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  v20 = (*(*a1 + 176))(a1);
  if (*(v20 + 8) == *v20)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v21 = MIL::IRNamedValueType::GetType(**v20);
  v22 = MIL::IRValueType::AsTensorType(v21);
  if (v19 == (*(*v22 + 88))(v22))
  {
    MIL::ValidationResult::ValidationResult(a2);
    goto LABEL_28;
  }

  v28 = MIL::IRObject::GetLocationPtr(a1);
  v29 = v28[1];
  v34 = *v28;
  v35 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(v32, "Activation inputs and outputs must have same data type.");
  MEMORY[0x259CA8EE0](a2, &v34, 304, v32);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  v25 = v35;
  if (v35)
  {
LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

LABEL_28:
  if (v50)
  {
    v51 = v50;
    operator delete(v50);
  }

  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }
}

void sub_2599C8430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, std::__shared_weak_count *a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a31);
  }

  v41 = *(v39 - 96);
  if (v41)
  {
    *(v39 - 88) = v41;
    operator delete(v41);
  }

  v42 = *(v39 - 72);
  if (v42)
  {
    *(v39 - 64) = v42;
    operator delete(v42);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ValidateLinear@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  ANEMachineIR::Validators::ValidateBaseActivation(a1, v5);
  if (MIL::ValidationResult::IsGood(v5))
  {
    MIL::ValidationResult::ValidationResult(a2);
  }

  else
  {
    v3 = v7;
    *(a2 + 8) = v6;
    v6 = 0uLL;
    *(a2 + 24) = v3;
    *(a2 + 40) = v8;
    v7 = 0uLL;
    v8 = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = v9;
  }

  return MEMORY[0x259CA8F00](v5);
}

uint64_t ANEMachineIR::Validators::ValidateLrelu@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  ANEMachineIR::Validators::ValidateBaseActivation(a1, v24);
  if ((MIL::ValidationResult::IsGood(v24) & 1) == 0)
  {
    *(a2 + 8) = v25;
    v25 = 0uLL;
    *(a2 + 24) = v26;
    *(a2 + 40) = v27;
    v26 = 0uLL;
    v27 = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = v28;
    return MEMORY[0x259CA8F00](v24);
  }

  v23 = 1.0;
  v22 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "scale");
  MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(a1, &v22, &v23, a2);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    if (v22 != 1 || v23 == 1.0)
    {
      v15 = 0.3;
      v14 = 0;
      std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
      MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(a1, &v14, &v15, a2);
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::ValidationResult::IsGood(a2))
      {
        MEMORY[0x259CA8F00](a2);
        if (v14 != 1 || v15 > 0.0 && v15 < 1.0)
        {
          MIL::ValidationResult::ValidationResult(a2);
          return MEMORY[0x259CA8F00](v24);
        }

        LocationPtr = MIL::IRObject::GetLocationPtr(a1);
        v9 = LocationPtr[1];
        v12 = *LocationPtr;
        v13 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(v10, "Alpha is out of range (0 < alpha < 1).");
        MEMORY[0x259CA8EE0](a2, &v12, 319, v10);
        if (v11 < 0)
        {
          operator delete(v10[0]);
        }

        v6 = v13;
        if (v13)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v4 = MIL::IRObject::GetLocationPtr(a1);
      v5 = v4[1];
      v18 = *v4;
      v19 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v16, "Scale must be 1, otherwise convert scale into post_scale and alpha. This restriction is an arbitrary behavior of pyANE compiler");
      MEMORY[0x259CA8EE0](a2, &v18, 319, v16);
      if (v17 < 0)
      {
        operator delete(v16[0]);
      }

      v6 = v19;
      if (v19)
      {
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }
    }
  }

  return MEMORY[0x259CA8F00](v24);
}

void sub_2599C8848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x259CA8F00](v31 - 72);
  _Unwind_Resume(a1);
}

void MIL::ANEMachineIR::ExpectCorrectlyTypedOptional<float>(MIL::IRObject *a1@<X0>, _BYTE *a2@<X2>, _DWORD *a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (!ParameterValue)
  {
    *a2 = 0;
    goto LABEL_25;
  }

  if ((*(*ParameterValue + 40))(ParameterValue))
  {
    v9 = MEMORY[0x259CA9400]();
    if (v9)
    {
      *a3 = *v9;
      *a2 = 1;
LABEL_25:

      MIL::ValidationResult::ValidationResult(a4);
      return;
    }
  }

  *a2 = 0;
  LocationPtr = MIL::IRObject::GetLocationPtr(a1);
  v11 = LocationPtr[1];
  v27 = *LocationPtr;
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v12 = std::string::append(&v22, " in operation ");
  v13 = *&v12->__r_.__value_.__l.__data_;
  v23.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v23.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = (*(*a1 + 56))(a1);
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::string::append(&v23, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v24, ".");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v26 = v20->__r_.__value_.__r.__words[2];
  *__p = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a4, &v27, 304, __p);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }
}

void sub_2599C8B00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  v37 = *(v35 - 56);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ANEMachineIR::Validators::ValidateNePiecewiseV2@<X0>(MIL::IRObject *a1@<X0>, uint64_t a2@<X8>)
{
  ANEMachineIR::Validators::ValidateBaseActivation(a1, v109);
  if ((MIL::ValidationResult::IsGood(v109) & 1) == 0)
  {
    v39 = v111;
    *(a2 + 8) = v110;
    v110 = 0uLL;
    *(a2 + 24) = v39;
    *(a2 + 40) = v112;
    v111 = 0uLL;
    v112 = 0;
    *a2 = MEMORY[0x277D24E58] + 16;
    *(a2 + 48) = v113;
    return MEMORY[0x259CA8F00](v109);
  }

  v4 = std::string::basic_string[abi:ne200100]<0>(&v107, "x_sat_left");
  v5 = MIL::Fp16::FromFloat(v4, 0.0);
  ParameterValue = MIL::IROperation::TryGetParameterValue();
  if (ParameterValue)
  {
    if ((*(*ParameterValue + 40))(ParameterValue))
    {
      v7 = MEMORY[0x259CA93C0]();
      if (v7)
      {
        v5 = *v7;
      }
    }
  }

  v108 = v5;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v8 = std::string::basic_string[abi:ne200100]<0>(&v107, "x_sat_right");
  v9 = MIL::Fp16::FromFloat(v8, 0.0);
  v10 = MIL::IROperation::TryGetParameterValue();
  if (v10)
  {
    if ((*(*v10 + 40))(v10))
    {
      v11 = MEMORY[0x259CA93C0]();
      if (v11)
      {
        v9 = *v11;
      }
    }
  }

  v106 = v9;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v12 = std::string::basic_string[abi:ne200100]<0>(&v107, "y_sat_left");
  v13 = MIL::Fp16::FromFloat(v12, 0.0);
  v14 = MIL::IROperation::TryGetParameterValue();
  if (v14)
  {
    if ((*(*v14 + 40))(v14))
    {
      v15 = MEMORY[0x259CA93C0]();
      if (v15)
      {
        v13 = *v15;
      }
    }
  }

  v105 = v13;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v16 = std::string::basic_string[abi:ne200100]<0>(&v107, "y_sat_right");
  v17 = MIL::Fp16::FromFloat(v16, 0.0);
  v18 = MIL::IROperation::TryGetParameterValue();
  if (v18)
  {
    if ((*(*v18 + 40))(v18))
    {
      v19 = MEMORY[0x259CA93C0]();
      if (v19)
      {
        v17 = *v19;
      }
    }
  }

  v104 = v17;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v20 = std::string::basic_string[abi:ne200100]<0>(&v107, "slope_left");
  v21 = MIL::Fp16::FromFloat(v20, 0.0);
  v22 = MIL::IROperation::TryGetParameterValue();
  if (v22)
  {
    if ((*(*v22 + 40))(v22))
    {
      v23 = MEMORY[0x259CA93C0]();
      if (v23)
      {
        v21 = *v23;
      }
    }
  }

  v103 = v21;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v24 = std::string::basic_string[abi:ne200100]<0>(&v107, "slope_right");
  v25 = MIL::Fp16::FromFloat(v24, 0.0);
  v26 = MIL::IROperation::TryGetParameterValue();
  if (v26)
  {
    if ((*(*v26 + 40))(v26))
    {
      v27 = MEMORY[0x259CA93C0]();
      if (v27)
      {
        v25 = *v27;
      }
    }
  }

  v102 = v25;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v28 = std::string::basic_string[abi:ne200100]<0>(&v107, "intercept_left");
  v29 = MIL::Fp16::FromFloat(v28, 0.0);
  v30 = MIL::IROperation::TryGetParameterValue();
  if (v30)
  {
    if ((*(*v30 + 40))(v30))
    {
      v31 = MEMORY[0x259CA93C0]();
      if (v31)
      {
        v29 = *v31;
      }
    }
  }

  v101 = v29;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  v32 = std::string::basic_string[abi:ne200100]<0>(&v107, "intercept_right");
  v33 = MIL::Fp16::FromFloat(v32, 0.0);
  v34 = MIL::IROperation::TryGetParameterValue();
  if (v34)
  {
    if ((*(*v34 + 40))(v34))
    {
      v35 = MEMORY[0x259CA93C0]();
      if (v35)
      {
        v33 = *v35;
      }
    }
  }

  v100 = v33;
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v107, "in_abs");
  v36 = MIL::IROperation::TryGetParameterValue();
  if (v36 && (*(*v36 + 40))(v36) && (v37 = MEMORY[0x259CA93F0]()) != 0)
  {
    v38 = *v37;
  }

  else
  {
    v38 = 0;
  }

  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:ne200100]<0>(&v98, "lut_mode");
  std::string::basic_string[abi:ne200100]<0>(&v97, "sqrt");
  v40 = MIL::IROperation::TryGetParameterValue();
  if (v40 && (*(*v40 + 40))(v40) && (v41 = MEMORY[0x259CA93D0]()) != 0)
  {
    if (*(v41 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v107, *v41, *(v41 + 8));
    }

    else
    {
      v42 = *v41;
      v107.__r_.__value_.__r.__words[2] = *(v41 + 16);
      *&v107.__r_.__value_.__l.__data_ = v42;
    }
  }

  else
  {
    v107 = v97;
    memset(&v97, 0, sizeof(v97));
  }

  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v99 < 0)
  {
    operator delete(v98);
  }

  MIL::Fp16::GetFloat(&v108);
  v44 = v43;
  MIL::Fp16::GetFloat(&v106);
  if (v44 >= v45)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v51 = LocationPtr[1];
    v95 = *LocationPtr;
    v96 = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v93, "x_sat_left should be smaller than x_sat_right");
    MEMORY[0x259CA8EE0](a2, &v95, 319, v93);
    if (v94 < 0)
    {
      operator delete(v93[0]);
    }

    v49 = v96;
    if (!v96)
    {
      goto LABEL_82;
    }

LABEL_81:
    std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    goto LABEL_82;
  }

  MIL::Fp16::GetFloat(&v108);
  MIL::Fp16::GetFloat(&v106);
  MIL::Fp16::GetFloat(&v105);
  MIL::Fp16::GetFloat(&v104);
  MIL::Fp16::GetFloat(&v103);
  MIL::Fp16::GetFloat(&v103);
  if (fabsf(v46) == INFINITY)
  {
    v47 = MIL::IRObject::GetLocationPtr(a1);
    v48 = v47[1];
    v91 = *v47;
    v92 = v48;
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "slope_left should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v91, 319, __p);
    if (v90 < 0)
    {
      operator delete(__p[0]);
    }

    v49 = v92;
    if (!v92)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  MIL::Fp16::GetFloat(&v102);
  MIL::Fp16::GetFloat(&v102);
  if (fabsf(v53) == INFINITY)
  {
    v54 = MIL::IRObject::GetLocationPtr(a1);
    v55 = v54[1];
    v87 = *v54;
    v88 = v55;
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v85, "slope_right should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v87, 319, v85);
    if (v86 < 0)
    {
      operator delete(v85[0]);
    }

    v49 = v88;
    if (!v88)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  MIL::Fp16::GetFloat(&v101);
  MIL::Fp16::GetFloat(&v101);
  if (fabsf(v56) == INFINITY)
  {
    v57 = MIL::IRObject::GetLocationPtr(a1);
    v58 = v57[1];
    v83 = *v57;
    v84 = v58;
    if (v58)
    {
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v81, "intercept_left should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v83, 319, v81);
    if (v82 < 0)
    {
      operator delete(v81[0]);
    }

    v49 = v84;
    if (!v84)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  MIL::Fp16::GetFloat(&v100);
  MIL::Fp16::GetFloat(&v100);
  if (fabsf(v59) == INFINITY)
  {
    v60 = MIL::IRObject::GetLocationPtr(a1);
    v61 = v60[1];
    v79 = *v60;
    v80 = v61;
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v77, "intercept_right should not be NaN, +inf or -inf.");
    MEMORY[0x259CA8EE0](a2, &v79, 319, v77);
    if (v78 < 0)
    {
      operator delete(v77[0]);
    }

    v49 = v80;
    if (!v80)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v62 = !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "frac") && !std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "int");
  v63 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "inv") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "log2") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "sqr") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "sqrt") || std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v107, "rsqrt");
  if (((v62 | v38) & 1) == 0)
  {
    v67 = MIL::IRObject::GetLocationPtr(a1);
    v68 = v67[1];
    v75 = *v67;
    v76 = v68;
    if (v68)
    {
      atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::string::basic_string[abi:ne200100]<0>(v73, "If lut_mode is FRAC or INT then in_abs must be True.");
    MEMORY[0x259CA8EE0](a2, &v75, 319, v73);
    if (v74 < 0)
    {
      operator delete(v73[0]);
    }

    v49 = v76;
    if (!v76)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  if (v63)
  {
    MIL::Fp16::GetFloat(&v108);
    if (v64 < 0.0)
    {
      v65 = MIL::IRObject::GetLocationPtr(a1);
      v66 = v65[1];
      v71 = *v65;
      v72 = v66;
      if (v66)
      {
        atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v69, "If lut_mode is INV, LOG2, SQR, SQRT, RSQRT, then x_sat_left should be non-negative");
      MEMORY[0x259CA8EE0](a2, &v71, 319, v69);
      if (v70 < 0)
      {
        operator delete(v69[0]);
      }

      v49 = v72;
      if (!v72)
      {
        goto LABEL_82;
      }

      goto LABEL_81;
    }
  }

  MIL::ValidationResult::ValidationResult(a2);
LABEL_82:
  if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v107.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x259CA8F00](v109);
}

void sub_2599C9718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, std::__shared_weak_count *a47)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a47)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a47);
  }

  if (*(v47 - 137) < 0)
  {
    operator delete(*(v47 - 160));
  }

  MEMORY[0x259CA8F00](v47 - 120);
  _Unwind_Resume(a1);
}

void ANEMachineIR::Validators::ParseNePoolParamValues(ANEMachineIR::Validators *this@<X0>, const MIL::IROperation *a2@<X1>, const MIL::IRTensorValueType *a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  ANEMachineIR::Utils::GetStaticTensorShape(a2, a2, &v41);
  v9 = v41;
  v8 = v42;
  std::string::basic_string[abi:ne200100]<0>(__p, "kernel_sizes");
  v10 = v8 - v9;
  if (v40 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a4))
  {
    MEMORY[0x259CA8F00](a4);
    std::string::basic_string[abi:ne200100]<0>(__p, "strides");
    if (v40 < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::ValidationResult::IsGood(a4))
    {
      MEMORY[0x259CA8F00](a4);
      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      ParameterValue = MIL::IROperation::TryGetParameterValue();
      v12 = ParameterValue;
      if (v40 < 0)
      {
        operator delete(__p[0]);
        if (!v12)
        {
LABEL_15:
          std::string::basic_string[abi:ne200100]<0>(__p, "post_right_shift");
          v13 = MIL::IROperation::TryGetParameterValue();
          if (v13 && (*(*v13 + 40))(v13) && (v14 = MEMORY[0x259CA93E0]()) != 0)
          {
            v15 = *v14;
          }

          else
          {
            v15 = 0;
          }

          *(a3 + 36) = v15 | 0x100;
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }

          v16 = std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
          v17 = MIL::Fp16::FromFloat(v16, 1.0);
          v18 = MIL::IROperation::TryGetParameterValue();
          if (v18)
          {
            if ((*(*v18 + 40))(v18))
            {
              v19 = MEMORY[0x259CA93C0]();
              if (v19)
              {
                v17 = *v19;
              }
            }
          }

          if ((*(a3 + 76) & 1) == 0)
          {
            *(a3 + 76) = 1;
          }

          *(a3 + 37) = v17;
          if (v40 < 0)
          {
            operator delete(__p[0]);
          }

          v20 = (*(*this + 56))(this);
          v21 = *(v20 + 23);
          if (v21 < 0)
          {
            if (*(v20 + 8) != 11)
            {
              goto LABEL_39;
            }

            v20 = *v20;
          }

          else if (v21 != 11)
          {
            goto LABEL_39;
          }

          if (*v20 == 0x705F6776615F656ELL && *(v20 + 3) == 0x6C6F6F705F677661)
          {
            v23 = std::string::basic_string[abi:ne200100]<0>(__p, "bias");
            v24 = MIL::Fp16::FromFloat(v23, 0.0);
            v25 = MIL::IROperation::TryGetParameterValue();
            if (v25)
            {
              if ((*(*v25 + 40))(v25))
              {
                v26 = MEMORY[0x259CA93C0]();
                if (v26)
                {
                  v24 = *v26;
                }
              }
            }

            if ((*(a3 + 80) & 1) == 0)
            {
              *(a3 + 80) = 1;
            }

            *(a3 + 39) = v24;
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "acc_left_shift");
            v27 = MIL::IROperation::TryGetParameterValue();
            if (v27 && (*(*v27 + 40))(v27) && (v28 = MEMORY[0x259CA93E0]()) != 0)
            {
              v29 = *v28;
            }

            else
            {
              v29 = 0;
            }

            *(a3 + 41) = v29 | 0x100;
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "acc_bias_shift");
            v30 = MIL::IROperation::TryGetParameterValue();
            if (v30 && (*(*v30 + 40))(v30) && (v31 = MEMORY[0x259CA93E0]()) != 0)
            {
              v32 = *v31;
            }

            else
            {
              v32 = 0;
            }

            *(a3 + 42) = v32 | 0x100;
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "include_pads");
            v33 = MIL::IROperation::TryGetParameterValue();
            if (v33 && (*(*v33 + 40))(v33) && (v34 = MEMORY[0x259CA93F0]()) != 0)
            {
              v35 = *v34;
            }

            else
            {
              v35 = 0;
            }

            *(a3 + 43) = v35 & 1 | 0x100;
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "pre_relu");
            v36 = MIL::IROperation::TryGetParameterValue();
            if (v36 && (*(*v36 + 40))(v36) && (v37 = MEMORY[0x259CA93F0]()) != 0)
            {
              v38 = *v37;
            }

            else
            {
              v38 = 0;
            }

            *(a3 + 44) = v38 & 1 | 0x100;
            if (v40 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_85;
          }

LABEL_39:
          if (*(a3 + 80) == 1)
          {
            *(a3 + 80) = 0;
          }

          if (*(a3 + 83) == 1)
          {
            *(a3 + 83) = 0;
          }

          if (*(a3 + 85) == 1)
          {
            *(a3 + 85) = 0;
          }

          if (*(a3 + 87) == 1)
          {
            *(a3 + 87) = 0;
          }

          if (*(a3 + 89) == 1)
          {
            *(a3 + 89) = 0;
          }

LABEL_85:
          MIL::ValidationResult::ValidationResult(a4);
          goto LABEL_86;
        }
      }

      else if (!ParameterValue)
      {
        goto LABEL_15;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      if (v40 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::ValidationResult::IsGood(a4))
      {
        MEMORY[0x259CA8F00](a4);
        goto LABEL_15;
      }
    }
  }

LABEL_86:
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }
}

void sub_2599C9F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::GetParamValuesOfInt32Vector(MIL::IRObject *a1@<X0>, unint64_t a2@<X2>, void *a3@<X3>, MIL::ValidationResult *a4@<X8>)
{
  ParameterType = MIL::IROperation::GetParameterType();
  v9 = MIL::IRValueType::AsTensorType(ParameterType);
  v10 = (*(*v9 + 96))(v9);
  if (v10[1] == *v10)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v11 = (*(***v10 + 16))();
  if (!v11)
  {
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v28 = LocationPtr[1];
    v59 = *LocationPtr;
    v60 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::operator+<char>();
    v29 = std::string::append(&v56, "'  must have static shape.");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v58 = v29->__r_.__value_.__r.__words[2];
    v57 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a4, &v59, 302, &v57);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }

    v31 = v60;
    if (!v60)
    {
      return;
    }

LABEL_27:
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
    return;
  }

  v12 = v11;
  if ((*(*v11 + 48))(v11) == a2)
  {
    ParameterValue = MIL::IROperation::GetParameterValue();
    MIL::IRValue::AsTensor(ParameterValue);
    v56.__r_.__value_.__r.__words[0] = MIL::IRTensorValue::GetDataView<int>();
    v56.__r_.__value_.__l.__size_ = v14;
    a3[1] = *a3;
    if (v14)
    {
      v15 = 0;
      do
      {
        v16 = MIL::Util::Span<int const,18446744073709551615ul>::operator[](&v56, v15);
        v18 = a3[1];
        v17 = a3[2];
        if (v18 >= v17)
        {
          v20 = *a3;
          v21 = v18 - *a3;
          v22 = (v21 >> 2) + 1;
          if (v22 >> 62)
          {
            std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
          }

          v23 = v17 - v20;
          if (v23 >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v24 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a3, v24);
          }

          v25 = (4 * (v21 >> 2));
          *v25 = *v16;
          v19 = v25 + 1;
          memcpy(0, v20, v21);
          v26 = *a3;
          *a3 = 0;
          a3[1] = v19;
          a3[2] = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v18 = *v16;
          v19 = v18 + 1;
        }

        a3[1] = v19;
        ++v15;
      }

      while (v15 < v56.__r_.__value_.__l.__size_);
    }

    MIL::ValidationResult::ValidationResult(a4);
    return;
  }

  v32 = MIL::IRObject::GetLocationPtr(a1);
  v33 = v32[1];
  v54 = *v32;
  v55 = v33;
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::operator+<char>();
  v34 = std::string::append(&v49, "' must have length of ");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v48, a2);
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v48;
  }

  else
  {
    v36 = v48.__r_.__value_.__r.__words[0];
  }

  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v48.__r_.__value_.__l.__size_;
  }

  v38 = std::string::append(&v50, v36, size);
  v39 = *&v38->__r_.__value_.__l.__data_;
  v51.__r_.__value_.__r.__words[2] = v38->__r_.__value_.__r.__words[2];
  *&v51.__r_.__value_.__l.__data_ = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = std::string::append(&v51, ", got ");
  v41 = *&v40->__r_.__value_.__l.__data_;
  v56.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
  *&v56.__r_.__value_.__l.__data_ = v41;
  v40->__r_.__value_.__l.__size_ = 0;
  v40->__r_.__value_.__r.__words[2] = 0;
  v40->__r_.__value_.__r.__words[0] = 0;
  v42 = (*(*v12 + 48))(v12);
  std::to_string(&v47, v42);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = &v47;
  }

  else
  {
    v43 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v44 = v47.__r_.__value_.__l.__size_;
  }

  v45 = std::string::append(&v56, v43, v44);
  v46 = *&v45->__r_.__value_.__l.__data_;
  v53 = v45->__r_.__value_.__r.__words[2];
  __p = v46;
  v45->__r_.__value_.__l.__size_ = 0;
  v45->__r_.__value_.__r.__words[2] = 0;
  v45->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a4, &v54, 319, &__p);
  if (SHIBYTE(v53) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  v31 = v55;
  if (v55)
  {
    goto LABEL_27;
  }
}

void sub_2599CA464(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, std::__shared_weak_count *a50)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v50 - 137) < 0)
  {
    operator delete(*(v50 - 160));
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a50);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ParsePePoolParamValues(ANEMachineIR::Utils *this@<X1>, MIL::IRObject *a2@<X0>, uint64_t a3@<X2>, MIL::ValidationResult *a4@<X8>)
{
  ANEMachineIR::Utils::GetStaticTensorShape(this, this, &v27);
  v8 = v27;
  v7 = v28;
  std::string::basic_string[abi:ne200100]<0>(__p, "kernel_sizes");
  v9 = ((v7 - v8) >> 3) - 2;
  if (v26 < 0)
  {
    operator delete(__p[0]);
  }

  if (MIL::ValidationResult::IsGood(a4))
  {
    MEMORY[0x259CA8F00](a4);
    std::string::basic_string[abi:ne200100]<0>(__p, "strides");
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (MIL::ValidationResult::IsGood(a4))
    {
      MEMORY[0x259CA8F00](a4);
      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      ParameterValue = MIL::IROperation::TryGetParameterValue();
      v11 = ParameterValue;
      if (v26 < 0)
      {
        operator delete(__p[0]);
        if (!v11)
        {
LABEL_15:
          v12 = std::string::basic_string[abi:ne200100]<0>(__p, "post_scale");
          v13 = MIL::Fp16::FromFloat(v12, 1.0);
          v14 = MIL::IROperation::TryGetParameterValue();
          if (v14)
          {
            if ((*(*v14 + 40))(v14))
            {
              v15 = MEMORY[0x259CA93C0]();
              if (v15)
              {
                v13 = *v15;
              }
            }
          }

          if ((*(a3 + 74) & 1) == 0)
          {
            *(a3 + 74) = 1;
          }

          *(a3 + 72) = v13;
          if (v26 < 0)
          {
            operator delete(__p[0]);
          }

          v16 = (*(*a2 + 56))(a2);
          v17 = *(v16 + 23);
          if (v17 < 0)
          {
            if (*(v16 + 8) != 11)
            {
              goto LABEL_32;
            }

            v16 = *v16;
          }

          else if (v17 != 11)
          {
            goto LABEL_32;
          }

          if (*v16 == 0x705F6776615F6570 && *(v16 + 3) == 0x6C6F6F705F677661)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "include_pads");
            v19 = MIL::IROperation::TryGetParameterValue();
            if (v19 && (*(*v19 + 40))(v19) && (v20 = MEMORY[0x259CA93F0]()) != 0)
            {
              v21 = *v20;
            }

            else
            {
              v21 = 0;
            }

            *(a3 + 76) = v21 & 1 | 0x100;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }

            std::string::basic_string[abi:ne200100]<0>(__p, "pre_relu");
            v22 = MIL::IROperation::TryGetParameterValue();
            if (v22 && (*(*v22 + 40))(v22) && (v23 = MEMORY[0x259CA93F0]()) != 0)
            {
              v24 = *v23;
            }

            else
            {
              v24 = 0;
            }

            *(a3 + 78) = v24 & 1 | 0x100;
            if (v26 < 0)
            {
              operator delete(__p[0]);
            }

            goto LABEL_50;
          }

LABEL_32:
          if (*(a3 + 77) == 1)
          {
            *(a3 + 77) = 0;
          }

          if (*(a3 + 79) == 1)
          {
            *(a3 + 79) = 0;
          }

LABEL_50:
          MIL::ValidationResult::ValidationResult(a4);
          goto LABEL_51;
        }
      }

      else if (!ParameterValue)
      {
        goto LABEL_15;
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "custom_pads");
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      if (MIL::ValidationResult::IsGood(a4))
      {
        MEMORY[0x259CA8F00](a4);
        goto LABEL_15;
      }
    }
  }

LABEL_51:
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }
}

void sub_2599CA920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::InferOutputShape(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, char **a4@<X3>, uint64_t **a5@<X4>, void *a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v10 = a5[1] - *a5;
  v11 = v10 - 2;
  a6[1] = *a6;
  std::vector<unsigned long long>::reserve(a6, v10);
  v181 = 0;
  v182 = 0;
  v183 = 0;
  v12 = a4[1];
  if (*a4 == v12)
  {
    if (v10 != 2)
    {
      v13 = 0;
      if (2 * v11 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2 * v11;
      }

      do
      {
        if (v13 >= v183)
        {
          v15 = v181;
          v16 = v13 - v181;
          v17 = (v13 - v181) >> 2;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
          }

          v19 = v183 - v181;
          if ((v183 - v181) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v181, v20);
          }

          v21 = v17;
          v22 = (4 * v17);
          v23 = &v22[-v21];
          *v22 = 0;
          v13 = (v22 + 1);
          memcpy(v23, v15, v16);
          v24 = v181;
          v181 = v23;
          v182 = v13;
          v183 = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v13 = 0;
          v13 += 4;
        }

        v182 = v13;
        --v14;
      }

      while (v14);
    }
  }

  else if (&v181 != a4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v181, *a4, v12, (v12 - *a4) >> 2);
  }

  v25 = *a5;
  v26 = a5[1] - *a5;
  if (!v26)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v27 = v26 >> 3;
  v28 = *v25;
  if (v10 == 5)
  {
    if (v27 <= 1)
    {
      std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
    }

    v29 = v25[1];
  }

  else
  {
    v29 = 1;
    if (v11 < 2)
    {
      v32 = 0;
      v31 = 1;
      v30 = a3;
      goto LABEL_29;
    }
  }

  v30 = a3;
  if (v27 <= v10 - 3)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v31 = v25[v10 - 3];
  v32 = 1;
LABEL_29:
  if (v27 <= v11)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v33 = v10 - 1;
  if (v27 <= v10 - 1)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = v25[v11];
  v35 = v25[v33];
  v36 = *a2;
  v37 = a2[1];
  v38 = v37 - *a2;
  if (v38 != v33)
  {
    if (v10 == 5)
    {
      if (v37 == v36)
      {
        goto LABEL_196;
      }

      v39 = *v36;
      if (!v32)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v39 = 1;
      if (!v32)
      {
LABEL_38:
        v40 = 1;
        goto LABEL_51;
      }
    }

    if (v38 <= v10 - 4)
    {
      goto LABEL_196;
    }

    v40 = v36[v10 - 4];
LABEL_51:
    v48 = v10 - 3;
    if (v38 <= v10 - 3)
    {
      goto LABEL_196;
    }

    v42 = v36[v48];
    if (v10 == 5)
    {
      if (v30[1] == *v30)
      {
        goto LABEL_196;
      }

      v44 = **v30;
      if ((v32 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v44 = 1;
      if ((v32 & 1) == 0)
      {
LABEL_55:
        v49 = *v30;
        v50 = v30[1] - *v30;
        v47 = 1;
LABEL_59:
        if (v50 > v48)
        {
          v51 = (v49 + 4 * v48);
          v43 = 1;
          goto LABEL_66;
        }

LABEL_196:
        std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
      }
    }

    v49 = *v30;
    v50 = v30[1] - *v30;
    if (v50 <= v10 - 4)
    {
      goto LABEL_196;
    }

    v47 = *(v49 + 4 * (v10 - 4));
    goto LABEL_59;
  }

  if (v10 == 5)
  {
    v39 = *v36;
    if (!v32)
    {
LABEL_34:
      v40 = 1;
      goto LABEL_42;
    }
  }

  else
  {
    v39 = 1;
    if (!v32)
    {
      goto LABEL_34;
    }
  }

  if (v33 <= v10 - 4)
  {
    goto LABEL_196;
  }

  v40 = v36[v10 - 4];
LABEL_42:
  v41 = v10 - 3;
  if (v33 <= v10 - 3 || v33 <= v11)
  {
    goto LABEL_196;
  }

  v42 = v36[v41];
  v43 = v36[v11];
  if (v10 == 5)
  {
    if (!(v30[1] - *v30))
    {
      goto LABEL_196;
    }

    v44 = **v30;
    if ((v32 & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v44 = 1;
    if ((v32 & 1) == 0)
    {
LABEL_47:
      v45 = *v30;
      v46 = v30[1] - *v30;
      v47 = 1;
      goto LABEL_64;
    }
  }

  v45 = *v30;
  v46 = v30[1] - *v30;
  if (v46 <= v10 - 4)
  {
    goto LABEL_196;
  }

  v47 = *(v45 + 4 * (v10 - 4));
LABEL_64:
  if (v46 <= v41)
  {
    goto LABEL_196;
  }

  v51 = (v45 + 4 * v41);
LABEL_66:
  v52 = *v51;
  if (v11 == 3)
  {
    if ((v182 - v181) <= 4)
    {
      goto LABEL_198;
    }

    v53 = *v181;
    v54 = *(v181 + 1);
    if ((v32 & 1) == 0)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    if ((v32 & 1) == 0)
    {
LABEL_69:
      v55 = 0;
      v56 = 0;
      v57 = v181;
      v58 = 2 * v11;
      v59 = (v182 - v181) >> 2;
      goto LABEL_74;
    }
  }

  v58 = 2 * v11;
  v60 = 2 * v11 - 4;
  v57 = v181;
  v59 = (v182 - v181) >> 2;
  if (v59 <= v60 || v59 <= v58 - 3)
  {
LABEL_198:
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  v55 = *&v181[4 * v60];
  v56 = *&v181[4 * v58 - 12];
LABEL_74:
  v61 = v58 - 2;
  if (v59 <= v58 - 2)
  {
    goto LABEL_198;
  }

  v62 = v58 - 1;
  if (v59 <= v62)
  {
    goto LABEL_198;
  }

  v153 = v35;
  v63 = *&v57[4 * v61];
  v64 = *&v57[4 * v62];
  v66 = a6[1];
  v65 = a6[2];
  if (v66 >= v65)
  {
    v151 = v32;
    v147 = v31;
    v149 = v40;
    v68 = *a6;
    v69 = v66 - *a6;
    v70 = (v69 >> 3) + 1;
    if (v70 >> 61)
    {
      goto LABEL_199;
    }

    v71 = v65 - v68;
    if (v71 >> 2 > v70)
    {
      v70 = v71 >> 2;
    }

    v72 = v71 >= 0x7FFFFFFFFFFFFFF8;
    v73 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v72)
    {
      v73 = v70;
    }

    v140 = v39;
    v138 = v44;
    v139 = v47;
    v143 = v55;
    v145 = v63;
    v157 = v64;
    v141 = v56;
    v137 = v53;
    if (v73)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v73);
    }

    v74 = (8 * (v69 >> 3));
    *v74 = v28;
    v67 = v74 + 1;
    memcpy(0, v68, v69);
    v75 = *a6;
    *a6 = 0;
    a6[1] = v67;
    a6[2] = 0;
    if (v75)
    {
      operator delete(v75);
    }

    v31 = v147;
    v40 = v149;
    v32 = v151;
    v39 = v140;
    v44 = v138;
    v47 = v139;
    v55 = v143;
    v63 = v145;
    v64 = v157;
    v56 = v141;
    v53 = v137;
  }

  else
  {
    *v66 = v28;
    v67 = v66 + 1;
  }

  a6[1] = v67;
  if (v11 == 3)
  {
    v76 = (v29 - v39 + v44 + v53 + v54) / v44;
    if (v76 <= 0)
    {
      v78 = a1[1];
      v179 = *a1;
      v180 = v78;
      if (v78)
      {
        atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::to_string(&v175, v76);
      v79 = std::string::insert(&v175, 0, "Inferred zero or negative output size ");
      v80 = *&v79->__r_.__value_.__l.__data_;
      v176.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
      *&v176.__r_.__value_.__l.__data_ = v80;
      v79->__r_.__value_.__l.__size_ = 0;
      v79->__r_.__value_.__r.__words[2] = 0;
      v79->__r_.__value_.__r.__words[0] = 0;
      v81 = std::string::append(&v176, " on depth.");
      v82 = *&v81->__r_.__value_.__l.__data_;
      v178 = v81->__r_.__value_.__r.__words[2];
      v177 = v82;
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x259CA8EE0](a7, &v179, 319, &v177);
      if (SHIBYTE(v178) < 0)
      {
        operator delete(v177);
      }

      if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v176.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v175.__r_.__value_.__l.__data_);
      }

      v83 = v180;
      if (!v180)
      {
        goto LABEL_193;
      }

LABEL_192:
      std::__shared_weak_count::__release_shared[abi:ne200100](v83);
      goto LABEL_193;
    }

    v77 = a6[2];
    if (v67 >= v77)
    {
      v152 = v32;
      v148 = v31;
      v150 = v40;
      v84 = *a6;
      v85 = v67 - *a6;
      v86 = (v85 >> 3) + 1;
      if (v86 >> 61)
      {
        goto LABEL_199;
      }

      v87 = v77 - v84;
      if (v87 >> 2 > v86)
      {
        v86 = v87 >> 2;
      }

      v72 = v87 >= 0x7FFFFFFFFFFFFFF8;
      v88 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v72)
      {
        v88 = v86;
      }

      v144 = v55;
      v146 = v63;
      v158 = v64;
      v142 = v56;
      if (v88)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v88);
      }

      v89 = v47;
      v90 = (8 * (v85 >> 3));
      *v90 = v76;
      v67 = v90 + 1;
      memcpy(0, v84, v85);
      v91 = *a6;
      *a6 = 0;
      a6[1] = v67;
      a6[2] = 0;
      if (v91)
      {
        operator delete(v91);
      }

      v31 = v148;
      v40 = v150;
      v32 = v152;
      v47 = v89;
      v55 = v144;
      v63 = v146;
      v64 = v158;
      v56 = v142;
    }

    else
    {
      *v67++ = v76;
    }

    a6[1] = v67;
  }

  if (!v32)
  {
    goto LABEL_138;
  }

  v92 = (v31 - v40 + v47 + v55 + v56) / v47;
  if (v92 <= 0)
  {
    v94 = a1[1];
    v173 = *a1;
    v174 = v94;
    if (v94)
    {
      atomic_fetch_add_explicit(&v94->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v175, (v31 - v40 + v47 + v55 + v56) / v47);
    v95 = std::string::insert(&v175, 0, "Inferred zero or negative output size ");
    v96 = *&v95->__r_.__value_.__l.__data_;
    v176.__r_.__value_.__r.__words[2] = v95->__r_.__value_.__r.__words[2];
    *&v176.__r_.__value_.__l.__data_ = v96;
    v95->__r_.__value_.__l.__size_ = 0;
    v95->__r_.__value_.__r.__words[2] = 0;
    v95->__r_.__value_.__r.__words[0] = 0;
    v97 = std::string::append(&v176, " on height.");
    v98 = *&v97->__r_.__value_.__l.__data_;
    v172 = v97->__r_.__value_.__r.__words[2];
    *__p = v98;
    v97->__r_.__value_.__l.__size_ = 0;
    v97->__r_.__value_.__r.__words[2] = 0;
    v97->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a7, &v173, 319, __p);
    if (SHIBYTE(v172) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v176.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    v83 = v174;
    if (!v174)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  v93 = a6[2];
  if (v67 >= v93)
  {
    v99 = *a6;
    v100 = v67 - *a6;
    v101 = (v100 >> 3) + 1;
    if (v101 >> 61)
    {
      goto LABEL_199;
    }

    v102 = v93 - v99;
    if (v102 >> 2 > v101)
    {
      v101 = v102 >> 2;
    }

    v72 = v102 >= 0x7FFFFFFFFFFFFFF8;
    v103 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v72)
    {
      v103 = v101;
    }

    v159 = v64;
    if (v103)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v103);
    }

    v104 = v63;
    v105 = (8 * (v100 >> 3));
    *v105 = v92;
    v67 = v105 + 1;
    memcpy(0, v99, v100);
    v106 = *a6;
    *a6 = 0;
    a6[1] = v67;
    a6[2] = 0;
    if (v106)
    {
      operator delete(v106);
    }

    v63 = v104;
    v64 = v159;
  }

  else
  {
    *v67++ = v92;
  }

  a6[1] = v67;
LABEL_138:
  v107 = (v34 - v42 + v52 + v63 + v64) / v52;
  if (v107 <= 0)
  {
    v110 = a1[1];
    v169 = *a1;
    v170 = v110;
    if (v110)
    {
      atomic_fetch_add_explicit(&v110->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    std::to_string(&v175, (v34 - v42 + v52 + v63 + v64) / v52);
    v111 = std::string::insert(&v175, 0, "Inferred zero or negative output size ");
    v112 = *&v111->__r_.__value_.__l.__data_;
    v176.__r_.__value_.__r.__words[2] = v111->__r_.__value_.__r.__words[2];
    *&v176.__r_.__value_.__l.__data_ = v112;
    v111->__r_.__value_.__l.__size_ = 0;
    v111->__r_.__value_.__r.__words[2] = 0;
    v111->__r_.__value_.__r.__words[0] = 0;
    v113 = std::string::append(&v176, " on width.");
    v114 = *&v113->__r_.__value_.__l.__data_;
    v168 = v113->__r_.__value_.__r.__words[2];
    *v167 = v114;
    v113->__r_.__value_.__l.__size_ = 0;
    v113->__r_.__value_.__r.__words[2] = 0;
    v113->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a7, &v169, 319, v167);
    if (SHIBYTE(v168) < 0)
    {
      operator delete(v167[0]);
    }

    if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v176.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v175.__r_.__value_.__l.__data_);
    }

    v83 = v170;
    if (!v170)
    {
      goto LABEL_193;
    }

    goto LABEL_192;
  }

  v108 = a6[2];
  if (v67 >= v108)
  {
    v115 = *a6;
    v116 = v67 - *a6;
    v117 = (v116 >> 3) + 1;
    if (v117 >> 61)
    {
      goto LABEL_199;
    }

    if ((v108 - v115) >> 2 > v117)
    {
      v117 = (v108 - v115) >> 2;
    }

    if (v108 - v115 >= 0x7FFFFFFFFFFFFFF8)
    {
      v117 = 0x1FFFFFFFFFFFFFFFLL;
    }

    if (v117)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v117);
    }

    v118 = (8 * (v116 >> 3));
    v108 = 0;
    *v118 = v107;
    v109 = (v118 + 1);
    memcpy(0, v115, v116);
    v119 = *a6;
    *a6 = 0;
    a6[1] = v109;
    a6[2] = 0;
    if (v119)
    {
      operator delete(v119);
      v108 = a6[2];
    }
  }

  else
  {
    *v67 = v107;
    v109 = (v67 + 1);
  }

  a6[1] = v109;
  v120 = v153 / v43;
  if (v109 < v108)
  {
    *v109 = v120;
    v121 = v109 + 1;
    goto LABEL_171;
  }

  v122 = *a6;
  v123 = v109 - *a6;
  v124 = (v123 >> 3) + 1;
  if (v124 >> 61)
  {
LABEL_199:
    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  if ((v108 - v122) >> 2 > v124)
  {
    v124 = (v108 - v122) >> 2;
  }

  if (v108 - v122 >= 0x7FFFFFFFFFFFFFF8)
  {
    v124 = 0x1FFFFFFFFFFFFFFFLL;
  }

  if (v124)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a6, v124);
  }

  v125 = (8 * (v123 >> 3));
  *v125 = v120;
  v121 = v125 + 1;
  memcpy(0, v122, v123);
  v126 = *a6;
  *a6 = 0;
  a6[1] = v121;
  a6[2] = 0;
  if (v126)
  {
    operator delete(v126);
  }

LABEL_171:
  a6[1] = v121;
  v127 = v121 - *a6;
  if (v127 == a5[1] - *a5)
  {
    MIL::ValidationResult::ValidationResult(a7);
    goto LABEL_193;
  }

  v128 = a1[1];
  v165 = *a1;
  v166 = v128;
  if (v128)
  {
    atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
    v127 = a6[1] - *a6;
  }

  std::to_string(&v162, v127 >> 3);
  v129 = std::string::insert(&v162, 0, "Output rank ");
  v130 = *&v129->__r_.__value_.__l.__data_;
  v175.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
  *&v175.__r_.__value_.__l.__data_ = v130;
  v129->__r_.__value_.__l.__size_ = 0;
  v129->__r_.__value_.__r.__words[2] = 0;
  v129->__r_.__value_.__r.__words[0] = 0;
  v131 = std::string::append(&v175, " does not match rank of input tensor of shape ");
  v132 = *&v131->__r_.__value_.__l.__data_;
  v176.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
  *&v176.__r_.__value_.__l.__data_ = v132;
  v131->__r_.__value_.__l.__size_ = 0;
  v131->__r_.__value_.__r.__words[2] = 0;
  v131->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v161, a5[1] - *a5);
  if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v133 = &v161;
  }

  else
  {
    v133 = v161.__r_.__value_.__r.__words[0];
  }

  if ((v161.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v161.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v161.__r_.__value_.__l.__size_;
  }

  v135 = std::string::append(&v176, v133, size);
  v136 = *&v135->__r_.__value_.__l.__data_;
  v164 = v135->__r_.__value_.__r.__words[2];
  *v163 = v136;
  v135->__r_.__value_.__l.__size_ = 0;
  v135->__r_.__value_.__r.__words[2] = 0;
  v135->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a7, &v165, 313, v163);
  if (SHIBYTE(v164) < 0)
  {
    operator delete(v163[0]);
  }

  if (SHIBYTE(v161.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v161.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v176.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v176.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v175.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v162.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v162.__r_.__value_.__l.__data_);
  }

  v83 = v166;
  if (v166)
  {
    goto LABEL_192;
  }

LABEL_193:
  if (v181)
  {
    v182 = v181;
    operator delete(v181);
  }
}

void sub_2599CB69C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a62 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 201) < 0)
  {
    operator delete(*(v62 - 224));
  }

  v64 = *(v62 - 232);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  v65 = *(v62 - 112);
  if (v65)
  {
    *(v62 - 104) = v65;
    operator delete(v65);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNePool(uint64_t *a1@<X0>, uint64_t a2@<X1>, ANEMachineIR::Utils *a3@<X2>, ANEMachineIR::Utils *a4@<X3>, uint64_t a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v12 = a1[1];
  v114 = *a1;
  v115 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v131, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v114, a3, &v131, a2, v116);
  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (MIL::ValidationResult::IsGood(v116))
  {
    MEMORY[0x259CA8F00](v116);
    v13 = (*(*a3 + 96))(a3);
    v14 = (v13[1] - *v13) >> 3;
    v15 = (*(*a3 + 88))(a3);
    v16 = v14 - 1;
    v17 = *a5;
    v18 = *(a5 + 8);
    if (v14 - 1 == (v18 - *a5) >> 2)
    {
      v20 = *(a5 + 24);
      v19 = *(a5 + 32);
      if (v16 == v19 - v20)
      {
        v21 = v14 - 2;
        if (v16 <= v14 - 2)
        {
          goto LABEL_183;
        }

        v22 = v17[v21];
        v23 = v20[v21];
        if (v22 == v23)
        {
          if (v14 == 5)
          {
            if (v19 == v20)
            {
              goto LABEL_183;
            }

            v24 = *v20 == 2 ? 16 : 8;
            if (v18 == v17)
            {
              goto LABEL_183;
            }

            if (*v17 > v24)
            {
              v25 = a1[1];
              v127.__r_.__value_.__r.__words[0] = *a1;
              v127.__r_.__value_.__l.__size_ = v25;
              if (v25)
              {
                atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
              }

              std::to_string(&v129, v24);
              v26 = std::string::insert(&v129, 0, "Expect kernel_sizes of depth in range [1, ");
              v27 = *&v26->__r_.__value_.__l.__data_;
              v130.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
              *&v130.__r_.__value_.__l.__data_ = v27;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              v28 = std::string::append(&v130, "], got ");
              v29 = *&v28->__r_.__value_.__l.__data_;
              v131.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
              *&v131.__r_.__value_.__l.__data_ = v29;
              v28->__r_.__value_.__l.__size_ = 0;
              v28->__r_.__value_.__r.__words[2] = 0;
              v28->__r_.__value_.__r.__words[0] = 0;
              if (*(a5 + 8) == *a5)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              std::to_string(&v128, **a5);
              if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v30 = &v128;
              }

              else
              {
                v30 = v128.__r_.__value_.__r.__words[0];
              }

              if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v128.__r_.__value_.__l.__size_;
              }

              goto LABEL_170;
            }
          }

          else if (v16 < 3)
          {
LABEL_152:
            v98 = v14 - 3;
            if (v15 == 4)
            {
              if (v16 > v98)
              {
                v99 = v20[v98] == 2;
                v100 = 8;
                v101 = 16;
LABEL_157:
                if (v99)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = v100;
                }

                if (v17[v98] <= v102)
                {
                  MIL::ValidationResult::ValidationResult(a6);
LABEL_85:
                  if (MIL::ValidationResult::IsGood(a6))
                  {
                    MEMORY[0x259CA8F00](a6);
                    ANEMachineIR::Utils::GetStaticTensorShape(a3, v67, v116);
                    ANEMachineIR::Utils::GetStaticTensorShape(a4, v68, &v131.__r_.__value_.__l.__data_);
                    if (MIL::ValidationResult::IsGood(a6))
                    {
                      v69 = MEMORY[0x259CA8F00](a6);
                      MIL::ValidationResult::ValidationResult(v69);
                    }

                    if (v131.__r_.__value_.__r.__words[0])
                    {
                      v131.__r_.__value_.__l.__size_ = v131.__r_.__value_.__r.__words[0];
                      operator delete(v131.__r_.__value_.__l.__data_);
                    }

                    if (v116[0])
                    {
                      v116[1] = v116[0];
                      operator delete(v116[0]);
                    }
                  }

                  return;
                }

                v103 = a1[1];
                v127.__r_.__value_.__r.__words[0] = *a1;
                v127.__r_.__value_.__l.__size_ = v103;
                if (v103)
                {
                  atomic_fetch_add_explicit((v103 + 8), 1uLL, memory_order_relaxed);
                }

                std::to_string(&v129, v102);
                v104 = std::string::insert(&v129, 0, "Expect kernel_sizes of width in range [1, ");
                v105 = *&v104->__r_.__value_.__l.__data_;
                v130.__r_.__value_.__r.__words[2] = v104->__r_.__value_.__r.__words[2];
                *&v130.__r_.__value_.__l.__data_ = v105;
                v104->__r_.__value_.__l.__size_ = 0;
                v104->__r_.__value_.__r.__words[2] = 0;
                v104->__r_.__value_.__r.__words[0] = 0;
                v106 = std::string::append(&v130, "], got ");
                v107 = *&v106->__r_.__value_.__l.__data_;
                v131.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
                *&v131.__r_.__value_.__l.__data_ = v107;
                v106->__r_.__value_.__l.__size_ = 0;
                v106->__r_.__value_.__r.__words[2] = 0;
                v106->__r_.__value_.__r.__words[0] = 0;
                if (v98 >= (*(a5 + 8) - *a5) >> 2)
                {
                  std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
                }

                std::to_string(&v128, *(*a5 + 4 * v98));
                if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v30 = &v128;
                }

                else
                {
                  v30 = v128.__r_.__value_.__r.__words[0];
                }

                if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v128.__r_.__value_.__l.__size_;
                }

                goto LABEL_170;
              }
            }

            else if (v16 > v98)
            {
              v99 = v20[v98] == 2;
              v100 = 16;
              v101 = 32;
              goto LABEL_157;
            }

LABEL_183:
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v91 = v14 - 4;
          if (v16 <= v14 - 4)
          {
            goto LABEL_183;
          }

          if (v20[v91] == 2)
          {
            v92 = 32;
          }

          else
          {
            v92 = 16;
          }

          if (v17[v91] > v92)
          {
            v93 = a1[1];
            v127.__r_.__value_.__r.__words[0] = *a1;
            v127.__r_.__value_.__l.__size_ = v93;
            if (v93)
            {
              atomic_fetch_add_explicit((v93 + 8), 1uLL, memory_order_relaxed);
            }

            std::to_string(&v129, v92);
            v94 = std::string::insert(&v129, 0, "Expect kernel_sizes of height in range [1, ");
            v95 = *&v94->__r_.__value_.__l.__data_;
            v130.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
            *&v130.__r_.__value_.__l.__data_ = v95;
            v94->__r_.__value_.__l.__size_ = 0;
            v94->__r_.__value_.__r.__words[2] = 0;
            v94->__r_.__value_.__r.__words[0] = 0;
            v96 = std::string::append(&v130, "], got ");
            v97 = *&v96->__r_.__value_.__l.__data_;
            v131.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
            *&v131.__r_.__value_.__l.__data_ = v97;
            v96->__r_.__value_.__l.__size_ = 0;
            v96->__r_.__value_.__r.__words[2] = 0;
            v96->__r_.__value_.__r.__words[0] = 0;
            if (v91 >= (*(a5 + 8) - *a5) >> 2)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            std::to_string(&v128, *(*a5 + 4 * v91));
            if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v30 = &v128;
            }

            else
            {
              v30 = v128.__r_.__value_.__r.__words[0];
            }

            if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v128.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v128.__r_.__value_.__l.__size_;
            }

LABEL_170:
            v108 = std::string::append(&v131, v30, size);
            v109 = *&v108->__r_.__value_.__l.__data_;
            v117 = v108->__r_.__value_.__r.__words[2];
            *v116 = v109;
            v108->__r_.__value_.__l.__size_ = 0;
            v108->__r_.__value_.__r.__words[2] = 0;
            v108->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v127, 319, v116);
            if (SHIBYTE(v117) < 0)
            {
              operator delete(v116[0]);
            }

            if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v128.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v131.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v130.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v129.__r_.__value_.__l.__data_);
            }

            v66 = v127.__r_.__value_.__l.__size_;
            if (!v127.__r_.__value_.__l.__size_)
            {
              goto LABEL_85;
            }

            goto LABEL_84;
          }

          goto LABEL_152;
        }

        v70 = a1[1];
        v123 = *a1;
        v124 = v70;
        if (v70)
        {
          atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v125, "kernel_sizes");
        v71 = std::string::insert(&v125, 0, "Expect same channel dimension for '");
        v72 = *&v71->__r_.__value_.__l.__data_;
        v126.__r_.__value_.__r.__words[2] = v71->__r_.__value_.__r.__words[2];
        *&v126.__r_.__value_.__l.__data_ = v72;
        v71->__r_.__value_.__l.__size_ = 0;
        v71->__r_.__value_.__r.__words[2] = 0;
        v71->__r_.__value_.__r.__words[0] = 0;
        v73 = std::string::append(&v126, "' and '");
        v74 = *&v73->__r_.__value_.__l.__data_;
        v127.__r_.__value_.__r.__words[2] = v73->__r_.__value_.__r.__words[2];
        *&v127.__r_.__value_.__l.__data_ = v74;
        v73->__r_.__value_.__l.__size_ = 0;
        v73->__r_.__value_.__r.__words[2] = 0;
        v73->__r_.__value_.__r.__words[0] = 0;
        std::string::basic_string[abi:ne200100]<0>(&v120, "strides");
        if ((v122 & 0x80u) == 0)
        {
          v75 = &v120;
        }

        else
        {
          v75 = v120;
        }

        if ((v122 & 0x80u) == 0)
        {
          v76 = v122;
        }

        else
        {
          v76 = v121;
        }

        v77 = std::string::append(&v127, v75, v76);
        v78 = *&v77->__r_.__value_.__l.__data_;
        v128.__r_.__value_.__r.__words[2] = v77->__r_.__value_.__r.__words[2];
        *&v128.__r_.__value_.__l.__data_ = v78;
        v77->__r_.__value_.__l.__size_ = 0;
        v77->__r_.__value_.__r.__words[2] = 0;
        v77->__r_.__value_.__r.__words[0] = 0;
        v79 = std::string::append(&v128, "' got ");
        v80 = *&v79->__r_.__value_.__l.__data_;
        v129.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v129.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v119, v22);
        if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v81 = &v119;
        }

        else
        {
          v81 = v119.__r_.__value_.__r.__words[0];
        }

        if ((v119.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v82 = HIBYTE(v119.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v82 = v119.__r_.__value_.__l.__size_;
        }

        v83 = std::string::append(&v129, v81, v82);
        v84 = *&v83->__r_.__value_.__l.__data_;
        v130.__r_.__value_.__r.__words[2] = v83->__r_.__value_.__r.__words[2];
        *&v130.__r_.__value_.__l.__data_ = v84;
        v83->__r_.__value_.__l.__size_ = 0;
        v83->__r_.__value_.__r.__words[2] = 0;
        v83->__r_.__value_.__r.__words[0] = 0;
        v85 = std::string::append(&v130, " vs. ");
        v86 = *&v85->__r_.__value_.__l.__data_;
        v131.__r_.__value_.__r.__words[2] = v85->__r_.__value_.__r.__words[2];
        *&v131.__r_.__value_.__l.__data_ = v86;
        v85->__r_.__value_.__l.__size_ = 0;
        v85->__r_.__value_.__r.__words[2] = 0;
        v85->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v118, v23);
        if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v87 = &v118;
        }

        else
        {
          v87 = v118.__r_.__value_.__r.__words[0];
        }

        if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v88 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v88 = v118.__r_.__value_.__l.__size_;
        }

        v89 = std::string::append(&v131, v87, v88);
        v90 = *&v89->__r_.__value_.__l.__data_;
        v117 = v89->__r_.__value_.__r.__words[2];
        *v116 = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x259CA8EE0](a6, &v123, 319, v116);
        if (SHIBYTE(v117) < 0)
        {
          operator delete(v116[0]);
        }

        if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v118.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v131.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v130.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v119.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v129.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v128.__r_.__value_.__l.__data_);
        }

        if (v122 < 0)
        {
          operator delete(v120);
        }

        if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v127.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v126.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v125.__r_.__value_.__l.__data_);
        }

        v66 = v124;
        if (!v124)
        {
          goto LABEL_85;
        }

LABEL_84:
        std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        goto LABEL_85;
      }

      v52 = a1[1];
      v120 = *a1;
      v121 = v52;
      if (v52)
      {
        atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
      }

      v53 = std::string::basic_string[abi:ne200100]<0>(&v127, "strides");
      v54 = std::string::insert(v53, 0, "Expect '");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v128.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v128.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      v56 = std::string::append(&v128, "' to be array of size ");
      v57 = *&v56->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v57;
      v56->__r_.__value_.__l.__size_ = 0;
      v56->__r_.__value_.__r.__words[2] = 0;
      v56->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v126, v14 - 1);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v126;
      }

      else
      {
        v58 = v126.__r_.__value_.__r.__words[0];
      }

      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v126.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v129, v58, v59);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v130.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v130.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v130, ", got ");
      v63 = *&v62->__r_.__value_.__l.__data_;
      v131.__r_.__value_.__r.__words[2] = v62->__r_.__value_.__r.__words[2];
      *&v131.__r_.__value_.__l.__data_ = v63;
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v125, (*(a5 + 32) - *(a5 + 24)) >> 2);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v125;
      }

      else
      {
        v50 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v125.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v38 = a1[1];
      v120 = *a1;
      v121 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
      }

      v39 = std::string::basic_string[abi:ne200100]<0>(&v127, "kernel_sizes");
      v40 = std::string::insert(v39, 0, "Expect '");
      v41 = *&v40->__r_.__value_.__l.__data_;
      v128.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
      *&v128.__r_.__value_.__l.__data_ = v41;
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      v42 = std::string::append(&v128, "' to be array of size ");
      v43 = *&v42->__r_.__value_.__l.__data_;
      v129.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
      *&v129.__r_.__value_.__l.__data_ = v43;
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v126, v14 - 1);
      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v126;
      }

      else
      {
        v44 = v126.__r_.__value_.__r.__words[0];
      }

      if ((v126.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v126.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v126.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v129, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      v130.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v130.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&v130, ", got ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v131.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v131.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v125, (*(a5 + 8) - *a5) >> 2);
      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v125;
      }

      else
      {
        v50 = v125.__r_.__value_.__r.__words[0];
      }

      if ((v125.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v125.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v125.__r_.__value_.__l.__size_;
      }
    }

    v64 = std::string::append(&v131, v50, v51);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v117 = v64->__r_.__value_.__r.__words[2];
    *v116 = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a6, &v120, 319, v116);
    if (SHIBYTE(v117) < 0)
    {
      operator delete(v116[0]);
    }

    if (SHIBYTE(v125.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v125.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v131.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v130.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v126.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v126.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v129.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v127.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v127.__r_.__value_.__l.__data_);
    }

    v66 = v121;
    if (!v121)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

  v32 = a1[1];
  v112 = *a1;
  v113 = v32;
  if (v32)
  {
    atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v33 = std::string::basic_string[abi:ne200100]<0>(&v130, "x");
  v34 = std::string::insert(v33, 0, "Input '");
  v35 = *&v34->__r_.__value_.__l.__data_;
  v131.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
  *&v131.__r_.__value_.__l.__data_ = v35;
  v34->__r_.__value_.__l.__size_ = 0;
  v34->__r_.__value_.__r.__words[2] = 0;
  v34->__r_.__value_.__r.__words[0] = 0;
  v36 = std::string::append(&v131, "' violates size constraints");
  v37 = *&v36->__r_.__value_.__l.__data_;
  v111 = v36->__r_.__value_.__r.__words[2];
  *__p = v37;
  v36->__r_.__value_.__l.__size_ = 0;
  v36->__r_.__value_.__r.__words[2] = 0;
  v36->__r_.__value_.__r.__words[0] = 0;
  MEMORY[0x259CA8EE0](a6, &v112, 319, __p);
  if (SHIBYTE(v111) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v131.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v131.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v130.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v130.__r_.__value_.__l.__data_);
  }

  if (v113)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v113);
  }

  MEMORY[0x259CA8F00](v116);
}

void sub_2599CC4BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 185) < 0)
  {
    operator delete(*(v62 - 208));
  }

  if (*(v62 - 89) < 0)
  {
    operator delete(*(v62 - 112));
  }

  if (*(v62 - 121) < 0)
  {
    operator delete(*(v62 - 144));
  }

  if (*(v62 - 153) < 0)
  {
    operator delete(*(v62 - 176));
  }

  v64 = *(v62 - 232);
  if (v64)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v64);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::ValidateOutputShape(uint64_t *a1@<X0>, int **a2@<X1>, int **a3@<X2>, char **a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X5>, MIL::ValidationResult *a7@<X8>)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  ANEMachineIR::Validators::InferOutputShape(a1, a2, a3, a4, a5, &v30, a7);
  if (MIL::ValidationResult::IsGood(a7))
  {
    MEMORY[0x259CA8F00](a7);
    if (v31 - v30 == *(a6 + 8) - *a6 && !memcmp(v30, *a6, v31 - v30))
    {
      MIL::ValidationResult::ValidationResult(a7);
    }

    else
    {
      ANEMachineIR::Utils::ShapeString(a6);
      ANEMachineIR::Utils::ShapeString(&v30);
      v10 = a1[1];
      v24 = *a1;
      v25 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::operator+<char>();
      v11 = std::string::append(&v19, " does not match inferred shape ");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if ((v27 & 0x80u) == 0)
      {
        v13 = v26;
      }

      else
      {
        v13 = v26[0];
      }

      if ((v27 & 0x80u) == 0)
      {
        v14 = v27;
      }

      else
      {
        v14 = v26[1];
      }

      v15 = std::string::append(&v20, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&v21, ".");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v23 = v17->__r_.__value_.__r.__words[2];
      *__p = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x259CA8EE0](a7, &v24, 313, __p);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v19.__r_.__value_.__l.__data_);
      }

      if (v25)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }
    }
  }

  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }
}

void sub_2599CCA50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a37);
  }

  if (*(v37 - 81) < 0)
  {
    operator delete(*(v37 - 104));
  }

  if (*(v37 - 57) < 0)
  {
    operator delete(*(v37 - 80));
  }

  v39 = *(v37 - 56);
  if (v39)
  {
    *(v37 - 48) = v39;
    operator delete(v39);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidatePePool(uint64_t a1@<X0>, uint64_t a2@<X1>, ANEMachineIR::Utils *a3@<X2>, ANEMachineIR::Utils *a4@<X3>, int **a5@<X4>, MIL::ValidationResult *a6@<X8>)
{
  v194 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 8);
  v182 = *a1;
  v183 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::string::basic_string[abi:ne200100]<0>(&v190, "x");
  ANEMachineIR::Validators::ValidateLiveTensorSize(&v182, a3, &v190, a2, __p);
  if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v190.__r_.__value_.__l.__data_);
  }

  if (v183)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v183);
  }

  if (MIL::ValidationResult::IsGood(__p))
  {
    v173 = a1;
    MEMORY[0x259CA8F00](__p);
    v13 = (*(*a3 + 96))(a3);
    v14 = v13[1] - *v13;
    v15 = (v14 >> 3) - 2;
    if (v15 == a5[1] - *a5)
    {
      if (v15 == a5[4] - a5[3])
      {
        v16 = 0;
        v193.__r_.__value_.__r.__words[0] = "kernel_sizes";
        v193.__r_.__value_.__l.__size_ = "strides";
        while (1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, *(&v193.__r_.__value_.__l.__data_ + v16));
          v17 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
          if (v14 != 40)
          {
            goto LABEL_24;
          }

          if ((*(&__p[0].__r_.__value_.__s + 23) & 0x80) != 0)
          {
            if (__p[0].__r_.__value_.__l.__size_ != 12)
            {
              goto LABEL_21;
            }

            v18 = __p[0].__r_.__value_.__r.__words[0];
          }

          else
          {
            if (HIBYTE(__p[0].__r_.__value_.__r.__words[2]) != 12)
            {
              goto LABEL_21;
            }

            v18 = __p;
          }

          v19 = v18->__r_.__value_.__r.__words[0];
          v20 = v18->__r_.__value_.__r.__words[1];
          if (v19 != 0x735F6C656E72656BLL || v20 != 1936030313)
          {
LABEL_21:
            v22 = a5[3];
            v23 = a5[4];
            goto LABEL_22;
          }

          v22 = *a5;
          v23 = a5[1];
LABEL_22:
          if (v23 == v22)
          {
            std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
          }

          v24 = *v22;
          if (*v22 != 1)
          {
            v58 = *(a1 + 8);
            v185.__r_.__value_.__r.__words[0] = *a1;
            v185.__r_.__value_.__l.__size_ = v58;
            if (v58)
            {
              atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
              v17 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
            }

            v33 = a6;
            if (v17 < 0)
            {
              std::string::__init_copy_ctor_external(&v187, __p[0].__r_.__value_.__l.__data_, __p[0].__r_.__value_.__l.__size_);
            }

            else
            {
              v187 = __p[0];
            }

            v59 = std::string::insert(&v187, 0, "PE does not support '");
            v60 = *&v59->__r_.__value_.__l.__data_;
            v188.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
            *&v188.__r_.__value_.__l.__data_ = v60;
            v59->__r_.__value_.__l.__size_ = 0;
            v59->__r_.__value_.__r.__words[2] = 0;
            v59->__r_.__value_.__r.__words[0] = 0;
            v61 = std::string::append(&v188, "' in depth dimension, got: ");
            v62 = *&v61->__r_.__value_.__l.__data_;
            v189.__r_.__value_.__r.__words[2] = v61->__r_.__value_.__r.__words[2];
            *&v189.__r_.__value_.__l.__data_ = v62;
            v61->__r_.__value_.__l.__size_ = 0;
            v61->__r_.__value_.__r.__words[2] = 0;
            v61->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v186, v24);
            if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v63 = &v186;
            }

            else
            {
              v63 = v186.__r_.__value_.__r.__words[0];
            }

            if ((v186.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v186.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v186.__r_.__value_.__l.__size_;
            }

            v65 = std::string::append(&v189, v63, size);
            v66 = *&v65->__r_.__value_.__l.__data_;
            v190.__r_.__value_.__r.__words[2] = v65->__r_.__value_.__r.__words[2];
            *&v190.__r_.__value_.__l.__data_ = v66;
            v65->__r_.__value_.__l.__size_ = 0;
            v65->__r_.__value_.__r.__words[2] = 0;
            v65->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v185, 319, &v190);
            if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v190.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v186.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v188.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v187.__r_.__value_.__l.__data_);
            }

            if (v185.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v185.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            goto LABEL_116;
          }

LABEL_24:
          if ((*(&__p[0].__r_.__value_.__s + 23) & 0x80) != 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v16 += 8;
          if (v16 == 16)
          {
            memset(__p, 0, 24);
            if (v14 >> 3 == 5)
            {
              operator new();
            }

            if (v15 <= 1)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(__p, 1uLL);
            }

            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(__p, 1uLL);
          }
        }
      }

      v45 = *(a1 + 8);
      v176 = *a1;
      v177 = v45;
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v186, "strides");
      v33 = a6;
      v46 = std::string::insert(&v186, 0, "Expect '");
      v47 = *&v46->__r_.__value_.__l.__data_;
      v187.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
      *&v187.__r_.__value_.__l.__data_ = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = std::string::append(&v187, "' to be array of size ");
      v49 = *&v48->__r_.__value_.__l.__data_;
      v188.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
      *&v188.__r_.__value_.__l.__data_ = v49;
      v48->__r_.__value_.__l.__size_ = 0;
      v48->__r_.__value_.__r.__words[2] = 0;
      v48->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v193, (v14 >> 3) - 2);
      if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v50 = &v193;
      }

      else
      {
        v50 = v193.__r_.__value_.__r.__words[0];
      }

      if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v51 = v193.__r_.__value_.__l.__size_;
      }

      v52 = std::string::append(&v188, v50, v51);
      v53 = *&v52->__r_.__value_.__l.__data_;
      v189.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
      *&v189.__r_.__value_.__l.__data_ = v53;
      v52->__r_.__value_.__l.__size_ = 0;
      v52->__r_.__value_.__r.__words[2] = 0;
      v52->__r_.__value_.__r.__words[0] = 0;
      v54 = std::string::append(&v189, ", got ");
      v55 = *&v54->__r_.__value_.__l.__data_;
      v190.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
      *&v190.__r_.__value_.__l.__data_ = v55;
      v54->__r_.__value_.__l.__size_ = 0;
      v54->__r_.__value_.__r.__words[2] = 0;
      v54->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v185, a5[4] - a5[3]);
      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v185;
      }

      else
      {
        v43 = v185.__r_.__value_.__r.__words[0];
      }

      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v185.__r_.__value_.__l.__size_;
      }
    }

    else
    {
      v31 = *(a1 + 8);
      v176 = *a1;
      v177 = v31;
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(&v186, "kernel_sizes");
      v32 = std::string::insert(&v186, 0, "Expect '");
      v33 = a6;
      v34 = *&v32->__r_.__value_.__l.__data_;
      v187.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
      *&v187.__r_.__value_.__l.__data_ = v34;
      v32->__r_.__value_.__l.__size_ = 0;
      v32->__r_.__value_.__r.__words[2] = 0;
      v32->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v187, "' to be array of size ");
      v36 = *&v35->__r_.__value_.__l.__data_;
      v188.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&v188.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v193, (v14 >> 3) - 2);
      if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v193;
      }

      else
      {
        v37 = v193.__r_.__value_.__r.__words[0];
      }

      if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v193.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&v188, v37, v38);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v189.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v189.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v189, ", got ");
      v42 = *&v41->__r_.__value_.__l.__data_;
      v190.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&v190.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v185, a5[1] - *a5);
      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v185;
      }

      else
      {
        v43 = v185.__r_.__value_.__r.__words[0];
      }

      if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = v185.__r_.__value_.__l.__size_;
      }
    }

    v56 = std::string::append(&v190, v43, v44);
    v57 = *&v56->__r_.__value_.__l.__data_;
    __p[0].__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&__p[0].__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](v33, &v176, 319, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v185.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v193.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v187.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v186.__r_.__value_.__l.__data_);
    }

    if (v177)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v177);
    }

LABEL_116:
    if (MIL::ValidationResult::IsGood(v33))
    {
      MEMORY[0x259CA8F00](v33);
      ANEMachineIR::Utils::GetStaticTensorShape(a3, v67, &v176);
      ANEMachineIR::Utils::GetStaticTensorShape(a4, v68, &v174);
      v70 = a5[6];
      v69 = a5[7];
      if (v70 == v69)
      {
        goto LABEL_219;
      }

      if (v69 - v70 == 24 && (*v70 || v70[1]))
      {
        v71 = v173[1];
        v191 = *v173;
        v192 = v71;
        if (v71)
        {
          atomic_fetch_add_explicit((v71 + 8), 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v186, "custom_pads");
        v72 = std::string::insert(&v186, 0, "PE does not support '");
        v73 = *&v72->__r_.__value_.__l.__data_;
        v187.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
        *&v187.__r_.__value_.__l.__data_ = v73;
        v72->__r_.__value_.__l.__size_ = 0;
        v72->__r_.__value_.__r.__words[2] = 0;
        v72->__r_.__value_.__r.__words[0] = 0;
        v74 = std::string::append(&v187, "' in depth dimension, got ");
        v75 = *&v74->__r_.__value_.__l.__data_;
        v188.__r_.__value_.__r.__words[2] = v74->__r_.__value_.__r.__words[2];
        *&v188.__r_.__value_.__l.__data_ = v75;
        v74->__r_.__value_.__l.__size_ = 0;
        v74->__r_.__value_.__r.__words[2] = 0;
        v74->__r_.__value_.__r.__words[0] = 0;
        v76 = a5[6];
        if (a5[7] == v76)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        std::to_string(&v193, *v76);
        if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v77 = &v193;
        }

        else
        {
          v77 = v193.__r_.__value_.__r.__words[0];
        }

        if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v78 = v193.__r_.__value_.__l.__size_;
        }

        v79 = std::string::append(&v188, v77, v78);
        v80 = *&v79->__r_.__value_.__l.__data_;
        v189.__r_.__value_.__r.__words[2] = v79->__r_.__value_.__r.__words[2];
        *&v189.__r_.__value_.__l.__data_ = v80;
        v79->__r_.__value_.__l.__size_ = 0;
        v79->__r_.__value_.__r.__words[2] = 0;
        v79->__r_.__value_.__r.__words[0] = 0;
        v81 = std::string::append(&v189, ", ");
        v82 = *&v81->__r_.__value_.__l.__data_;
        v190.__r_.__value_.__r.__words[2] = v81->__r_.__value_.__r.__words[2];
        *&v190.__r_.__value_.__l.__data_ = v82;
        v81->__r_.__value_.__l.__size_ = 0;
        v81->__r_.__value_.__r.__words[2] = 0;
        v81->__r_.__value_.__r.__words[0] = 0;
        v83 = a5[6];
        if ((a5[7] - v83) <= 4)
        {
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        std::to_string(&v185, v83[1]);
        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v84 = &v185;
        }

        else
        {
          v84 = v185.__r_.__value_.__r.__words[0];
        }

        if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v85 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v85 = v185.__r_.__value_.__l.__size_;
        }

        goto LABEL_137;
      }

      v89 = (v177 - v176) >> 3;
      v90 = v89 - 2;
      v91 = v69 - v70;
      if (v89 == 5)
      {
        v92 = v174;
        v93 = (v175 - v174) >> 3;
        if (v93 <= 1)
        {
          goto LABEL_262;
        }

        v94 = (v176 + 24);
        shared_weak_owners = v177[-2].__shared_weak_owners_;
        v96 = *(v174 + 1) - 1;
      }

      else
      {
        if (v90 < 2)
        {
          if (v90 < (v175 - v174) >> 3)
          {
            v120 = 2 * v90 - 2;
            if (v91 <= v120 || v89 - 3 >= a5[1] - *a5)
            {
              goto LABEL_261;
            }

            v98 = 0;
            v118 = 0;
            v96 = 0;
            v104 = 0;
            v97 = 0;
            v102 = *(v176 + v90);
            v106 = v70[v120];
            v103 = *(v174 + v90);
            v113 = (*a5)[v89 - 3];
            v114 = a5[3];
            v117 = a5[4] - v114;
            v116 = 1;
            v112 = 1;
            shared_weak_owners = 1;
            v105 = 1;
            v109 = 1;
            v119 = 1;
            goto LABEL_184;
          }

LABEL_262:
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        if (v89 < 3)
        {
          goto LABEL_262;
        }

        v96 = 0;
        v94 = (v176 + 8 * v90);
        v92 = v174;
        v93 = (v175 - v174) >> 3;
        shared_weak_owners = 1;
      }

      v97 = v89 - 3;
      if (v93 > v89 - 3 && v93 > v90)
      {
        if (v89 == 5)
        {
          v98 = *v70;
        }

        else
        {
          v98 = 0;
        }

        v99 = 2 * v90 - 4;
        if (v91 <= v99)
        {
          goto LABEL_261;
        }

        v100 = 2 * v90 - 2;
        if (v91 <= v100)
        {
          goto LABEL_261;
        }

        v101 = v92[v97];
        v102 = *v94;
        v103 = v92[v90];
        v104 = v70[v99];
        v105 = v177[-1].__vftable;
        v106 = v70[v100];
        v108 = *a5;
        v107 = a5[1];
        if (v89 == 5)
        {
          if (v107 == v108)
          {
            goto LABEL_261;
          }

          v109 = *v108;
        }

        else
        {
          v109 = 1;
        }

        v110 = v89 - 4;
        v111 = v107 - v108;
        if (v111 <= v89 - 4 || v111 <= v97)
        {
          goto LABEL_261;
        }

        v112 = v108[v110];
        v113 = v108[v97];
        v114 = a5[3];
        v115 = a5[4];
        if (v89 == 5)
        {
          if (v115 == v114)
          {
            goto LABEL_261;
          }

          v116 = *v114;
        }

        else
        {
          v116 = 1;
        }

        v117 = v115 - v114;
        if (v117 <= v110)
        {
LABEL_261:
          std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
        }

        v118 = v101 - 1;
        v119 = v114[v110];
LABEL_184:
        if (v117 > v97)
        {
          if (v106 >= v113 || (v121 = v112 > v104, v122 = v112 - v104, !v121) || (v121 = v109 > v98, v123 = v109 - v98, !v121))
          {
            v138 = v173[1];
            v188.__r_.__value_.__r.__words[0] = *v173;
            v188.__r_.__value_.__l.__size_ = v138;
            if (v138)
            {
              atomic_fetch_add_explicit((v138 + 8), 1uLL, memory_order_relaxed);
            }

            v139 = std::string::basic_string[abi:ne200100]<0>(&v189, "custom_pads");
            v140 = std::string::insert(v139, 0, "PE pool value of ");
            v141 = *&v140->__r_.__value_.__l.__data_;
            v190.__r_.__value_.__r.__words[2] = v140->__r_.__value_.__r.__words[2];
            *&v190.__r_.__value_.__l.__data_ = v141;
            v140->__r_.__value_.__l.__size_ = 0;
            v140->__r_.__value_.__r.__words[2] = 0;
            v140->__r_.__value_.__r.__words[0] = 0;
            v142 = std::string::append(&v190, " exceed limits, must in range [0, K] where K is the kernel_size at that dimension");
            v143 = *&v142->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v143;
            v142->__r_.__value_.__l.__size_ = 0;
            v142->__r_.__value_.__r.__words[2] = 0;
            v142->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v188, 319, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v190.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            v88 = v188.__r_.__value_.__l.__size_;
            if (!v188.__r_.__value_.__l.__size_)
            {
              goto LABEL_217;
            }

LABEL_216:
            std::__shared_weak_count::__release_shared[abi:ne200100](v88);
LABEL_217:
            if (!MIL::ValidationResult::IsGood(a6))
            {
LABEL_221:
              if (v174)
              {
                v175 = v174;
                operator delete(v174);
              }

              if (v176)
              {
                v177 = v176;
                operator delete(v176);
              }

              goto LABEL_225;
            }

            MEMORY[0x259CA8F00](a6);
LABEL_219:
            if (MIL::ValidationResult::IsGood(a6))
            {
              v144 = MEMORY[0x259CA8F00](a6);
              MIL::ValidationResult::ValidationResult(v144);
            }

            goto LABEL_221;
          }

          v124 = v114[v97];
          if (v177 - v176 == 40)
          {
            v125 = v96 * v116 - v98;
            v126 = v123 + v96 * v116;
            if (shared_weak_owners <= v125 || shared_weak_owners > v126)
            {
              v127 = v173[1];
              v191 = *v173;
              v192 = v127;
              if (v127)
              {
                atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
              }

              std::to_string(&v186, v125);
              v128 = std::string::insert(&v186, 0, "Input dimension depth exceed limits, expect [");
              v129 = *&v128->__r_.__value_.__l.__data_;
              v187.__r_.__value_.__r.__words[2] = v128->__r_.__value_.__r.__words[2];
              *&v187.__r_.__value_.__l.__data_ = v129;
              v128->__r_.__value_.__l.__size_ = 0;
              v128->__r_.__value_.__r.__words[2] = 0;
              v128->__r_.__value_.__r.__words[0] = 0;
              v130 = std::string::append(&v187, ", ");
              v131 = *&v130->__r_.__value_.__l.__data_;
              v188.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
              *&v188.__r_.__value_.__l.__data_ = v131;
              v130->__r_.__value_.__l.__size_ = 0;
              v130->__r_.__value_.__r.__words[2] = 0;
              v130->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v193, v126);
              if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v132 = &v193;
              }

              else
              {
                v132 = v193.__r_.__value_.__r.__words[0];
              }

              if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v133 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v133 = v193.__r_.__value_.__l.__size_;
              }

              v134 = std::string::append(&v188, v132, v133);
              v135 = *&v134->__r_.__value_.__l.__data_;
              v189.__r_.__value_.__r.__words[2] = v134->__r_.__value_.__r.__words[2];
              *&v189.__r_.__value_.__l.__data_ = v135;
              v134->__r_.__value_.__l.__size_ = 0;
              v134->__r_.__value_.__r.__words[2] = 0;
              v134->__r_.__value_.__r.__words[0] = 0;
              v136 = std::string::append(&v189, "), got ");
              v137 = *&v136->__r_.__value_.__l.__data_;
              v190.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
              *&v190.__r_.__value_.__l.__data_ = v137;
              v136->__r_.__value_.__l.__size_ = 0;
              v136->__r_.__value_.__r.__words[2] = 0;
              v136->__r_.__value_.__r.__words[0] = 0;
              std::to_string(&v185, shared_weak_owners);
              if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v84 = &v185;
              }

              else
              {
                v84 = v185.__r_.__value_.__r.__words[0];
              }

              if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v85 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v85 = v185.__r_.__value_.__l.__size_;
              }

              goto LABEL_137;
            }
          }

          else if (v89 < 4)
          {
            goto LABEL_229;
          }

          v146 = v119 * v118 - v104;
          v147 = v119 * v118 + v122;
          if (v105 <= v146 || v105 > v147)
          {
            v151 = v173[1];
            v191 = *v173;
            v192 = v151;
            if (v151)
            {
              atomic_fetch_add_explicit((v151 + 8), 1uLL, memory_order_relaxed);
            }

            std::to_string(&v186, v146);
            v152 = std::string::insert(&v186, 0, "Input dimension height exceed limits, expect [");
            v153 = *&v152->__r_.__value_.__l.__data_;
            v187.__r_.__value_.__r.__words[2] = v152->__r_.__value_.__r.__words[2];
            *&v187.__r_.__value_.__l.__data_ = v153;
            v152->__r_.__value_.__l.__size_ = 0;
            v152->__r_.__value_.__r.__words[2] = 0;
            v152->__r_.__value_.__r.__words[0] = 0;
            v154 = std::string::append(&v187, ", ");
            v155 = *&v154->__r_.__value_.__l.__data_;
            v188.__r_.__value_.__r.__words[2] = v154->__r_.__value_.__r.__words[2];
            *&v188.__r_.__value_.__l.__data_ = v155;
            v154->__r_.__value_.__l.__size_ = 0;
            v154->__r_.__value_.__r.__words[2] = 0;
            v154->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v193, v147);
            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v156 = &v193;
            }

            else
            {
              v156 = v193.__r_.__value_.__r.__words[0];
            }

            if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v157 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v157 = v193.__r_.__value_.__l.__size_;
            }

            v158 = std::string::append(&v188, v156, v157);
            v159 = *&v158->__r_.__value_.__l.__data_;
            v189.__r_.__value_.__r.__words[2] = v158->__r_.__value_.__r.__words[2];
            *&v189.__r_.__value_.__l.__data_ = v159;
            v158->__r_.__value_.__l.__size_ = 0;
            v158->__r_.__value_.__r.__words[2] = 0;
            v158->__r_.__value_.__r.__words[0] = 0;
            v160 = std::string::append(&v189, "), got ");
            v161 = *&v160->__r_.__value_.__l.__data_;
            v190.__r_.__value_.__r.__words[2] = v160->__r_.__value_.__r.__words[2];
            *&v190.__r_.__value_.__l.__data_ = v161;
            v160->__r_.__value_.__l.__size_ = 0;
            v160->__r_.__value_.__r.__words[2] = 0;
            v160->__r_.__value_.__r.__words[0] = 0;
            std::to_string(&v185, v105);
            if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v84 = &v185;
            }

            else
            {
              v84 = v185.__r_.__value_.__r.__words[0];
            }

            if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v85 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v85 = v185.__r_.__value_.__l.__size_;
            }

LABEL_137:
            v86 = std::string::append(&v190, v84, v85);
            v87 = *&v86->__r_.__value_.__l.__data_;
            __p[0].__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
            *&__p[0].__r_.__value_.__l.__data_ = v87;
            v86->__r_.__value_.__l.__size_ = 0;
            v86->__r_.__value_.__r.__words[2] = 0;
            v86->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x259CA8EE0](a6, &v191, 319, __p);
            if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p[0].__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v185.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v185.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v190.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v189.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v193.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v188.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v187.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v187.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v186.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v186.__r_.__value_.__l.__data_);
            }

            v88 = v192;
            if (!v192)
            {
              goto LABEL_217;
            }

            goto LABEL_216;
          }

LABEL_229:
          v148 = (v103 - 1) * v124;
          v149 = v148 - v106;
          v150 = v148 + v113 - v106;
          if (v102 > v149 && v102 <= v150)
          {
            MIL::ValidationResult::ValidationResult(a6);
            goto LABEL_217;
          }

          v162 = v173[1];
          v191 = *v173;
          v192 = v162;
          if (v162)
          {
            atomic_fetch_add_explicit((v162 + 8), 1uLL, memory_order_relaxed);
          }

          std::to_string(&v186, v149);
          v163 = std::string::insert(&v186, 0, "Input dimension width exceed limits, expect [");
          v164 = *&v163->__r_.__value_.__l.__data_;
          v187.__r_.__value_.__r.__words[2] = v163->__r_.__value_.__r.__words[2];
          *&v187.__r_.__value_.__l.__data_ = v164;
          v163->__r_.__value_.__l.__size_ = 0;
          v163->__r_.__value_.__r.__words[2] = 0;
          v163->__r_.__value_.__r.__words[0] = 0;
          v165 = std::string::append(&v187, ", ");
          v166 = *&v165->__r_.__value_.__l.__data_;
          v188.__r_.__value_.__r.__words[2] = v165->__r_.__value_.__r.__words[2];
          *&v188.__r_.__value_.__l.__data_ = v166;
          v165->__r_.__value_.__l.__size_ = 0;
          v165->__r_.__value_.__r.__words[2] = 0;
          v165->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v193, v150);
          if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v167 = &v193;
          }

          else
          {
            v167 = v193.__r_.__value_.__r.__words[0];
          }

          if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v168 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v168 = v193.__r_.__value_.__l.__size_;
          }

          v169 = std::string::append(&v188, v167, v168);
          v170 = *&v169->__r_.__value_.__l.__data_;
          v189.__r_.__value_.__r.__words[2] = v169->__r_.__value_.__r.__words[2];
          *&v189.__r_.__value_.__l.__data_ = v170;
          v169->__r_.__value_.__l.__size_ = 0;
          v169->__r_.__value_.__r.__words[2] = 0;
          v169->__r_.__value_.__r.__words[0] = 0;
          v171 = std::string::append(&v189, "), got ");
          v172 = *&v171->__r_.__value_.__l.__data_;
          v190.__r_.__value_.__r.__words[2] = v171->__r_.__value_.__r.__words[2];
          *&v190.__r_.__value_.__l.__data_ = v172;
          v171->__r_.__value_.__l.__size_ = 0;
          v171->__r_.__value_.__r.__words[2] = 0;
          v171->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v185, v102);
          if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v84 = &v185;
          }

          else
          {
            v84 = v185.__r_.__value_.__r.__words[0];
          }

          if ((v185.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = HIBYTE(v185.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v85 = v185.__r_.__value_.__l.__size_;
          }

          goto LABEL_137;
        }

        goto LABEL_261;
      }

      goto LABEL_262;
    }
  }

  else
  {
    v25 = *(a1 + 8);
    v180 = *a1;
    v181 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v26 = std::string::basic_string[abi:ne200100]<0>(&v189, "x");
    v27 = std::string::insert(v26, 0, "Input '");
    v28 = *&v27->__r_.__value_.__l.__data_;
    v190.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
    *&v190.__r_.__value_.__l.__data_ = v28;
    v27->__r_.__value_.__l.__size_ = 0;
    v27->__r_.__value_.__r.__words[2] = 0;
    v27->__r_.__value_.__r.__words[0] = 0;
    v29 = std::string::append(&v190, "' violates size constraints");
    v30 = *&v29->__r_.__value_.__l.__data_;
    v179 = v29->__r_.__value_.__r.__words[2];
    *v178 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x259CA8EE0](a6, &v180, 319, v178);
    if (SHIBYTE(v179) < 0)
    {
      operator delete(v178[0]);
    }

    if (SHIBYTE(v190.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v190.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v189.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v189.__r_.__value_.__l.__data_);
    }

    if (v181)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v181);
    }

    MEMORY[0x259CA8F00](__p);
  }

LABEL_225:
  v145 = *MEMORY[0x277D85DE8];
}

void sub_2599CE190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v58 - 137) < 0)
  {
    operator delete(*(v58 - 160));
  }

  if (*(v58 - 169) < 0)
  {
    operator delete(*(v58 - 192));
  }

  if (*(v58 - 97) < 0)
  {
    operator delete(*(v58 - 120));
  }

  if (*(v58 - 201) < 0)
  {
    operator delete(*(v58 - 224));
  }

  if (a58 < 0)
  {
    operator delete(a53);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  v60 = *(v58 - 128);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void ANEMachineIR::Validators::ValidateNePool(ANEMachineIR::Validators *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 176))(a1);
  if (*(v6 + 8) == *v6)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v6);
  v8 = MIL::IRValueType::AsTensorType(Type);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v18 = 0;
  ANEMachineIR::Validators::ParseNePoolParamValues(a1, v5, __p, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidateNePool(LocationPtr, v10, v5, v8, __p, a2);
  }

  if (*v14)
  {
    *&v14[8] = *v14;
    operator delete(*v14);
  }

  if (*(&v12 + 1))
  {
    *&v13 = *(&v12 + 1);
    operator delete(*(&v12 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void ANEMachineIR::Validators::ValidatePePool(MIL::IRObject *a1@<X0>, MIL::ValidationResult *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "x");
  ParameterType = MIL::IROperation::GetParameterType();
  v5 = MIL::IRValueType::AsTensorType(ParameterType);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 176))(a1);
  if (*(v6 + 8) == *v6)
  {
    std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
  }

  Type = MIL::IRNamedValueType::GetType(**v6);
  v8 = MIL::IRValueType::AsTensorType(Type);
  v15 = 0;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v16 = 0;
  ANEMachineIR::Validators::ParsePePoolParamValues(v5, a1, __p, a2);
  if (MIL::ValidationResult::IsGood(a2))
  {
    MEMORY[0x259CA8F00](a2);
    LocationPtr = MIL::IRObject::GetLocationPtr(a1);
    v10 = (*(*a1 + 56))(a1);
    ANEMachineIR::Validators::ValidatePePool(LocationPtr, v10, v5, v8, __p, a2);
  }

  if (*v14)
  {
    *&v14[8] = *v14;
    operator delete(*v14);
  }

  if (*(&v12 + 1))
  {
    *&v13 = *(&v12 + 1);
    operator delete(*(&v12 + 1));
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<MIL::Fp16>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void ANEMachineIR::H2022::BaseNeMatmul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599CEFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, __int16 a30, char a31, char a32)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a19, 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&a29, 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeBatchMatmul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599D100C(_Unwind_Exception *a1)
{
  v4 = *(v2 - 80);
  *(v2 - 80) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x3D0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x450], 0);
  _Unwind_Resume(a1);
}

void ANEMachineIR::H2022::NeMatmul::Make()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = 0;
  operator new();
}

void sub_2599D3480(_Unwind_Exception *a1)
{
  v4 = *(v2 - 200);
  *(v2 - 200) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::unique_ptr<std::vector<std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x2F0], 0);
  std::unique_ptr<std::unordered_map<std::string,std::shared_ptr<MIL::IRParameter>>>::reset[abi:ne200100](&STACK[0x380], 0);
  _Unwind_Resume(a1);
}

void MilTranslator::OpTranslator::TranslateReshape(MilTranslator::OpTranslator *this@<X0>, const MIL::IROperation *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v99, "x");
  v6 = (*(*a2 + 120))(a2, &v99, 0);
  v7 = v6;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
    if (v7)
    {
LABEL_3:
      LocationPtr = MIL::IRObject::GetLocationPtr(a2);
      v9 = LocationPtr[1];
      v97 = *LocationPtr;
      v98 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      std::string::basic_string[abi:ne200100]<0>(v95, "x");
      ParameterType = MIL::IROperation::GetParameterType();
      v11 = MIL::IRValueType::AsTensorType(ParameterType);
      std::string::basic_string[abi:ne200100]<0>(v91, "x");
      std::string::basic_string[abi:ne200100]<0>(__p, "reshape");
      ANEMachineIR::Validators::ValidateLiveTensorSize(&v97, v11, v91, __p, &v99);
      if (v90 < 0)
      {
        operator delete(__p[0]);
      }

      if (v92 < 0)
      {
        operator delete(v91[0]);
      }

      if (v96 < 0)
      {
        operator delete(v95[0]);
      }

      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }

      if ((MIL::ValidationResult::IsGood(&v99) & 1) == 0)
      {
        *a3 = 11;
        Message = MIL::MILResult::GetMessage(&v99);
        if (*(Message + 23) < 0)
        {
          std::string::__init_copy_ctor_external((a3 + 8), *Message, *(Message + 8));
        }

        else
        {
          v46 = *Message;
          *(a3 + 24) = *(Message + 16);
          *(a3 + 8) = v46;
        }

        goto LABEL_113;
      }

      v12 = MIL::IRObject::GetLocationPtr(a2);
      v13 = v12[1];
      v93 = *v12;
      v94 = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      OutputType = MIL::IROperation::GetOutputType(a2);
      v15 = MIL::IRValueType::AsTensorType(OutputType);
      std::string::basic_string[abi:ne200100]<0>(v91, "output");
      std::string::basic_string[abi:ne200100]<0>(__p, "reshape");
      ANEMachineIR::Validators::ValidateLiveTensorSize(&v93, v15, v91, __p, v95);
      if (v90 < 0)
      {
        operator delete(__p[0]);
      }

      if (v92 < 0)
      {
        operator delete(v91[0]);
      }

      if (v94)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v94);
      }

      if (MIL::ValidationResult::IsGood(v95))
      {
        std::string::basic_string[abi:ne200100]<0>(v91, "x");
        v16 = MIL::IROperation::GetParameterType();
        v17 = MIL::IRValueType::AsTensorType(v16);
        v18 = (*(*v17 + 88))(v17);
        v19 = MIL::IROperation::GetOutputType(a2);
        v20 = MIL::IRValueType::AsTensorType(v19);
        v21 = (*(*v20 + 88))(v20);
        if (v92 < 0)
        {
          operator delete(v91[0]);
        }

        if (v18 == v21)
        {
          v22 = MIL::IROperation::GetOutputType(a2);
          v23 = MIL::IRValueType::AsTensorType(v22);
          v24 = (*(*v23 + 88))(v23);
          v25 = "Unsupported dtype for reshape.";
          if (v24 <= 0xE && ((1 << v24) & 0x4210) != 0)
          {
            std::string::basic_string[abi:ne200100]<0>(v91, "x");
            v26 = MIL::IROperation::GetParameterType();
            v27 = MIL::IRValueType::AsTensorType(v26);
            v28 = (*(*v27 + 96))(v27);
            v29 = (v28[1] - *v28) >> 3;
            if (v92 < 0)
            {
              operator delete(v91[0]);
            }

            MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, v7, v29, v91);
            v30 = MIL::IROperation::GetOutputType(a2);
            v31 = MIL::IRValueType::AsTensorType(v30);
            v32 = (*(*v31 + 96))(v31);
            v34 = *v32;
            v33 = v32[1];
            (*(*a2 + 200))(&v87, a2);
            if (v88 == v87)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            v35 = (v33 - v34) >> 3;
            MilTranslator::OpTranslator::InferChannelLastTransposeInfo(this, v87, v35, __p);
            v86[0] = &v87;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v86);
            MilTranslator::OpTranslator::GetTransposeOpParamPerm(v91, v29, &v87);
            MilTranslator::OpTranslator::GetTransposeOpParamPerm(__p, v35, v86);
            std::string::basic_string[abi:ne200100]<0>(v83, "x");
            v36 = MIL::IROperation::GetParameterType();
            v37 = MIL::IRValueType::AsTensorType(v36);
            ANEMachineIR::Utils::GetStaticTensorShape(v37, v38, v85);
            if (v84 < 0)
            {
              operator delete(v83[0]);
            }

            v39 = MIL::IROperation::GetOutputType(a2);
            v40 = MIL::IRValueType::AsTensorType(v39);
            ANEMachineIR::Utils::GetStaticTensorShape(v40, v41, v83);
            MilTranslator::OpTranslator::InferTransposedShape(v85, &v87, v82);
            MilTranslator::OpTranslator::InferTransposedShape(v83, v86, &v80);
            (*(*a2 + 200))(&v76, a2);
            if (v77 == v76)
            {
              std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
            }

            if (*(v76 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v79, *v76, *(v76 + 1));
            }

            else
            {
              v42 = *v76;
              v79.__r_.__value_.__r.__words[2] = *(v76 + 2);
              *&v79.__r_.__value_.__l.__data_ = v42;
            }

            v73 = &v76;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v73);
            if (MilTranslator::OpTranslator::IsTransposeRequired(v86))
            {
              std::string::append(&v79, "_channel_last");
            }

            v49 = *(this + 1);
            v50 = MIL::IROperation::GetOutputType(a2);
            v51 = MIL::IRValueType::AsTensorType(v50);
            (*(*v51 + 88))(v51);
            v76 = 0;
            v77 = 0;
            v78 = 0;
            std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v76, v80, v81, (v81 - v80) >> 3);
            MIL::IRTensorValueType::Make();
            if (v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              std::string::__init_copy_ctor_external(&v75, v79.__r_.__value_.__l.__data_, v79.__r_.__value_.__l.__size_);
            }

            else
            {
              v75 = v79;
            }

            MIL::IRNamedValueType::Make();
            if (v76)
            {
              operator new();
            }

            v76 = 0;
            std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v76);
            if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v75.__r_.__value_.__l.__data_);
            }

            v73 = 0;
            v74 = 0;
            if (MilTranslator::OpTranslator::IsTransposeRequired(v86))
            {
              (*(*a2 + 200))(&v76, a2);
              if (v77 == v76)
              {
                std::vector<unsigned long long>::__throw_out_of_range[abi:ne200100]();
              }

              if (*(v76 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&v71, *v76, *(v76 + 1));
              }

              else
              {
                v52 = *v76;
                v71.__r_.__value_.__r.__words[2] = *(v76 + 2);
                *&v71.__r_.__value_.__l.__data_ = v52;
              }

              v54 = MIL::IROperation::GetOutputType(a2);
              MIL::IRValueType::AsTensorType(v54);
              MIL::IRNamedValueType::Make();
              std::shared_ptr<MIL::IRNamedValueType>::operator=[abi:ne200100]<MIL::IRNamedValueType,std::default_delete<MIL::IRNamedValueType>,0>(&v73, &v72);
              std::unique_ptr<MIL::IRNamedValueType>::~unique_ptr[abi:ne200100](&v72);
              if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v71.__r_.__value_.__l.__data_);
              }

              v100 = &v76;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v100);
            }

            else
            {
              v53 = v74;
              v73 = 0;
              v74 = 0;
              if (v53)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v53);
              }
            }

            v55 = *(this + 3);
            Function = MIL::IRProgram::GetFunction();
            v57 = (*(*Function + 128))(Function);
            if (!std::__tree<std::__value_type<std::string,MIL::IRValueType const*>,std::__map_value_compare<std::string,std::__value_type<std::string,MIL::IRValueType const*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MIL::IRValueType const*>>>::__count_unique<std::string>(v57, v7))
            {
              std::string::basic_string[abi:ne200100]<0>(&v76, "x");
              v58 = MIL::IROperation::GetParameterType();
              v59 = MIL::IRValueType::AsTensorType(v58);
              MilTranslator::OpTranslator::EnsureTransposeProducesChannelFirst(this, v7, v59);
              if (SHIBYTE(v78) < 0)
              {
                operator delete(v76);
              }
            }

            std::string::basic_string[abi:ne200100]<0>(&v69, "reshape");
            MilTranslator::OpTranslator::AddOperation(this);
            if (v70 < 0)
            {
              operator delete(v69);
            }

            std::string::basic_string[abi:ne200100]<0>(&v66, "x");
            if (*(v7 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v65, *v7, *(v7 + 8));
            }

            else
            {
              v60 = *v7;
              v65.__r_.__value_.__r.__words[2] = *(v7 + 16);
              *&v65.__r_.__value_.__l.__data_ = v60;
            }

            MIL::Builder::OperationBuilder::AddInput();
            if (v68)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v68);
            }

            if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v65.__r_.__value_.__l.__data_);
            }

            if (v67 < 0)
            {
              operator delete(v66);
            }

            Name = MIL::IRNamedValueType::GetName(v73);
            if (*(Name + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v63, *Name, *(Name + 8));
            }

            else
            {
              v62 = *Name;
              v63.__r_.__value_.__r.__words[2] = *(Name + 16);
              *&v63.__r_.__value_.__l.__data_ = v62;
            }

            MIL::IRNamedValueType::GetType(v73);
            MIL::Builder::OperationBuilder::AddOutput();
            if (v64)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v64);
            }

            if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v63.__r_.__value_.__l.__data_);
            }

            *a3 = 0;
            std::string::basic_string[abi:ne200100]<0>((a3 + 8), &unk_259A4D977);
            if (v77)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v77);
            }

            if (v74)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v74);
            }

            if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v79.__r_.__value_.__l.__data_);
            }

            if (v80)
            {
              v81 = v80;
              operator delete(v80);
            }

            if (v82[0])
            {
              v82[1] = v82[0];
              operator delete(v82[0]);
            }

            if (v83[0])
            {
              v83[1] = v83[0];
              operator delete(v83[0]);
            }

            if (v85[0])
            {
              v85[1] = v85[0];
              operator delete(v85[0]);
            }

            if (v86[0])
            {
              v86[1] = v86[0];
              operator delete(v86[0]);
            }

            if (v87)
            {
              v88 = v87;
              operator delete(v87);
            }

            if (v90 < 0)
            {
              operator delete(__p[0]);
            }

            if (v92 < 0)
            {
              operator delete(v91[0]);
            }

            goto LABEL_112;
          }
        }

        else
        {
          v25 = "Input and output dtypes must match for reshape.";
        }

        *a3 = 11;
        std::string::basic_string[abi:ne200100]<0>((a3 + 8), v25);
      }

      else
      {
        *a3 = 11;
        v47 = MIL::MILResult::GetMessage(v95);
        if (*(v47 + 23) < 0)
        {
          std::string::__init_copy_ctor_external((a3 + 8), *v47, *(v47 + 8));
        }

        else
        {
          v48 = *v47;
          *(a3 + 24) = *(v47 + 16);
          *(a3 + 8) = v48;
        }
      }

LABEL_112:
      MEMORY[0x259CA8F00](v95);
LABEL_113:
      MEMORY[0x259CA8F00](&v99);
      return;
    }
  }

  else if (v6)
  {
    goto LABEL_3;
  }

  *a3 = 4;
  (*(*a2 + 56))(a2);
  std::operator+<char>();
  v43 = std::string::append(&v99, "' does not handle immediate values");
  v44 = *&v43->__r_.__value_.__l.__data_;
  *(a3 + 24) = *(&v43->__r_.__value_.__l + 2);
  *(a3 + 8) = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }
}