const kaldi::quasar::TranslationUtil::NbestElement *std::__stable_sort_move<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *result, kaldi::quasar::TranslationUtil::NbestElement *a2, uint64_t a3, unint64_t a4, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (a4)
  {
    v8 = result;
    if (a4 == 2)
    {
      v20 = this;
      v21 = &v22;
      v22 = 0;
      v9 = (a2 - 272);
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v18, (a2 - 272));
      v10 = v18;
      if (v19 == v18)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v11) = 0;
        do
        {
          v11 = *(v10 + 232) + v11;
          v10 += 240;
        }

        while (v10 != v19);
        v12 = v11 / (0xEEEEEEEEEEEEEEEFLL * ((v19 - v18) >> 4));
      }

      v15 = *v8;
      v14 = *(v8 + 1);
      if (v14 == *v8)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v16) = 0;
        do
        {
          v16 = *(v15 + 232) + v16;
          v15 += 240;
        }

        while (v15 != v14);
        v17 = v16 / (0xEEEEEEEEEEEEEEEFLL * ((v14 - *v8) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v18);
      if (v12 <= v17)
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v8);
      }

      else
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, v9);
        v9 = v8;
      }

      ++v22;
      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement((this + 272), v9);
    }

    else if (a4 == 1)
    {

      return kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    }

    else if (a4 > 8)
    {
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(result, result + 272 * (a4 >> 1), a3, a4 >> 1, this, a4 >> 1);
      std::__stable_sort<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v8 + 272 * (a4 >> 1), a2, a3, a4 - (a4 >> 1), this + 272 * (a4 >> 1), a4 - (a4 >> 1));

      return std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v8, (v8 + 272 * (a4 >> 1)), (v8 + 272 * (a4 >> 1)), a2, this);
    }

    else
    {

      return std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(result, a2, this);
    }
  }

  return result;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *a1, uint64_t a2, kaldi::quasar::TranslationUtil::NbestElement *a3, uint64_t a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *a7, uint64_t a8)
{
  v35 = a2;
  v36 = a1;
  if (a6)
  {
    v9 = a6;
    v13 = a2;
    v14 = a1;
    do
    {
      if (v9 <= a8 || a5 <= a8)
      {
        std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v14, v13, a3, a4, a5, v9, a7);
        return;
      }

      if (!a5)
      {
        return;
      }

      while (1)
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v33, v13);
        v15 = v33;
        if (v34 == v33)
        {
          LODWORD(v17) = 0;
        }

        else
        {
          LODWORD(v16) = 0;
          do
          {
            v16 = *(v15 + 232) + v16;
            v15 += 240;
          }

          while (v15 != v34);
          v17 = v16 / (0xEEEEEEEEEEEEEEEFLL * ((v34 - v33) >> 4));
        }

        v19 = *v14;
        v18 = *(v14 + 1);
        if (v18 == *v14)
        {
          LODWORD(v21) = 0;
        }

        else
        {
          LODWORD(v20) = 0;
          do
          {
            v20 = *(v19 + 232) + v20;
            v19 += 240;
          }

          while (v19 != v18);
          v21 = v20 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - *v14) >> 4));
        }

        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v33);
        if (v17 > v21)
        {
          break;
        }

        v14 = (v14 + 272);
        v36 = v14;
        if (!--a5)
        {
          return;
        }
      }

      v31 = a8;
      v30 = a3;
      if (a5 >= v9)
      {
        if (a5 == 1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *> &>(&v36, &v35);
          return;
        }

        v26 = a3;
        v24 = a5 / 2;
        v23 = (v14 + 272 * (a5 / 2));
        v37 = 0;
        v27 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1}>(v13, v23, 0xF0F0F0F0F0F0F0F1 * ((v26 - v13) >> 4));
        v22 = 0xF0F0F0F0F0F0F0F1 * ((v27 - v13) >> 4);
        v25 = v13;
        v13 = v27;
      }

      else
      {
        v22 = v9 / 2;
        v23 = std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,kaldi::quasar::TranslationUtil::NbestElement,std::__identity>(v14, v13, (v13 + 272 * (v9 / 2)));
        v24 = 0xF0F0F0F0F0F0F0F1 * ((v23 - v14) >> 4);
        v25 = v13;
        v13 = (v13 + 272 * (v9 / 2));
      }

      v28 = v13;
      if (v23 != v25)
      {
        v28 = v23;
        if (v13 != v25)
        {
          v28 = std::__rotate_forward[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement *>>(v23, v25, v13);
        }
      }

      a5 -= v24;
      v9 -= v22;
      if (v24 + v22 >= a5 + v9)
      {
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v28, v13, v30, a4, a5, v9, a7, v31);
        v13 = v23;
        a8 = v31;
        v9 = v22;
        a5 = v24;
        a3 = v28;
      }

      else
      {
        v29 = v23;
        a8 = v31;
        std::__inplace_merge<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v14, v29, v28, a4, v24, v22, a7, v31);
        v36 = v28;
        v14 = v28;
        a3 = v30;
      }

      v35 = v13;
    }

    while (v9);
  }
}

const kaldi::quasar::TranslationUtil::NbestElement *std::__insertion_sort_move[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(const kaldi::quasar::TranslationUtil::NbestElement *result, const kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  if (result != a2)
  {
    v5 = result;
    v30 = this;
    v31 = &v32;
    v32 = 0;
    result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(this, result);
    ++v32;
    v6 = (v5 + 272);
    if (v6 != a2)
    {
      v7 = this;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v28, v6);
        v8 = v28;
        if (v29 == v28)
        {
          LODWORD(v10) = 0;
        }

        else
        {
          LODWORD(v9) = 0;
          do
          {
            v9 = *(v8 + 232) + v9;
            v8 += 240;
          }

          while (v8 != v29);
          v10 = v9 / (0xEEEEEEEEEEEEEEEFLL * ((v29 - v28) >> 4));
        }

        v12 = *v7;
        v11 = *(v7 + 1);
        if (v11 == *v7)
        {
          LODWORD(v14) = 0;
        }

        else
        {
          LODWORD(v13) = 0;
          do
          {
            v13 = *(v12 + 232) + v13;
            v12 += 240;
          }

          while (v12 != v11);
          v14 = v13 / (0xEEEEEEEEEEEEEEEFLL * ((v11 - *v7) >> 4));
        }

        v15 = (v7 + 272);
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v28);
        if (v10 <= v14)
        {
          result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v7 + 272), v6);
          ++v32;
        }

        else
        {
          kaldi::quasar::TranslationUtil::NbestElement::NbestElement((v7 + 272), v7);
          ++v32;
          v16 = this;
          if (v7 != this)
          {
            while (1)
            {
              kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v26, v6);
              v17 = v26;
              if (v27 == v26)
              {
                LODWORD(v19) = 0;
              }

              else
              {
                LODWORD(v18) = 0;
                do
                {
                  v18 = *(v17 + 232) + v18;
                  v17 += 240;
                }

                while (v17 != v27);
                v19 = v18 / (0xEEEEEEEEEEEEEEEFLL * ((v27 - v26) >> 4));
              }

              v20 = (v7 - 272);
              v21 = *(v7 - 33);
              v22 = *(v7 - 34);
              if (v21 == v22)
              {
                LODWORD(v25) = 0;
              }

              else
              {
                LODWORD(v23) = 0;
                v24 = 0xEEEEEEEEEEEEEEEFLL * ((v21 - v22) >> 4);
                do
                {
                  v23 = *(v22 + 232) + v23;
                  v22 += 240;
                }

                while (v22 != v21);
                v25 = v23 / v24;
              }

              kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v26);
              if (v19 <= v25)
              {
                break;
              }

              kaldi::quasar::TranslationUtil::NbestElement::operator=(v7, v7 - 272);
              v7 = (v7 - 272);
              if (v20 == this)
              {
                v16 = this;
                goto LABEL_31;
              }
            }

            v16 = v7;
          }

LABEL_31:
          result = kaldi::quasar::TranslationUtil::NbestElement::operator=(v16, v6);
        }

        v6 = (v6 + 272);
        v7 = v15;
      }

      while (v6 != a2);
    }
  }

  return result;
}

kaldi::quasar::TranslationUtil::NbestElement *std::__merge_move_construct[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(kaldi::quasar::TranslationUtil::NbestElement *result, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, kaldi::quasar::TranslationUtil::NbestElement *a4, kaldi::quasar::TranslationUtil::NbestElement *this)
{
  v5 = this;
  v19 = this;
  v20 = &v21;
  v21 = 0;
  if (result == a2)
  {
LABEL_20:
    while (a3 != a4)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, a3);
      a3 = (a3 + 272);
      v5 = (v5 + 272);
      ++v21;
    }
  }

  else
  {
    v9 = result;
    while (a3 != a4)
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v17, a3);
      v10 = v17;
      if (v18 == v17)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v11) = 0;
        do
        {
          v11 = *(v10 + 232) + v11;
          v10 += 240;
        }

        while (v10 != v18);
        v12 = v11 / (0xEEEEEEEEEEEEEEEFLL * ((v18 - v17) >> 4));
      }

      v14 = *v9;
      v13 = *(v9 + 1);
      if (v13 == *v9)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        LODWORD(v15) = 0;
        do
        {
          v15 = *(v14 + 232) + v15;
          v14 += 240;
        }

        while (v14 != v13);
        v16 = v15 / (0xEEEEEEEEEEEEEEEFLL * ((v13 - *v9) >> 4));
      }

      kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v17);
      if (v12 <= v16)
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, v9);
        ++v21;
        v9 = (v9 + 272);
      }

      else
      {
        result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, a3);
        ++v21;
        a3 = (a3 + 272);
      }

      v5 = (v5 + 272);
      if (v9 == a2)
      {
        goto LABEL_20;
      }
    }

    while (v9 != a2)
    {
      result = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v5, v9);
      v9 = (v9 + 272);
      v5 = (v5 + 272);
      ++v21;
    }
  }

  return result;
}

void std::__buffered_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(kaldi::quasar::TranslationUtil::NbestElement *a1, kaldi::quasar::TranslationUtil::NbestElement *a2, kaldi::quasar::TranslationUtil::NbestElement *a3, uint64_t a4, uint64_t a5, uint64_t a6, kaldi::quasar::TranslationUtil::NbestElement *a7)
{
  v7 = a7;
  v20 = a7;
  v21 = &v22;
  v22 = 0;
  if (a5 > a6)
  {
    v12 = a7;
    if (a2 != a3)
    {
      v12 = a7;
      v13 = a2;
      do
      {
        v14 = kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v12, v13);
        ++v22;
        v13 = (v13 + 272);
        v12 = (v14 + 272);
      }

      while (v13 != a3);
    }

    v19 = a4;
    std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,std::__invert<kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement*>,std::reverse_iterator<kaldi::quasar::TranslationUtil::NbestElement*>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>,std::reverse_iterator<std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>>(v12, v12, v7, v7, a2, a2, a1, a1, a3, a3, &v19);
    if (!v7)
    {
      return;
    }

LABEL_11:
    v17 = v21;
    if (*v21)
    {
      v18 = 0;
      do
      {
        kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(v7);
        ++v18;
        v7 = (v7 + 272);
      }

      while (v18 < *v17);
    }

    return;
  }

  v15 = a7;
  if (a1 != a2)
  {
    v15 = a7;
    v16 = a1;
    do
    {
      kaldi::quasar::TranslationUtil::NbestElement::NbestElement(v15, v16);
      ++v22;
      v16 = (v16 + 272);
      v15 = (v15 + 272);
    }

    while (v16 != a2);
  }

  std::__half_inplace_merge[abi:ne200100]<std::_ClassicAlgPolicy,kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ConfidenceScore(std::vector<kaldi::quasar::TranslationUtil::NbestElement> *,int)::{lambda(kaldi::quasar::TranslationUtil::NbestElement,kaldi::quasar::TranslationUtil::NbestElement const&)#1} &,kaldi::quasar::TranslationUtil::NbestElement*,kaldi::quasar::TranslationUtil::NbestElement*,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>,std::__wrap_iter<kaldi::quasar::TranslationUtil::NbestElement*>>(v7, v15, a2, a3, a1);
  v7 = v20;
  if (v20)
  {
    goto LABEL_11;
  }
}

void sub_1B58CB1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<kaldi::quasar::TranslationUtil::NbestElement,std::__destruct_n &>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "Nbestlist cannot be null");
    goto LABEL_93;
  }

  if ((*(a3 + 307) & 1) != 0 || (v46 = (a1 + 4096), *(a1 + 5237) == 1))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "Decoder not configured for string decoding (use SentencePiece ID decoding).");
    goto LABEL_93;
  }

  v8 = *(a1 + 136);
  if (v8 && *(v8 + 3925) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "Model lacks full symbol tables (use SentencePiece ID decoding).");
LABEL_93:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v60);
  }

  v9 = *(a1 + 5224);
  v10 = *(a1 + 5200);
  v11 = *(a1 + 5188);
  v12 = *(a1 + 5192);
  v13 = *(a1 + 5196);
  *(a1 + 5200) = *(a3 + 228);
  *(a1 + 5224) = *(a3 + 216);
  if (*a3)
  {
    *(a1 + 5188) = *a3;
  }

  v14 = *(a3 + 4);
  if (v14 != 0.0)
  {
    *(a1 + 5192) = v14;
  }

  v15 = *(a3 + 8);
  if (v15)
  {
    *(a1 + 5196) = v15;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::ValidateDecodingParameters(*(a3 + 176), a1, *(a3 + 160), *(a3 + 172));
  v17 = *a4;
    ;
  }

  a4[1] = v17;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  kaldi::quasar::InputHammer::FilterTags(a1 + 8, a2, &v78, a3 + 64);
  kaldi::quasar::MultiLangDecorator::Apply(a1 + 120, &v78, a3 + 64, a3 + 88, &v77);
  if (*(a3 + 232) == 1)
  {
    v18 = kaldi::quasar::MultiLangDecorator::NumTagTokens((a1 + 120));
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 5204) = v18;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LanguageInfo(a3);
    if (v76 >= 0)
    {
      v19 = &v74;
    }

    else
    {
      v19 = v74;
    }

    if (v76 >= 0)
    {
      v20 = HIBYTE(v76);
    }

    else
    {
      v20 = v75;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, v19, v20);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v74);
    }

    kaldi::KaldiLogMessage::~KaldiLogMessage(&v60);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 1);
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a2;
      }

      if (v21 >= 0)
      {
        v23 = *(a2 + 23);
      }

      else
      {
        v23 = *(a2 + 8);
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " -> ", 4);
      if (v80 >= 0)
      {
        v26 = &v78;
      }

      else
      {
        v26 = v78;
      }

      if (v80 >= 0)
      {
        v27 = HIBYTE(v80);
      }

      else
      {
        v27 = v79;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " -> ", 4);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v77;
      }

      else
      {
        v30 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v77.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, size);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
    }
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v77;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::TokenizeInputString(a1, &v59, &v74);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (v75 == v74)
  {
    v33 = 3.4028e38;
    goto LABEL_85;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(&v56, *(a3 + 240), *(a3 + 248), (*(a3 + 248) - *(a3 + 240)) >> 4);
  if (v46[1144] == 1)
  {
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](&v56, (a1 + 392));
  }

  if (v57 == v56 || *(a1 + 5220) == 1)
  {
    v32 = 3.4028e38;
  }

  else
  {
    v44 = v13;
    v45 = v11;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::FindInPhraseBooks(&v78, &v56, &v54);
    v34 = v54;
    v35 = v55;
    if (v55 == v54)
    {
      v32 = 3.4028e38;
    }

    else
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Total # of phrasebook matches : ", 32);
        MEMORY[0x1B8C84C30](v36, 0xEEEEEEEEEEEEEEEFLL * ((v55 - v54) >> 3));
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v60);
        v34 = v54;
        v35 = v55;
      }

      v32 = 0.0;
      if (v34 != v35)
      {
        v43 = a2;
        do
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          kaldi::SplitStringToVector(v34 + 2, " ", 1, &v51);
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v38 = v51;
          v37 = v52;
          while (v38 != v37)
          {
            memset(&v60, 0, sizeof(v60));
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            memset(v73, 0, sizeof(v73));
            std::string::operator=(&v60, v38);
            *&v66 = *(&v65 + 1);
            v47 = -1;
            std::vector<int>::push_back[abi:ne200100](&v65 + 1, &v47);
            *&v65 = 0;
            std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](&v48, &v60);
            kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v60);
            ++v38;
          }

          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v60);
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(&v60, v48, v49, 0xEEEEEEEEEEEEEEEFLL * ((v49 - v48) >> 4));
          v61 = 0;
          *&v62 = 0;
          *&v63 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3);
          DWORD2(v63) = 5;
          std::string::operator=(&v64, v34 + 3);
          std::vector<kaldi::quasar::TranslationUtil::NbestElement>::push_back[abi:ne200100](a4, &v60);
          kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v60);
          v60.__r_.__value_.__r.__words[0] = &v48;
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&v60);
          v60.__r_.__value_.__r.__words[0] = &v51;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
          v34 += 5;
        }

        while (v34 != v35);
        a2 = v43;
      }
    }

    v60.__r_.__value_.__r.__words[0] = &v54;
    std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&v60);
    v13 = v44;
    v11 = v45;
  }

  v39 = *(a1 + 136);
  if (v39 && *(v39 + 3922) == 1 && *(v39 + 3923) == 1)
  {
    v46[1608] = 1;
  }

  v40 = *(a1 + 5220);
  if (a4[1] != *a4)
  {
    if (v40 != 2)
    {
      goto LABEL_81;
    }

LABEL_79:
    if (v46[800] == 1)
    {
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeTokenized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v74, a3);
    }

    goto LABEL_81;
  }

  if (v40 != 3)
  {
    goto LABEL_79;
  }

LABEL_81:
  v41 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::PostProcessNbestList<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a3, a4);
  *(a1 + 5224) = v9;
  *(a1 + 5200) = v10;
  *(a1 + 5188) = v11;
  *(a1 + 5192) = v12;
  *(a1 + 5196) = v13;
  if (v41 == -1.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = v41;
  }

  v60.__r_.__value_.__r.__words[0] = &v56;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v60);
LABEL_85:
  v60.__r_.__value_.__r.__words[0] = &v74;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v78);
  }

  return v33;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::FindInPhraseBooks(uint64_t a1@<X1>, char **a2@<X2>, uint64_t *a3@<X8>)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "FindInPhraseBooks # ", 20);
    MEMORY[0x1B8C84C30](v6, (a2[1] - *a2) >> 4);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v9 = 0;
    v10 = *a2;
  }

  else
  {
    v9 = 0;
    do
    {
      if (*v7 && kaldi::quasar::PhraseBook::Find(*v7, a1, a3))
      {
        break;
      }

      v9 = (v9 + 1);
      v7 += 16;
    }

    while (v7 != v8);
    v7 = *a2;
    v10 = a2[1];
  }

  if ((v10 - v7) >= 0x11 && a3[1] != *a3 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    if (v9)
    {
      v11 = "Phrasebook fallback match";
    }

    else
    {
      v11 = "Phrasebook locale match";
    }

    if (v9)
    {
      v12 = 25;
    }

    else
    {
      v12 = 23;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", phrasebook idx=", 17);
    MEMORY[0x1B8C84C00](v14, v9);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeTokenized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(__p, 0, sizeof(__p));
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::Symbolize(a1, v5, __p, 0);
  v7 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::TorchEncoderDecoder>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, __p, a3);
}

void sub_1B58CBC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::PhraseBook::Find(void *a1, uint64_t a2, uint64_t *a3)
{
  kaldi::quasar::PhraseBook::PreProcess(a1, a2, &__p);
  v5 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__base_destruct_at_end[abi:ne200100](a3, *a3);
  if (v5)
  {
    v6 = v5[5];
    v7 = v5[6];
    while (v6 != v7)
    {
      std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::push_back[abi:ne200100](a3, v6);
      v6 = (v6 + 120);
    }
  }

  return v5 != 0;
}

void sub_1B58CBD14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Decode<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a4)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "Nbestlist cannot be null");
    goto LABEL_93;
  }

  if ((*(a3 + 307) & 1) != 0 || (v46 = (a1 + 4096), *(a1 + 5237) == 1))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "Decoder not configured for string decoding (use SentencePiece ID decoding).");
    goto LABEL_93;
  }

  v8 = *(a1 + 136);
  if (v8 && *(v8 + 2461) == 1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v60, "Model lacks full symbol tables (use SentencePiece ID decoding).");
LABEL_93:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v60);
  }

  v9 = *(a1 + 5224);
  v10 = *(a1 + 5200);
  v11 = *(a1 + 5188);
  v12 = *(a1 + 5192);
  v13 = *(a1 + 5196);
  *(a1 + 5200) = *(a3 + 228);
  *(a1 + 5224) = *(a3 + 216);
  if (*a3)
  {
    *(a1 + 5188) = *a3;
  }

  v14 = *(a3 + 4);
  if (v14 != 0.0)
  {
    *(a1 + 5192) = v14;
  }

  v15 = *(a3 + 8);
  if (v15)
  {
    *(a1 + 5196) = v15;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::ValidateDecodingParameters(*(a3 + 176), a1, *(a3 + 160), *(a3 + 172));
  v17 = *a4;
    ;
  }

  a4[1] = v17;
  v78 = 0;
  v79 = 0;
  v80 = 0;
  kaldi::quasar::InputHammer::FilterTags(a1 + 8, a2, &v78, a3 + 64);
  kaldi::quasar::MultiLangDecorator::Apply(a1 + 120, &v78, a3 + 64, a3 + 88, &v77);
  if (*(a3 + 232) == 1)
  {
    v18 = kaldi::quasar::MultiLangDecorator::NumTagTokens((a1 + 120));
  }

  else
  {
    v18 = 0;
  }

  *(a1 + 5204) = v18;
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
    kaldi::quasar::DecodeOptions<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::LanguageInfo(a3);
    if (v76 >= 0)
    {
      v19 = &v74;
    }

    else
    {
      v19 = v74;
    }

    if (v76 >= 0)
    {
      v20 = HIBYTE(v76);
    }

    else
    {
      v20 = v75;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, v19, v20);
    if (SHIBYTE(v76) < 0)
    {
      operator delete(v74);
    }

    kaldi::KaldiLogMessage::~KaldiLogMessage(&v60);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v60, 1);
      v21 = *(a2 + 23);
      if (v21 >= 0)
      {
        v22 = a2;
      }

      else
      {
        v22 = *a2;
      }

      if (v21 >= 0)
      {
        v23 = *(a2 + 23);
      }

      else
      {
        v23 = *(a2 + 8);
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, v22, v23);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " -> ", 4);
      if (v80 >= 0)
      {
        v26 = &v78;
      }

      else
      {
        v26 = v78;
      }

      if (v80 >= 0)
      {
        v27 = HIBYTE(v80);
      }

      else
      {
        v27 = v79;
      }

      v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " -> ", 4);
      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v77;
      }

      else
      {
        v30 = v77.__r_.__value_.__r.__words[0];
      }

      if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v77.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v77.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, v30, size);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v60);
    }
  }

  v74 = 0;
  v75 = 0;
  v76 = 0;
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v59, v77.__r_.__value_.__l.__data_, v77.__r_.__value_.__l.__size_);
  }

  else
  {
    v59 = v77;
  }

  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::TokenizeInputString(a1, &v59, &v74);
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (v75 == v74)
  {
    v33 = 3.4028e38;
    goto LABEL_85;
  }

  v56 = 0;
  v57 = 0;
  v58 = 0;
  std::vector<std::shared_ptr<kaldi::quasar::PhraseBook>>::__init_with_size[abi:ne200100]<std::shared_ptr<kaldi::quasar::PhraseBook>*,std::shared_ptr<kaldi::quasar::PhraseBook>*>(&v56, *(a3 + 240), *(a3 + 248), (*(a3 + 248) - *(a3 + 240)) >> 4);
  if (v46[1144] == 1)
  {
    std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](&v56, (a1 + 392));
  }

  if (v57 == v56 || *(a1 + 5220) == 1)
  {
    v32 = 3.4028e38;
  }

  else
  {
    v44 = v13;
    v45 = v11;
    kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::FindInPhraseBooks(&v78, &v56, &v54);
    v34 = v54;
    v35 = v55;
    if (v55 == v54)
    {
      v32 = 3.4028e38;
    }

    else
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "Total # of phrasebook matches : ", 32);
        MEMORY[0x1B8C84C30](v36, 0xEEEEEEEEEEEEEEEFLL * ((v55 - v54) >> 3));
        kaldi::KaldiLogMessage::~KaldiLogMessage(&v60);
        v34 = v54;
        v35 = v55;
      }

      v32 = 0.0;
      if (v34 != v35)
      {
        v43 = a2;
        do
        {
          v51 = 0;
          v52 = 0;
          v53 = 0;
          kaldi::SplitStringToVector(v34 + 2, " ", 1, &v51);
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v38 = v51;
          v37 = v52;
          while (v38 != v37)
          {
            memset(&v60, 0, sizeof(v60));
            v62 = 0u;
            v63 = 0u;
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v69 = 0u;
            v70 = 0u;
            v71 = 0u;
            v72 = 0u;
            memset(v73, 0, sizeof(v73));
            std::string::operator=(&v60, v38);
            *&v66 = *(&v65 + 1);
            v47 = -1;
            std::vector<int>::push_back[abi:ne200100](&v65 + 1, &v47);
            *&v65 = 0;
            std::vector<kaldi::quasar::TranslationUtil::PathElement>::push_back[abi:ne200100](&v48, &v60);
            kaldi::quasar::TranslationUtil::PathElement::~PathElement(&v60);
            ++v38;
          }

          kaldi::quasar::TranslationUtil::NbestElement::NbestElement(&v60);
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__assign_with_size[abi:ne200100]<kaldi::quasar::TranslationUtil::PathElement*,kaldi::quasar::TranslationUtil::PathElement*>(&v60, v48, v49, 0xEEEEEEEEEEEEEEEFLL * ((v49 - v48) >> 4));
          v61 = 0;
          *&v62 = 0;
          *&v63 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v51) >> 3);
          DWORD2(v63) = 5;
          std::string::operator=(&v64, v34 + 3);
          std::vector<kaldi::quasar::TranslationUtil::NbestElement>::push_back[abi:ne200100](a4, &v60);
          kaldi::quasar::TranslationUtil::NbestElement::~NbestElement(&v60);
          v60.__r_.__value_.__r.__words[0] = &v48;
          std::vector<kaldi::quasar::TranslationUtil::PathElement>::__destroy_vector::operator()[abi:ne200100](&v60);
          v60.__r_.__value_.__r.__words[0] = &v51;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
          v34 += 5;
        }

        while (v34 != v35);
        a2 = v43;
      }
    }

    v60.__r_.__value_.__r.__words[0] = &v54;
    std::vector<kaldi::quasar::PhraseBook::PhraseBookEntry>::__destroy_vector::operator()[abi:ne200100](&v60);
    v13 = v44;
    v11 = v45;
  }

  v39 = *(a1 + 136);
  if (v39 && *(v39 + 2164) == 1 && *(v39 + 2165) == 1)
  {
    v46[1608] = 1;
  }

  v40 = *(a1 + 5220);
  if (a4[1] != *a4)
  {
    if (v40 != 2)
    {
      goto LABEL_81;
    }

LABEL_79:
    if (v46[800] == 1)
    {
      kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::DecodeTokenized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, &v74, a3);
    }

    goto LABEL_81;
  }

  if (v40 != 3)
  {
    goto LABEL_79;
  }

LABEL_81:
  v41 = kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::PostProcessNbestList<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, a2, a3, a4);
  *(a1 + 5224) = v9;
  *(a1 + 5200) = v10;
  *(a1 + 5188) = v11;
  *(a1 + 5192) = v12;
  *(a1 + 5196) = v13;
  if (v41 == -1.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = v41;
  }

  v60.__r_.__value_.__r.__words[0] = &v56;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v60);
LABEL_85:
  v60.__r_.__value_.__r.__words[0] = &v74;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v60);
  if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v77.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v80) < 0)
  {
    operator delete(v78);
  }

  return v33;
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::FindInPhraseBooks(uint64_t a1@<X1>, char **a2@<X2>, uint64_t *a3@<X8>)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "FindInPhraseBooks # ", 20);
    MEMORY[0x1B8C84C30](v6, (a2[1] - *a2) >> 4);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v7 = *a2;
  v8 = a2[1];
  if (*a2 == v8)
  {
    v9 = 0;
    v10 = *a2;
  }

  else
  {
    v9 = 0;
    do
    {
      if (*v7 && kaldi::quasar::PhraseBook::Find(*v7, a1, a3))
      {
        break;
      }

      v9 = (v9 + 1);
      v7 += 16;
    }

    while (v7 != v8);
    v7 = *a2;
    v10 = a2[1];
  }

  if ((v10 - v7) >= 0x11 && a3[1] != *a3 && (kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    if (v9)
    {
      v11 = "Phrasebook fallback match";
    }

    else
    {
      v11 = "Phrasebook locale match";
    }

    if (v9)
    {
      v12 = 25;
    }

    else
    {
      v12 = 23;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v11, v12);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", phrasebook idx=", 17);
    MEMORY[0x1B8C84C00](v14, v9);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
  }
}

void kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::DecodeTokenized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  memset(__p, 0, sizeof(__p));
  memset(v5, 0, sizeof(v5));
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v5, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::Symbolize(a1, v5, __p, 0);
  v7 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  kaldi::quasar::TranslationBeamSearch<kaldi::quasar::Encdec>::DecodeSymbolized<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(a1, __p, a3);
}

void sub_1B58CC758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16)
{
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::shared_ptr<kaldi::quasar::PhraseBook>>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B58CCA14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::weak_ptr<kaldi::quasar::PhraseBook>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

double kaldi::nnet1::MovingAttentionComponent::MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, int a2, int a3)
{
  *(this + 108) = a2;
  *(this + 109) = a3;
  *(this + 220) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  *(this + 59) = &unk_1F2D279F8;
  *(this + 30) = xmmword_1B5AE0070;
  *(this + 62) = 0x3BF800000;
  *(this + 126) = 1;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 1) = -1;
  *this = &unk_1F2D37390;
  *(this + 53) = &unk_1F2D37598;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 2) = 0;
  *(this + 3) = &unk_1F2D0EE38;
  *(this + 64) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = &unk_1F2D0EE38;
  *(this + 112) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = &unk_1F2D0EE38;
  *(this + 160) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F2D0EE38;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = &unk_1F2D0EE38;
  *(this + 256) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = 0;
  *(this + 42) = &unk_1F2D0EE38;
  *(this + 376) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *&result = 257;
  *(this + 104) = 257;
  *(this + 420) = 0;
  return result;
}

unsigned int *kaldi::CuArray<int>::operator=(unsigned int *a1, unsigned int *a2)
{
  if (a1 != a2)
  {
    if (!*(a1 + 2))
    {
      *(a1 + 2) = *(a2 + 2);
    }

    kaldi::CuArray<int>::Resize(a1, *a2, 1);
    v4 = *a1;
    if (v4)
    {
      memcpy(*(a1 + 1), *(a2 + 1), 4 * v4);
    }
  }

  return a1;
}

kaldi::nnet1::MovingAttentionComponent *kaldi::nnet1::MovingAttentionComponent::MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, const kaldi::nnet1::MovingAttentionComponent *a2)
{
  *(this + 54) = *(a2 + *(*a2 - 24) + 8);
  *(this + 220) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  *(this + 59) = &unk_1F2D279F8;
  *(this + 30) = xmmword_1B5AE0070;
  *(this + 124) = -1082130432;
  *(this + 500) = 0x100000003;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 1) = -1;
  *this = &unk_1F2D37390;
  *(this + 53) = &unk_1F2D37598;
  v4 = (this + 24);
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = &unk_1F2D0EE38;
  *(this + 64) = 0;
  v5 = (this + 72);
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = &unk_1F2D0EE38;
  *(this + 112) = 0;
  v6 = (this + 120);
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = &unk_1F2D0EE38;
  *(this + 160) = 0;
  v7 = (this + 168);
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = &unk_1F2D0EE38;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = &unk_1F2D0EE38;
  *(this + 256) = 0;
  v8 = (this + 264);
  v12 = (this + 288);
  v9 = (this + 336);
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = 0;
  *(this + 42) = &unk_1F2D0EE38;
  *(this + 376) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  v10 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 51) = *(a2 + 51);
  *(this + 2) = (*(*v10 + 16))(v10);
  kaldi::CuMatrix<float>::operator=(v4, a2 + 3);
  kaldi::CuMatrix<float>::operator=(v5, a2 + 9);
  kaldi::CuMatrix<float>::operator=(v6, a2 + 15);
  kaldi::CuMatrix<float>::operator=(v7, a2 + 21);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v8, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v12, *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  }

  kaldi::CuArray<int>::operator=(this + 78, a2 + 78);
  kaldi::CuMatrix<float>::operator=(v9, a2 + 42);
  if (this != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 48, *(a2 + 48), *(a2 + 49), (*(a2 + 49) - *(a2 + 48)) >> 2);
  }

  *(this + 104) = *(a2 + 104);
  *(this + 420) = *(a2 + 420);
  return this;
}

void sub_1B58CCFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, kaldi::nnet1::UpdatableComponent *a10, uint64_t a11, uint64_t a12)
{
  v20 = *(v12 + 48);
  if (v20)
  {
    *(v12 + 49) = v20;
    operator delete(v20);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v13);
  v21 = *(v12 + 40);
  if (v21)
  {
    free(v21);
  }

  *(v12 + 39) = 0;
  *(v12 + 40) = 0;
  *(v12 + 41) = 0;
  a12 = a11;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::CuMatrix<float>::~CuMatrix(v18);
  kaldi::CuMatrix<float>::~CuMatrix(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::CuMatrix<float>::~CuMatrix(v14);
  quasar::Bitmap::~Bitmap(v12);
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 2) = 0;
  v5 = *(this + 48);
  if (v5)
  {
    *(this + 49) = v5;
    operator delete(v5);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 336);
  v6 = *(this + 40);
  if (v6)
  {
    free(v6);
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v7 = (this + 288);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v7);
  kaldi::CuMatrix<float>::~CuMatrix(this + 216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  kaldi::CuMatrix<float>::~CuMatrix(this + 120);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  quasar::Bitmap::~Bitmap(this);
}

void kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 424));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 424));

  JUMPOUT(0x1B8C85350);
}

void virtual thunk tokaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this)
{
  v2 = (v1 + 424);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::MovingAttentionComponent::InitData(uint64_t a1, uint64_t *a2)
{
  memset(v48, 0, 24);
  v4 = a2 + 4;
  v5 = a1 + 412;
  v6 = a1 + 408;
  v7 = a1 + 12;
  v8 = a1 + 8;
  while (1)
  {
    if ((*(v4 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_109;
    }

    kaldi::ReadToken(a2, 0, v48);
    if (SHIBYTE(v48[2]) < 0)
    {
      v10 = v48[1];
      if (v48[1] <= 15)
      {
        if (v48[1] != 13)
        {
          if (v48[1] != 14)
          {
            if (v48[1] != 15)
            {
              goto LABEL_102;
            }

            v9 = *v48[0] == 0x6574744178614D3CLL && *(v48[0] + 7) == 0x3E736E6F69746E65;
LABEL_17:
            v11 = v7;
            if (!v9)
            {
              goto LABEL_120;
            }

            goto LABEL_84;
          }

          v19 = *v48[0] == 0x6F4374686769523CLL && *(v48[0] + 6) == 0x3E747865746E6F43;
LABEL_82:
          v11 = v5;
          if (!v19)
          {
            goto LABEL_120;
          }

          goto LABEL_84;
        }

        v15 = *v48[0] == 0x6E6F437466654C3CLL && *(v48[0] + 5) == 0x3E747865746E6F43;
LABEL_63:
        v11 = v6;
        if (!v15)
        {
          goto LABEL_120;
        }

        goto LABEL_84;
      }

      if (v48[1] == 16)
      {
        if (*v48[0] == 0x52656372756F533CLL && *(v48[0] + 8) == 0x3E64657372657665)
        {
LABEL_96:
          *(a1 + 416) = 0;
          goto LABEL_85;
        }

        if (*v48[0] != 0x65677261546F4E3CLL || *(v48[0] + 8) != 0x3E7461636E6F4374)
        {
          if (*v48[0] != 0x636174746165523CLL || *(v48[0] + 8) != 0x3E74656772615468)
          {
            goto LABEL_101;
          }

          goto LABEL_78;
        }

        goto LABEL_97;
      }

      if (v48[1] != 20)
      {
        if (v48[1] != 22)
        {
          goto LABEL_102;
        }

        v13 = *v48[0] == 0x53656372756F533CLL && *(v48[0] + 8) == 0x656D694465746174 && *(v48[0] + 14) == 0x3E6E6F69736E656DLL;
        goto LABEL_37;
      }

      v20 = v48[0];
    }

    else
    {
      if (HIBYTE(v48[2]) <= 0xFu)
      {
        if (HIBYTE(v48[2]) > 0xDu)
        {
          if (HIBYTE(v48[2]) != 14)
          {
            v9 = v48[0] == 0x6574744178614D3CLL && *(v48 + 7) == 0x3E736E6F69746E65;
            goto LABEL_17;
          }

          v19 = v48[0] == 0x6F4374686769523CLL && *(v48 + 6) == 0x3E747865746E6F43;
          goto LABEL_82;
        }

        if (HIBYTE(v48[2]) != 13)
        {
          goto LABEL_99;
        }

        v15 = v48[0] == 0x6E6F437466654C3CLL && *(v48 + 5) == 0x3E747865746E6F43;
        goto LABEL_63;
      }

      if (HIBYTE(v48[2]) == 16)
      {
        if (v48[0] == 0x52656372756F533CLL && v48[1] == 0x3E64657372657665)
        {
          goto LABEL_96;
        }

        if (v48[0] != 0x65677261546F4E3CLL || v48[1] != 0x3E7461636E6F4374)
        {
          if (v48[0] != 0x636174746165523CLL || v48[1] != 0x3E74656772615468)
          {
            goto LABEL_120;
          }

LABEL_78:
          *(a1 + 418) = 1;
          goto LABEL_85;
        }

LABEL_97:
        *(a1 + 417) = 0;
        goto LABEL_85;
      }

      if (HIBYTE(v48[2]) != 20)
      {
        if (HIBYTE(v48[2]) != 22)
        {
          goto LABEL_120;
        }

        v13 = v48[0] == 0x53656372756F533CLL && v48[1] == 0x656D694465746174 && *(&v48[1] + 6) == 0x3E6E6F69736E656DLL;
LABEL_37:
        v11 = v8;
        if (!v13)
        {
          goto LABEL_120;
        }

LABEL_84:
        kaldi::ReadBasicType<int>(a2, 0, v11);
        goto LABEL_85;
      }

      v20 = v48;
    }

    v24 = *v20;
    v25 = v20[1];
    v26 = *(v20 + 4);
    if (v24 != 0x646F7250746F443CLL || v25 != 0x74616C6552746375 || v26 != 1047424873)
    {
      if ((v48[2] & 0x8000000000000000) != 0)
      {
LABEL_101:
        v10 = v48[1];
LABEL_102:
        if (v10 == 12)
        {
          v29 = v48[0];
          goto LABEL_104;
        }
      }

      else
      {
LABEL_99:
        if (HIBYTE(v48[2]) == 12)
        {
          v29 = v48;
LABEL_104:
          v30 = *v29;
          v31 = *(v29 + 2);
          if (v30 == 0x6E6F706D6F432F3CLL && v31 == 1047817829)
          {
LABEL_109:
            v33 = *(a1 + 16);
            if (v33)
            {
              (*(*v33 + 8))(v33);
            }

            v45 = 0;
            v46 = 0;
            v47 = 0;
            kaldi::ReadToken(a2, 0, &v45);
            v34 = kaldi::nnet1::Component::MarkerToComponentType(&v45);
            v44 = 0;
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(v43, 3);
              v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Initializing component of type ", 31);
              if (v47 >= 0)
              {
                v36 = &v45;
              }

              else
              {
                v36 = v45;
              }

              if (v47 >= 0)
              {
                v37 = HIBYTE(v47);
              }

              else
              {
                v37 = v46;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(v43);
            }

            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v44 + 4);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v44);
            kaldi::nnet1::Component::NewComponentOfType(v34);
          }
        }
      }

LABEL_120:
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v43);
      v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Unknown token ", 14);
      if (v48[2] >= 0)
      {
        v39 = v48;
      }

      else
      {
        v39 = v48[0];
      }

      if (v48[2] >= 0)
      {
        v40 = HIBYTE(v48[2]);
      }

      else
      {
        v40 = v48[1];
      }

      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, " (SourceStateDimension|MaxAttentions|LeftContext|RightContext)", 62);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v43);
    }

    *(a1 + 419) = 1;
LABEL_85:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void *kaldi::nnet1::MovingAttentionComponent::Check(void *this)
{
  if ((*(this + 420) & 1) == 0)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "this is a non-recurrent version, cannot have a recurrent internal component");
        goto LABEL_33;
      }

      if (this)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "no recursive inclusion");
        goto LABEL_33;
      }
    }

    v3 = *(v1 + 12);
    if (v3 < 1 || (v4 = *(v1 + 8), v4 <= 0))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "component is not initialized, max attention is ", 47);
      v25 = MEMORY[0x1B8C84C00](v24, *(v1 + 12));
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", source state dimension is ", 28);
      MEMORY[0x1B8C84C00](v26, *(v1 + 8));
      goto LABEL_33;
    }

    v5 = *(v1 + 408);
    if (v5 < 1 || (v6 = *(v1 + 412), v6 <= 0))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "component is not initialized, left and right context is ", 56);
      v28 = MEMORY[0x1B8C84C00](v27, *(v1 + 408));
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
      MEMORY[0x1B8C84C00](v29, *(v1 + 412));
      goto LABEL_33;
    }

    v7 = *(v1 + 417);
    if (v7 == 1)
    {
      if (*(v1 + *(*v1 - 24) + 8) + v4 * v3 != v2[2])
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "The target input is concatenated. component has input dim ", 58);
        v9 = MEMORY[0x1B8C84C00](v8, *(v1 + *(*v1 - 24) + 8));
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", attentions ", 13);
        v11 = MEMORY[0x1B8C84C00](v10, *(v1 + 12));
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", source state dimension ", 25);
        v13 = MEMORY[0x1B8C84C00](v12, *(v1 + 8));
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", however, the internal training component has input dim ", 57);
        MEMORY[0x1B8C84C00](v14, *(*(v1 + 16) + 8));
        goto LABEL_33;
      }
    }

    else if (v4 * v3 != v2[2])
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "The target input is not concatenated. component has input dim ", 62);
      v36 = MEMORY[0x1B8C84C00](v35, *(v1 + *(*v1 - 24) + 8));
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", attentions ", 13);
      v38 = MEMORY[0x1B8C84C00](v37, *(v1 + 12));
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ", source state dimension ", 25);
      v40 = MEMORY[0x1B8C84C00](v39, *(v1 + 8));
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, ", however, the internal training component has input dim ", 57);
      MEMORY[0x1B8C84C00](v41, *(*(v1 + 16) + 8));
      goto LABEL_33;
    }

    v15 = *(v1 + 418);
    v16 = v1 + *(*v1 - 24);
    v17 = *(v16 + 12);
    if (v15 == 1)
    {
      if (v17 != v2[3] + *(v16 + 8))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "component has input dim ", 24);
        v19 = MEMORY[0x1B8C84C00](v18, *(v1 + *(*v1 - 24) + 8));
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " , and output dim ", 18);
        v21 = MEMORY[0x1B8C84C00](v20, *(v1 + *(*v1 - 24) + 12));
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", and you requested to reattch the target, however, ", 52);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "the internal component has output dim ", 38);
        MEMORY[0x1B8C84C00](v23, *(*(v1 + 16) + 12));
        goto LABEL_33;
      }
    }

    else if (v17 != v2[3])
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "component has output dim ", 25);
      v43 = MEMORY[0x1B8C84C00](v42, *(v1 + *(*v1 - 24) + 12));
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " does not match the internal component's output dim ", 52);
      MEMORY[0x1B8C84C00](v44, *(*(v1 + 16) + 12));
      goto LABEL_33;
    }

    if (v3 == v5 + v6 + 1)
    {
      if (*(v1 + 419) == 1)
      {
        if (*(v1 + *(*v1 - 24) + 8) != v4)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "the source state must have the same dimension as the input dimension of the component if want to take the dot product between them");
          goto LABEL_33;
        }

        goto LABEL_23;
      }

      if (v7 & 1) != 0 || (v15)
      {
LABEL_23:
        *(v1 + 420) = 1;
        return this;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v45, "if not taking the dot production relation from the source and target, you must at least concatenate or reattach the target");
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v45);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "the maximum attention is ", 25);
      v31 = MEMORY[0x1B8C84C00](v30, *(v1 + 12));
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " , that does not match the left_context + 1 + right_context, you defined left/right context as ", 95);
      v33 = MEMORY[0x1B8C84C00](v32, *(v1 + 408));
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ", 1);
      MEMORY[0x1B8C84C00](v34, *(v1 + 412));
    }

LABEL_33:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
  }

  return this;
}

void kaldi::nnet1::MovingAttentionComponent::ReadData(uint64_t a1, uint64_t *a2, int a3)
{
  memset(v40, 0, 24);
  v6 = a1 + 412;
  v7 = a1 + 408;
  v8 = a1 + 12;
  v9 = a1 + 8;
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, v40);
    if (SHIBYTE(v40[2]) < 0)
    {
      if (v40[1] == 15)
      {
        v14 = *v40[0] == 0x6574744178614D3CLL && *(v40[0] + 7) == 0x3E736E6F69746E65;
        v11 = v8;
        if (v14)
        {
          goto LABEL_80;
        }
      }

      else if (v40[1] == 22)
      {
        v12 = *v40[0] == 0x53656372756F533CLL && *(v40[0] + 1) == 0x656D694465746174;
        v13 = v12 && *(v40[0] + 14) == 0x3E6E6F69736E656DLL;
        v11 = v9;
        if (v13)
        {
          goto LABEL_80;
        }
      }

      if (v40[1] == 14)
      {
        v16 = *v40[0] == 0x6F4374686769523CLL && *(v40[0] + 6) == 0x3E747865746E6F43;
        v11 = v6;
        if (v16)
        {
          goto LABEL_80;
        }
      }

      else if (v40[1] == 13)
      {
        v15 = *v40[0] == 0x6E6F437466654C3CLL && *(v40[0] + 5) == 0x3E747865746E6F43;
        v11 = v7;
        if (v15)
        {
          goto LABEL_80;
        }
      }

      v17 = v40[1];
      if (v40[1] != 16)
      {
        goto LABEL_88;
      }

      if (*v40[0] == 0x52656372756F533CLL && *(v40[0] + 1) == 0x3E64657372657665)
      {
LABEL_81:
        *(a1 + 416) = 0;
      }

      else if (*v40[0] == 0x65677261546F4E3CLL && *(v40[0] + 1) == 0x3E7461636E6F4374)
      {
LABEL_99:
        *(a1 + 417) = 0;
      }

      else
      {
        v17 = v40[1];
        if (*v40[0] == 0x636174746165523CLL && *(v40[0] + 1) == 0x3E74656772615468)
        {
          goto LABEL_105;
        }

        if ((HIBYTE(v40[2]) & 0x80) == 0)
        {
          goto LABEL_106;
        }

LABEL_88:
        if (v17 != 20)
        {
          goto LABEL_106;
        }

        v25 = v40[0];
LABEL_90:
        v28 = *v25;
        v29 = v25[1];
        v30 = *(v25 + 4);
        if (v28 != 0x646F7250746F443CLL || v29 != 0x74616C6552746375 || v30 != 1047424873)
        {
          goto LABEL_106;
        }

        *(a1 + 419) = 1;
      }
    }

    else
    {
      if (HIBYTE(v40[2]) <= 0xFu)
      {
        switch(HIBYTE(v40[2]))
        {
          case 0xDu:
            v22 = v40[0] == 0x6E6F437466654C3CLL && *(v40 + 5) == 0x3E747865746E6F43;
            v11 = v7;
            if (!v22)
            {
              goto LABEL_106;
            }

            break;
          case 0xEu:
            v26 = v40[0] == 0x6F4374686769523CLL && *(v40 + 6) == 0x3E747865746E6F43;
            v11 = v6;
            if (!v26)
            {
              goto LABEL_106;
            }

            break;
          case 0xFu:
            v10 = v40[0] == 0x6574744178614D3CLL && *(v40 + 7) == 0x3E736E6F69746E65;
            v11 = v8;
            if (!v10)
            {
              goto LABEL_106;
            }

            break;
          default:
            goto LABEL_106;
        }

        goto LABEL_80;
      }

      switch(HIBYTE(v40[2]))
      {
        case 0x10u:
          if (v40[0] == 0x52656372756F533CLL && v40[1] == 0x3E64657372657665)
          {
            goto LABEL_81;
          }

          if (v40[0] == 0x65677261546F4E3CLL && v40[1] == 0x3E7461636E6F4374)
          {
            goto LABEL_99;
          }

          if (v40[0] != 0x636174746165523CLL || v40[1] != 0x3E74656772615468)
          {
LABEL_106:
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v40, "</Component>"))
            {
              kaldi::KaldiWarnMessage::KaldiWarnMessage(v39);
              v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "Unrecognized token ", 19);
              if (SHIBYTE(v40[2]) >= 0)
              {
                v37 = v40;
              }

              else
              {
                v37 = v40[0];
              }

              if (SHIBYTE(v40[2]) >= 0)
              {
                v38 = HIBYTE(v40[2]);
              }

              else
              {
                v38 = v40[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, v38);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v39);
            }

            goto LABEL_107;
          }

LABEL_105:
          *(a1 + 418) = 1;
          break;
        case 0x14u:
          v25 = v40;
          goto LABEL_90;
        case 0x16u:
          v20 = v40[0] == 0x53656372756F533CLL && v40[1] == 0x656D694465746174;
          v21 = v20 && *(&v40[1] + 6) == 0x3E6E6F69736E656DLL;
          v11 = v9;
          if (!v21)
          {
            goto LABEL_106;
          }

LABEL_80:
          kaldi::ReadBasicType<int>(a2, a3, v11);
          break;
        default:
          goto LABEL_106;
      }
    }
  }

LABEL_107:
  v34 = *(a1 + 16);
  if (v34)
  {
    (*(*v34 + 8))(v34);
  }

  v35 = kaldi::nnet1::Component::Read(a2, a3);
  if (v35)
  {
  }

  *(a1 + 16) = v35;
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  if (SHIBYTE(v40[2]) < 0)
  {
    operator delete(v40[0]);
  }
}

void sub_1B58CE5F0(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::WriteConfig(uint64_t a1, void *a2, uint64_t a3)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteToken(a2, a3, "<MaxAttentions>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 12));
  kaldi::WriteToken(a2, a3, "<LeftContext>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 408));
  kaldi::WriteToken(a2, a3, "<RightContext>");
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 412));
  if ((*(a1 + 416) & 1) == 0)
  {
    kaldi::WriteToken(a2, a3, "<SourceReversed>");
  }

  if ((*(a1 + 417) & 1) == 0)
  {
    kaldi::WriteToken(a2, a3, "<NoTargetConcat>");
  }

  if (*(a1 + 418) == 1)
  {
    kaldi::WriteToken(a2, a3, "<ReattachTarget>");
  }

  if (*(a1 + 419) == 1)
  {
    kaldi::WriteToken(a2, a3, "<DotProductRelation>");
  }

  kaldi::WriteToken(a2, a3, "</Component>");
  v6 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  kaldi::nnet1::Component::TypeToMarker(v6, &__p);
  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, *(*(a1 + 16) + 12));
  return kaldi::WriteBasicType<int>(a2, a3, *(*(a1 + 16) + 8));
}

void sub_1B58CE7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::WriteData(void **a1)
{
  ((*a1)[12])(a1);
  v2 = *(*a1[2] + 104);

  return v2();
}

uint64_t virtual thunk tokaldi::nnet1::MovingAttentionComponent::WriteData(void *a1)
{
  v1 = (a1 + *(*a1 - 120));
  ((*v1)[12])(v1);
  v2 = *(*v1[2] + 104);

  return v2();
}

uint64_t kaldi::nnet1::MovingAttentionComponent::Info(kaldi::nnet1::MovingAttentionComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v7);
  (*(*this + 96))(this, &v7, 0);
  (*(**(this + 2) + 64))(__p);
  if ((v6 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v6 & 0x80u) == 0)
  {
    v3 = v6;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v7, v2, v3);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  return MEMORY[0x1B8C85200](&v11);
}

void sub_1B58CED58(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  if (a7 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a8, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetTrainOptions(kaldi::nnet1::MovingAttentionComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = this + *(*this - 24);
  v3 = *(a2 + 8);
  *(v2 + 71) = *(a2 + 23);
  *(v2 + 56) = v3;
  return (*(**(this + 2) + 264))();
}

uint64_t virtual thunk tokaldi::nnet1::MovingAttentionComponent::SetTrainOptions(kaldi::nnet1::MovingAttentionComponent *this, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = this + *(*this - 280);
  v3 = &v2[*(*v2 - 24)];
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  return (*(**(v2 + 2) + 264))();
}

void kaldi::nnet1::MovingAttentionComponent::SetSourceStates(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v27 = a3;
  v25 = a3[1] - *a3;
  kaldi::CuMatrix<float>::Resize((a1 + 24), v25 >> 2, ((*(a1 + 408) + *(a1 + 412) + *(a2 + 20) / (v25 >> 2)) * *(a2 + 16)), 0, 0);
  v26 = v25 >> 2;
  if ((v25 >> 2) >= 1)
  {
    v6 = 0;
    v7 = *a3;
    do
    {
      if (*(v7 + 4 * v6) >= 1)
      {
        v8 = 0;
        v9 = *(a1 + 8);
        v10 = v9 * *(a1 + 408);
        v11 = v6;
        do
        {
          v12 = *(a1 + 48);
          v13 = *(a1 + 32) + 4 * v10;
          v14 = *(a1 + 52) - v10;
          v15 = *(a1 + 56);
          *(&v30 + 1) = __PAIR64__(*(a1 + 44), v9);
          *&v31 = __PAIR64__(v14, v12);
          *(&v31 + 1) = v15;
          v32 = &unk_1F2CFCA48;
          __p = &unk_1F2CFA908;
          *&v30 = v13;
          v33 = v13 + 4 * (v12 * v6);
          v34 = v9;
          v35 = v15;
          v16 = *(a2 + 8) + 4 * *(a2 + 24) * v11;
          LODWORD(v13) = *(a2 + 16);
          v17 = *(a2 + 32);
          v28[0] = &unk_1F2CFCA48;
          v28[1] = v16;
          v28[3] = v17;
          v28[2] = v13;
          kaldi::CuVectorBase<float>::CopyFromVec(&v32, v28);
          v32 = &unk_1F2CFCA48;
          v33 = 0;
          LODWORD(v34) = 0;
          v35 = 0;
          __p = &unk_1F2CFA908;
          v30 = 0u;
          v31 = 0u;
          quasar::Bitmap::~Bitmap(&__p);
          v9 = *(a1 + 8);
          v10 += v9;
          ++v8;
          v7 = *v27;
          v11 += v26;
        }

        while (v8 < *(*v27 + 4 * v6));
      }

      ++v6;
    }

    while (v6 != ((v25 >> 2) & 0x7FFFFFFF));
  }

  v18 = (v25 >> 2);
  __p = 0;
  v30 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 264), v18, &__p);
  if (__p)
  {
    *&v30 = __p;
    operator delete(__p);
  }

  __p = 0;
  v30 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 288), v18, &__p);
  if (__p)
  {
    *&v30 = __p;
    operator delete(__p);
  }

  v19 = (a1 + 408);
  if (*(a1 + 416))
  {
    std::vector<int>::resize((a1 + 384), v18);
    if (v26 >= 1)
    {
      v20 = 0;
      v21 = 0;
      do
      {
        *(*(a1 + 384) + 4 * v21) = *(*v27 + 4 * v21) + *v19 - 1;
        std::vector<int>::push_back[abi:ne200100]((*(a1 + 288) + v20), (a1 + 408));
        ++v21;
        v20 += 24;
      }

      while (((v25 >> 2) & 0x7FFFFFFF) != v21);
    }
  }

  else if (v26 >= 1)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = *(a1 + 288);
      LODWORD(__p) = *(*v27 + 4 * v23) + *v19 - 1;
      std::vector<int>::push_back[abi:ne200100]((v24 + v22), &__p);
      ++v23;
      v22 += 24;
    }

    while (((v25 >> 2) & 0x7FFFFFFF) != v23);
  }
}

void sub_1B58CF228(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, uint64_t a26)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MovingAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, void *a3, int32x2_t *a4)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v25 = a3;
  v26 = a1;
  v8 = a3[1] - *a3;
  v9 = v8 >> 2;
  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  v12 = *(a1 + 408) * v11;
  v13 = *(a1 + 128) + 4 * v12;
  v14 = *(a1 + 144);
  v15 = *(a1 + 148) - v12;
  v16 = *(a1 + 152);
  *&v36 = v13;
  DWORD2(v36) = v11 * (v10 / (v8 >> 2));
  HIDWORD(v36) = v8 >> 2;
  *&v37 = __PAIR64__(v15, v14);
  *(&v37 + 1) = v16;
  v35 = &unk_1F2CFA908;
  kaldi::CuMatrix<float>::Resize(a4, v10, v11, 0, 0);
  if (SHIDWORD(v36) >= 1)
  {
    v17 = 0;
    v24 = (v8 >> 2) & 0x7FFFFFFF;
    do
    {
      if (v17 >= (v25[1] - *v25) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v18 = *(*v25 + 4 * v17);
      if (v18 >= 1)
      {
        v19 = 0;
        v20 = v17;
        do
        {
          v21 = *&a4[1] + 4 * a4[3].i32[0] * v20;
          v22 = a4[2].u32[0];
          v23 = a4[4];
          v34[0] = &unk_1F2CFCA48;
          v34[1] = v21;
          v34[3] = v23;
          v34[2] = v22;
          DWORD2(v28) = *(v26 + 8);
          HIDWORD(v28) = HIDWORD(v36);
          LODWORD(v29) = v37;
          DWORD1(v29) = DWORD1(v37) - DWORD2(v28) * v19;
          *(&v29 + 1) = *(&v37 + 1);
          v30 = &unk_1F2CFCA48;
          v27 = &unk_1F2CFA908;
          *&v28 = v36 + 4 * (DWORD2(v28) * v19);
          v31 = v28 + 4 * v37 * v17;
          v32 = DWORD2(v28);
          v33 = *(&v37 + 1);
          kaldi::CuVectorBase<float>::CopyFromVec(v34, &v30);
          v30 = &unk_1F2CFCA48;
          v31 = 0;
          LODWORD(v32) = 0;
          v33 = 0;
          v27 = &unk_1F2CFA908;
          v28 = 0u;
          v29 = 0u;
          quasar::Bitmap::~Bitmap(&v27);
          ++v19;
          v20 += v9;
        }

        while (v18 != v19);
      }

      ++v17;
    }

    while (v17 != v24);
  }

  v35 = &unk_1F2CFA908;
  v36 = 0u;
  v37 = 0u;
  quasar::Bitmap::~Bitmap(&v35);
}

void sub_1B58CF4CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 - 128) = a10;
  v12 = v10 - 128;
  *(v12 + 8) = 0u;
  *(v12 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v10 - 128));
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::GetCurrentAlignment(uint64_t a1, std::vector<unsigned int> *this)
{
  v4 = -1431655765 * ((*(a1 + 272) - *(a1 + 264)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 264) + 8);
    do
    {
      v8 = *v7;
      v7 += 3;
      *begin++ = *(v8 - 4) - *(a1 + 408);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::GetOverallAlignment(uint64_t a1, void *a2)
{
  v4 = -1431655765 * ((*(a1 + 272) - *(a1 + 264)) >> 3);
  std::vector<std::vector<int>>::resize(a2, v4);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    v7 = *(a1 + 264);
    do
    {
      v8 = (v7 + 24 * v5);
      v9 = *v8;
      while (v9 != v8[1])
      {
        v10 = (*a2 + 24 * v5);
        v11 = *v9++;
        v13 = v11 - *(a1 + 408);
        std::vector<int>::push_back[abi:ne200100](v10, &v13);
        v7 = *(a1 + 264);
        v8 = (v7 + 24 * v5);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 420) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 420) = 0;
  }

  return this;
}

void kaldi::nnet1::MovingAttentionComponent::PropagateFnc(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v6 = *a1;
  v7 = *(a1 + 11);
  v49 = a3;
  v50 = a2;
  v8 = *(a2 + 20);
  v9 = *(a1 + 2) * *(a1 + 3);
  a1[13] = *(a3 + 32);
  v51 = v8 / v7;
  if (*(a1 + 417) == 1)
  {
    v10 = *(a1 + *(v6 - 24) + 8);
  }

  else
  {
    v10 = 0;
  }

  kaldi::CuMatrix<float>::Resize(a1 + 9, v7, v10 + v9, 1, 0);
  if (v51 >= 1)
  {
    v11 = 0;
    v12 = 0uLL;
    do
    {
      v64[1] = v12;
      v64[0] = v12;
      v63 = &unk_1F2CFA908;
      v52 = v11;
      if (*(a1 + 417) == 1)
      {
        v13 = *(a1 + *(*a1 - 24) + 8);
        v14 = *(a1 + 25) - v9;
        v15 = a1[13];
        *&v64[0] = a1[10] + 4 * v9;
        *(v64 + 12) = *(a1 + 92);
        DWORD2(v64[0]) = v13;
        DWORD1(v64[1]) = v14;
        *(&v64[1] + 1) = v15;
        v61 = &unk_1F2CFA908;
        v62[0] = v12;
        v62[1] = v12;
        quasar::Bitmap::~Bitmap(&v61);
        v16 = *(v50 + 24);
        v17 = v16 * v11 * v7;
        v18 = *(v50 + 8) + 4 * v17;
        v19 = *(v50 + 28) - v17;
        v20 = *(v50 + 32);
        DWORD2(v62[0]) = *(v50 + 16);
        HIDWORD(v62[0]) = v7;
        *&v62[1] = __PAIR64__(v19, v16);
        *(&v62[1] + 1) = v20;
        v61 = &unk_1F2CFA908;
        *&v62[0] = v18;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v63, &v61, 111);
        v61 = &unk_1F2CFA908;
        memset(v62, 0, sizeof(v62));
      }

      else
      {
        v21 = *(v50 + 16);
        v22 = *(v50 + 24);
        v23 = v22 * v11 * v7;
        v24 = *(v50 + 8) + 4 * v23;
        v25 = *(v50 + 28) - v23;
        v26 = *(v50 + 32);
        *&v64[0] = v24;
        *(&v64[0] + 1) = __PAIR64__(v7, v21);
        *&v64[1] = __PAIR64__(v25, v22);
        *(&v64[1] + 1) = v26;
        v61 = &unk_1F2CFA908;
        v62[0] = v12;
        v62[1] = v12;
      }

      quasar::Bitmap::~Bitmap(&v61);
      if (v7 >= 1)
      {
        v27 = 0;
        v28 = 8;
        do
        {
          v29 = *(*(a1[36] + v28) - 4) - *(a1 + 102);
          v30 = a1[10];
          v31 = a1[13];
          *(&v62[0] + 1) = __PAIR64__(*(a1 + 23), v9);
          *&v62[1] = a1[12];
          *(&v62[1] + 1) = v31;
          v61 = &unk_1F2CFA908;
          *&v62[0] = v30;
          v53 = &unk_1F2CFCA48;
          *&v54 = v30 + 4 * LODWORD(v62[1]) * v27;
          *&v55 = v31;
          *(&v54 + 1) = v9;
          v32 = a1[4] + 4 * *(a1 + 12) * v27;
          LODWORD(v30) = *(a1 + 10);
          v33 = a1[7];
          v56 = &unk_1F2CFCA48;
          v57 = v32;
          v59 = v33;
          v58 = v30;
          v34 = v32 + 4 * *(a1 + 2) * v29;
          v60[0] = &unk_1F2CFCA48;
          v60[1] = v34;
          v60[3] = v33;
          v60[2] = v9;
          kaldi::CuVectorBase<float>::CopyFromVec(&v53, v60);
          v53 = &unk_1F2CFCA48;
          *&v54 = 0;
          DWORD2(v54) = 0;
          *&v55 = 0;
          v61 = &unk_1F2CFA908;
          memset(v62, 0, sizeof(v62));
          quasar::Bitmap::~Bitmap(&v61);
          ++v27;
          v28 += 24;
        }

        while (v7 != v27);
      }

      if (*(a1 + 419) == 1 && *(a1 + 3) >= 1)
      {
        v35 = 0;
        do
        {
          v36 = *(a1 + 2);
          v37 = a1[10] + 4 * (v36 * v35);
          v38 = *(a1 + 25) - v36 * v35;
          v39 = a1[13];
          DWORD2(v62[0]) = v36;
          *(v62 + 12) = *(a1 + 92);
          DWORD1(v62[1]) = v38;
          *(&v62[1] + 1) = v39;
          v61 = &unk_1F2CFA908;
          *&v62[0] = v37;
          kaldi::CuMatrixBase<float>::MulElements(&v61, &v63);
          v61 = &unk_1F2CFA908;
          memset(v62, 0, sizeof(v62));
          quasar::Bitmap::~Bitmap(&v61);
          ++v35;
        }

        while (v35 < *(a1 + 3));
      }

      v40 = *(v49 + 16);
      v41 = *(v49 + 24);
      v42 = v41 * v52 * v7;
      v43 = *(v49 + 28) - v42;
      v44 = *(v49 + 32);
      *&v54 = *(v49 + 8) + 4 * v42;
      *(&v54 + 1) = __PAIR64__(v7, v40);
      *&v55 = __PAIR64__(v43, v41);
      *(&v55 + 1) = v44;
      DWORD2(v62[0]) = *(a1[2] + 12);
      HIDWORD(v62[0]) = v7;
      *&v62[1] = __PAIR64__(v43, v41);
      *(&v62[1] + 1) = v44;
      v61 = &unk_1F2CFA908;
      *&v62[0] = v54;
      v53 = &unk_1F2CFA908;
      v55 = 0u;
      v54 = 0u;
      quasar::Bitmap::~Bitmap(&v53);
      (*(*a1[2] + 112))(a1[2], a1 + 9, &v61, 0);
      kaldi::nnet1::MovingAttentionComponent::ComputeAlignments(a1, (a1 + 9), &v61);
      v61 = &unk_1F2CFA908;
      memset(v62, 0, sizeof(v62));
      quasar::Bitmap::~Bitmap(&v61);
      v63 = &unk_1F2CFA908;
      memset(v64, 0, sizeof(v64));
      quasar::Bitmap::~Bitmap(&v63);
      v12 = 0uLL;
      v11 = v52 + 1;
    }

    while (v52 + 1 != v51);
  }

  if (*(a1 + 418))
  {
    v45 = *(a1[2] + 12);
    v46 = *(a1 + *(*a1 - 24) + 8);
    v47 = *(v49 + 8) + 4 * v45;
    LODWORD(v45) = *(v49 + 28) - v45;
    v48 = *(v49 + 32);
    *&v64[0] = v47;
    *(v64 + 12) = *(v49 + 20);
    DWORD2(v64[0]) = v46;
    DWORD1(v64[1]) = v45;
    *(&v64[1] + 1) = v48;
    v63 = &unk_1F2CFA908;
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v63, v50, 111);
    v63 = &unk_1F2CFA908;
    memset(v64, 0, sizeof(v64));
    quasar::Bitmap::~Bitmap(&v63);
  }
}

void sub_1B58CFD14(_Unwind_Exception *a1)
{
  *(v3 - 128) = v1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v3 - 128));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::ComputeAlignments(int32x2_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 20);
  v5 = a1[2];
  if (v5)
  {
    if (v8)
    {
      v9 = (v8 + 104);
LABEL_6:
      v11 = *v9;
      kaldi::CuMatrix<float>::Resize(a1 + 27, (v4 + v4 * a1[1].i32[1]), v5[3], 1, 0);
      v12 = a1[1].u32[1];
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = 0;
        do
        {
          v15 = a1[1].i32[0];
          v16 = a1[30].i32[0];
          v17 = (*&a1[28] + 4 * v16 * v13);
          v18 = a1[30].i32[1] - v16 * v13;
          v19 = a1[31];
          LODWORD(__p.__end_cap_.__value_) = a1[29].i32[0];
          HIDWORD(__p.__end_cap_.__value_) = v4;
          *&v58 = __PAIR64__(v18, v16);
          *(&v58 + 1) = v19;
          __p.__begin_ = &unk_1F2CFA908;
          __p.__end_ = v17;
          v20 = *(a2 + 8) + 4 * (v15 * v14);
          LODWORD(v17) = *(a2 + 28) - v15 * v14;
          v21 = *(a2 + 32);
          LODWORD(v56[2]) = v15;
          *(&v56[2] + 4) = *(a2 + 20);
          HIDWORD(v56[3]) = v17;
          v56[4] = v21;
          v56[0] = &unk_1F2CFA908;
          v56[1] = v20;
          v22 = *(v11 + 8) + 4 * (v15 * v14);
          v23 = *(v11 + 28) - v15 * v14;
          v24 = *(v11 + 32);
          LODWORD(v55[2]) = v15;
          *(&v55[2] + 4) = *(v11 + 20);
          HIDWORD(v55[3]) = v23;
          v55[4] = v24;
          v55[0] = &unk_1F2CFA908;
          v55[1] = v22;
          kaldi::CuMatrixBase<float>::AddMatMat(&__p, v56, 111, v55, 112);
          v55[0] = &unk_1F2CFA908;
          memset(&v55[1], 0, 32);
          quasar::Bitmap::~Bitmap(v55);
          v56[0] = &unk_1F2CFA908;
          memset(&v56[1], 0, 32);
          quasar::Bitmap::~Bitmap(v56);
          __p.__begin_ = &unk_1F2CFA908;
          *&__p.__end_ = 0u;
          v58 = 0u;
          quasar::Bitmap::~Bitmap(&__p);
          ++v14;
          v12 = a1[1].u32[1];
          v13 += v4;
        }

        while (v14 < v12);
      }

      kaldi::CuMatrix<float>::Resize(a1 + 42, v4, v12, 1, 0);
      if (v4 >= 1)
      {
        v25 = 0;
        do
        {
          v26 = a1[1].i32[1] * v4;
          v27 = a1[30].i32[0];
          v28 = (*&a1[28] + 4 * v27 * v25);
          v29 = a1[30].i32[1] - v27 * v25;
          v30 = a1[31];
          LODWORD(__p.__end_cap_.__value_) = a1[29].i32[0];
          HIDWORD(__p.__end_cap_.__value_) = v26;
          *&v58 = __PAIR64__(v29, v27);
          *(&v58 + 1) = v30;
          __p.__begin_ = &unk_1F2CFA908;
          __p.__end_ = v28;
          if (v4 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&__p, v27 * v4);
          }

          v31 = a1[44].u32[0];
          v32 = a1[46];
          v56[1] = *&a1[43] + 4 * a1[45].i32[0] * v25;
          v56[0] = &unk_1F2CFCA48;
          v56[2] = v31;
          v56[3] = v32;
          v33 = *(a3 + 16);
          v34 = *(a3 + 32);
          v55[1] = *(a3 + 8) + 4 * *(a3 + 24) * v25;
          v55[0] = &unk_1F2CFCA48;
          v55[2] = v33;
          v55[3] = v34;
          kaldi::CuVectorBase<float>::AddMatVec(v56, &__p, 111, v55);
          __p.__begin_ = &unk_1F2CFA908;
          *&__p.__end_ = 0u;
          v58 = 0u;
          quasar::Bitmap::~Bitmap(&__p);
          ++v25;
        }

        while (v4 != v25);
      }

      kaldi::CuMatrixBase<float>::FindRowMaxId(&a1[42], &a1[39]);
      memset(&__p, 0, sizeof(__p));
      kaldi::CuArray<int>::CopyToVec(&a1[39], &__p);
      if (v4 >= 1)
      {
        v35 = 0;
        v36 = 4 * v4;
        v37 = 8;
        do
        {
          v38 = *(*(*&a1[36] + v37) - 4);
          v39 = (*&a1[33] + v37 - 8);
          LODWORD(v56[0]) = __p.__begin_[v35 / 4] + v38 - a1[51].i32[0];
          std::vector<int>::push_back[abi:ne200100](v39, v56);
          if (a1[52].i8[0] == 1)
          {
            v40 = *(*(*&a1[33] + v37) - 4);
            LODWORD(v56[0]) = v40;
            v41 = a1[36];
            if (v40 == v38)
            {
              if (*(*&v41 + v37) - *(*&v41 + v37 - 8) < 5uLL)
              {
                v40 = v38;
              }

              else
              {
                v40 = v38;
                if (*(*(*&v41 + v37) - 8) == v38)
                {
                  v40 = v38 + 1;
                  LODWORD(v56[0]) = v38 + 1;
                }
              }
            }

            v44 = (*&v41 + v37 - 8);
            v49 = (*&a1[48] + v35);
            if (v49->i32[0] >= v40)
            {
              v49 = v56;
            }

            if (v49->i32[0] >= a1[51].i32[0])
            {
              v48 = v49;
            }

            else
            {
              v48 = a1 + 51;
            }
          }

          else
          {
            v42 = *(*(*&a1[33] + v37) - 4);
            LODWORD(v56[0]) = v42;
            v43 = a1[36];
            v44 = (*&v43 + v37 - 8);
            if (v42 == v38)
            {
              v45 = *(*&v43 + v37);
              v46 = *v44;
              v47 = v45 - *v44;
              if (v47 >= 5 && *(v46[-1].i32 + v47) == v38)
              {
                LODWORD(v56[0]) = --v38;
              }
            }

            else
            {
              v46 = *v44;
              v38 = v42;
            }

            if (v46->i32[0] >= v38)
            {
              v46 = v56;
            }

            if (v46->i32[0] >= a1[51].i32[0])
            {
              v48 = v46;
            }

            else
            {
              v48 = a1 + 51;
            }
          }

          std::vector<int>::push_back[abi:ne200100](v44, v48);
          v35 += 4;
          v37 += 24;
        }

        while (v36 != v35);
      }

      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      return;
    }

    if (v10)
    {
      v9 = (v10 + 112);
      goto LABEL_6;
    }
  }

  if (v4 >= 1)
  {
    v50 = 0;
    v51 = 4 * v4;
    v52 = 8;
    do
    {
      LODWORD(__p.__begin_) = *(*(*&a1[36] + v52) - 4);
      std::vector<int>::push_back[abi:ne200100]((*&a1[33] + v52 - 8), &__p);
      v53 = (*&a1[36] + v52 - 8);
      if (a1[52].i8[0] == 1)
      {
        LODWORD(v56[0]) = LODWORD(__p.__begin_) + 1;
        if (*(*&a1[48] + v50) <= SLODWORD(__p.__begin_))
        {
          v54 = (*&a1[48] + v50);
        }

        else
        {
          v54 = v56;
        }
      }

      else
      {
        LODWORD(v56[0]) = LODWORD(__p.__begin_) - 1;
        if (SLODWORD(__p.__begin_) <= a1[51].i32[0])
        {
          v54 = a1 + 51;
        }

        else
        {
          v54 = v56;
        }
      }

      std::vector<int>::push_back[abi:ne200100](v53, v54);
      v52 += 24;
      v50 += 4;
    }

    while (v51 != v50);
  }
}

void sub_1B58D03C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MovingAttentionComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v62 = a2;
  v8 = *(a2 + 20);
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v64 = a5;
  v11 = *(a5 + 32);
  *(a1 + 152) = v11;
  *(a1 + 200) = v11;
  v12 = *(a1 + 44);
  v13 = (v8 / v12);
  kaldi::CuMatrix<float>::Resize((a1 + 120), v12, *(a1 + 40), 0, 0);
  kaldi::CuMatrix<float>::Resize((a1 + 168), v12, *(*(a1 + 16) + 8), 0, 0);
  v61 = v13;
  if (v13 >= 1)
  {
    v14 = 0;
    v66 = v9 * v10;
    v67 = v12;
    do
    {
      v15 = *(v62 + 24);
      v16 = *(v62 + 8) + 4 * (v15 * v14 * v12);
      v17 = *(v62 + 28) - v15 * v14 * v12;
      v18 = *(v62 + 32);
      LODWORD(v81[1]) = *(v62 + 16);
      HIDWORD(v81[1]) = v12;
      v81[2] = __PAIR64__(v17, v15);
      v81[3] = v18;
      v80 = &unk_1F2CFA908;
      v81[0] = v16;
      v19 = *(a1 + 16);
      v20 = *(a3 + 24);
      v21 = *(a3 + 8) + 4 * (v20 * v14 * v12);
      v22 = *(a3 + 28) - v20 * v14 * v12;
      v23 = *(a3 + 32);
      LODWORD(v76[1]) = *(a3 + 16);
      HIDWORD(v76[1]) = v12;
      v76[2] = __PAIR64__(v22, v20);
      v76[3] = v23;
      v77 = &unk_1F2CFA908;
      v75 = &unk_1F2CFA908;
      v76[0] = v21;
      DWORD2(v78) = v19[3];
      HIDWORD(v78) = v12;
      *&v79 = __PAIR64__(v22, v20);
      *(&v79 + 1) = v23;
      *&v78 = v21;
      v24 = *(a4 + 24);
      v25 = *(a4 + 8) + 4 * (v24 * v14 * v12);
      LODWORD(v23) = *(a4 + 28) - v24 * v14 * v12;
      v26 = *(a4 + 32);
      DWORD2(v70) = *(a4 + 16);
      HIDWORD(v70) = v12;
      *&v71 = __PAIR64__(v23, v24);
      *(&v71 + 1) = v26;
      v72 = &unk_1F2CFA908;
      v69 = &unk_1F2CFA908;
      *&v70 = v25;
      *(&v73 + 1) = __PAIR64__(v12, DWORD2(v78));
      *&v74 = __PAIR64__(v23, v24);
      *(&v74 + 1) = v26;
      *&v73 = v25;
      (*(*v19 + 128))(v19, &v80, &v77, &v72, a1 + 168, 0);
      v72 = &unk_1F2CFA908;
      v73 = 0u;
      v74 = 0u;
      quasar::Bitmap::~Bitmap(&v72);
      v69 = &unk_1F2CFA908;
      v70 = 0u;
      v71 = 0u;
      quasar::Bitmap::~Bitmap(&v69);
      v77 = &unk_1F2CFA908;
      v78 = 0u;
      v79 = 0u;
      quasar::Bitmap::~Bitmap(&v77);
      v75 = &unk_1F2CFA908;
      memset(v76, 0, sizeof(v76));
      quasar::Bitmap::~Bitmap(&v75);
      v27 = *(v64 + 24);
      v28 = *(v64 + 8) + 4 * (v27 * v14 * v12);
      v29 = *(v64 + 28) - v27 * v14 * v12;
      v30 = *(v64 + 32);
      DWORD2(v78) = *(v64 + 16);
      HIDWORD(v78) = v12;
      *&v79 = __PAIR64__(v29, v27);
      *(&v79 + 1) = v30;
      v77 = &unk_1F2CFA908;
      *&v78 = v28;
      v68 = v14;
      if (v12 >= 1 && (*(a1 + 419) & 1) != 0)
      {
        v31 = 0;
        v32 = *(a1 + 12);
        do
        {
          if (v32 >= 1)
          {
            v33 = 0;
            v34 = (*(*(*(a1 + 288) + 24 * v31) + 4 * v14) - *(a1 + 408)) * *(a1 + 8);
            do
            {
              v75 = &unk_1F2CFCA48;
              v76[0] = v78 + 4 * v79 * v31;
              v76[2] = *(&v79 + 1);
              v76[1] = DWORD2(v78);
              v35 = *(a1 + 32) + 4 * *(a1 + 48) * v31;
              v36 = *(a1 + 40);
              v37 = *(a1 + 56);
              v69 = &unk_1F2CFCA48;
              *&v70 = v35;
              *&v71 = v37;
              *(&v70 + 1) = v36;
              v38 = *(a1 + 8);
              v72 = &unk_1F2CFCA48;
              *&v73 = v35 + 4 * (v38 * v33 + v34);
              *&v74 = v37;
              *(&v73 + 1) = v38;
              kaldi::CuVectorBase<float>::AddVecVec();
              ++v33;
              v32 = *(a1 + 12);
            }

            while (v33 < v32);
            v12 = v67;
            v14 = v68;
          }

          ++v31;
        }

        while (v31 != v12);
      }

      if (*(a1 + 417) == 1)
      {
        v39 = *(a1 + 8 + *(*a1 - 24));
        v40 = *(a1 + 176) + 4 * v9 * v10;
        v41 = *(a1 + 196) - v66;
        v42 = *(a1 + 200);
        *(&v76[1] + 4) = *(a1 + 188);
        LODWORD(v76[1]) = v39;
        HIDWORD(v76[2]) = v41;
        v76[3] = v42;
        v75 = &unk_1F2CFA908;
        v76[0] = v40;
        kaldi::CuMatrixBase<float>::AddMat(&v77, &v75, 111, 1.0, 1.0);
        v75 = &unk_1F2CFA908;
        memset(v76, 0, sizeof(v76));
        quasar::Bitmap::~Bitmap(&v75);
      }

      if (v12 >= 1)
      {
        v43 = 0;
        do
        {
          v44 = (*(*(*(a1 + 288) + 24 * v43) + 4 * v14) - *(a1 + 408)) * *(a1 + 8);
          if (*(a1 + 419) == 1)
          {
            if (*(a1 + 12) >= 1)
            {
              v45 = 0;
              do
              {
                v46 = *(a1 + 128) + 4 * *(a1 + 144) * v43;
                v47 = *(a1 + 136);
                v48 = *(a1 + 152);
                v72 = &unk_1F2CFCA48;
                *&v73 = v46;
                *&v74 = v48;
                *(&v73 + 1) = v47;
                v49 = *(a1 + 8);
                v75 = &unk_1F2CFCA48;
                v76[0] = v46 + 4 * (v49 * v45 + v44);
                v76[2] = v48;
                v76[1] = v49;
                v69 = &unk_1F2CFCA48;
                *&v70 = v81[0] + 4 * LODWORD(v81[2]) * v43;
                *&v71 = v81[3];
                *(&v70 + 1) = LODWORD(v81[1]);
                kaldi::CuVectorBase<float>::AddVecVec();
                ++v45;
              }

              while (v45 < *(a1 + 12));
            }
          }

          else
          {
            v50 = *(a1 + 140);
            v51 = *(a1 + 144);
            v52 = *(a1 + 128) + 4 * v44;
            v53 = *(a1 + 148) - v44;
            v54 = *(a1 + 152);
            LODWORD(v76[1]) = v9 * v10;
            HIDWORD(v76[1]) = v50;
            v76[2] = __PAIR64__(v53, v51);
            v76[3] = v54;
            v75 = &unk_1F2CFA908;
            v76[0] = v52;
            *&v70 = v52 + 4 * (v51 * v43);
            v69 = &unk_1F2CFCA48;
            *(&v70 + 1) = v66;
            *&v71 = v54;
            LODWORD(v52) = *(a1 + 188);
            v55 = *(a1 + 176);
            v56 = *(a1 + 200);
            DWORD2(v73) = v9 * v10;
            HIDWORD(v73) = v52;
            *&v74 = *(a1 + 192);
            *(&v74 + 1) = v56;
            v72 = &unk_1F2CFA908;
            *&v73 = v55;
            kaldi::CuVectorBase<float>::AddVec(COERCE_DOUBLE(__PAIR64__(DWORD1(v74), 1.0)), 1.0);
            v72 = &unk_1F2CFA908;
            v73 = 0u;
            v74 = 0u;
            quasar::Bitmap::~Bitmap(&v72);
            v69 = &unk_1F2CFCA48;
            *&v70 = 0;
            DWORD2(v70) = 0;
            *&v71 = 0;
            v75 = &unk_1F2CFA908;
            memset(v76, 0, sizeof(v76));
            quasar::Bitmap::~Bitmap(&v75);
          }

          ++v43;
          v12 = v67;
          v14 = v68;
        }

        while (v43 != v67);
      }

      v77 = &unk_1F2CFA908;
      v78 = 0u;
      v79 = 0u;
      quasar::Bitmap::~Bitmap(&v77);
      v80 = &unk_1F2CFA908;
      memset(v81, 0, sizeof(v81));
      quasar::Bitmap::~Bitmap(&v80);
      ++v14;
    }

    while (v14 != v61);
  }

  if (*(a1 + 418))
  {
    v57 = *(*(a1 + 16) + 12);
    v58 = *(a1 + *(*a1 - 24) + 8);
    v59 = *(a4 + 8) + 4 * v57;
    LODWORD(v57) = *(a4 + 28) - v57;
    v60 = *(a4 + 32);
    *(&v81[1] + 4) = *(a4 + 20);
    LODWORD(v81[1]) = v58;
    HIDWORD(v81[2]) = v57;
    v81[3] = v60;
    v80 = &unk_1F2CFA908;
    v81[0] = v59;
    kaldi::CuMatrixBase<float>::AddMat(v64, &v80, 111, 1.0, 1.0);
    v80 = &unk_1F2CFA908;
    memset(v81, 0, sizeof(v81));
    quasar::Bitmap::~Bitmap(&v80);
  }
}

void sub_1B58D0E48(_Unwind_Exception *a1)
{
  *(v3 - 128) = v1;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  quasar::Bitmap::~Bitmap((v3 - 128));
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::AccumGradients(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v7 = *a1;
  v8 = *(a1 + 11);
  v52 = a2;
  v9 = *(a2 + 20);
  v10 = *(a1 + 2) * *(a1 + 3);
  a1[13] = a4;
  v11 = (v9 / v8);
  if (*(a1 + 417) == 1)
  {
    v12 = *(a1 + *(v7 - 24) + 8);
  }

  else
  {
    v12 = 0;
  }

  kaldi::CuMatrix<float>::Resize(a1 + 9, v8, v12 + v10, 1, 0);
  v13 = (*(*a1[2] + 272))();
  v64 = &unk_1F2D279F8;
  v14 = *(v13 + 23);
  *v65 = *(v13 + 8);
  *(&v65[3] + 3) = v14;
  v15 = v65[0];
  v65[0] = v65[0] / v11;
  (*(*a1[2] + 264))();
  if (v11 >= 1)
  {
    v16 = 0;
    v17 = 0uLL;
    v50 = a4;
    do
    {
      *&v63[3] = v17;
      *&v63[1] = v17;
      v63[0] = &unk_1F2CFA908;
      if (*(a1 + 417) == 1)
      {
        v18 = *(a1 + *(*a1 - 24) + 8);
        v19 = *(a1 + 25) - v10;
        v20 = a1[13];
        v63[1] = a1[10] + 4 * v10;
        *(&v63[2] + 4) = *(a1 + 92);
        LODWORD(v63[2]) = v18;
        HIDWORD(v63[3]) = v19;
        v63[4] = v20;
        v61 = &unk_1F2CFA908;
        v62[0] = v17;
        v62[1] = v17;
        quasar::Bitmap::~Bitmap(&v61);
        v21 = *(v52 + 24);
        v22 = v21 * v16 * v8;
        v23 = *(v52 + 8) + 4 * v22;
        v24 = *(v52 + 28) - v22;
        v25 = *(v52 + 32);
        DWORD2(v62[0]) = *(v52 + 16);
        HIDWORD(v62[0]) = v8;
        *&v62[1] = __PAIR64__(v24, v21);
        *(&v62[1] + 1) = v25;
        v61 = &unk_1F2CFA908;
        *&v62[0] = v23;
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(v63, &v61, 111);
        v61 = &unk_1F2CFA908;
        memset(v62, 0, sizeof(v62));
      }

      else
      {
        v26 = *(v52 + 16);
        v27 = *(v52 + 24);
        v28 = v27 * v16 * v8;
        v29 = *(v52 + 8) + 4 * v28;
        v30 = *(v52 + 28) - v28;
        v31 = *(v52 + 32);
        v63[1] = v29;
        v63[2] = __PAIR64__(v8, v26);
        v63[3] = __PAIR64__(v30, v27);
        v63[4] = v31;
        v61 = &unk_1F2CFA908;
        v62[0] = v17;
        v62[1] = v17;
      }

      quasar::Bitmap::~Bitmap(&v61);
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v33 = *(*(a1[36] + 24 * i) + 4 * v16) - *(a1 + 102);
          v34 = a1[10];
          v35 = a1[13];
          *(&v62[0] + 1) = __PAIR64__(*(a1 + 23), v10);
          *&v62[1] = a1[12];
          *(&v62[1] + 1) = v35;
          v61 = &unk_1F2CFA908;
          *&v62[0] = v34;
          v53 = &unk_1F2CFCA48;
          *&v54 = v34 + 4 * LODWORD(v62[1]) * i;
          *&v55 = v35;
          *(&v54 + 1) = v10;
          v36 = a1[4] + 4 * *(a1 + 12) * i;
          LODWORD(v34) = *(a1 + 10);
          v37 = a1[7];
          v56 = &unk_1F2CFCA48;
          v57 = v36;
          v59 = v37;
          v58 = v34;
          v38 = v36 + 4 * *(a1 + 2) * v33;
          v60[0] = &unk_1F2CFCA48;
          v60[1] = v38;
          v60[3] = v37;
          v60[2] = v10;
          kaldi::CuVectorBase<float>::CopyFromVec(&v53, v60);
          v53 = &unk_1F2CFCA48;
          *&v54 = 0;
          DWORD2(v54) = 0;
          *&v55 = 0;
          v61 = &unk_1F2CFA908;
          memset(v62, 0, sizeof(v62));
          quasar::Bitmap::~Bitmap(&v61);
        }
      }

      if (*(a1 + 419) == 1 && *(a1 + 3) >= 1)
      {
        v39 = 0;
        do
        {
          v40 = *(a1 + 2);
          v41 = a1[10] + 4 * (v40 * v39);
          v42 = *(a1 + 25) - v40 * v39;
          v43 = a1[13];
          DWORD2(v62[0]) = v40;
          *(v62 + 12) = *(a1 + 92);
          DWORD1(v62[1]) = v42;
          *(&v62[1] + 1) = v43;
          v61 = &unk_1F2CFA908;
          *&v62[0] = v41;
          kaldi::CuMatrixBase<float>::MulElements(&v61, v63);
          v61 = &unk_1F2CFA908;
          memset(v62, 0, sizeof(v62));
          quasar::Bitmap::~Bitmap(&v61);
          ++v39;
        }

        while (v39 < *(a1 + 3));
      }

      v44 = a1[2];
      v45 = *(a3 + 24);
      v46 = v45 * v16 * v8;
      v47 = *(a3 + 8) + 4 * v46;
      v48 = *(a3 + 28) - v46;
      v49 = *(a3 + 32);
      DWORD2(v54) = *(a3 + 16);
      HIDWORD(v54) = v8;
      *&v55 = __PAIR64__(v48, v45);
      *(&v55 + 1) = v49;
      v53 = &unk_1F2CFA908;
      *&v54 = v47;
      DWORD2(v62[0]) = v44[3];
      HIDWORD(v62[0]) = v8;
      *&v62[1] = __PAIR64__(v48, v45);
      *(&v62[1] + 1) = v49;
      v61 = &unk_1F2CFA908;
      *&v62[0] = v47;
      (*(*v44 + 232))(v44, a1 + 9, &v61, v50, 0);
      v61 = &unk_1F2CFA908;
      memset(v62, 0, sizeof(v62));
      quasar::Bitmap::~Bitmap(&v61);
      v53 = &unk_1F2CFA908;
      v54 = 0u;
      v55 = 0u;
      quasar::Bitmap::~Bitmap(&v53);
      (*(*a1[2] + 256))();
      v63[0] = &unk_1F2CFA908;
      memset(&v63[1], 0, 32);
      quasar::Bitmap::~Bitmap(v63);
      ++v16;
      v17 = 0uLL;
    }

    while (v16 != v11);
  }

  v65[0] = v15;
  (*(*a1[2] + 264))(a1[2], &v64);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v64);
}

quasar::MappedPgmBitmap *quasar::MappedPgmBitmap::MappedPgmBitmap(quasar::MappedPgmBitmap *this)
{
  *this = &unk_1F2D37988;
  *(this + 1) = -1;
  *(this + 8) = -1;
  *(this + 3) = -1;
  v2 = (this + 32);
  v3 = (this + 456);
  *(this + 63) = 0;
  v4 = MEMORY[0x1E69E5528] + 64;
  *(this + 57) = MEMORY[0x1E69E5528] + 64;
  v5 = *(MEMORY[0x1E69E54C8] + 16);
  v6 = *(MEMORY[0x1E69E54C8] + 8);
  *(this + 4) = v6;
  *(v2 + *(v6 - 24)) = v5;
  *(this + 5) = 0;
  v7 = (this + *(*(this + 4) - 24) + 32);
  std::ios_base::init(v7, this + 48);
  v8 = MEMORY[0x1E69E5528] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *v2 = v8;
  *v3 = v4;
  MEMORY[0x1B8C849F0](this + 48);
  *(this + 38) = 0u;
  return this;
}

void sub_1B58D19F0(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C85200](v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::MappedPgmBitmap::getColorAt(quasar::MappedPgmBitmap *this, int a2, int a3)
{
  if (a2 < 0 || a3 < 0 || (v3 = *(this + 2), v3 <= a2) || (v4 = *(this + 3), v4 <= a3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    quasar::Bitmap::CoordinatesOutOfRange::CoordinatesOutOfRange(exception, a2, a3);
  }

  v5 = a2 + (v4 + ~a3) * v3;
  v6 = *(this + 3);
  if (v6 == 2)
  {
    return *(*(this + 78) + 2 * v5);
  }

  if (v6 != 1)
  {
    memset(v13, 0, sizeof(v13));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Internal error, unexpected pixel size ", 38);
    MEMORY[0x1B8C84C30](v12, *(this + 3));
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v13);
  }

  return *(*(this + 78) + v5);
}

void quasar::MappedPgmBitmap::load(uint64_t a1, uint64_t a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a1 + 32;
  std::ifstream::open();
  if (!*(v4 + *(*(a1 + 32) - 24) + 32))
  {
    std::istream::read();
    v22 = 2;
    __p = v24;
    __p_2 = 0;
    if (v24 == 13648)
    {
      MEMORY[0x1B8C84AE0](v4, a1 + 8);
      if (*(a1 + 8) > 0)
      {
        MEMORY[0x1B8C84AE0](v4, a1 + 12);
        if (*(a1 + 12) > 0)
        {
          MEMORY[0x1B8C84B10](v4, a1 + 16);
          v5 = 1;
          if (*(a1 + 16) >= 0x100u)
          {
            v5 = 2;
          }

          *(a1 + 24) = v5;
          v6 = std::istream::get();
          if (v6 <= 0x7F)
          {
            v7 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x4000;
          }

          else
          {
            v7 = __maskrune(v6, 0x4000uLL);
          }

          if (v7)
          {
            fst::FstReadOptions::FstReadOptions(&__p, a2, 0, 0, 0);
            v23 = 2;
            std::istream::tellg();
            v8 = v33;
            std::istream::seekg();
            std::istream::tellg();
            v9 = v33;
            if (v8 + *(a1 + 24) * *(a1 + 12) * *(a1 + 8) == v33)
            {
              std::istream::seekg();
              fst::MappedFile::Map(v4, &__p, v9);
            }

            v16 = v8 + *(a1 + 24) * *(a1 + 12) * *(a1 + 8);
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
            v31 = 0u;
            v29 = 0u;
            v27 = 0u;
            v28 = 0u;
            v25 = 0u;
            v26 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
            v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "PGM header suggests different file size than actual size, expected=", 67);
            v18 = MEMORY[0x1B8C84C30](v17, v16);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " actual=", 8);
            MEMORY[0x1B8C84C30](v19, v9);
            quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
          }

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
          v31 = 0u;
          v29 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(&v25, "Whitespace expected before binary data");
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
        }

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
        v31 = 0u;
        v29 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Bitmap height must be positive but was ", 39);
        MEMORY[0x1B8C84C00](v15, *(a1 + 12));
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
      }

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
      v31 = 0u;
      v29 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Bitmap width must be positive but was ", 38);
      MEMORY[0x1B8C84C00](v14, *(a1 + 8));
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
    }

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
    v31 = 0u;
    v29 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Unexpected magic ", 17);
    *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 8;
    v12 = MEMORY[0x1B8C84C10]();
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ", 1);
    MEMORY[0x1B8C84C10](v13, SHIBYTE(v24));
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
  }

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
  v31 = 0u;
  v29 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v25);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v25, "Cannot open bitmap file ", 24);
  std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, a2);
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v25);
}

void sub_1B58D2170(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58D2238(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MappedPgmBitmap::~MappedPgmBitmap(quasar::MappedPgmBitmap *this)
{
  quasar::MappedPgmBitmap::~MappedPgmBitmap(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D37988;
  v2 = *(this + 77);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = MEMORY[0x1E69E54C8];
  v4 = *MEMORY[0x1E69E54C8];
  *(this + 4) = *MEMORY[0x1E69E54C8];
  *(this + *(v4 - 24) + 32) = *(v3 + 24);
  MEMORY[0x1B8C84A00](this + 48);
  std::istream::~istream();
  MEMORY[0x1B8C85200](this + 456);

  quasar::Bitmap::~Bitmap(this);
}

void sub_1B58D2418(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<quasar::MappedPgmBitmap>::shared_ptr[abi:ne200100]<quasar::MappedPgmBitmap,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<quasar::MappedPgmBitmap *,std::shared_ptr<quasar::MappedPgmBitmap>::__shared_ptr_default_delete<quasar::MappedPgmBitmap,quasar::MappedPgmBitmap>,std::allocator<quasar::MappedPgmBitmap>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::MappedPgmBitmap *,std::shared_ptr<quasar::MappedPgmBitmap>::__shared_ptr_default_delete<quasar::MappedPgmBitmap,quasar::MappedPgmBitmap>,std::allocator<quasar::MappedPgmBitmap>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::MappedPgmBitmap *,std::shared_ptr<quasar::MappedPgmBitmap>::__shared_ptr_default_delete<quasar::MappedPgmBitmap,quasar::MappedPgmBitmap>,std::allocator<quasar::MappedPgmBitmap>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void quasar::LDLoggingInfo::addDoubleValue(quasar *a1, uint64_t a2, double a3)
{
  Type = quasar::getType(a1, *&a3);
  std::to_string(&v7, a3);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  quasar::PTree::putChild(a1, a2, &Type, 1);
  quasar::PTree::~PTree(&Type);
}

void quasar::LDLoggingInfo::addIntValue(uint64_t a1, uint64_t a2, quasar *this)
{
  v3 = this;
  Type = quasar::getType(this);
  std::to_string(&v7, v3);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  quasar::PTree::putChild(a1, a2, &Type, 1);
  quasar::PTree::~PTree(&Type);
}

void quasar::LDLoggingInfo::addStringValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  quasar::PTree::PTree(v5, a3);
  quasar::PTree::putChild(a1, a2, v5, 1);
  quasar::PTree::~PTree(v5);
}

void quasar::LDLoggingInfo::addBoolValue(uint64_t a1, uint64_t a2, quasar *this)
{
  v3 = this;
  Type = quasar::getType(this);
  std::to_string(&v7, v3);
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 1;
  quasar::PTree::putChild(a1, a2, &Type, 1);
  quasar::PTree::~PTree(&Type);
}

double *quasar::posteriorsToConfidences@<X0>(double *result@<X0>, void *a2@<X8>)
{
  v3 = result + 1;
  v4 = *result;
  if (*result == result + 1)
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
  }

  else
  {
    v5 = 0.0;
    v6 = *result;
    do
    {
      v7 = v6[1];
      v8 = v6;
      if (v7)
      {
        do
        {
          v9 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = v8[2];
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (!v10);
      }

      v5 = v5 + *(v6 + 10);
      v6 = v9;
    }

    while (v9 != v3);
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    if (v4 != v3)
    {
      do
      {
        v11 = *(v4 + 10);
        result = std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale const&>,std::tuple<>>(a2, v4 + 4);
        result[10] = v11 / v5;
        v12 = v4[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v4[2];
            v10 = *v13 == v4;
            v4 = v13;
          }

          while (!v10);
        }

        v4 = v13;
      }

      while (v13 != v3);
    }
  }

  return result;
}

__int128 *quasar::language_detector::Locale::Locale(__int128 *a1, uint64_t a2)
{
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v36, *a2, *(a2 + 8));
  }

  else
  {
    v36 = *a2;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "-");
  std::string::basic_string[abi:ne200100]<0>(v34, "_");
  quasar::replaceAll(&v36, __p, v34);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "_");
  quasar::splitAndTrimNoEmpty(&v36, __p, v34);
  if (SBYTE7(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v4 = v34[0];
  if ((v34[1] - v34[0]) == 48)
  {
    v5 = *(a1 + 2);
    v6 = *a1;
    v7 = *(v34[0] + 2);
    *a1 = *v34[0];
    *(a1 + 2) = v7;
    *v4 = v6;
    v4[2] = v5;
    v8 = v34[0];
    v9 = *(a1 + 5);
    v10 = *(a1 + 24);
    v11 = *(v34[0] + 5);
    *(a1 + 24) = *(v34[0] + 24);
    *(a1 + 5) = v11;
    *(v8 + 24) = v10;
    *(v8 + 5) = v9;
  }

  else if (quasar::gLogLevel >= 2)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Invalid locale string given ", 28);
    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    quasar::QuasarWarnMessage::~QuasarWarnMessage(__p);
  }

  __p[0] = v34;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B58D2B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 47) < 0)
  {
    operator delete(*(v14 + 24));
  }

  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  _Unwind_Resume(exception_object);
}

void quasar::language_detector::Locale::getSiriLocaleStr(quasar::language_detector::Locale *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) >= 0)
  {
    v4 = *(this + 23);
  }

  else
  {
    v4 = *(this + 1);
  }

  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v4 + 1);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 23) >= 0)
    {
      v6 = this;
    }

    else
    {
      v6 = *this;
    }

    memmove(p_p, v6, v4);
  }

  *(&p_p->__r_.__value_.__l.__data_ + v4) = 45;
  v9 = *(this + 3);
  v8 = this + 24;
  v7 = v9;
  v10 = v8[23];
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = v8[23];
  }

  else
  {
    v12 = *(v8 + 1);
  }

  v13 = std::string::append(&__p, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1B58D2CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::language_detector::Locale::operator<(const void **a1, const void **a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  if (v2 >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v3 == v6 && !memcmp(v5, v7, v3))
  {
    v17 = a2[3];
    v16 = a2 + 3;
    v15 = v17;
    v18 = *(v16 + 23);
    v21 = a1[3];
    v20 = a1 + 3;
    v19 = v21;
    v22 = *(v20 + 23);
    if (v22 >= 0)
    {
      v23 = *(v20 + 23);
    }

    else
    {
      v23 = v20[1];
    }

    if (v22 >= 0)
    {
      v24 = v20;
    }

    else
    {
      v24 = v19;
    }

    if (v18 >= 0)
    {
      v25 = *(v16 + 23);
    }

    else
    {
      v25 = v16[1];
    }

    if (v18 >= 0)
    {
      v26 = v16;
    }

    else
    {
      v26 = v15;
    }

    if (v25 >= v23)
    {
      v27 = v23;
    }

    else
    {
      v27 = v25;
    }

    v11 = memcmp(v24, v26, v27);
    v12 = v23 >= v25;
  }

  else
  {
    if (v6 >= v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = v6;
    }

    v11 = memcmp(v5, v7, v10);
    v12 = v3 >= v6;
  }

  v13 = !v12;
  if (v11)
  {
    return v11 < 0;
  }

  else
  {
    return v13;
  }
}

void *quasar::language_detector::operator<<(void *a1, quasar::language_detector::Locale *this)
{
  quasar::language_detector::Locale::getSiriLocaleStr(this, &__p);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1B58D2E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::LDContext::LDContext(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 8) = 0;
  *this = this + 8;
  *(this + 24) = 0;
  *(this + 48) = 0;
  *(this + 56) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 120) = 0;
  *(this + 144) = 0;
  *(this + 152) = 0;
  *(this + 176) = 0;
  *(this + 184) = 0;
  *(this + 208) = 0;
  *(this + 216) = 0;
  *(this + 264) = 0;
  *(this + 272) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0;
  *(this + 352) = 0;
  return this;
}

quasar::LDContext *quasar::LDContext::LDContext(quasar::LDContext *this, const quasar::LDContext *a2)
{
  v4 = std::map<quasar::language_detector::Locale,double>::map[abi:ne200100](this, a2);
  std::__optional_copy_base<std::set<quasar::language_detector::Locale>,false>::__optional_copy_base[abi:ne200100]((v4 + 3), a2 + 24);
  std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100]((this + 56), (a2 + 56));
  *(this + 56) = *(a2 + 56);
  std::__optional_copy_base<std::vector<quasar::language_detector::Locale>,false>::__optional_copy_base[abi:ne200100](this + 120, a2 + 120);
  std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](this + 152, a2 + 152);
  std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](this + 184, a2 + 184);
  std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100](this + 9, (a2 + 216));
  std::__optional_copy_base<quasar::language_detector::Locale,false>::__optional_copy_base[abi:ne200100]((this + 272), a2 + 17);
  std::__optional_copy_base<std::map<quasar::language_detector::Locale,double>,false>::__optional_copy_base[abi:ne200100](this + 328, a2 + 328);
  return this;
}

void sub_1B58D2F68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::optional<quasar::language_detector::Locale>::~optional(v2 + 272);
  std::optional<quasar::language_detector::Locale>::~optional(v2 + 216);
  if (*(v2 + 208) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 184, *(v2 + 192));
  }

  if (*(v2 + 176) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 152, *(v2 + 160));
  }

  if (*(v2 + 144) == 1)
  {
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  }

  std::optional<quasar::language_detector::Locale>::~optional(v2 + 56);
  if (*(v2 + 48) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2 + 24, *(v2 + 32));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v2, *(v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t quasar::LDContext::LDContext(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = (a2 + 8);
  v3 = *(a2 + 8);
  *(result + 8) = v3;
  v4 = result + 8;
  v5 = *(a2 + 16);
  *(result + 16) = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    *a2 = v2;
    *v2 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *result = v4;
  }

  *(result + 24) = 0;
  *(result + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(result + 24) = *(a2 + 24);
    v6 = (a2 + 32);
    v7 = *(a2 + 32);
    *(result + 32) = v7;
    v8 = result + 32;
    v9 = *(a2 + 40);
    *(result + 40) = v9;
    if (v9)
    {
      *(v7 + 16) = v8;
      *(a2 + 24) = v6;
      *v6 = 0;
      *(a2 + 40) = 0;
    }

    else
    {
      *(result + 24) = v8;
    }

    *(result + 48) = 1;
  }

  *(result + 56) = 0;
  *(result + 104) = 0;
  if (*(a2 + 104) == 1)
  {
    v10 = *(a2 + 56);
    *(result + 72) = *(a2 + 72);
    *(result + 56) = v10;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    v11 = *(a2 + 80);
    *(result + 96) = *(a2 + 96);
    *(result + 80) = v11;
    *(a2 + 88) = 0;
    *(a2 + 96) = 0;
    *(a2 + 80) = 0;
    *(result + 104) = 1;
  }

  v12 = *(a2 + 112);
  *(result + 120) = 0;
  *(result + 112) = v12;
  *(result + 144) = 0;
  if (*(a2 + 144) == 1)
  {
    *(result + 120) = 0;
    *(result + 128) = 0;
    *(result + 136) = 0;
    *(result + 120) = *(a2 + 120);
    *(result + 136) = *(a2 + 136);
    *(a2 + 120) = 0;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(result + 144) = 1;
  }

  *(result + 152) = 0;
  *(result + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    *(result + 152) = *(a2 + 152);
    v13 = (a2 + 160);
    v14 = *(a2 + 160);
    *(result + 160) = v14;
    v15 = result + 160;
    v16 = *(a2 + 168);
    *(result + 168) = v16;
    if (v16)
    {
      *(v14 + 16) = v15;
      *(a2 + 152) = v13;
      *v13 = 0;
      *(a2 + 168) = 0;
    }

    else
    {
      *(result + 152) = v15;
    }

    *(result + 176) = 1;
  }

  *(result + 184) = 0;
  *(result + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    *(result + 184) = *(a2 + 184);
    v17 = (a2 + 192);
    v18 = *(a2 + 192);
    *(result + 192) = v18;
    v19 = result + 192;
    v20 = *(a2 + 200);
    *(result + 200) = v20;
    if (v20)
    {
      *(v18 + 16) = v19;
      *(a2 + 184) = v17;
      *v17 = 0;
      *(a2 + 200) = 0;
    }

    else
    {
      *(result + 184) = v19;
    }

    *(result + 208) = 1;
  }

  *(result + 216) = 0;
  *(result + 264) = 0;
  if (*(a2 + 264) == 1)
  {
    v21 = *(a2 + 216);
    *(result + 232) = *(a2 + 232);
    *(result + 216) = v21;
    *(a2 + 224) = 0;
    *(a2 + 232) = 0;
    *(a2 + 216) = 0;
    v22 = *(a2 + 240);
    *(result + 256) = *(a2 + 256);
    *(result + 240) = v22;
    *(a2 + 248) = 0;
    *(a2 + 256) = 0;
    *(a2 + 240) = 0;
    *(result + 264) = 1;
  }

  *(result + 272) = 0;
  *(result + 320) = 0;
  if (*(a2 + 320) == 1)
  {
    v23 = *(a2 + 272);
    *(result + 288) = *(a2 + 288);
    *(result + 272) = v23;
    *(a2 + 280) = 0;
    *(a2 + 288) = 0;
    *(a2 + 272) = 0;
    v24 = *(a2 + 296);
    *(result + 312) = *(a2 + 312);
    *(result + 296) = v24;
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 296) = 0;
    *(result + 320) = 1;
  }

  *(result + 328) = 0;
  *(result + 352) = 0;
  if (*(a2 + 352) == 1)
  {
    *(result + 328) = *(a2 + 328);
    v25 = result + 336;
    v26 = *(a2 + 336);
    v27 = *(a2 + 344);
    *(result + 336) = v26;
    *(result + 344) = v27;
    if (v27)
    {
      *(v26 + 16) = v25;
      *(a2 + 328) = a2 + 336;
      *(a2 + 336) = 0;
      *(a2 + 344) = 0;
    }

    else
    {
      *(result + 328) = v25;
    }

    *(result + 352) = 1;
  }

  return result;
}

void quasar::LDContext::~LDContext(quasar::LDContext *this)
{
  if (*(this + 352) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 328, *(this + 42));
  }

  if (*(this + 320) == 1)
  {
    if (*(this + 319) < 0)
    {
      operator delete(*(this + 37));
    }

    if (*(this + 295) < 0)
    {
      operator delete(*(this + 34));
    }
  }

  if (*(this + 264) == 1)
  {
    if (*(this + 263) < 0)
    {
      operator delete(*(this + 30));
    }

    if (*(this + 239) < 0)
    {
      operator delete(*(this + 27));
    }
  }

  if (*(this + 208) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 184, *(this + 24));
  }

  if (*(this + 176) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 152, *(this + 20));
  }

  if (*(this + 144) == 1)
  {
    v2 = (this + 120);
    std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(this + 104) == 1)
  {
    if (*(this + 103) < 0)
    {
      operator delete(*(this + 10));
    }

    if (*(this + 79) < 0)
    {
      operator delete(*(this + 7));
    }
  }

  if (*(this + 48) == 1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this + 24, *(this + 4));
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(this, *(this + 1));
}

void quasar::LDContext::logContext(quasar::LDContext **this)
{
  if (quasar::gLogLevel >= 4)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v101);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v101, "Logging LDContext", 17);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v101);
  }

  v2 = MEMORY[0x1E69E54D8];
  if (this[2])
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
    v3 = *this;
    if (*this != (this + 1))
    {
      do
      {
        v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "(", 1);
        v5 = quasar::language_detector::operator<<(v4, (v3 + 32));
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ",", 1);
        v7 = MEMORY[0x1B8C84BE0](v6, *(v3 + 10));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") ", 2);
        v8 = *(v3 + 1);
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = *(v3 + 2);
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v3 = v9;
      }

      while (v9 != (this + 1));
    }

    if (quasar::gLogLevel > 3)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "priors=", 7);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[", 1);
      std::stringbuf::str();
      if ((v83 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v83 & 0x80u) == 0)
      {
        v14 = v83;
      }

      else
      {
        v14 = v82;
      }

      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, v14);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "]", 1);
      if (v83 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v84);
    }

    *&v101 = *v2;
    v16 = v2[9];
    *(&v101 + *(v101 - 24)) = v2[8];
    *&v102 = v16;
    *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(*(&v106 + 1));
    }

    *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v103);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v109);
  }

  if (*(this + 48) == 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
    if ((this[6] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v17 = this[3];
    if (v17 != (this + 4))
    {
      v18 = 1;
      do
      {
        if ((v18 & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, ", ", 2);
        }

        quasar::language_detector::operator<<(&v102, (v17 + 32));
        v19 = *(v17 + 1);
        if (v19)
        {
          do
          {
            v20 = v19;
            v19 = *v19;
          }

          while (v19);
        }

        else
        {
          do
          {
            v20 = *(v17 + 2);
            v10 = *v20 == v17;
            v17 = v20;
          }

          while (!v10);
        }

        v18 = 0;
        v17 = v20;
      }

      while (v20 != (this + 4));
    }

    if (quasar::gLogLevel > 3)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "dictation_locales=[", 19);
      std::stringbuf::str();
      if ((v83 & 0x80u) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p;
      }

      if ((v83 & 0x80u) == 0)
      {
        v23 = v83;
      }

      else
      {
        v23 = v82;
      }

      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "]", 1);
      if (v83 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v84);
    }

    *&v101 = *v2;
    v25 = v2[9];
    *(&v101 + *(v101 - 24)) = v2[8];
    *&v102 = v25;
    *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(*(&v106 + 1));
    }

    *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v103);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v109);
  }

  v26 = quasar::gLogLevel;
  if (*(this + 104) == 1 && quasar::gLogLevel >= 4)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v101);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v101, "current_dictaion_locale=", 24);
    if ((this[13] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    quasar::language_detector::operator<<(v28, (this + 7));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v101);
    v26 = quasar::gLogLevel;
  }

  if (*(this + 113) == 1 && v26 >= 4)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v101);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v101, "was_language_toggled=", 21);
    if ((*(this + 113) & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    MEMORY[0x1B8C84BD0](v29, *(this + 112));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v101);
  }

  if (*(this + 144) == 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
    if ((this[6] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v30 = this[3];
    if (v30 != (this + 4))
    {
      v31 = 1;
      do
      {
        if ((v31 & 1) == 0)
        {
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, ", ", 2);
        }

        quasar::language_detector::operator<<(&v102, (v30 + 32));
        v32 = *(v30 + 1);
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          do
          {
            v33 = *(v30 + 2);
            v10 = *v33 == v30;
            v30 = v33;
          }

          while (!v10);
        }

        v31 = 0;
        v30 = v33;
      }

      while (v33 != (this + 4));
    }

    if (quasar::gLogLevel > 3)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "multilingual_keyboard_locales=[", 31);
      std::stringbuf::str();
      if ((v83 & 0x80u) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p;
      }

      if ((v83 & 0x80u) == 0)
      {
        v36 = v83;
      }

      else
      {
        v36 = v82;
      }

      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v35, v36);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "]", 1);
      if (v83 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v84);
    }

    *&v101 = *v2;
    v38 = v2[9];
    *(&v101 + *(v101 - 24)) = v2[8];
    *&v102 = v38;
    *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(*(&v106 + 1));
    }

    *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v103);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v109);
  }

  if (*(this + 176) == 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
    if ((this[22] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v39 = this[19];
    if (v39 != (this + 20))
    {
      do
      {
        v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "(", 1);
        v41 = quasar::language_detector::operator<<(v40, (v39 + 32));
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ",", 1);
        v43 = MEMORY[0x1B8C84BE0](v42, *(v39 + 10));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ") ", 2);
        v44 = *(v39 + 1);
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = *(v39 + 2);
            v10 = *v45 == v39;
            v39 = v45;
          }

          while (!v10);
        }

        v39 = v45;
      }

      while (v45 != (this + 20));
    }

    if (quasar::gLogLevel > 3)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "keyboard_convo_locale_priors=", 29);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "[ ", 2);
      std::stringbuf::str();
      if ((v83 & 0x80u) == 0)
      {
        v48 = &__p;
      }

      else
      {
        v48 = __p;
      }

      if ((v83 & 0x80u) == 0)
      {
        v49 = v83;
      }

      else
      {
        v49 = v82;
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v48, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "]", 1);
      if (v83 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v84);
    }

    *&v101 = *v2;
    v51 = v2[9];
    *(&v101 + *(v101 - 24)) = v2[8];
    *&v102 = v51;
    *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(*(&v106 + 1));
    }

    *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v103);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v109);
  }

  if (*(this + 208) == 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
    if ((this[26] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v52 = this[23];
    if (v52 != (this + 24))
    {
      do
      {
        v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "(", 1);
        v54 = quasar::language_detector::operator<<(v53, (v52 + 32));
        v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ",", 1);
        v56 = MEMORY[0x1B8C84BE0](v55, *(v52 + 10));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ") ", 2);
        v57 = *(v52 + 1);
        if (v57)
        {
          do
          {
            v58 = v57;
            v57 = *v57;
          }

          while (v57);
        }

        else
        {
          do
          {
            v58 = *(v52 + 2);
            v10 = *v58 == v52;
            v52 = v58;
          }

          while (!v10);
        }

        v52 = v58;
      }

      while (v58 != (this + 24));
    }

    if (quasar::gLogLevel > 3)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "keyboard_global_locale_priors=", 30);
      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "[ ", 2);
      std::stringbuf::str();
      if ((v83 & 0x80u) == 0)
      {
        v61 = &__p;
      }

      else
      {
        v61 = __p;
      }

      if ((v83 & 0x80u) == 0)
      {
        v62 = v83;
      }

      else
      {
        v62 = v82;
      }

      v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v61, v62);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "]", 1);
      if (v83 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v84);
    }

    *&v101 = *v2;
    v64 = v2[9];
    *(&v101 + *(v101 - 24)) = v2[8];
    *&v102 = v64;
    *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(*(&v106 + 1));
    }

    *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v103);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v109);
  }

  v65 = quasar::gLogLevel;
  if (*(this + 264) == 1 && quasar::gLogLevel >= 4)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v101);
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v101, "previous_message_locale=", 24);
    if ((this[33] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    quasar::language_detector::operator<<(v66, (this + 27));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v101);
    v65 = quasar::gLogLevel;
  }

  if (*(this + 320) == 1 && v65 >= 4)
  {
    v116 = 0u;
    v117 = 0u;
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v101);
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v101, "global_last_keyboard_used=", 26);
    if ((this[40] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    quasar::language_detector::operator<<(v67, (this + 34));
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v101);
  }

  if (*(this + 352) == 1)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v101);
    if ((this[44] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v68 = this[41];
    if (v68 != (this + 42))
    {
      do
      {
        v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v102, "(", 1);
        v70 = quasar::language_detector::operator<<(v69, (v68 + 32));
        v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, ",", 1);
        v72 = MEMORY[0x1B8C84BE0](v71, *(v68 + 10));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, ") ", 2);
        v73 = *(v68 + 1);
        if (v73)
        {
          do
          {
            v74 = v73;
            v73 = *v73;
          }

          while (v73);
        }

        else
        {
          do
          {
            v74 = *(v68 + 2);
            v10 = *v74 == v68;
            v68 = v74;
          }

          while (!v10);
        }

        v68 = v74;
      }

      while (v74 != (this + 42));
    }

    if (quasar::gLogLevel > 3)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "dictation_locale_priors=", 24);
      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, "[ ", 2);
      std::stringbuf::str();
      if ((v83 & 0x80u) == 0)
      {
        v77 = &__p;
      }

      else
      {
        v77 = __p;
      }

      if ((v83 & 0x80u) == 0)
      {
        v78 = v83;
      }

      else
      {
        v78 = v82;
      }

      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v77, v78);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, "]", 1);
      if (v83 < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v84);
    }

    *&v101 = *v2;
    v80 = v2[9];
    *(&v101 + *(v101 - 24)) = v2[8];
    *&v102 = v80;
    *(&v102 + 1) = MEMORY[0x1E69E5548] + 16;
    if (SHIBYTE(v107) < 0)
    {
      operator delete(*(&v106 + 1));
    }

    *(&v102 + 1) = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v103);
    std::iostream::~basic_iostream();
    MEMORY[0x1B8C85200](&v109);
  }
}

void sub_1B58D4638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a50);
  _Unwind_Resume(a1);
}

void quasar::LDConfig::registerParams(uint64_t a1, quasar::SystemConfig *this, const std::string *a3)
{
  quasar::SystemConfig::getPrefix(this, &v10);
  quasar::SystemConfig::setPrefix(this, a3);
  std::string::basic_string[abi:ne200100]<0>(v8, "window-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "The number of frames to be considered per decision. In flexible input size, this is the minimum window size for creating the 1st LID result. When prediction-interval is used, -1 will deactivate the minimum size.");
  quasar::SystemConfig::Register<int>(this, v8, a1, __p, 1, 115, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "feature-dim");
  std::string::basic_string[abi:ne200100]<0>(__p, "The dimension size of the features.");
  quasar::SystemConfig::Register<int>(this, v8, a1 + 8, __p, 1, 115, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "languages-list");
  std::string::basic_string[abi:ne200100]<0>(__p, "Comma separated list of languages");
  quasar::SystemConfig::Register<std::string>(this, v8, a1 + 16, __p, 1, 115, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "compiled-model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "The name of the compiled model file");
  quasar::SystemConfig::Register<std::string>(this, v8, a1 + 64, __p, 1, 115, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "model-input-name");
  std::string::basic_string[abi:ne200100]<0>(__p, "The name of the key for the model input");
  quasar::SystemConfig::Register<std::string>(this, v8, a1 + 88, __p, 1, 115, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "model-output-name");
  std::string::basic_string[abi:ne200100]<0>(__p, "The name of the key for the model output");
  quasar::SystemConfig::Register<std::string>(this, v8, a1 + 112, __p, 1, 115, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "use-flexible-model");
  std::string::basic_string[abi:ne200100]<0>(__p, "Whether or not the model accepts flexible (variable) input size.");
  quasar::SystemConfig::Register<BOOL>(this, v8, a1 + 137, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "max-window-size");
  std::string::basic_string[abi:ne200100]<0>(__p, "The maximum size window for processing. Only works with flexible input size enabled.");
  quasar::SystemConfig::Register<int>(this, v8, a1 + 196, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "use-cpu-only");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only use the CPU for inference");
  quasar::SystemConfig::Register<BOOL>(this, v8, a1 + 136, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "send-only-final-result");
  std::string::basic_string[abi:ne200100]<0>(__p, "Do not send incremental results, send only the final result. Fixed input will always only send the final result.");
  quasar::SystemConfig::Register<BOOL>(this, v8, a1 + 138, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "minimum-confidence");
  std::string::basic_string[abi:ne200100]<0>(__p, "For flexible input size, the minimum confidence for sending early results back. Only works with flexible input size enabled.");
  quasar::SystemConfig::Register<double>(this, v8, a1 + 144, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "prediction-interval");
  std::string::basic_string[abi:ne200100]<0>(__p, "The interval which we should make decisions (-1 is only once). Only works with flexible input size enabled.");
  quasar::SystemConfig::Register<int>(this, v8, a1 + 4, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "ui-minimum-confidence");
  std::string::basic_string[abi:ne200100]<0>(__p, "Determines whether or no the UI should consider the result non-confident. Should be greater than or equal to minimum-confidence.");
  quasar::SystemConfig::Register<double>(this, v8, a1 + 152, __p, 0, 126, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "input-tensor-shape");
  std::string::basic_string[abi:ne200100]<0>(__p, "The shape of the input tensor specified by (dims, row index, col index).");
  quasar::SystemConfig::Register<std::string>(this, v8, a1 + 160, __p, 0, 134, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  quasar::SystemConfig::setPrefix(this, &v10);
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_1B58D4D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
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

void sub_1B58D5280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __p = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

uint64_t quasar::LDAcousticResult::LDAcousticResult(uint64_t this, char a2)
{
  *this = a2;
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  return this;
}

uint64_t quasar::LDResult::LDResult(uint64_t this, char a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 16) = 0;
  *(this + 8) = this + 16;
  *(this + 48) = 0;
  *(this + 40) = 0;
  *(this + 24) = 0;
  *(this + 32) = this + 40;
  return this;
}

void *quasar::AcousticLDModel::AcousticLDModel(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_1F2D37A50;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void quasar::AcousticLDModel::~AcousticLDModel(quasar::AcousticLDModel *this)
{
  *this = &unk_1F2D37A50;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void quasar::DummyContextAwareLDModel::makePrediction(quasar *this@<X2>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  *a4 = 1;
  *(a4 + 16) = 0;
  v8 = (a4 + 16);
  *(a4 + 2) = 0;
  *(a4 + 8) = a4 + 16;
  v9 = (a4 + 8);
  *(a4 + 24) = 0;
  *(a4 + 40) = 0;
  v10 = (a4 + 40);
  *(a4 + 32) = a4 + 40;
  v11 = (a4 + 32);
  *(a4 + 48) = 0;
  quasar::localePriorsFromContext(this, &v61);
  if (!v62[1])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    *__p = 0u;
    memset(v46, 0, sizeof(v46));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Context provided no locale priors.", 34);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v46);
  }

  v39 = v10;
  v41 = v11;
  if (!a2[2])
  {
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v48 = 0u;
    *__p = 0u;
    memset(v46, 0, sizeof(v46));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v46);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "No acoustic posteriors.", 23);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v46);
  }

  v40 = a2;
  v14 = *a2;
  v13 = (a2 + 1);
  v12 = v14;
  if (v14 == v13)
  {
    goto LABEL_17;
  }

  v15 = *(v12 + 7);
  v16 = 1;
  do
  {
    if (*(v12 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(v46, v12[4], v12[5]);
    }

    else
    {
      v46[0] = *(v12 + 4);
    }

    v46[1].__r_.__value_.__r.__words[0] = v12[7];
    v17 = vabdd_f64(*&v46[1].__r_.__value_.__l.__data_, v15) < 0.001;
    if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46[0].__r_.__value_.__l.__data_);
    }

    v18 = v12[1];
    if (v18)
    {
      do
      {
        v19 = v18;
        v18 = *v18;
      }

      while (v18);
    }

    else
    {
      do
      {
        v19 = v12[2];
        v20 = *v19 == v12;
        v12 = v19;
      }

      while (!v20);
    }

    v16 &= v17;
    v12 = v19;
  }

  while (v19 != v13);
  if (v16)
  {
LABEL_17:
    if (quasar::gLogLevel >= 4)
    {
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      *__p = 0u;
      memset(v46, 0, sizeof(v46));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, "Using dummy context model. Since acoustic posteriors are equal, defaulting to dictationLocales and currentDictationLocale from the context.", 139);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v46);
    }

    quasar::fallbackConfidenceFromContext(this, v46);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v9, *(a4 + 16));
    size = v46[0].__r_.__value_.__l.__size_;
    *(a4 + 8) = v46[0].__r_.__value_.__r.__words[0];
    *(a4 + 16) = size;
    v22 = v46[0].__r_.__value_.__r.__words[2];
    *(a4 + 24) = *(&v46[0].__r_.__value_.__l + 2);
    if (v22)
    {
      size[2] = v8;
      v46[0].__r_.__value_.__r.__words[0] = &v46[0].__r_.__value_.__l.__size_;
      *&v46[0].__r_.__value_.__r.__words[1] = 0uLL;
      size = 0;
    }

    else
    {
      *v9 = v8;
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v46, size);
    std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<quasar::language_detector::Locale,double>,std::__tree_node<std::__value_type<quasar::language_detector::Locale,double>,void *> *,long>>(v41, *v9, v8);
    goto LABEL_67;
  }

  memset(v44, 0, sizeof(v44));
  v45 = 1065353216;
  v23 = v61;
  if (v61 != v62)
  {
    do
    {
      v24 = *(a3 + 24);
      if (!v24)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v25 = *(v23 + 10);
      (*(*v24 + 48))(v42);
      std::pair<std::string const,quasar::language_detector::Locale>::pair[abi:ne200100]<std::string&,quasar::language_detector::Locale const&,0>(v46, v42, v23 + 2);
      v26 = std::__hash_table<std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::language_detector::Locale>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::language_detector::Locale>>(v44, &v46[0].__r_.__value_.__l.__data_);
      v28 = v27;
      if (SBYTE7(v48) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v46[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46[0].__r_.__value_.__l.__data_);
        if ((v28 & 1) == 0)
        {
LABEL_31:
          if (v25 > *std::map<quasar::language_detector::Locale,double>::at(&v61, v26 + 5))
          {
            std::string::operator=((v26 + 5), (v23 + 4));
            std::string::operator=((v26 + 8), (v23 + 7));
          }
        }
      }

      else if ((v28 & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v43 < 0)
      {
        operator delete(v42[0]);
      }

      v29 = v23[1];
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
          v30 = v23[2];
          v20 = *v30 == v23;
          v23 = v30;
        }

        while (!v20);
      }

      v23 = v30;
    }

    while (v30 != v62);
  }

  v31 = *v40;
  if (*v40 != v13)
  {
    do
    {
      v32 = v31[7];
      v33 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v44, v31 + 4);
      v34 = v33;
      if (v33)
      {
        if (*(v33 + 63) < 0)
        {
          std::string::__init_copy_ctor_external(v46, v33[5], v33[6]);
        }

        else
        {
          v46[0] = *(v33 + 5);
        }

        if (*(v34 + 87) < 0)
        {
          std::string::__init_copy_ctor_external(&v46[1], v34[8], v34[9]);
        }

        else
        {
          v46[1] = *(v34 + 8);
        }

        __p[0] = v32;
        std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::pair<quasar::language_detector::Locale const,double>>(v9, &v46[0].__r_.__value_.__l.__data_);
        if (SHIBYTE(v46[1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46[1].__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v46[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v46[0].__r_.__value_.__l.__data_);
        }
      }

      v35 = v31[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v31[2];
          v20 = *v36 == v31;
          v31 = v36;
        }

        while (!v20);
      }

      v31 = v36;
    }

    while (v36 != v13);
  }

  quasar::posteriorsToConfidences(v9, v46);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v41, *(a4 + 40));
  v37 = v46[0].__r_.__value_.__l.__size_;
  *(a4 + 32) = v46[0].__r_.__value_.__r.__words[0];
  *(a4 + 40) = v37;
  v38 = v46[0].__r_.__value_.__r.__words[2];
  *(a4 + 48) = *(&v46[0].__r_.__value_.__l + 2);
  if (v38)
  {
    v37[2] = v39;
    v46[0].__r_.__value_.__r.__words[0] = &v46[0].__r_.__value_.__l.__size_;
    *&v46[0].__r_.__value_.__r.__words[1] = 0uLL;
    v37 = 0;
  }

  else
  {
    *v41 = v39;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v46, v37);
  if (!*(a4 + 24))
  {
    *a4 = 0;
  }

  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table(v44);
LABEL_67:
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v61, v62[0]);
}

void sub_1B58D5928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table(&a18);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v30 - 136, *(v30 - 128));
  quasar::LDResult::~LDResult(v29);
  _Unwind_Resume(a1);
}

void quasar::localePriorsFromContext(quasar *this@<X0>, void *a2@<X8>)
{
  v5 = *(this + 352) != 1 || *(this + 43) == 0;
  if (v5)
  {
    if (*(this + 48) == 1 && (v6 = *(this + 5)) != 0)
    {
      a2[2] = 0;
      a2[1] = 0;
      *a2 = a2 + 1;
      v7 = *(this + 3);
      v8 = this + 32;
      if (v7 != (this + 32))
      {
        v9 = 1.0 / v6;
        do
        {
          if (*(v7 + 55) < 0)
          {
            std::string::__init_copy_ctor_external(v18, v7[4], v7[5]);
          }

          else
          {
            *v18 = *(v7 + 2);
            __p[0] = *(v7 + 6);
          }

          if (*(v7 + 79) < 0)
          {
            std::string::__init_copy_ctor_external(&__p[1], v7[7], v7[8]);
          }

          else
          {
            *&__p[1] = *(v7 + 7);
            __p[3] = *(v7 + 9);
          }

          *&v20 = v9;
          std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::pair<quasar::language_detector::Locale const,double>>(a2, v18);
          if (SHIBYTE(__p[3]) < 0)
          {
            operator delete(__p[1]);
          }

          if (SHIBYTE(__p[0]) < 0)
          {
            operator delete(v18[0]);
          }

          v10 = v7[1];
          if (v10)
          {
            do
            {
              v11 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              v11 = v7[2];
              v5 = *v11 == v7;
              v7 = v11;
            }

            while (!v5);
          }

          v7 = v11;
        }

        while (v11 != v8);
      }
    }

    else
    {

      std::map<quasar::language_detector::Locale,double>::map[abi:ne200100](a2, this);
    }
  }

  else
  {
    a2[2] = 0;
    a2[1] = 0;
    *a2 = a2 + 1;
    if ((*(this + 48) & 1) == 0)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
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
      memset(__p, 0, sizeof(__p));
      *v18 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v18);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "If dictation priors are defined, then dictation locales must be.", 64);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v18);
    }

    v12 = *(this + 3);
    v13 = (this + 32);
    if (v12 != (this + 32))
    {
      v14 = this + 336;
      do
      {
        if (v14 == std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::find<quasar::language_detector::Locale>(this + 328, v12 + 4))
        {
          v18[0] = v12 + 4;
          *(std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale const&>,std::tuple<>>(a2, v12 + 4) + 10) = 0;
        }

        else
        {
          v15 = *std::map<quasar::language_detector::Locale,double>::at(this + 328, v12 + 4);
          v18[0] = v12 + 4;
          *(std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale const&>,std::tuple<>>(a2, v12 + 4) + 10) = v15;
        }

        v16 = v12[1];
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
            v17 = v12[2];
            v5 = *v17 == v12;
            v12 = v17;
          }

          while (!v5);
        }

        v12 = v17;
      }

      while (v17 != v13);
    }
  }
}

double quasar::fallbackConfidenceFromContext@<D0>(quasar *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  v5 = (a2 + 8);
  *(a2 + 16) = 0;
  *a2 = a2 + 8;
  v6 = *(this + 48) != 1 || *(this + 5) == 0;
  if (v6)
  {
    if (a2 != this)
    {
      std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<quasar::language_detector::Locale,double>,std::__tree_node<std::__value_type<quasar::language_detector::Locale,double>,void *> *,long>>(a2, *this, this + 1);
    }
  }

  else
  {
    v7 = *(this + 3);
    v8 = this + 32;
    if (v7 != (this + 32))
    {
      do
      {
        if (*(v7 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v17, v7[4], v7[5]);
        }

        else
        {
          v17 = *(v7 + 4);
        }

        if (*(v7 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v7[7], v7[8]);
        }

        else
        {
          __p = *(v7 + 7);
        }

        v19 = 0;
        std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::pair<quasar::language_detector::Locale const,double>>(a2, &v17.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v17.__r_.__value_.__l.__data_);
        }

        v9 = v7[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v7[2];
            v6 = *v10 == v7;
            v7 = v10;
          }

          while (!v6);
        }

        v7 = v10;
      }

      while (v10 != v8);
    }
  }

  if (*(this + 104) == 1)
  {
    v11 = std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::find<quasar::language_detector::Locale>(a2, this + 7);
  }

  else
  {
    v11 = v5;
  }

  v12 = *(a2 + 16);
  if (v5 != v11)
  {
    ++v12;
  }

  result = 1.0 / v12;
  v14 = *a2;
  if (*a2 != v5)
  {
    do
    {
      *(v14 + 10) = result;
      v15 = v14[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = v14[2];
          v6 = *v16 == v14;
          v14 = v16;
        }

        while (!v6);
      }

      v14 = v16;
    }

    while (v16 != v5);
  }

  if (v5 != v11)
  {
    result = result + result;
    *(v11 + 80) = result;
  }

  return result;
}

char *std::map<quasar::language_detector::Locale,double>::at(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, &v4, a2);
  if (!v2)
  {
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  return v2 + 80;
}

void sub_1B58D6304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34)
{
  quasar::FeatureExtractorArgs::~FeatureExtractorArgs(&a34);
  quasar::PTree::~PTree((v34 - 168));
  _Unwind_Resume(a1);
}

void quasar::ContextAwareLDModelConfig::registerParams(quasar::ContextAwareLDModelConfig *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "model-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "path to the model file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this, __p, 1, 122, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "supported-locales");
  std::string::basic_string[abi:ne200100]<0>(__p, "the locales understood by the model");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, v6, this + 152, __p, 1, 122, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "supported-languages");
  std::string::basic_string[abi:ne200100]<0>(__p, "the languages understood by the model");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, v6, this + 48, __p, 1, 122, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-file-format");
  std::string::basic_string[abi:ne200100]<0>(__p, "the format of the model file, must be core-ml");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 72, __p, 1, 122, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-input-names");
  std::string::basic_string[abi:ne200100]<0>(__p, "the input features expected by the model");
  quasar::SystemConfig::Register<std::vector<std::string>>(a2, v6, this + 96, __p, 1, 122, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "model-output-name");
  std::string::basic_string[abi:ne200100]<0>(__p, "the output feature that contains the locale posteriors");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 120, __p, 1, 122, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "use-cpu-only");
  std::string::basic_string[abi:ne200100]<0>(__p, "Only use the CPU for inference");
  quasar::SystemConfig::Register<BOOL>(a2, v6, this + 144, __p, 0, 124, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B58D66E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t quasar::ContextAwareLDModelConfig::init(quasar::ContextAwareLDModelConfig *this)
{
  v49 = *MEMORY[0x1E69E9840];
  v2 = this + 72;
  v3 = *(this + 95);
  if (v3 < 0)
  {
    v4 = *(this + 9);
    v3 = *(this + 10);
  }

  else
  {
    v4 = (this + 72);
  }

  if (v3 != 7 || ((v5 = *v4, v6 = *(v4 + 3), v5 == 1701998435) ? (v7 = v6 == 1819094373) : (v7 = 0), !v7))
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Invalid model file format ", 27);
    v27 = *(this + 95);
    if (v27 >= 0)
    {
      v28 = v2;
    }

    else
    {
      v28 = *(this + 9);
    }

    if (v27 >= 0)
    {
      v29 = *(this + 95);
    }

    else
    {
      v29 = *(this + 10);
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, v28, v29);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v30, "");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v32);
  }

  std::vector<quasar::language_detector::Locale>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>>(this + 1, *(this + 19), *(this + 20), 0xAAAAAAAAAAAAAAABLL * ((*(this + 20) - *(this + 19)) >> 3));
  std::vector<std::string>::clear[abi:ne200100](this + 19);
  v8 = *(this + 12);
  v10 = (this + 104);
  v9 = *(this + 13);
  v11 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3));
  if (v9 == v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::string *,false>(v8, v9, &v32, v12, 1);
  v13 = std::__unique[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>,std::__equal_to &>(*(this + 12), *v10, &v32);
  v14.__i_ = *v10;
  if (*v10 != v13)
  {
    if (quasar::gLogLevel >= 5)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Model input names contains duplicates", 37);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v32);
      v14.__i_ = *(this + 13);
    }

    v15.__i_ = v13;
    std::vector<std::string>::erase(this + 4, v15, v14);
  }

  v38 = xmmword_1E7C1C1B8;
  v39 = *&off_1E7C1C1C8;
  v40 = xmmword_1E7C1C1D8;
  v41 = *&off_1E7C1C1E8;
  v34 = xmmword_1E7C1C178;
  v35 = *&off_1E7C1C188;
  v36 = xmmword_1E7C1C198;
  v37 = *&off_1E7C1C1A8;
  v32 = xmmword_1E7C1C158;
  v33 = *&off_1E7C1C168;
  std::unordered_set<std::string_view>::unordered_set(v31, &v32, 10);
  v17 = *(this + 12);
  v16 = *(this + 13);
  while (v17 != v16)
  {
    v18 = *(v17 + 23);
    if (v18 < 0)
    {
      v19 = *v17;
      v18 = *(v17 + 8);
    }

    else
    {
      v19 = v17;
    }

    *&v32 = v19;
    *(&v32 + 1) = v18;
    if (!std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::find<std::string_view>(v31, &v32))
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Invalid context-aware input feature name ", 42);
      v22 = *(v17 + 23);
      if (v22 >= 0)
      {
        v23 = v17;
      }

      else
      {
        v23 = *v17;
      }

      if (v22 >= 0)
      {
        v24 = *(v17 + 23);
      }

      else
      {
        v24 = *(v17 + 8);
      }

      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v23, v24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "", 1);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v32);
    }

    v17 += 24;
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v31);
}

void sub_1B58D6A8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B58D6A9C(uint64_t a1, ...)
{
  va_start(va, a1);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  JUMPOUT(0x1B58D6AA8);
}

void quasar::LanguageDetector::LanguageDetector(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  *a1 = v4;
  a1[2] = 0;
  a1[1] = a1 + 2;
  a1[3] = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  a1[6] = 0;
  v5 = *a4;
  *a4 = 0;
  a1[7] = v5;
  a1[8] = 0;
  a1[10] = 0;
  a1[9] = a1 + 10;
  a1[11] = 0;
  quasar::SystemConfig::SystemConfig((a1 + 12));
}

void sub_1B58D6B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(&a10);
  *(v19 - 56) = &a15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v19 - 56));
  quasar::SystemConfig::~SystemConfig((v15 + 12));
  std::__tree<std::__value_type<quasar::language_detector::Locale,std::string>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,std::string>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,std::string>>>::destroy(v18, v15[10]);
  v21 = v15[8];
  v15[8] = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  v22 = v15[7];
  v15[7] = 0;
  if (v22)
  {
    (*(*v22 + 16))(v22);
  }

  std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(v17, v15[5]);
  std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(v16, v15[2]);
  v23 = *v15;
  *v15 = 0;
  if (v23)
  {
    (*(*v23 + 16))(v23);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::LanguageDetector::init(quasar::LanguageDetector *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "language-detectors");
  Ptree = quasar::SystemConfig::getPtree(this + 96, __p);
  v3 = Ptree;
  v28 = *Ptree;
  if (*(Ptree + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *(Ptree + 8), *(Ptree + 16));
  }

  else
  {
    v4 = *(Ptree + 8);
    v29.__r_.__value_.__r.__words[2] = *(Ptree + 24);
    *&v29.__r_.__value_.__l.__data_ = v4;
  }

  memset(v30, 0, sizeof(v30));
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(v30, *(v3 + 32), *(v3 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(v3 + 40) - *(v3 + 32)) >> 3));
  v31 = *(v3 + 56);
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = quasar::PTree::begin(&v28);
  if (v5 == quasar::PTree::end(&v28))
  {
    __p[0] = quasar::SystemConfig::getConfigFileVersion((this + 96));
    quasar::result_handler::Range::Range(v8, 118, 0);
    if (quasar::SystemConfig::Version::operator>=(__p, v8))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "override-locale-language-map");
      quasar::SystemConfig::getPtreeOptional(this + 96, __p);
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, "ld-context-aware-model");
    quasar::SystemConfig::hasParam(this + 96, &v9);
  }

  v27 = std::stoi(v5, 0, 10);
  String = quasar::PTree::getString(&v5[1]);
  std::string::basic_string[abi:ne200100]<0>(__p, "::");
  quasar::splitAndTrim(String, __p, v8);
  if (SBYTE7(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if ((v8[1] - v8[0]) == 48)
  {
    std::operator+<char>();
    std::allocate_shared[abi:ne200100]<quasar::LDFrontend const,std::allocator<quasar::LDFrontend>,std::string,0>();
  }

  if (quasar::gLogLevel >= 1)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Configuration is incorrect. Only two components are supported.", 62);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(__p);
  }

  __p[0] = v8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  quasar::PTree::~PTree(&v28);
  return 0;
}

void sub_1B58D75EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  quasar::QuasarErrorMessage::~QuasarErrorMessage(&a40);
  if (a39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a39);
  }

  quasar::ContextAwareLDModelConfig::~ContextAwareLDModelConfig(&a9);
  if (a36 < 0)
  {
    operator delete(__p);
  }

  quasar::PTree::~PTree((v45 - 168));
  _Unwind_Resume(a1);
}

void quasar::LanguageDetector::startRequest(uint64_t a1@<X0>, int a2@<W1>, quasar::LDContext ***a3@<X2>, void *a4@<X8>)
{
  v32 = a2;
  if (quasar::gLogLevel >= 4)
  {
    v30 = 0u;
    v31 = 0u;
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
    *v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Resetting for new request.", 26);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(v15);
  }

  quasar::LDContext::logContext(*a3);
  quasar::PTree::PTree(v14);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + 16;
    do
    {
      if (*(v8 + 32) >= v32)
      {
        v9 = v8;
      }

      v8 = *(v8 + 8 * (*(v8 + 32) < v32));
    }

    while (v8);
    if (v9 != a1 + 16 && v32 >= *(v9 + 32))
    {
      v10 = *(a1 + 40);
      if (v10)
      {
        v11 = a1 + 40;
        do
        {
          if (*(v10 + 32) >= v32)
          {
            v11 = v10;
          }

          v10 = *(v10 + 8 * (*(v10 + 32) < v32));
        }

        while (v10);
        if (v11 != a1 + 40 && v32 >= *(v11 + 32))
        {
          quasar::LanguageDetector::checkContext(*a3, v7);
          _ZNSt3__115allocate_sharedB8ne200100IN6quasar14LDRequestStateENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
        }
      }
    }
  }

  if (quasar::gLogLevel >= 1)
  {
    v30 = 0u;
    v31 = 0u;
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
    *v15 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Invalid sampling rate ", 22);
    v13 = MEMORY[0x1B8C84C00](v12, v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "given.", 6);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v15);
  }

  *a4 = 0;
  a4[1] = 0;
  quasar::PTree::~PTree(v14);
}

void sub_1B58D7D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a49);
  v56 = *(v54 + 8);
  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  quasar::PTree::~PTree(&a41);
  _Unwind_Resume(a1);
}

uint64_t quasar::LanguageDetector::checkContext(uint64_t this, const quasar::LDContext *a2)
{
  if (!this)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "No context.");
    goto LABEL_10;
  }

  if ((*(this + 352) != 1 || !*(this + 344)) && (*(this + 48) != 1 || !*(this + 40)) && !*(this + 16))
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v7 = 0u;
    v8 = 0u;
    v5 = 0u;
    v6 = 0u;
    v3 = 0u;
    v4 = 0u;
    v2 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v2, "Empty priors.");
LABEL_10:
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v2);
  }

  return this;
}

void quasar::LanguageDetector::processAudio(quasar::LanguageDetector *this, quasar::LDRequestState *a2)
{
  v2 = a2;
  Seconds = kaldi::Timer::GetSeconds(5, a2);
  v4 = *(v2 + 38);
  std::string::basic_string[abi:ne200100]<0>(v60, "acousticLatency");
  quasar::LDLoggingInfo::addDoubleValue((v2 + 224), v60, 0.0);
  if (v61 < 0)
  {
    operator delete(v60[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v58, "contextModelLatency");
  quasar::LDLoggingInfo::addDoubleValue((v2 + 224), v58, 0.0);
  v27 = (v2 + 224);
  if (v59 < 0)
  {
    operator delete(v58[0]);
  }

  v5 = Seconds - v4;
  v6 = (*(**(v2 + 2) + 8))(*(v2 + 2));
  v30 = v6;
  kaldi::Matrix<float>::Matrix(v56, 1, v6, 0, 0);
  v7 = 0;
  while (1)
  {
    v8 = *(v2 + 2);
    kaldi::OnlineFeatInputItfIO::OnlineFeatInputItfIO(&v39, v56, 0, 0, 0, 0, 0);
    v9 = (**v8)(v8, &v39);
    v10 = kaldi::MatrixBase<float>::NumRows(v56);
    v11 = v10;
    v12 = v10 - 1;
    if (v10 < 1)
    {
      if ((v9 & 1) == 0)
      {
        __p = 0;
        v32 = 0;
        v33 = 0;
        quasar::LanguageDetector::getAcousticResult(&__p, 0, v30, v2, 0, &v39);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        quasar::LanguageDetector::processAcousticResult(this, v2, &v39);
        std::__tree<std::string>::destroy(&v39 + 8, v40);
      }

      v22 = 1;
    }

    else
    {
      v13 = 0;
      v28 = v7 + v10;
      do
      {
        v14 = v2;
        v15 = v56[0];
        v16 = v57;
        kaldi::MatrixBase<float>::NumCols(v56);
        v17 = 0;
        v18 = 4 * kaldi::MatrixBase<float>::NumCols(v56);
        __p = 0;
        v32 = 0;
        v33 = 0;
        v19 = (v15 + 4 * v16 * v13);
        v2 = v14;
        while (v17 < kaldi::MatrixBase<float>::NumCols(v56))
        {
          std::vector<float>::push_back[abi:ne200100](&__p, v19);
          ++v17;
          ++v19;
        }

        if (v13 < v12)
        {
          v20 = 1;
        }

        else
        {
          v20 = v9;
        }

        quasar::LanguageDetector::getAcousticResult(&__p, v18, v30, v14, v20, &v39);
        v21 = quasar::LanguageDetector::processAcousticResult(this, v14, &v39);
        std::__tree<std::string>::destroy(&v39 + 8, v40);
        if (__p)
        {
          v32 = __p;
          operator delete(__p);
        }

        v7 = (v7 + 1);
        if (v21)
        {
          goto LABEL_19;
        }

        ++v13;
      }

      while (v13 != v11);
      v7 = v28;
LABEL_19:
      v22 = v21 ^ 1;
    }

    if ((v9 & v22 & 1) == 0)
    {
      if (quasar::gLogLevel >= 4)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
        v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v39, "Processed ", 10);
        v24 = MEMORY[0x1B8C84C00](v23, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " frames of audio.", 17);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v39);
      }

      std::string::basic_string[abi:ne200100]<0>(v37, "numFramesProcessed");
      quasar::LDLoggingInfo::addIntValue(v27, v37, v7);
      if (v38 < 0)
      {
        operator delete(v37[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(v35, "totalWallTime");
      v26 = kaldi::Timer::GetSeconds(5, v25);
      quasar::LDLoggingInfo::addDoubleValue(v27, v35, (v26 - *(v2 + 38) - v5) * 1000.0);
      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(&v34, "latency");
      std::string::basic_string[abi:ne200100]<0>(&v39, "acousticLatency");
      quasar::PTree::getDouble(v27, &v39);
    }
  }
}

void quasar::LanguageDetector::getAcousticResult(uint64_t *a1@<X1>, int a2@<W2>, int a3@<W3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t a6@<X8>)
{
  v10 = *(a4 + 208);
  if (a2)
  {
    std::deque<std::vector<float>>::push_back((a4 + 56), a1);
  }

  else if (quasar::gLogLevel >= 4)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Data is empty", 13);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v34);
  }

  v11 = *(a4 + 96);
  v12 = *(v10 + 8);
  v13 = v12[49];
  if (v13 <= 0)
  {
    v13 = *v12;
  }

  if (v11 >= v13)
  {
    if (quasar::gLogLevel < 4)
    {
      a5 = 0;
    }

    else
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Reached maximum window size. Treating this as the end of audio.", 63);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v34);
      a5 = 0;
      v11 = *(a4 + 96);
      v12 = *(v10 + 8);
    }
  }

  if (*v12 > v11)
  {
    if (quasar::gLogLevel >= 5)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Not enough features yet to meet minimum window size.", 52);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v34);
    }

    LOBYTE(v34) = 1;
    v35 = 0uLL;
    *(&v34 + 1) = &v35;
    *a6 = 1;
    std::map<std::string,double>::map[abi:ne200100]((a6 + 8), &v34 + 1);
    *(a6 + 32) = 0;
    *(a6 + 33) = a5;
LABEL_21:
    v16 = v35;
    v17 = &v34 + 1;
    goto LABEL_37;
  }

  v14 = *(a4 + 48);
  v15 = a5 ^ 1;
  if (v14 < 1)
  {
    v15 = 1;
  }

  if ((v15 & 1) == 0)
  {
    if (quasar::gLogLevel >= 5)
    {
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Waiting until the next predictionInterval to run.", 49);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v34);
      v14 = *(a4 + 48);
    }

    *(a4 + 48) = v14 - 1;
    LOBYTE(v34) = 1;
    v35 = 0uLL;
    *(&v34 + 1) = &v35;
    *a6 = 1;
    std::map<std::string,double>::map[abi:ne200100]((a6 + 8), &v34 + 1);
    *(a6 + 32) = 256;
    goto LABEL_21;
  }

  if (quasar::gLogLevel >= 5)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Running LanguageDetector with ", 30);
    v19 = MEMORY[0x1B8C84C30](v18, *(a4 + 96));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " frames", 7);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v34);
  }

  v29 = a6;
  Seconds = kaldi::Timer::GetSeconds(5, a1);
  v21 = *(a4 + 104);
  v22 = *(a4 + 304);
  *(a4 + 48) = *(*(v10 + 8) + 4);
  *(a4 + 112) = v21;
  std::vector<int>::reserve((a4 + 104), *(a4 + 96) * a3);
  v23 = *(a4 + 96);
  if (v23)
  {
    for (i = 0; i < v23; ++i)
    {
      if (a3 >= 1)
      {
        v25 = 0;
        v26 = (*(*(a4 + 64) + 8 * ((*(a4 + 88) + i) / 0xAA)) + 24 * ((*(a4 + 88) + i) % 0xAA));
        do
        {
          std::vector<float>::push_back[abi:ne200100]((a4 + 104), (*v26 + v25));
          v25 += 4;
        }

        while (4 * a3 != v25);
        v23 = *(a4 + 96);
      }
    }
  }

  (*(**(a4 + 208) + 24))(&v32);
  if ((v32 & 1) == 0 && quasar::gLogLevel >= 4)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v34);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "Something went wrong in LD inference.", 37);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v34);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "acousticLatency");
  v28 = kaldi::Timer::GetSeconds(5, v27);
  quasar::LDLoggingInfo::addDoubleValue((a4 + 224), __p, (v28 - *(a4 + 304) - (Seconds - v22)) * 1000.0);
  if (v31 < 0)
  {
    operator delete(__p[0]);
  }

  *v29 = v32;
  std::map<std::string,double>::map[abi:ne200100]((v29 + 8), v33);
  *(v29 + 32) = 1;
  *(v29 + 33) = a5;
  v16 = v33[1];
  v17 = v33;
LABEL_37:
  std::__tree<std::string>::destroy(v17, v16);
}

void sub_1B58D8BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, char *a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a22);
  std::__tree<std::string>::destroy(&a19, a20);
  _Unwind_Resume(a1);
}

uint64_t quasar::LanguageDetector::processAcousticResult(uint64_t a1, void *a2, _BYTE *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*a3)
  {
    if (a3[32] & 1) == 0 && (a3[33])
    {
      v5 = 0;
      return v5 & 1;
    }

    kaldi::Timer::GetSeconds(5, a2);
    if ((a3[32] & 1) == 0)
    {
      if (quasar::gLogLevel >= 4)
      {
        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v32 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "No valid window found. Running contextual model based on equal acoustic priors.", 79);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v32);
      }

      v6 = *(a2[26] + 8);
      v7 = *(v6 + 40);
      v8 = *(v6 + 48);
      if (v8 != v7)
      {
        v9 = 1.0 / (0xAAAAAAAAAAAAAAABLL * (v8 - v7));
        do
        {
          *&v32 = v7;
          *(std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a3 + 8), v7) + 56) = v9;
          v7 += 3;
        }

        while (v7 != v8);
      }
    }

    std::atomic_load[abi:ne200100]<quasar::SpeechRequestResultData>(a2 + 24, &v30);
    v10 = v30;
    v11 = v31;
    if (v31)
    {
      atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
    }

    v12 = a2[37];
    a2[36] = v10;
    a2[37] = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v10 = v30;
    }

    if (*(v10 + 176) == 1)
    {
      quasar::PTree::PTree(&v32);
      if ((*(v30 + 176) & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v13 = *(v30 + 152);
      v14 = (v30 + 160);
      if (v13 != (v30 + 160))
      {
        do
        {
          quasar::language_detector::Locale::getSiriLocaleStr((v13 + 4), &__p);
          v15 = v13[10];
          LODWORD(v24) = quasar::getType(v16, *&v15);
          std::to_string(&v25, v15);
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v29 = 1;
          quasar::PTree::putChild(&v32, &__p, &v24, 1);
          quasar::PTree::~PTree(&v24);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v17 = *(v13 + 1);
          if (v17)
          {
            do
            {
              v18 = v17;
              v17 = *v17;
            }

            while (v17);
          }

          else
          {
            do
            {
              v18 = *(v13 + 2);
              v19 = *v18 == v13;
              v13 = v18;
            }

            while (!v19);
          }

          v13 = v18;
        }

        while (v18 != v14);
      }

      std::string::basic_string[abi:ne200100]<0>(&v24, "conversationMessagePriors");
      quasar::PTree::putChild((a2 + 28), &v24, &v32, 1);
      if (v25.__r_.__value_.__s.__data_[15] < 0)
      {
        operator delete(v24);
      }

      quasar::PTree::~PTree(&v32);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "conversationMessagePriors");
      quasar::PTree::erase((a2 + 28), &v32);
      if (SBYTE7(v33) < 0)
      {
        operator delete(v32);
      }
    }

    if (*(v30 + 264) == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(&v24, "lastMessageLanguage");
      quasar::language_detector::Locale::getSiriLocaleStr((v30 + 216), &__p);
      quasar::PTree::PTree(&v32, &__p);
      quasar::PTree::putChild((a2 + 28), &v24, &v32, 1);
      quasar::PTree::~PTree(&v32);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v25.__r_.__value_.__s.__data_[15] & 0x80000000) == 0)
      {
LABEL_42:
        std::string::basic_string[abi:ne200100]<0>(&v23, "numAcousticRuns");
        std::string::basic_string[abi:ne200100]<0>(&v32, "numAcousticRuns");
        quasar::PTree::getInt<int>((a2 + 28), &v32);
      }

      v20 = v24;
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v32, "lastMessageLanguage");
      quasar::PTree::erase((a2 + 28), &v32);
      if ((SBYTE7(v33) & 0x80000000) == 0)
      {
        goto LABEL_42;
      }

      v20 = v32;
    }

    operator delete(v20);
    goto LABEL_42;
  }

  if (quasar::gLogLevel >= 1)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v32);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "Error running acoustic model.", 29);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(&v32);
  }

  quasar::LanguageDetector::handleErrorInProcessAcousticResult(a1, a2);
  v5 = 1;
  return v5 & 1;
}

void sub_1B58D9570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, std::__shared_weak_count *a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  quasar::LDResult::~LDResult(&a28);
  quasar::PTree::~PTree(&a44);
  if (a56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a56);
  }

  _Unwind_Resume(a1);
}

void quasar::LDLoggingInfo::~LDLoggingInfo(quasar::LDLoggingInfo *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::PTree::~PTree(this);
}

void quasar::LanguageDetector::updateContext(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  quasar::LanguageDetector::checkContext(*a3, a2);
  v6 = a2[24];
  v5 = a2 + 24;
  quasar::LDContext::logContext(v6);
  v7 = a3[1];
  v8 = *a3;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:ne200100]<quasar::SpeechRequestResultData>(v5, &v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1B58D9838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void quasar::LanguageDetector::handleErrorInProcessAcousticResult(uint64_t a1, uint64_t a2)
{
  if (quasar::gLogLevel >= 4)
  {
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
    v17 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Error in processing acoustic result.", 36);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v11);
  }

  std::atomic_load[abi:ne200100]<quasar::SpeechRequestResultData>((a2 + 192), &v9);
  LOWORD(v11) = 0;
  BYTE2(v11) = 0;
  *(&v11 + 1) = &v12;
  v12 = 0uLL;
  *&v14 = 0;
  v13 = &v13 + 8;
  quasar::fallbackConfidenceFromContext(v9, &v7);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v11 + 8, v12);
  v3 = v8;
  *(&v11 + 1) = v7;
  v12 = v8;
  if (*(&v8 + 1))
  {
    *(v8 + 16) = &v12;
    v7 = &v8;
    v8 = 0uLL;
    v3 = 0;
  }

  else
  {
    *(&v11 + 1) = &v12;
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v7, v3);
  std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<quasar::language_detector::Locale,double>,std::__tree_node<std::__value_type<quasar::language_detector::Locale,double>,void *> *,long>>(&v13, *(&v11 + 1), &v12);
  v5 = v9;
  v4 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 296);
  *(a2 + 288) = v5;
  *(a2 + 296) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  (*(**(a2 + 32) + 8))(*(a2 + 32), &v11);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v13, *(&v13 + 1));
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v11 + 8, v12);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_1B58D99EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B58D9D18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::localeToLanguageUsingOverrides(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v6 = std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::find<quasar::language_detector::Locale>(a2, a1);
  if (a2 + 8 == v6)
  {
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a3->__r_.__value_.__l.__data_ = *a1;
      a3->__r_.__value_.__r.__words[2] = *(a1 + 16);
      return;
    }

    v8 = *a1;
    v9 = *(a1 + 8);
  }

  else
  {
    if ((*(v6 + 103) & 0x80000000) == 0)
    {
      v7 = *(v6 + 80);
      a3->__r_.__value_.__r.__words[2] = *(v6 + 96);
      *&a3->__r_.__value_.__l.__data_ = v7;
      return;
    }

    v8 = *(v6 + 80);
    v9 = *(v6 + 88);
  }

  std::string::__init_copy_ctor_external(a3, v8, v9);
}

void std::__optional_storage_base<quasar::language_detector::Locale,false>::__construct[abi:ne200100]<quasar::language_detector::Locale const&>(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__s.__data_[0] = 1;
}

void sub_1B58D9EEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **std::__tree<quasar::language_detector::Locale>::__assign_multi<std::__tree_const_iterator<quasar::language_detector::Locale,std::__tree_node<quasar::language_detector::Locale,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          std::__tree<quasar::language_detector::Locale>::__node_insert_multi(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<quasar::language_detector::Locale>::__emplace_multi<quasar::language_detector::Locale const&>();
  }

  return result;
}

void sub_1B58DA068(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<quasar::language_detector::Locale>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!quasar::language_detector::Locale::operator<((a2 + 32), v4 + 4))
        {
          break;
        }

        v4 = *v5;
        v6 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(a1, v5, v6, a2);
  return a2;
}

void std::__optional_storage_base<quasar::language_detector::Locale,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::language_detector::Locale,false> const&>(std::string *this, std::string *__str)
{
  if (this[2].__r_.__value_.__s.__data_[0] == __str[2].__r_.__value_.__s.__data_[0])
  {
    if (this[2].__r_.__value_.__s.__data_[0])
    {
      std::string::operator=(this, __str);

      std::string::operator=(this + 1, __str + 1);
    }
  }

  else if (this[2].__r_.__value_.__s.__data_[0])
  {

    std::__optional_destruct_base<quasar::language_detector::Locale,false>::reset[abi:ne200100](this);
  }

  else
  {

    std::__optional_storage_base<quasar::language_detector::Locale,false>::__construct[abi:ne200100]<quasar::language_detector::Locale const&>(this, __str);
  }
}

void std::__optional_destruct_base<quasar::language_detector::Locale,false>::reset[abi:ne200100](uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *(a1 + 48) = 0;
  }
}

uint64_t std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::find<quasar::language_detector::Locale>(uint64_t a1, const void **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = quasar::language_detector::Locale::operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || quasar::language_detector::Locale::operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

std::string *std::pair<std::string const,quasar::language_detector::Locale>::pair[abi:ne200100]<std::string&,quasar::language_detector::Locale const&,0>(std::string *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a3 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a3 + 3), *(a3 + 4));
  }

  else
  {
    v7 = *(a3 + 24);
    this[2].__r_.__value_.__r.__words[2] = *(a3 + 5);
    *&this[2].__r_.__value_.__l.__data_ = v7;
  }

  return this;
}

void sub_1B58DA3CC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ContextAwareLDModelConfig::~ContextAwareLDModelConfig(void **this)
{
  v2 = this + 19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  v2 = this + 12;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 3;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t **std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<quasar::language_detector::Locale,double>,std::__tree_node<std::__value_type<quasar::language_detector::Locale,double>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          v8[10] = v9[10];
          std::__tree<quasar::language_detector::Locale>::__node_insert_multi(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_multi<std::pair<quasar::language_detector::Locale const,double> const&>();
  }

  return result;
}

void sub_1B58DA604(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void *std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::pair<quasar::language_detector::Locale const,double>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<quasar::language_detector::Locale,double>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,double>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,double>>>::__construct_node<std::pair<quasar::language_detector::Locale const,double> const&>();
  }

  return v2;
}

const void **std::__hash_table<std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::language_detector::Locale>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::language_detector::Locale>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    std::__hash_table<std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::language_detector::Locale>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::language_detector::Locale>>>::__construct_node_hash<std::pair<std::string const,quasar::language_detector::Locale>>();
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B58DA988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B58DAA28(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,quasar::language_detector::Locale>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  v5 = *(a2 + 24);
  this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
  *&this[1].__r_.__value_.__l.__data_ = v5;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v6 = a2[3];
  this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
  *&this[2].__r_.__value_.__l.__data_ = v6;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  return this;
}

uint64_t std::unordered_set<std::string_view>::unordered_set(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 16 * a3;
    do
    {
      std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::__emplace_unique_key_args<std::string_view,std::string_view const&>(a1, a2);
      a2 += 16;
      v5 -= 16;
    }

    while (v5);
  }

  return a1;
}

uint64_t **std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::__emplace_unique_key_args<std::string_view,std::string_view const&>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_20;
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
LABEL_20:
    operator new();
  }

  v14 = a2;
  v12 = *a2;
  v13 = *(v14 + 8);
  while (1)
  {
    v15 = v11[1];
    if (v15 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v15 >= *&v6)
      {
        v15 %= *&v6;
      }
    }

    else
    {
      v15 &= *&v6 - 1;
    }

    if (v15 != v9)
    {
      goto LABEL_20;
    }

LABEL_19:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_20;
    }
  }

  if (v11[3] != v13 || memcmp(v11[2], v12, v13))
  {
    goto LABEL_19;
  }

  return v11;
}

void std::vector<quasar::language_detector::Locale>::__assign_with_size[abi:ne200100]<std::__wrap_iter<std::string *>,std::__wrap_iter<std::string *>>(std::vector<std::pair<std::string, std::string>> *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) < a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vdeallocate(this);
    if (a4 <= 0x555555555555555)
    {
      v8 = 0x5555555555555556 * ((this->__end_cap_.__value_ - this->__begin_) >> 4);
      if (v8 <= a4)
      {
        v8 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((this->__end_cap_.__value_ - this->__begin_) >> 4) >= 0x2AAAAAAAAAAAAAALL)
      {
        v9 = 0x555555555555555;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](this, v9);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xAAAAAAAAAAAAAAABLL * ((this->__end_ - begin) >> 4) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::string *,std::string *,quasar::language_detector::Locale *>(&v15, a2, a3, begin);
    v12 = v11;
    end = this->__end_;
    if (end != v11)
    {
      do
      {
        std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](this, --end);
      }

      while (end != v12);
    }

    this->__end_ = v12;
  }

  else
  {
    v10 = a2 + 8 * ((this->__end_ - begin) >> 4);
    std::__copy_impl::operator()[abi:ne200100]<std::string *,std::string *,quasar::language_detector::Locale *>(&v14, a2, v10, begin);
    this->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::language_detector::Locale>,std::string *,std::string *,quasar::language_detector::Locale*>(this, v10, a3, this->__end_);
  }
}

__int128 *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::language_detector::Locale>,std::string *,std::string *,quasar::language_detector::Locale*>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      quasar::language_detector::Locale::Locale(v4, v6);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::language_detector::Locale>,quasar::language_detector::Locale*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::string *,std::string *,quasar::language_detector::Locale *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      quasar::language_detector::Locale::Locale(__p, v5);
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = *__p;
      *(a4 + 16) = v10;
      HIBYTE(v10) = 0;
      LOBYTE(__p[0]) = 0;
      if (*(a4 + 47) < 0)
      {
        operator delete(*(a4 + 24));
        v7 = SHIBYTE(v10);
        *(a4 + 24) = v11;
        *(a4 + 40) = v12;
        HIBYTE(v12) = 0;
        LOBYTE(v11) = 0;
        if (v7 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        *(a4 + 24) = v11;
        *(a4 + 40) = v12;
      }

      v5 += 24;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t **std::__hash_table<std::string_view,std::hash<std::string_view>,std::equal_to<std::string_view>,std::allocator<std::string_view>>::find<std::string_view>(void *a1, uint64_t a2)
{
  v4 = std::__string_view_hash<char>::operator()[abi:ne200100](a1, *a2, *(a2 + 8));
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
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v6 == v15)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
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

void std::__tree<std::__value_type<quasar::language_detector::Locale,std::string>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,std::string>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,std::string>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<quasar::language_detector::Locale,std::string>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,std::string>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<quasar::language_detector::Locale,std::string>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,std::string>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,std::string>>>::destroy(a1, *(a2 + 1));
    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<quasar::LDFrontend const>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::LDFrontend const>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::LDFrontend const>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

std::string *std::__shared_ptr_emplace<quasar::LDFrontend const>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<quasar::LDFrontend>,0>(std::string *a1, __int128 *a2)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D37B10;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    a1[1].__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v3;
  }

  return a1;
}

void std::__shared_ptr_emplace<quasar::LDFrontend const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D37B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::LDFrontend const>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN6quasar8LDConfigENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D37B60;
  *(a1 + 24) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 28) = -1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 146) = 0u;
  *(a1 + 162) = 1;
  *(a1 + 176) = 0x3FE6666666666666;
  std::string::basic_string[abi:ne200100]<0>((a1 + 184), "4, 1, 2");
  *(a1 + 220) = -1;
  return a1;
}

void sub_1B58DB5D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 63) < 0)
  {
    operator delete(*v3);
  }

  std::__shared_weak_count::~__shared_weak_count(v2);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<quasar::LDConfig>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D37B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::LDConfig>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  v2 = (a1 + 64);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t *std::__tree<std::__value_type<int,std::shared_ptr<quasar::AcousticLDModel>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::AcousticLDModel>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::AcousticLDModel>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

const void *std::__tree<std::__value_type<quasar::language_detector::Locale,std::string>,std::__map_value_compare<quasar::language_detector::Locale,std::__value_type<quasar::language_detector::Locale,std::string>,std::less<quasar::language_detector::Locale>,true>,std::allocator<std::__value_type<quasar::language_detector::Locale,std::string>>>::__emplace_unique_key_args<quasar::language_detector::Locale,std::piecewise_construct_t const&,std::tuple<quasar::language_detector::Locale&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<quasar::language_detector::Locale>::__find_equal<quasar::language_detector::Locale>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__shared_ptr_emplace<quasar::ContextAwareLDModelConfig const>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D37BB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::ContextAwareLDModelConfig const>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 176);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v2 = (a1 + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = (a1 + 72);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (a1 + 48);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN6quasar14LDRequestStateENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_1F2D37C00;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 24) = 0u;
  v2 = (a1 + 24);
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  quasar::LDRequestState::LDRequestState(v2);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LDRequestState>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D37C00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

quasar::LDRequestState *quasar::LDRequestState::LDRequestState(quasar::LDRequestState *this)
{
  *(this + 9) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  quasar::PTree::PTree((this + 224));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 328) = 1;
  kaldi::Timer::Reset((this + 304), v2);
  *(this + 42) = 0;
  return this;
}

void sub_1B58DBCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  quasar::LDLoggingInfo::~LDLoggingInfo((v10 + 224));
  v12 = *(v10 + 216);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v13 = *(v10 + 200);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  a10 = (v10 + 168);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *(v10 + 136);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v10 + 104);
  if (v15)
  {
    *(v10 + 112) = v15;
    operator delete(v15);
  }

  std::deque<std::vector<int>>::~deque[abi:ne200100]((v10 + 56));
  v16 = *(v10 + 40);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  v17 = *(v10 + 24);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(v10 + 8);
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  _Unwind_Resume(a1);
}

void quasar::LDRequestState::~LDRequestState(quasar::LDRequestState *this)
{
  v2 = *(this + 37);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  quasar::PTree::~PTree((this + 224));
  v3 = *(this + 27);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 25);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v10 = (this + 168);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v10 = (this + 144);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v10);
  v5 = *(this + 17);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 13);
  if (v6)
  {
    *(this + 14) = v6;
    operator delete(v6);
  }

  std::deque<std::vector<int>>::~deque[abi:ne200100](this + 7);
  v7 = *(this + 5);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 3);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

uint64_t quasar::LDLoggingInfo::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  if (a1 != a2)
  {
    std::vector<std::pair<std::string,quasar::PTree>>::__assign_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(a1 + 32, *(a2 + 32), *(a2 + 40), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  }

  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 64);
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v5 = *(a1 + 72);
  *(a1 + 64) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

uint64_t std::__function::__func<quasar::LanguageDetector::processAcousticResult(quasar::LDRequestState &,quasar::LanguageDetector::WrappedLDAcousticResult &)::$_0,std::allocator<quasar::LanguageDetector::processAcousticResult(quasar::LDRequestState &,quasar::LanguageDetector::WrappedLDAcousticResult &)::$_0>,std::string ()(quasar::language_detector::Locale const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D37C50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::LanguageDetector::processAcousticResult(quasar::LDRequestState &,quasar::LanguageDetector::WrappedLDAcousticResult &)::$_0,std::allocator<quasar::LanguageDetector::processAcousticResult(quasar::LDRequestState &,quasar::LanguageDetector::WrappedLDAcousticResult &)::$_0>,std::string ()(quasar::language_detector::Locale const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<std::string ()(quasar::language_detector::Locale const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void tokenize_utf8_string(const std::string *__s@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __s;
  if (SHIBYTE(__s->__r_.__value_.__r.__words[2]) < 0)
  {
    v6 = __s->__r_.__value_.__r.__words[0];
  }

  __sa = v6;
  v7 = strlen(v6);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  v8 = v6;
  v23 = a3;
  if (std::string::compare(a2, ""))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "");
    std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v8 = __sa;
  }

  v9 = &v6[v7 + 1];
  do
  {
    if (!utf8::next<char *>(&__sa, v9))
    {
      goto LABEL_34;
    }

    v10 = strlen(v6);
    v11 = v10 - strlen(v8);
    v12 = v10 - v11 - strlen(__sa);
    if (!std::string::compare(a2, ""))
    {
      std::string::basic_string(&__p, __s, v11, v12, &v26);
      std::vector<std::string>::push_back[abi:ne200100](a3, &__p);
    }

    else
    {
      std::string::basic_string(&__p, __s, v11, v12, &v26);
      v13 = *(a2 + 23);
      v14 = a2;
      if ((v13 & 0x8000000000000000) != 0)
      {
        v14 = *a2;
        v13 = *(a2 + 8);
      }

      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      size = __p.__r_.__value_.__l.__size_;
      v17 = __p.__r_.__value_.__r.__words[0];
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      else
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        p_p = &__p;
      }

      if (size >= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = size;
      }

      v20 = size == v13;
      if (memcmp(v14, p_p, v19))
      {
        v20 = 0;
      }

      if (v15 < 0)
      {
        operator delete(v17);
        if (!v20)
        {
LABEL_25:
          std::string::basic_string(&__p, __s, v11, v12, &v26);
          a3 = v23;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = &__p;
          }

          else
          {
            v21 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v22 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append((*(v23 + 8) - 24), v21, v22);
          goto LABEL_32;
        }
      }

      else if (!v20)
      {
        goto LABEL_25;
      }

      std::string::basic_string[abi:ne200100]<0>(&__p, "");
      a3 = v23;
      std::vector<std::string>::push_back[abi:ne200100](v23, &__p);
    }

LABEL_32:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_34:
    v8 = __sa;
  }

  while (__sa < v9);
}