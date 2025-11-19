void std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneStates(kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem *,unsigned long *,kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::Elem **)::{lambda(int,int)#2} &>,std::reverse_iterator<int *>,std::reverse_iterator<int *>,std::reverse_iterator<std::__wrap_iter<int *>>,std::reverse_iterator<std::__wrap_iter<int *>>,std::reverse_iterator<std::__wrap_iter<int *>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void ***a11)
{
  if (a2 != a4)
  {
    v12 = *a11;
    while (a6 != a8)
    {
      v13 = *(a2 - 4);
      if (*(**v12 + 4 * v13) >= *(**v12 + 4 * *(a6 - 4)))
      {
        a2 -= 4;
      }

      else
      {
        LODWORD(v13) = *(a6 - 4);
        a6 -= 4;
      }

      *(a10 - 4) = v13;
      a10 -= 4;
      if (a2 == a4)
      {
        return;
      }
    }

    if (a4 != a2)
    {
      v14 = -4;
      do
      {
        v15 = *(a2 - 4);
        a2 -= 4;
        *(a10 + v14) = v15;
        v14 -= 4;
      }

      while (a2 != a4);
    }
  }
}

void *std::vector<int>::vector[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v4 = 0;
    v5 = a2;
    do
    {
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      ++v4;
      v5 = v7;
    }

    while (v7 != a3);
  }

  std::vector<int>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, a2, a3, v4);
  return a1;
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5815588(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinksFinal(uint64_t a1, int a2, int a3)
{
  if (a3)
  {
    *(a1 + 600) = *(a1 + 144);
  }

  for (i = *(a1 + 16); i; i = i[3])
  {
    v7 = *i;
    j = *(i + 4);
    v8 = *(a1 + 360) + 36 * j;
    if (*(a1 + 224) == 0.0)
    {
      v12 = 0.0;
    }

    else
    {
      (*(**(a1 + 184) + 32))(*(a1 + 184), v7);
      v10 = INFINITY;
      if (*(v8 + 28) >> 26)
      {
        v11 = INFINITY;
      }

      else
      {
        v11 = v9;
      }

      if (v11 != INFINITY)
      {
        v10 = v11 + (*(**(a1 + 288) + 16))(*(a1 + 288), HIDWORD(v7));
      }

      v12 = v10 * *(a1 + 224);
    }

    v49[0] = &j;
    *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 320), &j) + 5) = v12;
    v13 = v12 + *v8;
    v14 = *(a1 + 148);
    if (v13 >= *(a1 + 144))
    {
      v13 = *(a1 + 144);
    }

    *(a1 + 144) = v13;
    v15 = *v8;
    if (*v8 >= v14)
    {
      v15 = v14;
    }

    *(a1 + 148) = v15;
    if (a3)
    {
      v49[0] = j | (*(v8 + 4) << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 480, v49);
    }
  }

  v47 = 8 * a2;
  do
  {
    v16 = *(*(a1 + 96) + v47);
    j = v16;
    if (!v16)
    {
      break;
    }

    v48 = 0;
    do
    {
      v17 = *(a1 + 360);
      v50 = 0;
      v49[0] = &j;
      v18 = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 320), &j);
      v19 = *(a1 + 144);
      if (v19 == INFINITY)
      {
        v20 = *(a1 + 148);
      }

      else
      {
        v20 = v19 - *(v18 + 5);
      }

      v21 = v17 + 36 * v16;
      v22 = *v21 - v20;
      v23 = *(v21 + 8);
      v50 = *(v21 + 8);
      if (v50)
      {
        v24 = 0;
        do
        {
          v25 = *(a1 + 376);
          v26 = (v25 + 24 * v23);
          v27 = (*(a1 + 360) + 36 * *v26);
          v28 = v27[1];
          v29 = v28 + (((*v21 + v26[3]) + v26[2]) - *v27);
          if (v29 <= *(a1 + 204))
          {
            if (v29 >= 0.0)
            {
              v32 = v28 + (((*v21 + v26[3]) + v26[2]) - *v27);
            }

            else
            {
              v32 = 0.0;
              v33 = v29 >= -0.01 || kaldi::g_kaldi_verbose_level < -1;
              if (!v33)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v49);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v49);
                v23 = v50;
              }
            }

            if (v32 < v22)
            {
              v22 = v32;
            }

            v30 = *(v26 + 4);
            v50 = v30;
            v24 = v23;
          }

          else
          {
            v30 = *(v26 + 4);
            v31 = (v25 + 24 * v24 + 16);
            if (!v24)
            {
              v31 = (v21 + 8);
            }

            *v31 = v30;
            if (a3)
            {
              std::vector<int>::push_back[abi:ne200100]((a1 + 448), &v50);
              std::vector<int>::push_back[abi:ne200100]((a1 + 576), &j);
            }

            v50 = v30;
            --*(a1 + 312);
          }

          v23 = v30;
        }

        while (v30);
      }

      v34 = *(a1 + 204);
      v35 = INFINITY;
      if (v22 <= v34)
      {
        v35 = v22;
      }

      v36 = *(v21 + 4);
      if (v36 != v35)
      {
        if (COERCE_INT(fabs(v36 - v35)) > 2139095039)
        {
          goto LABEL_52;
        }

        v37 = vabds_f32(v36, v35);
        v38 = fabsf(v36);
        v39 = fabsf(v22);
        v33 = v22 <= v34;
        v40 = INFINITY;
        if (v33)
        {
          v40 = v39;
        }

        if (v37 > ((v38 + v40) * 0.00001))
        {
LABEL_52:
          v48 = 1;
        }
      }

      *(v21 + 4) = v35;
      v16 = *(v21 + 12);
      j = v16;
    }

    while (v16);
  }

  while ((v48 & 1) != 0);
  v41 = *(*(a1 + 120) + v47);
  for (j = v41; v41; j = v41)
  {
    v42 = *(a1 + 360) + 36 * v41;
    if (a3)
    {
      v49[0] = v41 | (*(v42 + 4) << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 480, v49);
    }

    v49[0] = &j;
    v43 = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 320), &j);
    v44 = *(a1 + 144);
    if (v44 == INFINITY)
    {
      v45 = *(a1 + 148);
    }

    else
    {
      v45 = v44 - *(v43 + 5);
    }

    v46 = *v42 - v45;
    *(v42 + 4) = v46;
    if (v46 > *(a1 + 204))
    {
      *(v42 + 4) = 2139095040;
    }

    v41 = *(v42 + 12);
  }
}

void sub_1B5815A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinks(uint64_t a1, unsigned int a2, _BYTE *a3, _BYTE *a4, int a5, float a6)
{
  *a3 = 0;
  *a4 = 0;
  v10 = *(*(a1 + 96) + 8 * a2);
  v34[0] = v10;
  v28 = 8 * a2;
  if (v10)
  {
    v30 = a5;
    do
    {
      v11 = 0;
      do
      {
        v31 = v11;
        v12 = *(a1 + 360) + 36 * v10;
        if (v30)
        {
          v32[0] = v10 | (*(v12 + 4) << 32);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 480, v32);
        }

        v33 = 0;
        v13 = *(v12 + 8);
        v33 = v13;
        if (v13)
        {
          v14 = 0;
          v15 = INFINITY;
          do
          {
            while (1)
            {
              v16 = (*(a1 + 376) + 24 * v13);
              v17 = (*(a1 + 360) + 36 * *v16);
              v18 = v17[1] + (((*v12 + v16[3]) + v16[2]) - *v17);
              if (v18 <= *(a1 + 204))
              {
                break;
              }

              v19 = (v12 + 8);
              if (v14)
              {
                v19 = (*(a1 + 376) + 24 * v14 + 16);
              }

              v13 = *(v16 + 4);
              *v19 = v13;
              if (a5)
              {
                std::vector<int>::push_back[abi:ne200100]((a1 + 448), &v33);
                std::vector<int>::push_back[abi:ne200100]((a1 + 576), v34);
              }

              v33 = v13;
              *a4 = 1;
              --*(a1 + 312);
              if (!v13)
              {
                goto LABEL_27;
              }
            }

            if (v18 >= 0.0)
            {
              v20 = v17[1] + (((*v12 + v16[3]) + v16[2]) - *v17);
            }

            else
            {
              v20 = 0.0;
              if (v18 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v32);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v32);
              }
            }

            if (v20 < v15)
            {
              v15 = v20;
            }

            v14 = v33;
            v13 = *(v16 + 4);
            v33 = v13;
          }

          while (v13);
        }

        else
        {
          v15 = INFINITY;
        }

LABEL_27:
        v11 = (vabds_f32(v15, *(v12 + 4)) > a6) | v31;
        *(v12 + 4) = v15;
        v10 = *(v12 + 12);
        v34[0] = v10;
      }

      while (v10);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v30 = 0;
      *a3 = 1;
      v10 = *(*(a1 + 96) + v28);
      v34[0] = v10;
    }

    while (v10);
  }

  v22 = *(*(a1 + 120) + v28);
  for (v34[0] = v22; v22; v34[0] = v22)
  {
    v23 = *(a1 + 360) + 36 * v22;
    if (a5)
    {
      v32[0] = v22 | (*(v23 + 4) << 32);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 480, v32);
    }

    v32[0] = v34;
    v24 = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((a1 + 320), v34);
    v25 = *(a1 + 144);
    if (v25 == INFINITY)
    {
      v26 = *(a1 + 148);
    }

    else
    {
      v26 = v25 - *(v24 + 5);
    }

    v27 = *v23 - v26;
    if (vabds_f32(v27, *(v23 + 4)) > a6)
    {
      *a3 = 1;
    }

    *(v23 + 4) = v27;
    if (v27 > *(a1 + 204))
    {
      *(v23 + 4) = 2139095040;
      *a4 = 1;
    }

    v22 = *(v23 + 12);
  }
}

void sub_1B5815DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(uint64_t *result, unsigned int a2, int a3)
{
  v4 = result;
  v20 = a2;
  v5 = *(result[12] + 8 * a2);
  v19 = v5;
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = v5;
      v8 = v4[45];
      v9 = v8 + 36 * v5;
      v5 = *(v9 + 12);
      if (*(v9 + 4) == INFINITY)
      {
        if (v6)
        {
          v10 = (v8 + 36 * v6 + 12);
        }

        else
        {
          v10 = (v4[12] + 8 * v20);
        }

        *v10 = v5;
        if (a3)
        {
          std::vector<int>::push_back[abi:ne200100](v4 + 50, &v19);
          std::vector<int>::push_back[abi:ne200100](v4 + 66, &v20);
          if (std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(v4 + 40, &v19))
          {
            v21 = &v19;
            v11 = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 40, &v19);
            v21 = (v19 | (*(v11 + 5) << 32));
            std::vector<std::pair<int,int>>::push_back[abi:ne200100]((v4 + 63), &v21);
          }
        }

        result = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__erase_unique<unsigned int>(v4 + 40, &v19);
        *(v9 + 12) = 0;
        --*(v4 + 77);
        v7 = v6;
      }

      v19 = v5;
      v6 = v7;
    }

    while (v5);
    a2 = v20;
  }

  v12 = *(v4[15] + 8 * a2);
  v19 = v12;
  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = v12;
      v15 = v4[45];
      v16 = v15 + 36 * v12;
      v12 = *(v16 + 12);
      if (*(v16 + 4) == INFINITY)
      {
        if (v13)
        {
          v17 = (v15 + 36 * v13 + 12);
        }

        else
        {
          v17 = (v4[15] + 8 * v20);
        }

        *v17 = v12;
        if (a3)
        {
          std::vector<int>::push_back[abi:ne200100](v4 + 53, &v19);
          std::vector<int>::push_back[abi:ne200100](v4 + 69, &v20);
          v21 = &v19;
          v18 = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v4 + 40, &v19);
          v21 = (v19 | (*(v18 + 5) << 32));
          std::vector<std::pair<int,int>>::push_back[abi:ne200100]((v4 + 63), &v21);
        }

        result = std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__erase_unique<unsigned int>(v4 + 40, &v19);
        *(v16 + 12) = 0;
        --*(v4 + 77);
        v14 = v13;
      }

      v19 = v12;
      v13 = v14;
    }

    while (v12);
  }

  return result;
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CompactTokensAndLinks(uint64_t a1, clockid_t a2)
{
  if (*(a1 + 472) == 1)
  {
    if (kaldi::g_kaldi_verbose_level >= 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v61, 2);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "Skipping compaction final pruning because has been done", 55);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v61);
    }
  }

  else
  {
    v3 = *(a1 + 372);
    v4 = *(a1 + 388);
    v59 = 1;
    kaldi::Timer::Reset(v57, a2);
    v60 = 0;
    kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VisitLiveTokens<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CompactTokensAndLinks(void)::{lambda#1}>(a1, a1);
    v5 = *(a1 + 448);
    for (i = *(a1 + 456); v5 != i; ++v5)
    {
      v7 = *v5;
      if (v7)
      {
        v8 = *(a1 + 376);
        do
        {
          v9 = v8 + 24 * v7;
          v7 = *(v9 + 16);
          *(v9 + 20) |= 0x80000000;
        }

        while (v7);
      }
    }

    kaldi::quasar::E2ETokenHeap::RemoveDeadObjects((a1 + 360), v54);
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = v54[0];
      do
      {
        *(v10 + 16) = v11[*(v10 + 16)];
        v10 = *(v10 + 24);
      }

      while (v10);
    }

    v12 = *(a1 + 96);
    v13 = *(a1 + 104);
    if (v12 != v13)
    {
      v14 = v54[0];
      do
      {
        *v12 = v14[*v12];
        v12 += 2;
      }

      while (v12 != v13);
    }

    v15 = *(a1 + 120);
    v16 = *(a1 + 128);
    if (v15 != v16)
    {
      v17 = v54[0];
      do
      {
        *v15 = v17[*v15];
        v15 += 2;
      }

      while (v15 != v16);
    }

    v18 = *(a1 + 576);
    v19 = *(a1 + 584);
    if (v18 != v19)
    {
      v20 = v54[0];
      do
      {
        *v18 = v20[*v18];
        ++v18;
      }

      while (v18 != v19);
    }

    v21 = *(a1 + 400);
    v22 = *(a1 + 408);
    if (v21 != v22)
    {
      v23 = v54[0];
      do
      {
        *v21 = v23[*v21];
        ++v21;
      }

      while (v21 != v22);
    }

    v24 = *(a1 + 424);
    v25 = *(a1 + 432);
    if (v24 != v25)
    {
      v26 = v54[0];
      do
      {
        *v24 = v26[*v24];
        ++v24;
      }

      while (v24 != v25);
    }

    v27 = *(a1 + 448);
    v28 = *(a1 + 456);
    if (v27 != v28)
    {
      v29 = v55;
      do
      {
        *v27 = v29[*v27];
        ++v27;
      }

      while (v27 != v28);
    }

    memset(v52, 0, sizeof(v52));
    v53 = 1065353216;
    for (j = *(a1 + 336); j; j = *j)
    {
      LODWORD(v61[0].__locale_) = *(v54[0] + *(j + 4));
      HIDWORD(v61[0].__locale_) = *(j + 5);
      std::__hash_table<std::__hash_value_type<char32_t,char32_t>,std::__unordered_map_hasher<char32_t,std::__hash_value_type<char32_t,char32_t>,std::hash<char32_t>,std::equal_to<char32_t>,true>,std::__unordered_map_equal<char32_t,std::__hash_value_type<char32_t,char32_t>,std::equal_to<char32_t>,std::hash<char32_t>,true>,std::allocator<std::__hash_value_type<char32_t,char32_t>>>::__emplace_unique_key_args<char32_t,std::pair<char32_t const,char32_t> const&>(v52, v61);
    }

    std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__move_assign(a1 + 320, v52);
    v50[0] = 0;
    v50[1] = 0;
    v51 = 0;
    v31 = *(a1 + 480);
    v32 = *(a1 + 488);
    if (v31 != v32)
    {
      do
      {
        LODWORD(v61[0].__locale_) = *(v54[0] + *v31);
        HIDWORD(v61[0].__locale_) = v31[1];
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](v50, v61);
        v31 += 2;
      }

      while (v31 != v32);
      v31 = *(a1 + 480);
    }

    if (v31)
    {
      *(a1 + 488) = v31;
      operator delete(v31);
      *(a1 + 480) = 0;
      *(a1 + 488) = 0;
      *(a1 + 496) = 0;
    }

    *(a1 + 480) = *v50;
    *(a1 + 496) = v51;
    v50[1] = 0;
    v51 = 0;
    v50[0] = 0;
    __p[0] = 0;
    __p[1] = 0;
    v49 = 0;
    v33 = (a1 + 504);
    v34 = *(a1 + 504);
    v35 = *(a1 + 512);
    if (v34 != v35)
    {
      do
      {
        LODWORD(v61[0].__locale_) = *(v54[0] + *v34);
        HIDWORD(v61[0].__locale_) = v34[1];
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](__p, v61);
        v34 += 2;
      }

      while (v34 != v35);
      v34 = *v33;
    }

    if (v34)
    {
      *(a1 + 512) = v34;
      operator delete(v34);
      *v33 = 0;
      *(a1 + 512) = 0;
      *(a1 + 520) = 0;
    }

    *v33 = *__p;
    *(a1 + 520) = v49;
    __p[1] = 0;
    v49 = 0;
    __p[0] = 0;
    if (kaldi::g_kaldi_verbose_level > 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v61, 2);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "Compacted in ", 13);
      Seconds = kaldi::Timer::GetSeconds(0x10, v37);
      v39 = MEMORY[0x1B8C84BE0](v36, (Seconds - v58) * 1000.0);
      v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " ms ", 4);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "tokens ", 7);
      v42 = MEMORY[0x1B8C84C00](v41, (v3 - 1));
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " -> ", 4);
      v44 = MEMORY[0x1B8C84C00](v43, (*(a1 + 372) - 1));
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " and forward links ", 19);
      v46 = MEMORY[0x1B8C84C00](v45, (v4 - 1));
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " -> ", 4);
      MEMORY[0x1B8C84C00](v47, (*(a1 + 388) - 1));
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v61);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (v50[0])
    {
      v50[1] = v50[0];
      operator delete(v50[0]);
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v52);
    if (v55)
    {
      v56 = v55;
      operator delete(v55);
    }

    if (v54[0])
    {
      v54[1] = v54[0];
      operator delete(v54[0]);
    }
  }
}

void sub_1B5816474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a17);
  kaldi::LatticeWordAligner::ComputationState::~ComputationState(&a23);
  _Unwind_Resume(a1);
}

kaldi::quasar::E2ETokenHeap *kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VisitLiveTokens<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::CompactTokensAndLinks(void)::{lambda(unsigned int)#1}>(kaldi::quasar::E2ETokenHeap *result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 2); i; i = *(i + 24))
  {
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), *(i + 16), 1);
  }

  v5 = *(v3 + 12);
  v6 = *(v3 + 13);
  while (v5 != v6)
  {
    v7 = *v5;
    v5 += 2;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v7, 1);
  }

  v8 = *(v3 + 15);
  v9 = *(v3 + 16);
  while (v8 != v9)
  {
    v10 = *v8;
    v8 += 2;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v10, 1);
  }

  v11 = *(v3 + 72);
  v12 = *(v3 + 73);
  while (v11 != v12)
  {
    v13 = *v11++;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v13, 1);
  }

  v14 = *(v3 + 50);
  v15 = *(v3 + 51);
  while (v14 != v15)
  {
    v16 = *v14++;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v16, 1);
  }

  v17 = *(v3 + 53);
  v18 = *(v3 + 54);
  while (v17 != v18)
  {
    v19 = *v17++;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v19, 1);
  }

  v20 = *(v3 + 60);
  v21 = *(v3 + 61);
  while (v20 != v21)
  {
    v22 = *v20;
    v20 += 2;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v22, 1);
  }

  v24 = *(v3 + 63);
  v23 = *(v3 + 64);
  while (v24 != v23)
  {
    v25 = *v24;
    v24 += 2;
    result = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken((a2 + 360), v25, 1);
  }

  return result;
}

uint64_t kaldi::quasar::E2ETokenHeap::RemoveDeadObjects@<X0>(kaldi::quasar::E2ETokenHeap *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(this + 3);
  if (v4 >= 2)
  {
    v5 = 0;
    for (i = 1; i < v4; ++i)
    {
      v7 = *this + v5;
      v8 = *(v7 + 64) & 0x3FFFFFF;
      if (v8 && (*(v7 + 60) & 0x80000000) != 0)
      {
        kaldi::quasar::E2ETokenHeap::MarkAndTraceToken(this, v8, 1);
        v4 = *(this + 3);
      }

      v5 += 36;
    }
  }

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::RemoveDeadElements(this, a2);
  result = kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::RemoveDeadElements(this + 16, a2 + 1);
  v10 = *(this + 3);
  if (v10 >= 2)
  {
    v11 = *a2;
    v12 = a2[3];
    v13 = (*this + 44);
    v14 = v10 - 1;
    do
    {
      v15 = *v13;
      v13[1] = *(v11 + 4 * v13[1]);
      v13[5] = *(v11 + 4 * (v13[5] & 0x3FFFFFF)) | v13[5] & 0xFC000000;
      *v13 = *(v12 + 4 * v15);
      v13 += 9;
      --v14;
    }

    while (v14);
  }

  v16 = *(this + 7);
  if (v16 >= 2)
  {
    v17 = *a2;
    v18 = a2[3];
    v19 = (*(this + 2) + 40);
    v20 = v16 - 1;
    do
    {
      *(v19 - 4) = *(v17 + 4 * *(v19 - 4));
      *v19 = *(v18 + 4 * *v19);
      v19 += 6;
      --v20;
    }

    while (v20);
  }

  return result;
}

kaldi::quasar::E2ETokenHeap *kaldi::quasar::E2ETokenHeap::MarkAndTraceToken(kaldi::quasar::E2ETokenHeap *this, unsigned int a2, int a3)
{
  if (a2)
  {
    v3 = this;
    v4 = (*this + 36 * a2);
    v5 = v4[6];
    if ((v5 & 0x80000000) == 0)
    {
      v4[6] = v5 | 0x80000000;
      v6 = v4[2];
      if (v6)
      {
        v7 = *(this + 2);
        do
        {
          v8 = v7 + 24 * v6;
          v6 = *(v8 + 16);
          *(v8 + 20) |= 0x80000000;
        }

        while (v6);
      }

      if (a3)
      {
        for (i = v4[3]; i; i = *(*v3 + 36 * i + 12))
        {
          this = kaldi::quasar::E2ETokenHeap::MarkAndTraceToken(v3, i, 0);
        }
      }
    }
  }

  return this;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::RemoveDeadElements(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = *(a1 + 12);
  std::vector<int>::resize(this, v4);
  if (v4 < 2)
  {
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = *a1;
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v6 + v5;
      if ((*(v6 + v5 + 60) & 0x80000000) != 0)
      {
        if (v7 != v8)
        {
          v10 = v6 + 36 * v8;
          v11 = *(v9 + 36);
          v12 = *(v9 + 52);
          *(v10 + 32) = *(v9 + 68);
          *v10 = v11;
          *(v10 + 16) = v12;
          v6 = *a1;
        }

        *(v6 + 36 * v8 + 24) &= ~0x80000000;
        this->__begin_[v7] = v8++;
      }

      else
      {
        this->__begin_[v7] = -1;
      }

      ++v7;
      v5 += 36;
    }

    while (v4 != v7);
  }

  return kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::ShrinkBuffer(a1, v8);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::RemoveDeadElements(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = *(a1 + 12);
  std::vector<int>::resize(this, v4);
  if (v4 < 2)
  {
    v8 = 1;
  }

  else
  {
    v5 = 0;
    v6 = *a1;
    v7 = 1;
    v8 = 1;
    do
    {
      v9 = v6 + v5;
      if ((*(v6 + v5 + 44) & 0x80000000) != 0)
      {
        if (v7 != v8)
        {
          v10 = v6 + 24 * v8;
          v11 = *(v9 + 24);
          *(v10 + 16) = *(v9 + 40);
          *v10 = v11;
          v6 = *a1;
        }

        *(v6 + 24 * v8 + 20) &= ~0x80000000;
        this->__begin_[v7] = v8++;
      }

      else
      {
        this->__begin_[v7] = -1;
      }

      ++v7;
      v5 += 24;
    }

    while (v4 != v7);
  }

  return kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::ShrinkBuffer(a1, v8);
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::ShrinkBuffer(uint64_t a1, uint64_t a2)
{
  result = sysconf(29);
  v5 = (result - 1 + 36 * a2) & -result;
  v6 = (result - 1 + 36 * *(a1 + 12)) & -result;
  if (v6 != v5)
  {
    result = madvise((v5 + *a1), v6 - v5, 7);
    if (result)
    {
      v7 = result;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " Could not madvise: ", 20);
      v9 = strerror(v7);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, v9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }
  }

  *(a1 + 12) = a2;
  return result;
}

uint64_t kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::ShrinkBuffer(uint64_t a1, uint64_t a2)
{
  result = sysconf(29);
  v5 = (result - 1 + 24 * a2) & -result;
  v6 = (result - 1 + 24 * *(a1 + 12)) & -result;
  if (v6 != v5)
  {
    result = madvise((v5 + *a1), v6 - v5, 7);
    if (result)
    {
      v7 = result;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " Could not madvise: ", 20);
      v9 = strerror(v7);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, v9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
    }
  }

  *(a1 + 12) = a2;
  return result;
}

void *std::set<int>::set[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 4 * a3;
    do
    {
      std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(a1, v4, a2++);
      v6 -= 4;
    }

    while (v6);
  }

  return a1;
}

uint64_t fst::ArcMap<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,quasar::UnkMapper<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, int *a2)
{
  (*(*a1 + 280))(a1, 0);
  (*(*a1 + 288))(a1, 0);
  result = (*(*a1 + 24))(a1);
  if (result != -1)
  {
    v5 = (*(*a1 + 64))(a1, 0x3FFFFFFF0007, 0);
    if ((*(*a1 + 160))(a1) >= 1)
    {
      v6 = 0;
      do
      {
        (*(*a1 + 296))(a1, v6, &v24);
        while (!(*(*v24 + 24))(v24))
        {
          v7 = (*(*v24 + 32))(v24);
          if (*(v7 + 4) == a2[1])
          {
            v8 = *a2;
            v9 = *(v7 + 16);
            LODWORD(v22[0]) = *(v7 + 4);
            HIDWORD(v22[0]) = v8;
          }

          else
          {
            v22[0] = *v7;
            v9 = *(v7 + 16);
          }

          v22[1] = *(v7 + 8);
          v23 = v9;
          (*(*v24 + 88))(v24, v22);
          (*(*v24 + 40))(v24);
        }

        if (v24)
        {
          (*(*v24 + 8))();
        }

        (*(*a1 + 32))(v22, a1, v6);
        v10 = v22[0];
        if (a2[1] || !*a2)
        {
          goto LABEL_24;
        }

        v11 = FLAGS_fst_error_fatal;
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v19, "FATAL");
          v12 = fst::LogMessage::LogMessage(&v21, v19);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          v12 = fst::LogMessage::LogMessage(&v18, __p);
        }

        v13 = fst::cerr(v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "ArcMap: non-zero arc labels for superfinal arc", 46);
        if (v11)
        {
          fst::LogMessage::~LogMessage(&v21);
          if (v20 < 0)
          {
            v14 = v19[0];
LABEL_22:
            operator delete(v14);
          }
        }

        else
        {
          fst::LogMessage::~LogMessage(&v18);
          if (v17 < 0)
          {
            v14 = __p[0];
            goto LABEL_22;
          }
        }

        (*(*a1 + 192))(a1, 4, 4);
LABEL_24:
        v22[0] = v10;
        (*(*a1 + 184))(a1, v6, v22);
        v6 = (v6 + 1);
      }

      while (v6 < (*(*a1 + 160))(a1));
    }

    v15 = fst::InvertProperties(v5);
    return (*(*a1 + 192))(a1, v15, 0x3FFFFFFF0007);
  }

  return result;
}

void sub_1B581702C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  fst::LogMessage::~LogMessage(&a28);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 32;
  }
}

void *std::__shared_ptr_emplace<quasar::QsrTextSymbolTable>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::QsrTextSymbolTable> const&,long long &,std::allocator<quasar::QsrTextSymbolTable>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFD0D0;
  std::allocator<quasar::QsrTextSymbolTable>::construct[abi:ne200100]<quasar::QsrTextSymbolTable,std::shared_ptr<quasar::QsrTextSymbolTable> const&,long long &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<quasar::QsrTextSymbolTable>::construct[abi:ne200100]<quasar::QsrTextSymbolTable,std::shared_ptr<quasar::QsrTextSymbolTable> const&,long long &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a4;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v7 = *(v5 + 104);
  *(a2 + 96) = *(v5 + 96);
  *(a2 + 104) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a2 + 112) = *(v5 + 112);
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 120) = v6;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::quasar::OffsetOutputLabelMapper,std::allocator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32AF8;
  fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::ArcMapFst();
}

void std::__shared_ptr_emplace<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::~ArcMapFst(void *a1)
{
  fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Init(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(&__str, "map");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  result = (*(**(a1 + 136) + 24))(*(a1 + 136));
  *(a1 + 156) = 0;
  if (result == -1)
  {
    *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950000;
  }

  else
  {
    result = (*(**(a1 + 136) + 64))(*(a1 + 136), 0x3FFFFFFF0004, 0);
    *(a1 + 8) = *(a1 + 8) & 4 | result;
    if (*(a1 + 156) == 2)
    {
      *(a1 + 160) = 0;
    }
  }

  return result;
}

void sub_1B5817958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::~ArcMapFstImpl(uint64_t a1)
{
  fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::~ArcMapFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && (*(**(a1 + 136) + 64))(*(a1 + 136), 4, 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::~ArcMapFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2D32C28;
  v2 = *(a1 + 136);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  if (*(a1 + 152) == 1)
  {
    v3 = *(a1 + 144);
    if (v3)
    {
      MEMORY[0x1B8C85350](v3, 0x1000C4052888210);
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a1);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(void *a1)
{
  *a1 = &unk_1F2D32C78;
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

float fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Final(uint64_t a1, int a2)
{
  if (fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2))
  {
    goto LABEL_18;
  }

  v4 = *(a1 + 156);
  if (v4 != 1)
  {
    if (v4 == 2)
    {
      if (*(a1 + 160) == a2)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = INFINITY;
      }

      goto LABEL_17;
    }

    v7 = *(a1 + 136);
    v6 = *(a1 + 160);
LABEL_10:
    v9 = v6 != -1 && v6 <= a2;
    v5 = (*(*v7 + 32))(v7, (a2 - v9));
    goto LABEL_17;
  }

  v6 = *(a1 + 160);
  v5 = 0.0;
  if (v6 != a2)
  {
    v7 = *(a1 + 136);
    goto LABEL_10;
  }

LABEL_17:
  MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
  *MutableState = v5;
  *(MutableState + 48) |= 9u;
LABEL_18:
  v11 = *(a1 + 120);
  if (*(v11 + 76) == a2)
  {
    v12 = v11 + 80;
  }

  else
  {
    v12 = *(v11 + 8) + 8 * a2 + 8;
  }

  return **v12;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::NumArcs(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Expand(a1, a2);
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

  return (*(*v5 + 32) - *(*v5 + 24)) >> 4;
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Expand(uint64_t a1, int a2)
{
  v4 = *(a1 + 160);
  if (v4 == a2)
  {

    return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
  }

  v6 = *(a1 + 136);
  v8 = v4 != -1 && v4 <= a2;
  v31 = 0;
  (*(*v6 + 136))(v6, (a2 - v8), &v28);
  while (1)
  {
    if (!v28)
    {
      if (v31 >= v29)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    if ((*(*v28 + 24))(v28))
    {
      break;
    }

    if (v28)
    {
      v9 = (*(*v28 + 32))();
      goto LABEL_18;
    }

LABEL_17:
    v9 = (*(&v28 + 1) + 16 * v31);
LABEL_18:
    v11 = *v9;
    v10 = v9[1];
    v12 = HIDWORD(v10);
    v13 = *(a1 + 160);
    if (v13 != -1 && v13 <= SHIDWORD(v10))
    {
      LODWORD(v12) = HIDWORD(v10) + 1;
    }

    if (v12 >= *(a1 + 164))
    {
      *(a1 + 164) = v12 + 1;
    }

    v15 = HIDWORD(v11);
    if (SHIDWORD(v11) >= 1)
    {
      LODWORD(v15) = **(a1 + 144) + HIDWORD(v11);
    }

    *&v27 = v11 | (v15 << 32);
    *(&v27 + 1) = v10 | (v12 << 32);
    MutableState = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
    std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](MutableState + 24, &v27);
    if (v28)
    {
      (*(*v28 + 40))(v28);
    }

    else
    {
      ++v31;
    }
  }

  if (v28)
  {
    (*(*v28 + 8))();
    goto LABEL_34;
  }

LABEL_32:
  if (v30)
  {
    --*v30;
  }

LABEL_34:
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasFinal(a1, a2) & 1) == 0 || (LODWORD(v28) = fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Final(a1, a2), LODWORD(v27) = 2139095040, *&v28 == INFINITY))
  {
    v17 = *(a1 + 156);
    if (v17 == 2)
    {
      v21 = *(a1 + 160);
      v23 = v21 != -1 && v21 <= a2;
      v24 = (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v23));
      *&v28 = v24;
      LODWORD(v27) = 2139095040;
      if (v24 != INFINITY)
      {
        v25 = *(a1 + 160);
        *&v28 = 0;
        *(&v28 + 1) = __PAIR64__(v25, LODWORD(v24));
        v26 = fst::GCCacheStore<fst::FirstCacheStore<fst::VectorCacheStore<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::GetMutableState(*(a1 + 120), a2);
        std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](v26 + 24, &v28);
      }
    }

    else if (v17 == 1)
    {
      v18 = *(a1 + 160);
      v20 = v18 != -1 && v18 <= a2;
      (*(**(a1 + 136) + 32))(*(a1 + 136), (a2 - v20));
    }
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SetArcs(a1, a2);
}

void sub_1B5817FFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  else if (a15)
  {
    --*a15;
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::NumInputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Expand(a1, a2);
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

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::NumOutputEpsilons(uint64_t a1, int a2)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Expand(a1, a2);
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

  return *(*v5 + 16);
}

void *fst::ImplToFst<fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D32C78;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

uint64_t fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>::StateIterator(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = &unk_1F2D32D28;
  *(a1 + 8) = v3;
  v4 = *(v3 + 136);
  *(a1 + 32) = 0;
  (*(*v4 + 128))(v4, a1 + 16);
  *(a1 + 40) = 0;
  *(a1 + 44) = *(*(a1 + 8) + 156) == 2;
  fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcScaleMapper>>::CheckSuperfinal(a1);
  return a1;
}

void sub_1B581832C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,fst::StdToLatticeMapper<float>>>::StateIterator(v3);
  }

  _Unwind_Resume(exception_object);
}

void *fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D32D28;
  v2 = a1[2];
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void fst::StateIterator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>::~StateIterator(void *a1)
{
  *a1 = &unk_1F2D32D28;
  v1 = a1[2];
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::InitArcIterator(uint64_t a1, int a2, void *a3)
{
  if ((fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::HasArcs(a1, a2) & 1) == 0)
  {
    fst::ArcMapFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>::Expand(a1, a2);
  }

  return fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::InitArcIterator(a1, a2, a3);
}

void std::__shared_ptr_emplace<fst::quasar::MergeTrieFst>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> const&,int &,int &,std::string const&,std::allocator<fst::quasar::MergeTrieFst>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32D80;
  fst::quasar::MergeTrieFst::MergeTrieFst(a1 + 3);
}

void std::__shared_ptr_emplace<fst::quasar::MergeTrieFst>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32D80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D32DD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::operator()@<X0>(uint64_t result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*(*(result + 8) + 2132) == 1)
  {
    std::allocate_shared[abi:ne200100]<quasar::StateAccessRecordingFst,std::allocator<quasar::StateAccessRecordingFst>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&,0>();
  }

  v4 = a2[1];
  *a3 = *a2;
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<quasar::StateAccessRecordingFst>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&,std::allocator<quasar::StateAccessRecordingFst>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14728;
  quasar::StateAccessRecordingFst::StateAccessRecordingFst(a1 + 3);
  return a1;
}

void std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::operator()(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t std::__function::__func<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2,std::allocator<quasar::OnlineTransducerGraphSearchDecoder::insertLocationSpecificModels(std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::vector<int> &,quasar::Location &)::$_2>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<fst::NonBackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::NonBackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D32F50;
  a1[3] = &unk_1F2D32FA0;
  a1[4] = a2;
  (*(*a2 + 64))(a2, 268697600, 1);
  return a1;
}

void std::__shared_ptr_emplace<fst::NonBackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D32F50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::NonBackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14B10;
  std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::NonBackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::allocator<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,std::shared_ptr<fst::NonBackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v14 = *a3;
  v15 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v12 = *a4;
  v13 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __asm { FMOV            V0.2S, #1.0 }

  v11 = _D0;
  fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ComposeDeterministicOnDemandFst(a2, &v14, &v12, &v11);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }
}

void sub_1B5818E5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>&,kaldi::quasar::AutoRegressiveGraphSearchDecoderConfig &,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>*,kaldi::quasar::DynamicClassTagDict *,std::allocator<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(void *a1, uint64_t a2, uint64_t a3, void (****a4)(void), uint64_t *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D33008;
  kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AutoRegressiveGraphSearchDecoder((a1 + 3), a2, a3, *a4, *a5);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D33008;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::AutoRegressiveGraphSearchDecoder(uint64_t a1, uint64_t a2, uint64_t a3, void (***a4)(void), uint64_t a5)
{
  *a1 = &unk_1F2D33058;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v9 = a1 + 16;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 24) = xmmword_1B5AE71B0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 56) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 184) = a2;
  v10 = *(a3 + 16);
  *(a1 + 192) = *a3;
  *(a1 + 208) = v10;
  v11 = *(a3 + 32);
  v12 = *(a3 + 48);
  v13 = *(a3 + 80);
  *(a1 + 256) = *(a3 + 64);
  *(a1 + 272) = v13;
  *(a1 + 224) = v11;
  *(a1 + 240) = v12;
  *(a1 + 288) = a4;
  *(a1 + 296) = a5;
  *(a1 + 304) = (*(*a2 + 64))(a2, 0x10000000, 0) == 0x10000000;
  *(a1 + 308) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 1065353216;
  v14 = *(a3 + 84);
  if (v14 >= 0x3FFFFFF)
  {
    v15 = 0x3FFFFFFLL;
  }

  else
  {
    v15 = v14;
  }

  kaldi::quasar::E2ETokenHeap::E2ETokenHeap((a1 + 360), v15, *(a3 + 88));
  *(a1 + 608) = 0u;
  *(a1 + 624) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  (*(*a2 + 24))(a2);
  (**a4)(a4);
  kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(v9, 0x3E8uLL);
  return a1;
}

void sub_1B58191CC(_Unwind_Exception *a1)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((v1 + 40));
  v6 = *v4;
  if (*v4)
  {
    v1[21] = v6;
    operator delete(v6);
  }

  v7 = v1[15];
  if (v7)
  {
    v1[16] = v7;
    operator delete(v7);
  }

  v8 = *v3;
  if (*v3)
  {
    v1[13] = v8;
    operator delete(v8);
  }

  kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::~HashList(v2);
  _Unwind_Resume(a1);
}

void kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~AutoRegressiveGraphSearchDecoder(uint64_t a1)
{
  kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~AutoRegressiveGraphSearchDecoder(a1);

  JUMPOUT(0x1B8C85350);
}

void *kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::~HashList(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = 0;
    do
    {
      ++v3;
      v2 = *(v2 + 24);
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
        MEMORY[0x1B8C85310](v4[v6], 0x1020C80B07198D1);
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

uint64_t kaldi::quasar::AutoRegressiveGraphSearchDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~AutoRegressiveGraphSearchDecoder(uint64_t a1)
{
  *a1 = &unk_1F2D33058;
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v3 = *(a1 + 40);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *(a1 + 16);
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  if (v5)
  {
    v6 = *(a1 + 64);
    do
    {
      v7 = v5;
      v5 = *(v5 + 24);
      *(v7 + 24) = v6;
      v6 = v7;
    }

    while (v5);
    *(a1 + 64) = v7;
  }

  v8 = *(a1 + 608);
  if (v8)
  {
    free(v8);
    *(a1 + 608) = 0;
    *(a1 + 616) = 0;
  }

  *(a1 + 624) = 0u;
  v9 = *(a1 + 576);
  if (v9)
  {
    *(a1 + 584) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 552);
  if (v10)
  {
    *(a1 + 560) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 528);
  if (v11)
  {
    *(a1 + 536) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 504);
  if (v12)
  {
    *(a1 + 512) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 480);
  if (v13)
  {
    *(a1 + 488) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 448);
  if (v14)
  {
    *(a1 + 456) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 424);
  if (v15)
  {
    *(a1 + 432) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 400);
  if (v16)
  {
    *(a1 + 408) = v16;
    operator delete(v16);
  }

  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::ForwardLink>::Clear(a1 + 376);
  kaldi::quasar::LazyBuffer<kaldi::quasar::E2ETokenHeap::Token>::Clear(a1 + 360);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a1 + 320);
  v17 = *(a1 + 160);
  if (v17)
  {
    *(a1 + 168) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 120);
  if (v18)
  {
    *(a1 + 128) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 96);
  if (v19)
  {
    *(a1 + 104) = v19;
    operator delete(v19);
  }

  kaldi::HashList<std::pair<unsigned long long,unsigned long long>,unsigned int,kaldi::PairHasher<unsigned long long>,std::equal_to<std::pair<unsigned long long,unsigned long long>>>::~HashList((a1 + 16));
  return a1;
}

void std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v1 + 32);
    operator delete(v1);
    *a1 = 0;
  }
}

void sub_1B5819EE0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 10);
  objc_exception_rethrow();
}

void sub_1B5819EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B581A1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    if (a24 < 0)
    {
      operator delete(__p);
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v24 + 10);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1B581A500(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 10);
  objc_exception_rethrow();
}

double quasar::AudioAnalyticsDecoder::AudioAnalyticsDecoder(uint64_t a1, __int128 *a2)
{
  v2 = quasar::Decoder::Decoder(a1, a2);
  *v2 = &unk_1F2D33088;
  *&result = 0x50000000ALL;
  *(v2 + 456) = 0x50000000ALL;
  *(v2 + 57) = 0;
  return result;
}

void quasar::AudioAnalyticsDecoder::~AudioAnalyticsDecoder(quasar::AudioAnalyticsDecoder *this)
{
  quasar::Decoder::~Decoder(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::AudioAnalyticsDecoder::registerParams(quasar::AudioAnalyticsDecoder *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "audio-analytics-only");
  quasar::SystemConfig::enforceMinVersion(a2, 112, 0, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "min-voicing-duration");
  std::string::basic_string[abi:ne200100]<0>(v4, "Minimum duration of voicing");
  quasar::SystemConfig::Register<unsigned int>(a2, __p, this + 456, v4, 0, 112, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "acoustic-feature-window-width");
  std::string::basic_string[abi:ne200100]<0>(v4, "Minimum width of the normalization window for acoustic audio analytics features");
  quasar::SystemConfig::Register<int>(a2, __p, this + 460, v4, 0, 112, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(v4[0]);
  }

  if (v7 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B581A7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::AudioAnalyticsDecoder::runImpl(uint64_t a1, kaldi::OnlineFeatureMatrix **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    (*(**(*a2 + 2) + 24))(*(*a2 + 2));
      ;
    }

    _ZNSt3__115allocate_sharedB8ne200100IN5kaldi6MatrixIfEENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (quasar::gLogLevel >= 1)
  {
    memset(v6, 0, 272);
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Error: no utterance features were provided", 42);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v6);
  }

  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return 2;
}

void sub_1B581ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  quasar::RecogResult::~RecogResult(&a45);
  quasar::AudioAnalytics::~AudioAnalytics(&STACK[0x3B8]);
  kaldi::Matrix<float>::~Matrix(v46 - 136);
  v48 = *(v46 - 88);
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  _Unwind_Resume(a1);
}

uint64_t QuasarCCorrectiveRerankingParser_new(uint64_t a1)
{
  v3[4] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F2D33160;
  v3[1] = a1;
  v3[3] = v3;
  v1 = CapiHelpers_new<QuasarCCorrectiveRerankingParser,quasar::corrective_reranking::Parser>(v3);
  std::__function::__value_func<quasar::corrective_reranking::Parser * ()(void)>::~__value_func[abi:ne200100](v3);
  return v1;
}

void sub_1B581AE68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<quasar::corrective_reranking::Parser * ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CapiHelpers_new<QuasarCCorrectiveRerankingParser,quasar::corrective_reranking::Parser>(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v1 + 48))(v1);
}

void **CapiHelpers_delete<QuasarCCorrectiveRerankingParser,quasar::corrective_reranking::Parser>(void **result)
{
  if (result)
  {
    v1 = result;
    quasar::corrective_reranking::Models::~Models((result + 88));
    quasar::corrective_reranking::Config::~Config(v1);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t QuasarCCorrectiveRerankingParser_runJson(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1F2D331F0;
  v4[1] = a2;
  v4[3] = v4;
  v2 = CapiHelpers_execute<QuasarCCorrectiveRerankingParser const,quasar::corrective_reranking::Parser const,char *>(a1, v4);
  std::__function::__value_func<char * ()(quasar::corrective_reranking::Parser const*)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1B581B0C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<char * ()(quasar::corrective_reranking::Parser const*)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QuasarCCorrectiveRerankingParser_new::$_0,std::allocator<QuasarCCorrectiveRerankingParser_new::$_0>,quasar::corrective_reranking::Parser * ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D33160;
  a2[1] = v2;
  return result;
}

void sub_1B581B330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1B8C85350](v15, v16);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<QuasarCCorrectiveRerankingParser_new::$_0,std::allocator<QuasarCCorrectiveRerankingParser_new::$_0>,quasar::corrective_reranking::Parser * ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<quasar::corrective_reranking::Parser * ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<char * ()(quasar::corrective_reranking::Parser const*)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__func<QuasarCCorrectiveRerankingParser_runJson::$_0,std::allocator<QuasarCCorrectiveRerankingParser_runJson::$_0>,char * ()(quasar::corrective_reranking::Parser const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D331F0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<QuasarCCorrectiveRerankingParser_runJson::$_0,std::allocator<QuasarCCorrectiveRerankingParser_runJson::$_0>,char * ()(quasar::corrective_reranking::Parser const*)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  std::string::basic_string[abi:ne200100]<0>(&v3, *(a1 + 8));
  quasar::corrective_reranking::Parser::runJson(v2, &v3);
}

char *sub_1B581B550(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char __s1, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if ((v29 & 0x80000000) == 0)
  {
    return strdup(&v28);
  }

  v24 = strdup(v28);
  operator delete(v28);
  return v24;
}

void sub_1B581B5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<QuasarCCorrectiveRerankingParser_runJson::$_0,std::allocator<QuasarCCorrectiveRerankingParser_runJson::$_0>,char * ()(quasar::corrective_reranking::Parser const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<char * ()(quasar::corrective_reranking::Parser const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t kaldi::quasar::Features::GetFeatureMap(kaldi::quasar::Features *this)
{
  if (atomic_load_explicit(&kaldi::quasar::Features::GetFeatureMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::quasar::Features::GetFeatureMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::quasar::Features::GetFeatureMap(void)::$_0 &&>>);
  }

  return kaldi::quasar::Features::GetFeatureMap(void)::m_heap;
}

void kaldi::quasar::GetStatePosts(int a1@<W0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 1065353216;
  v9 = (*a2 + 24 * a1);
  v30 = 0;
  v31 = 0;
  v29 = 0;
  std::vector<std::pair<int,float>>::__init_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(&v29, *v9, v9[1], (v9[1] - *v9) >> 3);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  if (a3[1] != *a3)
  {
    v10 = (*a3 + 24 * a1);
    if (&v26 != v10)
    {
      std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(&v26, *v10, v10[1], v10[1] - *v10);
    }

    v11 = (*a4 + 24 * a1);
    if (&__p != v11)
    {
      std::vector<std::pair<int,float>>::__assign_with_size[abi:ne200100]<std::pair<int,float>*,std::pair<int,float>*>(&__p, *v11, v11[1], v11[1] - *v11);
    }
  }

  v12 = v29;
  if (v30 != v29)
  {
    v13 = 0;
    do
    {
      v14 = v12[v13];
      v22 = v14;
      v15 = 0;
      v16 = 0;
      if (v27 != v26)
      {
        v17 = (v27 - v26) >> 3;
        if (v17 <= 1)
        {
          v17 = 1;
        }

        v18 = (v26 + 4);
        while (*(v18 - 1) != v14)
        {
          v18 += 2;
          if (!--v17)
          {
            v16 = 0;
            goto LABEL_16;
          }
        }

        v16 = *v18;
      }

LABEL_16:
      if (v24 != __p)
      {
        v19 = (v24 - __p) >> 3;
        if (v19 <= 1)
        {
          v19 = 1;
        }

        v20 = (__p + 4);
        while (*(v20 - 1) != v14)
        {
          v20 += 2;
          if (!--v19)
          {
            goto LABEL_24;
          }
        }

        v15 = *v20;
      }

LABEL_24:
      v32 = &v22;
      v21 = std::__hash_table<std::__hash_value_type<int,kaldi::quasar::ScoreTuple>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::quasar::ScoreTuple>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::quasar::ScoreTuple>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::quasar::ScoreTuple>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a5, &v22);
      *(v21 + 5) = HIDWORD(v14);
      *(v21 + 6) = v16;
      *(v21 + 7) = v15;
      ++v13;
      v12 = v29;
    }

    while (v13 < (v30 - v29) >> 3);
  }

  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }
}

void sub_1B581B904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v17);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::quasar::WordConf>::push_back[abi:ne200100](uint64_t a1, const kaldi::quasar::WordConf *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<kaldi::quasar::WordConf>::__emplace_back_slow_path<kaldi::quasar::WordConf const&>(a1, a2);
  }

  else
  {
    kaldi::quasar::WordConf::WordConf(*(a1 + 8), a2);
    result = v3 + 264;
    *(a1 + 8) = v3 + 264;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<std::vector<kaldi::quasar::WordConf>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<kaldi::quasar::WordConf>>::__emplace_back_slow_path<std::vector<kaldi::quasar::WordConf> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<kaldi::quasar::WordConf>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::quasar::WordConf> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t kaldi::quasar::WordConf::operator=(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=((a1 + 24), (a2 + 24));
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  std::string::operator=((a1 + 96), (a2 + 96));
  std::string::operator=((a1 + 120), (a2 + 120));
  v4 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v4;
  if (a1 == a2)
  {
    v6 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v6;
  }

  else
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 168), *(a2 + 168), *(a2 + 176), (*(a2 + 176) - *(a2 + 168)) >> 2);
    v5 = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 192) = v5;
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 216), *(a2 + 216), *(a2 + 224), (*(a2 + 224) - *(a2 + 216)) >> 2);
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 240), *(a2 + 240), *(a2 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 248) - *(a2 + 240)) >> 3));
  }

  return a1;
}

void kaldi::quasar::ProcessRegionInformation(const char *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  kaldi::SplitStringToVector(a3, a1, 1, &v26);
  v7 = v26;
  v8 = v27;
  if (v27 == v26)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Invalid list of region specifiers provided ", 43);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Using non-terminal regions for combination from ", 48);
    v10 = *(a3 + 23);
    if (v10 >= 0)
    {
      v11 = a3;
    }

    else
    {
      v11 = *a3;
    }

    if (v10 >= 0)
    {
      v12 = *(a3 + 23);
    }

    else
    {
      v12 = *(a3 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v25);
    v7 = v26;
    v8 = v27;
  }

  if (v8 != v7)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      memset(v24, 0, sizeof(v24));
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Splitting into labels : ", 24);
        v16 = v26 + v13;
        v17 = *(v26 + v13 + 23);
        if (v17 >= 0)
        {
          v18 = v26 + v13;
        }

        else
        {
          v18 = *v16;
        }

        if (v17 >= 0)
        {
          v19 = *(v16 + 23);
        }

        else
        {
          v19 = *(v16 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v25);
        v7 = v26;
      }

      kaldi::SplitStringToVector((v7 + v13), a2, 1, v24);
      std::vector<std::vector<std::string>>::push_back[abi:ne200100](a4, v24);
      v25[0].__locale_ = v24;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v25);
      ++v14;
      v7 = v26;
      v13 += 24;
    }

    while (v14 < 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
  }

  v25[0].__locale_ = &v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v25);
}

void sub_1B581BCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = (v12 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::CandidateFound(uint64_t *a1, uint64_t a2, unsigned int *a3)
{
  if (*a3 != -1)
  {
    v3 = 1;
    return v3 & 1;
  }

  v7 = *a1;
  if (a1[1] != *a1)
  {
    v8 = 0;
    v3 = 0;
    v9 = 0;
    v10 = 0.0;
    v11 = 0.0;
    while (1)
    {
      if (*(v7 + v8 + 4) != *(a2 + 4))
      {
        goto LABEL_22;
      }

      if (kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v53, 3);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " Check start ", 13);
        v13 = MEMORY[0x1B8C84C00](v12, *(*a1 + v8 + 12));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " end ", 5);
        v15 = MEMORY[0x1B8C84C00](v14, *(*a1 + v8 + 16));
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " against start ", 15);
        v17 = MEMORY[0x1B8C84C00](v16, *(a2 + 12));
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " end ", 5);
        v19 = MEMORY[0x1B8C84C00](v18, *(a2 + 16));
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " lab in lat ", 12);
        v21 = MEMORY[0x1B8C84C00](v20, *(*a1 + v8 + 4));
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " lab in check ", 14);
        MEMORY[0x1B8C84C00](v22, *(a2 + 4));
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v53);
      }

      v23 = *a1;
      v24 = *a1 + v8;
      if ((v3 & 1) == 0)
      {
        *a3 = *v24;
        v32 = *(v24 + 16);
        v33 = *(v24 + 32);
        v34 = *(v24 + 48);
        *(a3 + 15) = *(v24 + 60);
        *(a3 + 2) = v33;
        *(a3 + 3) = v34;
        *(a3 + 1) = v32;
        if (v24 != a3)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3 + 10, *(v23 + v8 + 80), *(v23 + v8 + 88), (*(v23 + v8 + 88) - *(v23 + v8 + 80)) >> 2);
        }

        v35 = vaba_s32(vdup_lane_s32(vabd_s32(*(a3 + 3), *(a2 + 12)), 1), *(a3 + 3), *(a2 + 12)).u32[0];
        v10 = *(a3 + 13);
        v3 = 1;
        goto LABEL_23;
      }

      v25 = *(a2 + 12);
      v26 = vabd_s32(*(v24 + 12), v25);
      v27 = vabd_s32(*(a3 + 3), v25);
      v28 = vcvt_f32_u32(vadd_s32(vzip2_s32(v26, v27), vzip1_s32(v26, v27)));
      v52 = v28.f32[0];
      if (v28.f32[0] >= v28.f32[1])
      {
        if (v28.f32[0] != v28.f32[1] || *(v23 + v8 + 52) <= v10)
        {
          v3 = 1;
LABEL_22:
          v35 = v11;
          goto LABEL_23;
        }

        *a3 = *v24;
        v36 = *(v24 + 16);
        v37 = *(v24 + 32);
        v38 = *(v24 + 48);
        *(a3 + 15) = *(v24 + 60);
        *(a3 + 2) = v37;
        *(a3 + 3) = v38;
        *(a3 + 1) = v36;
        if (v24 != a3)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3 + 10, *(v23 + v8 + 80), *(v23 + v8 + 88), (*(v23 + v8 + 88) - *(v23 + v8 + 80)) >> 2);
        }

        v10 = *(*a1 + v8 + 52);
      }

      else
      {
        *a3 = *v24;
        v29 = *(v24 + 16);
        v30 = *(v24 + 32);
        v31 = *(v24 + 48);
        *(a3 + 15) = *(v24 + 60);
        *(a3 + 2) = v30;
        *(a3 + 3) = v31;
        *(a3 + 1) = v29;
        if (v24 != a3)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3 + 10, *(v23 + v8 + 80), *(v23 + v8 + 88), (*(v23 + v8 + 88) - *(v23 + v8 + 80)) >> 2);
        }
      }

      v3 = 1;
      v35 = v52;
LABEL_23:
      ++v9;
      v7 = *a1;
      v8 += 104;
      v11 = v35;
      if (v9 >= 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 3))
      {
        goto LABEL_26;
      }
    }
  }

  v3 = 0;
LABEL_26:
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v53, 2);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, "Found state ", 12);
    v40 = MEMORY[0x1B8C84C00](v39, *a3);
    v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, " id ", 4);
    v42 = MEMORY[0x1B8C84C00](v41, a3[1]);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " start ", 7);
    v44 = MEMORY[0x1B8C84C00](v43, a3[3]);
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " end ", 5);
    v46 = MEMORY[0x1B8C84C00](v45, a3[4]);
    v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " For MBR start ", 15);
    v48 = MEMORY[0x1B8C84C00](v47, *(a2 + 12));
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " end ", 5);
    v50 = MEMORY[0x1B8C84C00](v49, *(a2 + 16));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " distance is ", 13);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v53);
  }

  return v3 & 1;
}

void sub_1B581C118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::GetCandidateFeatures(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4, float **a5, const std::string *a6, int a7, int *a8, _DWORD *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  memset(v111, 0, 24);
  if (!kaldi::quasar::CandidateFound(a2, a3, a14))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__str);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "No arc to continue with", 23);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__str);
  }

  memset(v110, 0, sizeof(v110));
  v18 = *(a14 + 28);
  v19 = *a14;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v104 = 0;
  v105 = 0;
  v106 = 0;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    v20 = *(a14 + 12);
    v21 = *(a14 + 20);
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&__str, 3);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "Match ", 6);
    v99 = *(a14 + 4);
    if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &v99))
    {
      v96 = *(a14 + 4);
      v23 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &v96);
      if (*(v23 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&v102, v23[3], v23[4]);
      }

      else
      {
        v102 = *(v23 + 1);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v102, "not_in_static_vocab");
    }

    if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v102;
    }

    else
    {
      v24 = v102.__r_.__value_.__r.__words[0];
    }

    if ((v102.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v102.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v102.__r_.__value_.__l.__size_;
    }

    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, size);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " Find Overlapping With ", 23);
    MEMORY[0x1B8C84C00](v27, (v20 + v21 / 2));
    if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v102.__r_.__value_.__l.__data_);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&__str);
  }

  memset(&v102, 0, sizeof(v102));
  v99 = 0;
  v100 = 0;
  v101 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v88 = a7;
  if (a7)
  {
    v28 = *(a10 + 168);
    v29 = v28[30];
    v28[29] = *(a14 + 40) + v28[29];
    v28[30] = *(a14 + 36) + v29;
    v28[31] = *(a14 + 32) + v28[31];
  }

  v30 = *a2;
  if (a2[1] != *a2)
  {
    v31 = 0;
    v32 = 40;
    do
    {
      LODWORD(__str.__r_.__value_.__l.__data_) = *(v30 + v32 - 36);
      HIDWORD(__str.__r_.__value_.__r.__words[0]) = *(v30 + v32);
      if (*(v30 + v32 - 40) == v18 && *(a1 + 3) == 1)
      {
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v104, &__str);
        v30 = *a2;
      }

      if (*(v30 + v32 - 12) == v19 && *(a1 + 3) == 1)
      {
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v107, &__str);
        v30 = *a2;
      }

      v33 = *(a14 + 12);
      v34 = *(a14 + 20);
      v35 = v33 + v34 * 0.1;
      v36 = v33 + v34 * -0.1;
      v37 = v30 + v32;
      v38 = *(v30 + v32 - 28);
      v39 = v38 <= v35 && *(v37 - 24) >= v36;
      v40 = (v34 + v33) + v34 * 0.1;
      v41 = v38 <= v40 && *(v30 + v32 - 24) >= v36;
      if (v38 >= v36)
      {
        if (*(v30 + v32 - 24) <= v40 || v39 || v41)
        {
LABEL_37:
          std::vector<kaldi::ChosenArc>::push_back[abi:ne200100](v110, v37 - 40);
          *(*(a12 + 168) + 40) = *(*(a12 + 168) + 40) + 1.0;
          kaldi::quasar::WordConf::UpdatePostNumerators(a13, (*a2 + v32 - 40));
          v42 = *a2;
          v43 = *a2 + v32;
          v44 = *(v43 - 36);
          if (v44 == *(a14 + 4))
          {
            kaldi::quasar::WordConf::UpdatePostNumerators(a12, (v43 - 40));
            v42 = *a2;
            v44 = *(*a2 + v32 - 36);
          }

          LODWORD(v95) = v44;
          HIDWORD(v95) = *(v42 + v32);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v102, &v95);
          v45 = *a2 + v32;
          LODWORD(v95) = *(v45 - 36);
          HIDWORD(v95) = *(v45 + 20);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v99, &v95);
          v46 = *a2 + v32;
          LODWORD(v95) = *(v46 - 36);
          HIDWORD(v95) = *(v46 + 24);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v96, &v95);
          v30 = *a2;
        }
      }

      else if (v39 || v41)
      {
        goto LABEL_37;
      }

      ++v31;
      v32 += 104;
    }

    while (v31 < 0x4EC4EC4EC4EC4EC5 * ((a2[1] - v30) >> 3));
  }

  if (a7)
  {
    std::vector<std::vector<kaldi::ChosenArc>>::push_back[abi:ne200100](a11, v110);
  }

  if (*(a1 + 4) == 1)
  {
    kaldi::quasar::WordConf::ProcessRankInfo(a12, *(a14 + 4), &v102, &v99, &v96, a13);
  }

  v47 = 126 - 2 * __clz((v105 - v104) >> 3);
  if (v105 == v104)
  {
    v48 = 0;
  }

  else
  {
    v48 = v47;
  }

  std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(v104, v105, &v95, v48, 1);
  v49 = 126 - 2 * __clz((v108 - v107) >> 3);
  if (v108 == v107)
  {
    v50 = 0;
  }

  else
  {
    v50 = v49;
  }

  std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(v107, v108, &v95, v50, 1);
  if (v105 != v104)
  {
    v51 = (v105 - v104) >> 3;
    v52 = *(a13 + 168);
    v53 = v104 + 1;
    v54 = *v104;
    v55 = *(a12 + 168);
    if (v51 <= 1)
    {
      v51 = 1;
    }

    do
    {
      *(v52 + 92) = *v53 + *(v52 + 92);
      if (*(v53 - 1) == v54)
      {
        *(v55 + 92) = *v53 + *(v55 + 92);
        *(a12 + 148) = v54;
      }

      v53 += 2;
      --v51;
    }

    while (v51);
  }

  if (v108 != v107)
  {
    v56 = (v108 - v107) >> 3;
    v57 = *(a13 + 168);
    v58 = v107 + 1;
    v59 = *v107;
    v60 = *(a12 + 168);
    if (v56 <= 1)
    {
      v56 = 1;
    }

    do
    {
      *(v57 + 100) = *v58 + *(v57 + 100);
      if (*(v58 - 1) == v59)
      {
        *(v60 + 100) = *v58 + *(v60 + 100);
        *(a12 + 152) = v59;
      }

      v58 += 2;
      --v56;
    }

    while (v56);
  }

  *(a12 + 144) = *(a3 + 4);
  MEMORY[0x1B8C84820](a12 + 96, "");
  MEMORY[0x1B8C84820](a12 + 72, "");
  if (v108 != v107)
  {
    v95 = *v107;
    if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &v95))
    {
      v94 = *v107;
      v61 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &v94);
      if (*(v61 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(&__str, v61[3], v61[4]);
      }

      else
      {
        __str = *(v61 + 1);
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&__str, "NULL");
    }

    std::string::operator=((a12 + 96), &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  if (v105 == v104)
  {
    goto LABEL_78;
  }

  v95 = *v104;
  if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &v95))
  {
    v94 = *v104;
    v62 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &v94);
    if (*(v62 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v62[3], v62[4]);
    }

    else
    {
      __str = *(v62 + 1);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&__str, "NULL");
  }

  std::string::operator=((a12 + 72), &__str);
  if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_78:
    if (a7)
    {
      goto LABEL_79;
    }

LABEL_82:
    v64 = **a5;
    goto LABEL_84;
  }

  operator delete(__str.__r_.__value_.__l.__data_);
  if ((a7 & 1) == 0)
  {
    goto LABEL_82;
  }

LABEL_79:
  if (*(a14 + 4))
  {
    v63 = *a8;
    *a8 = v63 + 1;
    v64 = (*a5)[v63];
    ++*a9;
  }

  else
  {
    v64 = 1.0;
  }

LABEL_84:
  v66 = v107;
  v65 = v108;
  v68 = v104;
  v67 = v105;
  v69 = *(a14 + 48);
  v89[2] = *(a14 + 32);
  v90[0] = v69;
  *(v90 + 12) = *(a14 + 60);
  v70 = *(a14 + 16);
  v89[0] = *a14;
  v89[1] = v70;
  v92 = 0;
  v93 = 0;
  v71 = *(a14 + 80);
  v72 = *(a14 + 88);
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v71, v72, (v72 - v71) >> 2);
  kaldi::quasar::WordConf::NormaliseWrdScores(a12, a13, a1, v89, ((v65 - v66) >> 3), ((v67 - v68) >> 3), v64);
  if (__p)
  {
    v92 = __p;
    operator delete(__p);
  }

  __str.__r_.__value_.__r.__words[0] = *(a3 + 4);
  v73 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a4, &__str);
  v74 = a4[3];
  if (!v73 && v74)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__str);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__str, "Word with ID = ", 15);
    v83 = MEMORY[0x1B8C84C00](v82, *(a3 + 4));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " does not exist in word map. Is a dynamic vocabulary being used?", 64);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__str);
  }

  if (v74)
  {
    std::string::operator=((a12 + 24), v73 + 1);
    v75 = SHIBYTE(v73[1].__r_.__value_.__r.__words[2]);
    if ((v75 & 0x8000000000000000) != 0)
    {
      v75 = v73[1].__r_.__value_.__l.__size_;
    }

    *(*(a12 + 168) + 376) = v75;
  }

  std::string::operator=(a12, a6);
  if (v88)
  {
    v76 = *(a10 + 168);
    __asm { FMOV            V1.2S, #1.0 }

    _D1.i32[1] = *(*(a12 + 168) + 40);
    *(v76 + 128) = v64 + *(v76 + 128);
    *(v76 + 108) = vadd_f32(*(v76 + 108), _D1);
  }

  if (v96)
  {
    v97 = v96;
    operator delete(v96);
  }

  if (v99)
  {
    v100 = v99;
    operator delete(v99);
  }

  if (v102.__r_.__value_.__r.__words[0])
  {
    v102.__r_.__value_.__l.__size_ = v102.__r_.__value_.__r.__words[0];
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (v104)
  {
    v105 = v104;
    operator delete(v104);
  }

  if (v107)
  {
    v108 = v107;
    operator delete(v107);
  }

  __str.__r_.__value_.__r.__words[0] = v110;
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&__str);
  __str.__r_.__value_.__r.__words[0] = v111;
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&__str);
}

void sub_1B581CA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a46);
  v53 = *(v51 - 216);
  if (v53)
  {
    *(v51 - 208) = v53;
    operator delete(v53);
  }

  v54 = *(v51 - 192);
  if (v54)
  {
    *(v51 - 184) = v54;
    operator delete(v54);
  }

  a46 = (v51 - 168);
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&a46);
  a46 = (v51 - 144);
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&a46);
  _Unwind_Resume(a1);
}

uint64_t std::vector<kaldi::ChosenArc>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<kaldi::ChosenArc>::__emplace_back_slow_path<kaldi::ChosenArc const&>(a1, a2);
  }

  else
  {
    std::vector<kaldi::ChosenArc>::__construct_one_at_end[abi:ne200100]<kaldi::ChosenArc const&>(a1, a2);
    result = v3 + 104;
  }

  a1[1] = result;
  return result;
}

float kaldi::quasar::WordConf::UpdatePostNumerators(uint64_t a1, float *a2)
{
  v3 = *(a1 + 168);
  v3[9] = v3[9] + 1.0;
  v4 = exp(a2[9] / 10.0 - a2[8]) + v3[6];
  v3[6] = v4;
  v5 = exp(-a2[8]) + v3[7];
  v3[7] = v5;
  v6 = exp(a2[9] / -10.0) + v3[8];
  v3[8] = v6;
  v7 = v3[3];
  v3[2] = a2[10] + v3[2];
  v8 = v3[12];
  v3[13] = a2[15] + v3[13];
  v3[14] = a2[16] + v3[14];
  v3[3] = a2[12] + v7;
  v9 = v3[5];
  v3[4] = a2[11] + v3[4];
  v3[5] = a2[13] + v9;
  result = a2[14] + v8;
  v3[12] = result;
  return result;
}

uint64_t std::vector<std::vector<kaldi::ChosenArc>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<kaldi::ChosenArc>>::__emplace_back_slow_path<std::vector<kaldi::ChosenArc> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<kaldi::ChosenArc>>::__construct_one_at_end[abi:ne200100]<std::vector<kaldi::ChosenArc> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

float kaldi::quasar::WordConf::ProcessRankInfo(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v12 = a3[1];
  v13 = 126 - 2 * __clz((v12 - *a3) >> 3);
  if (v12 == *a3)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(*a3, v12, v42, v14, 1);
  v15 = a4[1];
  v16 = 126 - 2 * __clz((v15 - *a4) >> 3);
  if (v15 == *a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16;
  }

  std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(*a4, v15, v42, v17, 1);
  v18 = a5[1];
  v19 = 126 - 2 * __clz((v18 - *a5) >> 3);
  if (v18 == *a5)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  std::__introsort<std::_ClassicAlgPolicy,kaldi::quasar::SortPred &,std::pair<int,float> *,false>(*a5, v18, v42, v20, 1);
  v22 = *a3;
  if (a3[1] != *a3)
  {
    v23 = 0;
    v24 = kaldi::g_kaldi_verbose_level;
    do
    {
      if (v24 >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v42, 3);
        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "Rank in list = ", 15);
        v26 = MEMORY[0x1B8C84C30](v25, v23);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " Orig = ", 8);
        v28 = MEMORY[0x1B8C84C00](v27, *(*a3 + 8 * v23));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " sc= ", 5);
        v29 = std::ostream::operator<<();
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " LOW ", 5);
        v31 = MEMORY[0x1B8C84C00](v30, *(*a4 + 8 * v23));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " sc= ", 5);
        v32 = std::ostream::operator<<();
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " HIGH ", 6);
        v34 = MEMORY[0x1B8C84C00](v33, *(*a5 + 8 * v23));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " sc= ", 5);
        std::ostream::operator<<();
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v42);
        v24 = kaldi::g_kaldi_verbose_level;
        v22 = *a3;
      }

      v35 = v22 + 8 * v23;
      if (*v35 == a2)
      {
        *(*(a1 + 168) + 68) = (*(v35 + 4) / (v23 + 1)) + *(*(a1 + 168) + 68);
      }

      v36 = *a4 + 8 * v23;
      if (*v36 == a2)
      {
        *(*(a1 + 168) + 72) = (*(v36 + 4) / (v23 + 1)) + *(*(a1 + 168) + 72);
      }

      v37 = *a5 + 8 * v23++;
      v38 = v23;
      if (*v37 == a2)
      {
        *(*(a1 + 168) + 76) = (*(v37 + 4) / v38) + *(*(a1 + 168) + 76);
      }

      v39 = *(v35 + 4) / v38;
      v40 = *(a6 + 168);
      v41 = v40[18];
      v40[17] = v39 + v40[17];
      v40[18] = v41 + (*(v36 + 4) / v38);
      result = v40[19] + (*(v37 + 4) / v38);
      v40[19] = result;
    }

    while (v23 < (a3[1] - v22) >> 3);
  }

  return result;
}

float kaldi::quasar::WordConf::NormaliseWrdScores(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, float a6, float a7)
{
  v7 = *(a1 + 168);
  v8 = *(a2 + 168);
  v9 = v7[18];
  v10 = 1.0;
  if (COERCE_UNSIGNED_INT(fabs(v7[17] / v8[17])) >= 0x7F800000)
  {
    v11 = 1.0;
  }

  else
  {
    v11 = v7[17] / v8[17];
  }

  v7[17] = v11;
  if (COERCE_UNSIGNED_INT(fabs(v9 / v8[18])) >= 0x7F800000)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = v9 / v8[18];
  }

  v7[18] = v12;
  v13.f32[0] = v7[19] / v8[19];
  v13.f32[1] = v11 - v12;
  v14 = vabs_f32(v13);
  *v14.i32 = v13.f32[0];
  v15 = vbsl_s8(vcgt_s32(vneg_f32(0x7F0000007FLL), (__PAIR64__(v13.u32[1], COERCE_UNSIGNED_INT(fabs(v13.f32[0]))) & 0x7FFFFFFFFFFFFFFFLL)), vbsl_s8(vceq_f32(v13, v13), v14, 1065353216), 1065353216);
  *(v7 + 19) = v15;
  v16 = v11 - *v15.i32;
  v17 = vabds_f32(v11, *v15.i32);
  v18 = 0.0;
  if ((LODWORD(v16) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v17 = 0.0;
  }

  v7[21] = v17;
  if (COERCE_UNSIGNED_INT(fabs(v7[25] / v8[25])) >= 0x7F800000)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = v7[25] / v8[25];
  }

  v7[25] = v19;
  if (COERCE_UNSIGNED_INT(fabs(v7[23] / v8[23])) >= 0x7F800000)
  {
    v20 = 1.0;
  }

  else
  {
    v20 = v7[23] / v8[23];
  }

  v7[23] = v20;
  v21 = v7[3];
  if (COERCE_INT(fabs(v7[2] / v8[2])) >= 2139095040)
  {
    v22 = 0.5;
  }

  else
  {
    v22 = v7[2] / v8[2];
  }

  v7[2] = v22;
  v23 = v7[12];
  if (COERCE_UNSIGNED_INT(fabs(v7[13] / v8[13])) >= 0x7F800000)
  {
    v24 = 0.5;
  }

  else
  {
    v24 = v7[13] / v8[13];
  }

  v7[13] = v24;
  if (COERCE_UNSIGNED_INT(fabs(v7[14] / v8[14])) >= 0x7F800000)
  {
    v25 = 0.5;
  }

  else
  {
    v25 = v7[14] / v8[14];
  }

  v7[14] = v25;
  if (COERCE_UNSIGNED_INT(fabs(v21 / v8[3])) >= 0x7F800000)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v21 / v8[3];
  }

  v7[3] = v26;
  v27 = v7[4];
  v28 = v7[5];
  if (COERCE_INT(fabs(v27 / v8[4])) < 2139095040)
  {
    v18 = v27 / v8[4];
  }

  v7[4] = v18;
  if (COERCE_INT(fabs(v28 / v8[5])) >= 2139095040)
  {
    v29 = 0.5;
  }

  else
  {
    v29 = v28 / v8[5];
  }

  v7[5] = v29;
  v30 = v7[7];
  if (COERCE_UNSIGNED_INT(fabs(v7[6] / v8[6])) >= 0x7F800000)
  {
    v31 = 0.5;
  }

  else
  {
    v31 = v7[6] / v8[6];
  }

  v7[6] = v31;
  if (COERCE_INT(fabs(v30 / v8[7])) >= 2139095040)
  {
    v32 = 0.5;
  }

  else
  {
    v32 = v30 / v8[7];
  }

  v7[7] = v32;
  v33 = v7[9];
  if (COERCE_UNSIGNED_INT(fabs(v7[8] / v8[8])) >= 0x7F800000)
  {
    v34 = 0.5;
  }

  else
  {
    v34 = v7[8] / v8[8];
  }

  v7[8] = v34;
  if (COERCE_INT(fabs(v23 / v8[12])) < 2139095040)
  {
    v10 = v23 / v8[12];
  }

  v7[11] = v33 / v7[10];
  v7[12] = v10;
  v7[15] = vabds_f32(v22, v25);
  v7[16] = vabds_f32(v22, v24);
  v7[26] = a5;
  v7[24] = a6;
  v35 = *(a4 + 12);
  v36 = (*(a4 + 16) - v35);
  *v7 = v35 / (1000.0 / *(a3 + 12));
  result = v36 / (1000.0 / *(a3 + 12));
  v7[1] = result;
  v7[22] = a7;
  return result;
}

void kaldi::quasar::ComputeTimeBasedPosterior(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = a1;
  v9 = *(a5 + 12);
  v10 = __OFSUB__(a1, v9);
  v11 = a1 - v9;
  if ((v11 < 0) ^ v10 | (v11 == 0))
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v35, 3);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Recomputing TBP on Ref Interval ", 32);
    v14 = MEMORY[0x1B8C84C00](v13, v8);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " - ", 3);
    v16 = MEMORY[0x1B8C84C00](v15, a2);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " for arc on ", 12);
    v18 = MEMORY[0x1B8C84C00](v17, *(a5 + 12));
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " - ", 3);
    MEMORY[0x1B8C84C00](v19, *(a5 + 16));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v35);
  }

  v20 = 0.0;
  v21 = 0.0;
  if (v8 < a2)
  {
    v8 = v8;
    do
    {
      LODWORD(v35[0].__locale_) = v8;
      v22 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a4, v35);
      if (v22)
      {
        if (v8 < *(a5 + 12) || v8 > *(a5 + 16))
        {
          for (i = v22[5]; i; i = *i)
          {
            v20 = v20 + *(i + 20);
          }
        }

        else
        {
          v25 = v12;
          v26 = *(a5 + 80);
          if (v12 < ((*(a5 + 88) - v26) >> 2))
          {
            ++v12;
            v27 = v22[5];
            if (v27)
            {
              v28 = *(v26 + 4 * v25);
              do
              {
                v29 = *(v27 + 20);
                if (*(v27 + 16) == v28)
                {
                  v21 = v21 + v29;
                }

                v20 = v20 + v29;
                v27 = *v27;
              }

              while (v27);
            }
          }
        }
      }

      ++v8;
    }

    while (v8 < a2);
  }

  if (kaldi::g_kaldi_verbose_level <= 2)
  {
    v32 = v21 / v20;
  }

  else
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v35, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "Recomputed TBP is ", 18);
    v30 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " / ", 3);
    v31 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " = ", 3);
    v32 = v21 / v20;
    v33 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " post score avg is ", 19);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v35);
  }

  v34 = 1.0;
  if ((LODWORD(v32) & 0x7FFFFFFFu) < 0x7F800000)
  {
    v34 = v32;
  }

  *(a5 + 68) = v34;
}

void sub_1B581D554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ProcessArc(uint64_t a1@<X0>, kaldi::SilencePhoneSet *a2@<X1>, unsigned int *a3@<X2>, uint64_t *a4@<X3>, _DWORD *a5@<X4>, void *a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v87 = *(a3 + 1);
  v89 = 0;
  v90 = 0;
  v88 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v88, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 2);
  v84 = 0;
  v85 = 0;
  v86 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v84, v88, v89, (v89 - v88) >> 2);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v83, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Compact Lattice Current state=", 30);
    v18 = MEMORY[0x1B8C84C00](v17, a1);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ARC ilabel: ", 13);
    v20 = MEMORY[0x1B8C84C00](v19, *a3);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " olabel: ", 9);
    v22 = MEMORY[0x1B8C84C00](v21, a3[1]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " weight1: ", 10);
    v23 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " weight2: ", 10);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v83);
    if (kaldi::g_kaldi_verbose_level >= 3)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v83, 3);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Next State=", 11);
      v25 = MEMORY[0x1B8C84C00](v24, a3[10]);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, " duration = ", 12);
      v27 = MEMORY[0x1B8C84C30](v26, (v85 - v84) >> 2);
      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " from ", 6);
      v29 = MEMORY[0x1B8C84C00](v28, *(*a4 + 4 * a1));
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " to ", 4);
      v31 = MEMORY[0x1B8C84C30](v30, *(*a4 + 4 * a1) + ((v85 - v84) >> 2));
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " word is ", 9);
      v81 = a3[1];
      if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a7, &v81))
      {
        v80 = a3[1];
        v33 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a7, &v80);
        if (*(v33 + 47) < 0)
        {
          std::string::__init_copy_ctor_external(&v82, v33[3], v33[4]);
        }

        else
        {
          v82 = *(v33 + 1);
        }
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(&v82, "not_in_static_vocab");
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &v82;
      }

      else
      {
        v34 = v82.__r_.__value_.__r.__words[0];
      }

      if ((v82.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v82.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v82.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, size);
      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v83);
    }
  }

  v36 = v84;
  v37 = 0;
  v38 = v85 - v84;
  if (v85 != v84)
  {
    v39 = 0;
    do
    {
      v37 += !kaldi::SilencePhoneSet::isSilencePhone(a2, *&v36[4 * v39++]);
      v36 = v84;
      v38 = v85 - v84;
    }

    while (v39 < (v85 - v84) >> 2);
  }

  v40 = v38 >> 2;
  if (a3[1])
  {
    v41 = v37;
  }

  else
  {
    v41 = v40;
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v83, 3);
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Original Duration Was ", 22);
    v43 = MEMORY[0x1B8C84C30](v42, (v85 - v84) >> 2);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " without silence it is ", 23);
    MEMORY[0x1B8C84C00](v44, v41);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v83);
  }

  v77 = v41;
  v45 = a3[10];
  v46 = *a4;
  v47 = *(*a4 + 4 * v45);
  if (v47 >= 1 && v47 != *(v46 + 4 * a1) + v40 && kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v83, 2);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Warning - state Time Mismatch - ", 32);
    v50 = MEMORY[0x1B8C84C00](v49, *(*a4 + 4 * a3[10]));
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " and ", 5);
    MEMORY[0x1B8C84C00](v51, (*(*a4 + 4 * a1) + v40));
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v83);
    v46 = *a4;
    v45 = a3[10];
  }

  *(v46 + 4 * v45) = *(v46 + 4 * a1) + v40;
  v52 = *(v46 + 4 * a1);
  if (v52 < *(v46 + 4 * a3[10]))
  {
    *&v16 = -2.00000048;
    v78 = v16;
    v53 = 0;
    *&v16 = 0;
    v79 = v16;
    v54 = 1.0;
    v55 = 0.0;
    while (1)
    {
      LODWORD(v83[0].__locale_) = v52;
      v56 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a6, v83);
      v57 = v56;
      if (!v56)
      {
        break;
      }

      if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v56 + 3, &v84[4 * (v52 - *(*a4 + 4 * a1))]))
      {
        v60 = 0;
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v83, 3);
          v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Couldn't find state ", 20);
          v64 = MEMORY[0x1B8C84C00](v63, *&v84[4 * (v52 - *(*a4 + 4 * a1))]);
          v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, " at time ", 9);
          v66 = MEMORY[0x1B8C84C30](v65, v52);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " defaulting posterior to 0, w1=", 31);
          v67 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " w2=", 4);
          std::ostream::operator<<();
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v83);
        }

LABEL_40:
        v59 = 0.0;
        goto LABEL_41;
      }

      v58 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v57 + 3, &v84[4 * (v52 - *(*a4 + 4 * a1))]);
      v59 = *(v58 + 5);
      v60 = v58[3];
LABEL_41:
      v55 = v55 + v59;
      v53 = vadd_f32(v53, v60);
      *(&v68 + 1) = *(&v78 + 1);
      v54 = v54 * v59;
      *&v68 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(v59), v78), __PAIR64__(DWORD1(v78), LODWORD(v59))), vdup_lane_s32(__PAIR64__(DWORD1(v78), LODWORD(v59)), 0), *&v78);
      v69 = v79;
      *&v69 = *&v79 + 1.0;
      v78 = v68;
      v79 = v69;
      ++v52;
      v46 = *a4;
      if (v52 >= *(*a4 + 4 * a3[10]))
      {
        v70 = v54;
        if (*&v69 != 0.0)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    v60 = 0;
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v83);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "Time = ", 7);
      v62 = MEMORY[0x1B8C84C30](v61, v52);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " not in state posterior map...", 30);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v83);
    }

    goto LABEL_40;
  }

  *&v69 = -2.00000048;
  *&v78 = -2.00000048;
  v53 = 0;
  v55 = 0.0;
  v70 = 1.0;
LABEL_45:
  LODWORD(v69) = 1.0;
  *&v79 = v69;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v83);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, "No states in the word posterior computation - this may be because the word has 0 duration (could happen for class LM)", 117);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v83);
    v46 = *a4;
  }

LABEL_47:
  v71 = pow(v70, 1.0 / *&v79);
  v72 = a3[1];
  v73 = (*a5)++;
  v74 = *(v46 + 4 * a1);
  v75 = a3[10];
  *(a8 + 80) = 0;
  *(a8 + 88) = 0;
  *(a8 + 96) = 0;
  *a8 = a1;
  *(a8 + 4) = v72;
  *(a8 + 8) = v73;
  *(a8 + 12) = v74;
  *(a8 + 16) = v74 + v40;
  *(a8 + 20) = v77;
  *(a8 + 24) = -1;
  *(a8 + 28) = v75;
  *(a8 + 32) = v87;
  *(a8 + 40) = v55 / *&v79;
  *(a8 + 44) = v78;
  *(a8 + 52) = v71;
  *(a8 + 56) = 1065353216;
  *(a8 + 60) = vdiv_f32(v53, vdup_lane_s32(*&v79, 0));
  v76 = v84;
  if ((a8 + 80) != &v84)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a8 + 80), v84, v85, (v85 - v84) >> 2);
    v76 = v84;
  }

  if (v76)
  {
    v85 = v76;
    operator delete(v76);
  }

  if (v88)
  {
    v89 = v88;
    operator delete(v88);
  }
}

void sub_1B581DC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, std::locale a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a23);
  v25 = *(v23 - 192);
  if (v25)
  {
    *(v23 - 184) = v25;
    operator delete(v25);
  }

  v26 = *(v23 - 160);
  if (v26)
  {
    *(v23 - 152) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

float kaldi::quasar::ComputeArcOverlap(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 168);
  v3 = *v2;
  v4 = *v2 + v2[1];
  v5 = *(a2 + 168);
  v6 = *v5;
  v7 = *v5 + v5[1];
  v8 = v7 - *v5;
  if (v7 > v4)
  {
    v8 = v4 - *v5;
  }

  v9 = v6 > v3;
  if (v6 < v3)
  {
    v10 = v7 - v3;
  }

  else
  {
    v10 = v8;
  }

  v11 = v4 - v3;
  if (v9 || v7 < v4)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v11 <= 0.0)
  {
    return v13;
  }

  else
  {
    return v13 / v11;
  }
}

void kaldi::quasar::MBRToOneBest(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v7 = 0;
    do
    {
      v11 = 0;
      v12 = 0;
      __p = 0;
      v8[0] = -1;
      v9 = vcvt_s32_f32(*(*a2 + 8 * v7));
      v8[1] = *(v4 + 4 * v7);
      std::vector<kaldi::ChosenArc>::push_back[abi:ne200100](a3, v8);
      if (__p)
      {
        v11 = __p;
        operator delete(__p);
      }

      ++v7;
      v4 = *a1;
    }

    while (v7 < (a1[1] - *a1) >> 2);
  }
}

void sub_1B581DE50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void kaldi::quasar::GenSausageStructFeats(uint64_t a1, const kaldi::quasar::WordConf *a2, _DWORD *a3, kaldi::quasar::WordConf *a4, uint64_t a5, void *a6)
{
  v12 = *(a2 + 21);
  v12[66] = a3[10];
  v12[67] = a3[11];
  v12[68] = a3[12];
  if (!a3[1])
  {
    v12[69] = 1065353216;
  }

  kaldi::quasar::WordConf::WordConf(&v53, a4);
  kaldi::quasar::WordConf::WordConf(&v52, a2);
  v13 = kaldi::quasar::ComputeArcOverlap(&v53, &v52);
  kaldi::quasar::WordConf::~WordConf(&v52);
  kaldi::quasar::WordConf::~WordConf(&v53);
  v14 = *(a2 + 21);
  *(v14 + 280) = v13;
  v15 = *(a4 + 21);
  v16 = 1000.0 / *(a1 + 12);
  v17 = (*(v15 + 4) * v16);
  v18 = *(v14 + 4);
  v19 = v16;
  if ((v18 + v18) * v19 <= v17)
  {
    *(v14 + 308) = 1065353216;
    v20 = 1000.0 / *(a1 + 12);
    v17 = (*(v15 + 4) * v20);
    v19 = v20;
  }

  if (v18 * 0.5 * v19 >= v17)
  {
    *(v14 + 312) = 1065353216;
  }

  *(v14 + 336) = *(a5 + 68);
  v50.__r_.__value_.__r.__words[0] = a3[1];
  if (std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a6, &v50))
  {
    __p.__r_.__value_.__r.__words[0] = a3[1];
    v21 = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::find<long long>(a6, &__p);
    if (*(v21 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, v21[3], v21[4]);
    }

    else
    {
      v51 = *(v21 + 1);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(&v51, "NULL");
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v50, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
  }

  else
  {
    v50 = v51;
  }

  v22 = a4 + 24;
  if (*(a4 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a4 + 3), *(a4 + 4));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = *v22;
    __p.__r_.__value_.__r.__words[2] = *(a4 + 5);
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v50;
  }

  else
  {
    v23 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v50.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v51;
    }

    else
    {
      v25 = v51.__r_.__value_.__r.__words[0];
    }

    do
    {
      v25->__r_.__value_.__s.__data_[0] = __tolower(v23->__r_.__value_.__s.__data_[0]);
      v25 = (v25 + 1);
      v23 = (v23 + 1);
      --size;
    }

    while (size);
  }

  if (*(a4 + 47) >= 0)
  {
    v26 = *(a4 + 47);
  }

  else
  {
    v22 = *(a4 + 3);
    v26 = *(a4 + 4);
  }

  v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  p_p = __p.__r_.__value_.__r.__words[0];
  if (v26)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    do
    {
      p_p->__r_.__value_.__s.__data_[0] = __tolower(*v22);
      p_p = (p_p + 1);
      ++v22;
      --v26;
    }

    while (v26);
    v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v51;
  }

  else
  {
    v29 = v51.__r_.__value_.__r.__words[0];
  }

  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v51.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v51.__r_.__value_.__l.__size_;
  }

  if ((v27 & 0x80u) == 0)
  {
    v31 = &__p;
  }

  else
  {
    v31 = p_p;
  }

  if ((v27 & 0x80u) == 0)
  {
    v32 = v27;
  }

  else
  {
    v32 = __p.__r_.__value_.__l.__size_;
  }

  if (v32)
  {
    v33 = v29 + v30;
    if (v30 >= v32)
    {
      v41 = v31->__r_.__value_.__s.__data_[0];
      v42 = v30;
      v43 = v29;
      do
      {
        v44 = v42 - v32;
        if (v44 == -1)
        {
          break;
        }

        v45 = memchr(v43, v41, v44 + 1);
        if (!v45)
        {
          break;
        }

        v34 = v45;
        if (!memcmp(v45, v31, v32))
        {
          goto LABEL_52;
        }

        v43 = (v34 + 1);
        v42 = v33 - (v34 + 1);
      }

      while (v42 >= v32);
    }

    v34 = v29 + v30;
LABEL_52:
    v36 = v34 == v33 || v34 - v29 == -1;
    if (v30)
    {
LABEL_59:
      v37 = v31 + v32;
      if (v32 >= v30)
      {
        v46 = v29->__r_.__value_.__s.__data_[0];
        v47 = v31;
        do
        {
          if (v32 - v30 == -1)
          {
            break;
          }

          v48 = memchr(v47, v46, v32 - v30 + 1);
          if (!v48)
          {
            break;
          }

          v38 = v48;
          if (!memcmp(v48, v29, v30))
          {
            goto LABEL_61;
          }

          v47 = (v38 + 1);
          v32 = v37 - (v38 + 1);
        }

        while (v32 >= v30);
      }

      v38 = v37;
LABEL_61:
      v40 = v38 == v37 || v38 - v31 == -1;
      if (!v36)
      {
        goto LABEL_68;
      }

      goto LABEL_69;
    }
  }

  else
  {
    v36 = 0;
    if (v30)
    {
      goto LABEL_59;
    }
  }

  v40 = 0;
  if (!v36)
  {
LABEL_68:
    *(*(a2 + 21) + 300) = 1065353216;
  }

LABEL_69:
  if (v40)
  {
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_71;
    }
  }

  else
  {
    *(*(a2 + 21) + 288) = 1065353216;
    if ((v27 & 0x80) == 0)
    {
      goto LABEL_71;
    }
  }

  operator delete(p_p);
LABEL_71:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v51.__r_.__value_.__l.__data_);
  }
}

void sub_1B581E2A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::ProcessConfusions(uint64_t result, int a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = (*a3 + 24 * result);
  v5 = *v4 + 264 * a2;
  v6 = *(v5 + 168);
  *(v6 + 340) = (0xF83E0F83E0F83E1 * ((v4[1] - *v4) >> 3));
  if (result)
  {
    if (*(*(v4 - 3) + 144) == *(v5 + 152))
    {
      *(v6 + 344) = 1065353216;
    }

    v7 = *(v5 + 208);
  }

  else
  {
    *(v6 + 344) = 1065353216;
    v7 = 1.0;
  }

  *(v6 + 352) = v7;
  if (0xAAAAAAAAAAAAAAABLL * ((a3[1] - v3) >> 3) - 1 == result)
  {
    *(v6 + 348) = 1065353216;
    v8 = 1.0;
  }

  else
  {
    if (*(v4[3] + 144) == *(v5 + 148))
    {
      *(v6 + 348) = 1065353216;
    }

    v8 = *(v5 + 204);
  }

  *(v6 + 356) = v8;
  return result;
}

uint64_t std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__emplace_back_slow_path<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__construct_one_at_end[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void kaldi::quasar::AlignOneBestWithSausages(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v6 = *a3;
  if (a3[1] == *a3)
  {
    return;
  }

  v7 = a3;
  LODWORD(v8) = 0;
  v9 = 0;
  do
  {
    v10 = *(v6 + 4 * v9);
    v91 = 0;
    v92 = 0;
    v93 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v11 = *a2;
    if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) <= v8)
    {
      LODWORD(v8) = -1;
      goto LABEL_96;
    }

    v68 = v9;
    v12 = 0;
    v13 = v8;
    v8 = 0xFFFFFFFFLL;
    do
    {
      v70 = v8;
      __p = 0;
      v85 = 0;
      v86 = 0;
      v14 = *(v11 + 24 * v13);
      if (*(v11 + 24 * v13 + 8) == v14)
      {
LABEL_11:
        if (v12)
        {
          v12 = 1;
          v8 = v70;
        }

        else
        {
          std::vector<std::pair<int,float>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,float> const*>,std::__wrap_iter<std::pair<int,float> const*>>(&v88, v89, *(*a1 + 24 * v13), *(*a1 + 24 * v13 + 8), (*(*a1 + 24 * v13 + 8) - *(*a1 + 24 * v13)) >> 3);
          std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*>,std::__wrap_iter<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const*>>(&v91, v92, *(*a2 + 24 * v13), *(*a2 + 24 * v13 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(*a2 + 24 * v13 + 8) - *(*a2 + 24 * v13)) >> 3));
          v8 = v70;
          v12 = 0;
        }

        goto LABEL_88;
      }

      v15 = 0;
      v16 = 0;
      v17 = -100.0;
      v18 = 4;
      while (1)
      {
        v19 = (*a1 + 24 * v13);
        if (*(v14 + v15) == v10)
        {
          break;
        }

        v20 = *(*v19 + v18);
        if (v20 > v17)
        {
          v21 = v14 + v15;
          v82 = *(v14 + v15 + 8);
          fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(&v83, v14 + v15 + 16);
          v87 = *(v21 + 48);
          v11 = *a2;
          v17 = v20;
        }

        ++v16;
        v14 = *(v11 + 24 * v13);
        v15 += 56;
        v18 += 8;
        if (v16 >= 0x6DB6DB6DB6DB6DB7 * ((*(v11 + 24 * v13 + 8) - v14) >> 3))
        {
          goto LABEL_11;
        }
      }

      std::vector<std::vector<std::pair<int,float>>>::push_back[abi:ne200100](a4, v19);
      v81[0] = 0;
      v81[1] = 0;
      v80 = v81;
      v23 = v88;
      v22 = v89;
      if (v89 == v88)
      {
        goto LABEL_43;
      }

      v78 = 0;
      v79 = 0;
      v77 = &v78;
      v24 = *(a4 + 8);
      v26 = *(v24 - 24);
      v25 = *(v24 - 16);
      if (v26 != v25)
      {
        do
        {
          v27 = v26[1];
          v75 = v26;
          *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, v26) + 8) = v27;
          v26 += 2;
        }

        while (v26 != v25);
        v23 = v88;
        v22 = v89;
      }

      while (v23 != v22)
      {
        v28 = v78;
        if (!v78)
        {
          goto LABEL_26;
        }

        v29 = *v23;
        v30 = &v78;
        do
        {
          if (*(v28 + 7) >= v29)
          {
            v30 = v28;
          }

          v28 = v28[*(v28 + 7) < v29];
        }

        while (v28);
        if (v30 == &v78 || v29 < *(v30 + 7))
        {
LABEL_26:
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](*(a4 + 8) - 24, v23);
          v31 = *(v23 + 1);
          v75 = v23;
          v32 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, v23);
LABEL_27:
          *(v32 + 8) = v31;
          goto LABEL_28;
        }

        v33 = *(v23 + 1);
        if (*(v30 + 8) < v33)
        {
          v75 = v23;
          *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, v23) + 8) = v33;
          v31 = *(v23 + 1);
          v75 = v23;
          v32 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v80, v23);
          goto LABEL_27;
        }

LABEL_28:
        v23 += 8;
      }

      v34 = *(a4 + 8);
      v35 = *(v34 - 24);
      v36 = *(v34 - 16);
      if (v35 != v36)
      {
        v37 = v81[0];
        do
        {
          if (v37)
          {
            v38 = *v35;
            v39 = v81;
            v40 = v37;
            do
            {
              if (*(v40 + 7) >= v38)
              {
                v39 = v40;
              }

              v40 = v40[*(v40 + 7) < v38];
            }

            while (v40);
            if (v39 != v81 && v38 >= *(v39 + 7))
            {
              v35[1] = *(v39 + 8);
            }
          }

          v35 += 2;
        }

        while (v35 != v36);
      }

      v89 = v88;
      std::__tree<int>::destroy(&v77, v78);
LABEL_43:
      std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::push_back[abi:ne200100](a5, (*a2 + 24 * v13));
      v42 = v91;
      v41 = v92;
      if (v92 != v91)
      {
        v78 = 0;
        v79 = 0;
        v77 = &v78;
        v76[0] = 0;
        v76[1] = 0;
        v75 = v76;
        v43 = *(a5 + 8);
        v45 = *(v43 - 24);
        v44 = *(v43 - 16);
        if (v45 != v44)
        {
          do
          {
            v94 = v45;
            v46 = std::__tree<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::__map_value_compare<int,std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, v45);
            v46[5] = *(v45 + 8);
            v47 = v45 + 16;
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v46 + 6, v47);
            *(v46 + 20) = *(v47 + 32);
            v45 = v47 + 40;
          }

          while (v45 != v44);
          v42 = v91;
          v41 = v92;
        }

        while (v42 != v41)
        {
          v48 = v78;
          if (!v78)
          {
            goto LABEL_55;
          }

          v49 = *v42;
          v50 = &v78;
          do
          {
            if (*(v48 + 8) >= v49)
            {
              v50 = v48;
            }

            v48 = v48[*(v48 + 8) < v49];
          }

          while (v48);
          if (v50 != &v78 && v49 >= *(v50 + 8))
          {
            v94 = v42;
            v54 = std::__tree<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::__map_value_compare<int,std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v75, v42);
            v54[5] = *(v42 + 8);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v54 + 6, v42 + 16);
          }

          else
          {
LABEL_55:
            v51 = *(a5 + 8);
            v52 = *(v51 - 16);
            if (v52 >= *(v51 - 8))
            {
              v53 = std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__emplace_back_slow_path<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>> const&>((v51 - 24), v42);
            }

            else
            {
              std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>::pair[abi:ne200100](*(v51 - 16), v42);
              v53 = v52 + 56;
              *(v51 - 16) = v52 + 56;
            }

            *(v51 - 16) = v53;
            v94 = v42;
            v54 = std::__tree<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::__map_value_compare<int,std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v77, v42);
            v54[5] = *(v42 + 8);
            fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v54 + 6, v42 + 16);
          }

          *(v54 + 20) = *(v42 + 48);
          v42 += 56;
        }

        v55 = *(a5 + 8);
        v56 = *(v55 - 24);
        v57 = *(v55 - 16);
        while (v56 != v57)
        {
          v58 = v81[0];
          if (v81[0])
          {
            v59 = *v56;
            v60 = v81;
            do
            {
              if (*(v58 + 7) >= v59)
              {
                v60 = v58;
              }

              v58 = v58[*(v58 + 7) < v59];
            }

            while (v58);
            if (v60 != v81)
            {
              v61 = v76[0];
              if (v59 >= *(v60 + 7) && v76[0] != 0)
              {
                v63 = v76;
                do
                {
                  if (*(v61 + 8) >= v59)
                  {
                    v63 = v61;
                  }

                  v61 = v61[*(v61 + 8) < v59];
                }

                while (v61);
                if (v63 != v76 && v59 >= *(v63 + 8))
                {
                  *(v56 + 1) = v63[5];
                  fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(v56 + 2, (v63 + 6));
                  v56[12] = *(v63 + 20);
                }
              }
            }
          }

          v56 += 14;
        }

        v64 = v91;
        for (i = v92; i != v64; i -= 56)
        {
          v66 = *(i - 32);
          if (v66)
          {
            *(i - 24) = v66;
            operator delete(v66);
          }
        }

        v92 = v64;
        std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v75, v76[0]);
        std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(&v77, v78);
      }

      std::vector<int>::push_back[abi:ne200100](a6, (*(*a2 + 24 * v13) + v15));
      v8 = (v13 + 1);
      std::__tree<int>::destroy(&v80, v81[0]);
      v12 = 1;
LABEL_88:
      if (__p)
      {
        v85 = __p;
        operator delete(__p);
      }

      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      ++v13;
      v11 = *a2;
    }

    while (v13 < 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
    v7 = a3;
    if (v88)
    {
      v89 = v88;
      operator delete(v88);
    }

    v9 = v68;
LABEL_96:
    v82 = &v91;
    std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v82);
    ++v9;
    v6 = *v7;
  }

  while (v9 < (v7[1] - *v7) >> 2);
}

void sub_1B581EB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, char a22, void *a23, uint64_t a24, char a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(&a19, a20);
  std::__tree<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::__map_value_compare<int,std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>,std::less<int>,true>,std::allocator<std::__value_type<int,fst::DeterminizeArc<fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>>>>>::destroy(&a22, a23);
  std::__tree<int>::destroy(&a25, a26);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  v33 = *(v31 - 168);
  if (v33)
  {
    *(v31 - 160) = v33;
    operator delete(v33);
  }

  a28 = v31 - 144;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a28);
  _Unwind_Resume(a1);
}

void kaldi::quasar::AddCandidateToMap(uint64_t *a1, uint64_t a2, uint64_t a3, _DWORD *a4, void *a5)
{
  v5 = *a1;
  if (a1[1] != *a1)
  {
    v8 = 0;
    do
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__init_with_size[abi:ne200100]<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*,std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>*>(&v32, *(v5 + 24 * v8), *(v5 + 24 * v8 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v5 + 24 * v8 + 8) - *(v5 + 24 * v8)) >> 3));
      v9 = v32;
      if (v33 != v32)
      {
        v10 = 0;
        do
        {
          v11 = v9 + 56 * v10;
          v12 = *(v11 + 8);
          v11 += 8;
          v26 = v12;
          v27 = *(v11 + 8);
          v29 = 0;
          v30 = 0;
          __p = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(v11 + 16), *(v11 + 24), (*(v11 + 24) - *(v11 + 16)) >> 2);
          v31 = *(v11 + 40);
          v25 = v8;
          v35 = &v25;
          v13 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a5, &v25);
          v14 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v13 + 3, (v32 + 56 * v10));
          v25 = v8;
          v35 = &v25;
          std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a5, &v25);
          if (!v14 && v26 == *a2 && v31 == *(a2 + 40) && HIDWORD(v26) == *(a2 + 4) && *&v27 == *(a2 + 8) && *(&v27 + 1) == *(a2 + 12) && (v15 = *(a2 + 16), v29 - __p == *(a2 + 24) - v15) && !memcmp(__p, v15, v29 - __p))
          {
            ++*a4;
            v25 = v8;
            v35 = &v25;
            v17 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a5, &v25);
            v35 = (v32 + 56 * v10);
            v18 = std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v17 + 3, v35);
            *(v18 + 3) = *a3;
            v19 = *(a3 + 16);
            v20 = *(a3 + 32);
            v21 = *(a3 + 48);
            *(v18 + 84) = *(a3 + 60);
            *(v18 + 9) = v21;
            *(v18 + 7) = v20;
            *(v18 + 5) = v19;
            if (v18 + 3 != a3)
            {
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v18 + 13, *(a3 + 80), *(a3 + 88), (*(a3 + 88) - *(a3 + 80)) >> 2);
            }

            v16 = 0;
            v10 = 0x6DB6DB6DB6DB6DB7 * ((v33 - v32) >> 3);
          }

          else
          {
            v16 = 1;
          }

          if (__p)
          {
            v29 = __p;
            operator delete(__p);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }

          ++v10;
          v9 = v32;
        }

        while (v10 < 0x6DB6DB6DB6DB6DB7 * ((v33 - v32) >> 3));
      }

      v26 = &v32;
      std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v26);
      ++v8;
      v5 = *a1;
    }

    while (v8 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void sub_1B581EED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  a14 = &a20;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

void kaldi::quasar::LatticeGenerateConfidenceSausagesOnline(uint64_t a1, kaldi::SilencePhoneSet *a2, const kaldi::TransitionModel *a3, const fst::SymbolTable *a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void *a9, void *a10, const kaldi::quasar::WordConf *a11, const kaldi::quasar::WordConf *a12, const kaldi::quasar::WordConf *a13, int a14, unsigned int a15)
{
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v291, 3);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v291, "Utterance ID is ", 16);
    v18 = *(a1 + 23);
    if (v18 >= 0)
    {
      v19 = a1;
    }

    else
    {
      v19 = *a1;
    }

    if (v18 >= 0)
    {
      v20 = *(a1 + 23);
    }

    else
    {
      v20 = *(a1 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v291);
  }

  kaldi::MinimumBayesRisk::MinimumBayesRisk(v291, a7, *(a5 + 1), a15, 0xFFFFFFFFLL);
  v289 = 0;
  v288 = 0;
  v290 = 0;
  v21 = ((*(*(a7 + 8) + 72) - *(*(a7 + 8) + 64)) >> 3);
  LODWORD(v262.__r_.__value_.__l.__data_) = 0;
  std::vector<int>::vector[abi:ne200100](&v287, v21);
  memset(v286, 0, sizeof(v286));
  std::vector<std::vector<std::pair<int,float>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(v286, v293, v294, 0xAAAAAAAAAAAAAAABLL * ((v294 - v293) >> 3));
  v284 = 0;
  v283 = 0;
  v285 = 0;
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__init_with_size[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>(&v283, v295, v296, 0xAAAAAAAAAAAAAAABLL * ((v296 - v295) >> 3));
  std::unordered_map<unsigned long,short>::unordered_map(v282, &v297);
  memset(v281, 0, sizeof(v281));
  memset(v279, 0, sizeof(v279));
  v280 = 1065353216;
  v277 = 0;
  v276 = 0;
  v278 = 0;
  v274 = 0;
  v273 = 0;
  v275 = 0;
  kaldi::quasar::AlignOneBestWithSausages(v286, &v283, v292, &v276, &v273, &v288);
  kaldi::quasar::MBRToOneBest(&v288, v298, v272);
  std::vector<std::vector<std::pair<int,float>>>::__assign_with_size[abi:ne200100]<std::vector<std::pair<int,float>>*,std::vector<std::pair<int,float>>*>(v286, v276, v277, 0xAAAAAAAAAAAAAAABLL * (v277 - v276));
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__assign_with_size[abi:ne200100]<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*,std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>*>(&v283, v273, v274, 0xAAAAAAAAAAAAAAABLL * (v274 - v273));
  v189 = a7;
  v190 = a1;
  v271 = 0;
  v22 = 0;
  if (v284 != v283)
  {
    v23 = 0;
    v24 = 0xAAAAAAAAAAAAAAABLL * ((v284 - v283) >> 3);
    if (v24 <= 1)
    {
      v24 = 1;
    }

    do
    {
      v25 = *(v283 + 24 * v23);
      v26 = *(v283 + 24 * v23 + 8) - v25;
      if (v26)
      {
        v27 = 0x6DB6DB6DB6DB6DB7 * (v26 >> 3);
        if (v27 <= 1)
        {
          v27 = 1;
        }

        do
        {
          v28 = *v25;
          v25 += 14;
          v29 = v28 | a15;
          if (v28)
          {
            v30 = 1;
          }

          else
          {
            v30 = v29 == 0;
          }

          if (v30)
          {
            v22 = (v22 + 1);
          }

          else
          {
            v22 = v22;
          }

          --v27;
        }

        while (v27);
      }

      ++v23;
    }

    while (v23 != v24);
  }

  v270 = 0;
  if (((*(*(a7 + 8) + 72) - *(*(a7 + 8) + 64)) & 0x7FFFFFFF8) != 0)
  {
    v195 = 0;
    v192 = *(MEMORY[0x1E69E54D8] + 64);
    v193 = *MEMORY[0x1E69E54D8];
    v191 = *(MEMORY[0x1E69E54D8] + 72);
    do
    {
      v240 = &unk_1F2CFC4E0;
      v243 = 0;
      fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(a7);
      v31 = *(a7 + 8);
      v32 = v31[8];
      v241 = *(v32 + 8 * v195);
      __s1 = v31 + 1;
      v33 = v243;
      v34 = *(v241 + 6);
      if (v243 < 0xAAAAAAAAAAAAAAABLL * ((*(v241 + 7) - v34) >> 4))
      {
        do
        {
          v35 = (v34 + 48 * v33);
          v244 = *v35;
          v246 = 0;
          v247 = 0;
          v245 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v245, *(v35 + 2), *(v35 + 3), (*(v35 + 3) - *(v35 + 2)) >> 2);
          v248 = *(v35 + 10);
          kaldi::quasar::ProcessArc(v195, a2, &v244, &v287, &v270, a6, a8, v254);
          std::vector<kaldi::ChosenArc>::push_back[abi:ne200100](v281, v254);
          std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v262);
          v36 = MEMORY[0x1B8C84C00](&v262.__r_.__value_.__r.__words[2], v244);
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "_", 1);
          v38 = MEMORY[0x1B8C84C00](v37, DWORD1(v244));
          v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "_", 1);
          MEMORY[0x1B8C84C00](v39, v248);
          v40 = 0x100000000;
          if (!__CFADD__(HIDWORD(v244), DWORD2(v244)))
          {
            v40 = 0;
          }

          v41 = v40 | (HIDWORD(v244) + DWORD2(v244));
          v42 = v245;
          if (v246 != v245)
          {
            v43 = (v246 - v245) >> 2;
            if (v43 <= 1)
            {
              v43 = 1;
            }

            v44 = 6967;
            do
            {
              v45 = *v42++;
              v41 += v44 * v45;
              v44 *= 7499;
              --v43;
            }

            while (v43);
          }

          std::stringbuf::str();
          v46 = BYTE7(v234);
          if (SBYTE7(v234) < 0)
          {
            v46 = __p[1];
          }

          v47 = __p;
          if (SBYTE7(v234) < 0)
          {
            v47 = __p[0];
          }

          for (i = 0; v46; --v46)
          {
            v49 = *v47;
            v47 = (v47 + 1);
            i = v49 + 7853 * i;
          }

          if (SBYTE7(v234) < 0)
          {
            operator delete(__p[0]);
          }

          *&v217 = i + v41;
          __p[0] = &v217;
          if (*(std::__hash_table<std::__hash_value_type<unsigned long,short>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,short>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,short>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,short>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(v282, &v217) + 12) == 1)
          {
            kaldi::quasar::AddCandidateToMap(&v283, &v244, v254, &v271, v279);
          }

          v262.__r_.__value_.__r.__words[0] = v193;
          *(v262.__r_.__value_.__r.__words + *(v193 - 24)) = v192;
          v262.__r_.__value_.__r.__words[2] = v191;
          v263 = (MEMORY[0x1E69E5548] + 16);
          if (v267 < 0)
          {
            operator delete(v266);
          }

          v263 = (MEMORY[0x1E69E5538] + 16);
          std::locale::~locale(&v264);
          std::iostream::~basic_iostream();
          MEMORY[0x1B8C85200](&v268);
          if (v255)
          {
            v256 = v255;
            operator delete(v255);
          }

          if (v245)
          {
            v246 = v245;
            operator delete(v245);
          }

          v33 = v243 + 1;
          v243 = v33;
          v34 = *(v241 + 6);
        }

        while (v33 < 0xAAAAAAAAAAAAAAABLL * ((*(v241 + 7) - v34) >> 4));
        v31 = *(a7 + 8);
        v32 = v31[8];
      }

      v195 = (v195 + 1);
    }

    while (v195 < ((v31[9] - v32) >> 3));
    v50 = v271;
  }

  else
  {
    v50 = 0;
  }

  if (v50 < v22)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v262);
    v186 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Needed to find ", 15);
    v187 = MEMORY[0x1B8C84C00](v186, v22);
    v188 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v187, " actually only found ", 21);
    MEMORY[0x1B8C84C00](v188, v50);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v262);
  }

  v261 = 0;
  v259 = 0;
  v258 = 0;
  v260 = 0;
  memset(v257, 0, sizeof(v257));
  kaldi::quasar::WordConf::WordConf(v254);
  memset(v253, 0, sizeof(v253));
  if (v289 == v288)
  {
    v57 = kaldi::g_kaldi_verbose_level;
    v59 = a5;
    v58 = a1;
    goto LABEL_78;
  }

  v51 = 0;
  while (1)
  {
    kaldi::quasar::WordConf::WordConf(&v244);
    kaldi::quasar::WordConf::WordConf(&v240);
    LODWORD(v262.__r_.__value_.__l.__data_) = v51;
    *&v217 = &v262;
    v52 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v279, &v262);
    *&v217 = v288 + 4 * v51;
    v53 = std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v52 + 3, v217);
    v54 = *(v53 + 7);
    v234 = *(v53 + 5);
    v235 = v54;
    v236[0] = *(v53 + 9);
    *(v236 + 12) = *(v53 + 84);
    *__p = *(v53 + 3);
    v238 = 0;
    v239 = 0;
    v237 = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v237, v53[13], v53[14], (v53[14] - v53[13]) >> 2);
    v55 = *(v288 + v51);
    if (HIDWORD(__p[0]))
    {
      if (v55)
      {
        goto LABEL_61;
      }
    }

    else if (!(v55 | a15))
    {
LABEL_61:
      if (LODWORD(__p[0]) == -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v262);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Couldn't find arc", 17);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v262);
      }

      v56 = v272[0];
      v232 = 0;
      v230 = 0;
      v231 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v230, v299, v300, (v300 - v299) >> 2);
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v229, *a1, *(a1 + 8));
      }

      else
      {
        v229 = *a1;
      }

      kaldi::quasar::GetCandidateFeatures(a5, v281, v56 + 104 * v51, a8, &v230, &v229, 1, &v261 + 1, &v261, v254, v253, &v244, &v240, __p);
      if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v229.__r_.__value_.__l.__data_);
      }

      if (v230)
      {
        v231 = v230;
        operator delete(v230);
      }

      std::vector<kaldi::quasar::WordConf>::push_back[abi:ne200100](&v258, &v244);
      std::vector<kaldi::ChosenArc>::push_back[abi:ne200100](v257, __p);
    }

    if (v237)
    {
      v238 = v237;
      operator delete(v237);
    }

    kaldi::quasar::WordConf::~WordConf(&v240);
    kaldi::quasar::WordConf::~WordConf(&v244);
    if (++v51 >= ((v289 - v288) >> 2))
    {
      v57 = kaldi::g_kaldi_verbose_level;
      v58 = a1;
      if (v261 == HIDWORD(v261))
      {
        v59 = a5;
      }

      else
      {
        v59 = a5;
        if (kaldi::g_kaldi_verbose_level > -2)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v262);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Warning: MISMATCH BETWEEN LENGTH OF 1-BEST and LENGTH OF CONFIDENCE VECTOR", 74);
          kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v262);
          v57 = kaldi::g_kaldi_verbose_level;
        }
      }

LABEL_78:
      if (v57 >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v262, 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Finished generating 1-best word-level confidence features for ", 62);
        v60 = std::ostream::operator<<();
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " words in utterance ", 20);
        v62 = *(v58 + 23);
        if (v62 >= 0)
        {
          v63 = v58;
        }

        else
        {
          v63 = *v58;
        }

        if (v62 >= 0)
        {
          v64 = *(v58 + 23);
        }

        else
        {
          v64 = v58[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v262);
      }

      v65 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a9, v58);
      v66 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a10, v58);
      kaldi::quasar::WordConf::NormaliseUttScores(v254, v65 + 10, v66 + 10, v67);
      *v227 = 0;
      *v226 = 0;
      v228 = 0;
      v70 = v258;
      if (v259 == v258)
      {
        v112 = 0;
        v111 = 0;
      }

      else
      {
        v71 = 0;
        do
        {
          v201 = 0;
          v202 = 0;
          v203 = 0;
          v224 = 0;
          v223 = 0;
          v225 = 0;
          kaldi::quasar::ComputeTimeBasedPosterior((**(v70 + 264 * v71 + 168) * (1000.0 / *(v59 + 12))), ((1000.0 / *(v59 + 12)) * (**(v70 + 264 * v71 + 168) + *(*(v70 + 264 * v71 + 168) + 4))), v68, a6, v257[0] + 104 * v71);
          kaldi::quasar::WordConf::AddUttFeatures(v258 + 264 * v71, v254);
          v72 = (v257[0] + 104 * v71);
          v73 = v258 + 264 * v71;
          v74 = *(v73 + 168);
          v74[66] = v72[10];
          v74[67] = v72[11];
          v74[68] = v72[12];
          v74[82] = 1118044160;
          v75 = v72[17];
          *(v73 + 200) = v75;
          v74[84] = v75;
          v221 = 0;
          v220 = 0;
          v222 = 0;
          v217 = 0u;
          *v218 = 0u;
          v219 = 1065353216;
          *__src = 0u;
          v215 = 0u;
          v216 = 1065353216;
          std::vector<kaldi::quasar::WordConf>::push_back[abi:ne200100](&v201, v73);
          if (*(v253[0] + 24 * v71 + 8) != *(v253[0] + 24 * v71))
          {
            v76 = 0;
            do
            {
              LODWORD(v262.__r_.__value_.__l.__data_) = v71;
              *&v244 = &v262;
              v77 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v279, &v262);
              v78 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v77 + 3, (*(v253[0] + 24 * v71) + 104 * v76 + 4));
              if (*(*(v253[0] + 24 * v71) + 104 * v76 + 4) != *(v258 + 264 * v71 + 144) && *(a5 + 2) == 1)
              {
                v79 = v78;
                LODWORD(v262.__r_.__value_.__l.__data_) = v71;
                *&v244 = &v262;
                std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v279, &v262);
                if (v79)
                {
                  v80 = *(v79 + 7);
                  v234 = *(v79 + 5);
                  v235 = v80;
                  v236[0] = *(v79 + 9);
                  *(v236 + 12) = *(v79 + 84);
                  *__p = *(v79 + 3);
                  v238 = 0;
                  v239 = 0;
                  v237 = 0;
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v237, v79[13], v79[14], (v79[14] - v79[13]) >> 2);
                  kaldi::quasar::WordConf::WordConf(&v244);
                  kaldi::quasar::WordConf::WordConf(&v240);
                  v212 = 0;
                  v211 = 0;
                  v213 = 0;
                  v81 = v286[0] + 24 * v71;
                  v82 = *v81;
                  for (j = *(v81 + 8); v82 != j; v82 += 2)
                  {
                    if (*v82 == *(*(v253[0] + 24 * v71) + 104 * v76 + 4))
                    {
                      break;
                    }
                  }

                  v84 = v82 + 1;
                  std::vector<float>::push_back[abi:ne200100](&v211, v82 + 1);
                  v85 = *(v253[0] + 24 * v71);
                  v210 = 0;
                  v208 = 0;
                  v209 = 0;
                  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v208, v211, v212, (v212 - v211) >> 2);
                  if (*(v190 + 23) < 0)
                  {
                    std::string::__init_copy_ctor_external(&v207, *v190, *(v190 + 8));
                  }

                  else
                  {
                    v207 = *v190;
                  }

                  kaldi::quasar::GetCandidateFeatures(a5, v281, v85 + 104 * v76, a8, &v208, &v207, 0, &v261 + 1, &v261, v254, v253, &v244, &v240, __p);
                  if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(v207.__r_.__value_.__l.__data_);
                  }

                  if (v208)
                  {
                    v209 = v208;
                    operator delete(v208);
                  }

                  *(v251 + 88) = *v84;
                  kaldi::quasar::WordConf::AddUttFeatures(&v244, v254);
                  kaldi::quasar::WordConf::SetOneBestFeatures(&v244, v258 + 264 * v71);
                  kaldi::quasar::GenSausageStructFeats(a5, &v244, (*(v253[0] + 24 * v71) + 104 * v76), (v258 + 264 * v71), v257[0] + 104 * v71, a8);
                  kaldi::quasar::ComputeTimeBasedPosterior((**(v258 + 264 * v71 + 168) * (1000.0 / *(a5 + 12))), ((1000.0 / *(a5 + 12)) * (**(v258 + 264 * v71 + 168) + *(*(v258 + 264 * v71 + 168) + 4))), v86, a6, *(v253[0] + 24 * v71) + 104 * v76);
                  v87 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(&v217, v250);
                  if (v87)
                  {
                    v88 = *(v87 + 5);
                    v89 = *(v253[0] + 24 * v71);
                    v90 = v89 + 104 * v76;
                    if (v88 < *(v90 + 68))
                    {
                      v91 = v220;
                      if (v220 != v221)
                      {
                        v92 = *(v90 + 4);
                        do
                        {
                          if (*v91 == v92 && v91[1] == v88)
                          {
                            goto LABEL_113;
                          }

                          v91 += 2;
                        }

                        while (v91 != v221);
                        v91 = v221;
                      }

LABEL_113:
                      if (kaldi::g_kaldi_verbose_level >= 3)
                      {
                        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v262, 3);
                        v94 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Candidate Update: ", 18);
                        if ((v249 & 0x80u) == 0)
                        {
                          v95 = &v246;
                        }

                        else
                        {
                          v95 = v246;
                        }

                        if ((v249 & 0x80u) == 0)
                        {
                          v96 = v249;
                        }

                        else
                        {
                          v96 = v247;
                        }

                        v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v94, v95, v96);
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, " from ", 6);
                        v204 = v250;
                        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v217, v250);
                        v98 = std::ostream::operator<<();
                        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v98, " to ", 4);
                        std::ostream::operator<<();
                        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v262);
                        v89 = *(v253[0] + 24 * v71);
                      }

                      v99 = *(v89 + 104 * v76 + 68);
                      *(v91 + 1) = v99;
                      v204 = v250;
                      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v217, v250) + 5) = v99;
                      v100 = *(*(v253[0] + 24 * v71) + 104 * v76 + 68);
                      *(v251 + 332) = v100;
                      v252 = v100;
                      v204 = v250;
                      v101 = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(__src, v250);
                      kaldi::quasar::WordConf::operator=(v201 + 264 * *(v101 + 5), &v244);
                    }
                  }

                  else
                  {
                    if (kaldi::g_kaldi_verbose_level >= 3)
                    {
                      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v262, 3);
                      v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Add Candidate: ", 15);
                      if ((v249 & 0x80u) == 0)
                      {
                        v103 = &v246;
                      }

                      else
                      {
                        v103 = v246;
                      }

                      if ((v249 & 0x80u) == 0)
                      {
                        v104 = v249;
                      }

                      else
                      {
                        v104 = v247;
                      }

                      v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, v103, v104);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, " to candidate/confusion set", 27);
                      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v262);
                    }

                    v106 = *(v253[0] + 24 * v71) + 104 * v76;
                    LODWORD(v262.__r_.__value_.__l.__data_) = v250[0];
                    HIDWORD(v262.__r_.__value_.__r.__words[0]) = *(v106 + 68);
                    std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v220, &v262);
                    v107 = *(*(v253[0] + 24 * v71) + 104 * v76 + 68);
                    v204 = v250;
                    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v217, v250) + 5) = v107;
                    v108 = *(*(v253[0] + 24 * v71) + 104 * v76 + 68);
                    *(v251 + 332) = v108;
                    v252 = v108;
                    std::vector<kaldi::quasar::WordConf>::push_back[abi:ne200100](&v201, &v244);
                    v110 = v201;
                    v109 = v202;
                    v204 = v250;
                    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(__src, v250) + 5) = 1041204193 * ((v109 - v110) >> 3) - 1;
                  }

                  if (v211)
                  {
                    v212 = v211;
                    operator delete(v211);
                  }

                  kaldi::quasar::WordConf::~WordConf(&v240);
                  kaldi::quasar::WordConf::~WordConf(&v244);
                  if (v237)
                  {
                    v238 = v237;
                    operator delete(v237);
                  }
                }
              }

              ++v76;
            }

            while (v76 < 0x4EC4EC4EC4EC4EC5 * ((*(v253[0] + 24 * v71 + 8) - *(v253[0] + 24 * v71)) >> 3));
          }

          std::vector<std::vector<kaldi::quasar::WordConf>>::push_back[abi:ne200100](v226, &v201);
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(__src);
          std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v217);
          if (v220)
          {
            v221 = v220;
            operator delete(v220);
          }

          v262.__r_.__value_.__r.__words[0] = &v223;
          std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&v262);
          v262.__r_.__value_.__r.__words[0] = &v201;
          std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&v262);
          ++v71;
          v70 = v258;
          v59 = a5;
        }

        while (v71 < 0xF83E0F83E0F83E1 * ((v259 - v258) >> 3));
        v111 = *v227;
        v112 = *v226;
      }

      v224 = 0;
      v223 = 0;
      v225 = 0;
      v221 = 0;
      v220 = 0;
      v222 = 0;
      v212 = 0;
      v211 = 0;
      v213 = 0;
      if (v111 != v112)
      {
        v113 = 0;
        do
        {
          v114 = (v112 + 24 * v113);
          v115 = *v114;
          v116 = 0xF83E0F83E0F83E1 * ((v114[1] - *v114) >> 3);
          v117 = *(*v114 + 21);
          v117[42].f32[1] = v116;
          v117[46] = 0x3F80000000000000;
          if (v116 >= 2)
          {
            v118 = v117[45].f32[0];
            v119 = v117[45].f32[1];
            v120 = v116 - 1;
            v121 = (v115 + 116);
            v122 = 0.0;
            v123 = 1.0;
            v124 = v120;
            do
            {
              v125 = *(v121 - 4);
              v118 = v125[2] + v118;
              v117[45].f32[0] = v118;
              v126 = v125[3];
              if (v126 > v122)
              {
                v117[46].f32[0] = v126;
                v122 = v126;
              }

              v127 = v125[4];
              if (v127 < v123)
              {
                v117[46].f32[1] = v127;
                v123 = v127;
              }

              v119 = *v121 + v119;
              v117[45].f32[1] = v119;
              v121 += 66;
              --v124;
            }

            while (v124);
            *v69.i32 = v120;
            v117[45] = vdiv_f32(v117[45], vdup_lane_s32(v69, 0));
          }

          if (v115[36] <= 499999999)
          {
            v128 = 0.0;
          }

          else
          {
            v128 = 1.0;
          }

          v117[48].f32[1] = v128;
          v117[50].i32[0] = 1065353216;
          if (*v59 == 1)
          {
            kaldi::quasar::WordConf::ApplyModel(v115, a11);
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(&v262, 3);
              v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Confidence score @ word ", 24);
              v130 = MEMORY[0x1B8C84C30](v129, v113);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v130, " is ", 4);
              v131 = std::ostream::operator<<();
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, " MBR SCORE IS ", 14);
              std::ostream::operator<<();
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v262);
            }
          }

          else
          {
            if (*(v59 + 7) == 1)
            {
              v132 = v115[50];
            }

            else
            {
              v132 = v117[11].i32[0];
            }

            v115[48] = v132;
          }

          v133 = *v226;
          v134 = (*v226 + 24 * v113);
          v135 = *v134;
          LODWORD(v240) = *(*v134 + 192);
          LODWORD(__p[0]) = v240;
          v136 = *(v135 + 144) == a15;
          v137 = v134[1];
          v138 = 0xF83E0F83E0F83E1 * ((v137 - v135) >> 3);
          if (v138 >= 2)
          {
            v139 = 456;
            v140 = 1;
            do
            {
              if (*(v59 + 5) == 1)
              {
                kaldi::quasar::ProcessConfusions(v113, v140, v226);
                v133 = *v226;
              }

              v141 = *(v133 + 24 * v113);
              v142 = v141 + v139;
              v143 = *(v141 + v139 - 24);
              v143[97] = 0;
              v144 = *(v141 + v139 - 48);
              v145 = *(v141 + 168);
              if (v144 > 499999999)
              {
                *(v145 + 396) = 1065353216;
                v143[97] = 1065353216;
              }

              v143[98] = *(v145 + 388);
              v143[100] = 0;
              kaldi::quasar::WordConf::ApplyModel((v142 - 192), a12);
              if (kaldi::g_kaldi_verbose_level >= 3)
              {
                kaldi::KaldiVlogMessage::KaldiVlogMessage(&v262, 3);
                v146 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Confidence score @ alt word ", 28);
                v147 = MEMORY[0x1B8C84C30](v146, v140);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v147, " is ", 4);
                v148 = std::ostream::operator<<();
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v148, " MBR SCORE IS ", 14);
                std::ostream::operator<<();
                kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v262);
              }

              v133 = *v226;
              v149 = (*v226 + 24 * v113);
              v135 = *v149;
              v150 = (*v149 + v139);
              *__p = *v150 + *__p;
              v151 = *(v150 - 12) == 0;
              if (*v150 > *&v240)
              {
                *&v240 = *v150;
              }

              v136 |= v151;
              ++v140;
              v137 = v149[1];
              v138 = 0xF83E0F83E0F83E1 * ((v137 - v135) >> 3);
              v139 += 264;
            }

            while (v140 < v138);
          }

          *(*(v135 + 168) + 404) = 0;
          if (v137 != v135)
          {
            v152 = 0;
            v153 = 0;
            do
            {
              LODWORD(v262.__r_.__value_.__l.__data_) = v113;
              *&v244 = &v262;
              v154 = std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v279, &v262);
              *&v244 = *(*v226 + 24 * v113) + v152 + 144;
              v155 = std::__hash_table<std::__hash_value_type<int,kaldi::ChosenArc>,std::__unordered_map_hasher<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,kaldi::ChosenArc>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,kaldi::ChosenArc>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v154 + 3, v244);
              v157 = *(*v226 + 24 * v113);
              v158 = (v157 + v152 + 216);
              if (v158 != v155 + 13)
              {
                std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v158, v155[13], v155[14], (v155[14] - v155[13]) >> 2);
                v157 = *(*v226 + 24 * v113);
              }

              kaldi::quasar::WordConf::ComputePhonesAndDurations((v157 + v152), v156, a3, a4);
              v133 = *v226;
              v135 = *(*v226 + 24 * v113);
              if (v153)
              {
                v159 = kaldi::LevenshteinEditDistance<std::string>((v135 + 240), (v135 + 240 + v152));
                v133 = *v226;
                v135 = *(*v226 + 24 * v113);
                *(*(v135 + v152 + 168) + 404) = v159;
              }

              ++v153;
              v137 = *(v133 + 24 * v113 + 8);
              v138 = 0xF83E0F83E0F83E1 * ((v137 - v135) >> 3);
              v152 += 264;
            }

            while (v153 < v138);
          }

          if (v138 < 2)
          {
            *(*(v135 + 168) + 408) = 0;
          }

          else if (v137 != v135)
          {
            v160 = 0;
            do
            {
              if (v137 == v135)
              {
                v167 = 2147500000.0;
                v137 = v135;
                v164 = v135;
              }

              else
              {
                v161 = 0;
                v162 = 0x7FFFFFFF;
                v163 = 240;
                v164 = v135;
                do
                {
                  if (v160 != v161)
                  {
                    v165 = kaldi::LevenshteinEditDistance<std::string>((v164 + 264 * v160 + 240), (v164 + v163));
                    if (v165 < v162)
                    {
                      v162 = v165;
                    }

                    v133 = *v226;
                  }

                  ++v161;
                  v166 = (v133 + 24 * v113);
                  v164 = *v166;
                  v163 += 264;
                }

                while (v161 < 0xF83E0F83E0F83E1 * ((v166[1] - *v166) >> 3));
                v135 = *(v133 + 24 * v113);
                v137 = *(v133 + 24 * v113 + 8);
                v167 = v162;
                v59 = a5;
              }

              *(*(v164 + 264 * v160++ + 168) + 408) = v167;
            }

            while (v160 < 0xF83E0F83E0F83E1 * ((v137 - v135) >> 3));
          }

          LODWORD(v244) = -1082130432;
          if ((v136 & 1) == 0 && *(v59 + 8) == 1)
          {
            kaldi::quasar::WordConf::WordConf(&v262, *(v133 + 24 * v113));
            kaldi::quasar::WordConf::ApplyModel(&v262, a13);
            if (v269 > *&v240)
            {
              *&v240 = v269;
            }

            *__p = v269 + *__p;
            *&v244 = v269;
            kaldi::quasar::WordConf::~WordConf(&v262);
          }

          if (*(v59 + 9) == 1)
          {
            if (*__p == 0.0)
            {
              v168 = &kaldi::quasar::kConfidenceValueVerySmall;
            }

            else
            {
              v168 = __p;
            }

            std::vector<float>::push_back[abi:ne200100](&v223, v168);
          }

          else
          {
            LODWORD(v262.__r_.__value_.__l.__data_) = 1065353216;
            std::vector<float>::push_back[abi:ne200100](&v223, &v262);
          }

          std::vector<float>::push_back[abi:ne200100](&v211, &v240);
          std::vector<float>::push_back[abi:ne200100](&v220, &v244);
          ++v113;
          v112 = *v226;
        }

        while (v113 < 0xAAAAAAAAAAAAAAABLL * ((*v227 - *v226) >> 3));
      }

      v169 = *(v189 + 8);
      v206 = v169;
      ++*(v169 + 56);
      v205 = &unk_1F2CFC270;
      if (((*(v169 + 72) - *(v169 + 64)) & 0x7FFFFFFF8) != 0)
      {
        v170 = 0;
        v171 = -1;
        do
        {
          *&v244 = &unk_1F2CFC4E0;
          v246 = 0;
          fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(v189);
          v172 = *(v189 + 8);
          v173 = v172[8];
          *(&v244 + 1) = *(v173 + 8 * v170);
          v245 = v172 + 1;
          v174 = v246;
          v175 = *(*(&v244 + 1) + 48);
          if (v246 < 0xAAAAAAAAAAAAAAABLL * ((*(*(&v244 + 1) + 56) - v175) >> 4))
          {
            do
            {
              v176 = v175 + 48 * v174;
              v262.__r_.__value_.__r.__words[0] = *v176;
              *&v262.__r_.__value_.__r.__words[1] = *(v176 + 8);
              v263 = 0;
              v264.__locale_ = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v262.__r_.__value_.__r.__words[2], *(v176 + 16), *(v176 + 24), (*(v176 + 24) - *(v176 + 16)) >> 2);
              LODWORD(v265) = *(v176 + 40);
              if (SHIDWORD(v262.__r_.__value_.__r.__words[0]) > v171)
              {
                v171 = HIDWORD(v262.__r_.__value_.__r.__words[0]);
              }

              if (v262.__r_.__value_.__r.__words[2])
              {
                v263 = v262.__r_.__value_.__r.__words[2];
                operator delete(v262.__r_.__value_.__r.__words[2]);
              }

              v174 = v246 + 1;
              v246 = v174;
              v175 = *(*(&v244 + 1) + 48);
            }

            while (v174 < 0xAAAAAAAAAAAAAAABLL * ((*(*(&v244 + 1) + 56) - v175) >> 4));
            v172 = *(v189 + 8);
            v173 = v172[8];
          }

          ++v170;
        }

        while (v170 < ((v172[9] - v173) >> 3));
        v177 = (v171 + 1);
        if (((v206[9] - v206[8]) & 0x7FFFFFFF8) != 0)
        {
          v178 = 0;
          do
          {
            v240 = &unk_1F2CFC4E0;
            v243 = 0;
            fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::MutateCheck(&v205);
            v179 = v206;
            v180 = v206[8];
            v241 = *(v180 + 8 * v178);
            __s1 = v206 + 1;
            v181 = v243;
            v182 = *(v241 + 6);
            if (v243 < 0xAAAAAAAAAAAAAAABLL * ((*(v241 + 7) - v182) >> 4))
            {
              do
              {
                v183 = v182 + 48 * v181;
                v262.__r_.__value_.__r.__words[0] = *v183;
                *&v262.__r_.__value_.__r.__words[1] = *(v183 + 8);
                v263 = 0;
                v264.__locale_ = 0;
                std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v262.__r_.__value_.__r.__words[2], *(v183 + 16), *(v183 + 24), (*(v183 + 24) - *(v183 + 16)) >> 2);
                LODWORD(v265) = *(v183 + 40);
                if (HIDWORD(v262.__r_.__value_.__r.__words[0]) == a15)
                {
                  v244 = *&v262.__r_.__value_.__l.__data_;
                  v246 = 0;
                  v247 = 0;
                  v245 = 0;
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v245, v262.__r_.__value_.__r.__words[2], v263, (v263 - v262.__r_.__value_.__r.__words[2]) >> 2);
                  v248 = v265;
                  DWORD1(v244) = v171 + 1;
                  LODWORD(v244) = v171 + 1;
                  fst::MutableArcIterator<fst::VectorFst<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>>::SetValue(&v240, &v244);
                  v184 = *(v241 + 6) + 48 * v243;
                  v262.__r_.__value_.__r.__words[0] = *v184;
                  fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>::operator=(&v262.__r_.__value_.__l.__size_, v184 + 8);
                  LODWORD(v265) = *(v184 + 40);
                  if (v245)
                  {
                    v246 = v245;
                    operator delete(v245);
                  }
                }

                if (v262.__r_.__value_.__r.__words[2])
                {
                  v263 = v262.__r_.__value_.__r.__words[2];
                  operator delete(v262.__r_.__value_.__r.__words[2]);
                }

                v181 = v243 + 1;
                v243 = v181;
                v182 = *(v241 + 6);
              }

              while (v181 < 0xAAAAAAAAAAAAAAABLL * ((*(v241 + 7) - v182) >> 4));
              v179 = v206;
              v180 = v206[8];
            }

            ++v178;
          }

          while (v178 < ((v179[9] - v180) >> 3));
          v177 = (v171 + 1);
        }
      }

      else
      {
        v177 = 0;
      }

      if (kaldi::g_kaldi_verbose_level > 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v262, 3);
        v185 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v262, "Using special symbol for silence = ", 35);
        MEMORY[0x1B8C84C00](v185, v177);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v262);
      }

      fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::VectorFst();
    }
  }
}

void sub_1B582261C()
{
  v0 = STACK[0x358];
  if (STACK[0x358])
  {
    STACK[0x360] = v0;
    operator delete(v0);
  }

  v1 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v1;
    operator delete(v1);
  }

  kaldi::quasar::WordConf::~WordConf(&STACK[0x3E0]);
  kaldi::quasar::WordConf::~WordConf(&STACK[0x4E8]);
  JUMPOUT(0x1B5822C64);
}

void sub_1B58226C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5822B9CLL);
}

void sub_1B58226FC()
{
  if (STACK[0x750])
  {
    STACK[0x758] = STACK[0x750];
    JUMPOUT(0x1B5822A34);
  }

  JUMPOUT(0x1B5822BC4);
}

void sub_1B582273C()
{
  v0 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x1B5822888);
}

void sub_1B5822760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&STACK[0x748]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a34);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a41);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a43);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a45);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a52);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a56);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a58);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a60);
  STACK[0x748] = &a62;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  JUMPOUT(0x1B5822BE4);
}

void sub_1B58227E4()
{
  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  v0 = STACK[0x270];
  if (STACK[0x270])
  {
    STACK[0x278] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x1B5822888);
}

void sub_1B5822828(_Unwind_Exception *a1)
{
  v2 = STACK[0x758];
  if (STACK[0x758])
  {
    STACK[0x760] = v2;
    operator delete(v2);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&STACK[0x240]);
  v3 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v3;
    operator delete(v3);
  }

  v4 = STACK[0x2F8];
  if (STACK[0x2F8])
  {
    STACK[0x300] = v4;
    operator delete(v4);
  }

  v5 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v5;
    operator delete(v5);
  }

  STACK[0x748] = &STACK[0x328];
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x5F0];
  std::vector<std::vector<kaldi::ChosenArc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  kaldi::quasar::WordConf::~WordConf(&STACK[0x608]);
  STACK[0x748] = &STACK[0x710];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x728];
  std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x868];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x880];
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x898];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::~__hash_table(&STACK[0x8B0]);
  STACK[0x748] = &STACK[0x8D8];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x8F0]);
  STACK[0x748] = &STACK[0x918];
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x930];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  v6 = STACK[0x948];
  if (STACK[0x948])
  {
    STACK[0x950] = v6;
    operator delete(v6);
  }

  v7 = STACK[0x960];
  if (STACK[0x960])
  {
    STACK[0x968] = v7;
    operator delete(v7);
  }

  kaldi::MinimumBayesRisk::~MinimumBayesRisk(&STACK[0x978]);
  _Unwind_Resume(a1);
}

void sub_1B5822884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  v52 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v52;
    operator delete(v52);
  }

  kaldi::quasar::WordConf::~WordConf(&STACK[0x3E0]);
  kaldi::quasar::WordConf::~WordConf(&STACK[0x4E8]);
  v53 = STACK[0x3C0];
  if (STACK[0x3C0])
  {
    STACK[0x3C8] = v53;
    operator delete(v53);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x2A0]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x2D0]);
  v54 = STACK[0x2F8];
  if (STACK[0x2F8])
  {
    STACK[0x300] = v54;
    operator delete(v54);
  }

  STACK[0x748] = &STACK[0x310];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &a52;
  std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  JUMPOUT(0x1B5822C54);
}

void sub_1B58228BC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a53)
  {
    operator delete(a53);
  }

  JUMPOUT(0x1B5822BBCLL);
}

void sub_1B58228D8()
{
  v0 = STACK[0x750];
  if (STACK[0x750])
  {
    STACK[0x758] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x1B5822A28);
}

void sub_1B58228F8()
{
  v0 = STACK[0x658];
  if (STACK[0x658])
  {
    STACK[0x660] = v0;
    operator delete(v0);
  }

  v1 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v1;
    operator delete(v1);
  }

  JUMPOUT(0x1B5822C9CLL);
}

void sub_1B5822934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a70);
  v73 = STACK[0x2E0];
  if (STACK[0x2E0])
  {
    STACK[0x2E8] = v73;
    operator delete(v73);
  }

  STACK[0x748] = &a72;
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x370]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&STACK[0x230]);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&STACK[0x240]);
  v74 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x2F8];
  if (STACK[0x2F8])
  {
    STACK[0x300] = v75;
    operator delete(v75);
  }

  v76 = STACK[0x310];
  if (STACK[0x310])
  {
    STACK[0x318] = v76;
    operator delete(v76);
  }

  STACK[0x748] = &STACK[0x328];
  std::vector<std::vector<kaldi::quasar::WordConf>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x5F0];
  std::vector<std::vector<kaldi::ChosenArc>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  kaldi::quasar::WordConf::~WordConf(&STACK[0x608]);
  STACK[0x748] = &STACK[0x710];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x728];
  std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x868];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x880];
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x898];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  std::__hash_table<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::unordered_map<int,kaldi::ChosenArc>>>>::~__hash_table(&STACK[0x8B0]);
  STACK[0x748] = &STACK[0x8D8];
  std::vector<kaldi::ChosenArc>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&STACK[0x8F0]);
  STACK[0x748] = &STACK[0x918];
  std::vector<std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  STACK[0x748] = &STACK[0x930];
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  v77 = STACK[0x948];
  if (STACK[0x948])
  {
    STACK[0x950] = v77;
    operator delete(v77);
  }

  v78 = STACK[0x960];
  if (STACK[0x960])
  {
    STACK[0x968] = v78;
    operator delete(v78);
  }

  kaldi::MinimumBayesRisk::~MinimumBayesRisk(&STACK[0x978]);
  _Unwind_Resume(a1);
}

void sub_1B582294C()
{
  v0 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v0;
    operator delete(v0);
  }

  if (STACK[0x4F8])
  {
    STACK[0x500] = STACK[0x4F8];
    JUMPOUT(0x1B58229ACLL);
  }

  JUMPOUT(0x1B5822BE4);
}

void sub_1B5822A24()
{
  v0 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x1B5822BC4);
}

void sub_1B5822A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a34);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a41);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a43);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a45);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a52);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a56);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a58);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a60);
  STACK[0x748] = &a62;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  JUMPOUT(0x1B5822BE4);
}

void sub_1B5822A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  v62 = STACK[0x2A8];
  if (STACK[0x2A8])
  {
    STACK[0x2B0] = v62;
    operator delete(v62);
  }

  v63 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v63;
    operator delete(v63);
  }

  if (STACK[0x758])
  {
    STACK[0x760] = STACK[0x758];
    JUMPOUT(0x1B5822B90);
  }

  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a34);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a41);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a43);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a45);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a52);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(&a56);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst(&a58);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst(&a60);
  STACK[0x748] = &a62;
  std::vector<fst::VectorFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x748]);
  JUMPOUT(0x1B5822BE4);
}

void sub_1B5822ABC()
{
  v0 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v0;
    operator delete(v0);
  }

  if (STACK[0x4F8])
  {
    STACK[0x500] = STACK[0x4F8];
    JUMPOUT(0x1B5822B38);
  }

  JUMPOUT(0x1B5822B3CLL);
}

void sub_1B5822AC4()
{
  if (STACK[0x760])
  {
    STACK[0x768] = STACK[0x760];
    JUMPOUT(0x1B5822B80);
  }

  JUMPOUT(0x1B5822B84);
}

void sub_1B5822AD4()
{
  v0 = STACK[0x2A8];
  if (STACK[0x2A8])
  {
    STACK[0x2B0] = v0;
    operator delete(v0);
  }

  if (STACK[0x760])
  {
    STACK[0x768] = STACK[0x760];
    JUMPOUT(0x1B5822B80);
  }

  JUMPOUT(0x1B5822B84);
}

void sub_1B5822B00()
{
  v0 = STACK[0x760];
  if (STACK[0x760])
  {
    STACK[0x768] = v0;
    operator delete(v0);
  }

  v1 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v1;
    operator delete(v1);
  }

  JUMPOUT(0x1B5822B2CLL);
}

void sub_1B5822B50()
{
  v0 = STACK[0x4F8];
  if (STACK[0x4F8])
  {
    STACK[0x500] = v0;
    operator delete(v0);
  }

  v1 = STACK[0x2A8];
  if (STACK[0x2A8])
  {
    STACK[0x2B0] = v1;
    operator delete(v1);
  }

  JUMPOUT(0x1B5822B74);
}

uint64_t kaldi::quasar::WordConf::NormaliseUttScores(uint64_t result, float *a2, float *a3, double a4)
{
  v4 = *(result + 168);
  LODWORD(a4) = v4[6].i32[3];
  v5 = vdivq_f32(v4[7], vdupq_lane_s32(*&a4, 0));
  v6.i64[0] = 0x7F0000007FLL;
  v6.i64[1] = 0x7F0000007FLL;
  v4[7] = vbslq_s8(vcgtq_s32(vnegq_f32(v6), (*&v5 & __PAIR128__(0x7FFFFFFF7FFFFFFFLL, 0x7FFFFFFF7FFFFFFFLL))), vbslq_s8(vceqq_f32(v5, v5), v5, xmmword_1B5B28420), xmmword_1B5B28420);
  if (COERCE_UNSIGNED_INT(fabs(v4[8].f32[0] / *&a4)) >= 0x7F800000)
  {
    v7 = 0.5;
  }

  else
  {
    v7 = v4[8].f32[0] / *&a4;
  }

  v4[8].f32[0] = v7;
  v8 = *a2;
  if ((*a2 & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v8 = 0.0;
  }

  v4[8].f32[1] = v8;
  v9 = a2[1];
  if ((LODWORD(v9) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v9 = 0.0;
  }

  v4[8].f32[2] = v9;
  v10 = a2[2];
  if ((LODWORD(v10) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v10 = 0.0;
  }

  v4[8].f32[3] = v10;
  v11 = *a3;
  if ((*a3 & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v11 = 0.0;
  }

  v4[9].f32[0] = v11;
  v12 = a3[1];
  if ((LODWORD(v12) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v12 = 0.0;
  }

  v4[9].f32[1] = v12;
  v13 = a3[2];
  if ((LODWORD(v13) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v13 = 0.0;
  }

  v4[9].f32[2] = v13;
  return result;
}

float kaldi::quasar::WordConf::AddUttFeatures(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 168);
  v3 = *(a1 + 168);
  *(v3 + 108) = *(v2 + 108);
  *(v3 + 112) = *(v2 + 112);
  *(v3 + 116) = *(v2 + 116);
  *(v3 + 120) = *(v2 + 120);
  *(v3 + 124) = *(v2 + 124);
  *(v3 + 128) = *(v2 + 128);
  *(v3 + 132) = *(v2 + 132);
  *(v3 + 136) = *(v2 + 136);
  *(v3 + 140) = *(v2 + 140);
  *(v3 + 144) = *(v2 + 144);
  *(v3 + 148) = *(v2 + 148);
  result = *(v2 + 152);
  *(v3 + 152) = result;
  return result;
}

float kaldi::quasar::WordConf::SetOneBestFeatures(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 168);
  v3 = *(a1 + 168);
  *(v3 + 156) = *v2;
  *(v3 + 160) = *(v2 + 4);
  *(v3 + 164) = *(v2 + 8);
  *(v3 + 168) = *(v2 + 12);
  *(v3 + 172) = *(v2 + 16);
  *(v3 + 176) = *(v2 + 20);
  *(v3 + 180) = *(v2 + 24);
  *(v3 + 184) = *(v2 + 28);
  *(v3 + 188) = *(v2 + 32);
  *(v3 + 192) = *(v2 + 36);
  *(v3 + 196) = *(v2 + 40);
  *(v3 + 200) = *(v2 + 44);
  *(v3 + 204) = *(v2 + 48);
  *(v3 + 208) = *(v2 + 52);
  *(v3 + 212) = *(v2 + 56);
  *(v3 + 216) = *(v2 + 60);
  *(v3 + 220) = *(v2 + 64);
  *(v3 + 224) = *(v2 + 68);
  *(v3 + 228) = *(v2 + 72);
  *(v3 + 232) = *(v2 + 76);
  *(v3 + 236) = *(v2 + 80);
  *(v3 + 240) = *(v2 + 84);
  *(v3 + 244) = *(v2 + 88);
  *(v3 + 248) = *(v2 + 92);
  *(v3 + 252) = *(v2 + 96);
  *(v3 + 256) = *(v2 + 100);
  *(v3 + 260) = *(v2 + 104);
  result = *(v2 + 388);
  *(v3 + 392) = result;
  return result;
}

void kaldi::quasar::WordConf::ApplyModel(kaldi::quasar::WordConf *this, const kaldi::quasar::WordConf *a2)
{
  v4 = *(this + 21);
  v3 = *(this + 22);
  v5 = kaldi::g_kaldi_verbose_level;
  if (v3 != v4)
  {
    v7 = 0;
    v8 = *(a2 + 49);
    do
    {
      v8 = v8 + (*(v4 + 4 * v7) * *(*(a2 + 21) + 4 * v7));
      v9 = expf(v8);
      *(this + 48) = v9 / (v9 + 1.0);
      if (v5 >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v16, 3);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Scaling feature ", 16);
        v11 = MEMORY[0x1B8C84C30](v10, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " with value of ", 15);
        v12 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " by weight = ", 13);
        std::ostream::operator<<();
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v16);
        v5 = kaldi::g_kaldi_verbose_level;
        v4 = *(this + 21);
        v3 = *(this + 22);
      }

      ++v7;
    }

    while (v7 < (v3 - v4) >> 2);
  }

  v13 = *(this + 48) & 0x7FFFFFFF;
  if (v13 > 0x7F800000 || v13 == 2139095040 || v13 == 0)
  {
    if (v5 >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Warning - confidence is NaN or inf, or will be inf in log - confidence model could be bad/compromised. Defaulting to 1.0", 120);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v16);
      v5 = kaldi::g_kaldi_verbose_level;
    }

    *(this + 48) = 1065353216;
  }

  if (v5 >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v16, 2);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Confidence score is ", 20);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v16);
  }
}

void kaldi::quasar::WordConf::ComputePhonesAndDurations(kaldi::quasar::WordConf *this, const kaldi::SilencePhoneSet *a2, const kaldi::TransitionModel *a3, const fst::SymbolTable *a4)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v15 = 0;
  v16 = 0;
  memset(v13, 0, sizeof(v13));
  LODWORD(v20) = -1;
  v12 = 0;
  v6 = *(this + 27);
  if (*(this + 28) != v6)
  {
    v8 = 0;
    do
    {
      v9 = kaldi::TransitionModel::TransitionIdToPhone(a3, *(v6 + 4 * v8));
      v10 = v9;
      if (!v8 || v9 == v20)
      {
        v11 = v12 + 1;
      }

      else
      {
        std::vector<int>::push_back[abi:ne200100](&v17, &v20);
        std::vector<int>::push_back[abi:ne200100](&__p, &v12);
        v11 = 1;
      }

      v12 = v11;
      LODWORD(v20) = v10;
      ++v8;
      v6 = *(this + 27);
    }

    while (v8 < (*(this + 28) - v6) >> 2);
    if (v11)
    {
      std::vector<int>::push_back[abi:ne200100](&v17, &v20);
      std::vector<int>::push_back[abi:ne200100](&__p, &v12);
    }
  }

  kaldi::quasar::PhoneIdsAndDurationsToString(&v17, &__p, a4, this + 120, this + 30);
  v20 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v20);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  if (v17)
  {
    v18 = v17;
    operator delete(v17);
  }
}

void sub_1B58232B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  *(v18 - 56) = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v18 - 56));
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if (a17)
  {
    a18 = a17;
    operator delete(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::LevenshteinEditDistance<std::string>(uint64_t *a1, const void ***a2)
{
  v3 = *a1;
  v2 = a1[1];
  v40 = 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2);
  std::vector<int>::vector[abi:ne200100](&v43, v40 + 1);
  std::vector<int>::vector[abi:ne200100](&__p, v40 + 1);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  v5 = v44;
  if (v44 != v43)
  {
    v6 = 0;
    v7 = (v44 - v43) >> 2;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v8 = vdupq_n_s64(v7 - 1);
    v9 = xmmword_1B5AE0050;
    v10 = xmmword_1B5AE0060;
    v11 = vdupq_n_s64(4uLL);
    v12 = (v7 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v43 + 8;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v8, v10));
      if (vuzp1_s16(v14, *v8.i8).u8[0])
      {
        *(v13 - 2) = v6;
      }

      if (vuzp1_s16(v14, *&v8).i8[2])
      {
        *(v13 - 1) = v6 + 1;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, *&v9))).i32[1])
      {
        *v13 = v6 + 2;
        v13[1] = v6 + 3;
      }

      v6 += 4;
      v9 = vaddq_s64(v9, v11);
      v10 = vaddq_s64(v10, v11);
      v13 += 4;
    }

    while (v12 != v6);
  }

  if (v4 >= 1)
  {
    v39 = (v4 + 1);
    v15 = 1;
    do
    {
      v16 = v43;
      v17 = *v43 + 1;
      v18 = __p;
      *__p = v17;
      if (v40 >= 1)
      {
        v19 = (v40 + 1) - 1;
        v20 = *a1 + 24 * v15;
        v21 = *a2;
        v22 = (v16 + 4);
        v23 = (v18 + 4);
        do
        {
          v24 = *(v22 - 1);
          v25 = *(v20 - 1);
          if (v25 >= 0)
          {
            v26 = *(v20 - 1);
          }

          else
          {
            v26 = *(v20 - 16);
          }

          v27 = *(v21 + 23);
          v28 = v27;
          if (v27 < 0)
          {
            v27 = v21[1];
          }

          if (v26 == v27)
          {
            if (v25 >= 0)
            {
              v29 = (v20 - 24);
            }

            else
            {
              v29 = *(v20 - 24);
            }

            if (v28 >= 0)
            {
              v30 = v21;
            }

            else
            {
              v30 = *v21;
            }

            v31 = memcmp(v29, v30, v26) != 0;
          }

          else
          {
            v31 = 1;
          }

          v32 = v31 + v24;
          v34 = *v22++;
          v33 = v34;
          if (v17 < v34)
          {
            v33 = v17;
          }

          if (v33 + 1 < v32)
          {
            v17 = v33 + 1;
          }

          else
          {
            v17 = v32;
          }

          *v23++ = v17;
          v21 += 3;
          --v19;
        }

        while (v19);
      }

      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&v43, v18, v42, (v42 - v18) >> 2);
      ++v15;
    }

    while (v15 != v39);
    v5 = v44;
  }

  v35 = *(v5 - 1);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  if (v43)
  {
    v44 = v43;
    operator delete(v43);
  }

  return v35;
}

void sub_1B582358C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One@<X0>(uint64_t a1@<X8>)
{
  v2 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::One();
  *a1 = *v2;
  v3 = *(v2 + 4);
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *(v4 - 12) = v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;

  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, 0, 0, 0);
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetStart(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  *(v4 + 88) = a2;
  result = (*(*v4 + 24))(v4);
  *(v4 + 8) = result & 0xCCFFFFF0007 | (((result >> 35) & 1) << 37) | *(v4 + 8) & 4;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::AddArc(uint64_t a1, int a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::AddArc(v6, a2, a3);
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetFinal(uint64_t a1, int a2, int *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  v7 = *a3;
  v8 = *(a3 + 1);
  v10 = 0;
  v11 = 0;
  __p = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, *(a3 + 2), *(a3 + 3), (*(a3 + 3) - *(a3 + 2)) >> 2);
  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetFinal(v6, a2, &v7);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_1B58237FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ArcSort<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(uint64_t a1)
{
  v3 = a1;
  v4 = &v6;
  memset(v5, 0, sizeof(v5));
  v1[0] = a1;
  v1[1] = &v6;
  memset(v2, 0, sizeof(v2));
  fst::StateMap<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ArcSortMapper<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::ILabelCompare<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(a1, v1);
  v7 = v2;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = v5;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
}

void sub_1B582388C(_Unwind_Exception *a1)
{
  v4 = v1;
  *(v3 - 40) = v2;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  *(v3 - 40) = v4;
  std::vector<std::pair<int,fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  _Unwind_Resume(a1);
}

uint64_t fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::One()
{
  {
    operator new();
  }

  return fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::One(void)::one;
}

void sub_1B582393C(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v1, 0x1000C403E1C8BA9);
  _Unwind_Resume(a1);
}

void fst::ShortestPath<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(uint64_t a1)
{
  v2 = 0;
  v3 = 0;
  v4 = 0;
  fst::AutoQueue<int>::AutoQueue<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::AnyArcFilter<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>(v1, a1);
}

void sub_1B5823C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (__p)
  {
    a22 = __p;
    operator delete(__p);
  }

  fst::AutoQueue<int>::~AutoQueue(&a25);
  a14 = v25 - 104;
  std::vector<std::pair<int,fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](&a14);
  _Unwind_Resume(a1);
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero@<X0>(uint64_t a1@<X8>)
{
  v2 = fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>::Zero();
  *a1 = *v2;
  v3 = *(v2 + 4);
  *(a1 + 16) = 0;
  v4 = a1 + 16;
  *(v4 - 12) = v3;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;

  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v4, 0, 0, 0);
}

uint64_t fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Final@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *(*(*(a1 + 8) + 64) + 8 * a2);
  *a3 = *v3;
  *(a3 + 4) = *(v3 + 4);
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 16) = 0;
  return std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, *(v3 + 16), *(v3 + 24), (*(v3 + 24) - *(v3 + 16)) >> 2);
}

kaldi::quasar::WordConf *kaldi::quasar::WordConf::WordConf(kaldi::quasar::WordConf *this)
{
  *(this + 3) = 0u;
  v2 = this + 48;
  *(this + 6) = 0u;
  v3 = (this + 96);
  *(this + 21) = 0;
  v4 = (this + 168);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 216) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  FeatureMap = kaldi::quasar::Features::GetFeatureMap(this);
  std::vector<float>::resize(v4, *(FeatureMap + 24), &kaldi::quasar::kConfidenceFeatureDefaultLow, v6);
  v7 = MEMORY[0x1B8C84820](v2, "INIT");
  std::string::operator=(this, v7);
  MEMORY[0x1B8C84820](this + 24, "NULL");
  v8 = MEMORY[0x1B8C84820](this + 120, "");
  v9 = std::string::operator=(v3, v8);
  std::string::operator=(this + 3, v9);
  *(this + 52) = 0;
  *(this + 25) = 0;
  *(this + 18) = -1;
  *(this + 19) = -1;
  *(this + 20) = -1;
  *(this + 48) = -1082130432;
  return this;
}

void sub_1B5823E20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v7 = v6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v9 = *v7;
  if (*v7)
  {
    *(v2 + 224) = v9;
    operator delete(v9);
  }

  v10 = *v5;
  if (*v5)
  {
    *(v2 + 176) = v10;
    operator delete(v10);
  }

  if (*(v2 + 143) < 0)
  {
    operator delete(*(v2 + 120));
  }

  if (*(v2 + 119) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 95) < 0)
  {
    operator delete(*(v2 + 72));
  }

  if (*(v2 + 71) < 0)
  {
    operator delete(*v3);
  }

  if (*(v2 + 47) < 0)
  {
    operator delete(*(v2 + 24));
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::WordConf::WordConf(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = 0u;
  v4 = a1 + 48;
  *(a1 + 168) = 0;
  v5 = (a1 + 168);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 216) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  FeatureMap = kaldi::quasar::Features::GetFeatureMap(a1);
  std::vector<float>::resize(v5, *(FeatureMap + 24), &kaldi::quasar::kConfidenceFeatureDefaultLow, v7);
  v8 = MEMORY[0x1B8C84820](v4, "MODEL");
  std::string::operator=(a1, v8);
  v9 = *(a2 + 23);
  if (v9 < 0)
  {
    if (*(a2 + 8) != 4)
    {
LABEL_7:
      memset(&__str, 0, sizeof(__str));
      v63 = 0;
      kaldi::Input::Input(v62, a2, &v63);
      v11 = 0;
      v12 = MEMORY[0x1E69E5318];
      while (1)
      {
        v13 = kaldi::Input::Stream(v62);
        std::ios_base::getloc((v13 + *(*v13 - 24)));
        v14 = std::locale::use_facet(&v61, v12);
        v15 = (v14->__vftable[2].~facet_0)(v14, 10);
        std::locale::~locale(&v61);
        v16 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v13, &__str, v15);
        if ((*(v16 + *(*v16 - 24) + 32) & 5) != 0)
        {
          if (kaldi::g_kaldi_verbose_level >= 2)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 2);
            v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Read in Confidence Model , added ", 33);
            v53 = MEMORY[0x1B8C84C00](v52, v11);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, " features", 9);
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
          }

          kaldi::Input::~Input(v62);
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          return a1;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_str = &__str;
        }

        else
        {
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __str.__r_.__value_.__l.__size_;
        }

        v19 = p_str + size;
        if (size >= 1)
        {
          v20 = p_str;
          do
          {
            v21 = memchr(v20, 32, size);
            if (!v21)
            {
              break;
            }

            if (*v21 == 32)
            {
              goto LABEL_21;
            }

            v20 = (v21 + 1);
            size = v19 - v20;
          }

          while (v19 - v20 > 0);
        }

        v21 = v19;
LABEL_21:
        if (v21 == v19)
        {
          v22 = -1;
        }

        else
        {
          v22 = v21 - p_str;
        }

        std::string::basic_string(&v61, &__str, 0, v22, v65);
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v23 = &__str;
        }

        else
        {
          v23 = __str.__r_.__value_.__r.__words[0];
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = __str.__r_.__value_.__l.__size_;
        }

        v25 = v23 + v24;
        v26 = v24;
        v27 = v23;
        if (v24 < 1)
        {
          v29 = 0;
        }

        else
        {
          do
          {
            v28 = memchr(v27, 32, v26);
            if (!v28)
            {
              break;
            }

            if (*v28 == 32)
            {
              goto LABEL_35;
            }

            v27 = (v28 + 1);
            v26 = v25 - v27;
          }

          while (v25 - v27 > 0);
          v28 = v23 + v24;
LABEL_35:
          if (v28 == v25)
          {
            v29 = 0;
          }

          else
          {
            v29 = v28 - v23 + 1;
          }

          v30 = v24;
          v31 = v23;
          do
          {
            v32 = memchr(v31, 32, v30);
            if (!v32)
            {
              break;
            }

            if (*v32 == 32)
            {
              goto LABEL_45;
            }

            v31 = (v32 + 1);
            v30 = v25 - v31;
          }

          while (v25 - v31 > 0);
        }

        v32 = v23 + v24;
LABEL_45:
        v33 = v23 + ~v32;
        if (v32 == v25)
        {
          v33 = 0;
        }

        std::string::basic_string(&v60, &__str, v29, &v33[v24], v65);
        if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
        {
          v36 = v60.__r_.__value_.__r.__words[0];
          v35 = atof(v60.__r_.__value_.__l.__data_);
          operator delete(v36);
        }

        else
        {
          v35 = atof(&v60);
        }

        v37 = v35;
        if ((*(&v61.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          if (v61.__r_.__value_.__l.__size_ == 8 && *v61.__r_.__value_.__l.__data_ == 0x746E6174736E6F63)
          {
            goto LABEL_75;
          }

          if (v61.__r_.__value_.__l.__size_ != 9)
          {
            goto LABEL_62;
          }

          v38 = v61.__r_.__value_.__r.__words[0];
        }

        else
        {
          if (HIBYTE(v61.__r_.__value_.__r.__words[2]) == 8)
          {
            if (v61.__r_.__value_.__r.__words[0] != 0x746E6174736E6F63)
            {
              goto LABEL_62;
            }

            goto LABEL_75;
          }

          if (HIBYTE(v61.__r_.__value_.__r.__words[2]) != 9)
          {
            goto LABEL_62;
          }

          v38 = &v61;
        }

        v39 = v38->__r_.__value_.__r.__words[0];
        v40 = v38->__r_.__value_.__s.__data_[8];
        if (v39 != 0x7065637265746E69 || v40 != 116)
        {
LABEL_62:
          v42 = kaldi::quasar::Features::GetFeatureMap(v34);
          v43 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v42, &v61.__r_.__value_.__l.__data_);
          v44 = kaldi::quasar::Features::GetFeatureMap(v43);
          if (!v43)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Feature ", 8);
            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = &v61;
            }

            else
            {
              v57 = v61.__r_.__value_.__r.__words[0];
            }

            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v58 = v61.__r_.__value_.__l.__size_;
            }

            v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " is not in the model definition.", 32);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v60);
          }

          v45 = kaldi::quasar::Features::GetFeatureMap(v44);
          *(*v5 + 4 * *(std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v45, &v61.__r_.__value_.__l.__data_) + 10)) = v37;
          if (kaldi::g_kaldi_verbose_level >= 3)
          {
            kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 3);
            v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Setting ", 8);
            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v47 = &v61;
            }

            else
            {
              v47 = v61.__r_.__value_.__r.__words[0];
            }

            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v48 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v48 = v61.__r_.__value_.__l.__size_;
            }

            v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
            v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " to ", 4);
            v51 = kaldi::quasar::Features::GetFeatureMap(v50);
            std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v51, &v61.__r_.__value_.__l.__data_);
            std::ostream::operator<<();
            kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
          }

          v11 = (v11 + 1);
          goto LABEL_72;
        }

LABEL_75:
        *(a1 + 196) = v37;
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 3);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Setting constant term/intercept to ", 35);
          std::ostream::operator<<();
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
        }

LABEL_72:
        if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v61.__r_.__value_.__l.__data_);
        }
      }
    }

    v10 = *a2;
  }

  else
  {
    v10 = a2;
    if (v9 != 4)
    {
      goto LABEL_7;
    }
  }

  if (*v10 != 1280070990)
  {
    goto LABEL_7;
  }

  v54 = MEMORY[0x1B8C84820](v4, "NULL");
  std::string::operator=(a1, v54);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "No Confidence Model Supplied.", 29);
    kaldi::KaldiLogMessage::~KaldiLogMessage(&v60);
  }

  *(a1 + 196) = -1027080192;
  return a1;
}

void sub_1B5824548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, void **a11, void **a12)
{
  if (*(v14 - 153) < 0)
  {
    operator delete(*(v14 - 176));
  }

  kaldi::Input::~Input((v14 - 152));
  if (*(v14 - 113) < 0)
  {
    operator delete(*(v14 - 136));
  }

  a12 = (v12 + 240);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a12);
  v16 = *a10;
  if (*a10)
  {
    *(v12 + 224) = v16;
    operator delete(v16);
  }

  v17 = *v13;
  if (*v13)
  {
    *(v12 + 176) = v17;
    operator delete(v17);
  }

  if (*(v12 + 143) < 0)
  {
    operator delete(*(v12 + 120));
  }

  if (*(v12 + 119) < 0)
  {
    operator delete(*(v12 + 96));
  }

  if (*(v12 + 95) < 0)
  {
    operator delete(*(v12 + 72));
  }

  if (*(v12 + 71) < 0)
  {
    operator delete(*a11);
  }

  if (*(v12 + 47) < 0)
  {
    operator delete(*(v12 + 24));
  }

  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::PhoneIdsAndDurationsToString(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void ***a5)
{
  v49[2] = *MEMORY[0x1E69E9840];
  if (*(a4 + 23) < 0)
  {
    **a4 = 0;
    *(a4 + 8) = 0;
  }

  else
  {
    *a4 = 0;
    *(a4 + 23) = 0;
  }

  std::vector<std::string>::clear[abi:ne200100](a5);
  v10 = *a1;
  v11 = a1[1];
  if (*a1 != v11 && a2[1] - *a2 == v11 - v10)
  {
    for (i = 0; i < (a1[1] - *a1) >> 2; ++i)
    {
      (*(*a3 + 88))(&v48, a3, *(v10 + 4 * i));
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      v14 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v48.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        goto LABEL_73;
      }

      memset(v47, 0, sizeof(v47));
      kaldi::SplitStringToVector(&v48, "_", 0, v47);
      v15 = *(a4 + 23);
      if (v15 < 0)
      {
        v16 = *(a4 + 8);
        if (v16)
        {
          goto LABEL_14;
        }
      }

      else if (*(a4 + 23))
      {
        v16 = *(a4 + 8);
LABEL_14:
        if (v15 >= 0)
        {
          v17 = *(a4 + 23);
        }

        else
        {
          v17 = v16;
        }

        std::string::basic_string[abi:ne200100](&v42, v17 + 1);
        if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v42;
        }

        else
        {
          v18 = v42.__r_.__value_.__r.__words[0];
        }

        if (v17)
        {
          if (*(a4 + 23) >= 0)
          {
            v19 = a4;
          }

          else
          {
            v19 = *a4;
          }

          memmove(v18, v19, v17);
        }

        *(&v18->__r_.__value_.__l.__data_ + v17) = 95;
        v20 = *(v47[0] + 23);
        if (v20 >= 0)
        {
          v21 = v47[0];
        }

        else
        {
          v21 = *v47[0];
        }

        if (v20 >= 0)
        {
          v22 = *(v47[0] + 23);
        }

        else
        {
          v22 = *(v47[0] + 1);
        }

        v23 = std::string::append(&v42, v21, v22);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v43.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v43.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        v25 = std::string::append(&v43, "_");
        v26 = *&v25->__r_.__value_.__l.__data_;
        v44.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
        *&v44.__r_.__value_.__l.__data_ = v26;
        v25->__r_.__value_.__l.__size_ = 0;
        v25->__r_.__value_.__r.__words[2] = 0;
        v25->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&__p, *(*a2 + 4 * i));
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
          v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v28 = __p.__r_.__value_.__l.__size_;
        }

        v29 = std::string::append(&v44, p_p, v28);
        v30 = 0;
        goto LABEL_56;
      }

      v31 = v47[0];
      if (*(v47[0] + 23) >= 0)
      {
        v32 = *(v47[0] + 23);
      }

      else
      {
        v32 = *(v47[0] + 1);
      }

      std::string::basic_string[abi:ne200100](&v46, v32 + 1);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v46;
      }

      else
      {
        v33 = v46.__r_.__value_.__r.__words[0];
      }

      if (v32)
      {
        if (*(v31 + 23) >= 0)
        {
          v34 = v31;
        }

        else
        {
          v34 = *v31;
        }

        memmove(v33, v34, v32);
      }

      *(&v33->__r_.__value_.__l.__data_ + v32) = 95;
      std::to_string(&v45, *(*a2 + 4 * i));
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &v45;
      }

      else
      {
        v35 = v45.__r_.__value_.__r.__words[0];
      }

      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v36 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v36 = v45.__r_.__value_.__l.__size_;
      }

      v29 = std::string::append(&v46, v35, v36);
      v30 = 1;
LABEL_56:
      v37 = v29->__r_.__value_.__r.__words[0];
      v49[0] = v29->__r_.__value_.__l.__size_;
      *(v49 + 7) = *(&v29->__r_.__value_.__r.__words[1] + 7);
      v38 = HIBYTE(v29->__r_.__value_.__r.__words[2]);
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v39 = v49[0];
      *a4 = v37;
      *(a4 + 8) = v39;
      *(a4 + 15) = *(v49 + 7);
      *(a4 + 23) = v38;
      if (v30)
      {
        if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v45.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v40 = v46.__r_.__value_.__r.__words[0];
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v44.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

        v40 = v42.__r_.__value_.__r.__words[0];
      }

      operator delete(v40);
LABEL_72:
      std::vector<std::string>::push_back[abi:ne200100](a5, v47[0]);
      v49[0] = v47;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v49);
      v14 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
LABEL_73:
      if (v14 < 0)
      {
        operator delete(v48.__r_.__value_.__l.__data_);
      }

      v10 = *a1;
    }
  }
}

void sub_1B5824A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, char a47)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  *(v47 - 120) = &a47;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v47 - 120));
  if (*(v47 - 129) < 0)
  {
    operator delete(*(v47 - 152));
  }

  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D33280;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::One(v7);
  *(a1 + 80) = 0;
  *(a1 + 56) = 0xFFFFFFFFLL;
  *(a1 + 64) = v7[0];
  *(a1 + 68) = *&v7[1];
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, __p, v9, (v9 - __p) >> 2);
  *(a1 + 104) = -1;
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  *(a1 + 114) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MemoryPool((a1 + 120), 1);
}

void sub_1B5824C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~MemoryPool((v19 + 120));
  v22 = *v20;
  if (*v20)
  {
    *(v19 + 88) = v22;
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~SortedMatcher(void *a1)
{
  fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~SortedMatcher(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Type(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (v2 == 3)
  {
    return 3;
  }

  if (v2)
  {
    v6 = 0x40000000;
  }

  else
  {
    v6 = 0x10000000;
  }

  v7 = *(a1 + 8);
  if (v2)
  {
    v8 = 3221225472;
  }

  else
  {
    v8 = 805306368;
  }

  v9 = (*(*v7 + 64))(v7, v8, a2);
  if ((v9 & v6) != 0)
  {
    return *(a1 + 32);
  }

  v10 = 0x80000000;
  if (!v2)
  {
    v10 = 0x20000000;
  }

  if ((v9 & v10) != 0)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Properties(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 114))
  {
    return a2 | 4;
  }

  else
  {
    return a2;
  }
}

uint64_t fst::MatcherBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::Final_(uint64_t a1)
{
  v1 = *(*(*(*a1 + 32))(a1) + 32);

  return v1();
}

void fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::~MemoryPool(quasar::Bitmap *a1)
{
  *a1 = &unk_1F2D33328;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1 + 1);
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D33328;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1 + 1);

  quasar::Bitmap::~Bitmap(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D33368;
  a1[1] = 48 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B58250F0(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(void *a1)
{
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2D33368;
  v2 = a1 + 3;
  v3 = a1[4];
  if (v3 != a1 + 3)
  {
    do
    {
      v4 = v3[2];
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }

      v3 = v3[1];
    }

    while (v3 != v2);
  }

  std::__list_imp<char *>::clear(v2);

  quasar::Bitmap::~Bitmap(a1);
}

void *fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~SortedMatcher(void *a1)
{
  *a1 = &unk_1F2D33280;
  v2 = a1[3];
  v3 = (a1 + 15);
  if (v2)
  {
    if (*v2)
    {
      (*(**v2 + 8))(*v2);
    }

    else
    {
      v4 = v2[3];
      if (v4)
      {
        --*v4;
      }
    }

    v2[5] = a1[22];
    a1[22] = v2;
  }

  v5 = a1[1];
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  a1[15] = &unk_1F2D33328;
  fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::Link>::~MemoryArena(a1 + 16);
  quasar::Bitmap::~Bitmap(v3);
  v6 = a1[10];
  if (v6)
  {
    a1[11] = v6;
    operator delete(v6);
  }

  return a1;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1F2D33280;
  *(a1 + 8) = (*(**(a2 + 8) + 88))(*(a2 + 8), a3);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  v5 = *(a2 + 68);
  *(a1 + 80) = 0;
  *(a1 + 68) = v5;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 80, *(a2 + 80), *(a2 + 88), (*(a2 + 88) - *(a2 + 80)) >> 2);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 114) = *(a2 + 114);
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::MemoryPool((a1 + 120), 1);
}

void sub_1B5825438(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 88) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::SetState(uint64_t result, uint64_t a2)
{
  if (*(result + 16) != a2)
  {
    v3 = result;
    *(result + 16) = a2;
    if (*(result + 32) == 3)
    {
      if (FLAGS_fst_error_fatal == 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "FATAL");
      }

      else
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
      }

      v4 = fst::LogMessage::LogMessage(&v11, __p);
      v5 = fst::cerr(v4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "SortedMatcher: bad match type", 29);
      fst::LogMessage::~LogMessage(&v11);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }

      *(v3 + 114) = 1;
    }

    v6 = *(v3 + 24);
    if (v6)
    {
      fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Reinit(v6, *(v3 + 8), a2);
      v7 = *(v3 + 24);
    }

    else
    {
      v7 = *(v3 + 176);
      if (v7)
      {
        *(v3 + 176) = v7[5];
      }

      else
      {
        v7 = fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::Link>::Allocate((v3 + 128), 1);
        v7[5] = 0;
      }

      v8 = *(v3 + 8);
      v7[4] = 0;
      (*(*v8 + 136))(v8, a2, v7);
      *(v3 + 24) = v7;
    }

    if (*v7)
    {
      (*(**v7 + 80))(*v7, 16, 16);
    }

    result = (*(**(v3 + 8) + 40))(*(v3 + 8), a2);
    *(v3 + 48) = result;
    *(v3 + 104) = a2;
  }

  return result;
}

void sub_1B5825610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Reinit(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (!v6)
  {
    goto LABEL_5;
  }

  result = (*(*v6 + 16))(v6, a3);
  if (result)
  {
    return result;
  }

  if (*a1)
  {
    (*(**a1 + 8))(*a1);
  }

  else
  {
LABEL_5:
    v8 = a1[3];
    if (v8)
    {
      --*v8;
    }
  }

  a1[4] = 0;
  v9 = *(*a2 + 136);

  return v9(a2, a3, a1);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Find(uint64_t a1, int a2)
{
  *(a1 + 113) = 1;
  if (*(a1 + 114) == 1)
  {
    v3 = 0;
    *(a1 + 112) = 0;
    *(a1 + 40) = -1;
  }

  else
  {
    *(a1 + 112) = a2 == 0;
    if (a2 == -1)
    {
      v4 = 0;
    }

    else
    {
      v4 = a2;
    }

    *(a1 + 40) = v4;
    if (fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Search(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(a1 + 112);
    }
  }

  return v3 & 1;
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Search(uint64_t a1)
{
  v2 = **(a1 + 24);
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    (*(*v2 + 80))(v2, v3, 15);
  }

  if (*(a1 + 40) < *(a1 + 36))
  {
    v4 = *(a1 + 24);
    if (*v4)
    {
      (*(**v4 + 56))(*v4);
    }

    else
    {
      v4[4] = 0;
    }

    while (1)
    {
      v14 = *(a1 + 24);
      if (*v14)
      {
        if ((*(**v14 + 24))(*v14))
        {
          return 0;
        }
      }

      else if (v14[4] >= v14[2])
      {
        return 0;
      }

      v15 = *(a1 + 24);
      v16 = *v15;
      if (*(a1 + 32))
      {
        v17 = v16 ? (*(*v16 + 32))(v16) : v15[1] + 56 * v15[4];
        v18 = (v17 + 4);
      }

      else
      {
        v18 = (v16 ? (*(*v16 + 32))(v16) : v15[1] + 56 * v15[4]);
      }

      v19 = *(a1 + 40);
      v20 = *v18 <= v19 ? 0 : 7;
      if (*v18 == v19)
      {
        v20 = 1;
      }

      if (v20)
      {
        break;
      }

      v21 = *(a1 + 24);
      if (*v21)
      {
        (*(**v21 + 40))(*v21);
      }

      else
      {
        ++v21[4];
      }
    }

    return v20 == 1;
  }

  v5 = *(a1 + 48);
  if (!v5)
  {
    v6 = 0;
LABEL_53:
    v23 = *(a1 + 24);
    result = *v23;
    if (!*v23)
    {
      v23[4] = v6;
      return result;
    }

    (*(*result + 64))(result, v6);
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = (v6 + v5) >> 1;
    v8 = *(a1 + 24);
    if (*v8)
    {
      (*(**v8 + 64))(*v8, (v6 + v5) >> 1);
    }

    else
    {
      v8[4] = v7;
    }

    v9 = *(a1 + 24);
    v10 = *v9;
    if (*(a1 + 32))
    {
      v11 = v10 ? (*(*v10 + 32))(v10) : v9[1] + 56 * v9[4];
      v12 = (v11 + 4);
    }

    else
    {
      v12 = (v10 ? (*(*v10 + 32))(v10) : v9[1] + 56 * v9[4]);
    }

    v13 = *(a1 + 40);
    if (*v12 <= v13)
    {
      break;
    }

    v5 = (v6 + v5) >> 1;
LABEL_25:
    if (v6 >= v5)
    {
      goto LABEL_53;
    }
  }

  if (*v12 < v13)
  {
    v6 = v7 + 1;
    goto LABEL_25;
  }

  while (v7 > v6)
  {
    v24 = *(a1 + 24);
    --v7;
    if (*v24)
    {
      (*(**v24 + 64))(*v24, v7);
    }

    else
    {
      v24[4] = v7;
    }

    v25 = *(a1 + 24);
    v26 = *v25;
    if (*(a1 + 32))
    {
      if (v26)
      {
        v27 = (*(*v26 + 32))(v26);
      }

      else
      {
        v27 = v25[1] + 56 * v25[4];
      }

      v28 = (v27 + 4);
    }

    else if (v26)
    {
      v28 = (*(*v26 + 32))(v26);
    }

    else
    {
      v28 = (v25[1] + 56 * v25[4]);
    }

    if (*v28 != *(a1 + 40))
    {
      v29 = *(a1 + 24);
      v30 = v7 + 1;
      if (*v29)
      {
        (*(**v29 + 64))(*v29, v30);
      }

      else
      {
        v29[4] = v30;
      }

      return 1;
    }
  }

  return 1;
}

BOOL fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Done(uint64_t a1)
{
  if (*(a1 + 112))
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*v3)
  {
    if ((*(**v3 + 24))(*v3))
    {
      return 1;
    }
  }

  else if (v3[4] >= v3[2])
  {
    return 1;
  }

  if (*(a1 + 113) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = **(a1 + 24);
  if (v5)
  {
    if (v4)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    (*(*v5 + 80))(v5, v6, 15);
    v4 = *(a1 + 32);
  }

  v7 = *(a1 + 24);
  v8 = *v7;
  if (v4)
  {
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8);
    }

    else
    {
      v9 = v7[1] + 56 * v7[4];
    }

    v10 = (v9 + 4);
  }

  else if (v8)
  {
    v10 = (*(*v8 + 32))(v8);
  }

  else
  {
    v10 = (v7[1] + 56 * v7[4]);
  }

  return *v10 != *(a1 + 40);
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Value(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    return a1 + 56;
  }

  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 56 * v3[4];
  }

  (*(**v3 + 80))(*v3, 15, 15);
  v3 = *(a1 + 24);
  if (!*v3)
  {
    return v3[1] + 56 * v3[4];
  }

  v4 = *(**v3 + 32);

  return v4();
}

uint64_t fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Next(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    *(result + 112) = 0;
  }

  else
  {
    v1 = *(result + 24);
    result = *v1;
    if (*v1)
    {
      return (*(*result + 40))();
    }

    else
    {
      ++v1[4];
    }
  }

  return result;
}

void fst::ComposeFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ComposeFst(void *a1)
{
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~ImplToFst(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::Properties(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v8 = 0;
    v5 = fst::TestProperties<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>(a1, a2, &v8);
    *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~v8 | 4) | v8 & v5;
    return v5 & a2;
  }

  else
  {
    v7 = *(**(a1 + 8) + 32);

    return v7();
  }
}

uint64_t fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>::Write(uint64_t a1)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write stream method for ", 39);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
  v2 = fst::LogMessage::LogMessage(&v13, __p);
  v3 = fst::cerr(v2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, "Fst::Write: No write filename method for ", 41);
  v5 = (*(*a1 + 72))(a1);
  v6 = *(v5 + 23);
  if (v6 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (v6 >= 0)
  {
    v8 = *(v5 + 23);
  }

  else
  {
    v8 = *(v5 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " Fst type", 9);
  fst::LogMessage::~LogMessage(&v13);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1B5826160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B582625C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B5826550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Type()
{
  {
    operator new();
  }

  return fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Type(void)::type;
}

void sub_1B58266A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  MEMORY[0x1B8C85350](v21, 0x1012C40EC159624);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComposeFstImpl<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::ComposeFstImplBase(a1, a2, a3, a4) = &unk_1F2D33498;
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
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(a1);
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

void sub_1B5826960(_Unwind_Exception *a1)
{
  MEMORY[0x1B8C85350](v2, 0x10E0C406D28CB5CLL);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::~CacheBaseImpl(v1);
  _Unwind_Resume(a1);
}

uint64_t fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::ComposeFstImplBase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::CacheBaseImpl(a1, a4);
  *v7 = &unk_1F2D33550;
  fst::ComposeFstImplBase<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::InitBase(v7, a2, a3);
  return a1;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::SetMatchType(uint64_t a1)
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

void sub_1B5826D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  fst::LogMessage::~LogMessage((v14 - 17));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(void *a1)
{
  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::~ComposeFstImpl(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Properties(uint64_t a1, uint64_t a2)
{
  if ((a2 & 4) != 0 && ((*(**(a1 + 160) + 64))(*(a1 + 160), 4, 0) || (*(**(a1 + 168) + 64))(*(a1 + 168), 4, 0) || ((*(**(a1 + 144) + 40))(*(a1 + 144), 0) & 4) != 0 || ((*(**(a1 + 152) + 40))(*(a1 + 152), 0) & 4) != 0))
  {
    *(a1 + 8) |= 4uLL;
  }

  return *(a1 + 8) & a2;
}

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::Expand(void *a1, int a2)
{
  v4 = (*(a1[22] + 80) + 12 * a2);
  v5 = *v4;
  v6 = v4[1];
  v7 = a1[17];
  v16 = *(v4 + 8);
  fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetState(v7, v5, v6, &v16);
  if (fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::MatchInput(a1, v5, v6))
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

  fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::OrderedExpand<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>(v11, v12, v8, v13, v9, v14, v10, v15);
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::InitMatcher(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(**(a1 + 144) + 24))(*(a1 + 144), 0) == a3 && (*(**(a1 + 152) + 24))(*(a1 + 152), 0) == a3)
  {
    operator new();
  }

  return 0;
}

uint64_t fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeStart(void **a1)
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

void fst::ComposeFstImpl<fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>,fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>,fst::GenericComposeStateTable<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,fst::IntegerFilterState<signed char>,fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::CompactHashStateTable<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>,fst::ComposeHash<fst::DefaultComposeStateTuple<int,fst::IntegerFilterState<signed char>>>>>>::ComputeFinal(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = (*(a1[22] + 80) + 12 * a2);
  v6 = *v5;
  (*(**(a1[18] + 8) + 32))(&v21);
  fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v17);
  v12 = v21;
  v28 = v17;
  v7.n128_f32[0] = v21;
  v8 = v21 == v17 && (v28 = v22[1], v12 = v22[0], v26 = v18[1], v27 = v18[0], v7.n128_f32[0] = v22[0], v22[0] == v18[0]) && (v7.n128_f32[0] = v28, v28 == v26) && v24 - v23 == v20 - __p && memcmp(v23, __p, v24 - v23) == 0;
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    *a3 = v21;
    *(a3 + 4) = *v22;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 16) = 0;
    std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, v23, v24, (v24 - v23) >> 2);
  }

  else
  {
    v9 = v5[1];
    (*(**(a1[19] + 8) + 32))(&v17, v7);
    fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>::Zero(&v12);
    v28 = v17;
    v27 = v12;
    v10 = v17 == v12 && (v27 = v18[1], v28 = v18[0], v26 = v13, v25 = v14, v18[0] == v13) && v27 == v25 && v20 - __p == v16 - v15 && memcmp(__p, v15, v20 - __p) == 0;
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }

    if (v10)
    {
      *a3 = v17;
      *(a3 + 4) = *v18;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 16) = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a3 + 16, __p, v20, (v20 - __p) >> 2);
    }

    else
    {
      v11 = a1[17];
      LOBYTE(v12) = *(v5 + 8);
      fst::SequenceComposeFilter<fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>>::SetState(v11, v6, v9, &v12);
      fst::Times<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>(&v21, &v17, a3);
    }

    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }
}

void sub_1B58274B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LexicographicWeight<fst::TropicalWeightTpl<float>,fst::LatticeWeightTpl<float>>,int>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F2D335E8;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_1F2D335B0;
  *(a1 + 60) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 100) = -1;
  *(a1 + 104) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 112) = *(a2 + 8);
  if (!v4)
  {
    operator new();
  }

  *(a1 + 120) = v4;
  *(a1 + 128) = 0;
  return a1;
}