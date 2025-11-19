uint64_t fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Type()
{
  {
    operator new();
  }

  return fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Type(void)::type;
}

uint64_t fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::WriteFile(fst *a1, uint64_t a2)
{
  v25[19] = *MEMORY[0x1E69E9840];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
LABEL_5:
      std::ofstream::basic_ofstream(&v20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
        v7 = *(a2 + 23);
        if (v7 >= 0)
        {
          v8 = a2;
        }

        else
        {
          v8 = *a2;
        }

        if (v7 >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v20.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
      *(v20.__r_.__value_.__r.__words + *(v20.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
      MEMORY[0x1B8C84A00](&v20.__r_.__value_.__r.__words[1]);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v25);
      return v10;
    }
  }

  else if (*(a2 + 23))
  {
    goto LABEL_5;
  }

  v11 = fst::cout(a1);
  std::string::basic_string[abi:ne200100]<0>(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void *fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(void *a1, int a2, int *a3)
{
  v6 = *(a1[8] + 8 * a2);
  v18 = *v6;
  std::list<int>::list(v19, (v6 + 2));
  v20 = v6[8];
  v15 = *a3;
  std::list<int>::list(v16, (a3 + 2));
  v17 = a3[8];
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::SetFinal(a1, a2, &v15);
  std::__list_imp<char *>::clear(v16);
  v7 = (*(*a1 + 24))(a1);
  v12 = v18;
  std::list<int>::list(v13, v19);
  v14 = v20;
  v9 = *a3;
  std::list<int>::list(v10, (a3 + 2));
  v11 = a3[8];
  a1[1] = a1[1] & 4 | fst::SetFinalProperties<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>(v7, &v12, &v9);
  std::__list_imp<char *>::clear(v10);
  std::__list_imp<char *>::clear(v13);
  return std::__list_imp<char *>::clear(v19);
}

void sub_1B5596414(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v3 + 8));
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

uint64_t fst::SetFinalProperties<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>(unint64_t a1, int *a2, int *a3)
{
  v6 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
  v7 = *a2;
  if (*a2)
  {
    v8 = *(a2 + 3) + 1;
  }

  else
  {
    v8 = 0;
  }

  if (*v6)
  {
    v9 = *(v6 + 24) + 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 != v9)
  {
    goto LABEL_22;
  }

  v10 = (a2 + 4);
  v11 = (v6 + 16);
  v12 = v7 && v7 == *v6;
  v13 = !v12;
  v14 = 1;
  v15 = !v13;
  while (1)
  {
    v16 = *v10;
    v17 = *v11;
    if ((v14 & 1) != 0 && !v15)
    {
      break;
    }

    if (v16 == a2 + 2)
    {
      goto LABEL_21;
    }

    if (*(v16 + 16) != *(v17 + 16))
    {
      goto LABEL_22;
    }

    v14 = 0;
    v10 = (v16 + 8);
    v11 = (v17 + 8);
  }

  if (v7)
  {
    goto LABEL_22;
  }

LABEL_21:
  if (*(a2 + 8) != *(v6 + 32))
  {
LABEL_22:
    v18 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
    v19 = *a2;
    if (*a2)
    {
      v20 = *(a2 + 3) + 1;
    }

    else
    {
      v20 = 0;
    }

    if (*v18)
    {
      v21 = *(v18 + 24) + 1;
    }

    else
    {
      v21 = 0;
    }

    if (v20 != v21)
    {
      goto LABEL_43;
    }

    v22 = (a2 + 4);
    v23 = (v18 + 16);
    v24 = v19 && v19 == *v18;
    v25 = !v24;
    v26 = 1;
    v27 = !v25;
    while (1)
    {
      v28 = *v22;
      v29 = *v23;
      if ((v26 & 1) != 0 && !v27)
      {
        break;
      }

      if (v28 == a2 + 2)
      {
        goto LABEL_42;
      }

      if (*(v28 + 16) != *(v29 + 16))
      {
        goto LABEL_43;
      }

      v26 = 0;
      v22 = (v28 + 8);
      v23 = (v29 + 8);
    }

    if (v19)
    {
      goto LABEL_43;
    }

LABEL_42:
    if (*(a2 + 8) != *(v18 + 32))
    {
LABEL_43:
      a1 &= ~0x100000000uLL;
    }
  }

  v30 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
  v31 = *a3;
  if (*a3)
  {
    v32 = *(a3 + 3) + 1;
  }

  else
  {
    v32 = 0;
  }

  if (*v30)
  {
    v33 = *(v30 + 24) + 1;
  }

  else
  {
    v33 = 0;
  }

  if (v32 != v33)
  {
    goto LABEL_65;
  }

  v34 = (a3 + 4);
  v35 = (v30 + 16);
  v36 = v31 && v31 == *v30;
  v37 = !v36;
  v38 = 1;
  v39 = !v37;
  while (1)
  {
    v40 = *v34;
    v41 = *v35;
    if ((v38 & 1) != 0 && !v39)
    {
      break;
    }

    if (v40 == a3 + 2)
    {
      goto LABEL_64;
    }

    if (*(v40 + 16) != *(v41 + 16))
    {
      goto LABEL_65;
    }

    v38 = 0;
    v34 = (v40 + 8);
    v35 = (v41 + 8);
  }

  if (v31)
  {
    goto LABEL_65;
  }

LABEL_64:
  if (*(a3 + 8) != *(v30 + 32))
  {
LABEL_65:
    v42 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
    v43 = *a3;
    if (*a3)
    {
      v44 = *(a3 + 3) + 1;
    }

    else
    {
      v44 = 0;
    }

    if (*v42)
    {
      v45 = *(v42 + 24) + 1;
    }

    else
    {
      v45 = 0;
    }

    if (v44 != v45)
    {
      goto LABEL_86;
    }

    v46 = (a3 + 4);
    v47 = (v42 + 16);
    v48 = v43 && v43 == *v42;
    v49 = !v48;
    v50 = 1;
    v51 = !v49;
    while (1)
    {
      v52 = *v46;
      v53 = *v47;
      if ((v50 & 1) != 0 && !v51)
      {
        break;
      }

      if (v52 == a3 + 2)
      {
        goto LABEL_85;
      }

      if (*(v52 + 16) != *(v53 + 16))
      {
        goto LABEL_86;
      }

      v50 = 0;
      v46 = (v52 + 8);
      v47 = (v53 + 8);
    }

    if (v43)
    {
      goto LABEL_86;
    }

LABEL_85:
    if (*(a3 + 8) != *(v42 + 32))
    {
LABEL_86:
      a1 = a1 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  return a1 & 0x3FFFFFF0007;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::AddArc(void *a1, int a2, int *a3)
{
  v6 = *(*(a1[8] + 8 * a2) + 64);
  if (v6 == *(*(a1[8] + 8 * a2) + 56))
  {
    v7 = 0;
  }

  else
  {
    v7 = (v6 - 56);
  }

  v8 = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v8, a2, a3, v7);
  v9 = *(a1[8] + 8 * a2);

  return fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::AddArc(v9, a3);
}

uint64_t fst::AddArcProperties<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(unint64_t a1, int a2, int *a3, _DWORD *a4)
{
  v7 = *a3;
  v6 = a3[1];
  v8 = a1 & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  if (*a3 == v6)
  {
    v8 = a1;
  }

  v9 = v8 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
  if (!v6)
  {
    v9 = v8 & 0xFFFFFFFFFC3FFFFFLL | 0x1400000;
  }

  if (!v7)
  {
    v8 = v9;
  }

  if (v6)
  {
    v10 = v8;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
  }

  if (a4)
  {
    if (*a4 <= v7)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 & 0xFFFFFFFFCFFFFFFFLL | 0x20000000;
    }

    if (a4[1] > v6)
    {
      v10 = v11 & 0xFFFFFFFF3FFFFFFFLL | 0x80000000;
    }

    else
    {
      v10 = v11;
    }
  }

  v12 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
  v13 = a3[2];
  if (v13)
  {
    v14 = *(a3 + 4) + 1;
  }

  else
  {
    v14 = 0;
  }

  if (*v12)
  {
    v15 = *(v12 + 24) + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v14 != v15)
  {
    goto LABEL_38;
  }

  v16 = (a3 + 6);
  v17 = (v12 + 16);
  v18 = v13 && v13 == *v12;
  v19 = !v18;
  v20 = 1;
  v21 = !v19;
  while (1)
  {
    v22 = *v16;
    v23 = *v17;
    if ((v20 & 1) != 0 && !v21)
    {
      break;
    }

    if (v22 == a3 + 4)
    {
      goto LABEL_37;
    }

    if (*(v22 + 16) != *(v23 + 16))
    {
      goto LABEL_38;
    }

    v20 = 0;
    v16 = (v22 + 8);
    v17 = (v23 + 8);
  }

  if (v13)
  {
    goto LABEL_38;
  }

LABEL_37:
  if (*(a3 + 10) != *(v12 + 32))
  {
LABEL_38:
    v24 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
    v25 = a3[2];
    if (v25)
    {
      v26 = *(a3 + 4) + 1;
    }

    else
    {
      v26 = 0;
    }

    if (*v24)
    {
      v27 = *(v24 + 24) + 1;
    }

    else
    {
      v27 = 0;
    }

    if (v26 != v27)
    {
      goto LABEL_59;
    }

    v28 = (a3 + 6);
    v29 = (v24 + 16);
    v30 = v25 && v25 == *v24;
    v31 = !v30;
    v32 = 1;
    v33 = !v31;
    while (1)
    {
      v34 = *v28;
      v35 = *v29;
      if ((v32 & 1) != 0 && !v33)
      {
        break;
      }

      if (v34 == a3 + 4)
      {
        goto LABEL_58;
      }

      if (*(v34 + 16) != *(v35 + 16))
      {
        goto LABEL_59;
      }

      v32 = 0;
      v28 = (v34 + 8);
      v29 = (v35 + 8);
    }

    if (v25)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (*(a3 + 10) != *(v24 + 32))
    {
LABEL_59:
      v10 = v10 & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  if (a3[12] <= a2)
  {
    v36 = v10 & 0xFFFFFF3FFFFFFFFFLL | 0x8000000000;
  }

  else
  {
    v36 = v10;
  }

  if ((v36 & 0x4000000000) != 0)
  {
    return v36 & 0x5D7FFEB0007 | 0x2800000000;
  }

  else
  {
    return v36 & 0x5D7FFEB0007;
  }
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v3 = a1;
  v4 = (a1 + 64);
  std::vector<int>::vector[abi:ne200100](__p, (*(a1 + 72) - *(a1 + 64)) >> 3);
  v5 = *a2;
  v6 = a2[1] - *a2;
  if (v6)
  {
    v7 = v6 >> 2;
    v8 = __p[0];
    if (v7 <= 1)
    {
      v7 = 1;
    }

    do
    {
      v9 = *v5;
      v5 += 4;
      v8[v9] = -1;
      --v7;
    }

    while (v7);
  }

  v10 = *(v3 + 64);
  if (*(v3 + 72) == v10)
  {
    v13 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    do
    {
      if (*(__p[0] + v11) == -1)
      {
        fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::Destroy(*(v10 + 8 * v11));
      }

      else
      {
        *(__p[0] + v11) = v12;
        if (v11 != v12)
        {
          *(v10 + 8 * v12) = *(v10 + 8 * v11);
        }

        ++v12;
      }

      ++v11;
      v10 = *(v3 + 64);
    }

    while (v11 < (*(v3 + 72) - v10) >> 3);
    v13 = v12;
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(v4, v13);
  v14 = *(v3 + 64);
  if (*(v3 + 72) != v14)
  {
    v15 = 0;
    v35 = v3;
    do
    {
      v16 = *(v14 + 8 * v15);
      v17 = *(v16 + 40);
      v18 = *(v16 + 64) - *(v16 + 56);
      if (v18)
      {
        v19 = *(v16 + 56);
      }

      else
      {
        v19 = 0;
      }

      if (v18)
      {
        v20 = 0;
        v21 = 0;
        v22 = (v19 + 48);
        v23 = v19 + 16;
        do
        {
          v24 = *(__p[0] + *v22);
          if (v24 == -1)
          {
            v26 = *(v22 - 6);
            v27.i64[0] = v26;
            v27.i64[1] = HIDWORD(v26);
            v17 = vaddq_s64(v17, vceqzq_s64(v27));
          }

          else
          {
            *v22 = v24;
            if (v20 != v21)
            {
              v36 = v17;
              v25 = v19 + 56 * v21;
              *v25 = *(v22 - 6);
              *(v25 + 8) = *(v22 - 10);
              std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v25 + 16), *(v22 - 3), v23);
              *(v25 + 40) = *(v22 - 2);
              *(v25 + 48) = *v22;
              v14 = *v4;
              v17 = v36;
            }

            ++v21;
          }

          ++v20;
          v16 = *(v14 + 8 * v15);
          v28 = 0x6DB6DB6DB6DB6DB7 * ((*(v16 + 64) - *(v16 + 56)) >> 3);
          v22 += 14;
          v23 += 56;
        }

        while (v20 < v28);
        v29 = v17.i64[1];
        v30 = v17.i64[0];
        v3 = v35;
      }

      else
      {
        v21 = 0;
        v28 = 0;
        v29 = *(v16 + 48);
        v30 = *(v16 + 40);
      }

      fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::DeleteArcs(v16, v28 - v21);
      v14 = *(v3 + 64);
      v31 = *(v3 + 72);
      v32 = *(v14 + 8 * v15);
      *(v32 + 40) = v30;
      *(v32 + 48) = v29;
      ++v15;
    }

    while (v15 < (v31 - v14) >> 3);
  }

  v33 = *(v3 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(v3 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_1B5596C84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::DeleteArcs(void *a1, int a2)
{
  v3 = *(a1[8] + 8 * a2);
  v3[5] = 0;
  v3[6] = 0;
  v5 = v3[7];
  v4 = v3[8];
  if (v4 != v5)
  {
    do
    {
      v6 = v4 - 56;
      std::__list_imp<char *>::clear((v4 - 40));
      v4 = v6;
    }

    while (v6 != v5);
  }

  v3[8] = v5;
  result = (*(*a1 + 24))(a1);
  a1[1] = a1[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>>::SetValue(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) + 56) + 56 * *(a1 + 24);
  v5 = *v4;
  v6 = *(v4 + 4);
  if (*v4 != v6)
  {
    **(a1 + 16) &= ~0x20000uLL;
  }

  if (v5)
  {
    if (!v6)
    {
      v7 = *(a1 + 16);
      v8 = *v7;
LABEL_8:
      *v7 = v8 & 0xFFFFFFFFFBFFFFFFLL;
    }
  }

  else
  {
    v7 = *(a1 + 16);
    v9 = *v7;
    *v7 &= ~0x1000000uLL;
    if (!v6)
    {
      v8 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      *v7 = v9 & 0xFFFFFFFFFEBFFFFFLL;
      goto LABEL_8;
    }
  }

  v10 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
  v11 = *(v4 + 8);
  if (v11)
  {
    v12 = *(v4 + 32) + 1;
  }

  else
  {
    v12 = 0;
  }

  if (*v10)
  {
    v13 = *(v10 + 24) + 1;
  }

  else
  {
    v13 = 0;
  }

  if (v12 != v13)
  {
    goto LABEL_30;
  }

  v14 = (v4 + 24);
  v15 = (v10 + 16);
  v16 = v11 && v11 == *v10;
  v17 = !v16;
  v18 = 1;
  v19 = !v17;
  while (1)
  {
    v20 = *v14;
    v21 = *v15;
    if ((v18 & 1) != 0 && !v19)
    {
      break;
    }

    if (v20 == v4 + 16)
    {
      goto LABEL_29;
    }

    if (*(v20 + 16) != *(v21 + 16))
    {
      goto LABEL_30;
    }

    v18 = 0;
    v14 = (v20 + 8);
    v15 = (v21 + 8);
  }

  if (v11)
  {
    goto LABEL_30;
  }

LABEL_29:
  if (*(v4 + 40) != *(v10 + 32))
  {
LABEL_30:
    v22 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
    v23 = *(v4 + 8);
    if (v23)
    {
      v24 = *(v4 + 32) + 1;
    }

    else
    {
      v24 = 0;
    }

    if (*v22)
    {
      v25 = *(v22 + 24) + 1;
    }

    else
    {
      v25 = 0;
    }

    if (v24 != v25)
    {
      goto LABEL_51;
    }

    v26 = (v4 + 24);
    v27 = (v22 + 16);
    v28 = v23 && v23 == *v22;
    v29 = !v28;
    v30 = 1;
    v31 = !v29;
    while (1)
    {
      v32 = *v26;
      v33 = *v27;
      if ((v30 & 1) != 0 && !v31)
      {
        break;
      }

      if (v32 == v4 + 16)
      {
        goto LABEL_50;
      }

      if (*(v32 + 16) != *(v33 + 16))
      {
        goto LABEL_51;
      }

      v30 = 0;
      v26 = (v32 + 8);
      v27 = (v33 + 8);
    }

    if (v23)
    {
      goto LABEL_51;
    }

LABEL_50:
    if (*(v4 + 40) != *(v22 + 32))
    {
LABEL_51:
      **(a1 + 16) &= ~0x100000000uLL;
    }
  }

  v34 = 0x30FC30007;
  if (*a2 == *v4 && *(a2 + 4) == *(v4 + 4) && *(a2 + 48) == *(v4 + 48))
  {
    v34 = 0x3FFFFFFF0007;
  }

  fst::VectorState<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>,std::allocator<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>>::SetArc(*(a1 + 8), a2, *(a1 + 24));
  v35 = *a2;
  v36 = *(a2 + 4);
  if (*a2 != v36)
  {
    **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFFFFFCFFFFLL | 0x20000;
  }

  if (v35)
  {
    if (!v36)
    {
      v37 = *(a1 + 16);
      v38 = *v37;
LABEL_63:
      *v37 = v38 & 0xFFFFFFFFF3FFFFFFLL | 0x4000000;
    }
  }

  else
  {
    v37 = *(a1 + 16);
    v39 = *v37 & 0xFFFFFFFFFCFFFFFFLL | 0x1000000;
    *v37 = v39;
    if (!v36)
    {
      v38 = v39 & 0xFFFFFFFFFD3FFFFFLL | 0x400000;
      *v37 = v38;
      goto LABEL_63;
    }
  }

  result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
  v41 = *(a2 + 8);
  if (v41)
  {
    v42 = *(a2 + 32) + 1;
  }

  else
  {
    v42 = 0;
  }

  if (*result)
  {
    v43 = *(result + 24) + 1;
  }

  else
  {
    v43 = 0;
  }

  if (v42 != v43)
  {
    goto LABEL_85;
  }

  v44 = (a2 + 24);
  v45 = (result + 16);
  v46 = v41 && v41 == *result;
  v47 = !v46;
  v48 = 1;
  v49 = !v47;
  while (1)
  {
    v50 = *v44;
    v51 = *v45;
    if ((v48 & 1) != 0 && !v49)
    {
      break;
    }

    if (v50 == a2 + 16)
    {
      goto LABEL_84;
    }

    if (*(v50 + 16) != *(v51 + 16))
    {
      goto LABEL_85;
    }

    v48 = 0;
    v44 = (v50 + 8);
    v45 = (v51 + 8);
  }

  if (v41)
  {
    goto LABEL_85;
  }

LABEL_84:
  if (*(a2 + 40) != *(result + 32))
  {
LABEL_85:
    result = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
    v52 = *(a2 + 8);
    if (v52)
    {
      v53 = *(a2 + 32) + 1;
    }

    else
    {
      v53 = 0;
    }

    if (*result)
    {
      v54 = *(result + 24) + 1;
    }

    else
    {
      v54 = 0;
    }

    if (v53 != v54)
    {
      goto LABEL_106;
    }

    v55 = (a2 + 24);
    v56 = (result + 16);
    v57 = v52 && v52 == *result;
    v58 = !v57;
    v59 = 1;
    v60 = !v58;
    while (1)
    {
      v61 = *v55;
      v62 = *v56;
      if ((v59 & 1) != 0 && !v60)
      {
        break;
      }

      if (v61 == a2 + 16)
      {
        goto LABEL_105;
      }

      if (*(v61 + 16) != *(v62 + 16))
      {
        goto LABEL_106;
      }

      v59 = 0;
      v55 = (v61 + 8);
      v56 = (v62 + 8);
    }

    if (v52)
    {
      goto LABEL_106;
    }

LABEL_105:
    if (*(a2 + 40) != *(result + 32))
    {
LABEL_106:
      **(a1 + 16) = **(a1 + 16) & 0xFFFFFFFCFFFFFFFFLL | 0x100000000;
    }
  }

  **(a1 + 16) &= v34;
  return result;
}

void *fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v4 = (a1 + 4);
  v5 = 1;
LABEL_2:
  v6 = *v4;
  v7 = v3;
  while (1)
  {
    v8 = v5;
    if (v5)
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v7)
      {
LABEL_9:
        operator new();
      }

      goto LABEL_10;
    }

    if (v6 == a1 + 2)
    {
      break;
    }

    v3 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    v7 = v3;
    if ((v8 & 1) == 0)
    {
      v5 = 0;
      v4 = (v6 + 8);
      goto LABEL_2;
    }
  }

  v9 = a1[8];
  *a2 = v7;
  std::list<int>::list((a2 + 8), v11);
  *(a2 + 32) = v9;
  return std::__list_imp<char *>::clear(v11);
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::ProductWeight(a1, &v6, a3);
  std::__list_imp<char *>::clear(v7);
  return a1;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::ProductWeight(uint64_t a1, int *a2, float a3)
{
  v6 = *a2;
  std::list<int>::list(v7, (a2 + 2));
  *a1 = v6;
  std::list<int>::list((a1 + 8), v7);
  *(a1 + 32) = a3;
  std::__list_imp<char *>::clear(v7);
  return a1;
}

void fst::AutoQueue<int>::AutoQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 7;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB668;
  *(a1 + 24) = 0u;
  v3 = a1 + 48;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v4 = (*(*a2 + 64))(a2, 0x4E00000000, 0);
  if ((v4 & 0x4000000000) == 0 && (*(*a2 + 24))(a2) != -1)
  {
    if ((v4 & 0x800000000) == 0)
    {
      if ((v4 & 0x200000000) == 0)
      {
        v6 = 0;
        v5[0] = v3;
        v5[1] = 0;
        v5[2] = 0;
        v5[3] = &v6;
        fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::SccVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(a2, v5);
      }

      operator new();
    }

    operator new();
  }

  operator new();
}

void sub_1B5597C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, char a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  v30 = *v28;
  if (*v28)
  {
    *(v26 + 56) = v30;
    operator delete(v30);
  }

  v31 = *v27;
  if (*v27)
  {
    *(v26 + 32) = v31;
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::AutoQueue<int>::SccQueueType<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::NaturalLess<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5, _BYTE *a6)
{
  *a5 = 1;
  *a6 = 1;
  v11 = *(a3 + 8) - *a3;
  if (v11)
  {
    v12 = v11 >> 2;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    bzero(*a3, 4 * v12);
  }

  v76 = 0;
  (*(*a1 + 128))(a1, &v74);
  while (1)
  {
    result = v74;
    if (!v74)
    {
      if (v76 >= v75)
      {
        return result;
      }

LABEL_11:
      v15 = v76;
      goto LABEL_12;
    }

    v14 = (*(*v74 + 16))(v74);
    result = v74;
    if (v14)
    {
      break;
    }

    if (!v74)
    {
      goto LABEL_11;
    }

    v15 = (*(*v74 + 24))();
LABEL_12:
    v73 = 0;
    (*(*a1 + 136))(a1, v15, v71);
    while (1)
    {
      if (!v71[0])
      {
        if (v73 >= v71[2])
        {
          goto LABEL_118;
        }

        goto LABEL_18;
      }

      if ((*(*v71[0] + 24))(v71[0]))
      {
        break;
      }

      if (v71[0])
      {
        v16 = (*(*v71[0] + 32))();
        goto LABEL_19;
      }

LABEL_18:
      v16 = v71[1] + 56 * v73;
LABEL_19:
      v17 = *(*a2 + 4 * v15);
      if (v17 == *(*a2 + 4 * *(v16 + 48)))
      {
        v18 = *a3;
        if (!a4 || (v19 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One(), fst::NaturalLess<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::operator()(a4, v16 + 8, v19)))
        {
          v20 = 1;
          goto LABEL_67;
        }

        if ((v18[v17] | 2) == 2)
        {
          v21 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
          v22 = *(v16 + 8);
          if (v22)
          {
            v23 = *(v16 + 32) + 1;
          }

          else
          {
            v23 = 0;
          }

          if (*v21)
          {
            v24 = *(v21 + 24) + 1;
          }

          else
          {
            v24 = 0;
          }

          if (v23 != v24)
          {
            goto LABEL_45;
          }

          v25 = (v16 + 24);
          v26 = (v21 + 16);
          v27 = v22 && v22 == *v21;
          v28 = !v27;
          v29 = 1;
          v30 = !v28;
          while (1)
          {
            v31 = *v25;
            v32 = *v26;
            if ((v29 & 1) != 0 && !v30)
            {
              break;
            }

            if (v31 == v16 + 16)
            {
              goto LABEL_44;
            }

            if (*(v31 + 16) != *(v32 + 16))
            {
              goto LABEL_45;
            }

            v29 = 0;
            v25 = (v31 + 8);
            v26 = (v32 + 8);
          }

          if (v22)
          {
            goto LABEL_45;
          }

LABEL_44:
          v78 = *(v16 + 40);
          v77 = *(v21 + 32);
          if (v78 != v77)
          {
LABEL_45:
            v33 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
            v34 = *(v16 + 8);
            if (v34)
            {
              v35 = *(v16 + 32) + 1;
            }

            else
            {
              v35 = 0;
            }

            if (*v33)
            {
              v36 = *(v33 + 24) + 1;
            }

            else
            {
              v36 = 0;
            }

            if (v35 != v36)
            {
              goto LABEL_66;
            }

            v37 = (v16 + 24);
            v38 = (v33 + 16);
            v39 = v34 && v34 == *v33;
            v40 = !v39;
            v41 = 1;
            v42 = !v40;
            while (1)
            {
              v43 = *v37;
              v44 = *v38;
              if ((v41 & 1) != 0 && !v42)
              {
                break;
              }

              if (v43 == v16 + 16)
              {
                goto LABEL_65;
              }

              if (*(v43 + 16) != *(v44 + 16))
              {
                goto LABEL_66;
              }

              v41 = 0;
              v37 = (v43 + 8);
              v38 = (v44 + 8);
            }

            if (v34)
            {
              goto LABEL_66;
            }

LABEL_65:
            v78 = *(v16 + 40);
            v77 = *(v33 + 32);
            if (v78 != v77)
            {
LABEL_66:
              v20 = 3;
              goto LABEL_67;
            }
          }

          v20 = 2;
LABEL_67:
          v18[v17] = v20;
        }

        *a5 = 0;
      }

      v45 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
      v47 = *(v16 + 8);
      if (v47)
      {
        v48 = *(v16 + 32) + 1;
      }

      else
      {
        v48 = 0;
      }

      if (*v45)
      {
        v49 = *(v45 + 24) + 1;
      }

      else
      {
        v49 = 0;
      }

      if (v48 != v49)
      {
        goto LABEL_90;
      }

      v50 = (v16 + 24);
      v51 = (v45 + 16);
      v52 = v47 && v47 == *v45;
      v53 = !v52;
      v54 = 1;
      v55 = !v53;
      while (1)
      {
        v56 = *v50;
        v57 = *v51;
        if ((v54 & 1) != 0 && !v55)
        {
          break;
        }

        if (v56 == v16 + 16)
        {
          goto LABEL_89;
        }

        if (*(v56 + 16) != *(v57 + 16))
        {
          goto LABEL_90;
        }

        v54 = 0;
        v50 = (v56 + 8);
        v51 = (v57 + 8);
      }

      if (v47)
      {
        goto LABEL_90;
      }

LABEL_89:
      v78 = *(v16 + 40);
      v77 = *(v45 + 32);
      v46.n128_f32[0] = v78;
      if (v78 != v77)
      {
LABEL_90:
        v58 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
        v59 = *(v16 + 8);
        if (v59)
        {
          v60 = *(v16 + 32) + 1;
        }

        else
        {
          v60 = 0;
        }

        if (*v58)
        {
          v61 = *(v58 + 24) + 1;
        }

        else
        {
          v61 = 0;
        }

        if (v60 != v61)
        {
          goto LABEL_111;
        }

        v62 = (v16 + 24);
        v63 = (v58 + 16);
        v64 = v59 && v59 == *v58;
        v65 = !v64;
        v66 = 1;
        v67 = !v65;
        while (1)
        {
          v68 = *v62;
          v69 = *v63;
          if ((v66 & 1) != 0 && !v67)
          {
            break;
          }

          if (v68 == v16 + 16)
          {
            goto LABEL_110;
          }

          if (*(v68 + 16) != *(v69 + 16))
          {
            goto LABEL_111;
          }

          v66 = 0;
          v62 = (v68 + 8);
          v63 = (v69 + 8);
        }

        if (v59)
        {
          goto LABEL_111;
        }

LABEL_110:
        v78 = *(v16 + 40);
        v77 = *(v58 + 32);
        v46.n128_f32[0] = v78;
        if (v78 != v77)
        {
LABEL_111:
          *a6 = 0;
        }
      }

      if (v71[0])
      {
        (*(*v71[0] + 40))(v71[0], v46);
      }

      else
      {
        ++v73;
      }
    }

    if (v71[0])
    {
      (*(*v71[0] + 8))();
      goto LABEL_120;
    }

LABEL_118:
    if (v72)
    {
      --*v72;
    }

LABEL_120:
    if (v74)
    {
      (*(*v74 + 32))(v74);
    }

    else
    {
      ++v76;
    }
  }

  if (v74)
  {
    return (*(*v74 + 8))();
  }

  return result;
}

void sub_1B5598398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void fst::TopOrderQueue<int>::TopOrderQueue<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1)
{
  *(a1 + 8) = 4;
  *(a1 + 12) = 0;
  *a1 = &unk_1F2CFB748;
  *(a1 + 16) = 0xFFFFFFFF00000000;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v3 = 0;
  v1 = a1 + 24;
  v2 = &v3;
  fst::DfsVisit<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::TopOrderVisitor<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>();
}

void sub_1B5598570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[6];
  if (v21)
  {
    v18[7] = v21;
    operator delete(v21);
  }

  v22 = *v19;
  if (*v19)
  {
    v18[4] = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void sub_1B5598D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Type()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Type(void)::type;
}

void sub_1B5598EA4(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

BOOL fst::NaturalLess<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  fst::Plus<int>(a2, a3, &v27);
  v5 = *(a2 + 32);
  v6 = NAN;
  if (v5 != -INFINITY)
  {
    v7 = *(a3 + 32);
    v6 = NAN;
    if (v7 != -INFINITY)
    {
      if (v5 >= v7)
      {
        v6 = *(a3 + 32);
      }

      else
      {
        v6 = *(a2 + 32);
      }
    }
  }

  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v24, &v27, v6);
  std::__list_imp<char *>::clear(v28);
  if (v24)
  {
    v8 = v25[2] + 1;
  }

  else
  {
    v8 = 0;
  }

  v9 = *a2;
  if (*a2)
  {
    v10 = *(a2 + 24) + 1;
  }

  else
  {
    v10 = 0;
  }

  if (v8 != v10)
  {
    goto LABEL_35;
  }

  v11 = v25[1];
  v12 = *(a2 + 16);
  v13 = v12;
  if (v24)
  {
    if (v24 != v9)
    {
LABEL_35:
      v22 = 0;
      goto LABEL_36;
    }

    while (v11 != v25)
    {
      if (*(v11 + 16) != *(v13 + 16))
      {
        goto LABEL_35;
      }

      v11 = *(v11 + 8);
      v13 = *(v13 + 8);
    }
  }

  v27 = v26;
  v14 = *(a2 + 32);
  v29 = v14;
  if (v26 != v14)
  {
    goto LABEL_35;
  }

  if (*a3)
  {
    v15 = *(a3 + 24) + 1;
  }

  else
  {
    v15 = 0;
  }

  if (v8 == v15)
  {
    v16 = (a3 + 16);
    if (v9)
    {
      v17 = v9 == *a3;
    }

    else
    {
      v17 = 0;
    }

    v18 = !v17;
    v19 = 1;
    v20 = v18 ^ 1;
    while (1)
    {
      v21 = *v16;
      if ((v19 & 1) != 0 && !v20)
      {
        break;
      }

      if (v12 == a2 + 8)
      {
        goto LABEL_39;
      }

      if (*(v12 + 16) != *(v21 + 16))
      {
        goto LABEL_38;
      }

      v19 = 0;
      v12 = *(v12 + 8);
      v16 = (v21 + 8);
    }

    if (v9)
    {
      goto LABEL_38;
    }

LABEL_39:
    v27 = v14;
    v29 = *(a3 + 32);
    v22 = v14 != v29;
  }

  else
  {
LABEL_38:
    v22 = 1;
  }

LABEL_36:
  std::__list_imp<char *>::clear(v25);
  return v22;
}

void fst::ShortestDistanceState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AutoQueue<int>,fst::AnyArcFilter<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::ShortestDistance(void *a1, int a2)
{
  if ((*(**a1 + 24))(*a1) == -1)
  {
    if (!(*(**a1 + 64))(*a1, 4, 0))
    {
      return;
    }

    goto LABEL_154;
  }

  if (*(a1 + 32) == 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__p, "ERROR");
    }

    v4 = fst::LogMessage::LogMessage(v106, &__p);
    v5 = fst::cerr(v4);
    v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ShortestDistance: first_path option disallowed when ", 52);
    v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Weight does not have the path property: ", 40);
    v93 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Type();
    v94 = *(v93 + 23);
    if (v94 >= 0)
    {
      v95 = v93;
    }

    else
    {
      v95 = *v93;
    }

    if (v94 >= 0)
    {
      v96 = *(v93 + 23);
    }

    else
    {
      v96 = *(v93 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v95, v96);
    fst::LogMessage::~LogMessage(v106);
    if (SHIBYTE(v111) < 0)
    {
      operator delete(__p);
    }

LABEL_154:
    v97 = a1 + 116;
    goto LABEL_155;
  }

  (*(**(a1[2] + 16) + 56))(*(a1[2] + 16));
  if ((*(a1 + 33) & 1) == 0)
  {
    v6 = a1[1];
    v8 = *v6;
    v7 = v6[1];
    if (v7 != *v6)
    {
      do
      {
        v9 = v7 - 40;
        std::__list_imp<char *>::clear((v7 - 32));
        v7 = v9;
      }

      while (v9 != v8);
    }

    v6[1] = v8;
    v11 = a1[5];
    v10 = a1[6];
    if (v10 != v11)
    {
      do
      {
        v12 = v10 - 40;
        std::__list_imp<char *>::clear((v10 - 32));
        v10 = v12;
      }

      while (v12 != v11);
    }

    a1[6] = v11;
    a1[9] = 0;
  }

  if (a2 == -1)
  {
    a2 = (*(**a1 + 24))();
  }

  v13 = a2;
  for (i = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((i[1] - *i) >> 3) <= a2; i = a1[1])
  {
    v15 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
    std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](i, v15);
    v16 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
    std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v16);
    LOBYTE(__p) = 0;
    std::vector<BOOL>::push_back((a1 + 8), &__p);
  }

  if (*(a1 + 33) == 1)
  {
    for (j = a1[11]; a2 >= ((a1[12] - j) >> 2); j = a1[11])
    {
      std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
    }

    *(j + 4 * a2) = *(a1 + 28);
  }

  v18 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
  v19 = v18;
  v20 = *a1[1] + 40 * v13;
  *v20 = *v18;
  if (v20 != v18)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v20 + 8), *(v18 + 16), v18 + 8);
  }

  *(v20 + 32) = *(v19 + 32);
  v21 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::One();
  v22 = v21;
  v23 = a1 + 5;
  v24 = a1[5] + 40 * v13;
  *v24 = *v21;
  if (v24 != v21)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v24 + 8), *(v21 + 16), v21 + 8);
  }

  *(v24 + 32) = *(v22 + 32);
  v25 = a1 + 8;
  *(a1[8] + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  (*(**(a1[2] + 16) + 24))(*(a1[2] + 16), v13);
  v97 = a1 + 116;
  do
  {
    if ((*(**(a1[2] + 16) + 48))(*(a1[2] + 16)))
    {
      goto LABEL_143;
    }

    v26 = (*(**(a1[2] + 16) + 16))(*(a1[2] + 16));
    (*(**(a1[2] + 16) + 32))(*(a1[2] + 16));
    v27 = v26;
    for (k = a1[1]; 0xCCCCCCCCCCCCCCCDLL * ((k[1] - *k) >> 3) <= v26; k = a1[1])
    {
      v29 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
      std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](k, v29);
      v30 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
      std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v30);
      LOBYTE(__p) = 0;
      std::vector<BOOL>::push_back((a1 + 8), &__p);
    }

    if (*(a1 + 32) == 1)
    {
      (*(**a1 + 32))(&__p);
      v31 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
      if (__p)
      {
        v32 = v112 + 1;
      }

      else
      {
        v32 = 0;
      }

      if (*v31)
      {
        v33 = *(v31 + 24) + 1;
      }

      else
      {
        v33 = 0;
      }

      if (v32 != v33)
      {
        goto LABEL_142;
      }

      v34 = v111;
      v35 = (v31 + 16);
      v36 = __p && __p == *v31;
      v37 = !v36;
      v38 = 1;
      v39 = !v37;
      while (1)
      {
        v40 = *v35;
        if ((v38 & 1) != 0 && !v39)
        {
          break;
        }

        if (v34 == &v110)
        {
          goto LABEL_50;
        }

        if (*(v34 + 16) != *(v40 + 16))
        {
          goto LABEL_142;
        }

        v38 = 0;
        v34 = *(v34 + 8);
        v35 = (v40 + 8);
      }

      if (__p)
      {
LABEL_142:
        std::__list_imp<char *>::clear(&v110);
LABEL_143:
        ++*(a1 + 28);
        if (!(*(**a1 + 64))(*a1, 4, 0))
        {
          return;
        }

LABEL_155:
        *v97 = 1;
        return;
      }

LABEL_50:
      *v106 = v113;
      v103 = *(v31 + 32);
      v41 = v113;
      v42 = v103;
      std::__list_imp<char *>::clear(&v110);
      if (v41 != v42)
      {
        goto LABEL_143;
      }
    }

    *(*v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v26);
    v43 = *v23 + 40 * v26;
    LODWORD(__p) = *v43;
    std::list<int>::list(&v110, v43 + 8);
    v113 = *(v43 + 32);
    v44 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
    v45 = v44;
    v46 = *v23 + 40 * v26;
    *v46 = *v44;
    if (v46 != v44)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v46 + 8), *(v44 + 16), v44 + 8);
    }

    *(v46 + 32) = *(v45 + 32);
    v47 = *a1;
    v108 = 0;
    (*(*v47 + 136))(v47, v27, v106);
    while (v106[0])
    {
      if ((*(*v106[0] + 24))(v106[0]))
      {
        goto LABEL_135;
      }

      if (v106[0])
      {
        v48 = (*(*v106[0] + 32))(v106[0]);
        goto LABEL_60;
      }

LABEL_59:
      v48 = v106[1] + 56 * v108;
LABEL_60:
      v49 = a1[1];
      for (m = *(v48 + 48); 0xCCCCCCCCCCCCCCCDLL * ((v49[1] - *v49) >> 3) <= m; m = *(v48 + 48))
      {
        v51 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
        std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](v49, v51);
        v52 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
        std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](a1 + 5, v52);
        LOBYTE(v103) = 0;
        std::vector<BOOL>::push_back((a1 + 8), &v103);
        v49 = a1[1];
      }

      if (*(a1 + 33) == 1)
      {
        while (1)
        {
          v53 = a1[11];
          LODWORD(m) = *(v48 + 48);
          if (m < ((a1[12] - v53) >> 2))
          {
            break;
          }

          std::vector<int>::push_back[abi:ne200100](a1 + 11, &fst::kNoStateId);
        }

        if (*(v53 + 4 * m) != *(a1 + 28))
        {
          v54 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
          v55 = v54;
          v56 = *a1[1] + 40 * *(v48 + 48);
          *v56 = *v54;
          if (v56 != v54)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v56 + 8), *(v54 + 16), v54 + 8);
          }

          *(v56 + 32) = *(v55 + 32);
          v57 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::Zero();
          v58 = v57;
          m = *v23 + 40 * *(v48 + 48);
          *m = *v57;
          if (m != v57)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((m + 8), *(v57 + 16), v57 + 8);
          }

          *(m + 32) = *(v58 + 32);
          v59 = *(v48 + 48);
          *(a1[8] + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v59);
          *(a1[11] + 4 * v59) = *(a1 + 28);
          LODWORD(m) = *(v48 + 48);
        }
      }

      v60 = *a1[1];
      v61 = a1[5];
      fst::Times<int,(fst::StringType)1>(&__p, v48 + 8, &v98);
      v62 = NAN;
      if (v113 != -INFINITY)
      {
        v63 = *(v48 + 40);
        v62 = NAN;
        if (v63 != -INFINITY)
        {
          v62 = INFINITY;
          if (v63 != INFINITY && v113 != INFINITY)
          {
            v62 = v113 + v63;
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v103, &v98, v62);
      v65 = v60 + 40 * m;
      std::__list_imp<char *>::clear(&v99);
      fst::Plus<int>(v65, &v103, &v114);
      v66 = *(v65 + 32);
      v67 = NAN;
      if (v66 != -INFINITY)
      {
        v67 = NAN;
        if (v105 != -INFINITY)
        {
          if (v66 >= v105)
          {
            v67 = v105;
          }

          else
          {
            v67 = *(v65 + 32);
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v98, &v114, v67);
      std::__list_imp<char *>::clear(v115);
      v68 = *v65;
      if (*v65)
      {
        v69 = *(v65 + 24) + 1;
      }

      else
      {
        v69 = 0;
      }

      if (v98)
      {
        v70 = v101 + 1;
      }

      else
      {
        v70 = 0;
      }

      if (v69 == v70)
      {
        v71 = *(a1 + 7);
        v72 = (v65 + 16);
        v73 = v100;
        if (v68)
        {
          v74 = v68 == v98;
        }

        else
        {
          v74 = 0;
        }

        v75 = !v74;
        v76 = 1;
        v77 = v75 ^ 1;
        while (1)
        {
          v78 = *v72;
          if ((v76 & 1) != 0 && !v77)
          {
            break;
          }

          if (v78 == v65 + 8)
          {
            goto LABEL_127;
          }

          if (*(v78 + 16) != *(v73 + 16))
          {
            goto LABEL_103;
          }

          v76 = 0;
          v72 = (v78 + 8);
          v73 = *(v73 + 8);
        }

        if (v68)
        {
          goto LABEL_103;
        }

LABEL_127:
        v85 = *(v65 + 32);
        v86 = v102;
        v87 = v71 + v102;
        v88 = v71 + v85;
        std::__list_imp<char *>::clear(&v99);
        if (v86 <= v88 && v85 <= v87)
        {
          goto LABEL_131;
        }
      }

      else
      {
LABEL_103:
        std::__list_imp<char *>::clear(&v99);
      }

      fst::Plus<int>(v65, &v103, &v114);
      v79 = *(v65 + 32);
      v80 = NAN;
      if (v79 != -INFINITY)
      {
        v80 = NAN;
        if (v105 != -INFINITY)
        {
          if (v79 >= v105)
          {
            v80 = v105;
          }

          else
          {
            v80 = *(v65 + 32);
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v98, &v114, v80);
      std::__list_imp<char *>::clear(v115);
      *v65 = v98;
      if (v65 != &v98)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v65 + 8), v100, &v99);
      }

      v81 = v61 + 40 * m;
      *(v65 + 32) = v102;
      std::__list_imp<char *>::clear(&v99);
      fst::Plus<int>(v81, &v103, &v114);
      v82 = *(v81 + 32);
      v83 = NAN;
      if (v82 != -INFINITY)
      {
        v83 = NAN;
        if (v105 != -INFINITY)
        {
          if (v82 >= v105)
          {
            v83 = v105;
          }

          else
          {
            v83 = *(v81 + 32);
          }
        }
      }

      fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::GallicWeight(&v98, &v114, v83);
      std::__list_imp<char *>::clear(v115);
      *v81 = v98;
      if (v81 != &v98)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v81 + 8), v100, &v99);
      }

      *(v81 + 32) = v102;
      std::__list_imp<char *>::clear(&v99);
      if (*v65 == -2 && !*(v65 + 24) || *(v65 + 32) == -INFINITY || *v81 == -2 && !*(v81 + 24) || *(v81 + 32) == -INFINITY)
      {
        *v97 = 1;
        std::__list_imp<char *>::clear(v104);
        v90 = 0;
        goto LABEL_136;
      }

      v84 = **(a1[2] + 16);
      if ((*(a1[8] + ((*(v48 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v48 + 48)))
      {
        (*(v84 + 40))();
      }

      else
      {
        (*(v84 + 24))();
        *(*v25 + ((*(v48 + 48) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << *(v48 + 48);
      }

LABEL_131:
      std::__list_imp<char *>::clear(v104);
      if (v106[0])
      {
        (*(*v106[0] + 40))(v106[0]);
      }

      else
      {
        ++v108;
      }
    }

    if (v108 < v106[2])
    {
      goto LABEL_59;
    }

LABEL_135:
    v90 = 1;
LABEL_136:
    if (v106[0])
    {
      (*(*v106[0] + 8))(v106[0]);
    }

    else if (v107)
    {
      --*v107;
    }

    std::__list_imp<char *>::clear(&v110);
  }

  while ((v90 & 1) != 0);
}

void sub_1B5599E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  fst::LogMessage::~LogMessage(&a22);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::resize(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[1];
  v5 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    return std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::__append(result, v7, a3);
  }

  else if (!v6)
  {
    v8 = *result + 40 * a2;
    if (v4 != v8)
    {
      do
      {
        v9 = v4 - 40;
        result = std::__list_imp<char *>::clear((v4 - 32));
        v4 = v9;
      }

      while (v9 != v8);
    }

    v3[1] = v8;
  }

  return result;
}

uint64_t fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::NoWeight()
{
  {
    operator new();
  }

  return fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>::NoWeight(void)::no_weight;
}

uint64_t std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v4 = a1[1];
  if (v4 >= a1[2])
  {
    result = std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1> const&>(a1, a2);
  }

  else
  {
    *v4 = *a2;
    std::list<int>::list((v4 + 8), (a2 + 2));
    *(v4 + 32) = a2[8];
    result = v4 + 40;
    a1[1] = v4 + 40;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1> const&>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B559A2A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      *(a4 + v7) = *(v6 + v7);
      result = std::list<int>::list((a4 + v7 + 8), v6 + v7 + 8);
      *(a4 + v7 + 32) = *(v6 + v7 + 32);
      v7 += 40;
    }

    while (v8 + 40 != a3);
    while (v6 != a3)
    {
      result = std::__list_imp<char *>::clear((v6 + 8));
      v6 += 40;
    }
  }

  return result;
}

void sub_1B559A348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      std::__list_imp<char *>::clear(v5);
      v5 -= 5;
      v4 += 40;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::__append(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        result = std::list<int>::list((v7 + 8), (a3 + 2));
        *(v7 + 32) = a3[8];
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(result, v11);
    }

    v18 = 0;
    v19 = 40 * v8;
    v20 = 40 * v8;
    std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = v19 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B559A4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)1>>::__construct_at_end(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      result = std::list<int>::list((v4 + 8), (a3 + 2));
      *(v4 + 32) = a3[8];
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B559A72C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::__append(uint64_t *result, unint64_t a2, _DWORD *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = v7 + 40 * a2;
      v13 = 40 * a2;
      do
      {
        *v7 = *a3;
        result = std::list<int>::list((v7 + 8), (a3 + 2));
        *(v7 + 32) = a3[8];
        v7 += 40;
        v13 -= 40;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(result, v11);
    }

    v18 = 0;
    v19 = 40 * v8;
    v20 = 40 * v8;
    std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1];
    v15 = v19 + *v5 - v14;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>*>(v5, *v5, v14, v15);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B559A8F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__split_buffer<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::__construct_at_end(void *result, uint64_t a2, _DWORD *a3)
{
  v3 = result;
  v4 = result[2];
  if (a2)
  {
    v6 = v4 + 40 * a2;
    v7 = 40 * a2;
    do
    {
      *v4 = *a3;
      result = std::list<int>::list((v4 + 8), (a3 + 2));
      *(v4 + 32) = a3[8];
      v4 += 40;
      v7 -= 40;
    }

    while (v7);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

uint64_t fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::NoWeight(void)::no_weight;
}

uint64_t fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::NoWeight()
{
  {
    operator new();
  }

  return fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::NoWeight(void)::no_weight;
}

void sub_1B559AB2C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  MEMORY[0x1B8C85350](v1, 0x1020C4067685F46);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>::__emplace_back_slow_path<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>(uint64_t *a1, _DWORD *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v6 = 0x666666666666666;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>>(a1, v6);
  }

  v7 = 40 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = *a2;
  std::list<int>::list((v7 + 8), (a2 + 2));
  *(v7 + 32) = a2[8];
  *&v16 = v16 + 40;
  v8 = a1[1];
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>>,fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B559ACA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<fst::GallicWeight<int,fst::LogWeightTpl<float>,(fst::GallicType)1>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Reverse(a1, &v4);
  *a2 = v4;
  std::list<int>::list((a2 + 8), v5);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v5);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::TropicalWeightTpl<float>>::Reverse@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = 0;
  v11[0] = v11;
  v11[1] = v11;
  v11[2] = 0;
  v4 = (a1 + 4);
  v5 = 1;
LABEL_2:
  v6 = *v4;
  v7 = v3;
  while (1)
  {
    v8 = v5;
    if (v5)
    {
      v3 = *a1;
      if (!*a1)
      {
        break;
      }

      if (v7)
      {
LABEL_9:
        operator new();
      }

      goto LABEL_10;
    }

    if (v6 == a1 + 2)
    {
      break;
    }

    v3 = *(v6 + 16);
    if (v7)
    {
      goto LABEL_9;
    }

LABEL_10:
    v5 = 0;
    v7 = v3;
    if ((v8 & 1) == 0)
    {
      v5 = 0;
      v4 = (v6 + 8);
      goto LABEL_2;
    }
  }

  v9 = a1[8];
  *a2 = v7;
  std::list<int>::list((a2 + 8), v11);
  *(a2 + 32) = v9;
  return std::__list_imp<char *>::clear(v11);
}

void *fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D1E358;
  v2 = a1[1];
  if (v2)
  {
    v3 = v2[14] - 1;
    v2[14] = v3;
    if (!v3)
    {
      (*(*v2 + 8))(v2);
    }
  }

  return a1;
}

void *fst::Divide<int>@<X0>(int *a1@<X0>, int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v5 = fst::LogMessage::LogMessage(&v12, __p);
    v6 = fst::cerr(v5);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "StringWeight::Divide: only left division is defined ", 52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "for the left string semiring", 28);
    fst::LogMessage::~LogMessage(&v12);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    v9 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
    *a4 = *v9;
    return std::list<int>::list((a4 + 8), (v9 + 2));
  }

  else
  {

    return fst::DivideLeft<int,(fst::StringType)0>(a1, a2, a4);
  }
}

void sub_1B559AFC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *fst::DivideLeft<int,(fst::StringType)0>@<X0>(int *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 && (*a1 == -2 ? (v6 = *(a1 + 3) == 0) : (v6 = 0), v6) || *a2 && (*a2 == -2 ? (v7 = *(a2 + 3) == 0) : (v7 = 0), v7))
  {
    v17 = fst::StringWeight<int,(fst::StringType)0>::NoWeight();
    goto LABEL_26;
  }

  v8 = fst::StringWeight<int,(fst::StringType)0>::Zero();
  v9 = *a2;
  if (*a2)
  {
    v10 = *(a2 + 3) + 1;
  }

  else
  {
    v10 = 0;
  }

  if (*v8)
  {
    v11 = *(v8 + 24) + 1;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != v11)
  {
LABEL_29:
    result = fst::StringWeight<int,(fst::StringType)0>::Zero();
    v19 = *a1;
    if (*a1)
    {
      v20 = *(a1 + 3) + 1;
    }

    else
    {
      v20 = 0;
    }

    if (*result)
    {
      v21 = result[3] + 1;
    }

    else
    {
      v21 = 0;
    }

    if (v20 != v21)
    {
      v22 = *(a1 + 2);
LABEL_44:
      v27 = 0;
      *(a3 + 8) = a3 + 8;
      *(a3 + 16) = a3 + 8;
      *(a3 + 24) = 0;
      *a3 = 0;
      v28 = 1;
      if (*a1)
      {
        do
        {
          if (!*a2 || *(a2 + 3) + 1 <= v27)
          {
            v29 = (v22 + 16);
            if (v28)
            {
              v29 = a1;
            }

            result = fst::StringWeight<int,(fst::StringType)1>::PushBack(a3, *v29);
          }

          if ((v28 & 1) == 0)
          {
            v22 = *(v22 + 8);
          }

          v28 = 0;
          ++v27;
        }

        while (v22 != a1 + 2);
      }

      return result;
    }

    v22 = *(a1 + 2);
    v23 = result + 2;
    v24 = 1;
    v25 = v22;
    while (1)
    {
      v26 = *v23;
      if (v24)
      {
        if (!v19)
        {
          break;
        }

        if (v19 != *result)
        {
          goto LABEL_44;
        }
      }

      if (v25 == a1 + 2)
      {
        break;
      }

      if (*(v25 + 16) != *(v26 + 16))
      {
        goto LABEL_44;
      }

      v24 = 0;
      v25 = *(v25 + 8);
      v23 = (v26 + 8);
    }

    v17 = fst::StringWeight<int,(fst::StringType)0>::Zero();
LABEL_26:
    *a3 = *v17;

    return std::list<int>::list((a3 + 8), (v17 + 2));
  }

  v12 = (a2 + 4);
  v13 = (v8 + 16);
  for (i = 1; ; i = 0)
  {
    v15 = *v12;
    v16 = *v13;
    if (i)
    {
      if (!v9)
      {
        break;
      }

      if (v9 != *v8)
      {
        goto LABEL_29;
      }
    }

    if (v15 == a2 + 2)
    {
      break;
    }

    if (*(v15 + 16) != *(v16 + 16))
    {
      goto LABEL_29;
    }

    v12 = (v15 + 8);
    v13 = (v16 + 8);
  }

  return fst::StringWeight<int,(fst::StringType)0>::StringWeight(a3, -2);
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::QuantizeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, float *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v11 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v5 = 0;
      do
      {
        (*(*a1 + 296))(a1, v5, &v24);
        while (!(*(*v24 + 24))(v24))
        {
          v6 = (*(*v24 + 32))(v24);
          fst::QuantizeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()(a2, v6, &v29);
          (*(*v24 + 88))(v24, &v29);
          std::__list_imp<char *>::clear(v31);
          (*(*v24 + 40))(v24);
        }

        if (v24)
        {
          (*(*v24 + 8))();
        }

        (*(*a1 + 32))(&v21, a1, v5);
        v24 = 0;
        v25 = v21;
        std::list<int>::list(v26, v22);
        v27 = v23;
        v28 = -1;
        fst::QuantizeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()(a2, &v24, &v29);
        std::__list_imp<char *>::clear(v26);
        std::__list_imp<char *>::clear(v22);
        if (!v29)
        {
          goto LABEL_20;
        }

        v7 = FLAGS_fst_error_fatal;
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v18, "FATAL");
          v8 = fst::LogMessage::LogMessage(&v20, v18);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          v8 = fst::LogMessage::LogMessage(&v17, __p);
        }

        v9 = fst::cerr(v8);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "ArcMap: non-zero arc labels for superfinal arc", 46);
        if (v7)
        {
          fst::LogMessage::~LogMessage(&v20);
          if (v19 < 0)
          {
            v10 = v18[0];
LABEL_18:
            operator delete(v10);
          }
        }

        else
        {
          fst::LogMessage::~LogMessage(&v17);
          if (v16 < 0)
          {
            v10 = __p[0];
            goto LABEL_18;
          }
        }

        (*(*a1 + 192))(a1, 4, 4);
LABEL_20:
        v12 = v30;
        std::list<int>::list(v13, v31);
        v14 = v32;
        (*(*a1 + 184))(a1, v5, &v12);
        std::__list_imp<char *>::clear(v13);
        std::__list_imp<char *>::clear(v31);
        v5 = (v5 + 1);
      }

      while (v5 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v11 & 0x3FFCFFFF0007, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B559B6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__list_imp<char *>::clear((v40 + 16));
  _Unwind_Resume(a1);
}

void *fst::QuantizeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()@<X0>(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Quantize(a2 + 2, &v10, *a1);
  v5 = *v3;
  v7 = v10;
  std::list<int>::list(v8, v11);
  v9 = v12;
  *&v3 = v3[12];
  *a3 = v5;
  *(a3 + 8) = v7;
  std::list<int>::list((a3 + 16), v8);
  *(a3 + 40) = v9;
  *(a3 + 48) = v3;
  std::__list_imp<char *>::clear(v8);
  return std::__list_imp<char *>::clear(v11);
}

void sub_1B559B848(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v2 + 8));
  std::__list_imp<char *>::clear((v1 + 8));
  _Unwind_Resume(a1);
}

void *fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::ProductWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Quantize(a1, &v5, a3);
  *a2 = v5;
  std::list<int>::list((a2 + 8), v6);
  *(a2 + 32) = v7;
  return std::__list_imp<char *>::clear(v6);
}

void *fst::PairWeight<fst::StringWeight<int,(fst::StringType)0>,fst::TropicalWeightTpl<float>>::Quantize@<X0>(float *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v8 = *a1;
  std::list<int>::list(v9, (a1 + 2));
  v6 = a1[8];
  if ((LODWORD(v6) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    v6 = floorf((v6 / a3) + 0.5) * a3;
  }

  *a2 = v8;
  std::list<int>::list((a2 + 8), v9);
  *(a2 + 32) = v6;
  return std::__list_imp<char *>::clear(v9);
}

void fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::EncodeMapper(_DWORD *a1, int a2, int a3)
{
  *a1 = a2;
  a1[1] = a3;
  operator new();
}

uint64_t fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::EncodeTable(uint64_t a1, int a2)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = a2;
  v5 = a2 & 1;
  v6 = (a2 & 2) != 0;
  std::unordered_map<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const* const,int>>>::unordered_map(a1 + 32, 0x400uLL, &v4);
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  return a1;
}

void sub_1B559BAE8(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,std::allocator<std::pair<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const* const,int>>>::unordered_map(uint64_t a1, size_t a2, int *a3)
{
  v4 = *a3;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = v4;
  *(a1 + 36) = v4 & 1;
  *(a1 + 37) = (v4 & 2) != 0;
  *(a1 + 40) = 1065353216;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::ArcMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 280))(a1, 0);
  (*(*a1 + 288))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v31 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if (*(a2 + 4) == 1 && (*a2 & 2) != 0)
    {
      v5 = (*(*a1 + 200))(a1);
      v7 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
      v62 = *v7;
      std::list<int>::list(v63, (v7 + 2));
      v64 = v7[8];
      (*(*a1 + 184))(a1, v5, &v62);
      std::__list_imp<char *>::clear(v63);
      v6 = 0;
    }

    else
    {
      LODWORD(v5) = -1;
      v6 = 1;
    }

    if ((*(*a1 + 160))(a1) >= 1)
    {
      v8 = 0;
      while (1)
      {
        (*(*a1 + 296))(a1, v8, &v53);
        while (!(*(*v53 + 24))(v53))
        {
          v9 = (*(*v53 + 32))(v53);
          fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()(a2, v9, &v58);
          (*(*v53 + 88))(v53, &v58);
          std::__list_imp<char *>::clear(v60);
          (*(*v53 + 40))(v53);
        }

        if (v53)
        {
          (*(*v53 + 8))();
        }

        if (v6)
        {
          break;
        }

        if (v8 != v5)
        {
          (*(*a1 + 32))(&v38, a1, v8);
          v53 = 0;
          v54 = v38;
          std::list<int>::list(v55, v39);
          v56 = v40;
          v57 = -1;
          fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()(a2, &v53, &v58);
          std::__list_imp<char *>::clear(v55);
          std::__list_imp<char *>::clear(v39);
          if (v58)
          {
            v13 = v59;
            goto LABEL_50;
          }

          v15 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
          v13 = v59;
          if (v59)
          {
            v16 = v60[2] + 1;
          }

          else
          {
            v16 = 0;
          }

          if (*v15)
          {
            v17 = *(v15 + 24) + 1;
          }

          else
          {
            v17 = 0;
          }

          if (v16 != v17)
          {
            goto LABEL_50;
          }

          v18 = v60[1];
          v19 = (v15 + 16);
          v20 = v59 && v59 == *v15;
          v21 = !v20;
          v22 = 1;
          v23 = !v21;
          while (1)
          {
            v24 = *v19;
            if ((v22 & 1) != 0 && !v23)
            {
              break;
            }

            if (v18 == v60)
            {
              goto LABEL_49;
            }

            if (*(v18 + 16) != *(v24 + 16))
            {
              goto LABEL_50;
            }

            v22 = 0;
            v18 = *(v18 + 8);
            v19 = (v24 + 8);
          }

          if (v59)
          {
            goto LABEL_50;
          }

LABEL_49:
          *&v53 = v61;
          v65 = *(v15 + 32);
          if (v61 != v65)
          {
LABEL_50:
            v26 = v58;
            v35 = v13;
            std::list<int>::list(v36, v60);
            v37 = v61;
            v53 = v26;
            v54 = v35;
            std::list<int>::list(v55, v36);
            v56 = v37;
            v57 = v5;
            (*(*a1 + 208))(a1, v8, &v53);
            std::__list_imp<char *>::clear(v55);
            std::__list_imp<char *>::clear(v36);
          }

          v27 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
          v32 = *v27;
          std::list<int>::list(v33, (v27 + 2));
          v34 = v27[8];
          (*(*a1 + 184))(a1, v8, &v32);
          v25 = v33;
LABEL_52:
          std::__list_imp<char *>::clear(v25);
          std::__list_imp<char *>::clear(v60);
        }

        v8 = (v8 + 1);
        if (v8 >= (*(*a1 + 160))(a1))
        {
          goto LABEL_54;
        }
      }

      (*(*a1 + 32))(&v50, a1, v8);
      v53 = 0;
      v54 = v50;
      std::list<int>::list(v55, v51);
      v56 = v52;
      v57 = -1;
      fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()(a2, &v53, &v58);
      std::__list_imp<char *>::clear(v55);
      std::__list_imp<char *>::clear(v51);
      if (!v58)
      {
LABEL_47:
        v41 = v59;
        std::list<int>::list(v42, v60);
        v43 = v61;
        (*(*a1 + 184))(a1, v8, &v41);
        v25 = v42;
        goto LABEL_52;
      }

      v10 = FLAGS_fst_error_fatal;
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(v47, "FATAL");
        v11 = fst::LogMessage::LogMessage(&v49, v47);
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
        v11 = fst::LogMessage::LogMessage(&v46, __p);
      }

      v12 = fst::cerr(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ArcMap: non-zero arc labels for superfinal arc", 46);
      if (v10)
      {
        fst::LogMessage::~LogMessage(&v49);
        if (v48 < 0)
        {
          v14 = v47[0];
LABEL_45:
          operator delete(v14);
        }
      }

      else
      {
        fst::LogMessage::~LogMessage(&v46);
        if (v45 < 0)
        {
          v14 = __p[0];
          goto LABEL_45;
        }
      }

      (*(*a1 + 192))(a1, 4, 4);
      goto LABEL_47;
    }

LABEL_54:
    v28 = 0x3FFF00000007;
    if ((*a2 & 1) == 0)
    {
      v28 = 0x3FFFFFFF0007;
    }

    if ((*a2 & 2) != 0)
    {
      v29 = 0x1D7C48100007;
      if (*(a2 + 4) == 1)
      {
        v29 = 0x2EBC84200007;
      }

      v28 &= v29;
    }

    if (*(a2 + 16))
    {
      v30 = v31 | 4;
    }

    else
    {
      v30 = v31;
    }

    return (*(*a1 + 192))(a1, v28 & v30, 0x3FFFFFFF0007);
  }

  return result;
}

void *fst::EncodeMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()@<X0>(int *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[12];
  if (a1[1] != 1)
  {
    if (v6 != -1 && *a2)
    {
      v11 = *a1;
      if ((*a1 & 1) != 0 && *a2 != a2[1])
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v62, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v62, "ERROR");
        }

        v12 = fst::LogMessage::LogMessage(&v64, v62);
        v13 = fst::cerr(v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "EncodeMapper: Label-encoded arc has different input and output labels", 69);
        fst::LogMessage::~LogMessage(&v64);
        if (v63 < 0)
        {
          operator delete(v62[0]);
        }

        *(a1 + 16) = 1;
        v11 = *a1;
      }

      if ((v11 & 2) != 0)
      {
        v26 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
        v27 = a2[2];
        v28 = v27 ? *(a2 + 4) + 1 : 0;
        v29 = *v26 ? *(v26 + 24) + 1 : 0;
        if (v28 != v29)
        {
          goto LABEL_63;
        }

        v30 = (a2 + 6);
        v31 = (v26 + 16);
        v32 = v27 && v27 == *v26;
        v33 = !v32;
        v34 = 1;
        v35 = !v33;
        while (1)
        {
          v36 = *v30;
          v37 = *v31;
          if ((v34 & 1) != 0 && !v35)
          {
            break;
          }

          if (v36 == a2 + 4)
          {
            goto LABEL_62;
          }

          if (*(v36 + 16) != *(v37 + 16))
          {
            goto LABEL_63;
          }

          v34 = 0;
          v30 = (v36 + 8);
          v31 = (v37 + 8);
        }

        if (v27)
        {
          goto LABEL_63;
        }

LABEL_62:
        LODWORD(__p[0]) = a2[10];
        LODWORD(v56[0]) = *(v26 + 32);
        if (*__p != *v56)
        {
LABEL_63:
          if (FLAGS_fst_error_fatal == 1)
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          }

          v38 = fst::LogMessage::LogMessage(&v61, __p);
          v39 = fst::cerr(v38);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "EncodeMapper: Weight-encoded arc has non-trivial weight", 55);
          fst::LogMessage::~LogMessage(&v61);
          if (v60 < 0)
          {
            operator delete(__p[0]);
          }

          *(a1 + 16) = 1;
        }
      }

      v40 = fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Decode(*(a1 + 1), *a2);
      if (v40)
      {
        v41 = *v40;
        if (*a1)
        {
          v42 = v40;
        }

        else
        {
          v42 = a2;
        }

        v43 = v42[1];
        if ((*a1 & 2) != 0)
        {
          v44 = v40;
        }

        else
        {
          v44 = a2;
        }

        v50 = v44[2];
        std::list<int>::list(v51, (v44 + 4));
        v52 = v44[10];
        v45 = a2[12];
        *a3 = v41;
        *(a3 + 4) = v43;
        *(a3 + 8) = v50;
        std::list<int>::list((a3 + 16), v51);
        *(a3 + 40) = v52;
        *(a3 + 48) = v45;
        v16 = v51;
      }

      else
      {
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v56, "FATAL");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(v56, "ERROR");
        }

        v46 = fst::LogMessage::LogMessage(&v58, v56);
        v47 = fst::cerr(v46);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "EncodeMapper: decode failed", 27);
        fst::LogMessage::~LogMessage(&v58);
        if (v57 < 0)
        {
          operator delete(v56[0]);
        }

        *(a1 + 16) = 1;
        v48 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::NoWeight();
        v53 = *v48;
        std::list<int>::list(v54, (v48 + 2));
        v55 = v48[8];
        v49 = a2[12];
        *a3 = -1;
        *(a3 + 8) = v53;
        std::list<int>::list((a3 + 16), v54);
        *(a3 + 40) = v55;
        *(a3 + 48) = v49;
        v16 = v54;
      }

      return std::__list_imp<char *>::clear(v16);
    }

    *a3 = *a2;
    v14 = a2[2];
    goto LABEL_20;
  }

  if (v6 == -1)
  {
    if ((*a1 & 2) != 0)
    {
      v18 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::Zero();
      v14 = a2[2];
      if (v14)
      {
        v19 = *(a2 + 4) + 1;
      }

      else
      {
        v19 = 0;
      }

      if (*v18)
      {
        v20 = *(v18 + 24) + 1;
      }

      else
      {
        v20 = 0;
      }

      if (v19 != v20)
      {
        goto LABEL_3;
      }

      v21 = (a2 + 6);
      v22 = (v18 + 16);
      for (i = 1; ; i = 0)
      {
        v24 = *v21;
        v25 = *v22;
        if (i)
        {
          if (!v14)
          {
            break;
          }

          if (v14 != *v18)
          {
            goto LABEL_3;
          }
        }

        if (v24 == a2 + 4)
        {
          break;
        }

        if (*(v24 + 16) != *(v25 + 16))
        {
          goto LABEL_3;
        }

        v21 = (v24 + 8);
        v22 = (v25 + 8);
      }

      LODWORD(v62[0]) = a2[10];
      LODWORD(__p[0]) = *(v18 + 32);
      if (*v62 != *__p)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v14 = a2[2];
    }

    *a3 = *a2;
LABEL_20:
    *(a3 + 8) = v14;
    result = std::list<int>::list((a3 + 16), (a2 + 4));
    *(a3 + 40) = a2[10];
    *(a3 + 48) = a2[12];
    return result;
  }

LABEL_3:
  v7 = fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Encode(*(a1 + 1), a2);
  v8 = v7;
  if (*a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = a2[1];
  }

  if ((*a1 & 2) != 0)
  {
    v10 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
  }

  else
  {
    v10 = (a2 + 2);
  }

  v65 = *v10;
  std::list<int>::list(v66, (v10 + 2));
  v67 = v10[8];
  v15 = a2[12];
  *a3 = v8;
  *(a3 + 4) = v9;
  *(a3 + 8) = v65;
  std::list<int>::list((a3 + 16), v66);
  *(a3 + 40) = v67;
  *(a3 + 48) = v15;
  v16 = v66;
  return std::__list_imp<char *>::clear(v16);
}

void sub_1B559C9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  fst::LogMessage::~LogMessage(&a29);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Encode(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = ((*a1 << 31) >> 31) & a2[1];
  if ((*a1 & 2) != 0)
  {
    v5 = a2 + 2;
  }

  else
  {
    v5 = fst::GallicWeight<int,fst::TropicalWeightTpl<float>,(fst::GallicType)0>::One();
  }

  v9 = *v5;
  std::list<int>::list(v10, (v5 + 2));
  v11 = v5[8];
  v12[0] = v3;
  v12[1] = v4;
  v12[2] = v9;
  std::list<int>::list(v13, v10);
  v14 = v11;
  std::__list_imp<char *>::clear(v10);
  v15 = v12;
  v6 = std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*>((a1 + 32), &v15);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 6);
  std::__list_imp<char *>::clear(v13);
  return v7;
}

uint64_t fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Decode(uint64_t a1, uint64_t a2)
{
  if (a2 >= 1)
  {
    v3 = *(a1 + 8);
    if (a2 <= ((*(a1 + 16) - v3) >> 3))
    {
      return *(v3 + 8 * a2 - 8);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v4 = fst::LogMessage::LogMessage(&v10, __p);
  v5 = fst::cerr(v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "EncodeTable::Decode: unknown decode key: ", 41);
  MEMORY[0x1B8C84C00](v6, a2);
  fst::LogMessage::~LogMessage(&v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B559CD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>>>::find<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*>(void *a1, int **a2)
{
  v4 = fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey::operator()((a1 + 4), *a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (std::__unordered_map_equal<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,true>::operator()[abi:ne200100](a1, v11 + 2, a2))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL std::__unordered_map_equal<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,true>::operator()[abi:ne200100](uint64_t a1, void *a2, void *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (**a2 != **a3 || v3[1] != v4[1])
  {
    return 0;
  }

  v5 = v3[2];
  v6 = v5 ? *(v3 + 4) + 1 : 0;
  v7 = v4[2];
  v8 = v7 ? *(v4 + 4) + 1 : 0;
  if (v6 != v8)
  {
    return 0;
  }

  v9 = (v3 + 6);
  v10 = (v4 + 6);
  for (i = 1; ; i = 0)
  {
    v12 = *v9;
    v13 = *v10;
    if (i)
    {
      if (!v5)
      {
        return *(v3 + 10) == *(v4 + 10);
      }

      if (v5 != v7)
      {
        return 0;
      }
    }

    if (v12 == v3 + 4)
    {
      break;
    }

    if (*(v12 + 16) != *(v13 + 16))
    {
      return 0;
    }

    v9 = (v12 + 8);
    v10 = (v13 + 8);
  }

  return *(v3 + 10) == *(v4 + 10);
}

uint64_t fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey::operator()(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*(a1 + 4) == 1)
  {
    v2 += 7853 * a2[1];
  }

  if (*(a1 + 5))
  {
    v2 += 7867 * fst::PairWeight<fst::StringWeight<int,(fst::StringType)1>,fst::LogWeightTpl<float>>::Hash(a2 + 2);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,std::__unordered_map_hasher<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,false>,std::__unordered_map_equal<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,true>,std::allocator<std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>>>::__emplace_unique_key_args<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::piecewise_construct_t const&,std::tuple<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const* const&>,std::tuple<>>(void *a1, int **a2)
{
  v4 = fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey::operator()((a1 + 4), *a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::__unordered_map_equal<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,std::__hash_value_type<fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Tuple const*,int>,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleEqual,fst::EncodeTable<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::TupleKey,true>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void fst::Connect<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t a1)
{
  memset(v4, 0, sizeof(v4));
  v2 = 0;
  memset(v3, 0, sizeof(v3));
  v1[0] = 0;
  v1[1] = v4;
  v1[2] = v3;
  v1[3] = &v2;
  fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::SccVisitor<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, v1);
}

void sub_1B559D360(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v14 = *(v12 - 80);
  if (v14)
  {
    operator delete(v14);
  }

  v15 = *(v11 + 24);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSort<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1)
{
  v3 = a1;
  v4 = &v6;
  memset(v5, 0, sizeof(v5));
  v1[0] = a1;
  v1[1] = &v6;
  memset(v2, 0, sizeof(v2));
  fst::StateMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcSortMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(a1, v1);
  v7 = v2;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = v5;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B559D414(_Unwind_Exception *a1)
{
  v4 = v1;
  *(v3 - 40) = v2;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  *(v3 - 40) = v4;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  _Unwind_Resume(a1);
}

void fst::MergeStates<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(void *a1, uint64_t a2)
{
  std::vector<int>::vector[abi:ne200100](&__p, ((a1[5] - a1[4]) >> 3));
  v5 = a1[4];
  v4 = a1[5];
  v6 = v4 - v5;
  if (((v4 - v5) >> 3))
  {
    v7 = 0;
    v8 = (v6 >> 3);
    v9 = __p;
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      *v9++ = **(v5 + (v7 >> 29));
      v7 += 0x100000000;
      --v8;
    }

    while (v8);
  }

  if ((v6 & 0x7FFFFFFF8) != 0)
  {
    v10 = 0;
    do
    {
      v11 = *(v5 + 8 * v10);
      if (v11)
      {
        do
        {
          v12 = *v11;
          (*(*a2 + 296))(a2, *v11, &v21);
          while (!(*(*v21 + 24))(v21))
          {
            v13 = (*(*v21 + 32))(v21);
            v16 = *v13;
            v17 = *(v13 + 8);
            std::list<int>::list(v18, v13 + 16);
            v14 = *(v13 + 48);
            v19 = *(v13 + 40);
            v20 = v14;
            v20 = *(__p + *(a1[10] + 4 * v14));
            if (v12 == *(__p + v10))
            {
              (*(*v21 + 88))(v21, &v16);
            }

            else
            {
              (*(*a2 + 208))(a2);
            }

            std::__list_imp<char *>::clear(v18);
            (*(*v21 + 40))(v21);
          }

          if (v21)
          {
            (*(*v21 + 8))(v21);
          }

          v11 = *(v11 + 1);
        }

        while (v11);
        v5 = a1[4];
        v4 = a1[5];
      }

      ++v10;
    }

    while (v10 < ((v4 - v5) >> 3));
  }

  v15 = (*(*a2 + 24))(a2);
  (*(*a2 + 176))(a2, *(__p + *(a1[10] + 4 * v15)));
  fst::Connect<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2);
}

void sub_1B559D72C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StateMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcSortMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcSortMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0x6DB6DB6DB6DB6DB7 * ((a2[3] - v9) >> 3))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 56 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        std::__list_imp<char *>::clear(v11);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

void *fst::ArcSortMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::SetState(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 2;
  v5 = a1[2];
  a1[5] = 0;
  v6 = a1[3];
  if (v6 != v5)
  {
    do
    {
      v7 = v6 - 56;
      std::__list_imp<char *>::clear((v6 - 40));
      v6 = v7;
    }

    while (v7 != v5);
  }

  a1[3] = v5;
  v8 = (*(**a1 + 40))(*a1, a2);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::reserve(v4, v8);
  v9 = *a1;
  v18 = 0;
  (*(*v9 + 136))(v9, a2, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

LABEL_9:
      v10 = v16[1] + 56 * v18;
      goto LABEL_10;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_9;
    }

    v10 = (*(*v16[0] + 32))();
LABEL_10:
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100](v4, v10);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

LABEL_17:
  v11 = a1[2];
  v12 = a1[3];
  v13 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v12 - v11));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,false>(v11, v12, v16, v14, 1);
}

void sub_1B559DC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::Reverse<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void *std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,false>(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v9, v9 + 56, (a2 - 7));
        case 4uLL:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v9, v9 + 56, v9 + 112, (a2 - 7));
        case 5uLL:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v9, v9 + 56, v9 + 112, v9 + 168, (a2 - 7));
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v24 = *(a2 - 7);
        v23 = a2 - 7;
        v42 = v24;
        v43 = *(v23 + 2);
        std::list<int>::list(v44, (v23 + 2));
        v45 = *(v23 + 10);
        v46 = *(v23 + 12);
        v37 = *v9;
        v38 = *(v9 + 8);
        std::list<int>::list(v39, v9 + 16);
        v25 = *(v9 + 48);
        v40 = *(v9 + 40);
        v41 = v25;
        v26 = v42;
        v27 = v37;
        std::__list_imp<char *>::clear(v39);
        result = std::__list_imp<char *>::clear(v44);
        if (v26 < v27)
        {
          return std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v9, v23);
        }

        return result;
      }
    }

    if (v12 <= 1343)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v9, a2);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = (v8 + 56 * (v13 >> 1));
    if (v12 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v15, v8, (a2 - 7));
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v8, v15, (a2 - 7));
      v16 = 56 * v14;
      v17 = 56 * v14 + v8 - 56;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v8 + 56, v17, (a2 - 14));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v8 + 112, v8 + 56 + v16, (a2 - 21));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v17, v15, v8 + 56 + v16);
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v8, v15);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v32 = *(v8 - 56);
    v33 = *(v8 - 48);
    std::list<int>::list(v34, v8 - 40);
    v35 = *(v8 - 16);
    v36 = *(v8 - 8);
    v28 = *v8;
    std::list<int>::list(v29, v8 + 16);
    v18 = *(v8 + 48);
    v30 = *(v8 + 40);
    v31 = v18;
    v19 = v32;
    std::__list_imp<char *>::clear(v29);
    std::__list_imp<char *>::clear(v34);
    if (v19 >= v28)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &>(v8, a2);
      v9 = result;
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_19:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &>(v8, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v8, v20);
    v9 = v20 + 56;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v20 + 56, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if ((v22 & 1) == 0)
    {
LABEL_22:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 56;
      goto LABEL_23;
    }
  }

  if (v9 != a2)
  {
    return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v9, a2, a2, a3);
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = *a2;
  v69 = *(a2 + 8);
  std::list<int>::list(v70, a2 + 16);
  v6 = *(a2 + 48);
  v71 = *(a2 + 40);
  v72 = v6;
  v63 = *a1;
  v64 = *(a1 + 8);
  std::list<int>::list(v65, a1 + 16);
  v7 = *(a1 + 48);
  v66 = *(a1 + 40);
  v67 = v7;
  v8 = v68;
  std::__list_imp<char *>::clear(v65);
  std::__list_imp<char *>::clear(v70);
  if (v8 < v63)
  {
    v38 = *a3;
    v39 = *(a3 + 8);
    std::list<int>::list(v40, a3 + 16);
    v9 = *(a3 + 48);
    v41 = *(a3 + 40);
    v42 = v9;
    v33 = *a2;
    v34 = *(a2 + 8);
    std::list<int>::list(v35, a2 + 16);
    v10 = *(a2 + 48);
    v36 = *(a2 + 40);
    v37 = v10;
    v11 = v38;
    std::__list_imp<char *>::clear(v35);
    std::__list_imp<char *>::clear(v40);
    v12 = a1;
    if (v11 < v33)
    {
LABEL_5:
      v16 = a3;
LABEL_9:
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v12, v16);
      return 1;
    }

    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2);
    v28 = *a3;
    v29 = *(a3 + 8);
    std::list<int>::list(v30, a3 + 16);
    v13 = *(a3 + 48);
    v31 = *(a3 + 40);
    v32 = v13;
    v24 = *a2;
    std::list<int>::list(v25, a2 + 16);
    v14 = *(a2 + 48);
    v26 = *(a2 + 40);
    v27 = v14;
    v15 = v28;
    std::__list_imp<char *>::clear(v25);
    std::__list_imp<char *>::clear(v30);
    if (v15 < v24)
    {
      v12 = a2;
      goto LABEL_5;
    }

    return 1;
  }

  v58 = *a3;
  v59 = *(a3 + 8);
  std::list<int>::list(v60, a3 + 16);
  v17 = *(a3 + 48);
  v61 = *(a3 + 40);
  v62 = v17;
  v53 = *a2;
  v54 = *(a2 + 8);
  std::list<int>::list(v55, a2 + 16);
  v18 = *(a2 + 48);
  v56 = *(a2 + 40);
  v57 = v18;
  v19 = v58;
  std::__list_imp<char *>::clear(v55);
  std::__list_imp<char *>::clear(v60);
  if (v19 < v53)
  {
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2, a3);
    v48 = *a2;
    v49 = *(a2 + 8);
    std::list<int>::list(v50, a2 + 16);
    v20 = *(a2 + 48);
    v51 = *(a2 + 40);
    v52 = v20;
    v43 = *a1;
    v44 = *(a1 + 8);
    std::list<int>::list(v45, a1 + 16);
    v21 = *(a1 + 48);
    v46 = *(a1 + 40);
    v47 = v21;
    v22 = v48;
    std::__list_imp<char *>::clear(v45);
    std::__list_imp<char *>::clear(v50);
    if (v22 < v43)
    {
      v12 = a1;
      v16 = a2;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a2, a3);
  v42 = *a4;
  v43 = *(a4 + 8);
  std::list<int>::list(v44, a4 + 16);
  v8 = *(a4 + 48);
  v45 = *(a4 + 40);
  v46 = v8;
  v37 = *a3;
  v38 = *(a3 + 8);
  std::list<int>::list(v39, a3 + 16);
  v9 = *(a3 + 48);
  v40 = *(a3 + 40);
  v41 = v9;
  v10 = v42;
  std::__list_imp<char *>::clear(v39);
  result = std::__list_imp<char *>::clear(v44);
  if (v10 < v37)
  {
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a3, a4);
    v32 = *a3;
    v33 = *(a3 + 8);
    std::list<int>::list(v34, a3 + 16);
    v12 = *(a3 + 48);
    v35 = *(a3 + 40);
    v36 = v12;
    v27 = *a2;
    v28 = *(a2 + 8);
    std::list<int>::list(v29, a2 + 16);
    v13 = *(a2 + 48);
    v30 = *(a2 + 40);
    v31 = v13;
    v14 = v32;
    std::__list_imp<char *>::clear(v29);
    result = std::__list_imp<char *>::clear(v34);
    if (v14 < v27)
    {
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2, a3);
      v22 = *a2;
      v23 = *(a2 + 8);
      std::list<int>::list(v24, a2 + 16);
      v15 = *(a2 + 48);
      v25 = *(a2 + 40);
      v26 = v15;
      v18 = *a1;
      std::list<int>::list(v19, a1 + 16);
      v16 = *(a1 + 48);
      v20 = *(a1 + 40);
      v21 = v16;
      v17 = v22;
      std::__list_imp<char *>::clear(v19);
      result = std::__list_imp<char *>::clear(v24);
      if (v17 < v18)
      {
        return std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2);
      }
    }
  }

  return result;
}

void *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a2, a3, a4);
  v57 = *a5;
  v58 = *(a5 + 8);
  std::list<int>::list(v59, a5 + 16);
  v10 = *(a5 + 48);
  v60 = *(a5 + 40);
  v61 = v10;
  v52 = *a4;
  v53 = *(a4 + 8);
  std::list<int>::list(v54, a4 + 16);
  v11 = *(a4 + 48);
  v55 = *(a4 + 40);
  v56 = v11;
  v12 = v57;
  std::__list_imp<char *>::clear(v54);
  result = std::__list_imp<char *>::clear(v59);
  if (v12 < v52)
  {
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a4, a5);
    v47 = *a4;
    v48 = *(a4 + 8);
    std::list<int>::list(v49, a4 + 16);
    v14 = *(a4 + 48);
    v50 = *(a4 + 40);
    v51 = v14;
    v42 = *a3;
    v43 = *(a3 + 8);
    std::list<int>::list(v44, a3 + 16);
    v15 = *(a3 + 48);
    v45 = *(a3 + 40);
    v46 = v15;
    v16 = v47;
    std::__list_imp<char *>::clear(v44);
    result = std::__list_imp<char *>::clear(v49);
    if (v16 < v42)
    {
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a3, a4);
      v37 = *a3;
      v38 = *(a3 + 8);
      std::list<int>::list(v39, a3 + 16);
      v17 = *(a3 + 48);
      v40 = *(a3 + 40);
      v41 = v17;
      v32 = *a2;
      v33 = *(a2 + 8);
      std::list<int>::list(v34, a2 + 16);
      v18 = *(a2 + 48);
      v35 = *(a2 + 40);
      v36 = v18;
      v19 = v37;
      std::__list_imp<char *>::clear(v34);
      result = std::__list_imp<char *>::clear(v39);
      if (v19 < v32)
      {
        std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2, a3);
        v27 = *a2;
        v28 = *(a2 + 8);
        std::list<int>::list(v29, a2 + 16);
        v20 = *(a2 + 48);
        v30 = *(a2 + 40);
        v31 = v20;
        v23 = *a1;
        std::list<int>::list(v24, a1 + 16);
        v21 = *(a1 + 48);
        v25 = *(a1 + 40);
        v26 = v21;
        v22 = v27;
        std::__list_imp<char *>::clear(v24);
        result = std::__list_imp<char *>::clear(v29);
        if (v22 < v23)
        {
          return std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2);
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result;
    v3 = result + 7;
    if (result + 7 != a2)
    {
      v4 = 0;
      v5 = result;
      do
      {
        v6 = v3;
        v38 = v5[7];
        v39 = *(v5 + 16);
        std::list<int>::list(v40, (v5 + 9));
        v7 = *(v5 + 26);
        v41 = *(v5 + 24);
        v42 = v7;
        v33 = *v5;
        v34 = *(v5 + 2);
        std::list<int>::list(v35, (v5 + 2));
        v8 = *(v5 + 12);
        v36 = *(v5 + 10);
        v37 = v8;
        v9 = v38;
        v10 = v33;
        std::__list_imp<char *>::clear(v35);
        result = std::__list_imp<char *>::clear(v40);
        if (v9 < v10)
        {
          v28 = *v6;
          v29 = *(v5 + 16);
          std::list<int>::list(v30, (v5 + 9));
          v11 = *(v5 + 26);
          v31 = *(v5 + 24);
          v32 = v11;
          v12 = v4;
          while (1)
          {
            v13 = v2 + v12;
            *(v13 + 7) = *(v2 + v12);
            *(v13 + 16) = *(v2 + v12 + 8);
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v2 + v12 + 72), *(v2 + v12 + 24), v2 + v12 + 16);
            *(v13 + 24) = *(v13 + 10);
            *(v13 + 26) = *(v13 + 12);
            if (!v12)
            {
              break;
            }

            v23 = v28;
            v24 = v29;
            std::list<int>::list(v25, v30);
            v26 = v31;
            v27 = v32;
            v19 = *(v2 + v12 - 56);
            std::list<int>::list(v20, v2 + v12 - 40);
            v14 = *(v2 + v12 - 8);
            v21 = *(v2 + v12 - 16);
            v22 = v14;
            v15 = v23;
            std::__list_imp<char *>::clear(v20);
            std::__list_imp<char *>::clear(v25);
            v12 -= 56;
            if (v15 >= v19)
            {
              v16 = v2 + v12 + 56;
              goto LABEL_10;
            }
          }

          v16 = v2;
LABEL_10:
          *v16 = v28;
          *(v16 + 8) = v29;
          if (v16 != &v28)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v16 + 16), v30[1], v30);
          }

          v17 = v32;
          *(v16 + 40) = v31;
          *(v16 + 48) = v17;
          result = std::__list_imp<char *>::clear(v30);
        }

        v3 = v6 + 7;
        v4 += 56;
        v5 = v6;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result;
    v3 = result + 7;
    if (result + 7 != a2)
    {
      v4 = 0;
      v5 = result;
      do
      {
        v6 = v3;
        v38 = v5[7];
        v39 = *(v5 + 16);
        std::list<int>::list(v40, (v5 + 9));
        v7 = *(v5 + 26);
        v41 = *(v5 + 24);
        v42 = v7;
        v33 = *v5;
        v34 = *(v5 + 2);
        std::list<int>::list(v35, (v5 + 2));
        v8 = *(v5 + 12);
        v36 = *(v5 + 10);
        v37 = v8;
        v9 = v38;
        v10 = v33;
        std::__list_imp<char *>::clear(v35);
        result = std::__list_imp<char *>::clear(v40);
        if (v9 < v10)
        {
          v28 = *v6;
          v29 = *(v5 + 16);
          std::list<int>::list(v30, (v5 + 9));
          v11 = *(v5 + 26);
          v31 = *(v5 + 24);
          v32 = v11;
          v12 = v4;
          do
          {
            v13 = v2 + v12;
            *(v13 + 7) = *(v2 + v12);
            *(v13 + 16) = *(v2 + v12 + 8);
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v2 + v12 + 72), *(v2 + v12 + 24), v2 + v12 + 16);
            *(v13 + 24) = *(v13 + 10);
            *(v13 + 26) = *(v13 + 12);
            v23 = v28;
            v24 = v29;
            std::list<int>::list(v25, v30);
            v26 = v31;
            v27 = v32;
            v19 = *(v2 + v12 - 56);
            std::list<int>::list(v20, v2 + v12 - 40);
            v14 = *(v2 + v12 - 8);
            v21 = *(v2 + v12 - 16);
            v22 = v14;
            v15 = v23;
            std::__list_imp<char *>::clear(v20);
            std::__list_imp<char *>::clear(v25);
            v12 -= 56;
          }

          while (v15 < v19);
          v16 = v2 + v12;
          *(v16 + 7) = v28;
          *(v16 + 16) = v29;
          if (v16 + 56 != &v28)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v16 + 9, v30[1], v30);
          }

          v17 = v32;
          *(v16 + 24) = v31;
          *(v16 + 26) = v17;
          result = std::__list_imp<char *>::clear(v30);
        }

        v3 = v6 + 7;
        v4 += 56;
        v5 = v6;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &>(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v83 = *a1;
  v84 = *(a1 + 2);
  std::list<int>::list(v85, (a1 + 2));
  v4 = *(v3 + 12);
  v86 = *(v3 + 10);
  v87 = v4;
  v78 = v83;
  v79 = v84;
  std::list<int>::list(v80, v85);
  v81 = v86;
  v82 = v87;
  v73 = *(a2 - 7);
  v74 = *(a2 - 12);
  std::list<int>::list(v75, (a2 - 5));
  v5 = *(a2 - 2);
  v76 = *(a2 - 4);
  v77 = v5;
  v6 = v78;
  std::__list_imp<char *>::clear(v75);
  std::__list_imp<char *>::clear(v80);
  v23 = v3;
  if (v6 >= v73)
  {
    v10 = (v3 + 7);
    do
    {
      v7 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v58 = v83;
      v59 = v84;
      std::list<int>::list(v60, v85);
      v61 = v86;
      v62 = v87;
      v53 = *v7;
      v54 = *(v7 + 8);
      std::list<int>::list(v55, v7 + 16);
      v11 = *(v7 + 48);
      v56 = *(v7 + 40);
      v57 = v11;
      v12 = v58;
      std::__list_imp<char *>::clear(v55);
      std::__list_imp<char *>::clear(v60);
      v10 = v7 + 56;
    }

    while (v12 >= v53);
  }

  else
  {
    do
    {
      v68 = v83;
      v69 = v84;
      std::list<int>::list(v70, v85);
      v71 = v86;
      v72 = v87;
      v63 = v3[7];
      v64 = *(v3 + 16);
      std::list<int>::list(v65, (v3 + 9));
      v7 = (v3 + 7);
      v8 = *(v3 + 26);
      v66 = *(v3 + 24);
      v67 = v8;
      v9 = v68;
      std::__list_imp<char *>::clear(v65);
      std::__list_imp<char *>::clear(v70);
      v3 += 7;
    }

    while (v9 >= v63);
  }

  if (v7 >= a2)
  {
    v13 = a2;
  }

  else
  {
    do
    {
      v48 = v83;
      v49 = v84;
      std::list<int>::list(v50, v85);
      v51 = v86;
      v52 = v87;
      v43 = *(a2 - 7);
      v44 = *(a2 - 12);
      std::list<int>::list(v45, (a2 - 5));
      v13 = a2 - 7;
      v14 = *(a2 - 2);
      v46 = *(a2 - 4);
      v47 = v14;
      v15 = v48;
      std::__list_imp<char *>::clear(v45);
      std::__list_imp<char *>::clear(v50);
      a2 -= 7;
    }

    while (v15 < v43);
  }

  while (v7 < v13)
  {
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v7, v13);
    v16 = v7;
    do
    {
      v38 = v83;
      v39 = v84;
      std::list<int>::list(v40, v85);
      v41 = v86;
      v42 = v87;
      v33 = *(v16 + 56);
      v34 = *(v16 + 64);
      std::list<int>::list(v35, v16 + 72);
      v7 = v16 + 56;
      v17 = *(v16 + 104);
      v36 = *(v16 + 96);
      v37 = v17;
      v18 = v38;
      v19 = v33;
      std::__list_imp<char *>::clear(v35);
      std::__list_imp<char *>::clear(v40);
      v16 += 56;
    }

    while (v18 >= v19);
    v20 = v13;
    do
    {
      v28 = v83;
      v29 = v84;
      std::list<int>::list(v30, v85);
      v31 = v86;
      v32 = v87;
      v24 = *(v20 - 7);
      std::list<int>::list(v25, (v20 - 5));
      v13 = v20 - 7;
      v26 = *(v20 - 4);
      v27 = *(v20 - 2);
      v21 = v28;
      std::__list_imp<char *>::clear(v25);
      std::__list_imp<char *>::clear(v30);
      v20 -= 7;
    }

    while (v21 < v24);
  }

  if ((v7 - 56) != v23)
  {
    *v23 = *(v7 - 56);
    *(v23 + 2) = *(v7 - 48);
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v23 + 2, *(v7 - 32), v7 - 40);
    *(v23 + 10) = *(v7 - 16);
    *(v23 + 12) = *(v7 - 8);
  }

  *(v7 - 56) = v83;
  *(v7 - 48) = v84;
  if ((v7 - 56) != &v83)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v7 - 40), v85[1], v85);
  }

  *(v7 - 16) = v86;
  *(v7 - 8) = v87;
  std::__list_imp<char *>::clear(v85);
  return v7;
}

void sub_1B559F264(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 16));
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &>(uint64_t *a1, unint64_t a2)
{
  v76 = *a1;
  v77 = *(a1 + 2);
  std::list<int>::list(v78, (a1 + 2));
  v4 = 0;
  v26 = a1;
  v5 = *(a1 + 12);
  v79 = *(a1 + 10);
  v80 = v5;
  do
  {
    v71 = a1[v4 + 7];
    v72 = a1[v4 + 8];
    std::list<int>::list(v73, &a1[v4 + 9]);
    v6 = a1[v4 + 13];
    v74 = a1[v4 + 12];
    v75 = v6;
    v66 = v76;
    v67 = v77;
    std::list<int>::list(v68, v78);
    v69 = v79;
    v70 = v80;
    v7 = v71;
    std::__list_imp<char *>::clear(v68);
    std::__list_imp<char *>::clear(v73);
    v4 += 7;
  }

  while (v7 < v66);
  v8 = &a1[v4];
  if (v4 == 7)
  {
    while (v8 < a2)
    {
      v9 = a2 - 56;
      v61 = *(a2 - 56);
      v62 = *(a2 - 48);
      std::list<int>::list(v63, a2 - 40);
      v13 = *(a2 - 8);
      v64 = *(a2 - 16);
      v65 = v13;
      v56 = v76;
      v57 = v77;
      std::list<int>::list(v58, v78);
      v59 = v79;
      v60 = v80;
      v14 = v61;
      std::__list_imp<char *>::clear(v58);
      std::__list_imp<char *>::clear(v63);
      a2 -= 56;
      if (v14 < v56)
      {
        goto LABEL_11;
      }
    }

    v9 = a2;
  }

  else
  {
    v9 = a2;
    do
    {
      v10 = *(v9 - 56);
      v9 -= 56;
      v51 = v10;
      v52 = *(v9 + 8);
      std::list<int>::list(v53, v9 + 16);
      v11 = *(a2 - 8);
      v54 = *(a2 - 16);
      v55 = v11;
      v46 = v76;
      v47 = v77;
      std::list<int>::list(v48, v78);
      v49 = v79;
      v50 = v80;
      v12 = v51;
      std::__list_imp<char *>::clear(v48);
      std::__list_imp<char *>::clear(v53);
      a2 = v9;
    }

    while (v12 >= v46);
  }

LABEL_11:
  if (v8 >= v9)
  {
    v15 = &v26[v4];
  }

  else
  {
    v15 = &v26[v4];
    v16 = v9;
    do
    {
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v15, v16);
      v17 = v15;
      do
      {
        v18 = *(v15 + 56);
        v15 += 56;
        v41 = v18;
        v42 = *(v15 + 8);
        std::list<int>::list(v43, v15 + 16);
        v19 = *(v17 + 104);
        v44 = *(v17 + 96);
        v45 = v19;
        v36 = v76;
        v37 = v77;
        std::list<int>::list(v38, v78);
        v39 = v79;
        v40 = v80;
        v20 = v41;
        v21 = v36;
        std::__list_imp<char *>::clear(v38);
        std::__list_imp<char *>::clear(v43);
        v17 = v15;
      }

      while (v20 < v21);
      v22 = v16;
      do
      {
        v23 = *(v16 - 56);
        v16 -= 56;
        v31 = v23;
        v32 = *(v16 + 8);
        std::list<int>::list(v33, v16 + 16);
        v34 = *(v22 - 16);
        v35 = *(v22 - 8);
        v27 = v76;
        std::list<int>::list(v28, v78);
        v29 = v79;
        v30 = v80;
        v24 = v31;
        std::__list_imp<char *>::clear(v28);
        std::__list_imp<char *>::clear(v33);
        v22 = v16;
      }

      while (v24 >= v27);
    }

    while (v15 < v16);
  }

  if ((v15 - 56) != v26)
  {
    *v26 = *(v15 - 56);
    *(v26 + 2) = *(v15 - 48);
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v26 + 2, *(v15 - 32), v15 - 40);
    *(v26 + 10) = *(v15 - 16);
    *(v26 + 12) = *(v15 - 8);
  }

  *(v15 - 56) = v76;
  *(v15 - 48) = v77;
  if ((v15 - 56) != &v76)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v15 - 40), v78[1], v78);
  }

  *(v15 - 16) = v79;
  *(v15 - 8) = v80;
  std::__list_imp<char *>::clear(v78);
  return v15 - 56;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a1 + 56, a2 - 56);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a1 + 56, a1 + 112, a2 - 56);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = (a2 - 56);
      v55 = *(a2 - 56);
      v56 = *(a2 - 48);
      std::list<int>::list(v57, a2 - 40);
      v5 = *(a2 - 8);
      v58 = *(a2 - 16);
      v59 = v5;
      v50 = *a1;
      v51 = *(a1 + 8);
      std::list<int>::list(v52, a1 + 16);
      v6 = *(a1 + 48);
      v53 = *(a1 + 40);
      v54 = v6;
      v7 = v55;
      std::__list_imp<char *>::clear(v52);
      std::__list_imp<char *>::clear(v57);
      if (v7 < v50)
      {
        std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, v4);
      }

      return 1;
    }
  }

  v8 = a1 + 112;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a1 + 56, a1 + 112);
  v9 = a1 + 168;
  if (a1 + 168 != a2)
  {
    v10 = 0;
    v24 = 0;
    do
    {
      v45 = *v9;
      v46 = *(v9 + 8);
      std::list<int>::list(v47, v9 + 16);
      v11 = *(v9 + 48);
      v48 = *(v9 + 40);
      v49 = v11;
      v40 = *v8;
      v41 = *(v8 + 8);
      std::list<int>::list(v42, v8 + 16);
      v12 = *(v8 + 48);
      v43 = *(v8 + 40);
      v44 = v12;
      v13 = v45;
      v14 = v40;
      std::__list_imp<char *>::clear(v42);
      std::__list_imp<char *>::clear(v47);
      if (v13 < v14)
      {
        v35 = *v9;
        v36 = *(v9 + 8);
        std::list<int>::list(v37, v9 + 16);
        v15 = *(v9 + 48);
        v38 = *(v9 + 40);
        v39 = v15;
        v16 = v10;
        while (1)
        {
          v17 = a1 + v16;
          *(v17 + 168) = *(a1 + v16 + 112);
          *(v17 + 176) = *(a1 + v16 + 120);
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + v16 + 184), *(a1 + v16 + 136), a1 + 128 + v16);
          *(v17 + 208) = *(v17 + 152);
          *(v17 + 216) = *(v17 + 160);
          if (v16 == -112)
          {
            break;
          }

          v30 = v35;
          v31 = v36;
          std::list<int>::list(v32, v37);
          v33 = v38;
          v34 = v39;
          v26 = *(a1 + v16 + 56);
          std::list<int>::list(v27, a1 + v16 + 72);
          v18 = *(a1 + v16 + 104);
          v28 = *(a1 + v16 + 96);
          v29 = v18;
          v19 = v30;
          std::__list_imp<char *>::clear(v27);
          std::__list_imp<char *>::clear(v32);
          v16 -= 56;
          if (v19 >= v26)
          {
            v20 = a1 + v16 + 168;
            goto LABEL_20;
          }
        }

        v20 = a1;
LABEL_20:
        *v20 = v35;
        *(v20 + 8) = v36;
        if (v20 != &v35)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v20 + 16), v37[1], v37);
        }

        v21 = v39;
        *(v20 + 40) = v38;
        *(v20 + 48) = v21;
        if (v24 == 7)
        {
          v22 = v9 + 56 == a2;
          std::__list_imp<char *>::clear(v37);
          return v22;
        }

        ++v24;
        std::__list_imp<char *>::clear(v37);
      }

      v8 = v9;
      v10 += 56;
      v9 += 56;
    }

    while (v9 != a2);
  }

  return 1;
}

void *std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(uint64_t *a1, uint64_t *a2)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  std::list<int>::list(v9, (a1 + 2));
  v4 = *(a1 + 12);
  v10 = *(a1 + 10);
  v11 = v4;
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  if (a1 != a2)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1 + 2, a2[3], (a2 + 2));
  }

  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *a2 = v7;
  *(a2 + 2) = v8;
  if (&v7 != a2)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a2 + 2, v9[1], v9);
  }

  v5 = v11;
  *(a2 + 10) = v10;
  *(a2 + 12) = v5;
  return std::__list_imp<char *>::clear(v9);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    v19 = a2 - a1;
    if (a2 - a1 >= 57)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[7 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, a4, v8, v11);
        v11 -= 7;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v24 = *v12;
        v25 = *(v12 + 8);
        std::list<int>::list(v26, v12 + 16);
        v13 = *(v12 + 48);
        v27 = *(v12 + 40);
        v28 = v13;
        v20 = *a1;
        std::list<int>::list(v21, (a1 + 2));
        v14 = *(a1 + 12);
        v22 = *(a1 + 10);
        v23 = v14;
        v15 = v24;
        std::__list_imp<char *>::clear(v21);
        std::__list_imp<char *>::clear(v26);
        if (v15 < v20)
        {
          std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v12, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, a4, v8, a1);
        }

        v12 += 56;
      }

      while (v12 != a3);
    }

    if (v19 >= 57)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(a1, v6, a4, v16);
        v6 -= 56;
      }

      while (v16-- > 2);
    }

    return v12;
  }

  return a3;
}

void *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v28 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * (a4 - result))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * (a4 - result)) | 1;
      v9 = &result[7 * v8];
      v10 = 0xDB6DB6DB6DB6DB6ELL * (a4 - result) + 2;
      if (v10 < a3)
      {
        v68 = *v9;
        v69 = *(v9 + 2);
        std::list<int>::list(v70, (v9 + 2));
        v11 = *(v9 + 12);
        v71 = *(v9 + 10);
        v72 = v11;
        v63 = v9[7];
        v64 = *(v9 + 16);
        std::list<int>::list(v65, (v9 + 9));
        v12 = *(v9 + 26);
        v66 = *(v9 + 24);
        v67 = v12;
        v13 = v68;
        std::__list_imp<char *>::clear(v65);
        std::__list_imp<char *>::clear(v70);
        v14 = 56;
        if (v13 >= v63)
        {
          v14 = 0;
        }

        v9 = (v9 + v14);
        if (v13 < v63)
        {
          v8 = v10;
        }
      }

      v58 = *v9;
      v59 = *(v9 + 2);
      std::list<int>::list(v60, (v9 + 2));
      v15 = *(v9 + 12);
      v61 = *(v9 + 10);
      v62 = v15;
      v53 = *v5;
      v54 = *(v5 + 2);
      std::list<int>::list(v55, (v5 + 2));
      v16 = *(v5 + 12);
      v56 = *(v5 + 10);
      v57 = v16;
      v17 = v58;
      std::__list_imp<char *>::clear(v55);
      result = std::__list_imp<char *>::clear(v60);
      if (v17 >= v53)
      {
        v48 = *v5;
        v49 = *(v5 + 2);
        std::list<int>::list(v50, (v5 + 2));
        v18 = *(v5 + 12);
        v51 = *(v5 + 10);
        v52 = v18;
        do
        {
          v19 = v9;
          *v5 = *v9;
          *(v5 + 2) = *(v9 + 2);
          if (v5 != v9)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v5 + 2, v9[3], (v9 + 2));
          }

          *(v5 + 10) = *(v9 + 10);
          *(v5 + 12) = *(v9 + 12);
          if (v28 < v8)
          {
            break;
          }

          v20 = (2 * v8) | 1;
          v9 = &v6[7 * v20];
          v8 = 2 * v8 + 2;
          if (v8 >= a3)
          {
            v8 = v20;
          }

          else
          {
            v43 = *v9;
            v44 = *(v9 + 2);
            std::list<int>::list(v45, (v9 + 2));
            v21 = *(v9 + 12);
            v46 = *(v9 + 10);
            v47 = v21;
            v38 = v9[7];
            v39 = *(v9 + 16);
            std::list<int>::list(v40, (v9 + 9));
            v22 = *(v9 + 26);
            v41 = *(v9 + 24);
            v42 = v22;
            v23 = v43;
            v24 = v38;
            std::__list_imp<char *>::clear(v40);
            std::__list_imp<char *>::clear(v45);
            v25 = 56;
            if (v23 >= v24)
            {
              v25 = 0;
            }

            v9 = (v9 + v25);
            if (v23 >= v24)
            {
              v8 = v20;
            }
          }

          v33 = *v9;
          v34 = *(v9 + 2);
          std::list<int>::list(v35, (v9 + 2));
          v26 = *(v9 + 12);
          v36 = *(v9 + 10);
          v37 = v26;
          v29 = v48;
          std::list<int>::list(v30, v50);
          v31 = v51;
          v32 = v52;
          v27 = v33;
          std::__list_imp<char *>::clear(v30);
          std::__list_imp<char *>::clear(v35);
          v5 = v19;
        }

        while (v27 >= v29);
        *v19 = v48;
        *(v19 + 2) = v49;
        if (v19 != &v48)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v19 + 2, v50[1], v50);
        }

        *(v19 + 10) = v51;
        *(v19 + 12) = v52;
        return std::__list_imp<char *>::clear(v50);
      }
    }
  }

  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v12 = *result;
    v13 = *(result + 2);
    std::list<int>::list(&v14, (result + 2));
    v8 = *(v7 + 48);
    v16 = *(v7 + 40);
    v17 = v8;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v7, a3, a4);
    v10 = v9;
    if (v9 == a2 - 56)
    {
      *v9 = v12;
      *(v9 + 8) = v13;
      if (v9 != &v12)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v9 + 16), v15, &v14);
      }

      *(v10 + 40) = v16;
      *(v10 + 48) = v17;
    }

    else
    {
      *v9 = *(a2 - 56);
      *(v9 + 8) = *(a2 - 48);
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v9 + 16), *(a2 - 32), a2 - 40);
      *(v10 + 40) = *(a2 - 16);
      *(v10 + 48) = *(a2 - 8);
      *(a2 - 56) = v12;
      *(a2 - 48) = v13;
      if ((a2 - 56) != &v12)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 - 40), v15, &v14);
      }

      v11 = v17;
      *(a2 - 16) = v16;
      *(a2 - 8) = v11;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v7, v10 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v10 + 56 - v7) >> 3));
    }

    return std::__list_imp<char *>::clear(&v14);
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = v7 + 56;
    v9 = (2 * v5) | 1;
    v5 = 2 * v5 + 2;
    if (v5 >= a3)
    {
      v5 = v9;
    }

    else
    {
      v17 = *(v7 + 56);
      v18 = *(v7 + 64);
      std::list<int>::list(v19, v7 + 72);
      v20 = *(v7 + 96);
      v21 = *(v7 + 104);
      v10 = v7 + 112;
      v13 = *(v7 + 112);
      std::list<int>::list(v14, v7 + 128);
      v15 = *(v7 + 152);
      v16 = *(v7 + 160);
      v11 = v17;
      std::__list_imp<char *>::clear(v14);
      std::__list_imp<char *>::clear(v19);
      if (v11 >= v13)
      {
        v5 = v9;
      }

      else
      {
        v8 = v10;
      }
    }

    *a1 = *v8;
    *(a1 + 8) = *(v8 + 8);
    if (a1 != v8)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 16), *(v8 + 24), v8 + 16);
    }

    *(a1 + 40) = *(v8 + 40);
    *(a1 + 48) = *(v8 + 48);
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void sub_1B55A0564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

void *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = &result[7 * (v4 >> 1)];
    v37 = *v8;
    v38 = *(v8 + 2);
    std::list<int>::list(v39, (v8 + 2));
    v9 = *(v8 + 12);
    v40 = *(v8 + 10);
    v41 = v9;
    v10 = (a2 - 56);
    v32 = *(a2 - 56);
    v33 = *(a2 - 48);
    std::list<int>::list(v34, a2 - 40);
    v11 = *(a2 - 8);
    v35 = *(a2 - 16);
    v36 = v11;
    v12 = v37;
    std::__list_imp<char *>::clear(v34);
    result = std::__list_imp<char *>::clear(v39);
    if (v12 < v32)
    {
      v27 = *(a2 - 56);
      v28 = *(a2 - 48);
      std::list<int>::list(v29, a2 - 40);
      v13 = *(a2 - 8);
      v30 = *(a2 - 16);
      v31 = v13;
      do
      {
        v14 = v8;
        *v10 = *v8;
        *(v10 + 2) = *(v8 + 2);
        if (v10 != v8)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v10 + 2, v8[3], (v8 + 2));
        }

        *(v10 + 10) = *(v8 + 10);
        *(v10 + 12) = *(v8 + 12);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = &v6[7 * v7];
        v22 = *v8;
        v23 = *(v8 + 2);
        std::list<int>::list(v24, (v8 + 2));
        v15 = *(v8 + 12);
        v25 = *(v8 + 10);
        v26 = v15;
        v18 = v27;
        std::list<int>::list(v19, v29);
        v20 = v30;
        v21 = v31;
        v16 = v22;
        std::__list_imp<char *>::clear(v19);
        std::__list_imp<char *>::clear(v24);
        v10 = v14;
      }

      while (v16 < v18);
      *v14 = v27;
      *(v14 + 2) = v28;
      if (v14 != &v27)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v14 + 2, v29[1], v29);
      }

      v17 = v31;
      *(v14 + 10) = v30;
      *(v14 + 12) = v17;
      return std::__list_imp<char *>::clear(v29);
    }
  }

  return result;
}

void sub_1B55A07B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::AcyclicMinimizer(uint64_t a1, void *a2)
{
  v4 = (*(*a2 + 64))(a2, 0x40000, 1) == 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v4;
  if (!(*(*a2 + 64))(a2, 0x40000, 1))
  {
    FstCheck(1, "Weight::Properties() & kIdempotent", "../libquasar/libkaldi/tools/openfst/src/include/fst/minimize.h", 317);
  }

  fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Initialize(a1, a2);
  fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Refine(a1, a2);
  return a1;
}

void fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Initialize(uint64_t a1, uint64_t a2)
{
  fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::HeightVisitor,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2);
  fst::Partition<int>::Initialize(a1, 0);
  fst::Partition<int>::AllocateClasses(a1, 1);
}

void sub_1B55A09E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Refine(void *a1, void *a2)
{
  v2 = a1[5] - a1[4];
  if ((v2 >> 3))
  {
    v5 = 0;
    v6 = (v2 >> 3);
    if (v6 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    do
    {
      v17[0] = 0;
      v17[1] = 0;
      v17[2] = a2;
      v17[3] = a1;
      v18 = 7;
      v16 = v17;
      v8 = *(a1[4] + 8 * v5);
      v15 = *v8;
      v19 = &v15;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32) = v5;
      for (i = *(v8 + 8); i; i = *(i + 8))
      {
        v15 = *i;
        v10 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&v16, &v15);
        if (v17 == v10)
        {
          v11 = fst::Partition<int>::AddClass(a1);
        }

        else
        {
          v11 = *(v10 + 32);
        }

        v19 = &v15;
        *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32) = v11;
      }

      v12 = *(a1[4] + 8 * v5);
      while (v12)
      {
        v15 = *v12;
        v13 = *(a1[10] + 4 * v15);
        v19 = &v15;
        v14 = *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v16, &v15) + 32);
        v12 = *(v12 + 8);
        if (v13 != v14)
        {
          fst::Partition<int>::Move(a1, v15, v14);
        }
      }

      std::__tree<int>::destroy(&v16, v17[0]);
      ++v5;
    }

    while (v5 != v7);
  }
}

uint64_t fst::DfsVisit<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::AcyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::HeightVisitor,fst::AnyArcFilter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    memset(&v6, 0, sizeof(v6));
    v4 = 0u;
    v5 = 0u;
    v3 = 0u;
    fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::MemoryPool(v2, 64);
  }

  return result;
}

void sub_1B55A133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  fst::MemoryPool<fst::DfsState<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::~MemoryPool(va);
  std::deque<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> *>>::~deque[abi:ne200100](va1);
  v11 = *(v9 - 112);
  if (v11)
  {
    *(v9 - 104) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__find_equal<int>(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()((a1 + 24), *a3, *(v4 + 7)))
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

      if (!fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()((a1 + 24), *(v8 + 7), *a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 4);
  if (v6)
  {
    (*(**a1 + 32))(&v30);
    v16 = 0;
    v17 = v32;
    if (v30)
    {
      v18 = v30;
      while (1)
      {
        v16 ^= v18;
        if (v17 == &v31)
        {
          break;
        }

        v18 = *(v17 + 16) ^ (2 * v16);
        v17 = *(v17 + 8);
      }
    }

    v19 = v34 ^ __ROR8__(v16, 59);
    std::__list_imp<char *>::clear(&v31);
    (*(**a1 + 32))(&v30);
    v20 = 0;
    v21 = v32;
    if (v30)
    {
      v22 = v30;
      while (1)
      {
        v20 ^= v22;
        if (v21 == &v31)
        {
          break;
        }

        v22 = *(v21 + 16) ^ (2 * v20);
        v21 = *(v21 + 8);
      }
    }

    v23 = v34 ^ __ROR8__(v20, 59);
    std::__list_imp<char *>::clear(&v31);
    if (v19 < v23)
    {
      return 1;
    }

    if (v19 <= v23 && (a1[2] & 2) != 0)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if ((v6 & 2) == 0)
  {
    return 0;
  }

LABEL_3:
  v7 = (*(**a1 + 40))(*a1, a2);
  if (v7 < (*(**a1 + 40))(*a1, a3))
  {
    return 1;
  }

  v8 = (*(**a1 + 40))(*a1, a2);
  if (v8 > (*(**a1 + 40))(*a1, a3) || (a1[2] & 4) == 0)
  {
    return 0;
  }

  v9 = *a1;
  v34 = 0;
  (*(*v9 + 136))(v9, a2, &v30);
  v10 = *a1;
  v29 = 0;
  (*(*v10 + 136))(v10, a3, v27);
  while (1)
  {
    if (v30)
    {
      if ((*(*v30 + 24))(v30))
      {
        goto LABEL_46;
      }
    }

    else if (v34 >= v32)
    {
      goto LABEL_46;
    }

    if (v27[0])
    {
      if ((*(*v27[0] + 24))(v27[0]))
      {
        goto LABEL_46;
      }
    }

    else if (v29 >= v27[2])
    {
LABEL_46:
      v24 = 0;
      v25 = 1;
      goto LABEL_49;
    }

    if (v30)
    {
      v11 = (*(*v30 + 32))(v30);
    }

    else
    {
      v11 = (v31 + 56 * v34);
    }

    if (v27[0])
    {
      v12 = (*(*v27[0] + 32))(v27[0]);
    }

    else
    {
      v12 = (v27[1] + 56 * v29);
    }

    if (*v11 < *v12)
    {
      goto LABEL_47;
    }

    if (*v11 > *v12)
    {
      break;
    }

    v13 = *(a1[1] + 80);
    v14 = *(v13 + 4 * v11[12]);
    v15 = *(v13 + 4 * v12[12]);
    if (v14 < v15)
    {
LABEL_47:
      v25 = 0;
      v24 = 1;
      goto LABEL_49;
    }

    if (v14 > v15)
    {
      break;
    }

    if (v30)
    {
      (*(*v30 + 40))(v30);
    }

    else
    {
      ++v34;
    }

    if (v27[0])
    {
      (*(*v27[0] + 40))(v27[0]);
    }

    else
    {
      ++v29;
    }
  }

  v25 = 0;
  v24 = 0;
LABEL_49:
  if (v27[0])
  {
    (*(*v27[0] + 8))(v27[0]);
  }

  else if (v28)
  {
    --*v28;
  }

  if (v30)
  {
    (*(*v30 + 8))(v30);
  }

  else if (v33)
  {
    --*v33;
  }

  if (v25)
  {
    return 0;
  }

  return v24;
}

void sub_1B55A1A2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, _DWORD *a17)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  else if (a17)
  {
    --*a17;
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(uint64_t a1, unsigned int *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()((a1 + 24), *(v3 + 28), *a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::operator()((a1 + 24), *a2, *(v6 + 28)))
  {
    return v2;
  }

  return v6;
}

void fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::CyclicMinimizer(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a2 + 64))(a2, 0x40000, 1);
  *(a1 + 200) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  *(a1 + 176) = v3 == 0;
  *(a1 + 192) = 2;
  *(a1 + 196) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 184) = &unk_1F2CFB7B0;
  fst::VectorFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>::VectorFst();
}

void sub_1B55A1C90(_Unwind_Exception *a1)
{
  std::deque<int>::~deque[abi:ne200100](v2);
  fst::Partition<int>::~Partition(v1);
  _Unwind_Resume(a1);
}

void fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::Initialize(uint64_t a1, uint64_t a2)
{
  fst::Reverse<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2, (a1 + 248), 1);
  fst::ArcSort<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(a1 + 248);
  fst::Partition<int>::Initialize(a1, (((*(*(a1 + 256) + 72) - *(*(a1 + 256) + 64)) << 29) - 0x100000000) >> 32);
  fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::PrePartition(a1, a2);
  operator new();
}

uint64_t fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::Compute(uint64_t result)
{
  v1 = *(result + 240);
  if (v1)
  {
    v2 = result;
    do
    {
      v3 = *(*(v2[26] + ((v2[29] >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v2[29] & 0x3FFLL));
      ++v2[29];
      v2[30] = v1 - 1;
      std::deque<int>::__maybe_remove_front_spare[abi:ne200100]((v2 + 25), 1);
      result = fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::Split(v2, v3);
      v1 = v2[30];
    }

    while (v1);
  }

  return result;
}

void fst::ArcSort<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>(uint64_t a1)
{
  v3 = a1;
  v4 = &v6;
  memset(v5, 0, sizeof(v5));
  v1[0] = a1;
  v1[1] = &v6;
  memset(v2, 0, sizeof(v2));
  fst::StateMap<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ArcSortMapper<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>(a1, v1);
  v7 = v2;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = v5;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B55A1E30(_Unwind_Exception *a1)
{
  v4 = v1;
  *(v3 - 40) = v2;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  *(v3 - 40) = v4;
  std::vector<fst::GallicArc<fst::ArcTpl<fst::LogWeightTpl<float>,int>,(fst::GallicType)1>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  _Unwind_Resume(a1);
}

void fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::PrePartition(uint64_t a1, uint64_t a2)
{
  if (FLAGS_v >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "INFO");
    v4 = fst::LogMessage::LogMessage(&v33, &__p);
    v5 = fst::cerr(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "PrePartition", 12);
    fst::LogMessage::~LogMessage(&v33);
    if (SHIBYTE(v38) < 0)
    {
      operator delete(__p);
    }
  }

  v38 = 0;
  v39 = a2;
  v40 = a1;
  v41 = 1;
  __p = &v37;
  v37 = 0;
  v35 = 0;
  (*(*a2 + 128))(a2, &v33);
  v6 = fst::Partition<int>::AddClass(a1);
  if (v33)
  {
    v7 = (*(*v33 + 24))(v33);
  }

  else
  {
    v7 = v35;
  }

  v8 = *(*(a1 + 8) + 8 * v7);
  v9 = *(a1 + 32);
  v10 = *(v9 + 8 * v6);
  if (v10)
  {
    *(v10 + 16) = v8;
    v10 = *(v9 + 8 * v6);
  }

  *(v8 + 8) = v10;
  *(v8 + 16) = 0;
  *(v9 + 8 * v6) = v8;
  *(*(a1 + 80) + 4 * v7) = v6;
  ++*(*(a1 + 104) + 4 * v6);
  if (v33)
  {
    v11 = (*(*v33 + 24))(v33);
  }

  else
  {
    v11 = v35;
  }

  v32 = v11;
  v30[0] = &v32;
  *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v6;
  LODWORD(v30[0]) = v6;
  std::deque<int>::push_front((a1 + 200), v30);
  v12 = v33;
  if (v33)
  {
    goto LABEL_28;
  }

  ++v35;
  while (v33)
  {
    if ((*(*v33 + 16))(v33))
    {
      goto LABEL_30;
    }

    if (!v33)
    {
      goto LABEL_19;
    }

    v13 = (*(*v33 + 24))(v33);
LABEL_20:
    v32 = v13;
    v14 = std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::find<int>(&__p, &v32);
    if (&v37 == v14)
    {
      v21 = fst::Partition<int>::AddClass(a1);
      v22 = v21;
      v23 = v32;
      v24 = *(*(a1 + 8) + 8 * v32);
      v25 = *(a1 + 32);
      v26 = *(v25 + 8 * v21);
      if (v26)
      {
        *(v26 + 16) = v24;
        v26 = *(v25 + 8 * v21);
      }

      *(v24 + 8) = v26;
      *(v24 + 16) = 0;
      *(v25 + 8 * v21) = v24;
      *(*(a1 + 80) + 4 * v23) = v21;
      ++*(*(a1 + 104) + 4 * v21);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v21;
      LODWORD(v30[0]) = v22;
      std::deque<int>::push_front((a1 + 200), v30);
    }

    else
    {
      v15 = v32;
      v16 = *(v14 + 32);
      v17 = *(*(a1 + 8) + 8 * v32);
      v18 = *(a1 + 32);
      v19 = *(v18 + 8 * v16);
      if (v19)
      {
        *(v19 + 16) = v17;
        v19 = *(v18 + 8 * v16);
      }

      *(v17 + 8) = v19;
      *(v17 + 16) = 0;
      *(v18 + 8 * v16) = v17;
      *(*(a1 + 80) + 4 * v15) = v16;
      ++*(*(a1 + 104) + 4 * v16);
      v20 = *(v14 + 32);
      v30[0] = &v32;
      *(std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,fst::StateComparator<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,false>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&__p, &v32) + 32) = v20;
    }

    v12 = v33;
    if (v33)
    {
LABEL_28:
      (*(*v33 + 32))(v12);
    }

    else
    {
      ++v35;
    }
  }

  if (v35 < v34)
  {
LABEL_19:
    v13 = v35;
    goto LABEL_20;
  }

LABEL_30:
  if (FLAGS_v >= 5)
  {
    std::string::basic_string[abi:ne200100]<0>(v30, "INFO");
    v27 = fst::LogMessage::LogMessage(&v32, v30);
    v28 = fst::cerr(v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Initial Partition: ", 19);
    MEMORY[0x1B8C84C00](v29, (*(a1 + 40) - *(a1 + 32)) >> 3);
    fst::LogMessage::~LogMessage(&v32);
    if (v31 < 0)
    {
      operator delete(v30[0]);
    }
  }

  if (v33)
  {
    (*(*v33 + 8))(v33);
  }

  std::__tree<int>::destroy(&__p, v37);
}

void sub_1B55A22C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  std::__tree<int>::destroy(&a20, a21);
  _Unwind_Resume(a1);
}

uint64_t fst::StateMap<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ArcSortMapper<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcSortMapper<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0x6DB6DB6DB6DB6DB7 * ((a2[3] - v9) >> 3))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 56 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        std::__list_imp<char *>::clear(v11);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 30) | 0x10000000, 0x3FFFFFFF0007);
  }

  return result;
}

void *fst::ArcSortMapper<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetState(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 2;
  v5 = a1[2];
  a1[5] = 0;
  v6 = a1[3];
  if (v6 != v5)
  {
    do
    {
      v7 = v6 - 56;
      std::__list_imp<char *>::clear((v6 - 40));
      v6 = v7;
    }

    while (v7 != v5);
  }

  a1[3] = v5;
  v8 = (*(**a1 + 40))(*a1, a2);
  std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::reserve(v4, v8);
  v9 = *a1;
  v18 = 0;
  (*(*v9 + 136))(v9, a2, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_15;
      }

LABEL_9:
      v10 = v16[1] + 56 * v18;
      goto LABEL_10;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_9;
    }

    v10 = (*(*v16[0] + 32))();
LABEL_10:
    std::vector<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>::push_back[abi:ne200100](v4, v10);
    if (v16[0])
    {
      (*(*v16[0] + 40))(v16[0]);
    }

    else
    {
      ++v18;
    }
  }

  if (v16[0])
  {
    (*(*v16[0] + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v17)
  {
    --*v17;
  }

LABEL_17:
  v11 = a1[2];
  v12 = a1[3];
  v13 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v12 - v11));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  return std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,false>(v11, v12, v16, v14, 1);
}

void sub_1B55A2874(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ArcSortMapper<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::SetState();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void *std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,false>(void *result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = 0x6DB6DB6DB6DB6DB7 * ((a2 - v9) >> 3);
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3uLL:
          return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v9, v9 + 56, (a2 - 7));
        case 4uLL:
          return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v9, v9 + 56, v9 + 112, (a2 - 7));
        case 5uLL:
          return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v9, v9 + 56, v9 + 112, v9 + 168, (a2 - 7));
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        v24 = *(a2 - 7);
        v23 = a2 - 7;
        v42 = v24;
        v43 = *(v23 + 2);
        std::list<int>::list(v44, (v23 + 2));
        v45 = *(v23 + 10);
        v46 = *(v23 + 12);
        v37 = *v9;
        v38 = *(v9 + 8);
        std::list<int>::list(v39, v9 + 16);
        v25 = *(v9 + 48);
        v40 = *(v9 + 40);
        v41 = v25;
        v26 = v42;
        v27 = v37;
        std::__list_imp<char *>::clear(v39);
        result = std::__list_imp<char *>::clear(v44);
        if (v26 < v27)
        {
          return std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v9, v23);
        }

        return result;
      }
    }

    if (v12 <= 1343)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v9, a2);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      break;
    }

    v14 = v13 >> 1;
    v15 = (v8 + 56 * (v13 >> 1));
    if (v12 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v15, v8, (a2 - 7));
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v8, v15, (a2 - 7));
      v16 = 56 * v14;
      v17 = 56 * v14 + v8 - 56;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v8 + 56, v17, (a2 - 14));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v8 + 112, v8 + 56 + v16, (a2 - 21));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(v17, v15, v8 + 56 + v16);
      std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v8, v15);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v32 = *(v8 - 56);
    v33 = *(v8 - 48);
    std::list<int>::list(v34, v8 - 40);
    v35 = *(v8 - 16);
    v36 = *(v8 - 8);
    v28 = *v8;
    std::list<int>::list(v29, v8 + 16);
    v18 = *(v8 + 48);
    v30 = *(v8 + 40);
    v31 = v18;
    v19 = v32;
    std::__list_imp<char *>::clear(v29);
    std::__list_imp<char *>::clear(v34);
    if (v19 >= v28)
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &>(v8, a2);
      v9 = result;
LABEL_23:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }

LABEL_19:
    v20 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &>(v8, a2);
    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }

    v22 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v8, v20);
    v9 = v20 + 56;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v20 + 56, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v20;
      if (v22)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if ((v22 & 1) == 0)
    {
LABEL_22:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,false>(v8, v20, a3, -v11, a5 & 1);
      v9 = v20 + 56;
      goto LABEL_23;
    }
  }

  if (v9 != a2)
  {
    return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v9, a2, a2, a3);
  }

  return result;
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = *a2;
  v69 = *(a2 + 8);
  std::list<int>::list(v70, a2 + 16);
  v6 = *(a2 + 48);
  v71 = *(a2 + 40);
  v72 = v6;
  v63 = *a1;
  v64 = *(a1 + 8);
  std::list<int>::list(v65, a1 + 16);
  v7 = *(a1 + 48);
  v66 = *(a1 + 40);
  v67 = v7;
  v8 = v68;
  std::__list_imp<char *>::clear(v65);
  std::__list_imp<char *>::clear(v70);
  if (v8 < v63)
  {
    v38 = *a3;
    v39 = *(a3 + 8);
    std::list<int>::list(v40, a3 + 16);
    v9 = *(a3 + 48);
    v41 = *(a3 + 40);
    v42 = v9;
    v33 = *a2;
    v34 = *(a2 + 8);
    std::list<int>::list(v35, a2 + 16);
    v10 = *(a2 + 48);
    v36 = *(a2 + 40);
    v37 = v10;
    v11 = v38;
    std::__list_imp<char *>::clear(v35);
    std::__list_imp<char *>::clear(v40);
    v12 = a1;
    if (v11 < v33)
    {
LABEL_5:
      v16 = a3;
LABEL_9:
      std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v12, v16);
      return 1;
    }

    std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2);
    v28 = *a3;
    v29 = *(a3 + 8);
    std::list<int>::list(v30, a3 + 16);
    v13 = *(a3 + 48);
    v31 = *(a3 + 40);
    v32 = v13;
    v24 = *a2;
    std::list<int>::list(v25, a2 + 16);
    v14 = *(a2 + 48);
    v26 = *(a2 + 40);
    v27 = v14;
    v15 = v28;
    std::__list_imp<char *>::clear(v25);
    std::__list_imp<char *>::clear(v30);
    if (v15 < v24)
    {
      v12 = a2;
      goto LABEL_5;
    }

    return 1;
  }

  v58 = *a3;
  v59 = *(a3 + 8);
  std::list<int>::list(v60, a3 + 16);
  v17 = *(a3 + 48);
  v61 = *(a3 + 40);
  v62 = v17;
  v53 = *a2;
  v54 = *(a2 + 8);
  std::list<int>::list(v55, a2 + 16);
  v18 = *(a2 + 48);
  v56 = *(a2 + 40);
  v57 = v18;
  v19 = v58;
  std::__list_imp<char *>::clear(v55);
  std::__list_imp<char *>::clear(v60);
  if (v19 < v53)
  {
    std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2, a3);
    v48 = *a2;
    v49 = *(a2 + 8);
    std::list<int>::list(v50, a2 + 16);
    v20 = *(a2 + 48);
    v51 = *(a2 + 40);
    v52 = v20;
    v43 = *a1;
    v44 = *(a1 + 8);
    std::list<int>::list(v45, a1 + 16);
    v21 = *(a1 + 48);
    v46 = *(a1 + 40);
    v47 = v21;
    v22 = v48;
    std::__list_imp<char *>::clear(v45);
    std::__list_imp<char *>::clear(v50);
    if (v22 < v43)
    {
      v12 = a1;
      v16 = a2;
      goto LABEL_9;
    }

    return 1;
  }

  return 0;
}

void *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(a1, a2, a3);
  v42 = *a4;
  v43 = *(a4 + 8);
  std::list<int>::list(v44, a4 + 16);
  v8 = *(a4 + 48);
  v45 = *(a4 + 40);
  v46 = v8;
  v37 = *a3;
  v38 = *(a3 + 8);
  std::list<int>::list(v39, a3 + 16);
  v9 = *(a3 + 48);
  v40 = *(a3 + 40);
  v41 = v9;
  v10 = v42;
  std::__list_imp<char *>::clear(v39);
  result = std::__list_imp<char *>::clear(v44);
  if (v10 < v37)
  {
    std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a3, a4);
    v32 = *a3;
    v33 = *(a3 + 8);
    std::list<int>::list(v34, a3 + 16);
    v12 = *(a3 + 48);
    v35 = *(a3 + 40);
    v36 = v12;
    v27 = *a2;
    v28 = *(a2 + 8);
    std::list<int>::list(v29, a2 + 16);
    v13 = *(a2 + 48);
    v30 = *(a2 + 40);
    v31 = v13;
    v14 = v32;
    std::__list_imp<char *>::clear(v29);
    result = std::__list_imp<char *>::clear(v34);
    if (v14 < v27)
    {
      std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2, a3);
      v22 = *a2;
      v23 = *(a2 + 8);
      std::list<int>::list(v24, a2 + 16);
      v15 = *(a2 + 48);
      v25 = *(a2 + 40);
      v26 = v15;
      v18 = *a1;
      std::list<int>::list(v19, a1 + 16);
      v16 = *(a1 + 48);
      v20 = *(a1 + 40);
      v21 = v16;
      v17 = v22;
      std::__list_imp<char *>::clear(v19);
      result = std::__list_imp<char *>::clear(v24);
      if (v17 < v18)
      {
        return std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2);
      }
    }
  }

  return result;
}

void *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(a1, a2, a3, a4);
  v57 = *a5;
  v58 = *(a5 + 8);
  std::list<int>::list(v59, a5 + 16);
  v10 = *(a5 + 48);
  v60 = *(a5 + 40);
  v61 = v10;
  v52 = *a4;
  v53 = *(a4 + 8);
  std::list<int>::list(v54, a4 + 16);
  v11 = *(a4 + 48);
  v55 = *(a4 + 40);
  v56 = v11;
  v12 = v57;
  std::__list_imp<char *>::clear(v54);
  result = std::__list_imp<char *>::clear(v59);
  if (v12 < v52)
  {
    std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a4, a5);
    v47 = *a4;
    v48 = *(a4 + 8);
    std::list<int>::list(v49, a4 + 16);
    v14 = *(a4 + 48);
    v50 = *(a4 + 40);
    v51 = v14;
    v42 = *a3;
    v43 = *(a3 + 8);
    std::list<int>::list(v44, a3 + 16);
    v15 = *(a3 + 48);
    v45 = *(a3 + 40);
    v46 = v15;
    v16 = v47;
    std::__list_imp<char *>::clear(v44);
    result = std::__list_imp<char *>::clear(v49);
    if (v16 < v42)
    {
      std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a3, a4);
      v37 = *a3;
      v38 = *(a3 + 8);
      std::list<int>::list(v39, a3 + 16);
      v17 = *(a3 + 48);
      v40 = *(a3 + 40);
      v41 = v17;
      v32 = *a2;
      v33 = *(a2 + 8);
      std::list<int>::list(v34, a2 + 16);
      v18 = *(a2 + 48);
      v35 = *(a2 + 40);
      v36 = v18;
      v19 = v37;
      std::__list_imp<char *>::clear(v34);
      result = std::__list_imp<char *>::clear(v39);
      if (v19 < v32)
      {
        std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a2, a3);
        v27 = *a2;
        v28 = *(a2 + 8);
        std::list<int>::list(v29, a2 + 16);
        v20 = *(a2 + 48);
        v30 = *(a2 + 40);
        v31 = v20;
        v23 = *a1;
        std::list<int>::list(v24, a1 + 16);
        v21 = *(a1 + 48);
        v25 = *(a1 + 40);
        v26 = v21;
        v22 = v27;
        std::__list_imp<char *>::clear(v24);
        result = std::__list_imp<char *>::clear(v29);
        if (v22 < v23)
        {
          return std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, a2);
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result;
    v3 = result + 7;
    if (result + 7 != a2)
    {
      v4 = 0;
      v5 = result;
      do
      {
        v6 = v3;
        v38 = v5[7];
        v39 = *(v5 + 16);
        std::list<int>::list(v40, (v5 + 9));
        v7 = *(v5 + 26);
        v41 = *(v5 + 24);
        v42 = v7;
        v33 = *v5;
        v34 = *(v5 + 2);
        std::list<int>::list(v35, (v5 + 2));
        v8 = *(v5 + 12);
        v36 = *(v5 + 10);
        v37 = v8;
        v9 = v38;
        v10 = v33;
        std::__list_imp<char *>::clear(v35);
        result = std::__list_imp<char *>::clear(v40);
        if (v9 < v10)
        {
          v28 = *v6;
          v29 = *(v5 + 16);
          std::list<int>::list(v30, (v5 + 9));
          v11 = *(v5 + 26);
          v31 = *(v5 + 24);
          v32 = v11;
          v12 = v4;
          while (1)
          {
            v13 = v2 + v12;
            *(v13 + 7) = *(v2 + v12);
            *(v13 + 16) = *(v2 + v12 + 8);
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v2 + v12 + 72), *(v2 + v12 + 24), v2 + v12 + 16);
            *(v13 + 24) = *(v13 + 10);
            *(v13 + 26) = *(v13 + 12);
            if (!v12)
            {
              break;
            }

            v23 = v28;
            v24 = v29;
            std::list<int>::list(v25, v30);
            v26 = v31;
            v27 = v32;
            v19 = *(v2 + v12 - 56);
            std::list<int>::list(v20, v2 + v12 - 40);
            v14 = *(v2 + v12 - 8);
            v21 = *(v2 + v12 - 16);
            v22 = v14;
            v15 = v23;
            std::__list_imp<char *>::clear(v20);
            std::__list_imp<char *>::clear(v25);
            v12 -= 56;
            if (v15 >= v19)
            {
              v16 = v2 + v12 + 56;
              goto LABEL_10;
            }
          }

          v16 = v2;
LABEL_10:
          *v16 = v28;
          *(v16 + 8) = v29;
          if (v16 != &v28)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v16 + 16), v30[1], v30);
          }

          v17 = v32;
          *(v16 + 40) = v31;
          *(v16 + 48) = v17;
          result = std::__list_imp<char *>::clear(v30);
        }

        v3 = v6 + 7;
        v4 += 56;
        v5 = v6;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v2 = result;
    v3 = result + 7;
    if (result + 7 != a2)
    {
      v4 = 0;
      v5 = result;
      do
      {
        v6 = v3;
        v38 = v5[7];
        v39 = *(v5 + 16);
        std::list<int>::list(v40, (v5 + 9));
        v7 = *(v5 + 26);
        v41 = *(v5 + 24);
        v42 = v7;
        v33 = *v5;
        v34 = *(v5 + 2);
        std::list<int>::list(v35, (v5 + 2));
        v8 = *(v5 + 12);
        v36 = *(v5 + 10);
        v37 = v8;
        v9 = v38;
        v10 = v33;
        std::__list_imp<char *>::clear(v35);
        result = std::__list_imp<char *>::clear(v40);
        if (v9 < v10)
        {
          v28 = *v6;
          v29 = *(v5 + 16);
          std::list<int>::list(v30, (v5 + 9));
          v11 = *(v5 + 26);
          v31 = *(v5 + 24);
          v32 = v11;
          v12 = v4;
          do
          {
            v13 = v2 + v12;
            *(v13 + 7) = *(v2 + v12);
            *(v13 + 16) = *(v2 + v12 + 8);
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v2 + v12 + 72), *(v2 + v12 + 24), v2 + v12 + 16);
            *(v13 + 24) = *(v13 + 10);
            *(v13 + 26) = *(v13 + 12);
            v23 = v28;
            v24 = v29;
            std::list<int>::list(v25, v30);
            v26 = v31;
            v27 = v32;
            v19 = *(v2 + v12 - 56);
            std::list<int>::list(v20, v2 + v12 - 40);
            v14 = *(v2 + v12 - 8);
            v21 = *(v2 + v12 - 16);
            v22 = v14;
            v15 = v23;
            std::__list_imp<char *>::clear(v20);
            std::__list_imp<char *>::clear(v25);
            v12 -= 56;
          }

          while (v15 < v19);
          v16 = v2 + v12;
          *(v16 + 7) = v28;
          *(v16 + 16) = v29;
          if (v16 + 56 != &v28)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v16 + 9, v30[1], v30);
          }

          v17 = v32;
          *(v16 + 24) = v31;
          *(v16 + 26) = v17;
          result = std::__list_imp<char *>::clear(v30);
        }

        v3 = v6 + 7;
        v4 += 56;
        v5 = v6;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &>(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v83 = *a1;
  v84 = *(a1 + 2);
  std::list<int>::list(v85, (a1 + 2));
  v4 = *(v3 + 12);
  v86 = *(v3 + 10);
  v87 = v4;
  v78 = v83;
  v79 = v84;
  std::list<int>::list(v80, v85);
  v81 = v86;
  v82 = v87;
  v73 = *(a2 - 7);
  v74 = *(a2 - 12);
  std::list<int>::list(v75, (a2 - 5));
  v5 = *(a2 - 2);
  v76 = *(a2 - 4);
  v77 = v5;
  v6 = v78;
  std::__list_imp<char *>::clear(v75);
  std::__list_imp<char *>::clear(v80);
  v23 = v3;
  if (v6 >= v73)
  {
    v10 = (v3 + 7);
    do
    {
      v7 = v10;
      if (v10 >= a2)
      {
        break;
      }

      v58 = v83;
      v59 = v84;
      std::list<int>::list(v60, v85);
      v61 = v86;
      v62 = v87;
      v53 = *v7;
      v54 = *(v7 + 8);
      std::list<int>::list(v55, v7 + 16);
      v11 = *(v7 + 48);
      v56 = *(v7 + 40);
      v57 = v11;
      v12 = v58;
      std::__list_imp<char *>::clear(v55);
      std::__list_imp<char *>::clear(v60);
      v10 = v7 + 56;
    }

    while (v12 >= v53);
  }

  else
  {
    do
    {
      v68 = v83;
      v69 = v84;
      std::list<int>::list(v70, v85);
      v71 = v86;
      v72 = v87;
      v63 = v3[7];
      v64 = *(v3 + 16);
      std::list<int>::list(v65, (v3 + 9));
      v7 = (v3 + 7);
      v8 = *(v3 + 26);
      v66 = *(v3 + 24);
      v67 = v8;
      v9 = v68;
      std::__list_imp<char *>::clear(v65);
      std::__list_imp<char *>::clear(v70);
      v3 += 7;
    }

    while (v9 >= v63);
  }

  if (v7 >= a2)
  {
    v13 = a2;
  }

  else
  {
    do
    {
      v48 = v83;
      v49 = v84;
      std::list<int>::list(v50, v85);
      v51 = v86;
      v52 = v87;
      v43 = *(a2 - 7);
      v44 = *(a2 - 12);
      std::list<int>::list(v45, (a2 - 5));
      v13 = a2 - 7;
      v14 = *(a2 - 2);
      v46 = *(a2 - 4);
      v47 = v14;
      v15 = v48;
      std::__list_imp<char *>::clear(v45);
      std::__list_imp<char *>::clear(v50);
      a2 -= 7;
    }

    while (v15 < v43);
  }

  while (v7 < v13)
  {
    std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v7, v13);
    v16 = v7;
    do
    {
      v38 = v83;
      v39 = v84;
      std::list<int>::list(v40, v85);
      v41 = v86;
      v42 = v87;
      v33 = *(v16 + 56);
      v34 = *(v16 + 64);
      std::list<int>::list(v35, v16 + 72);
      v7 = v16 + 56;
      v17 = *(v16 + 104);
      v36 = *(v16 + 96);
      v37 = v17;
      v18 = v38;
      v19 = v33;
      std::__list_imp<char *>::clear(v35);
      std::__list_imp<char *>::clear(v40);
      v16 += 56;
    }

    while (v18 >= v19);
    v20 = v13;
    do
    {
      v28 = v83;
      v29 = v84;
      std::list<int>::list(v30, v85);
      v31 = v86;
      v32 = v87;
      v24 = *(v20 - 7);
      std::list<int>::list(v25, (v20 - 5));
      v13 = v20 - 7;
      v26 = *(v20 - 4);
      v27 = *(v20 - 2);
      v21 = v28;
      std::__list_imp<char *>::clear(v25);
      std::__list_imp<char *>::clear(v30);
      v20 -= 7;
    }

    while (v21 < v24);
  }

  if ((v7 - 56) != v23)
  {
    *v23 = *(v7 - 56);
    *(v23 + 2) = *(v7 - 48);
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v23 + 2, *(v7 - 32), v7 - 40);
    *(v23 + 10) = *(v7 - 16);
    *(v23 + 12) = *(v7 - 8);
  }

  *(v7 - 56) = v83;
  *(v7 - 48) = v84;
  if ((v7 - 56) != &v83)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v7 - 40), v85[1], v85);
  }

  *(v7 - 16) = v86;
  *(v7 - 8) = v87;
  std::__list_imp<char *>::clear(v85);
  return v7;
}

void sub_1B55A3E40(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear((v1 + 16));
  std::__list_imp<char *>::clear((v2 + 16));
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>> *,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &>(uint64_t *a1, unint64_t a2)
{
  v76 = *a1;
  v77 = *(a1 + 2);
  std::list<int>::list(v78, (a1 + 2));
  v4 = 0;
  v26 = a1;
  v5 = *(a1 + 12);
  v79 = *(a1 + 10);
  v80 = v5;
  do
  {
    v71 = a1[v4 + 7];
    v72 = a1[v4 + 8];
    std::list<int>::list(v73, &a1[v4 + 9]);
    v6 = a1[v4 + 13];
    v74 = a1[v4 + 12];
    v75 = v6;
    v66 = v76;
    v67 = v77;
    std::list<int>::list(v68, v78);
    v69 = v79;
    v70 = v80;
    v7 = v71;
    std::__list_imp<char *>::clear(v68);
    std::__list_imp<char *>::clear(v73);
    v4 += 7;
  }

  while (v7 < v66);
  v8 = &a1[v4];
  if (v4 == 7)
  {
    while (v8 < a2)
    {
      v9 = a2 - 56;
      v61 = *(a2 - 56);
      v62 = *(a2 - 48);
      std::list<int>::list(v63, a2 - 40);
      v13 = *(a2 - 8);
      v64 = *(a2 - 16);
      v65 = v13;
      v56 = v76;
      v57 = v77;
      std::list<int>::list(v58, v78);
      v59 = v79;
      v60 = v80;
      v14 = v61;
      std::__list_imp<char *>::clear(v58);
      std::__list_imp<char *>::clear(v63);
      a2 -= 56;
      if (v14 < v56)
      {
        goto LABEL_11;
      }
    }

    v9 = a2;
  }

  else
  {
    v9 = a2;
    do
    {
      v10 = *(v9 - 56);
      v9 -= 56;
      v51 = v10;
      v52 = *(v9 + 8);
      std::list<int>::list(v53, v9 + 16);
      v11 = *(a2 - 8);
      v54 = *(a2 - 16);
      v55 = v11;
      v46 = v76;
      v47 = v77;
      std::list<int>::list(v48, v78);
      v49 = v79;
      v50 = v80;
      v12 = v51;
      std::__list_imp<char *>::clear(v48);
      std::__list_imp<char *>::clear(v53);
      a2 = v9;
    }

    while (v12 >= v46);
  }

LABEL_11:
  if (v8 >= v9)
  {
    v15 = &v26[v4];
  }

  else
  {
    v15 = &v26[v4];
    v16 = v9;
    do
    {
      std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v15, v16);
      v17 = v15;
      do
      {
        v18 = *(v15 + 56);
        v15 += 56;
        v41 = v18;
        v42 = *(v15 + 8);
        std::list<int>::list(v43, v15 + 16);
        v19 = *(v17 + 104);
        v44 = *(v17 + 96);
        v45 = v19;
        v36 = v76;
        v37 = v77;
        std::list<int>::list(v38, v78);
        v39 = v79;
        v40 = v80;
        v20 = v41;
        v21 = v36;
        std::__list_imp<char *>::clear(v38);
        std::__list_imp<char *>::clear(v43);
        v17 = v15;
      }

      while (v20 < v21);
      v22 = v16;
      do
      {
        v23 = *(v16 - 56);
        v16 -= 56;
        v31 = v23;
        v32 = *(v16 + 8);
        std::list<int>::list(v33, v16 + 16);
        v34 = *(v22 - 16);
        v35 = *(v22 - 8);
        v27 = v76;
        std::list<int>::list(v28, v78);
        v29 = v79;
        v30 = v80;
        v24 = v31;
        std::__list_imp<char *>::clear(v28);
        std::__list_imp<char *>::clear(v33);
        v22 = v16;
      }

      while (v24 >= v27);
    }

    while (v15 < v16);
  }

  if ((v15 - 56) != v26)
  {
    *v26 = *(v15 - 56);
    *(v26 + 2) = *(v15 - 48);
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v26 + 2, *(v15 - 32), v15 - 40);
    *(v26 + 10) = *(v15 - 16);
    *(v26 + 12) = *(v15 - 8);
  }

  *(v15 - 56) = v76;
  *(v15 - 48) = v77;
  if ((v15 - 56) != &v76)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v15 - 40), v78[1], v78);
  }

  *(v15 - 16) = v79;
  *(v15 - 8) = v80;
  std::__list_imp<char *>::clear(v78);
  return v15 - 56;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(uint64_t a1, uint64_t a2)
{
  v3 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(a1, a1 + 56, a2 - 56);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(a1, a1 + 56, a1 + 112, a2 - 56);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(a1, a1 + 56, a1 + 112, a1 + 168, a2 - 56);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = (a2 - 56);
      v55 = *(a2 - 56);
      v56 = *(a2 - 48);
      std::list<int>::list(v57, a2 - 40);
      v5 = *(a2 - 8);
      v58 = *(a2 - 16);
      v59 = v5;
      v50 = *a1;
      v51 = *(a1 + 8);
      std::list<int>::list(v52, a1 + 16);
      v6 = *(a1 + 48);
      v53 = *(a1 + 40);
      v54 = v6;
      v7 = v55;
      std::__list_imp<char *>::clear(v52);
      std::__list_imp<char *>::clear(v57);
      if (v7 < v50)
      {
        std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(a1, v4);
      }

      return 1;
    }
  }

  v8 = a1 + 112;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,0>(a1, a1 + 56, a1 + 112);
  v9 = a1 + 168;
  if (a1 + 168 != a2)
  {
    v10 = 0;
    v24 = 0;
    do
    {
      v45 = *v9;
      v46 = *(v9 + 8);
      std::list<int>::list(v47, v9 + 16);
      v11 = *(v9 + 48);
      v48 = *(v9 + 40);
      v49 = v11;
      v40 = *v8;
      v41 = *(v8 + 8);
      std::list<int>::list(v42, v8 + 16);
      v12 = *(v8 + 48);
      v43 = *(v8 + 40);
      v44 = v12;
      v13 = v45;
      v14 = v40;
      std::__list_imp<char *>::clear(v42);
      std::__list_imp<char *>::clear(v47);
      if (v13 < v14)
      {
        v35 = *v9;
        v36 = *(v9 + 8);
        std::list<int>::list(v37, v9 + 16);
        v15 = *(v9 + 48);
        v38 = *(v9 + 40);
        v39 = v15;
        v16 = v10;
        while (1)
        {
          v17 = a1 + v16;
          *(v17 + 168) = *(a1 + v16 + 112);
          *(v17 + 176) = *(a1 + v16 + 120);
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + v16 + 184), *(a1 + v16 + 136), a1 + 128 + v16);
          *(v17 + 208) = *(v17 + 152);
          *(v17 + 216) = *(v17 + 160);
          if (v16 == -112)
          {
            break;
          }

          v30 = v35;
          v31 = v36;
          std::list<int>::list(v32, v37);
          v33 = v38;
          v34 = v39;
          v26 = *(a1 + v16 + 56);
          std::list<int>::list(v27, a1 + v16 + 72);
          v18 = *(a1 + v16 + 104);
          v28 = *(a1 + v16 + 96);
          v29 = v18;
          v19 = v30;
          std::__list_imp<char *>::clear(v27);
          std::__list_imp<char *>::clear(v32);
          v16 -= 56;
          if (v19 >= v26)
          {
            v20 = a1 + v16 + 168;
            goto LABEL_20;
          }
        }

        v20 = a1;
LABEL_20:
        *v20 = v35;
        *(v20 + 8) = v36;
        if (v20 != &v35)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v20 + 16), v37[1], v37);
        }

        v21 = v39;
        *(v20 + 40) = v38;
        *(v20 + 48) = v21;
        if (v24 == 7)
        {
          v22 = v9 + 56 == a2;
          std::__list_imp<char *>::clear(v37);
          return v22;
        }

        ++v24;
        std::__list_imp<char *>::clear(v37);
      }

      v8 = v9;
      v10 += 56;
      v9 += 56;
    }

    while (v9 != a2);
  }

  return 1;
}

void *std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t *a1, uint64_t *a2)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  std::list<int>::list(v9, (a1 + 2));
  v4 = *(a1 + 12);
  v10 = *(a1 + 10);
  v11 = v4;
  *a1 = *a2;
  *(a1 + 2) = *(a2 + 2);
  if (a1 != a2)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1 + 2, a2[3], (a2 + 2));
  }

  *(a1 + 10) = *(a2 + 10);
  *(a1 + 12) = *(a2 + 12);
  *a2 = v7;
  *(a2 + 2) = v8;
  if (&v7 != a2)
  {
    std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a2 + 2, v9[1], v9);
  }

  v5 = v11;
  *(a2 + 10) = v10;
  *(a2 + 12) = v5;
  return std::__list_imp<char *>::clear(v9);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
    v19 = a2 - a1;
    if (a2 - a1 >= 57)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[7 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(a1, a4, v8, v11);
        v11 -= 7;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v24 = *v12;
        v25 = *(v12 + 8);
        std::list<int>::list(v26, v12 + 16);
        v13 = *(v12 + 48);
        v27 = *(v12 + 40);
        v28 = v13;
        v20 = *a1;
        std::list<int>::list(v21, (a1 + 2));
        v14 = *(a1 + 12);
        v22 = *(a1 + 10);
        v23 = v14;
        v15 = v24;
        std::__list_imp<char *>::clear(v21);
        std::__list_imp<char *>::clear(v26);
        if (v15 < v20)
        {
          std::swap[abi:ne200100]<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(v12, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(a1, a4, v8, a1);
        }

        v12 += 56;
      }

      while (v12 != a3);
    }

    if (v19 >= 57)
    {
      v16 = 0x6DB6DB6DB6DB6DB7 * (v19 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(a1, v6, a4, v16);
        v6 -= 56;
      }

      while (v16-- > 2);
    }

    return v12;
  }

  return a3;
}

void *std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v28 = v4 >> 1;
    if ((v4 >> 1) >= 0x6DB6DB6DB6DB6DB7 * (a4 - result))
    {
      v8 = (0xDB6DB6DB6DB6DB6ELL * (a4 - result)) | 1;
      v9 = &result[7 * v8];
      v10 = 0xDB6DB6DB6DB6DB6ELL * (a4 - result) + 2;
      if (v10 < a3)
      {
        v68 = *v9;
        v69 = *(v9 + 2);
        std::list<int>::list(v70, (v9 + 2));
        v11 = *(v9 + 12);
        v71 = *(v9 + 10);
        v72 = v11;
        v63 = v9[7];
        v64 = *(v9 + 16);
        std::list<int>::list(v65, (v9 + 9));
        v12 = *(v9 + 26);
        v66 = *(v9 + 24);
        v67 = v12;
        v13 = v68;
        std::__list_imp<char *>::clear(v65);
        std::__list_imp<char *>::clear(v70);
        v14 = 56;
        if (v13 >= v63)
        {
          v14 = 0;
        }

        v9 = (v9 + v14);
        if (v13 < v63)
        {
          v8 = v10;
        }
      }

      v58 = *v9;
      v59 = *(v9 + 2);
      std::list<int>::list(v60, (v9 + 2));
      v15 = *(v9 + 12);
      v61 = *(v9 + 10);
      v62 = v15;
      v53 = *v5;
      v54 = *(v5 + 2);
      std::list<int>::list(v55, (v5 + 2));
      v16 = *(v5 + 12);
      v56 = *(v5 + 10);
      v57 = v16;
      v17 = v58;
      std::__list_imp<char *>::clear(v55);
      result = std::__list_imp<char *>::clear(v60);
      if (v17 >= v53)
      {
        v48 = *v5;
        v49 = *(v5 + 2);
        std::list<int>::list(v50, (v5 + 2));
        v18 = *(v5 + 12);
        v51 = *(v5 + 10);
        v52 = v18;
        do
        {
          v19 = v9;
          *v5 = *v9;
          *(v5 + 2) = *(v9 + 2);
          if (v5 != v9)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v5 + 2, v9[3], (v9 + 2));
          }

          *(v5 + 10) = *(v9 + 10);
          *(v5 + 12) = *(v9 + 12);
          if (v28 < v8)
          {
            break;
          }

          v20 = (2 * v8) | 1;
          v9 = &v6[7 * v20];
          v8 = 2 * v8 + 2;
          if (v8 >= a3)
          {
            v8 = v20;
          }

          else
          {
            v43 = *v9;
            v44 = *(v9 + 2);
            std::list<int>::list(v45, (v9 + 2));
            v21 = *(v9 + 12);
            v46 = *(v9 + 10);
            v47 = v21;
            v38 = v9[7];
            v39 = *(v9 + 16);
            std::list<int>::list(v40, (v9 + 9));
            v22 = *(v9 + 26);
            v41 = *(v9 + 24);
            v42 = v22;
            v23 = v43;
            v24 = v38;
            std::__list_imp<char *>::clear(v40);
            std::__list_imp<char *>::clear(v45);
            v25 = 56;
            if (v23 >= v24)
            {
              v25 = 0;
            }

            v9 = (v9 + v25);
            if (v23 >= v24)
            {
              v8 = v20;
            }
          }

          v33 = *v9;
          v34 = *(v9 + 2);
          std::list<int>::list(v35, (v9 + 2));
          v26 = *(v9 + 12);
          v36 = *(v9 + 10);
          v37 = v26;
          v29 = v48;
          std::list<int>::list(v30, v50);
          v31 = v51;
          v32 = v52;
          v27 = v33;
          std::__list_imp<char *>::clear(v30);
          std::__list_imp<char *>::clear(v35);
          v5 = v19;
        }

        while (v27 >= v29);
        *v19 = v48;
        *(v19 + 2) = v49;
        if (v19 != &v48)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v19 + 2, v50[1], v50);
        }

        *(v19 + 10) = v51;
        *(v19 + 12) = v52;
        return std::__list_imp<char *>::clear(v50);
      }
    }
  }

  return result;
}

void *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    v12 = *result;
    v13 = *(result + 2);
    std::list<int>::list(&v14, (result + 2));
    v8 = *(v7 + 48);
    v16 = *(v7 + 40);
    v17 = v8;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v7, a3, a4);
    v10 = v9;
    if (v9 == a2 - 56)
    {
      *v9 = v12;
      *(v9 + 8) = v13;
      if (v9 != &v12)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v9 + 16), v15, &v14);
      }

      *(v10 + 40) = v16;
      *(v10 + 48) = v17;
    }

    else
    {
      *v9 = *(a2 - 56);
      *(v9 + 8) = *(a2 - 48);
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v9 + 16), *(a2 - 32), a2 - 40);
      *(v10 + 40) = *(a2 - 16);
      *(v10 + 48) = *(a2 - 8);
      *(a2 - 56) = v12;
      *(a2 - 48) = v13;
      if ((a2 - 56) != &v12)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a2 - 40), v15, &v14);
      }

      v11 = v17;
      *(a2 - 16) = v16;
      *(a2 - 8) = v11;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(v7, v10 + 56, a3, 0x6DB6DB6DB6DB6DB7 * ((v10 + 56 - v7) >> 3));
    }

    return std::__list_imp<char *>::clear(&v14);
  }

  return result;
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 56 * v5;
    v8 = v7 + 56;
    v9 = (2 * v5) | 1;
    v5 = 2 * v5 + 2;
    if (v5 >= a3)
    {
      v5 = v9;
    }

    else
    {
      v17 = *(v7 + 56);
      v18 = *(v7 + 64);
      std::list<int>::list(v19, v7 + 72);
      v20 = *(v7 + 96);
      v21 = *(v7 + 104);
      v10 = v7 + 112;
      v13 = *(v7 + 112);
      std::list<int>::list(v14, v7 + 128);
      v15 = *(v7 + 152);
      v16 = *(v7 + 160);
      v11 = v17;
      std::__list_imp<char *>::clear(v14);
      std::__list_imp<char *>::clear(v19);
      if (v11 >= v13)
      {
        v5 = v9;
      }

      else
      {
        v8 = v10;
      }
    }

    *a1 = *v8;
    *(a1 + 8) = *(v8 + 8);
    if (a1 != v8)
    {
      std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((a1 + 16), *(v8 + 24), v8 + 16);
    }

    *(a1 + 40) = *(v8 + 40);
    *(a1 + 48) = *(v8 + 48);
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void sub_1B55A5140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

void *std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::ILabelCompare<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>> &,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>*>(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = &result[7 * (v4 >> 1)];
    v37 = *v8;
    v38 = *(v8 + 2);
    std::list<int>::list(v39, (v8 + 2));
    v9 = *(v8 + 12);
    v40 = *(v8 + 10);
    v41 = v9;
    v10 = (a2 - 56);
    v32 = *(a2 - 56);
    v33 = *(a2 - 48);
    std::list<int>::list(v34, a2 - 40);
    v11 = *(a2 - 8);
    v35 = *(a2 - 16);
    v36 = v11;
    v12 = v37;
    std::__list_imp<char *>::clear(v34);
    result = std::__list_imp<char *>::clear(v39);
    if (v12 < v32)
    {
      v27 = *(a2 - 56);
      v28 = *(a2 - 48);
      std::list<int>::list(v29, a2 - 40);
      v13 = *(a2 - 8);
      v30 = *(a2 - 16);
      v31 = v13;
      do
      {
        v14 = v8;
        *v10 = *v8;
        *(v10 + 2) = *(v8 + 2);
        if (v10 != v8)
        {
          std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v10 + 2, v8[3], (v8 + 2));
        }

        *(v10 + 10) = *(v8 + 10);
        *(v10 + 12) = *(v8 + 12);
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = &v6[7 * v7];
        v22 = *v8;
        v23 = *(v8 + 2);
        std::list<int>::list(v24, (v8 + 2));
        v15 = *(v8 + 12);
        v25 = *(v8 + 10);
        v26 = v15;
        v18 = v27;
        std::list<int>::list(v19, v29);
        v20 = v30;
        v21 = v31;
        v16 = v22;
        std::__list_imp<char *>::clear(v19);
        std::__list_imp<char *>::clear(v24);
        v10 = v14;
      }

      while (v16 < v18);
      *v14 = v27;
      *(v14 + 2) = v28;
      if (v14 != &v27)
      {
        std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v14 + 2, v29[1], v29);
      }

      v17 = v31;
      *(v14 + 10) = v30;
      *(v14 + 12) = v17;
      return std::__list_imp<char *>::clear(v29);
    }
  }

  return result;
}

void sub_1B55A538C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__list_imp<char *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::Split(void *a1, int a2)
{
  for (i = *(a1[4] + 8 * a2); i; i = *(i + 1))
  {
    if (*(*(*(a1[32] + 64) + 8 * (*i + 1)) + 64) != *(*(*(a1[32] + 64) + 8 * (*i + 1)) + 56))
    {
      operator new();
    }
  }

  v4 = a1[33];
  v5 = *v4;
  v6 = (v4 + 8);
  v7 = *(v4 + 8);
  if (*v4 != v7)
  {
    v8 = -1;
    while (1)
    {
      v9 = *v5;
      v36 = *(v4 + 24);
      v10 = (v7 - v5) >> 3;
      if (v10 >= 2)
      {
        v11 = *v5;
        v12 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>> **>>(v5, &v36, v10);
        v13 = (v7 - 8);
        if ((v7 - 8) == v12)
        {
          *v12 = v11;
        }

        else
        {
          *v12 = *v13;
          *v13 = v11;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>> **>>(v5, (v12 + 1), &v36, v12 + 1 - v5);
        }
      }

      *v6 -= 8;
      if (!*v9)
      {
        break;
      }

      v14 = (*(**v9 + 24))(*v9);
      v15 = *v9;
      if ((v14 & 1) == 0)
      {
        if (v15)
        {
          v17 = (*(*v15 + 32))(v15);
          if (*v9)
          {
            v18 = (*(**v9 + 32))(*v9);
            goto LABEL_24;
          }
        }

        else
        {
LABEL_22:
          v17 = (v9[1] + 56 * v9[4]);
        }

        v18 = v9[1] + 56 * v9[4];
LABEL_24:
        v19 = *(v18 + 48);
        v20 = *v17;
        if (v8 != *v17)
        {
          fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
        }

        if (*(a1[13] + 4 * *(a1[10] + 4 * (v19 - 1))) >= 2u)
        {
          fst::Partition<int>::SplitOn(a1, v19 - 1);
        }

        if (*v9)
        {
          (*(**v9 + 40))(*v9);
          if (*v9)
          {
            if ((*(**v9 + 24))(*v9))
            {
              if (*v9)
              {
                (*(**v9 + 8))(*v9);
                goto LABEL_39;
              }

LABEL_37:
              v25 = v9[3];
              if (v25)
              {
                --*v25;
              }

LABEL_39:
              MEMORY[0x1B8C85350](v9, 0x1070C401ACC3EEFLL);
LABEL_51:
              v8 = v20;
              goto LABEL_52;
            }

LABEL_35:
            v21 = a1[33];
            v23 = *(v21 + 8);
            v22 = *(v21 + 16);
            if (v23 >= v22)
            {
              v26 = (v23 - *v21) >> 3;
              if ((v26 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v27 = v22 - *v21;
              v28 = v27 >> 2;
              if (v27 >> 2 <= (v26 + 1))
              {
                v28 = v26 + 1;
              }

              if (v27 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              if (v29)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1[33], v29);
              }

              v30 = (8 * v26);
              *v30 = v9;
              v24 = 8 * v26 + 8;
              v31 = *(v21 + 8) - *v21;
              v32 = v30 - v31;
              memcpy(v30 - v31, *v21, v31);
              v33 = *v21;
              *v21 = v32;
              *(v21 + 8) = v24;
              *(v21 + 16) = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            else
            {
              *v23 = v9;
              v24 = (v23 + 1);
            }

            *(v21 + 8) = v24;
            v34 = *v21;
            v36 = *(v21 + 24);
            std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>> **>>(v34, v24, &v36, (v24 - v34) >> 3);
            goto LABEL_51;
          }
        }

        else
        {
          ++v9[4];
        }

        if (v9[4] >= v9[2])
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }

      if (!v15)
      {
        goto LABEL_16;
      }

      (*(*v15 + 8))(v15);
LABEL_18:
      MEMORY[0x1B8C85350](v9, 0x1070C401ACC3EEFLL);
LABEL_52:
      v4 = a1[33];
      v5 = *v4;
      v6 = (v4 + 8);
      v7 = *(v4 + 8);
      if (*v4 == v7)
      {
        return fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
      }
    }

    if (v9[4] < v9[2])
    {
      goto LABEL_22;
    }

LABEL_16:
    v16 = v9[3];
    if (v16)
    {
      --*v16;
    }

    goto LABEL_18;
  }

  return fst::Partition<int>::FinalizeSplit<fst::LifoQueue<int>>(a1, (a1 + 23));
}

BOOL std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>> **>>(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = result;
    v7 = v4 >> 1;
    v8 = (result + 8 * (v4 >> 1));
    v9 = (a2 - 8);
    result = fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, *(a2 - 8));
    if (result)
    {
      v10 = *v9;
      do
      {
        v11 = v8;
        *v9 = *v8;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = (v6 + 8 * v7);
        result = fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a3, *v8, v10);
        v9 = v11;
      }

      while (result);
      *v11 = v10;
    }
  }

  return result;
}

BOOL fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare::operator()(uint64_t a1, void *a2, void *a3)
{
  if (*a2)
  {
    v4 = (*(**a2 + 32))(*a2);
  }

  else
  {
    v4 = (a2[1] + 56 * a2[4]);
  }

  if (*a3)
  {
    v5 = (*(**a3 + 32))(*a3);
  }

  else
  {
    v5 = (a3[1] + 56 * a3[4]);
  }

  return *v4 > *v5;
}

void **std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare &,std::__wrap_iter<fst::ArcIterator<fst::Fst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>> **>>(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[v6 + 1];
    v9 = (2 * v6) | 1;
    v10 = 2 * v6 + 2;
    if (v10 < a3)
    {
      v11 = fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::ArcIterCompare::operator()(a2, *v8, a1[v6 + 2]);
      if (v11)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v8 = (v8 + v12);
      if (v11)
      {
        v9 = v10;
      }
    }

    *a1 = *v8;
    a1 = v8;
    v6 = v9;
  }

  while (v9 <= v7);
  return v8;
}

void *fst::CyclicMinimizer<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::LifoQueue<int>>::~CyclicMinimizer(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v3;
      operator delete(v3);
    }

    MEMORY[0x1B8C85350](v2, 0xE0C40DD5D8FE3);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>,std::allocator<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>>,fst::MutableFst<fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>>::~ImplToFst(a1 + 31);
  std::deque<int>::~deque[abi:ne200100](a1 + 25);

  return fst::Partition<int>::~Partition(a1);
}

uint64_t fst::StateMap<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>(uint64_t a1, uint64_t *a2)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    v6 = (*(**a2 + 24))();
    (*(*a1 + 176))(a1, v6);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v7 = 0;
      do
      {
        fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7);
        for (i = a2[5]; ; a2[5] = i)
        {
          v9 = a2[2];
          if (i >= 0x6DB6DB6DB6DB6DB7 * ((a2[3] - v9) >> 3))
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v9 + 56 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(&v10);
        (*(*a1 + 184))(a1, v7, &v10);
        std::__list_imp<char *>::clear(v11);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v5 & 0xA6A0A950007, 0x3FFFFFFF0007);
  }

  return result;
}

uint64_t *fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::SetState(uint64_t *a1, uint64_t a2)
{
  v4 = a1 + 2;
  v5 = a1[2];
  a1[5] = 0;
  v6 = a1[3];
  if (v6 != v5)
  {
    do
    {
      v7 = v6 - 56;
      std::__list_imp<char *>::clear((v6 - 40));
      v6 = v7;
    }

    while (v7 != v5);
  }

  a1[3] = v5;
  v8 = (*(**a1 + 40))(*a1, a2);
  std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::reserve(v4, v8);
  v9 = *a1;
  v19 = 0;
  (*(*v9 + 136))(v9, a2, v17);
  while (1)
  {
    if (!v17[0])
    {
      if (v19 >= v17[2])
      {
        goto LABEL_15;
      }

LABEL_9:
      v10 = v17[1] + 56 * v19;
      goto LABEL_10;
    }

    if ((*(*v17[0] + 24))(v17[0]))
    {
      break;
    }

    if (!v17[0])
    {
      goto LABEL_9;
    }

    v10 = (*(*v17[0] + 32))();
LABEL_10:
    std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::push_back[abi:ne200100](v4, v10);
    if (v17[0])
    {
      (*(*v17[0] + 40))(v17[0]);
    }

    else
    {
      ++v19;
    }
  }

  if (v17[0])
  {
    (*(*v17[0] + 8))();
    goto LABEL_17;
  }

LABEL_15:
  if (v18)
  {
    --*v18;
  }

LABEL_17:
  v11 = a1[2];
  v12 = a1[3];
  v13 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (v12 - v11));
  if (v12 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,false>(v11, v12, v17, v14, 1);
  v15 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *>,std::__wrap_iter<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *>,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Equal &>(a1[2], a1[3], v17);
  return std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::resize(v4, 0x6DB6DB6DB6DB6DB7 * ((v15 - a1[2]) >> 3));
}

void sub_1B55A6098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::Reverse<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>,fst::ReverseArc<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::resize(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *result) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return std::vector<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::__append(result, v6);
  }

  else if (!v5)
  {
    v7 = *result + 56 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 56;
        result = std::__list_imp<char *>::clear((v3 - 40));
        v3 = v8;
      }

      while (v8 != v7);
    }

    v2[1] = v7;
  }

  return result;
}

void *std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,false>(void *result, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
  v9 = 0x6DB6DB6DB6DB6DB7;
LABEL_2:
  v31 = (a2 - 7);
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = ((a2 - v10) >> 3) * v9;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v28 = *(a2 - 14);
        if (v28 < *v10 || v28 <= *v10 && ((v29 = *(a2 - 13), v30 = *(v10 + 4), v29 < v30) || v29 <= v30 && *(a2 - 2) < *(v10 + 48)))
        {

          return std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v10, a2 - 7);
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v10, v10 + 56, v10 + 112, v31);
    }

    if (v14 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v10, v10 + 56, v10 + 112, v10 + 168, v31);
    }

LABEL_11:
    if (v13 <= 1343)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v10, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v10, a2);
      }
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v10, a2, a2, a3);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v10 + 56 * (v14 >> 1));
    if (v13 < 0x1C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v16, v10, v31);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v10, v16, v31);
      v17 = v10 + 56;
      v18 = v9;
      v19 = 56 * v15;
      v20 = (56 * v15 + v8 - 56);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>((v8 + 56), v20, (a2 - 14));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>((v8 + 112), (v17 + v19), (a2 - 21));
      v21 = v17 + v19;
      v9 = v18;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v20, v16, v21);
      std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(v8, v16);
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v22 = *(v8 - 56);
    if (v22 >= *v8)
    {
      if (v22 > *v8 || (v23 = *(v8 - 52), v24 = *(v8 + 4), v23 >= v24) && (v23 > v24 || *(v8 - 8) >= *(v8 + 48)))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &>(v8, a2);
        v10 = result;
        goto LABEL_27;
      }
    }

LABEL_22:
    v25 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0> *,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &>(v8, a2);
    if ((v26 & 1) == 0)
    {
      goto LABEL_25;
    }

    v27 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(v8, v25);
    v10 = (v25 + 14);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>((v25 + 14), a2);
    if (result)
    {
      a4 = -v12;
      a2 = v25;
      if (v27)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if ((v27 & 1) == 0)
    {
LABEL_25:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,false>(v8, v25, a3, -v12, a5 & 1);
      v10 = (v25 + 14);
LABEL_27:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(v10, (v10 + 56), v31);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a1;
  v6 = *a2;
  if (*a2 < *a1 || v6 <= *a1 && ((v9 = *(a2 + 1), v10 = *(a1 + 1), v9 < v10) || v9 <= v10 && *(a2 + 12) < *(a1 + 12)))
  {
    if (*a3 >= v6)
    {
      if (*a3 > v6 || (v11 = *(a3 + 4), v12 = *(a2 + 1), v11 >= v12) && (v11 > v12 || *(a3 + 48) >= *(a2 + 12)))
      {
        std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2);
        if (*a3 >= *a2)
        {
          if (*a3 > *a2)
          {
            return 1;
          }

          v15 = *(a3 + 4);
          v16 = *(a2 + 1);
          if (v15 >= v16 && (v15 > v16 || *(a3 + 48) >= *(a2 + 12)))
          {
            return 1;
          }
        }

        a1 = a2;
      }
    }

    v7 = a3;
LABEL_12:
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, v7);
    return 1;
  }

  if (*a3 < v6 || *a3 <= v6 && ((v17 = *(a3 + 4), v18 = *(a2 + 1), v17 < v18) || v17 <= v18 && *(a3 + 48) < *(a2 + 12)))
  {
    std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2, a3);
    if (*a2 >= *v5)
    {
      if (*a2 > *v5)
      {
        return 1;
      }

      v13 = *(a2 + 1);
      v14 = *(v5 + 1);
      if (v13 >= v14 && (v13 > v14 || *(a2 + 12) >= *(v5 + 12)))
      {
        return 1;
      }
    }

    a1 = v5;
    v7 = a2;
    goto LABEL_12;
  }

  return 0;
}

void *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a2, a3);
  if (*a4 < *a3 || *a4 <= *a3 && ((v9 = *(a4 + 4), v10 = *(a3 + 4), v9 < v10) || v9 <= v10 && *(a4 + 48) < *(a3 + 48)))
  {
    result = std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a3, a4);
    if (*a3 < *a2 || *a3 <= *a2 && ((v11 = *(a3 + 4), v12 = *(a2 + 4), v11 < v12) || v11 <= v12 && *(a3 + 48) < *(a2 + 48)))
    {
      result = std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2, a3);
      if (*a2 < *a1 || *a2 <= *a1 && ((v13 = *(a2 + 4), v14 = *(a1 + 4), v13 < v14) || v13 <= v14 && *(a2 + 48) < *(a1 + 48)))
      {

        return std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2);
      }
    }
  }

  return result;
}

void *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*,0>(a1, a2, a3, a4);
  if (*a5 < *a4 || *a5 <= *a4 && ((v11 = *(a5 + 4), v12 = *(a4 + 4), v11 < v12) || v11 <= v12 && *(a5 + 48) < *(a4 + 48)))
  {
    result = std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a4, a5);
    if (*a4 < *a3 || *a4 <= *a3 && ((v13 = *(a4 + 4), v14 = *(a3 + 4), v13 < v14) || v13 <= v14 && *(a4 + 48) < *(a3 + 48)))
    {
      result = std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a3, a4);
      if (*a3 < *a2 || *a3 <= *a2 && ((v15 = *(a3 + 4), v16 = *(a2 + 4), v15 < v16) || v15 <= v16 && *(a3 + 48) < *(a2 + 48)))
      {
        result = std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a2, a3);
        if (*a2 < *a1 || *a2 <= *a1 && ((v17 = *(a2 + 4), v18 = *(a1 + 4), v17 < v18) || v17 <= v18 && *(a2 + 48) < *(a1 + 48)))
        {

          return std::swap[abi:ne200100]<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>(a1, a2);
        }
      }
    }
  }

  return result;
}

void *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[14];
        if (v8 < *v7 || v8 <= *v7 && ((v14 = v7[15], v15 = v7[1], v14 < v15) || v14 <= v15 && v7[26] < v7[12]))
        {
          v18 = *v6;
          v19 = v7[16];
          std::list<int>::list(v20, (v7 + 18));
          v9 = v7[26];
          v21 = v7[24];
          v22 = v9;
          for (i = v5; ; i -= 56)
          {
            v11 = &v3[i];
            *(v11 + 7) = *&v3[i];
            *(v11 + 16) = *&v3[i + 8];
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(&v3[i + 72], *&v3[i + 24], &v3[i + 16]);
            *(v11 + 24) = *(v11 + 10);
            *(v11 + 26) = *(v11 + 12);
            if (!i)
            {
              v16 = v3;
              goto LABEL_20;
            }

            v12 = *&v3[i - 56];
            if (v18 >= v12)
            {
              if (v18 > v12)
              {
                break;
              }

              v13 = *&v3[i - 52];
              if (SHIDWORD(v18) >= v13 && (SHIDWORD(v18) > v13 || v22 >= *&v3[i - 8]))
              {
                break;
              }
            }
          }

          v16 = &v3[i];
LABEL_20:
          *v16 = v18;
          *(v16 + 2) = v19;
          if (v16 != &v18)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v16 + 2, v20[1], v20);
          }

          v17 = v22;
          *(v16 + 10) = v21;
          *(v16 + 12) = v17;
          result = std::__list_imp<char *>::clear(v20);
        }

        v4 = v6 + 7;
        v5 += 56;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}

void *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcUniqueMapper<fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>>::Compare &,fst::GallicArc<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,(fst::GallicType)0>*>(void *result, void *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 7;
    if (result + 7 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        v8 = v7[14];
        if (v8 < *v7 || v8 <= *v7 && ((v16 = v7[15], v17 = v7[1], v16 < v17) || v16 <= v17 && v7[26] < v7[12]))
        {
          v18 = *v6;
          v19 = v7[16];
          std::list<int>::list(v20, (v7 + 18));
          v9 = v7[26];
          v21 = v7[24];
          v22 = v9;
          for (i = v5; ; i -= 56)
          {
            v11 = v3 + i;
            *(v11 + 7) = *(v3 + i);
            *(v11 + 16) = *(v3 + i + 8);
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>((v3 + i + 72), *(v3 + i + 24), v3 + i + 16);
            *(v11 + 24) = *(v11 + 10);
            *(v11 + 26) = *(v11 + 12);
            v12 = *(v3 + i - 56);
            if (v18 >= v12)
            {
              if (v18 > v12)
              {
                break;
              }

              v13 = *(v3 + i - 52);
              if (SHIDWORD(v18) >= v13 && (SHIDWORD(v18) > v13 || v22 >= *(v3 + i - 8)))
              {
                break;
              }
            }
          }

          v14 = v3 + i;
          *v14 = v18;
          *(v14 + 2) = v19;
          if (v14 != &v18)
          {
            std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(v14 + 2, v20[1], v20);
          }

          v15 = v22;
          *(v14 + 10) = v21;
          *(v14 + 12) = v15;
          result = std::__list_imp<char *>::clear(v20);
        }

        v4 = v6 + 7;
        v5 += 56;
      }

      while (v6 + 7 != a2);
    }
  }

  return result;
}