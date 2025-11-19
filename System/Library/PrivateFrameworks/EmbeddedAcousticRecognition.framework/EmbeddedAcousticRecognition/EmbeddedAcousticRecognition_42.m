void sub_1B534C1C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v40 - 89) < 0)
  {
    operator delete(*(v40 - 112));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void quasar::getAlternativeSpelledProns(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  if (a1[1] != *a1)
  {
    v4 = 0;
    do
    {
      v5 = v21;
      if (v21 >= v22)
      {
        v7 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v20) >> 3);
        v8 = v7 + 1;
        if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v22 - v20) >> 3) > v8)
        {
          v8 = 0x5555555555555556 * ((v22 - v20) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v22 - v20) >> 3) >= 0x555555555555555)
        {
          v9 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v9 = v8;
        }

        v26 = &v20;
        if (v9)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(&v20, v9);
        }

        v10 = (8 * ((v21 - v20) >> 3));
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        v6 = 24 * v7 + 24;
        v11 = (24 * v7 - (v21 - v20));
        memcpy(v10 - (v21 - v20), v20, v21 - v20);
        v12 = v20;
        v13 = v22;
        v20 = v11;
        v21 = v6;
        v22 = 0;
        __p[0] = v12;
        v24 = v12;
        v25 = v13;
        __p[1] = v12;
        std::__split_buffer<std::vector<std::string>>::~__split_buffer(__p);
      }

      else
      {
        *v21 = 0;
        *(v5 + 1) = 0;
        v6 = (v5 + 24);
        *(v5 + 2) = 0;
      }

      v21 = v6;
      v14 = *a1;
      v15 = *a1 + 72 * v4;
      v16 = *(v15 + 24);
      v17 = *(v15 + 32);
      if (v16 != v17)
      {
        do
        {
          std::vector<std::string>::push_back[abi:ne200100]((v21 - 24), (v16 + 8));
          v16 += 40;
        }

        while (v16 != v17);
        v14 = *a1;
      }

      ++v4;
    }

    while (0x8E38E38E38E38E39 * ((a1[1] - v14) >> 3) > v4);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, ".");
  quasar::PronCombinator::operator()(a2, &v20, __p, a3);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = &v20;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B534C4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, char *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  a23 = &a12;
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void std::vector<quasar::PronChoice>::__assign_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<quasar::PronChoice>::__vdeallocate(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::PronChoice>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (0xCCCCCCCCCCCCCCCDLL * ((v11 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 8), (v6 + 8));
        *(v8 + 32) = *(v6 + 32);
        v8 += 40;
        v6 += 40;
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 9) < 0)
      {
        operator delete(*(v11 - 4));
      }

      v11 -= 5;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = v11 + a2 - v8;
    if (v11 != v8)
    {
      do
      {
        *v8 = *v6;
        std::string::operator=((v8 + 8), (v6 + 8));
        *(v8 + 32) = *(v6 + 32);
        v6 += 40;
        v8 += 40;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*,quasar::PronChoice*,quasar::PronChoice*>(a1, v12, a3, v11);
  }
}

void std::vector<quasar::PronChoice>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::PronChoice>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<quasar::PronChoice>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__tree<std::__value_type<std::string,quasar::PronGuessStats::Record>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::PronGuessStats::Record>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::PronGuessStats::Record>>>::__emplace_unique_key_args<std::string,std::pair<std::string,quasar::PronGuessStats::Record>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::vector<std::vector<quasar::PronChoice>>::__construct_one_at_end[abi:ne200100]<std::vector<quasar::PronChoice> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<quasar::PronChoice>::__init_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(v3, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<quasar::PronChoice>>::__emplace_back_slow_path<std::vector<quasar::PronChoice> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::PronChoice>::__init_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(24 * v2, *a2, a2[1], 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<quasar::PronChoice>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B534C980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<quasar::PronChoice>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PronChoice>::__init_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::PronChoice>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B534C9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::__split_buffer<std::vector<quasar::PronChoice>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<quasar::PronChoice>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<quasar::PronChoice>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,false>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = a1;
  v47 = a2;
  v48 = a1;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = v7 - v8;
    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        v47 = v7 - 40;
        if (*(v7 - 8) < *(v8 + 32))
        {
          v45 = &v48;
          v46 = &v47;
          goto LABEL_94;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v47 = v7 - 40;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,0>(v8, v8 + 40, v8 + 80, v7 - 40);
      return;
    }

    if (v11 == 5)
    {
      v47 = v7 - 40;
      v52 = v8 + 40;
      v53 = v8;
      v50 = v8 + 120;
      v51 = v8 + 80;
      v49 = v7 - 40;
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,0>(v8, v8 + 40, v8 + 80, v8 + 120);
      if (*(v7 - 8) < *(v8 + 152))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v50, &v49);
        if (*(v50 + 32) < *(v8 + 112))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v51, &v50);
          if (*(v51 + 32) < *(v8 + 72))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
            v41 = *(v52 + 32);
            v42 = *(v8 + 32);
LABEL_92:
            if (v41 < v42)
            {
              v45 = &v53;
              v46 = &v52;
LABEL_94:
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v45, v46);
            }
          }
        }
      }

      return;
    }

LABEL_10:
    if (v10 <= 959)
    {
      if (a5)
      {
        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(v8, v7);
      }

      else
      {
        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(v8, v7);
      }

      return;
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,quasar::PronChoice *>(v8, v7, v7, a3);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = v8 + 40 * (v11 >> 1);
    if (v10 < 0x1401)
    {
      v52 = v8;
      v53 = v8 + 40 * (v11 >> 1);
      v51 = v7 - 40;
      v18 = *(v8 + 32);
      v19 = *(v7 - 8);
      if (v18 >= *(v13 + 32))
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
          if (*(v52 + 32) < *(v53 + 32))
          {
            v20 = &v53;
            v21 = &v52;
            goto LABEL_35;
          }
        }
      }

      else
      {
        v20 = &v53;
        if (v19 < v18)
        {
          goto LABEL_22;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v53, &v52);
        if (*(v51 + 32) < *(v52 + 32))
        {
          v20 = &v52;
LABEL_22:
          v21 = &v51;
LABEL_35:
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v20, v21);
        }
      }

      if (a5)
      {
        goto LABEL_37;
      }

      goto LABEL_63;
    }

    v52 = v8 + 40 * (v11 >> 1);
    v53 = v8;
    v51 = v7 - 40;
    v14 = *(v13 + 32);
    v15 = *(v7 - 8);
    if (v14 < *(v8 + 32))
    {
      v16 = &v53;
      if (v15 >= v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v53, &v52);
        if (*(v51 + 32) >= *(v52 + 32))
        {
          goto LABEL_27;
        }

        v16 = &v52;
      }

      v17 = &v51;
      goto LABEL_26;
    }

    if (v15 < v14)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
      if (*(v52 + 32) < *(v53 + 32))
      {
        v16 = &v53;
        v17 = &v52;
LABEL_26:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v16, v17);
      }
    }

LABEL_27:
    v22 = v8 + 40 * v12;
    v23 = v22 - 40;
    v52 = v22 - 40;
    v53 = v8 + 40;
    v51 = v7 - 80;
    v24 = *(v22 - 8);
    v25 = *(v7 - 48);
    if (v24 < *(v8 + 72))
    {
      v26 = &v53;
      if (v25 >= v24)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v53, &v52);
        if (*(v51 + 32) >= *(v52 + 32))
        {
          goto LABEL_42;
        }

        v26 = &v52;
      }

      v27 = &v51;
      goto LABEL_41;
    }

    if (v25 < v24)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
      if (*(v52 + 32) < *(v53 + 32))
      {
        v26 = &v53;
        v27 = &v52;
LABEL_41:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v26, v27);
      }
    }

LABEL_42:
    v28 = v8 + 40 * v12;
    v29 = v28 + 40;
    v52 = v28 + 40;
    v53 = v8 + 80;
    v51 = v7 - 120;
    v30 = *(v28 + 72);
    v31 = *(v7 - 88);
    if (v30 < *(v8 + 112))
    {
      v32 = &v53;
      if (v31 >= v30)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v53, &v52);
        if (*(v51 + 32) >= *(v52 + 32))
        {
          goto LABEL_51;
        }

        v32 = &v52;
      }

      v33 = &v51;
      goto LABEL_50;
    }

    if (v31 < v30)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
      if (*(v52 + 32) < *(v53 + 32))
      {
        v32 = &v53;
        v33 = &v52;
LABEL_50:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v32, v33);
      }
    }

LABEL_51:
    v52 = v13;
    v53 = v23;
    v51 = v29;
    v34 = *(v13 + 32);
    v35 = *(v29 + 32);
    if (v34 >= *(v23 + 32))
    {
      if (v35 >= v34)
      {
        goto LABEL_60;
      }

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
      if (*(v52 + 32) >= *(v53 + 32))
      {
        goto LABEL_60;
      }

      v36 = &v53;
      v37 = &v52;
    }

    else
    {
      v36 = &v53;
      if (v35 >= v34)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v53, &v52);
        if (*(v51 + 32) >= *(v52 + 32))
        {
          goto LABEL_60;
        }

        v36 = &v52;
      }

      v37 = &v51;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v36, v37);
LABEL_60:
    quasar::PronChoice::PronChoice(&v53, v8);
    *v8 = *v13;
    std::string::operator=((v8 + 8), (v13 + 8));
    *(v8 + 32) = *(v13 + 32);
    *v13 = v53;
    std::string::operator=((v13 + 8), &__p);
    *(v13 + 32) = v55;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = v48;
    if (a5)
    {
LABEL_37:
      v7 = v47;
      goto LABEL_64;
    }

LABEL_63:
    v7 = v47;
    if (*(v8 - 8) >= *(v8 + 32))
    {
      v8 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PronChoice *,std::__less<void,void> &>(v8, v47);
      goto LABEL_73;
    }

LABEL_64:
    v38 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PronChoice *,std::__less<void,void> &>(v8, v7);
    if ((v39 & 1) == 0)
    {
      goto LABEL_71;
    }

    v40 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(v8, v38);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>((v38 + 40), v7))
    {
      if (v40)
      {
        return;
      }

      v47 = v38;
      v7 = v38;
    }

    else
    {
      if (!v40)
      {
LABEL_71:
        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,false>(v8, v38, a3, -i, a5 & 1);
        v8 = v38 + 40;
LABEL_73:
        a5 = 0;
        v48 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v48 = v38 + 40;
      v8 = v38 + 40;
    }
  }

  v52 = v8 + 40;
  v53 = v8;
  v51 = v7 - 40;
  v43 = *(v8 + 72);
  v44 = *(v7 - 8);
  if (v43 < *(v8 + 32))
  {
    v45 = &v53;
    if (v44 >= v43)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v53, &v52);
      if (*(v51 + 32) >= *(v52 + 32))
      {
        return;
      }

      v45 = &v52;
    }

    v46 = &v51;
    goto LABEL_94;
  }

  if (v44 < v43)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v52, &v51);
    v41 = *(v52 + 32);
    v42 = *(v53 + 32);
    goto LABEL_92;
  }
}

void sub_1B534D104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  quasar::PronChoice::PronChoice(&v4, *a1);
  *v2 = *v3;
  std::string::operator=((v2 + 8), (v3 + 8));
  *(v2 + 32) = *(v3 + 32);
  *v3 = v4;
  std::string::operator=((v3 + 8), &__p);
  *(v3 + 32) = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B534D1B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v18 = a1;
  v16 = a3;
  v17 = a2;
  v8 = *(a2 + 32);
  v9 = *(a3 + 32);
  if (v8 >= *(a1 + 32))
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v17, &v16);
      if (*(v17 + 32) < *(v18 + 32))
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v10, v11);
      goto LABEL_10;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v18, &v17);
    if (*(v16 + 32) < *(v17 + 32))
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 32) < *(a3 + 32))
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v13, &v12);
    if (*(v13 + 32) < *(a2 + 32))
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v14, &v13);
      if (*(v14 + 32) < *(a1 + 32))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v15, &v14);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = *(v6 + 72);
        v8 = *(v6 + 32);
        v6 = v4;
        if (v7 < v8)
        {
          quasar::PronChoice::PronChoice(&v13, v4);
          v9 = v5;
          while (1)
          {
            v10 = v9;
            v11 = a1 + v9;
            *(a1 + v9 + 40) = *(a1 + v9);
            std::string::operator=((a1 + v9 + 48), (a1 + v9 + 8));
            *(v11 + 72) = *(v11 + 32);
            if (!v10)
            {
              break;
            }

            v9 = v10 - 40;
            if (v15 >= *(a1 + v10 - 8))
            {
              v12 = a1 + v10;
              goto LABEL_10;
            }
          }

          v12 = a1;
LABEL_10:
          *v12 = v13;
          std::string::operator=((a1 + v10 + 8), &__p);
          *(v12 + 32) = v15;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v4 = v6 + 40;
        v5 += 40;
      }

      while (v6 + 40 != a2);
    }
  }
}

void sub_1B534D40C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1 + 40;
    if (a1 + 40 != a2)
    {
      v5 = (a1 + 72);
      do
      {
        v6 = *(v3 + 72);
        v7 = *(v3 + 32);
        v3 = v4;
        if (v6 < v7)
        {
          quasar::PronChoice::PronChoice(&v11, v4);
          v8 = v5;
          do
          {
            LODWORD(v8[-2].__r_.__value_.__r.__words[2]) = v8[-3].__r_.__value_.__l.__data_;
            std::string::operator=(v8 - 1, (v8 - 64));
            v9 = &v8[-2].__r_.__value_.__r.__words[1];
            LODWORD(v8->__r_.__value_.__l.__data_) = v8[-2].__r_.__value_.__r.__words[1];
            v10 = *&v8[-4].__r_.__value_.__r.__words[2];
            v8 = (v8 - 40);
          }

          while (v13 < v10);
          *(v9 - 8) = v11;
          std::string::operator=(v9 - 1, &__p);
          *v9 = v13;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v4 = v3 + 40;
        v5 = (v5 + 40);
      }

      while (v3 + 40 != a2);
    }
  }
}

void sub_1B534D518(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PronChoice *,std::__less<void,void> &>(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = a2;
  quasar::PronChoice::PronChoice(&v15, a1);
  if (v17 >= *(v2 - 8))
  {
    v7 = a1 + 40;
    do
    {
      v5 = v7;
      if (v7 >= v2)
      {
        break;
      }

      v8 = *(v7 + 32);
      v7 += 40;
    }

    while (v17 >= v8);
  }

  else
  {
    v4 = a1;
    do
    {
      v5 = v4 + 40;
      v6 = *(v4 + 72);
      v4 += 40;
    }

    while (v17 >= v6);
  }

  v19 = v5;
  if (v5 < v2)
  {
    do
    {
      v9 = *(v2 - 8);
      v2 -= 40;
    }

    while (v17 < v9);
    v18 = v2;
  }

  if (v5 < v2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v19, &v18);
      v5 = v19;
      do
      {
        v10 = *(v5 + 72);
        v5 += 40;
      }

      while (v17 >= v10);
      v19 = v5;
      v11 = v18;
      do
      {
        v12 = *(v11 - 8);
        v11 -= 40;
      }

      while (v17 < v12);
      v18 = v11;
    }

    while (v5 < v11);
  }

  if (v5 - 40 != a1)
  {
    *a1 = *(v5 - 40);
    std::string::operator=((a1 + 8), (v5 - 32));
    *(a1 + 32) = *(v5 - 8);
  }

  *(v5 - 40) = v15;
  std::string::operator=((v5 - 32), &__p);
  *(v5 - 8) = v17;
  v13 = v19;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1B534D698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PronChoice *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  quasar::PronChoice::PronChoice(&v15, a1);
  v4 = 0;
  do
  {
    v5 = *(a1 + v4 + 72);
    v4 += 40;
  }

  while (v5 < v17);
  v6 = a1 + v4;
  v19 = a1 + v4;
  if (v4 == 40)
  {
    while (v6 < a2)
    {
      v7 = a2 - 40;
      v9 = *(a2 - 8);
      a2 -= 40;
      if (v9 < v17)
      {
        goto LABEL_9;
      }
    }

    v7 = a2;
  }

  else
  {
    do
    {
      v7 = a2 - 40;
      v8 = *(a2 - 8);
      a2 -= 40;
    }

    while (v8 >= v17);
  }

LABEL_9:
  v18 = v7;
  v10 = a1 + v4;
  if (v6 < v7)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v19, &v18);
      v10 = v19;
      do
      {
        v11 = *(v10 + 72);
        v10 += 40;
      }

      while (v11 < v17);
      v19 = v10;
      v12 = v18;
      do
      {
        v13 = *(v12 - 8);
        v12 -= 40;
      }

      while (v13 >= v17);
      v18 = v12;
    }

    while (v10 < v12);
  }

  if (v10 - 40 != a1)
  {
    *a1 = *(v10 - 40);
    std::string::operator=((a1 + 8), (v10 - 32));
    *(a1 + 32) = *(v10 - 8);
  }

  *(v10 - 40) = v15;
  std::string::operator=((v10 - 32), &__p);
  *(v10 - 8) = v17;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10 - 40;
}

void sub_1B534D820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(float *a1, uint64_t a2)
{
  v2 = a2;
  v23 = a2;
  v24 = a1;
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v20 = a1;
        v27 = (a2 - 40);
        v28 = a1 + 10;
        v9 = a1[18];
        v10 = *(a2 - 8);
        if (v9 < a1[8])
        {
          v5 = &v20;
          if (v10 >= v9)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v20, &v28);
            if (v27[8] >= v28[8])
            {
              return 1;
            }

            v5 = &v28;
          }

          v6 = &v27;
          goto LABEL_28;
        }

        if (v10 >= v9)
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v28, &v27);
        v7 = v28[8];
        v8 = v20[8];
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,0>(a1, (a1 + 10), (a1 + 20), a2 - 40);
        return 1;
      case 5:
        v20 = a1;
        v27 = a1 + 20;
        v28 = a1 + 10;
        v25 = a2 - 40;
        v26 = a1 + 30;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,0>(a1, (a1 + 10), (a1 + 20), (a1 + 30));
        if (*(v2 - 8) >= a1[38])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v26, &v25);
        if (v26[8] >= a1[28])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v27, &v26);
        if (v27[8] >= a1[18])
        {
          return 1;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v28, &v27);
        v7 = v28[8];
        v8 = a1[8];
        break;
      default:
        goto LABEL_18;
    }

    if (v7 < v8)
    {
      v5 = &v20;
      v6 = &v28;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v23 = a2 - 40;
    if (*(a2 - 8) < a1[8])
    {
      v5 = &v24;
      v6 = &v23;
LABEL_28:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v5, v6);
    }

    return 1;
  }

LABEL_18:
  v11 = a1 + 20;
  v20 = a1;
  v27 = a1 + 20;
  v28 = a1 + 10;
  v12 = a1[18];
  v13 = a1[28];
  if (v12 < a1[8])
  {
    v14 = &v20;
    if (v13 >= v12)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v20, &v28);
      if (v27[8] >= v28[8])
      {
        goto LABEL_33;
      }

      v14 = &v28;
    }

    v15 = &v27;
    goto LABEL_32;
  }

  if (v13 < v12)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v28, &v27);
    if (v28[8] < v20[8])
    {
      v14 = &v20;
      v15 = &v28;
LABEL_32:
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(v14, v15);
    }
  }

LABEL_33:
  v16 = (a1 + 30);
  if (v16 == v2)
  {
    return 1;
  }

  v17 = 0;
  while (1)
  {
    if (*(v16 + 32) < v11[8])
    {
      quasar::PronChoice::PronChoice(&v20, v16);
      do
      {
        v18 = v11;
        v11[10] = *v11;
        std::string::operator=(v11 + 2, (v11 + 2));
        v11[18] = v11[8];
        if (v11 == v24)
        {
          break;
        }

        v11 -= 10;
      }

      while (v22 < *(v18 - 2));
      *v18 = v20;
      std::string::operator=((v18 + 2), &__p);
      v18[8] = v22;
      v2 = v23;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (++v17 == 8)
      {
        break;
      }
    }

    v11 = v16;
    v16 += 40;
    if (v16 == v2)
    {
      return 1;
    }
  }

  return v16 + 40 == v2;
}

void sub_1B534DB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *,quasar::PronChoice *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 41)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 40 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(v7, a4, v9, v12);
        v12 -= 40;
        --v11;
      }

      while (v11);
    }

    v18 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*(v13 + 32) < *(v19 + 32))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<quasar::PronChoice *&,quasar::PronChoice *&>(&v18, &v19);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(v19, a4, v9, v19);
          v13 = v18;
        }

        v13 += 40;
        v18 = v13;
      }

      while (v13 != a3);
      v7 = v19;
      v8 = v6 - v19;
    }

    if (v8 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,quasar::PronChoice *>(v7, v6, a4, v14);
        v6 -= 40;
        v15 = v14 >= 2;
        v16 = v14-- == 2;
      }

      while (!v16 && v15);
      return v18;
    }

    return v13;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v9 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 40 * v9;
      if ((0x999999999999999ALL * ((a4 - a1) >> 3) + 2) < a3 && *(v10 + 32) < *(v10 + 72))
      {
        v10 += 40;
        v9 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      }

      if (*(v10 + 32) >= *(a4 + 32))
      {
        quasar::PronChoice::PronChoice(&v15, a4);
        do
        {
          v11 = v10;
          v12 = (v10 + 8);
          *v5 = *v10;
          std::string::operator=((v5 + 8), (v10 + 8));
          *(v5 + 32) = *(v10 + 32);
          if (v7 < v9)
          {
            break;
          }

          v13 = 2 * v9;
          v9 = (2 * v9) | 1;
          v10 = a1 + 40 * v9;
          v14 = v13 + 2;
          if (v14 < a3 && *(v10 + 32) < *(v10 + 72))
          {
            v10 += 40;
            v9 = v14;
          }

          v5 = v11;
        }

        while (*(v10 + 32) >= v17);
        *v11 = v15;
        std::string::operator=(v12, &__p);
        *(v11 + 32) = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_1B534DE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,quasar::PronChoice *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    quasar::PronChoice::PronChoice(&v10, a1);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(a1, a3, a4);
    v9 = v8;
    if (v8 == a2 - 40)
    {
      *v8 = v10;
      std::string::operator=((v8 + 8), &__p);
      *(v9 + 32) = v12;
    }

    else
    {
      *v8 = *(a2 - 40);
      std::string::operator=((v8 + 8), (a2 - 32));
      *(v9 + 32) = *(a2 - 8);
      *(a2 - 40) = v10;
      std::string::operator=((a2 - 32), &__p);
      *(a2 - 8) = v12;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(a1, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - a1) >> 3));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B534DFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 40 * v5;
    v8 = v7 + 40;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v9 = *(v7 + 72);
      v10 = *(v7 + 112);
      v11 = v7 + 80;
      if (v9 >= v10)
      {
        v5 = (2 * v5) | 1;
      }

      else
      {
        v8 = v11;
        v5 = 2 * v5 + 2;
      }
    }

    *a1 = *v8;
    std::string::operator=((a1 + 8), (v8 + 8));
    *(a1 + 32) = *(v8 + 32);
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,quasar::PronChoice *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    v6 = a1 + 40 * v5;
    if (*(v6 + 32) < *(a2 - 8))
    {
      v7 = a2 - 40;
      quasar::PronChoice::PronChoice(&v10, a2 - 40);
      do
      {
        v8 = v6;
        v9 = (v6 + 8);
        *v7 = *v6;
        std::string::operator=((v7 + 8), (v6 + 8));
        *(v7 + 32) = *(v6 + 32);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 40 * v5;
        v7 = v8;
      }

      while (*(v6 + 32) < v12);
      *v8 = v10;
      std::string::operator=(v9, &__p);
      *(v8 + 32) = v12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B534E164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__tree<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,std::vector<std::vector<quasar::PronChoice>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::vector<quasar::PronChoice>>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

void std::vector<std::vector<quasar::PronChoice>>::__append(const void **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = a1[1] - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<quasar::PronChoice>>::~__split_buffer(v18);
  }
}

uint64_t std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronChoice const&>(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  quasar::PronChoice::PronChoice((40 * v2), a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = (40 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v13);
  return v12;
}

void sub_1B534E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>,std::__wrap_iter<quasar::PronChoice *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2 - a1;
  if (a2 != a1)
  {
    v8 = a2;
    if (v5 >= 41)
    {
      v10 = (0xCCCCCCCCCCCCCCCDLL * (v5 >> 3) - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 40 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(a1, a4, 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3), v12);
        v12 -= 40;
        --v11;
      }

      while (v11);
    }

    v4 = v8;
    if (v8 != a3)
    {
      v13 = v8;
      do
      {
        if (*(v13 + 32) < *(a1 + 32))
        {
          quasar::PronChoice::PronChoice(&v17, v13);
          *v13 = *a1;
          std::string::operator=((v13 + 8), (a1 + 8));
          *(v13 + 32) = *(a1 + 32);
          *a1 = v17;
          std::string::operator=((a1 + 8), &__p);
          *(a1 + 32) = v19;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(a1, a4, 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3), a1);
        }

        v13 += 40;
      }

      while (v13 != a3);
      v4 = a3;
    }

    if (v5 >= 41)
    {
      v14 = 0xCCCCCCCCCCCCCCCDLL * (v5 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<quasar::PronChoice *>>(a1, v8, a4, v14);
        v8 -= 40;
      }

      while (v14-- > 2);
    }
  }

  return v4;
}

void sub_1B534E604(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xCCCCCCCCCCCCCCCDLL * ((a4 - a1) >> 3)))
    {
      v9 = (0x999999999999999ALL * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 40 * v9;
      if ((0x999999999999999ALL * ((a4 - a1) >> 3) + 2) < a3 && *(v10 + 32) < *(v10 + 72))
      {
        v10 += 40;
        v9 = 0x999999999999999ALL * ((a4 - a1) >> 3) + 2;
      }

      if (*(v10 + 32) >= *(a4 + 32))
      {
        quasar::PronChoice::PronChoice(&v15, a4);
        do
        {
          v11 = v5;
          v5 = v10;
          v12 = (v10 + 8);
          *v11 = *v10;
          std::string::operator=((v11 + 8), (v10 + 8));
          *(v11 + 32) = *(v10 + 32);
          if (v7 < v9)
          {
            break;
          }

          v13 = 2 * v9;
          v9 = (2 * v9) | 1;
          v10 = a1 + 40 * v9;
          v14 = v13 + 2;
          if (v14 < a3 && *(v10 + 32) < *(v10 + 72))
          {
            v10 += 40;
            v9 = v14;
          }
        }

        while (*(v10 + 32) >= v17);
        *v5 = v15;
        std::string::operator=(v12, &__p);
        *(v5 + 32) = v17;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }
  }
}

void sub_1B534E798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__wrap_iter<quasar::PronChoice *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    quasar::PronChoice::PronChoice(&v10, a1);
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(a1, a3, a4);
    v9 = v8;
    if (a2 - 40 == v8)
    {
      *v8 = v10;
      std::string::operator=((v8 + 8), &__p);
      *(v9 + 32) = v12;
    }

    else
    {
      *v8 = *(a2 - 40);
      std::string::operator=((v8 + 8), (a2 - 32));
      *(v9 + 32) = *(a2 - 8);
      *(a2 - 40) = v10;
      std::string::operator=((a2 - 32), &__p);
      *(a2 - 8) = v12;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(a1, v9 + 40, a3, 0xCCCCCCCCCCCCCCCDLL * ((v9 + 40 - a1) >> 3));
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1B534E8C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1;
    a1 += 40 * v5 + 40;
    v8 = 2 * v5;
    v5 = (2 * v5) | 1;
    v9 = v8 + 2;
    if (v9 < a3 && *(a1 + 32) < *(a1 + 72))
    {
      a1 += 40;
      v5 = v9;
    }

    *v7 = *a1;
    std::string::operator=((v7 + 8), (a1 + 8));
    *(v7 + 32) = *(a1 + 32);
  }

  while (v5 <= v6);
  return a1;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<quasar::PronChoice *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = (a4 - 2) >> 1;
    v6 = a1 + 40 * v5;
    if (*(v6 + 32) < *(a2 - 8))
    {
      v7 = a2 - 40;
      quasar::PronChoice::PronChoice(&v10, a2 - 40);
      do
      {
        v8 = v6;
        v9 = (v6 + 8);
        *v7 = *v6;
        std::string::operator=((v7 + 8), (v6 + 8));
        *(v7 + 32) = *(v6 + 32);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = a1 + 40 * v5;
        v7 = v8;
      }

      while (*(v6 + 32) < v12);
      *v8 = v10;
      std::string::operator=(v9, &__p);
      *(v8 + 32) = v12;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }
}

void sub_1B534EA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<quasar::PronChoice>::__append(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0;
        *(v4 + 16) = 0;
        *(v4 + 24) = 0;
        *(v4 + 8) = 0;
        *(v4 + 32) = 0;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    result[1] = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0;
      *(v12 + 16) = 0;
      *(v12 + 24) = 0;
      *(v12 + 8) = 0;
      *(v12 + 32) = 0;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = result[1];
    v14 = (v11 + *result - v13);
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = v3[2];
    *(v3 + 1) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v17);
  }

  return result;
}

void sub_1B534EC0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *quasar::joinToStream<std::unordered_set<std::string>>(void *result, uint64_t a2, uint64_t *a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = 1;
    do
    {
      if ((v6 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, *a3, a3[1]);
      }

      v7 = *(v3 + 39);
      if (v7 >= 0)
      {
        v8 = (v3 + 2);
      }

      else
      {
        v8 = v3[2];
      }

      if (v7 >= 0)
      {
        v9 = *(v3 + 39);
      }

      else
      {
        v9 = v3[3];
      }

      result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v8, v9);
      v6 = 0;
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

uint64_t std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronChoice>(uint64_t *a1, uint64_t a2)
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

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v6);
  }

  v13 = 0;
  v14 = 40 * v2;
  quasar::PronChoice::PronChoice((40 * v2), a2);
  v15 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = (40 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v13);
  return v12;
}

void sub_1B534EDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::TrainingGraphCompiler::TrainingGraphCompiler(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = 0;
  v9 = a1 + 3;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 3), *a5, a5[1], (a5[1] - *a5) >> 2);
  a1[6] = 0;
  a1[7] = 0x43E800000;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0x100000002;
  v10 = *a6;
  *(a1 + 22) = *(a6 + 2);
  a1[10] = v10;
  v11 = *a1;
  std::__sort<std::__less<int,int> &,int *>();
  v13 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<int *>,std::__wrap_iter<int *>,std::__equal_to &>(a1[3], a1[4]);
  v14 = a1[3];
  v15 = a1[4];
  if (v13 != v15)
  {
    v12 = a1[4];
    v15 = v13;
    a1[4] = v13;
  }

  v16 = v11[1];
  if (v15 == v14)
  {
    v26 = *(v16 - 1);
  }

  else
  {
    v17 = 0;
    v18 = v15 - v14;
    if (v18 <= 1)
    {
      v18 = 1;
    }

    do
    {
      if (v16 != *v11)
      {
        v19 = v14[v17];
        v20 = *v11;
        v21 = v16 - *v11;
        do
        {
          v22 = v21 >> 1;
          v23 = &v20[v21 >> 1];
          v24 = *v23;
          v12 = v23 + 1;
          v21 += ~(v21 >> 1);
          if (v24 < v19)
          {
            v20 = v12;
          }

          else
          {
            v21 = v22;
          }
        }

        while (v21);
        if (v20 != v16 && v19 >= *v20)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v31);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "Disambiguation symbol ", 22);
          v30 = MEMORY[0x1B8C84C00](v29, *(*v9 + 4 * v17));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " is also a phone.", 17);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v31);
        }
      }

      ++v17;
    }

    while (v17 != v18);
    v25 = *(v15 - 1);
    if (*(v16 - 1) <= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = *(v16 - 1);
    }
  }

  v27 = (**a3)(a3, v12);
  if ((*(*a3 + 8))(a3) != v27 - 1)
  {
    fst::AddSubsequentialLoop<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(v26 + 1, a1[2]);
  }

  fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1[2]);
  return a1;
}

void fst::AddSubsequentialLoop<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(unsigned int a1, uint64_t a2)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  (*(*a2 + 128))(a2, &v12);
  while (1)
  {
    if (!v12)
    {
      if (v15 >= v13)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    if ((*(*v12 + 16))(v12))
    {
      break;
    }

    if (v12)
    {
      v4 = (*(*v12 + 24))();
      goto LABEL_8;
    }

LABEL_7:
    v4 = v15;
LABEL_8:
    v11 = v4;
    v10[0] = (*(*a2 + 32))(a2);
    v19 = 2139095040;
    if (v10[0] != INFINITY)
    {
      std::vector<int>::push_back[abi:ne200100](&v16, &v11);
    }

    if (v12)
    {
      (*(*v12 + 32))(v12);
    }

    else
    {
      ++v15;
    }
  }

  if (v12)
  {
    (*(*v12 + 8))();
  }

LABEL_15:
  v5 = (*(*a2 + 200))(a2);
  v12 = a1;
  v13 = 0;
  v14 = v5;
  (*(*a2 + 208))(a2, v5, &v12);
  (*(*a2 + 184))(a2, v5, 0.0);
  v6 = v16;
  if (v17 == v16)
  {
    if (v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = v6[v7];
      v9 = (*(*a2 + 32))(a2, v8);
      LODWORD(v10[0]) = a1;
      v10[1] = 0.0;
      v10[2] = v9;
      LODWORD(v10[3]) = v5;
      (*(*a2 + 208))(a2, v8, v10);
      v6 = v16;
      v14 = v16[v7++];
    }

    while (v7 < v17 - v16);
LABEL_20:
    v17 = v6;
    operator delete(v6);
  }
}

void sub_1B534F36C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSort<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1)
{
  v1[0] = a1;
  v1[1] = &v4;
  *__p = 0u;
  v3 = 0u;
  fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, v1);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B534F420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::MakeLinearAcceptor<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>(void *a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a2 + 200))(a2);
  (*(*a2 + 176))(a2, v4);
  if (a1[1] == *a1)
  {
    v6 = v4;
  }

  else
  {
    v5 = 0;
    do
    {
      v6 = (*(*a2 + 200))(a2);
      v8[0] = *(*a1 + 4 * v5);
      v8[1] = v8[0];
      v8[2] = 0;
      v8[3] = v6;
      (*(*a2 + 208))(a2, v4, v8);
      ++v5;
      v4 = v6;
    }

    while (v5 < (a1[1] - *a1) >> 2);
  }

  return (*(*a2 + 184))(a2, v6, 0.0);
}

void sub_1B534F9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a15);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a17);
  _Unwind_Resume(a1);
}

void fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  if (a4[6] == 1)
  {
    if (!*a4)
    {
      operator new();
    }

    (*(**a4 + 16))(*a4, 0);
    fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::SequenceComposeFilter<fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
  }

  if (!*a4)
  {
    operator new();
  }

  (*(**a4 + 16))(*a4, 0);
  fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::TableMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
}

void fst::ComposeContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>()
{
  v0 = FLAGS_fst_default_cache_gc;
  v1 = 0u;
  v2 = 0u;
  v3 = 0u;
  v4 = 0;
  fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase2<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>();
}

void fst::TableCompose<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    v4 = FLAGS_fst_default_cache_gc;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    operator new();
  }

  v4 = FLAGS_fst_default_cache_gc;
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  operator new();
}

void fst::RemoveSomeInputSymbols<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>(uint64_t *a1, uint64_t a2)
{
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v7, a1);
  kaldi::ConstIntegerSet<int>::ConstIntegerSet(v3, v7);
  fst::Map<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::RemoveSomeInputSymbolsMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(a2, v3);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    operator delete(v4);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  if (v8)
  {
    operator delete(v8);
  }
}

void sub_1B535000C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a9);
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet(&a17);
  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocal<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsLocalClass(&v1, a1);
  if (__p)
  {
    v5 = __p;
    operator delete(__p);
  }

  if (v2)
  {
    v3 = v2;
    operator delete(v2);
  }
}

uint64_t fst::DeterminizeStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, char a5, float a6)
{
  v12 = (*(*a1 + 120))(a1);
  (*(*a2 + 288))(a2, v12);
  v13 = (*(*a1 + 112))(a1);
  (*(*a2 + 280))(a2, v13);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizerStar(v16, a1, a4, a5, a6);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Determinize(v16, a3);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Output(v16, a2, 1);
  v14 = v16[90];
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizerStar(v16);
  return v14;
}

void sub_1B5350200(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizerStar(va);
  _Unwind_Resume(a1);
}

void *fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D0D3C8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D0D3C8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return *(a1 + 24) >= *(a1 + 16);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  ++*(a1 + 24);
  return result;
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  *(a1 + 24) = 0;
  return result;
}

void *fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  return a1;
}

void fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D430;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return a1[5] >= a1[3];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 32))();
  }

  else
  {
    return a1[2] + 16 * a1[5];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  ++*(a1 + 40);
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Position_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 48))();
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 56))();
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Seek_(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Flags_(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 72))();
  }

  else
  {
    return 15;
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetFlags_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

uint64_t fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeleteStates(uint64_t a1)
{
  return (*(**(a1 + 24) + 216))();
}

{
  return (*(**(a1 + 24) + 224))();
}

uint64_t fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeleteArcs(uint64_t a1)
{
  return (*(**(a1 + 24) + 232))();
}

{
  return (*(**(a1 + 24) + 240))();
}

uint64_t fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator=(uint64_t a1, uint64_t a2)
{
  v4[0] = &unk_1F2D0D870;
  v4[1] = a2;
  (*(**(a1 + 24) + 168))(*(a1 + 24), v4);
  return a1;
}

uint64_t covariant return thunk tofst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::operator=(uint64_t a1, uint64_t a2)
{
  v4[0] = &unk_1F2D0D870;
  v4[1] = a2;
  (*(**(a1 + 8) + 168))(*(a1 + 8), v4);
  return a1;
}

uint64_t non-virtual thunk tofst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeleteStates(uint64_t a1)
{
  return (*(**(a1 + 8) + 216))();
}

{
  return (*(**(a1 + 8) + 224))();
}

uint64_t non-virtual thunk tofst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::DeleteArcs(uint64_t a1)
{
  return (*(**(a1 + 8) + 232))();
}

{
  return (*(**(a1 + 8) + 240))();
}

void *fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D768;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  return a1;
}

void fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D768;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Done_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return a1[5] >= a1[3];
  }
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Value_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 32))();
  }

  else
  {
    return a1[2] + 16 * a1[5];
  }
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  ++*(a1 + 40);
  return result;
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Position_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 48))();
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 56))();
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Seek_(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Flags_(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 72))();
  }

  else
  {
    return 15;
  }
}

uint64_t fst::ArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetFlags_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void *fst::MutableArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MutableArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D7E8;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::MutableArcIterator<fst::MutableArcPosingFst<fst::ArcTpl<fst::LogWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~MutableArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D7E8;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

void *fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D0D940;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D0D940;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 16))();
  }

  else
  {
    return *(a1 + 24) >= *(a1 + 16);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Value_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  ++*(a1 + 24);
  return result;
}

uint64_t fst::StateIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  *(a1 + 24) = 0;
  return result;
}

void *fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D998;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  return a1;
}

void fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::~ArcIterator(void *a1)
{
  *a1 = &unk_1F2D0D998;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  else
  {
    v3 = a1[4];
    if (v3)
    {
      --*v3;
    }
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Done_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 24))();
  }

  else
  {
    return a1[5] >= a1[3];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Value_(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    return (*(*v2 + 32))();
  }

  else
  {
    return a1[2] + 16 * a1[5];
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Next_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  ++*(a1 + 40);
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Position_(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    return (*(*v2 + 48))();
  }

  else
  {
    return *(a1 + 40);
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Reset_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 56))();
  }

  *(a1 + 40) = 0;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Seek_(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 64))();
  }

  *(a1 + 40) = a2;
  return result;
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::Flags_(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    return (*(*v1 + 72))();
  }

  else
  {
    return 15;
  }
}

uint64_t fst::ArcIterator<fst::ArcPosingFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LogWeightTpl<float>,int>>>::SetFlags_(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 80))();
  }

  return result;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Determinize(uint64_t a1, _BYTE *a2)
{
  v4 = (*(**(a1 + 72) + 24))(*(a1 + 72));
  if (v4 != -1)
  {
    v5 = *(a1 + 204);
    LODWORD(v19) = v4;
    *(&v19 + 4) = v5;
    __p = 0;
    v17 = 0;
    v18 = 0;
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](&__p, &v19);
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetToStateId(a1, &__p);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      while (1)
      {
        v7 = *(a1 + 32);
        v19 = *(*(*(a1 + 8) + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7);
        *(a1 + 32) = v7 + 1;
        *(a1 + 40) = v6 - 1;
        std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
        fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessSubset(a1, &v19);
        if (a2 && *a2 == 1)
        {
          fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Debug(a1);
        }

        v9 = *(a1 + 84);
        if (v9 >= 1 && 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 56) - *(a1 + 48)) >> 3) > v9)
        {
          break;
        }

        v6 = *(a1 + 40);
        if (!v6)
        {
          goto LABEL_16;
        }
      }

      if ((*(a1 + 89) & 1) == 0)
      {
        v12 = fst::cerr(v8);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Determinization aborted since passed ", 37);
        v14 = MEMORY[0x1B8C84C00](v13, *(a1 + 84));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " states.\n", 9);
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "max-states reached in determinization");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Determinization terminated since passed ", 40);
        v11 = MEMORY[0x1B8C84C00](v10, *(a1 + 84));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " states, partial results will be generated.", 43);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }

      *(a1 + 90) = 1;
    }
  }

LABEL_16:
  *(a1 + 88) = 1;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Output(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(a1 + 88) = 0;
    v5 = (a1 + 48);
    v6 = *(a1 + 56) - *(a1 + 48);
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::FreeMostMemory(a1);
  }

  else
  {
    v5 = (a1 + 48);
    v6 = *(a1 + 56) - *(a1 + 48);
  }

  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
  (*(*a2 + 224))(a2);
  if (v7)
  {
    if (v7 < 1)
    {
      (*(*a2 + 176))(a2, 0);
      goto LABEL_50;
    }

    v8 = v7;
    do
    {
      (*(*a2 + 200))(a2);
      --v8;
    }

    while (v8);
    (*(*a2 + 176))(a2, 0);
    v9 = 0;
    v33 = v7 & 0x7FFFFFFF;
    while (1)
    {
      v10 = (*v5 + 24 * v9);
      v12 = *v10;
      v11 = v10[1];
      while (v12 != v11)
      {
        memset(&__p, 0, sizeof(__p));
        fst::StringRepository<int,int>::SeqOfId(a1 + 136, v12[1], &__p);
        begin = __p.__begin_;
        end = __p.__end_;
        if (v12[2] != -1)
        {
          if ((__p.__end_ - __p.__begin_) <= 4)
          {
            v37 = v12[2];
            v18 = v9;
          }

          else
          {
            v16 = 0;
            v17 = v9;
            do
            {
              v18 = (*(*a2 + 200))(a2);
              v37 = v18;
              v19 = 0;
              if (!v16)
              {
                v19 = v12[3];
              }

              v36 = v19;
              v20 = *v12;
              if (v16)
              {
                v20 = 0;
              }

              LODWORD(p_p) = v20;
              HIDWORD(p_p) = __p.__begin_[v16];
              (*(*a2 + 208))(a2, v17, &p_p);
              begin = __p.__begin_;
              end = __p.__end_;
              v21 = v16 + 2;
              ++v16;
              v17 = v18;
            }

            while (v21 < __p.__end_ - __p.__begin_);
            v37 = v12[2];
            if ((__p.__end_ - __p.__begin_) > 1)
            {
              v22 = 0;
              v23 = 0;
LABEL_31:
              v36 = v23;
              if (v22)
              {
                v28 = *v12;
              }

              else
              {
                v28 = 0;
              }

              LODWORD(p_p) = v28;
              if (end == begin)
              {
                v29 = 0;
              }

              else
              {
                v29 = *(end - 1);
              }

              HIDWORD(p_p) = v29;
              (*(*a2 + 208))(a2, v18, &p_p);
              goto LABEL_38;
            }
          }

          v23 = v12[3];
          v22 = 1;
          goto LABEL_31;
        }

        v24 = v9;
        if (__p.__end_ == __p.__begin_)
        {
          goto LABEL_27;
        }

        v25 = 0;
        v26 = v9;
        do
        {
          v24 = (*(*a2 + 200))(a2);
          v37 = v24;
          v27 = 0;
          if (!v25)
          {
            v27 = v12[3];
          }

          v36 = v27;
          LODWORD(p_p) = 0;
          HIDWORD(p_p) = __p.__begin_[v25];
          (*(*a2 + 208))(a2, v26, &p_p);
          ++v25;
          v26 = v24;
        }

        while (v25 < __p.__end_ - __p.__begin_);
        v13.n128_u64[0] = 0;
        if (__p.__end_ == __p.__begin_)
        {
LABEL_27:
          v13.n128_u32[0] = v12[3];
        }

        (*(*a2 + 184))(a2, v24, v13);
LABEL_38:
        if (__p.__begin_)
        {
          __p.__end_ = __p.__begin_;
          operator delete(__p.__begin_);
        }

        v12 += 4;
      }

      if (a3)
      {
        v30 = *v10;
        v10[1] = 0;
        v10[2] = 0;
        *v10 = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      if (++v9 == v33)
      {
LABEL_50:
        if (a3)
        {
          *&__p.__begin_ = *(a1 + 48);
          v32 = *(a1 + 64);
          *(a1 + 56) = 0;
          *(a1 + 64) = 0;
          *(a1 + 48) = 0;
          __p.__end_cap_.__value_ = v32;
          fst::StringRepository<int,int>::Destroy(a1 + 136);
          p_p = &__p;
          std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&p_p);
        }

        return;
      }
    }
  }

  v31 = *(*a2 + 176);

  v31(a2, 0xFFFFFFFFLL);
}

void sub_1B5352C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::DeterminizerStar(uint64_t a1, uint64_t a2, int a3, char a4, float a5)
{
  *(a1 + 64) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v10 = (*(*a2 + 88))(a2, 0);
  *(a1 + 92) = a5;
  *(a1 + 72) = v10;
  *(a1 + 80) = a5;
  *(a1 + 84) = a3;
  *(a1 + 88) = 0;
  *(a1 + 89) = a4;
  *(a1 + 90) = 0;
  if ((*(*a2 + 64))(a2, 1, 0))
  {
    v11 = (*(*a2 + 160))(a2) / 2 + 3;
  }

  else
  {
    v11 = 20;
  }

  std::unordered_map<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const* const,int>>>::unordered_map(a1 + 96, v11, a1 + 91, (a1 + 92));
  *(a1 + 184) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 192) = 1065353216;
  *(a1 + 200) = xmmword_1B5AEDEC0;
  return a1;
}

void sub_1B5352DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::~deque[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,std::allocator<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const* const,int>>>::unordered_map(uint64_t a1, size_t a2, uint64_t a3, int *a4)
{
  v5 = *a4;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = v5;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **,std::allocator<fst::DfsState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>> **>>::~__split_buffer(a1);
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(a1, v11);
    }

    v12 = 12 * v8;
    v13 = *a2;
    *(v12 + 8) = *(a2 + 2);
    *v12 = v13;
    v7 = 12 * v8 + 12;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 8) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 12;
  }

  *(a1 + 8) = v7;
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetToStateId(uint64_t a1, void *a2)
{
  __p = a2;
  v2 = std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::find<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*>(a1 + 96, &__p);
  if (!v2)
  {
    operator new();
  }

  return *(v2 + 6);
}

void sub_1B5353158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessSubset(fst *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  __p = 0;
  v6 = 0;
  v7 = 0;
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::EpsilonClosure(a1, v3, &__p);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessFinal(a1, &__p, v4);
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessTransitions(a1, &__p, v4);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1B53531FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Debug(fst *a1)
{
  v2 = fst::cerr(a1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Debug function called (probably SIGUSR1 caught).\n", 49);
  memset(v50, 0, sizeof(v50));
  v51 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(v50, a1 + 96);
  v3 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v50);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 7) - *(a1 + 6)) >> 3);
  v5 = v4 - 2;
  if (v4 <= 2)
  {
    v6 = fst::cerr(v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Nothing to trace back");
    exit(1);
  }

  v7 = std::vector<int>::vector[abi:ne200100](v50, v4 - 1);
  if (v5)
  {
    v8 = 0;
    v9 = *(a1 + 6);
    do
    {
      v10 = (v9 + 24 * v8);
      v11 = *v10;
      v12 = v10[1] - *v10;
      if (v12)
      {
        v13 = v12 >> 4;
        v14 = *&v50[0];
        if (v13 <= 1)
        {
          v13 = 1;
        }

        v15 = (v11 + 8);
        do
        {
          v17 = *v15;
          v15 += 4;
          v16 = v17;
          if (v5 >= v17 && v8 < v16)
          {
            *(v14 + 4 * v16) = v8;
          }

          --v13;
        }

        while (v13);
      }

      ++v8;
    }

    while (v8 != v5);
    __p = 0;
    v48 = 0;
    v49 = 0;
    if ((v5 - 1) <= 0xFFFFFFFD)
    {
      v19 = 0;
      do
      {
        v20 = v5;
        LODWORD(v5) = *(*&v50[0] + 4 * v5);
        v21 = *(*(a1 + 6) + 24 * v5);
        v22 = *(*(a1 + 6) + 24 * v5 + 8) - v21;
        if (v22)
        {
          v23 = v22 >> 4;
          if (v23 <= 1)
          {
            v23 = 1;
          }

          v24 = (v21 + 4);
          while (v24[1] != v20)
          {
            v24 += 4;
            if (!--v23)
            {
              goto LABEL_39;
            }
          }

          v25 = *(v24 - 1);
          v26 = *v24;
          if (v19 >= v49)
          {
            v27 = (v19 - __p) >> 3;
            if ((v27 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v28 = (v49 - __p) >> 2;
            if (v28 <= v27 + 1)
            {
              v28 = v27 + 1;
            }

            if (v49 - __p >= 0x7FFFFFFFFFFFFFF8)
            {
              v29 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            if (v29)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__p, v29);
            }

            v30 = (8 * v27);
            *v30 = v25 | (v26 << 32);
            v19 = (8 * v27 + 8);
            v31 = v30 - (v48 - __p);
            memcpy(v31, __p, v48 - __p);
            v7 = __p;
            __p = v31;
            v48 = v19;
            v49 = 0;
            if (v7)
            {
              operator delete(v7);
            }
          }

          else
          {
            *v19 = v25 | (v26 << 32);
            v19 += 8;
          }

          v48 = v19;
        }

LABEL_39:
        ;
      }

      while ((v5 - 1) < 0xFFFFFFFE);
    }

    if (v5 == -1)
    {
      v32 = fst::cerr(v7);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Traceback did not reach start state (possibly debug-code error)", 63);
    }
  }

  else
  {
    __p = 0;
    v48 = 0;
    v49 = 0;
  }

  v33 = fst::cerr(v7);
  begin = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Traceback below (or on standard error) in format ilabel (olabel olabel) ilabel (olabel) ...\n", 92);
  v35 = (v48 - __p) >> 3;
  if (v35 >= 1)
  {
    do
    {
      v36 = fst::cerr(begin);
      v37 = MEMORY[0x1B8C84C00](v36, *(__p + 2 * v35 - 2));
      LOBYTE(v46.__begin_) = 32;
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, &v46, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "( ", 2);
      memset(&v46, 0, sizeof(v46));
      fst::StringRepository<int,int>::SeqOfId(a1 + 136, *(__p + 2 * v35 - 1), &v46);
      if (v46.__end_ != v46.__begin_)
      {
        v40 = 0;
        do
        {
          v41 = fst::cerr(v39);
          v42 = MEMORY[0x1B8C84C00](v41, v46.__begin_[v40]);
          v52 = 32;
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v52, 1);
          ++v40;
        }

        while (v40 < v46.__end_ - v46.__begin_);
      }

      v43 = fst::cerr(v39);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ") ", 2);
      begin = v46.__begin_;
      if (v46.__begin_)
      {
        v46.__end_ = v46.__begin_;
        operator delete(v46.__begin_);
      }
    }

    while (v35-- > 1);
  }

  v45 = fst::cerr(begin);
  LOBYTE(v46.__begin_) = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, &v46, 1);
  exit(1);
}

void sub_1B5353598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::TempArc>>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = *(result + 8) - *result;
    v13 = v11 - v12;
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<int>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
    v4[2] = 0;
    *v4 = *a2;
    v4[2] = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 3);
  }

  v3[1] = v6;
  return result;
}

int64x2_t std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::push_front(int64x2_t *a1, _OWORD *a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 >> 8));
  v7 = *v6 + 16 * v4;
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4096;
  }

  *(v7 - 16) = *a2;
  result = vaddq_s64(a1[2], xmmword_1B5AE1340);
  a1[2] = result;
  return result;
}

__n128 std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::push_back(void *a1, __n128 *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 32 * (v4 - v5) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  result = *a2;
  *(*(v5 + ((v7 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v7) = *a2;
  ++a1[5];
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::find<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 3;
      v6 = v8 + v6 * v7 + 103333 * v9;
      v7 *= 23531;
    }

    while (v4 != v5);
  }

  v10 = *(a1 + 8);
  if (!*&v10)
  {
    return 0;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v10)
    {
      v13 = v6 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14)
  {
    return 0;
  }

  for (i = *v14; i; i = *i)
  {
    v16 = i[1];
    if (v16 == v6)
    {
      if (fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual::operator()((a1 + 36), i[2], *a2))
      {
        return i;
      }
    }

    else
    {
      if (v12 > 1)
      {
        if (v16 >= *&v10)
        {
          v16 %= *&v10;
        }
      }

      else
      {
        v16 &= *&v10 - 1;
      }

      if (v16 != v13)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual::operator()(float *a1, unint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v5 = *a3;
  if (v3 - *a2 != a3[1] - *a3)
  {
    return 0;
  }

  while (v4 < v3)
  {
    if (*v4 != *v5 || *(v4 + 4) != *(v5 + 4))
    {
      return 0;
    }

    v6 = *(v4 + 8);
    v7 = *(v5 + 8);
    if (v7 > (*a1 + v6) || v6 > (*a1 + v7))
    {
      return 0;
    }

    v4 += 12;
    v5 += 12;
  }

  return 1;
}

uint64_t std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__init_with_size[abi:ne200100]<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element*,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5353A4C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::__emplace_unique_key_args<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::piecewise_construct_t const&,std::tuple<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const* const&>,std::tuple<>>(uint64_t a1, uint64_t **a2)
{
  v4 = **a2;
  v5 = (*a2)[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4;
      v9 = v4[1];
      v4 += 3;
      v6 = v8 + v6 * v7 + 103333 * v9;
      v7 *= 23531;
    }

    while (v4 != v5);
  }

  v10 = *(a1 + 8);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  v12 = v11.u32[0];
  if (v11.u32[0] > 1uLL)
  {
    v13 = v6;
    if (v6 >= *&v10)
    {
      v13 = v6 % *&v10;
    }
  }

  else
  {
    v13 = (*&v10 - 1) & v6;
  }

  v14 = *(*a1 + 8 * v13);
  if (!v14 || (v15 = *v14) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v16 = v15[1];
    if (v16 == v6)
    {
      break;
    }

    if (v12 > 1)
    {
      if (v16 >= *&v10)
      {
        v16 %= *&v10;
      }
    }

    else
    {
      v16 &= *&v10 - 1;
    }

    if (v16 != v13)
    {
      goto LABEL_23;
    }

LABEL_22:
    v15 = *v15;
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  if ((fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual::operator()((a1 + 36), v15[2], *a2) & 1) == 0)
  {
    goto LABEL_22;
  }

  return v15;
}

const void **std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = 32 * (v2 - v1) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x100)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    v11[4] = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v10);
  }

  *(a1 + 32) = v5 + 256;
  v11[0] = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_front<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>(a1, v11);
}

void sub_1B5353F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  operator delete(v12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x100;
  v3 = v1 - 256;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *,std::allocator<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *>>::emplace_back<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>> *&>(a1, &v10);
}

void sub_1B5354114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::EpsilonClosure(uint64_t a1, uint64_t *a2, void *a3)
{
  v76 = 0;
  v77 = 0;
  v75 = &v76;
  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    v9 = &v76;
    do
    {
      v10 = (v6 + v7);
      LODWORD(v66) = *v10;
      v11 = *v10;
      HIDWORD(v66) = v10[2];
      *(&v66 + 4) = v11;
      v9 = std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>>::__emplace_hint_unique_key_args<int,std::pair<int const,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> const&>(&v75, v9, &v66);
      ++v8;
      v6 = *a2;
      v7 += 12;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  }

  v12 = (*(**(a1 + 72) + 64))(*(a1 + 72), 0x10000000, 0);
  v62 = a3;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  begin = std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__init_with_size[abi:ne200100]<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element*,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element*>(&v72, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  v15 = v73;
  if (v73 == v72)
  {
    goto LABEL_68;
  }

  v16 = 0;
  v17 = 0;
  do
  {
    v19 = *(v15 - 3);
    v18 = v15 - 3;
    v71 = v18[2];
    *v70 = v19;
    v73 = v18;
    if (v17)
    {
      *&v66 = v70;
      begin = std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, v70);
      if (*(begin + 8) != v70[0] || *(begin + 9) != v70[1] || (LODWORD(v66) = *(begin + 10), *&__p.__begin_ = v71, v14.n128_u32[0] = v66, *&v66 != v71))
      {
        v17 = 1;
        goto LABEL_67;
      }
    }

    v20 = *(a1 + 84);
    if (v20 >= 1)
    {
      if (v16 > v20)
      {
        v55 = fst::cerr(begin);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Determinization aborted since looped more than ", 47);
        v57 = MEMORY[0x1B8C84C00](v56, *(a1 + 84));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, " times during epsilon closure.\n", 31);
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "looped more than max-states times in determinization");
        __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      ++v16;
    }

    v21 = *(a1 + 72);
    v69 = 0;
    (*(*v21 + 136))(v21, v70[0], &v66, v14);
    while (1)
    {
      begin = v66;
      if (!v66)
      {
        if (v69 >= v67)
        {
          goto LABEL_65;
        }

LABEL_20:
        v23 = *(&v66 + 1) + 16 * v69;
        goto LABEL_21;
      }

      v22 = (*(*v66 + 24))(v66);
      begin = v66;
      if (v22)
      {
        goto LABEL_63;
      }

      if (!v66)
      {
        goto LABEL_20;
      }

      begin = (*(*v66 + 32))();
      v23 = begin;
LABEL_21:
      v24 = *v23;
      if ((v12 & 0x10000000) != 0)
      {
        if (v24)
        {
          break;
        }
      }

      if (!v24)
      {
        v64[0] = *(v23 + 12);
        v25 = NAN;
        if (v71 != -INFINITY)
        {
          v26 = *(v23 + 8);
          v25 = NAN;
          if (v26 != -INFINITY)
          {
            v25 = INFINITY;
            v27 = v26 == INFINITY || v71 == INFINITY;
            if (!v27)
            {
              v25 = v71 + v26;
            }
          }
        }

        v65 = v25;
        v29 = *(v23 + 4);
        v28 = (v23 + 4);
        if (v29)
        {
          memset(&__p, 0, sizeof(__p));
          fst::StringRepository<int,int>::SeqOfId(a1 + 136, v70[1], &__p);
          if (*v28)
          {
            std::vector<int>::push_back[abi:ne200100](&__p.__begin_, v28);
          }

          v64[1] = fst::StringRepository<int,int>::IdOfSeq(a1 + 136, &__p);
          begin = __p.__begin_;
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }
        }

        else
        {
          v64[1] = v70[1];
        }

        v30 = v76;
        if (!v76)
        {
          goto LABEL_44;
        }

        v31 = &v76;
        do
        {
          if (*(v30 + 7) >= v64[0])
          {
            v31 = v30;
          }

          v30 = v30[*(v30 + 7) < v64[0]];
        }

        while (v30);
        if (v31 != &v76 && v64[0] >= *(v31 + 7))
        {
          if (*(v31 + 9) != v64[1])
          {
            v44 = fst::cerr(begin);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "DeterminizerStar: FST was not functional -> not determinizable\n", 63);
            memset(&__p, 0, sizeof(__p));
            fst::StringRepository<int,int>::SeqOfId(a1 + 136, *(v31 + 9), &__p);
            v46 = fst::cerr(v45);
            v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "First string: ", 14);
            if (__p.__end_ != __p.__begin_)
            {
              v59 = 0;
              do
              {
                v60 = fst::cerr(v47);
                v61 = MEMORY[0x1B8C84C00](v60, __p.__begin_[v59]);
                v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, " ", 1);
                ++v59;
              }

              while (v59 < __p.__end_ - __p.__begin_);
            }

            v48 = fst::cerr(v47);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "\nSecond string: ", 16);
            fst::StringRepository<int,int>::SeqOfId(a1 + 136, v64[1], &__p);
            if (__p.__end_ != __p.__begin_)
            {
              v50 = 0;
              do
              {
                v51 = fst::cerr(v49);
                v52 = MEMORY[0x1B8C84C00](v51, __p.__begin_[v50]);
                v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " ", 1);
                ++v50;
              }

              while (v50 < __p.__end_ - __p.__begin_);
            }

            v53 = fst::cerr(v49);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
            if (__p.__begin_)
            {
              __p.__end_ = __p.__begin_;
              operator delete(__p.__begin_);
            }

            v54 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v54, "Non-functional FST: cannot determinize.\n");
            __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v33 = *(v31 + 10);
          v34 = v65;
          if (v33 == INFINITY)
          {
            v35 = v65;
          }

          else
          {
            v35 = *(v31 + 10);
            if (v65 != INFINITY)
            {
              if (v33 <= v65)
              {
                v37 = expf(-(v65 - v33));
                v35 = v33 - logf(v37 + 1.0);
              }

              else
              {
                v36 = expf(-(v33 - v65));
                v35 = v34 - logf(v36 + 1.0);
              }
            }
          }

          v38 = *(a1 + 80);
          v39 = v33 + v38;
          v14.n128_f32[0] = v35 + v38;
          if (v33 > v14.n128_f32[0] || v35 > v39)
          {
            std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](&v72, v64);
            v17 = 1;
          }

          *(v31 + 10) = v35;
        }

        else
        {
LABEL_44:
          __p.__begin_ = v64;
          v32 = std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, v64);
          v32[4] = *v64;
          *(v32 + 10) = v65;
          std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](&v72, v64);
        }
      }

      if (v66)
      {
        (*(*v66 + 40))(v66);
      }

      else
      {
        ++v69;
      }
    }

    begin = v66;
LABEL_63:
    if (begin)
    {
      begin = (*(*begin + 8))(begin);
      goto LABEL_67;
    }

LABEL_65:
    if (v68)
    {
      --*v68;
    }

LABEL_67:
    v15 = v73;
  }

  while (v73 != v72);
LABEL_68:
  v62[1] = *v62;
  std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::reserve(v62, v77);
  v41 = v75;
  if (v75 != &v76)
  {
    do
    {
      std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](v62, v41 + 4);
      v42 = v41[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        do
        {
          v43 = v41[2];
          v27 = *v43 == v41;
          v41 = v43;
        }

        while (!v27);
      }

      v41 = v43;
    }

    while (v43 != &v76);
  }

  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  std::__tree<int>::destroy(&v75, v76);
}

void sub_1B53548D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _DWORD *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, char a26, void *a27)
{
  __cxa_free_exception(v27);
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  else if (a19)
  {
    --*a19;
  }

  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<int>::destroy(&a26, a27);
  _Unwind_Resume(a1);
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessFinal(uint64_t a1, float **a2, int a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = (*(**(a1 + 72) + 32))(*(a1 + 72), *v4);
      *&v23 = v11;
      v24 = 2139095040;
      if (v11 != INFINITY)
      {
        if ((v8 & 1) == 0)
        {
          v16 = v4[2];
          v8 = 1;
          v3 = NAN;
          v9 = *(v4 + 1);
          if (v16 != -INFINITY)
          {
            v9 = *(v4 + 1);
            if (v11 != -INFINITY)
            {
              v17 = v16 == INFINITY || v11 == INFINITY;
              v18 = v11 + v16;
              if (v17)
              {
                v3 = INFINITY;
              }

              else
              {
                v3 = v18;
              }

              v9 = *(v4 + 1);
            }
          }

          goto LABEL_32;
        }

        if (v9 != *(v4 + 1))
        {
          v21 = fst::cerr(v10);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "DeterminizerStar: FST was not functional -> not determinizable\n", 63);
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Non-functional FST: cannot determinize.\n");
          __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v12 = v4[2];
        if (v12 == -INFINITY || v11 == -INFINITY)
        {
          v15 = NAN;
          if (v3 != INFINITY)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v13 = v12 == INFINITY || v11 == INFINITY;
          v14 = v11 + v12;
          if (v13)
          {
            v15 = INFINITY;
          }

          else
          {
            v15 = v14;
          }

          if (v3 != INFINITY)
          {
            if (v15 != INFINITY)
            {
LABEL_28:
              if (v3 <= v15)
              {
                v20 = expf(-(v15 - v3));
                v3 = v3 - logf(v20 + 1.0);
              }

              else
              {
                v19 = expf(-(v3 - v15));
                v3 = v15 - logf(v19 + 1.0);
              }
            }

            v8 = 1;
            goto LABEL_32;
          }
        }

        v8 = 1;
        v3 = v15;
      }

LABEL_32:
      v4 += 3;
      if (v4 == v5)
      {
        if (v8)
        {
          *(&v23 + 4) = v9 | 0xFFFFFFFF00000000;
          LODWORD(v23) = 0;
          *(&v23 + 3) = v3;
          std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](*(a1 + 48) + 24 * a3, &v23);
        }

        return;
      }
    }
  }
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessTransitions(fst *a1, float **a2, int a3)
{
  v3 = a3;
  v43 = 0;
  v5 = 0uLL;
  *v42 = 0u;
  v6 = *a2;
  v35 = a2[1];
  if (*a2 == v35)
  {
    goto LABEL_44;
  }

  do
  {
    v7 = *(a1 + 9);
    v8 = *v6;
    v41 = 0;
    (*(*v7 + 136))(v7, v8, &v37);
    while (1)
    {
      if (!v37)
      {
        if (v41 >= v39)
        {
          goto LABEL_40;
        }

        goto LABEL_8;
      }

      if ((*(*v37 + 24))(v37))
      {
        break;
      }

      if (v37)
      {
        v9 = (*(*v37 + 32))();
        goto LABEL_9;
      }

LABEL_8:
      v9 = v38 + 16 * v41;
LABEL_9:
      v10 = *v9;
      if (*v9)
      {
        v11 = v6[2];
        v12 = NAN;
        if (v11 != -INFINITY)
        {
          v13 = *(v9 + 8);
          v12 = NAN;
          if (v13 != -INFINITY)
          {
            v14 = v13 == INFINITY || v11 == INFINITY;
            v15 = v11 + v13;
            if (v14)
            {
              v12 = INFINITY;
            }

            else
            {
              v12 = v15;
            }
          }
        }

        v16 = *(v9 + 12);
        v18 = *(v9 + 4);
        v17 = (v9 + 4);
        if (v18)
        {
          memset(&__p, 0, sizeof(__p));
          fst::StringRepository<int,int>::SeqOfId(a1 + 136, *(v6 + 1), &__p);
          std::vector<int>::push_back[abi:ne200100](&__p.__begin_, v17);
          v19 = fst::StringRepository<int,int>::IdOfSeq(a1 + 136, &__p);
          if (__p.__begin_)
          {
            __p.__end_ = __p.__begin_;
            operator delete(__p.__begin_);
          }
        }

        else
        {
          v19 = *(v6 + 1);
        }

        v20 = v42[1];
        if (v42[1] >= v43)
        {
          v22 = (v42[1] - v42[0]) >> 4;
          v23 = v22 + 1;
          if ((v22 + 1) >> 60)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v24 = v43 - v42[0];
          if ((v43 - v42[0]) >> 3 > v23)
          {
            v23 = v24 >> 3;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(v42, v25);
          }

          v26 = 16 * v22;
          *v26 = v10;
          *(v26 + 4) = v16;
          *(v26 + 8) = v19;
          *(v26 + 12) = v12;
          v21 = (16 * v22 + 16);
          v27 = (v26 - (v42[1] - v42[0]));
          memcpy(v27, v42[0], v42[1] - v42[0]);
          v28 = v42[0];
          v42[0] = v27;
          v42[1] = v21;
          v43 = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v42[1] = v10;
          *(v20 + 1) = v16;
          *(v20 + 2) = v19;
          v21 = v20 + 4;
          v20[3] = v12;
        }

        v42[1] = v21;
      }

      if (v37)
      {
        (*(*v37 + 40))(v37);
      }

      else
      {
        ++v41;
      }
    }

    if (v37)
    {
      (*(*v37 + 8))();
      goto LABEL_42;
    }

LABEL_40:
    if (v40)
    {
      --*v40;
    }

LABEL_42:
    v6 += 3;
  }

  while (v6 != v35);
  v5 = *v42;
  v3 = a3;
LABEL_44:
  v29 = 126 - 2 * __clz((*(&v5 + 1) - v5) >> 4);
  if (*(&v5 + 1) == v5)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,false>(v5, *(&v5 + 1), &v37, v30, 1);
  v31 = v42[0];
  v32 = v42[1];
  v37 = 0;
  v38 = 0;
  v39 = 0;
  while (v31 != v32)
  {
    v33 = *v31;
    v38 = v37;
    do
    {
      if (*v31 != v33)
      {
        break;
      }

      std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](&v37, (v31 + 4));
      v31 += 16;
    }

    while (v31 != v32);
    fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessTransition(a1, v3, v33, &v37);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (v42[0])
  {
    v42[1] = v42[0];
    operator delete(v42[0]);
  }
}

void sub_1B5354FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::StringRepository<int,int>::SeqOfId(uint64_t a1, int a2, std::vector<unsigned int> *a3)
{
  if (*(a1 + 68) == a2)
  {
    a3->__end_ = a3->__begin_;
  }

  else if (*(a1 + 72) <= a2)
  {
    std::vector<int>::resize(a3, 1uLL);
    *a3->__begin_ = a2 - *(a1 + 72);
  }

  else
  {
    v6 = *(*a1 + 8 * a2);
    if (v6 != a3)
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = (v8 - *v6) >> 2;

      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, v7, v8, v9);
    }
  }
}

uint64_t fst::StringRepository<int,int>::IdOfSeq(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8) - *a2) >> 2;
  if (v2 == 1)
  {
    return fst::StringRepository<int,int>::IdOfLabel(a1, **a2);
  }

  if (v2)
  {
    return fst::StringRepository<int,int>::IdOfSeqInternal(a1, a2);
  }

  return *(a1 + 68);
}

void *std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::reserve(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 2) < a2)
  {
    if (a2 < 0x1555555555555556)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>>::__emplace_hint_unique_key_args<int,std::pair<int const,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__find_equal<quasar::PronType>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t fst::StringRepository<int,int>::IdOfLabel(uint64_t a1, int a2)
{
  v8 = a2;
  if ((a2 & 0x80000000) == 0 && *(a1 + 76) >= a2)
  {
    return (*(a1 + 72) + a2);
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  std::vector<int>::push_back[abi:ne200100](&__p, &v8);
  v3 = fst::StringRepository<int,int>::IdOfSeqInternal(a1, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

void sub_1B535542C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::StringRepository<int,int>::IdOfSeqInternal(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::find<std::vector<int> const*>((a1 + 24), &v4);
  if (!v2)
  {
    operator new();
  }

  return *(v2 + 6);
}

const void ***std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::find<std::vector<int> const*>(void *a1, uint64_t *a2)
{
  v4 = **a2;
  v5 = *(*a2 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4++;
      v6 += v7 * v8;
      v7 *= 103333;
    }

    while (v4 != v5);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    return 0;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6;
    if (v6 >= *&v9)
    {
      v12 = v6 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v6;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13)
  {
    return 0;
  }

  for (i = *v13; i; i = *i)
  {
    v15 = i[1];
    if (v15 == v6)
    {
      if (std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>::operator()[abi:ne200100](a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= *&v9 - 1;
      }

      if (v15 != v12)
      {
        return 0;
      }
    }
  }

  return i;
}

BOOL std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>::operator()[abi:ne200100](uint64_t a1, const void ***a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  return v5 == *(v3 + 8) - *v3 && memcmp(v4, *v3, v5) == 0;
}

const void ***std::__hash_table<std::__hash_value_type<std::vector<int> const*,int>,std::__unordered_map_hasher<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorKey,fst::StringRepository<int,int>::VectorEqual,true>,std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>,std::allocator<std::__hash_value_type<std::vector<int> const*,int>>>::__emplace_unique_key_args<std::vector<int> const*,std::piecewise_construct_t const&,std::tuple<std::vector<int> const* const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v4 = **a2;
  v5 = *(*a2 + 8);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *v4++;
      v6 += v7 * v8;
      v7 *= 103333;
    }

    while (v4 != v5);
  }

  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_23;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v6;
    if (v6 >= *&v9)
    {
      v12 = v6 % *&v9;
    }
  }

  else
  {
    v12 = (*&v9 - 1) & v6;
  }

  v13 = *(*a1 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v6)
    {
      break;
    }

    if (v11 > 1)
    {
      if (v15 >= *&v9)
      {
        v15 %= *&v9;
      }
    }

    else
    {
      v15 &= *&v9 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (!std::__unordered_map_equal<std::vector<int> const*,std::__hash_value_type<std::vector<int> const*,int>,fst::StringRepository<int,int>::VectorEqual,fst::StringRepository<int,int>::VectorKey,true>::operator()[abi:ne200100](a1, v14 + 2, a2))
  {
    goto LABEL_22;
  }

  return v14;
}

void fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::ProcessTransition(fst *a1, int a2, int a3, float **a4)
{
  v8 = *a4;
  v9 = a4[1];
  if (*a4 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = *a4;
    do
    {
      if (v8 != v11)
      {
        v12 = *v8;
        v11[2] = v8[2];
        *v11 = v12;
      }

      v8 += 3;
      if (v8 != v9)
      {
        v13 = *v11;
        do
        {
          if (*v8 != v13)
          {
            break;
          }

          if (*(v8 + 1) != *(v11 + 1))
          {
            v37 = fst::cerr(a1);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "DeterminizerStar: FST was not functional -> not determinizable\n", 63);
            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Non-functional FST: cannot determinize.\n");
            __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
          }

          v14 = v11[2];
          v15 = v8[2];
          if (v14 != INFINITY)
          {
            if (v15 == INFINITY)
            {
              v15 = v11[2];
            }

            else if (v14 <= v15)
            {
              v17 = expf(-(v15 - v14));
              v15 = v14 - logf(v17 + 1.0);
            }

            else
            {
              v16 = expf(-(v14 - v15));
              v15 = v15 - logf(v16 + 1.0);
            }
          }

          v11[2] = v15;
          v8 += 3;
        }

        while (v8 != v9);
      }

      v11 += 3;
      ++v10;
    }

    while (v8 != v9);
  }

  std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::resize(a4, v10);
  memset(&v40, 0, sizeof(v40));
  v18 = *a4;
  v19 = a4[1];
  memset(&__p, 0, sizeof(__p));
  if (v18 != v19)
  {
    v20 = v18;
    while (1)
    {
      if (v20 == v18)
      {
        fst::StringRepository<int,int>::SeqOfId(a1 + 136, v18[1], &v40);
        begin = v40.__begin_;
        end = v40.__end_;
      }

      else
      {
        fst::StringRepository<int,int>::SeqOfId(a1 + 136, v20[1], &__p);
        begin = v40.__begin_;
        end = v40.__end_;
        if ((__p.__end_ - __p.__begin_) < (v40.__end_ - v40.__begin_))
        {
          std::vector<int>::resize(&v40, __p.__end_ - __p.__begin_);
          begin = v40.__begin_;
          end = v40.__end_;
        }

        if (end == begin)
        {
          break;
        }

        v23 = 0;
        do
        {
          if (__p.__begin_[v23] != begin[v23])
          {
            std::vector<int>::resize(&v40, v23);
            begin = v40.__begin_;
            end = v40.__end_;
          }

          ++v23;
        }

        while (v23 < end - begin);
      }

      if (end != begin)
      {
        v20 += 3;
        if (v20 != v19)
        {
          continue;
        }
      }

      break;
    }
  }

  v24 = fst::StringRepository<int,int>::IdOfSeq(a1 + 136, &v40);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  v25 = *(v18 + 2);
  v26 = v18 + 3;
  if (v18 + 3 == v19)
  {
    LODWORD(v27) = v18[2];
  }

  else
  {
    do
    {
      LODWORD(v27) = v26[2];
      if (v25 != INFINITY)
      {
        if (v27 == INFINITY)
        {
          v27 = v25;
        }

        else if (v25 <= v27)
        {
          v29 = expf(-(v27 - v25));
          v27 = v25 - logf(v29 + 1.0);
        }

        else
        {
          v28 = expf(-(v25 - v27));
          v27 = v27 - logf(v28 + 1.0);
        }
      }

      v26 += 3;
      v25 = v27;
    }

    while (v26 != v19);
  }

  v30 = v40.__begin_;
  if (v18 != v19)
  {
    v31 = v40.__end_ - v40.__begin_;
    do
    {
      v32 = *(v18 + 2);
      v33 = NAN;
      if (v32 != -INFINITY)
      {
        v34 = v32 == INFINITY;
        v35 = v32 - v27;
        if (v34)
        {
          v35 = INFINITY;
        }

        if ((LODWORD(v27) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v33 = v35;
        }
      }

      *(v18 + 2) = v33;
      v18[1] = fst::StringRepository<int,int>::RemovePrefix(a1 + 136, v18[1], v31);
      v18 += 3;
    }

    while (v18 != v19);
    v30 = v40.__begin_;
  }

  if (v30)
  {
    v40.__end_ = v30;
    operator delete(v30);
  }

  LODWORD(v40.__begin_) = a3;
  v36 = fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetToStateId(a1, a4);
  HIDWORD(v40.__begin_) = v24;
  v40.__end_ = __PAIR64__(LODWORD(v27), v36);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](*(a1 + 6) + 24 * a2, &v40);
}

void sub_1B5355DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,false>(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
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
    v12 = (a2 - v9) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v21 = *(a2 - 4);
        v22 = *v9;
        if (v21 < *v9 || v21 <= v22 && *(a2 - 3) < *(v9 + 4))
        {
          *v9 = v21;
          *(a2 - 4) = v22;
          v37 = *(v9 + 4);
          v40 = *(v9 + 12);
          v23 = *(a2 - 3);
          *(v9 + 12) = *(a2 - 1);
          *(v9 + 4) = v23;
          *(a2 - 3) = v37;
          *(a2 - 1) = v40;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(v9, (v9 + 16), (v9 + 32));
      v24 = *(a2 - 4);
      v25 = *(v9 + 32);
      if (v24 < v25 || v24 <= v25 && *(a2 - 3) < *(v9 + 36))
      {
        *(v9 + 32) = v24;
        *(a2 - 4) = v25;
        v27 = (v9 + 36);
        v26 = *(v9 + 36);
        v28 = *(v9 + 44);
        v29 = *(a2 - 1);
        *(v9 + 36) = *(a2 - 3);
        *(v9 + 44) = v29;
        *(a2 - 3) = v26;
        *(a2 - 1) = v28;
        v30 = *(v9 + 32);
        v31 = *(v9 + 16);
        if (v30 < v31 || v30 <= v31 && *(v9 + 36) < *(v9 + 20))
        {
          *(v9 + 16) = v30;
          v32 = (v9 + 20);
          v33 = *(v9 + 20);
          v34 = *(v9 + 28);
          *(v9 + 20) = *v27;
          *(v9 + 28) = *(v9 + 44);
          *(v9 + 32) = v31;
          *v27 = v33;
          *(v9 + 44) = v34;
          v35 = *v9;
          if (v30 < *v9 || v30 <= v35 && *(v9 + 20) < *(v9 + 4))
          {
            *v9 = v30;
            v38 = *(v9 + 4);
            v41 = *(v9 + 12);
            *(v9 + 12) = *(v9 + 28);
            *(v9 + 16) = v35;
            *(v9 + 4) = *v32;
            *v32 = v38;
            *(v9 + 28) = v41;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(v9, v9 + 16, v9 + 32, v9 + 48, a2 - 4);
    }

LABEL_11:
    if (v12 <= 23)
    {
      if (a5)
      {

        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(v9, a2);
      }

      else
      {

        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(v9, a2);
      }
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = v9 + 16 * (v12 >> 1);
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>((v9 + 16 * (v12 >> 1)), v9, a2 - 4);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(v9, (v9 + 16 * (v12 >> 1)), a2 - 4);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>((v9 + 16), (v14 - 16), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>((v9 + 32), (v9 + 16 + 16 * v13), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>((v14 - 16), v14, (v9 + 16 + 16 * v13));
      v15 = *v9;
      *v9 = *v14;
      *v14 = v15;
      v39 = *(v9 + 12);
      v36 = *(v9 + 4);
      v16 = *(v14 + 4);
      *(v9 + 12) = *(v14 + 12);
      *(v9 + 4) = v16;
      *(v14 + 12) = v39;
      *(v14 + 4) = v36;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v17 = *(v9 - 16);
    if (v17 >= *v9 && (v17 > *v9 || *(v9 - 12) >= *(v9 + 4)))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &>(v9, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_23;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(v9, v18);
    v9 = v18 + 16;
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(v18 + 16, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_23:
      result = std::__introsort<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,false>(v8, v18, a3, -v11, a5 & 1);
      v9 = v18 + 16;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(v9, (v9 + 16), a2 - 4);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(int *a1, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a1;
  if (*a2 < *a1 || v3 <= v4 && a2[1] < a1[1])
  {
    v5 = *a3;
    if (*a3 < v3 || v5 <= v3 && a3[1] < a2[1])
    {
      *a1 = v5;
      *a3 = v4;
      v6 = a1[3];
      v7 = *(a1 + 1);
      v8 = a3[3];
      *(a1 + 1) = *(a3 + 1);
      a1[3] = v8;
      *(a3 + 1) = v7;
      a3[3] = v6;
    }

    else
    {
      *a1 = v3;
      *a2 = v4;
      v19 = (a2 + 1);
      v20 = a1[3];
      v21 = *(a1 + 1);
      v22 = a2[3];
      *(a1 + 1) = *(a2 + 1);
      a1[3] = v22;
      *(a2 + 1) = v21;
      a2[3] = v20;
      v23 = *a3;
      v24 = *a2;
      if (*a3 < *a2 || v23 <= v24 && a3[1] < *v19)
      {
        *a2 = v23;
        *a3 = v24;
        v25 = a2[3];
        v26 = *v19;
        v27 = a3[3];
        *v19 = *(a3 + 1);
        a2[3] = v27;
        *(a3 + 1) = v26;
        a3[3] = v25;
      }
    }
  }

  else
  {
    v9 = *a3;
    if (*a3 >= v3 && (v9 > v3 || a3[1] >= a2[1]))
    {
      return 0;
    }

    *a2 = v9;
    *a3 = v3;
    v10 = a2 + 1;
    v11 = *(a2 + 1);
    v12 = a2[3];
    v13 = a3[3];
    *(a2 + 1) = *(a3 + 1);
    a2[3] = v13;
    *(a3 + 1) = v11;
    a3[3] = v12;
    v14 = *a2;
    v15 = *a1;
    if (*a2 < *a1 || v14 <= v15 && *v10 < a1[1])
    {
      *a1 = v14;
      *a2 = v15;
      v16 = a1[3];
      v17 = *(a1 + 1);
      v18 = a2[3];
      *(a1 + 1) = *v10;
      a1[3] = v18;
      *v10 = v17;
      a2[3] = v16;
    }
  }

  return 1;
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(a1, a2, a3);
  v11 = *a4;
  v12 = *a3;
  if (*a4 < *a3 || v11 <= v12 && *(a4 + 4) < *(a3 + 4))
  {
    *a3 = v11;
    *a4 = v12;
    v13 = (a3 + 4);
    v14 = *(a3 + 4);
    v15 = *(a3 + 12);
    v16 = *(a4 + 12);
    *(a3 + 4) = *(a4 + 4);
    *(a3 + 12) = v16;
    *(a4 + 4) = v14;
    *(a4 + 12) = v15;
    v17 = *a3;
    v18 = *a2;
    if (*a3 < *a2 || v17 <= v18 && *v13 < *(a2 + 4))
    {
      *a2 = v17;
      *a3 = v18;
      v19 = (a2 + 4);
      v20 = *(a2 + 4);
      v21 = *(a2 + 12);
      v22 = *(a3 + 12);
      *(a2 + 4) = *v13;
      *(a2 + 12) = v22;
      *v13 = v20;
      *(a3 + 12) = v21;
      v23 = *a2;
      v24 = *a1;
      if (*a2 < *a1 || v23 <= v24 && *v19 < *(a1 + 4))
      {
        *a1 = v23;
        *a2 = v24;
        v25 = *(a1 + 12);
        v26 = *(a1 + 4);
        v27 = *(a2 + 12);
        *(a1 + 4) = *v19;
        *(a1 + 12) = v27;
        *v19 = v26;
        *(a2 + 12) = v25;
      }
    }
  }

  v28 = *a5;
  v29 = *a4;
  if (*a5 < *a4 || v28 <= v29 && a5[1] < *(a4 + 4))
  {
    *a4 = v28;
    *a5 = v29;
    v30 = (a4 + 4);
    v31 = *(a4 + 4);
    v32 = *(a4 + 12);
    v33 = a5[3];
    *(a4 + 4) = *(a5 + 1);
    *(a4 + 12) = v33;
    *(a5 + 1) = v31;
    a5[3] = v32;
    v34 = *a4;
    v35 = *a3;
    if (*a4 < *a3 || v34 <= v35 && *v30 < *(a3 + 4))
    {
      *a3 = v34;
      *a4 = v35;
      v36 = (a3 + 4);
      v37 = *(a3 + 4);
      v38 = *(a3 + 12);
      v39 = *(a4 + 12);
      *(a3 + 4) = *v30;
      *(a3 + 12) = v39;
      *v30 = v37;
      *(a4 + 12) = v38;
      v40 = *a3;
      v41 = *a2;
      if (*a3 < *a2 || v40 <= v41 && *v36 < *(a2 + 4))
      {
        *a2 = v40;
        *a3 = v41;
        v42 = (a2 + 4);
        v43 = *(a2 + 4);
        v44 = *(a2 + 12);
        v45 = *(a3 + 12);
        *(a2 + 4) = *v36;
        *(a2 + 12) = v45;
        *v36 = v43;
        *(a3 + 12) = v44;
        v46 = *a2;
        v47 = *a1;
        if (*a2 < *a1 || v46 <= v47 && *v42 < *(a1 + 4))
        {
          *a1 = v46;
          *a2 = v47;
          v48 = *(a1 + 12);
          v49 = *(a1 + 4);
          v50 = *(a2 + 12);
          *(a1 + 4) = *v42;
          *(a1 + 12) = v50;
          *v42 = v49;
          *(a2 + 12) = v48;
        }
      }
    }
  }

  return result;
}

int *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      v3 = 0;
      v4 = result;
      while (1)
      {
        v5 = v4;
        v4 = v2;
        v6 = v5[4];
        v7 = *v5;
        if (v6 < *v5)
        {
          break;
        }

        if (v6 <= v7)
        {
          v8 = v5[5];
          if (v8 < v5[1])
          {
            goto LABEL_6;
          }
        }

LABEL_17:
        v2 = v4 + 4;
        v3 += 16;
        if (v4 + 4 == a2)
        {
          return result;
        }
      }

      v8 = v5[5];
LABEL_6:
      v9 = *(v5 + 3);
      v5[4] = v7;
      v10 = v5 + 1;
      *(v4 + 1) = *(v5 + 1);
      v4[3] = v5[3];
      if (v5 == result)
      {
LABEL_13:
        v5 = result;
      }

      else
      {
        v11 = v3;
        while (1)
        {
          v12 = result + v11;
          v13 = *(result + v11 - 16);
          if (v6 >= v13)
          {
            if (v6 > v13)
            {
              goto LABEL_14;
            }

            if (v8 >= *(result + v11 - 12))
            {
              break;
            }
          }

          v10 = v5 - 3;
          v5 -= 4;
          *v12 = v13;
          *(v12 + 4) = *(v12 - 12);
          *(v12 + 12) = *(v12 - 4);
          v11 -= 16;
          if (!v11)
          {
            v10 = result + 1;
            goto LABEL_13;
          }
        }

        v10 = (result + v11 + 4);
        v5 = (result + v11);
      }

LABEL_14:
      *v5 = v6;
      *v10 = v8;
      *(v5 + 1) = v9;
      goto LABEL_17;
    }
  }

  return result;
}

int *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(int *result, int *a2)
{
  if (result != a2)
  {
    v2 = result + 4;
    if (result + 4 != a2)
    {
      for (i = result + 1; ; i += 4)
      {
        v4 = result;
        result = v2;
        v5 = v4[4];
        v6 = *v4;
        if (v5 < *v4)
        {
          break;
        }

        if (v5 <= v6)
        {
          v7 = v4[5];
          if (v7 < v4[1])
          {
            goto LABEL_6;
          }
        }

LABEL_14:
        v2 = result + 4;
        if (result + 4 == a2)
        {
          return result;
        }
      }

      v7 = v4[5];
LABEL_6:
      v8 = *(v4 + 3);
      for (j = i; ; j -= 4)
      {
        j[3] = v6;
        *(j + 2) = *j;
        j[6] = j[2];
        v6 = *(j - 5);
        if (v5 >= v6 && (v5 > v6 || v7 >= *(j - 4)))
        {
          break;
        }
      }

      *(j - 1) = v5;
      *j = v7;
      *(j + 1) = v8;
      goto LABEL_14;
    }
  }

  return result;
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &>(int *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 - 4);
  if (*a1 < v4 || v2 <= v4 && v3 < *(a2 - 3))
  {
    i = a1;
    do
    {
      v7 = i[4];
      i += 4;
      v6 = v7;
    }

    while (v2 >= v7 && (v2 > v6 || v3 >= i[1]));
  }

  else
  {
      ;
    }
  }

  if (i < a2)
  {
    for (a2 -= 4; v2 < v4 || v2 <= v4 && v3 < a2[1]; a2 -= 4)
    {
      v8 = *(a2 - 4);
      v4 = v8;
    }
  }

  v9 = *(a1 + 1);
  if (i < a2)
  {
    v10 = *i;
    v11 = *a2;
    do
    {
      *i = v11;
      *a2 = v10;
      v19 = i[3];
      v18 = *(i + 1);
      v12 = *(a2 + 1);
      i[3] = a2[3];
      *(i + 1) = v12;
      a2[3] = v19;
      *(a2 + 1) = v18;
      do
      {
        v13 = i[4];
        i += 4;
        v10 = v13;
      }

      while (v2 >= v13 && (v2 > v10 || v3 >= i[1]));
      do
      {
        do
        {
          v14 = *(a2 - 4);
          a2 -= 4;
          v11 = v14;
          v15 = v2 <= v14;
        }

        while (v2 < v14);
      }

      while (v15 && v3 < a2[1]);
    }

    while (i < a2);
  }

  if (i - 4 != a1)
  {
    *a1 = *(i - 4);
    v16 = *(i - 3);
    a1[3] = *(i - 1);
    *(a1 + 1) = v16;
  }

  *(i - 4) = v2;
  *(i - 3) = v3;
  *(i - 1) = v9;
  return i;
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &>(int *a1, _DWORD *a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 1);
  while (1)
  {
    v6 = a1[v2 + 4];
    if (v6 >= v3 && (v6 > v3 || a1[v2 + 5] >= v4))
    {
      break;
    }

    v2 += 4;
  }

  v7 = &a1[v2 + 4];
  if (v2 * 4)
  {
    do
    {
      v9 = *(a2 - 4);
      a2 -= 4;
      v8 = v9;
    }

    while (v9 >= v3 && (v8 > v3 || a2[1] >= v4));
  }

  else
  {
LABEL_19:
    if (v7 < a2)
    {
      do
      {
        v11 = *(a2 - 4);
        a2 -= 4;
        v10 = v11;
        if (v11 < v3)
        {
          break;
        }

        if (v10 > v3)
        {
          goto LABEL_19;
        }
      }

      while (a2[1] >= v4 && v7 < a2);
    }
  }

  if (v7 >= a2)
  {
    v14 = v7;
  }

  else
  {
    v13 = *a2;
    v14 = v7;
    v15 = a2;
    do
    {
      *v14 = v13;
      *v15 = v6;
      v23 = *(v14 + 12);
      v22 = *(v14 + 4);
      v16 = *(v15 + 1);
      *(v14 + 12) = v15[3];
      *(v14 + 4) = v16;
      v15[3] = v23;
      *(v15 + 1) = v22;
      do
      {
        do
        {
          v17 = *(v14 + 16);
          v14 += 16;
          v6 = v17;
          v18 = v17 <= v3;
        }

        while (v17 < v3);
      }

      while (v18 && *(v14 + 4) < v4);
      do
      {
        v19 = *(v15 - 4);
        v15 -= 4;
        v13 = v19;
      }

      while (v19 >= v3 && (v13 > v3 || v15[1] >= v4));
    }

    while (v14 < v15);
  }

  if ((v14 - 16) != a1)
  {
    *a1 = *(v14 - 16);
    v20 = *(v14 - 12);
    a1[3] = *(v14 - 4);
    *(a1 + 1) = v20;
  }

  *(v14 - 16) = v3;
  *(v14 - 12) = v4;
  *(v14 - 8) = v5;
  return v14 - 16;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(a1, (a1 + 16), (a2 - 16));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(a1, (a1 + 16), (a1 + 32));
        v23 = *(a2 - 16);
        v24 = *(a1 + 32);
        if (v23 < v24 || v23 <= v24 && *(a2 - 12) < *(a1 + 36))
        {
          *(a1 + 32) = v23;
          *(a2 - 16) = v24;
          v26 = (a1 + 36);
          v25 = *(a1 + 36);
          v27 = *(a1 + 44);
          v28 = *(a2 - 4);
          *(a1 + 36) = *(a2 - 12);
          *(a1 + 44) = v28;
          *(a2 - 12) = v25;
          *(a2 - 4) = v27;
          v29 = *(a1 + 32);
          v30 = *(a1 + 16);
          if (v29 < v30 || v29 <= v30 && *(a1 + 36) < *(a1 + 20))
          {
            *(a1 + 16) = v29;
            v31 = (a1 + 20);
            v32 = *(a1 + 20);
            v33 = *(a1 + 28);
            *(a1 + 20) = *v26;
            *(a1 + 28) = *(a1 + 44);
            *(a1 + 32) = v30;
            *v26 = v32;
            *(a1 + 44) = v33;
            v34 = *a1;
            if (v29 < *a1 || v29 <= v34 && *(a1 + 20) < *(a1 + 4))
            {
              *a1 = v29;
              v35 = *(a1 + 12);
              v36 = *(a1 + 4);
              *(a1 + 4) = *v31;
              *(a1 + 12) = *(a1 + 28);
              *(a1 + 16) = v34;
              *v31 = v36;
              *(a1 + 28) = v35;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 16));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 16);
      v6 = *a1;
      if (v5 < *a1 || v5 <= v6 && *(a2 - 12) < *(a1 + 4))
      {
        *a1 = v5;
        *(a2 - 16) = v6;
        v7 = *(a1 + 12);
        v8 = *(a1 + 4);
        v9 = *(a2 - 4);
        *(a1 + 4) = *(a2 - 12);
        *(a1 + 12) = v9;
        *(a2 - 12) = v8;
        *(a2 - 4) = v7;
      }

      return 1;
    }
  }

  v10 = a1 + 32;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,0>(a1, (a1 + 16), (a1 + 32));
  v11 = a1 + 48;
  if (a1 + 48 != a2)
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = *v11;
      v15 = *v10;
      if (*v11 >= *v10)
      {
        if (v14 > v15)
        {
          goto LABEL_26;
        }

        v16 = *(v11 + 4);
        if (v16 >= *(v10 + 4))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v16 = *(v11 + 4);
      }

      v17 = *(v11 + 8);
      *v11 = v15;
      v18 = (v10 + 4);
      *(v11 + 4) = *(v10 + 4);
      *(v11 + 12) = *(v10 + 12);
      v19 = v12;
      do
      {
        v20 = a1 + v19;
        v21 = *(a1 + v19 + 16);
        if (v14 >= v21)
        {
          if (v14 > v21)
          {
            v22 = a1 + v19;
            v18 = (v22 + 36);
            v10 = v22 + 32;
            goto LABEL_25;
          }

          if (v16 >= *(a1 + v19 + 20))
          {
            goto LABEL_25;
          }
        }

        v18 = (v10 - 12);
        v10 -= 16;
        *(v20 + 32) = v21;
        *(v20 + 36) = *(v20 + 20);
        *(v20 + 44) = *(v20 + 28);
        v19 -= 16;
      }

      while (v19 != -32);
      v18 = (a1 + 4);
      v10 = a1;
LABEL_25:
      *v10 = v14;
      *v18 = v16;
      *(v10 + 8) = v17;
      if (++v13 == 8)
      {
        return v11 + 16 == a2;
      }

LABEL_26:
      v10 = v11;
      v12 += 16;
      v11 += 16;
    }

    while (v11 != a2);
  }

  return 1;
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(a1, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v12 = a2;
    if (a2 != a3)
    {
      v12 = a2;
      do
      {
        v13 = *v12;
        v14 = *a1;
        if (*v12 < *a1 || v13 <= v14 && *(v12 + 4) < *(a1 + 4))
        {
          *v12 = v14;
          *a1 = v13;
          v15 = *(v12 + 12);
          v16 = *(v12 + 4);
          v17 = *(a1 + 12);
          *(v12 + 4) = *(a1 + 4);
          *(v12 + 12) = v17;
          *(a1 + 4) = v16;
          *(a1 + 12) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(a1, a4, v8, a1);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 16;
      do
      {
        v19 = *a1;
        v24 = *(a1 + 4);
        v25 = *(a1 + 12);
        v20 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(a1, a4, v8);
        if (v18 == v20)
        {
          *v20 = v19;
          *(v20 + 1) = v24;
          v20[3] = v25;
        }

        else
        {
          *v20 = *v18;
          v21 = *(v18 + 4);
          v20[3] = *(v18 + 12);
          *(v20 + 1) = v21;
          *v18 = v19;
          *(v18 + 4) = v24;
          *(v18 + 12) = v25;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(a1, (v20 + 4), a4, (v20 - a1 + 16) >> 4);
        }

        v18 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 4)
    {
      v6 = v4 >> 3;
      v7 = (v4 >> 3) + 1;
      v8 = (result + 16 * v7);
      v9 = v6 + 2;
      if (v9 < a3)
      {
        v10 = v8[4];
        if (*v8 < v10 || *v8 <= v10 && v8[1] < v8[5])
        {
          v8 += 4;
          v7 = v9;
        }
      }

      v11 = *v8;
      v12 = *a4;
      if (*v8 >= *a4)
      {
        if (v11 <= v12)
        {
          v13 = a4[1];
          if (v8[1] < v13)
          {
            return result;
          }
        }

        else
        {
          v13 = a4[1];
        }

        v14 = *(a4 + 1);
        *a4 = v11;
        v15 = *(v8 + 1);
        a4[3] = v8[3];
        *(a4 + 1) = v15;
        if (v5 >= v7)
        {
          while (1)
          {
            v17 = 2 * v7;
            v7 = (2 * v7) | 1;
            v16 = (result + 16 * v7);
            v18 = v17 + 2;
            if (v18 < a3)
            {
              v19 = v16[4];
              if (*v16 < v19 || *v16 <= v19 && v16[1] < v16[5])
              {
                v16 += 4;
                v7 = v18;
              }
            }

            v20 = *v16;
            if (*v16 < v12 || v20 <= v12 && v16[1] < v13)
            {
              break;
            }

            *v8 = v20;
            v21 = *(v16 + 1);
            v8[3] = v16[3];
            *(v8 + 1) = v21;
            v8 = v16;
            if (v5 < v7)
            {
              goto LABEL_14;
            }
          }
        }

        v16 = v8;
LABEL_14:
        *v16 = v12;
        v16[1] = v13;
        *(v16 + 1) = v14;
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(_DWORD *result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = result;
    v5 = &result[4 * v3];
    result = v5 + 4;
    v6 = 2 * v3;
    v3 = (2 * v3) | 1;
    v7 = v6 + 2;
    if (v7 < a3)
    {
      v8 = v5[8];
      v9 = v5[4];
      if (v9 < v8 || v9 <= v8 && v5[5] < v5[9])
      {
        result = v5 + 8;
        v3 = v7;
      }
    }

    *v4 = *result;
    v10 = *(result + 1);
    v4[3] = result[3];
    *(v4 + 1) = v10;
  }

  while (v3 <= (a3 - 2) / 2);
  return result;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::PairComparator &,std::pair<int,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element> *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = v4 >> 1;
    v6 = (result + 16 * (v4 >> 1));
    v7 = *v6;
    v8 = *(a2 - 16);
    if (*v6 >= v8)
    {
      if (v7 > v8)
      {
        return result;
      }

      v9 = *(a2 - 12);
      if (v6[1] >= v9)
      {
        return result;
      }
    }

    else
    {
      v9 = *(a2 - 12);
    }

    v10 = *(a2 - 8);
    *(a2 - 16) = v7;
    v11 = *(v6 + 1);
    *(a2 - 4) = v6[3];
    *(a2 - 12) = v11;
    if (v4 >= 2)
    {
      while (1)
      {
        v13 = v5 - 1;
        v5 = (v5 - 1) >> 1;
        v12 = (result + 16 * v5);
        v14 = *v12;
        if (*v12 >= v8 && (v14 > v8 || v12[1] >= v9))
        {
          break;
        }

        *v6 = v14;
        v15 = v12[3];
        *(v6 + 1) = *(v12 + 1);
        v6[3] = v15;
        v6 = (result + 16 * v5);
        if (v13 <= 1)
        {
          goto LABEL_10;
        }
      }
    }

    v12 = v6;
LABEL_10:
    *v12 = v8;
    v12[1] = v9;
    *(v12 + 1) = v10;
  }

  return result;
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 12 * a2;
  }
}

uint64_t fst::StringRepository<int,int>::RemovePrefix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (a3)
  {
    memset(&v13, 0, sizeof(v13));
    fst::StringRepository<int,int>::SeqOfId(a1, a2, &v13);
    v6 = v13.__end_ - v13.__begin_;
    v7 = v6 - a3;
    std::vector<int>::vector[abi:ne200100](__p, v6 - a3);
    if (v6 != a3)
    {
      v8 = &v13.__begin_[a3];
      v9 = __p[0];
      do
      {
        v10 = *v8++;
        *v9++ = v10;
        --v7;
      }

      while (v7);
    }

    v3 = fst::StringRepository<int,int>::IdOfSeq(a1, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v13.__begin_)
    {
      v13.__end_ = v13.__begin_;
      operator delete(v13.__begin_);
    }
  }

  return v3;
}

void sub_1B5357468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x1555555555555555)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<int,float,int>>>(a1, v9);
    }

    v11 = 12 * v6;
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *a1;
  *a1 = v5;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *a2;
  *a2 = v4;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = *(a1 + 16);
  v9 = *(a1 + 8);
  v10 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v8;
  v11 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v11;
  v12 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);
  *(a2 + 32) = v12;
  v13 = *(a1 + 36);
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = v13;
  if (*(a1 + 24))
  {
    v14 = *(a1 + 8);
    v15 = *(*(a1 + 16) + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v15 >= v14)
      {
        v15 %= v14;
      }
    }

    else
    {
      v15 &= v14 - 1;
    }

    *(*a1 + 8 * v15) = a1 + 16;
  }

  if (v11)
  {
    v16 = *(a2 + 8);
    v17 = *(*(a2 + 16) + 8);
    if ((v16 & (v16 - 1)) != 0)
    {
      if (v17 >= v16)
      {
        v17 %= v16;
      }
    }

    else
    {
      v17 &= v16 - 1;
    }

    *(*a2 + 8 * v17) = a2 + 16;
  }
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::FreeMostMemory(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(a1 + 72) = 0;
  }

  for (i = *(a1 + 112); i; i = *i)
  {
    v4 = i[2];
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      MEMORY[0x1B8C85350](v4, 0x20C40960023A9);
    }
  }

  memset(v7, 0, sizeof(v7));
  v8 = 0x3A8000003F800000;
  std::__hash_table<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,std::__unordered_map_hasher<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,true>,std::__unordered_map_equal<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetEqual,fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::SubsetKey,false>,std::allocator<std::__hash_value_type<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> const*,int>>>::swap(v7, a1 + 96);
  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v7);
}

void fst::StringRepository<int,int>::Destroy(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if (*a1 != v2)
  {
    do
    {
      v4 = *v3;
      if (*v3)
      {
        v5 = *v4;
        if (*v4)
        {
          *(v4 + 8) = v5;
          operator delete(v5);
        }

        MEMORY[0x1B8C85350](v4, 0x10C402FEFCB83);
        v2 = *(a1 + 8);
      }

      ++v3;
    }

    while (v3 != v2);
    v3 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  memset(v6, 0, sizeof(v6));
  v7 = 1065353216;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::swap(v6, a1 + 24);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v6);
  if (v3)
  {
    operator delete(v3);
  }
}

uint64_t fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::~DeterminizerStar(uint64_t a1)
{
  fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::FreeMostMemory(a1);
  fst::StringRepository<int,int>::~StringRepository((a1 + 136));
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 96);
  v3 = (a1 + 48);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  return std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::~deque[abi:ne200100](a1);
}

void **fst::StringRepository<int,int>::~StringRepository(void **a1)
{
  fst::StringRepository<int,int>::Destroy(a1);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 3));
  v2 = *a1;
  if (*a1)
  {
    a1[1] = v2;
    operator delete(v2);
  }

  return a1;
}

void *fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextFst(void *a1)
{
  *a1 = &unk_1F2D0DA18;
  v2 = a1[1];
  v3 = v2[14] - 1;
  v2[14] = v3;
  if (!v3)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextFst(void *a1)
{
  *a1 = &unk_1F2D0DA18;
  v1 = a1[1];
  v2 = v1[14] - 1;
  v1[14] = v2;
  if (!v2)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

void fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::ContextFstImpl(uint64_t a1)
{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(a1);
}

{
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(a1);
}

void sub_1B5357F6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    a14 = a13;
    operator delete(a13);
  }

  if (*(v18 + 431) < 0)
  {
    operator delete(*(v18 + 408));
  }

  kaldi::ConstIntegerSet<int>::~ConstIntegerSet((v18 + 328));
  kaldi::ConstIntegerSet<int>::~ConstIntegerSet((v18 + 264));
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v18 + 200);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a13);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v19);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v18);
  _Unwind_Resume(a1);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FindLabel(void *a1, int **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>(a1 + 25, a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((a1[31] - a1[30]) >> 3);
  std::vector<std::vector<int>>::push_back[abi:ne200100]((a1 + 30), a2);
  *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(a1 + 25, a2) + 10) = v5;
  return v5;
}

void fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextFstImpl(uint64_t a1)
{
  fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D012D8;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = FLAGS_fst_default_cache_gc;
  *(a1 + 112) = FLAGS_fst_default_cache_gc_limit;
  operator new();
}

void sub_1B5358244(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10A0C407A9BBF1FLL);
  v4 = *(v1 + 72);
  if (v4)
  {
    operator delete(v4);
  }

  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::~FstImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D0DAE0;
  if (*(a1 + 431) < 0)
  {
    operator delete(*(a1 + 408));
  }

  v2 = *(a1 + 368);
  if (v2)
  {
    *(a1 + 376) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 344);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 304);
  if (v4)
  {
    *(a1 + 312) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 280);
  if (v5)
  {
    operator delete(v5);
  }

  v7 = (a1 + 240);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a1 + 200);
  v7 = (a1 + 176);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(a1 + 136);
  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Start(uint64_t a1)
{
  if ((*(a1 + 60) & 1) == 0)
  {
    if ((*(*a1 + 32))(a1, 4))
    {
      *(a1 + 60) = 1;
    }

    else if ((*(a1 + 60) & 1) == 0)
    {
      std::vector<int>::vector[abi:ne200100](__p, *(a1 + 396) - 1);
      State = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FindState(a1, __p);
      *(a1 + 64) = State;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= State)
      {
        *(a1 + 68) = State + 1;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  return *(a1 + 64);
}

void sub_1B5358414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FindState(void *a1, int **a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,std::vector<quasar::Token>>>>::find<std::vector<int>>(a1 + 17, a2);
  if (v4)
  {
    return *(v4 + 10);
  }

  v5 = -1431655765 * ((a1[23] - a1[22]) >> 3);
  std::vector<std::vector<int>>::push_back[abi:ne200100]((a1 + 22), a2);
  *(std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(a1 + 17, a2) + 10) = v5;
  return v5;
}

float fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    v4 = *(a1 + 120);
    if (*(v4 + 76) == a2)
    {
      v5 = (v4 + 80);
    }

    else
    {
      v5 = (*(v4 + 8) + 8 * a2 + 8);
    }

    return **v5;
  }

  else
  {
    v6 = *(a1 + 400);
    v7 = 0.0;
    if (v6 < *(a1 + 396) - 1)
    {
      if (*(*(*(a1 + 176) + 24 * a2) + 4 * v6) == *(a1 + 392))
      {
        v7 = 0.0;
      }

      else
      {
        v7 = INFINITY;
      }
    }

    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    *MutableState = v7;
    *(MutableState + 48) |= 9u;
  }

  return v7;
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::NumArcs(uint64_t a1, unsigned int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2))
  {
    v4 = *(a1 + 120);
    if (*(v4 + 76) == a2)
    {
      v5 = v4 + 80;
    }

    else
    {
      v5 = *(v4 + 8) + 8 * a2 + 8;
    }

    return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
  }

  else
  {
    v6 = *(*(a1 + 176) + 24 * a2);
    v7 = *(*(a1 + 176) + 24 * a2 + 8);
    if (v6 == v7 || (v8 = *(v7 - 4), v8 != *(a1 + 392)))
    {
      v11 = ((*(a1 + 312) - *(a1 + 304)) >> 2) + ((*(a1 + 376) - *(a1 + 368)) >> 2);
    }

    else
    {
      v9 = *(a1 + 400);
      if (v9 == *(a1 + 396) - 1 || *(v6 + 4 * v9) == v8)
      {
        return (*(a1 + 376) - *(a1 + 368)) >> 2;
      }

      v11 = (*(a1 + 376) - *(a1 + 368)) >> 2;
    }

    return v11 + 1;
  }
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Expand(a1, a2);
  }

  v4 = *(a1 + 120);
  if (*(v4 + 76) == a2)
  {
    v5 = v4 + 80;
  }

  else
  {
    v5 = *(v4 + 8) + 8 * a2 + 8;
  }

  return *(*v5 + 8);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Expand(uint64_t a1, int a2)
{
  if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::CreateArc(a1, a2, *(a1 + 392), &v10))
  {
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v10);
  }

  for (i = *(a1 + 304); i != *(a1 + 312); ++i)
  {
    if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::CreateArc(a1, a2, *i, &v10))
    {
      v6 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v6 + 24, &v10);
    }
  }

  for (j = *(a1 + 368); j != *(a1 + 376); ++j)
  {
    if (fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::CreateArc(a1, a2, *j, &v10))
    {
      v8 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
      std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v8 + 24, &v10);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::CreateArc(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  v33 = a3;
  if (!a3)
  {
    return 0;
  }

  v8 = *(a1 + 176);
  if (kaldi::ConstIntegerSet<int>::count(a1 + 328, a3))
  {
    __p = 0;
    v28 = 0;
    v29 = 0;
    LODWORD(v30) = -a3;
    std::vector<int>::push_back[abi:ne200100](&__p, &v30);
    *a4 = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FindLabel(a1, &__p);
    a4[1] = a3;
    a4[2] = 0;
    a4[3] = a2;
    goto LABEL_4;
  }

  v10 = (v8 + 24 * a2);
  v11 = kaldi::ConstIntegerSet<int>::count(a1 + 264, a3);
  v12 = *(a1 + 392);
  if (!v11)
  {
    if (v12 != a3)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "ContextFst: CreateArc, invalid olabel supplied [confusion about phone list or disambig symbols?]: ", 98);
        MEMORY[0x1B8C84C00](v26, a3);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }

      exit(1);
    }

LABEL_13:
    v14 = *(a1 + 400);
    if (v14 != *(a1 + 396) - 1 && *(*v10 + 4 * v14) != a3)
    {
      goto LABEL_16;
    }

    return 0;
  }

  if (v12 == a3)
  {
    goto LABEL_13;
  }

  v13 = v10[1];
  if (*v10 != v13 && *(v13 - 4) == v12)
  {
    return 0;
  }

LABEL_16:
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 396) - 1);
  LODWORD(v15) = *(a1 + 396);
  v16 = v15 - 2;
  if (v15 > 2)
  {
    v17 = 0;
    v18 = __p;
    v19 = *v10 + 4;
    do
    {
      v18[v17] = *(v19 + 4 * v17);
      v15 = *(a1 + 396);
      v16 = v15 - 2;
      ++v17;
    }

    while (v17 < v15 - 2);
  }

  if (v15 >= 2)
  {
    *(__p + v16) = a3;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v30, *v10, v10[1], (v10[1] - *v10) >> 2);
  State = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FindState(a1, &__p);
  std::vector<int>::push_back[abi:ne200100](&v30, &v33);
  v21 = *(a1 + 396);
  v22 = v30;
  if (v21 >= 2)
  {
    for (i = 1; i < v21; ++i)
    {
      if (v22[i] == *(a1 + 392))
      {
        v22[i] = 0;
        v21 = *(a1 + 396);
      }
    }
  }

  v24 = v33;
  if (v22[*(a1 + 400)])
  {
    Label = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::FindLabel(a1, &v30);
    v22 = v30;
    *a4 = Label;
    a4[1] = v24;
    a4[2] = 0;
    a4[3] = State;
    if (!v22)
    {
      goto LABEL_4;
    }
  }

  else
  {
    *a4 = *(a1 + 404);
    a4[1] = v24;
    a4[2] = 0;
    a4[3] = State;
  }

  v31 = v22;
  operator delete(v22);
LABEL_4:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return 1;
}

void *fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::ContextFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D0DA18;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void sub_1B5358C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&a9);
  if (*(v9 + 431) < 0)
  {
    operator delete(*(v9 + 408));
  }

  v12 = *(v9 + 368);
  if (v12)
  {
    *(v9 + 376) = v12;
    operator delete(v12);
  }

  v13 = *(v9 + 344);
  if (v13)
  {
    operator delete(v13);
  }

  v14 = *(v9 + 304);
  if (v14)
  {
    *(v9 + 312) = v14;
    operator delete(v14);
  }

  v15 = *(v9 + 280);
  if (v15)
  {
    operator delete(v15);
  }

  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v9 + 200);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::~__hash_table(v10);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v9);
  _Unwind_Resume(a1);
}

uint64_t fst::CacheStateIterator<fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::Done(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  if (v2 < *(v3 + 68))
  {
    return 0;
  }

  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v3);
  if (v5 >= *(*(a1 + 16) + 68))
  {
    return 1;
  }

  v6 = v5;
  do
  {
    fst::ArcIterator<fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::ArcIterator(&v19, *(a1 + 8), v6);
    v7 = *(v19 + 24);
    v8 = (*(v19 + 32) - v7) >> 4;
    v9 = *(a1 + 16);
    v10 = v8 - v20;
    if (v8 > v20)
    {
      v11 = *(v9 + 68);
      v12 = (v7 + 16 * v20 + 12);
      do
      {
        v14 = *v12;
        v12 += 4;
        v13 = v14;
        if (v11 <= v14)
        {
          v11 = v13 + 1;
          *(v9 + 68) = v13 + 1;
        }

        --v10;
      }

      while (v10);
      v20 = v8;
    }

    fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::SetExpandedState(v9, v6);
    v15 = *(a1 + 24);
    v16 = *(a1 + 16);
    v17 = *(v16 + 68);
    --*(v19 + 52);
    v4 = v15 >= v17;
    if (v15 < v17)
    {
      break;
    }

    v6 = fst::CacheBaseImpl<fst::CacheState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::DefaultCacheStore<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::MinUnexpandedState(v16);
  }

  while (v6 < *(*(a1 + 16) + 68));
  return v4;
}

uint64_t *fst::ArcIterator<fst::ContextFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::ArcIterator(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 8);
  a1[1] = 0;
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(v6 + 120), a3);
  *a1 = MutableState;
  ++*(MutableState + 52);
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(*(a2 + 8), a3) & 1) == 0)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Expand(*(a2 + 8), a3);
  }

  return a1;
}

uint64_t fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D0DBE0;
  v8 = *(a4 + 40);
  if (!v8)
  {
    operator new();
  }

  *(a1 + 136) = v8;
  v9 = *v8;
  *(a1 + 144) = *v8;
  *(a1 + 160) = (*(*v9.n128_u64[0] + 32))(v9.n128_u64[0], v9);
  *(a1 + 168) = (*(**(a1 + 152) + 32))(*(a1 + 152));
  v10 = *(a4 + 48);
  if (!v10)
  {
    operator new();
  }

  *(a1 + 176) = v10;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
  if (*(a1 + 184) == 3)
  {
    *(a1 + 8) |= 4uLL;
  }

  v11 = (*(*a2 + 64))(a2, 0x3FFFFFFF0007, 0);
  v12 = (*(*a3 + 64))(a3, 0x3FFFFFFF0007, 0);
  v13 = (*(**(a1 + 144) + 40))(*(a1 + 144), v11);
  v14 = (*(**(a1 + 152) + 40))(*(a1 + 152), v12);
  *(a1 + 8) = *(a1 + 8) & 0xFFFFC0000000FFFFLL | fst::ComposeProperties(v13, v14) & 0x3FFFFFFF0004;
  return a1;
}

void sub_1B5359208(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
{
  if (((*(**(a1 + 144) + 48))(*(a1 + 144)) & 1) != 0 && (*(**(a1 + 144) + 24))(*(a1 + 144), 1) != 1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v13 = fst::LogMessage::LogMessage(&v18, __p);
    v14 = fst::cerr(v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "ComposeFst: 1st argument requires matching but cannot.", 54);
  }

  else if (((*(**(a1 + 152) + 48))(*(a1 + 152)) & 1) != 0 && (*(**(a1 + 152) + 24))(*(a1 + 152), 1))
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v2 = fst::LogMessage::LogMessage(&v18, __p);
    v3 = fst::cerr(v2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "ComposeFst: 2nd argument requires matching but cannot.", 54);
  }

  else
  {
    v4 = (*(**(a1 + 144) + 24))(*(a1 + 144), 0);
    v5 = (*(**(a1 + 152) + 24))(*(a1 + 152), 0);
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v6 = v4 == 1;
    }

    if (v6)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    v8 = v4 == 1;
    if (v4 == 1)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    if (v8 || v5 == 0)
    {
      goto LABEL_36;
    }

    v9 = 1;
    if ((*(**(a1 + 144) + 24))(*(a1 + 144), 1) == 1)
    {
      goto LABEL_36;
    }

    if (!(*(**(a1 + 152) + 24))(*(a1 + 152), 1))
    {
      v9 = 0;
      goto LABEL_36;
    }

    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v18, __p);
    v12 = fst::cerr(v11);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: 1st argument cannot match on output labels ", 55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "and 2nd argument cannot match on input labels (sort?).", 54);
  }

  fst::LogMessage::~LogMessage(&v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 3;
LABEL_36:
  *(a1 + 184) = v9;
}

void sub_1B53595AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v17 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v7, v5, v6, &v17);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
  {
    v9 = a1[20];
    v8 = a1[21];
    v10 = a1[19];
    v11 = a1;
    v12 = a2;
    v13 = v6;
    v14 = v5;
    v15 = 1;
  }

  else
  {
    v8 = a1[20];
    v9 = a1[21];
    v10 = a1[18];
    v11 = a1;
    v12 = a2;
    v13 = v5;
    v14 = v6;
    v15 = 0;
  }

  return fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
{
  result = (*(*a1[20] + 24))(a1[20]);
  if (result != -1)
  {
    v3 = result;
    result = (*(*a1[21] + 24))(a1[21]);
    if (result != -1)
    {
      v4 = __PAIR64__(result, v3);
      v5 = 0;
      return fst::CompactHashBiTable<int,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,std::equal_to<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>,(fst::HSType)1>::FindId(a1[22], &v4, 1);
    }
  }

  return result;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(uint64_t a1, int a2)
{
  v3 = (*(*(a1 + 176) + 80) + 12 * a2);
  v4 = *v3;
  v7 = (*(**(a1 + 144) + 96))(*(a1 + 144), v4);
  if (v7 != INFINITY)
  {
    v5 = v3[1];
    v7 = (*(**(a1 + 152) + 96))(*(a1 + 152), v5);
    if (v7 != INFINITY)
    {
      v6 = *(a1 + 136);
      LOBYTE(v7) = *(v3 + 8);
      fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetState(v6, v4, v5, &v7);
    }
  }
}

uint64_t fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::SequenceComposeFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a4)
  {
    operator new();
  }

  *a1 = a4;
  if (!a5)
  {
    operator new();
  }

  *(a1 + 8) = a5;
  *(a1 + 16) = (*(*a4 + 32))(a4);
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

uint64_t fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::ContextMatcher(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = &unk_1F2D0DC58;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 20) = -1;
  *(a1 + 44) = 0;
  if (a3 != 1)
  {
    goto LABEL_20;
  }

  v6 = (*(*a2 + 72))(a2);
  std::string::basic_string[abi:ne200100]<0>(__p, "context");
  v7 = *(v6 + 23);
  if (v7 >= 0)
  {
    v8 = *(v6 + 23);
  }

  else
  {
    v8 = *(v6 + 8);
  }

  v9 = v17;
  v10 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if ((v17 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    v13 = memcmp(v11, v12, v8) == 0;
    if (v10 < 0)
    {
LABEL_19:
      operator delete(__p[0]);
      if (!v13)
      {
        goto LABEL_20;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    if (v17 < 0)
    {
      goto LABEL_19;
    }
  }

  if (!v13)
  {
LABEL_20:
    v14 = 3;
    goto LABEL_21;
  }

LABEL_18:
  v14 = 1;
LABEL_21:
  *(a1 + 16) = v14;
  return a1;
}

void *fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextMatcher(void *a1)
{
  *a1 = &unk_1F2D0DC58;
  v2 = a1[1];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::~ContextMatcher(void *a1)
{
  *a1 = &unk_1F2D0DC58;
  v1 = a1[1];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Priority_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 40);

  return v1();
}

void fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::SetState(uint64_t a1, int a2)
{
  if (*(a1 + 16) == 3)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v4 = fst::LogMessage::LogMessage(&v8, __p);
    v5 = fst::cerr(v4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "ContextMatcher: bad match type", 30);
    fst::LogMessage::~LogMessage(&v8);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 24) = a2;
}

void sub_1B535A14C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Find(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == -1)
    {
      result = 0;
      *(a1 + 44) = 0;
      return result;
    }

    result = fst::ContextFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::CreateArc(*(*(a1 + 8) + 8), *(a1 + 24), a2, (a1 + 28));
  }

  else
  {
    *(a1 + 28) = 0xFFFFFFFF00000000;
    v4 = *(a1 + 24);
    *(a1 + 36) = 0;
    *(a1 + 40) = v4;
    result = 1;
  }

  *(a1 + 44) = result;
  return result;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  *a1 = &unk_1F2D0DBE0;
  v2 = a1[17];
  if (v2)
  {
    v3 = fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::~SequenceComposeFilter(v2);
    MEMORY[0x1B8C85350](v3, 0x1060C40AD892F49);
  }

  v4 = a1[22];
  if (v4)
  {
    v5 = *(v4 + 80);
    if (v5)
    {
      *(v4 + 88) = v5;
      operator delete(v5);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4 + 24);
    MEMORY[0x1B8C85350](v4, 0x10E0C406D28CB5CLL);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

uint64_t *fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::~SequenceComposeFilter(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

void sub_1B535A414(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>::SequenceComposeFilter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = (*(**a2 + 16))(*a2, a3);
  *(a1 + 8) = (*(*a2[1] + 16))(a2[1], a3);
  *(a1 + 16) = (*(**a1 + 32))();
  *(a1 + 24) = -1;
  *(a1 + 32) = -1;
  return a1;
}

BOOL fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 184);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return 0;
  }

  v7 = (*(**(a1 + 144) + 104))(*(a1 + 144));
  v8 = (*(**(a1 + 152) + 104))(*(a1 + 152), a3);
  if (v7 == -1 && v8 == -1)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
    }

    v11 = fst::LogMessage::LogMessage(&v15, __p);
    v12 = fst::cerr(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ComposeFst: both sides can't require match", 42);
    fst::LogMessage::~LogMessage(&v15);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 8) |= 4uLL;
    return 1;
  }

  if (v7 == -1)
  {
    return 0;
  }

  return v8 == -1 || v7 <= v8;
}

void sub_1B535A680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::SetState(a7, a4);
  LODWORD(v19) = a8 - 1;
  *(&v19 + 4) = (a8 << 31 >> 31);
  HIDWORD(v19) = a6;
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(a1, a2, a7, &v19, a8);
  v18 = 0;
  (*(*a5 + 136))(a5, a6, v16);
  while (1)
  {
    if (!v16[0])
    {
      if (v18 >= v16[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v14 = (v16[1] + 16 * v18);
      goto LABEL_8;
    }

    if ((*(*v16[0] + 24))(v16[0]))
    {
      break;
    }

    if (!v16[0])
    {
      goto LABEL_7;
    }

    v14 = (*(*v16[0] + 32))();
LABEL_8:
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(a1, a2, a7, v14, a8);
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
    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

LABEL_13:
  if (v17)
  {
    --*v17;
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B535A890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, int a2, uint64_t a3, __int128 *a4, int a5)
{
  v10 = 4;
  if (!a5)
  {
    v10 = 0;
  }

  if (fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Find(a3, *(a4 + v10)) && *(a3 + 44) == 1)
  {
    v11 = *(a3 + 28);
    v23 = *a4;
    v24 = v11;
    if (a5)
    {
      v12 = *(a1 + 136);
      if (DWORD1(v23) != -1)
      {
        if (v24 == -1)
        {
          v16 = v12[32];
          if (v16)
          {
            v17 = -1;
          }

          else
          {
            v17 = 0;
          }

          v22 = v17;
          if (v16)
          {
            goto LABEL_35;
          }
        }

        else
        {
          if (DWORD1(v23))
          {
            v13 = 0;
          }

          else
          {
            v13 = -1;
          }

          v22 = v13;
          if (!DWORD1(v23))
          {
            goto LABEL_35;
          }
        }

        goto LABEL_28;
      }

      if ((v12[33] & 1) == 0)
      {
        v22 = v12[34] ^ 1;
LABEL_28:
        v18 = &v23;
        v19 = &v24;
LABEL_34:
        fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::AddArc(a1, a2, v18, v19, &v22);
      }

LABEL_35:
      *(a3 + 44) = 0;
      return;
    }

    v14 = *(a1 + 136);
    if (DWORD1(v24) == -1)
    {
      if (v14[33])
      {
        goto LABEL_35;
      }

      v22 = v14[34] ^ 1;
    }

    else if (v23 == -1)
    {
      v20 = v14[32];
      if (v20)
      {
        v21 = -1;
      }

      else
      {
        v21 = 0;
      }

      v22 = v21;
      if (v20)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (DWORD1(v24))
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      v22 = v15;
      if (!DWORD1(v24))
      {
        goto LABEL_35;
      }
    }

    v18 = &v24;
    v19 = &v23;
    goto LABEL_34;
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_1F2D0DCF0;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = -1;
  *(a1 + 28) = a4;
  *(a1 + 32) = (*(**(a3 + 144) + 16))(*(a3 + 144), 0);
  *(a1 + 40) = (*(**(a3 + 152) + 16))(*(a3 + 152), 0);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = 0;
  if (a4 == 1)
  {
    *(a1 + 52) = 0xFFFFFFFF00000000;
  }

  return a1;
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Type(uint64_t a1, uint64_t a2)
{
  result = (*(**(a1 + 32) + 24))(*(a1 + 32));
  if (result != 3)
  {
    result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
    if (result != 3)
    {
      if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != 4 || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
      {
        if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) == 4 && (*(**(a1 + 40) + 24))(*(a1 + 40), a2) == *(a1 + 28))
        {
          return 4;
        }

        else if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28) || (result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2), result != 4))
        {
          if ((*(**(a1 + 32) + 24))(*(a1 + 32), a2) != *(a1 + 28))
          {
            return 3;
          }

          result = (*(**(a1 + 40) + 24))(*(a1 + 40), a2);
          if (result != *(a1 + 28))
          {
            return 3;
          }
        }
      }
    }
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

void fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetState_(uint64_t a1, int a2)
{
  if (*(a1 + 24) != a2)
  {
    *(a1 + 24) = a2;
    v3 = (*(*(*(a1 + 16) + 176) + 80) + 12 * a2);
    v4 = v3[1];
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::SetState(*(a1 + 32), *v3);
    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::SetState(*(a1 + 40), v4);
    *(a1 + 64) = *(a1 + 24);
  }
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Find_(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2 == 0;
  if (!a2)
  {
    return 1;
  }

  v2 = 32;
  if (*(a1 + 28))
  {
    v3 = 32;
  }

  else
  {
    v3 = 40;
  }

  if (*(a1 + 28))
  {
    v2 = 40;
  }

  return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(a1, a2, *(a1 + v2), *(a1 + v3));
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Done_(uint64_t a1)
{
  if (*(a1 + 48) & 1) != 0 || (*(*(a1 + 32) + 44))
  {
    v1 = 0;
  }

  else
  {
    v1 = *(*(a1 + 40) + 44) ^ 1;
  }

  return v1 & 1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Value_(uint64_t a1)
{
  v1 = 68;
  if (*(a1 + 48))
  {
    v1 = 52;
  }

  return a1 + v1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Next_(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    *(result + 48) = 0;
  }

  else
  {
    if (*(result + 28))
    {
      v2 = *(result + 32);
      v1 = *(result + 40);
    }

    else
    {
      v1 = *(result + 32);
      v2 = *(result + 40);
    }

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(result, v1, v2);
  }

  return result;
}

void *fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstMatcher(void *a1)
{
  *a1 = &unk_1F2D0DCF0;
  v2 = a1[4];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return a1;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D0DCF0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = -1;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = (*(**(a2 + 32) + 16))(*(a2 + 32), a3);
  *(a1 + 40) = (*(**(a2 + 40) + 16))(*(a2 + 40), a3);
  *(a1 + 48) = 0;
  *(a1 + 52) = xmmword_1B5AE3080;
  *(a1 + 84) = *(a2 + 84);
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

    v6 = fst::LogMessage::LogMessage(&v11, __p);
    v7 = fst::cerr(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "ComposeFstMatcher: safe copy not supported", 42);
    fst::LogMessage::~LogMessage(&v11);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }

    *(a1 + 84) = 1;
  }

  if (*(a1 + 28) == 1)
  {
    *(a1 + 52) = vrev64_s32(*(a1 + 52));
  }

  return a1;
}

void sub_1B535B174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindLabel<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Find(a3, a2);
  if (result)
  {
    v8 = 28;
    if (!*(a1 + 28))
    {
      v8 = 32;
    }

    fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>::Find(a4, *(a3 + v8));

    return fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(a1, a3, a4);
  }

  return result;
}

uint64_t fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::FindNext<fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>,fst::ContextMatcher<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,int>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (a2 + 28);
  v7 = (a3 + 28);
  LOBYTE(v8) = *(a3 + 44);
  while ((*(a2 + 44) & 1) != 0)
  {
    if ((v8 & 1) == 0)
    {
      *(a2 + 44) = 0;
    }

LABEL_6:
    while (1)
    {
      v8 = *(a3 + 44);
      if (v8 != 1)
      {
        break;
      }

      *(a3 + 44) = 0;
      v9 = *(a1 + 28);
      v10 = v9 == 0;
      if (v9)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

      v12 = *v11;
      v13 = v11[1];
      if (v10)
      {
        v14 = v7;
      }

      else
      {
        v14 = v6;
      }

      if (fst::ComposeFstMatcher<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchArc(a1, *(a1 + 24), v12, v13, *v14, v14[1]))
      {
        return 1;
      }
    }
  }

  if (v8)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t fst::StateMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, void *a2)
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
        v8 = fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(a2, v7);
        (*(*a1 + 240))(a1, v7, v8);
        for (i = a2[5]; ; a2[5] = i)
        {
          v10 = a2[2];
          if (i >= (a2[3] - v10) >> 4)
          {
            break;
          }

          (*(*a1 + 208))(a1, v7, v10 + 16 * i);
          i = a2[5] + 1;
        }

        (*(**a2 + 32))(*a2, v7);
        (*(*a1 + 184))(a1, v7);
        v7 = (v7 + 1);
      }

      while (v7 < (*(*a1 + 160))(a1));
    }

    v11 = *(*a1 + 192);

    return v11(a1, v5 & 0x3FFF0FFF0007 | (((v5 >> 16) & 1) << 28) | 0x40000000, 0x3FFFFFFF0007);
  }

  return result;
}

double fst::ArcSortMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetState(void *a1, uint64_t a2)
{
  a1[5] = 0;
  v4 = a1 + 2;
  a1[3] = a1[2];
  v5 = (*(**a1 + 40))(*a1);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(v4, v5);
  v6 = *a1;
  v16 = 0;
  (*(*v6 + 136))(v6, a2, v14);
  while (1)
  {
    if (!v14[0])
    {
      if (v16 >= v14[2])
      {
        goto LABEL_13;
      }

LABEL_7:
      v8 = (v14[1] + 16 * v16);
      goto LABEL_8;
    }

    if ((*(*v14[0] + 24))(v14[0]))
    {
      break;
    }

    if (!v14[0])
    {
      goto LABEL_7;
    }

    v8 = (*(*v14[0] + 32))();
LABEL_8:
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v4, v8);
    if (v14[0])
    {
      (*(*v14[0] + 40))(v14[0]);
    }

    else
    {
      ++v16;
    }
  }

  if (v14[0])
  {
    (*(*v14[0] + 8))();
    goto LABEL_15;
  }

LABEL_13:
  if (v15)
  {
    --*v15;
  }

LABEL_15:
  v9 = a1[2];
  v10 = a1[3];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *&result = std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(v9, v10, v14, v12, 1, v7).n128_u64[0];
  return result;
}

void sub_1B535B754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a10);
  }

  _Unwind_Resume(a1);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 1;
  v39 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
LABEL_2:
  v13 = 1 - a4;
  while (1)
  {
    a1 = v12;
    v14 = v13;
    v15 = a2 - v12;
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return result;
      }

      if (v15 == 2)
      {
        if (a2[-1].n128_u32[1] < v12->n128_u32[1])
        {
          v62 = *v12;
          *v12 = a2[-1];
          result = v62;
          a2[-1] = v62;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      v37 = v12[1].n128_i32[1];
      v38 = v12[2].n128_i32[1];
      if (v37 >= v12->n128_u32[1])
      {
        if (v38 < v37)
        {
          result = v12[1];
          v12[1] = v12[2];
          v12[2] = result;
          if (v12[1].n128_u32[1] < v12->n128_u32[1])
          {
            v64 = *v12;
            *v12 = v12[1];
            result = v64;
            v12[1] = v64;
          }
        }
      }

      else
      {
        if (v38 < v37)
        {
          v63 = *v12;
          *v12 = v12[2];
          result = v63;
          goto LABEL_103;
        }

        v66 = *v12;
        *v12 = v12[1];
        result = v66;
        v12[1] = v66;
        if (v38 < v12[1].n128_u32[1])
        {
          result = v12[1];
          v12[1] = v12[2];
LABEL_103:
          v12[2] = result;
        }
      }

      if (a2[-1].n128_u32[1] >= v12[2].n128_u32[1])
      {
        return result;
      }

      result = v12[2];
      v12[2] = *v10;
      *v10 = result;
      if (v12[2].n128_u32[1] >= v12[1].n128_u32[1])
      {
        return result;
      }

      result = v12[1];
      v12[1] = v12[2];
      v12[2] = result;
LABEL_107:
      if (v12[1].n128_u32[1] < v12->n128_u32[1])
      {
        v67 = *v12;
        *v12 = v12[1];
        result = v67;
        v12[1] = v67;
      }

      return result;
    }

    if (v15 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,0>(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
      return result;
    }

LABEL_10:
    if (v15 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, a2);
      }

      return result;
    }

    if (v13 == 1)
    {
      if (v12 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, a2, a2, a3);
      }

      return result;
    }

    v16 = &v12[v15 >> 1];
    v17 = a2[-1].n128_i32[1];
    if (v15 >= 0x81)
    {
      v18 = v16->n128_i32[1];
      if (v18 >= v12->n128_u32[1])
      {
        if (v17 < v18)
        {
          v42 = *v16;
          *v16 = *v10;
          *v10 = v42;
          if (v16->n128_u32[1] < v12->n128_u32[1])
          {
            v43 = *v12;
            *v12 = *v16;
            *v16 = v43;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v40 = *v12;
          *v12 = *v10;
          goto LABEL_28;
        }

        v46 = *v12;
        *v12 = *v16;
        *v16 = v46;
        if (a2[-1].n128_u32[1] < v16->n128_u32[1])
        {
          v40 = *v16;
          *v16 = *v10;
LABEL_28:
          *v10 = v40;
        }
      }

      v20 = v16 - 1;
      v21 = v16[-1].n128_i32[1];
      v22 = a2[-2].n128_i32[1];
      if (v21 >= v12[1].n128_u32[1])
      {
        if (v22 < v21)
        {
          v47 = *v20;
          *v20 = *v39;
          *v39 = v47;
          if (v16[-1].n128_u32[1] < v12[1].n128_u32[1])
          {
            v48 = v12[1];
            v12[1] = *v20;
            *v20 = v48;
          }
        }
      }

      else
      {
        if (v22 < v21)
        {
          v23 = v12[1];
          v24 = a2 - 2;
          v12[1] = *v39;
          goto LABEL_42;
        }

        v50 = v12[1];
        v12[1] = *v20;
        *v20 = v50;
        if (a2[-2].n128_u32[1] < v16[-1].n128_u32[1])
        {
          v51 = *v20;
          v24 = a2 - 2;
          *v20 = *v39;
          v23 = v51;
LABEL_42:
          *v24 = v23;
        }
      }

      v25 = v16[1].n128_i32[1];
      v26 = a2[-3].n128_i32[1];
      if (v25 >= v12[2].n128_u32[1])
      {
        if (v26 < v25)
        {
          v52 = v16[1];
          v16[1] = *v11;
          *v11 = v52;
          if (v16[1].n128_u32[1] < v12[2].n128_u32[1])
          {
            v53 = v12[2];
            v12[2] = v16[1];
            v16[1] = v53;
          }
        }
      }

      else
      {
        if (v26 < v25)
        {
          v27 = v12[2];
          v12[2] = *v11;
          goto LABEL_51;
        }

        v54 = v12[2];
        v12[2] = v16[1];
        v16[1] = v54;
        if (a2[-3].n128_u32[1] < v16[1].n128_u32[1])
        {
          v55 = v16[1];
          v16[1] = *v11;
          v27 = v55;
LABEL_51:
          *v11 = v27;
        }
      }

      v28 = v16->n128_i32[1];
      v29 = v16[1].n128_i32[1];
      if (v28 >= v16[-1].n128_u32[1])
      {
        if (v29 < v28)
        {
          v57 = *v16;
          *v16 = v16[1];
          v16[1] = v57;
          if (v16->n128_u32[1] < v16[-1].n128_u32[1])
          {
            v58 = *v20;
            *v20 = *v16;
            *v16 = v58;
          }
        }
      }

      else
      {
        if (v29 < v28)
        {
          v56 = *v20;
          *v20 = v16[1];
          goto LABEL_60;
        }

        v59 = *v20;
        *v20 = *v16;
        *v16 = v59;
        if (v16[1].n128_u32[1] < v16->n128_u32[1])
        {
          v56 = *v16;
          *v16 = v16[1];
LABEL_60:
          v16[1] = v56;
        }
      }

      v60 = *v12;
      *v12 = *v16;
      *v16 = v60;
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    v19 = v12->n128_i32[1];
    if (v19 < v16->n128_u32[1])
    {
      if (v17 < v19)
      {
        v41 = *v16;
        *v16 = *v10;
        goto LABEL_37;
      }

      v49 = *v16;
      *v16 = *v12;
      *v12 = v49;
      if (a2[-1].n128_u32[1] < v12->n128_u32[1])
      {
        v41 = *v12;
        *v12 = *v10;
LABEL_37:
        *v10 = v41;
      }

LABEL_38:
      if (a5)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (v17 >= v19)
    {
      goto LABEL_38;
    }

    v44 = *v12;
    *v12 = *v10;
    *v10 = v44;
    if (v12->n128_u32[1] >= v16->n128_u32[1])
    {
      goto LABEL_38;
    }

    v45 = *v16;
    *v16 = *v12;
    *v12 = v45;
    if (a5)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v12[-1].n128_u32[1] >= v12->n128_u32[1])
    {
      v12 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(v12, a2);
      goto LABEL_68;
    }

LABEL_63:
    v30 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,fst::ArcTpl<fst::TropicalWeightTpl<float>,int> *,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &>(v12, a2);
    if ((v32 & 1) == 0)
    {
      goto LABEL_66;
    }

    v33 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v12, v30, v31);
    v12 = v30 + 1;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*>(v30 + 1, a2, v34))
    {
      a4 = -v14;
      a2 = v30;
      if (v33)
      {
        return result;
      }

      goto LABEL_1;
    }

    v13 = v14 + 1;
    if (!v33)
    {
LABEL_66:
      std::__introsort<std::_ClassicAlgPolicy,fst::OLabelCompare<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>*,false>(a1, v30, a3, -v14, a5 & 1);
      v12 = v30 + 1;
LABEL_68:
      a5 = 0;
      a4 = -v14;
      goto LABEL_2;
    }
  }

  v35 = v12[1].n128_i32[1];
  v36 = a2[-1].n128_i32[1];
  if (v35 >= v12->n128_u32[1])
  {
    if (v36 >= v35)
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
    *v10 = result;
    goto LABEL_107;
  }

  if (v36 >= v35)
  {
    v65 = *v12;
    *v12 = v12[1];
    result = v65;
    v12[1] = v65;
    if (a2[-1].n128_u32[1] >= v12[1].n128_u32[1])
    {
      return result;
    }

    result = v12[1];
    v12[1] = *v10;
  }

  else
  {
    v61 = *v12;
    *v12 = *v10;
    result = v61;
  }

  *v10 = result;
  return result;
}