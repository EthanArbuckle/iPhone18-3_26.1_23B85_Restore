uint64_t std::vector<marrs::mrr::mr::MRREntity>::__emplace_back_slow_path<marrs::mrr::mr::MRREntity&>(uint64_t a1, const marrs::mrr::mr::MRREntity *a2)
{
  v2 = 0x84BDA12F684BDA13 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x12F684BDA12F684)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x97B425ED097B426 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x84BDA12F684BDA13 * ((*(a1 + 16) - *a1) >> 3) >= 0x97B425ED097B42)
  {
    v5 = 0x12F684BDA12F684;
  }

  else
  {
    v5 = v3;
  }

  v15 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>>(v5);
  }

  v12 = 0;
  v13 = 216 * v2;
  marrs::mrr::mr::MRREntity::MRREntity((216 * v2), a2);
  v14 = 216 * v2 + 216;
  v6 = *(a1 + 8);
  v7 = 216 * v2 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>,marrs::mrr::mr::MRREntity*>(*a1, v6, v7);
  v8 = *a1;
  *a1 = v7;
  v9 = *(a1 + 16);
  v11 = v14;
  *(a1 + 8) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<marrs::mrr::mr::MRREntity>::~__split_buffer(&v12);
  return v11;
}

void sub_222815E40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<marrs::mrr::mr::MRREntity>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<marrs::mrr::mr::EntityWithDistance>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        marrs::mrr::mr::MRREntity::~MRREntity(v4 - 28);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<marrs::mrr::mr::MRREntity>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRREntity*,marrs::mrr::mr::MRREntity*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x12F684BDA12F685)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::__split_buffer<marrs::mrr::mr::EntityWithDistance>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 224;
    marrs::mrr::mr::MRREntity::~MRREntity((i - 224));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(uint64_t a1, uint64_t a2)
{
  v9 = *a1;
  *v10 = *(a1 + 8);
  v11 = *(a1 + 24);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *v14 = *(a1 + 56);
  v15 = *(a1 + 72);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v3 = *(a1 + 80);
  *&v16[12] = *(a1 + 92);
  v4 = *(a1 + 112);
  *v16 = v3;
  v17 = v4;
  v5 = *(a1 + 128);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v6 = *(a1 + 136);
  v7 = *(a1 + 152);
  v18 = v5;
  v20 = v7;
  v19 = v6;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v21 = *(a1 + 160);
  v8 = *(a1 + 168);
  v23 = *(a1 + 184);
  __p = v8;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v24 = *(a1 + 192);
  v25 = *(a1 + 208);
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v26 = *(a1 + 216);
  *(marrs::mrr::mr::MRREntity::operator=(a1, a2) + 216) = *(a2 + 216);
  marrs::mrr::mr::MRREntity::operator=(a2, &v9);
  *(a2 + 216) = v26;
  v27 = &v24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  v27 = &v17;
  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 216);
  v9 = *(a3 + 216);
  if (v8 >= *(a1 + 216))
  {
    if (v9 < v8)
    {
      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a2, a3);
      if (*(a2 + 216) < *(v7 + 216))
      {
        a1 = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, v10);
      goto LABEL_10;
    }

    std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, a2);
    if (*(a3 + 216) < *(a2 + 216))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 216) < *(a3 + 216))
  {
    std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a3, a4);
    if (*(a3 + 216) < *(a2 + 216))
    {
      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a2, a3);
      if (*(a2 + 216) < *(v7 + 216))
      {

        std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *>(float *a1, float *a2)
{
  v3 = a1;
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 5);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = a1[110];
        v9 = *(a2 - 2);
        if (v8 < a1[54])
        {
          if (v9 >= v8)
          {
            std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, (a1 + 56));
            if (*(a2 - 2) >= v3[110])
            {
              return 1;
            }

            a1 = v3 + 56;
          }

          v5 = (a2 - 56);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 56);
        v7 = (a2 - 56);
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,0>(a1, (a1 + 56), (a1 + 112), (a2 - 56));
        return 1;
      case 5:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,marrs::mrr::mr::EntityWithDistance *,0>(a1, (a1 + 56), (a1 + 112), (a1 + 168));
        if (*(a2 - 2) >= v3[222])
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>((v3 + 168), (a2 - 56));
        if (v3[222] >= v3[166])
        {
          return 1;
        }

        std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>((v3 + 112), (v3 + 168));
        if (v3[166] >= v3[110])
        {
          return 1;
        }

        v6 = (v3 + 56);
        v7 = (v3 + 112);
        break;
      default:
        goto LABEL_16;
    }

    std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(v6, v7);
    if (v3[110] < v3[54])
    {
      v5 = (v3 + 56);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 2) < a1[54])
    {
      v5 = (a2 - 56);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = a1 + 112;
  v11 = a1[110];
  v12 = a1[166];
  if (v11 < a1[54])
  {
    if (v12 >= v11)
    {
      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, (a1 + 56));
      if (v3[166] >= v3[110])
      {
        goto LABEL_36;
      }

      a1 = v3 + 56;
    }

    v13 = (v3 + 112);
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>((a1 + 56), (a1 + 112));
    if (v3[110] < v3[54])
    {
      v13 = (v3 + 56);
      a1 = v3;
LABEL_35:
      std::iter_swap[abi:ne200100]<marrs::mrr::mr::EntityWithDistance *,marrs::mrr::mr::EntityWithDistance *>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 168;
  if (v3 + 168 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = v14[54];
    if (v17 < v10[54])
    {
      v26 = *v14;
      v27 = *(v14 + 2);
      v28 = *(v14 + 3);
      *(v14 + 1) = 0;
      *(v14 + 2) = 0;
      v29 = *(v14 + 2);
      v30 = *(v14 + 6);
      *(v14 + 3) = 0;
      *(v14 + 4) = 0;
      *(v14 + 5) = 0;
      *(v14 + 6) = 0;
      v31 = *(v14 + 14);
      v32 = *(v14 + 9);
      *(v14 + 7) = 0;
      *(v14 + 8) = 0;
      *(v14 + 9) = 0;
      v18 = *(v14 + 5);
      *(v33 + 12) = *(v14 + 23);
      v33[0] = v18;
      v34 = *(v14 + 7);
      v35 = *(v14 + 16);
      *(v14 + 14) = 0;
      *(v14 + 15) = 0;
      v19 = *(v14 + 34);
      v37 = *(v14 + 19);
      v36 = v19;
      *(v14 + 16) = 0;
      *(v14 + 17) = 0;
      *(v14 + 18) = 0;
      *(v14 + 19) = 0;
      v38 = *(v14 + 40);
      v20 = *(v14 + 42);
      v40 = *(v14 + 23);
      __p = v20;
      *(v14 + 21) = 0;
      *(v14 + 22) = 0;
      v41 = *(v14 + 12);
      v42 = *(v14 + 26);
      *(v14 + 23) = 0;
      *(v14 + 24) = 0;
      *(v14 + 25) = 0;
      *(v14 + 26) = 0;
      v21 = v15;
      v43 = v17;
      while (1)
      {
        v22 = (v3 + v21);
        marrs::mrr::mr::MRREntity::operator=(v3 + v21 + 672, v3 + v21 + 448);
        *(v3 + v21 + 888) = *(v3 + v21 + 664);
        if (v21 == -448)
        {
          break;
        }

        v21 -= 224;
        if (v43 >= v22[110])
        {
          v23 = v3 + v21 + 672;
          goto LABEL_44;
        }
      }

      v23 = v3;
LABEL_44:
      v24 = marrs::mrr::mr::MRREntity::operator=(v23, &v26);
      *(v24 + 216) = v43;
      v44[0] = &v41;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
      if (SHIBYTE(v40) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }

      v44[0] = &v34;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](v44);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27);
      }

      if (++v16 == 8)
      {
        return v14 + 56 == a2;
      }
    }

    v10 = v14;
    v15 += 224;
    v14 += 56;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

void *std::vector<std::array<float,25ul>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x28F5C28F5C28F5DLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,25ul>>>(a2);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_222816794(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marrs::mrr::mr::logFeatureVectorArray<25ul>(uint64_t *a1, uint64_t a2)
{
  v31 = *MEMORY[0x277D85DE8];
  std::ostringstream::basic_ostringstream[abi:ne200100](&v24);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "feature ", 8);
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, v5, v6);
  std::ios_base::getloc((&v24 + *(v24 - 24)));
  v7 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    v10 = 0;
    v11 = MEMORY[0x277D82680];
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v24, "(", 1);
      v12 = MEMORY[0x223DC2130](&v24, v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") - ", 4);
      v13 = 0;
      v14 = v8 + 100;
      do
      {
        v15 = *(v8 + v13);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", ", 2);
        v13 += 4;
      }

      while (v13 != 100);
      std::ios_base::getloc((&v24 + *(v24 - 24)));
      v17 = std::locale::use_facet(__p, v11);
      (v17->__vftable[2].~facet_0)(v17, 10);
      std::locale::~locale(__p);
      std::ostream::put();
      std::ostream::flush();
      v10 = (v10 + 1);
      v8 += 100;
    }

    while (v14 != v9);
  }

  v18 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    std::stringbuf::str();
    v19 = v23 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v30 = v19;
    _os_log_impl(&dword_2227A9000, v18, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v24 = *MEMORY[0x277D82828];
  *(&v24 + *(v24 - 24)) = *(MEMORY[0x277D82828] + 24);
  v25 = MEMORY[0x277D82878] + 16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  v25 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v26);
  std::ostream::~ostream();
  result = MEMORY[0x223DC2270](&v28);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222816B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::array<float,25ul>>>(unint64_t a1)
{
  if (a1 < 0x28F5C28F5C28F5DLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<marrs::mrr::mr::MRREntity *,marrs::mrr::mr::MRREntity *,std::back_insert_iterator<std::vector<marrs::mrr::mr::MRREntity>>>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = *(a3 + 8);
    do
    {
      v7 = *(a3 + 16);
      if (v6 >= v7)
      {
        v8 = 0x84BDA12F684BDA13 * ((v6 - *a3) >> 3);
        v9 = v8 + 1;
        if (v8 + 1 > 0x12F684BDA12F684)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v10 = 0x84BDA12F684BDA13 * ((v7 - *a3) >> 3);
        if (2 * v10 > v9)
        {
          v9 = 2 * v10;
        }

        if (v10 >= 0x97B425ED097B42)
        {
          v11 = 0x12F684BDA12F684;
        }

        else
        {
          v11 = v9;
        }

        v20 = a3;
        if (v11)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>>(v11);
        }

        v17 = 0;
        v18 = 216 * v8;
        v19 = 216 * v8;
        std::allocator_traits<std::allocator<marrs::mrr::mr::MRREntity>>::construct[abi:ne200100]<marrs::mrr::mr::MRREntity,marrs::mrr::mr::MRREntity,0>(216 * v8, v5);
        *&v19 = v19 + 216;
        v12 = *(a3 + 8);
        v13 = v18 + *a3 - v12;
        std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<marrs::mrr::mr::MRREntity>,marrs::mrr::mr::MRREntity*>(*a3, v12, v13);
        v14 = *a3;
        *a3 = v13;
        v15 = *(a3 + 16);
        v16 = v19;
        v18 = v14;
        *&v19 = v14;
        *(a3 + 8) = v16;
        *(&v19 + 1) = v15;
        v17 = v14;
        std::__split_buffer<marrs::mrr::mr::MRREntity>::~__split_buffer(&v17);
        v6 = v16;
      }

      else
      {
        std::allocator_traits<std::allocator<marrs::mrr::mr::MRREntity>>::construct[abi:ne200100]<marrs::mrr::mr::MRREntity,marrs::mrr::mr::MRREntity,0>(v6, v5);
        v6 += 216;
      }

      *(a3 + 8) = v6;
      v5 += 216;
    }

    while (v5 != a2);
  }
}

void **std::pair<std::vector<marrs::mrr::mr::MRREntity>,std::vector<marrs::mrr::mr::MRREntity>>::~pair(void **a1)
{
  v3 = a1 + 3;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = a1;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

__n128 std::allocator_traits<std::allocator<marrs::mrr::mr::MRREntity>>::construct[abi:ne200100]<marrs::mrr::mr::MRREntity,marrs::mrr::mr::MRREntity,0>(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v3 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v3;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  v5 = *(a2 + 80);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 80) = v5;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  v6 = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = v6;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 136) = 0;
  *(a1 + 160) = *(a2 + 160);
  v7 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v7;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  result = *(a2 + 192);
  *(a1 + 192) = result;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return result;
}

uint64_t std::vector<std::vector<float>>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v20 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(v10);
    }

    v11 = 24 * v7;
    v16 = 0;
    v17 = v11;
    v18 = 24 * v7;
    v19 = 0;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(24 * v7, *a2, a2[1], (a2[1] - *a2) >> 2);
    v6 = (v18 + 24);
    v12 = a1[1] - *a1;
    v13 = &v17[-v12];
    memcpy(&v17[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = v19;
    v18 = v14;
    v19 = v15;
    v16 = v14;
    v17 = v14;
    result = std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(&v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a2, a2[1], (a2[1] - *a2) >> 2);
    v6 = v4 + 24;
    a1[1] = v6;
  }

  a1[1] = v6;
  return result;
}

void sub_222816FE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::map<std::string,std::vector<float>>::at(uint64_t a1, void *a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 56;
}

uint64_t std::__split_buffer<std::vector<std::vector<float>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void marrs::mrr::mr::computeStringMatchFeatures(uint64_t a1, uint64_t a2, uint64_t a3, void ***a4, void *a5, void *a6, uint64_t a7)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v7 = *(a2 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 8);
  }

  if (v7)
  {
    MEMORY[0x223DC2220](&v78);
    std::locale::locale(&v82, &v78);
    v14 = boost::algorithm::contains<std::string,std::string,boost::algorithm::is_iequal>(a3, a2, &v82);
    std::locale::~locale(&v82);
    std::locale::~locale(&v78);
    if (v14)
    {
      *a1 = 1065353216;
    }

    MEMORY[0x223DC2220](&v78);
    std::locale::locale(&v82, &v78);
    v15 = boost::algorithm::contains<std::string,std::string,boost::algorithm::is_iequal>(a2, a3, &v82);
    std::locale::~locale(&v82);
    std::locale::~locale(&v78);
    if (v15)
    {
      *(a1 + 4) = 1065353216;
    }

    v16 = a4 + 1;
    v17 = *a4;
    if (*a4 != (a4 + 1))
    {
      v74 = a4;
      v75 = a5;
      v18 = (a7 + 8);
      do
      {
        v19 = *v18;
        if (!*v18)
        {
          goto LABEL_26;
        }

        v20 = *(v17 + 55) >= 0 ? (v17 + 4) : v17[4];
        v21 = v18;
        do
        {
          if (*(v19 + 55) >= 0)
          {
            v22 = (v19 + 32);
          }

          else
          {
            v22 = *(v19 + 32);
          }

          v23 = strcasecmp(v22, v20);
          if (v23 >= 0)
          {
            v21 = v19;
          }

          v19 = *(v19 + ((v23 >> 28) & 8));
        }

        while (v19);
        if (v18 == v21 || ((v26 = v21[4], v25 = (v21 + 4), v24 = v26, v25[23] >= 0) ? (v27 = v25) : (v27 = v24), strcasecmp(v20, v27) < 0))
        {
LABEL_26:
          MEMORY[0x223DC2220](&v78);
          std::locale::locale(&v82, &v78);
          v28 = boost::algorithm::contains<std::string,std::string,boost::algorithm::is_iequal>(a2, (v17 + 4), &v82);
          std::locale::~locale(&v82);
          std::locale::~locale(&v78);
          if (v28)
          {
            *(a1 + 8) = *(a1 + 8) + 1.0;
          }
        }

        v29 = v17[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v17[2];
            v31 = *v30 == v17;
            v17 = v30;
          }

          while (!v31);
        }

        v17 = v30;
      }

      while (v30 != v16);
      a4 = v74;
      a5 = v75;
      v17 = *v74;
    }

    if (v17 != v16)
    {
      v32 = *(a1 + 12);
      v33 = MEMORY[0x277D85DE0];
      do
      {
        i = *(v17 + 55);
        if ((i & 0x8000000000000000) != 0)
        {
          v35 = v17[4];
          for (i = v17[5]; i; --i)
          {
LABEL_39:
            v36 = *v35;
            if ((v36 & 0x8000000000000000) == 0 && (*(v33 + 4 * v36 + 60) & 0x400) != 0 && std::string::find(a2, v36, 0) != -1)
            {
              v32 = v32 + 1.0;
              *(a1 + 12) = v32;
            }

            ++v35;
          }
        }

        else
        {
          v35 = (v17 + 4);
          if (*(v17 + 55))
          {
            goto LABEL_39;
          }
        }

        v37 = v17[1];
        if (v37)
        {
          do
          {
            v38 = v37;
            v37 = *v37;
          }

          while (v37);
        }

        else
        {
          do
          {
            v38 = v17[2];
            v31 = *v38 == v17;
            v17 = v38;
          }

          while (!v31);
        }

        v17 = v38;
      }

      while (v38 != v16);
    }

    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v81, *a3, *(a3 + 8));
    }

    else
    {
      v81 = *a3;
    }

    getDigitsInString(&v82, &v81);
    if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v81.__r_.__value_.__l.__data_);
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v77, *a2, *(a2 + 8));
    }

    else
    {
      v77 = *a2;
    }

    getDigitsInString(&v78, &v77);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v77.__r_.__value_.__l.__data_);
    }

    v39 = v84;
    if ((v84 & 0x80u) != 0)
    {
      v39 = v83;
    }

    if (!v39)
    {
      goto LABEL_146;
    }

    v40 = v80;
    if ((v80 & 0x80u) != 0)
    {
      v40 = v79;
    }

    if (!v40)
    {
      goto LABEL_146;
    }

    if (tokenIntersection(a4, a6))
    {
      v41 = v80;
      if ((v80 & 0x80u) != 0)
      {
        v41 = v79;
      }

      v42 = v84;
      if ((v84 & 0x80u) != 0)
      {
        v42 = v83;
      }

      if (v41 >= v42)
      {
        MEMORY[0x223DC2220](&v85);
        std::locale::locale(&v86, &v85);
        if ((v80 & 0x80u) == 0)
        {
          locale = &v78;
        }

        else
        {
          locale = v78.__locale_;
        }

        if ((v80 & 0x80u) == 0)
        {
          v44 = v80;
        }

        else
        {
          v44 = v79;
        }

        if ((v84 & 0x80u) == 0)
        {
          v45 = &v82;
        }

        else
        {
          v45 = v82.__locale_;
        }

        if ((v84 & 0x80u) == 0)
        {
          v46 = v84;
        }

        else
        {
          v46 = v83;
        }

        v47 = &v45[v46];
        std::locale::locale(&v87, &v86);
        v48 = locale - 1;
        while (v44 && v46)
        {
          v49 = boost::algorithm::is_iequal::operator()<char,char>(&v87, v48[v44--], --v47);
          --v46;
          if (!v49)
          {
            v50 = 0;
            goto LABEL_100;
          }
        }

        v50 = v47 == v45;
LABEL_100:
        std::locale::~locale(&v87);
        std::locale::~locale(&v86);
        v55 = &v85;
        goto LABEL_142;
      }
    }

    else
    {
      v51 = tokenIntersection(a4, a5);
      v52 = v80;
      if (!v51)
      {
        if ((v80 & 0x80u) == 0)
        {
          v56 = &v78;
        }

        else
        {
          v56 = v78.__locale_;
        }

        if ((v80 & 0x80u) != 0)
        {
          v52 = v79;
        }

        if ((v84 & 0x80u) == 0)
        {
          v57 = &v82;
        }

        else
        {
          v57 = v82.__locale_;
        }

        if ((v84 & 0x80u) == 0)
        {
          v58 = v84;
        }

        else
        {
          v58 = v83;
        }

        if (v58)
        {
          if (v52 >= v58)
          {
            v59 = &v56[v52];
            v60 = *v57;
            v61 = v56;
            while (1)
            {
              v62 = v52 - v58;
              if (v62 == -1)
              {
                break;
              }

              v63 = memchr(v61, v60, v62 + 1);
              if (!v63)
              {
                break;
              }

              v64 = v63;
              if (!memcmp(v63, v57, v58))
              {
                if (v64 == v59 || v64 - v56 == -1)
                {
                  goto LABEL_146;
                }

                goto LABEL_153;
              }

              v61 = v64 + 1;
              v52 = v59 - (v64 + 1);
              if (v52 < v58)
              {
                goto LABEL_146;
              }
            }
          }
        }

        else
        {
LABEL_153:
          *(a1 + 16) = 1065353216;
        }

        goto LABEL_146;
      }

      if ((v80 & 0x80u) != 0)
      {
        v52 = v79;
      }

      v53 = v84;
      if ((v84 & 0x80u) != 0)
      {
        v53 = v83;
      }

      if (v52 >= v53)
      {
        MEMORY[0x223DC2220](&v86);
        std::locale::locale(&v87, &v86);
        v65 = v80;
        if ((v80 & 0x80u) == 0)
        {
          v66 = &v78;
        }

        else
        {
          v66 = v78.__locale_;
        }

        if ((v80 & 0x80u) != 0)
        {
          v65 = v79;
        }

        if ((v84 & 0x80u) == 0)
        {
          v67 = &v82;
        }

        else
        {
          v67 = v82.__locale_;
        }

        if ((v84 & 0x80u) == 0)
        {
          v68 = v84;
        }

        else
        {
          v68 = v83;
        }

        if (v65 && v68)
        {
          v69 = v68 - 1;
          v70 = v65 - 1;
          v71 = v67;
          while (boost::algorithm::is_iequal::operator()<char,char>(&v87, *v66, v71))
          {
            ++v71;
            if (v70)
            {
              ++v66;
              v72 = v69--;
              --v70;
              if (v72)
              {
                continue;
              }
            }

            goto LABEL_139;
          }

          v50 = 0;
        }

        else
        {
          v71 = v67;
LABEL_139:
          v50 = v71 == &v67[v68];
        }

        std::locale::~locale(&v87);
        v55 = &v86;
LABEL_142:
        std::locale::~locale(v55);
        v54 = (a1 + 16);
        if (v50)
        {
          v73 = 1065353216;
LABEL_145:
          *v54 = v73;
LABEL_146:
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          if (v84 < 0)
          {
            operator delete(v82.__locale_);
          }

          return;
        }

LABEL_144:
        v73 = -1082130432;
        goto LABEL_145;
      }
    }

    v54 = (a1 + 16);
    goto LABEL_144;
  }
}

void sub_22281770C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, std::locale a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  std::locale::~locale((v37 - 112));
  std::locale::~locale((v37 - 120));
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a36 < 0)
  {
    operator delete(a31.__locale_);
  }

  _Unwind_Resume(a1);
}

BOOL boost::algorithm::contains<std::string,std::string,boost::algorithm::is_iequal>(uint64_t a1, uint64_t a2, std::locale *a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 1;
  }

  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v6 = &v5[v3];
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  if (v7 >= 0)
  {
    v9 = *(a1 + 23);
  }

  else
  {
    v9 = *(a1 + 8);
  }

  v10 = &v8[v9];
  std::locale::locale(&v17, a3);
  std::locale::locale(&v21, &v17);
  v18 = v5;
  v19 = v6;
  std::locale::locale(&v20, &v21);
  std::locale::~locale(&v21);
  if (v9)
  {
    v11 = v19;
    do
    {
      v12 = v18;
      if (v18 == v11)
      {
        break;
      }

      if (v8 == v10)
      {
        v14 = v10;
      }

      else
      {
        v13 = v9;
        v14 = v8;
        while (v12 != v19 && boost::algorithm::is_iequal::operator()<char,char>(&v20, *v14, v12))
        {
          ++v14;
          ++v12;
          if (!--v13)
          {
            v14 = v10;
            break;
          }
        }

        v11 = v19;
      }

      if (v12 == v11)
      {
        v10 = v8;
        goto LABEL_29;
      }

      ++v8;
      --v9;
    }

    while (v8 != v10);
  }

  v14 = v10;
LABEL_29:
  v15 = v10 != v14;
  std::locale::~locale(&v20);
  std::locale::~locale(&v17);
  return v15;
}

void sub_222817920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(v10 + 2);
  std::locale::~locale(&a10);
  _Unwind_Resume(a1);
}

void *marrs::mrr::mr::getMentionStringSet(void *result, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v3 = *(a2 + 76);
  if (v3 < *(a2 + 72))
  {
    v6 = result;
    do
    {
      v7 = *(a3 + 24);
      if (v3 >= (*(a3 + 32) - v7) >> 3)
      {
        std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
      }

      MEMORY[0x223DC19C0](v9, *(v7 + 8 * v3));
      if ((v11 & 1) == 0)
      {
        std::__tree<std::string,marrs::mrr::mr::CaseInsensitiveCompare,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(v6, v10);
      }

      result = MEMORY[0x223DC19D0](v9);
      ++v3;
    }

    while (v3 < *(a2 + 72));
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222817A18(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, __int128 buf)
{
  MEMORY[0x223DC19D0](&buf);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    v16 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "Mention token indices out of bounds in token chain";
      _os_log_impl(&dword_2227A9000, v16, OS_LOG_TYPE_ERROR, "IOContentError - %s", &buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Mention token indices out of bounds in token chain");
    std::string::basic_string[abi:ne200100]<0>(&a10, "MultimodalReferenceResolution");
    IOContentError::IOContentError(exception, &buf, &a10, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/ModelBasedMR/Processing/ModelBasedMRProcessing.cpp", 465);
  }

  std::__tree<std::string>::destroy(*v13);
  _Unwind_Resume(a1);
}

void sub_222817B0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v22)
  {
LABEL_8:
    __cxa_end_catch();
    JUMPOUT(0x222817B70);
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_222817B80(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x222817B78);
}

void std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,false>(uint64_t a1, uint64_t *a2, float32x2_t **a3, uint64_t a4, char a5)
{
  v216 = *MEMORY[0x277D85DE8];
LABEL_2:
  v192 = (a2 - 5);
  v189 = (a2 - 15);
  v190 = (a2 - 10);
  v10 = a1;
  v203 = a2;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = 0xCCCCCCCCCCCCCCCDLL * (a2 - v10);
    v13 = v12 - 2;
    if (v12 > 2)
    {
      break;
    }

    if (v12 < 2)
    {
      goto LABEL_167;
    }

    if (v12 == 2)
    {
      v76 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
      v77 = vcvtq_f64_f32(vsub_f32(v76, vadd_f32(*(a2 - 2), vmul_f32(*(a2 - 1), 0x3F0000003F000000))));
      *v77.f64 = vaddvq_f64(vmulq_f64(v77, v77));
      v78 = vcvtq_f64_f32(vsub_f32(v76, vadd_f32(*(a1 + 24), vmul_f32(*(a1 + 32), 0x3F0000003F000000))));
      *v78.f64 = vaddvq_f64(vmulq_f64(v78, v78));
      if (*v77.f64 < *v78.f64)
      {
        v79 = *MEMORY[0x277D85DE8];
        v80 = a1;
        v81 = v192;
        goto LABEL_74;
      }

LABEL_167:
      v188 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_10:
    if (v11 <= 959)
    {
      v93 = (a1 + 40);
      v95 = a1 == a2 || v93 == a2;
      if (a5)
      {
        if (!v95)
        {
          v96 = 0;
          v97 = a1;
          do
          {
            v98 = v93;
            v99 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
            v100 = vcvtq_f64_f32(vsub_f32(v99, vadd_f32(*(v97 + 64), vmul_f32(*(v97 + 72), 0x3F0000003F000000))));
            *v100.f64 = vaddvq_f64(vmulq_f64(v100, v100));
            v101 = vcvtq_f64_f32(vsub_f32(v99, vadd_f32(*(v97 + 24), vmul_f32(*(v97 + 32), 0x3F0000003F000000))));
            *v101.f64 = vaddvq_f64(vmulq_f64(v101, v101));
            if (*v100.f64 < *v101.f64)
            {
              v102 = *v93;
              *v210 = *(v97 + 48);
              *&v210[7] = *(v97 + 55);
              v103 = *(v97 + 63);
              v93[1] = 0;
              v93[2] = 0;
              *v93 = 0;
              v195 = *(v97 + 64);
              v199 = *(v97 + 72);
              v104 = vadd_f32(v195, vmul_f32(v199, 0x3F0000003F000000));
              v105 = v96;
              while (1)
              {
                v106 = a1 + v105;
                if (*(a1 + v105 + 63) < 0)
                {
                  operator delete(*(v106 + 40));
                }

                *(v106 + 40) = *v106;
                *(v106 + 56) = *(v106 + 16);
                *(v106 + 23) = 0;
                *v106 = 0;
                *(v106 + 64) = *(v106 + 24);
                if (!v105)
                {
                  break;
                }

                v107 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
                v108 = vcvtq_f64_f32(vsub_f32(v107, v104));
                *v108.f64 = vaddvq_f64(vmulq_f64(v108, v108));
                v109 = a1 + v105;
                v110 = vcvtq_f64_f32(vsub_f32(v107, vadd_f32(*(a1 + v105 - 16), vmul_f32(*(a1 + v105 - 8), 0x3F0000003F000000))));
                *v110.f64 = vaddvq_f64(vmulq_f64(v110, v110));
                v105 -= 40;
                if (*v110.f64 <= *v108.f64)
                {
                  v111 = a1 + v105 + 40;
                  v112 = (v109 + 24);
                  goto LABEL_101;
                }
              }

              v112 = (a1 + 24);
              v111 = a1;
LABEL_101:
              if (*(v111 + 23) < 0)
              {
                operator delete(*v111);
              }

              *v111 = v102;
              *(v111 + 8) = *v210;
              *(v111 + 15) = *&v210[7];
              *(v111 + 23) = v103;
              *v112 = v195.i32[0];
              *(v111 + 28) = vext_s8(v195, v199, 4uLL);
              *(v111 + 36) = v199.i32[1];
            }

            v93 = v98 + 5;
            v96 += 40;
            v97 = v98;
          }

          while (v98 + 5 != v203);
        }
      }

      else if (!v95)
      {
        v172 = a1 - 16;
        do
        {
          v173 = v93;
          v174 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
          v175 = vcvtq_f64_f32(vsub_f32(v174, vadd_f32(*(a1 + 64), vmul_f32(*(a1 + 72), 0x3F0000003F000000))));
          *v175.f64 = vaddvq_f64(vmulq_f64(v175, v175));
          v176 = vcvtq_f64_f32(vsub_f32(v174, vadd_f32(*(a1 + 24), vmul_f32(*(a1 + 32), 0x3F0000003F000000))));
          *v176.f64 = vaddvq_f64(vmulq_f64(v176, v176));
          if (*v175.f64 < *v176.f64)
          {
            v177 = *v93;
            *v213 = *(a1 + 48);
            *&v213[7] = *(a1 + 55);
            v178 = *(a1 + 63);
            v93[1] = 0;
            v93[2] = 0;
            *v93 = 0;
            v197 = *(a1 + 72);
            v202 = *(a1 + 64);
            v179 = vadd_f32(v202, vmul_f32(v197, 0x3F0000003F000000));
            v180 = v172;
            do
            {
              if (*(v180 + 79) < 0)
              {
                operator delete(*(v180 + 56));
              }

              *(v180 + 56) = *(v180 + 16);
              *(v180 + 72) = *(v180 + 32);
              *(v180 + 16) = 0;
              v181 = v180 + 16;
              *(v180 + 39) = 0;
              *(v180 + 80) = *(v180 + 40);
              v182 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
              v183 = vcvtq_f64_f32(vsub_f32(v182, v179));
              *v183.f64 = vaddvq_f64(vmulq_f64(v183, v183));
              v184 = *v180;
              v185 = *(v180 + 8);
              v180 -= 40;
              v186 = vcvtq_f64_f32(vsub_f32(v182, vadd_f32(v184, vmul_f32(v185, 0x3F0000003F000000))));
              *v186.f64 = vaddvq_f64(vmulq_f64(v186, v186));
            }

            while (*v186.f64 > *v183.f64);
            if (*(v181 + 23) < 0)
            {
              operator delete(*v181);
            }

            *(v180 + 56) = v177;
            *(v181 + 15) = *&v213[7];
            *(v181 + 8) = *v213;
            *(v180 + 79) = v178;
            *&v187 = v202;
            *(&v187 + 1) = v197;
            *(v180 + 80) = v187;
          }

          v93 = v173 + 5;
          v172 += 40;
          a1 = v173;
        }

        while (v173 + 5 != v203);
      }

      goto LABEL_167;
    }

    if (!a4)
    {
      if (a1 != a2)
      {
        v113 = v13 >> 1;
        v114 = v13 >> 1;
        do
        {
          v115 = v114;
          if (v113 >= v114)
          {
            v116 = (2 * v114) | 1;
            v117 = (a1 + 40 * v116);
            v118 = *a3;
            v119 = **a3;
            if (2 * v115 + 2 >= v12)
            {
              v120 = vadd_f32(v119, vmul_f32(v118[1], 0x3F0000003F000000));
            }

            else
            {
              v120 = vadd_f32(v119, vmul_f32(v118[1], 0x3F0000003F000000));
              v121 = vcvtq_f64_f32(vsub_f32(v120, vadd_f32(v117[3], vmul_f32(v117[4], 0x3F0000003F000000))));
              *v121.f64 = vaddvq_f64(vmulq_f64(v121, v121));
              v122 = vcvtq_f64_f32(vsub_f32(v120, vadd_f32(v117[8], vmul_f32(v117[9], 0x3F0000003F000000))));
              *v122.f64 = vaddvq_f64(vmulq_f64(v122, v122));
              if (*v121.f64 < *v122.f64)
              {
                v117 += 5;
                v116 = 2 * v115 + 2;
              }
            }

            v123 = (a1 + 40 * v115);
            v124 = vcvtq_f64_f32(vsub_f32(v120, vadd_f32(v117[3], vmul_f32(v117[4], 0x3F0000003F000000))));
            *v124.f64 = vaddvq_f64(vmulq_f64(v124, v124));
            v125 = vcvtq_f64_f32(vsub_f32(v120, vadd_f32(v123[3], vmul_f32(v123[4], 0x3F0000003F000000))));
            *v125.f64 = vaddvq_f64(vmulq_f64(v125, v125));
            if (*v124.f64 >= *v125.f64)
            {
              v200 = *v123;
              *&v211[7] = *(v123 + 15);
              *v211 = v123[1];
              v196 = v123[2].i8[7];
              *v123 = 0;
              v123[1] = 0;
              v123[2] = 0;
              v191 = v123[4];
              v193 = v123[3];
              v126 = vadd_f32(v193, vmul_f32(v191, 0x3F0000003F000000));
              do
              {
                v127 = v123;
                v123 = v117;
                if (v127[2].i8[7] < 0)
                {
                  operator delete(*v127);
                }

                v128 = *v123->f32;
                v127[2] = v123[2];
                *v127->f32 = v128;
                v123[2].i8[7] = 0;
                v123->i8[0] = 0;
                *v127[3].f32 = *v123[3].f32;
                if (v113 < v116)
                {
                  break;
                }

                v129 = 2 * v116;
                v116 = (2 * v116) | 1;
                v117 = (a1 + 40 * v116);
                v130 = v129 + 2;
                v131 = *a3;
                v132 = **a3;
                if (v130 >= v12)
                {
                  v133 = vadd_f32(v132, vmul_f32(v131[1], 0x3F0000003F000000));
                }

                else
                {
                  v133 = vadd_f32(v132, vmul_f32(v131[1], 0x3F0000003F000000));
                  v134 = vcvtq_f64_f32(vsub_f32(v133, vadd_f32(v117[3], vmul_f32(v117[4], 0x3F0000003F000000))));
                  *v134.f64 = vaddvq_f64(vmulq_f64(v134, v134));
                  v135 = vcvtq_f64_f32(vsub_f32(v133, vadd_f32(v117[8], vmul_f32(v117[9], 0x3F0000003F000000))));
                  *v135.f64 = vaddvq_f64(vmulq_f64(v135, v135));
                  if (*v134.f64 < *v135.f64)
                  {
                    v117 += 5;
                    v116 = v130;
                  }
                }

                v136 = vcvtq_f64_f32(vsub_f32(v133, vadd_f32(v117[3], vmul_f32(v117[4], 0x3F0000003F000000))));
                *v136.f64 = vaddvq_f64(vmulq_f64(v136, v136));
                v137 = vcvtq_f64_f32(vsub_f32(v133, v126));
                *v137.f64 = vaddvq_f64(vmulq_f64(v137, v137));
              }

              while (*v136.f64 >= *v137.f64);
              if (v123[2].i8[7] < 0)
              {
                operator delete(*v123);
              }

              *v123 = v200;
              v123[1] = *v211;
              *(v123 + 15) = *&v211[7];
              v123[2].i8[7] = v196;
              *&v138 = v193;
              *(&v138 + 1) = v191;
              *v123[3].f32 = v138;
            }
          }

          v114 = v115 - 1;
        }

        while (v115);
        v139 = 0xCCCCCCCCCCCCCCCDLL * (v11 >> 3);
        v140 = v203;
        do
        {
          v141 = 0;
          v142 = v140;
          v143 = *a1;
          *v206 = *(a1 + 8);
          *&v206[7] = *(a1 + 15);
          v204 = *(a1 + 23);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v144 = a1;
          v212 = *(a1 + 24);
          do
          {
            v145 = (v144 + 40 * v141);
            v146 = v145 + 5;
            v147 = 2 * v141;
            v141 = (2 * v141) | 1;
            v148 = v147 + 2;
            if (v148 < v139)
            {
              v149 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
              v150 = vcvtq_f64_f32(vsub_f32(v149, vadd_f32(v145[8], vmul_f32(v145[9], 0x3F0000003F000000))));
              *v150.f64 = vaddvq_f64(vmulq_f64(v150, v150));
              v151 = vcvtq_f64_f32(vsub_f32(v149, vadd_f32(v145[13], vmul_f32(v145[14], 0x3F0000003F000000))));
              *v151.f64 = vaddvq_f64(vmulq_f64(v151, v151));
              if (*v150.f64 < *v151.f64)
              {
                v146 = v145 + 10;
                v141 = v148;
              }
            }

            if (*(v144 + 23) < 0)
            {
              operator delete(*v144);
            }

            v152 = *v146->f32;
            *(v144 + 16) = v146[2];
            *v144 = v152;
            v146[2].i8[7] = 0;
            v146->i8[0] = 0;
            *(v144 + 24) = *v146[3].f32;
            v144 = v146;
          }

          while (v141 <= ((v139 - 2) >> 1));
          v140 -= 5;
          v153 = v146[2].i8[7];
          if (v146 == (v142 - 5))
          {
            if (v153 < 0)
            {
              operator delete(*v146);
            }

            *v146 = v143;
            v146[1] = *v206;
            *(v146 + 15) = *&v206[7];
            v146[2].i8[7] = v204;
            *v146[3].f32 = v212;
          }

          else
          {
            if (v153 < 0)
            {
              operator delete(*v146);
            }

            v154 = *v140;
            v146[2] = *(v142 - 3);
            *v146->f32 = v154;
            *(v142 - 17) = 0;
            *(v142 - 40) = 0;
            *v146[3].f32 = *(v142 - 1);
            if (*(v142 - 17) < 0)
            {
              operator delete(*v140);
            }

            *(v142 - 5) = v143;
            *(v142 - 25) = *&v206[7];
            *(v142 - 4) = *v206;
            *(v142 - 17) = v204;
            *(v142 - 1) = v212;
            v155 = &v146[5] - a1;
            if (v155 >= 41)
            {
              v156 = (-2 - 0x3333333333333333 * (v155 >> 3)) >> 1;
              v157 = (a1 + 40 * v156);
              v158 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
              v159 = vcvtq_f64_f32(vsub_f32(v158, vadd_f32(v157[3], vmul_f32(v157[4], 0x3F0000003F000000))));
              *v159.f64 = vaddvq_f64(vmulq_f64(v159, v159));
              v201 = v146[4];
              v205 = v146[3];
              v160 = vadd_f32(v205, vmul_f32(v201, 0x3F0000003F000000));
              v161 = vcvtq_f64_f32(vsub_f32(v158, v160));
              *v161.f64 = vaddvq_f64(vmulq_f64(v161, v161));
              if (*v159.f64 < *v161.f64)
              {
                v162 = v142 - 5;
                v163 = *v146;
                *v215 = v146[1];
                *&v215[7] = *(v146 + 15);
                v164 = v146[2].i8[7];
                v146[1] = 0;
                v146[2] = 0;
                *v146 = 0;
                do
                {
                  v165 = v157;
                  if (v146[2].i8[7] < 0)
                  {
                    operator delete(*v146);
                  }

                  v166 = *v165->f32;
                  v146[2] = v165[2];
                  *v146->f32 = v166;
                  v165[2].i8[7] = 0;
                  v165->i8[0] = 0;
                  *v146[3].f32 = *v165[3].f32;
                  if (!v156)
                  {
                    break;
                  }

                  v156 = (v156 - 1) >> 1;
                  v157 = (a1 + 40 * v156);
                  v167 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
                  v168 = vcvtq_f64_f32(vsub_f32(v167, vadd_f32(v157[3], vmul_f32(v157[4], 0x3F0000003F000000))));
                  *v168.f64 = vaddvq_f64(vmulq_f64(v168, v168));
                  v169 = vcvtq_f64_f32(vsub_f32(v167, v160));
                  *v169.f64 = vaddvq_f64(vmulq_f64(v169, v169));
                  v146 = v165;
                }

                while (*v168.f64 < *v169.f64);
                if (v165[2].i8[7] < 0)
                {
                  operator delete(*v165);
                }

                *v165 = v163;
                v165[1] = *v215;
                *(v165 + 15) = *&v215[7];
                v165[2].i8[7] = v164;
                *&v170 = v205;
                *(&v170 + 1) = v201;
                *v165[3].f32 = v170;
                v140 = v162;
              }
            }
          }
        }

        while (v139-- > 2);
      }

      goto LABEL_167;
    }

    v14 = a1 + 40 * (v12 >> 1);
    if (v11 < 0x1401)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(v14, a1, v192, a3);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, v14, v192, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>((a1 + 40), v14 - 40, v190, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>((a1 + 80), v14 + 40, v189, a3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>((v14 - 40), v14, (v14 + 40), a3);
      v15 = *a1;
      *&v214 = *(a1 + 8);
      *(&v214 + 7) = *(a1 + 15);
      v16 = *(a1 + 23);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v207 = *(a1 + 24);
      v17 = *(v14 + 16);
      *a1 = *v14;
      *(a1 + 16) = v17;
      *(a1 + 24) = *(v14 + 24);
      *v14 = v15;
      *(v14 + 15) = *(&v214 + 7);
      *(v14 + 8) = v214;
      *(v14 + 23) = v16;
      *(v14 + 24) = v207;
    }

    --a4;
    if (a5)
    {
      v194 = *(a1 + 32);
      v198 = *(a1 + 24);
      v18 = vadd_f32(v198, vmul_f32(v194, 0x3F0000003F000000));
LABEL_18:
      v22 = *a1;
      *v208 = *(a1 + 8);
      *&v208[7] = *(a1 + 15);
      v23 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v24 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
      v25 = vcvtq_f64_f32(vsub_f32(v24, v18));
      v26 = vaddvq_f64(vmulq_f64(v25, v25));
      v27 = a1;
      do
      {
        v28 = v27;
        v27 += 5;
        v29 = vcvtq_f64_f32(vsub_f32(v24, vadd_f32(v28[8], vmul_f32(v28[9], 0x3F0000003F000000))));
        *v29.f64 = vaddvq_f64(vmulq_f64(v29, v29));
      }

      while (*v29.f64 < v26);
      v30 = a2;
      if (v28 == a1)
      {
        v33 = v203;
        while (v27 < v33)
        {
          v31 = v33 - 40;
          v34 = vcvtq_f64_f32(vsub_f32(v24, vadd_f32(*(v33 - 16), vmul_f32(*(v33 - 8), 0x3F0000003F000000))));
          *v34.f64 = vaddvq_f64(vmulq_f64(v34, v34));
          v33 -= 40;
          if (*v34.f64 < v26)
          {
            goto LABEL_28;
          }
        }

        v31 = v33;
      }

      else
      {
        do
        {
          v31 = (v30 - 5);
          v32 = vcvtq_f64_f32(vsub_f32(v24, vadd_f32(*(v30 - 2), vmul_f32(*(v30 - 1), 0x3F0000003F000000))));
          *v32.f64 = vaddvq_f64(vmulq_f64(v32, v32));
          v30 -= 5;
        }

        while (*v32.f64 >= v26);
      }

LABEL_28:
      v10 = v27;
      if (v27 < v31)
      {
        v35 = v31;
        do
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(v10, v35);
          v36 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
          v37 = vcvtq_f64_f32(vsub_f32(v36, v18));
          v38 = vaddvq_f64(vmulq_f64(v37, v37));
          do
          {
            v39 = v10[8];
            v40 = v10[9];
            v10 += 5;
            v41 = vcvtq_f64_f32(vsub_f32(v36, vadd_f32(v39, vmul_f32(v40, 0x3F0000003F000000))));
            *v41.f64 = vaddvq_f64(vmulq_f64(v41, v41));
          }

          while (*v41.f64 < v38);
          do
          {
            v42 = *(v35 - 16);
            v43 = *(v35 - 8);
            v35 -= 40;
            v44 = vcvtq_f64_f32(vsub_f32(v36, vadd_f32(v42, vmul_f32(v43, 0x3F0000003F000000))));
            *v44.f64 = vaddvq_f64(vmulq_f64(v44, v44));
          }

          while (*v44.f64 >= v38);
        }

        while (v10 < v35);
      }

      v45 = (v10 - 5);
      if (v10 - 5 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v46 = *v45;
        *(a1 + 16) = *(v10 - 3);
        *a1 = v46;
        *(v10 - 17) = 0;
        *(v10 - 40) = 0;
        *(a1 + 24) = *(v10 - 1);
      }

      if (*(v10 - 17) < 0)
      {
        operator delete(*v45);
      }

      *(v10 - 5) = v22;
      *(v10 - 25) = *&v208[7];
      *(v10 - 4) = *v208;
      *(v10 - 17) = v23;
      *&v47 = v198;
      *(&v47 + 1) = v194;
      *(v10 - 1) = v47;
      v48 = v27 >= v31;
      a2 = v203;
      if (!v48)
      {
        goto LABEL_44;
      }

      v49 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *>(a1, (v10 - 5), a3);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *>(v10, v203, a3))
      {
        a2 = v10 - 5;
        if (!v49)
        {
          goto LABEL_2;
        }

        goto LABEL_167;
      }

      if (!v49)
      {
LABEL_44:
        std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,false>(a1, v10 - 5, a3, a4, a5 & 1);
        a5 = 0;
      }
    }

    else
    {
      v19 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
      v20 = vcvtq_f64_f32(vsub_f32(v19, vadd_f32(*(a1 - 16), vmul_f32(*(a1 - 8), 0x3F0000003F000000))));
      *v20.f64 = vaddvq_f64(vmulq_f64(v20, v20));
      v194 = *(a1 + 32);
      v198 = *(a1 + 24);
      v18 = vadd_f32(v198, vmul_f32(v194, 0x3F0000003F000000));
      v21 = vcvtq_f64_f32(vsub_f32(v19, v18));
      *v21.f64 = vaddvq_f64(vmulq_f64(v21, v21));
      if (*v20.f64 < *v21.f64)
      {
        goto LABEL_18;
      }

      v50 = *a1;
      *v209 = *(a1 + 8);
      *&v209[7] = *(a1 + 15);
      v51 = *(a1 + 23);
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = 0;
      v52 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
      v53 = vcvtq_f64_f32(vsub_f32(v52, v18));
      v54 = vaddvq_f64(vmulq_f64(v53, v53));
      v55 = vcvtq_f64_f32(vsub_f32(v52, vadd_f32(*(a2 - 2), vmul_f32(*(a2 - 1), 0x3F0000003F000000))));
      *v55.f64 = vaddvq_f64(vmulq_f64(v55, v55));
      if (*v55.f64 <= v54)
      {
        v58 = (a1 + 40);
        do
        {
          v10 = v58;
          if (v58 >= a2)
          {
            break;
          }

          v59 = vcvtq_f64_f32(vsub_f32(v52, vadd_f32(v58[3], vmul_f32(v58[4], 0x3F0000003F000000))));
          *v59.f64 = vaddvq_f64(vmulq_f64(v59, v59));
          v58 += 5;
        }

        while (*v59.f64 <= v54);
      }

      else
      {
        v56 = a1;
        do
        {
          v10 = &v56[5];
          v57 = vcvtq_f64_f32(vsub_f32(v52, vadd_f32(v56[8], vmul_f32(v56[9], 0x3F0000003F000000))));
          *v57.f64 = vaddvq_f64(vmulq_f64(v57, v57));
          v56 += 5;
        }

        while (*v57.f64 <= v54);
      }

      v60 = a2;
      if (v10 < a2)
      {
        v61 = a2;
        do
        {
          v60 = (v61 - 5);
          v62 = vcvtq_f64_f32(vsub_f32(v52, vadd_f32(*(v61 - 2), vmul_f32(*(v61 - 1), 0x3F0000003F000000))));
          *v62.f64 = vaddvq_f64(vmulq_f64(v62, v62));
          v61 -= 5;
        }

        while (*v62.f64 > v54);
      }

      while (v10 < v60)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(v10, v60);
        v63 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
        v64 = vcvtq_f64_f32(vsub_f32(v63, v18));
        v65 = vaddvq_f64(vmulq_f64(v64, v64));
        do
        {
          v66 = v10[8];
          v67 = v10[9];
          v10 += 5;
          v68 = vcvtq_f64_f32(vsub_f32(v63, vadd_f32(v66, vmul_f32(v67, 0x3F0000003F000000))));
          *v68.f64 = vaddvq_f64(vmulq_f64(v68, v68));
        }

        while (*v68.f64 <= v65);
        do
        {
          v69 = *(v60 - 16);
          v70 = *(v60 - 8);
          v60 -= 40;
          v71 = vcvtq_f64_f32(vsub_f32(v63, vadd_f32(v69, vmul_f32(v70, 0x3F0000003F000000))));
          *v71.f64 = vaddvq_f64(vmulq_f64(v71, v71));
        }

        while (*v71.f64 > v65);
      }

      v72 = (v10 - 5);
      if (v10 - 5 != a1)
      {
        if (*(a1 + 23) < 0)
        {
          operator delete(*a1);
        }

        v73 = *v72;
        *(a1 + 16) = *(v10 - 3);
        *a1 = v73;
        *(v10 - 17) = 0;
        *(v10 - 40) = 0;
        *(a1 + 24) = *(v10 - 1);
      }

      if (*(v10 - 17) < 0)
      {
        operator delete(*v72);
      }

      a5 = 0;
      *(v10 - 5) = v50;
      *(v10 - 25) = *&v209[7];
      *(v10 - 4) = *v209;
      *(v10 - 17) = v51;
      *&v74 = v198;
      *(&v74 + 1) = v194;
      *(v10 - 1) = v74;
    }
  }

  if (v12 == 3)
  {
    v82 = *MEMORY[0x277D85DE8];

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, v192, a3);
    return;
  }

  if (v12 != 4)
  {
    if (v12 == 5)
    {
      v75 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, (a1 + 80), a1 + 120, v192, a3);
      return;
    }

    goto LABEL_10;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, (a1 + 80), a3);
  v83 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
  v84 = vcvtq_f64_f32(vsub_f32(v83, vadd_f32(*(a2 - 2), vmul_f32(*(a2 - 1), 0x3F0000003F000000))));
  *v84.f64 = vaddvq_f64(vmulq_f64(v84, v84));
  v85 = vcvtq_f64_f32(vsub_f32(v83, vadd_f32(*(a1 + 104), vmul_f32(*(a1 + 112), 0x3F0000003F000000))));
  *v85.f64 = vaddvq_f64(vmulq_f64(v85, v85));
  if (*v84.f64 >= *v85.f64)
  {
    goto LABEL_167;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>((a1 + 80), v192);
  v86 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
  v87 = vcvtq_f64_f32(vsub_f32(v86, vadd_f32(*(a1 + 104), vmul_f32(*(a1 + 112), 0x3F0000003F000000))));
  *v87.f64 = vaddvq_f64(vmulq_f64(v87, v87));
  v88 = vcvtq_f64_f32(vsub_f32(v86, vadd_f32(*(a1 + 64), vmul_f32(*(a1 + 72), 0x3F0000003F000000))));
  *v88.f64 = vaddvq_f64(vmulq_f64(v88, v88));
  if (*v87.f64 >= *v88.f64)
  {
    goto LABEL_167;
  }

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>((a1 + 40), a1 + 80);
  v89 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
  v90 = vcvtq_f64_f32(vsub_f32(v89, vadd_f32(*(a1 + 64), vmul_f32(*(a1 + 72), 0x3F0000003F000000))));
  *v90.f64 = vaddvq_f64(vmulq_f64(v90, v90));
  v91 = vcvtq_f64_f32(vsub_f32(v89, vadd_f32(*(a1 + 24), vmul_f32(*(a1 + 32), 0x3F0000003F000000))));
  *v91.f64 = vaddvq_f64(vmulq_f64(v91, v91));
  if (*v90.f64 >= *v91.f64)
  {
    goto LABEL_167;
  }

  v92 = *MEMORY[0x277D85DE8];
  v81 = a1 + 40;
  v80 = a1;
LABEL_74:

  std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(v80, v81);
}

uint64_t std::__split_buffer<std::vector<marrs::mrr::mr::SurroundingText>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(uint64_t *a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  *v9 = a1[1];
  *&v9[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v8 = *(a1 + 3);
  v5 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v5;
  *(a2 + 23) = 0;
  *a2 = 0;
  *(a1 + 3) = *(a2 + 24);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v3;
  *(a2 + 8) = *v9;
  *(a2 + 15) = *&v9[7];
  *(a2 + 23) = v4;
  result = v8;
  *(a2 + 24) = v8;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(float32x2_t *a1, uint64_t a2, float32x2_t *a3, float32x2_t **a4)
{
  v7 = a1;
  v8 = vadd_f32(**a4, vmul_f32((*a4)[1], 0x3F0000003F000000));
  v9 = vcvtq_f64_f32(vsub_f32(v8, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
  result = vaddvq_f64(vmulq_f64(v9, v9));
  *&result = result;
  v11 = vcvtq_f64_f32(vsub_f32(v8, vadd_f32(a1[3], vmul_f32(a1[4], 0x3F0000003F000000))));
  *v11.f64 = vaddvq_f64(vmulq_f64(v11, v11));
  v12 = vcvtq_f64_f32(vsub_f32(v8, vadd_f32(a3[3], vmul_f32(a3[4], 0x3F0000003F000000))));
  v13 = vaddvq_f64(vmulq_f64(v12, v12));
  if (*&result >= *v11.f64)
  {
    if (v13 >= *&result)
    {
      return result;
    }

    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a2, a3);
    v18 = vadd_f32(**a4, vmul_f32((*a4)[1], 0x3F0000003F000000));
    v19 = vcvtq_f64_f32(vsub_f32(v18, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
    *v19.f64 = vaddvq_f64(vmulq_f64(v19, v19));
    v20 = vcvtq_f64_f32(vsub_f32(v18, vadd_f32(v7[3], vmul_f32(v7[4], 0x3F0000003F000000))));
    result = vaddvq_f64(vmulq_f64(v20, v20));
    *&result = result;
    if (*v19.f64 >= *&result)
    {
      return result;
    }

    a1 = v7;
    v17 = a2;
  }

  else
  {
    if (v13 >= *&result)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a1, a2);
      v14 = vadd_f32(**a4, vmul_f32((*a4)[1], 0x3F0000003F000000));
      v15 = vcvtq_f64_f32(vsub_f32(v14, vadd_f32(a3[3], vmul_f32(a3[4], 0x3F0000003F000000))));
      *v15.f64 = vaddvq_f64(vmulq_f64(v15, v15));
      v16 = vcvtq_f64_f32(vsub_f32(v14, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
      result = vaddvq_f64(vmulq_f64(v16, v16));
      *&result = result;
      if (*v15.f64 >= *&result)
      {
        return result;
      }

      a1 = a2;
    }

    v17 = a3;
  }

  *&result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a1, v17).n128_u64[0];
  return result;
}

void std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(float32x2_t *a1, uint64_t a2, float32x2_t *a3, uint64_t a4, float32x2_t *a5, float32x2_t **a6)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a2, a3, a6);
  v12 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
  v13 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(*(a4 + 24), vmul_f32(*(a4 + 32), 0x3F0000003F000000))));
  *v13.f64 = vaddvq_f64(vmulq_f64(v13, v13));
  v14 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(a3[3], vmul_f32(a3[4], 0x3F0000003F000000))));
  *v14.f64 = vaddvq_f64(vmulq_f64(v14, v14));
  if (*v13.f64 < *v14.f64)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a3, a4);
    v12 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
    v15 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(a3[3], vmul_f32(a3[4], 0x3F0000003F000000))));
    *v15.f64 = vaddvq_f64(vmulq_f64(v15, v15));
    v16 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
    *v16.f64 = vaddvq_f64(vmulq_f64(v16, v16));
    if (*v15.f64 < *v16.f64)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a2, a3);
      v12 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
      v17 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
      *v17.f64 = vaddvq_f64(vmulq_f64(v17, v17));
      v18 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(a1[3], vmul_f32(a1[4], 0x3F0000003F000000))));
      *v18.f64 = vaddvq_f64(vmulq_f64(v18, v18));
      if (*v17.f64 < *v18.f64)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a1, a2);
        v12 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
      }
    }
  }

  v19 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(a5[3], vmul_f32(a5[4], 0x3F0000003F000000))));
  *v19.f64 = vaddvq_f64(vmulq_f64(v19, v19));
  v20 = vcvtq_f64_f32(vsub_f32(v12, vadd_f32(*(a4 + 24), vmul_f32(*(a4 + 32), 0x3F0000003F000000))));
  *v20.f64 = vaddvq_f64(vmulq_f64(v20, v20));
  if (*v19.f64 < *v20.f64)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a4, a5);
    v21 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
    v22 = vcvtq_f64_f32(vsub_f32(v21, vadd_f32(*(a4 + 24), vmul_f32(*(a4 + 32), 0x3F0000003F000000))));
    *v22.f64 = vaddvq_f64(vmulq_f64(v22, v22));
    v23 = vcvtq_f64_f32(vsub_f32(v21, vadd_f32(a3[3], vmul_f32(a3[4], 0x3F0000003F000000))));
    *v23.f64 = vaddvq_f64(vmulq_f64(v23, v23));
    if (*v22.f64 < *v23.f64)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a3, a4);
      v24 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
      v25 = vcvtq_f64_f32(vsub_f32(v24, vadd_f32(a3[3], vmul_f32(a3[4], 0x3F0000003F000000))));
      *v25.f64 = vaddvq_f64(vmulq_f64(v25, v25));
      v26 = vcvtq_f64_f32(vsub_f32(v24, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
      *v26.f64 = vaddvq_f64(vmulq_f64(v26, v26));
      if (*v25.f64 < *v26.f64)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a2, a3);
        v27 = vadd_f32(**a6, vmul_f32((*a6)[1], 0x3F0000003F000000));
        v28 = vcvtq_f64_f32(vsub_f32(v27, vadd_f32(*(a2 + 24), vmul_f32(*(a2 + 32), 0x3F0000003F000000))));
        *v28.f64 = vaddvq_f64(vmulq_f64(v28, v28));
        v29 = vcvtq_f64_f32(vsub_f32(v27, vadd_f32(a1[3], vmul_f32(a1[4], 0x3F0000003F000000))));
        *v29.f64 = vaddvq_f64(vmulq_f64(v29, v29));
        if (*v28.f64 < *v29.f64)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a1, a2);
        }
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *>(uint64_t a1, uint64_t a2, float32x2_t **a3)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, (a2 - 40), a3);
        goto LABEL_31;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, (a1 + 80), a3);
        v30 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
        v31 = vcvtq_f64_f32(vsub_f32(v30, vadd_f32(*(a2 - 16), vmul_f32(*(a2 - 8), 0x3F0000003F000000))));
        *v31.f64 = vaddvq_f64(vmulq_f64(v31, v31));
        v32 = vcvtq_f64_f32(vsub_f32(v30, vadd_f32(*(a1 + 104), vmul_f32(*(a1 + 112), 0x3F0000003F000000))));
        *v32.f64 = vaddvq_f64(vmulq_f64(v32, v32));
        if (*v31.f64 >= *v32.f64)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>((a1 + 80), a2 - 40);
        v33 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
        v34 = vcvtq_f64_f32(vsub_f32(v33, vadd_f32(*(a1 + 104), vmul_f32(*(a1 + 112), 0x3F0000003F000000))));
        *v34.f64 = vaddvq_f64(vmulq_f64(v34, v34));
        v35 = vcvtq_f64_f32(vsub_f32(v33, vadd_f32(*(a1 + 64), vmul_f32(*(a1 + 72), 0x3F0000003F000000))));
        *v35.f64 = vaddvq_f64(vmulq_f64(v35, v35));
        if (*v34.f64 >= *v35.f64)
        {
          goto LABEL_31;
        }

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>((a1 + 40), a1 + 80);
        v36 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
        v37 = vcvtq_f64_f32(vsub_f32(v36, vadd_f32(*(a1 + 64), vmul_f32(*(a1 + 72), 0x3F0000003F000000))));
        *v37.f64 = vaddvq_f64(vmulq_f64(v37, v37));
        v38 = vcvtq_f64_f32(vsub_f32(v36, vadd_f32(*(a1 + 24), vmul_f32(*(a1 + 32), 0x3F0000003F000000))));
        *v38.f64 = vaddvq_f64(vmulq_f64(v38, v38));
        if (*v37.f64 >= *v38.f64)
        {
          goto LABEL_31;
        }

        v10 = a1 + 40;
        goto LABEL_6;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, (a1 + 80), a1 + 120, (a2 - 40), a3);
        goto LABEL_31;
    }
  }

  else
  {
    if (v6 < 2)
    {
      goto LABEL_31;
    }

    if (v6 == 2)
    {
      v7 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
      v8 = vcvtq_f64_f32(vsub_f32(v7, vadd_f32(*(a2 - 16), vmul_f32(*(a2 - 8), 0x3F0000003F000000))));
      *v8.f64 = vaddvq_f64(vmulq_f64(v8, v8));
      v9 = vcvtq_f64_f32(vsub_f32(v7, vadd_f32(*(a1 + 24), vmul_f32(*(a1 + 32), 0x3F0000003F000000))));
      *v9.f64 = vaddvq_f64(vmulq_f64(v9, v9));
      if (*v8.f64 < *v9.f64)
      {
        v10 = a2 - 40;
LABEL_6:
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<marrs::mrr::mr::SurroundingText *&,marrs::mrr::mr::SurroundingText *&>(a1, v10);
      }

LABEL_31:
      result = 1;
      goto LABEL_32;
    }
  }

  v11 = (a1 + 80);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,marrs::mrr::mr::getSortedSurroundingTexts(std::vector<marrs::mrr::mr::MRREntity> const&)::$_0 &,marrs::mrr::mr::SurroundingText *,0>(a1, a1 + 40, (a1 + 80), a3);
  v13 = a1 + 120;
  if (a1 + 120 == a2)
  {
    goto LABEL_31;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
    v12.f64[0] = *(v13 + 32);
    v41 = *(v13 + 24);
    v42 = v12;
    v17 = vadd_f32(v41, vmul_f32(*&v12.f64[0], 0x3F0000003F000000));
    v18 = vcvtq_f64_f32(vsub_f32(v16, v17));
    v12 = vmulq_f64(v18, v18);
    *v12.f64 = vaddvq_f64(v12);
    v19 = vcvtq_f64_f32(vsub_f32(v16, vadd_f32(v11[3], vmul_f32(v11[4], 0x3F0000003F000000))));
    *v19.f64 = vaddvq_f64(vmulq_f64(v19, v19));
    if (*v12.f64 < *v19.f64)
    {
      v20 = *v13;
      *v43 = *(v13 + 8);
      *&v43[7] = *(v13 + 15);
      v21 = *(v13 + 23);
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 0;
      v22 = v14;
      while (1)
      {
        v23 = a1 + v22;
        if (*(a1 + v22 + 143) < 0)
        {
          operator delete(*(v23 + 120));
        }

        *(v23 + 120) = *(v23 + 80);
        *(v23 + 136) = *(v23 + 96);
        *(v23 + 103) = 0;
        *(v23 + 80) = 0;
        *(v23 + 144) = *(v23 + 104);
        if (v22 == -80)
        {
          break;
        }

        v24 = vadd_f32(**a3, vmul_f32((*a3)[1], 0x3F0000003F000000));
        v25 = vcvtq_f64_f32(vsub_f32(v24, v17));
        *v25.f64 = vaddvq_f64(vmulq_f64(v25, v25));
        v26 = a1 + v22;
        v27 = vcvtq_f64_f32(vsub_f32(v24, vadd_f32(*(a1 + v22 + 64), vmul_f32(*(a1 + v22 + 72), 0x3F0000003F000000))));
        *v27.f64 = vaddvq_f64(vmulq_f64(v27, v27));
        v22 -= 40;
        if (*v27.f64 <= *v25.f64)
        {
          v28 = a1 + v22 + 120;
          v29 = (v26 + 104);
          goto LABEL_22;
        }
      }

      v29 = (a1 + 24);
      v28 = a1;
LABEL_22:
      if (*(v28 + 23) < 0)
      {
        operator delete(*v28);
      }

      *v28 = v20;
      *(v28 + 8) = *v43;
      *(v28 + 15) = *&v43[7];
      *(v28 + 23) = v21;
      v12.f64[1] = v42.f64[1];
      *v29 = v41.i32[0];
      *(v28 + 28) = vext_s8(v41, *&v42.f64[0], 4uLL);
      *(v28 + 36) = HIDWORD(v42.f64[0]);
      if (++v15 == 8)
      {
        break;
      }
    }

    v11 = v13;
    v14 += 40;
    v13 += 40;
    if (v13 == a2)
    {
      goto LABEL_31;
    }
  }

  result = v13 + 40 == a2;
LABEL_32:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

void std::vector<marrs::qr::orchestration::QRHypothesis>::__init_with_size[abi:ne200100]<marrs::qr::orchestration::QRHypothesis*,marrs::qr::orchestration::QRHypothesis*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x492492492492493)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRHypothesis>>(a4);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }
}

void sub_22281C9B8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, os_signpost_id_t spid, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, NSObject *log, std::exception_ptr a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, uint64_t a53, uint64_t a54, void *a55)
{
  if (a2)
  {
    std::fstream::~fstream(&a55);
    __cxa_begin_catch(a1);
    if (a15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
    {
      LOWORD(STACK[0x4D0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, log, OS_SIGNPOST_INTERVAL_END, spid, "AssetLoad", " enableTelemetry=YES ", &STACK[0x4D0], 2u);
    }

    std::current_exception();
    v56.__ptr_ = &__p;
    std::rethrow_exception(v56);
    sub_22281D118();
  }

  _Unwind_Resume(a1);
}

void sub_22281D11C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, std::exception_ptr a51)
{
  if (a2)
  {
    std::exception_ptr::~exception_ptr(&a51);
    __cxa_end_catch();
    JUMPOUT(0x22281D130);
  }

  _Unwind_Resume(a1);
}

void sub_22281D1E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::exception_ptr a28)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void marrs::mrr::mr::SpanTypeFilter::~SpanTypeFilter(void **this)
{
  marrs::mrr::mr::MRFilterInterface::~MRFilterInterface(this);

  JUMPOUT(0x223DC2360);
}

void marrs::mrr::mr::SpanTypeFilter::filterEntities(uint64_t *a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v86 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    v19 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2227A9000, v19, OS_LOG_TYPE_INFO, "Empty MRR Entities in the input", &buf, 2u);
    }

    *a3 = 0;
    a3[24] = 0;
    goto LABEL_138;
  }

  v66 = 0;
  v67 = 0;
  v68 = 0;
  if (!*(a2 + 64))
  {
    goto LABEL_102;
  }

  MEMORY[0x223DC1930](v62, a2);
  v6 = MRRLoggerForCategory(2);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v7)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_INFO, "Extract entity type from span", &buf, 2u);
  }

  v8 = v63;
  marrs::mrr::mr::getUsoGraphProtoReader(v7);
  siri::ontology::UsoGraphProtoReader::fromProtobuf(&v69, &marrs::mrr::mr::getUsoGraphProtoReader(void)::inst, v8);
  v9 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    siri::ontology::UsoGraph::prettyPrint(&buf, v69);
    v10 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    LODWORD(v85) = 136315138;
    *(&v85 + 4) = v10;
    _os_log_impl(&dword_2227A9000, v9, OS_LOG_TYPE_DEBUG, "Develop: %s", &v85, 0xCu);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }

  v11 = *(*(v69 + 11) + 8);
  siri::ontology::UsoGraph::getSuccessors();
  v12 = buf.__r_.__value_.__r.__words[0];
  if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
  {
    v13 = *buf.__r_.__value_.__l.__data_;
    v14 = (*(**buf.__r_.__value_.__l.__data_ + 16))(*buf.__r_.__value_.__l.__data_);
    if (v14 == 1)
    {
      v20 = v13[1];
      siri::ontology::UsoGraph::getSuccessors();
      if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
      {
        if (*(&v85 + 1) == v85)
        {
          std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
        }

        v21 = *v85;
        if ((*(**v85 + 16))(*v85) == 2)
        {
          v22 = **v21;
          if (!v23)
          {
            __cxa_bad_cast();
          }

          v17 = v23;
          if (v85)
          {
            *(&v85 + 1) = v85;
            operator delete(v85);
          }

          goto LABEL_16;
        }
      }

      if (v85)
      {
        *(&v85 + 1) = v85;
        operator delete(v85);
      }
    }

    else if (v14 == 2)
    {
      v15 = **v13;
      if (!v16)
      {
        __cxa_bad_cast();
      }

      v17 = v16;
LABEL_16:
      v18 = 1;
      goto LABEL_31;
    }

    v18 = 0;
    v17 = 0;
LABEL_31:
    v12 = buf.__r_.__value_.__r.__words[0];
    if (!buf.__r_.__value_.__r.__words[0])
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  v18 = 0;
  v17 = 0;
  if (buf.__r_.__value_.__r.__words[0])
  {
LABEL_32:
    buf.__r_.__value_.__l.__size_ = v12;
    operator delete(v12);
  }

LABEL_33:
  if ((v18 & 1) == 0)
  {
    v34 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v65 = 0;
    goto LABEL_85;
  }

  v24 = v17[3];
  siri::ontology::oname::graph::ontology_init::common_AppEntityType(v12);
  if (siri::ontology::operator!=())
  {
    v25 = v17[3];
    if (*(v25 + 31) >= 0)
    {
      v26 = *(v25 + 31);
    }

    else
    {
      v26 = *(v25 + 16);
    }

    std::string::basic_string[abi:ne200100](&buf, v26 + 49);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if (v26)
    {
      v30 = *(v25 + 8);
      v29 = (v25 + 8);
      v28 = v30;
      if (v29[23] >= 0)
      {
        v31 = v29;
      }

      else
      {
        v31 = v28;
      }

      memmove(p_buf, v31, v26);
    }

    strcpy(p_buf + v26, ": Unsupported entityType for reference resolution");
    v32 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v33 = buf.__r_.__value_.__r.__words[0];
      }

      LODWORD(v85) = 136315138;
      *(&v85 + 4) = v33;
      _os_log_impl(&dword_2227A9000, v32, OS_LOG_TYPE_INFO, "%s", &v85, 0xCu);
    }

    __p.__r_.__value_.__s.__data_[0] = 0;
    v65 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v34 = 0;
    goto LABEL_85;
  }

  v35 = v17[1];
  siri::ontology::UsoGraph::getSuccessors();
  if (v85 == *(&v85 + 1) || (v36 = *v85, (*(**v85 + 16))(*v85) != 3))
  {
LABEL_82:
    v34 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
    v65 = 0;
    goto LABEL_83;
  }

  v37 = **v36;
  if (!v38)
  {
    __cxa_bad_cast();
  }

  siri::ontology::UsoEntityNode::getIdentifiers(&v70, v38);
  v40 = v70;
  v39 = v71;
  if (v70 == v71)
  {
LABEL_80:
    if (v40)
    {
      v71 = v40;
      operator delete(v40);
    }

    goto LABEL_82;
  }

  while (1)
  {
    v41 = *v40;
    buf.__r_.__value_.__s.__data_[0] = 0;
    v73 = 0;
    if (*(v41 + 72) != 1)
    {
      goto LABEL_78;
    }

    if (*(v41 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&buf, *(v41 + 48), *(v41 + 56));
    }

    else
    {
      buf = *(v41 + 48);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      if (buf.__r_.__value_.__l.__size_ != 15)
      {
        v46 = 0;
        goto LABEL_74;
      }

      v42 = buf.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) != 15)
      {
        goto LABEL_78;
      }

      v42 = &buf;
    }

    v43 = v42->__r_.__value_.__r.__words[0];
    v44 = *(v42->__r_.__value_.__r.__words + 7);
    v45 = v43 == 0x69746E655F707061 && v44 == 0x657079745F797469;
    v46 = v45;
LABEL_74:
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      break;
    }

    operator delete(buf.__r_.__value_.__l.__data_);
    if (v46)
    {
      goto LABEL_139;
    }

LABEL_78:
    if (++v40 == v39)
    {
      v40 = v70;
      goto LABEL_80;
    }
  }

  if (!v46)
  {
    goto LABEL_78;
  }

LABEL_139:
  if (*(v41 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *v41, *(v41 + 8));
  }

  else
  {
    buf = *v41;
  }

  __p = buf;
  v65 = 1;
  if (v70)
  {
    v71 = v70;
    operator delete(v70);
  }

  v34 = 1;
LABEL_83:
  if (v85)
  {
    *(&v85 + 1) = v85;
    operator delete(v85);
  }

LABEL_85:
  v47 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (!v34)
    {
      p_p = "entityType not generated from USO Graph";
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_impl(&dword_2227A9000, v47, OS_LOG_TYPE_INFO, "entityType from USOGraph - %s", &buf, 0xCu);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v69);
  MEMORY[0x223DC1950](v62);
  if (v65 == 1)
  {
    v49 = v67;
    if (v67 >= v68)
    {
      v51 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v66, &__p);
    }

    else
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v67, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = *&__p.__r_.__value_.__l.__data_;
        v67->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
        *&v49->__r_.__value_.__l.__data_ = v50;
      }

      v51 = v49 + 1;
    }

    v67 = v51;
    if ((v65 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v4 = *a1;
  v5 = a1[1];
LABEL_102:
  if (v5 != v4)
  {
    v52 = 0;
    do
    {
      marrs::mrr::mr::MRREntity::MRREntity(&buf, (v4 + 216 * v52));
      v53 = v66;
      v54 = v67;
      while (v53 != v54)
      {
        if (*(v53 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v53, *(v53 + 8));
        }

        else
        {
          __p = *v53;
        }

        if ((v83 & 0x80u) == 0)
        {
          v55 = v83;
        }

        else
        {
          v55 = v82[1];
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v57 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (v55 == size)
        {
          v58 = (v83 & 0x80u) == 0 ? v82 : v82[0];
          v59 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          if (!memcmp(v58, v59, v55))
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
          }
        }

        if (v57 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v53 += 24;
      }

      __p.__r_.__value_.__r.__words[0] = &v84;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v83 < 0)
      {
        operator delete(v82[0]);
      }

      if (v81 < 0)
      {
        operator delete(v80);
      }

      __p.__r_.__value_.__r.__words[0] = &v79;
      std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v78 < 0)
      {
        operator delete(v77);
      }

      if (v76 < 0)
      {
        operator delete(v75);
      }

      if (v74 < 0)
      {
        operator delete(buf.__r_.__value_.__l.__size_);
      }

      ++v52;
      v4 = *a1;
    }

    while (v52 < 0x84BDA12F684BDA13 * ((a1[1] - *a1) >> 3));
  }

  buf.__r_.__value_.__r.__words[0] = &v66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&buf);
  *a3 = 0;
  a3[24] = 0;
LABEL_138:
  v60 = *MEMORY[0x277D85DE8];
}

void sub_22281DE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int128 a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45)
{
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  v47 = *(v45 - 128);
  if (v47)
  {
    *(v45 - 120) = v47;
    operator delete(v47);
  }

  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&a35);
  MEMORY[0x223DC1950](&a13);
  a24 = &a32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void RuleBasedRepetitionPredictor::Predict(void *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *MEMORY[0x277D85DE8];
  *(a7 + 24) = *(a7 + 16);
  v7 = a1[1] - *a1;
  if (v7)
  {
    v8 = a2[1];
    if (v8 != *a2 && v7 == a3[1] - *a3 && v8 - *a2 == a4[1] - *a4)
    {
      buf = 0uLL;
      v12 = 0;
      std::vector<BOOL>::__vallocate[abi:ne200100](&buf, 0xAAAAAAAAAAAAAAABLL * (v7 >> 3));
    }
  }

  *a7 = 1065353216;
  *(a7 + 8) = 0;
  v9 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "Predict";
    _os_log_error_impl(&dword_2227A9000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: Invalid inputs/Pronounciation Mismatch", &buf, 0xCu);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2228209B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51)
{
  if (*(v53 - 225) < 0)
  {
    operator delete(*(v53 - 248));
  }

  if (*(v53 - 137) < 0)
  {
    operator delete(*(v53 - 160));
    if ((v52 & 1) == 0)
    {
LABEL_8:
      *(v53 - 248) = &a29;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v53 - 248));
      *(v53 - 248) = &a32;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100]((v53 - 248));
      *(v53 - 248) = &a35;
      std::vector<std::vector<BOOL>>::__destroy_vector::operator()[abi:ne200100]((v53 - 248));
      _Unwind_Resume(a1);
    }
  }

  else if (!v52)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v51);
  goto LABEL_8;
}

void std::vector<float>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 2;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 4 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v8 = v7 - v3;
        v9 = v8 >> 1;
        if (v8 >> 1 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v10);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 4 * v6);
    v11 = v4 + 4 * v6;
  }

  a1[1] = v11;
}

uint64_t *removeFirstColumn<float>(uint64_t *result)
{
  v2 = *result;
  v1 = result[1];
  if (v1 != *result)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = v2 + v4;
      v8 = *(v2 + v4);
      v7 = *(v2 + v4 + 8);
      v9 = v7 - (v8 + 4);
      if (v7 != v8 + 4)
      {
        result = memmove(*(v2 + v4), (v8 + 4), v7 - (v8 + 4));
        v2 = *v3;
        v1 = v3[1];
      }

      *(v6 + 8) = v8 + v9;
      ++v5;
      v4 += 24;
    }

    while (v5 < 0xAAAAAAAAAAAAAAABLL * ((v1 - v2) >> 3));
  }

  return result;
}

uint64_t removeFirstColumn<std::pair<unsigned int,unsigned int>>(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = 0;
    v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - result) >> 3);
    if (v3 <= 1)
    {
      v3 = 1;
    }

    do
    {
      v4 = (result + 24 * v2);
      v6 = *v4;
      v5 = v4[1];
      v7 = (*v4 + 8);
      if (v7 != v5)
      {
        do
        {
          v8 = v7[1];
          *(v7 - 2) = *v7;
          *(v7 - 1) = v8;
          v7 += 2;
        }

        while (v7 != v5);
        v6 = v7 - 2;
      }

      v4[1] = v6;
      ++v2;
    }

    while (v2 != v3);
  }

  return result;
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::vector<std::vector<std::vector<std::vector<unsigned int>>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t marrs::mrr::md::MRRVisualAndScreenMentionDetector::detectMentionsInUtterance@<X0>(marrs::mrr::md::MRRVisualAndScreenMentionDetector *this@<X0>, const sirinluinternalmention_detector::MentionDetectorRequest *a2@<X1>, sirinluinternalmention_detector::MentionDetectorResponse *a3@<X8>)
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = MRRLoggerForCategory(1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "MDRequest", 9);
    std::ios_base::getloc((&v62[-2] + *(buf - 24)));
    v7 = std::locale::use_facet(&v67, MEMORY[0x277D82680]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v67);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "utterance - ", 12);
    v8 = *(a2 + 8);
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = *v8;
    }

    if (v9 >= 0)
    {
      v11 = *(v8 + 23);
    }

    else
    {
      v11 = *(v8 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, v10, v11);
    std::ios_base::getloc((&v62[-2] + *(buf - 24)));
    v12 = std::locale::use_facet(&v67, MEMORY[0x277D82680]);
    (v12->__vftable[2].~facet_0)(v12, 10);
    std::locale::~locale(&v67);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "maxCandidates - ", 16);
    v13 = MEMORY[0x223DC2160](&buf, *(a2 + 3));
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v67, MEMORY[0x277D82680]);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v67);
    std::ostream::put();
    std::ostream::flush();
    std::stringbuf::str();
    *&buf = *MEMORY[0x277D82828];
    *(&v62[-2].__locale_ + *(buf - 24)) = *(MEMORY[0x277D82828] + 24);
    *(&buf + 1) = MEMORY[0x277D82878] + 16;
    if (v63 < 0)
    {
      operator delete(v62[7].__locale_);
    }

    *(&buf + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v62);
    std::ostream::~ostream();
    MEMORY[0x223DC2270](&v64);
    locale = &v67;
    if (v68 < 0)
    {
      locale = v67.__locale_;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = locale;
    _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_INFO, "MD Request - %s", &buf, 0xCu);
    if (v68 < 0)
    {
      operator delete(v67.__locale_);
    }
  }

  if (!*(a2 + 5))
  {
    v47 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "Invalid Mention Detector input: requestId not set";
      _os_log_impl(&dword_2227A9000, v47, OS_LOG_TYPE_ERROR, "IOContentError - %s", &buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Mention Detector input: requestId not set");
    std::string::basic_string[abi:ne200100]<0>(&v67, "MultimodalReferenceResolution");
    IOContentError::IOContentError(exception, &buf, &v67, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionDetector/VisualAndScreenMentionDetector/MRRVisualAndScreenMentionDetector.cpp", 47);
  }

  v16 = *(a2 + 2);
  if (!v16)
  {
    v49 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "Invalid Mention Detector input: no embeddingTensor in request";
      _os_log_impl(&dword_2227A9000, v49, OS_LOG_TYPE_ERROR, "IOContentError - %s", &buf, 0xCu);
    }

    v50 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Mention Detector input: no embeddingTensor in request");
    std::string::basic_string[abi:ne200100]<0>(&v67, "MultimodalReferenceResolution");
    IOContentError::IOContentError(v50, &buf, &v67, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionDetector/VisualAndScreenMentionDetector/MRRVisualAndScreenMentionDetector.cpp", 50);
  }

  if (!*(a2 + 7))
  {
    v51 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "Invalid Mention Detector input: no tokenChain in request";
      _os_log_impl(&dword_2227A9000, v51, OS_LOG_TYPE_ERROR, "IOContentError - %s", &buf, 0xCu);
    }

    v52 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Mention Detector input: no tokenChain in request");
    std::string::basic_string[abi:ne200100]<0>(&v67, "MultimodalReferenceResolution");
    IOContentError::IOContentError(v52, &buf, &v67, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionDetector/VisualAndScreenMentionDetector/MRRVisualAndScreenMentionDetector.cpp", 53);
  }

  if (!*(a2 + 8))
  {
    v53 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "Invalid Mention Detector input: no utterance in request";
      _os_log_impl(&dword_2227A9000, v53, OS_LOG_TYPE_ERROR, "IOContentError - %s", &buf, 0xCu);
    }

    v54 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "Invalid Mention Detector input: no utterance in request");
    std::string::basic_string[abi:ne200100]<0>(&v67, "MultimodalReferenceResolution");
    IOContentError::IOContentError(v54, &buf, &v67, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionDetector/VisualAndScreenMentionDetector/MRRVisualAndScreenMentionDetector.cpp", 56);
  }

  if (*(v16 + 40) != *(this + 16))
  {
    v55 = MRRLoggerForCategory(1);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "OwlEmbeddingMismatch";
      _os_log_impl(&dword_2227A9000, v55, OS_LOG_TYPE_ERROR, "InferenceError - %s", &buf, 0xCu);
    }

    v56 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&buf, "OwlEmbeddingMismatch");
    std::string::basic_string[abi:ne200100]<0>(&v67, "MultimodalReferenceResolution");
    InferenceError::InferenceError(v56, &buf, &v67, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionDetector/VisualAndScreenMentionDetector/MRRVisualAndScreenMentionDetector.cpp", 59);
  }

  v17 = MRRLoggerForCategory(3);
  v18 = os_signpost_id_generate(v17);
  v19 = MRRLoggerForCategory(3);
  if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v19;
    if (os_signpost_enabled(v19))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "MDPreProcessing", "", &buf, 2u);
    }
  }

  v21 = MRRLoggerForCategory(0);
  v58 = a3;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_2227A9000, v21, OS_LOG_TYPE_INFO, "BEGIN MDPreProcessing", &buf, 2u);
  }

  sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(&buf);
  v57 = this;
  v22 = *(this + 18);
  if (v22)
  {
    v23 = *(a2 + 8);
    v24 = *(v23 + 23);
    if (v24 >= 0)
    {
      v25 = *(v23 + 23);
    }

    else
    {
      v25 = *(v23 + 8);
    }

    if (v24 >= 0)
    {
      v26 = *(a2 + 8);
    }

    else
    {
      v26 = *v23;
    }

    do
    {
      v27 = *(v22 + 55);
      if (v27 >= 0)
      {
        v28 = *(v22 + 55);
      }

      else
      {
        v28 = v22[5];
      }

      if (v27 >= 0)
      {
        v29 = (v22 + 4);
      }

      else
      {
        v29 = v22[4];
      }

      if (v28 >= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v28;
      }

      v31 = memcmp(v26, v29, v30);
      v32 = v25 < v28;
      if (v31)
      {
        v32 = v31 < 0;
      }

      if (!v32)
      {
        v33 = memcmp(v29, v26, v30);
        v34 = v28 < v25;
        if (v33)
        {
          v34 = v33 < 0;
        }

        if (!v34)
        {
          v35 = *std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(v57 + 136, &v67, v23);
          if (v35)
          {
            v36 = *(v35 + 56);
            if (v36 != *(v35 + 64))
            {
              v38 = *(a2 + 7);
              v37 = *(a2 + 8);
              v39 = *v36;
              v40 = v36[1];
              marrs::mrr::md::getMatchingSpanForBoundary();
            }

            v41 = MRRLoggerForCategory(2);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
            {
              marrs::mrr::MRRCPPPrintUtils::getMdResponseString(&v67, &buf);
              v42 = v68 >= 0 ? &v67 : v67.__locale_;
              v65 = 136315138;
              *v66 = v42;
              _os_log_impl(&dword_2227A9000, v41, OS_LOG_TYPE_INFO, "MD Response due to override - %s", &v65, 0xCu);
              if (v68 < 0)
              {
                operator delete(v67.__locale_);
              }
            }

            v43 = *(a2 + 5);
            operator new();
          }

          std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
        }

        ++v22;
      }

      v22 = *v22;
    }

    while (v22);
  }

  v59[0] = 0;
  v60 = 0;
  MEMORY[0x223DC1A50](&buf);
  if (v60 != 1)
  {
    sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse(v58);
    v45 = *(a2 + 5);
    operator new();
  }

  result = MEMORY[0x223DC1A30](v58, v59);
  if (v60 == 1)
  {
    result = MEMORY[0x223DC1A50](v59);
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_222822E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, int a63)
{
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (*(v68 - 185) < 0)
  {
    operator delete(*(v68 - 208));
    if ((v67 & 1) == 0)
    {
LABEL_8:
      if (a66 < 0)
      {
        operator delete(a61);
      }

      if (a16)
      {
        operator delete(a16);
      }

      a61 = &a34;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
      MEMORY[0x223DC1A50](a20);
      if (a42 == 1)
      {
        MEMORY[0x223DC1A50](&a37);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v66);
  goto LABEL_8;
}

void marrs::mrr::md::inference_engine::EspressoMentionDetectorModelInputType::~EspressoMentionDetectorModelInputType(marrs::mrr::md::inference_engine::EspressoMentionDetectorModelInputType *this)
{
  MEMORY[0x223DC19B0](this + 24);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void marrs::mrr::md::inference_engine::EspressoMentionDetectorModel::~EspressoMentionDetectorModel(marrs::inference_engine::EspressoModule **this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    marrs::inference_engine::EspressoModule::~EspressoModule(v2);
    MEMORY[0x223DC2360]();
  }
}

void marrs::mrr::mr::MROrchestrator::resolveMentionsInUtterance(const sirinluinternalmention_resolver::MentionResolverRequest *a1@<X1>, sirinluinternalmention_resolver::MentionResolverResponse *a2@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  sirinluinternalmention_resolver::MentionResolverResponse::MentionResolverResponse(a2);
  if (!*(a1 + 17))
  {
    v44 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
      *(v52.__r_.__value_.__r.__words + 4) = "Invalid Mention Resolver input: requestId not set";
      _os_log_impl(&dword_2227A9000, v44, OS_LOG_TYPE_ERROR, "IOContentError - %s", &v52, 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v52, "Invalid Mention Resolver input: requestId not set");
    std::string::basic_string[abi:ne200100]<0>(&v50, "MultimodalReferenceResolution");
    IOContentError::IOContentError(exception, &v52, &v50, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/MROrchestrator.cpp", 404);
  }

  if (!*(a1 + 8))
  {
    v46 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      LODWORD(v52.__r_.__value_.__l.__data_) = 136315138;
      *(v52.__r_.__value_.__r.__words + 4) = "Invalid Mention Resolver input: no embeddingTensor in request";
      _os_log_impl(&dword_2227A9000, v46, OS_LOG_TYPE_ERROR, "IOContentError - %s", &v52, 0xCu);
    }

    v47 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(&v52, "Invalid Mention Resolver input: no embeddingTensor in request");
    std::string::basic_string[abi:ne200100]<0>(&v50, "MultimodalReferenceResolution");
    IOContentError::IOContentError(v47, &v52, &v50, "/Library/Caches/com.apple.xbs/Sources/Marrs/MultimodalReferenceResolution.subproj/MultimodalReferenceResolution/MentionResolver/MROrchestrator.cpp", 408);
  }

  memset(v49, 0, sizeof(v49));
  std::string::basic_string[abi:ne200100]<0>(v62, "app_entity");
  *&v56 = 0;
  *&v55[8] = 0;
  *v55 = &v55[8];
  v4 = *(a1 + 12);
  v5 = *(a1 + 13);
  for (i = a1; v4 != v5; v4 += 8)
  {
    v6 = *(*v4 + 64);
    if (v6)
    {
      memset(&v50, 0, sizeof(v50));
      v7 = *(v6 + 56);
      v8 = *(v6 + 64);
      while (v7 != v8)
      {
        MEMORY[0x223DC18B0](&v52, *v7);
        if (v52.__r_.__value_.__r.__words[2])
        {
          v9 = *(v52.__r_.__value_.__r.__words[2] + 8);
          if (v9)
          {
            v10 = *(v9 + 23);
            if (v10 >= 0)
            {
              v11 = *(v9 + 23);
            }

            else
            {
              v11 = *(v9 + 8);
            }

            v12 = HIBYTE(v63);
            if (v63 < 0)
            {
              v12 = *&v62[8];
            }

            if (v11 == v12)
            {
              v13 = v10 >= 0 ? *(v52.__r_.__value_.__r.__words[2] + 8) : *v9;
              v14 = v63 >= 0 ? v62 : *v62;
              v15 = memcmp(v13, v14, v11) || __str == 0;
              if (!v15)
              {
                std::string::operator=(&v50, __str);
                MEMORY[0x223DC18D0](&v52);
                break;
              }
            }
          }
        }

        MEMORY[0x223DC18D0](&v52);
        ++v7;
      }

      v52.__r_.__value_.__r.__words[0] = &v50;
      std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, &v50);
      sirinluinternal::MatchingSpan::operator=();
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }
    }
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(*v62);
  }

  *&v62[8] = 0;
  v63 = 0;
  *v62 = &v62[8];
  v16 = *(a1 + 9);
  v17 = *(a1 + 10);
  while (v16 != v17)
  {
    v18 = *(*v16 + 48);
    if (v18)
    {
      v19 = *(v18 + 8);
      if (v19)
      {
        v52.__r_.__value_.__r.__words[0] = *(v18 + 8);
        std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v62, v19);
        sirinluexternal::EntityCandidate::operator=();
      }
    }

    v16 += 8;
  }

  v58[1] = 0;
  v58[0] = 0;
  *v57 = v58;
  v20 = *v55;
  *v60 = v57;
  *&v60[8] = v58;
  if (*v55 != &v55[8])
  {
    do
    {
      if (v20[55] < 0)
      {
        std::string::__init_copy_ctor_external(&v52, *(v20 + 4), *(v20 + 5));
      }

      else
      {
        v52 = *(v20 + 32);
      }

      MEMORY[0x223DC1930](&v53, v20 + 56);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = v52;
      }

      std::insert_iterator<std::set<std::string>>::operator=[abi:ne200100](v60, &v50);
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      MEMORY[0x223DC1950](&v53);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      v21 = *(v20 + 1);
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = *(v20 + 2);
          v15 = *v22 == v20;
          v20 = v22;
        }

        while (!v15);
      }

      v20 = v22;
    }

    while (v22 != &v55[8]);
  }

  *&v60[8] = 0;
  v61 = 0;
  *v60 = &v60[8];
  v23 = *v62;
  *buf = v60;
  *&buf[8] = &v60[8];
  if (*v62 == &v62[8])
  {
    v26 = &v60[8];
  }

  else
  {
    do
    {
      if (v23[55] < 0)
      {
        std::string::__init_copy_ctor_external(&v52, *(v23 + 4), *(v23 + 5));
      }

      else
      {
        v52 = *(v23 + 32);
      }

      MEMORY[0x223DC1830](&v53, v23 + 56);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v50, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
      }

      else
      {
        v50 = v52;
      }

      std::insert_iterator<std::set<std::string>>::operator=[abi:ne200100](buf, &v50);
      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      MEMORY[0x223DC1850](&v53);
      if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v52.__r_.__value_.__l.__data_);
      }

      v24 = *(v23 + 1);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v23 + 2);
          v15 = *v25 == v23;
          v23 = v25;
        }

        while (!v15);
      }

      v23 = v25;
    }

    while (v25 != &v62[8]);
    v26 = *v60;
  }

  memset(&v50, 0, sizeof(v50));
  std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>(&v52, *v57, v58, v26, &v60[8], &v50);
  size = v50.__r_.__value_.__l.__size_;
  for (j = v50.__r_.__value_.__r.__words[0]; j != size; j += 24)
  {
    v52.__r_.__value_.__r.__words[0] = j;
    if (std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, j)[13])
    {
      v52.__r_.__value_.__r.__words[0] = j;
      v29 = std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, j)[13];
      v30 = *(v29 + 23);
      if (v30 < 0)
      {
        if (v29[1] == 9)
        {
          v29 = *v29;
LABEL_81:
          v31 = *v29;
          v32 = *(v29 + 8);
          if (v31 == 0x7469746E45707061 && v32 == 121)
          {
            v51.__r_.__value_.__r.__words[0] = j;
            v34 = std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v55, j);
            MEMORY[0x223DC1930](&v52, v34 + 7);
            v51.__r_.__value_.__r.__words[0] = j;
            if (std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v62, j)[12])
            {
              v51.__r_.__value_.__r.__words[0] = j;
              v35 = std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v62, j)[12];
              operator new();
            }

            v36 = MRRLoggerForCategory(2);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = __str;
              if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
              {
                v37 = __str->__r_.__value_.__r.__words[0];
              }

              v38 = j;
              if (*(j + 23) < 0)
              {
                v38 = *j;
              }

              *buf = 136315394;
              *&buf[4] = v37;
              *&buf[12] = 2080;
              *&buf[14] = v38;
              _os_log_impl(&dword_2227A9000, v36, OS_LOG_TYPE_INFO, "found span %s in matching spans that matches with salient entity %s", buf, 0x16u);
            }

            PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan&>();
          }
        }
      }

      else if (v30 == 9)
      {
        goto LABEL_81;
      }
    }
  }

  v52.__r_.__value_.__r.__words[0] = &v50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v52);
  std::__tree<std::string>::destroy(*&v60[8]);
  std::__tree<std::string>::destroy(v58[0]);
  std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::destroy(*&v62[8]);
  std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::destroy(*&v55[8]);
  v39 = *(i + 2);
  if (v39 != *(i + 3))
  {
    v40 = *v39;
    PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan const&>();
  }

  if (*(i + 5) != *(i + 6))
  {
    v41 = *(i + 17);
    operator new();
  }

  v42 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    LOWORD(v52.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2227A9000, v42, OS_LOG_TYPE_INFO, "No mentions or contextual spans in request returning empty", &v52, 2u);
  }

  v52.__r_.__value_.__r.__words[0] = v49;
  std::vector<std::unique_ptr<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100](&v52);
  v43 = *MEMORY[0x277D85DE8];
}

void sub_2228274F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, void *__p)
{
  *(v44 - 216) = v43;
  STACK[0x250] = &__p;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  STACK[0x250] = &a33;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  STACK[0x250] = &STACK[0x218];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  STACK[0x250] = &STACK[0x230];
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  STACK[0x250] = v44 - 256;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  *(v44 - 192) = v44 - 224;
  std::vector<std::vector<marrs::mrr::mr::MRMatchingResult>>::__destroy_vector::operator()[abi:ne200100]((v44 - 192));
  *(v44 - 192) = &a37;
  std::vector<marrs::mrr::mr::MRREntity>::__destroy_vector::operator()[abi:ne200100]((v44 - 192));
  *(v44 - 224) = &a40;
  std::vector<std::unique_ptr<sirinluinternal::MatchingSpan>>::__destroy_vector::operator()[abi:ne200100]((v44 - 224));
  MEMORY[0x223DC1A90](a20);
  _Unwind_Resume(a1);
}

void marrs::mrr::mr::MROrchestrator::doCoreAnalytics()
{
  v0 = MRRLoggerForCategory(3);
  v1 = os_signpost_id_generate(v0);
  v2 = MRRLoggerForCategory(3);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v3 = v2;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "MRDoCoreAnalytics", "", buf, 2u);
    }
  }

  v4 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v4, OS_LOG_TYPE_INFO, "BEGIN MRDoCoreAnalytics", buf, 2u);
  }

  std::string::basic_string[abi:ne200100]<0>(&v10, "com.apple.siri.marrs");
  v5 = std::string::append(&v10, ".MentionDetectorMentionResolver.MentionResolver.Resolve");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v12 = v5->__r_.__value_.__r.__words[2];
  *buf = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  analytics_send_event_lazy();
  if (SHIBYTE(v12) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v7 = MRRLoggerForCategory(3);
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, v8, OS_SIGNPOST_INTERVAL_END, v1, "MRDoCoreAnalytics", " enableTelemetry=YES ", buf, 2u);
    }
  }

  v9 = MRRLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_2227A9000, v9, OS_LOG_TYPE_INFO, "END MRDoCoreAnalytics", buf, 2u);
  }
}

void sub_222827E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a19 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void marrs::mrr::mr::MROrchestrator::processMRResultsToFinalResponse(uint64_t *a1, uint64_t a2, void *a3)
{
  v84[19] = *MEMORY[0x277D85DE8];
  v6 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 0x82FA0BE82FA0BE83 * ((a1[1] - *a1) >> 3);
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_DEBUG, "Number of matching results before postResolveFilter - %ld", &buf, 0xCu);
  }

  *__p = 0u;
  v74 = 0u;
  v75 = 1065353216;
  v8 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    v70 = 0;
    v71 = 0;
    v72 = 0;
    goto LABEL_54;
  }

  do
  {
    if (*(v8 + 312) == 1 && *(v8 + 96) == 14)
    {
      v10 = sirinluinternal::MatchingSpan::hash_value(v8);
      v11 = v10;
      if (__p[1])
      {
        v12 = vcnt_s8(__p[1]);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = v12.u32[0];
        if (v12.u32[0] > 1uLL)
        {
          v14 = v10;
          if (v10 >= __p[1])
          {
            v14 = v10 % __p[1];
          }
        }

        else
        {
          v14 = (__p[1] - 1) & v10;
        }

        v15 = *(__p[0] + v14);
        if (v15)
        {
          v16 = *v15;
          if (*v15)
          {
            do
            {
              v17 = v16[1];
              if (v17 == v11)
              {
                if (sirinluinternal::MatchingSpan::operator==())
                {
                  goto LABEL_23;
                }
              }

              else
              {
                if (v13 > 1)
                {
                  if (v17 >= __p[1])
                  {
                    v17 %= __p[1];
                  }
                }

                else
                {
                  v17 &= __p[1] - 1;
                }

                if (v17 != v14)
                {
                  break;
                }
              }

              v16 = *v16;
            }

            while (v16);
          }
        }
      }

      operator new();
    }

LABEL_23:
    v8 += 344;
  }

  while (v8 != v9);
  v8 = *a1;
  v9 = a1[1];
  v71 = 0;
  v72 = 0;
  v70 = 0;
  if (v9 != v8)
  {
    v18 = 0x82FA0BE82FA0BE83 * ((v9 - v8) >> 3);
    if (v18 < 0xBE82FA0BE82FA1)
    {
      v82[2].__locale_ = &v70;
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v18);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

LABEL_54:
  if (v8 != v9)
  {
    v19 = sirinluinternal::MatchingSpan::hash_value(v8);
    v20 = __p[1];
    if (!__p[1])
    {
      goto LABEL_49;
    }

    v21 = v19;
    v22 = vcnt_s8(__p[1]);
    v22.i16[0] = vaddlv_u8(v22);
    v23 = v22.u32[0];
    if (v22.u32[0] > 1uLL)
    {
      v24 = v19;
      if (v19 >= __p[1])
      {
        v24 = v19 % __p[1];
      }
    }

    else
    {
      v24 = (__p[1] - 1) & v19;
    }

    v25 = *(__p[0] + v24);
    if (!v25 || (v26 = *v25) == 0)
    {
LABEL_49:
      v29 = v71;
      if (v71 >= v72)
      {
        v30 = std::vector<marrs::mrr::mr::MRMatchingResult>::__emplace_back_slow_path<marrs::mrr::mr::MRMatchingResult const&>(&v70, v8);
      }

      else
      {
        std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,marrs::mrr::mr::MRMatchingResult const&,0>(v71, v8);
        v30 = v29 + 43;
      }

      v71 = v30;
      goto LABEL_53;
    }

    while (1)
    {
      v27 = v26[1];
      if (v21 == v27)
      {
        if (sirinluinternal::MatchingSpan::operator==())
        {
          if ((*(v8 + 312) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (*(v8 + 96) != 7)
          {
            goto LABEL_49;
          }

          v28 = MRRLoggerForCategory(2);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_2227A9000, v28, OS_LOG_TYPE_DEBUG, "ignoring media artist since common person is already present for the same span", &buf, 2u);
          }

LABEL_53:
          v8 += 344;
          goto LABEL_54;
        }
      }

      else
      {
        if (v23 > 1)
        {
          if (v27 >= v20)
          {
            v27 %= v20;
          }
        }

        else
        {
          v27 &= v20 - 1;
        }

        if (v27 != v24)
        {
          goto LABEL_49;
        }
      }

      v26 = *v26;
      if (!v26)
      {
        goto LABEL_49;
      }
    }
  }

  v31 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = 0x82FA0BE82FA0BE83 * ((v71 - v70) >> 3);
    _os_log_impl(&dword_2227A9000, v31, OS_LOG_TYPE_DEBUG, "Number of matching results after postResolveFilter - %ld", &buf, 0xCu);
  }

  std::__hash_table<sirinluinternal::MatchingSpan,std::hash<sirinluinternal::MatchingSpan>,std::equal_to<sirinluinternal::MatchingSpan>,std::allocator<sirinluinternal::MatchingSpan>>::~__hash_table(__p);
  v32 = 126 - 2 * __clz(0x82FA0BE82FA0BE83 * ((v71 - v70) >> 3));
  if (v71 == v70)
  {
    v33 = 0;
  }

  else
  {
    v33 = v32;
  }

  std::__introsort<std::_ClassicAlgPolicy,marrs::mrr::mr::MRMatchingResult::sortByMentionAndScore(std::vector<marrs::mrr::mr::MRMatchingResult> &)::$_0 &,marrs::mrr::mr::MRMatchingResult*,false>(v70, v71, v33, 1);
  if (v70 != v71)
  {
    v34 = *(a2 + 168);
    marrs::mrr::mr::MRMatchingResult::toMatchingSpan(&buf, v70, (a2 + 72), a2 + 152);
    v35 = v70;
    if (v71 == v70)
    {
      std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v70 + 312) == 1)
    {
      locale = v82[6].__locale_;
      v37 = *(v70 + 96);
      if (v37 == 10)
      {
        goto LABEL_71;
      }

      if (v37 == 14)
      {
        v38 = (v70 + 128);
        v39 = *(v70 + 151);
        if (v39 < 0)
        {
          if (*(v70 + 136) == 8)
          {
            v38 = *v38;
            goto LABEL_70;
          }

LABEL_71:
          v40 = MRRLoggerForCategory(2);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            marrs::mrr::mr::MRREntity::getDebugDescription(__p, (v35 + 96));
            v41 = (SBYTE7(v74) & 0x80u) == 0 ? __p : __p[0];
            LODWORD(v80.__r_.__value_.__l.__data_) = 136315138;
            *(v80.__r_.__value_.__r.__words + 4) = v41;
            _os_log_impl(&dword_2227A9000, v40, OS_LOG_TYPE_DEBUG, "rewriting with mrrEntity - %s", &v80, 0xCu);
            if (SBYTE7(v74) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v42 = *(locale + 1);
          if (v42 != *(locale + 2))
          {
            v43 = *v42;
            v44 = *(*v42 + 8);
            if (v44 != *(v43 + 16))
            {
              if ((*(v35 + 312) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              if (*(v35 + 127) < 0)
              {
                if (!*(v35 + 112))
                {
                  goto LABEL_92;
                }
              }

              else if (!*(v35 + 127))
              {
                goto LABEL_92;
              }

              v45 = *v44;
              v46 = *(v45 + 20);
              v47 = *(v45 + 8);
              ICUStringOperations::toU16String(__p, v34);
              if ((*(v35 + 312) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              ICUStringOperations::toU16String(&v80, (v35 + 104));
              v49 = BYTE7(v74);
              v50 = BYTE7(v74);
              if (SBYTE7(v74) < 0)
              {
                v49 = __p[1];
              }

              if (v49 >= v47)
              {
                std::basic_string<char16_t>::basic_string(&v77, __p, 0, v46, v48);
                if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v65 = &v80;
                }

                else
                {
                  v65 = v80.__r_.__value_.__r.__words[0];
                }

                if ((v80.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  size = HIBYTE(v80.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  size = v80.__r_.__value_.__l.__size_;
                }

                std::basic_string<char16_t>::append(&v77, v65, size);
                v78 = v77;
                memset(&v77, 0, sizeof(v77));
                std::basic_string<char16_t>::basic_string(&v76, __p, v47, 0xFFFFFFFFFFFFFFFFLL, v67);
                if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v68 = &v76;
                }

                else
                {
                  v68 = v76.__r_.__value_.__r.__words[0];
                }

                if ((v76.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v69 = HIBYTE(v76.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v69 = v76.__r_.__value_.__l.__size_;
                }

                std::basic_string<char16_t>::append(&v78, v68, v69);
                v79 = v78;
                memset(&v78, 0, sizeof(v78));
                if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v76.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v78.__r_.__value_.__l.__data_);
                  }
                }

                if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v77.__r_.__value_.__l.__data_);
                }

                ICUStringOperations::toString(&v78, &v79);
                sirinluinternalmention_resolver::MentionResolverResponse::rewrittenUtterance(a3, &v78);
                if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v78.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v79.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v80.__r_.__value_.__l.__data_);
                }

                if ((SBYTE7(v74) & 0x80000000) == 0)
                {
                  goto LABEL_92;
                }
              }

              else
              {
                if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v80.__r_.__value_.__l.__data_);
                  v50 = BYTE7(v74);
                }

                if ((v50 & 0x80) == 0)
                {
                  goto LABEL_92;
                }
              }

              operator delete(__p[0]);
            }
          }
        }

        else
        {
          if (v39 != 8)
          {
            goto LABEL_71;
          }

LABEL_70:
          if (*v38 != 0x73746361746E6F43)
          {
            goto LABEL_71;
          }
        }
      }
    }

LABEL_92:
    MEMORY[0x223DC1950](&buf);
    if (v71 != v70)
    {
      marrs::mrr::mr::MRMatchingResult::toMatchingSpan(&buf, v70, (a2 + 72), a2 + 152);
      PB::PtrVector<sirinluinternal::MatchingSpan>::emplace_back<sirinluinternal::MatchingSpan&>();
    }
  }

  v51 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&buf);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "MR Response", 11);
    std::ios_base::getloc((&v82[-2] + *(buf - 24)));
    v52 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v52->__vftable[2].~facet_0)(v52, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "Mentions in MR Response", 23);
    std::ios_base::getloc((&v82[-2] + *(buf - 24)));
    v53 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v53->__vftable[2].~facet_0)(v53, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v54 = a3[1];
    for (i = a3[2]; v54 != i; ++v54)
    {
      marrs::mrr::MRRCPPPrintUtils::getMatchingSpanString(__p, *v54);
      if ((SBYTE7(v74) & 0x80u) == 0)
      {
        v56 = __p;
      }

      else
      {
        v56 = __p[0];
      }

      if ((SBYTE7(v74) & 0x80u) == 0)
      {
        v57 = BYTE7(v74);
      }

      else
      {
        v57 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, v56, v57);
      if (SBYTE7(v74) < 0)
      {
        operator delete(__p[0]);
      }
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, "Rewritten utterance - ", 22);
    v58 = a3[5];
    if (v58)
    {
      if (*(v58 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(__p, *v58, *(v58 + 1));
      }

      else
      {
        v59 = *v58;
        *&v74 = *(v58 + 2);
        *__p = v59;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "");
    }

    if ((SBYTE7(v74) & 0x80u) == 0)
    {
      v60 = __p;
    }

    else
    {
      v60 = __p[0];
    }

    if ((SBYTE7(v74) & 0x80u) == 0)
    {
      v61 = BYTE7(v74);
    }

    else
    {
      v61 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&buf, v60, v61);
    std::ios_base::getloc((&v82[-2] + *(buf - 24)));
    v62 = std::locale::use_facet(&v80, MEMORY[0x277D82680]);
    (v62->__vftable[2].~facet_0)(v62, 10);
    std::locale::~locale(&v80);
    std::ostream::put();
    std::ostream::flush();
    if (SBYTE7(v74) < 0)
    {
      operator delete(__p[0]);
    }

    std::stringbuf::str();
    *&buf = *MEMORY[0x277D82828];
    *(&v82[-2].__locale_ + *(buf - 24)) = *(MEMORY[0x277D82828] + 24);
    *(&buf + 1) = MEMORY[0x277D82878] + 16;
    if (v83 < 0)
    {
      operator delete(v82[7].__locale_);
    }

    *(&buf + 1) = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v82);
    std::ostream::~ostream();
    MEMORY[0x223DC2270](v84);
    v63 = __p;
    if (SBYTE7(v74) < 0)
    {
      v63 = __p[0];
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v63;
    _os_log_impl(&dword_2227A9000, v51, OS_LOG_TYPE_DEBUG, "Develop: MR Model Response - %s", &buf, 0xCu);
    if (SBYTE7(v74) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *&buf = &v70;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&buf);
  v64 = *MEMORY[0x277D85DE8];
}

void sub_222828E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, std::locale a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, char *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, std::locale a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, char a57)
{
  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a55 < 0)
  {
    operator delete(a50.__locale_);
  }

  if (a20 < 0)
  {
    operator delete(a15.__locale_);
  }

  MEMORY[0x223DC1950](&a57);
  a43 = &a12;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&a43);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::vector<marrs::mrr::mr::MRMatchingResult>>::__emplace_back_slow_path<std::vector<marrs::mrr::mr::MRMatchingResult>&>(const void **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 24 * v2;
  v13 = 0;
  v14 = v6;
  v15 = 24 * v2;
  v16 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  *v6 = 0;
  std::vector<marrs::mrr::mr::MRMatchingResult>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRMatchingResult*,marrs::mrr::mr::MRMatchingResult*>(24 * v2, *a2, a2[1], 0x82FA0BE82FA0BE83 * ((a2[1] - *a2) >> 3));
  v7 = v15 + 24;
  v8 = a1[1] - *a1;
  v9 = &v14[-v8];
  memcpy(&v14[-v8], *a1, v8);
  v10 = *a1;
  *a1 = v9;
  a1[1] = v7;
  v11 = a1[2];
  a1[2] = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  std::__split_buffer<std::vector<marrs::mrr::mr::MRMatchingResult>>::~__split_buffer(&v13);
  return v7;
}

void sub_2228290F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<marrs::mrr::mr::MRMatchingResult>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<marrs::mrr::mr::MRMatchingResult>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<marrs::mrr::mr::MRMatchingResult,marrs::mrr::mr::MRMatchingResult::MentionAndEntityIDHash,marrs::mrr::mr::MRMatchingResult::MentionAndEntityIDComparator,std::allocator<marrs::mrr::mr::MRMatchingResult>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 42);
      if (v4)
      {
        *(v2 + 43) = v4;
        operator delete(v4);
      }

      if (v2[328] == 1)
      {
        marrs::mrr::mr::MRREntity::~MRREntity(v2 + 14);
      }

      MEMORY[0x223DC1950](v2 + 16);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,marrs::mrr::mr::MRMatchingResult const&,0>(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x223DC1930]();
  *(v4 + 88) = *(a2 + 88);
  std::__optional_copy_base<marrs::mrr::mr::MRREntity,false>::__optional_copy_base[abi:ne200100]((v4 + 96), (a2 + 96));
  a1[40] = 0;
  a1[41] = 0;
  a1[42] = 0;
  return std::vector<marrs::mrr::mr::MRResultType>::__init_with_size[abi:ne200100]<marrs::mrr::mr::MRResultType*,marrs::mrr::mr::MRResultType*>((a1 + 40), *(a2 + 320), *(a2 + 328), (*(a2 + 328) - *(a2 + 320)) >> 2);
}

void sub_222829274(_Unwind_Exception *a1)
{
  if (*(v1 + 312) == 1)
  {
    marrs::mrr::mr::MRREntity::~MRREntity((v1 + 96));
  }

  MEMORY[0x223DC1950](v1);
  _Unwind_Resume(a1);
}

unint64_t marrs::mrr::mr::MRMatchingResult::MentionAndEntityIDHash::operator()(uint64_t a1)
{
  if (*(a1 + 312) == 1)
  {
    v1 = (a1 + 152);
    if (*(a1 + 175) >= 0)
    {
      v2 = *(a1 + 175);
    }

    else
    {
      v1 = *(a1 + 152);
      v2 = *(a1 + 160);
    }

    if (v2)
    {
      v3 = 0;
      do
      {
        v4 = *v1++;
        v3 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3);
        --v2;
      }

      while (v2);
      v5 = 0xC6A4A7935BD1E995 * v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 96)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 96)) >> 47))) ^ (0x35A98F4D286A90B9 * (v5 ^ (v5 >> 47)) + 3864292196u));
  }

  else
  {
    v6 = 0x8FCD151130102815;
  }

  return 3864292196u - 0x395B586CA42E166BLL * ((3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 76)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 76)) >> 47))) ^ v6)) ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * *(a1 + 72)) ^ ((0xC6A4A7935BD1E995 * *(a1 + 72)) >> 47))));
}

BOOL marrs::mrr::mr::MRMatchingResult::MentionAndEntityIDComparator::operator()(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 76) != *(a2 + 76) || *(a1 + 72) != *(a2 + 72) || *(a1 + 312) != 1 || *(a2 + 312) != 1)
  {
    return 0;
  }

  v2 = *(a1 + 175);
  if (v2 >= 0)
  {
    v3 = *(a1 + 175);
  }

  else
  {
    v3 = *(a1 + 160);
  }

  v4 = *(a2 + 175);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 160);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 152);
  v6 = (a1 + 152);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 152);
  v9 = (a2 + 152);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<marrs::mrr::mr::MRMatchingResult,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 336);
    if (v3)
    {
      *(a2 + 344) = v3;
      operator delete(v3);
    }

    if (*(a2 + 328) == 1)
    {
      marrs::mrr::mr::MRREntity::~MRREntity((a2 + 112));
    }

    MEMORY[0x223DC1950](a2 + 16);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__split_buffer<std::vector<marrs::mrr::mr::MRMatchingResult>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v6 = v4;
    std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,std::__unordered_map_hasher<sirinluinternal::MatchingSpan,std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,std::hash<sirinluinternal::MatchingSpan>,std::equal_to<sirinluinternal::MatchingSpan>,true>,std::__unordered_map_equal<sirinluinternal::MatchingSpan,std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,std::equal_to<sirinluinternal::MatchingSpan>,std::hash<sirinluinternal::MatchingSpan>,true>,std::allocator<std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>>>::__emplace_unique_key_args<sirinluinternal::MatchingSpan,std::piecewise_construct_t const&,std::tuple<sirinluinternal::MatchingSpan const&>,std::tuple<>>(void *a1, sirinluinternal::MatchingSpan *this)
{
  v3 = sirinluinternal::MatchingSpan::hash_value(this);
  v4 = v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v3;
    if (v3 >= *&v5)
    {
      v8 = v3 % *&v5;
    }
  }

  else
  {
    v8 = (*&v5 - 1) & v3;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v4)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if ((sirinluinternal::MatchingSpan::operator==() & 1) == 0)
  {
    goto LABEL_17;
  }

  return v10;
}

uint64_t std::__hash_table<std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,std::__unordered_map_hasher<sirinluinternal::MatchingSpan,std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,std::hash<sirinluinternal::MatchingSpan>,std::equal_to<sirinluinternal::MatchingSpan>,true>,std::__unordered_map_equal<sirinluinternal::MatchingSpan,std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,std::equal_to<sirinluinternal::MatchingSpan>,std::hash<sirinluinternal::MatchingSpan>,true>,std::allocator<std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v6 = (v2 + 128);
      std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v2 + 104);
      std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&v6);
      MEMORY[0x223DC1950](v2 + 16);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::vector<marrs::mrr::mr::MRMatchingResult>::__insert_with_size[abi:ne200100]<std::__wrap_iter<marrs::mrr::mr::MRMatchingResult const*>,std::__wrap_iter<marrs::mrr::mr::MRMatchingResult const*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0x82FA0BE82FA0BE83 * ((v9 - v10) >> 3)) < a5)
  {
    v11 = *a1;
    v12 = a5 - 0x7D05F417D05F417DLL * ((v10 - *a1) >> 3);
    if (v12 > 0xBE82FA0BE82FA0)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v13 = 0x82FA0BE82FA0BE83 * ((v9 - v11) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x5F417D05F417D0)
    {
      v14 = 0xBE82FA0BE82FA0;
    }

    else
    {
      v14 = v12;
    }

    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::MRMatchingResult>>(v14);
    }

    v23 = (8 * ((a2 - v11) >> 3));
    v26[0] = 0;
    v26[1] = v23;
    v27 = v23;
    v28 = 0;
    v24 = 344 * a5;
    v25 = &v23[43 * a5];
    do
    {
      std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,marrs::mrr::mr::MRMatchingResult const&,0>(v23, v6);
      v23 += 43;
      v6 += 344;
      v24 -= 344;
    }

    while (v24);
    v27 = v25;
    std::vector<marrs::mrr::mr::MRMatchingResult>::__swap_out_circular_buffer(a1, v26, a2);
    std::__split_buffer<marrs::mrr::mr::MRMatchingResult>::~__split_buffer(v26);
    return;
  }

  v15 = v10 - a2;
  if ((0x82FA0BE82FA0BE83 * ((v10 - a2) >> 3)) >= a5)
  {
    v22 = 344 * a5;
    std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(a1, a2, a1[1], a2 + 344 * a5);
    v21 = v22 + v6;
    v20 = v6;
    goto LABEL_19;
  }

  v17 = v15 + a3;
  v18 = a1[1];
  if (v15 + a3 != a4)
  {
    v19 = 0;
    do
    {
      std::allocator_traits<std::allocator<marrs::mrr::mr::MRMatchingResult>>::construct[abi:ne200100]<marrs::mrr::mr::MRMatchingResult,marrs::mrr::mr::MRMatchingResult const&,0>((v10 + v19), v17 + v19);
      v19 += 344;
    }

    while (v17 + v19 != a4);
    v18 = v10 + v19;
  }

  a1[1] = v18;
  if (v15 >= 1)
  {
    std::vector<marrs::mrr::mr::MRMatchingResult>::__move_range(a1, a2, v10, a2 + 344 * a5);
    v20 = v6;
    v21 = v15 + v6;
LABEL_19:

    std::__copy_impl::operator()[abi:ne200100]<marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *,marrs::mrr::mr::MRMatchingResult *>(v20, v21, a2);
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<sirinluinternal::MatchingSpan,std::pair<std::vector<marrs::mrr::mr::MRMatchingResult>,std::vector<marrs::mrr::mr::MRMatchingResult>>>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 16;
    std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = __p + 13;
    std::vector<marrs::mrr::mr::MRMatchingResult>::__destroy_vector::operator()[abi:ne200100](&v3);
    MEMORY[0x223DC1950](__p + 2);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::basic_string(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *__str, std::basic_string<char16_t>::size_type __pos, std::basic_string<char16_t>::size_type __n, std::allocator<char16_t> *__a)
{
  v5 = __str;
  size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
    if (size < __pos)
    {
      goto LABEL_19;
    }

    v5 = __str->__r_.__value_.__r.__words[0];
  }

  else if (size < __pos)
  {
LABEL_19:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v8 = size - __pos;
  if (v8 >= __n)
  {
    v9 = __n;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 >= 0xB)
  {
    if ((v9 | 3) == 0xB)
    {
      v11 = 13;
    }

    else
    {
      v11 = (v9 | 3) + 1;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v11);
  }

  *(&this->__r_.__value_.__s + 23) = v9;
  if (v9)
  {
    memmove(this, v5 + 2 * __pos, 2 * v9);
  }

  this->__r_.__value_.__s.__data_[v9] = 0;
  return this;
}

__n128 sirinluinternalmention_resolver::MentionResolverResponse::rewrittenUtterance(uint64_t a1, __n128 *a2)
{
  v3 = *(a1 + 40);
  if (!v3)
  {
    operator new();
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  result = *a2;
  *(v3 + 16) = a2[1].n128_u64[0];
  *v3 = result;
  a2[1].n128_u8[7] = 0;
  a2->n128_u8[0] = 0;
  return result;
}

uint64_t marrs::mrr::mr::MRREntity::getDebugDescription(marrs::mrr::mr::MRREntity *this, int *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v66);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "MRREntity:\n", 11);
  v3 = qword_280AC2C58;
  if (!qword_280AC2C58)
  {
    goto LABEL_8;
  }

  v4 = *a2;
  v5 = &qword_280AC2C58;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v5 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v5 != &qword_280AC2C58 && v4 >= *(v5 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  entityType - ", 15);
    v55 = v5[5];
    v56 = strlen(v55);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v55, v56);
    v6 = "\n";
    v7 = 1;
  }

  else
  {
LABEL_8:
    v6 = "  entityType - Unknown key in EntityTypeStr \n";
    v7 = 45;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  entityValue - ", 16);
  v8 = *(a2 + 31);
  if (v8 >= 0)
  {
    v9 = (a2 + 2);
  }

  else
  {
    v9 = *(a2 + 1);
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 31);
  }

  else
  {
    v10 = *(a2 + 2);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  entityId - ", 13);
  v11 = *(a2 + 79);
  if (v11 >= 0)
  {
    v12 = (a2 + 14);
  }

  else
  {
    v12 = *(a2 + 7);
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 79);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v12, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  appBundleId - ", 16);
  v14 = *(a2 + 55);
  if (v14 >= 0)
  {
    v15 = (a2 + 8);
  }

  else
  {
    v15 = *(a2 + 4);
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 55);
  }

  else
  {
    v16 = *(a2 + 5);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  ", 2);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v71);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "BoundingBox: [x:", 16);
  v17 = a2[20];
  v18 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", y:", 4);
  v19 = a2[21];
  v20 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", width:", 8);
  v21 = a2[22];
  v22 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", height:", 9);
  v23 = a2[23];
  v24 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "]", 1);
  std::stringbuf::str();
  v71.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82828];
  v61 = v71.__r_.__value_.__r.__words[0];
  v60 = *(MEMORY[0x277D82828] + 24);
  *(v71.__r_.__value_.__r.__words + *(v71.__r_.__value_.__r.__words[0] - 24)) = v60;
  v71.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
  if (v73 < 0)
  {
    operator delete(__p);
  }

  v71.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v71.__r_.__value_.__r.__words[2]);
  std::ostream::~ostream();
  MEMORY[0x223DC2270](v74);
  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v64;
  }

  else
  {
    v25 = v64.__r_.__value_.__r.__words[0];
  }

  if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v64.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v64.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v25, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  saliencyScore - ", 18);
  v27 = MEMORY[0x223DC2110](&v66, *(a2 + 12));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  Index from entities in request - ", 35);
  v28 = MEMORY[0x223DC2130](&v66, a2[26]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "\n", 1);
  v29 = qword_280AC2B08;
  if (!qword_280AC2B08)
  {
    goto LABEL_44;
  }

  v30 = a2[1];
  v31 = &qword_280AC2B08;
  do
  {
    if (*(v29 + 32) >= v30)
    {
      v31 = v29;
    }

    v29 = *(v29 + 8 * (*(v29 + 32) < v30));
  }

  while (v29);
  if (v31 != &qword_280AC2B08 && v30 >= *(v31 + 8))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  Source of entity - ", 21);
    v57 = v31[5];
    v58 = strlen(v57);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v57, v58);
    v32 = "\n";
    v33 = 1;
  }

  else
  {
LABEL_44:
    v32 = "  Source of entity - Unknown key in EntitySourceStrMap \n";
    v33 = 56;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v32, v33);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  Surroundingtexts to the entity - ", 35);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  v59 = a2;
  v34 = *(a2 + 14);
  for (i = *(a2 + 15); v34 != i; v34 = (v34 + 40))
  {
    if (*(v34 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v64, *v34, *(v34 + 1));
    }

    else
    {
      v36 = *v34;
      v64.__r_.__value_.__r.__words[2] = *(v34 + 2);
      *&v64.__r_.__value_.__l.__data_ = v36;
    }

    v65 = *(v34 + 24);
    std::ostringstream::basic_ostringstream[abi:ne200100](&v71);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "SurroundingText: [text: ", 24);
    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v37 = &v64;
    }

    else
    {
      v37 = v64.__r_.__value_.__r.__words[0];
    }

    if ((v64.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v38 = v64.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, v37, v38);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v71, "; BoundingBox: [x:", 18);
    v39 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, ", y:", 4);
    v40 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", width:", 8);
    v41 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", height:", 9);
    v42 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "] ]", 3);
    std::stringbuf::str();
    v71.__r_.__value_.__r.__words[0] = v61;
    *(v71.__r_.__value_.__r.__words + *(v61 - 24)) = v60;
    v71.__r_.__value_.__l.__size_ = MEMORY[0x277D82878] + 16;
    if (v73 < 0)
    {
      operator delete(__p);
    }

    v71.__r_.__value_.__l.__size_ = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v71.__r_.__value_.__r.__words[2]);
    std::ostream::~ostream();
    MEMORY[0x223DC2270](v74);
    if ((v63 & 0x80u) == 0)
    {
      v43 = v62;
    }

    else
    {
      v43 = v62[0];
    }

    if ((v63 & 0x80u) == 0)
    {
      v44 = v63;
    }

    else
    {
      v44 = v62[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v43, v44);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
    if (v63 < 0)
    {
      operator delete(v62[0]);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "  Protocols to the entity - ", 28);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  v45 = *(v59 + 24);
  for (j = *(v59 + 25); v45 != j; v45 = (v45 + 24))
  {
    if (*(v45 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v71, *v45, *(v45 + 1));
    }

    else
    {
      v47 = *v45;
      v71.__r_.__value_.__r.__words[2] = *(v45 + 2);
      *&v71.__r_.__value_.__l.__data_ = v47;
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v48 = &v71;
    }

    else
    {
      v48 = v71.__r_.__value_.__r.__words[0];
    }

    if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v49 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v49 = v71.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v48, v49);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v71.__r_.__value_.__l.__data_);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "groupId - ", 10);
  v50 = *(v59 + 159);
  if (v50 >= 0)
  {
    v51 = (v59 + 34);
  }

  else
  {
    v51 = *(v59 + 17);
  }

  if (v50 >= 0)
  {
    v52 = *(v59 + 159);
  }

  else
  {
    v52 = *(v59 + 18);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v51, v52);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "seqNum - ", 9);
  v53 = MEMORY[0x223DC2130](&v66, v59[40]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "\n", 1);
  std::stringbuf::str();
  v66 = v61;
  *(&v66 + *(v61 - 24)) = v60;
  v67 = MEMORY[0x277D82878] + 16;
  if (v69 < 0)
  {
    operator delete(v68[7].__locale_);
  }

  v67 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v68);
  std::ostream::~ostream();
  return MEMORY[0x223DC2270](&v70);
}

void sub_22282A75C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<sirinluinternal::MatchingSpan,std::hash<sirinluinternal::MatchingSpan>,std::equal_to<sirinluinternal::MatchingSpan>,std::allocator<sirinluinternal::MatchingSpan>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      (*v2[2])();
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__hash_node<sirinluinternal::MatchingSpan,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<sirinluinternal::MatchingSpan,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      (*v2[2])();
    }

    operator delete(v2);
  }

  return a1;
}

xpc_object_t ___ZNK5marrs3mrr2mr14MROrchestrator15doCoreAnalyticsENS1_12MRResultTypeE_block_invoke(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2)
  {
    v3 = *(a1 + 32);
    if (v3 > 3)
    {
      v4 = "NO_MR_TRIGGERED";
    }

    else
    {
      v4 = off_2784B51D0[v3];
    }

    std::string::basic_string[abi:ne200100]<0>(__p, v4);
    if (v8 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    xpc_dictionary_set_string(v2, "MrResolverType", v5);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

void sub_22282A97C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<marrs::mrr::mr::EntityType,double>,std::__map_value_compare<marrs::mrr::mr::EntityType,std::__value_type<marrs::mrr::mr::EntityType,double>,std::less<marrs::mrr::mr::EntityType>,true>,std::allocator<std::__value_type<marrs::mrr::mr::EntityType,double>>>::__emplace_unique_key_args<marrs::mrr::mr::EntityType,std::piecewise_construct_t const&,std::tuple<marrs::mrr::mr::EntityType const&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::vector<marrs::mrr::mr::MRREntity>::push_back[abi:ne200100](uint64_t a1, const marrs::mrr::mr::MRREntity *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<marrs::mrr::mr::MRREntity>::__emplace_back_slow_path<marrs::mrr::mr::MRREntity const&>(a1, a2);
  }

  else
  {
    marrs::mrr::mr::MRREntity::MRREntity(*(a1 + 8), a2);
    result = v3 + 216;
    *(a1 + 8) = v3 + 216;
  }

  *(a1 + 8) = result;
  return result;
}

void *std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a2, v2 + 4))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v4 + 4, a2))
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_22282AC18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,sirinluexternal::EntityCandidate>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,sirinluexternal::EntityCandidate>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::insert_iterator<std::set<std::string>>::operator=[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a1 + 8;
  if (v6 == v5 || std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a2, v5 + 4))
  {
    v7 = *v5;
    v8 = v5;
    if (*v4 == v5)
    {
      goto LABEL_16;
    }

    if (v7)
    {
      v9 = *v5;
      do
      {
        v8 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = v5;
      do
      {
        v8 = v13[2];
        v14 = *v8 == v13;
        v13 = v8;
      }

      while (v14);
    }

    if (std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v8 + 4, a2))
    {
LABEL_16:
      if (!v7)
      {
        v19 = v5;
        goto LABEL_30;
      }

      v19 = v8;
      v12 = v8 + 1;
LABEL_29:
      v5 = *v12;
      if (!*v12)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v5 + 4, a2))
  {
    v10 = v5[1];
    if (v10)
    {
      v11 = v5[1];
      do
      {
        v12 = v11;
        v11 = *v11;
      }

      while (v11);
    }

    else
    {
      v15 = v5;
      do
      {
        v12 = v15[2];
        v14 = *v12 == v15;
        v15 = v12;
      }

      while (!v14);
    }

    if (v12 == v6 || std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a2, v12 + 4))
    {
      if (v10)
      {
        v19 = v12;
      }

      else
      {
        v19 = v5;
        v12 = v5 + 1;
      }

      goto LABEL_29;
    }

LABEL_28:
    v12 = std::__tree<std::__value_type<std::string,std::vector<MDMentionOverride>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<MDMentionOverride>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<MDMentionOverride>>>>::__find_equal<std::string>(v4, &v19, a2);
    goto LABEL_29;
  }

  v19 = v5;
  if (!v5)
  {
LABEL_30:
    operator new();
  }

LABEL_31:
  *(a1 + 8) = v5;
  v16 = v5[1];
  if (v16)
  {
    do
    {
      v17 = v16;
      v16 = *v16;
    }

    while (v16);
  }

  else
  {
    do
    {
      v17 = v5[2];
      v14 = *v17 == v5;
      v5 = v17;
    }

    while (!v14);
  }

  *(a1 + 8) = v17;
  return a1;
}

uint64_t std::pair<std::string const,sirinluinternal::MatchingSpan>::~pair(uint64_t a1)
{
  MEMORY[0x223DC1950](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::pair<std::string const,sirinluexternal::EntityCandidate>::~pair(uint64_t a1)
{
  MEMORY[0x223DC1850](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluexternal::EntityCandidate>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluexternal::EntityCandidate>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,sirinluexternal::EntityCandidate>,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,sirinluinternal::MatchingSpan>,0>((a1 + 4));

    operator delete(a1);
  }
}

void *std::__tree<std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::__map_value_compare<std::string,std::__value_type<std::string,sirinluinternal::MatchingSpan>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,sirinluinternal::MatchingSpan>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v2;
      if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(a2, v2 + 4))
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (!std::less<void>::operator()[abi:ne200100]<std::string const&,std::string const&>(v4 + 4, a2))
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_22282B0B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,sirinluinternal::MatchingSpan>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,sirinluinternal::MatchingSpan>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,sirinluinternal::MatchingSpan>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,sirinluinternal::MatchingSpan>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,sirinluinternal::MatchingSpan>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,sirinluinternal::MatchingSpan>,0>(uint64_t a1)
{
  MEMORY[0x223DC1950](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,sirinluexternal::EntityCandidate>,0>(uint64_t a1)
{
  MEMORY[0x223DC1850](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,sirinluexternal::EntityCandidate>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,sirinluexternal::EntityCandidate>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,sirinluexternal::EntityCandidate>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_22282B880(_Unwind_Exception *a1)
{
  *(v5 - 72) = v4;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100]((v5 - 72));

  _Unwind_Resume(a1);
}

void sub_22282BA9C(_Unwind_Exception *a1)
{
  *(v3 - 64) = v2;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100]((v3 - 64));

  _Unwind_Resume(a1);
}

void sub_22282C6D4(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

void sub_22282D348(_Unwind_Exception *a1)
{
  v7 = v5;

  _Unwind_Resume(a1);
}

uint64_t __MRRLoggerForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.siri.marrs.mrr", "General");
  v1 = MRRLoggerForCategory::logObjects[0];
  MRRLoggerForCategory::logObjects[0] = v0;

  v2 = os_log_create("com.apple.siri.marrs.mrr", "MD");
  v3 = qword_27D01B898;
  qword_27D01B898 = v2;

  v4 = os_log_create("com.apple.siri.marrs.mrr", "MR");
  v5 = qword_27D01B8A0;
  qword_27D01B8A0 = v4;

  qword_27D01B8A8 = os_log_create("com.apple.siri.marrs.mrr", "SIGNPOSTS");

  return MEMORY[0x2821F96F8]();
}

void marrs::mrr::mr::getUsoGraphProtoReader(marrs::mrr::mr *this)
{
  {
    if (v1)
    {
      SharedUsoVocabManager = siri::ontology::getSharedUsoVocabManager(v1);
      v4 = *SharedUsoVocabManager;
      v3 = SharedUsoVocabManager[1];
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        marrs::mrr::mr::getUsoGraphProtoReader(void)::inst = v4;
        *algn_27D01B868 = v3;
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v3);
      }

      else
      {
        marrs::mrr::mr::getUsoGraphProtoReader(void)::inst = v4;
        *algn_27D01B868 = 0;
      }

      __cxa_atexit(siri::ontology::UsoGraphProtoReader::~UsoGraphProtoReader, &marrs::mrr::mr::getUsoGraphProtoReader(void)::inst, &dword_2227A9000);
    }
  }
}

void siri::ontology::UsoGraphProtoReader::~UsoGraphProtoReader(siri::ontology::UsoGraphProtoReader *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

__n128 marrs::mrr::mr::getRectangleFromRRBoundingBox(uint64_t a1)
{
  v1 = vcvt_f32_f64(*(a1 + 8));
  v2 = vcvt_f32_f64(*(a1 + 24));
  v3 = vceqz_f32(v2);
  result.n128_u64[0] = v2;
  result.n128_u64[1] = __PAIR64__(v1.u32[0], v1.u32[1]);
  if (vand_s8(v3, vdup_lane_s32(v3, 1)).u8[0])
  {
    v5 = vceqz_f32(v1);
    if (vand_s8(vdup_lane_s32(v5, 1), v5).u8[0])
    {
      v6 = MRRLoggerForCategory(2);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      result = xmmword_222832510;
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_ERROR, "Received a bounding box with all zeroes, setting it to default values of 0.1, 0.1, 1, 1", buf, 2u);
        return xmmword_222832510;
      }
    }
  }

  return result;
}

uint64_t std::__split_buffer<marrs::mrr::mr::SurroundingText>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 5;
      *(a1 + 16) = v2 - 5;
      if (*(v2 - 17) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x223DC1D80]();
    MEMORY[0x223DC2360](v3, 0x10A0C403D23BABBLL);
  }

  return a1;
}

uint64_t marrs::mrr::mr::mapMediaNodeToMRREntityType(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = siri::ontology::oname::graph::ontology_init::Argument_playbackState(a1);
  USONodeIndex = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a2, *(a2 + 8), *(v4 + 36));
  if (USONodeIndex)
  {
    v6 = *(USONodeIndex + 5);
    v7 = siri::ontology::oname::graph::ontology_init::Argument_definedValue(USONodeIndex);
    USONodeIndex = marrs::mrr::mr::findUSONodeIndex(*(a1 + 32), *(a1 + 40), v6, *(v7 + 36));
    if (USONodeIndex != -1)
    {
      v8 = *(a1 + 80);
      if (USONodeIndex >= ((*(a1 + 88) - v8) >> 3))
      {
        goto LABEL_26;
      }

      v9 = *(v8 + 8 * USONodeIndex);
      USONodeIndex = siri::ontology::oname::graph::ontology_init::common_PlaybackState_Paused(USONodeIndex);
      if (*(USONodeIndex + 9) == *(v9 + 72))
      {
        v10 = MRRLoggerForCategory(2);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          LOWORD(v27[0]) = 0;
          v11 = "Media entity is paused skipping";
          v12 = v10;
          v13 = OS_LOG_TYPE_INFO;
LABEL_14:
          v23 = 2;
LABEL_15:
          _os_log_impl(&dword_2227A9000, v12, v13, v11, v27, v23);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }
  }

  v14 = siri::ontology::oname::graph::ontology_init::Argument_mediaItemType(USONodeIndex);
  v15 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a2, *(a2 + 8), *(v14 + 36));
  if (!v15 || (v16 = *(v15 + 5), v17 = siri::ontology::oname::graph::ontology_init::Argument_definedValue(v15), v18 = marrs::mrr::mr::findUSONodeIndex(*(a1 + 32), *(a1 + 40), v16, *(v17 + 36)), v18 == -1))
  {
    v10 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      v11 = "unable to parse media entity";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      goto LABEL_14;
    }

LABEL_16:

    result = 30;
    goto LABEL_17;
  }

  v19 = *(a1 + 80);
  if (v18 >= ((*(a1 + 88) - v19) >> 3))
  {
LABEL_26:
    std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
  }

  v20 = *(*(v19 + 8 * v18) + 72);
  v21 = siri::ontology::oname::graph::ontology_init::common_MediaItemType_Song(v18);
  if (*(v21 + 9) != v20)
  {
    v25 = siri::ontology::oname::graph::ontology_init::common_MediaItemType_Artist(v21);
    if (*(v25 + 9) == v20)
    {
      result = 7;
      goto LABEL_17;
    }

    v26 = siri::ontology::oname::graph::ontology_init::common_MediaItemType_Album(v25);
    if (*(v26 + 9) == v20)
    {
      result = 9;
      goto LABEL_17;
    }

    if (*(siri::ontology::oname::graph::ontology_init::common_MediaItemType_Video(v26) + 36) == v20)
    {
      result = 10;
      goto LABEL_17;
    }

    v10 = MRRLoggerForCategory(2);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    v27[0] = 67109120;
    v27[1] = v20;
    v11 = "%d mediaItemTypeNodeId not supported";
    v12 = v10;
    v13 = OS_LOG_TYPE_DEBUG;
    v23 = 8;
    goto LABEL_15;
  }

  result = 8;
LABEL_17:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(uint64_t a1, unint64_t a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a3)
    {
      if (*(result + 4) == a3)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= a2)
        {
          v7 %= a2;
        }
      }

      else
      {
        v7 &= a2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t marrs::mrr::mr::findUSONodeIndex(uint64_t *a1, uint64_t *a2, int a3, int a4)
{
  memset(v8, 0, sizeof(v8));
  v9 = 1065353216;
  if (a2 == a1)
  {
LABEL_8:
    v6 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = a2 - a1;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (1)
    {
      v5 = *a1;
      if (*(*(*a1 + 8) + 20) == a4 && (a3 == -1 || *(v5 + 16) == a3))
      {
        break;
      }

      ++a1;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    v6 = *(v5 + 20);
  }

  std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v8);
  return v6;
}

uint64_t marrs::mrr::mr::mapUserEntityHomeToMRREntityType(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2)
{
  v4 = siri::ontology::oname::graph::ontology_init::Argument_names(a1);
  v5 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a2, *(a2 + 8), *(v4 + 36));
  if (!v5)
  {
    v33 = MRRLoggerForCategory(2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_2227A9000, v33, OS_LOG_TYPE_DEBUG, "HomeAutomation entity parsing could not find names node descendant. Returning undefined MRR EntityType", buf, 2u);
    }

    return 30;
  }

  v6 = *(a1 + 7);
  v7 = *(a1 + 8);
  if (v6 == v7)
  {
    return 30;
  }

  v8 = *(v5 + 5);
  if (byte_280AC2CAF >= 0)
  {
    v9 = byte_280AC2CAF;
  }

  else
  {
    v9 = unk_280AC2CA0;
  }

  if (byte_280AC2CAF >= 0)
  {
    v10 = &marrs::mrr::mr::homeKitEntityTypeString;
  }

  else
  {
    v10 = marrs::mrr::mr::homeKitEntityTypeString;
  }

  v11 = &marrs::mrr::mr::homeAutomationAccessoryNameString;
  v12 = byte_280AC2B2F;
  if (byte_280AC2B2F < 0)
  {
    v12 = unk_280AC2B20;
    v11 = marrs::mrr::mr::homeAutomationAccessoryNameString;
  }

  __s2 = v11;
  __n = v12;
  v13 = &marrs::mrr::mr::homeAutomationServiceNameString;
  if (byte_280AC2B47 >= 0)
  {
    v14 = byte_280AC2B47;
  }

  else
  {
    v14 = unk_280AC2B38;
  }

  if (byte_280AC2B47 < 0)
  {
    v13 = marrs::mrr::mr::homeAutomationServiceNameString;
  }

  v35 = v13;
  v15 = &marrs::mrr::mr::homeAutomationRoomString;
  if (byte_280AC2C7F >= 0)
  {
    v16 = byte_280AC2C7F;
  }

  else
  {
    v16 = unk_280AC2C70;
  }

  if (byte_280AC2C7F < 0)
  {
    v15 = marrs::mrr::mr::homeAutomationRoomString;
  }

  v34 = v15;
  while (1)
  {
    v17 = *v6;
    if (*(*v6 + 48) != v8)
    {
      goto LABEL_32;
    }

    v18 = *(v17 + 16);
    if (!v18)
    {
      goto LABEL_32;
    }

    v19 = *(v18 + 8);
    if (!v19)
    {
      goto LABEL_32;
    }

    v20 = *(v19 + 23);
    v21 = v20;
    if ((v20 & 0x80u) != 0)
    {
      v20 = *(v19 + 8);
    }

    if (v20 != v9)
    {
      goto LABEL_32;
    }

    v22 = v21 >= 0 ? v19 : *v19;
    if (memcmp(v22, v10, v9))
    {
      goto LABEL_32;
    }

    v23 = *(v17 + 32);
    if (!v23)
    {
      goto LABEL_32;
    }

    v24 = *(v23 + 23);
    v25 = v24 >= 0 ? *(v23 + 23) : v23[1];
    if (v25 == __n)
    {
      v26 = *v23;
      v27 = v24 >= 0 ? v23 : *v23;
      if (!memcmp(v27, __s2, __n))
      {
        return 20;
      }
    }

    if (v25 == v14)
    {
      v28 = *v23;
      v29 = v24 >= 0 ? v23 : *v23;
      if (!memcmp(v29, v35, v14))
      {
        return 20;
      }
    }

    if (v25 == v16)
    {
      v30 = *v23;
      v31 = v24 >= 0 ? v23 : *v23;
      if (!memcmp(v31, v34, v16))
      {
        return 21;
      }
    }

LABEL_32:
    if (++v6 == v7)
    {
      return 30;
    }
  }
}

uint64_t marrs::mrr::mr::mapCommonPersonToEligibleType(unint64_t *a1)
{
  v2 = siri::ontology::oname::graph::ontology_init::Argument_specifyingContactAddress(a1);
  if (std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a1, a1[1], *(v2 + 36)))
  {
    return 30;
  }

  else
  {
    return 14;
  }
}

std::string *marrs::mrr::mr::getStringNodeValueNluGraph(std::string *this, const sirinluexternal::UsoGraph *a2, int a3, int a4, int a5)
{
  result = std::string::basic_string[abi:ne200100]<0>(this, "");
  if (a3 != -1 || (result = marrs::mrr::mr::findUSONodeIndex(*(a2 + 4), *(a2 + 5), a4, a5), a3 = result, result != -1))
  {
    v11 = *(a2 + 10);
    if (a3 >= ((*(a2 + 11) - v11) >> 3))
    {
      std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
    }

    v12 = *(v11 + 8 * a3);
    v13 = *(v12 + 72);
    result = siri::ontology::oname::graph::ontology_init::primitive_String(result);
    if (v13 == HIDWORD(result[1].__r_.__value_.__r.__words[1]))
    {
      v14 = *(v12 + 48);
      if (v14)
      {
        v15 = *(v14 + 8);
        if (v15)
        {
          return std::string::operator=(this, v15);
        }
      }
    }
  }

  return result;
}

void sub_22282DDA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marrs::mrr::mr::mapSearchObjectNodeToMRREntityType(siri::ontology::oname::graph::ontology_init *a1, uint64_t a2)
{
  v4 = siri::ontology::oname::graph::ontology_init::Argument_type(a1);
  v5 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a2, *(a2 + 8), *(v4 + 36));
  if (!v5)
  {
    return 25;
  }

  v6 = *(v5 + 5);
  v7 = siri::ontology::oname::graph::ontology_init::Argument_name(v5);
  marrs::mrr::mr::getStringNodeValueNluGraph(&__p, a1, -1, v6, *(v7 + 36));
  v8 = qword_280AC2AD8;
  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (qword_280AC2AD8)
  {
    v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    v11 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    v12 = &qword_280AC2AD8;
    do
    {
      v13 = *(v8 + 55);
      if (v13 >= 0)
      {
        v14 = *(v8 + 55);
      }

      else
      {
        v14 = *(v8 + 40);
      }

      if (v13 >= 0)
      {
        v15 = (v8 + 32);
      }

      else
      {
        v15 = *(v8 + 32);
      }

      if (v10 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      v17 = memcmp(v15, v11, v16);
      v18 = v14 < v10;
      if (v17)
      {
        v18 = v17 < 0;
      }

      v19 = !v18;
      if (v18)
      {
        v20 = 8;
      }

      else
      {
        v20 = 0;
      }

      if (v19)
      {
        v12 = v8;
      }

      v8 = *(v8 + v20);
    }

    while (v8);
    if (v12 != &qword_280AC2AD8)
    {
      v21 = *(v12 + 55);
      v22 = v21 >= 0 ? *(v12 + 55) : v12[5];
      v23 = v21 >= 0 ? v12 + 4 : v12[4];
      v24 = v22 >= v10 ? v10 : v22;
      v25 = memcmp(v11, v23, v24);
      v26 = v10 < v22;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        v27 = *(v12 + 14);
        if ((v9 & 0x80) == 0)
        {
          return v27;
        }

        goto LABEL_42;
      }
    }
  }

  v27 = 25;
  if (v9 < 0)
  {
LABEL_42:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v27;
}

uint64_t marrs::mrr::mr::mapNodeIdToMRREntityType(siri::ontology::oname::graph::ontology_init *a1, siri::ontology::oname::graph::ontology_init *a2, unint64_t *a3)
{
  v5 = a1;
  v6 = siri::ontology::oname::graph::ontology_init::common_EmailAddress(a1);
  if (*(v6 + 9) == v5)
  {
    return 0;
  }

  v8 = siri::ontology::oname::graph::ontology_init::common_PhoneNumber(v6);
  if (*(v8 + 9) == v5)
  {
    return 1;
  }

  v9 = siri::ontology::oname::graph::ontology_init::common_PostalAddress(v8);
  if (*(v9 + 9) == v5)
  {
    return 2;
  }

  v10 = siri::ontology::oname::graph::ontology_init::common_Uri(v9);
  if (*(v10 + 9) == v5)
  {
    return 3;
  }

  v11 = siri::ontology::oname::graph::ontology_init::common_LocalisedString(v10);
  if (*(v11 + 9) == v5)
  {
    return 4;
  }

  v12 = siri::ontology::oname::graph::ontology_init::common_AppEntity(v11);
  if (*(v12 + 9) == v5)
  {
    return 5;
  }

  v13 = siri::ontology::oname::graph::ontology_init::common_Photo(v12);
  if (*(v13 + 9) == v5)
  {
    return 6;
  }

  v14 = siri::ontology::oname::graph::ontology_init::common_SearchObject(v13);
  if (*(v14 + 9) == v5)
  {

    return marrs::mrr::mr::mapSearchObjectNodeToMRREntityType(a2, a3);
  }

  else
  {
    v15 = siri::ontology::oname::graph::ontology_init::common_MediaItem(v14);
    if (*(v15 + 9) == v5)
    {

      return marrs::mrr::mr::mapMediaNodeToMRREntityType(a2, a3);
    }

    else
    {
      v16 = siri::ontology::oname::graph::ontology_init::common_UserEntity(v15);
      if (*(v16 + 9) == v5)
      {

        return marrs::mrr::mr::mapUserEntityHomeToMRREntityType(a2, a3);
      }

      else
      {
        v17 = siri::ontology::oname::graph::ontology_init::common_Setting(v16);
        if (*(v17 + 9) == v5)
        {
          return 22;
        }

        else
        {
          v18 = siri::ontology::oname::graph::ontology_init::common_Group(v17);
          if (*(v18 + 9) == v5)
          {
            return 11;
          }

          else
          {
            v19 = siri::ontology::oname::graph::ontology_init::common_LocalBusiness(v18);
            if (*(v19 + 9) == v5)
            {
              return 12;
            }

            else
            {
              v20 = siri::ontology::oname::graph::ontology_init::common_Notification(v19);
              if (*(v20 + 9) == v5)
              {
                return 13;
              }

              else
              {
                v21 = siri::ontology::oname::graph::ontology_init::common_Person(v20);
                if (*(v21 + 9) == v5)
                {

                  return marrs::mrr::mr::mapCommonPersonToEligibleType(a3);
                }

                else
                {
                  v22 = siri::ontology::oname::graph::ontology_init::common_Announcement(v21);
                  if (*(v22 + 9) == v5)
                  {
                    return 15;
                  }

                  else
                  {
                    v23 = siri::ontology::oname::graph::ontology_init::common_DateTime(v22);
                    if (*(v23 + 9) == v5)
                    {
                      return 16;
                    }

                    else
                    {
                      v24 = siri::ontology::oname::graph::ontology_init::common_Alarm(v23);
                      if (*(v24 + 9) == v5)
                      {
                        return 17;
                      }

                      else
                      {
                        v25 = siri::ontology::oname::graph::ontology_init::common_Timer(v24);
                        if (*(v25 + 9) == v5)
                        {
                          return 18;
                        }

                        else
                        {
                          v26 = siri::ontology::oname::graph::ontology_init::common_App(v25);
                          if (*(v26 + 9) == v5)
                          {
                            return 23;
                          }

                          else if (*(siri::ontology::oname::graph::ontology_init::common_Window(v26) + 36) == v5)
                          {
                            return 24;
                          }

                          else
                          {
                            return 30;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t marrs::mrr::mr::getEntityDescendants(uint64_t this, const sirinluexternal::UsoGraph *a2, int a3)
{
  *this = 0u;
  *(this + 16) = 0u;
  *(this + 32) = 1065353216;
  if (a3 == -1)
  {
    return this;
  }

  v4 = *(a2 + 4);
  v3 = *(a2 + 5);
  if (v3 == v4)
  {
    return this;
  }

  v5 = 0;
  do
  {
    v6 = *(v4 + 8 * v5);
    if (*(v6 + 16) != a3)
    {
      goto LABEL_22;
    }

    v7 = *(*(v6 + 8) + 20);
    v8 = *(this + 8);
    if (!v8)
    {
      goto LABEL_21;
    }

    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = v7;
      if (v8 <= v7)
      {
        v10 = v7 % v8;
      }
    }

    else
    {
      v10 = (v8 - 1) & v7;
    }

    v11 = *(*this + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_21:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        break;
      }

      if (v9.u32[0] > 1uLL)
      {
        if (v13 >= v8)
        {
          v13 %= v8;
        }
      }

      else
      {
        v13 &= v8 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_21;
      }

LABEL_20:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    if (*(v12 + 4) != v7)
    {
      goto LABEL_20;
    }

    *(v12 + 5) = *(v6 + 20);
LABEL_22:
    ++v5;
  }

  while (v5 < (v3 - v4) >> 3);
  return this;
}

void sub_22282E654(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void marrs::mrr::mr::getPostalAddressEntityValueNluGraph(std::string *a1, const sirinluexternal::UsoGraph *a2, uint64_t *a3)
{
  v6 = MRRLoggerForCategory(2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2227A9000, v6, OS_LOG_TYPE_INFO, "Calling postal address optimized parser", &buf, 2u);
  }

  if (!a3[3])
  {
    std::string::basic_string[abi:ne200100]<0>(a1, "");
    return;
  }

  v8 = siri::ontology::oname::graph::ontology_init::Argument_value(v7);
  v9 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, a3[1], *(v8 + 36));
  if (v9)
  {
    marrs::mrr::mr::getStringNodeValueNluGraph(a1, a2, *(v9 + 5), -1, -1);
    return;
  }

  memset(&buf, 0, sizeof(buf));
  memset(&v58, 0, sizeof(v58));
  memset(&v57, 0, sizeof(v57));
  memset(&v56, 0, sizeof(v56));
  memset(&v55, 0, sizeof(v55));
  v10 = std::string::basic_string[abi:ne200100]<0>(a1, "");
  v11 = siri::ontology::oname::graph::ontology_init::Argument_name(v10);
  v12 = *(v11 + 9);
  v13 = siri::ontology::oname::graph::ontology_init::Argument_city(v11);
  v14 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, a3[1], *(v13 + 36));
  v15 = siri::ontology::oname::graph::ontology_init::Argument_province(v14);
  v16 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, a3[1], *(v15 + 36));
  v17 = siri::ontology::oname::graph::ontology_init::Argument_street(v16);
  v18 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, a3[1], *(v17 + 36));
  v19 = siri::ontology::oname::graph::ontology_init::Argument_country(v18);
  v53 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, a3[1], *(v19 + 36));
  v20 = siri::ontology::oname::graph::ontology_init::Argument_postalCode(v53);
  v21 = std::__hash_table<std::__hash_value_type<int,int>,std::__unordered_map_hasher<int,std::__hash_value_type<int,int>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,int>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,int>>>::find<int>(*a3, a3[1], *(v20 + 36));
  if (!v18)
  {
    v22 = 0;
    goto LABEL_32;
  }

  marrs::mrr::mr::getStringNodeValueNluGraph(&__p, a2, -1, v18[5], v12);
  v56 = __p;
  v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    size = v56.__r_.__value_.__l.__size_;
    if (!v56.__r_.__value_.__l.__size_)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_32;
    }

    size = v56.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v24 = size;
  }

  std::string::basic_string[abi:ne200100](&__p, v24 + 2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v24)
  {
    if (v22 >= 0)
    {
      v26 = &v56;
    }

    else
    {
      v26 = v56.__r_.__value_.__r.__words[0];
    }

    memmove(p_p, v26, v24);
  }

  strcpy(p_p + v24, ", ");
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__p;
  }

  else
  {
    v27 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v27, v28);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_32:
  if (!v14)
  {
    v29 = 0;
    goto LABEL_57;
  }

  marrs::mrr::mr::getStringNodeValueNluGraph(&__p, a2, -1, v14[5], v12);
  buf = __p;
  v29 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v30 = buf.__r_.__value_.__l.__size_;
    if (!buf.__r_.__value_.__l.__size_)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_57;
    }

    v30 = buf.__r_.__value_.__l.__size_;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = v30;
  }

  std::string::basic_string[abi:ne200100](&__p, v31 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v32 = &__p;
  }

  else
  {
    v32 = __p.__r_.__value_.__r.__words[0];
  }

  if (v31)
  {
    if (v29 >= 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    memmove(v32, p_buf, v31);
  }

  *(&v32->__r_.__value_.__l.__data_ + v31) = 32;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = &__p;
  }

  else
  {
    v34 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v35 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v34, v35);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_57:
  if (!v16)
  {
    v36 = 0;
    goto LABEL_62;
  }

  marrs::mrr::mr::getStringNodeValueNluGraph(&__p, a2, -1, v16[5], v12);
  v57 = __p;
  v36 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v37 = v57.__r_.__value_.__l.__size_;
    if (v57.__r_.__value_.__l.__size_)
    {
      goto LABEL_64;
    }

LABEL_62:
    v38 = v53;
    goto LABEL_83;
  }

  if (!*(&__p.__r_.__value_.__s + 23))
  {
    goto LABEL_62;
  }

  v37 = v57.__r_.__value_.__l.__size_;
LABEL_64:
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v39 = v37;
  }

  std::string::basic_string[abi:ne200100](&__p, v39 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = &__p;
  }

  else
  {
    v40 = __p.__r_.__value_.__r.__words[0];
  }

  if (v39)
  {
    if (v36 >= 0)
    {
      v41 = &v57;
    }

    else
    {
      v41 = v57.__r_.__value_.__r.__words[0];
    }

    memmove(v40, v41, v39);
  }

  *(&v40->__r_.__value_.__l.__data_ + v39) = 32;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = &__p;
  }

  else
  {
    v42 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v43 = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(a1, v42, v43);
  v38 = v53;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_83:
  if (v21)
  {
    marrs::mrr::mr::getStringNodeValueNluGraph(&__p, a2, *(v21 + 5), -1, -1);
    v58 = __p;
    v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = __p.__r_.__value_.__l.__size_;
    }

    if (v45)
    {
      std::string::basic_string[abi:ne200100](&__p, v45 + 1);
      v46 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v47 = v44 >= 0 ? &v58 : v58.__r_.__value_.__r.__words[0];
      memmove(v46, v47, v45);
      *(&v46->__r_.__value_.__l.__data_ + v45) = 32;
      v48 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v49 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      std::string::append(a1, v48, v49);
      v38 = v53;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v44 = 0;
  }

  if (v38)
  {
    marrs::mrr::mr::getStringNodeValueNluGraph(&__p, a2, -1, *(v38 + 5), v12);
    v55 = __p;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v50 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
LABEL_115:
        operator delete(v55.__r_.__value_.__l.__data_);
        goto LABEL_116;
      }
    }

    else
    {
      if (!*(&__p.__r_.__value_.__s + 23))
      {
        goto LABEL_116;
      }

      v50 = v55.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = &v55;
    }

    else
    {
      v51 = v55.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v52 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v52 = v50;
    }

    std::string::append(a1, v51, v52);
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_115;
    }
  }

LABEL_116:
  if (v22 < 0)
  {
    operator delete(v56.__r_.__value_.__l.__data_);
    if ((v36 & 0x80000000) == 0)
    {
LABEL_118:
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_119;
      }

      goto LABEL_123;
    }
  }

  else if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_118;
  }

  operator delete(v57.__r_.__value_.__l.__data_);
  if ((v44 & 0x80000000) == 0)
  {
LABEL_119:
    if ((v29 & 0x80000000) == 0)
    {
      return;
    }

LABEL_124:
    operator delete(buf.__r_.__value_.__l.__data_);
    return;
  }

LABEL_123:
  operator delete(v58.__r_.__value_.__l.__data_);
  if (v29 < 0)
  {
    goto LABEL_124;
  }
}

void sub_22282EC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  if (a21 < 0)
  {
    operator delete(__p);
    if ((v35 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v35 & 0x80000000) == 0)
  {
LABEL_5:
    if (v33 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

  operator delete(a23);
  if (v33 < 0)
  {
LABEL_6:
    operator delete(a27);
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((v32 & 0x80000000) == 0)
  {
LABEL_7:
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  operator delete(a31);
  if ((v34 & 0x80000000) == 0)
  {
LABEL_9:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(*(v36 - 112));
  goto LABEL_9;
}

void sub_22282EE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

PB::Writer **std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](PB::Writer **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    PB::Writer::~Writer(v2);
    MEMORY[0x223DC2360]();
  }

  return a1;
}

void sub_22282EFD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  std::unique_ptr<PB::Writer>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_22282F0BC(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

void sub_22282F1A8(_Unwind_Exception *a1)
{
  *v2 = 0;
  (*(*v3 + 8))(v3);

  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::MRRCPPPrintUtils::getMatchingSpanString(marrs::mrr::MRRCPPPrintUtils *this, const sirinluinternal::MatchingSpan *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Matching Span:", 14);
  std::ios_base::getloc((&v32 + *(v32 - 24)));
  v3 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "  input - ", 10);
  v4 = *(a2 + 4);
  if (v4)
  {
    if (*(v4 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      __p.__r_.__value_.__r.__words[2] = *(v4 + 2);
      *&__p.__r_.__value_.__l.__data_ = v5;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "NULL");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, p_p, size);
  std::ios_base::getloc((&v32 + *(v32 - 24)));
  v8 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "  label - ", 10);
  v9 = *(a2 + 6);
  if (v9)
  {
    if (*(v9 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v9, *(v9 + 1));
    }

    else
    {
      v10 = *v9;
      __p.__r_.__value_.__r.__words[2] = *(v9 + 2);
      *&__p.__r_.__value_.__l.__data_ = v10;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "NULL");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__p;
  }

  else
  {
    v11 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v12 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v11, v12);
  std::ios_base::getloc((&v32 + *(v32 - 24)));
  v13 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "  semanticValue - ", 18);
  v14 = *(a2 + 7);
  if (v14)
  {
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      __p.__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&__p.__r_.__value_.__l.__data_ = v15;
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "NULL");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &__p;
  }

  else
  {
    v16 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v16, v17);
  std::ios_base::getloc((&v32 + *(v32 - 24)));
  v18 = std::locale::use_facet(&v37, MEMORY[0x277D82680]);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v37);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "  start, end token indexes - ", 29);
  v19 = MEMORY[0x223DC2140](&v32, *(a2 + 19));
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", ", 2);
  v21 = MEMORY[0x223DC2140](v20, *(a2 + 18));
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v23 = *(a2 + 5);
  if (v23 && *(v23 + 16))
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "  mentionResolver model score - ", 32);
    v24 = MEMORY[0x223DC2110](&v32, *(*(*(a2 + 5) + 16) + 16));
    std::ios_base::getloc((v24 + *(*v24 - 24)));
    v25 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v25->__vftable[2].~facet_0)(v25, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "  USOGraph -", 12);
  std::ios_base::getloc((&v32 + *(v32 - 24)));
  v26 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&__p);
  std::ostream::put();
  std::ostream::flush();
  v27 = *(a2 + 8);
  if (v27)
  {
    marrs::mrr::MRRCPPPrintUtils::getUsoGraphDotString(&__p, v27);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "NULL\n");
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = &__p;
  }

  else
  {
    v28 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v29 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, v28, v29);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::stringbuf::str();
  v32 = *MEMORY[0x277D82828];
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x277D82828] + 24);
  v33 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(v34[7].__locale_);
  }

  v33 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v34);
  std::ostream::~ostream();
  return MEMORY[0x223DC2270](&v36);
}

uint64_t *marrs::mrr::MRRCPPPrintUtils::getUsoGraphDotString(marrs::mrr::MRRCPPPrintUtils *this, const sirinluexternal::UsoGraph *a2)
{
  marrs::mrr::mr::getUsoGraphProtoReader(this);
  siri::ontology::UsoGraphProtoReader::fromProtobuf(&v4, &marrs::mrr::mr::getUsoGraphProtoReader(void)::inst, a2);
  siri::ontology::UsoGraph::prettyPrint(v4);
  return std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v4);
}

void sub_22282FA88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t marrs::mrr::MRRCPPPrintUtils::getMdResponseString(marrs::mrr::MRRCPPPrintUtils *this, const sirinluinternalmention_detector::MentionDetectorResponse *a2)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "MD Response", 11);
  std::ios_base::getloc((&v13 + *(v13 - 24)));
  v3 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v3->__vftable[2].~facet_0)(v3, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v4 = MEMORY[0x223DC2150](&v13, (*(a2 + 2) - *(a2 + 1)) >> 3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " Mentions in MD Response", 24);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(__p);
  std::ostream::put();
  std::ostream::flush();
  v7 = *(a2 + 1);
  for (i = *(a2 + 2); v7 != i; ++v7)
  {
    marrs::mrr::MRRCPPPrintUtils::getMatchingSpanString(__p, *v7);
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v8, v9);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x223DC2270](&v17);
}

void sub_22282FD70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::locale::~locale(&__p);
  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t sirinluinternal::MatchingSpan::operator=()
{
  return MEMORY[0x2821C0020]();
}

{
  return MEMORY[0x2821C0028]();
}

uint64_t sirinluinternalmention_detector::MentionDetectorResponse::MentionDetectorResponse()
{
  return MEMORY[0x2821C0120]();
}

{
  return MEMORY[0x2821C0128]();
}

uint64_t morphun::util::StringUtils::convert()
{
  return MEMORY[0x2821F9138]();
}

{
  return MEMORY[0x2821F9140]();
}

uint64_t morphun::util::ULocale::ULocale()
{
  return MEMORY[0x2821F9158]();
}

{
  return MEMORY[0x2821F9160]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F7400](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7938]();
}

std::string *__cdecl std::to_string(std::string *__return_ptr retstr, unint64_t __val)
{
  return MEMORY[0x2821F7F28](retstr, __val);
}

{
  return MEMORY[0x2821F7F38](retstr, __val);
}

void std::exception::~exception(std::exception *this)
{
  MEMORY[0x2821F7F88](this);
}

{
  MEMORY[0x2821F7F90](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}