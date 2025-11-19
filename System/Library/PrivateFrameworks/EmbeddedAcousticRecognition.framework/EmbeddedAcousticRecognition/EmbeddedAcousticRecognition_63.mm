void sub_1B54BE000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a15);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a21);
  _Unwind_Resume(a1);
}

void kaldi::LatticeFasterDecoder::PruneForwardLinks(kaldi::LatticeFasterDecoder *this, unsigned int a2, BOOL *a3, BOOL *a4, float a5)
{
  *a3 = 0;
  *a4 = 0;
  if (!*(*(this + 10) + 16 * a2) && (*(this + 252) & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "No tokens alive [doing pruning].. warning first time only for each utterance\n", 77);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
    }

    *(this + 252) = 1;
  }

  v9 = *(*(this + 10) + 16 * a2);
  if (v9)
  {
    v10 = 0;
    while (1)
    {
      v11 = *(v9 + 8);
      if (v11)
      {
        v12 = 0;
        v13 = INFINITY;
        do
        {
          v15 = **v11;
          v14 = *(*v11 + 4);
          v16 = v14 + (((*v9 + *(v11 + 20)) + *(v11 + 16)) - v15);
          if (v16 <= *(this + 52))
          {
            if (v16 >= 0.0)
            {
              v19 = v14 + (((*v9 + *(v11 + 20)) + *(v11 + 16)) - v15);
            }

            else
            {
              v19 = 0.0;
              if (v16 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
              }
            }

            if (v19 < v13)
            {
              v13 = v19;
            }

            v17 = *(v11 + 24);
            v12 = v11;
          }

          else
          {
            v17 = *(v11 + 24);
            v18 = (v12 + 24);
            if (!v12)
            {
              v18 = (v9 + 8);
            }

            *v18 = v17;
            MEMORY[0x1B8C85350](v11, 0x1020C40D9E1CEDCLL);
            *a4 = 1;
          }

          v11 = v17;
        }

        while (v17);
      }

      else
      {
        v13 = INFINITY;
      }

      v10 |= vabds_f32(v13, *(v9 + 4)) > a5;
      *(v9 + 4) = v13;
      v9 = *(v9 + 16);
      if (!v9)
      {
        if ((v10 & 1) == 0)
        {
          break;
        }

        v10 = 0;
        *a3 = 1;
        v9 = *(*(this + 10) + 16 * a2);
        if (!v9)
        {
          break;
        }
      }
    }
  }
}

void sub_1B54BE288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::LatticeFasterDecoder::PruneForwardLinksFinal(kaldi::LatticeFasterDecoder *this)
{
  v2 = *(this + 10);
  v3 = ((*(this + 11) - v2) << 28) - 0x100000000;
  if (*(v2 + (v3 >> 28)))
  {
    v4 = 1;
  }

  else
  {
    v4 = kaldi::g_kaldi_verbose_level < -1;
  }

  if (!v4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "No tokens alive at end of file", 30);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v33);
  }

  kaldi::LatticeFasterOnlineDecoder::ComputeFinalCosts(this, this + 32, this + 74, this + 75);
  *(this + 253) = 1;
  v5 = *(this + 1);
  if (v5 != -1)
  {
    v6 = *(this + 3);
    do
    {
      v7 = (v6 + 16 * v5);
      v7[1] = 0;
      v5 = *v7;
    }

    while (v5 != -1);
  }

  v8 = *this;
  *this = 0;
  *(this + 1) = -1;
  if (v8)
  {
    v9 = *(this + 6);
    do
    {
      v10 = v8;
      v8 = *(v8 + 16);
      *(v10 + 16) = v9;
      v9 = v10;
    }

    while (v8);
    *(this + 6) = v10;
  }

  do
  {
    v32 = *(*(this + 10) + 16 * (v3 >> 32));
    if (!v32)
    {
      break;
    }

    v11 = 0;
    do
    {
      if (*(this + 35))
      {
        v12 = std::__hash_table<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::__unordered_map_hasher<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::__unordered_map_equal<kaldi::LatticeFasterOnlineDecoder::Token *,std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>,std::equal_to<kaldi::LatticeFasterOnlineDecoder::Token *>,std::hash<kaldi::LatticeFasterOnlineDecoder::Token *>,true>,std::allocator<std::__hash_value_type<kaldi::LatticeFasterOnlineDecoder::Token *,int>>>::find<kaldi::LatticeFasterOnlineDecoder::Token *>(this + 32, &v32);
        if (v12)
        {
          v13 = v12[6];
        }

        else
        {
          v13 = INFINITY;
        }
      }

      else
      {
        v13 = 0.0;
      }

      v14 = v32;
      v15 = (v13 + *v32) - *(this + 75);
      v16 = *(v32 + 8);
      if (v16)
      {
        v17 = 0;
        do
        {
          v19 = **v16;
          v18 = *(*v16 + 4);
          v20 = v18 + (((*v32 + *(v16 + 20)) + *(v16 + 16)) - v19);
          if (v20 <= *(this + 52))
          {
            if (v20 >= 0.0)
            {
              v23 = v18 + (((*v32 + *(v16 + 20)) + *(v16 + 16)) - v19);
            }

            else
            {
              v23 = 0.0;
              if (v20 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v33);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v33);
              }
            }

            if (v23 < v15)
            {
              v15 = v23;
            }

            v21 = *(v16 + 24);
            v17 = v16;
          }

          else
          {
            v21 = *(v16 + 24);
            v22 = (v32 + 8);
            if (v17)
            {
              v22 = (v17 + 24);
            }

            *v22 = v21;
            MEMORY[0x1B8C85350](v16, 0x1020C40D9E1CEDCLL);
          }

          v16 = v21;
        }

        while (v21);
        v14 = v32;
      }

      v25 = *(this + 52);
      v26 = INFINITY;
      if (v15 <= v25)
      {
        v26 = v15;
      }

      v27 = *(v14 + 4);
      if (v27 != v26)
      {
        if (COERCE_INT(fabs(v27 - v26)) > 2139095039)
        {
          goto LABEL_46;
        }

        v28 = vabds_f32(v27, v26);
        v29 = fabsf(v27);
        v30 = fabsf(v15);
        v4 = v15 <= v25;
        v31 = INFINITY;
        if (v4)
        {
          v31 = v30;
        }

        if (v28 > ((v31 + v29) * 0.00001))
        {
LABEL_46:
          v11 = 1;
        }
      }

      *(v14 + 4) = v26;
      v32 = *(v14 + 16);
    }

    while (v32);
  }

  while ((v11 & 1) != 0);
}

void sub_1B54BE5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::LatticeFasterDecoder::PruneTokensForFrame(kaldi::LatticeFasterDecoder *this, unsigned int a2)
{
  v3 = (*(this + 10) + 16 * a2);
  result = *v3;
  if (*v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = kaldi::g_kaldi_verbose_level < -1;
  }

  if (!v5)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "No tokens alive [doing pruning]", 31);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v9);
    result = *v3;
  }

  if (result)
  {
    v6 = 0;
    do
    {
      v7 = *(result + 16);
      if (*(result + 4) == INFINITY)
      {
        v8 = (v6 + 16);
        if (!v6)
        {
          v8 = v3;
        }

        *v8 = v7;
        MEMORY[0x1B8C85350]();
        --*(this + 62);
      }

      else
      {
        v6 = result;
      }

      result = v7;
    }

    while (v7);
  }

  return result;
}

float *kaldi::LatticeFasterDecoder::FindOrAddToken(kaldi::LatticeFasterDecoder *this, int a2, int a3, float a4, BOOL *a5)
{
  v5 = *(this + 3);
  v6 = (v5 + 16 * (a2 % *(this + 2)));
  v7 = v6[1];
  if (!v7)
  {
LABEL_8:
    operator new();
  }

  v8 = *v6;
  v9 = this;
  if (v8 != -1)
  {
    v9 = (*(v5 + 16 * v8 + 8) + 16);
  }

  v10 = *(v7 + 16);
  for (i = *v9; ; i = *(i + 16))
  {
    if (i == v10)
    {
      goto LABEL_8;
    }

    if (*i == a2)
    {
      break;
    }
  }

  v12 = *(i + 8);
  if (*v12 <= a4)
  {
    if (!a5)
    {
      return v12;
    }

    v13 = 0;
    goto LABEL_12;
  }

  *v12 = a4;
  if (a5)
  {
    v13 = 1;
LABEL_12:
    *a5 = v13;
  }

  return v12;
}

uint64_t kaldi::nnet1::Component::GetMatrixInitTypeMap(kaldi::nnet1::Component *this)
{
  if (atomic_load_explicit(&kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::flag, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::flag, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::$_0 &&>>);
  }

  return kaldi::nnet1::Component::GetMatrixInitTypeMap(void)::init_map_heap;
}

void kaldi::nnet1::Component::TypeToMarker(kaldi::nnet1::Component *a1@<X0>, std::string *a2@<X8>)
{
  ComponentTypeMap = kaldi::nnet1::Component::GetComponentTypeMap(a1);
  v5 = *ComponentTypeMap;
  v6 = kaldi::nnet1::Component::GetComponentTypeMap(ComponentTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown component type: ", 24);
    MEMORY[0x1B8C84C00](v10, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  while (*(v5 + 14) != a1)
  {
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v6 = kaldi::nnet1::Component::GetComponentTypeMap(v6);
    v5 = v8;
    if (v8 == (v6 + 8))
    {
      goto LABEL_9;
    }
  }

  if (*(v5 + 55) < 0)
  {
    v12 = v5[4];
    v13 = v5[5];

    std::string::__init_copy_ctor_external(a2, v12, v13);
  }

  else
  {
    v11 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v11;
  }
}

{
  GradientNormTypeMap = kaldi::nnet1::Component::GetGradientNormTypeMap(a1);
  v5 = *GradientNormTypeMap;
  v6 = kaldi::nnet1::Component::GetGradientNormTypeMap(GradientNormTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown gradient normalizaiton type: ", 37);
    MEMORY[0x1B8C84C00](v10, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  while (*(v5 + 14) != a1)
  {
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v6 = kaldi::nnet1::Component::GetGradientNormTypeMap(v6);
    v5 = v8;
    if (v8 == (v6 + 8))
    {
      goto LABEL_9;
    }
  }

  if (*(v5 + 55) < 0)
  {
    v12 = v5[4];
    v13 = v5[5];

    std::string::__init_copy_ctor_external(a2, v12, v13);
  }

  else
  {
    v11 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v11;
  }
}

{
  MatrixInitTypeMap = kaldi::nnet1::Component::GetMatrixInitTypeMap(a1);
  v5 = *MatrixInitTypeMap;
  v6 = kaldi::nnet1::Component::GetMatrixInitTypeMap(MatrixInitTypeMap);
  if (v5 == (v6 + 8))
  {
LABEL_9:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "Unknown matrix initialization type: ", 36);
    MEMORY[0x1B8C84C00](v10, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  while (*(v5 + 14) != a1)
  {
    v7 = v5[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v5[2];
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v6 = kaldi::nnet1::Component::GetMatrixInitTypeMap(v6);
    v5 = v8;
    if (v8 == (v6 + 8))
    {
      goto LABEL_9;
    }
  }

  if (*(v5 + 55) < 0)
  {
    v12 = v5[4];
    v13 = v5[5];

    std::string::__init_copy_ctor_external(a2, v12, v13);
  }

  else
  {
    v11 = *(v5 + 2);
    a2->__r_.__value_.__r.__words[2] = v5[6];
    *&a2->__r_.__value_.__l.__data_ = v11;
  }
}

uint64_t kaldi::nnet1::Component::MarkerToMatrixInitType(kaldi::nnet1::Component *a1)
{
  MatrixInitTypeMap = kaldi::nnet1::Component::GetMatrixInitTypeMap(a1);
  v3 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(MatrixInitTypeMap, a1);
  if ((kaldi::nnet1::Component::GetMatrixInitTypeMap(v3) + 8) == v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Unknown matrix initialization marker: ", 38);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v5, a1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return v3[14];
}

double kaldi::nnet1::GatedRecurrentUnit::GatedRecurrentUnit(kaldi::nnet1::GatedRecurrentUnit *this, int a2, int a3)
{
  *(this + 224) = a2;
  *(this + 225) = a3;
  *(this + 452) = 0;
  *(this + 114) = 0;
  *(this + 116) = 0;
  *(this + 115) = 0;
  *(this + 111) = &unk_1F2D172B0;
  *(this + 117) = &unk_1F2D279F8;
  *(this + 59) = xmmword_1B5AE0070;
  *(this + 120) = 0x3BF800000;
  *(this + 242) = 1;
  *(this + 486) = 0;
  *(this + 974) = 0;
  kaldi::nnet1::RecurrentBaseComponent::RecurrentBaseComponent(this, off_1F2D2E670);
  *v3 = &unk_1F2D2E2E8;
  *(v3 + 888) = &unk_1F2D2E550;
  result = 0.0;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 160) = &unk_1F2D0EE38;
  *(v3 + 200) = 0;
  *(v3 + 216) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 208) = &unk_1F2D0EE38;
  *(v3 + 248) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 256) = &unk_1F2D0EE38;
  *(v3 + 296) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 304) = &unk_1F2D3AC18;
  *(v3 + 312) = 0;
  *(v3 + 336) = 0;
  *(v3 + 600) = 0;
  *(v3 + 568) = 0u;
  *(v3 + 584) = 0u;
  *(v3 + 536) = 0u;
  *(v3 + 552) = 0u;
  *(v3 + 504) = 0u;
  *(v3 + 520) = 0u;
  *(v3 + 472) = 0u;
  *(v3 + 488) = 0u;
  *(v3 + 440) = 0u;
  *(v3 + 456) = 0u;
  *(v3 + 408) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 392) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 608) = 1065353216;
  *(v3 + 620) = 0;
  *(v3 + 628) = 0;
  *(v3 + 612) = 0;
  *(v3 + 633) = 0;
  *(v3 + 648) = 0u;
  *(v3 + 664) = 0u;
  *(v3 + 680) = 0u;
  *(v3 + 696) = 0u;
  *(v3 + 712) = 0u;
  *(v3 + 728) = 0u;
  *(v3 + 744) = 0u;
  *(v3 + 760) = 0u;
  *(v3 + 776) = 0u;
  *(v3 + 792) = 0u;
  *(v3 + 808) = 0u;
  *(v3 + 824) = 0u;
  *(v3 + 840) = 0u;
  *(v3 + 856) = 0u;
  *(v3 + 872) = 0u;
  return result;
}

uint64_t kaldi::nnet1::SimplerSimpleRecurrentUnit::SimplerSimpleRecurrentUnit(uint64_t this, int a2, int a3)
{
  *(this + 56) = a2;
  *(this + 60) = a3;
  *(this + 64) = 0;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 72) = 0;
  *(this + 120) = 0;
  *(this + 128) = 0;
  *(this + 136) = &unk_1F2D27A18;
  *(this + 144) = 1;
  *(this + 40) = 0;
  *(this + 48) = &unk_1F2D42FC8;
  *this = &unk_1F2D42E78;
  *(this + 8) = 0;
  *(this + 96) = &unk_1F2D43098;
  *(this + 104) = &unk_1F2D43118;
  *(this + 112) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = &unk_1F2D3AC18;
  return this;
}

double kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(kaldi::nnet1::ScaledDotAttention *this, int a2, int a3)
{
  *(this + 18) = &unk_1F2D15BB8;
  *(this + 38) = a2;
  *(this + 39) = a3;
  *(this + 80) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 24) = &unk_1F2D17FD8;
  v3 = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F2D2BA90);
  v3[18] = &unk_1F2D2B9A0;
  *v3 = &unk_1F2D2B870;
  v3[24] = &unk_1F2D2BA70;
  result = 0.0;
  *(v3 + 1) = 0u;
  *(v3 + 2) = 0u;
  v3[1] = &unk_1F2D0EE38;
  *(v3 + 48) = 0;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  v3[7] = &unk_1F2D0EE38;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 27) = 1065353216;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  return result;
}

kaldi::nnet1::MultiHeadAttention *kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(kaldi::nnet1::MultiHeadAttention *this, int a2, int a3)
{
  *(this + 19) = &unk_1F2D15BB8;
  *(this + 40) = a2;
  *(this + 41) = a3;
  *(this + 84) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 24) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 25) = &unk_1F2D17FD8;
  kaldi::nnet1::ScaledDotAttention::ScaledDotAttention(this, &off_1F2D2BD20);
  *(this + 19) = &unk_1F2D2BC30;
  *this = &unk_1F2D2BB00;
  *(this + 25) = &unk_1F2D2BD00;
  *(this + 36) = -1;
  return this;
}

void sub_1B54BF244(_Unwind_Exception *exception_object)
{
  v5 = v3;
  *v5 = v2;
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 184) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::nnet1::SelfAttention::SelfAttention(kaldi::nnet1::SelfAttention *this, int a2, int a3)
{
  *(this + 10) = &unk_1F2D15BB8;
  *(this + 22) = a2;
  *(this + 23) = a3;
  *(this + 48) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 13) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 16) = &unk_1F2D17FD8;
  result = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F2D2C340);
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = &unk_1F2D27A18;
  *(result + 12) = 1;
  result[9] = 0;
  result[10] = &unk_1F2D2C250;
  result[16] = &unk_1F2D2C320;
  *result = &unk_1F2D2C080;
  result[1] = &unk_1F2D2C138;
  result[7] = 0;
  result[8] = 0;
  return result;
}

kaldi::nnet1::SupervisedMultiHeadAttention *kaldi::nnet1::SupervisedMultiHeadAttention::SupervisedMultiHeadAttention(kaldi::nnet1::SupervisedMultiHeadAttention *this, int a2, int a3)
{
  *(this + 25) = &unk_1F2D15BB8;
  *(this + 52) = a2;
  *(this + 53) = a3;
  *(this + 108) = 0;
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 31) = &unk_1F2D17FD8;
  kaldi::nnet1::MultiHeadAttention::MultiHeadAttention(this, off_1F2D2BFD0);
  *(this + 25) = &unk_1F2D2BEE0;
  *this = &unk_1F2D2BDB0;
  *(this + 31) = &unk_1F2D2BFB0;
  *(this + 37) = -1;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 19) = &unk_1F2D0EE38;
  *(this + 192) = 0;
  return this;
}

void sub_1B54BF4F8(_Unwind_Exception *exception_object)
{
  v5 = v3;
  *v5 = v2;
  v7 = *v4;
  if (*v4)
  {
    *(v1 + 232) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *kaldi::nnet1::AverageAttention::AverageAttention(kaldi::nnet1::AverageAttention *this, int a2, int a3)
{
  *(this + 9) = &unk_1F2D15BB8;
  *(this + 20) = a2;
  *(this + 21) = a3;
  *(this + 44) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = 0;
  *this = &unk_1F2D17FB0;
  *(this + 15) = &unk_1F2D17FD8;
  result = kaldi::nnet1::AttentionBaseInferenceComponent::AttentionBaseInferenceComponent(this, off_1F2D2C670);
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  result[5] = &unk_1F2D27A18;
  *(result + 12) = 1;
  result[8] = 0;
  result[9] = &unk_1F2D2C580;
  result[15] = &unk_1F2D2C650;
  *result = &unk_1F2D2C3B0;
  result[1] = &unk_1F2D2C468;
  result[7] = 0;
  return result;
}

uint64_t kaldi::nnet1::LayerNorm::LayerNorm(uint64_t this, int a2, int a3)
{
  *(this + 8) = a2;
  *(this + 12) = a3;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *this = &unk_1F2D00310;
  *(this + 48) = 730643660;
  *(this + 52) = 1;
  *(this + 72) = 0;
  *(this + 80) = 0;
  *(this + 56) = &unk_1F2D3AC18;
  *(this + 64) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 88) = &unk_1F2D3AC18;
  *(this + 96) = 0;
  return this;
}

void *kaldi::nnet1::Component::Delete(void *this, kaldi::nnet1::Component *a2)
{
  if (!this)
  {
    return this;
  }

  v2 = a2;
  v3 = this;
  v4 = (*(*this + 24))(this);
  v5 = v4;
  if (v4 <= 1024)
  {
    switch(v4)
    {
      case 257:
        goto LABEL_98;
      case 258:
        goto LABEL_98;
      case 259:
        goto LABEL_98;
      case 260:
        goto LABEL_98;
      case 261:
        goto LABEL_98;
      case 262:
        goto LABEL_98;
      case 263:
        goto LABEL_98;
      case 264:
        goto LABEL_98;
      case 265:
        goto LABEL_98;
      case 266:
        goto LABEL_98;
      case 267:
        goto LABEL_98;
      case 268:
        goto LABEL_98;
      case 269:
        goto LABEL_98;
      case 270:
        goto LABEL_98;
      case 271:
        goto LABEL_98;
      case 272:
        goto LABEL_98;
      case 273:
        goto LABEL_105;
      case 274:
        goto LABEL_105;
      case 275:
        goto LABEL_105;
      case 276:
        goto LABEL_105;
      case 277:
        goto LABEL_105;
      case 278:
        goto LABEL_111;
      case 279:
        goto LABEL_116;
      case 280:
        goto LABEL_105;
      case 281:
        goto LABEL_116;
      case 282:
        goto LABEL_116;
      case 283:
LABEL_116:
        if (!this)
        {
          return this;
        }

        v13 = *(*this + 8);

        return v13();
      case 284:
        goto LABEL_98;
      case 285:
        goto LABEL_111;
      case 286:
        goto LABEL_111;
      case 287:
        goto LABEL_111;
      case 288:
        goto LABEL_111;
      case 289:
LABEL_111:
        if (!this)
        {
          return this;
        }

        v13 = *(*this + 8);

        break;
      case 290:
        goto LABEL_98;
      default:
        switch(v4)
        {
          case 513:
            goto LABEL_98;
          case 514:
            goto LABEL_98;
          case 515:
            goto LABEL_98;
          case 516:
            goto LABEL_98;
          case 517:
            goto LABEL_98;
          case 518:
            goto LABEL_98;
          case 519:
            goto LABEL_98;
          case 520:
            goto LABEL_98;
          case 521:
            goto LABEL_98;
          case 522:
            goto LABEL_98;
          case 523:
            goto LABEL_98;
          case 524:
            goto LABEL_98;
          case 525:
            goto LABEL_98;
          default:
            goto LABEL_47;
        }
    }

    return v13();
  }

  if (v4 <= 2047)
  {
    switch(v4)
    {
      case 1025:
        goto LABEL_98;
      case 1026:
        goto LABEL_98;
      case 1027:
        goto LABEL_98;
      case 1028:
        goto LABEL_98;
      case 1031:
        goto LABEL_98;
      case 1032:
        goto LABEL_98;
      case 1033:
        goto LABEL_98;
      case 1034:
        goto LABEL_98;
      case 1035:
        goto LABEL_98;
      case 1036:
        goto LABEL_98;
      case 1037:
        goto LABEL_98;
      case 1038:
        goto LABEL_98;
      case 1039:
        goto LABEL_98;
      case 1040:
        goto LABEL_98;
      case 1041:
        goto LABEL_98;
      case 1042:
        goto LABEL_98;
      default:
        goto LABEL_47;
    }
  }

  if (v4 <= 2052)
  {
    if (v4 <= 2049)
    {
      if (v4 == 2048)
      {
      }

      else
      {
      }
    }

    else if (v4 == 2050)
    {
    }

    else if (v4 == 2051)
    {
    }

    else
    {
    }
  }

  else if (v4 > 2055)
  {
    switch(v4)
    {
      case 0x808:
        break;
      case 0x809:
        break;
      case 0x80A:
        break;
      default:
LABEL_47:
        if (!v2)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
          v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Missing type: ", 14);
          v15 = MEMORY[0x1B8C84C00](v14, v5);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " ", 1);
          kaldi::nnet1::Component::TypeToMarker(v5, &__p);
          std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__p);
          std::string::~string(&__p);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(v18);
        }

        if (kaldi::g_kaldi_verbose_level >= -1)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
          v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Missing type: ", 14);
          kaldi::nnet1::Component::TypeToMarker(v5, &__p);
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

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiWarnMessage::~KaldiWarnMessage(v18);
        }

        return (*(*v3 + 8))(v3);
    }
  }

  else if (v4 == 2053)
  {
  }

  else
  {
    if (v4 != 2054)
    {
LABEL_105:
      if (this)
      {
        v13 = *(*this + 8);

        return v13();
      }

      return this;
    }
  }

LABEL_98:
  if (this)
  {
    v13 = *(*this + 8);

    return v13();
  }

  return this;
}

void kaldi::nnet1::Component::Init(const std::string *a1)
{
  std::istringstream::basic_istringstream[abi:ne200100](v10, a1, 8);
  __p = 0;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  kaldi::ReadToken(v10, 0, &__p);
  v1 = kaldi::nnet1::Component::MarkerToComponentType(&__p);
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v5, 3);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Initializing component of type ", 31);
    if (v9 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v9 >= 0)
    {
      v4 = HIBYTE(v9);
    }

    else
    {
      v4 = v8;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, p_p, v4);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v5);
  }

  kaldi::ExpectToken(v10, 0, "<InputDim>");
  kaldi::ReadBasicType<int>(v10, 0, &v6 + 4);
  kaldi::ExpectToken(v10, 0, "<OutputDim>");
  kaldi::ReadBasicType<int>(v10, 0, &v6);
  kaldi::nnet1::Component::NewComponentOfType(v1);
}

void sub_1B54C0EC4(_Unwind_Exception *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  if (a44 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a45, MEMORY[0x1E69E54E0]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Component::Write(unsigned int *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v8, &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  kaldi::WriteBasicType<int>(a2, a3, a1[2]);
  if ((a3 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  return (*(*a1 + 104))(a1, a2, a3, a4);
}

void sub_1B54C100C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(uint64_t a1, int *a2, float a3)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "the L2 Norm clipping value must be greater than 0, you set ", 59);
    std::ostream::operator<<();
    goto LABEL_11;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "either the gradient or the gradient norm data is not initialized");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, a1, 111);
  kaldi::CuMatrixBase<float>::ApplyPow(a2, 2.0);
  v6 = sqrtf(kaldi::CuMatrixBase<float>::Sum(a2));
  if (v6 > a3)
  {
    v7 = a3 / v6;

    kaldi::CuMatrixBase<float>::Scale(a1, v7);
  }
}

void kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(uint64_t a1, void *a2, float a3)
{
  if (a3 <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the L2 Norm clipping value must be greater than 0, you set ", 59);
    std::ostream::operator<<();
    goto LABEL_11;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "either the gradient or the gradient norm data is not initialized");
LABEL_11:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::CuVectorBase<float>::CopyFromVec(a2, a1);
  kaldi::CuVectorBase<float>::ApplyPow(a2, 2.0);
  if (sqrtf(COERCE_FLOAT(COERCE_UNSIGNED_INT64(kaldi::CuVectorBase<float>::Sum(a2)))) > a3)
  {

    kaldi::CuVectorBase<float>::Scale();
  }
}

uint64_t kaldi::nnet1::UpdatableComponent::ClipGradient(uint64_t a1, float a2)
{
  if (a2 <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the gradient clipping value must be greater than 0, you set ", 60);
    std::ostream::operator<<();
    goto LABEL_8;
  }

  if (!a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "the gradient data is not initialized");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::CuMatrixBase<float>::ApplyCeiling(a1, a2);

  return kaldi::CuMatrixBase<float>::ApplyFloor(a1, -a2);
}

{
  if (a2 <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "the gradient clipping value must be greater than 0, you set ", 60);
    std::ostream::operator<<();
    goto LABEL_8;
  }

  if (!a1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "the gradient data is not initialized");
LABEL_8:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  kaldi::CuVectorBase<float>::ApplyCeiling(a1, a2);

  return kaldi::CuVectorBase<float>::ApplyFloor(a1, -a2);
}

void kaldi::nnet1::UpdatableComponent::RmspropGradient(uint64_t a1, uint64_t a2, float a3)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "the factor in RMSPROP must be [0, 1], you set ", 46);
    std::ostream::operator<<();
    goto LABEL_12;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "either the gradient or the gradient norm data is not initialized");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  kaldi::CuMatrixBase<float>::AddMatEwpMat(a2, a1, 111, a1, 111, 1.0 - a3, a3);
  kaldi::CuMatrixBase<float>::ApplyPow(a2, 0.5);
  kaldi::CuMatrixBase<float>::DivElements(a1, a2);

  kaldi::CuMatrixBase<float>::ApplyPow(a2, 2.0);
}

{
  if (a3 < 0.0 || a3 > 1.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "the factor in RMSPROP must be [0, 1], you set ", 46);
    std::ostream::operator<<();
    goto LABEL_12;
  }

  if (!a1 || !a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "either the gradient or the gradient norm data is not initialized");
LABEL_12:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  kaldi::CuVectorBase<float>::AddVecVec();
  kaldi::CuVectorBase<float>::ApplyPow(a2, 0.5);
  kaldi::CuVectorBase<float>::DivElements(a1, a2);

  kaldi::CuVectorBase<float>::ApplyPow(a2, 2.0);
}

void kaldi::nnet1::Component::~Component(kaldi::nnet1::Component *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void kaldi::nnet1::MaxPooling2DComponent::~MaxPooling2DComponent(kaldi::nnet1::MaxPooling2DComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::AddShift::~AddShift(kaldi::nnet1::AddShift *this)
{
  *this = &unk_1F2D159D0;
  v2 = *(this + 23);
  if (v2)
  {
    *(this + 24) = v2;
    operator delete(v2);
  }

  v3 = (this + 144);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::AddShift::~AddShift(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::UpdatableComponent::~UpdatableComponent(kaldi::nnet1::UpdatableComponent *this)
{
  *this = &unk_1F2D172B0;
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions((this + 48));
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

void kaldi::nnet1::AveragePooling2DComponent::~AveragePooling2DComponent(kaldi::nnet1::AveragePooling2DComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::AveragePoolingComponent::~AveragePoolingComponent(kaldi::nnet1::AveragePoolingComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::BlockSoftmax::~BlockSoftmax(kaldi::nnet1::BlockSoftmax *this)
{
  *this = &unk_1F2D15AF8;
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  v3 = *(this + 6);
  if (v3)
  {
    *(this + 7) = v3;
    operator delete(v3);
  }

  *this = &unk_1F2D15BB8;
  v4 = *(this + 3);
  if (v4)
  {
    *(this + 4) = v4;
    operator delete(v4);
  }
}

{
  kaldi::nnet1::BlockSoftmax::~BlockSoftmax(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::CompressedWordVecComponent::~CompressedWordVecComponent(kaldi::nnet1::CompressedWordVecComponent *this)
{
  *this = &unk_1F2D15C78;
  kaldi::CompressedMatrix::Destroy((this + 48));
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::CompressedWordVecComponent::~CompressedWordVecComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ConvolutionalComponent::~ConvolutionalComponent(kaldi::nnet1::ConvolutionalComponent *this)
{
  *this = &unk_1F2D15D38;
  v2 = *(this + 44);
  if (v2)
  {
    *(this + 45) = v2;
    operator delete(v2);
  }

  v3 = (this + 328);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 304);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 264);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 216);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 192);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::CuVector<float>::~CuVector(this + 19);
  kaldi::CuMatrix<float>::~CuMatrix(this + 104);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::ConvolutionalComponent::~ConvolutionalComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::CopyComponent::~CopyComponent(kaldi::nnet1::CopyComponent *this)
{
  *this = &unk_1F2D15E60;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_1F2D15BB8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::CopyComponent::~CopyComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Desplice::~Desplice(kaldi::nnet1::Desplice *this)
{
  *this = &unk_1F2D15F20;
  v2 = *(this + 18);
  if (v2)
  {
    free(v2);
  }

  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v3 = *(this + 15);
  if (v3)
  {
    free(v3);
  }

  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    free(v4);
  }

  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  v5 = *(this + 9);
  if (v5)
  {
    free(v5);
  }

  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *this = &unk_1F2D15BB8;
  v6 = *(this + 3);
  if (v6)
  {
    *(this + 4) = v6;
    operator delete(v6);
  }
}

{
  kaldi::nnet1::Desplice::~Desplice(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Dropout::~Dropout(kaldi::nnet1::Dropout *this)
{
  *this = &unk_1F2D15FE0;
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuRand<float>::~CuRand(this + 48);
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::Dropout::~Dropout(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::DuplicateComponent::~DuplicateComponent(kaldi::nnet1::DuplicateComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this)
{
  *this = &unk_1F2D160A0;
  *(this + 11) = &unk_1F2D161D0;
  kaldi::CuMatrix<float>::~CuMatrix(this + 440);
  kaldi::CuMatrix<float>::~CuMatrix(this + 392);

  kaldi::nnet1::WordVecComponent::~WordVecComponent(this);
}

{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::WordVecComponent::~WordVecComponent(kaldi::nnet1::WordVecComponent *this)
{
  *this = &unk_1F2D173D8;
  *(this + 11) = &unk_1F2D17508;
  kaldi::nnet1::QuantizerResidualAggregator::~QuantizerResidualAggregator(this + 39);
  kaldi::CuMatrix<float>::~CuMatrix(this + 264);
  kaldi::CuMatrix<float>::~CuMatrix(this + 192);
  kaldi::CuMatrix<float>::~CuMatrix(this + 144);
  kaldi::CuMatrix<float>::~CuMatrix(this + 96);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::WordVecComponent::~WordVecComponent(this);

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent(kaldi::nnet1::FofeWordVecComponent *this)
{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent((this - 88));
}

{
  kaldi::nnet1::FofeWordVecComponent::~FofeWordVecComponent((this - 88));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::FramePoolingComponent::~FramePoolingComponent(kaldi::nnet1::FramePoolingComponent *this)
{
  *this = &unk_1F2D161F8;
  v3 = (this + 144);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<kaldi::Vector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::FramePoolingComponent::~FramePoolingComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::HistoricalComponent::~HistoricalComponent(kaldi::nnet1::HistoricalComponent *this)
{
  *this = &unk_1F2D16320;
  v1 = (this + 8);
  kaldi::nnet1::HistoryOptions::~HistoryOptions((this + 32));
  v2 = v1;
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void kaldi::nnet1::IdentityComponent::~IdentityComponent(kaldi::nnet1::IdentityComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::InterpolationComponent::~InterpolationComponent(kaldi::nnet1::InterpolationComponent *this)
{
  *this = &unk_1F2D16390;
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  *this = &unk_1F2D15BB8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::InterpolationComponent::~InterpolationComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::KlHmm::~KlHmm(kaldi::nnet1::KlHmm *this)
{
  *this = &unk_1F2D16458;
  kaldi::CuMatrix<float>::~CuMatrix(this + 88);
  kaldi::Matrix<float>::~Matrix(this + 48);
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::KlHmm::~KlHmm(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::LogSoftmax::~LogSoftmax(kaldi::nnet1::LogSoftmax *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::MaxoutComponent::~MaxoutComponent(kaldi::nnet1::MaxoutComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::MaxPoolingComponent::~MaxPoolingComponent(kaldi::nnet1::MaxPoolingComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::MultiSoftmax::~MultiSoftmax(kaldi::nnet1::MultiSoftmax *this)
{
  kaldi::nnet1::BlockSoftmax::~BlockSoftmax(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Nnet1InferenceNet::~Nnet1InferenceNet(kaldi::nnet1::Nnet1InferenceNet *this)
{
  *this = &unk_1F2D16518;
  v2 = *(this + 49);
  if (v2)
  {
    *(this + 50) = v2;
    operator delete(v2);
  }

  kaldi::nnet1::Nnet::~Nnet((this + 8));

  quasar::Bitmap::~Bitmap(this);
}

{
  kaldi::nnet1::Nnet1InferenceNet::~Nnet1InferenceNet(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 20) = &unk_1F2D16748;
  *(this + 21) = &unk_1F2D16770;
  v5 = (this + 184);
  std::vector<kaldi::nnet1::Nnet>::__destroy_vector::operator()[abi:ne200100](&v5);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

void kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(kaldi::nnet1::RecurrentBaseComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[1];
  v4 = (this + 128);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 104);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  kaldi::nnet1::RecurrentNnetTrainOptions::~RecurrentNnetTrainOptions((this + 48));
  *this = &unk_1F2D16320;
  kaldi::nnet1::HistoryOptions::~HistoryOptions((this + 32));
  v4 = (this + 8);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void kaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 208));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 208));

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this)
{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 48));
}

{

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((this + 40));
}

{
  kaldi::nnet1::ParallelComponent::~ParallelComponent((this - 160));
}

{
  kaldi::nnet1::ParallelComponent::~ParallelComponent((this - 168));
}

void virtual thunk tokaldi::nnet1::ParallelComponent::~ParallelComponent(kaldi::nnet1::ParallelComponent *this)
{
  v2 = (v1 + 208);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::ParallelComponent::~ParallelComponent((this + *(*this - 24)));
}

void kaldi::nnet1::PNormComponent::~PNormComponent(kaldi::nnet1::PNormComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Rbm::~Rbm(kaldi::nnet1::Rbm *this)
{
  *this = &unk_1F2D169F0;
  kaldi::CuVector<float>::~CuVector(this + 33);
  kaldi::CuVector<float>::~CuVector(this + 29);
  kaldi::CuMatrix<float>::~CuMatrix(this + 184);
  kaldi::CuVector<float>::~CuVector(this + 19);
  kaldi::CuVector<float>::~CuVector(this + 15);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::Rbm::~Rbm(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::RectifiedLinearComponent::~RectifiedLinearComponent(kaldi::nnet1::RectifiedLinearComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ExponentialLinearComponent::~ExponentialLinearComponent(kaldi::nnet1::ExponentialLinearComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::ScaledExponentialLinearComponent::~ScaledExponentialLinearComponent(kaldi::nnet1::ScaledExponentialLinearComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Recurrent::~Recurrent(kaldi::nnet1::Recurrent *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  v6 = (this + 504);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 480);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  kaldi::CuMatrix<float>::~CuMatrix(this + 432);
  v5 = *(this + 51);
  if (v5)
  {
    *(this + 52) = v5;
    operator delete(v5);
  }

  v6 = (this + 360);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 336);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 312);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 288);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 264);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v6 = (this + 240);
  std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
  kaldi::CuVector<float>::~CuVector(this + 26);
  kaldi::CuMatrix<float>::~CuMatrix(this + 160);
  kaldi::nnet1::RecurrentBaseComponent::~RecurrentBaseComponent(this, a2 + 1);
}

void kaldi::nnet1::Recurrent::~Recurrent(kaldi::nnet1::Recurrent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 528));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 528));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::Recurrent::~Recurrent(kaldi::nnet1::Recurrent *this)
{
  v2 = (v1 + 528);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::Recurrent::~Recurrent((this + *(*this - 24)));
}

void kaldi::nnet1::RelaxedSoftmax::~RelaxedSoftmax(kaldi::nnet1::RelaxedSoftmax *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Rescale::~Rescale(kaldi::nnet1::Rescale *this)
{
  *this = &unk_1F2D16E78;
  v2 = *(this + 29);
  if (v2)
  {
    *(this + 30) = v2;
    operator delete(v2);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  v3 = (this + 144);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = (this + 120);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v3);
  kaldi::CuVector<float>::~CuVector(this + 11);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::Rescale::~Rescale(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::SentenceAveragingComponent::~SentenceAveragingComponent(kaldi::nnet1::SentenceAveragingComponent *this)
{
  *this = &unk_1F2D16FA0;
  kaldi::nnet1::Nnet::~Nnet((this + 88));

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  *this = &unk_1F2D16FA0;
  kaldi::nnet1::Nnet::~Nnet((this + 88));
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::SharedNceComponent::~SharedNceComponent(kaldi::nnet1::SharedNceComponent *this)
{
  *this = &unk_1F2D170C8;
  v2 = this + 88;
  kaldi::CuVector<float>::~CuVector(this + 47);
  kaldi::CuVector<float>::~CuVector(this + 43);
  kaldi::CuVector<float>::~CuVector(this + 39);
  kaldi::CuMatrix<float>::~CuMatrix(this + 264);
  kaldi::CuMatrix<float>::~CuMatrix(this + 216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  kaldi::CuVector<float>::~CuVector(this + 17);
  kaldi::CuMatrix<float>::~CuMatrix(v2);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(this);
}

{
  kaldi::nnet1::SharedNceComponent::~SharedNceComponent(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Sigmoid::~Sigmoid(kaldi::nnet1::Sigmoid *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Softmax::~Softmax(kaldi::nnet1::Softmax *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Splice::~Splice(kaldi::nnet1::Splice *this)
{
  *this = &unk_1F2D171F0;
  v2 = *(this + 7);
  if (v2)
  {
    free(v2);
  }

  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *this = &unk_1F2D15BB8;
  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }
}

{
  kaldi::nnet1::Splice::~Splice(this);

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::Tanh::~Tanh(kaldi::nnet1::Tanh *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::TemporalMaxPoolingComponent::~TemporalMaxPoolingComponent(kaldi::nnet1::TemporalMaxPoolingComponent *this)
{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1B8C85350);
}

void non-virtual thunk tokaldi::nnet1::WordVecComponent::~WordVecComponent(kaldi::nnet1::WordVecComponent *this)
{
  kaldi::nnet1::WordVecComponent::~WordVecComponent((this - 88));
}

{
  kaldi::nnet1::WordVecComponent::~WordVecComponent((this - 88));

  JUMPOUT(0x1B8C85350);
}

void kaldi::nnet1::CompressedWordTransComponent::~CompressedWordTransComponent(kaldi::nnet1::CompressedWordTransComponent *this)
{
  *this = &unk_1F2D17530;
  kaldi::CompressedMatrix::Destroy((this + 80));
  kaldi::CuVector<float>::~CuVector(this + 6);
  *this = &unk_1F2D15BB8;
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }
}

{
  kaldi::nnet1::CompressedWordTransComponent::~CompressedWordTransComponent(this);

  JUMPOUT(0x1B8C85350);
}

float kaldi::nnet1::RelaxedSoftmax::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<RelaxFactor>");
  kaldi::ReadBasicType<float>(a2, 0, (a1 + 48));
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Relaxation factor must be positive; found: ", 43);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  return result;
}

void *kaldi::nnet1::RelaxedSoftmax::WriteData(int a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<RelaxFactor>");

  return kaldi::WriteBasicType<float>(a2, a3);
}

uint64_t kaldi::nnet1::RelaxedSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddMat(a3, a2, 111, *(a1 + 48), 0.0);

  return kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a3);
}

float kaldi::nnet1::RelaxedSoftmax::PropagateFnc(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  LODWORD(a2) = *(a1 + 48);
  kaldi::CuVectorBase<float>::AddVec(a2, 0.0);

  return kaldi::CuVectorBase<float>::ApplySoftMax(a4, v5);
}

float kaldi::nnet1::RelaxedSoftmax::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<RelaxFactor>");
  kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
  result = *(a1 + 48);
  if (result <= 0.0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Relaxation factor must be positive; found: ", 43);
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
  }

  return result;
}

void kaldi::nnet1::LogSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(a3, a2);
  kaldi::CuMatrixBase<float>::ApplyFloor(a3, 1.0e-20);

  kaldi::CuMatrixBase<float>::ApplyLog(a3);
}

void kaldi::nnet1::LogSoftmax::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2);
  kaldi::CuVectorBase<float>::ApplySoftMax(a3, v4);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 1.0e-20);

  kaldi::CuVectorBase<float>::ApplyLog(a3);
}

float kaldi::nnet1::Softmax::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2);

  return kaldi::CuVectorBase<float>::ApplySoftMax(a3, v4);
}

void kaldi::nnet1::BlockSoftmax::InitData(std::vector<int> *this, uint64_t *a2)
{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v4 = a2 + 4;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_25;
    }

    kaldi::ReadToken(a2, 0, &v20);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      break;
    }

    v6 = v21;
    if (v21 != 11)
    {
      goto LABEL_16;
    }

    v5 = v20;
LABEL_8:
    v7 = *v5;
    v8 = *(v5 + 3);
    if (v7 != 0x69446B636F6C423CLL || v8 != 0x3E736D69446B636FLL)
    {
      if (v22 < 0)
      {
        v6 = v21;
LABEL_16:
        if (v6 == 12)
        {
          v10 = v20;
          goto LABEL_20;
        }
      }

      goto LABEL_28;
    }

    kaldi::ReadIntegerVector<int>(a2, 0, this + 2, 0, 0, 0, 0);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v22) == 11)
  {
    v5 = &v20;
    goto LABEL_8;
  }

  if (HIBYTE(v22) != 12)
  {
    goto LABEL_28;
  }

  v10 = &v20;
LABEL_20:
  v11 = *v10;
  v12 = *(v10 + 2);
  if (v11 != 0x6E6F706D6F432F3CLL || v12 != 1047817829)
  {
LABEL_28:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Unknown token ", 14);
    if (v22 >= 0)
    {
      v15 = &v20;
    }

    else
    {
      v15 = v20;
    }

    if (v22 >= 0)
    {
      v16 = HIBYTE(v22);
    }

    else
    {
      v16 = v21;
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " (BlockDims)", 12);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

LABEL_25:
  kaldi::nnet1::BlockSoftmax::InitOffset(this);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_1B54C41B8(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::BlockSoftmax::PropagateFnc(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[6];
  if (a1[7] != v3)
  {
    v7 = 0;
    do
    {
      v8 = a1[9];
      v9 = *(v8 + 4 * v7);
      v10 = *(a2 + 8) + 4 * v9;
      LODWORD(v9) = *(a2 + 28) - v9;
      v11 = *(a2 + 32);
      LODWORD(v16[2]) = *(v3 + 4 * v7);
      *(&v16[2] + 4) = *(a2 + 20);
      HIDWORD(v16[3]) = v9;
      v16[4] = v11;
      v16[0] = &unk_1F2CFA908;
      v16[1] = v10;
      v12 = *(v8 + 4 * v7);
      v13 = *(a3 + 8) + 4 * v12;
      LODWORD(v12) = *(a3 + 28) - v12;
      v14 = *(a3 + 32);
      LODWORD(v15[2]) = *(v3 + 4 * v7);
      *(&v15[2] + 4) = *(a3 + 20);
      HIDWORD(v15[3]) = v12;
      v15[4] = v14;
      v15[0] = &unk_1F2CFA908;
      v15[1] = v13;
      kaldi::CuMatrixBase<float>::ApplySoftMaxPerRow(v15, v16);
      v15[0] = &unk_1F2CFA908;
      memset(&v15[1], 0, 32);
      quasar::Bitmap::~Bitmap(v15);
      v16[0] = &unk_1F2CFA908;
      memset(&v16[1], 0, 32);
      quasar::Bitmap::~Bitmap(v16);
      ++v7;
      v3 = a1[6];
    }

    while (v7 < (a1[7] - v3) >> 2);
  }
}

void sub_1B54C4348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BlockSoftmax::BackpropagateFnc(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111);
  v7 = a1[6];
  if (a1[7] != v7)
  {
    v8 = 0;
    do
    {
      v9 = *(a1[9] + 4 * v8);
      v10 = *(a5 + 8) + 4 * v9;
      LODWORD(v9) = *(a5 + 28) - v9;
      v11 = *(a5 + 32);
      LODWORD(v14[2]) = *(v7 + 4 * v8);
      *(&v14[2] + 4) = *(a5 + 20);
      HIDWORD(v14[3]) = v9;
      v14[4] = v11;
      v14[0] = &unk_1F2CFA908;
      v14[1] = v10;
      memset(&v13[1], 0, 24);
      v13[0] = &unk_1F2D3AC18;
      kaldi::CuVector<float>::Resize(v13, HIDWORD(v14[2]), 0);
      kaldi::CuVectorBase<float>::AddRowSumMat(v13, v14);
      kaldi::CuVector<float>::CuVector(v12, v13);
      kaldi::CuVectorBase<float>::Scale();
      kaldi::CuVectorBase<float>::Add(v12, 1.0);
      kaldi::CuMatrixBase<float>::MulRowsVec(v14, v12);
      kaldi::CuVector<float>::~CuVector(v12);
      kaldi::CuVector<float>::~CuVector(v13);
      v14[0] = &unk_1F2CFA908;
      memset(&v14[1], 0, 32);
      quasar::Bitmap::~Bitmap(v14);
      ++v8;
      v7 = a1[6];
    }

    while (v8 < (a1[7] - v7) >> 2);
  }
}

void sub_1B54C44FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  *(v10 + 8) = 0u;
  *(v10 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::BlockSoftmax::ReadData(std::vector<int> *a1, void *a2, int a3)
{
  kaldi::ReadIntegerVector<int>(a2, a3, a1 + 2, 0, 0, 0, 0);

  kaldi::nnet1::BlockSoftmax::InitOffset(a1);
}

void kaldi::nnet1::Tanh::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::Tanh(a3, a2);
}

{
  kaldi::CuVectorBase<float>::Tanh(a3, a2);
}

void sub_1B54C4848(_Unwind_Exception *a1)
{
  kaldi::CuRand<float>::~CuRand((v2 + 6));
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Dropout::InitData(uint64_t a1, void *a2)
{
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      v4 = HIBYTE(v24);
      goto LABEL_29;
    }

    kaldi::ReadToken(a2, 0, &v22);
    v4 = HIBYTE(v24);
    if (SHIBYTE(v24) < 0)
    {
      v6 = v23;
      if (v23 != 18)
      {
        goto LABEL_22;
      }

      v5 = v22;
    }

    else
    {
      if (HIBYTE(v24) != 18)
      {
        goto LABEL_19;
      }

      v5 = &v22;
    }

    v7 = *v5;
    v8 = v5[1];
    v9 = *(v5 + 8);
    v10 = v7 == 0x74756F706F72443CLL && v8 == 0x6F69746E65746552;
    if (!v10 || v9 != 15982)
    {
      break;
    }

    kaldi::ReadBasicType<float>(a2, 0, (a1 + 192));
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
LABEL_19:
    if (HIBYTE(v24) == 12)
    {
      v12 = &v22;
      goto LABEL_24;
    }

    goto LABEL_32;
  }

  v6 = v23;
LABEL_22:
  if (v6 != 12)
  {
    goto LABEL_32;
  }

  v12 = v22;
LABEL_24:
  v13 = *v12;
  v14 = *(v12 + 2);
  if (v13 != 0x6E6F706D6F432F3CLL || v14 != 1047817829)
  {
LABEL_32:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v21);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Unknown token ", 14);
    if (v24 >= 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22;
    }

    if (v24 >= 0)
    {
      v18 = HIBYTE(v24);
    }

    else
    {
      v18 = v23;
    }

    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " (DropoutRetention)", 19);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
  }

LABEL_29:
  if (v4 < 0)
  {
    operator delete(v22);
  }
}

void sub_1B54C4A70(_Unwind_Exception *exception_object)
{
  if (*(v1 - 65) < 0)
  {
    operator delete(*(v1 - 88));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::Dropout::WriteData(int a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<DropoutRetention>");

  return kaldi::WriteBasicType<float>(a2, a3);
}

uint64_t kaldi::nnet1::Dropout::PropagateFnc(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);
  kaldi::CuMatrix<float>::Resize(a1 + 18, *(a3 + 20), *(a3 + 16), 0, 0);
  v5.i32[0] = a1[24].i32[0];
  kaldi::CuMatrixBase<float>::Set(&a1[18], v5);
  kaldi::CuRand<float>::BinarizeProbs(&a1[6], &a1[18], &a1[18]);
  kaldi::CuMatrixBase<float>::MulElements(a3, &a1[18]);
  v6 = 1.0 / *a1[24].i32;

  return kaldi::CuMatrixBase<float>::Scale(a3, v6);
}

uint64_t kaldi::nnet1::Dropout::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111);
  kaldi::CuMatrixBase<float>::MulElements(a5, a1 + 144);
  v7 = 1.0 / *(a1 + 192);

  return kaldi::CuMatrixBase<float>::Scale(a5, v7);
}

float kaldi::nnet1::Dropout::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  if (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ExpectToken(a2, a3, "<DropoutRetention>");

    return kaldi::ReadBasicType<float>(a2, a3, (a1 + 192));
  }

  return result;
}

uint64_t kaldi::nnet1::MaxoutComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuMatrixBase<float>::MaxoutDerivative(a5, a2, a3);

  return kaldi::CuMatrixBase<float>::MulRowsGroupMat(a5, a4);
}

float kaldi::nnet1::PNormComponent::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<P>");

  return kaldi::ReadBasicType<float>(a2, 0, (a1 + 48));
}

void *kaldi::nnet1::PNormComponent::WriteData(int a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<P>");

  return kaldi::WriteBasicType<float>(a2, a3);
}

uint64_t kaldi::nnet1::PNormComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuMatrixBase<float>::GroupPnormDeriv(a5, a2, a3, *(a1 + 48));

  return kaldi::CuMatrixBase<float>::MulRowsGroupMat(a5, a4);
}

float kaldi::nnet1::PNormComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<P>");

  return kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
}

uint64_t kaldi::nnet1::RectifiedLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, int *a3)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);

  return kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
}

uint64_t kaldi::nnet1::RectifiedLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, void *a3)
{
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2);

  return kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
}

float kaldi::nnet1::ExponentialLinearComponent::InitData(uint64_t a1, uint64_t *a2)
{
  kaldi::ExpectToken(a2, 0, "<Alpha>");

  return kaldi::ReadBasicType<float>(a2, 0, (a1 + 48));
}

void *kaldi::nnet1::ExponentialLinearComponent::WriteData(int a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<Alpha>");

  return kaldi::WriteBasicType<float>(a2, a3);
}

uint64_t kaldi::nnet1::ExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrix<float>::CuMatrix(v7, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v7, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v7, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v7);
  kaldi::CuMatrixBase<float>::Add(v7, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v7, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
  kaldi::CuMatrixBase<float>::AddMat(a3, v7, 111, 1.0, 1.0);
  return kaldi::CuMatrix<float>::~CuMatrix(v7);
}

void *kaldi::nnet1::ExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v8[0] = &unk_1F2D3AC18;
  memset(&v8[1], 0, 24);
  kaldi::CuVector<float>::Resize(v8, v5, 0);
  kaldi::CuVectorBase<float>::CopyFromVec(v8, a2);
  kaldi::CuVectorBase<float>::ApplyCeiling(v8, 0.0);
  kaldi::CuVectorBase<float>::ApplyExp(v8);
  kaldi::CuVectorBase<float>::Add(v8, -1.0);
  kaldi::CuVectorBase<float>::Scale();
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
  LODWORD(v6) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(v6, 1.0);
  return kaldi::CuVector<float>::~CuVector(v8);
}

uint64_t kaldi::nnet1::ExponentialLinearComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuMatrix<float>::CuMatrix(v11, *(a5 + 20), *(a5 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v10, *(a5 + 20), *(a5 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v11, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v11, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v11);
  kaldi::CuMatrixBase<float>::Add(v11, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v11, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v10, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(v10);
  kaldi::CuMatrixBase<float>::Add(v10, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v10, -*(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(a5);
  kaldi::CuMatrixBase<float>::AddMat(a5, v11, 111, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::AddMat(a5, v10, 111, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::MulElements(a5, a4);
  kaldi::CuMatrix<float>::~CuMatrix(v10);
  return kaldi::CuMatrix<float>::~CuMatrix(v11);
}

void sub_1B54C54E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

float kaldi::nnet1::ExponentialLinearComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<Alpha>");

  return kaldi::ReadBasicType<float>(a2, a3, (a1 + 48));
}

uint64_t kaldi::nnet1::ScaledExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrix<float>::CuMatrix(v7, *(a3 + 20), *(a3 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v7, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v7, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v7);
  kaldi::CuMatrixBase<float>::Add(v7, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v7, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyFloor(a3, 0.0);
  kaldi::CuMatrixBase<float>::AddMat(a3, v7, 111, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a3, *(a1 + 52));
  return kaldi::CuMatrix<float>::~CuMatrix(v7);
}

void *kaldi::nnet1::ScaledExponentialLinearComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v8[0] = &unk_1F2D3AC18;
  memset(&v8[1], 0, 24);
  kaldi::CuVector<float>::Resize(v8, v5, 0);
  kaldi::CuVectorBase<float>::CopyFromVec(v8, a2);
  kaldi::CuVectorBase<float>::ApplyCeiling(v8, 0.0);
  kaldi::CuVectorBase<float>::ApplyExp(v8);
  kaldi::CuVectorBase<float>::Add(v8, -1.0);
  kaldi::CuVectorBase<float>::Scale();
  kaldi::CuVectorBase<float>::CopyFromVec(a3, a2);
  kaldi::CuVectorBase<float>::ApplyFloor(a3, 0.0);
  LODWORD(v6) = 1.0;
  kaldi::CuVectorBase<float>::AddVec(v6, 1.0);
  kaldi::CuVectorBase<float>::Scale();
  return kaldi::CuVector<float>::~CuVector(v8);
}

uint64_t kaldi::nnet1::ScaledExponentialLinearComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::CuMatrix<float>::CuMatrix(v11, *(a5 + 20), *(a5 + 16), 0, 0, 0);
  kaldi::CuMatrix<float>::CuMatrix(v10, *(a5 + 20), *(a5 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v11, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyCeiling(v11, 0.0);
  kaldi::CuMatrixBase<float>::ApplyExp(v11);
  kaldi::CuMatrixBase<float>::Add(v11, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v11, *(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v10, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(v10);
  kaldi::CuMatrixBase<float>::Add(v10, -1.0);
  kaldi::CuMatrixBase<float>::Scale(v10, -*(a1 + 48));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a2, 111);
  kaldi::CuMatrixBase<float>::ApplyHeaviside(a5);
  kaldi::CuMatrixBase<float>::AddMat(a5, v11, 111, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::AddMat(a5, v10, 111, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a5, *(a1 + 52));
  kaldi::CuMatrixBase<float>::MulElements(a5, a4);
  kaldi::CuMatrix<float>::~CuMatrix(v10);
  return kaldi::CuMatrix<float>::~CuMatrix(v11);
}

void sub_1B54C5964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Nnet1InferenceNet::Feedforward(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  if (a4)
  {
    v4 = *(a1 + 384);
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return kaldi::nnet1::Nnet::Feedforward(a1 + 8, a2, a3, v4);
}

void kaldi::nnet1::Nnet1InferenceNet::MultiIOFeedforward()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implmented! Should not be called!!!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implmented! Should not be called!!!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

BOOL kaldi::nnet1::Nnet1InferenceNet::IsFofeNet(kaldi::nnet1::Nnet1InferenceNet *this)
{
  if ((*(*this + 160))(this))
  {
    return 0;
  }

  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = (this + 8);
  if (((v3 - v2) >> 3) < 1)
  {
    return 0;
  }

  Component = kaldi::nnet1::Nnet::GetComponent(v4, 0);
  return (*(*Component + 24))(Component) == 269;
}

void sub_1B54C5BCC(_Unwind_Exception *a1)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Splice::Info@<X0>(kaldi::nnet1::Splice *this@<X0>, std::string *a2@<X8>)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "\n  frame_offsets ", 17);
  kaldi::operator<<<int>(v4, this + 12);
  std::stringbuf::str();
  v5 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v6 = v5;
  v7 = a2 + v5;
  if (v6 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v7 = a2->__r_.__value_.__r.__words[0] + a2->__r_.__value_.__l.__size_;
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a2, v7 + ~v8, 1uLL);
  v10 = *MEMORY[0x1E69E54E8];
  *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v11 = MEMORY[0x1E69E5548] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v14);
}

void sub_1B54C5D9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Splice::InitData(uint64_t a1, uint64_t *a2)
{
  memset(&v45, 0, sizeof(v45));
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v4 = a2 + 4;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_54;
    }

    kaldi::ReadToken(a2, 0, &v39);
    if (SHIBYTE(v41) < 0)
    {
      break;
    }

    if (HIBYTE(v41) != 12)
    {
      if (HIBYTE(v41) == 13)
      {
        v5 = &v39;
        goto LABEL_14;
      }

      goto LABEL_73;
    }

    if (v39 != 0x636556646165523CLL || v40 != 1047687028)
    {
      goto LABEL_46;
    }

LABEL_42:
    kaldi::ReadIntegerVector<int>(a2, 0, &v45, 0, 0, 0, 0);
LABEL_43:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (v40 == 12 && *v39 == 0x636556646165523CLL && v39[2] == 1047687028)
  {
    goto LABEL_42;
  }

  if (v40 != 13)
  {
    goto LABEL_47;
  }

  v5 = v39;
LABEL_14:
  v7 = *v5;
  v8 = *(v5 + 5);
  if (v7 == 0x6556646C6975423CLL && v8 == 0x3E726F7463655664)
  {
    while (1)
    {
      if ((*(v4 + *(*a2 - 24)) & 2) != 0)
      {
        goto LABEL_43;
      }

      __p = 0;
      v36 = 0;
      v37 = 0;
      kaldi::ReadToken(a2, 0, &__p);
      if (SHIBYTE(v37) < 0)
      {
        if (v36 != 14)
        {
          goto LABEL_29;
        }

        p_p = __p;
      }

      else
      {
        if (SHIBYTE(v37) != 14)
        {
          goto LABEL_29;
        }

        p_p = &__p;
      }

      v11 = *p_p;
      v12 = *(p_p + 6);
      if (v11 == 0x56646C6975422F3CLL && v12 == 0x3E726F7463655664)
      {
        v14 = 0;
        if (v37 < 0)
        {
          goto LABEL_35;
        }

LABEL_32:
        if ((v14 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
LABEL_29:
        memset(&v38, 0, sizeof(v38));
        kaldi::SplitStringToIntegers<int>(&__p, ":", 0, &v38);
        std::vector<std::vector<int>>::push_back[abi:ne200100](&v42, &v38);
        if (v38.__begin_)
        {
          v38.__end_ = v38.__begin_;
          operator delete(v38.__begin_);
        }

        v14 = 1;
        if ((v37 & 0x8000000000000000) == 0)
        {
          goto LABEL_32;
        }

LABEL_35:
        operator delete(__p);
        if ((v14 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }
  }

  if ((v41 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v41) == 12)
    {
LABEL_46:
      v16 = &v39;
      goto LABEL_49;
    }

    goto LABEL_73;
  }

LABEL_47:
  if (v40 != 12)
  {
    goto LABEL_73;
  }

  v16 = v39;
LABEL_49:
  v17 = *v16;
  v18 = *(v16 + 2);
  if (v17 != 0x6E6F706D6F432F3CLL || v18 != 1047817829)
  {
LABEL_73:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (v41 >= 0)
    {
      v31 = &v39;
    }

    else
    {
      v31 = v39;
    }

    if (v41 >= 0)
    {
      v32 = HIBYTE(v41);
    }

    else
    {
      v32 = v40;
    }

    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " (ReadVector|BuildVector)", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_54:
  v20 = v42;
  if (v43 != v42)
  {
    v21 = 0;
    do
    {
      v22 = v20 + 24 * v21;
      v23 = *v22;
      v24 = (*(v22 + 8) - *v22) >> 2;
      switch(v24)
      {
        case 3:
          v27 = *v23;
          v28 = v23[1];
          v29 = v23[2];
          while (1)
          {
            LODWORD(__p) = v27;
            if (v27 > v29)
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](&v45.__begin_, &__p);
            v27 = __p + v28;
          }

          break;
        case 2:
          v25 = v23[1];
          LODWORD(__p) = *v23;
          do
          {
            std::vector<int>::push_back[abi:ne200100](&v45.__begin_, &__p);
            v26 = __p;
            LODWORD(__p) = __p + 1;
          }

          while (v26 < v25);
          break;
        case 1:
          std::vector<int>::push_back[abi:ne200100](&v45.__begin_, v23);
          break;
        default:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error parsing <BuildVector>", 27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      ++v21;
      v20 = v42;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3) > v21);
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (v45.__end_ - v45.__begin_) >> 2, 1);
  memcpy(*(a1 + 56), v45.__begin_, v45.__end_ - v45.__begin_);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  __p = &v42;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }
}

void sub_1B54C6250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  __p = (v15 - 136);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 112);
  if (v17)
  {
    *(v15 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1B54C6258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1B54C6260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = *(v15 - 184);
  if (v16)
  {
    *(v15 - 176) = v16;
    operator delete(v16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0x1B54C6284);
}

void kaldi::nnet1::Splice::WriteData(uint64_t a1, void *a2, int a3)
{
  v5 = (a1 + 48);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 48));
  kaldi::CuArray<int>::CopyToVec(v5, &__p);
  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, __p.__end_ - __p.__begin_, __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1B54C6338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Splice::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::Splice::ReadData(uint64_t a1, void *a2, int a3)
{
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  kaldi::CuArray<int>::Resize(a1 + 48, (__p.__end_ - __p.__begin_) >> 2, 1);
  memcpy(*(a1 + 56), __p.__begin_, __p.__end_ - __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1B54C6444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B54C6518(_Unwind_Exception *a1)
{
  *v2 = v3;
  v5 = v2[3];
  if (v5)
  {
    v2[4] = v5;
    operator delete(v5);
  }

  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::CopyComponent::InitData(uint64_t a1, uint64_t *a2)
{
  memset(&v45, 0, sizeof(v45));
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v4 = a2 + 4;
  v40 = 0uLL;
  v41 = 0;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_53;
    }

    kaldi::ReadToken(a2, 0, &v40);
    if (SHIBYTE(v41) < 0)
    {
      if (*(&v40 + 1) == 12)
      {
        v14 = v40;
        if (*v40 != 0x636556646165523CLL || *(v40 + 8) != 1047687028)
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      if (*(&v40 + 1) != 13)
      {
        goto LABEL_76;
      }

      if (*v40 != 0x6556646C6975423CLL || *(v40 + 5) != 0x3E726F7463655664)
      {
        goto LABEL_76;
      }

      while (1)
      {
LABEL_18:
        if ((*(v4 + *(*a2 - 24)) & 2) != 0)
        {
          goto LABEL_47;
        }

        __p = 0;
        v37 = 0;
        v38 = 0;
        kaldi::ReadToken(a2, 0, &__p);
        if (SHIBYTE(v38) < 0)
        {
          if (v37 != 14)
          {
            goto LABEL_28;
          }

          p_p = __p;
        }

        else
        {
          if (SHIBYTE(v38) != 14)
          {
            goto LABEL_28;
          }

          p_p = &__p;
        }

        v8 = *p_p;
        v9 = *(p_p + 6);
        if (v8 == 0x56646C6975422F3CLL && v9 == 0x3E726F7463655664)
        {
          v11 = 0;
          if (v38 < 0)
          {
            goto LABEL_34;
          }

LABEL_31:
          if ((v11 & 1) == 0)
          {
            goto LABEL_47;
          }
        }

        else
        {
LABEL_28:
          memset(&v39, 0, sizeof(v39));
          kaldi::SplitStringToIntegers<int>(&__p, ":", 0, &v39);
          std::vector<std::vector<int>>::push_back[abi:ne200100](&v42, &v39);
          if (v39.__begin_)
          {
            v39.__end_ = v39.__begin_;
            operator delete(v39.__begin_);
          }

          v11 = 1;
          if ((v38 & 0x8000000000000000) == 0)
          {
            goto LABEL_31;
          }

LABEL_34:
          operator delete(__p);
          if ((v11 & 1) == 0)
          {
            goto LABEL_47;
          }
        }
      }
    }

    if (HIBYTE(v41) != 12)
    {
      if (HIBYTE(v41) == 13 && v40 == 0x6556646C6975423CLL && *(&v40 + 5) == 0x3E726F7463655664)
      {
        goto LABEL_18;
      }

      goto LABEL_76;
    }

    if (v40 != 0x636556646165523CLL || DWORD2(v40) != 1047687028)
    {
      break;
    }

LABEL_46:
    kaldi::ReadIntegerVector<int>(a2, 0, &v45, 0, 0, 0, 0);
LABEL_47:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v14 = &v40;
LABEL_48:
  v15 = *v14;
  v16 = *(v14 + 2);
  if (v15 != 0x6E6F706D6F432F3CLL || v16 != 1047817829)
  {
LABEL_76:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Unknown token ", 14);
    if (v41 >= 0)
    {
      v32 = &v40;
    }

    else
    {
      v32 = v40;
    }

    if (v41 >= 0)
    {
      v33 = HIBYTE(v41);
    }

    else
    {
      v33 = *(&v40 + 1);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v32, v33);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, " (ReadVector|BuildVector)", 25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
  }

LABEL_53:
  v18 = v42;
  if (v43 != v42)
  {
    v19 = 0;
    do
    {
      v20 = v18 + 24 * v19;
      v21 = *v20;
      v22 = (*(v20 + 8) - *v20) >> 2;
      switch(v22)
      {
        case 3:
          v25 = *v21;
          v26 = v21[1];
          v27 = v21[2];
          while (1)
          {
            LODWORD(__p) = v25;
            if (v25 > v27)
            {
              break;
            }

            std::vector<int>::push_back[abi:ne200100](&v45.__begin_, &__p);
            v25 = __p + v26;
          }

          break;
        case 2:
          v23 = v21[1];
          LODWORD(__p) = *v21;
          do
          {
            std::vector<int>::push_back[abi:ne200100](&v45.__begin_, &__p);
            v24 = __p;
            LODWORD(__p) = __p + 1;
          }

          while (v24 < v23);
          break;
        case 1:
          std::vector<int>::push_back[abi:ne200100](&v45.__begin_, v21);
          break;
        default:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Error parsing <BuildVector>", 27);
          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
      }

      ++v19;
      v18 = v42;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v43 - v42) >> 3) > v19);
  }

  begin = v45.__begin_;
  end = v45.__end_;
  if (v45.__begin_ == v45.__end_)
  {
    end = v45.__begin_;
  }

  else
  {
    v30 = v45.__begin_;
    do
    {
      --*v30++;
    }

    while (v30 != end);
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (end - begin) >> 2, 1);
  memcpy(*(a1 + 56), v45.__begin_, v45.__end_ - v45.__begin_);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  __p = &v42;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v45.__begin_)
  {
    v45.__end_ = v45.__begin_;
    operator delete(v45.__begin_);
  }
}

void sub_1B54C6A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 - 137) < 0)
  {
    operator delete(*(v15 - 160));
  }

  __p = (v15 - 136);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 112);
  if (v17)
  {
    *(v15 - 104) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1B54C6A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 - 137) < 0)
  {
    operator delete(*(v10 - 160));
  }

  a10 = (v10 - 136);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 - 112);
  if (v12)
  {
    *(v10 - 104) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1B54C6A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  v16 = *(v15 - 184);
  if (v16)
  {
    *(v15 - 176) = v16;
    operator delete(v16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  JUMPOUT(0x1B54C6A3CLL);
}

void kaldi::nnet1::CopyComponent::WriteData(uint64_t a1, void *a2, int a3)
{
  v5 = (a1 + 48);
  std::vector<int>::vector[abi:ne200100](&__p, *(a1 + 48));
  kaldi::CuArray<int>::CopyToVec(v5, &__p);
  begin = __p.__begin_;
  end = __p.__end_;
  v8 = __p.__begin_;
  if (__p.__begin_ != __p.__end_)
  {
    v9 = __p.__begin_;
    do
    {
      ++*v9++;
    }

    while (v9 != end);
    v8 = end;
  }

  kaldi::WriteIntegerByteArray<int>(a2, a3, 0, v8 - begin, begin);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1B54C6B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::CopyComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((kaldi::nnet1::CopyComponent::BackpropagateFnc(kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float>*,int)::warning_displayed & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "BackpropagateFnc", 16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Not implemented!", 16);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v7);
    }

    kaldi::nnet1::CopyComponent::BackpropagateFnc(kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float> const&,kaldi::CuMatrixBase<float>*,int)::warning_displayed = 1;
  }

  kaldi::CuMatrixBase<float>::SetZero(a5);
}

void kaldi::nnet1::CopyComponent::ReadData(uint64_t a1, void *a2, int a3)
{
  memset(&__p, 0, sizeof(__p));
  kaldi::ReadIntegerVector<int>(a2, a3, &__p, 0, 0, 0, 0);
  begin = __p.__begin_;
  end = __p.__end_;
  if (__p.__begin_ == __p.__end_)
  {
    end = __p.__begin_;
  }

  else
  {
    v6 = __p.__begin_;
    do
    {
      --*v6++;
    }

    while (v6 != end);
  }

  kaldi::CuArray<int>::Resize(a1 + 48, (end - begin) >> 2, 1);
  memcpy(*(a1 + 56), __p.__begin_, __p.__end_ - __p.__begin_);
  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }
}

void sub_1B54C6CA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::IdentityComponent::InitData(uint64_t a1, void *a2)
{
  result = std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  if ((*(a2 + *(*a2 - 24) + 32) & 2) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Unity component doesn't expect any tokens");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
  }

  return result;
}

void kaldi::nnet1::DuplicateComponent::InitData(_DWORD *a1, uint64_t *a2)
{
  a1[14] = 1;
  v4 = a1 + 14;
  v30 = 0uLL;
  v31 = 0;
  v5 = a2 + 4;
  v6 = a1 + 13;
  while (1)
  {
    if ((*(v5 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_48;
    }

    kaldi::ReadToken(a2, 0, &v30);
    if (SHIBYTE(v31) < 0)
    {
      break;
    }

    if (HIBYTE(v31) != 15)
    {
      if (HIBYTE(v31) != 16)
      {
        goto LABEL_38;
      }

      if (v30 != 0x6163696C7075443CLL || *(&v30 + 1) != 0x3E74726174536574)
      {
        goto LABEL_55;
      }

LABEL_11:
      LODWORD(v29[0]) = 0;
      kaldi::ReadBasicType<int>(a2, 0, v29);
      a1[12] = v29[0];
      goto LABEL_36;
    }

    v13 = v30 == 0x6163696C7075443CLL && *(&v30 + 7) == 0x3E657A6953657461;
    v10 = v6;
    if (!v13)
    {
      v12 = &v30;
      goto LABEL_30;
    }

LABEL_35:
    kaldi::ReadBasicType<int>(a2, 0, v10);
LABEL_36:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (*(&v30 + 1) == 15)
  {
    v9 = *v30 == 0x6163696C7075443CLL && *(v30 + 7) == 0x3E657A6953657461;
    v10 = v6;
    if (v9)
    {
      goto LABEL_35;
    }
  }

  else if (*(&v30 + 1) == 16 && *v30 == 0x6163696C7075443CLL && *(v30 + 8) == 0x3E74726174536574)
  {
    goto LABEL_11;
  }

  v11 = *(&v30 + 1);
  if (*(&v30 + 1) != 15)
  {
    goto LABEL_41;
  }

  v12 = v30;
LABEL_30:
  v14 = *v12;
  v15 = *(v12 + 7);
  v16 = v14 == 0x6C7075446D754E3CLL && v15 == 0x3E7365746163696CLL;
  v10 = v4;
  if (v16)
  {
    goto LABEL_35;
  }

  if ((v31 & 0x8000000000000000) == 0)
  {
LABEL_38:
    if (HIBYTE(v31) == 12)
    {
      v17 = &v30;
      goto LABEL_43;
    }

    goto LABEL_55;
  }

  v11 = *(&v30 + 1);
LABEL_41:
  if (v11 != 12)
  {
    goto LABEL_55;
  }

  v17 = v30;
LABEL_43:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
LABEL_55:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Unknown token ", 14);
    if (v31 >= 0)
    {
      v25 = &v30;
    }

    else
    {
      v25 = v30;
    }

    if (v31 >= 0)
    {
      v26 = HIBYTE(v31);
    }

    else
    {
      v26 = *(&v30 + 1);
    }

    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " (DuplicateStart|DuplicateSize|NumDuplicates)", 45);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
  }

LABEL_48:
  v21 = a1[13];
  v22 = a1[2];
  if (v22 + a1[14] * v21 != a1[3])
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Requested duplication doesn't match the output and input sizes", 62);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
  }

  if (v21 < 0 || (v23 = a1[12], v23 < 0) || v23 + v21 > v22)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Duplication parameters out of range", 35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v29);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_1B54C727C(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::DuplicateComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  v6 = a1[14];

  return kaldi::WriteBasicType<int>(a2, a3, v6);
}

void kaldi::nnet1::DuplicateComponent::PropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  v7 = *(a3 + 28);
  v8 = *(a3 + 32);
  LODWORD(v19[2]) = a1[2];
  *(&v19[2] + 4) = *(a3 + 20);
  HIDWORD(v19[3]) = v7;
  v19[4] = v8;
  v19[0] = &unk_1F2CFA908;
  v19[1] = v6;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v19, a2, 111);
  if (a1[13] >= 1)
  {
    v9 = a1[12];
    v10 = *(a2 + 8) + 4 * v9;
    LODWORD(v9) = *(a2 + 28) - v9;
    v11 = *(a2 + 32);
    LODWORD(v18[2]) = a1[13];
    *(&v18[2] + 4) = *(a2 + 20);
    HIDWORD(v18[3]) = v9;
    v18[4] = v11;
    v18[0] = &unk_1F2CFA908;
    v18[1] = v10;
    if (a1[14] >= 1)
    {
      v12 = 0;
      v13 = a1[2];
      do
      {
        v14 = *(a3 + 8) + 4 * v13;
        v15 = *(a3 + 28) - v13;
        v16 = *(a3 + 32);
        LODWORD(v17[2]) = a1[13];
        *(&v17[2] + 4) = *(a3 + 20);
        HIDWORD(v17[3]) = v15;
        v17[4] = v16;
        v17[0] = &unk_1F2CFA908;
        v17[1] = v14;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(v17, v18, 111);
        v13 += a1[13];
        v17[0] = &unk_1F2CFA908;
        memset(&v17[1], 0, 32);
        quasar::Bitmap::~Bitmap(v17);
        ++v12;
      }

      while (v12 < a1[14]);
    }

    v18[0] = &unk_1F2CFA908;
    memset(&v18[1], 0, 32);
    quasar::Bitmap::~Bitmap(v18);
  }

  v19[0] = &unk_1F2CFA908;
  memset(&v19[1], 0, 32);
  quasar::Bitmap::~Bitmap(v19);
}

void sub_1B54C74D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::DuplicateComponent::BackpropagateFnc(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 + 8);
  v9 = *(a4 + 28);
  v10 = *(a4 + 32);
  LODWORD(v21[1]) = a1[2];
  *(&v21[1] + 4) = *(a4 + 20);
  HIDWORD(v21[2]) = v9;
  v21[3] = v10;
  v20 = &unk_1F2CFA908;
  v21[0] = v8;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, &v20, 111);
  v20 = &unk_1F2CFA908;
  memset(v21, 0, sizeof(v21));
  quasar::Bitmap::~Bitmap(&v20);
  if (a1[13] >= 1)
  {
    v11 = a1[12];
    v12 = *(a5 + 8) + 4 * v11;
    LODWORD(v11) = *(a5 + 28) - v11;
    v13 = *(a5 + 32);
    LODWORD(v21[1]) = a1[13];
    *(&v21[1] + 4) = *(a5 + 20);
    HIDWORD(v21[2]) = v11;
    v21[3] = v13;
    v20 = &unk_1F2CFA908;
    v21[0] = v12;
    if (a1[14] >= 1)
    {
      v14 = 0;
      v15 = a1[2];
      do
      {
        v16 = *(a4 + 8) + 4 * v15;
        v17 = *(a4 + 28) - v15;
        v18 = *(a4 + 32);
        LODWORD(v19[2]) = a1[13];
        *(&v19[2] + 4) = *(a4 + 20);
        HIDWORD(v19[3]) = v17;
        v19[4] = v18;
        v19[0] = &unk_1F2CFA908;
        v19[1] = v16;
        kaldi::CuMatrixBase<float>::AddMat(&v20, v19, 111, 1.0, 1.0);
        v15 += a1[13];
        v19[0] = &unk_1F2CFA908;
        memset(&v19[1], 0, 32);
        quasar::Bitmap::~Bitmap(v19);
        ++v14;
      }

      while (v14 < a1[14]);
    }

    v20 = &unk_1F2CFA908;
    memset(v21, 0, sizeof(v21));
    quasar::Bitmap::~Bitmap(&v20);
  }
}

void sub_1B54C770C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::DuplicateComponent::ReadData(_DWORD *a1, void *a2, int a3)
{
  v7 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v7);
  a1[12] = v7;
  kaldi::ReadBasicType<int>(a2, a3, &v7);
  a1[13] = v7;
  result = kaldi::ReadBasicType<int>(a2, a3, &v7);
  a1[14] = v7;
  return result;
}

uint64_t kaldi::nnet1::AddShift::Info(kaldi::nnet1::AddShift *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*this + 168))(this, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n shift_data", 12);
  kaldi::nnet1::MomentStatistics<float>(this + 88);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B54C7A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AddShift::InfoGradient(kaldi::nnet1::AddShift *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "\n  shift_data_grad");
  kaldi::nnet1::MomentStatistics<float>(this + 15);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v17, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v18, ", lr-coef ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v19, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B54C7B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::AddShift::InitData(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 168), &v30);
  v28 = 0uLL;
  v29 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_68;
    }

    kaldi::ReadToken(a2, 0, &v28);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      break;
    }

    if (*(&v28 + 1) == 11 && *v28 == 0x72615074696E493CLL && *(v28 + 3) == 0x3E6D617261507469)
    {
      goto LABEL_43;
    }

    if (*(&v28 + 1) != 15 || (*v28 == 0x61526E7261654C3CLL ? (v7 = *(v28 + 7) == 0x3E66656F43657461) : (v7 = 0), v8 = (a1 + 176), !v7))
    {
      if (*(&v28 + 1) != 9)
      {
        if (*(&v28 + 1) != 18)
        {
          goto LABEL_59;
        }

        v9 = *v28 == 0x6E6569646172473CLL && *(v28 + 8) == 0x7079546D726F4E74;
        if (!v9 || *(v28 + 16) != 15973)
        {
          goto LABEL_59;
        }

        goto LABEL_44;
      }

      v11 = v28;
      goto LABEL_46;
    }

LABEL_56:
    kaldi::ReadBasicType<float>(a2, 0, v8);
LABEL_57:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v29) <= 0xBu)
  {
    if (HIBYTE(v29) == 9)
    {
      v11 = &v28;
LABEL_46:
      v13 = *v11;
      v14 = *(v11 + 8);
      v15 = v13 == 0x6461724778614D3CLL && v14 == 62;
      v8 = (a1 + 172);
      if (!v15)
      {
        if (v29 < 0)
        {
LABEL_59:
          if (*(&v28 + 1) == 12)
          {
            v17 = v28;
            goto LABEL_63;
          }
        }

LABEL_73:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Unknown token ", 14);
        if (v29 >= 0)
        {
          v23 = &v28;
        }

        else
        {
          v23 = v28;
        }

        if (v29 >= 0)
        {
          v24 = HIBYTE(v29);
        }

        else
        {
          v24 = *(&v28 + 1);
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (InitParam|LearnRateCoef|GradientNormType|MaxGrad)", 51);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
      }

      goto LABEL_56;
    }

    if (HIBYTE(v29) != 11)
    {
      goto LABEL_73;
    }

    if (v28 != 0x72615074696E493CLL || *(&v28 + 3) != 0x3E6D617261507469)
    {
      goto LABEL_73;
    }

LABEL_43:
    v8 = &v31;
    goto LABEL_56;
  }

  if (HIBYTE(v29) == 15)
  {
    v16 = v28 == 0x61526E7261654C3CLL && *(&v28 + 7) == 0x3E66656F43657461;
    v8 = (a1 + 176);
    if (!v16)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (HIBYTE(v29) == 18)
  {
    if (v28 != 0x6E6569646172473CLL || *(&v28 + 1) != 0x7079546D726F4E74 || v29 != 15973)
    {
      goto LABEL_73;
    }

LABEL_44:
    kaldi::ReadToken(a2, 0, &v30);
    goto LABEL_57;
  }

  if (HIBYTE(v29) != 12)
  {
    goto LABEL_73;
  }

  v17 = &v28;
LABEL_63:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
    goto LABEL_73;
  }

LABEL_68:
  *(a1 + 168) = kaldi::nnet1::Component::MarkerToGradientNormType(&v30);
  kaldi::CuVector<float>::Resize(a1 + 88, *(a1 + 8), 0);
  v21.i32[0] = v31;
  kaldi::CuVectorBase<float>::Set(a1 + 88, v21);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_1B54C7FD8(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::AddShift::WriteData(uint64_t a1, void *a2, int a3)
{
  v5 = a1 + 88;
  (*(*a1 + 168))(a1);

  kaldi::CuVectorBase<float>::Write(v5, a2, a3);
}

void *kaldi::nnet1::AddShift::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 168), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B54C8148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **kaldi::nnet1::AddShift::GetParams(uint64_t a1, void **a2)
{
  kaldi::Vector<float>::Resize(a2, *(a1 + 8), 0);

  return kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 88), a2);
}

void *kaldi::nnet1::AddShift::SetParams(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 88);
  (*(*a1 + 176))(a1);

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v3, a2);
}

void *kaldi::nnet1::AddShift::PerturbParams(kaldi::nnet1::AddShift *this, float a2)
{
  v3 = *(this + 26);
  v6[0] = &unk_1F2D3AC18;
  memset(&v6[1], 0, 24);
  kaldi::CuVector<float>::Resize(v6, v3, 1);
  kaldi::CuVectorBase<float>::SetRandn(v6);
  *&v4 = a2;
  kaldi::CuVectorBase<float>::AddVec(v4, 1.0);
  return kaldi::CuVector<float>::~CuVector(v6);
}

uint64_t kaldi::nnet1::AddShift::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  ((*v8)[29])(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v8[15], a4);
  v10 = (*v8)[1];

  return v10(v8);
}

void kaldi::nnet1::AddShift::AccumGradients(kaldi::nnet1::AddShift *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::AddShift::EnsureCorrs(a1);
  *(*(a1 + 23) + 4 * a5) = *(a2 + 20);
  v10 = *(a1 + 15) + 32 * a5;
  *(v10 + 24) = a4;

  kaldi::CuVectorBase<float>::AddRowSumMat(v10, a3);
}

uint64_t kaldi::nnet1::AddShift::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 172) = a3;
  *(result + 168) = a2;
  *(result + 208) = 0;
  return result;
}

void kaldi::nnet1::AddShift::NormalizeGradients(kaldi::nnet1::AddShift *this, float a2, int a3)
{
  v3 = *(this + 42);
  if (v3 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 15) + 32 * a3, *(this + 18) + 32 * a3, a2);
    }
  }

  else if (v3 == 2)
  {
    if (a2 > 0.0)
    {
      if (*(this + 84))
      {
        a2 = *(*(this + 23) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 15) + 32 * a3, (*(this + 18) + 32 * a3), a2);
    }
  }

  else if (v3 == 1 && a2 > 0.0)
  {
    if (*(this + 84))
    {
      a2 = *(*(this + 23) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 15) + 32 * a3, a2);
  }
}

void kaldi::nnet1::AddShift::UpdateWeights(kaldi::nnet1::AddShift *this, void *a2, int a3)
{
  kaldi::nnet1::AddShift::EnsureCorrs(this);
  v7 = *(this + 14);
  v8 = *(this + 20);
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(this + 20);
  }

  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9;
  *(*(this + 15) + 32 * v9 + 24) = a2;
  *(*(this + 18) + 32 * v9 + 24) = a2;
  if (v9 == v8)
  {
    v6.n128_u32[0] = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v6.n128_f64[0], 0.0);
    if (*(this + 20) > 1)
    {
      v11 = 1;
      v12 = 32;
      do
      {
        v6.n128_u32[0] = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v6.n128_f64[0], 1.0);
        ++v11;
        v12 += 32;
      }

      while (v11 < *(this + 20));
    }

    v13 = *(this + 23);
    v13[v10] = 0;
    if (v8 >= 1)
    {
      v14 = 0;
      v15 = v13;
      do
      {
        v16 = *v15++;
        v14 += v16;
        v13[v10] = v14;
        --v8;
      }

      while (v8);
    }
  }

  if (*(this + 84) == 1)
  {
    v7 = v7 / *(*(this + 23) + 4 * v10);
  }

  if (*(this + 43) >= 0.0)
  {
    v6 = (*(*this + 248))(this, v10);
  }

  *(this + 14) = a2;
  v6.n128_f32[0] = -(v7 * *(this + 44));
  kaldi::CuVectorBase<float>::AddVec(v6.n128_f64[0], 1.0);
  v17 = *(this + 23);
  if (v10 == *(this + 20))
  {
    v18 = *(this + 24);
    if (v17 != v18)
    {

      bzero(v17, v18 - v17);
    }
  }

  else
  {
    *&v17[4 * v10] = 0;
  }
}

uint64_t kaldi::nnet1::Rescale::Info(kaldi::nnet1::Rescale *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*this + 168))(this, &v8, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, "\n scale_data", 12);
  kaldi::nnet1::MomentStatistics<float>(this + 88);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v8 = *MEMORY[0x1E69E54E8];
  *(&v8 + *(v8 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v9 = MEMORY[0x1E69E5548] + 16;
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  v9 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v10);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v12);
}

void sub_1B54C8924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a15);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rescale::InfoGradient(kaldi::nnet1::Rescale *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v17, "\n  scale_data_grad");
  kaldi::nnet1::MomentStatistics<float>(this + 15);
  if ((v16 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = v15[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v5 = v16;
  }

  else
  {
    v5 = v15[1];
  }

  v6 = std::string::append(&v17, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v18, ", lr-coef ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v14 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v14 & 0x80u) == 0)
  {
    v11 = v14;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::string::append(&v19, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_1B54C8AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Rescale::InitData(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 216), &v30);
  v28 = 0uLL;
  v29 = 0;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_68;
    }

    kaldi::ReadToken(a2, 0, &v28);
    if ((SHIBYTE(v29) & 0x80000000) == 0)
    {
      break;
    }

    if (*(&v28 + 1) == 11 && *v28 == 0x72615074696E493CLL && *(v28 + 3) == 0x3E6D617261507469)
    {
      goto LABEL_43;
    }

    if (*(&v28 + 1) != 15 || (*v28 == 0x61526E7261654C3CLL ? (v7 = *(v28 + 7) == 0x3E66656F43657461) : (v7 = 0), v8 = (a1 + 224), !v7))
    {
      if (*(&v28 + 1) != 9)
      {
        if (*(&v28 + 1) != 18)
        {
          goto LABEL_59;
        }

        v9 = *v28 == 0x6E6569646172473CLL && *(v28 + 8) == 0x7079546D726F4E74;
        if (!v9 || *(v28 + 16) != 15973)
        {
          goto LABEL_59;
        }

        goto LABEL_44;
      }

      v11 = v28;
      goto LABEL_46;
    }

LABEL_56:
    kaldi::ReadBasicType<float>(a2, 0, v8);
LABEL_57:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v29) <= 0xBu)
  {
    if (HIBYTE(v29) == 9)
    {
      v11 = &v28;
LABEL_46:
      v13 = *v11;
      v14 = *(v11 + 8);
      v15 = v13 == 0x6461724778614D3CLL && v14 == 62;
      v8 = (a1 + 220);
      if (!v15)
      {
        if (v29 < 0)
        {
LABEL_59:
          if (*(&v28 + 1) == 12)
          {
            v17 = v28;
            goto LABEL_63;
          }
        }

LABEL_73:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v27);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Unknown token ", 14);
        if (v29 >= 0)
        {
          v23 = &v28;
        }

        else
        {
          v23 = v28;
        }

        if (v29 >= 0)
        {
          v24 = HIBYTE(v29);
        }

        else
        {
          v24 = *(&v28 + 1);
        }

        v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v23, v24);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", a typo in config?", 19);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " (InitParam)", 12);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v27);
      }

      goto LABEL_56;
    }

    if (HIBYTE(v29) != 11)
    {
      goto LABEL_73;
    }

    if (v28 != 0x72615074696E493CLL || *(&v28 + 3) != 0x3E6D617261507469)
    {
      goto LABEL_73;
    }

LABEL_43:
    v8 = &v31;
    goto LABEL_56;
  }

  if (HIBYTE(v29) == 15)
  {
    v16 = v28 == 0x61526E7261654C3CLL && *(&v28 + 7) == 0x3E66656F43657461;
    v8 = (a1 + 224);
    if (!v16)
    {
      goto LABEL_73;
    }

    goto LABEL_56;
  }

  if (HIBYTE(v29) == 18)
  {
    if (v28 != 0x6E6569646172473CLL || *(&v28 + 1) != 0x7079546D726F4E74 || v29 != 15973)
    {
      goto LABEL_73;
    }

LABEL_44:
    kaldi::ReadToken(a2, 0, &v30);
    goto LABEL_57;
  }

  if (HIBYTE(v29) != 12)
  {
    goto LABEL_73;
  }

  v17 = &v28;
LABEL_63:
  v18 = *v17;
  v19 = *(v17 + 2);
  if (v18 != 0x6E6F706D6F432F3CLL || v19 != 1047817829)
  {
    goto LABEL_73;
  }

LABEL_68:
  *(a1 + 216) = kaldi::nnet1::Component::MarkerToGradientNormType(&v30);
  kaldi::CuVector<float>::Resize(a1 + 88, *(a1 + 8), 0);
  v21.i32[0] = v31;
  kaldi::CuVectorBase<float>::Set(a1 + 88, v21);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }
}

void sub_1B54C8EE4(_Unwind_Exception *a1)
{
  if (*(v1 - 121) < 0)
  {
    operator delete(*(v1 - 144));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rescale::WriteData(uint64_t a1, void *a2, int a3)
{
  v5 = a1 + 88;
  (*(*a1 + 168))(a1);

  kaldi::CuVectorBase<float>::Write(v5, a2, a3);
}

uint64_t kaldi::nnet1::Rescale::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(a5, a4, 111);

  return kaldi::CuMatrixBase<float>::MulColsVec(a5, a1 + 88);
}

void *kaldi::nnet1::Rescale::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 216), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B54C9090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **kaldi::nnet1::Rescale::GetParams(uint64_t a1, void **a2)
{
  kaldi::Vector<float>::Resize(a2, *(a1 + 8), 0);

  return kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 88), a2);
}

void *kaldi::nnet1::Rescale::SetParams(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 88);
  (*(*a1 + 176))(a1);

  return kaldi::CuVectorBase<float>::CopyFromVec<float>(v3, a2);
}

void *kaldi::nnet1::Rescale::PerturbParams(kaldi::nnet1::Rescale *this, float a2)
{
  v3 = *(this + 26);
  v6[0] = &unk_1F2D3AC18;
  memset(&v6[1], 0, 24);
  kaldi::CuVector<float>::Resize(v6, v3, 1);
  kaldi::CuVectorBase<float>::SetRandn(v6);
  *&v4 = a2;
  kaldi::CuVectorBase<float>::AddVec(v4, 1.0);
  return kaldi::CuVector<float>::~CuVector(v6);
}

uint64_t kaldi::nnet1::Rescale::GetGradient(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 16))(a1);
  ((*v8)[29])(v8, a2, a3, 0, 0);
  v9 = (*(*a1 + 176))(a1);
  kaldi::Vector<float>::Resize(a4, v9, 1);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v8[15], a4);
  v10 = (*v8)[1];

  return v10(v8);
}

void kaldi::nnet1::Rescale::AccumGradients(int32x2_t *a1, uint64_t a2, int32x2_t *a3, uint64_t a4, int a5)
{
  kaldi::nnet1::Rescale::EnsureCorrs(a1);
  v10 = *&a1[15] + 32 * a5;
  *(v10 + 24) = a4;
  kaldi::CuVectorBase<float>::SetZero(v10);
  *(*&a1[29] + 4 * a5) = *(a2 + 20);
  a1[25] = a4;
  kaldi::CuMatrix<float>::operator=(a1 + 21, a3);
  kaldi::CuMatrixBase<float>::MulElements(&a1[21], a2);
  v11 = *&a1[15] + 32 * a5;

  kaldi::CuVectorBase<float>::AddRowSumMat(v11, &a1[21]);
}

uint64_t kaldi::nnet1::Rescale::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 220) = a3;
  *(result + 216) = a2;
  *(result + 256) = 0;
  return result;
}

void kaldi::nnet1::Rescale::NormalizeGradients(kaldi::nnet1::Rescale *this, float a2, int a3)
{
  v3 = *(this + 54);
  if (v3 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 15) + 32 * a3, *(this + 18) + 32 * a3, a2);
    }
  }

  else if (v3 == 2)
  {
    if (a2 > 0.0)
    {
      if (*(this + 84))
      {
        a2 = *(*(this + 29) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 15) + 32 * a3, (*(this + 18) + 32 * a3), a2);
    }
  }

  else if (v3 == 1 && a2 > 0.0)
  {
    if (*(this + 84))
    {
      a2 = *(*(this + 29) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 15) + 32 * a3, a2);
  }
}

void kaldi::nnet1::Rescale::UpdateWeights(kaldi::nnet1::Rescale *this, void *a2, int a3)
{
  kaldi::nnet1::Rescale::EnsureCorrs(this);
  v7 = *(this + 14);
  v8 = *(this + 20);
  if (a3 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *(this + 20);
  }

  if (v8 == 1)
  {
    v9 = 0;
  }

  v10 = v9;
  *(*(this + 15) + 32 * v9 + 24) = a2;
  *(*(this + 18) + 32 * v9 + 24) = a2;
  if (v9 == v8)
  {
    v6.n128_u32[0] = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v6.n128_f64[0], 0.0);
    if (*(this + 20) > 1)
    {
      v11 = 1;
      v12 = 32;
      do
      {
        v6.n128_u32[0] = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v6.n128_f64[0], 1.0);
        ++v11;
        v12 += 32;
      }

      while (v11 < *(this + 20));
    }

    v13 = *(this + 29);
    v13[v10] = 0;
    if (v8 >= 1)
    {
      v14 = 0;
      v15 = v13;
      do
      {
        v16 = *v15++;
        v14 += v16;
        v13[v10] = v14;
        --v8;
      }

      while (v8);
    }
  }

  if (*(this + 84) == 1)
  {
    v7 = v7 / *(*(this + 29) + 4 * v10);
  }

  if (*(this + 55) >= 0.0)
  {
    v6 = (*(*this + 248))(this, v10);
  }

  *(this + 14) = a2;
  v6.n128_f32[0] = -(v7 * *(this + 56));
  kaldi::CuVectorBase<float>::AddVec(v6.n128_f64[0], 1.0);
  v17 = *(this + 29);
  if (v10 == *(this + 20))
  {
    v18 = *(this + 30);
    if (v17 != v18)
    {

      bzero(v17, v18 - v17);
    }
  }

  else
  {
    *&v17[4 * v10] = 0;
  }
}

void sub_1B54C9728(_Unwind_Exception *a1)
{
  kaldi::Matrix<float>::~Matrix(v4);
  *v2 = v3;
  v6 = v2[3];
  if (v6)
  {
    v2[4] = v6;
    operator delete(v6);
  }

  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::KlHmm::PropagateFnc(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[13].i32[1])
  {
    kaldi::Matrix<float>::Matrix(v14, *(a2 + 20), *(a2 + 16), 0, 0);
    kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, v14, 111);
    v13[2] = 0;
    v13[0] = v14[0];
    v13[1] = kaldi::MatrixBase<float>::NumCols(v14);
    v6 = kaldi::VectorBase<float>::Sum(v13);
    kaldi::Matrix<float>::Matrix<double>(v13, &a1[6], 111, v6);
    v7 = kaldi::MatrixBase<float>::NumRows(&a1[6]);
    memset(v15, 0, 24);
    kaldi::Vector<float>::Resize(v15, v7, 0);
    kaldi::VectorBase<float>::AddColSumMat(v15, v13, 1.0, 1.0);
    kaldi::VectorBase<float>::ApplyFloor(v15, 1.0e-20);
    kaldi::VectorBase<float>::InvertElements(v15);
    kaldi::MatrixBase<float>::MulRowsVec(v13, v15);
    kaldi::MatrixBase<float>::ApplyFloor(v13, 1.0e-20);
    kaldi::MatrixBase<float>::InvertElements(v13);
    kaldi::MatrixBase<float>::ApplyLog(v13);
    v8 = kaldi::MatrixBase<float>::NumRows(&a1[6]);
    v9 = kaldi::MatrixBase<float>::NumCols(&a1[6]);
    kaldi::CuMatrix<float>::Resize(a1 + 11, v8, v9, 0, 0);
    kaldi::CuMatrixBase<float>::CopyFromMat(&a1[11], v13, 111);
    kaldi::Vector<float>::Destroy(v15);
    kaldi::Matrix<float>::~Matrix(v13);
    kaldi::Matrix<float>::~Matrix(v14);
  }

  kaldi::Matrix<float>::Matrix(v15, *(a2 + 20), *(a2 + 16), 0, 0);
  kaldi::CuMatrixBase<float>::CopyToMat<float>(a2, v15, 111);
  kaldi::MatrixBase<float>::ApplyFloor(v15, 1.0e-20);
  kaldi::MatrixBase<float>::ApplyLog(v15);
  kaldi::CuMatrix<float>::CuMatrix(v14, *(a2 + 20), *(a2 + 16), 0, 0, 0);
  kaldi::CuMatrixBase<float>::CopyFromMat(v14, v15, 111);
  kaldi::CuMatrix<float>::CuMatrix(v13, a2, 111);
  kaldi::CuMatrixBase<float>::MulElements(v13, v14);
  v10 = *(a2 + 20);
  v12[0] = &unk_1F2D3AC18;
  memset(&v12[1], 0, 24);
  kaldi::CuVector<float>::Resize(v12, v10, 0);
  kaldi::CuVectorBase<float>::AddColSumMat(v12, v13);
  kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, &a1[11], 112);
  kaldi::CuMatrixBase<float>::AddVecToCols(a3, v12, 1.0, 1.0);
  kaldi::CuMatrixBase<float>::Scale(a3, -1.0);
  kaldi::CuVector<float>::~CuVector(v12);
  kaldi::CuMatrix<float>::~CuMatrix(v13);
  kaldi::CuMatrix<float>::~CuMatrix(v14);
  return kaldi::Matrix<float>::~Matrix(v15);
}

void sub_1B54C9A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::KlHmm::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

uint64_t kaldi::nnet1::KlHmm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  kaldi::Matrix<double>::Read(a1 + 48, a2, a3, 0, 0);
  kaldi::MatrixBase<float>::NumRows(a1 + 48);

  return kaldi::MatrixBase<float>::NumCols(a1 + 48);
}

void kaldi::nnet1::Rbm::InitData(int32x2_t *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v112 = 0;
  v113 = 0;
  v114 = 0;
  v109 = 0;
  v110 = 0;
  v111 = 0;
  v107 = 0;
  v108 = 0;
  v106 = 1036831949;
  v105 = -1;
  v102 = 0;
  v103 = 0;
  v6 = a2 + 4;
  v104 = 0;
  v100 = 0uLL;
  v101 = 0;
  while (1)
  {
    if ((*(v6 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_143;
    }

    kaldi::ReadToken(a2, 0, &v100);
    if (SHIBYTE(v101) < 0)
    {
      if (*(&v100 + 1) > 16)
      {
        if (*(&v100 + 1) != 17)
        {
          if (*(&v100 + 1) != 18)
          {
            if (*(&v100 + 1) != 25)
            {
              goto LABEL_263;
            }

LABEL_73:
            if (*v100 != 0x656C62697369563CLL || *(v100 + 8) != 0x6E766D4373616942 || *(v100 + 16) != 0x656D616E656C6946 || *(v100 + 24) != 62)
            {
              break;
            }

            v26 = &v102;
LABEL_101:
            kaldi::ReadToken(a2, 0, v26);
            goto LABEL_121;
          }

          if (*v100 != 0x656C62697369563CLL || *(v100 + 8) != 0x676E615273616942 || *(v100 + 16) != 15973)
          {
            goto LABEL_263;
          }

          goto LABEL_94;
        }

        if (*v100 != 0x656C62697369563CLL || *(v100 + 8) != 0x6E61654D73616942 || *(v100 + 16) != 62)
        {
          if (*v100 != 0x426E65646469483CLL || *(v100 + 8) != 0x65676E6152736169 || *(v100 + 16) != 62)
          {
            goto LABEL_136;
          }

          goto LABEL_117;
        }

LABEL_118:
        v13 = &v108 + 1;
        goto LABEL_120;
      }

      if (*(&v100 + 1) == 12)
      {
        v29 = v100;
        if (*v100 == 0x546E65646469483CLL && *(v100 + 8) == 1046835321)
        {
LABEL_100:
          v26 = &v109;
          goto LABEL_101;
        }

        goto LABEL_125;
      }

      if (*(&v100 + 1) != 13)
      {
        if (*(&v100 + 1) != 16)
        {
          goto LABEL_263;
        }

        if (*v100 != 0x426E65646469483CLL || *(v100 + 8) != 0x3E6E61654D736169)
        {
          goto LABEL_263;
        }

        goto LABEL_41;
      }

      v11 = v100;
      if (*v100 == 0x656C62697369563CLL && *(v100 + 5) == 0x3E65707954656C62)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (HIBYTE(v101) > 0xFu)
      {
        if (HIBYTE(v101) != 16)
        {
          if (HIBYTE(v101) != 17)
          {
            if (HIBYTE(v101) != 18)
            {
              goto LABEL_263;
            }

            v7 = v100 == 0x656C62697369563CLL && *(&v100 + 1) == 0x676E615273616942;
            if (!v7 || v101 != 15973)
            {
              goto LABEL_263;
            }

LABEL_94:
            v13 = &v108;
            goto LABEL_120;
          }

          if (v100 != 0x656C62697369563CLL || *(&v100 + 1) != 0x6E61654D73616942 || v101 != 62)
          {
            if (v100 != 0x426E65646469483CLL || *(&v100 + 1) != 0x65676E6152736169 || v101 != 62)
            {
              goto LABEL_263;
            }

LABEL_117:
            v13 = &v107;
            goto LABEL_120;
          }

          goto LABEL_118;
        }

        if (v100 != 0x426E65646469483CLL || *(&v100 + 1) != 0x3E6E61654D736169)
        {
          goto LABEL_263;
        }

LABEL_41:
        v13 = &v107 + 1;
LABEL_120:
        kaldi::ReadBasicType<float>(a2, 0, v13);
        goto LABEL_121;
      }

      if (HIBYTE(v101) == 12)
      {
        if (v100 == 0x546E65646469483CLL && DWORD2(v100) == 1046835321)
        {
          goto LABEL_100;
        }

        goto LABEL_124;
      }

      if (HIBYTE(v101) != 13)
      {
        goto LABEL_263;
      }

      if (v100 == 0x656C62697369563CLL && *(&v100 + 5) == 0x3E65707954656C62)
      {
LABEL_85:
        v26 = &v112;
        goto LABEL_101;
      }

      v11 = &v100;
    }

    v20 = *v11;
    v21 = *(v11 + 5);
    if (v20 == 0x74536D617261503CLL && v21 == 0x3E7665646474536DLL)
    {
      v13 = &v106;
      goto LABEL_120;
    }

    if (v101 < 0 && *(&v100 + 1) == 25)
    {
      goto LABEL_73;
    }

    if ((v101 & 0x8000000000000000) == 0)
    {
      if (HIBYTE(v101) != 12)
      {
        goto LABEL_263;
      }

LABEL_124:
      v29 = &v100;
      goto LABEL_125;
    }

    if (*(&v100 + 1) != 12)
    {
      goto LABEL_136;
    }

    v29 = v100;
LABEL_125:
    v35 = *v29;
    v36 = *(v29 + 2);
    if (v35 != 0x536D6F646E61523CLL || v36 != 1046766949)
    {
      break;
    }

    kaldi::ReadBasicType<int>(a2, 0, &v105);
LABEL_121:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if ((v101 & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v101) == 12)
    {
      v38 = &v100;
      goto LABEL_138;
    }

    goto LABEL_263;
  }

LABEL_136:
  if (*(&v100 + 1) != 12)
  {
    goto LABEL_263;
  }

  v38 = v100;
LABEL_138:
  v39 = *v38;
  v40 = *(v38 + 2);
  if (v39 != 0x6E6F706D6F432F3CLL || v40 != 1047817829)
  {
LABEL_263:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
    v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "Unknown token ", 14);
    if (v101 >= 0)
    {
      v78 = &v100;
    }

    else
    {
      v78 = v100;
    }

    if (v101 >= 0)
    {
      v79 = HIBYTE(v101);
    }

    else
    {
      v79 = *(&v100 + 1);
    }

    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v78, v79);
    v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, " Typo in config?", 16);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, " (VisibleType|HiddenType|VisibleBiasMean|VisibleBiasRange|HiddenBiasMean|HiddenBiasRange|ParamStddev|VisibleBiasCmvnFilename|RandomSeed)", 136);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
  }

LABEL_143:
  if (SHIBYTE(v114) < 0)
  {
    if (v113 > 7)
    {
      if (v113 == 8)
      {
        v47 = v112;
        goto LABEL_180;
      }

      if (v113 == 9 && *v112 == 0x6C6C756F6E726542 && v112[8] == 105)
      {
        goto LABEL_178;
      }
    }

    else
    {
      if (v113 == 4)
      {
        v46 = *v112;
LABEL_177:
        if (v46 != 1852990818)
        {
          goto LABEL_270;
        }

        goto LABEL_178;
      }

      if (v113 == 5 && *v112 == 1937072487 && v112[4] == 115)
      {
        goto LABEL_181;
      }
    }

LABEL_270:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "Wrong <VisibleType>", 19);
    if (v114 >= 0)
    {
      v83 = &v112;
    }

    else
    {
      v83 = v112;
    }

    if (v114 >= 0)
    {
      v84 = HIBYTE(v114);
    }

    else
    {
      v84 = v113;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, v83, v84);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
  }

  if (HIBYTE(v114) > 7u)
  {
    if (HIBYTE(v114) != 8)
    {
      if (HIBYTE(v114) != 9)
      {
        goto LABEL_270;
      }

      if (v112 != 0x6C6C756F6E726542 || v113 != 105)
      {
        goto LABEL_270;
      }

LABEL_178:
      v48 = 0;
      goto LABEL_182;
    }

    v47 = &v112;
LABEL_180:
    if (*v47 != 0x6E61697373756147)
    {
      goto LABEL_270;
    }

    goto LABEL_181;
  }

  if (HIBYTE(v114) == 4)
  {
    v46 = v112;
    goto LABEL_177;
  }

  if (HIBYTE(v114) != 5)
  {
    goto LABEL_270;
  }

  if (v112 != 1937072487 || BYTE4(v112) != 115)
  {
    goto LABEL_270;
  }

LABEL_181:
  v48 = 1;
LABEL_182:
  a1[37].i32[0] = v48;
  if (v111 < 0)
  {
    if (v110 > 7)
    {
      if (v110 == 8)
      {
        v54 = v109;
        goto LABEL_219;
      }

      if (v110 == 9 && *v109 == 0x6C6C756F6E726542 && v109[8] == 105)
      {
        goto LABEL_217;
      }
    }

    else
    {
      if (v110 == 4)
      {
        v53 = *v109;
LABEL_216:
        if (v53 != 1852990818)
        {
          goto LABEL_277;
        }

        goto LABEL_217;
      }

      if (v110 == 5 && *v109 == 1937072487 && v109[4] == 115)
      {
        goto LABEL_220;
      }
    }

LABEL_277:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "Wrong <HiddenType>", 18);
    if (v111 >= 0)
    {
      v86 = &v109;
    }

    else
    {
      v86 = v109;
    }

    if (v111 >= 0)
    {
      v87 = HIBYTE(v111);
    }

    else
    {
      v87 = v110;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, v86, v87);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v88);
  }

  if (HIBYTE(v111) > 7u)
  {
    if (HIBYTE(v111) != 8)
    {
      if (HIBYTE(v111) != 9)
      {
        goto LABEL_277;
      }

      if (v109 != 0x6C6C756F6E726542 || v110 != 105)
      {
        goto LABEL_277;
      }

LABEL_217:
      v55 = 0;
      goto LABEL_221;
    }

    v54 = &v109;
LABEL_219:
    if (*v54 != 0x6E61697373756147)
    {
      goto LABEL_277;
    }

    goto LABEL_220;
  }

  if (HIBYTE(v111) == 4)
  {
    v53 = v109;
    goto LABEL_216;
  }

  if (HIBYTE(v111) != 5)
  {
    goto LABEL_277;
  }

  if (v109 != 1937072487 || BYTE4(v109) != 115)
  {
    goto LABEL_277;
  }

LABEL_220:
  v55 = 1;
LABEL_221:
  a1[37].i32[1] = v55;
  if (v105 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v105);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v96, a3);
  kaldi::Matrix<float>::Matrix(v94, a1[1].u32[1], a1[1].u32[0], 0, 0);
  v56 = a1[1].i32[1];
  if (v56 >= 1)
  {
    v57 = 0;
    LODWORD(v58) = a1[1].i32[0];
    do
    {
      if (v58 >= 1)
      {
        v59 = 0;
        do
        {
          v60 = *&v106;
          kaldi::GaussRandomNumber::Rand(v96, 0);
          *(*v94 + 4 * v57 * v95 + 4 * v59++) = v60 * v61;
          v58 = a1[1].i32[0];
        }

        while (v59 < v58);
        v56 = a1[1].i32[1];
      }

      ++v57;
    }

    while (v57 < v56);
  }

  kaldi::CuMatrix<float>::operator=(a1 + 9, v94);
  v62 = a1[1].u32[1];
  v92 = 0;
  v93 = 0;
  v91 = 0;
  kaldi::Vector<float>::Resize(&v91, v62, 0);
  if (a1[1].i32[1] < 1)
  {
    v67 = v92;
  }

  else
  {
    v63 = 0;
    do
    {
      v64 = *(&v107 + 1);
      v65 = kaldi::UniformRandomNumber::RandUniform(a3, 0);
      v66 = v64 + (v65 + -0.5) * *&v107;
      v67 = v92;
      v91[v63++] = v66;
    }

    while (v63 < a1[1].i32[1]);
  }

  kaldi::CuVector<float>::Resize(&a1[19], v67, 1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(&a1[19], &v91);
  if (SHIBYTE(v104) < 0)
  {
    if (v103)
    {
LABEL_237:
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v88);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v88, "Initializing from <VisibleBiasCmvnFilename> ", 44);
        if (v104 >= 0)
        {
          v69 = &v102;
        }

        else
        {
          v69 = v102;
        }

        if (v104 >= 0)
        {
          v70 = HIBYTE(v104);
        }

        else
        {
          v70 = v103;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v88);
      }

      kaldi::nnet1::Nnet::Nnet(&v88);
    }
  }

  else if (HIBYTE(v104))
  {
    goto LABEL_237;
  }

  v71 = a1[1].u32[0];
  v89 = 0;
  v90 = 0;
  v88.__locale_ = 0;
  kaldi::Vector<float>::Resize(&v88.__locale_, v71, 0);
  if (a1[1].i32[0] < 1)
  {
    v76 = v89;
  }

  else
  {
    v72 = 0;
    do
    {
      v73 = *(&v108 + 1);
      v74 = kaldi::UniformRandomNumber::RandUniform(a3, 0);
      v75 = v73 + (v74 + -0.5) * *&v108;
      v76 = v89;
      *(v88.__locale_ + v72++) = v75;
    }

    while (v72 < a1[1].i32[0]);
  }

  kaldi::CuVector<float>::Resize(&a1[15], v76, 1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(&a1[15], &v88);
  kaldi::Vector<float>::Destroy(&v88);
  kaldi::Vector<float>::Destroy(&v91);
  kaldi::Matrix<float>::~Matrix(v94);
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  v88.__locale_ = &v97;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v88);
  if (SHIBYTE(v101) < 0)
  {
    operator delete(v100);
  }

  if (SHIBYTE(v104) < 0)
  {
    operator delete(v102);
  }

  if (SHIBYTE(v111) < 0)
  {
    operator delete(v109);
  }

  if (SHIBYTE(v114) < 0)
  {
    operator delete(v112);
  }
}

void sub_1B54CA994(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (*(v1 - 225) < 0)
  {
    operator delete(*(v1 - 248));
  }

  if (*(v1 - 177) < 0)
  {
    operator delete(*(v1 - 200));
  }

  if (*(v1 - 153) < 0)
  {
    operator delete(*(v1 - 176));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Rbm::WriteData(uint64_t a1, void *a2, int a3)
{
  v6 = *(a1 + 296);
  if (v6)
  {
    if (v6 != 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unknown type ", 13);
      MEMORY[0x1B8C84C00](v10, *(a1 + 296));
      goto LABEL_14;
    }

    v7 = "gauss";
  }

  else
  {
    v7 = "bern";
  }

  kaldi::WriteToken(a2, a3, v7);
  v8 = *(a1 + 300);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = "gauss";
      goto LABEL_9;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Unknown type ", 13);
    MEMORY[0x1B8C84C00](v11, *(a1 + 300));
LABEL_14:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v9 = "bern";
LABEL_9:
  kaldi::WriteToken(a2, a3, v9);
  kaldi::CuMatrixBase<float>::Write(a1 + 72, a2, a3, 0);
  kaldi::CuVectorBase<float>::Write(a1 + 120, a2, a3);

  kaldi::CuVectorBase<float>::Write(a1 + 152, a2, a3);
}

uint64_t kaldi::nnet1::Rbm::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 152, 1.0, 0.0);
  result = kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, a1 + 72, 112);
  if (!*(a1 + 300))
  {

    return kaldi::CuMatrixBase<float>::Sigmoid(a3, a3);
  }

  return result;
}

void kaldi::nnet1::Rbm::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  __p = 0;
  v17 = 0;
  v18 = 0;
  kaldi::ReadToken(a2, a3, &v19);
  kaldi::ReadToken(a2, a3, &__p);
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
    if (HIBYTE(v21) != 4)
    {
      if (HIBYTE(v21) != 5)
      {
        goto LABEL_18;
      }

      v6 = &v19;
      goto LABEL_9;
    }

    if (v19 != 1852990818)
    {
      goto LABEL_18;
    }

LABEL_16:
    v10 = 0;
    goto LABEL_17;
  }

  if (v20 == 4 && *v19 == 1852990818)
  {
    goto LABEL_16;
  }

  if (v20 != 5)
  {
    goto LABEL_18;
  }

  v6 = v19;
LABEL_9:
  v7 = *v6;
  v8 = v6[4];
  if (v7 == 1937072487 && v8 == 115)
  {
    v10 = 1;
LABEL_17:
    *(a1 + 296) = v10;
  }

LABEL_18:
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    if (HIBYTE(v18) != 4)
    {
      if (HIBYTE(v18) != 5)
      {
        goto LABEL_35;
      }

      p_p = &__p;
      goto LABEL_26;
    }

    if (__p != 1852990818)
    {
      goto LABEL_35;
    }

LABEL_33:
    v15 = 0;
    goto LABEL_34;
  }

  if (v17 == 4 && *__p == 1852990818)
  {
    goto LABEL_33;
  }

  if (v17 != 5)
  {
    goto LABEL_35;
  }

  p_p = __p;
LABEL_26:
  v12 = *p_p;
  v13 = p_p[4];
  if (v12 == 1937072487 && v13 == 115)
  {
    v15 = 1;
LABEL_34:
    *(a1 + 300) = v15;
  }

LABEL_35:
  kaldi::CuMatrix<float>::Read(a1 + 72, a2, a3, 0);
  kaldi::CuVector<float>::Read(a1 + 120, a2, a3);
  kaldi::CuVector<float>::Read(a1 + 152, a2, a3);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }
}

void sub_1B54CADC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::Rbm::Reconstruct(unsigned int *a1, uint64_t a2, int32x2_t *a3)
{
  if (a1[3] != *(a2 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Nonmatching dims, component:", 28);
    v10 = MEMORY[0x1B8C84C00](v9, a1[3]);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " data:", 6);
    MEMORY[0x1B8C84C00](v11, *(a2 + 16));
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v6 = a1[2];
  v7 = *(a2 + 20);
  if (__PAIR64__(v7, v6) != *&a3[2])
  {
    kaldi::CuMatrix<float>::Resize(a3, v7, v6, 0, 0);
  }

  kaldi::CuMatrixBase<float>::AddVecToRows(a3, (a1 + 30), 1.0, 0.0);
  result = kaldi::CuMatrixBase<float>::AddMatMat(a3, a2, 111, (a1 + 18), 111);
  if (!a1[74])
  {

    return kaldi::CuMatrixBase<float>::Sigmoid(a3, a3);
  }

  return result;
}

void kaldi::nnet1::Rbm::RbmUpdate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 92);
  if (*(a1 + 204) == v10)
  {
    v11 = *(a1 + 88);
    if (*(a1 + 200) == v11)
    {
      if (*(a1 + 248) == *(a1 + 136))
      {
        v11 = *(a1 + 200);
        if (*(a1 + 280) == *(a1 + 168))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = *(a1 + 200);
      }
    }
  }

  else
  {
    v11 = *(a1 + 88);
  }

  kaldi::CuMatrix<float>::Resize((a1 + 184), v10, v11, 0, 0);
  kaldi::CuVector<float>::Resize(a1 + 232, *(a1 + 136), 0);
  kaldi::CuVector<float>::Resize(a1 + 264, *(a1 + 168), 0);
LABEL_8:
  if (*(a1 + 296) == 1 && (kaldi::nnet1::CheckNanInf<float>(a2, "pos_vis"), kaldi::nnet1::CheckNanInf<float>(a3, "pos_hid"), kaldi::nnet1::CheckNanInf<float>(a4, "neg_vis"), kaldi::nnet1::CheckNanInf<float>(a5, "pos_hid"), v12 = kaldi::nnet1::ComputeStdDev<float>(a2), v13 = kaldi::nnet1::ComputeStdDev<float>(a4), (v12 + v12) < v13))
  {
    kaldi::CuMatrixBase<float>::Scale(a1 + 72, v12 / v13);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::Scale();
    v14 = *(a1 + 48) * 0.9;
    *(a1 + 48) = v14;
    kaldi::CuMatrixBase<float>::SetZero(a1 + 184);
    kaldi::CuVectorBase<float>::SetZero(a1 + 232);
    kaldi::CuVectorBase<float>::SetZero(a1 + 264);
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Mismatch between pos_vis and neg_vis variances, ", 48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "danger of weight explosion. a) Reducing weights with scale ", 59);
      v16 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " b) Lowering learning rate to ", 30);
      v17 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " [pos_vis_std:", 14);
      v18 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ",neg_vis_std:", 13);
      v19 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "]", 1);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v24);
    }
  }

  else
  {
    v20 = *(a1 + 48);
    v21 = *(a1 + 68);
    kaldi::CuMatrixBase<float>::AddMatMat(a1 + 184, a5, 112, a4, 111);
    kaldi::CuMatrixBase<float>::AddMatMat(a1 + 184, a3, 112, a2, 111);
    kaldi::CuMatrixBase<float>::AddMat(a1 + 184, a1 + 72, 111, -(v20 * v21), 1.0);
    kaldi::CuMatrixBase<float>::AddMat(a1 + 72, a1 + 184, 111, 1.0, 1.0);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 232, a4);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 232, a2);
    LODWORD(v22) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v22, 1.0);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 264, a5);
    kaldi::CuVectorBase<float>::AddRowSumMat(a1 + 264, a3);
    LODWORD(v23) = 1.0;

    kaldi::CuVectorBase<float>::AddVec(v23, 1.0);
  }
}

void *kaldi::nnet1::Rbm::WriteAsNnet(unsigned int *a1, void *a2, uint64_t a3)
{
  kaldi::nnet1::Component::TypeToMarker(0x101, &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  kaldi::WriteBasicType<int>(a2, a3, a1[2]);
  if ((a3 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  kaldi::CuMatrixBase<float>::Write((a1 + 18), a2, a3, 0);
  kaldi::CuVectorBase<float>::Write((a1 + 38), a2, a3);
  result = (*(*a1 + 200))(a1);
  if (result)
  {
    if (a3)
    {
      return result;
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  kaldi::nnet1::Component::TypeToMarker(0x204, &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  result = kaldi::WriteBasicType<int>(a2, a3, a1[3]);
  if ((a3 & 1) == 0)
  {
    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  return result;
}

void sub_1B54CB438(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MultiSoftmax::InitData(std::vector<int> *this, uint64_t *a2)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v4 = a2 + 4;
  while ((*(v4 + *(*a2 - 24)) & 2) == 0)
  {
    kaldi::ReadToken(a2, 0, &v12);
    if (SHIBYTE(v14) < 0)
    {
      if (v13 != 8)
      {
        goto LABEL_13;
      }

      v5 = v12;
    }

    else
    {
      if (SHIBYTE(v14) != 8)
      {
        goto LABEL_13;
      }

      v5 = &v12;
    }

    if (*v5 != 0x3E736D6944534D3CLL)
    {
LABEL_13:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Unknown token ", 14);
      if (v14 >= 0)
      {
        v7 = &v12;
      }

      else
      {
        v7 = v12;
      }

      if (v14 >= 0)
      {
        v8 = HIBYTE(v14);
      }

      else
      {
        v8 = v13;
      }

      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " (MSDims)", 9);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }

    kaldi::ReadIntegerVector<int>(a2, 0, this + 2, 0, 0, 0, 0);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  kaldi::nnet1::BlockSoftmax::InitOffset(this);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v12);
  }
}

void sub_1B54CB660(_Unwind_Exception *a1)
{
  if (*(v1 - 49) < 0)
  {
    operator delete(*(v1 - 72));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::ResetHistoryState(void *a1, void *a2, uint64_t a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  v8 = a2[1];
  *(a1[1] + 48 * a4 + 32) = a3;
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      if ((*(*a2 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8)) >> i))
      {
        v10 = a1[1] + 48 * a4;
        v11 = *(v10 + 8) + 4 * *(v10 + 24) * i;
        v12 = *(v10 + 16);
        v13 = *(v10 + 32);
        v14[1] = v11;
        v14[0] = &unk_1F2CFCA48;
        v14[2] = v12;
        v14[3] = v13;
        kaldi::CuVectorBase<float>::SetZero(v14);
        v8 = a2[1];
      }
    }
  }
}

void kaldi::nnet1::Recurrent::ResetHistoryState(kaldi::nnet1::Recurrent *this)
{
  (*(*this + 88))(this);
  for (i = *(this + 1); i != *(this + 2); i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

int *kaldi::nnet1::Recurrent::GetHistoryState(uint64_t a1, int32x2_t *a2, unsigned int a3)
{
  v6 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v6 + 20), *(v6 + 16), 1, 0);
  v7 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v7, 111);
}

void *kaldi::nnet1::Recurrent::GetHistoryState(uint64_t a1, void *a2, int a3, unsigned int a4)
{
  kaldi::CuVector<float>::Resize(a2, *(*(a1 + 8) + 48 * a4 + 16), 1);
  v8 = *(a1 + 8) + 48 * a4;
  v9 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v10 = *(v8 + 16);
  v11 = *(v8 + 32);
  v13[1] = v9;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v10;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v13);
}

int *kaldi::nnet1::Recurrent::SetHistoryState(void *a1, uint64_t a2, unsigned int a3)
{
  (*(*a1 + 88))(a1);
  v6 = (a1[1] + 48 * a3);

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v6, a2, 111);
}

void *kaldi::nnet1::Recurrent::SetHistoryState(void *a1, uint64_t a2, int a3, unsigned int a4)
{
  (*(*a1 + 88))(a1);
  v8 = a1[1] + 48 * a4;
  v9 = *(a2 + 16);
  v10 = *(v8 + 8) + 4 * *(v8 + 24) * a3;
  v11 = *(v8 + 32);
  v13[1] = v10;
  v13[0] = &unk_1F2CFCA48;
  v13[2] = v9;
  v13[3] = v11;
  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2);
}

void kaldi::nnet1::Recurrent::EnsureBuffers(kaldi::nnet1::Recurrent *this)
{
  if ((*(this + 388) & 1) == 0)
  {
    if (*(this + *(*this - 24) + 8) != *(this + *(*this - 24) + 12))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "this implementation only models the strict recurrent component, i.e, it requests the input ", 91);
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "and output dimensions be the same,  you set input/out dimension to ", 67);
      v9 = MEMORY[0x1B8C84C00](v8, *(this + *(*this - 24) + 8));
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " and ", 5);
      MEMORY[0x1B8C84C00](v10, *(this + *(*this - 24) + 12));
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }

    v2 = *(this + 20);
    if (v2 > 1)
    {
      v3 = (v2 + 1);
    }

    else
    {
      v3 = 1;
    }

    std::vector<kaldi::CuMatrix<float>>::resize(this + 1, v3);
    std::vector<kaldi::CuMatrix<float>>::resize(this + 42, v3);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = (*(this + 24) + *(this + 24) * *(this + 25));
      v6 = this + 12;
      do
      {
        kaldi::CuMatrix<float>::Resize((*(this + 1) + v4), *(this + 24), *&v6[*(*this - 24)], 0, 0);
        kaldi::CuMatrix<float>::Resize((*(this + 42) + v4), v5, *&v6[*(*this - 24)], 0, 0);
        v4 += 48;
      }

      while (48 * v3 != v4);
    }

    std::vector<int>::resize(this + 17, v3);
    *(this + 388) = 1;
  }
}

void *kaldi::nnet1::Recurrent::SetInternalBoundary(uint64_t a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 480);
  if (v6 == *(a1 + 488))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 480), *(a1 + 80));
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 504), *(a1 + 80));
    v6 = *(a1 + 480);
  }

  kaldi::CuVector<float>::Resize(v6 + 32 * a3, *(a2 + 16), 1);
  v7 = (*(a1 + 480) + 32 * a3);

  return kaldi::CuVectorBase<float>::CopyFromVec(v7, a2);
}

void kaldi::nnet1::Recurrent::InitData(int32x2_t *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v78 = 2.0;
  v79 = -1073741824;
  v77 = 1036831949;
  kaldi::nnet1::Component::TypeToMarker(2, &v76);
  kaldi::nnet1::Component::TypeToMarker(a1[19].u32[1], &v75);
  kaldi::nnet1::Component::TypeToMarker(a1[48].u32[0], &v74);
  v73 = -1;
  memset(v72, 0, sizeof(v72));
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_159;
    }

    kaldi::ReadToken(a2, 0, v72);
    if ((SHIBYTE(v72[2]) & 0x80000000) == 0)
    {
      if (HIBYTE(v72[2]) > 0xCu)
      {
        if (HIBYTE(v72[2]) > 0xEu)
        {
          if (HIBYTE(v72[2]) != 15)
          {
            if (HIBYTE(v72[2]) != 18)
            {
              if (HIBYTE(v72[2]) != 19)
              {
                goto LABEL_192;
              }

              v7 = v72[0] == 0x61654C736169423CLL && v72[1] == 0x6F43657461526E72 && *(&v72[1] + 3) == 0x3E66656F43657461;
              v8 = &a1[49] + 1;
              if (v7)
              {
                goto LABEL_137;
              }

              v9 = v72;
              goto LABEL_29;
            }

            if (v72[0] != 0x6E6569646172473CLL || v72[1] != 0x7079546D726F4E74 || LOWORD(v72[2]) != 15973)
            {
              goto LABEL_192;
            }

LABEL_146:
            v17 = &v75;
            goto LABEL_147;
          }

          v28 = v72[0] == 0x61526E7261654C3CLL && *(v72 + 7) == 0x3E66656F43657461;
          goto LABEL_135;
        }

        if (HIBYTE(v72[2]) != 13)
        {
          if (v72[0] != 0x656E696C6E6F4E3CLL || *(v72 + 6) != 0x3E7974697261656ELL)
          {
            goto LABEL_192;
          }

LABEL_80:
          v17 = &v74;
          goto LABEL_147;
        }

        if (v72[0] != 0x74536D617261503CLL || *(v72 + 5) != 0x3E7665646474536DLL)
        {
          goto LABEL_192;
        }

LABEL_131:
        v8 = &v77;
        goto LABEL_137;
      }

      if (HIBYTE(v72[2]) <= 0xAu)
      {
        if (HIBYTE(v72[2]) == 9)
        {
          v24 = v72[0] == 0x6D726F4E78614D3CLL && LOBYTE(v72[1]) == 62;
          v8 = &a1[50];
          if (!v24)
          {
            v25 = v72[0] == 0x6461724778614D3CLL && LOBYTE(v72[1]) == 62;
            v8 = &a1[19];
            if (!v25)
            {
              goto LABEL_192;
            }
          }

          goto LABEL_137;
        }

        if (HIBYTE(v72[2]) != 10)
        {
          goto LABEL_192;
        }

        if (v72[0] != 0x61654D736169423CLL || LOWORD(v72[1]) != 15982)
        {
          goto LABEL_192;
        }

        goto LABEL_54;
      }

      if (HIBYTE(v72[2]) != 11)
      {
        if (v72[0] != 0x536D6F646E61523CLL || LODWORD(v72[1]) != 1046766949)
        {
          goto LABEL_151;
        }

LABEL_73:
        kaldi::ReadBasicType<int>(a2, 0, &v73);
        goto LABEL_148;
      }

      if (v72[0] != 0x6E6152736169423CLL || *(v72 + 3) != 0x3E65676E61527361)
      {
        goto LABEL_192;
      }

      goto LABEL_125;
    }

    if (v72[1] <= 12)
    {
      if (v72[1] <= 10)
      {
        if (v72[1] == 9)
        {
          v31 = *v72[0] == 0x6D726F4E78614D3CLL && *(v72[0] + 8) == 62;
          v8 = &a1[50];
          if (!v31)
          {
            v32 = *v72[0] == 0x6461724778614D3CLL && *(v72[0] + 8) == 62;
            v8 = &a1[19];
            if (!v32)
            {
              goto LABEL_152;
            }
          }

          goto LABEL_137;
        }

        if (v72[1] != 10)
        {
          goto LABEL_192;
        }

        if (*v72[0] != 0x61654D736169423CLL || *(v72[0] + 4) != 15982)
        {
          goto LABEL_192;
        }

LABEL_54:
        v8 = &v79;
LABEL_137:
        kaldi::ReadBasicType<float>(a2, 0, v8);
        goto LABEL_148;
      }

      if (v72[1] != 11)
      {
        if (*v72[0] != 0x536D6F646E61523CLL || *(v72[0] + 2) != 1046766949)
        {
          goto LABEL_153;
        }

        goto LABEL_73;
      }

      if (*v72[0] != 0x6E6152736169423CLL || *(v72[0] + 3) != 0x3E65676E61527361)
      {
        goto LABEL_192;
      }

LABEL_125:
      v8 = &v78;
      goto LABEL_137;
    }

    if (v72[1] <= 14)
    {
      if (v72[1] != 13)
      {
        if (*v72[0] != 0x656E696C6E6F4E3CLL || *(v72[0] + 6) != 0x3E7974697261656ELL)
        {
          goto LABEL_192;
        }

        goto LABEL_80;
      }

      if (*v72[0] != 0x74536D617261503CLL || *(v72[0] + 5) != 0x3E7665646474536DLL)
      {
        goto LABEL_192;
      }

      goto LABEL_131;
    }

    if (v72[1] == 15)
    {
      v28 = *v72[0] == 0x61526E7261654C3CLL && *(v72[0] + 7) == 0x3E66656F43657461;
LABEL_135:
      v8 = &a1[49];
      if (!v28)
      {
        goto LABEL_192;
      }

      goto LABEL_137;
    }

    if (v72[1] == 18)
    {
      if (*v72[0] != 0x6E6569646172473CLL || *(v72[0] + 1) != 0x7079546D726F4E74 || *(v72[0] + 8) != 15973)
      {
        goto LABEL_192;
      }

      goto LABEL_146;
    }

    if (v72[1] != 19)
    {
      goto LABEL_192;
    }

    v9 = v72[0];
    v11 = *v72[0] == 0x61654C736169423CLL && *(v72[0] + 1) == 0x6F43657461526E72 && *(v72[0] + 11) == 0x3E66656F43657461;
    v8 = &a1[49] + 1;
    if (v11)
    {
      goto LABEL_137;
    }

LABEL_29:
    v12 = *v9;
    v13 = v9[1];
    v14 = *(v9 + 11);
    v15 = v12 == 0x61725474696E493CLL && v13 == 0x79546D726F66736ELL;
    if (!v15 || v14 != 0x3E657079546D726FLL)
    {
      break;
    }

    v17 = &v76;
LABEL_147:
    kaldi::ReadToken(a2, 0, v17);
LABEL_148:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if ((HIBYTE(v72[2]) & 0x80) == 0)
  {
    if (HIBYTE(v72[2]) == 12)
    {
LABEL_151:
      v37 = v72;
      goto LABEL_154;
    }

    goto LABEL_192;
  }

LABEL_152:
  if (v72[1] != 12)
  {
    goto LABEL_192;
  }

LABEL_153:
  v37 = v72[0];
LABEL_154:
  v38 = *v37;
  v39 = *(v37 + 2);
  if (v38 != 0x6E6F706D6F432F3CLL || v39 != 1047817829)
  {
LABEL_192:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v68);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "Unknown token ", 14);
    if (SHIBYTE(v72[2]) >= 0)
    {
      v59 = v72;
    }

    else
    {
      v59 = v72[0];
    }

    if (SHIBYTE(v72[2]) >= 0)
    {
      v60 = HIBYTE(v72[2]);
    }

    else
    {
      v60 = v72[1];
    }

    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, v59, v60);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " (Nonlinearity|ParamStddev|BiasMean|BiasRange|LearnRateCoef|BiasLearnRateCoef|MaxNorm|RandomSeed|MaxGrad|InitTransformType|GradientNormType)", 140);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v68);
  }

LABEL_159:
  a1[48].i32[0] = kaldi::nnet1::Component::MarkerToComponentType(&v74);
  inited = kaldi::nnet1::Component::MarkerToMatrixInitType(&v76);
  a1[19].i32[1] = kaldi::nnet1::Component::MarkerToGradientNormType(&v75);
  if (v73 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v73);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v68, a3);
  kaldi::Matrix<float>::Matrix(v66, *(&a1[1].u32[1] + *(*a1 - 24)), *(a1[1].u32 + *(*a1 - 24)), 0, 0);
  v43 = &a1[1] + 4;
  v42 = *a1;
  if (*(&a1[1].i32[1] + *(*a1 - 24)) >= 1)
  {
    v44 = 0;
    v45 = a1 + 1;
    while (1)
    {
      v46 = *(*&v42 - 24);
      if (*(v45->i32 + v46) >= 1)
      {
        break;
      }

LABEL_175:
      if (++v44 >= *&v43[v46])
      {
        goto LABEL_176;
      }
    }

    v47 = 0;
    while (2)
    {
      if (inited)
      {
        if (inited != 2)
        {
          if (inited == 1)
          {
            v48 = *&v77;
            v49 = (kaldi::UniformRandomNumber::RandUniform(a3, 0) + -0.5) * (v48 + v48);
            break;
          }

LABEL_174:
          ++v47;
          v46 = *(*&v42 - 24);
          if (v47 >= *(v45->i32 + v46))
          {
            goto LABEL_175;
          }

          continue;
        }

        v50 = *&v77;
        kaldi::GaussRandomNumber::Rand(v68, 0);
        v49 = v50 * v51;
      }

      else if (v44 == v47)
      {
        v49 = 1.0;
      }

      else
      {
        v49 = 0.0;
      }

      break;
    }

    *(v66[0] + v44 * v67 + v47) = v49;
    v42 = *a1;
    goto LABEL_174;
  }

LABEL_176:
  kaldi::CuMatrix<float>::operator=(a1 + 20, v66);
  v52 = *(&a1[1].u32[1] + *(*a1 - 24));
  v64 = 0;
  v65 = 0;
  v63 = 0;
  kaldi::Vector<float>::Resize(&v63, v52, 0);
  if (*&v43[*(*a1 - 24)] < 1)
  {
    v57 = v64;
  }

  else
  {
    v53 = 0;
    do
    {
      v54 = *&v79;
      v55 = kaldi::UniformRandomNumber::RandUniform(a3, 0);
      v56 = v54 + (v55 + -0.5) * v78;
      v57 = v64;
      v63[v53++] = v56;
    }

    while (v53 < *&v43[*(*a1 - 24)]);
  }

  kaldi::CuVector<float>::Resize(&a1[26], v57, 1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(&a1[26], &v63);
  kaldi::Vector<float>::Destroy(&v63);
  kaldi::Matrix<float>::~Matrix(v66);
  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }

  v66[0] = &v69;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v66);
  if (SHIBYTE(v72[2]) < 0)
  {
    operator delete(v72[0]);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v76.__r_.__value_.__l.__data_);
  }
}

void sub_1B54CC7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (*(v19 - 217) < 0)
  {
    operator delete(*(v19 - 240));
  }

  if (*(v19 - 185) < 0)
  {
    operator delete(*(v19 - 208));
  }

  if (*(v19 - 161) < 0)
  {
    operator delete(*(v19 - 184));
  }

  if (*(v19 - 137) < 0)
  {
    operator delete(*(v19 - 160));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::Recurrent::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<LearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<BiasLearnRateCoef>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<MaxNorm>");
  kaldi::WriteBasicType<float>(a2, a3);
  kaldi::WriteToken(a2, a3, "<Nonlinearity>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 384), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<GradientNormType>");
  kaldi::nnet1::Component::TypeToMarker(*(a1 + 156), &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteToken(a2, a3, "<MaxGrad>");
  return kaldi::WriteBasicType<float>(a2, a3);
}

void sub_1B54CC96C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Recurrent::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  v8 = a1 + 208;
  (*(*a1 + 168))(a1);
  kaldi::CuMatrixBase<float>::Write(a1 + 160, a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(v8, a2, a3);
}

const void **kaldi::nnet1::Recurrent::GetParams(uint64_t a1, void **a2)
{
  v4 = (*(*a1 + 184))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0);
  v5 = *(a1 + 176) * *(a1 + 180);
  v9 = 0;
  v10 = 0;
  v8 = *a2;
  LODWORD(v9) = v5;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v8, a1 + 160);
  v6 = *(a1 + 224);
  v9 = 0;
  v10 = 0;
  v8 = *a2 + 4 * v5;
  LODWORD(v9) = v6;
  return kaldi::CuVectorBase<float>::CopyToVec<float>((a1 + 208), &v8);
}

void *kaldi::nnet1::Recurrent::SetParams(_DWORD *a1, char **a2)
{
  (*(*a1 + 184))(a1);
  v4 = a1[44] * a1[45];
  v8 = 0;
  v9 = 0;
  v7 = *a2;
  LODWORD(v8) = v4;
  kaldi::CuMatrixBase<float>::CopyRowsFromVec((a1 + 40), &v7);
  v5 = a1[56];
  v8 = 0;
  v9 = 0;
  v7 = &(*a2)[4 * v4];
  LODWORD(v8) = v5;
  return kaldi::CuVectorBase<float>::CopyFromVec<float>(a1 + 52, &v7);
}

float kaldi::nnet1::Recurrent::SumParams(kaldi::nnet1::Recurrent *this)
{
  v2 = kaldi::CuMatrixBase<float>::Sum(this + 160);
  v3 = kaldi::CuVectorBase<float>::Sum(this + 208);
  return v2 + *&v3;
}

uint64_t kaldi::nnet1::Recurrent::PerturbParams(kaldi::nnet1::Recurrent *this, float a2)
{
  kaldi::CuMatrix<float>::CuMatrix(v8, *(this + 45), *(this + 44), 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v8);
  kaldi::CuMatrixBase<float>::AddMat(this + 160, v8, 111, a2, 1.0);
  v4 = *(this + 56);
  v7[0] = &unk_1F2D3AC18;
  memset(&v7[1], 0, 24);
  kaldi::CuVector<float>::Resize(v7, v4, 1);
  kaldi::CuVectorBase<float>::SetRandn(v7);
  *&v5 = a2;
  kaldi::CuVectorBase<float>::AddVec(v5, 1.0);
  kaldi::CuVector<float>::~CuVector(v7);
  return kaldi::CuMatrix<float>::~CuMatrix(v8);
}

void sub_1B54CCC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::Info(kaldi::nnet1::Recurrent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  (*(*this + 168))(this, &v14, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "\n linearity", 11);
  kaldi::nnet1::MomentStatistics<float>(this + 160);
  if ((v13 & 0x80u) == 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias", 6);
  kaldi::nnet1::MomentStatistics<float>(this + 208);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B54CCEDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::InfoGradient(kaldi::nnet1::Recurrent *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 388) == 1 && (*(this + 389) & 1) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v42, "\n  linearity_grad");
    kaldi::nnet1::MomentStatistics<float>(this + 30);
    if ((v41 & 0x80u) == 0)
    {
      v4 = v40;
    }

    else
    {
      v4 = v40[0];
    }

    if ((v41 & 0x80u) == 0)
    {
      v5 = v41;
    }

    else
    {
      v5 = v40[1];
    }

    v6 = std::string::append(&v42, v4, v5);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v43.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v43.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    v8 = std::string::append(&v43, ", lr-coef ");
    v9 = *&v8->__r_.__value_.__l.__data_;
    v44.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v44.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>();
    if ((v39 & 0x80u) == 0)
    {
      v10 = v38;
    }

    else
    {
      v10 = v38[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v11 = v39;
    }

    else
    {
      v11 = v38[1];
    }

    v12 = std::string::append(&v44, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v45.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v45.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v45, ", max-norm ");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>();
    if ((v37 & 0x80u) == 0)
    {
      v16 = v36;
    }

    else
    {
      v16 = v36[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v17 = v37;
    }

    else
    {
      v17 = v36[1];
    }

    v18 = std::string::append(&v46, v16, v17);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v47, "\n  bias_grad");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::MomentStatistics<float>(this + 33);
    if ((v35 & 0x80u) == 0)
    {
      v22 = v34;
    }

    else
    {
      v22 = v34[0];
    }

    if ((v35 & 0x80u) == 0)
    {
      v23 = v35;
    }

    else
    {
      v23 = v34[1];
    }

    v24 = std::string::append(&v48, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v49, ", lr-coef ");
    v27 = *&v26->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    kaldi::nnet1::ToString<float>();
    if ((v33 & 0x80u) == 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = __p[0];
    }

    if ((v33 & 0x80u) == 0)
    {
      v29 = v33;
    }

    else
    {
      v29 = __p[1];
    }

    v30 = std::string::append(&v50, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    *(a2 + 16) = *(&v30->__r_.__value_.__l + 2);
    *a2 = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    if (v33 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v35 < 0)
    {
      operator delete(v34[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v45.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v44.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (v41 < 0)
    {
      operator delete(v40[0]);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "\n  linearity_grad is uninitialized\n  bias_grad is uninitialized");
  }
}

void sub_1B54CD298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 388) = 0;
  return result;
}

void kaldi::nnet1::Recurrent::PropagateFnc(uint64_t a1, uint64_t a2, int32x2_t *a3, int a4)
{
  (*(*a1 + 88))(a1);
  v8 = *(a1 + 96);
  v9 = *(a1 + 100);
  v10 = *(a2 + 20);
  v11 = a3[4];
  v12 = *(a1 + 336);
  v13 = (v12 + 48 * a4);
  v13[4] = v11;
  v14 = *(a1 + 8);
  *(v14 + 48 * a4 + 32) = v11;
  v15 = *(a1 + 480);
  if (*(a1 + 488) == v15 || *(v15 + 32 * a4 + 16) < 1)
  {
    v75 = 0;
  }

  else
  {
    v16 = (*(a1 + 504) + 48 * a4);
    v16[4] = v11;
    v75 = 1;
    kaldi::CuMatrix<float>::Resize(v16, v8, v13[2].u32[0], 1, 0);
    v12 = *(a1 + 336);
    v14 = *(a1 + 8);
  }

  v17 = v12 + 48 * a4;
  v18 = *(v17 + 16);
  v19 = *(v17 + 32);
  *&v78 = *(v17 + 8);
  *(&v78 + 1) = __PAIR64__(v8, v18);
  *&v79 = *(v17 + 24);
  *(&v79 + 1) = v19;
  v77 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v77, v14 + 48 * a4, 111);
  v73 = a3;
  v77 = &unk_1F2CFA908;
  v78 = 0u;
  v79 = 0u;
  quasar::Bitmap::~Bitmap(&v77);
  v20 = *(a1 + 336) + 48 * a4;
  v21 = *(v20 + 16);
  v22 = *(v20 + 24);
  v23 = *(v20 + 8) + 4 * (v22 * v8);
  v24 = *(v20 + 28) - v22 * v8;
  v25 = *(v20 + 32);
  *(&v78 + 1) = __PAIR64__(v10, v21);
  *&v79 = __PAIR64__(v24, v22);
  *(&v79 + 1) = v25;
  v77 = &unk_1F2CFA908;
  *&v78 = v23;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v77, a2, 111);
  v77 = &unk_1F2CFA908;
  v78 = 0u;
  v79 = 0u;
  quasar::Bitmap::~Bitmap(&v77);
  v26 = *(a1 + 336) + 48 * a4;
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);
  v29 = *(v26 + 8) + 4 * (v28 * v8);
  v30 = *(v26 + 28) - v28 * v8;
  v31 = *(v26 + 32);
  *(&v78 + 1) = __PAIR64__(v10, v27);
  v72 = v10;
  *&v79 = __PAIR64__(v30, v28);
  *(&v79 + 1) = v31;
  v77 = &unk_1F2CFA908;
  *&v78 = v29;
  kaldi::CuMatrixBase<float>::AddVecToRows(&v77, a1 + 208, 1.0, 1.0);
  v77 = &unk_1F2CFA908;
  v78 = 0u;
  v79 = 0u;
  quasar::Bitmap::~Bitmap(&v77);
  if (v9 >= 1)
  {
    v32 = 0;
    v33 = 0;
    v74 = v9 + 1;
    v34 = 1;
    do
    {
      v35 = *(a1 + 336);
      v36 = v35 + 48 * a4;
      v37 = *(v36 + 16);
      v38 = *(v36 + 24);
      v39 = v38 * (v8 + v33);
      v40 = *(v36 + 8) + 4 * v39;
      v41 = *(v36 + 28) - v39;
      v42 = *(v36 + 32);
      *(&v81 + 1) = __PAIR64__(v8, v37);
      *&v82 = __PAIR64__(v41, v38);
      *(&v82 + 1) = v42;
      v80 = &unk_1F2CFA908;
      *&v81 = v40;
      if (v34 > 1)
      {
        v43 = v75;
      }

      else
      {
        v43 = 0;
      }

      v44 = v33;
      if (v43 == 1)
      {
        v45 = *(a1 + 504) + 48 * a4;
        v46 = *(a1 + 480) + 32 * a4;
        *(&v78 + 1) = 0;
        v77 = &unk_1F2CFCA48;
        *&v78 = *(v46 + 8) + v32;
        DWORD2(v78) = v8;
        *&v79 = *(v46 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(v45, &v80, &v77, 0);
        v44 = (v34 - 1) * v8;
        v35 = *(a1 + 336);
      }

      v47 = v35 + 48 * a4;
      v48 = *(v47 + 16);
      v49 = *(v47 + 24);
      v50 = *(v47 + 8) + 4 * (v49 * v44);
      v51 = *(v47 + 28) - v49 * v44;
      v52 = *(v47 + 32);
      *(&v78 + 1) = __PAIR64__(v8, v48);
      *&v79 = __PAIR64__(v51, v49);
      *(&v79 + 1) = v52;
      v77 = &unk_1F2CFA908;
      *&v78 = v50;
      kaldi::CuMatrixBase<float>::AddMatMat(&v80, &v77, 111, a1 + 160, 112);
      v77 = &unk_1F2CFA908;
      v78 = 0u;
      v79 = 0u;
      quasar::Bitmap::~Bitmap(&v77);
      if (v43)
      {
        v53 = *(a1 + 504) + 48 * a4;
        v54 = *(a1 + 480) + 32 * a4;
        *(&v78 + 1) = 0;
        v77 = &unk_1F2CFCA48;
        *&v78 = *(v54 + 8) + 4 * v44;
        DWORD2(v78) = v8;
        *&v79 = *(v54 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v80, v53, &v77, 0);
      }

      v55 = *(a1 + 384);
      switch(v55)
      {
        case 520:
          kaldi::CuMatrixBase<float>::ApplyFloor(&v80, 0.0);
          break;
        case 517:
          kaldi::CuMatrixBase<float>::Tanh(&v80, &v80);
          break;
        case 516:
          kaldi::CuMatrixBase<float>::Sigmoid(&v80, &v80);
          break;
        default:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v77);
          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v77, "Unknown nonlinearity type: ", 27);
          kaldi::nnet1::Component::TypeToMarker(*(a1 + 384), &__p);
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

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v77);
      }

      v80 = &unk_1F2CFA908;
      v81 = 0u;
      v82 = 0u;
      quasar::Bitmap::~Bitmap(&v80);
      ++v34;
      v33 += v8;
      v32 += 4 * v8;
    }

    while (v74 != v34);
  }

  v56 = *(a1 + 336) + 48 * a4;
  v57 = *(v56 + 16);
  v58 = *(v56 + 24);
  v59 = *(v56 + 8) + 4 * (v58 * v8);
  v60 = *(v56 + 28) - v58 * v8;
  v61 = *(v56 + 32);
  *(&v78 + 1) = __PAIR64__(v72, v57);
  *&v79 = __PAIR64__(v60, v58);
  *(&v79 + 1) = v61;
  v77 = &unk_1F2CFA908;
  *&v78 = v59;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v73, &v77, 111);
  v77 = &unk_1F2CFA908;
  v78 = 0u;
  v79 = 0u;
  quasar::Bitmap::~Bitmap(&v77);
  v62 = (*(a1 + 8) + 48 * a4);
  v63 = *(a1 + 336) + 48 * a4;
  v64 = *(v63 + 16);
  v65 = *(v63 + 24);
  v66 = *(v63 + 8) + 4 * (v65 * v72);
  v67 = *(v63 + 28) - v65 * v72;
  v68 = *(v63 + 32);
  *(&v78 + 1) = __PAIR64__(v8, v64);
  *&v79 = __PAIR64__(v67, v65);
  *(&v79 + 1) = v68;
  v77 = &unk_1F2CFA908;
  *&v78 = v66;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v62, &v77, 111);
  v77 = &unk_1F2CFA908;
  v78 = 0u;
  v79 = 0u;
  quasar::Bitmap::~Bitmap(&v77);
}

void sub_1B54CDAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 - 128) = a14;
  v15 = v14 - 128;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  JUMPOUT(0x1B54CDB1CLL);
}

void kaldi::nnet1::Recurrent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 8);
  v10 = &unk_1F2CFA908;
  *&v11 = v4;
  *(&v11 + 1) = v3 | 0x100000000;
  LODWORD(v12) = v3;
  DWORD1(v12) = v3;
  *(&v12 + 1) = *(a2 + 24);
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  v7 = &unk_1F2CFA908;
  *&v8 = v6;
  *(&v8 + 1) = v5 | 0x100000000;
  LODWORD(v9) = v5;
  DWORD1(v9) = v5;
  *(&v9 + 1) = *(a3 + 24);
  (*(*a1 + 248))(a1, &v10, &v7, 0);
  v7 = &unk_1F2CFA908;
  v8 = 0u;
  v9 = 0u;
  quasar::Bitmap::~Bitmap(&v7);
  v10 = &unk_1F2CFA908;
  v11 = 0u;
  v12 = 0u;
  quasar::Bitmap::~Bitmap(&v10);
}

void sub_1B54CDC38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  a15 = 0u;
  a16 = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, int a6)
{
  (*(*a1 + 88))(a1);
  kaldi::nnet1::Recurrent::EnsureTrainingBuffers(a1);
  if (a5)
  {
    v10 = a5;
  }

  else
  {
    v10 = a4;
  }

  v11 = *(v10 + 32);
  v12 = a6;
  *(*(a1 + 336) + 48 * a6 + 32) = v11;
  v13 = *(a1 + 360);
  v14 = (v13 + 48 * a6);
  v14[4] = v11;
  v15 = *(a1 + 96);
  v62 = *(a1 + 100);
  v16 = *(a1 + 480);
  if (*(a1 + 488) == v16 || *(v16 + 32 * v12 + 16) < 1)
  {
    v61 = 0;
  }

  else
  {
    v17 = (*(a1 + 504) + 48 * v12);
    v17[4] = v11;
    v61 = 1;
    kaldi::CuMatrix<float>::Resize(v17, v15, v14[2].u32[0], 1, 0);
    v13 = *(a1 + 360);
    v11 = *(v13 + 48 * v12 + 32);
  }

  v18 = v13 + 48 * v12;
  v19 = *(v18 + 16);
  *&v66 = *(v18 + 8);
  DWORD2(v66) = v19;
  HIDWORD(v66) = v15 * v62;
  *&v67 = *(v18 + 24);
  *(&v67 + 1) = v11;
  v65 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v65, a4, 111);
  v58 = a5;
  v65 = &unk_1F2CFA908;
  v66 = 0u;
  v67 = 0u;
  quasar::Bitmap::~Bitmap(&v65);
  v20 = *(a1 + 360) + 48 * v12;
  v21 = *(v20 + 16);
  v22 = *(v20 + 8);
  v23 = *(v20 + 24);
  v24 = *(v20 + 28);
  v59 = v15 * v62;
  v25 = *(v20 + 32);
  *(&v66 + 1) = __PAIR64__(v15, v21);
  LODWORD(v67) = v23;
  DWORD1(v67) = v24 - v23 * v15 * v62;
  *(&v67 + 1) = v25;
  v65 = &unk_1F2CFA908;
  *&v66 = v22 + 4 * v23 * v15 * v62;
  kaldi::CuMatrixBase<float>::SetZero(&v65);
  v65 = &unk_1F2CFA908;
  v66 = 0u;
  v67 = 0u;
  quasar::Bitmap::~Bitmap(&v65);
  if (v62 >= 1)
  {
    v26 = v62;
    v27 = 4 * v15 * v62;
    v60 = 4 * v15;
    v28 = v15 * (v62 - 1);
    v29 = v15 * v62;
    v63 = v15;
    do
    {
      v30 = *(a1 + 336) + 48 * v12;
      v31 = *(v30 + 16);
      v32 = *(v30 + 24);
      v33 = *(v30 + 8) + 4 * (v32 * v29);
      v34 = *(v30 + 28) - v32 * v29;
      v35 = *(v30 + 32);
      *(&v72 + 1) = __PAIR64__(v15, v31);
      *&v73 = __PAIR64__(v34, v32);
      *(&v73 + 1) = v35;
      v71 = &unk_1F2CFA908;
      *&v72 = v33;
      v36 = *(a1 + 360);
      v37 = v36 + 48 * v12;
      v38 = *(v37 + 16);
      v39 = *(v37 + 24);
      v40 = *(v37 + 8) + 4 * (v39 * v28);
      v41 = *(v37 + 28) - v39 * v28;
      v42 = *(v37 + 32);
      *(&v69 + 1) = __PAIR64__(v15, v38);
      *&v70 = __PAIR64__(v41, v39);
      *(&v70 + 1) = v42;
      v68 = &unk_1F2CFA908;
      *&v69 = v40;
      if (v26 < v62)
      {
        v43 = v61;
      }

      else
      {
        v43 = 0;
      }

      if (v43 == 1)
      {
        v44 = *(a1 + 504) + 48 * v12;
        v45 = *(a1 + 480) + 32 * v12;
        *(&v66 + 1) = 0;
        v65 = &unk_1F2CFCA48;
        *&v66 = *(v45 + 8) + v27;
        DWORD2(v66) = v15;
        *&v67 = *(v45 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(v44, &v68, &v65, 0);
        v36 = *(a1 + 360);
        v46 = v36 + 48 * v12;
        v38 = *(v46 + 16);
        v39 = *(v46 + 24);
        v42 = *(v46 + 32);
      }

      v47 = v36 + 48 * v12;
      v48 = *(v47 + 8) + 4 * (v39 * v29);
      LODWORD(v47) = *(v47 + 28) - v39 * v29;
      *(&v66 + 1) = __PAIR64__(v63, v38);
      *&v67 = __PAIR64__(v47, v39);
      *(&v67 + 1) = v42;
      v65 = &unk_1F2CFA908;
      *&v66 = v48;
      kaldi::CuMatrixBase<float>::AddMatMat(&v68, &v65, 111, a1 + 160, 111);
      v65 = &unk_1F2CFA908;
      v66 = 0u;
      v67 = 0u;
      quasar::Bitmap::~Bitmap(&v65);
      LODWORD(v15) = v63;
      if (v43)
      {
        v49 = *(a1 + 504) + 48 * v12;
        v50 = *(a1 + 480) + 32 * v12;
        *(&v66 + 1) = 0;
        v65 = &unk_1F2CFCA48;
        *&v66 = *(v50 + 8) + v27;
        DWORD2(v66) = v63;
        *&v67 = *(v50 + 24);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v68, v49, &v65, 0);
      }

      v51 = *(a1 + 384);
      switch(v51)
      {
        case 520:
          kaldi::CuMatrixBase<float>::ApplyHeaviside(&v71);
          kaldi::CuMatrixBase<float>::MulElements(&v68, &v71);
          break;
        case 517:
          kaldi::CuMatrixBase<float>::DiffTanh(&v68, &v71, &v68);
          break;
        case 516:
          kaldi::CuMatrixBase<float>::DiffSigmoid(&v68, &v71, &v68);
          break;
        default:
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v65);
          v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v65, "Unknown nonlinearity type: ", 27);
          kaldi::nnet1::Component::TypeToMarker(*(a1 + 384), &__p);
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

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v65);
      }

      --v26;
      v68 = &unk_1F2CFA908;
      v69 = 0u;
      v70 = 0u;
      quasar::Bitmap::~Bitmap(&v68);
      v71 = &unk_1F2CFA908;
      v72 = 0u;
      v73 = 0u;
      quasar::Bitmap::~Bitmap(&v71);
      v27 -= v60;
      v29 -= v63;
      v28 -= v63;
    }

    while ((v26 + 1) > 1);
  }

  if (v58)
  {
    v52 = *(a1 + 360) + 48 * v12;
    v53 = *(v52 + 16);
    v54 = *(v52 + 32);
    *&v66 = *(v52 + 8);
    *(&v66 + 1) = __PAIR64__(v59, v53);
    *&v67 = *(v52 + 24);
    *(&v67 + 1) = v54;
    v65 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(v58, &v65, 111);
    v65 = &unk_1F2CFA908;
    v66 = 0u;
    v67 = 0u;
    quasar::Bitmap::~Bitmap(&v65);
  }
}

void sub_1B54CE320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *(v14 - 168) = a14;
  v15 = v14 - 168;
  *(v15 + 8) = 0u;
  *(v15 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v14 - 168));
  *(v14 - 128) = a13;
  v16 = v14 - 128;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  JUMPOUT(0x1B54CE38CLL);
}

void kaldi::nnet1::Recurrent::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  (*(*a1 + 88))(a1);
  kaldi::nnet1::Recurrent::EnsureTrainingBuffers(a1);
  v9 = *(a1 + 240) + 48 * a5;
  *(v9 + 32) = a4;
  *(*(a1 + 264) + 32 * a5 + 24) = a4;
  v10 = *(a1 + 96);
  v11 = *(a1 + 100);
  *(*(a1 + 408) + 4 * a5) = *(a2 + 20);
  v12 = *(a1 + 360) + 48 * a5;
  LODWORD(a2) = v11 * v10;
  v13 = *(v12 + 16);
  v14 = *(v12 + 32);
  *&v26 = *(v12 + 8);
  *(&v26 + 1) = __PAIR64__(a2, v13);
  *&v27 = *(v12 + 24);
  *(&v27 + 1) = v14;
  v25 = &unk_1F2CFA908;
  v15 = *(a1 + 336) + 48 * a5;
  v16 = *(v15 + 16);
  v17 = *(v15 + 32);
  *&v23 = *(v15 + 8);
  *(&v23 + 1) = __PAIR64__(a2, v16);
  *&v24 = *(v15 + 24);
  *(&v24 + 1) = v17;
  v22 = &unk_1F2CFA908;
  kaldi::CuMatrixBase<float>::AddMatMat(v9, &v25, 112, &v22, 111);
  v22 = &unk_1F2CFA908;
  v23 = 0u;
  v24 = 0u;
  quasar::Bitmap::~Bitmap(&v22);
  v25 = &unk_1F2CFA908;
  v26 = 0u;
  v27 = 0u;
  quasar::Bitmap::~Bitmap(&v25);
  v18 = *(a1 + 264) + 32 * a5;
  v19 = *(a1 + 360) + 48 * a5;
  v20 = *(v19 + 16);
  v21 = *(v19 + 32);
  *&v26 = *(v19 + 8);
  *(&v26 + 1) = __PAIR64__(a2, v20);
  *&v27 = *(v19 + 24);
  *(&v27 + 1) = v21;
  v25 = &unk_1F2CFA908;
  kaldi::CuVectorBase<float>::AddRowSumMat(v18, &v25);
  v25 = &unk_1F2CFA908;
  v26 = 0u;
  v27 = 0u;
  quasar::Bitmap::~Bitmap(&v25);
}

void sub_1B54CE5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Recurrent::NormalizeGradients(kaldi::nnet1::Recurrent *this, float a2, unsigned int a3)
{
  v3 = a2;
  v5 = *(this + 39);
  if (v5 == 3)
  {
    if (a2 >= 0.0 && a2 <= 1.0)
    {
      v8 = a3;
      kaldi::nnet1::UpdatableComponent::RmspropGradient(*(this + 30) + 48 * a3, *(this + 36) + 48 * a3, a2);
      v9 = *(this + 33) + 32 * v8;
      v10 = *(this + 39) + 32 * v8;

      kaldi::nnet1::UpdatableComponent::RmspropGradient(v9, v10, v3);
    }
  }

  else if (v5 == 1)
  {
    if (a2 > 0.0)
    {
      v6 = a3;
      if (*(this + 84))
      {
        v3 = *(*(this + 51) + 4 * a3) * a2;
      }

      kaldi::nnet1::UpdatableComponent::ClipGradient(*(this + 30) + 48 * a3, v3);
      v13 = *(this + 33) + 32 * v6;

      kaldi::nnet1::UpdatableComponent::ClipGradient(v13, v3);
    }
  }

  else if (a2 > 0.0 && v5 == 2)
  {
    v12 = a3;
    if (*(this + 84))
    {
      v3 = *(*(this + 51) + 4 * a3) * a2;
    }

    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(*(this + 30) + 48 * a3, (*(this + 36) + 48 * a3), v3);
    v14 = *(this + 33) + 32 * v12;
    v15 = (*(this + 39) + 32 * v12);

    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v14, v15, v3);
  }
}

void *kaldi::nnet1::Recurrent::UpdateWeights(kaldi::nnet1::Recurrent *this, void *a2, int a3)
{
  (*(*this + 88))(this);
  kaldi::nnet1::Recurrent::EnsureTrainingBuffers(this);
  v6 = *(this + *(*this - 24) + 56);
  v8 = *(this + 16);
  v7 = *(this + 17);
  *(this + 24) = a2;
  *(this + 29) = a2;
  v9 = *(this + 20);
  if (a3 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *(this + 20);
  }

  if (v9 == 1)
  {
    v10 = 0;
  }

  v11 = v10;
  v12 = *(this + 30);
  v13 = v12 + 48 * v10;
  *(v13 + 32) = a2;
  *(*(this + 33) + 32 * v10 + 24) = a2;
  *(*(this + 36) + 48 * v10 + 32) = a2;
  *(*(this + 39) + 32 * v10 + 24) = a2;
  if (v10 == v9)
  {
    kaldi::CuMatrixBase<float>::AddMat(v13, v12, 111, 1.0, 0.0);
    LODWORD(v14) = 1.0;
    kaldi::CuVectorBase<float>::AddVec(v14, 0.0);
    if (*(this + 20) > 1)
    {
      v15 = 1;
      v16 = 32;
      v17 = 48;
      do
      {
        kaldi::CuMatrixBase<float>::AddMat(*(this + 30) + 48 * v11, *(this + 30) + v17, 111, 1.0, 1.0);
        LODWORD(v18) = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v18, 1.0);
        ++v15;
        v17 += 48;
        v16 += 32;
      }

      while (v15 < *(this + 20));
    }

    v19 = *(this + 51);
    v19[v11] = 0;
    if (v9 >= 1)
    {
      v20 = 0;
      v21 = v19;
      do
      {
        v22 = *v21++;
        v20 += v22;
        v19[v11] = v20;
        --v9;
      }

      while (v9);
    }
  }

  if (*(this + 84) == 1)
  {
    v6 = v6 / *(*(this + 51) + 4 * v11);
  }

  if (*(this + 38) >= 0.0)
  {
    (*(*this + 280))(this, v11);
  }

  if (v8 != 0.0)
  {
    kaldi::CuMatrixBase<float>::AddMat(this + 160, this + 160, 111, -(v6 * v8) * *(*(this + 51) + 4 * v11), 1.0);
  }

  v23 = *(this + 30);
  if (v7 != 0.0)
  {
    kaldi::cu::RegularizeL1<float>(this + 160, v23 + 48 * v11, (v7 * v6) * *(*(this + 51) + 4 * v11), v6);
    v23 = *(this + 30);
  }

  kaldi::CuMatrixBase<float>::AddMat(this + 160, v23 + 48 * v11, 111, -(v6 * *(this + 98)), 1.0);
  *&v24 = -(v6 * *(this + 99));
  result = kaldi::CuVectorBase<float>::AddVec(v24, 1.0);
  if (*(this + 100) > 0.0)
  {
    *(this + 58) = a2;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(this + 108, this + 160, 111);
    kaldi::CuMatrixBase<float>::MulElements(this + 432, this + 160);
    v26 = *(this + *(*this - 24) + 12);
    v28[2] = 0;
    v29 = 0;
    v28[0] = &unk_1F2D3AC18;
    v28[1] = 0;
    kaldi::CuVector<float>::Resize(v28, v26, 0);
    v29 = a2;
    kaldi::CuVectorBase<float>::AddColSumMat(v28, this + 432);
    kaldi::CuVectorBase<float>::ApplyPow(v28, 0.5);
    kaldi::CuVector<float>::CuVector(v27, v28);
    kaldi::CuVectorBase<float>::Scale();
    kaldi::CuVectorBase<float>::ApplyFloor(v27, 1.0);
    kaldi::CuVectorBase<float>::InvertElements(v27);
    kaldi::CuMatrixBase<float>::MulRowsVec(this + 160, v27);
    kaldi::CuVector<float>::~CuVector(v27);
    return kaldi::CuVector<float>::~CuVector(v28);
  }

  return result;
}

void sub_1B54CEB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Recurrent::GetGradient(_DWORD *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 272))(v9, a2, a3, 0, 0);
  v10 = (*(*a1 + 184))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 1);
  v11 = a1[44] * a1[45];
  v15 = 0;
  v16 = 0;
  v14 = *a4;
  LODWORD(v15) = v11;
  kaldi::VectorBase<float>::CopyRowsFromMat(&v14, v9[30]);
  v12 = a1[56];
  v15 = 0;
  v16 = 0;
  v14 = *a4 + 4 * v11;
  LODWORD(v15) = v12;
  kaldi::CuVectorBase<float>::CopyToVec<float>(v9[33], &v14);
  return (*(*v9 + 8))(v9);
}

float virtual thunk tokaldi::nnet1::Recurrent::SumParams(kaldi::nnet1::Recurrent *this)
{
  v1 = this + *(*this - 224);
  v2 = kaldi::CuMatrixBase<float>::Sum((v1 + 160));
  v3 = kaldi::CuVectorBase<float>::Sum((v1 + 208));
  return v2 + *&v3;
}

void *virtual thunk tokaldi::nnet1::Recurrent::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 388) = 0;
  return result;
}

void virtual thunk tokaldi::nnet1::Recurrent::SetTrainOptions(kaldi::nnet1::Recurrent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = (this + *(*this - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 194) = 0;
}

void kaldi::nnet1::AveragePoolingComponent::InitData(uint64_t a1, uint64_t *a2)
{
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v4 = a2 + 4;
  v5 = a1 + 56;
  v6 = a1 + 52;
  v7 = a1 + 48;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      v8 = HIBYTE(v33);
      goto LABEL_57;
    }

    kaldi::ReadToken(a2, 0, &v31);
    v8 = HIBYTE(v33);
    if ((SHIBYTE(v33) & 0x80000000) == 0)
    {
      switch(HIBYTE(v33))
      {
        case 7u:
          v13 = &v31;
          goto LABEL_31;
        case 0xAu:
          v14 = v31 == 0x7A69536C6F6F503CLL && v32 == 15973;
          v10 = v7;
          if (!v14)
          {
            v15 = v31 == 0x6574536C6F6F503CLL && v32 == 15984;
            v10 = v6;
            if (!v15)
            {
              goto LABEL_60;
            }
          }

          break;
        case 0xCu:
          v9 = v31 == 0x7274536C6F6F503CLL && v32 == 1046832233;
          v10 = v5;
          if (!v9)
          {
            v21 = &v31;
            goto LABEL_52;
          }

          break;
        default:
          goto LABEL_60;
      }

      goto LABEL_46;
    }

    v11 = v32;
    if (v32 != 10 || (*v31 == 0x7A69536C6F6F503CLL ? (v19 = *(v31 + 4) == 15973) : (v19 = 0), (v10 = v7, !v19) && (*v31 == 0x6574536C6F6F503CLL ? (v20 = *(v31 + 4) == 15984) : (v20 = 0), v10 = v6, !v20)))
    {
      if (v32 != 12)
      {
        goto LABEL_19;
      }

      v12 = *v31 == 0x7274536C6F6F503CLL && v31[2] == 1046832233;
      v10 = v5;
      if (!v12)
      {
        break;
      }
    }

LABEL_46:
    kaldi::ReadBasicType<int>(a2, 0, v10);
LABEL_47:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  v11 = v32;
LABEL_19:
  if (v11 != 7)
  {
    goto LABEL_50;
  }

  v13 = v31;
LABEL_31:
  v16 = *v13;
  v17 = *(v13 + 3);
  if (v16 == 1633899324 && v17 == 1046834273)
  {
    kaldi::ReadBasicType<float>(a2, 0, (a1 + 60));
    goto LABEL_47;
  }

  if ((SHIBYTE(v33) & 0x80000000) == 0)
  {
    goto LABEL_60;
  }

LABEL_50:
  if (v32 != 12)
  {
    goto LABEL_60;
  }

  v21 = v31;
LABEL_52:
  v22 = *v21;
  v23 = *(v21 + 2);
  if (v22 != 0x6E6F706D6F432F3CLL || v23 != 1047817829)
  {
LABEL_60:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v30);
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Unknown token ", 14);
    if (v33 >= 0)
    {
      v26 = &v31;
    }

    else
    {
      v26 = v31;
    }

    if (v33 >= 0)
    {
      v27 = HIBYTE(v33);
    }

    else
    {
      v27 = v32;
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, " (PoolSize|PoolStep|PoolStride|Scale)", 37);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
  }

LABEL_57:
  if (v8 < 0)
  {
    operator delete(v31);
  }
}

void sub_1B54CF3C8(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::AveragePoolingComponent::WriteData(unsigned int *a1, void *a2, int a3)
{
  kaldi::WriteToken(a2, a3, "<PoolSize>");
  kaldi::WriteBasicType<int>(a2, a3, a1[12]);
  kaldi::WriteToken(a2, a3, "<PoolStep>");
  kaldi::WriteBasicType<int>(a2, a3, a1[13]);
  kaldi::WriteToken(a2, a3, "<PoolStride>");
  kaldi::WriteBasicType<int>(a2, a3, a1[14]);
  kaldi::WriteToken(a2, a3, "<Scale>");

  return kaldi::WriteBasicType<float>(a2, a3);
}

void kaldi::nnet1::AveragePoolingComponent::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 8) / *(a1 + 56) - *(a1 + 48)) / *(a1 + 52);
  if ((v3 & 0x80000000) == 0)
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 56);
      v9 = *(a3 + 8) + 4 * (v8 * v7);
      v10 = *(a3 + 28) - v8 * v7;
      v11 = *(a3 + 32);
      LODWORD(v20[2]) = v8;
      *(&v20[2] + 4) = *(a3 + 20);
      HIDWORD(v20[3]) = v10;
      v20[4] = v11;
      v20[0] = &unk_1F2CFA908;
      v20[1] = v9;
      kaldi::CuMatrixBase<float>::SetZero(v20);
      v12 = *(a1 + 48);
      if (v12 >= 1)
      {
        for (i = 0; i < v12; ++i)
        {
          v14 = (i + v7 * *(a1 + 52)) * *(a1 + 56);
          v15 = *(a2 + 8) + 4 * v14;
          v16 = *(a2 + 28) - v14;
          v17 = *(a2 + 32);
          LODWORD(v19[2]) = *(a1 + 56);
          *(&v19[2] + 4) = *(a2 + 20);
          HIDWORD(v19[3]) = v16;
          v19[4] = v17;
          v19[0] = &unk_1F2CFA908;
          v19[1] = v15;
          kaldi::CuMatrixBase<float>::AddMat(v20, v19, 111, 1.0, 1.0);
          v19[0] = &unk_1F2CFA908;
          memset(&v19[1], 0, 32);
          quasar::Bitmap::~Bitmap(v19);
          v12 = *(a1 + 48);
        }
      }

      kaldi::CuMatrixBase<float>::Scale(v20, *(a1 + 60) / v12);
      v20[0] = &unk_1F2CFA908;
      memset(&v20[1], 0, 32);
      quasar::Bitmap::~Bitmap(v20);
    }

    while (v7++ != v3);
  }
}

void sub_1B54CF664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  quasar::Bitmap::~Bitmap(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::AveragePoolingComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 52);
  v9 = (*(a1 + 8) / *(a1 + 56));
  v10 = *(a1 + 48);
  LODWORD(v33) = 0;
  std::vector<int>::vector[abi:ne200100](__p, v9);
  kaldi::CuMatrixBase<float>::SetZero(a5);
  v30 = v9;
  v11 = *(a1 + 48);
  v31 = (v9 - v10) / v8;
  if ((v31 & 0x80000000) == 0)
  {
    v12 = 0;
    do
    {
      if (v11 >= 1)
      {
        v13 = 0;
        do
        {
          v15 = *(a1 + 52);
          v14 = *(a1 + 56);
          v16 = (v13 + v12 * v15) * v14;
          v17 = *(a5 + 8) + 4 * v16;
          v18 = *(a5 + 28) - v16;
          v19 = *(a5 + 32);
          LODWORD(v34[1]) = v14;
          *(&v34[1] + 4) = *(a5 + 20);
          HIDWORD(v34[2]) = v18;
          v34[3] = v19;
          v33 = &unk_1F2CFA908;
          v34[0] = v17;
          v20 = *(a4 + 8) + 4 * (v14 * v12);
          v21 = *(a4 + 28) - v14 * v12;
          v22 = *(a4 + 32);
          LODWORD(v32[2]) = v14;
          *(&v32[2] + 4) = *(a4 + 20);
          HIDWORD(v32[3]) = v21;
          v32[4] = v22;
          v32[0] = &unk_1F2CFA908;
          v32[1] = v20;
          kaldi::CuMatrixBase<float>::AddMat(&v33, v32, 111, 1.0, 1.0);
          ++*(__p[0] + v13 + v12 * v15);
          v32[0] = &unk_1F2CFA908;
          memset(&v32[1], 0, 32);
          quasar::Bitmap::~Bitmap(v32);
          v33 = &unk_1F2CFA908;
          memset(v34, 0, sizeof(v34));
          quasar::Bitmap::~Bitmap(&v33);
          v11 = *(a1 + 48);
          ++v13;
        }

        while (v13 < v11);
      }
    }

    while (v12++ != v31);
  }

  kaldi::CuMatrixBase<float>::Scale(a5, *(a1 + 60) / v11);
  if (v30 >= 1)
  {
    for (i = 0; i != v30; ++i)
    {
      v25 = *(a1 + 56);
      v26 = *(a5 + 8) + 4 * (v25 * i);
      v27 = *(a5 + 28) - v25 * i;
      v28 = *(a5 + 32);
      LODWORD(v34[1]) = v25;
      *(&v34[1] + 4) = *(a5 + 20);
      HIDWORD(v29) = v34[2];
      HIDWORD(v34[2]) = v27;
      v34[3] = v28;
      v33 = &unk_1F2CFA908;
      v34[0] = v26;
      LODWORD(v29) = *(__p[0] + i);
      *&v29 = 1.0 / v29;
      kaldi::CuMatrixBase<float>::Scale(&v33, *&v29);
      v33 = &unk_1F2CFA908;
      memset(v34, 0, sizeof(v34));
      quasar::Bitmap::~Bitmap(&v33);
    }
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B54CF94C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::nnet1::AveragePoolingComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  kaldi::ExpectToken(a2, a3, "<PoolSize>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 48);
  kaldi::ExpectToken(a2, a3, "<PoolStep>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 52);
  kaldi::ExpectToken(a2, a3, "<PoolStride>");
  kaldi::ReadBasicType<int>(a2, a3, a1 + 56);
  kaldi::ExpectToken(a2, a3, "<Scale>");

  return kaldi::ReadBasicType<float>(a2, a3, (a1 + 60));
}

uint64_t kaldi::nnet1::ConvolutionalComponent::Info(kaldi::nnet1::ConvolutionalComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  (*(*this + 168))(this, &v14, 0);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "\n filters: ", 11);
  kaldi::nnet1::MomentStatistics<float>(this + 104);
  if ((v13 & 0x80u) == 0)
  {
    v3 = v12;
  }

  else
  {
    v3 = v12[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v4 = v13;
  }

  else
  {
    v4 = v12[1];
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\n bias: ", 8);
  kaldi::nnet1::MomentStatistics<float>(this + 152);
  if ((v11 & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if ((v11 & 0x80u) == 0)
  {
    v8 = v11;
  }

  else
  {
    v8 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v18);
}

void sub_1B54CFD20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::InfoGradient(kaldi::nnet1::ConvolutionalComponent *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v41, "\n  filters_grad");
  kaldi::nnet1::MomentStatistics<float>(this + 24);
  if ((v40 & 0x80u) == 0)
  {
    v4 = v39;
  }

  else
  {
    v4 = v39[0];
  }

  if ((v40 & 0x80u) == 0)
  {
    v5 = v40;
  }

  else
  {
    v5 = v39[1];
  }

  v6 = std::string::append(&v41, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v42, ", lr-coef ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v43.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v43.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v38 & 0x80u) == 0)
  {
    v10 = v37;
  }

  else
  {
    v10 = v37[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v11 = v38;
  }

  else
  {
    v11 = v37[1];
  }

  v12 = std::string::append(&v43, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v44, ", max-norm ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v36 & 0x80u) == 0)
  {
    v16 = v35;
  }

  else
  {
    v16 = v35[0];
  }

  if ((v36 & 0x80u) == 0)
  {
    v17 = v36;
  }

  else
  {
    v17 = v35[1];
  }

  v18 = std::string::append(&v45, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v46.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v46.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v46, "\n  bias_grad");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v47.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v47.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(this + 27);
  if ((v34 & 0x80u) == 0)
  {
    v22 = v33;
  }

  else
  {
    v22 = v33[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v23 = v34;
  }

  else
  {
    v23 = v33[1];
  }

  v24 = std::string::append(&v47, v22, v23);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  v26 = std::string::append(&v48, ", lr-coef ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::ToString<float>();
  if ((v32 & 0x80u) == 0)
  {
    v28 = __p;
  }

  else
  {
    v28 = __p[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v29 = v32;
  }

  else
  {
    v29 = __p[1];
  }

  v30 = std::string::append(&v49, v28, v29);
  *a2 = *v30;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (v38 < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v40 < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }
}

void sub_1B54D0098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v64 - 41) < 0)
  {
    operator delete(*(v64 - 64));
  }

  if (*(v64 - 73) < 0)
  {
    operator delete(*(v64 - 96));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v64 - 105) < 0)
  {
    operator delete(*(v64 - 128));
  }

  if (*(v64 - 137) < 0)
  {
    operator delete(*(v64 - 160));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v64 - 169) < 0)
  {
    operator delete(*(v64 - 192));
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::ConvolutionalComponent::InitData(int32x2_t *a1, uint64_t *a2, kaldi::UniformRandomNumber *a3)
{
  v81 = 2.0;
  v82 = -1073741824;
  v80 = 1036831949;
  v79 = -1;
  kaldi::nnet1::Component::TypeToMarker(a1[23].u32[0], &v78);
  memset(v77, 0, sizeof(v77));
  v67 = a1 + 11;
  while (1)
  {
    if ((*(a2 + *(*a2 - 24) + 32) & 2) != 0)
    {
      goto LABEL_171;
    }

    kaldi::ReadToken(a2, 0, v77);
    if (SHIBYTE(v77[2]) < 0)
    {
      v9 = v77[1];
      if (v77[1] > 12)
      {
        if (v77[1] > 17)
        {
          if (v77[1] == 18)
          {
            if (*v77[0] == 0x6E6569646172473CLL && *(v77[0] + 1) == 0x7079546D726F4E74 && *(v77[0] + 8) == 15973)
            {
              goto LABEL_115;
            }

            goto LABEL_152;
          }

          if (v77[1] == 19)
          {
            v20 = *v77[0] == 0x61654C736169423CLL && *(v77[0] + 1) == 0x6F43657461526E72 && *(v77[0] + 11) == 0x3E66656F43657461;
            v13 = &a1[36] + 1;
            if (v20)
            {
              goto LABEL_160;
            }

            goto LABEL_152;
          }

          goto LABEL_153;
        }

        if (v77[1] != 13)
        {
          if (v77[1] == 15)
          {
            v14 = *v77[0] == 0x61526E7261654C3CLL && *(v77[0] + 7) == 0x3E66656F43657461;
            v13 = &a1[36];
            if (v14)
            {
              goto LABEL_160;
            }

            goto LABEL_152;
          }

LABEL_153:
          if (v9 != 9)
          {
            goto LABEL_164;
          }

          v22 = v77[0];
          goto LABEL_155;
        }

        if (*v77[0] != 0x74536D617261503CLL || *(v77[0] + 5) != 0x3E7665646474536DLL)
        {
          v31 = *v77[0] == 0x745368637461503CLL && *(v77[0] + 5) == 0x3E65646972745368;
          v8 = &a1[12];
          if (v31)
          {
            goto LABEL_106;
          }

          goto LABEL_152;
        }

        goto LABEL_133;
      }

      if (v77[1] > 10)
      {
        if (v77[1] != 11)
        {
          if (*v77[0] == 0x536D6F646E61523CLL && *(v77[0] + 2) == 1046766949)
          {
            goto LABEL_54;
          }

          goto LABEL_152;
        }

        if (*v77[0] != 0x6E6152736169423CLL || *(v77[0] + 3) != 0x3E65676E61527361)
        {
          v33 = *v77[0] == 0x745368637461503CLL && *(v77[0] + 3) == 0x3E70657453686374;
          v8 = &a1[11] + 1;
          if (v33)
          {
            goto LABEL_106;
          }

          goto LABEL_152;
        }

        goto LABEL_144;
      }

      if (v77[1] == 9)
      {
        v29 = *v77[0] == 0x6D726F4E78614D3CLL && *(v77[0] + 8) == 62;
        v13 = &a1[37];
        if (v29)
        {
          goto LABEL_160;
        }

LABEL_152:
        v9 = v77[1];
        goto LABEL_153;
      }

      if (v77[1] != 10)
      {
        goto LABEL_153;
      }

      if (*v77[0] != 0x61654D736169423CLL || *(v77[0] + 4) != 15982)
      {
        v11 = *v77[0] == 0x694468637461503CLL && *(v77[0] + 4) == 15981;
        v8 = &a1[11];
        if (v11)
        {
          goto LABEL_106;
        }

        goto LABEL_152;
      }

LABEL_116:
      v13 = &v82;
      goto LABEL_160;
    }

    if (HIBYTE(v77[2]) <= 0xCu)
    {
      break;
    }

    if (HIBYTE(v77[2]) <= 0x11u)
    {
      if (HIBYTE(v77[2]) != 13)
      {
        if (HIBYTE(v77[2]) != 15)
        {
          goto LABEL_200;
        }

        v12 = v77[0] == 0x61526E7261654C3CLL && *(v77 + 7) == 0x3E66656F43657461;
        v13 = &a1[36];
        if (!v12)
        {
          goto LABEL_200;
        }

        goto LABEL_160;
      }

      if (v77[0] != 0x74536D617261503CLL || *(v77 + 5) != 0x3E7665646474536DLL)
      {
        v24 = v77[0] == 0x745368637461503CLL && *(v77 + 5) == 0x3E65646972745368;
        v8 = &a1[12];
        if (!v24)
        {
          goto LABEL_200;
        }

        goto LABEL_106;
      }

LABEL_133:
      v13 = &v80;
      goto LABEL_160;
    }

    if (HIBYTE(v77[2]) == 18)
    {
      if (v77[0] != 0x6E6569646172473CLL || v77[1] != 0x7079546D726F4E74 || LOWORD(v77[2]) != 15973)
      {
        goto LABEL_200;
      }

LABEL_115:
      kaldi::ReadToken(a2, 0, &v78);
      goto LABEL_161;
    }

    if (HIBYTE(v77[2]) != 19)
    {
      goto LABEL_200;
    }

    v16 = v77[0] == 0x61654C736169423CLL && v77[1] == 0x6F43657461526E72;
    v17 = v16 && *(&v77[1] + 3) == 0x3E66656F43657461;
    v13 = &a1[36] + 1;
    if (!v17)
    {
      goto LABEL_200;
    }

LABEL_160:
    kaldi::ReadBasicType<float>(a2, 0, v13);
LABEL_161:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }

  if (HIBYTE(v77[2]) > 0xAu)
  {
    if (HIBYTE(v77[2]) != 11)
    {
      if (v77[0] != 0x536D6F646E61523CLL || LODWORD(v77[1]) != 1046766949)
      {
        v61 = v77;
        goto LABEL_166;
      }

LABEL_54:
      v8 = &v79;
LABEL_106:
      kaldi::ReadBasicType<int>(a2, 0, v8);
      goto LABEL_161;
    }

    if (v77[0] != 0x6E6152736169423CLL || *(v77 + 3) != 0x3E65676E61527361)
    {
      v26 = v77[0] == 0x745368637461503CLL && *(v77 + 3) == 0x3E70657453686374;
      v8 = &a1[11] + 1;
      if (!v26)
      {
        goto LABEL_200;
      }

      goto LABEL_106;
    }

LABEL_144:
    v13 = &v81;
    goto LABEL_160;
  }

  if (HIBYTE(v77[2]) != 9)
  {
    if (HIBYTE(v77[2]) != 10)
    {
      goto LABEL_200;
    }

    if (v77[0] != 0x61654D736169423CLL || LOWORD(v77[1]) != 15982)
    {
      v7 = v77[0] == 0x694468637461503CLL && LOWORD(v77[1]) == 15981;
      v8 = &a1[11];
      if (!v7)
      {
        goto LABEL_200;
      }

      goto LABEL_106;
    }

    goto LABEL_116;
  }

  v21 = v77[0] == 0x6D726F4E78614D3CLL && LOBYTE(v77[1]) == 62;
  v13 = &a1[37];
  if (v21)
  {
    goto LABEL_160;
  }

  v22 = v77;
LABEL_155:
  v36 = *v22;
  v37 = *(v22 + 8);
  v38 = v36 == 0x6461724778614D3CLL && v37 == 62;
  v13 = &a1[23] + 1;
  if (v38)
  {
    goto LABEL_160;
  }

  if ((HIBYTE(v77[2]) & 0x80) == 0)
  {
    goto LABEL_200;
  }

  v9 = v77[1];
LABEL_164:
  if (v9 != 12)
  {
    goto LABEL_200;
  }

  v61 = v77[0];
LABEL_166:
  v39 = *v61;
  v40 = *(v61 + 2);
  if (v39 != 0x6E6F706D6F432F3CLL || v40 != 1047817829)
  {
LABEL_200:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v73);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "Unknown token ", 14);
    if (SHIBYTE(v77[2]) >= 0)
    {
      v63 = v77;
    }

    else
    {
      v63 = v77[0];
    }

    if (SHIBYTE(v77[2]) >= 0)
    {
      v64 = HIBYTE(v77[2]);
    }

    else
    {
      v64 = v77[1];
    }

    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ", a typo in config?", 19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " (ParamStddev|BiasMean|BiasRange|PatchDim|PatchStep|PatchStride|MaxNorm|GradientNormType|MaxGrad|RandomSeed)", 108);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v73);
  }

LABEL_171:
  a1[23].i32[0] = kaldi::nnet1::Component::MarkerToGradientNormType(&v78);
  v42 = a1[12].i32[0];
  v43 = (a1[1].i32[0] / v42);
  if (kaldi::g_kaldi_verbose_level < 0)
  {
    v45 = 0;
  }

  else
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v73);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "num_splice ", 11);
    MEMORY[0x1B8C84C00](v44, v43);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v73);
    v42 = a1[12].i32[0];
    v45 = kaldi::g_kaldi_verbose_level >= 0;
  }

  v46 = ((v42 - v67->i32[0]) / a1[11].i32[1] + 1);
  if (!v45)
  {
    v48 = (v67->i32[0] * v43);
    goto LABEL_179;
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v73);
  v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "num_patches ", 12);
  MEMORY[0x1B8C84C00](v47, v46);
  kaldi::KaldiLogMessage::~KaldiLogMessage(v73);
  v48 = (v67->i32[0] * v43);
  if (kaldi::g_kaldi_verbose_level < 0)
  {
LABEL_179:
    v50 = (a1[1].i32[1] / v46);
    goto LABEL_180;
  }

  kaldi::KaldiWarnMessage::KaldiWarnMessage(v73);
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "filter_dim ", 11);
  MEMORY[0x1B8C84C00](v49, v48);
  kaldi::KaldiLogMessage::~KaldiLogMessage(v73);
  v50 = (a1[1].i32[1] / v46);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v73);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "num_filters ", 12);
    MEMORY[0x1B8C84C00](v51, v50);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v73);
  }

LABEL_180:
  if (v79 >= 1)
  {
    kaldi::UniformRandomNumber::SetRandomSeeds(a3, v79);
  }

  kaldi::GaussRandomNumber::GaussRandomNumber(v73, a3);
  kaldi::Matrix<float>::Matrix(v71, v50, v48, 0, 0);
  if (v50 >= 1)
  {
    v52 = 0;
    do
    {
      if (v48 >= 1)
      {
        v53 = 0;
        do
        {
          v54 = *&v80;
          kaldi::GaussRandomNumber::Rand(v73, 0);
          *(v71[0] + v52 * v72 + v53++) = v54 * v55;
        }

        while (v48 != v53);
      }

      ++v52;
    }

    while (v52 != v50);
  }

  kaldi::CuMatrix<float>::operator=(a1 + 13, v71);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  kaldi::Vector<float>::Resize(&v68, v50, 0);
  if (v50 <= 0)
  {
    v60 = v69;
  }

  else
  {
    v56 = 0;
    do
    {
      v57 = *&v82;
      v58 = kaldi::UniformRandomNumber::RandUniform(a3, 0);
      v59 = v57 + (v58 + -0.5) * v81;
      v60 = v69;
      v68[v56++] = v59;
    }

    while (v50 != v56);
  }

  kaldi::CuVector<float>::Resize(&a1[19], v60, 1);
  kaldi::CuVectorBase<float>::CopyFromVec<float>(&a1[19], &v68);
  kaldi::Vector<float>::Destroy(&v68);
  kaldi::Matrix<float>::~Matrix(v71);
  if (__p)
  {
    v76 = __p;
    operator delete(__p);
  }

  v71[0] = &v74;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](v71);
  if (SHIBYTE(v77[2]) < 0)
  {
    operator delete(v77[0]);
  }

  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v78.__r_.__value_.__l.__data_);
  }
}