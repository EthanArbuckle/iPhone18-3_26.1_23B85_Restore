void std::vector<std::vector<float>>::resize(size_t *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::vector<float>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      v9 = a1[1];
      do
      {
        v11 = *(v9 - 24);
        v9 -= 24;
        v10 = v11;
        if (v11)
        {
          *(v4 - 16) = v10;
          operator delete(v10);
        }

        v4 = v9;
      }

      while (v9 != v8);
    }

    a1[1] = v8;
  }
}

size_t *std::vector<std::vector<float>>::__append(size_t *result, unint64_t a2, uint64_t *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[3 * a2];
      v13 = 24 * a2;
      do
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v7, *a3, a3[1], (a3[1] - *a3) >> 2);
        v7 += 3;
        v13 -= 24;
      }

      while (v13);
      v7 = v12;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3);
    v9 = v8 + a2;
    if (v8 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(result, v11);
    }

    v18 = 0;
    v19 = 24 * v8;
    v20 = 24 * v8;
    std::__split_buffer<std::vector<float>>::__construct_at_end(&v18, a2, a3);
    v14 = v5[1] - *v5;
    v15 = v19 - v14;
    memcpy((v19 - v14), *v5, v14);
    v16 = *v5;
    *v5 = v15;
    v17 = v5[2];
    *(v5 + 1) = v20;
    *&v20 = v16;
    *(&v20 + 1) = v17;
    v18 = v16;
    v19 = v16;
    return std::__split_buffer<std::vector<int>>::~__split_buffer(&v18);
  }

  return result;
}

void sub_1B52B4788(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::vector<float>>::__construct_at_end(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v3 = result;
  v4 = *(result + 16);
  if (a2)
  {
    v6 = &v4[3 * a2];
    v7 = 24 * a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *a3, a3[1], (a3[1] - *a3) >> 2);
      v4 += 3;
      v7 -= 24;
    }

    while (v7);
    v4 = v6;
  }

  *(v3 + 16) = v4;
  return result;
}

void std::__shared_ptr_emplace<kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,kaldi::quasar::Phonomap&,kaldi::quasar::SymbolDecoderOptions &,std::allocator<kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>>,0>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D0B6D0;
  kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::SymbolDecoder((a1 + 3), a2, a3, a4);
}

void std::__shared_ptr_emplace<kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D0B6D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__hash_table<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::__unordered_map_hasher<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::__unordered_map_equal<std::shared_ptr<quasar::URegularExpressionWrapper>,std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,std::equal_to<std::shared_ptr<quasar::URegularExpressionWrapper>>,std::hash<std::shared_ptr<quasar::URegularExpressionWrapper>>,true>,std::allocator<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>>>::__emplace_unique_key_args<std::shared_ptr<quasar::URegularExpressionWrapper>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<quasar::URegularExpressionWrapper> const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1B52B4C24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::shared_ptr<quasar::URegularExpressionWrapper>,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::shared_ptr<quasar::URegularExpressionWrapper> const,std::string>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,false>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v10 = (a2 - 72);
  v50 = (a2 - 216);
  v51 = a2 - 9;
  matched = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = matched;
    v13 = v12;
    v14 = a2 - matched;
    v15 = 0x8E38E38E38E38E39 * ((a2 - matched) >> 3);
    if (v15 <= 2)
    {
      if (v15 < 2)
      {
        return;
      }

      if (v15 == 2)
      {
        if ((*a3)((a2 - 72), matched))
        {
LABEL_82:
          v46 = matched;
LABEL_83:
          v49 = v10;
LABEL_84:

          std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v46, v49);
        }

        return;
      }

      goto LABEL_10;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,0>(matched, (matched + 72), matched + 9, (a2 - 72), a3);
      return;
    }

    if (v15 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,0>(matched, (matched + 72), matched + 9, (matched + 216), a3);
      if (!(*a3)((a2 - 72), (matched + 216)))
      {
        return;
      }

      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>((matched + 216), (a2 - 72));
      if (!(*a3)((matched + 216), matched + 9))
      {
        return;
      }

      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(matched + 9, (matched + 216));
      if (!(*a3)(matched + 9, (matched + 72)))
      {
        return;
      }

      v47 = (matched + 72);
      v48 = matched + 9;
LABEL_100:
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v47, v48);
      if ((*a3)((matched + 72), matched))
      {
        v49 = (matched + 72);
        v46 = matched;
        goto LABEL_84;
      }

      return;
    }

LABEL_10:
    if (v14 <= 1727)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(matched, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(matched, a2, a3);
      }

      return;
    }

    if (v13 == 1)
    {
      if (matched != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*>(matched, a2, a2, a3, a6);
      }

      return;
    }

    v16 = v15 >> 1;
    v17 = (matched + 72 * (v15 >> 1));
    v18 = *a3;
    if (v14 >= 0x2401)
    {
      v19 = v18(v17, matched);
      v20 = (*a3)((a2 - 72), v17);
      if (v19)
      {
        if (v20)
        {
          v21 = a1;
          goto LABEL_27;
        }

        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1, v17);
        if ((*a3)((a2 - 72), v17))
        {
          v21 = v17;
LABEL_27:
          v25 = (a2 - 72);
LABEL_28:
          std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v21, v25);
        }
      }

      else if (v20)
      {
        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v17, (a2 - 72));
        if ((*a3)(v17, a1))
        {
          v21 = a1;
          v25 = v17;
          goto LABEL_28;
        }
      }

      v27 = (a1 + 72 * v16 - 72);
      v28 = (*a3)(v27, (a1 + 72));
      v29 = (*a3)(v51, v27);
      if (v28)
      {
        if (v29)
        {
          v30 = (a1 + 72);
          goto LABEL_40;
        }

        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>((a1 + 72), (a1 + 72 * v16 - 72));
        if ((*a3)(v51, (a1 + 72 * v16 - 72)))
        {
          v30 = (a1 + 72 * v16 - 72);
LABEL_40:
          v31 = a2 - 9;
LABEL_41:
          std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v30, v31);
        }
      }

      else if (v29)
      {
        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>((a1 + 72 * v16 - 72), v51);
        if ((*a3)((a1 + 72 * v16 - 72), (a1 + 72)))
        {
          v30 = (a1 + 72);
          v31 = (a1 + 72 * v16 - 72);
          goto LABEL_41;
        }
      }

      v32 = a1 + 72 * v16;
      v33 = (*a3)((v32 + 72), a1 + 9);
      v34 = (*a3)(v50, (v32 + 72));
      if (v33)
      {
        if (v34)
        {
          v35 = a1 + 9;
          goto LABEL_50;
        }

        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1 + 9, (v32 + 72));
        if ((*a3)(v50, (v32 + 72)))
        {
          v35 = (v32 + 72);
LABEL_50:
          v36 = (a2 - 216);
LABEL_51:
          std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v35, v36);
        }
      }

      else if (v34)
      {
        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>((v32 + 72), v50);
        if ((*a3)((v32 + 72), a1 + 9))
        {
          v35 = a1 + 9;
          v36 = (v32 + 72);
          goto LABEL_51;
        }
      }

      v37 = (*a3)(v17, v27);
      v38 = (*a3)((v32 + 72), v17);
      if (v37)
      {
        if (v38)
        {
          v39 = (v32 + 72);
          v40 = v27;
          goto LABEL_60;
        }

        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v27, v17);
        if ((*a3)((v32 + 72), v17))
        {
          v39 = (v32 + 72);
          v40 = v17;
LABEL_60:
          std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v40, v39);
        }
      }

      else if (v38)
      {
        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v17, (v32 + 72));
        if ((*a3)(v17, v27))
        {
          v40 = v27;
          v39 = v17;
          goto LABEL_60;
        }
      }

      v24 = a1;
      v26 = v17;
LABEL_62:
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v24, v26);
      goto LABEL_63;
    }

    v22 = v18(matched, v17);
    v23 = (*a3)((a2 - 72), a1);
    if (v22)
    {
      if (v23)
      {
        v24 = v17;
LABEL_37:
        v26 = (a2 - 72);
        goto LABEL_62;
      }

      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v17, a1);
      if ((*a3)((a2 - 72), a1))
      {
        v24 = a1;
        goto LABEL_37;
      }
    }

    else if (v23)
    {
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1, (a2 - 72));
      if ((*a3)(a1, v17))
      {
        v24 = v17;
        v26 = a1;
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((a5 & 1) == 0 && ((*a3)((a1 - 72), a1) & 1) == 0)
    {
      matched = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PhoneticMatchResult *,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&)>(a1, a2, a3);
      goto LABEL_70;
    }

    v41 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PhoneticMatchResult *,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&)>(a1, a2, a3);
    if ((v42 & 1) == 0)
    {
      goto LABEL_68;
    }

    v43 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(a1, v41, a3);
    matched = (v41 + 72);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>((v41 + 72), a2, a3))
    {
      a4 = -v13;
      a2 = v41;
      if (v43)
      {
        return;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if ((v43 & 1) == 0)
    {
LABEL_68:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,false>(a1, v41, a3, -v13, a5 & 1);
      matched = (v41 + 72);
LABEL_70:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v44 = (*a3)((matched + 72), matched);
  v45 = (*a3)(v10, (matched + 72));
  if ((v44 & 1) == 0)
  {
    if (!v45)
    {
      return;
    }

    v47 = (matched + 72);
    v48 = v10;
    goto LABEL_100;
  }

  if (v45)
  {
    goto LABEL_82;
  }

  std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(matched, (matched + 72));
  if ((*a3)(v10, (matched + 72)))
  {
    v46 = (matched + 72);
    goto LABEL_83;
  }
}

void std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t (**a5)(__int128 *, __int128 *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1;
LABEL_9:
      v13 = a3;
      goto LABEL_10;
    }

    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1, a2);
    if ((*a5)(a3, a2))
    {
      v12 = a2;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a2, a3);
    if ((*a5)(a2, a1))
    {
      v12 = a1;
      v13 = a2;
LABEL_10:
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v12, v13);
    }
  }

  if ((*a5)(a4, a3))
  {
    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a3, a4);
    if ((*a5)(a3, a2))
    {
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a2, a3);
      if ((*a5)(a2, a1))
      {

        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1, a2);
      }
    }
  }
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v5 = (a1 + 72);
    if ((a1 + 72) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v5;
        if ((*a3)(v5, v8))
        {
          v10 = *(v8 + 88);
          v18 = *v9;
          *v19 = v10;
          *&v19[16] = *(v8 + 13);
          *(v8 + 11) = 0;
          *(v8 + 12) = 0;
          v20 = v8[7];
          v21 = *(v8 + 16);
          *(v8 + 13) = 0;
          *(v8 + 14) = 0;
          *(v8 + 15) = 0;
          *(v8 + 16) = 0;
          v11 = *(v8 + 34);
          *(v22 + 3) = *(v8 + 139);
          v12 = v7;
          v22[0] = v11;
          while (1)
          {
            v13 = v12;
            v14 = a1 + v12;
            *(a1 + v12 + 72) = *(a1 + v12);
            std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((a1 + v12 + 88));
            *(v14 + 88) = *(v14 + 16);
            *(v14 + 104) = *(v14 + 32);
            *(v14 + 24) = 0;
            *(v14 + 32) = 0;
            *(v14 + 16) = 0;
            if (*(v14 + 135) < 0)
            {
              operator delete(*(v14 + 112));
            }

            *(v14 + 112) = *(v14 + 40);
            *(v14 + 128) = *(v14 + 56);
            *(v14 + 63) = 0;
            *(v14 + 40) = 0;
            *(v14 + 136) = *(v14 + 64);
            *(v14 + 139) = *(v14 + 67);
            if (!v13)
            {
              break;
            }

            v15 = (*a3)(&v18, a1 + v13 - 72);
            v12 = v13 - 72;
            if ((v15 & 1) == 0)
            {
              v16 = (a1 + v13);
              goto LABEL_12;
            }
          }

          v16 = a1;
LABEL_12:
          *v16 = v18;
          v17 = a1 + v13;
          std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((v17 + 16));
          *(v17 + 16) = *v19;
          *(v16 + 24) = *&v19[8];
          memset(v19, 0, sizeof(v19));
          if (*(v16 + 63) < 0)
          {
            operator delete(*(v17 + 40));
          }

          *(v17 + 40) = v20;
          *(v17 + 56) = v21;
          HIBYTE(v21) = 0;
          LOBYTE(v20) = 0;
          *(v17 + 64) = v22[0];
          *(v17 + 67) = *(v22 + 3);
          v23 = v19;
          std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v23);
        }

        v5 = (v9 + 72);
        v7 += 72;
        v8 = v9;
      }

      while ((v9 + 72) != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(_OWORD *a1, _OWORD *a2, uint64_t (**a3)(__int128 *, uint64_t))
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = (a1 + 72);
    if ((a1 + 72) != a2)
    {
      v7 = a1 - 72;
      do
      {
        v8 = v5;
        if ((*a3)(v5, v4))
        {
          v9 = *(v4 + 88);
          v13 = *v8;
          v14 = v9;
          v15 = *(v4 + 13);
          *(v4 + 11) = 0;
          *(v4 + 12) = 0;
          v16 = v4[7];
          v17 = *(v4 + 16);
          *(v4 + 13) = 0;
          *(v4 + 14) = 0;
          *(v4 + 15) = 0;
          *(v4 + 16) = 0;
          v10 = *(v4 + 34);
          *(v18 + 3) = *(v4 + 139);
          v11 = v7;
          v18[0] = v10;
          do
          {
            *(v11 + 144) = *(v11 + 72);
            std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((v11 + 160));
            *(v11 + 160) = *(v11 + 88);
            *(v11 + 176) = *(v11 + 104);
            *(v11 + 96) = 0;
            *(v11 + 104) = 0;
            *(v11 + 88) = 0;
            if (*(v11 + 207) < 0)
            {
              operator delete(*(v11 + 184));
            }

            *(v11 + 184) = *(v11 + 112);
            *(v11 + 200) = *(v11 + 128);
            *(v11 + 135) = 0;
            *(v11 + 112) = 0;
            *(v11 + 208) = *(v11 + 136);
            *(v11 + 211) = *(v11 + 139);
            v12 = (*a3)(&v13, v11);
            v11 -= 72;
          }

          while ((v12 & 1) != 0);
          *(v11 + 144) = v13;
          std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((v11 + 160));
          *(v11 + 160) = v14;
          *(v11 + 176) = v15;
          v15 = 0;
          v14 = 0uLL;
          if (*(v11 + 207) < 0)
          {
            operator delete(*(v11 + 184));
          }

          *(v11 + 184) = v16;
          *(v11 + 200) = v17;
          HIBYTE(v17) = 0;
          LOBYTE(v16) = 0;
          *(v11 + 208) = v18[0];
          *(v11 + 211) = *(v18 + 3);
          v19 = &v14;
          std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v19);
        }

        v5 = (v8 + 72);
        v7 += 72;
        v4 = v8;
      }

      while ((v8 + 72) != a2);
    }
  }
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PhoneticMatchResult *,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&)>(uint64_t a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v6 = (a1 + 16);
  v7 = *(a1 + 16);
  v21 = *a1;
  v22 = v7;
  v23 = *(a1 + 32);
  v8 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *__p = v8;
  v25 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v10 = (a1 + 64);
  v9 = *(a1 + 64);
  *(a1 + 40) = 0;
  *&v26[3] = *(a1 + 67);
  *v26 = v9;
  if ((*a3)(&v21, (a2 - 72)))
  {
    v11 = a1;
    do
    {
      v11 = (v11 + 72);
    }

    while (((*a3)(&v21, v11) & 1) == 0);
  }

  else
  {
    v12 = (a1 + 72);
    do
    {
      v11 = v12;
      if (v12 >= v4)
      {
        break;
      }

      v13 = (*a3)(&v21, v12);
      v12 = (v11 + 72);
    }

    while (!v13);
  }

  if (v11 < v4)
  {
    do
    {
      v4 = (v4 - 72);
    }

    while (((*a3)(&v21, v4) & 1) != 0);
  }

  while (v11 < v4)
  {
    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v11, v4);
    do
    {
      v11 = (v11 + 72);
    }

    while (!(*a3)(&v21, v11));
    do
    {
      v4 = (v4 - 72);
    }

    while (((*a3)(&v21, v4) & 1) != 0);
  }

  v14 = (v11 - 72);
  if ((v11 - 72) != a1)
  {
    *a1 = *v14;
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v6);
    *(a1 + 16) = *(v11 - 56);
    *(a1 + 32) = *(v11 - 5);
    *(v11 - 7) = 0;
    *(v11 - 6) = 0;
    *(v11 - 5) = 0;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v15 = *(v11 - 2);
    *(a1 + 56) = *(v11 - 2);
    *(a1 + 40) = v15;
    *(v11 - 9) = 0;
    *(v11 - 32) = 0;
    v16 = *(v11 - 2);
    *(v10 + 3) = *(v11 - 5);
    *v10 = v16;
  }

  *v14 = v21;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v11 - 7);
  *(v11 - 56) = v22;
  *(v11 - 5) = v23;
  v22 = 0uLL;
  v23 = 0;
  v17 = (v11 - 2);
  if (*(v11 - 9) < 0)
  {
    operator delete(*v17);
  }

  v18 = *__p;
  *(v11 - 2) = v25;
  *v17 = v18;
  HIBYTE(v25) = 0;
  LOBYTE(__p[0]) = 0;
  v19 = *v26;
  *(v11 - 5) = *&v26[3];
  *(v11 - 2) = v19;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  v27 = &v22;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v27);
  return v11;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,quasar::PhoneticMatchResult *,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&)>(uint64_t a1, __int128 *a2, uint64_t (**a3)(uint64_t, __int128 *))
{
  v6 = 0;
  v7 = (a1 + 16);
  v8 = *(a1 + 16);
  v22 = *a1;
  v23 = v8;
  v24 = *(a1 + 32);
  *(a1 + 16) = 0;
  v9 = *(a1 + 40);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *__p = v9;
  v26 = *(a1 + 56);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *&v27[3] = *(a1 + 67);
  v10 = (a1 + 64);
  *v27 = *(a1 + 64);
  do
  {
    v11 = (*a3)(a1 + v6 + 72, &v22);
    v6 += 72;
  }

  while ((v11 & 1) != 0);
  v12 = a1 + v6;
  if (v6 == 72)
  {
    do
    {
      if (v12 >= a2)
      {
        break;
      }

      a2 = (a2 - 72);
    }

    while (((*a3)(a2, &v22) & 1) == 0);
  }

  else
  {
    do
    {
      a2 = (a2 - 72);
    }

    while (!(*a3)(a2, &v22));
  }

  v13 = (a1 + v6);
  if (v12 < a2)
  {
    v14 = a2;
    do
    {
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v13, v14);
      do
      {
        v13 = (v13 + 72);
      }

      while (((*a3)(v13, &v22) & 1) != 0);
      do
      {
        v14 = (v14 - 72);
      }

      while (!(*a3)(v14, &v22));
    }

    while (v13 < v14);
  }

  v15 = (v13 - 72);
  if ((v13 - 72) != a1)
  {
    *a1 = *v15;
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v7);
    *(a1 + 16) = *(v13 - 56);
    *(a1 + 32) = *(v13 - 5);
    *(v13 - 7) = 0;
    *(v13 - 6) = 0;
    *(v13 - 5) = 0;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v16 = *(v13 - 2);
    *(a1 + 56) = *(v13 - 2);
    *(a1 + 40) = v16;
    *(v13 - 9) = 0;
    *(v13 - 32) = 0;
    v17 = *(v13 - 2);
    *(v10 + 3) = *(v13 - 5);
    *v10 = v17;
  }

  *v15 = v22;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v13 - 7);
  *(v13 - 56) = v23;
  *(v13 - 5) = v24;
  v23 = 0uLL;
  v24 = 0;
  v18 = (v13 - 2);
  if (*(v13 - 9) < 0)
  {
    operator delete(*v18);
  }

  v19 = *__p;
  *(v13 - 2) = v26;
  *v18 = v19;
  HIBYTE(v26) = 0;
  LOBYTE(__p[0]) = 0;
  v20 = *v27;
  *(v13 - 5) = *&v27[3];
  *(v13 - 2) = v20;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  v28 = &v23;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v28);
  return v13 - 72;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
  if (v6 <= 2)
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      if ((*a3)((a2 - 72), a1))
      {
        v7 = a1;
        v8 = (a2 - 72);
LABEL_30:
        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v7, v8);
        return 1;
      }

      return 1;
    }

LABEL_16:
    v15 = a1 + 9;
    v16 = (*a3)((a1 + 72), a1);
    v17 = (*a3)(a1 + 9, (a1 + 72));
    if (v16)
    {
      if (v17)
      {
        v18 = a1;
      }

      else
      {
        std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1, (a1 + 72));
        if (!(*a3)(a1 + 9, (a1 + 72)))
        {
          goto LABEL_35;
        }

        v18 = (a1 + 72);
      }

      v19 = a1 + 9;
    }

    else
    {
      if (!v17 || (std::swap[abi:ne200100]<quasar::PhoneticMatchResult>((a1 + 72), a1 + 9), !(*a3)((a1 + 72), a1)))
      {
LABEL_35:
        v20 = (a1 + 216);
        if ((a1 + 216) != a2)
        {
          v21 = 0;
          v22 = 0;
          while (1)
          {
            if ((*a3)(v20, v15))
            {
              v23 = v20[1];
              v33 = *v20;
              *v34 = v23;
              *&v34[16] = *(v20 + 4);
              *(v20 + 2) = 0;
              *(v20 + 3) = 0;
              v24 = *(v20 + 40);
              *(v20 + 4) = 0;
              *(v20 + 5) = 0;
              v35 = v24;
              v36 = *(v20 + 7);
              *(v37 + 3) = *(v20 + 67);
              v37[0] = *(v20 + 16);
              v25 = v21;
              *(v20 + 6) = 0;
              *(v20 + 7) = 0;
              while (1)
              {
                v26 = v25;
                v27 = a1 + v25;
                *(a1 + v25 + 216) = *(a1 + v25 + 144);
                std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((a1 + v25 + 232));
                *(v27 + 232) = *(v27 + 10);
                *(v27 + 31) = *(v27 + 22);
                *(v27 + 21) = 0;
                *(v27 + 22) = 0;
                *(v27 + 20) = 0;
                if (v27[279] < 0)
                {
                  operator delete(*(v27 + 32));
                }

                *(v27 + 16) = *(v27 + 184);
                *(v27 + 34) = *(v27 + 25);
                v27[207] = 0;
                v27[184] = 0;
                *(v27 + 70) = *(v27 + 52);
                *(v27 + 283) = *(v27 + 211);
                if (v26 == -144)
                {
                  break;
                }

                v28 = (*a3)(&v33, (a1 + v26 + 72));
                v25 = v26 - 72;
                if ((v28 & 1) == 0)
                {
                  v29 = a1 + v25 + 216;
                  goto LABEL_45;
                }
              }

              v29 = a1;
LABEL_45:
              *v29 = v33;
              v30 = a1 + v26;
              std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v30 + 20);
              *(v30 + 20) = *v34;
              *(v29 + 24) = *&v34[8];
              memset(v34, 0, sizeof(v34));
              if (*(v29 + 63) < 0)
              {
                operator delete(*(v30 + 23));
              }

              *(v30 + 184) = v35;
              *(v30 + 25) = v36;
              HIBYTE(v36) = 0;
              LOBYTE(v35) = 0;
              *(v30 + 52) = v37[0];
              *(v30 + 211) = *(v37 + 3);
              if (++v22 == 8)
              {
                v31 = (v20 + 72) == a2;
                v38 = v34;
                std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v38);
                return v31;
              }

              v38 = v34;
              std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v38);
            }

            v15 = v20;
            v21 += 72;
            v20 = (v20 + 72);
            if (v20 == a2)
            {
              return 1;
            }
          }
        }

        return 1;
      }

      v19 = (a1 + 72);
      v18 = a1;
    }

    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v18, v19);
    goto LABEL_35;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,0>(a1, (a1 + 72), a1 + 9, (a2 - 72), a3);
      return 1;
    }

    if (v6 != 5)
    {
      goto LABEL_16;
    }

    v9 = (a2 - 72);
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,0>(a1, (a1 + 72), a1 + 9, (a1 + 216), a3);
    if (!(*a3)(v9, (a1 + 216)))
    {
      return 1;
    }

    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>((a1 + 216), v9);
    if (!(*a3)((a1 + 216), a1 + 9))
    {
      return 1;
    }

    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1 + 9, (a1 + 216));
    if (!(*a3)(a1 + 9, (a1 + 72)))
    {
      return 1;
    }

    v10 = (a1 + 72);
    v11 = a1 + 9;
    goto LABEL_22;
  }

  v12 = (a2 - 72);
  v13 = (*a3)((a1 + 72), a1);
  v14 = (*a3)(v12, (a1 + 72));
  if (v13)
  {
    if (v14)
    {
      v7 = a1;
    }

    else
    {
      std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(a1, (a1 + 72));
      if (!(*a3)(v12, (a1 + 72)))
      {
        return 1;
      }

      v7 = (a1 + 72);
    }

    v8 = v12;
    goto LABEL_30;
  }

  if (v14)
  {
    v10 = (a1 + 72);
    v11 = v12;
LABEL_22:
    std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v10, v11);
    if ((*a3)((a1 + 72), a1))
    {
      v8 = (a1 + 72);
      v7 = a1;
      goto LABEL_30;
    }
  }

  return 1;
}

void std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v15 = 0;
  v5 = a1 + 1;
  v6 = *(a1 + 2);
  v13 = v6;
  v11 = *(a1 + 24);
  v12 = v4;
  v14 = *(a1 + 3);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  v16 = *(a1 + 40);
  v17 = *(a1 + 7);
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v8 = a1 + 4;
  v7 = *(a1 + 16);
  *(a1 + 5) = 0;
  *&v18[3] = *(a1 + 67);
  *v18 = v7;
  *a1 = *a2;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(a1 + 2);
  *v5 = a2[1];
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 5));
  }

  v9 = *(a2 + 40);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 40) = v9;
  *(a2 + 63) = 0;
  v10 = *(a2 + 16);
  *(a2 + 40) = 0;
  *(v8 + 3) = *(a2 + 67);
  *v8 = v10;
  *a2 = v12;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(a2 + 2);
  *(a2 + 2) = v6;
  *(a2 + 24) = v11;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 5));
  }

  *(a2 + 40) = v16;
  *(a2 + 7) = v17;
  HIBYTE(v17) = 0;
  LOBYTE(v16) = 0;
  *(a2 + 16) = *v18;
  *(a2 + 67) = *&v18[3];
  v19 = &v13;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v19);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*>(__int128 *a1, __int128 *a2, __int128 *a3, unsigned int (**a4)(uint64_t, uint64_t), __n128 matched)
{
  if (a1 != a2)
  {
    v7 = a2;
    v9 = a2 - a1;
    v10 = 0x8E38E38E38E38E39 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 73)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v13 = (a1 + 72 * v11);
      do
      {
        matched = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(a1, a4, v10, v13);
        v13 = (v13 - 72);
        --v12;
      }

      while (v12);
    }

    v14 = v7;
    if (v7 != a3)
    {
      v14 = v7;
      do
      {
        if ((*a4)(v14, a1, matched))
        {
          std::swap[abi:ne200100]<quasar::PhoneticMatchResult>(v14, a1);
          matched = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(a1, a4, v10, a1);
        }

        v14 = (v14 + 72);
      }

      while (v14 != a3);
    }

    if (v9 >= 73)
    {
      v15 = 0x8E38E38E38E38E39 * (v9 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(a1, v7, a4, v15);
        v7 -= 72;
      }

      while (v15-- > 2);
    }

    return v14;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v22 = v4 >> 1;
    if ((v4 >> 1) >= (0x8E38E38E38E38E39 * ((a4 - a1) >> 3)))
    {
      v9 = (0x1C71C71C71C71C72 * ((a4 - a1) >> 3)) | 1;
      v10 = a1 + 72 * v9;
      v11 = 0x1C71C71C71C71C72 * ((a4 - a1) >> 3) + 2;
      if (v11 < a3 && (*a2)(a1 + 72 * v9, v10 + 72))
      {
        v10 += 72;
        v9 = v11;
      }

      if (((*a2)(v10, v5) & 1) == 0)
      {
        v13 = v5[1];
        v23 = *v5;
        v24 = v13;
        v25 = *(v5 + 4);
        *(v5 + 2) = 0;
        *(v5 + 3) = 0;
        v14 = *(v5 + 40);
        *(v5 + 4) = 0;
        *(v5 + 5) = 0;
        v26 = v14;
        v27 = *(v5 + 7);
        *&v28[3] = *(v5 + 67);
        *v28 = *(v5 + 16);
        *(v5 + 6) = 0;
        *(v5 + 7) = 0;
        do
        {
          v15 = v10;
          *v5 = *v10;
          std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v5 + 2);
          v16 = (v10 + 16);
          v5[1] = *(v10 + 16);
          *(v5 + 4) = *(v10 + 32);
          *(v10 + 16) = 0;
          *(v10 + 24) = 0;
          *(v10 + 32) = 0;
          if (*(v5 + 63) < 0)
          {
            operator delete(*(v5 + 5));
          }

          v17 = *(v10 + 40);
          *(v5 + 7) = *(v10 + 56);
          *(v5 + 40) = v17;
          v18 = *(v10 + 64);
          *(v10 + 63) = 0;
          *(v10 + 40) = 0;
          *(v5 + 67) = *(v10 + 67);
          *(v5 + 16) = v18;
          if (v22 < v9)
          {
            break;
          }

          v19 = (2 * v9) | 1;
          v10 = a1 + 72 * v19;
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v19;
          }

          else if ((*a2)(a1 + 72 * v19, v10 + 72))
          {
            v10 += 72;
          }

          else
          {
            v9 = v19;
          }

          v5 = v15;
        }

        while (!(*a2)(v10, &v23));
        *v15 = v23;
        std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v16);
        v15[1] = v24;
        *(v15 + 4) = v25;
        v24 = 0uLL;
        v25 = 0;
        if (*(v15 + 63) < 0)
        {
          operator delete(*(v15 + 5));
        }

        v20 = v26;
        *(v15 + 7) = v27;
        *(v15 + 40) = v20;
        HIBYTE(v27) = 0;
        LOBYTE(v26) = 0;
        v21 = *&v28[3];
        *(v15 + 16) = *v28;
        *(v15 + 67) = v21;
        v29 = &v24;
        std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v29);
      }
    }
  }

  return result;
}

void sub_1B52B66E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::PhoneticMatchResult::~PhoneticMatchResult(va);
  _Unwind_Resume(a1);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(uint64_t a1, uint64_t a2, unsigned int (**a3)(uint64_t, uint64_t), uint64_t a4)
{
  if (a4 >= 2)
  {
    v18 = *a1;
    v19 = *(a1 + 16);
    v20 = *(a1 + 32);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    v7 = *(a1 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *__p = v7;
    v22 = *(a1 + 56);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *&v23[3] = *(a1 + 67);
    *v23 = *(a1 + 64);
    matched = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(a1, a3, a4);
    v9 = matched;
    v10 = (a2 - 72);
    if (matched == a2 - 72)
    {
      *matched = v18;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((matched + 16));
      *(v9 + 16) = v19;
      *(v9 + 32) = v20;
      v19 = 0uLL;
      v20 = 0;
      if (*(v9 + 63) < 0)
      {
        operator delete(*(v9 + 40));
      }

      v16 = *__p;
      *(v9 + 56) = v22;
      *(v9 + 40) = v16;
      HIBYTE(v22) = 0;
      LOBYTE(__p[0]) = 0;
      v17 = *&v23[3];
      *(v9 + 64) = *v23;
      *(v9 + 67) = v17;
    }

    else
    {
      *matched = *v10;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((matched + 16));
      v11 = (a2 - 56);
      *(v9 + 16) = *(a2 - 56);
      *(v9 + 32) = *(a2 - 40);
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      if (*(v9 + 63) < 0)
      {
        operator delete(*(v9 + 40));
      }

      v12 = (a2 - 32);
      v13 = *(a2 - 32);
      *(v9 + 56) = *(a2 - 16);
      *(v9 + 40) = v13;
      v14 = *(a2 - 8);
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v9 + 67) = *(a2 - 5);
      *(v9 + 64) = v14;
      v15 = v9 + 72;
      *v10 = v18;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((a2 - 56));
      *(a2 - 56) = v19;
      *(a2 - 40) = v20;
      v20 = 0;
      v19 = 0uLL;
      if (*(a2 - 9) < 0)
      {
        operator delete(*v12);
      }

      *v12 = *__p;
      *(a2 - 16) = v22;
      HIBYTE(v22) = 0;
      LOBYTE(__p[0]) = 0;
      *(a2 - 8) = *v23;
      *(a2 - 5) = *&v23[3];
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(a1, v15, a3, 0x8E38E38E38E38E39 * ((v15 - a1) >> 3));
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v24 = &v19;
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v24);
  }
}

uint64_t std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(uint64_t a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 72 * v6;
    v9 = v8 + 72;
    v10 = 2 * v6;
    v6 = (2 * v6) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = v8 + 144;
      if ((*a2)(v8 + 72, v8 + 144))
      {
        v9 = v12;
        v6 = v11;
      }
    }

    *a1 = *v9;
    std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate((a1 + 16));
    *(a1 + 16) = *(v9 + 16);
    *(a1 + 32) = *(v9 + 32);
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 0;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 40));
    }

    v13 = *(v9 + 40);
    *(a1 + 56) = *(v9 + 56);
    *(a1 + 40) = v13;
    *(v9 + 63) = 0;
    *(v9 + 40) = 0;
    v14 = *(v9 + 64);
    *(a1 + 67) = *(v9 + 67);
    *(a1 + 64) = v14;
    a1 = v9;
  }

  while (v6 <= v7);
  return v9;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(quasar::PhoneticMatchResult const&,quasar::PhoneticMatchResult const&),quasar::PhoneticMatchResult*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v8 = v4 >> 1;
    v9 = (a1 + 72 * (v4 >> 1));
    v10 = (a2 - 72);
    if ((*a3)(v9, (a2 - 72)))
    {
      v11 = *(a2 - 56);
      v18 = *v10;
      v19 = v11;
      v20 = *(a2 - 40);
      *(a2 - 56) = 0;
      *(a2 - 48) = 0;
      v12 = *(a2 - 32);
      *(a2 - 40) = 0;
      *(a2 - 32) = 0;
      v21 = v12;
      v22 = *(a2 - 16);
      *(a2 - 24) = 0;
      *(a2 - 16) = 0;
      *&v23[3] = *(a2 - 5);
      *v23 = *(a2 - 8);
      do
      {
        v13 = v9;
        *v10 = *v9;
        std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v10 + 2);
        v14 = (v9 + 1);
        v10[1] = v9[1];
        *(v10 + 4) = *(v9 + 4);
        *(v9 + 2) = 0;
        *(v9 + 3) = 0;
        *(v9 + 4) = 0;
        if (*(v10 + 63) < 0)
        {
          operator delete(*(v10 + 5));
        }

        v15 = *(v9 + 40);
        *(v10 + 7) = *(v9 + 7);
        *(v10 + 40) = v15;
        v17 = v9 + 4;
        v16 = *(v9 + 16);
        *(v9 + 63) = 0;
        *(v9 + 40) = 0;
        *(v10 + 67) = *(v9 + 67);
        *(v10 + 16) = v16;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = (a1 + 72 * v8);
        v10 = v13;
      }

      while (((*a3)(v9, &v18) & 1) != 0);
      *v13 = v18;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__vdeallocate(v14);
      v13[1] = v19;
      *(v13 + 4) = v20;
      v20 = 0;
      v19 = 0uLL;
      if (*(v13 + 63) < 0)
      {
        operator delete(*(v13 + 5));
      }

      *(v13 + 40) = v21;
      *(v13 + 7) = v22;
      HIBYTE(v22) = 0;
      LOBYTE(v21) = 0;
      *v17 = *v23;
      *(v13 + 67) = *&v23[3];
      v24 = &v19;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](&v24);
    }
  }
}

uint64_t std::vector<quasar::PhoneticMatchAlignmentSpan>::__construct_one_at_end[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan const&>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  v4[3] = 0;
  v4[4] = 0;
  v4[5] = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>((v4 + 3), a2[3], a2[4], 0x6DB6DB6DB6DB6DB7 * ((a2[4] - a2[3]) >> 5));
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = 0;
  result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>((v4 + 6), a2[6], a2[7], 0x6DB6DB6DB6DB6DB7 * ((a2[7] - a2[6]) >> 5));
  *(a1 + 8) = v4 + 9;
  return result;
}

void sub_1B52B6CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v11;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);
  *(v10 + 8) = v11;
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::PhoneticMatchAlignmentSpan>::__emplace_back_slow_path<quasar::PhoneticMatchAlignmentSpan const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v17 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>>(a1, v6);
  }

  v7 = 72 * v2;
  v14 = 0;
  v15 = v7;
  v16 = v7;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v7, *a2, a2[1], 0x6DB6DB6DB6DB6DB7 * ((a2[1] - *a2) >> 5));
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v7 + 24, a2[3], a2[4], 0x6DB6DB6DB6DB6DB7 * ((a2[4] - a2[3]) >> 5));
  *(v7 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v7 + 48, a2[6], a2[7], 0x6DB6DB6DB6DB6DB7 * ((a2[7] - a2[6]) >> 5));
  *&v16 = v16 + 72;
  v8 = *(a1 + 8);
  v9 = (v15 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<quasar::PhoneticMatchAlignmentSpan>::~__split_buffer(&v14);
  return v13;
}

void sub_1B52B6ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va1);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__split_buffer<quasar::PhoneticMatchAlignmentSpan>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*>(uint64_t a1, void **a2, void **a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(a1, a4, v7);
      v7 += 72;
      a4 = v12 + 9;
      v12 += 9;
    }

    while (v7 != a3);
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<quasar::PhoneticMatchAlignmentSpan>>::destroy[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,0>(a1, v5);
      v5 += 9;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchAlignmentSpan>,quasar::PhoneticMatchAlignmentSpan*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

__n128 std::allocator<quasar::PhoneticMatchAlignmentSpan>::construct[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,quasar::PhoneticMatchAlignmentSpan>(uint64_t a1, void *a2, uint64_t a3)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = *a3;
  a2[2] = *(a3 + 16);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  a2[3] = 0;
  a2[4] = 0;
  a2[5] = 0;
  *(a2 + 3) = *(a3 + 24);
  a2[5] = *(a3 + 40);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  result = *(a3 + 48);
  *(a2 + 3) = result;
  a2[8] = *(a3 + 64);
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 0;
  return result;
}

uint64_t std::__split_buffer<quasar::PhoneticMatchAlignmentSpan>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::PhoneticMatchAlignmentSpan>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::PhoneticMatchAlignmentSpan>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 72;
    std::allocator_traits<std::allocator<quasar::PhoneticMatchAlignmentSpan>>::destroy[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan,0>(v5, (v4 - 72));
  }
}

uint64_t std::vector<quasar::PhoneticMatchResult>::__emplace_back_slow_path<quasar::PhoneticMatchResult const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x38E38E38E38E38ELL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>>(a1, v6);
  }

  v7 = 72 * v2;
  v17 = 0;
  v18 = v7;
  v19 = 72 * v2;
  *v7 = *a2;
  v8 = 72 * v2;
  *(v8 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(v8 + 16, *(a2 + 16), *(a2 + 24), 0x8E38E38E38E38E39 * ((*(a2 + 24) - *(a2 + 16)) >> 3));
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((v7 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v9 = *(a2 + 40);
    *(v7 + 56) = *(a2 + 56);
    *(v7 + 40) = v9;
  }

  v10 = *(a2 + 64);
  *(v7 + 67) = *(a2 + 67);
  *(v7 + 64) = v10;
  *&v19 = v19 + 72;
  v11 = a1[1];
  v12 = v18 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<quasar::PhoneticMatchResult>::~__split_buffer(&v17);
  return v16;
}

void sub_1B52B7250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__split_buffer<quasar::PhoneticMatchResult>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, float a8)
{
  v14 = a1 + 6;
  v15 = a2;
  v16 = a1[9];
  v17 = (v16 + 16 * (a2 % a1[8]));
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;
    v20 = a1 + 6;
    if (v19 != -1)
    {
      v20 = (*(v16 + 16 * v19 + 8) + 8);
    }

    v21 = *(v18 + 8);
    for (i = *v20; i != v21; i = *(i + 8))
    {
      if (*i == a2)
      {
        if (*(*a1 + 28 * (*(i + 4) - 1) + 20) <= a8)
        {
          return 0;
        }

        v42 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::NewToken(a1, a2, a3, a4, a5, a6, a7, a8);
        *(i + 4) = v42;
        if (kaldi::g_kaldi_verbose_level < 5)
        {
          return 1;
        }

        v43 = v42;
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v56, 5);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "id=", 3);
        v45 = MEMORY[0x1B8C84C10](v44, v43);
        v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " prev_id=", 9);
        v47 = MEMORY[0x1B8C84C10](v46, a6);
        v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " nextstate=", 11);
        v49 = MEMORY[0x1B8C84C00](v48, a2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " weight=", 8);
        v50 = std::ostream::operator<<();
        v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " ilabel=", 8);
        v52 = MEMORY[0x1B8C84C00](v51, a3);
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " olabel=", 8);
        v54 = MEMORY[0x1B8C84C00](v53, a4);
        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, " phone=", 7);
        MEMORY[0x1B8C84C00](v55, a7);
        goto LABEL_15;
      }
    }
  }

  v23 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::NewToken(a1, a2, a3, a4, a5, a6, a7, a8);
  v24 = v15 % a1[8];
  v25 = (a1[9] + 16 * v24);
  v26 = kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::New(v14);
  *v26 = a2;
  *(v26 + 4) = v23;
  v27 = v25[1];
  if (v27)
  {
    *(v26 + 8) = *(v27 + 8);
    *(v27 + 8) = v26;
    v25[1] = v26;
  }

  else
  {
    v28 = a1[7];
    if (v28 != -1)
    {
      v14 = (*(a1[9] + 16 * v28 + 8) + 8);
    }

    *v14 = v26;
    *(v26 + 8) = 0;
    *v25 = v28;
    v25[1] = v26;
    a1[7] = v24;
  }

  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v56, 5);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "id=", 3);
    v30 = MEMORY[0x1B8C84C10](v29, v23);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " prev_id=", 9);
    v32 = MEMORY[0x1B8C84C10](v31, a6);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " nextstate=", 11);
    v34 = MEMORY[0x1B8C84C00](v33, a2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " weight=", 8);
    v35 = std::ostream::operator<<();
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " ilabel=", 8);
    v37 = MEMORY[0x1B8C84C00](v36, a3);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, " olabel=", 8);
    v39 = MEMORY[0x1B8C84C00](v38, a4);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " phone=", 7);
    MEMORY[0x1B8C84C00](v40, a7);
LABEL_15:
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v56);
  }

  return 1;
}

void kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ProcessNonemitting(void *a1, float a2)
{
  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v28, 5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Process non-emitting with cutoff=", 33);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v28);
  }

  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  do
  {
    std::deque<int>::push_back(a1 + 25, v4);
    v4 = *(v4 + 8);
  }

  while (v4);
  v5 = a1[30];
  if (!v5)
  {
    return;
  }

  do
  {
    v6 = v5 - 1;
    v27 = *(*(a1[26] + (((a1[29] + v6) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((a1[29] + v6) & 0x3FF));
    a1[30] = v6;
    std::deque<int>::__maybe_remove_back_spare[abi:ne200100](a1 + 25, 1);
    v7 = a1[9];
    v8 = *(v7 + 16 * (v27 % a1[8]));
    v9 = a1 + 6;
    if (v8 != -1)
    {
      v9 = (*(v7 + 16 * v8 + 8) + 8);
    }

      ;
    }

    v11 = *(i + 4);
    v12 = *a1 + 28 * (v11 - 1);
    if (*(v12 + 20) > a2)
    {
      goto LABEL_35;
    }

    v13 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::finalWeight(a1, &v27);
    *&v28[0].__locale_ = v13;
    LODWORD(v26) = 2139095040;
    if (v13 != INFINITY)
    {
      v14 = *(v12 + 24);
      if (v14 != -1)
      {
        v15 = v13 + *(v12 + 20);
        if (kaldi::g_kaldi_verbose_level >= 5)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v28, 5);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Exit subroutine state=", 22);
          v17 = MEMORY[0x1B8C84C00](v16, v27);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " nextstate=", 11);
          v19 = MEMORY[0x1B8C84C00](v18, *(v12 + 24));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " weight=", 8);
          std::ostream::operator<<();
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v28);
          v14 = *(v12 + 24);
        }

        if (kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(a1, v14, 0, 0, -1, v11, 0, v15))
        {
          LODWORD(v28[0].__locale_) = *(v12 + 24);
          std::deque<int>::push_front(a1 + 25, v28);
        }
      }
    }

    v20 = a1[16];
    v30 = 0;
    (*(*v20 + 136))(v20, v27, v28);
    while (1)
    {
      if (!v28[0].__locale_)
      {
        if (v30 >= v28[2].__locale_)
        {
          goto LABEL_33;
        }

LABEL_24:
        v21 = (v28[1].__locale_ + 16 * v30);
        goto LABEL_25;
      }

      if ((*(*v28[0].__locale_ + 24))(v28[0].__locale_))
      {
        break;
      }

      if (!v28[0].__locale_)
      {
        goto LABEL_24;
      }

      v21 = (*(*v28[0].__locale_ + 32))();
LABEL_25:
      v26 = *v21;
      v25 = HIDWORD(v26);
      v22 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::modifyArcForSubroutineEntry(a1, DWORD1(v26), &v25, *(v12 + 24));
      v24 = *(**(a1[5] + 8) + 4 * v26);
      v23 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ComputeWeight(a1, &v26, &v24, v11);
      if (v23 < a2 && kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(a1, v25, v26, DWORD1(v26), v22, v11, 0, v23))
      {
        std::deque<int>::push_front(a1 + 25, &v25);
      }

      if (v28[0].__locale_)
      {
        (*(*v28[0].__locale_ + 40))(v28[0].__locale_);
      }

      else
      {
        v30 = (v30 + 1);
      }
    }

    if (v28[0].__locale_)
    {
      (*(*v28[0].__locale_ + 8))();
      goto LABEL_35;
    }

LABEL_33:
    if (v29)
    {
      --*v29;
    }

LABEL_35:
    v5 = a1[30];
  }

  while (v5);
}

void sub_1B52B79E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ProcessEmitting(uint64_t a1, uint64_t a2, float a3)
{
  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v61, 5);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "Process emitting isym=", 22);
    MEMORY[0x1B8C84C00](v6, a2);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v61);
  }

  v7 = *(a1 + 56);
  if (v7 != -1)
  {
    v8 = *(a1 + 72);
    do
    {
      v9 = (v8 + 16 * v7);
      v9[1] = 0;
      v7 = *v9;
    }

    while (v7 != -1);
  }

  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  v60 = 0;
  v59 = 0.0;
  v58 = 0;
  kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::GetCutoff(a1, v10, &v60, &v59, &v58, a3);
  v12 = v11;
  v13 = (*(a1 + 180) * v60);
  if (*(a1 + 64) < v13)
  {
    kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(a1 + 48, v13);
  }

  if (!v58)
  {
    v19 = 1.0e10;
    if (!v10)
    {
      return v19;
    }

    goto LABEL_35;
  }

  v14 = *v58;
  v15 = *a1;
  v16 = v58[1] - 1;
  v17 = *(a1 + 128);
  v65 = 0;
  (*(*v17 + 136))(v17, v14, &v61);
  v18 = (v15 + 28 * v16 + 20);
  v19 = 1.0e10;
  while (1)
  {
    if (!v61.__locale_)
    {
      if (v65 >= v63)
      {
        goto LABEL_30;
      }

      goto LABEL_15;
    }

    if ((*(*v61.__locale_ + 24))(v61.__locale_))
    {
      break;
    }

    if (v61.__locale_)
    {
      v20 = (*(*v61.__locale_ + 32))();
      goto LABEL_16;
    }

LABEL_15:
    v20 = (v62 + 16 * v65);
LABEL_16:
    v21 = *v20;
    if (v21)
    {
      v22 = *(a1 + 40);
      v23 = *(v22 + 48) != v21 || a2 == 0;
      v24 = *(*(*(v22 + 8) + 24 * a2) + 4 * v21);
      if (!v23)
      {
        v24 = v24 + a3;
      }

      v25 = v59 + (v24 + (v20[2] + *v18));
      if (v25 < v19)
      {
        v19 = v25;
      }
    }

    if (v61.__locale_)
    {
      (*(*v61.__locale_ + 40))(v61.__locale_);
    }

    else
    {
      ++v65;
    }
  }

  if (v61.__locale_)
  {
    (*(*v61.__locale_ + 8))();
    if (!v10)
    {
      return v19;
    }

    goto LABEL_35;
  }

LABEL_30:
  if (v64)
  {
    --*v64;
  }

  if (!v10)
  {
    return v19;
  }

LABEL_35:
  while (2)
  {
    v26 = *(v10 + 4);
    v57 = *v10;
    v27 = *a1 + 28 * (v26 - 1);
    if (*(v27 + 20) >= v12)
    {
      goto LABEL_81;
    }

    v28 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::finalWeight(a1, &v57);
    *&v61.__locale_ = v28;
    v66[0] = 2139095040;
    if (v28 != INFINITY)
    {
      v29 = *(v27 + 24);
      if (v29 != -1)
      {
        v30 = *(a1 + 40);
        if (*(v30 + 48))
        {
          v31 = 1;
        }

        else
        {
          v31 = a2 == 0;
        }

        v32 = *(*(v30 + 8) + 24 * a2);
        v33 = *(v27 + 20);
        if (v31)
        {
          v34 = *v32;
        }

        else
        {
          v34 = *v32 + 0.0;
        }

        if (kaldi::g_kaldi_verbose_level >= 5)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&v61, 5);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "Exit subroutine state=", 22);
          v36 = MEMORY[0x1B8C84C00](v35, v57);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " nextstate=", 11);
          v38 = MEMORY[0x1B8C84C00](v37, *(v27 + 24));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " weight=", 8);
          std::ostream::operator<<();
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v61);
          v29 = *(v27 + 24);
        }

        kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(a1, v29, 0, 0, -1, *(v10 + 4), a2, v28 + (v33 + v34));
      }
    }

    v39 = *(a1 + 128);
    v65 = 0;
    (*(*v39 + 136))(v39, v57, &v61);
    while (2)
    {
      if (!v61.__locale_)
      {
        if (v65 >= v63)
        {
          goto LABEL_70;
        }

        goto LABEL_53;
      }

      if (!(*(*v61.__locale_ + 24))(v61.__locale_))
      {
        if (v61.__locale_)
        {
          v40 = (*(*v61.__locale_ + 32))();
          goto LABEL_54;
        }

LABEL_53:
        v40 = (v62 + 16 * v65);
LABEL_54:
        v66[0] = v40[3];
        v41 = *v40;
        if (v41)
        {
          v42 = *(a1 + 40);
          v43 = *(v42 + 48) != v41 || a2 == 0;
          v44 = v40[2];
          v45 = *(v27 + 20);
          v46 = *(*(v42 + 8) + 24 * a2);
          v47 = v43 ? *(v46 + 4 * v41) : *(v46 + 4 * v41) + a3;
          v48 = kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::modifyArcForSubroutineEntry(a1, *(v40 + 1), v66, *(v27 + 24));
          v49 = (v44 + v45) + v47;
          if (v49 < v19)
          {
            if ((v49 + v59) < v19)
            {
              v19 = v49 + v59;
            }

            kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(a1, v66[0], *v40, *(v40 + 1), v48, *(v10 + 4), a2, v49);
          }
        }

        if (v61.__locale_)
        {
          (*(*v61.__locale_ + 40))(v61.__locale_);
        }

        else
        {
          ++v65;
        }

        continue;
      }

      break;
    }

    if (v61.__locale_)
    {
      (*(*v61.__locale_ + 8))();
      goto LABEL_72;
    }

LABEL_70:
    if (v64)
    {
      --*v64;
    }

LABEL_72:
    v50 = *(a1 + 40);
    if (*(v50 + 48))
    {
      v51 = 1;
    }

    else
    {
      v51 = a2 == 0;
    }

    v52 = *(*(v50 + 8) + 24 * a2);
    v53 = *v52;
    if (!v51)
    {
      v53 = *v52 + 0.0;
    }

    v54 = *(v27 + 20) + v53;
    if (v54 < v19)
    {
      if ((v54 + v59) < v19)
      {
        v19 = v54 + v59;
      }

      kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::insertTracebackLink(a1, v57, a2, 0, *(v27 + 24), *(v10 + 4), a2, v54);
    }

LABEL_81:
    v55 = *(v10 + 8);
    *(v10 + 8) = *(a1 + 96);
    *(a1 + 96) = v10;
    v10 = v55;
    if (v55)
    {
      continue;
    }

    return v19;
  }
}

void sub_1B52B80C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void std::deque<int>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = (v5 - v2) >> 3;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v6 = 512;
  }

  else
  {
    if (v4 != 2)
    {
      return;
    }

    v6 = 1024;
  }

  a1[4] = v6;
}

uint64_t kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::GetBestPath(uint64_t a1, uint64_t a2)
{
  if ((kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ReachedFinal(a1) & 1) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "INFO");
    v26 = fst::LogMessage::LogMessage(&v28, &__p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Failed to reach final state", 27);
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    return 0;
  }

  v4 = *(a1 + 48);
  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = INFINITY;
  do
  {
    v7 = *a1 + 28 * (v4[1] - 1);
    v8 = *(v7 + 20);
    (*(**(a1 + 128) + 32))(*(a1 + 128), *v4);
    v10 = NAN;
    if (v8 != -INFINITY && v9 != -INFINITY)
    {
      v11 = v9 == INFINITY || v8 == INFINITY;
      v12 = v8 + v9;
      if (v11)
      {
        v10 = INFINITY;
      }

      else
      {
        v10 = v12;
      }
    }

    *&__p = v10;
    LODWORD(v28) = 2139095040;
    v13 = v10 != INFINITY && v10 < v6;
    if (v13 && *(v7 + 24) == -1)
    {
      v5 = v4[1];
      v6 = v10;
    }

    v4 = *(v4 + 1);
  }

  while (v4);
  if (!v5)
  {
    return 0;
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v14 = (*a1 + 28 * (v5 - 1));
  do
  {
    v15 = *a1 + 28 * (v5 - 1);
    v16 = *(v15 + 12);
    if (v16)
    {
      v17 = *(*a1 + 28 * (v16 - 1) + 20);
    }

    else
    {
      v17 = 0.0;
    }

    v18 = *(v15 + 20);
    v19 = v18 - v17;
    v20 = *v15;
    v21 = *(v15 + 8);
    LODWORD(v28) = *(v15 + 4) + (*(v15 + 16) << 8);
    HIDWORD(v28) = v21;
    *&v29 = v18;
    *(&v29 + 1) = v19 - v18;
    v30 = v20;
    std::vector<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>::push_back[abi:ne200100](&__p, &v28);
    v5 = *(v15 + 12);
  }

  while (v5);
  v32 -= 20;
  v22 = (*(*a2 + 200))(a2);
  (*(*a2 + 176))(a2, v22);
  if (v32 - __p >= 1)
  {
    v23 = (v32 - __p) / 0x14uLL + 1;
    v24 = 20 * ((v32 - __p) / 0x14uLL);
    do
    {
      v28 = *(__p + v24 - 20);
      v29 = *(__p + v24 - 12);
      v30 = *(__p + v24 - 4);
      v30 = (*(*a2 + 200))(a2);
      if (SHIDWORD(v28) >= 1 && HIDWORD(v28) <= *(a1 + 136))
      {
        HIDWORD(v28) = 0;
      }

      (*(*a2 + 208))(a2, v22, &v28);
      v22 = v30;
      --v23;
      v24 -= 20;
    }

    while (v23 > 1);
  }

  v28 = COERCE_UNSIGNED_INT((*(**(a1 + 128) + 32))(*(a1 + 128), *v14));
  (*(*a2 + 184))(a2, v22, &v28);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  return 1;
}

void sub_1B52B866C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::NewToken(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, float a8)
{
  v8 = *(a1 + 16);
  if (*(a1 + 8) == v8)
  {
    v10 = *(a1 + 32);
    if (v10 >= *(a1 + 188))
    {
      exception = __cxa_allocate_exception(0x10uLL);
      kaldi::quasar::TooManyTokensError::TooManyTokensError(exception, "Ran out of token storage");
    }

    v9 = v10 + 1;
    *(a1 + 32) = v9;
  }

  else
  {
    v9 = *(v8 - 4);
    *(a1 + 16) = v8 - 4;
  }

  v11 = *a1 + 28 * (v9 - 1);
  *v11 = a2;
  *(v11 + 4) = a3;
  *(v11 + 8) = a4;
  *(v11 + 12) = a6;
  *(v11 + 20) = a8;
  *(v11 + 16) = a7;
  *(v11 + 24) = a5;
  return v9;
}

uint64_t kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::New(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 48) = *(result + 8);
  return result;
}

float kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::finalWeight(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 192) != 1)
  {
    return (*(**(a1 + 128) + 32))(*(a1 + 128), *a2);
  }

  v4 = *(a1 + 128);
  v5 = *a2;
  v12 = 0;
  (*(*v4 + 136))(v4, v5, v10);
  if (v10[0])
  {
    if (!(*(*v10[0] + 24))(v10[0]))
    {
      goto LABEL_12;
    }
  }

  else if (v12 < v10[2])
  {
LABEL_12:
    v6 = INFINITY;
    goto LABEL_14;
  }

  v7 = *(a1 + 144);
  v8 = *(a1 + 152);
  if (v7 != v8)
  {
    while (*v7 != *a2)
    {
      if (++v7 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  if (v7 != v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v6 = 0.0;
LABEL_14:
  if (v10[0])
  {
    (*(*v10[0] + 8))(v10[0]);
  }

  else if (v11)
  {
    --*v11;
  }

  return v6;
}

void sub_1B52B8A78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
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

uint64_t kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::modifyArcForSubroutineEntry(uint64_t a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  v5 = a2 - 1;
  if (a2 < 1 || *(a1 + 136) < a2)
  {
    return a4;
  }

  v8 = *a3;
  *a3 = *(*(a1 + 144) + 4 * v5);
  if (kaldi::g_kaldi_verbose_level >= 5)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, 5);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "subroutine=", 11);
    v10 = MEMORY[0x1B8C84C10](v9, a2);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " prevnextstate=", 15);
    v12 = MEMORY[0x1B8C84C00](v11, v8);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " nextstate=", 11);
    MEMORY[0x1B8C84C00](v13, *(*(a1 + 144) + 4 * v5));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
  }

  if (a4 != -1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
    v14 = fst::LogMessage::LogMessage(&v21, __p);
    v15 = fst::cerr(v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Cannot enter subroutine=", 24);
    v17 = MEMORY[0x1B8C84C10](v16, a2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " ret_state=", 11);
    v19 = MEMORY[0x1B8C84C00](v18, a4);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " (nesting not allowed)", 22);
    fst::LogMessage::~LogMessage(&v21);
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v8;
}

void sub_1B52B8C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ComputeWeight(void *a1, uint64_t a2, float *a3, int a4)
{
  if (!a4)
  {
    v7 = *(a2 + 8);
    result = NAN;
    if (v7 == -INFINITY)
    {
      return result;
    }

    v9 = *a3;
    result = NAN;
    if (*a3 == -INFINITY)
    {
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(*a1 + 28 * (a4 - 1) + 20);
  result = NAN;
  if (v4 != -INFINITY)
  {
    v6 = *(a2 + 8);
    result = NAN;
    if (v6 != -INFINITY)
    {
      v7 = INFINITY;
      v8 = v4 == INFINITY || v6 == INFINITY;
      if (v8 || (v7 = v4 + v6, result = NAN, (v4 + v6) != -INFINITY))
      {
        v9 = *a3;
        result = NAN;
        if (*a3 != -INFINITY)
        {
LABEL_13:
          result = INFINITY;
          v10 = v9 == INFINITY || v7 == INFINITY;
          v11 = v7 + v9;
          if (!v10)
          {
            return v11;
          }
        }
      }
    }
  }

  return result;
}

void kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::GetCutoff(uint64_t a1, uint64_t a2, void *a3, float *a4, void *a5, float a6)
{
  v7 = a2;
  if (*(a1 + 172) == 0x7FFFFFFF)
  {
    v9 = 0;
    v10 = 1.0e10;
    if (a2)
    {
      do
      {
        v11 = *(*a1 + 28 * (*(v7 + 4) - 1) + 20);
        if (v11 >= v10)
        {
          v12 = 1;
        }

        else
        {
          v10 = *(*a1 + 28 * (*(v7 + 4) - 1) + 20);
          v12 = a5 == 0;
        }

        if (!v12)
        {
          *a5 = v7;
          v10 = v11;
        }

        v7 = *(v7 + 8);
        ++v9;
      }

      while (v7);
    }

    if (a3)
    {
      *a3 = v9;
    }

    if (a4)
    {
      *a4 = *(a1 + 168);
    }
  }

  else
  {
    v13 = (a1 + 248);
    *(a1 + 256) = *(a1 + 248);
    v14 = 0;
    v15 = 1.0e10;
    if (a2)
    {
      do
      {
        v16 = *(*a1 + 28 * (*(v7 + 4) - 1) + 20);
        v18 = *(a1 + 256);
        v17 = *(a1 + 264);
        if (v18 >= v17)
        {
          v20 = *v13;
          v21 = v18 - *v13;
          v22 = v21 >> 2;
          v23 = (v21 >> 2) + 1;
          if (v23 >> 62)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v24 = v17 - v20;
          if (v24 >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1 + 248, v25);
          }

          *(4 * v22) = v16;
          v19 = 4 * v22 + 4;
          memcpy(0, v20, v21);
          v26 = *(a1 + 248);
          *(a1 + 248) = 0;
          *(a1 + 256) = v19;
          *(a1 + 264) = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v18 = v16;
          v19 = (v18 + 1);
        }

        *(a1 + 256) = v19;
        if (v16 >= v15)
        {
          v27 = 1;
        }

        else
        {
          v15 = v16;
          v27 = a5 == 0;
        }

        if (!v27)
        {
          *a5 = v7;
          v15 = v16;
        }

        v7 = *(v7 + 8);
        ++v14;
      }

      while (v7);
    }

    if (a3)
    {
      *a3 = v14;
    }

    v28 = *(a1 + 248);
    v29 = *(a1 + 256);
    v30 = v29 - v28;
    v31 = *(a1 + 172);
    if (v30 <= v31)
    {
      if (a4)
      {
        *a4 = *(a1 + 168);
      }
    }

    else
    {
      if (v30 > *(a1 + 272))
      {
        *(a1 + 272) = v30;
      }

      v32 = &v28[v31];
      if (v32 != v29)
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v28, v32, v29, a6);
        v32 = (*(a1 + 248) + 4 * *(a1 + 172));
      }

      v33 = *(a1 + 168);
      v34 = v15 + v33;
      if (*v32 < (v15 + v33))
      {
        v34 = *v32;
      }

      if (a4)
      {
        v35 = *(a1 + 176);
        if (((v34 - v15) + v35) < v33)
        {
          v33 = (v34 - v15) + v35;
        }

        *a4 = v33;
      }
    }
  }
}

void std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float *a3, float a4)
{
  while (a3 != a2)
  {
    v4 = a3 - a1;
    if (v4 < 2)
    {
      break;
    }

    if (v4 == 3)
    {
      v37 = a1[1];
      v38 = *(a3 - 1);
      if (v37 < v38)
      {
        v39 = *(a1 + 1);
      }

      else
      {
        v39 = *(a3 - 1);
      }

      if (v37 < v38)
      {
        v37 = *(a3 - 1);
      }

      *(a3 - 1) = v37;
      *(a1 + 1) = v39;
      v40 = *(a3 - 1);
      if (v40 < *a1)
      {
        v41 = *(a3 - 1);
      }

      else
      {
        v41 = *a1;
      }

      if (v40 < *a1)
      {
        v40 = *a1;
      }

      *(a3 - 1) = v40;
      v42 = a1[1];
      if (v41 < v42)
      {
        v41 = a1[1];
      }

      else
      {
        *a1 = v42;
      }

      a1[1] = v41;
      return;
    }

    if (v4 == 2)
    {
      v43 = *(a3 - 1);
      v44 = *a1;
      if (v43 < *a1)
      {
        *a1 = v43;
        *(a3 - 1) = v44;
      }

      return;
    }

    if (v4 <= 7)
    {
      std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(a1, a3, a4);
      return;
    }

    v5 = &a1[(a3 - a1) >> 3];
    v6 = a3 - 1;
    v7 = *(a3 - 1);
    v8 = *v5;
    if (*v5 < v7)
    {
      v9 = *v5;
    }

    else
    {
      v9 = *(a3 - 1);
    }

    if (*v5 < v7)
    {
      v10 = *(a3 - 1);
    }

    else
    {
      v10 = *v5;
    }

    *v6 = v10;
    *v5 = v9;
    v11 = *v6;
    v12 = *a1;
    if (*v6 < *a1)
    {
      v13 = *v6;
    }

    else
    {
      v13 = *a1;
    }

    if (*v6 < *a1)
    {
      v14 = *a1;
    }

    else
    {
      v14 = *v6;
    }

    *v6 = v14;
    v15 = *v5;
    v16 = *v5;
    if (v13 >= *v5)
    {
      *a1 = v15;
      v16 = v13;
    }

    v17 = v11 >= v12;
    if (v13 >= v15)
    {
      v17 = 1;
    }

    *v5 = v16;
    if (v8 >= v7)
    {
      v17 = 1;
    }

    a4 = *a1;
    if (*a1 >= v16)
    {
      v18 = a3 - 1;
      while (--v18 != a1)
      {
        if (*v18 < v16)
        {
          *a1 = *v18;
          *v18 = a4;
          if (v17)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          goto LABEL_33;
        }
      }

      v28 = a1 + 1;
      if (a4 >= *v6)
      {
        while (v28 != v6)
        {
          v29 = *v28;
          if (a4 < *v28)
          {
            *v28++ = *v6;
            *v6 = v29;
            goto LABEL_65;
          }

          ++v28;
        }

        return;
      }

LABEL_65:
      if (v28 == v6)
      {
        return;
      }

      while (1)
      {
        v32 = *a1;
        do
        {
          v33 = *v28++;
          a4 = v33;
        }

        while (v32 >= v33);
        v34 = v28 - 1;
        do
        {
          v35 = *--v6;
          v36 = v35;
        }

        while (v32 < v35);
        if (v34 >= v6)
        {
          break;
        }

        *v34 = v36;
        *v6 = a4;
      }

      a1 = v28 - 1;
      if (v34 > a2)
      {
        return;
      }
    }

    else
    {
      v18 = a3 - 1;
LABEL_33:
      v19 = a1 + 1;
      if (a1 + 1 >= v18)
      {
        v23 = a1 + 1;
      }

      else
      {
        v20 = a1 + 1;
        while (1)
        {
          v21 = *v5;
          do
          {
            v22 = *v20++;
            a4 = v22;
          }

          while (v22 < v21);
          v23 = v20 - 1;
          do
          {
            v24 = *--v18;
            v25 = v24;
          }

          while (v24 >= v21);
          if (v23 >= v18)
          {
            break;
          }

          *v23 = v25;
          *v18 = a4;
          ++v17;
          if (v23 == v5)
          {
            v5 = v18;
          }
        }
      }

      if (v23 != v5)
      {
        a4 = *v5;
        v26 = *v23;
        if (*v5 < *v23)
        {
          *v23 = a4;
          *v5 = v26;
          ++v17;
        }
      }

      if (v23 == a2)
      {
        return;
      }

      if (!v17)
      {
        if (v23 <= a2)
        {
          v30 = v23 + 1;
          while (v30 != a3)
          {
            v31 = *(v30 - 1);
            a4 = *v30++;
            if (a4 < v31)
            {
              goto LABEL_49;
            }
          }
        }

        else
        {
          while (v19 != v23)
          {
            v27 = *(v19 - 1);
            a4 = *v19++;
            if (a4 < v27)
            {
              goto LABEL_49;
            }
          }
        }

        return;
      }

LABEL_49:
      if (v23 <= a2)
      {
        a1 = v23 + 1;
      }

      else
      {
        a3 = v23;
      }
    }
  }
}

float std::__selection_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(float *a1, float *a2, float result)
{
  while (a1 != a2 - 1)
  {
    v3 = a1++;
    if (v3 != a2 && a1 != a2)
    {
      result = *v3;
      v4 = a1;
      v5 = v3;
      v6 = a1;
      do
      {
        v7 = *v6++;
        v8 = v7;
        if (v7 < result)
        {
          result = v8;
          v5 = v4;
        }

        v4 = v6;
      }

      while (v6 != a2);
      if (v5 != v3)
      {
        result = *v3;
        *v3 = *v5;
        *v5 = result;
      }
    }
  }

  return result;
}

uint64_t kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::ReachedFinal(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v3 = *a1 + 28 * (v1[1] - 1);
    v4 = *(v3 + 20);
    (*(**(a1 + 128) + 32))(*(a1 + 128), *v1);
    v6 = NAN;
    if (v4 != -INFINITY && v5 != -INFINITY)
    {
      v6 = INFINITY;
      v7 = v5 == INFINITY || v4 == INFINITY;
      v8 = v4 + v5;
      if (!v7)
      {
        v6 = v8;
      }
    }

    if (v6 != INFINITY && *(v3 + 24) == -1)
    {
      break;
    }

    v1 = *(v1 + 1);
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t fst::ConvertLattice<fst::LatticeWeightTpl<float>,fst::TropicalWeightTpl<float>>(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 224))(a2);
  v4 = (*(*a1 + 160))(a1);
  v5 = v4;
  if (v4 >= 1)
  {
    v6 = v4;
    do
    {
      (*(*a2 + 200))(a2);
      --v6;
    }

    while (v6);
  }

  v7 = (*(*a1 + 24))(a1);
  result = (*(*a2 + 176))(a2, v7);
  if (v5 < 1)
  {
    return result;
  }

  v9 = 0;
  do
  {
    (*(*a1 + 32))(&v27, a1, v9);
    LODWORD(v21) = HIDWORD(v27);
    LODWORD(v24[0]) = v27;
    v30 = 2139095040;
    v29 = INFINITY;
    if (*&v27 != INFINITY || (v10.n128_u32[0] = v21, *&v21 != v29))
    {
      v10.n128_u32[0] = 2143289344;
      if (*&v27 != -INFINITY && *(&v27 + 1) != -INFINITY)
      {
        v10.n128_u32[0] = 2139095040;
        if (*(&v27 + 1) != INFINITY && *&v27 != INFINITY)
        {
          v10.n128_f32[0] = *&v27 + *(&v27 + 1);
        }
      }

      (*(*a2 + 184))(a2, v9, v10);
    }

    v26 = 0;
    (*(*a1 + 136))(a1, v9, v24, v10);
    while (1)
    {
      result = v24[0];
      if (!v24[0])
      {
        if (v26 >= v24[2])
        {
          goto LABEL_35;
        }

LABEL_22:
        v13 = v24[1] + 20 * v26;
        goto LABEL_23;
      }

      v12 = (*(*v24[0] + 24))(v24[0]);
      result = v24[0];
      if (v12)
      {
        break;
      }

      if (!v24[0])
      {
        goto LABEL_22;
      }

      v13 = (*(*v24[0] + 32))();
LABEL_23:
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 12);
      v17 = *(v13 + 16);
      *&v21 = v15;
      v30 = LODWORD(v16);
      v29 = INFINITY;
      v28 = 2139095040;
      v18 = NAN;
      if (v15 != -INFINITY && v16 != -INFINITY)
      {
        v18 = INFINITY;
        v19 = v16 == INFINITY || v15 == INFINITY;
        v20 = v15 + v16;
        if (!v19)
        {
          v18 = v20;
        }
      }

      v22 = v18;
      v21 = v14;
      v23 = v17;
      (*(*a2 + 208))(a2, v9, &v21);
      if (v24[0])
      {
        (*(*v24[0] + 40))(v24[0]);
      }

      else
      {
        ++v26;
      }
    }

    if (v24[0])
    {
      result = (*(*v24[0] + 8))();
      goto LABEL_37;
    }

LABEL_35:
    if (v25)
    {
      --*v25;
    }

LABEL_37:
    v9 = (v9 + 1);
  }

  while (v9 != v5);
  return result;
}

void sub_1B52B9800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _DWORD *a14)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  else if (a14)
  {
    --*a14;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::RmWeightMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1)
{
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v3 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v4 = 0;
      do
      {
        (*(*a1 + 296))(a1, v4, &v10);
        while (!(*(*v10 + 24))(v10))
        {
          v5 = (*(*v10 + 32))(v10);
          v12 = *(v5 + 8);
          v11 = 2139095040;
          v6 = INFINITY;
          if (v12 != INFINITY)
          {
            v6 = 0.0;
          }

          v7 = *(v5 + 12);
          v9[0] = *v5;
          v9[1] = LODWORD(v6) | (v7 << 32);
          (*(*v10 + 88))(v10, v9);
          (*(*v10 + 40))(v10);
        }

        if (v10)
        {
          (*(*v10 + 8))();
        }

        LODWORD(v9[0]) = (*(*a1 + 32))(a1, v4);
        LODWORD(v10) = 2139095040;
        v8.n128_u32[0] = 2139095040;
        if (*v9 != INFINITY)
        {
          v8.n128_f32[0] = 0.0;
        }

        (*(*a1 + 184))(a1, v4, v8);
        v4 = (v4 + 1);
      }

      while (v4 < (*(*a1 + 160))(a1));
    }

    return (*(*a1 + 192))(a1, v3 & 0x3FFCFFFF0007 | 0x200000000, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B52B9B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsLocalClass(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  if ((*(*a2 + 24))(a2) != -1)
  {
    *(a1 + 2) = (*(**a1 + 200))();
    fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(a1);
    v4 = (*(**a1 + 160))();
    if (v4 >= 1)
    {
      v5 = 0;
      do
      {
        for (i = 0; i < (*(**a1 + 40))(*a1, v5); ++i)
        {
          fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(a1, v5, i);
        }

        v5 = (v5 + 1);
      }

      while (v5 != v4);
    }

    fst::Connect<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(a2);
  }

  return a1;
}

void sub_1B52B9CEC(_Unwind_Exception *exception_object)
{
  v4 = v1[5];
  if (v4)
  {
    v1[6] = v4;
    operator delete(v4);
  }

  v5 = *v2;
  if (*v2)
  {
    v1[3] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::InitNumArcs(void *a1)
{
  v2 = (*(**a1 + 160))(*a1);
  std::vector<int>::resize((a1 + 2), v2);
  std::vector<int>::resize((a1 + 5), v2);
  result = (*(**a1 + 24))();
  ++*(a1[2] + 4 * result);
  if (v2 < 1)
  {
    return result;
  }

  for (i = 0; i != v2; ++i)
  {
    LODWORD(v9[0]) = (*(**a1 + 32))(*a1, i);
    v12 = 2139095040;
    if (*v9 != INFINITY)
    {
      ++*(a1[5] + 4 * i);
    }

    v5 = *a1;
    v11 = 0;
    (*(*v5 + 136))(v5, i, v9);
    while (1)
    {
      result = v9[0];
      if (!v9[0])
      {
        if (v11 >= v9[2])
        {
          goto LABEL_17;
        }

LABEL_11:
        v8 = 0;
        v7 = v9[1] + 16 * v11;
        goto LABEL_12;
      }

      v6 = (*(*v9[0] + 24))(v9[0]);
      result = v9[0];
      if (v6)
      {
        break;
      }

      if (!v9[0])
      {
        goto LABEL_11;
      }

      v7 = (*(*v9[0] + 32))();
      v8 = v9[0];
LABEL_12:
      ++*(a1[2] + 4 * *(v7 + 12));
      ++*(a1[5] + 4 * i);
      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

      else
      {
        ++v11;
      }
    }

    if (v9[0])
    {
      result = (*(*v9[0] + 8))();
      continue;
    }

LABEL_17:
    if (v10)
    {
      --*v10;
    }
  }

  return result;
}

void sub_1B52B9FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    quasar::InverseTextNormalizer::getNumTokens((v9 + 24));
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEps(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v15 = 0;
  (*(*v6 + 136))(v6, a2, v13);
  if (!v13[0])
  {
    v15 = a3;
    v8 = a3;
LABEL_7:
    v7 = *(v13[1] + 16 * v8);
    goto LABEL_8;
  }

  (*(*v13[0] + 64))(v13[0], a3);
  if (!v13[0])
  {
    v8 = v15;
    goto LABEL_7;
  }

  v7 = *(*(*v13[0] + 32))(v13[0]);
  if (v13[0])
  {
    v12 = v7;
    (*(*v13[0] + 8))(v13[0]);
    v7 = v12;
    goto LABEL_10;
  }

LABEL_8:
  if (v14)
  {
    --*v14;
  }

LABEL_10:
  if (HIDWORD(v7) != a2 && *(a1 + 2) != HIDWORD(v7))
  {
    v10 = *(a1[5] + 4 * (*(&v7 + 1) >> 32));
    if (*(a1[2] + 4 * (*(&v7 + 1) >> 32)) != 1 || v10 < 2)
    {
      if (v10 == 1)
      {
        fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern2(a1, a2, a3, v7, *(&v7 + 1));
      }
    }

    else
    {
      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern1(a1, a2, a3, v7, *(&v7 + 1));
    }
  }
}

void sub_1B52BA170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>();
  }

  else
  {
    fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::SequenceComposeFilter<fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::Matcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&a12);
  }

  _Unwind_Resume(a1);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern1(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v45 = a5;
  v9 = HIDWORD(a5);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  (*(**a1 + 296))();
  v10 = a5 >> 32;
  v11 = INFINITY;
  v12 = INFINITY;
  while (!(*(*v40 + 24))(v40))
  {
    v39 = *(*(*v40 + 32))(v40);
    if (HIDWORD(v39) != *(a1 + 2))
    {
      if (fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v44, &v39, &v38))
      {
        v14 = NAN;
        v13.n128_u32[0] = -8388608;
        if (v12 != -INFINITY)
        {
          v13.n128_u32[0] = DWORD2(v39);
          v14 = NAN;
          if (*(&v39 + 2) != -INFINITY)
          {
            if (v12 >= *(&v39 + 2))
            {
              v14 = *(&v39 + 2);
            }

            else
            {
              v14 = v12;
            }
          }
        }

        --*(a1[5] + 4 * v10);
        --*(a1[2] + 4 * SHIDWORD(v39));
        HIDWORD(v39) = *(a1 + 2);
        (*(*v40 + 88))(v40, &v39, v13);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](&v41, &v38);
        v15 = v11;
      }

      else
      {
        v15 = NAN;
        v14 = v12;
        if (v11 != -INFINITY)
        {
          v15 = NAN;
          v14 = v12;
          if (*(&v39 + 2) != -INFINITY)
          {
            if (v11 >= *(&v39 + 2))
            {
              v15 = *(&v39 + 2);
            }

            else
            {
              v15 = v11;
            }

            v14 = v12;
          }
        }
      }

      v11 = v15;
      v12 = v14;
    }

    (*(*v40 + 40))(v40);
  }

  if (v40)
  {
    (*(*v40 + 8))(v40);
  }

  v16.n128_f32[0] = (*(**a1 + 32))(*a1, v9);
  LODWORD(v39) = v16.n128_u32[0];
  LODWORD(v38) = 2139095040;
  if (v16.n128_f32[0] != INFINITY)
  {
    if (v44)
    {
      if (v11 >= v16.n128_f32[0])
      {
        v27 = v16.n128_f32[0];
      }

      else
      {
        v27 = v11;
      }

      if (v16.n128_f32[0] == -INFINITY || v11 == -INFINITY)
      {
        v11 = NAN;
      }

      else
      {
        v11 = v27;
      }
    }

    else
    {
      v17 = NAN;
      if (*&v45 != -INFINITY && v16.n128_f32[0] != -INFINITY)
      {
        if (*&v45 == INFINITY || v16.n128_f32[0] == INFINITY)
        {
          v17 = INFINITY;
        }

        else
        {
          v17 = v16.n128_f32[0] + *&v45;
        }
      }

      if (v12 >= v16.n128_f32[0])
      {
        v19 = v16.n128_f32[0];
      }

      else
      {
        v19 = v12;
      }

      if (v16.n128_f32[0] == -INFINITY || v12 == -INFINITY)
      {
        v12 = NAN;
      }

      else
      {
        v12 = v19;
      }

      LODWORD(v39) = (*(**a1 + 32))(*a1, a2);
      LODWORD(v38) = 2139095040;
      if (*&v39 == INFINITY)
      {
        ++*(a1[5] + 4 * a2);
      }

      v22 = *a1;
      v23.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
      if (v23.n128_f32[0] >= v17)
      {
        v24 = v17;
      }

      else
      {
        v24 = v23.n128_f32[0];
      }

      v26 = v17 == -INFINITY || v23.n128_f32[0] == -INFINITY;
      v23.n128_u32[0] = 2143289344;
      if (!v26)
      {
        v23.n128_f32[0] = v24;
      }

      (*(*v22 + 184))(v22, a2, v23);
      --*(a1[5] + 4 * v10);
      (*(**a1 + 184))(*a1, v9, INFINITY);
    }
  }

  *&v39 = v12;
  LODWORD(v38) = 2139095040;
  v16.n128_f32[0] = v12;
  if (v12 != INFINITY)
  {
    *&v39 = v11;
    LODWORD(v38) = 2139095040;
    v16.n128_f32[0] = v11;
    if (v11 == INFINITY)
    {
      --*(a1[5] + 4 * a2);
      --*(a1[2] + 4 * SHIDWORD(v45));
      HIDWORD(v45) = *(a1 + 2);
      (*(**a1 + 296))(v16);
      (*(*v39 + 64))(v39, a3);
      (*(*v39 + 88))(v39, &v44);
      if (v39)
      {
        (*(*v39 + 8))(v39);
      }
    }

    else
    {
      if (v12 >= v11)
      {
        v30 = v11;
      }

      else
      {
        v30 = v12;
      }

      v32 = v11 == -INFINITY || v12 == -INFINITY;
      v33 = NAN;
      if (v32)
      {
        v34 = NAN;
      }

      else
      {
        v34 = v30;
      }

      if (v11 != -INFINITY && v12 != -INFINITY && (LODWORD(v30) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v33 = INFINITY;
        if (v11 != INFINITY)
        {
          v33 = v11 - v34;
        }
      }

      fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight(a1, a2, a3, v33);
    }
  }

  v35 = v41;
  if (v42 != v41)
  {
    v36 = 0;
    v37 = 0;
    do
    {
      ++*(a1[5] + 4 * a2);
      ++*(a1[2] + 4 * *&v35[v36 + 12]);
      (*(**a1 + 208))(*a1, a2, v16);
      ++v37;
      v35 = v41;
      v36 += 16;
    }

    while (v37 < (v42 - v41) >> 4);
  }

  if (v35)
  {
    v42 = v35;
    operator delete(v35);
  }
}

void sub_1B52BA87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::RemoveEpsPattern2(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *&a5;
  v27 = a4;
  v28 = a5;
  v10 = a5 >> 32;
  v11 = *(a1[2] + 4 * (a5 >> 32));
  v12 = HIDWORD(a5);
  v13 = (*(**a1 + 32))(*a1, HIDWORD(a5));
  v25[0] = v13;
  v23[0] = 2139095040;
  if (v13 != INFINITY)
  {
    if (a4)
    {
      return;
    }

    v14 = NAN;
    if (v5 != -INFINITY && v13 != -INFINITY)
    {
      v15 = v5 == INFINITY || v13 == INFINITY;
      v16 = v13 + v5;
      if (v15)
      {
        v14 = INFINITY;
      }

      else
      {
        v14 = v16;
      }
    }

    v25[0] = (*(**a1 + 32))(*a1, a2);
    v23[0] = 2139095040;
    if (v25[0] == INFINITY)
    {
      ++*(a1[5] + 4 * a2);
    }

    v17 = *a1;
    v18.n128_f32[0] = (*(**a1 + 32))(*a1, a2);
    if (v18.n128_f32[0] >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18.n128_f32[0];
    }

    v21 = v14 == -INFINITY || v18.n128_f32[0] == -INFINITY;
    v18.n128_u32[0] = 2143289344;
    if (!v21)
    {
      v18.n128_f32[0] = v19;
    }

    (*(*v17 + 184))(v17, a2, v18);
    if (v11 == 1)
    {
      --*(a1[5] + 4 * v10);
      (*(**a1 + 184))(*a1, v12, INFINITY);
    }

    goto LABEL_36;
  }

  (*(**a1 + 296))(*a1, v12, &v26);
  while (*((*(*v26 + 32))(v26) + 12) == *(a1 + 2))
  {
    (*(*v26 + 40))(v26);
  }

  *v25 = *(*(*v26 + 32))(v26);
  CanCombineArcs = fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(a1, &v27, v25, v23);
  if (CanCombineArcs)
  {
    if (v11 == 1)
    {
      --*(a1[5] + 4 * v10);
      --*(a1[2] + 4 * SLODWORD(v25[3]));
      v25[3] = *(a1 + 2);
      (*(*v26 + 88))(v26, v25);
    }

    ++*(a1[5] + 4 * a2);
    ++*(a1[2] + 4 * v24);
    (*(**a1 + 208))(*a1, a2, v23);
  }

  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  if (CanCombineArcs)
  {
LABEL_36:
    --*(a1[5] + 4 * a2);
    --*(a1[2] + 4 * v10);
    HIDWORD(v28) = *(a1 + 2);
    (*(**a1 + 296))(*a1);
    (*(**v25 + 64))(*v25, a3);
    (*(**v25 + 88))(*v25, &v27);
    if (*v25)
    {
      (*(**v25 + 8))(*v25);
    }
  }
}

void sub_1B52BADF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 8))(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::CanCombineArcs(uint64_t a1, float *a2, float *a3, uint64_t a4)
{
  if (*a2)
  {
    v4 = *a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    return 0;
  }

  if (*(a2 + 1) && *(a3 + 1) != 0)
  {
    return 0;
  }

  v6 = a2[2];
  v7 = NAN;
  if (v6 != -INFINITY)
  {
    v8 = a3[2];
    v7 = NAN;
    if (v8 != -INFINITY)
    {
      v7 = INFINITY;
      v9 = v8 == INFINITY || v6 == INFINITY;
      v10 = v6 + v8;
      if (!v9)
      {
        v7 = v10;
      }
    }
  }

  *(a4 + 8) = v7;
  v11 = *a3;
  v12 = *(a2 + 1);
  if (*a2)
  {
    v11 = *a2;
  }

  *a4 = v11;
  v13 = *(a3 + 1);
  if (v12)
  {
    v13 = v12;
  }

  *(a4 + 4) = v13;
  *(a4 + 12) = a3[3];
  return 1;
}

uint64_t fst::RemoveEpsLocalClass<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ReweightPlusDefault<fst::TropicalWeightTpl<float>>>::Reweight(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  (*(**a1 + 296))(*a1, a2, &v18);
  (*(*v18 + 64))(v18, a3);
  v7 = *(*(*v18 + 32))(v18);
  v17 = v7;
  v7.n128_u32[0] = v7.n128_u32[2];
  v8 = NAN;
  if (v7.n128_f32[2] != -INFINITY && a4 != -INFINITY)
  {
    v8 = INFINITY;
    v9 = v17.n128_f32[2] == INFINITY || a4 == INFINITY;
    v7.n128_f32[0] = a4 + v17.n128_f32[2];
    if (!v9)
    {
      v8 = a4 + v17.n128_f32[2];
    }
  }

  v17.n128_f32[2] = v8;
  (*(*v18 + 88))(v18, &v17, v7);
  (*(**a1 + 296))(*a1, v17.n128_u32[3], &v16);
  while (!(*(*v16 + 24))(v16))
  {
    *v15 = *(*(*v16 + 32))(v16);
    if (LODWORD(v15[3]) != *(a1 + 2))
    {
      v10 = NAN;
      if (v15[2] != -INFINITY)
      {
        v11 = v15[2] - a4;
        if (v15[2] == INFINITY)
        {
          v11 = INFINITY;
        }

        if ((LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v10 = v11;
        }
      }

      v15[2] = v10;
      (*(*v16 + 88))(v16, v15);
    }

    (*(*v16 + 40))(v16);
  }

  if (v16)
  {
    (*(*v16 + 8))(v16);
  }

  v12 = (*(**a1 + 32))(*a1, v17.n128_u32[3]);
  v15[0] = v12;
  LODWORD(v16) = 2139095040;
  if (v12 != INFINITY)
  {
    v13 = NAN;
    if (v12 != -INFINITY && (LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v13 = INFINITY;
      if (v12 != INFINITY)
      {
        v13 = v12 - a4;
      }
    }

    (*(**a1 + 184))(*a1, v17.n128_u32[3], v13);
  }

  result = v18;
  if (v18)
  {
    return (*(*v18 + 8))(v18);
  }

  return result;
}

void sub_1B52BB2B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 8))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ProjectMapper<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 1 || ((*(*a1 + 280))(a1, 0), *a2 != 2))
  {
    (*(*a1 + 288))(a1, 0);
  }

  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 296))(a1, v6, &v12);
        while (!(*(*v12 + 24))(v12))
        {
          v7 = (*(*v12 + 32))(v12);
          v8 = *(v7 + 4 * (*a2 != 1));
          v9 = *(v7 + 8);
          v11[0] = v8 | (v8 << 32);
          v11[1] = v9;
          (*(*v12 + 88))(v12, v11);
          (*(*v12 + 40))(v12);
        }

        if (v12)
        {
          (*(*v12 + 8))();
        }

        (*(*a1 + 32))(a1, v6);
        (*(*a1 + 184))(a1, v6);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    v10 = fst::ProjectProperties(v5, *a2 == 1);
    return (*(*a1 + 192))(a1, v10, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B52BB650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B52BB780(_Unwind_Exception *a1)
{
  v7 = v1[31];
  if (v7)
  {
    v1[32] = v7;
    operator delete(v7);
  }

  std::deque<int>::~deque[abi:ne200100](v3);
  v8 = *v5;
  if (*v5)
  {
    v1[19] = v8;
    operator delete(v8);
  }

  kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::~HashList(v2);
  v9 = *v4;
  if (*v4)
  {
    v1[2] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::FindSubroutines(uint64_t a1)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if ((*(**(a1 + 128) + 24))(*(a1 + 128)) == -1)
  {
    goto LABEL_33;
  }

  v2 = *(a1 + 128);
  v29 = 0;
  (*(*v2 + 136))(v2);
  while (1)
  {
    if (!v26[0])
    {
      if (v29 >= v27)
      {
        goto LABEL_24;
      }

LABEL_8:
      v3 = (v26[1] + 16 * v29);
      goto LABEL_9;
    }

    if ((*(*v26[0] + 24))(v26[0]))
    {
      break;
    }

    if (!v26[0])
    {
      goto LABEL_8;
    }

    v3 = (*(*v26[0] + 32))();
LABEL_9:
    if (!*v3)
    {
      v4 = v3[2];
      if (v4 > 9900.0 && v4 < 10100.0)
      {
        v5 = *(v3 + 1);
        v6 = (v5 - 1);
        ++*(a1 + 136);
        if (v31 > v6 && ((*(v30 + ((v6 >> 3) & 0x1FFFFFF8)) >> (v5 - 1)) & 1) != 0)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
          v7 = fst::LogMessage::LogMessage(&v25, __p);
          v8 = fst::cerr(v7);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Subroutine index ", 17);
          v10 = MEMORY[0x1B8C84C10](v9, (v5 - 1));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " already defined", 16);
          fst::LogMessage::~LogMessage(&v25);
          if (v24 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v11 = *(a1 + 144);
        if (v5 > (*(a1 + 152) - v11) >> 2)
        {
          std::vector<BOOL>::resize(&v30, v5, 0);
          std::vector<int>::resize((a1 + 144), v5);
          v11 = *(a1 + 144);
        }

        *(v11 + 4 * v6) = v3[3];
        *(v30 + ((v6 >> 3) & 0x1FFFFFF8)) |= 1 << (v5 - 1);
      }
    }

    if (v26[0])
    {
      (*(*v26[0] + 40))(v26[0]);
    }

    else
    {
      ++v29;
    }
  }

  if (v26[0])
  {
    (*(*v26[0] + 8))();
    goto LABEL_26;
  }

LABEL_24:
  if (v28)
  {
    --*v28;
  }

LABEL_26:
  v12 = v31;
  if (v31)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      if (((*(v30 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        std::string::basic_string[abi:ne200100]<0>(v26, "FATAL");
        v15 = fst::LogMessage::LogMessage(__p, v26);
        v16 = fst::cerr(v15);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Subroutine index ", 17);
        v18 = MEMORY[0x1B8C84C10](v17, v14);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " not used - subroutines indexes must be consecutive", 51);
        fst::LogMessage::~LogMessage(__p);
        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        v12 = v31;
      }

      v13 = (v14 + 1);
      v14 = v13;
    }

    while (v12 > v13);
  }

LABEL_33:
  std::string::basic_string[abi:ne200100]<0>(v26, "INFO");
  v19 = fst::LogMessage::LogMessage(__p, v26);
  v20 = fst::cerr(v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Found ", 6);
  v22 = MEMORY[0x1B8C84C10](v21, *(a1 + 136));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " phonetic match subroutines ", 28);
  fst::LogMessage::~LogMessage(__p);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (v30)
  {
    operator delete(v30);
  }
}

void sub_1B52BBBC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::~HashList(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = *(v2 + 8);
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[7];
  v5 = a1[8];
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (v4[v6])
      {
        MEMORY[0x1B8C85310](v4[v6], 0x1020C805730B0C9);
        v4 = a1[7];
        v5 = a1[8];
      }

      ++v6;
      v7 += 1024;
    }

    while (v6 < (v5 - v4) >> 3);
  }

  if (v3 != v7 && kaldi::g_kaldi_verbose_level > -2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Possible memory leak: ", 22);
    v9 = MEMORY[0x1B8C84C30](v8, v3);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " != ", 4);
    v11 = MEMORY[0x1B8C84C30](v10, v7);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ": you might have forgotten to call Delete on ", 45);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "some Elems", 10);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v15);
    v4 = a1[7];
  }

  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  v13 = a1[3];
  if (v13)
  {
    a1[4] = v13;
    operator delete(v13);
  }

  return a1;
}

uint64_t *kaldi::quasar::SymbolDecoder<kaldi::quasar::Phonomap>::~SymbolDecoder(uint64_t *a1)
{
  v2 = a1[7];
  if (v2 != -1)
  {
    v3 = a1[9];
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = a1[6];
  a1[6] = 0;
  a1[7] = -1;
  if (v5)
  {
    v6 = a1[12];
    do
    {
      v7 = v5;
      v5 = *(v5 + 8);
      *(v7 + 8) = v6;
      v6 = v7;
    }

    while (v5);
    a1[12] = v7;
  }

  v8 = *a1;
  a1[2] = a1[1];
  a1[4] = 0;
  if (v8)
  {
    MEMORY[0x1B8C85310](v8, 0x1000C8027586B93);
  }

  v9 = a1[31];
  if (v9)
  {
    a1[32] = v9;
    operator delete(v9);
  }

  std::deque<int>::~deque[abi:ne200100](a1 + 25);
  v10 = a1[18];
  if (v10)
  {
    a1[19] = v10;
    operator delete(v10);
  }

  kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::~HashList(a1 + 6);
  v11 = a1[1];
  if (v11)
  {
    a1[2] = v11;
    operator delete(v11);
  }

  return a1;
}

void std::vector<quasar::PhoneticMatchResult>::__assign_with_size[abi:ne200100]<quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::PhoneticMatchResult>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::PhoneticMatchResult>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 72;
        std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](a1, v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(&v15, a2, a2 + v11, v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*>(a1, a2 + v11, a3, *(a1 + 8));
  }
}

void std::vector<quasar::PhoneticMatchResult>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 72;
        std::allocator<quasar::PhoneticMatchResult>::destroy[abi:ne200100](a1, v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<quasar::PhoneticMatchResult>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*,quasar::PhoneticMatchResult*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 40);
    do
    {
      *v4 = *(v6 - 40);
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 32) = 0;
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__init_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>(v4 + 16, *(v6 - 3), *(v6 - 2), 0x8E38E38E38E38E39 * ((*(v6 - 2) - *(v6 - 3)) >> 3));
      v7 = v6 - 40;
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 40), *v6, *(v6 + 1));
      }

      else
      {
        v8 = *v6;
        *(v4 + 56) = *(v6 + 2);
        *(v4 + 40) = v8;
      }

      v9 = *(v6 + 6);
      *(v4 + 67) = *(v6 + 27);
      *(v4 + 64) = v9;
      v4 = v14 + 72;
      v14 += 72;
      v6 = (v6 + 72);
    }

    while (v7 + 72 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

void sub_1B52BC208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::vector<quasar::PhoneticMatchAlignmentSpan>::__destroy_vector::operator()[abi:ne200100](va1);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PhoneticMatchResult>,quasar::PhoneticMatchResult*>>::~__exception_guard_exceptions[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *,quasar::PhoneticMatchResult *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  v6 = a2 + 24;
  do
  {
    v7 = v6 - 24;
    *a4 = *(v6 - 24);
    if (a4 != v6 - 24)
    {
      std::vector<quasar::PhoneticMatchAlignmentSpan>::__assign_with_size[abi:ne200100]<quasar::PhoneticMatchAlignmentSpan*,quasar::PhoneticMatchAlignmentSpan*>((a4 + 16), *(v6 - 8), *v6, 0x8E38E38E38E38E39 * ((*v6 - *(v6 - 8)) >> 3));
    }

    std::string::operator=((a4 + 40), (v6 + 16));
    v8 = *(v6 + 43);
    *(a4 + 64) = *(v6 + 40);
    *(a4 + 67) = v8;
    a4 += 72;
    v6 += 72;
  }

  while (v7 + 72 != v5);
  return v5;
}

void std::vector<quasar::ItnOverride>::__base_destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    do
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
      }

      if (*(v4 - 25) < 0)
      {
        operator delete(*(v4 - 6));
      }

      v5 = v4 - 9;
      if (*(v4 - 49) < 0)
      {
        operator delete(*v5);
      }

      v4 -= 9;
    }

    while (v5 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<quasar::ItnOverride>::__vdeallocate(uint64_t a1)
{
  if (*a1)
  {
    std::vector<quasar::ItnOverride>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}

void std::vector<quasar::ItnOverride>::__assign_with_size[abi:ne200100]<quasar::ItnOverride*,quasar::ItnOverride*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<quasar::ItnOverride>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<quasar::ItnOverride>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::ItnOverride *,quasar::ItnOverride *,quasar::ItnOverride *>(&v14, __str, a3, v8);
    std::vector<quasar::ItnOverride>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<quasar::ItnOverride *,quasar::ItnOverride *,quasar::ItnOverride *>(&v13, __str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::ItnOverride>,quasar::ItnOverride*,quasar::ItnOverride*,quasar::ItnOverride*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<quasar::ItnOverride *,quasar::ItnOverride *,quasar::ItnOverride *>(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    this += 3;
    v5 += 3;
  }

  while (v5 != v6);
  return v6;
}

std::string *quasar::PhonesetMapping::PhonesetMapping(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  return this;
}

void sub_1B52BC6EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a9);
  _Unwind_Resume(a1);
}

void quasar::PhonesetMapping::checkForSilencePhones(uint64_t a1, std::string *a2)
{
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (size >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = a2->__r_.__value_.__r.__words[0];
  }

  if (size < 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size >= 3)
  {
    v5 = v3 + size;
    v6 = v3;
    do
    {
      v7 = memchr(v6, 115, size - 2);
      if (!v7)
      {
        break;
      }

      if (*v7 == 26995 && v7[2] == 108)
      {
        if (v7 != v5)
        {
          v9 = v7 - v3;
          if (v9 != -1)
          {
            if (quasar::gLogLevel >= 5)
            {
              memset(v11, 0, sizeof(v11));
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Ignoring silence phone sil", 28);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(v11);
            }

            v10 = std::string::erase(a2, v9, 3uLL);
            quasar::PhonesetMapping::removeExtraSpaces(v10, a2);
          }
        }

        return;
      }

      v6 = (v7 + 1);
      size = v5 - v6;
    }

    while (v5 - v6 >= 3);
  }
}

uint64_t quasar::PhonesetMapping::checkLanguageAndPhoneset(uint64_t a1, uint64_t a2, uint64_t a3)
{
  quasar::PhonesetMapping::checkForSilencePhones(a1, a3);
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
    if (quasar::gLogLevel < 5)
    {
      return 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "ASR prons are empty", 19);
LABEL_21:
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v13);
    return 0;
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  if (!*(a1 + 8))
  {
LABEL_11:
    if (quasar::gLogLevel < 5)
    {
      return 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Language not provided", 21);
    goto LABEL_21;
  }

LABEL_6:
  if (*(a2 + 24))
  {
    return 1;
  }

  if (quasar::gLogLevel >= 5)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v13 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v13);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "Unsupported language: ", 23);
    v9 = *(a1 + 23);
    if (v9 >= 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    if (v9 >= 0)
    {
      v11 = *(a1 + 23);
    }

    else
    {
      v11 = *(a1 + 8);
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "", 1);
    goto LABEL_21;
  }

  return 0;
}

void quasar::PhonesetMapping::getMappedPhonemes(int a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a3, *(a3 + 8));
  }

  else
  {
    __str = *a3;
  }

  quasar::PhonesetMapping::removeExtraSpaces(a1, &__str);
}

void sub_1B52BCCF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v15 - 129) < 0)
  {
    operator delete(*(v15 - 152));
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  if (*(v15 - 105) < 0)
  {
    operator delete(*(v15 - 128));
  }

  _Unwind_Resume(exception_object);
}

void quasar::PhonesetMapping::getIpaPhoneSequence(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  quasar::PhonesetMapPerLanguage::getAsrToIpaMap(a1);
  quasar::PhonesetMapping::getMappedPhonemes(v3, v4, a2);
}

void sub_1B52BCEA0(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 - 72);
  _Unwind_Resume(a1);
}

double quasar::PhonesetMapPerLanguage::getAsrToIpaMap(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  *&v204[1] = *MEMORY[0x1E69E9840];
  v5 = *(v1 + 23);
  if (v5 < 0)
  {
    if (v1[1] != 5 || (**v1 == 1432317541 ? (v12 = *(*v1 + 4) == 83) : (v12 = 0), !v12))
    {
      if (v1[1] != 5 || (**v1 == 1130326138 ? (v13 = *(*v1 + 4) == 78) : (v13 = 0), !v13))
      {
        if (v1[1] != 5 || (**v1 == 1096773221 ? (v14 = *(*v1 + 4) == 85) : (v14 = 0), !v14))
        {
          if (v1[1] != 5 || (**v1 == 1197436517 ? (v15 = *(*v1 + 4) == 66) : (v15 = 0), !v15))
          {
            if (v1[1] == 5)
            {
              if (**v1 == 1163883365 && *(*v1 + 4) == 83)
              {
LABEL_117:
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v47, "AA", "ˈa");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v48, "AU", "ˈa w");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v49, "AY", "ˈa j");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v50, "EE", "ˈe");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v51, "EY", "ˈe j");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v52, "II", "ˈi");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "OO", "ˈo");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v54, "OY", "ˈo j");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v55, "UU", "ˈu");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v56, "UY", "ˈu i");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v57, "Z", "θ");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v58, "aa", "a");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v59, "b", "b");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v60, "ch", "t͡ʃ");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v61, "d", "ð");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v62, "ee", "e");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v63, "f", "f");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "g", "g");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v65, "ii", "i");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "j", "x");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v67, "k", "k");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v68, "ks", "ks");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v69, "l", "l");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "m", "m");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "n", "n");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v72, "nn", "ɲ");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v73, "oo", "o");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v74, "p", "p");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v75, "r", "ɾ");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v76, "rr", "r");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "s", "s");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "t", "t");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v79, "uu", "u");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v80, "w", "w");
                std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "y", "j");
                std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 35);
                v37 = 210;
                do
                {
                  v38 = &v47[v37];
                  if (SHIBYTE(v47[v37 - 1]) < 0)
                  {
                    operator delete(*(v38 - 3));
                  }

                  if (*(v38 - 25) < 0)
                  {
                    operator delete(*(v38 - 6));
                  }

                  v37 -= 6;
                }

                while (v37 * 8);
                return result;
              }

              if ((v5 & 0x80000000) == 0)
              {
                goto LABEL_57;
              }
            }

            if (v1[1] != 5)
            {
              goto LABEL_57;
            }

            v11 = *v1;
            goto LABEL_53;
          }

LABEL_102:
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v47, "AA", "ˈæ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[12],0>(v48, "AE", "ˈɛ͡ə ɻ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v49, "AH", "ˈɑ ɻ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v50, "AW", "ˈɒ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v51, "AWH", "ˈɔ ɻ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v52, "AY", "ˈa͡ɪ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "EE", "ˈi");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v54, "EH", "ˈɛ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v55, "EY", "ˈe͡ɪ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v56, "IH", "ˈɪ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v57, "OH", "ˈo͡ʊ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v58, "OO", "ˈʊ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v59, "OOH", "ˈu");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v60, "OW", "ˈa͡ʊ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v61, "OY", "ˈɔ͡ɪ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v62, "UH", "ˈʌ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v63, "UR", "ˈɜ ɻ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "b", "b");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v65, "ch", "t͡ʃ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "d", "d");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v67, "dh", "ð");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v68, "ee", "i");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v69, "eh", "ɪ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "f", "f");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "g", "g");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "h", "h");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v73, "ih", "ɪ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[6],0>(v74, "j", "d͡ʒ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "k", "k");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v76, "l", "l");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "m", "m");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "n", "n");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v79, "ng", "ŋ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v80, "oh", "o͡ʊ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "p", "p");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v82, "r", "ɻ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v83, "s", "s");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v84, "sh", "ʃ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v85, "t", "t");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v86, "th", "θ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v87, "uh", "ə");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v88, "ul", "ə l");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v89, "um", "ə m");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v90, "un", "ə n");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v91, "ur", "ə ɻ");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v92, "v", "v");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v93, "w", "w");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v94, "y", "j");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v95, "z", "z");
          std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v96, "zh", "ʒ");
          std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 50);
          v33 = 300;
          do
          {
            v34 = &v47[v33];
            if (SHIBYTE(v47[v33 - 1]) < 0)
            {
              operator delete(*(v34 - 3));
            }

            if (*(v34 - 25) < 0)
            {
              operator delete(*(v34 - 6));
            }

            v33 -= 6;
          }

          while (v33 * 8);
          return result;
        }

LABEL_95:
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v47, "AA", "ˈæ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[12],0>(v48, "AE", "ˈɛ͡ə ɻ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v49, "AH", "ˈɑ ɻ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v50, "AW", "ˈɒ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v51, "AWH", "ˈɔ ɻ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v52, "AY", "ˈa͡ɪ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "EE", "ˈi");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v54, "EH", "ˈɛ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v55, "EY", "ˈe͡ɪ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v56, "IH", "ˈɪ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v57, "OH", "ˈo͡ʊ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v58, "OO", "ˈʊ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v59, "OOH", "ˈu");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v60, "OW", "ˈa͡ʊ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v61, "OY", "ˈɔ͡ɪ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v62, "UH", "ˈʌ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v63, "UR", "ˈɜ ɻ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "b", "b");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v65, "ch", "t͡ʃ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "d", "d");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v67, "dh", "ð");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v68, "ee", "i");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v69, "eh", "ɪ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "f", "f");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "g", "g");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "h", "h");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v73, "ih", "ɪ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[6],0>(v74, "j", "d͡ʒ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "k", "k");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v76, "l", "l");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "m", "m");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "n", "n");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v79, "ng", "ŋ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v80, "oh", "o͡ʊ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "p", "p");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v82, "r", "ɻ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v83, "s", "s");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v84, "sh", "ʃ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v85, "t", "t");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v86, "th", "θ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v87, "uh", "ə");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v88, "ul", "ə l");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v89, "um", "ə m");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v90, "un", "ə n");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v91, "ur", "ə ɻ");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v92, "v", "v");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v93, "w", "w");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v94, "y", "j");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v95, "z", "z");
        std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v96, "zh", "ʒ");
        std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 50);
        v31 = 300;
        do
        {
          v32 = &v47[v31];
          if (SHIBYTE(v47[v31 - 1]) < 0)
          {
            operator delete(*(v32 - 3));
          }

          if (*(v32 - 25) < 0)
          {
            operator delete(*(v32 - 6));
          }

          v31 -= 6;
        }

        while (v31 * 8);
        return result;
      }

LABEL_80:
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v47, "A1", "a˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v48, "A2", "a˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v49, "A3", "a˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v50, "A4", "a˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v51, "A5", "a˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v52, "AG1", "ɑŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v53, "AG2", "ɑŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v54, "AG3", "ɑŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v55, "AG4", "ɑŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v56, "AG5", "ɑŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v57, "AI1", "a͡ɪ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v58, "AI2", "a͡ɪ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v59, "AI3", "a͡ɪ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v60, "AI4", "a͡ɪ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v61, "AI5", "a͡ɪ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v62, "AN1", "an˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v63, "AN2", "an˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v64, "AN3", "an˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v65, "AN4", "an˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v66, "AN5", "an˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v67, "AO1", "a͡ʊ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v68, "AO2", "a͡ʊ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v69, "AO3", "a͡ʊ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v70, "AO4", "a͡ʊ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v71, "AO5", "a͡ʊ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "B", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v73, "BI", "pj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v74, "BU", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[7],0>(v75, "C", "t͡sʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v76, "CH", "t͡ʂʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v77, "CHU", "t͡ʂʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v78, "CU", "t͡sʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v79, "D", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v80, "DI", "tj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v81, "DU", "tw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v82, "E1", "ɤ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v83, "E2", "ɤ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v84, "E3", "ɤ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v85, "E4", "ɤ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v86, "E5", "ɤ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v87, "EG1", "əŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v88, "EG2", "əŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v89, "EG3", "əŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v90, "EG4", "əŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v91, "EG5", "əŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v92, "EI1", "e͡ɪ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v93, "EI2", "e͡ɪ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v94, "EI3", "e͡ɪ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v95, "EI4", "e͡ɪ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v96, "EI5", "e͡ɪ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v97, "EN1", "ən˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v98, "EN2", "ən˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v99, "EN3", "ən˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v100, "EN4", "ən˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v101, "EN5", "ən˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v102, "ER2", "ə˞˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v103, "ER3", "ə˞˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v104, "ER4", "ə˞˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v105, "ER5", "ə˞˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v106, "F", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v107, "G", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[1],0>(v108, "GS", "");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v109, "GU", "kw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v110, "H", "χ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v111, "HU", "χw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v112, "I1", "i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v113, "I2", "i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v114, "I3", "i˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v115, "I4", "i˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v116, "I5", "i˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v117, "IE1", "ɛ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v118, "IE2", "ɛ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v119, "IE3", "ɛ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v120, "IE4", "ɛ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v121, "IE5", "ɛ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v122, "IG1", "iŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v123, "IG2", "iŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v124, "IG3", "iŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v125, "IG4", "iŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v126, "IG5", "iŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v127, "IH1", "ɪ̈˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v128, "IH2", "ɪ̈˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v129, "IH3", "ɪ̱˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v130, "IH4", "ɪ̈˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v131, "IH5", "ɪ̱˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v132, "IN1", "in˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v133, "IN2", "in˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v134, "IN3", "in˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v135, "IN4", "in˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v136, "IN5", "in˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v137, "JI", "t͡ɕj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v138, "JU", "t͡ɕy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v139, "K", "kʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v140, "KU", "kʰw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v141, "L", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v142, "LI", "lj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v143, "LU", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v144, "LYU", "ly");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v145, "M", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v146, "MI", "mj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v147, "MU", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v148, "N", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v149, "NI", "nj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v150, "NU", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v151, "NYU", "ny");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v152, "O1", "ɔ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v153, "O2", "ɔ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v154, "O3", "ɔ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v155, "O4", "ɔ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v156, "O5", "ɔ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v157, "OG1", "oŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v158, "OG2", "oŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v159, "OG3", "oŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v160, "OG4", "oŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v161, "OG5", "oŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v162, "OU1", "o͡ʊ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v163, "OU2", "o͡ʊ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v164, "OU3", "o͡ʊ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v165, "OU4", "o͡ʊ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v166, "OU5", "o͡ʊ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v167, "P", "pʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v168, "PI", "pʰj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v169, "QI", "t͡ɕʰj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v170, "QU", "t͡ɕʰy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v171, "R", "ʐ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v172, "RU", "ʐ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v173, "S", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v174, "SH", "ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v175, "SHU", "ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v176, "SU", "sw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v177, "T", "tʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v178, "TI", "tʰj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v179, "TU", "tʰw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v180, "U1", "u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v181, "U2", "u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v182, "U3", "u˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v183, "U4", "u˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v184, "U5", "u˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v185, "UN1", "wn˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v186, "UN2", "wn˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v187, "UN3", "wn˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v188, "UN4", "wn˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v189, "UN5", "wn˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v190, "W", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v191, "XI", "ɕj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v192, "XU", "ɕy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v193, "Y", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v194, "YU", "jy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v195, "YU1", "˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v196, "YU2", "˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v197, "YU3", "˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v198, "YU4", "˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v199, "YU5", "˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[5],0>(v200, "Z", "t͡s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v201, "ZH", "t͡ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v202, "ZHU", "t͡ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v203, "ZU", "t͡sw");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 157);
      v27 = v204;
      v28 = -7536;
      do
      {
        if (*v27 < 0)
        {
          operator delete(*(v27 - 23));
        }

        if (*(v27 - 24) < 0)
        {
          operator delete(*(v27 - 47));
        }

        v27 -= 48;
        v28 += 48;
      }

      while (v28);
      return result;
    }

LABEL_73:
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v47, "AA", "ˈæ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v48, "AE", "ˈɛ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v49, "AH", "ˈɑ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v50, "AW", "ˈɑ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v51, "AWH", "ˈɔ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v52, "AY", "ˈa͡ɪ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "EE", "ˈi");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v54, "EH", "ˈɛ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v55, "EY", "ˈe͡ɪ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v56, "IH", "ˈɪ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v57, "OH", "ˈo͡ʊ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v58, "OO", "ˈʊ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v59, "OOH", "ˈu");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v60, "OW", "ˈa͡ʊ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v61, "OY", "ˈɔ͡ɪ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v62, "UH", "ˈʌ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v63, "UR", "ˈɜ ɻ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "b", "b");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v65, "ch", "t͡ʃ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "d", "d");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v67, "dh", "ð");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v68, "ee", "i");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v69, "eh", "ɛ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "f", "f");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "g", "g");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "h", "h");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v73, "ih", "ɪ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[6],0>(v74, "j", "d͡ʒ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "k", "k");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v76, "l", "l");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "m", "m");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "n", "n");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v79, "ng", "ŋ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v80, "oh", "o͡ʊ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "p", "p");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v82, "r", "ɻ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v83, "s", "s");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v84, "sh", "ʃ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v85, "t", "t");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v86, "th", "θ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v87, "uh", "ə");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v88, "ul", "ə l");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v89, "um", "ə m");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v90, "un", "ə n");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v91, "ur", "ə ɻ");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v92, "v", "v");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v93, "w", "w");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v94, "y", "j");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v95, "z", "z");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v96, "zh", "ʒ");
    std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 50);
    v25 = 300;
    do
    {
      v26 = &v47[v25];
      if (SHIBYTE(v47[v25 - 1]) < 0)
      {
        operator delete(*(v26 - 3));
      }

      if (*(v26 - 25) < 0)
      {
        operator delete(*(v26 - 6));
      }

      v25 -= 6;
    }

    while (v25 * 8);
    return result;
  }

  if (v5 != 5)
  {
    goto LABEL_57;
  }

  if (*v1 == 1432317541 && *(v1 + 4) == 83)
  {
    goto LABEL_73;
  }

  if (*v1 == 1130326138 && *(v1 + 4) == 78)
  {
    goto LABEL_80;
  }

  if (*v1 == 1096773221 && *(v1 + 4) == 85)
  {
    goto LABEL_95;
  }

  if (*v1 == 1197436517 && *(v1 + 4) == 66)
  {
    goto LABEL_102;
  }

  v10 = *v1 == 1163883365 && *(v1 + 4) == 83;
  v11 = v1;
  if (v10)
  {
    goto LABEL_117;
  }

LABEL_53:
  v17 = *v11;
  v18 = *(v11 + 4);
  if (v17 != 1432318821 || v18 != 83)
  {
LABEL_57:
    if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v1, "fr_CA"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v47, "ACI", "ɑ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v48, "AE", "ə");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v49, "AGR", "a");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v50, "AN", "an");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v51, "EAC", "e");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v52, "ECI", "ɛ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "EN", "ẽ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v54, "II", "i");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v55, "OCI", "o");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v56, "OE", "ə");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v57, "OEE", "ø");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v58, "OEN", "œn");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v59, "ON", "ən");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v60, "OO", "ɔ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v61, "QQ", "ə");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v62, "UGR", "u");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v63, "UY", "y");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "b", "b");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v65, "d", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "f", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v67, "g", "g");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v68, "ge", "ʒ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v69, "gn", "ɲ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "k", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "l", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v73, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v74, "ng", "ŋ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "p", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v76, "r", "ʀ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "s", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v78, "sh", "ʃ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v79, "t", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v80, "v", "v");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "w", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v82, "y", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v83, "yw", "ɥ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v84, "z", "z");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 38);
      v21 = 228;
      do
      {
        v22 = &v47[v21];
        if (SHIBYTE(v47[v21 - 1]) < 0)
        {
          operator delete(*(v22 - 3));
        }

        if (*(v22 - 25) < 0)
        {
          operator delete(*(v22 - 6));
        }

        v21 -= 6;
      }

      while (v21 * 8);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "fr_FR"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v47, "ACI", "a");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v48, "AE", "ə");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v49, "AGR", "a");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v50, "AN", "ɑ̃");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v51, "EAC", "e");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v52, "ECI", "ɛ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v53, "EN", "ɛ̃");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v54, "II", "i");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v55, "OCI", "o");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v56, "OE", "œ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v57, "OEE", "ø");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v58, "OEN", "œ̃");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v59, "ON", "ɔ̃");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v60, "OO", "ɔ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v61, "QQ", "ə");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v62, "UGR", "u");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v63, "UY", "y");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "b", "b");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v65, "d", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "f", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v67, "g", "g");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v68, "ge", "ʒ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v69, "gn", "ɲ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "k", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "l", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v73, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v74, "ng", "ŋg");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "p", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v76, "r", "ʀ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "s", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v78, "sh", "ʃ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v79, "t", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v80, "v", "v");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "w", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v82, "y", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v83, "yw", "ɥ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v84, "z", "z");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 38);
      v23 = 228;
      do
      {
        v24 = &v47[v23];
        if (SHIBYTE(v47[v23 - 1]) < 0)
        {
          operator delete(*(v24 - 3));
        }

        if (*(v24 - 25) < 0)
        {
          operator delete(*(v24 - 6));
        }

        v23 -= 6;
      }

      while (v23 * 8);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "it_IT"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v47, "AA", "ˈa");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v48, "AI", "ˈa j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v49, "AU", "ˈa w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v50, "EE", "ˈe");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v51, "EI", "ˈe j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v52, "ETT", "ˈɛ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "II", "ˈi");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v54, "OI", "ˈo j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v55, "OO", "ˈo");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v56, "OTT", "ˈɔ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v57, "UU", "ˈu");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v58, "aa", "a");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v59, "b", "b");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v60, "ci", "t͡ʃ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v61, "d", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v62, "ee", "e");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v63, "f", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v64, "g", "g");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v65, "gi", "d͡ʒ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v66, "gl", "ʎː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v67, "gn", "ɲː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v68, "ii", "i");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v69, "j", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "k", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "l", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v73, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v74, "oo", "o");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "p", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v76, "r", "r");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v77, "rr", "r");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "s", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v79, "sci", "ʃ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v80, "t", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v81, "uu", "u");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v82, "v", "v");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v83, "w", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v84, "z", "z");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 38);
      v29 = 228;
      do
      {
        v30 = &v47[v29];
        if (SHIBYTE(v47[v29 - 1]) < 0)
        {
          operator delete(*(v30 - 3));
        }

        if (*(v30 - 25) < 0)
        {
          operator delete(*(v30 - 6));
        }

        v29 -= 6;
      }

      while (v29 * 8);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "ja-JP"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[5],0>(v47, "A", "ɑː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v48, "E", "i");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v49, "I", "iː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v50, "N", "ɴ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v51, "O", "ɯ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v52, "Qb", "bː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v53, "Qch", "t͡ɕː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v54, "Qd", "dː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v55, "Qf", "ɸːw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v56, "Qg", "gː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v57, "Qh", "hː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v58, "Qj", "zj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v59, "Qk", "kː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v60, "Qky", "kːj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v61, "Qp", "pː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v62, "Qpy", "pːj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v63, "Qs", "sː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v64, "Qsh", "ʃː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v65, "Qt", "tː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v66, "Qts", "t͡sː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v67, "Qz", "z");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v68, "U", "ɯ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v69, "a", "ɑ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "b", "b");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v71, "by", "bj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v72, "ch", "t͡ʃ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v73, "d", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v74, "dy", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "e", "e");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v76, "f", "ɸ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v77, "g", "ŋ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v78, "gy", "ŋj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v79, "h", "h");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v80, "hy", "çj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v81, "i", "i");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v82, "j", "ʒ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v83, "k", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v84, "ky", "kj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v85, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v86, "my", "mj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v87, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v88, "ny", "ɲj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v89, "o", "o");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v90, "p", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v91, "py", "pj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v92, "r", "ɾ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v93, "ry", "ɾj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v94, "s", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v95, "sh", "ɕ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v96, "t", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v97, "ts", "t͡s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v98, "u", "ɯ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v99, "w", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v100, "y", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v101, "z", "z");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 55);
      v35 = 330;
      do
      {
        v36 = &v47[v35];
        if (SHIBYTE(v47[v35 - 1]) < 0)
        {
          operator delete(*(v36 - 3));
        }

        if (*(v36 - 25) < 0)
        {
          operator delete(*(v36 - 6));
        }

        v35 -= 6;
      }

      while (v35 * 8);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "ko_KR"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v47, "A", "a");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v48, "E", "ɛ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v49, "I", "ɯ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v50, "U", "ɔ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v51, "b", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v52, "d", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v53, "dZ", "ɟ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v54, "e", "e");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v55, "g", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v56, "h", "ɦ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v57, "i", "i");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v58, "j", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v59, "k", "kʼ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v60, "kH", "kʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v61, "l", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v62, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v63, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v64, "ng", "ŋ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v65, "o", "o");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v66, "p", "pʼ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v67, "pH", "pʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v68, "s", "sʼ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v69, "t", "tʼ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v70, "tH", "tʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v71, "tS", "cʼ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v72, "tSH", "cʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v73, "u", "u");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v74, "w", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v75, "z", "s");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 29);
      for (i = 168; i != -6; i -= 6)
      {
        std::pair<std::string,std::string>::~pair(&v47[i]);
      }
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "zh_HK"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v47, "a1", "ɐ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v48, "a2", "ɐ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v49, "a3", "ɐ˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v50, "a4", "ɐ˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v51, "a5", "ɐ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v52, "a6", "ɐ˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v53, "aa1", "a˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v54, "aa2", "a˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v55, "aa3", "a˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v56, "aa4", "a˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v57, "aa5", "a˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v58, "aa6", "a˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(v59, "aai1", "a͡i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(v60, "aai2", "a͡i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(v61, "aai3", "a͡i˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(v62, "aai4", "a͡i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(v63, "aai5", "a͡i˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(v64, "aai6", "a͡i˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(v65, "aau1", "a͡u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(v66, "aau2", "a͡u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(v67, "aau3", "a͡u˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(v68, "aau4", "a͡u˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(v69, "aau5", "a͡u˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(v70, "aau6", "a͡u˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v71, "ai1", "ɐ͡i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v72, "ai2", "ɐ͡i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v73, "ai3", "ɐ͡i˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v74, "ai4", "ɐ͡i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v75, "ai5", "ɐ͡i˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v76, "ai6", "ɐ͡i˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v77, "au1", "ɐ͡u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v78, "au2", "ɐ͡u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v79, "au3", "ɐ͡u˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v80, "au4", "ɐ͡u˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v81, "au5", "ɐ͡u˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v82, "au6", "ɐ͡u˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v83, "b", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[7],0>(v84, "c", "t͡sʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v85, "d", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v86, "e1", "ɛ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v87, "e2", "ɛ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v88, "e3", "ɛ˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v89, "e4", "ɛ˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v90, "e5", "ɛ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v91, "e6", "ɛ˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v92, "ei1", "e͡i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v93, "ei2", "e͡i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v94, "ei3", "e͡i˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v95, "ei4", "e͡i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v96, "ei5", "e͡i˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v97, "ei6", "e͡i˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v98, "eo1", "œ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v99, "eo2", "œ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v100, "eo3", "œ˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v101, "eo4", "œ˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v102, "eo5", "œ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v103, "eo6", "œ˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[8],0>(v104, "eoi1", "ɵ͡y˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[10],0>(v105, "eoi2", "ɵ͡y˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[8],0>(v106, "eoi3", "ɵ͡y˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[10],0>(v107, "eoi4", "ɵ͡y˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[10],0>(v108, "eoi5", "ɵ͡y˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[8],0>(v109, "eoi6", "ɵ͡y˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v110, "f", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v111, "g", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v112, "gw", "kʷ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v113, "h", "h");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v114, "i1", "i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v115, "i2", "i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v116, "i3", "i˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v117, "i4", "i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v118, "i5", "i˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v119, "i6", "i˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v120, "iu1", "i͡u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v121, "iu2", "i͡u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v122, "iu3", "i͡u˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v123, "iu4", "i͡u˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v124, "iu5", "i͡u˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v125, "iu6", "i͡u˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v126, "j", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v127, "k", "kʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v128, "kw", "kʷʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v129, "l", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v130, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v131, "m4", "m˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v132, "m5", "ŋ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v133, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v134, "ng", "ŋ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v135, "ng4", "ŋ˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v136, "ng5", "ŋ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v137, "ng6", "ŋ˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v138, "o1", "ɔ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v139, "o2", "ɔ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v140, "o3", "ɔ˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v141, "o4", "ɔ˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v142, "o5", "ɔ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v143, "o6", "ɔ˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v144, "oe1", "œ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v145, "oe2", "œ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v146, "oe3", "œ˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v147, "oe4", "œ˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v148, "oe5", "œ˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v149, "oe6", "œ˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v150, "oi1", "ɔ͡i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v151, "oi2", "ɔ͡i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v152, "oi3", "ɔ͡i˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v153, "oi4", "ɔ͡i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v154, "oi5", "ɔ͡i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v155, "oi6", "ɔ͡i˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v156, "ou1", "o͡u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v157, "ou2", "o͡u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v158, "ou3", "o͡u˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v159, "ou4", "o͡u˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v160, "ou5", "o͡u˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v161, "ou6", "o͡u˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v162, "p", "pʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v163, "s", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v164, "t", "tʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v165, "u1", "u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v166, "u2", "u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v167, "u3", "u˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v168, "u4", "u˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v169, "u5", "u˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v170, "u6", "u˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v171, "ui1", "u͡i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v172, "ui2", "u͡i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v173, "ui3", "u͡i˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v174, "ui4", "u͡i˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v175, "ui5", "u͡i˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v176, "ui6", "u͡i˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v177, "w", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v178, "yu1", "y˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v179, "yu2", "y˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v180, "yu3", "y˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v181, "yu4", "y˨˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v182, "yu5", "y˩˧");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v183, "yu6", "y˨");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[5],0>(v184, "z", "t͡s");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 138);
      v42 = v184;
      v43 = -6624;
      do
      {
        v42 = (std::pair<std::string,std::string>::~pair(v42) - 48);
        v43 += 48;
      }

      while (v43);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "zh_TW"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v47, "A1", "a˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v48, "A2", "a˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v49, "A3", "a˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v50, "A4", "a˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v51, "A5", "a˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v52, "AG1", "ɑŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v53, "AG2", "ɑŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v54, "AG3", "ɑŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v55, "AG4", "ɑŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v56, "AG5", "ɑŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v57, "AI1", "a͡ɪ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v58, "AI2", "a͡ɪ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v59, "AI3", "a͡ɪ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v60, "AI4", "a͡ɪ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v61, "AI5", "a͡ɪ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v62, "AN1", "an˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v63, "AN2", "an˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v64, "AN3", "an˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v65, "AN4", "an˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v66, "AN5", "an˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v67, "AO1", "a͡ʊ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v68, "AO2", "a͡ʊ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v69, "AO3", "a͡ʊ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v70, "AO4", "a͡ʊ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v71, "AO5", "a͡ʊ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "B", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v73, "BI", "pj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v74, "BU", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[7],0>(v75, "C", "t͡sʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v76, "CH", "t͡ʂʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v77, "CHU", "t͡ʂʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v78, "CU", "t͡sʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v79, "D", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v80, "DI", "tj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v81, "DU", "tw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v82, "E1", "ɤ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v83, "E2", "ɤ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v84, "E3", "ɤ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v85, "E4", "ɤ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v86, "E5", "ɤ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v87, "EG1", "əŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v88, "EG2", "əŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v89, "EG3", "əŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v90, "EG4", "əŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v91, "EG5", "əŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v92, "EI1", "e͡ɪ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v93, "EI2", "e͡ɪ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v94, "EI3", "e͡ɪ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v95, "EI4", "e͡ɪ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v96, "EI5", "e͡ɪ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v97, "EN1", "ən˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v98, "EN2", "ən˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v99, "EN3", "ən˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v100, "EN4", "ən˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v101, "EN5", "ən˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v102, "ER2", "ə˞˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v103, "ER3", "ə˞˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v104, "ER4", "ə˞˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v105, "ER5", "ə˞˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v106, "F", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v107, "G", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[1],0>(v108, "GS", "");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v109, "GU", "kw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v110, "H", "χ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v111, "HU", "χw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v112, "I1", "i˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v113, "I2", "i˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v114, "I3", "i˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v115, "I4", "i˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v116, "I5", "i˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v117, "IE1", "ɛ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v118, "IE2", "ɛ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v119, "IE3", "ɛ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v120, "IE4", "ɛ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v121, "IE5", "ɛ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v122, "IG1", "iŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v123, "IG2", "iŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v124, "IG3", "iŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v125, "IG4", "iŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v126, "IG5", "iŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v127, "IH1", "ɪ̈˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v128, "IH2", "ɪ̈˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(v129, "IH3", "ɪ̱˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v130, "IH4", "ɪ̈˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v131, "IH5", "ɪ̱˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v132, "IN1", "in˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v133, "IN2", "in˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v134, "IN3", "in˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v135, "IN4", "in˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v136, "IN5", "in˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v137, "JI", "t͡ɕj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v138, "JU", "t͡ɕy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v139, "K", "kʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v140, "KU", "kʰw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v141, "L", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v142, "LI", "lj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v143, "LU", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v144, "LYU", "ly");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v145, "M", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v146, "MI", "mj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v147, "MU", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v148, "N", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v149, "NI", "nj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v150, "NU", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v151, "NYU", "ny");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v152, "O1", "ɔ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v153, "O2", "ɔ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v154, "O3", "ɔ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(v155, "O4", "ɔ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v156, "O5", "ɔ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v157, "OG1", "oŋ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v158, "OG2", "oŋ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v159, "OG3", "oŋ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v160, "OG4", "oŋ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v161, "OG5", "oŋ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v162, "OU1", "o͡ʊ˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v163, "OU2", "o͡ʊ˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(v164, "OU3", "o͡ʊ˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(v165, "OU4", "o͡ʊ˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(v166, "OU5", "o͡ʊ˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v167, "P", "pʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v168, "PI", "pʰj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v169, "QI", "t͡ɕʰj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(v170, "QU", "t͡ɕʰy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v171, "R", "ʐ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v172, "RU", "ʐ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v173, "S", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v174, "SH", "ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v175, "SHU", "ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v176, "SU", "sw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(v177, "T", "tʰ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v178, "TI", "tʰj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v179, "TU", "tʰw");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v180, "U1", "u˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v181, "U2", "u˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v182, "U3", "u˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v183, "U4", "u˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v184, "U5", "u˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v185, "UN1", "wn˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v186, "UN2", "wn˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(v187, "UN3", "wn˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v188, "UN4", "wn˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v189, "UN5", "wn˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v190, "W", "w");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v191, "XI", "ɕj");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v192, "XU", "ɕy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v193, "Y", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v194, "YU", "jy");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v195, "YU1", "˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v196, "YU2", "˧˥");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(v197, "YU3", "˨˩˦");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v198, "YU4", "˥˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v199, "YU5", "˩");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[5],0>(v200, "Z", "t͡s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v201, "ZH", "t͡ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v202, "ZHU", "t͡ʂ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v203, "ZU", "t͡sw");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 157);
      v44 = v203;
      v45 = -7536;
      do
      {
        v44 = (std::pair<std::string,std::string>::~pair(v44) - 48);
        v45 += 48;
      }

      while (v45);
    }

    else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v2, "de_DE"))
    {
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v47, "@@", "ə");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v48, "AEH", "ˈɛ:");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v49, "AH", "ˈaː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v50, "ATT", "ˈa");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v51, "EH", "ˈeː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v52, "ETT", "ˈɛ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(v53, "EU", "ˈɔ͡y");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v54, "IH", "ˈiː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v55, "ITT", "ˈɪ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v56, "OE", "ˈœ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v57, "OEH", "ˈø");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v58, "OH", "ˈoː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v59, "OTT", "ˈɔ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v60, "UE", "ˈʏ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(v61, "UEH", "ˈyː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v62, "UH", "ˈuː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(v63, "UTT", "ˈʊ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v64, "ach", "x");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(v65, "att", "a");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "b", "b");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v67, "d", "d");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v68, "ett", "ɛ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v69, "eu", "ɔ͡y");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "f", "f");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "g", "g");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v72, "h", "h");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v73, "hr", "ʀ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v74, "ich", "ç");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v75, "itt", "ɪ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v76, "j", "j");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "k", "k");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "l", "l");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v79, "m", "m");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v80, "n", "n");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v81, "ng", "ŋ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v82, "oe", "ø");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(v83, "ott", "oː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v84, "p", "p");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v85, "r", "ʀ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v86, "s", "s");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v87, "sch", "ʃ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v88, "t", "t");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v89, "ue", "yː");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(v90, "utt", "ʊ");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v91, "w", "v");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(v92, "wu", "a͡u");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v93, "z", "z");
      std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v94, "zh", "ʒ");
      std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 48);
      for (j = 282; j != -6; j -= 6)
      {
        std::pair<std::string,std::string>::~pair(&v47[j]);
      }
    }

    else
    {
      result = 0.0;
      *v4 = 0u;
      *(v4 + 16) = 0u;
      *(v4 + 32) = 1065353216;
    }

    return result;
  }

  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v47, "AA", "ˈa");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v48, "AU", "ˈa w");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v49, "AY", "ˈa j");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v50, "EE", "ˈe");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v51, "EY", "ˈe j");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v52, "II", "ˈi");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v53, "OO", "ˈo");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v54, "OY", "ˈo j");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(v55, "UU", "ˈu");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v56, "UY", "w ˈi");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v57, "Z", "s");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v58, "aa", "a");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v59, "b", "β");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(v60, "ch", "t͡ʃ");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v61, "d", "ð");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v62, "ee", "e");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v63, "f", "f");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v64, "g", "ɣ");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v65, "ii", "i");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v66, "j", "x");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v67, "k", "k");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v68, "ks", "ks");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v69, "l", "l");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v70, "m", "m");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v71, "n", "n");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(v72, "nn", "ɲ");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v73, "oo", "o");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v74, "p", "p");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(v75, "r", "ɾ");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v76, "rr", "r");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v77, "s", "s");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v78, "t", "t");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(v79, "uu", "u");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(v80, "w", "w");
  std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[6],0>(v81, "y", "d͡ʒ");
  std::unordered_map<std::string,std::string>::unordered_map(v4, v47, 35);
  v39 = 210;
  do
  {
    v40 = &v47[v39];
    if (SHIBYTE(v47[v39 - 1]) < 0)
    {
      operator delete(*(v40 - 3));
    }

    if (*(v40 - 25) < 0)
    {
      operator delete(*(v40 - 6));
    }

    v39 -= 6;
  }

  while (v39 * 8);
  return result;
}

void sub_1B52C4184(_Unwind_Exception *a1)
{
  v3 = v1 + 2256;
  v4 = -2304;
  do
  {
    v3 = std::pair<std::string,std::string>::~pair(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void sub_1B52C4680(_Unwind_Exception *a1)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 - 72);
  _Unwind_Resume(a1);
}

void sub_1B52F0964(_Unwind_Exception *a1)
{
  v3 = v1 + 2304;
  v4 = -2352;
  do
  {
    v3 = std::pair<std::string,std::string>::~pair(v3) - 48;
    v4 += 48;
  }

  while (v4);
  _Unwind_Resume(a1);
}

uint64_t quasar::PhonesetMapping::getSupportedXsampaProns@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  quasar::PhonesetMapPerLanguage::getXSampaToNvASRMap(v20);
  for (i = v21; i; i = *i)
  {
    if (*(i + 39) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, i[2], i[3]);
    }

    else
    {
      v22 = *(i + 2);
    }

    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v5 >= v4)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
      v8 = v7 + 1;
      if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
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

      v23.__end_cap_.__value_ = a1;
      if (v10)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v10);
      }

      v11 = 24 * v7;
      v12 = *&v22.__r_.__value_.__l.__data_;
      *(v11 + 16) = *(&v22.__r_.__value_.__l + 2);
      *v11 = v12;
      memset(&v22, 0, sizeof(v22));
      v13 = 24 * v7 + 24;
      v14 = *(a1 + 8) - *a1;
      v15 = 24 * v7 - v14;
      memcpy((v11 - v14), *a1, v14);
      v16 = *a1;
      *a1 = v15;
      *(a1 + 8) = v13;
      v17 = *(a1 + 16);
      *(a1 + 16) = 0;
      v23.__end_ = v16;
      v23.__end_cap_.__value_ = v17;
      v23.__first_ = v16;
      v23.__begin_ = v16;
      std::__split_buffer<std::string>::~__split_buffer(&v23);
      v18 = SHIBYTE(v22.__r_.__value_.__r.__words[2]);
      *(a1 + 8) = v13;
      if (v18 < 0)
      {
        operator delete(v22.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v6 = *&v22.__r_.__value_.__l.__data_;
      *(v5 + 16) = *(&v22.__r_.__value_.__l + 2);
      *v5 = v6;
      *(a1 + 8) = v5 + 24;
    }
  }

  return std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v20);
}

void sub_1B52F12B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  *(v21 - 88) = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v21 - 88));
  _Unwind_Resume(a1);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1334(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1388(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F13DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1430(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1484(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F14D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[2],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F152C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1580(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F15D4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[2],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1628(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F167C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F16D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1724(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1778(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[11],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F17CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1820(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1874(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[12],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F18C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F191C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1970(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F19C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1A18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1A6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1AC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[3],char const(&)[12],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1B14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[2],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1B68(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1BBC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1C10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1C64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1CB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[2],char const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1D0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1D60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1DB4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1E08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1E5C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1EB0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1F04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1F58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F1FAC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2000(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[2],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2054(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F20A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[2],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F20FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2150(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[4],char const(&)[1],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F21A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F21F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F224C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F22A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F22F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[19],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2348(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[18],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F239C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F23F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2444(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[17],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2498(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F24EC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[16],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2540(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2594(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F25E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F263C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2690(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F26E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F278C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F27E0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[14],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2834(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2888(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F28DC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2930(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[13],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F29D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2A2C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2A80(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[12],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2AD4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2B28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2B7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2BD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2C24(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2C78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2CCC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2D20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2D74(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[9],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2DC8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2E1C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2E70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[10],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2EC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2F18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2F6C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F2FC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F3014(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[3],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F3068(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[6],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F30BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F3110(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F3164(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[7],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F31B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[5],char const(&)[5],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F320C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[8],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F3260(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[10],char const(&)[4],0>(_BYTE *a1, char *a2, char *a3)
{
  v5 = std::string::basic_string[abi:ne200100]<0>(a1, a2);
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  return a1;
}

void sub_1B52F32B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void Vocab::~Vocab(Vocab *this)
{
  *this = &unk_1F2D2A398;
  LHash<unsigned int,float>::clear(this + 7, 0);
  LHash<unsigned int,float>::clear(this + 6, 0);
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x50C80EE9192B6);
  }

  LHash<char const*,unsigned int>::clear(this + 1, 0);
}

{
  Vocab::~Vocab(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t Vocab::numWords(Vocab *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return *v1 >> 5;
  }

  else
  {
    return 0;
  }
}

uint64_t Vocab::unkIndex(Vocab *this)
{
  return *(this + 16);
}

{
  return this + 64;
}

uint64_t Vocab::ssIndex(Vocab *this)
{
  return *(this + 17);
}

{
  return this + 68;
}

uint64_t Vocab::seIndex(Vocab *this)
{
  return *(this + 18);
}

{
  return this + 72;
}

uint64_t Vocab::pauseIndex(Vocab *this)
{
  return *(this + 19);
}

{
  return this + 76;
}

uint64_t Vocab::isNonEvent(Vocab *this, const char *a2)
{
  v3 = (*(*this + 40))(this, a2, 0xFFFFFFFFLL);
  v4 = *(*this + 176);

  return v4(this, v3);
}

uint64_t Vocab::addNonEvent(Vocab *this, const char *a2)
{
  v3 = (*(*this + 16))(this, a2);
  v4 = *(*this + 184);

  return v4(this, v3);
}

uint64_t Vocab::typeOfMetaTag(Vocab *this, unsigned int a2)
{
  v4 = 0;
  if (LHash<unsigned int,float>::locate(this + 7, a2, &v4))
  {
    return *(*(this + 7) + 8 * v4 + 4);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void *Vocab::use(Vocab *this)
{
  v2 = _ZTWN5Vocab14outputVocabTLSE();
  result = *v2;
  if (!*v2)
  {
    result = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *v2 = result;
  }

  *result = this;
  return result;
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::Edge::Edge(uint64_t a1, int a2, std::string *this, const std::string *a4, double a5)
{
  *(a1 + 8) = 0u;
  v10 = (a1 + 8);
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, this->__r_.__value_.__l.__data_, this->__r_.__value_.__l.__size_);
  }

  else
  {
    __str = *this;
  }

  if (std::string::find(this, 35, 0) != -1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "#");
    quasar::splitStringSimple(this, __p, &v13);
  }

  *a1 = a2;
  std::string::operator=(v10, &__str);
  std::string::operator=(v10 + 1, a4);
  *(a1 + 56) = a5;
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B52F369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (*(v23 + 55) < 0)
  {
    operator delete(v24[3]);
  }

  if (*(v23 + 31) < 0)
  {
    operator delete(*v24);
  }

  _Unwind_Resume(exception_object);
}

BOOL quasar::corrective_reranking::VoiceEditingWFST::Edge::accepts(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  v5 = strlen(quasar::corrective_reranking::VoiceEditingWFST::star[0]);
  v6 = v5;
  v7 = *(a1 + 31);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v4;
    if (v6 != v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    if (memcmp(v8, quasar::corrective_reranking::VoiceEditingWFST::star[0], v6))
    {
      goto LABEL_8;
    }

    v15 = strlen(quasar::corrective_reranking::VoiceEditingWFST::eps[0]);
    v16 = v15;
    v17 = *(a2 + 23);
    if (v17 < 0)
    {
      if (v15 != *(a2 + 8))
      {
        return 1;
      }

      if (v15 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *a2;
    }

    else
    {
      v18 = a2;
      if (v16 != v17)
      {
        return 1;
      }
    }

    if (!memcmp(v18, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v16))
    {
      goto LABEL_8;
    }

    return 1;
  }

  if (v5 == *(a1 + 16))
  {
    if (v5 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v8 = *v4;
    goto LABEL_7;
  }

LABEL_8:
  if ((v7 & 0x80000000) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(a1 + 16);
  }

  v10 = *(a2 + 23);
  v11 = v10;
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v9 != v10)
  {
    return 0;
  }

  if ((v7 & 0x80000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = *v4;
  }

  if (v11 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  return memcmp(v12, v13, v9) == 0;
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::Path::Path(uint64_t a1, int a2, std::string **a3)
{
  v5[0] = a2;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 80) = 0;
  *a1 = a2;
  *(a1 + 8) = 0;
  if ((a1 + 16) != a3)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 16), *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 40), v5);
  return a1;
}

void sub_1B52F38F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *(v10 + 40);
  if (v14)
  {
    *(v10 + 48) = v14;
    operator delete(v14);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::VoiceEditingWFST::Path::advance(uint64_t a1, int *a2)
{
  *(a1 + 8) = *(a2 + 7) + *(a1 + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    __s1 = *(a2 + 2);
  }

  v4 = strlen(quasar::corrective_reranking::VoiceEditingWFST::eps[0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v4 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v4))
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v4 != __s1.__r_.__value_.__l.__size_)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
LABEL_13:
    memset(&__s1, 0, sizeof(__s1));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&__s1, *(a1 + 16), *(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 3));
    v7 = *&__s1.__r_.__value_.__l.__data_;
    p_s1 = &__s1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_s1);
    if (*(&v7 + 1) != v7)
    {
      quasar::corrective_reranking::VoiceEditingWFST::Path::removeTopInToken(a1);
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v5 = __s1.__r_.__value_.__r.__words[0];
  v6 = memcmp(__s1.__r_.__value_.__l.__data_, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v4);
  operator delete(v5);
  if (v6)
  {
    goto LABEL_13;
  }

LABEL_15:
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 4), *(a2 + 5));
  }

  else
  {
    __s1 = *(a2 + 8);
  }

  v8 = strlen(quasar::corrective_reranking::VoiceEditingWFST::eps[0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v8 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]) && !memcmp(&__s1, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v8))
    {
      goto LABEL_32;
    }

    goto LABEL_27;
  }

  if (v8 != __s1.__r_.__value_.__l.__size_)
  {
    operator delete(__s1.__r_.__value_.__l.__data_);
LABEL_27:
    if (*(a2 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__s1, *(a2 + 4), *(a2 + 5));
    }

    else
    {
      __s1 = *(a2 + 8);
    }

    std::vector<std::string>::push_back[abi:ne200100](a1 + 64, &__s1);
    if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
    }

    goto LABEL_32;
  }

  if (v8 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v9 = __s1.__r_.__value_.__r.__words[0];
  v10 = memcmp(__s1.__r_.__value_.__l.__data_, quasar::corrective_reranking::VoiceEditingWFST::eps[0], v8);
  operator delete(v9);
  if (v10)
  {
    goto LABEL_27;
  }

LABEL_32:
  v11 = *a2;
  *a1 = *a2;
  LODWORD(__s1.__r_.__value_.__l.__data_) = v11;
  std::vector<int>::push_back[abi:ne200100]((a1 + 40), &__s1);
}

void sub_1B52F3B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::VoiceEditingWFST::Path::removeTopInToken(quasar::corrective_reranking::VoiceEditingWFST::Path *this)
{
  std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::string *,std::string *,std::string *>(&v6, (*(this + 2) + 24), *(this + 3), *(this + 2));
  v3 = v2;
  v4 = *(this + 3);
  if (v4 != v2)
  {
    do
    {
      v5 = *(v4 - 1);
      v4 -= 3;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }

    while (v4 != v3);
  }

  *(this + 3) = v3;
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::Path::getOutputs@<X0>(quasar::corrective_reranking::VoiceEditingWFST::Path *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 8), *(this + 9), 0xAAAAAAAAAAAAAAABLL * ((*(this + 9) - *(this + 8)) >> 3));
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::VoiceEditingWFST(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v54[19] = *MEMORY[0x1E69E9840];
  *a1 = a4;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1065353216;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  std::ifstream::basic_ifstream(v52);
  if ((v53[*(v52[0] - 24) + 16] & 5) != 0)
  {
    v49 = 0u;
    memset(v50, 0, 240);
    *&v48[0].__locale_ = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "Could not open isyms file ", 26);
    v18 = *(a3 + 23);
    if (v18 >= 0)
    {
      v19 = a3;
    }

    else
    {
      v19 = *a3;
    }

    if (v18 >= 0)
    {
      v20 = *(a3 + 23);
    }

    else
    {
      v20 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v48);
  }

  v46[0] = 0;
  v46[1] = 0;
  v47 = 0;
  v6 = MEMORY[0x1E69E5318];
  std::ios_base::getloc((v52 + *(v52[0] - 24)));
  v7 = std::locale::use_facet(v48, v6);
  v8 = (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(v48);
  v9 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v52, v46, v8);
  if ((*(v9 + *(*v9 - 24) + 32) & 5) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, " \t");
    quasar::splitStringSimple(v46, __p, v48);
  }

  if (!*(a1 + 24))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v48);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "_vocab.size() > 0", 17);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v48);
  }

  std::ifstream::basic_ifstream(v48);
  if ((v50[*(v48[0].__locale_ - 3)] & 5) != 0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    *v31 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Could not open fst text file ", 29);
    v22 = *(a2 + 23);
    if (v22 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    if (v22 >= 0)
    {
      v24 = *(a2 + 23);
    }

    else
    {
      v24 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  v10 = MEMORY[0x1E69E5318];
  std::ios_base::getloc((v48 + *(v48[0].__locale_ - 3)));
  v11 = std::locale::use_facet(__p, v10);
  v12 = (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(__p);
  v13 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v48, v27, v12);
  if ((*(v13 + *(*v13 - 24) + 32) & 5) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, " \t");
    quasar::splitStringSimple(v27, __p, &v26);
  }

  if (!*(a1 + 56))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "!edgeLists.empty()", 18);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  v48[0] = *MEMORY[0x1E69E54C8];
  locale = v48[0].__locale_;
  v15 = *(MEMORY[0x1E69E54C8] + 24);
  *(&v48[0].__locale_ + *(v48[0].__locale_ - 3)) = v15;
  MEMORY[0x1B8C84A00](&v49);
  std::istream::~istream();
  MEMORY[0x1B8C85200](&v51);
  if (SHIBYTE(v47) < 0)
  {
    operator delete(v46[0]);
  }

  v52[0] = locale;
  *(v52 + *(locale - 3)) = v15;
  MEMORY[0x1B8C84A00](v53);
  std::istream::~istream();
  MEMORY[0x1B8C85200](v54);
  return a1;
}

void sub_1B52F4560(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B52F45CCLL);
}

uint64_t std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__emplace_back_slow_path<quasar::corrective_reranking::VoiceEditingWFST::Edge const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge const&>(a1, a2);
    result = v3 + 64;
  }

  a1[1] = result;
  return result;
}

uint64_t quasar::corrective_reranking::VoiceEditingWFST::search@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v25 = result;
  v33 = a4;
  if (!a4 || *a2 != a2[1])
  {
    if ((a3 & 0x100000000) == 0)
    {
      v6 = *(result + 48);
      v7 = *v6;
      if (*result == 1)
      {
        for (; v7; v7 = *v7)
        {
          LODWORD(v26.__first_) = *(v6 + 4);
          memset(&v26.__begin_, 0, 24);
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v26.__begin_, v6[3], v6[4], (v6[4] - v6[3]) >> 6);
          LODWORD(p_begin) = *(v7 + 4);
          v36 = 0;
          v37 = 0;
          v35 = 0;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v35, v7[3], v7[4], (v7[4] - v7[3]) >> 6);
          v8 = p_begin;
          v30 = &v35;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&v30);
          p_begin = &v26.__begin_;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&p_begin);
          if (SLODWORD(v26.__first_) < v8)
          {
            v6 = v7;
          }
        }
      }

      else
      {
        for (; v7; v7 = *v7)
        {
          LODWORD(v26.__first_) = *(v7 + 4);
          memset(&v26.__begin_, 0, 24);
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v26.__begin_, v7[3], v7[4], (v7[4] - v7[3]) >> 6);
          LODWORD(p_begin) = *(v6 + 4);
          v36 = 0;
          v37 = 0;
          v35 = 0;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(&v35, v6[3], v6[4], (v6[4] - v6[3]) >> 6);
          v9 = p_begin;
          v30 = &v35;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&v30);
          p_begin = &v26.__begin_;
          std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&p_begin);
          if (SLODWORD(v26.__first_) < v9)
          {
            v6 = v7;
          }
        }
      }
    }

    p_begin = 0;
    v35 = 0;
    v36 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      do
      {
        v12 = *(v10 + 23);
        if (v12 < 0)
        {
          v13 = *v10;
          v12 = *(v10 + 8);
        }

        else
        {
          v13 = v10;
        }

        quasar::utf8::convertToLowerCaseOrThrow(v13, v12, &v29);
        std::vector<std::string>::push_back[abi:ne200100](&p_begin, &v29);
        if (v25 + 16 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(v25 + 8, &v29.__r_.__value_.__l.__data_))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, quasar::corrective_reranking::VoiceEditingWFST::unk);
          v14 = v31;
          if (v31 >= v32)
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v31 - v30) >> 3);
            v17 = v16 + 1;
            if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v32 - v30) >> 3) > v17)
            {
              v17 = 0x5555555555555556 * ((v32 - v30) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v32 - v30) >> 3) >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v17;
            }

            v26.__end_cap_.__value_ = &v30;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v30, v18);
            }

            v19 = 8 * ((v31 - v30) >> 3);
            v20 = *__p;
            *(v19 + 16) = v28;
            *v19 = v20;
            __p[1] = 0;
            v28 = 0;
            __p[0] = 0;
            v21 = 24 * v16 + 24;
            v22 = (24 * v16 - (v31 - v30));
            memcpy((v19 - (v31 - v30)), v30, v31 - v30);
            v23 = v30;
            v24 = v32;
            v30 = v22;
            v31 = v21;
            v32 = 0;
            v26.__end_ = v23;
            v26.__end_cap_.__value_ = v24;
            v26.__first_ = v23;
            v26.__begin_ = v23;
            std::__split_buffer<std::string>::~__split_buffer(&v26);
            v31 = v21;
            if (SHIBYTE(v28) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v15 = *__p;
            *(v31 + 2) = v28;
            *v14 = v15;
            v31 = v14 + 24;
          }
        }

        else
        {
          std::vector<std::string>::push_back[abi:ne200100](&v30, &v29);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        v10 += 24;
      }

      while (v10 != v11);
    }

    if (v33)
    {
      operator new();
    }

    operator new();
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  return result;
}

void sub_1B52F53A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  *(v36 - 184) = a9;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__destroy_vector::operator()[abi:ne200100]((v36 - 184));
  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  if (a13)
  {
    (*(*a13 + 8))(a13);
  }

  *(v36 - 184) = v36 - 160;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v36 - 184));
  *(v36 - 160) = v36 - 128;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v36 - 160));
  _Unwind_Resume(a1);
}

void quasar::corrective_reranking::Paths::add(quasar::corrective_reranking::Paths *this, const quasar::corrective_reranking::VoiceEditingWFST::Path *a2)
{
  (*(*this + 16))(__p);
  v4 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    v10 = *(this + 2);
    if (v10 < *(this + 3))
    {
      std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(this + 8, a2);
      v11 = v10 + 88;
LABEL_14:
      *(this + 2) = v11;
      goto LABEL_15;
    }

LABEL_13:
    v11 = std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__emplace_back_slow_path<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(this + 1, a2);
    goto LABEL_14;
  }

  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(this + 4, __p);
  if (!v5)
  {
    v12 = *(this + 1);
    v13 = *(this + 2);
    v17 = __p;
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(this + 4, __p)[5] = (0x2E8BA2E8BA2E8BA3 * ((v13 - v12) >> 3));
    v14 = *(this + 2);
    if (v14 < *(this + 3))
    {
      std::vector<quasar::corrective_reranking::VoiceEditingWFST::Path>::__construct_one_at_end[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Path const&>(this + 8, a2);
      v11 = v14 + 88;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v6 = v5[5];
  v7 = *(this + 1);
  if (0x2E8BA2E8BA2E8BA3 * ((*(this + 2) - v7) >> 3) <= v6)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = v7 + 88 * v6;
  v9 = *(v8 + 8);
  if (*(a2 + 1) < v9)
  {
    v9 = *(a2 + 1);
  }

  *(v8 + 8) = v9;
LABEL_15:
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B52F56F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::corrective_reranking::VoiceEditingWFST::Path::~Path(quasar::corrective_reranking::VoiceEditingWFST::Path *this)
{
  v3 = (this + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  v3 = (this + 16);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void quasar::corrective_reranking::VoiceEditingWFST::search(std::vector<std::string> const&,std::optional<int>,BOOL,std::optional<int>)::$_2::operator()(uint64_t *a1, __int128 *a2, int *a3)
{
  v6 = *a1;
  v18 = *a2;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v19, *(a2 + 2), *(a2 + 3), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 3) - *(a2 + 2)) >> 3));
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v22, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 2);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v25, *(a2 + 8), *(a2 + 9), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 9) - *(a2 + 8)) >> 3));
  quasar::corrective_reranking::VoiceEditingWFST::Path::advance(&v18, a3);
  v12 = 0uLL;
  v13[0] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v12, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  v7 = v12;
  v28 = &v12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (*(&v7 + 1) != v7)
  {
    quasar::corrective_reranking::Paths::add(*a1[1], &v18);
    goto LABEL_12;
  }

  LODWORD(v12) = v18;
  v8 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v6 + 72), &v12);
  if (v8)
  {
    *(&v18 + 1) = *(&v18 + 1) + *(v8 + 5);
    v9 = 2;
LABEL_11:
    quasar::corrective_reranking::Paths::add(*a1[v9], &v18);
    goto LABEL_12;
  }

  if (*a1[3] != 1 || (v12 = 0uLL, v13[0] = 0, std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v12, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3)), v10 = *(&v12 + 1) - v12, v11 = *(a1[4] + 8) - *a1[4], v28 = &v12, std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28), v10 != v11))
  {
    v9 = 1;
    goto LABEL_11;
  }

  v12 = v18;
  memset(v13, 0, sizeof(v13));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v13, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v22, v23, (v23 - v22) >> 2);
  memset(v17, 0, 24);
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v17, v25, v26, 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3));
  *(&v12 + 1) = *(&v12 + 1) + 1000000.0;
  quasar::corrective_reranking::Paths::add(*a1[2], &v12);
  v28 = v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  v28 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v28);
LABEL_12:
  *&v12 = &v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  *&v12 = &v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_1B52F5A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27)
{
  quasar::corrective_reranking::VoiceEditingWFST::Path::~Path(&a9);
  quasar::corrective_reranking::VoiceEditingWFST::Path::~Path(&a21);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__init_with_size[abi:ne200100]<quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B52F5B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::corrective_reranking::VoiceEditingWFST::Edge>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*,quasar::corrective_reranking::VoiceEditingWFST::Edge*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2 + 2;
    do
    {
      v7 = v6 - 2;
      *v4 = *(v6 - 8);
      if (*(v6 - 1) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 8), *(v6 - 3), *(v6 - 2));
      }

      else
      {
        v8 = *(v6 - 24);
        *(v4 + 24) = *(v6 - 1);
        *(v4 + 8) = v8;
      }

      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external((v4 + 32), *v6, *(v6 + 1));
      }

      else
      {
        v9 = *v6;
        *(v4 + 48) = *(v6 + 2);
        *(v4 + 32) = v9;
      }

      *(v4 + 56) = *(v6 + 3);
      v4 = v14 + 64;
      v14 += 64;
      v6 += 4;
    }

    while (v7 + 4 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::corrective_reranking::VoiceEditingWFST::Edge>,quasar::corrective_reranking::VoiceEditingWFST::Edge*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}