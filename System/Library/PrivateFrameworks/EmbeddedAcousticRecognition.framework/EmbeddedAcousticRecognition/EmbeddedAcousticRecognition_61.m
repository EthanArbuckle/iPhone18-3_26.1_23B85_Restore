void sub_1B549B428(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B549B484);
}

unint64_t quasar::corrective_reranking::TargetIndexFilter::filterStringForTargetIndex(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 112) >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(a1 + 112);
  }

  quasar::corrective_reranking::PhoneticMatcher::computeEmbedding(**a1, a2, v25);
  if (v27 == 1)
  {
    v23 = 0u;
    v22 = 0u;
    v21 = &unk_1F2D0EE38;
    v24 = 0;
    kaldi::CuMatrix<float>::Resize(&v21, 1, v26, 1, 0);
    if ((v27 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    kaldi::CuMatrixBase<float>::CopyRowsFromVec(&v21, v25);
    quasar::computeL2Dist(a1 + 32, a1 + 80, &v21, &v17);
    if (v20 != 1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "dist.NumRows() == 1", 19);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    if (v19 != (v6 - v5) >> 5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "dist.NumCols() == embeddingTargetIndexUtterance.size()", 54);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
    }

    if (v6 == v5)
    {
      v11 = 0x7FFFFFFFLL;
      v10 = 2147500000.0;
    }

    else
    {
      v7 = 0;
      if (v19 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v19;
      }

      v9 = 0x7FFFFFFF;
      v10 = 2147500000.0;
      do
      {
        if (v10 > *(v18 + 4 * v7))
        {
          v10 = *(v18 + 4 * v7);
          v9 = v7;
        }

        ++v7;
      }

      while (v8 != v7);
      v11 = v9;
    }

    v14 = *(v5 + 32 * v11 + 24);
    if (v14 <= v4 && v10 <= *(a1 + 116))
    {
      v12 = v14 & 0xFFFFFF00 | (LODWORD(v10) << 32);
      v13 = v14;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    kaldi::CuMatrix<float>::~CuMatrix(&v17);
    kaldi::CuMatrix<float>::~CuMatrix(&v21);
    if (v27)
    {
      kaldi::CuVector<float>::~CuVector(v25);
    }
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  return v12 | v13;
}

uint64_t quasar::corrective_reranking::TargetIndexFilter::filterAsrCandidatesForTargetIndex(uint64_t a1, void *a2)
{
  if (a2[1] != *a2)
  {
    quasar::utf::toString();
  }

  return 0;
}

void sub_1B549B7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::latticeGenerationRun(void *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v4 = (*a1 + 8);
  v3 = *v4;
  *(v3 + 561) = 0;
  v5 = quasar::OnlineLatticeBiglmFasterDecoder::doEverythingWithRawLattice(v3, v2 + 24, v2 + 40, *(v2 + 56), *(v2 + 64), a2);
  *(*v4 + 561) = 1;
  v6 = *(v2 + 72);
  *v6 = *v2;
  *(v6 + 4) = v5;
  v7 = *(v6 + 16);
  *(v6 + 8) = 0;
  *(v6 + 16) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(v2 + 72);
  v9 = *(v8 + 32);
  *(v8 + 24) = 0;
  *(v8 + 32) = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v5 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((*(v2 + 72) + 40), "CANCEL ", 7);
    v11 = MEMORY[0x1B8C84C10](v10, *(*(v2 + 24) + 592));

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
  }

  else
  {
    quasar::Decoder::calculateNBest(*v4, (v2 + 24), *(*(v2 + 40) + 16));
    quasar::SpeechRequestData::getRecogRequestTimer(*(v2 + 40), &v72);
    Seconds = kaldi::Timer::GetSeconds(5, v12);
    v14 = *(v2 + 24);
    v14[60] = Seconds;
    if (v73)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v73);
      v14 = *(v2 + 24);
    }

    v15 = quasar::DecoderChainOutput::nonEmptyTopChoice(v14);
    v16 = *(v2 + 72);
    if (v15)
    {
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v16 + 40), "WRITE ", 6);
      v18 = MEMORY[0x1B8C84C10](v17, *(*(v2 + 24) + 592));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
      v19 = (*(**(**v4 + 16) + 24))(*(**v4 + 16));
      v20 = *(*(v2 + 24) + 368);
      v21 = *(*v4 + 48);
      v22 = *(*(v2 + 40) + 12);
      frame_duration_ms = kaldi::SnrTracker::get_frame_duration_ms(v21);
      Snr = quasar::SpeechRecognizer::getSnr(v20, v21, v22 / frame_duration_ms);
      v25 = *(*(v2 + 40) + 24);
      if ((*(v25 + 49) & 1) == 0)
      {
        v26 = Snr;
        v27 = *(*v4 + 64);
        v28 = *(v2 + 24);
        v29 = v28[47];
        v78 = v28[46];
        v79 = v29;
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *(v2 + 24);
        }

        v30 = v28[52];
        v76 = v28[51];
        v77 = v30;
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *(v2 + 24);
        }

        quasar::MuxHelper::finalizeResult(v27, (v25 + 344), &v78, &v76, v28 + 48);
        if (v77)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        if (v79)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v79);
        }

        v31 = v19;
        if (*(*(v2 + 24) + 1104) == 1)
        {
          v32 = *(v2 + 8);
          v33 = *(v2 + 48);
          v74 = *(v2 + 40);
          v75 = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          quasar::SpeechRecognizer::splitComposedLmeTokens(v32, v2 + 24, &v74);
          if (v75)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v75);
          }
        }

        quasar::RecogResult::RecogResult(&v72);
        v34 = *(v2 + 40);
        v36 = *(v34 + 24);
        v35 = *(v34 + 32);
        v70 = v36;
        v71 = v35;
        if (v35)
        {
          atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v37 = quasar::RecogResult::setParams(&v72, &v70);
        v38 = quasar::Token::resetSpacing(*(*(v2 + 24) + 368));
        v39 = quasar::RecogResult::setResultChoices(v37, v38);
        v40 = quasar::RecogResult::setResultMuxIds(v39, *(v2 + 24) + 384);
        v41 = quasar::RecogResult::setResultCosts(v40, *(*(v2 + 24) + 408));
        v42 = quasar::RecogResult::setLmeStatus(v41, (*(v2 + 24) + 600));
        v43 = quasar::RecogResult::setItnOverrides(v42, (*(v2 + 24) + 672));
        v44 = quasar::RecogResult::setAudioAnalytics(v43, (*(v2 + 24) + 712));
        started = quasar::RecogResult::setUtteranceStartMillis(v44, *(*(v2 + 40) + 12));
        v46 = quasar::RecogResult::setUtteranceDurationMillis(started, (v31 * *(*(v2 + 24) + 592)));
        v47 = quasar::RecogResult::setSNR(v46, v26);
        IsFinal = quasar::RecogResult::setIsFinal(v47, 0);
        v49 = quasar::RecogResult::setFingerprintDetected(IsFinal, *(*(v2 + 24) + 696));
        v50 = quasar::RecogResult::setWatermarkPeakAvg(v49, *(*(v2 + 24) + 704));
        v51 = quasar::RecogResult::setWatermarkDetected(v50, *(*(v2 + 24) + 700));
        v52 = quasar::RecogResult::setLatnnMitigatorResult(v51, *(v2 + 24) + 888);
        v53 = quasar::RecogResult::setSecondaryLatnnMitigatorResult(v52, *(v2 + 24) + 944);
        v54 = quasar::RecogResult::setLeftContextForItn(v53, (*v4 + 752));
        v55 = quasar::RecogResult::setRightContextForItn(v54, (*v4 + 776));
        UtteranceAfterResume = quasar::RecogResult::setFirstUtteranceAfterResume(v55, *(*v4 + 800));
        v57 = quasar::RecogResult::setEosLikelihood(UtteranceAfterResume, *(*(v2 + 24) + 1096));
        quasar::RecogResult::setNumTokensExcludingTriggerPhrase(v57, *(*(v2 + 24) + 1108));
        if (v71)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        v58 = *(v2 + 40);
        if (*(*(v58 + 24) + 625) == 1)
        {
          quasar::RecogResult::setIsVoiceCommandCandidatePackage(&v72, 1);
          v58 = *(v2 + 40);
        }

        if (*(v58 + 216) == 1 && (*(*v4 + 836) & 1) == 0)
        {
          quasar::DecoderChainOutput::getWordHypLattice(*(v2 + 24), *v4, &v68);
          quasar::RecogResult::setWordHypLattice(&v72, &v68);
          if (v69)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v69);
          }
        }

        (*(**(*(v2 + 24) + 576) + 40))(*(*(v2 + 24) + 576), &v72, 1);
        quasar::RecogResult::~RecogResult(&v72);
      }

      v59 = *(v2 + 72);
      v60 = *(v2 + 8);
      *v4 = 0;
      v4[1] = 0;
      v61 = *(v59 + 16);
      *(v59 + 8) = v60;
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v61);
      }

      v62 = *(v2 + 72);
      v64 = *(v2 + 24);
      v63 = *(v2 + 32);
      if (v63)
      {
        atomic_fetch_add_explicit((v63 + 8), 1uLL, memory_order_relaxed);
      }

      v65 = *(v62 + 32);
      *(v62 + 24) = v64;
      *(v62 + 32) = v63;
      if (v65)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v65);
      }
    }

    else
    {
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((v16 + 40), "EMPTY ", 6);
      v67 = MEMORY[0x1B8C84C10](v66, *(*(v2 + 24) + 592));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " ", 1);
    }
  }
}

void sub_1B549BD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  quasar::RecogResult::~RecogResult(va);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineLatticeBiglmFasterDecoder::doEverythingWithRawLattice(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v6 = atomic_load(a6);
  if ((v6 & 1) == 0)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_23CompactLatticeWeightTplINS1_16LatticeWeightTplIfEEiEEiEENS1_11VectorStateIS8_NS_9allocatorIS8_EEEEEENSA_ISD_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  return 1;
}

void sub_1B549C4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst((v30 - 224));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>,std::allocator<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::~ImplToFst((v30 - 208));
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>::~ImplToFst((v30 - 192));
  _Unwind_Resume(a1);
}

void quasar::MuxHelper::finalizeResult(uint64_t *a1, uint64_t **a2, uint64_t *a3, void ***a4, uint64_t *a5)
{
  v6 = *a3;
  if (v6)
  {
    __p = 0;
    v12 = 0;
    v13 = 0;
    if (*a4)
    {
      p_p = *a4;
    }

    else
    {
      p_p = &__p;
    }

    quasar::MuxHelper::finalizeResult(a1, a2, v6, p_p, a5);
    if (__p)
    {
      v12 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9 = *a5;
    v8 = a5[1];
    if (v8 != *a5)
    {
      do
      {
        v10 = v8 - 24;
        std::__tree<std::string>::destroy(v8 - 24, *(v8 - 16));
        v8 = v10;
      }

      while (v10 != v9);
    }

    a5[1] = v9;
  }
}

void sub_1B549C680(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::ScaleLattice<fst::LatticeWeightTpl<float>,double>(double ***a1, uint64_t a2)
{
  std::vector<std::vector<double>>::vector[abi:ne200100](&v22, 2uLL);
  v25 = 0;
  std::vector<double>::resize(v22, 2uLL, &v25);
  v25 = 0;
  std::vector<double>::resize(v22 + 3, 2uLL, &v25);
  v4 = v22;
  v22[3][1] = 1.0;
  **v4 = 1.0;
  v6 = *a1;
  v5 = a1[1];
  if (v5 - *a1 == v23 - v4)
  {
    while (v6 != v5)
    {
      v8 = *v6;
      v7 = v6[1];
      v9 = *v4;
      if (v7 - *v6 != v4[1] - *v4)
      {
        goto LABEL_8;
      }

      while (v8 != v7)
      {
        if (*v8 != *v9)
        {
          goto LABEL_8;
        }

        ++v8;
        ++v9;
      }

      v6 += 3;
      v4 += 3;
    }

    v25 = &v22;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  else
  {
LABEL_8:
    v25 = &v22;
    std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v25);
    v10 = (*(*a2 + 160))(a2);
    if (v10 >= 1)
    {
      v11 = v10;
      v12 = 0;
      do
      {
        (*(*a2 + 296))(a2, v12, &v25);
        while (!(*(*v25 + 3))(v25))
        {
          v13 = (*(*v25 + 4))(v25);
          v22 = *v13;
          v15 = *(v13 + 8);
          v14 = *(v13 + 12);
          v24 = *(v13 + 16);
          v16 = INFINITY;
          v17 = INFINITY;
          if (v15 != INFINITY)
          {
            v18 = v15;
            v19 = v14;
            v16 = (**a1)[1] * v19 + ***a1 * v18;
            v17 = (*a1)[3][1] * v19 + *(*a1)[3] * v18;
          }

          v23 = __PAIR64__(LODWORD(v17), LODWORD(v16));
          (*(*v25 + 11))(v25, &v22);
          (*(*v25 + 5))(v25);
        }

        if (v25)
        {
          (*(*v25 + 1))(v25);
        }

        (*(*a2 + 32))(&v22, a2, v12);
        v28 = *(&v22 + 1);
        LODWORD(v25) = v22;
        v27 = 2139095040;
        v26 = INFINITY;
        if (*&v22 != INFINITY || v28 != v26)
        {
          v20 = INFINITY;
          v21 = INFINITY;
          if (*&v22 != INFINITY)
          {
            v20 = (**a1)[1] * *(&v22 + 1) + ***a1 * *&v22;
            v21 = (*a1)[3][1] * *(&v22 + 1) + *(*a1)[3] * *&v22;
          }

          v25 = __PAIR64__(LODWORD(v21), LODWORD(v20));
          (*(*a2 + 184))(a2, v12, &v25);
        }

        v12 = (v12 + 1);
      }

      while (v12 != v11);
    }
  }
}

void sub_1B549CA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void quasar::writeRecordedStateAccessForFst(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37[19] = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    v5 = *a1;
    if (v5)
    {
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 8);
        if (v10)
        {
          atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (quasar::gLogLevel >= 4)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          v21 = 0u;
          v22 = 0u;
          v20 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Write accessed states for ", 26);
          v12 = *(a2 + 23);
          if (v12 >= 0)
          {
            v13 = a2;
          }

          else
          {
            v13 = *a2;
          }

          if (v12 >= 0)
          {
            v14 = *(a2 + 23);
          }

          else
          {
            v14 = *(a2 + 8);
          }

          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " to ", 4);
          v17 = *(a3 + 23);
          if (v17 >= 0)
          {
            v18 = a3;
          }

          else
          {
            v18 = *a3;
          }

          if (v17 >= 0)
          {
            v19 = *(a3 + 23);
          }

          else
          {
            v19 = *(a3 + 8);
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v20);
        }

        std::ofstream::basic_ofstream(&v20);
        quasar::StateAccessRecordingFst::WriteRecordedStateAccesses(v9, &v20);
        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v20 + *(v20 - 24)), *(&v22 + *(v20 - 24)) | 4);
        }

        *&v20 = *MEMORY[0x1E69E54D0];
        *(&v20 + *(v20 - 24)) = *(MEMORY[0x1E69E54D0] + 24);
        MEMORY[0x1B8C84A00](&v20 + 8);
        std::ostream::~ostream();
        MEMORY[0x1B8C85200](v37);
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }
      }
    }
  }

  else if (quasar::gLogLevel >= 5)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "FST File empty", 14);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v20);
  }
}

void sub_1B549CDB8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::registerParams(quasar::QsrTextSymbolTable **this, const void **a2)
{
  kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig::Register((this + 58), a2);
  kaldi::WordBoundaryInfoNewOpts::Register((this + 164), a2);
  quasar::QsrTextSymbolTable::Register(this[273], a2, 1, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  std::string::basic_string[abi:ne200100]<0>(&v7, "endpoint.");
  quasar::EndPointDecoderConfig::registerParams((this + 188), a2, &v7);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7);
  }

  std::string::basic_string[abi:ne200100]<0>(&v7, "utt-detect.");
  quasar::UttDetectConfig::registerParams((this + 206), a2, &v7);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7);
  }

  quasar::SystemConfig::getPrefix(a2, &v6);
  v4 = std::string::append(&v6, "utt-detect");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v8 = v4->__r_.__value_.__r.__words[2];
  v7 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  quasar::SystemConfig::hasParam(a2, &v7);
}

void sub_1B549E984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

  if (*(v27 - 41) < 0)
  {
    operator delete(*(v27 - 64));
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineLatticeBiglmFasterDecoder::requiresSilencePosteriorForEager(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  if (*(this + 2000) == 1)
  {
    v1 = *(this + 2001) ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t fst::ApplyProbabilityScale<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>(uint64_t result, float a2)
{
  if (a2 == 1.0)
  {
    return result;
  }

  v3 = result;
  v11 = 0;
  (*(*result + 128))(result, &v9);
  while (1)
  {
    result = v9;
    if (!v9)
    {
      if (v11 >= v10)
      {
        return result;
      }

LABEL_9:
      v5 = v11;
      goto LABEL_10;
    }

    v4 = (*(*v9 + 16))(v9);
    result = v9;
    if (v4)
    {
      break;
    }

    if (!v9)
    {
      goto LABEL_9;
    }

    v5 = (*(*v9 + 24))(v9);
LABEL_10:
    (*(*v3 + 296))(v3, v5, &v8);
    while (!(*(*v8 + 24))(v8))
    {
      v7 = *(*(*v8 + 32))(v8);
      *(&v7 + 2) = *(&v7 + 2) * a2;
      (*(*v8 + 88))(v8, &v7);
      (*(*v8 + 40))(v8);
    }

    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    LODWORD(v7) = (*(*v3 + 32))(v3, v5);
    LODWORD(v8) = 2139095040;
    if (*&v7 != INFINITY)
    {
      v6 = (*(*v3 + 32))(v3, v5);
      (*(*v3 + 184))(v3, v5, v6 * a2);
    }

    if (v9)
    {
      (*(*v9 + 32))(v9);
    }

    else
    {
      ++v11;
    }
  }

  if (v9)
  {
    return (*(*v9 + 8))(v9);
  }

  return result;
}

void sub_1B549F050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::ReadVectorVectorSimple<int>(uint64_t a1, uint64_t *a2)
{
  v22[0] = 0;
  if (kaldi::Input::OpenInternal(v22, a1, 0, 0))
  {
    v3 = kaldi::Input::Stream(v22);
    std::vector<std::vector<int>>::clear[abi:ne200100](a2);
    memset(&v21, 0, sizeof(v21));
    v4 = *MEMORY[0x1E69E54E0];
    v5 = *(MEMORY[0x1E69E54E0] + 24);
    while (1)
    {
      std::ios_base::getloc((v3 + *(*v3 - 24)));
      v6 = std::locale::use_facet(&v13, MEMORY[0x1E69E5318]);
      v7 = (v6->__vftable[2].~facet_0)(v6, 10);
      std::locale::~locale(&v13);
      v8 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v3, &v21, v7);
      if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
      {
        break;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      std::istringstream::basic_istringstream[abi:ne200100](&v13, &v21, 8);
      for (i = 0; ; std::vector<int>::push_back[abi:ne200100](&v18, &i))
      {
        v9 = MEMORY[0x1B8C84AE0](&v13, &i);
        if ((*(v9 + *(*v9 - 24) + 32) & 5) != 0)
        {
          break;
        }
      }

      std::vector<std::vector<int>>::push_back[abi:ne200100](a2, &v18);
      v13.__locale_ = v4;
      *(&v13.__locale_ + *(v4 - 3)) = v5;
      v14 = MEMORY[0x1E69E5548] + 16;
      if (v16 < 0)
      {
        operator delete(v15[7].__locale_);
      }

      v14 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v15);
      std::istream::~istream();
      MEMORY[0x1B8C85200](&v17);
      if (v18)
      {
        v19 = v18;
        operator delete(v18);
      }
    }

    v10 = (*(v3 + *(*v3 - 24) + 32) >> 1) & 1;
    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v10 = 0;
  }

  kaldi::Input::~Input(v22);
  return v10;
}

void quasar::OnlineLatticeBiglmFasterDecoder::loadDynamicClassTagDict(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v117 = *MEMORY[0x1E69E9840];
  memset(v98, 0, sizeof(v98));
  v99 = 1065353216;
  memset(v96, 0, sizeof(v96));
  v97 = 1065353216;
  v93 = 0;
  v94 = 0;
  v95 = 0;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  kaldi::SplitStringToVector((v1 + 848), ",", 1, &v93);
  kaldi::SplitStringToVector((v1 + 880), ",", 1, &v90);
  memset(v88, 0, sizeof(v88));
  v89 = 1065353216;
  v2 = *(v1 + 927);
  if (v2 < 0)
  {
    v2 = *(v1 + 912);
  }

  if (!v2)
  {
    v115 = 0uLL;
    v116 = 0uLL;
    v113 = 0uLL;
    v114 = 0uLL;
    v111 = 0uLL;
    v112 = 0uLL;
    v109 = 0uLL;
    v110 = 0uLL;
    v107 = 0uLL;
    v108 = 0uLL;
    v105 = 0uLL;
    v106 = 0uLL;
    v103 = 0uLL;
    v104 = 0uLL;
    v101 = 0uLL;
    v102 = 0uLL;
    __s = 0uLL;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__s);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__s, "The dyanamic classlm tag prior file name is empty", 49);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__s);
  }

  kaldi::Input::Input(v87, v1 + 904, 0);
  v3 = kaldi::Input::Stream(v87);
  v4 = *v3;
  if (*(v3 + *(*v3 - 24) + 32))
  {
    v115 = 0u;
    v116 = 0u;
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    __s = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__s);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__s, "SymbolTable::ReadText: Can't open dyanamic classlm tag file ", 60);
    v61 = *(v1 + 927);
    if (v61 >= 0)
    {
      v62 = v1 + 904;
    }

    else
    {
      v62 = *(v1 + 904);
    }

    if (v61 >= 0)
    {
      v63 = *(v1 + 927);
    }

    else
    {
      v63 = *(v1 + 912);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, v62, v63);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&__s);
  }

  v5 = *MEMORY[0x1E69E54E0];
  v6 = *(MEMORY[0x1E69E54E0] + 24);
  while (1)
  {
    std::ios_base::getloc((v3 + *(v4 - 24)));
    v7 = std::locale::use_facet(v70, MEMORY[0x1E69E5318]);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(v70);
    v8 = std::istream::getline();
    if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, &__s);
    std::istringstream::basic_istringstream[abi:ne200100](v70, &__p, 8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 0, sizeof(__p));
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v70, &__p);
    v9 = quasar::QsrTextSymbolTable::Find(*(v1 + 2184), &__p);
    v68 = 0;
    MEMORY[0x1B8C84AD0](v70, &v68);
    v10 = v68;
    v67 = v9;
    v64 = &v67;
    *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v88, &v67) + 5) = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v70[0].__locale_ = v5;
    *(&v70[0].__locale_ + *(v5 - 3)) = v6;
    *&v71 = MEMORY[0x1E69E5548] + 16;
    if (SBYTE7(v76) < 0)
    {
      operator delete(v75);
    }

    *&v71 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(&v71 + 1);
    std::istream::~istream();
    MEMORY[0x1B8C85200](&v77 + 8);
    v4 = *v3;
  }

  if (v94 == v93)
  {
LABEL_82:
    if (v91 != v90)
    {
      v39 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3) <= 1)
      {
        v40 = 1;
      }

      else
      {
        v40 = 0xAAAAAAAAAAAAAAABLL * ((v91 - v90) >> 3);
      }

      do
      {
        v41 = quasar::QsrTextSymbolTable::Find(*(v1 + 2184), v90 + v39);
        if (v41 == -1)
        {
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          *v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          *&v70[0].__locale_ = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
          v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
          v48 = *(v93 + v39 + 23);
          if (v48 >= 0)
          {
            v49 = v93 + v39;
          }

          else
          {
            v49 = *(v93 + v39);
          }

          if (v48 >= 0)
          {
            v50 = *(v93 + v39 + 23);
          }

          else
          {
            v50 = *(v93 + v39 + 8);
          }

          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, v49, v50);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, " in base symbol table", 22);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
        }

        LODWORD(v70[0].__locale_) = v41;
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v96, v70);
        v39 += 24;
        --v40;
      }

      while (v40);
    }

    kaldi::quasar::DynamicClassTagDict::DynamicClassTagDict(v70, v98, v88, v96);
  }

  v11 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3) <= 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v93) >> 3);
  }

  while (1)
  {
    v13 = quasar::QsrTextSymbolTable::Find(*(v1 + 2184), v93 + v11);
    if (v13 == -1)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *&v70[0].__locale_ = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
      v43 = *(v93 + v11 + 23);
      if (v43 >= 0)
      {
        v44 = v93 + v11;
      }

      else
      {
        v44 = *(v93 + v11);
      }

      if (v43 >= 0)
      {
        v45 = *(v93 + v11 + 23);
      }

      else
      {
        v45 = *(v93 + v11 + 8);
      }

      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, v44, v45);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, " in base symbol table", 22);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
    }

    v14 = (v93 + v11);
    if (*(v93 + v11 + 23) >= 0)
    {
      v15 = *(v93 + v11 + 23);
    }

    else
    {
      v15 = *(v93 + v11 + 8);
    }

    std::string::basic_string[abi:ne200100](&__p, v15 + 6);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (v14[23] >= 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = *v14;
      }

      memmove(p_p, v17, v15);
    }

    strcpy(p_p + v15, "-start");
    v18 = (v93 + v11);
    if (*(v93 + v11 + 23) >= 0)
    {
      v19 = *(v93 + v11 + 23);
    }

    else
    {
      v19 = *(v93 + v11 + 8);
    }

    std::string::basic_string[abi:ne200100](&v64, v19 + 4);
    if ((v66 & 0x80u) == 0)
    {
      v20 = &v64;
    }

    else
    {
      v20 = v64;
    }

    if (v19)
    {
      if (v18[23] >= 0)
      {
        v21 = v18;
      }

      else
      {
        v21 = *v18;
      }

      memmove(v20, v21, v19);
    }

    strcpy(v20 + v19, "-end");
    v22 = v13 + 1;
    quasar::QsrTextSymbolTable::Find(*(v1 + 2184), v70);
    v23 = SBYTE7(v71);
    if ((SBYTE7(v71) & 0x80u) == 0)
    {
      locale = BYTE7(v71);
    }

    else
    {
      locale = v70[1].__locale_;
    }

    v25 = v66;
    if ((v66 & 0x80u) != 0)
    {
      v25 = v65;
    }

    if (locale == v25)
    {
      if ((SBYTE7(v71) & 0x80u) == 0)
      {
        v26 = v70;
      }

      else
      {
        v26 = v70[0].__locale_;
      }

      if ((v66 & 0x80u) == 0)
      {
        v27 = &v64;
      }

      else
      {
        v27 = v64;
      }

      v28 = memcmp(v26, v27, locale) != 0;
      if (v23 < 0)
      {
LABEL_57:
        operator delete(v70[0].__locale_);
        if (!v28)
        {
          goto LABEL_59;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v28 = 1;
      if (SBYTE7(v71) < 0)
      {
        goto LABEL_57;
      }
    }

    if (!v28)
    {
      goto LABEL_59;
    }

LABEL_58:
    v29 = quasar::QsrTextSymbolTable::Find(*(v1 + 2184), &v64);
    v22 = v29;
    if (v29 == -1)
    {
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      *v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      *&v70[0].__locale_ = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
      if ((v66 & 0x80u) == 0)
      {
        v53 = &v64;
      }

      else
      {
        v53 = v64;
      }

      if ((v66 & 0x80u) == 0)
      {
        v54 = v66;
      }

      else
      {
        v54 = v65;
      }

      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v53, v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, " in base symbol table", 22);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
    }

LABEL_59:
    v30 = v13 + 2;
    quasar::QsrTextSymbolTable::Find(*(v1 + 2184), v70);
    v31 = SBYTE7(v71);
    if ((SBYTE7(v71) & 0x80u) == 0)
    {
      v32 = BYTE7(v71);
    }

    else
    {
      v32 = v70[1].__locale_;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (v32 == size)
    {
      if ((SBYTE7(v71) & 0x80u) == 0)
      {
        v34 = v70;
      }

      else
      {
        v34 = v70[0].__locale_;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = &__p;
      }

      else
      {
        v35 = __p.__r_.__value_.__r.__words[0];
      }

      v36 = memcmp(v34, v35, v32) != 0;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_72:
        if (v36)
        {
          goto LABEL_76;
        }

        goto LABEL_77;
      }
    }

    else
    {
      v36 = 1;
      if ((SBYTE7(v71) & 0x80000000) == 0)
      {
        goto LABEL_72;
      }
    }

    operator delete(v70[0].__locale_);
    if (v36)
    {
LABEL_76:
      v37 = quasar::QsrTextSymbolTable::Find(*(v1 + 2184), &__p);
      v30 = v37;
      if (v37 == -1)
      {
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        *v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        *&v70[0].__locale_ = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v70);
        v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Could not find ", 16);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v57 = &__p;
        }

        else
        {
          v57 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v58 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v58 = __p.__r_.__value_.__l.__size_;
        }

        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " in base symbol table", 22);
        quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v70);
      }
    }

LABEL_77:
    v68 = v13;
    v70[0].__locale_ = &v68;
    v38 = std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v98, &v68);
    *(v38 + 5) = v30;
    *(v38 + 6) = v22;
    if (v66 < 0)
    {
      operator delete(v64);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 += 24;
    if (!--v12)
    {
      goto LABEL_82;
    }
  }
}

void sub_1B549FFA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58, int a59, __int16 a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  kaldi::Input::~Input(&a58);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a60);
  STACK[0x220] = &a66;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a72);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a73);
  _Unwind_Resume(a1);
}

void sub_1B549FFBC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B54A0068);
}

void sub_1B549FFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::istringstream::~istringstream(&a20);
  kaldi::Input::~Input(&a55);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a56);
  STACK[0x220] = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a68);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a72);
  _Unwind_Resume(a1);
}

void sub_1B54A0014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::locale a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::locale::~locale(&a17);
  kaldi::Input::~Input(&a52);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a53);
  STACK[0x220] = &a59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  STACK[0x220] = &a62;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x220]);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a65);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&a71);
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeBiglmFasterDecoder::writeRecordedStateAccesses(uint64_t a1, uint64_t a2)
{
  v62[2] = *MEMORY[0x1E69E9840];
  if ((*(a1 + 2308) & 1) != 0 || *(a1 + 448) == 1)
  {
    v3 = *(a1 + 1080);
    v4 = (a1 + 1088);
    if (v3 != (a1 + 1088))
    {
      do
      {
        std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](&__str, v3 + 2);
        {
          goto LABEL_77;
        }

        v5 = v61;
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        std::string::basic_string[abi:ne200100]<0>(&v58, "");
        if (*(a2 + 23) < 0)
        {
          if (*(a2 + 8))
          {
LABEL_10:
            size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
            p_str = __str.__r_.__value_.__r.__words[0];
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_str = &__str;
            }

            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = __str.__r_.__value_.__l.__size_;
            }

            v8 = &p_str[-1].__r_.__value_.__r.__words[2] + 7;
            while (size)
            {
              v9 = v8[size--];
              if (v9 == 47)
              {
                v10 = size + 1;
                goto LABEL_45;
              }
            }

            v10 = 0;
LABEL_45:
            std::string::basic_string(v40, &__str, v10, 0xFFFFFFFFFFFFFFFFLL, &v57);
            std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, 47, &v56);
            if (v40[23] >= 0)
            {
              v23 = v40;
            }

            else
            {
              v23 = *v40;
            }

            if (v40[23] >= 0)
            {
              v24 = v40[23];
            }

            else
            {
              v24 = *&v40[8];
            }

            v25 = std::string::append(&v56, v23, v24);
            v26 = *&v25->__r_.__value_.__l.__data_;
            v57.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v57.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = std::string::append(&v57, ".recorded_state_accesses");
            v28 = v27->__r_.__value_.__r.__words[0];
            v62[0] = v27->__r_.__value_.__l.__size_;
            *(v62 + 7) = *(&v27->__r_.__value_.__r.__words[1] + 7);
            v29 = HIBYTE(v27->__r_.__value_.__r.__words[2]);
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v58.__r_.__value_.__l.__data_);
            }

            v58.__r_.__value_.__r.__words[0] = v28;
            v58.__r_.__value_.__l.__size_ = v62[0];
            *(&v58.__r_.__value_.__r.__words[1] + 7) = *(v62 + 7);
            *(&v58.__r_.__value_.__s + 23) = v29;
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v56.__r_.__value_.__l.__data_);
            }

            if ((v40[23] & 0x80000000) != 0)
            {
              v22 = *v40;
              goto LABEL_59;
            }

            goto LABEL_60;
          }
        }

        else if (*(a2 + 23))
        {
          goto LABEL_10;
        }

        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v11 = __str.__r_.__value_.__l.__size_;
        }

        std::string::basic_string[abi:ne200100](&v57, v11 + 1);
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &v57;
        }

        else
        {
          v12 = v57.__r_.__value_.__r.__words[0];
        }

        if (v11)
        {
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v13 = &__str;
          }

          else
          {
            v13 = __str.__r_.__value_.__r.__words[0];
          }

          memmove(v12, v13, v11);
        }

        *(&v12->__r_.__value_.__l.__data_ + v11) = 46;
        v14 = getpid();
        std::to_string(&v56, v14);
        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v56;
        }

        else
        {
          v15 = v56.__r_.__value_.__r.__words[0];
        }

        if ((v56.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = HIBYTE(v56.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v16 = v56.__r_.__value_.__l.__size_;
        }

        v17 = std::string::append(&v57, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        *&v40[16] = *(&v17->__r_.__value_.__l + 2);
        *v40 = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        v19 = std::string::append(v40, ".recorded_state_accesses");
        v20 = v19->__r_.__value_.__r.__words[0];
        v62[0] = v19->__r_.__value_.__l.__size_;
        *(v62 + 7) = *(&v19->__r_.__value_.__r.__words[1] + 7);
        v21 = HIBYTE(v19->__r_.__value_.__r.__words[2]);
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
        }

        v58.__r_.__value_.__r.__words[0] = v20;
        v58.__r_.__value_.__l.__size_ = v62[0];
        *(&v58.__r_.__value_.__r.__words[1] + 7) = *(v62 + 7);
        *(&v58.__r_.__value_.__s + 23) = v21;
        if ((v40[23] & 0x80000000) != 0)
        {
          operator delete(*v40);
        }

        if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v56.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          v22 = v57.__r_.__value_.__r.__words[0];
LABEL_59:
          operator delete(v22);
        }

LABEL_60:
        if (quasar::filesystem::exists(&v58))
        {
          if (quasar::gLogLevel >= 1)
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
            v41 = 0u;
            memset(v40, 0, sizeof(v40));
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "State access file [", 19);
            if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v31 = &v58;
            }

            else
            {
              v31 = v58.__r_.__value_.__r.__words[0];
            }

            if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v32 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v32 = v58.__r_.__value_.__l.__size_;
            }

            v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v31, v32);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "] exists", 8);
            quasar::QuasarErrorMessage::~QuasarErrorMessage(v40);
          }

          std::runtime_error::runtime_error(&v39, "State access file exists - not overwriting");
          std::runtime_error::~runtime_error(&v39);
        }

        v34 = v61;
        v38[0] = v60;
        v38[1] = v61;
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        quasar::writeRecordedStateAccessForFst(v38, &__str, &v58);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v58.__r_.__value_.__l.__data_);
          if (!v5)
          {
            goto LABEL_77;
          }

LABEL_76:
          std::__shared_weak_count::__release_shared[abi:ne200100](v5);
          goto LABEL_77;
        }

        if (v5)
        {
          goto LABEL_76;
        }

LABEL_77:
        if (v61)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        v35 = *(v3 + 1);
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
            v36 = *(v3 + 2);
            v37 = *v36 == v3;
            v3 = v36;
          }

          while (!v37);
        }

        v3 = v36;
      }

      while (v36 != v4);
    }
  }
}

void sub_1B54A055C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v19 - 209) < 0)
  {
    operator delete(*(v19 - 232));
  }

  if (*(v19 - 185) < 0)
  {
    operator delete(*(v19 - 208));
  }

  if (*(v19 - 161) < 0)
  {
    operator delete(*(v19 - 184));
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(v19 - 160);
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeBiglmFasterDecoder::resetAccessedStates(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  if ((*(this + 2308) & 1) != 0 || *(this + 448) == 1)
  {
    v1 = *(this + 135);
    v2 = this + 1088;
    if (v1 != (this + 1088))
    {
      do
      {
        std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](&__p, v1 + 2);
        if (lpsrc)
        {
          if (v3)
          {
            v4 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            quasar::StateAccessRecordingFst::ResetAccessedStates(v3);
            if (v4)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            }
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 = *(v1 + 1);
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = *(v1 + 2);
            v7 = *v6 == v1;
            v1 = v6;
          }

          while (!v7);
        }

        v1 = v6;
      }

      while (v6 != v2);
    }
  }
}

void sub_1B54A0798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(va);
  _Unwind_Resume(a1);
}

void quasar::OnlineLatticeBiglmFasterDecoder::resetAccessedStatesCounts(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  if ((*(this + 2308) & 1) != 0 || *(this + 448) == 1)
  {
    v1 = *(this + 135);
    v2 = this + 1088;
    if (v1 != (this + 1088))
    {
      do
      {
        std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](&__p, v1 + 2);
        if (lpsrc)
        {
          if (v3)
          {
            v4 = v10;
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            quasar::StateAccessRecordingFst::ResetAccessedStatesCounts(v3);
            if (v4)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v4);
            }
          }
        }

        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v10);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v5 = *(v1 + 1);
        if (v5)
        {
          do
          {
            v6 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v6 = *(v1 + 2);
            v7 = *v6 == v1;
            v1 = v6;
          }

          while (!v7);
        }

        v1 = v6;
      }

      while (v6 != v2);
    }
  }
}

void sub_1B54A08E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>>::~pair(va);
  _Unwind_Resume(a1);
}

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPath(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (quasar::isPlaceholder(a1))
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }

  else if (*(a1 + 23) < 0)
  {
    v4 = *a1;
    v5 = *(a1 + 8);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void quasar::OnlineLatticeBiglmFasterDecoder::setUpDecoding(void *a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 216))(a1);
  quasar::SymbolTableList::clear(*(*a3 + 488));
  v5 = *(*a3 + 488);
  v6 = a1[274];
  v7 = a1[273];
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v5, &v7, 0, -1);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  operator new();
}

void sub_1B54A0E0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v38 = *(v36 - 96);
  if (v38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v38);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::resetPrevEpFeatures(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  if (!*(this + 306))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v6 = 0u;
    v7 = 0u;
    v4 = 0u;
    v5 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "This should only be called if endPointer exists");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  *(this + 328) = 0;
  *(this + 658) = 1091567616;
  std::vector<std::string>::clear[abi:ne200100](this + 330);
  v2 = *(this + 306);
  __p[0] = 0;
  __p[1] = 0;
  *&v4 = 0;
  (*(*v2 + 48))(v2, __p, this + 2664);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *(this + 672) = 0;
}

void sub_1B54A1004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::addTimestampsToPartials(uint64_t a1, clockid_t a2)
{
  v3 = 1;
  kaldi::Timer::Reset(v2, a2);
  v4 = 0;
  _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B54A1300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  _Unwind_Resume(a1);
}

BOOL kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PartialTraceback3(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = INFINITY;
  do
  {
    v7 = *v2;
    v8 = (*(**(a1 + 160) + 32))(*(a1 + 160), *v2);
    if (v8 != INFINITY)
    {
      v9 = *(a1 + 328) + 32 * *(v2 + 2);
      v10 = v8 + *(v9 + 12);
      v11 = v10 + (*(**(a1 + 168) + 16))(*(a1 + 168), HIDWORD(v7));
      if (v6 > v11)
      {
        v6 = v11;
        v5 = v9;
      }
    }

    v2 = v2[2];
  }

  while (v2);
  v12 = 0;
  if (v5 && v6 != INFINITY)
  {
    v43 = 0;
    v44 = 0;
    v45 = 0;
    __p = 0;
    v41 = 0;
    v42 = 0;
    do
    {
      v13 = *v5;
      if (*v5 >> 33)
      {
        LODWORD(v38[0]) = *v5 >> 33;
        std::vector<int>::push_back[abi:ne200100](&v43, v38);
        v13 = *v5;
      }

      if (v13 >= 2)
      {
        LODWORD(v38[0]) = v13 >> 1;
        std::vector<int>::push_back[abi:ne200100](&__p, v38);
      }

      v14 = *(v5 + 8);
      if (v14 < 0x40)
      {
        break;
      }

      v15 = *(a1 + 328);
      v5 = v15 + ((v14 >> 1) & 0x7FFFFFE0);
    }

    while (v15);
    v16 = v43;
    v17 = v44;
    v18 = v44 - 4;
    if (v43 != v44 && v18 > v43)
    {
      v20 = v43 + 4;
      do
      {
        v21 = *(v20 - 1);
        *(v20 - 1) = *v18;
        *v18 = v21;
        v18 -= 4;
        v22 = v20 >= v18;
        v20 += 4;
      }

      while (!v22);
    }

    v23 = __p;
    v24 = v41;
    v25 = v41 - 4;
    if (__p != v41 && v25 > __p)
    {
      v27 = __p + 4;
      do
      {
        v28 = *(v27 - 1);
        *(v27 - 1) = *v25;
        *v25 = v28;
        v25 -= 4;
        v22 = v27 >= v25;
        v27 += 4;
      }

      while (!v22);
    }

    v29 = v24 - v23;
    v30 = v17 - v16;
    v12 = v29 >= v30;
    if (v29 >= v30)
    {
      (*(*a2 + 224))(a2);
      v31 = (*(*a2 + 200))(a2);
      (*(*a2 + 176))(a2, v31);
      if (v41 == __p)
      {
        v35 = v31;
      }

      else
      {
        v32 = 0;
        v33 = 1;
        do
        {
          v34 = (*(*a2 + 200))(a2);
          v35 = v34;
          if (v32 >= (v44 - v43) >> 2)
          {
            v36 = 0;
          }

          else
          {
            v36 = *(v43 + v32);
          }

          HIDWORD(v38[0]) = v36;
          LODWORD(v38[0]) = *(__p + v32);
          v38[1] = 0;
          v39 = v34;
          (*(*a2 + 208))(a2, v31, v38);
          v32 = v33++;
          v31 = v35;
        }

        while (v32 < (v41 - __p) >> 2);
      }

      v38[0] = 0;
      (*(*a2 + 184))(a2, v35, v38);
      v23 = __p;
    }

    if (v23)
    {
      v41 = v23;
      operator delete(v23);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }
  }

  return v12;
}

void sub_1B54A16F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineLatticeBiglmFasterDecoder::finishDecoding(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v76[4] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 2432);
  v8 = *(v7 + 808);
  v9 = *(v7 + 812);
  v10 = *(*a4 + 8);
  v11 = *a3;
  v13 = *(*a3 + 440);
  v12 = *(*a3 + 448);
  v54 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *a3;
  }

  v14 = (v9 + v8);
  v53 = v10;
  if (*(v11 + 1089))
  {
    v15 = 1;
  }

  else
  {
    v15 = *(v11 + 1088);
  }

  v16 = *(a1 + 2768);
  if (!v16)
  {
    v18 = 2;
    if (v15)
    {
      goto LABEL_36;
    }

LABEL_51:
    quasar::SpeechRequestData::getRecogRequestTimer(*a4, __p);
    *(*a3 + 472) = kaldi::Timer::GetSeconds(5, v37);
    if (__p[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
    }

    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(*(a1 + 2432), *(*(a1 + 2432) + 808), 0);
    _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (quasar::EagerDecision::matches(v16, **(a1 + 2784)) && (v17 = *(a1 + 2784), *(v17 + 4) != 1) && (v18 = *(v17 + 4), (v19 = *(v17 + 24)) != 0) && *(v19 + 456) == 1)
  {
    v20 = *a3;
    *(v19 + 596) = *(*a3 + 596);
    *(v19 + 597) = 1;
    *(v19 + 598) = *(v20 + 598);
    *(v19 + 592) = v14;
    *(v19 + 1088) = *(v20 + 1088);
    quasar::DecoderPassData::operator=(a2, *(v17 + 8));
    quasar::DecoderChainOutput::operator=(*a3, *(*(a1 + 2784) + 24));
    v21 = 1;
  }

  else
  {
    v21 = 0;
    v18 = 2;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "eagerDecisionLog");
  quasar::EagerDecision::getLog(&v73, *(a1 + 2768));
  v22 = std::string::insert(&v73, 0, "");
  v23 = *&v22->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = std::string::append(&v74, "");
  v25 = *&v24->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  quasar::SpeechRequestResultData::addDump(v13, __p, &v75);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (v21)
  {
    v26 = "MATCH";
  }

  else
  {
    v26 = "NOMATCH";
  }

  if (v21)
  {
    v27 = 5;
  }

  else
  {
    v27 = 7;
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((*(a1 + 2784) + 40), v26, v27);
  v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " ", 1);
  MEMORY[0x1B8C84C00](v29, v14);
  std::string::basic_string[abi:ne200100]<0>(__p, "eagerOutputLog");
  std::stringbuf::str();
  v30 = std::string::insert(&v73, 0, "");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v74.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
  *&v74.__r_.__value_.__l.__data_ = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  v32 = std::string::append(&v74, "");
  v33 = *&v32->__r_.__value_.__l.__data_;
  v75.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
  *&v75.__r_.__value_.__l.__data_ = v33;
  v32->__r_.__value_.__l.__size_ = 0;
  v32->__r_.__value_.__r.__words[2] = 0;
  v32->__r_.__value_.__r.__words[0] = 0;
  quasar::SpeechRequestResultData::addDump(v13, __p, &v75);
  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v74.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v73.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  if (((v21 | v15) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_36:
  if (!(v15 & 1 | ((*(a1 + 2808) & 1) == 0)))
  {
    __p[0] = 0;
    __p[1] = 0;
    *&v57 = 0;
    v34 = *(a2 + 568);
    v35 = *(a2 + 576);
    if (v34 != v35)
    {
      do
      {
        *&v75.__r_.__value_.__l.__data_ = 0uLL;
        v36 = v34[1];
        if (v36)
        {
          v75.__r_.__value_.__l.__size_ = std::__shared_weak_count::lock(v36);
          if (v75.__r_.__value_.__l.__size_)
          {
            v36 = *v34;
            v75.__r_.__value_.__r.__words[0] = *v34;
          }

          else
          {
            v36 = v75.__r_.__value_.__r.__words[0];
          }
        }

        if ((v36->__vftable[2].__get_deleter)(v36))
        {
          std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](__p, &v75);
        }

        if (v75.__r_.__value_.__l.__size_)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v75.__r_.__value_.__l.__size_);
        }

        v34 += 2;
      }

      while (v34 != v35);
      if (__p[0] != __p[1])
      {
        *(a2 + 561) = 0;
        v76[0] = &unk_1F2D14CE0;
        v76[3] = v76;
        v18 = quasar::Decoder::runChain(__p, v76, a2, a3, a4);
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v76);
        *(a2 + 561) = 1;
      }
    }

    v75.__r_.__value_.__r.__words[0] = __p;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v75);
  }

  if (v15)
  {
    if (*(*a3 + 1089) == 1)
    {
      quasar::OnlineLatticeBiglmFasterDecoder::addTimestampsToPartials(a1, a2);
    }

    v18 = 0;
  }

  v38 = 0.0;
  if (v14 >= 2)
  {
    v38 = *(a1 + 2520) / (v14 - 1);
  }

  *&v73.__r_.__value_.__l.__data_ = v38;
  if (quasar::gLogLevel <= 3)
  {
    *(*a3 + 592) = v14;
    v40 = v18;
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Average number of active tokens: ", 33);
    v40 = v18;
    MEMORY[0x1B8C84C00](v39, v38);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    v41 = quasar::gLogLevel;
    v42 = *a3;
    *(v42 + 592) = v14;
    if (*(v42 + 596) == 1 && v41 >= 4)
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Last frame processed ", 21);
      MEMORY[0x1B8C84C00](v43, (v53 + v14));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }
  }

  AudioBuffer = quasar::SpeechRequestData::getAudioBuffer(*a4);
  if (!quasar::RecogAudioBuffer::serverSideEndPointingEnabled(*AudioBuffer) || quasar::SpeechRequestData::getEndPointerExtraDelay(*a4))
  {
    std::string::basic_string[abi:ne200100]<0>(&v75, "EstimatedEpTruncation");
    std::string::basic_string[abi:ne200100]<0>(&v74, "EstimatedEndPointerTrailingSilence");
    if (*(a1 + 2512) == 0.0)
    {
      *(v13 + 124) = 2;
      __p[0] = 0x4000000000000000;
      quasar::SpeechRequestResultData::addAA(v13, &v75.__r_.__value_.__l.__data_, __p, 0);
      __p[0] = 0x41DFFFFFFFC00000;
      quasar::SpeechRequestResultData::addAA(v13, &v74.__r_.__value_.__l.__data_, __p, 0);
    }

    else
    {
      v45 = (*(**(*a2 + 16) + 24))(*(*a2 + 16));
      v46 = *(*a3 + 640);
      if (quasar::gLogLevel >= 4)
      {
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Server side end pointer first triggered frame ", 46);
        MEMORY[0x1B8C84C00](v47, *(a1 + 460));
        quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      }

      EndPointerExtraDelay = quasar::SpeechRequestData::getEndPointerExtraDelay(*a4);
      v49 = v46 / v45;
      if (!EndPointerExtraDelay || (v50 = *(a1 + 460), v50 < 0))
      {
        v50 = *(a1 + 456);
      }

      v51 = v50 - v49;
      if (v50 - v49 < 0)
      {
        *(v13 + 124) = 0;
        __p[0] = 0;
        quasar::SpeechRequestResultData::addAA(v13, &v75.__r_.__value_.__l.__data_, __p, 0);
        *__p = v51;
      }

      else
      {
        *(v13 + 124) = 1;
        __p[0] = 0x3FF0000000000000;
        quasar::SpeechRequestResultData::addAA(v13, &v75.__r_.__value_.__l.__data_, __p, 0);
        *__p = v51;
      }

      quasar::SpeechRequestResultData::addAA(v13, &v74.__r_.__value_.__l.__data_, __p, 0);
    }

    if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v74.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v75.__r_.__value_.__l.__data_);
    }
  }

  *(v13 + 32) = *(v13 + 32) + *(*(a1 + 2432) + 888) * 1000.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ProcessEmittingWallMs");
  quasar::SpeechRequestResultData::addAA(v13, __p, (v13 + 32), 1);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  *(v13 + 40) = *(v13 + 40) + *(*(a1 + 2432) + 896) * 1000.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ProcessEmittingCpuMs");
  quasar::SpeechRequestResultData::addAA(v13, __p, (v13 + 40), 1);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  *(v13 + 48) = *(v13 + 48) + *(*(a1 + 2432) + 904) * 1000.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ProcessNonemittingWallMs");
  quasar::SpeechRequestResultData::addAA(v13, __p, (v13 + 48), 1);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  *(v13 + 56) = *(v13 + 56) + *(*(a1 + 2432) + 912) * 1000.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "ProcessNonemittingCpuMs");
  quasar::SpeechRequestResultData::addAA(v13, __p, (v13 + 56), 1);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  *(v13 + 64) = *(v13 + 64) + *(*(a1 + 2432) + 920) * 1000.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "PruneActiveTokensWallMs");
  quasar::SpeechRequestResultData::addAA(v13, __p, (v13 + 64), 1);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  *(v13 + 72) = *(v13 + 72) + *(*(a1 + 2432) + 928) * 1000.0;
  std::string::basic_string[abi:ne200100]<0>(__p, "PruneActiveTokensCpuMs");
  quasar::SpeechRequestResultData::addAA(v13, __p, (v13 + 72), 1);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "AverageActiveTokensPerFrame");
  quasar::SpeechRequestResultData::addAA(v13, __p, &v73, 0);
  if (SBYTE7(v57) < 0)
  {
    operator delete(__p[0]);
    if (v40)
    {
      goto LABEL_99;
    }
  }

  else if (v40)
  {
    goto LABEL_99;
  }

  quasar::OnlineLatticeBiglmFasterDecoder::resetAccessedStates(a1);
LABEL_99:
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  return v40;
}

void sub_1B54A221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13)
{
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v13 - 144);
  *(v13 - 176) = &a13;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100]((v13 - 176));
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::DecoderPassData::operator=(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v5 = *(a1 + 8);
  *a1 = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a2[1];
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v7 = *(a1 + 24);
  *(a1 + 16) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a2[2];
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  v9 = *(a1 + 40);
  *(a1 + 32) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = a2[3];
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  v11 = *(a1 + 56);
  *(a1 + 48) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = a2[4];
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  v13 = *(a1 + 72);
  *(a1 + 64) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = a2[5];
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v15 = *(a1 + 88);
  *(a1 + 80) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  *(a1 + 96) = *(a2 + 24);
  v16 = *(a2 + 13);
  *(a1 + 112) = *(a2 + 56);
  *(a1 + 104) = v16;
  std::vector<BOOL>::operator=(a1 + 120, a2 + 120);
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 144), *(a2 + 18), *(a2 + 19), (*(a2 + 19) - *(a2 + 18)) >> 2);
  }

  v17 = *(a2 + 168);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  v18 = *(a1 + 176);
  *(a1 + 168) = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  v19 = *(a2 + 184);
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v20 = *(a1 + 192);
  *(a1 + 184) = v19;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v21 = (a2 + 392);
  v22 = *(a2 + 25);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 200) = v22;
  v23 = *(a2 + 216);
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  v24 = *(a1 + 224);
  *(a1 + 216) = v23;
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  *(a1 + 232) = *(a2 + 29);
  *(a1 + 240) = *(a2 + 30);
  std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate((a1 + 248));
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 33);
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate((a1 + 272));
  *(a1 + 272) = a2[17];
  *(a1 + 288) = *(a2 + 36);
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  *(a2 + 36) = 0;
  std::vector<int>::__move_assign(a1 + 296, (a2 + 296));
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vdeallocate((a1 + 320));
  *(a1 + 320) = a2[20];
  *(a1 + 336) = *(a2 + 42);
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  std::vector<int>::__move_assign(a1 + 344, (a2 + 344));
  std::__tree<int>::__move_assign(a1 + 368, a2 + 46);
  v25 = *v21;
  *v21 = 0;
  *(a2 + 50) = 0;
  v26 = *(a1 + 400);
  *(a1 + 392) = v25;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__move_assign(a1 + 408, a2 + 51);
  *(a1 + 448) = *(a2 + 112);
  v27 = *(a2 + 456);
  *(a2 + 57) = 0;
  *(a2 + 58) = 0;
  v28 = *(a1 + 464);
  *(a1 + 456) = v27;
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate((a1 + 472));
  *(a1 + 472) = *(a2 + 59);
  *(a1 + 480) = a2[30];
  *(a2 + 59) = 0;
  *(a2 + 60) = 0;
  *(a2 + 61) = 0;
  std::vector<std::shared_ptr<quasar::Decoder>>::__vdeallocate((a1 + 496));
  *(a1 + 496) = a2[31];
  *(a1 + 512) = *(a2 + 64);
  *(a2 + 62) = 0;
  *(a2 + 63) = 0;
  *(a2 + 64) = 0;
  v29 = *(a2 + 520);
  *(a2 + 65) = 0;
  *(a2 + 66) = 0;
  v30 = *(a1 + 528);
  *(a1 + 520) = v29;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v31 = *(a2 + 536);
  *(a2 + 67) = 0;
  *(a2 + 68) = 0;
  v32 = *(a1 + 544);
  *(a1 + 536) = v31;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(a2 + 69);
  *(a1 + 559) = *(a2 + 559);
  *(a1 + 552) = v33;
  std::vector<std::weak_ptr<quasar::Decoder>>::__vdeallocate((a1 + 568));
  *(a1 + 568) = *(a2 + 71);
  *(a1 + 576) = a2[36];
  *(a2 + 73) = 0;
  *(a2 + 568) = 0u;
  v34 = a2[37];
  a2[37] = 0u;
  v35 = *(a1 + 600);
  *(a1 + 592) = v34;
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v36 = (a1 + 608);
  if (*(a1 + 631) < 0)
  {
    operator delete(*v36);
  }

  v37 = a2[38];
  *(a1 + 624) = *(a2 + 78);
  *v36 = v37;
  *(a2 + 631) = 0;
  *(a2 + 608) = 0;
  v38 = (a1 + 632);
  if (*(a1 + 655) < 0)
  {
    operator delete(*v38);
  }

  v39 = *(a2 + 632);
  *(a1 + 648) = *(a2 + 81);
  *v38 = v39;
  *(a2 + 655) = 0;
  *(a2 + 632) = 0;
  v40 = a2[41];
  *(a1 + 672) = *(a2 + 84);
  *(a1 + 656) = v40;
  std::__hash_table<std::__hash_value_type<std::string,double>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,double>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,double>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,double>>>::__move_assign(a1 + 680, a2 + 85);
  *(a1 + 720) = *(a2 + 720);
  std::vector<std::string>::__vdeallocate((a1 + 728));
  *(a1 + 728) = *(a2 + 91);
  *(a1 + 736) = a2[46];
  *(a2 + 93) = 0;
  *(a2 + 728) = 0u;
  std::vector<std::string>::__vdeallocate((a1 + 752));
  *(a1 + 752) = a2[47];
  *(a1 + 768) = *(a2 + 96);
  *(a2 + 96) = 0;
  a2[47] = 0u;
  std::vector<std::string>::__vdeallocate((a1 + 776));
  *(a1 + 776) = *(a2 + 97);
  *(a1 + 784) = a2[49];
  *(a2 + 99) = 0;
  *(a2 + 776) = 0u;
  *(a1 + 800) = *(a2 + 400);
  std::vector<std::vector<quasar::Token>>::__vdeallocate((a1 + 808));
  *(a1 + 808) = *(a2 + 101);
  *(a1 + 816) = a2[51];
  *(a2 + 103) = 0;
  *(a2 + 808) = 0u;
  v41 = *(a2 + 208);
  *(a1 + 836) = *(a2 + 418);
  *(a1 + 832) = v41;
  return a1;
}

uint64_t quasar::DecoderChainOutput::operator=(uint64_t a1, uint64_t a2)
{
  std::vector<std::string>::__vdeallocate(a1);
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<std::vector<quasar::Token>>::__vdeallocate((a1 + 24));
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  std::vector<std::string>::__vdeallocate((a1 + 48));
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  std::vector<int>::__move_assign(a1 + 72, (a2 + 72));
  std::vector<quasar::Token>::__vdeallocate((a1 + 96));
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__move_assign(a1 + 120, (a2 + 120));
  v4 = *(a2 + 144);
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  v5 = *(a1 + 152);
  *(a1 + 144) = v4;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  *(a1 + 160) = *(a2 + 160);
  v6 = *(a2 + 168);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v7 = *(a1 + 176);
  *(a1 + 168) = v6;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(a2 + 184);
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  v9 = *(a1 + 192);
  *(a1 + 184) = v8;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__optional_storage_base<std::shared_ptr<kaldi::WordHypLattice>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::shared_ptr<kaldi::WordHypLattice>,false>>((a1 + 200), (a2 + 200));
  v10 = *(a2 + 224);
  *(a2 + 224) = 0;
  *(a2 + 232) = 0;
  v11 = *(a1 + 232);
  *(a1 + 224) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v12 = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  v13 = *(a1 + 248);
  *(a1 + 240) = v12;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(a2 + 256);
  *(a2 + 256) = 0;
  *(a2 + 264) = 0;
  v15 = *(a1 + 264);
  *(a1 + 256) = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(a2 + 272);
  *(a2 + 272) = 0;
  *(a2 + 280) = 0;
  v17 = *(a1 + 280);
  *(a1 + 272) = v16;
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v18 = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 296) = 0;
  v19 = *(a1 + 296);
  *(a1 + 288) = v18;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v20 = *(a2 + 304);
  *(a2 + 304) = 0;
  *(a2 + 312) = 0;
  v21 = *(a1 + 312);
  *(a1 + 304) = v20;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  v22 = *(a2 + 320);
  *(a2 + 320) = 0;
  *(a2 + 328) = 0;
  v23 = *(a1 + 328);
  *(a1 + 320) = v22;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = *(a2 + 336);
  *(a2 + 336) = 0;
  *(a2 + 344) = 0;
  v25 = *(a1 + 344);
  *(a1 + 336) = v24;
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  v26 = *(a2 + 352);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  v27 = *(a1 + 360);
  *(a1 + 352) = v26;
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v27);
  }

  v28 = (a2 + 408);
  v29 = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 376) = 0;
  v30 = *(a1 + 376);
  *(a1 + 368) = v29;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  std::vector<std::set<std::string>>::__vdeallocate((a1 + 384));
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = *(a2 + 400);
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  v31 = *v28;
  *v28 = 0;
  *(a2 + 416) = 0;
  v32 = *(a1 + 416);
  *(a1 + 408) = v31;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  v33 = *(a2 + 424);
  *(a2 + 424) = 0;
  *(a2 + 432) = 0;
  v34 = *(a1 + 432);
  *(a1 + 424) = v33;
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  v35 = *(a2 + 440);
  *(a2 + 440) = 0;
  *(a2 + 448) = 0;
  v36 = *(a1 + 448);
  *(a1 + 440) = v35;
  if (v36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v36);
  }

  v37 = *(a2 + 472);
  *(a1 + 456) = *(a2 + 456);
  *(a1 + 472) = v37;
  v38 = *(a2 + 488);
  *(a2 + 488) = 0;
  *(a2 + 496) = 0;
  v39 = *(a1 + 496);
  *(a1 + 488) = v38;
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v40 = *(a2 + 504);
  *(a2 + 504) = 0;
  *(a2 + 512) = 0;
  v41 = *(a1 + 512);
  *(a1 + 504) = v40;
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  v42 = *(a2 + 520);
  v43 = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 520) = v42;
  *(a1 + 536) = v43;
  v44 = *(a2 + 560);
  v45 = 0uLL;
  *(a2 + 560) = 0u;
  v46 = *(a1 + 568);
  *(a1 + 560) = v44;
  if (v46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
    v45 = 0uLL;
  }

  v47 = *(a2 + 576);
  *(a2 + 576) = v45;
  v48 = *(a1 + 584);
  *(a1 + 576) = v47;
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  v49 = *(a2 + 592);
  *(a1 + 595) = *(a2 + 595);
  *(a1 + 592) = v49;
  std::vector<quasar::LmeInfo>::__vdeallocate((a1 + 600));
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a2 + 616) = 0;
  v50 = 0uLL;
  *(a2 + 600) = 0u;
  v51 = *(a2 + 624);
  *(a2 + 624) = 0u;
  v52 = *(a1 + 632);
  *(a1 + 624) = v51;
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
    v50 = 0uLL;
  }

  v53 = *(a2 + 640);
  *(a1 + 648) = *(a2 + 648);
  *(a1 + 640) = v53;
  v54 = *(a2 + 656);
  *(a2 + 656) = v50;
  v55 = *(a1 + 664);
  *(a1 + 656) = v54;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
  }

  std::vector<quasar::ItnOverride>::__vdeallocate(a1 + 672);
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 688) = *(a2 + 688);
  *(a2 + 688) = 0;
  *(a2 + 672) = 0u;
  *(a1 + 696) = *(a2 + 696);
  std::vector<int>::__move_assign(a1 + 712, (a2 + 712));
  *(a1 + 736) = *(a2 + 736);
  std::vector<int>::__move_assign(a1 + 744, (a2 + 744));
  *(a1 + 768) = *(a2 + 768);
  std::vector<int>::__move_assign(a1 + 776, (a2 + 776));
  *(a1 + 800) = *(a2 + 800);
  std::vector<int>::__move_assign(a1 + 808, (a2 + 808));
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 840) = *(a2 + 840);
  std::vector<std::vector<kaldi::quasar::WordConf>>::__vdeallocate((a1 + 856));
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 872) = 0;
  *(a2 + 856) = 0u;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 888) = *(a2 + 888);
  v56 = (a1 + 896);
  if (*(a1 + 919) < 0)
  {
    operator delete(*v56);
  }

  v57 = *(a2 + 896);
  *(a1 + 912) = *(a2 + 912);
  *v56 = v57;
  *(a2 + 919) = 0;
  *(a2 + 896) = 0;
  v58 = *(a2 + 936);
  *(a1 + 920) = *(a2 + 920);
  *(a1 + 936) = v58;
  *(a1 + 944) = *(a2 + 944);
  v59 = (a1 + 952);
  if (*(a1 + 975) < 0)
  {
    operator delete(*v59);
  }

  v60 = *(a2 + 952);
  *(a1 + 968) = *(a2 + 968);
  *v59 = v60;
  *(a2 + 975) = 0;
  *(a2 + 952) = 0;
  v61 = *(a2 + 976);
  *(a1 + 992) = *(a2 + 992);
  *(a1 + 976) = v61;
  std::vector<int>::__move_assign(a1 + 1000, (a2 + 1000));
  std::vector<int>::__move_assign(a1 + 1024, (a2 + 1024));
  v62 = (a1 + 1048);
  if (*(a1 + 1071) < 0)
  {
    operator delete(*v62);
  }

  v63 = *(a2 + 1048);
  *(a1 + 1064) = *(a2 + 1064);
  *v62 = v63;
  *(a2 + 1071) = 0;
  *(a2 + 1048) = 0;
  v64 = *(a2 + 1072);
  *(a2 + 1072) = 0u;
  v65 = *(a1 + 1080);
  *(a1 + 1072) = v64;
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  v66 = *(a2 + 1088);
  *(a1 + 1097) = *(a2 + 1097);
  *(a1 + 1088) = v66;
  *(a1 + 1116) = *(a2 + 1116);
  *(a1 + 1120) = *(a2 + 1120);
  std::vector<quasar::Token>::__vdeallocate((a1 + 1128));
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1136) = *(a2 + 1136);
  *(a2 + 1144) = 0;
  *(a2 + 1128) = 0u;
  *(a1 + 1152) = *(a2 + 1152);
  v67 = (a1 + 1160);
  if (*(a1 + 1183) < 0)
  {
    operator delete(*v67);
  }

  v68 = *(a2 + 1160);
  *(a1 + 1176) = *(a2 + 1176);
  *v67 = v68;
  *(a2 + 1183) = 0;
  *(a2 + 1160) = 0;
  *(a1 + 1184) = *(a2 + 1184);
  return a1;
}

BOOL kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetRawLattice(uint64_t a1, uint64_t a2, kaldi::LatticeScoreCache *a3, kaldi::TransitionModel *a4)
{
  (*(*a2 + 224))(a2);
  v9 = *(a1 + 88);
  v8 = *(a1 + 96);
  v10 = *(a1 + 288) / 2 + 3;
  memset(v55, 0, sizeof(v55));
  v56 = 1065353216;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(v55, v10);
  v11 = 0;
  v50 = ((v8 - v9) >> 3) + 0xFFFFFFFF;
  v46 = ((v8 - v9) >> 3);
  while (1)
  {
    v12 = *(*(a1 + 88) + 8 * v11);
    if (!v12)
    {
      break;
    }

    v54 = *(*(a1 + 88) + 8 * v11);
    do
    {
      v13 = *(a1 + 328);
      v14 = (*(*a2 + 200))(a2);
      v52[0].__locale_ = &v54;
      *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v55, &v54) + 5) = v14;
      LODWORD(v12) = *(v13 + 32 * v12 + 24);
      v54 = v12;
    }

    while (v12);
    if (!v11 && (*(*a2 + 160))(a2) >= 1)
    {
      v15 = (*(*a2 + 160))(a2);
      (*(*a2 + 176))(a2, (v15 - 1));
    }

    if (++v11 == v46)
    {
      if (kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v52, 3);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "init:", 5);
        v17 = MEMORY[0x1B8C84C00](v16, (*(a1 + 288) / 2 + 3));
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " buckets:", 9);
        v19 = MEMORY[0x1B8C84C30](v18, *(&v55[0] + 1));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " load:", 6);
        v23 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, " max:", 5);
        std::ostream::operator<<();
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v52);
      }

      v24 = 0;
      v48 = 0;
      v25 = 0;
      v26 = 0;
      v49 = (a1 + 312);
      v47 = v50;
      do
      {
        for (i = *(*(a1 + 88) + 8 * v24); i; i = *(v51 + 24))
        {
          v51 = *(a1 + 328) + 32 * i;
          for (j = *(v51 + 20); j; v25 = (v25 + 1))
          {
            v29 = *(a1 + 344) + 24 * j;
            LODWORD(v52[0].__locale_) = *(v29 + 4);
            v30 = *(std::__hash_table<quasar::PersonalizedLmData::DocumentType,std::hash<quasar::PersonalizedLmData::DocumentType>,std::equal_to<quasar::PersonalizedLmData::DocumentType>,std::allocator<quasar::PersonalizedLmData::DocumentType>>::find<quasar::PersonalizedLmData::DocumentType>(v55, v52) + 5);
            v31 = *(v29 + 8);
            LODWORD(v52[0].__locale_) = *v29 >> 1;
            HIDWORD(v52[0].__locale_) = v31;
            v52[1] = *(v29 + 12);
            v53 = v30;
            if (v31 == *(a1 + 252))
            {
              HIDWORD(v52[0].__locale_) = 0;
            }

            (*(*a2 + 208))(a2, v26, v52);
            if (a4 && a3 && *v29 >= 2u)
            {
              v32 = kaldi::TransitionModel::TransitionIdToTransitionState(a4, *v29 >> 1);
              v33 = kaldi::TransitionModel::TransitionStateToForwardPdf(a4, v32);
              kaldi::LatticeScoreCache::CacheScore(a3, v24, v33, *(v29 + 16));
            }

            j = *(v29 + 20);
          }

          if (v24 == v47)
          {
            v34 = *v49;
            if (*v49)
            {
              v35 = a1 + 312;
              do
              {
                v36 = *(v34 + 28);
                v37 = v36 >= i;
                v38 = v36 < i;
                if (v37)
                {
                  v35 = v34;
                }

                v34 = *(v34 + 8 * v38);
              }

              while (v34);
              if (v35 != v49 && i >= *(v35 + 28))
              {
                v52[0].__locale_ = *(v35 + 32);
                (*(*a2 + 184))(a2, v26, v52);
              }
            }

            ++v48;
          }

          v26 = (v26 + 1);
        }

        ++v24;
      }

      while (v24 != v46);
      (*(*a2 + 160))(a2);
      if (kaldi::g_kaldi_verbose_level > 2)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(v52, 3);
        v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "GetRawLattice: NumStates ", 25);
        v40 = (*(*a2 + 160))(a2);
        v41 = MEMORY[0x1B8C84C00](v39, v40);
        v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " NumArcs ", 9);
        v43 = MEMORY[0x1B8C84C00](v42, v25);
        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " NumFinal ", 10);
        MEMORY[0x1B8C84C00](v44, v48);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(v52);
      }

      v22 = v26 != 0;
      goto LABEL_40;
    }
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "GetRawLattice: no tokens active on frame ", 41);
    v21 = MEMORY[0x1B8C84C00](v20, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ": not producing lattice.", 24);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v52);
  }

  v22 = 0;
LABEL_40:
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v55);
  return v22;
}

void quasar::constructWords(unsigned int **a1, int a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  memset(&v16, 0, sizeof(v16));
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v7 = 0;
    v8 = 0x80000000;
    do
    {
      v9 = *v3 == a2;
      if (*v3 != a2)
      {
        v10 = v7 || *v3 == v8;
        v8 = *v3;
        if (!v10)
        {
          (*(**a3 + 88))(__p);
          if ((v15 & 0x80u) == 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          if ((v15 & 0x80u) == 0)
          {
            v12 = v15;
          }

          else
          {
            v12 = __p[1];
          }

          std::string::append(&v16, v11, v12);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          v8 = *v3;
        }
      }

      ++v3;
      v7 = v9;
    }

    while (v3 != v4);
  }

  std::string::basic_string[abi:ne200100]<0>(v13, "▁");
  quasar::splitUnicodeCharSet(&v16, v13);
}

void sub_1B54A355C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  a22 = &a28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t quasar::OnlineLatticeBiglmFasterDecoder::endUtteranceForPauseResume(std::mutex *a1, void *a2, int a3, int a4, char a5)
{
  std::mutex::lock(a1 + 44);
  v10 = a1[43].__m_.__opaque[49];
  v11 = a1[43].__m_.__opaque[50];
  v12 = v10 | a3 & a4 | v11;
  if (v12)
  {
    v13 = *a2;
    v13[596] = a4 & a5;
    v13[598] = a4;
    v13[597] = 1;
    if ((v11 & 1) != 0 && a3)
    {
      v13[1088] = 1;
      a1[43].__m_.__opaque[50] = 0;
    }

    else if (v10)
    {
      v13[1089] = 1;
      a1[43].__m_.__opaque[49] = 0;
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    else
    {
      *&a1[43].__m_.__opaque[49] = 0;
      if (!a3)
      {
        goto LABEL_11;
      }
    }

    if (a4)
    {
      v13[1089] = 1;
    }
  }

LABEL_11:
  std::mutex::unlock(a1 + 44);
  return v12 & 1;
}

uint64_t quasar::OnlineLatticeBiglmFasterDecoder::decodeNextFrames(uint64_t a1, unsigned __int8 *a2, std::vector<std::wstring> **a3, quasar::SpeechRequestData **a4, uint64_t a5)
{
  v6 = *(a5 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v6 + 48))(v6))
  {
    if (quasar::gLogLevel >= 4)
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Recognition cancelled", 21);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    return 1;
  }

  v11 = *(a1 + 2432);
  AudioBuffer = quasar::SpeechRequestData::getAudioBuffer(*a4);
  if (quasar::RecogAudioBuffer::hasServerEndpointed(*AudioBuffer))
  {
    v13 = *(a1 + 2104) < 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DecodeMe(v11, 0, 0, v13, a2[720]);
  if (*(a1 + 2108))
  {
    *(a1 + 2108) = 0;
    v15 = *(a1 + 2100);
    *(a1 + 2104) = v15;
  }

  else
  {
    v15 = *(a1 + 2104);
  }

  v115 = v14;
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v17 < 0 == v16)
  {
    *(a1 + 2104) = v17;
  }

  v18 = (*(**(*a2 + 16) + 24))(*(*a2 + 16));
  v19 = (*(*(a1 + 2432) + 812) + *(*(a1 + 2432) + 808));
  v20 = v19 * v18;
  v21 = *a4;
  v22 = *(*a4 + 2);
  v23 = *(*a4 + 3);
  LODWORD((*a3)[24].__end_cap_.__value_) = v19;
  if (quasar::OnlineLatticeBiglmFasterDecoder::endUtteranceForPauseResume(a1, a3, a2[720], v115 == 1, *(v21 + 20)))
  {
    if (quasar::SpeechRequestData::isUtteranceDetectionEnabled(*a4))
    {
      MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*a4);
      v25 = *MultiChainMultiAudioBuffer;
      v26 = *(MultiChainMultiAudioBuffer + 8);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v25)
      {
        if (quasar::gLogLevel >= 4)
        {
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Ending audio for secondary audio buffers at utterance boundary", 62);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        quasar::MultiChainMultiAudioBuffer::endAudioForSecondaryBuffers(v25, v20);
      }

      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }
    }

    return 4;
  }

  if (a2[720] == 1)
  {
    if (quasar::gLogLevel >= 4)
    {
      v151 = 0u;
      v152 = 0u;
      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v143 = 0u;
      v144 = 0u;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      v137 = 0u;
      v138 = 0u;
      *__p = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Recognition Paused", 18);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
    }

    return 3;
  }

  v27 = (v22 + v19);
  Average = 0.0;
  v29 = 0.0;
  if (v27 >= 1)
  {
    v29 = (*(**(a2 + 2) + 64))(*(a2 + 2), (v27 - 1));
    if ((*(**(a2 + 2) + 72))(*(a2 + 2)))
    {
      v30 = (*(**(a2 + 2) + 80))(*(a2 + 2), (v27 - 1), *(a1 + 2088));
      quasar::MovingAverage::add((a1 + 2024), v30);
    }
  }

  if ((*(**(a2 + 2) + 72))(*(a2 + 2)))
  {
    Average = quasar::MovingAverage::getAverage((a1 + 2024));
  }

  v135 = -1;
  v134 = -1;
  v133 = -1;
  v132 = NAN;
  memset(&__str, 0, sizeof(__str));
  v129 = 0;
  __src = 0;
  v130 = 0;
  v127 = 0;
  v31 = *(*(*a4 + 3) + 624);
  v126 = 0;
  if ((BYTE1((*a3)[46].__begin_) & 1) != 0 || v31)
  {
    operator new();
  }

  v32 = (v23 + v20);
  if (v115 != 1)
  {
    v33 = *(a1 + 2176);
    v34 = v33 >= 1 && v27 % v33 != 0;
    v112 = v27;
    v113 = v32;
    v110 = v19 * v18;
    if ((v115 & 0x100000000) != 0 && !v34)
    {
      *(a1 + 2536) = *(a1 + 2528);
      *(a1 + 2576) = 0x4110000000000000;
      *(a1 + 2584) = 0;
      *(a1 + 2600) = *(a1 + 2592);
      *(a1 + 2616) = 0;
      std::vector<std::string>::clear[abi:ne200100](&(*a3)[2]);
      (*a3)[3].__end_ = (*a3)[3].__begin_;
      LODWORD(v105) = *(a1 + 2160);
      v35 = kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PartialTraceback(*(a1 + 2432), a1 + 2528, (a1 + 2552), (a1 + 2576), (a1 + 2580), *(a1 + 1376), (a1 + 2584), (a1 + 2588), (a1 + 2592), (a1 + 2616), (a1 + 2472), (a1 + 2620), *(a1 + 1392), (a1 + 2480), *(a1 + 2504), *(a1 + 2165), *(a1 + 2166), *(a1 + 1488), v105, v126);
      if (v126)
      {
        v36 = *v126;
        v37 = v126[1];
        if (*v126 != v37)
        {
          *(a1 + 2536) = *(a1 + 2528);
          do
          {
            std::vector<int>::push_back[abi:ne200100]((a1 + 2528), (v36 + 36));
            v36 += 40;
          }

          while (v36 != v37);
        }
      }

      if (*(a1 + 1393) == 1)
      {
        *(a1 + 2700) = kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PartialTraceback2(*(a1 + 2432), (a1 + 2728), (a1 + 2752));
        v38 = *(a1 + 2728);
        v39 = *(a1 + 2736);
        if (v38 != v39)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 2528), v38, v39, (v39 - v38) >> 2);
        }
      }

      if (*(a1 + 2156))
      {
        v40 = *(a1 + 2160);
        v41 = *(a2 + 22);
        v125[0] = *(a2 + 21);
        v125[1] = v41;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        quasar::constructWords((a1 + 2552), v40, v125);
      }

      if (v35)
      {
        quasar::SymbolTableList::lookup((*a3)[20].__end_, (a1 + 2528), &(*a3)[2], &(*a3)[3], 1);
      }

      if (LOBYTE((*a3)[46].__begin_) == 1)
      {
        quasar::Decoder::splitLmePartialResult(*a3 + 2, (*(*a4 + 3) + 80));
      }

      *(a1 + 2520) += *(a1 + 2584);
      v20 = v19 * v18;
      v27 = v27;
      v32 = v113;
    }

    v42 = *(a1 + 2800);
    if (v42)
    {
      quasar::NFHatTransformer::estimateSilenceDuration(v42, v29, v18);
      *(a1 + 2576) = *(*(a1 + 2800) + 80);
    }

    if (quasar::gLogLevel >= 6)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](v121);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "Raw pauses = [", 14);
      v43 = *(a1 + 2592);
      for (i = *(a1 + 2600); v43 != i; ++v43)
      {
        v45 = MEMORY[0x1B8C84C10](v121, *v43);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " ", 1);
      }

      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v121, "], words = [", 12);
      v47 = *a3;
      v118 = " ";
      v119 = 1;
      quasar::join<std::vector<std::string>>(&v47[2], &v118);
      if ((SBYTE7(v137) & 0x80u) == 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = __p[0];
      }

      if ((SBYTE7(v137) & 0x80u) == 0)
      {
        v49 = BYTE7(v137);
      }

      else
      {
        v49 = __p[1];
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "]", 1);
      if (SBYTE7(v137) < 0)
      {
        operator delete(__p[0]);
      }

      if (quasar::gLogLevel >= 6)
      {
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        std::stringbuf::str();
        if (v120 >= 0)
        {
          v51 = &v118;
        }

        else
        {
          v51 = v118;
        }

        if (v120 >= 0)
        {
          v52 = HIBYTE(v120);
        }

        else
        {
          v52 = v119;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v51, v52);
        if (SHIBYTE(v120) < 0)
        {
          operator delete(v118);
        }

        quasar::QuasarTraceMessage::~QuasarTraceMessage(__p);
      }

      v121[0].__begin_ = *MEMORY[0x1E69E54E8];
      *(&v121[0].__begin_ + v121[0].__begin_[-1].__r_.__value_.__r.__words[0]) = *(MEMORY[0x1E69E54E8] + 24);
      v121[0].__end_ = (MEMORY[0x1E69E5548] + 16);
      if (v123 < 0)
      {
        operator delete(v122);
      }

      v121[0].__end_ = (MEMORY[0x1E69E5538] + 16);
      std::locale::~locale(&v121[0].__end_cap_);
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](&v124);
      v27 = v112;
      v32 = v113;
    }

    v53 = *(a1 + 2464);
    if (v53)
    {
      v54 = *a3;
      v121[0].__begin_ = " ";
      v121[0].__end_ = 1;
      quasar::join<std::vector<std::string>>(&v54[2], v121);
      v55 = quasar::StreamingConfidenceRunner::compute(v53, __p, *(a1 + 2584), *(a1 + 2576), *(a1 + 2588));
      if (SBYTE7(v137) < 0)
      {
        operator delete(__p[0]);
      }

      v111 = (v55 * 100.0);
    }

    else
    {
      v111 = 0;
    }

    if (*(a1 + 2580) == INFINITY)
    {
      *(a1 + 2580) = 1091567616;
    }

    memset(v121, 0, 24);
    if (*(a1 + 2448) || quasar::SpeechRequestData::isUtteranceDetectionEnabled(*a4))
    {
      v56 = *(a1 + 2620);
      v57 = (*(a1 + 2536) - *(a1 + 2528)) >> 2;
      v58 = *a3;
      v59 = v57 >= v56;
      v60 = v57 - v56;
      if (v60 != 0 && v59)
      {
        begin = v58[2].__begin_;
        end = v58[2].__end_;
        v63 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
        if (v60 < v63)
        {
          v63 = v60;
        }

        std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(v121, v121[0].__end_, &begin[v63], end, 0xAAAAAAAAAAAAAAABLL * ((end - &begin[v63]) >> 3));
      }

      else if (v121 != &v58[2])
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v121, v58[2].__begin_, v58[2].__end_, 0xAAAAAAAAAAAAAAABLL * ((v58[2].__end_ - v58[2].__begin_) >> 3));
      }
    }

    *v117 = 0.0;
    if (a2[562] == 1)
    {
      v64 = *(a1 + 2448);
      if (v64)
      {
        v118 = 0;
        v119 = 0;
        v120 = 0;
        (*(*v64 + 48))(v64, a1 + 2592, &v118);
        v135 = *(a1 + 2620);
        v134 = *(a1 + 2576);
        v133 = v19;
        v132 = *(a1 + 2580);
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&__str, v121[0].__begin_, v121[0].__end_, 0xAAAAAAAAAAAAAAABLL * ((v121[0].__end_ - v121[0].__begin_) >> 3));
        std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&__src, v118, v119, (v119 - v118) >> 2);
        v127 = *(a1 + 2616);
        if (quasar::SpeechRequestData::isUtteranceDetectionEnabled(*a4))
        {
          if (*(*a4 + 1))
          {
            v65 = (*(**(a1 + 2448) + 56))(*(a1 + 2448));
            quasar::OnlineLatticeBiglmFasterDecoder::aggregateEpFeatures(a1, &v135, &v134, &v133, &v132, &__str, &__src, &v127, v65, *(*a4 + 2));
          }

          else
          {
            quasar::OnlineLatticeBiglmFasterDecoder::resetPrevEpFeatures(a1);
          }
        }

        if (!(v27 % (*(**(*a2 + 16) + 16))(*(*a2 + 16))))
        {
          v66 = v132;
          v104 = a1 + 460;
          v106 = v134;
          v107 = v135;
          v67 = v133;
          v108 = v127;
          if ((***(a1 + 2448))(*(a1 + 2448), v117, v132, Average, v29))
          {
            if (quasar::gLogLevel >= 4)
            {
              v151 = 0u;
              v152 = 0u;
              v149 = 0u;
              v150 = 0u;
              v147 = 0u;
              v148 = 0u;
              v145 = 0u;
              v146 = 0u;
              v143 = 0u;
              v144 = 0u;
              v141 = 0u;
              v142 = 0u;
              v139 = 0u;
              v140 = 0u;
              v137 = 0u;
              v138 = 0u;
              *__p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Server side end pointer triggered frame ", 40);
              MEMORY[0x1B8C84C00](v68, v67);
              quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
            }

            *(a1 + 2108) = 1;
            if (quasar::SpeechRequestData::isEndPointCandidateEnabled(*a4))
            {
              if (a2[561] == 1)
              {
                v69 = quasar::SpeechRequestData::getAudioBuffer(*a4);
                if (quasar::RecogAudioBuffer::serverSideEndPointingEnabled(*v69))
                {
                  (*((*a3)[24].__begin_->__r_.__value_.__l.__data_ + 15))((*a3)[24].__begin_, v32);
                }
              }
            }

            else
            {
              v70 = quasar::SpeechRequestData::getAudioBuffer(*a4);
              (*(**v70 + 48))(*v70);
              if (*(a1 + 2512) == 0.0)
              {
                quasar::EndPointer::featuresToJsonString(v66, Average, v29, *(a1 + 2448), v107, v106, v67, &__str, &__src, v108, v111);
              }
            }
          }
        }

        if ((*(**(a1 + 2448) + 32))(*(a1 + 2448)))
        {
          if (quasar::gLogLevel >= 5)
          {
            v151 = 0u;
            v152 = 0u;
            v149 = 0u;
            v150 = 0u;
            v147 = 0u;
            v148 = 0u;
            v145 = 0u;
            v146 = 0u;
            v143 = 0u;
            v144 = 0u;
            v141 = 0u;
            v142 = 0u;
            v139 = 0u;
            v140 = 0u;
            v137 = 0u;
            v138 = 0u;
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Reporting end point status=", 27);
            v72 = (*(**(a1 + 2448) + 40))(*(a1 + 2448));
            MEMORY[0x1B8C84C00](v71, v72);
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

          if (a2[561] == 1)
          {
            v73 = (*a3)[24].__begin_;
            v74 = (*(**(a1 + 2448) + 40))(*(a1 + 2448));
            (*(v73->__r_.__value_.__r.__words[0] + 64))(v73, v74);
          }
        }

        if (v118)
        {
          v119 = v118;
          operator delete(v118);
        }
      }
    }

    if (a2[561] == 1 && v19 > *(a1 + 2472))
    {
      if (*(a1 + 2448))
      {
        v75 = v135;
        v76 = v134;
        v77 = v132;
        v78 = v127;
      }

      else
      {
        v75 = *(a1 + 2620);
        v135 = *(a1 + 2620);
        v76 = *(a1 + 2576);
        v134 = *(a1 + 2576);
        v77 = *(a1 + 2580);
        v132 = v77;
        v78 = *(a1 + 2616);
        v127 = *(a1 + 2616);
      }

      (*((*a3)[24].__begin_->__r_.__value_.__l.__data_ + 13))((*a3)[24].__begin_, v75, v76, &__str, &__src, v78, v111, *(a1 + 2584), v77, Average, v29, *v117, __PAIR64__(v18, v32));
    }

    if (a2[562] != 1 || !quasar::SpeechRequestData::isUtteranceDetectionEnabled(*a4))
    {
      v114 = 0;
LABEL_144:
      v81 = *(a1 + 1040);
      if (v81 && v32 - *(a1 + 2524) >= v81)
      {
        *(a1 + 2524) = v32;
        if (quasar::gLogLevel >= 4)
        {
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Sending recognition progress report for frameCount=", 51);
          v83 = MEMORY[0x1B8C84C00](v82, v19);
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, " processedAudioDurationMs=", 26);
          MEMORY[0x1B8C84C00](v84, v32);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        if (a2[561] == 1)
        {
          (*((*a3)[24].__begin_->__r_.__value_.__l.__data_ + 9))((*a3)[24].__begin_, v32);
        }
      }

      if (a2[561] == 1)
      {
        (*((*a3)[24].__begin_->__r_.__value_.__l.__data_ + 10))((*a3)[24].__begin_, v32);
        if (*(a1 + 2169) == 1)
        {
          if (v29 >= *(a1 + 2172))
          {
            v85 = *(a1 + 2884) + 1;
          }

          else
          {
            v85 = 0;
          }

          *(a1 + 2884) = v85;
        }

        else
        {
          v85 = *(a1 + 2576);
        }

        v86 = quasar::Decoder::exceedsDoublePartialThreshold(a1, v85 * v18);
        v118 = 0;
        v119 = 0;
        v120 = 0;
        v109 = v19;
        v87 = *a3;
        v32 = (*a3)[24].__begin_;
        v88 = *(*a4 + 3);
        isEnabledDoublePartial = quasar::Decoder::isEnabledDoublePartial(a1);
        *&v138 = 0;
        *__p = 0u;
        v137 = 0u;
        std::string::basic_string[abi:ne200100]<0>(&__p[1], "▁");
        LOBYTE(v138) = 0;
        v90 = *(v32->__r_.__value_.__r.__words[0] + 24);
        BYTE1(v104) = v86;
        LOBYTE(v104) = isEnabledDoublePartial;
        v91 = v32;
        LODWORD(v32) = v113;
        v90(v91, v87 + 2, v88, 1, v113, v111, &v118, a2 + 752, a2 + 776, v104, __p);
        v20 = v110;
        LODWORD(v27) = v112;
        LODWORD(v19) = v109;
        if (SHIBYTE(v137) < 0)
        {
          operator delete(__p[1]);
        }

        __p[0] = &v118;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
      }

      __p[0] = v121;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_161;
    }

    v118 = 0;
    v119 = 0;
    v120 = 0;
    (*(**(a1 + 2456) + 48))(*(a1 + 2456), a1 + 2592, &v118);
    LODWORD(v116) = 0;
    if ((***(a1 + 2456))(*(a1 + 2456), &v116, *(a1 + 2620), *(a1 + 2576), v19, v121, &v118, *(a1 + 2616), *(a1 + 2580), 0.0, v29, __PAIR64__(v18, v111), a1 + 460) && !(v27 % (*(**(*a2 + 16) + 16))(*(*a2 + 16))))
    {
      if (*(a1 + 1969) != 1 || (v101 = quasar::SpeechRequestData::getAudioBuffer(*a4), (quasar::RecogAudioBuffer::serverSideEndPointingEnabled(*v101) & 1) != 0))
      {
        if (quasar::gLogLevel >= 4)
        {
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Utterance detector triggered ", 29);
          MEMORY[0x1B8C84C00](v102, v27);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        v114 = 1;
        goto LABEL_136;
      }

      if (quasar::gLogLevel >= 4)
      {
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Since endpointer is not enabled ignoring utterance ", 51);
        MEMORY[0x1B8C84C00](v103, v27);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      }
    }

    v114 = 0;
LABEL_136:
    v79 = *(a1 + 1956);
    if (v79 >= 1 && v20 > v79)
    {
      if (quasar::gLogLevel >= 4)
      {
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v147 = 0u;
        v148 = 0u;
        v145 = 0u;
        v146 = 0u;
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v137 = 0u;
        v138 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Utterance detector force triggered because current utterance has too many frames: ", 82);
        MEMORY[0x1B8C84C00](v80, v19);
        quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
      }

      v114 = 1;
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }

    goto LABEL_144;
  }

  v114 = 0;
LABEL_161:
  if (*(a1 + 2768) && (v27 > *(a1 + 2472) || !quasar::SpeechRequestData::isRequestEagerResultDurationEmpty(*a4)))
  {
    *(a1 + 2696) = v19;
    *(a1 + 2761) = 0;
    if ((v115 & 0x100000000) != 0 && (*(a1 + 1393) != 1 || v115 == 1))
    {
      *(a1 + 2700) = kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PartialTraceback2(*(a1 + 2432), (a1 + 2728), (a1 + 2752));
    }

    v92 = *(a1 + 2800);
    if (v92)
    {
      *(a1 + 2752) = *(v92 + 80);
    }

    *(a1 + 2756) = v29;
    if (quasar::gLogLevel >= 5)
    {
      __p[1] = 0;
      __p[0] = 0;
      *&v137 = 0;
      quasar::SymbolTableList::lookup((*a3)[20].__end_, (a1 + 2728), (a1 + 2704), __p, 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    *(a1 + 2760) = v115 != 1;
    v117[0] = 0;
    LODWORD(v118) = 0;
    if (quasar::SpeechRequestData::processedRequestEagerResultDuration(*a4, v32) && !quasar::EagerDecision::matches(*(a1 + 2768), **(a1 + 2784)))
    {
      *(a1 + 2761) = 1;
    }

    *(a1 + 2762) = v27 % (*(**(*a2 + 16) + 16))(*(*a2 + 16)) == 0;
    quasar::EagerDecision::eval(*(a1 + 2768), (a1 + 2696), v117, &v118);
    if (v118 || *(a1 + 2001) == 1)
    {
      quasar::SpeechRequestData::getRecogRequestTimer(*a4, __p);
      kaldi::Timer::GetSeconds(5, v93);
      if (__p[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](__p[1]);
      }

      kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(*(a1 + 2432), *(*(a1 + 2432) + 808), 1);
      _ZNSt3__115allocate_sharedB8ne200100IN3fst9VectorFstINS1_6ArcTplINS1_16LatticeWeightTplIfEEiEENS1_11VectorStateIS6_NS_9allocatorIS6_EEEEEENS8_ISB_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }
  }

  if (((v115 != 1) & ~v114) != 0)
  {
    v10 = 3;
  }

  else
  {
    v94 = *a3;
    BYTE6((*a3)[24].__end_cap_.__value_) = v115 == 1;
    v95 = *a4;
    if (v115 == 1)
    {
      v96 = *(v95 + 20);
    }

    else
    {
      v96 = 0;
    }

    BYTE4(v94[24].__end_cap_.__value_) = v96 & 1;
    BYTE5(v94[24].__end_cap_.__value_) = 1;
    if (quasar::SpeechRequestData::isUtteranceDetectionEnabled(v95))
    {
      v97 = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(*a4);
      v99 = *v97;
      v98 = *(v97 + 8);
      if (v98)
      {
        atomic_fetch_add_explicit(&v98->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v99)
      {
        if (quasar::gLogLevel >= 4)
        {
          v151 = 0u;
          v152 = 0u;
          v149 = 0u;
          v150 = 0u;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v139 = 0u;
          v140 = 0u;
          v137 = 0u;
          v138 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Ending audio for secondary audio buffers at utterance boundary", 62);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(__p);
        }

        quasar::MultiChainMultiAudioBuffer::endAudioForSecondaryBuffers(v99, v20);
      }

      if (v98)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v98);
      }

      if (a2[562] == 1 && *(a1 + 2448))
      {
        *(a1 + 2624) = v135;
        *(a1 + 2628) = v134;
        *(a1 + 2632) = v132;
        if ((a1 + 2640) != &__str)
        {
          std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 2640), __str.__begin_, __str.__end_, 0xAAAAAAAAAAAAAAABLL * ((__str.__end_ - __str.__begin_) >> 3));
        }

        if ((a1 + 2664) != &__src)
        {
          std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 2664), __src, v129, (v129 - __src) >> 2);
        }

        *(a1 + 2688) = v127;
      }
    }

    v10 = 4;
  }

  std::unique_ptr<std::vector<kaldi::quasar::BetterTracebackWord>>::reset[abi:ne200100](&v126, 0);
  if (__src)
  {
    v129 = __src;
    operator delete(__src);
  }

  __p[0] = &__str;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  return v10;
}

void sub_1B54A5100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, uint64_t a37, char a38)
{
  if (__p)
  {
    operator delete(__p);
  }

  STACK[0x250] = &a38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  std::unique_ptr<std::vector<kaldi::quasar::BetterTracebackWord>>::reset[abi:ne200100](&STACK[0x200], 0);
  v39 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v39;
    operator delete(v39);
  }

  STACK[0x250] = &STACK[0x228];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x250]);
  _Unwind_Resume(a1);
}

unint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::DecodeMe(uint64_t a1, int a2, int a3, int a4, int a5)
{
  if (a3 && *(a1 + 800) == 1)
  {
    kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ResetDecoder(a1);
  }

  v9 = (*(**(a1 + 696) + 8))(*(a1 + 696), (*(a1 + 808) + *(a1 + 368) - 1));
  if ((*(**(a1 + 696) + 16))(*(a1 + 696), (*(a1 + 808) + *(a1 + 368) - 1)))
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_25;
    }

    goto LABEL_6;
  }

  v12 = 0;
  v13 = -1;
  do
  {
    if (++v13 >= *(a1 + 644))
    {
      break;
    }

    v14 = (*(**(a1 + 696) + 32))(*(a1 + 696), (*(a1 + 812) + *(a1 + 808) + *(a1 + 804) + *(a1 + 368)));
    if (((v14 | a5) & 1) == 0)
    {
      std::vector<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList,std::allocator<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::TokenList>>::resize((a1 + 88), *(a1 + 808) + 2);
      kaldi::Timer::Reset((a1 + 848), v16);
      v18 = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessEmitting<kaldi::DecodableInterface>(a1, *(a1 + 696), *(a1 + 808) + 1, v17);
      kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UpdateTime(a1, _CLOCK_REALTIME);
      kaldi::Timer::Reset((a1 + 848), v19);
      kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessNonemitting(a1, (*(a1 + 808) + 1), v18);
      v15.n128_f64[0] = kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UpdateTime(a1, 1u);
    }

    if (((*(**(a1 + 696) + 16))(*(a1 + 696), (*(a1 + 808) - v14 + *(a1 + 368)), v15) & 1) != 0 || a4)
    {
      if (a2)
      {
        kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(a1, *(a1 + 808) + 1, 0);
      }

      v9 = 1;
      if (!v14)
      {
LABEL_21:
        v23 = *(a1 + 808);
        *(a1 + 808) = v23 + 1;
        if (!a5)
        {
          v12 = 1;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (((v14 | a5) & 1) == 0 && !((*(a1 + 808) + 1) % *(a1 + 556)))
      {
        kaldi::Timer::Reset((a1 + 848), v20);
        v22 = *(a1 + 552) * 0.1;
        kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokens(a1, (*(a1 + 808) + 1), v22);
        v21.n128_f64[0] = kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UpdateTime(a1, 2u);
      }

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    ++*(a1 + 812);
    v23 = *(a1 + 808) - 1;
LABEL_23:
    ++*(a1 + 816);
  }

  while (!(*(**(a1 + 696) + 16))(*(a1 + 696), (v23 + *(a1 + 368)), v21));
  v10 = v12 << 32;
  if (v9)
  {
LABEL_25:
    v11 = 1;
    goto LABEL_26;
  }

LABEL_6:
  v11 = 2;
LABEL_26:
  *(a1 + 800) = v11;
  return v10 | v11;
}

uint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PartialTraceback(uint64_t a1, uint64_t a2, __int128 *a3, int *a4, float *a5, kaldi::WordBoundaryInfo *a6, _DWORD *a7, _DWORD *a8, std::vector<unsigned int> *a9, int *a10, int *a11, _DWORD *a12, char a13, uint64_t *a14, char a15, char a16, unsigned __int8 a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  v20 = *(a1 + 8);
  if (!v20)
  {
    return 0;
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  *&v127 = a10;
  *(&v127 + 1) = a9;
  do
  {
    v25 = *(v20 + 2);
    if (v25)
    {
      v26 = *(a1 + 328) + 32 * v25;
      if (a16)
      {
        v27 = *v20;
        if ((COERCE_UNSIGNED_INT((*(**(a1 + 160) + 32))(*(a1 + 160), *v20)) & 0x7FFFFFFF) <= 0x7F7FFFFF && (!v23 || *(v23 + 12) > *(v26 + 12)) && (COERCE_UNSIGNED_INT((*(**(a1 + 168) + 16))(*(a1 + 168), HIDWORD(v27))) & 0x7FFFFFFF) < 0x7F800000)
        {
          v23 = v26;
        }
      }

      if (!v22 || *(v22 + 12) > *(v26 + 12))
      {
        v22 = v26;
      }
    }

    v20 = v20[2];
    ++v24;
  }

  while (v20);
  if (v22)
  {
    if (a7)
    {
      *a7 = v24;
    }

    if ((a17 & (v23 != 0)) != 0)
    {
      v28 = v23;
    }

    else
    {
      v28 = v22;
    }

    if (a8)
    {
      *a8 = *(v28 + 12);
    }

    v29 = 0;
    v30 = *(a1 + 816);
    if (a4)
    {
      v31 = v28;
      if (v30 >= 1)
      {
        v29 = 0;
        v31 = v28;
        while (v31)
        {
          v32 = *v31;
          if (*v31 > 1)
          {
            v33 = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), v32 >> 1);
            if (!kaldi::SilencePhoneSet::isSilencePhone((a1 + 704), v33))
            {
              break;
            }

            v32 = *v31;
          }

          else if (v32 >> 33 && *(a1 + 612) != v32 >> 33)
          {
            break;
          }

          if ((v32 & 0xFFFFFFFE) != 0)
          {
            ++v29;
          }

          v34 = *(v31 + 8);
          if (v34 >= 0x40)
          {
            v31 = *(a1 + 328) + ((v34 >> 1) & 0x7FFFFFE0);
          }

          else
          {
            v31 = 0;
          }

          v30 = *(a1 + 816);
          if (v29 >= v30)
          {
            goto LABEL_42;
          }
        }

        *a4 = v29;
        v30 = *(a1 + 816);
        goto LABEL_43;
      }
    }

    else
    {
      v31 = v28;
    }

LABEL_42:
    if (!a4)
    {
LABEL_45:
      if (!a16 || (a17 & 1) != 0)
      {
        goto LABEL_83;
      }

      if (!v29 || v29 == *(a1 + 816))
      {
        goto LABEL_82;
      }

      if (!v23)
      {
        goto LABEL_83;
      }

      if (v23 == v28)
      {
        goto LABEL_275;
      }

      if (!v31)
      {
        goto LABEL_82;
      }

      v35 = v23;
      while (1)
      {
        do
        {
          if (*v35 >= 2u)
          {
            v36 = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v35 >> 1);
            if (!kaldi::SilencePhoneSet::isSilencePhone((a1 + 704), v36) && kaldi::TransitionModel::IsFinal(*(a1 + 776), *v35 >> 1))
            {
              v39 = 0;
              goto LABEL_59;
            }
          }

          v37 = v35[2];
          if (v37 < 0x40)
          {
            break;
          }

          v38 = *(a1 + 328);
          v35 = (v38 + ((v37 >> 1) & 0x7FFFFFE0));
        }

        while (v38);
        v35 = 0;
        v39 = 1;
LABEL_59:
        while (1)
        {
          if (*v31 >= 2u)
          {
            v40 = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v31 >> 1);
            if (!kaldi::SilencePhoneSet::isSilencePhone((a1 + 704), v40) && kaldi::TransitionModel::IsFinal(*(a1 + 776), *v31 >> 1))
            {
              break;
            }
          }

          v41 = *(v31 + 8);
          if (v41 >= 0x40)
          {
            v42 = *(a1 + 328);
            v31 = v42 + ((v41 >> 1) & 0x7FFFFFE0);
            if (v42)
            {
              continue;
            }
          }

          v31 = 0;
          goto LABEL_81;
        }

        v43 = v35 == v31 ? 1 : v39;
        if (v43)
        {
          break;
        }

        if (!a18 || (LODWORD(v142[0]) = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v35 >> 1), LODWORD(v140[0]) = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v31 >> 1), *&v144 = v142, v44 = *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a18, v142) + 8), *&v144 = v140, v44 != *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a18, v140) + 8)))
        {
          if (*(*(*(a1 + 776) + 96) + 4 * (*v35 >> 1)) != *(*(*(a1 + 776) + 96) + 4 * (*v31 >> 1)))
          {
            break;
          }
        }

        v45 = *(v31 + 8);
        if (v45 >= 0x40)
        {
          v31 = *(a1 + 328) + ((v45 >> 1) & 0x7FFFFFE0);
        }

        else
        {
          v31 = 0;
        }

        v46 = v35[2];
        if (v46 < 0x40)
        {
          v35 = 0;
          break;
        }

        v47 = *(a1 + 328);
        v35 = (v47 + ((v46 >> 1) & 0x7FFFFFE0));
        if (!v47 || !v31)
        {
          break;
        }
      }

LABEL_81:
      if (v35 == v31)
      {
LABEL_275:
        v28 = v23;
      }

      else
      {
LABEL_82:
        v23 = 0;
      }

LABEL_83:
      v48 = *(a1 + 816) - 1;
      v146 = 0;
      if (a6 && a20)
      {
        operator new();
      }

      if (!a6)
      {
        v49 = 0;
        v131 = 1;
        goto LABEL_122;
      }

      if (a13)
      {
        v131 = 0;
        v49 = 0;
        goto LABEL_122;
      }

      if (kaldi::g_kaldi_verbose_level >= 3)
      {
        kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Move the partial traceback to the end of word phone", 51);
        kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
      }

      if (!v28)
      {
        v131 = 0;
        v49 = 0;
        v23 = 0;
        goto LABEL_122;
      }

      v23 = 0;
      v50 = 0;
      v51 = v28;
      v52 = v48;
      while (1)
      {
        v49 = v28;
        if (v146)
        {
          kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::StepBackward(v146, v28);
        }

        v53 = *v28;
        if (*v28 >> 33)
        {
          v54 = v28;
        }

        else
        {
          v54 = v50;
        }

        if (a16)
        {
          v50 = v54;
        }

        if (v53 < 2)
        {
          goto LABEL_103;
        }

        v55 = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), v53 >> 1);
        if (kaldi::WordBoundaryInfo::TypeOfPhone(a6, v55) == 2)
        {
          break;
        }

        if (a16)
        {
          isSilencePhone = kaldi::SilencePhoneSet::isSilencePhone((a1 + 704), v55);
          v56 = 0;
          if (!isSilencePhone)
          {
            v50 = 0;
          }
        }

        else
        {
          v56 = 0;
        }

LABEL_104:
        v48 -= (*v28 & 0xFFFFFFFE) != 0;
        v57 = *(v28 + 8);
        if (v57 <= 0x3F)
        {
          v131 = 0;
          if (v56)
          {
            v48 = v52;
            v28 = v51;
          }

          else
          {
            v28 = 0;
          }

          if (!v56)
          {
            v23 = v50;
          }

LABEL_122:
          v142[0] = 0;
          v142[1] = 0;
          v143 = 0;
          v140[0] = 0;
          v140[1] = 0;
          v141 = 0;
          if (a5)
          {
            v61 = *a5;
          }

          else
          {
            v61 = 0.0;
          }

          v137 = 0;
          v138 = 0;
          v139 = 0;
          v135 = 0;
          v136 = -1;
          __p = 0;
          v134 = 0;
          if (a11)
          {
            v62 = *a11;
            if (v28)
            {
LABEL_127:
              v63 = 0;
              v128 = 0;
              v64 = 0;
              if (v48 < 0 || v23 == 0)
              {
                v66 = v28;
              }

              else
              {
                v66 = v23;
              }

              do
              {
                if (v146)
                {
                  v67 = v49 == 0;
                }

                else
                {
                  v67 = 0;
                }

                if (v67)
                {
                  kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::StepBackward(v146, v28);
                }

                if (v49 == v28)
                {
                  v49 = 0;
                }

                v68 = *v66 >> 33;
                LODWORD(v147[0]) = v68;
                if (a5 != 0 && !v64 && v48 >= v62)
                {
                  v69 = (*(**(a1 + 168) + 56))(*(a1 + 168), *(v66 + 28));
                  v64 = v69 != INFINITY;
                  if (v69 != INFINITY)
                  {
                    v61 = v69;
                  }

                  LODWORD(v68) = v147[0];
                }

                if (v68 >= 1)
                {
                  if (a5 && v142[1] == v142[0] && v48 >= v62)
                  {
                    v70 = (*(**(a1 + 168) + 56))(*(a1 + 168), *(v66 + 28));
                    if (v70 == INFINITY)
                    {
                      v70 = v61;
                    }

                    *a5 = v70;
                  }

                  std::vector<int>::push_back[abi:ne200100](v142, v147);
                  if (a15)
                  {
                    LODWORD(v144) = v48 + 1;
                    std::vector<int>::push_back[abi:ne200100](&__p, &v144);
                  }

                  if (a12 && v48 >= v62)
                  {
                    ++*a12;
                  }
                }

                if (*v28 >= 2u)
                {
                  LODWORD(v144) = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v28 >> 1);
                  std::vector<int>::push_back[abi:ne200100](v140, &v144);
                }

                v71 = v131;
                if (v48 < v62)
                {
                  v71 = 1;
                }

                if (v71 & 1 | (v127 == 0) || *v28 < 2u)
                {
                  v72 = v63;
                }

                else
                {
                  v75 = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v28 >> 1);
                  v72 = kaldi::WordBoundaryInfo::TypeOfPhone(a6, v75);
                  if ((v72 & 0xFFFFFFFD) == 1)
                  {
                    v128 += kaldi::TransitionModel::IsFinal(*(a1 + 776), *v28 >> 1);
                  }

                  if ((v63 & 0xFFFFFFFD) == 1 && v72 != v63)
                  {
                    if (v136 != -1 && kaldi::g_kaldi_verbose_level >= 3)
                    {
                      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Pause error - Consecutive word-begin", 36);
                      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
                    }

                    LODWORD(v136) = v48 + 1;
                    std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v137, &v136);
                    v136 = -1;
                  }

                  if ((v72 & 0xFFFFFFFE) == 2 && v72 != v63)
                  {
                    if (HIDWORD(v136) != -1 && kaldi::g_kaldi_verbose_level >= 3)
                    {
                      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Pause error - Consecutive word-end", 34);
                      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
                    }

                    HIDWORD(v136) = v48;
                  }
                }

                v73 = *(v28 + 8);
                if (v73 <= 0x3F)
                {
                  break;
                }

                v48 -= (*v28 & 0xFFFFFFFELL) != 0;
                v74 = *(a1 + 328);
                v66 = v74 + ((v73 >> 1) & 0x7FFFFFE0);
                v28 = v66;
                v63 = v72;
              }

              while (v74);
              v77 = v142[0];
              v76 = v142[1];
              v78 = (v72 & 0xFFFFFFFD) == 1;
              v79 = a2;
              if (v142[0] != v142[1])
              {
                v80 = v142[1] - 4;
                if (v142[1] - 4 > v142[0])
                {
                  v81 = v142[0] + 4;
                  do
                  {
                    v82 = *(v81 - 1);
                    *(v81 - 1) = *v80;
                    *v80 = v82;
                    v80 -= 4;
                    v83 = v81 >= v80;
                    v81 += 4;
                  }

                  while (!v83);
                }
              }

LABEL_190:
              v84 = v140[0];
              v85 = v140[1];
              v86 = v140[1] - 4;
              if (v140[0] != v140[1] && v86 > v140[0])
              {
                v88 = v140[0] + 4;
                do
                {
                  v89 = *(v88 - 1);
                  *(v88 - 1) = *v86;
                  *v86 = v89;
                  v86 -= 4;
                  v83 = v88 >= v86;
                  v88 += 4;
                }

                while (!v83);
              }

              v90 = *a14;
              v91 = a14[1];
              if (*a14 != v91)
              {
                while (!a15 || v76 - v77 != *(v90 + 8) - *v90 || memcmp(v77, *v90, v76 - v77))
                {
                  v90 += 24;
                  if (v90 == v91)
                  {
                    goto LABEL_203;
                  }
                }

                *a11 = *__p;
                if (a12)
                {
                  *a12 = 0;
                }

                if (a5)
                {
                  *a5 = 9.0;
                }
              }

LABEL_203:
              *v142 = *v79;
              *v79 = v77;
              *(v79 + 8) = v76;
              v92 = *(v79 + 16);
              *(v79 + 16) = v143;
              v143 = v92;
              v93 = *a3;
              *a3 = v84;
              *(a3 + 1) = v85;
              *v140 = v93;
              v94 = *(a3 + 2);
              *(a3 + 2) = v141;
              v141 = v94;
              if (a10)
              {
                *a10 = v128;
              }

              if (a6 && a9)
              {
                v96 = HIDWORD(v136) != -1 && v136 == -1;
                if (v96 && v78)
                {
                  LODWORD(v136) = 0;
                  std::vector<std::pair<int,int>>::push_back[abi:ne200100](&v137, &v136);
                }

                v98 = v137;
                v97 = v138;
                if (v137 != v138)
                {
                  v99 = (v138 - 8);
                  if (v138 - 8 > v137)
                  {
                    v100 = v137;
                    do
                    {
                      v101 = *v100;
                      *v100 = *v99;
                      *v99 = v101;
                      v102 = v100[1];
                      v100[1] = v99[1];
                      v99[1] = v102;
                      v100 += 2;
                      v99 -= 2;
                    }

                    while (v100 < v99);
                  }
                }

                if (v97 != v98)
                {
                  v103 = 0;
                  v104 = 0;
                  while (1)
                  {
                    v105 = *&v98[v103];
                    if (v105 != -1)
                    {
                      break;
                    }

                    if (kaldi::g_kaldi_verbose_level > 2)
                    {
                      goto LABEL_229;
                    }

                    v108 = &v98[v103 + 4];
LABEL_236:
                    ++v104;
                    v98 = v137;
                    v110 = v138;
                    v111 = (v138 - v137) >> 3;
                    if (v111 > v104 && *v108 > *(v137 + v103 + 8) && kaldi::g_kaldi_verbose_level >= 3)
                    {
                      kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
                      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Pause error - Word spans into next word", 39);
                      kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
                      v98 = v137;
                      v110 = v138;
                      v111 = (v138 - v137) >> 3;
                    }

                    v103 += 8;
                    if (v111 <= v104)
                    {
                      goto LABEL_245;
                    }
                  }

                  v106 = kaldi::g_kaldi_verbose_level;
                  if (*&v98[v103 + 4] == -1 && kaldi::g_kaldi_verbose_level > 2)
                  {
LABEL_229:
                    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Pause error - Word with missing startframe or endframe", 54);
                    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
                    v105 = *&v98[v103];
                    v106 = kaldi::g_kaldi_verbose_level;
                  }

                  v108 = &v98[8 * v104 + 4];
                  if (v105 > *&v98[v103 + 4] && v106 >= 3)
                  {
                    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Pause error - Word-end before word-begin", 40);
                    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
                  }

                  goto LABEL_236;
                }

                v111 = 0;
                v110 = v98;
LABEL_245:
                if (v111 > v128 && kaldi::g_kaldi_verbose_level > 2)
                {
                  kaldi::KaldiVlogMessage::KaldiVlogMessage(&v144, 3);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v144, "Pause error - Found more word times than words", 46);
                  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v144);
                  v98 = v137;
                  v110 = v138;
                }

                a9->__end_ = a9->__begin_;
                if ((v110 - v98) >= 9)
                {
                  v113 = 0;
                  v114 = 1;
                  do
                  {
                    v115 = *&v98[v113 + 4];
                    v116 = *&v98[v113 + 8];
                    v117 = __OFSUB__(v116, v115);
                    v118 = v116 - v115;
                    if ((v118 < 0) ^ v117 | (v118 == 0))
                    {
                      v119 = 0;
                    }

                    else
                    {
                      v119 = 1;
                    }

                    v120 = v118 - v119;
                    if (v120 >= 0)
                    {
                      LODWORD(v144) = v120;
                      std::vector<int>::push_back[abi:ne200100](&a9->__begin_, &v144);
                      v98 = v137;
                      v110 = v138;
                    }

                    ++v114;
                    v113 += 8;
                  }

                  while (v114 < (v110 - v98) >> 3);
                }

                if (v128 > 0)
                {
                  v121 = (v128 - 1);
                  if (v121 > a9->__end_ - a9->__begin_)
                  {
                    std::vector<int>::resize(a9, v121);
                  }
                }
              }

              if (v146)
              {
                kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::Finalize(v146);
                kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback::GetWords(v146, &v144);
                std::vector<kaldi::quasar::BetterTracebackWord>::__vdeallocate(a20);
                *a20 = v144;
                a20[2] = v145;
                v145 = 0;
                v144 = 0uLL;
                v147[0] = &v144;
                std::vector<kaldi::quasar::BetterTracebackWord>::__destroy_vector::operator()[abi:ne200100](v147);
              }

              v22 = *(v79 + 8) != *v79;
              if (__p)
              {
                v134 = __p;
                operator delete(__p);
              }

              if (v137)
              {
                v138 = v137;
                operator delete(v137);
              }

              if (v140[0])
              {
                v140[1] = v140[0];
                operator delete(v140[0]);
              }

              if (v142[0])
              {
                v142[1] = v142[0];
                operator delete(v142[0]);
              }

              std::unique_ptr<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback,std::default_delete<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback>>::reset[abi:ne200100](&v146, 0);
              return v22;
            }
          }

          else
          {
            v62 = 0;
            if (v28)
            {
              goto LABEL_127;
            }
          }

          v76 = 0;
          v77 = 0;
          v78 = 0;
          v128 = 0;
          v79 = a2;
          goto LABEL_190;
        }

        v58 = *(a1 + 328);
        v59 = (v57 >> 1) & 0x7FFFFFE0;
        v28 = v58 + v59;
        if (!v56)
        {
          v52 = v48;
          v51 = v58 + v59;
          v23 = v50;
        }

        if (!v58)
        {
LABEL_116:
          v131 = 0;
          v48 = v52;
          v28 = v51;
          goto LABEL_122;
        }
      }

      if (kaldi::TransitionModel::IsFinal(*(a1 + 776), *v28 >> 1))
      {
        goto LABEL_116;
      }

LABEL_103:
      v56 = 1;
      goto LABEL_104;
    }

LABEL_43:
    if (v29 == v30)
    {
      *a4 = v30;
      v29 = v30;
    }

    goto LABEL_45;
  }

  return v22;
}

void sub_1B54A65EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, std::locale a41)
{
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a41);
  std::unique_ptr<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback,std::default_delete<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::BetterTraceback>>::reset[abi:ne200100]((v41 - 120), 0);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PartialTraceback2(uint64_t a1, const void **a2, _DWORD *a3)
{
  a2[1] = *a2;
  *a3 = 0;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = INFINITY;
  do
  {
    v9 = *v3;
    v10 = (*(**(a1 + 160) + 32))(*(a1 + 160), *v3);
    if (v10 != INFINITY)
    {
      v11 = *(a1 + 328) + 32 * *(v3 + 2);
      v12 = v10 + *(v11 + 12);
      v13 = v12 + (*(**(a1 + 168) + 16))(*(a1 + 168), HIDWORD(v9));
      if (v8 > v13)
      {
        v8 = v13;
        v7 = v11;
      }
    }

    v3 = v3[2];
  }

  while (v3);
  result = 0;
  if (v7 && v8 != INFINITY)
  {
    v15 = 0;
    *a3 = 0;
    while (1)
    {
      v16 = *v7 >> 33;
      if (v16 && *(a1 + 612) != v16)
      {
        v27 = *v7 >> 33;
        std::vector<int>::push_back[abi:ne200100](a2, &v27);
      }

      if (v15)
      {
        break;
      }

      if (*v7 >= 2u)
      {
        v17 = kaldi::TransitionModel::TransitionIdToPhone(*(a1 + 776), *v7 >> 1);
        if (!kaldi::SilencePhoneSet::isSilencePhone((a1 + 704), v17))
        {
          break;
        }

        v15 = 0;
        ++*a3;
      }

      else
      {
        v15 = 0;
      }

LABEL_19:
      v18 = *(v7 + 8);
      if (v18 >= 0x40)
      {
        v19 = *(a1 + 328);
        v7 = v19 + ((v18 >> 1) & 0x7FFFFFE0);
        if (v19)
        {
          continue;
        }
      }

      v20 = *a2;
      v21 = a2[1];
      v22 = v21 - 4;
      if (*a2 != v21 && v22 > v20)
      {
        v24 = v20 + 4;
        do
        {
          v25 = *(v24 - 1);
          *(v24 - 1) = *v22;
          *v22 = v25;
          v22 -= 4;
          v26 = v24 >= v22;
          v24 += 4;
        }

        while (!v26);
      }

      return 1;
    }

    v15 = 1;
    goto LABEL_19;
  }

  return result;
}

void quasar::OnlineLatticeBiglmFasterDecoder::aggregateEpFeatures(uint64_t a1, int *a2, int *a3, int *a4, _DWORD *a5, __int128 **a6, char **a7, int *a8, char a9, int a10)
{
  if (!*(a1 + 2448))
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
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
    *__from_s = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__from_s);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__from_s, "This should only be called if endPointer exists");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__from_s);
  }

  v14 = *a2;
  v15 = *a8;
  v16 = *a3;
  v17 = *a4;
  *a2 += *(a1 + 2624);
  if (v16 == v17)
  {
    *a3 += *(a1 + 2628);
  }

  *a4 += a10;
  if (v14 <= 0)
  {
    *a5 = *(a1 + 2632);
  }

  __from_s[0] = 0;
  __from_s[1] = 0;
  *&v41 = 0;
  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string const*>,std::__wrap_iter<std::string const*>>(__from_s, 0, *(a1 + 2640), *(a1 + 2648), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2648) - *(a1 + 2640)) >> 3));
  std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(__from_s, __from_s[1], *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
  v18 = *a6;
  *a6 = *__from_s;
  *__from_s = v18;
  v19 = a6[2];
  a6[2] = v41;
  *&v41 = v19;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  if (*(a1 + 2688) >= 1 && v15 >= 1)
  {
    LODWORD(__p) = *(a1 + 2628);
    std::vector<int>::push_back[abi:ne200100](&v37, &__p);
  }

  __p = 0;
  v35 = 0;
  v36 = 0;
  (*(**(a1 + 2448) + 48))(*(a1 + 2448), &v37, &__p);
  v20 = *a7;
  v21 = a7[1];
  if (a9)
  {
    v22 = v21 - v20;
    if (v21 != v20)
    {
      v23 = 0;
      v24 = v22 >> 2;
      v25 = __p;
      if (v24 <= 1)
      {
        v24 = 1;
      }

      do
      {
        v26 = *&v20[4 * v23] || *(*(a1 + 2664) + 4 * v23) || v25[v23] != 0;
        *&v20[4 * v23++] = v26;
      }

      while (v24 != v23);
    }
  }

  else
  {
    v27 = v21 - v20;
    if (v27)
    {
      v28 = v27 >> 2;
      v29 = *(a1 + 2664);
      v30 = __p;
      if (v28 <= 1)
      {
        v28 = 1;
      }

      do
      {
        v32 = *v29++;
        v31 = v32;
        v33 = *v30++;
        *v20 += v33 + v31;
        v20 += 4;
        --v28;
      }

      while (v28);
    }
  }

  *a8 += *(a1 + 2688);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  v37 = __from_s;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v37);
}

uint64_t std::vector<std::vector<quasar::Token>>::emplace_back<std::vector<quasar::Token>>(const void **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
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

    v17[4] = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v10);
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
    v12 = a1[1] - *a1;
    v13 = v11 - v12;
    memcpy((v11 - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    a1[1] = v6;
    v15 = a1[2];
    a1[2] = 0;
    v17[2] = v14;
    v17[3] = v15;
    v17[0] = v14;
    v17[1] = v14;
    std::__split_buffer<std::vector<quasar::Token>>::~__split_buffer(v17);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  a1[1] = v6;
  return v6 - 24;
}

void quasar::betterTracebackWordsToTokens(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = (*(**(*a2 + 16) + 24))(*(*a2 + 16));
  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0;
  v8 = *a1;
  if (a1[1] != *a1)
  {
    v9 = 0;
    v10 = 0;
    v23 = v7;
    do
    {
      quasar::Token::Token(__p);
      quasar::SymbolTableList::lookup(*(*a3 + 488), *(v8 + v9 + 36), &v24);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      *__p = v24;
      v27 = v25;
      *&v28[4] = (v23 * *(v8 + v9 + 24));
      v11 = *(v8 + v9 + 28);
      v12.i32[0] = 1;
      v12.i32[1] = vceq_s32(v11, vdup_lane_s32(v11, 1)).u8[0] & 1;
      *&v28[8] = vcvt_u32_f32(vmul_n_f32(vcvt_f32_s32(vadd_s32(v11, v12)), v23));
      v28[20] = 1;
      v13 = a4[1];
      if (v13 >= a4[2])
      {
        v21 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(a4, __p);
        v22 = SHIBYTE(v42);
        a4[1] = v21;
        if (v22 < 0)
        {
          operator delete(v41);
        }
      }

      else
      {
        v14 = *__p;
        *(v13 + 16) = v27;
        *v13 = v14;
        __p[1] = 0;
        v27 = 0;
        __p[0] = 0;
        v15 = *&v28[15];
        *(v13 + 24) = *v28;
        *(v13 + 39) = v15;
        v16 = v30;
        *(v13 + 48) = v29;
        *(v13 + 64) = v16;
        *(v13 + 72) = 0;
        v30 = 0;
        v29 = 0uLL;
        *(v13 + 80) = 0;
        *(v13 + 88) = 0;
        *(v13 + 72) = v31;
        *(v13 + 88) = v32;
        v31 = 0uLL;
        v32 = 0;
        v17 = v33;
        *(v13 + 112) = v34;
        *(v13 + 120) = 0;
        *(v13 + 96) = v17;
        v34 = 0;
        v33 = 0uLL;
        *(v13 + 128) = 0;
        *(v13 + 136) = 0;
        *(v13 + 120) = v35;
        *(v13 + 136) = v36;
        v35 = 0uLL;
        v36 = 0;
        v18 = v37;
        *(v13 + 160) = v38;
        *(v13 + 144) = v18;
        v38 = 0;
        v37 = 0uLL;
        LODWORD(v16) = v39;
        *(v13 + 172) = v40;
        *(v13 + 168) = v16;
        v19 = v41;
        *(v13 + 192) = v42;
        *(v13 + 176) = v19;
        v42 = 0;
        v41 = 0uLL;
        v20 = v43;
        *(v13 + 216) = v44;
        *(v13 + 200) = v20;
        a4[1] = v13 + 224;
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      *&v24 = &v35;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v24);
      if (SHIBYTE(v34) < 0)
      {
        operator delete(v33);
      }

      *&v24 = &v31;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v24);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v29);
      }

      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      ++v10;
      v8 = *a1;
      v9 += 40;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) > v10);
  }
}

void sub_1B54A7010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::Token::~Token(va);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::SpeechRequestData>::operator=[abi:ne200100](void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[1];
  *a1 = v4;
  a1[1] = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void quasar::OnlineLatticeBiglmFasterDecoder::clearCaches(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  v1 = *(this + 285);
  for (i = *(this + 286); v1 != i; v1 += 2)
  {
    v3 = *v1;
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel(v3, __p, &v6);
    (*(*v6 + 24))(v6);
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1B54A713C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::endTheUtteranceAfterPauseRecognition(std::mutex *this)
{
  std::mutex::lock(this + 44);
  this[43].__m_.__opaque[49] = 1;

  std::mutex::unlock(this + 44);
}

void quasar::OnlineLatticeBiglmFasterDecoder::endTheUtteranceAfterResumeRecognition(std::mutex *this)
{
  std::mutex::lock(this + 44);
  this[43].__m_.__opaque[50] = 1;

  std::mutex::unlock(this + 44);
}

void quasar::OnlineLatticeBiglmFasterDecoder::resetPauseResumeState(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  std::mutex::lock(this + 44);
  *(this + 2809) = 0;

  std::mutex::unlock(this + 44);
}

void quasar::MuxHelper::finalizeResult(uint64_t *a1, uint64_t **a2, uint64_t a3, char **a4, uint64_t *a5)
{
  v7 = *a5;
  v6 = a5[1];
  if (!a2[2])
  {
    if (v6 != v7)
    {
      do
      {
        v28 = v6 - 24;
        std::__tree<std::string>::destroy(v6 - 24, *(v6 - 16));
        v6 = v28;
      }

      while (v28 != v7);
    }

    a5[1] = v7;
    return;
  }

  if (v6 != v7)
  {
    do
    {
      v12 = v6 - 24;
      std::__tree<std::string>::destroy(v6 - 24, *(v6 - 16));
      v6 = v12;
    }

    while (v12 != v7);
  }

  a5[1] = v7;
  v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3);
  *&__p.__r_.__value_.__r.__words[1] = 0uLL;
  __p.__r_.__value_.__r.__words[0] = &__p.__r_.__value_.__l.__size_;
  std::vector<std::set<std::string>>::resize(a5, v13, &__p);
  std::__tree<std::string>::destroy(&__p, __p.__r_.__value_.__l.__size_);
  if (*a3 == *(a3 + 8))
  {
    return;
  }

  std::set<std::string>::set[abi:ne200100](&v61, a2);
  v14 = *a3;
  if (*(a3 + 8) != *a3)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *a5;
      quasar::MuxHelper::choice2mux(a1, &v14[v15], a2, &__p);
      if (v47 == 1)
      {
        v18 = (v17 + v15 * 8);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(v18, &__p.__r_.__value_.__l.__data_);
          std::__tree<std::string>::__erase_unique<std::string>(&v61, &__p.__r_.__value_.__l.__data_);
        }

        else
        {
          if (v18 != a2)
          {
            std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v18, *a2, a2 + 1);
          }

          std::__tree<std::string>::destroy(&v61, v62);
          v62 = 0;
          v63 = 0;
          v61 = &v62;
        }
      }

      if (v47 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v16;
      v14 = *a3;
      v15 += 3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 8) - *a3) >> 3) > v16);
  }

  if (!v63)
  {
    goto LABEL_67;
  }

  v58 = 0;
  v59 = 0;
  v60 = 0;
  v20 = *v14;
  v21 = v14[1];
  if (*v14 == v21)
  {
    goto LABEL_49;
  }

  do
  {
    quasar::Token::Token(&__p, v20);
    quasar::MuxHelper::tok2mux(a1, v20, a2, &v45);
    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      v22 = v45.__r_.__value_.__l.__size_;
      operator delete(v45.__r_.__value_.__l.__data_);
      if (!v22)
      {
        goto LABEL_28;
      }
    }

    else if (!*(&v45.__r_.__value_.__s + 23))
    {
      goto LABEL_28;
    }

    quasar::MuxHelper::scrubToken(a1, v20, &v45);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v45;
LABEL_28:
    v23 = v59;
    if (v59 >= v60)
    {
      v24 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v58, &__p);
    }

    else
    {
      quasar::Token::Token(v59, &__p);
      v24 = (v23 + 224);
    }

    v59 = v24;
    if (v57 < 0)
    {
      operator delete(v56);
    }

    if (v55 < 0)
    {
      operator delete(v54);
    }

    v45.__r_.__value_.__r.__words[0] = &v53;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v45);
    if (v52 < 0)
    {
      operator delete(v51);
    }

    v45.__r_.__value_.__r.__words[0] = &v50;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v45);
    if (v49 < 0)
    {
      operator delete(v48);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v20 = (v20 + 224);
  }

  while (v20 != v21);
  v25 = v58;
  v26 = v59;
  v27 = **a3;
  if (v59 - v58 == *(*a3 + 8) - v27)
  {
    while (v25 != v26)
    {
      if (!quasar::Token::operator==(v25, v27))
      {
        goto LABEL_50;
      }

      v25 = (v25 + 224);
      v27 += 28;
    }

LABEL_49:
    std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(*a5, v61, &v62);
  }

  else
  {
LABEL_50:
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a3, &v58);
    __p.__r_.__value_.__r.__words[0] = v61;
    v45.__r_.__value_.__r.__words[0] = &v62;
    v29 = a5[1];
    if (v29 >= a5[2])
    {
      v30 = std::vector<std::set<std::string>>::__emplace_back_slow_path<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a5, &__p, &v45);
    }

    else
    {
      std::set<std::string>::set[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a5[1], v61, &v62);
      v30 = v29 + 24;
      a5[1] = v29 + 24;
    }

    a5[1] = v30;
    v31 = *a4;
    v32 = a4[1];
    if (*a4 != v32)
    {
      v33 = a4[2];
      if (v32 >= v33)
      {
        v35 = v32 - v31;
        v36 = (v32 - v31) >> 3;
        v37 = v36 + 1;
        if ((v36 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v38 = v33 - v31;
        if (v38 >> 2 > v37)
        {
          v37 = v38 >> 2;
        }

        v39 = v38 >= 0x7FFFFFFFFFFFFFF8;
        v40 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v39)
        {
          v40 = v37;
        }

        if (v40)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a4, v40);
        }

        v41 = (8 * v36);
        v42 = *(v32 - 1);
        v43 = &v41[-((v32 - v31) >> 3)];
        *v41 = v42;
        v34 = (v41 + 1);
        memcpy(v43, v31, v35);
        v44 = *a4;
        *a4 = v43;
        a4[1] = v34;
        a4[2] = 0;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        *v32 = *(v32 - 1);
        v34 = v32 + 8;
      }

      a4[1] = v34;
    }
  }

  __p.__r_.__value_.__r.__words[0] = &v58;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
LABEL_67:
  std::__tree<std::string>::destroy(&v61, v62);
}

void sub_1B54A7730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  __p = (v19 - 144);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::string>::destroy(v19 - 120, *(v19 - 112));
  _Unwind_Resume(a1);
}

void std::vector<std::set<std::string>>::resize(uint64_t a1, unint64_t a2, const void ***a3)
{
  v4 = *(a1 + 8);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 >= v5;
  v7 = a2 - v5;
  if (v7 != 0 && v6)
  {

    std::vector<std::set<std::string>>::__append(a1, v7, a3);
  }

  else if (!v6)
  {
    v8 = *a1 + 24 * a2;
    if (v4 != v8)
    {
      do
      {
        v9 = v4 - 24;
        std::__tree<std::string>::destroy(v4 - 24, *(v4 - 16));
        v4 = v9;
      }

      while (v9 != v8);
    }

    *(a1 + 8) = v8;
  }
}

void quasar::MuxHelper::choice2mux(void *a1@<X0>, std::string **a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  memset(&v16, 0, sizeof(v16));
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
LABEL_21:
    *a4 = v16;
    a4[1].__r_.__value_.__s.__data_[0] = 1;
    return;
  }

  while (1)
  {
    quasar::MuxHelper::tok2mux(a1, v5, a3, &__p);
    v9 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_18;
    }

    v11 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    v12 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v16.__r_.__value_.__l.__size_;
    }

    if (v11)
    {
      if (v11 != size)
      {
        break;
      }

      v13 = (v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v16 : v16.__r_.__value_.__r.__words[0];
      v14 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      if (memcmp(v13, v14, size))
      {
        break;
      }
    }

    std::string::operator=(&v16, &__p);
    LOBYTE(v9) = *(&__p.__r_.__value_.__s + 23);
LABEL_18:
    if ((v9 & 0x80) != 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v5 = (v5 + 224);
    if (v5 == v6)
    {
      goto LABEL_21;
    }
  }

  a4->__r_.__value_.__s.__data_[0] = 0;
  a4[1].__r_.__value_.__s.__data_[0] = 0;
  if (v9 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((*(&v16.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_27;
    }
  }

  else if (v12 < 0)
  {
LABEL_27:
    operator delete(v16.__r_.__value_.__l.__data_);
  }
}

void sub_1B54A79BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::MuxHelper::tok2mux(void *a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  if (a3 + 8 == std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a3, &a2[6].__r_.__value_.__l.__data_))
  {
    goto LABEL_18;
  }

  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) == 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = a2->__r_.__value_.__r.__words[0];
  }

  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v9 = &v8[size];
    v10 = v8;
    v11 = v9;
    do
    {
      v12 = v10;
      v13 = v10;
      while (1)
      {
        v14 = *v13++;
        if (v14 == 92)
        {
          break;
        }

        v12 = v13;
        if (v13 == v9)
        {
          v12 = v11;
          goto LABEL_14;
        }
      }

      v10 = v12 + 1;
      v11 = v12;
    }

    while (v13 != v9);
LABEL_14:
    if (v12 != v9 && v12 - v8 != -1)
    {
      std::string::basic_string(&__p, a2, v12 - v8, 0xFFFFFFFFFFFFFFFFLL, &v18);
      v15 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a1, &__p.__r_.__value_.__l.__data_);
      v16 = v15;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (v16)
        {
          goto LABEL_18;
        }
      }

      else if (v15)
      {
LABEL_18:
        std::string::basic_string[abi:ne200100]<0>(a4, "");
        return;
      }
    }
  }

  if (SHIBYTE(a2[6].__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a4, a2[6].__r_.__value_.__l.__data_, a2[6].__r_.__value_.__l.__size_);
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *&a2[6].__r_.__value_.__l.__data_;
    a4->__r_.__value_.__r.__words[2] = a2[6].__r_.__value_.__r.__words[2];
  }
}

void sub_1B54A7B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::MuxHelper::scrubToken(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *(a2 + 23);
  v6 = v5;
  v7 = *(a2 + 8);
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a2 + 8);
  }

  if (v5 && a1[8])
  {
    v9 = quasar::QsrText::SingletonInstance(a1);
    MetadataStartIndex = quasar::QsrText::getMetadataStartIndex(v9, a2);
    std::string::basic_string(&v24, a2, 0, MetadataStartIndex, &v23);
    if (*(a2 + 23) >= 0)
    {
      v11 = *(a2 + 23);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    v12 = std::string::basic_string(&v23, a2, MetadataStartIndex, v11, v21);
    v21[0] = 0;
    v21[1] = 0;
    v22 = 0;
    v13 = quasar::QsrText::SingletonInstance(v12);
    if (quasar::QsrText::decodeQsrText(v13, &v24, v21))
    {
      v19[0] = 0;
      v19[1] = 0;
      v20 = 0;
      v14 = quasar::TextSanitizer::sanitize(a1[8], v21);
      if (v14 == 1)
      {
        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
        }

        else
        {
          *&a3->__r_.__value_.__l.__data_ = *a2;
          a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
        }
      }

      else
      {
        __p[0] = 0;
        __p[1] = 0;
        v18 = 0;
        v16 = quasar::QsrText::SingletonInstance(v14);
        if (quasar::QsrText::encodeTokenQsrText(v16, v19, __p))
        {
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v23.__r_.__value_.__l.__data_, a3);
        }

        else if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
        }

        else
        {
          *&a3->__r_.__value_.__l.__data_ = *a2;
          a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(v19[0]);
      }
    }

    else if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a3, *a2, *(a2 + 8));
    }

    else
    {
      *&a3->__r_.__value_.__l.__data_ = *a2;
      a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  else if (v6 < 0)
  {
    v15 = *a2;

    std::string::__init_copy_ctor_external(a3, v15, v7);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *a2;
    a3->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }
}

void sub_1B54A7D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (*(v33 - 33) < 0)
  {
    operator delete(*(v33 - 56));
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::set<std::string>>::__append(void **result, unint64_t a2, const void ***a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 3) >= a2)
  {
    if (a2)
    {
      v12 = &v7[24 * a2];
      v13 = 24 * a2;
      do
      {
        result = std::set<std::string>::set[abi:ne200100](v7, a3);
        v7 += 24;
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

    v25 = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(result, v11);
    }

    v14 = 24 * v8;
    v22 = 0;
    v23 = v14;
    v24 = v14;
    v15 = 3 * a2;
    v16 = v14 + 24 * a2;
    v17 = 8 * v15;
    do
    {
      std::set<std::string>::set[abi:ne200100](v14, a3);
      v14 += 24;
      v17 -= 24;
    }

    while (v17);
    *&v24 = v16;
    v18 = v5[1];
    v19 = v23 + *v5 - v18;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(v5, *v5, v18, v19);
    v20 = *v5;
    *v5 = v19;
    v21 = v5[2];
    *(v5 + 1) = v24;
    *&v24 = v20;
    *(&v24 + 1) = v21;
    v22 = v20;
    v23 = v20;
    return std::__split_buffer<std::set<std::string>>::~__split_buffer(&v22);
  }

  return result;
}

void sub_1B54A7F70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::set<std::string>>::__emplace_back_slow_path<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t *a1, const void ***a2, const void ****a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if (v3 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v7 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::AlternativeSelectionSpan::Alternative>>(a1, v7);
  }

  v14 = 0;
  v15 = 24 * v3;
  v16 = 24 * v3;
  std::set<std::string>::set[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((24 * v3), *a2, *a3);
  *&v16 = 24 * v3 + 24;
  v8 = a1[1];
  v9 = 24 * v3 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<std::set<std::string>>::~__split_buffer(&v14);
  return v13;
}

void sub_1B54A80C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::set<std::string>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::DynamicClassTagDict::DynamicClassTagDict(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0;
  v6 = a1 + 40;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::unordered_set<int>::unordered_set(a1 + 64, a4);
  *(a1 + 104) = 0;
  LODWORD(v17[0]) = 0;
  *(v17 + 4) = 0;
  v15 = 0;
  v16 = 0;
  std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](v6, &v15);
  for (i = *(a2 + 16); i; i = *i)
  {
    v8 = *(i + 20);
    LODWORD(v17[0]) = *(i + 4);
    *(v17 + 4) = v8;
    v15 = v17[0];
    v16 = HIDWORD(v8);
    std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>>::push_back[abi:ne200100](v6, &v15);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v17[0] = i + 2;
    std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, i + 4)[3] = -1 - 0x5555555555555555 * ((v10 - v9) >> 2);
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    v17[0] = i + 20;
    std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, i + 5)[3] = -1 - 0x5555555555555555 * ((v11 - v12) >> 2);
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v17[0] = i + 3;
    std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1, i + 6)[3] = -1 - 0x5555555555555555 * ((v14 - v13) >> 2);
  }

  operator new[]();
}

void sub_1B54A831C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 104);
  *(v1 + 104) = 0;
  if (v4)
  {
    MEMORY[0x1B8C85310](v4, 0x1000C8052888210);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1 + 64);
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v5;
    operator delete(v5);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<int,unsigned long>,std::__unordered_map_hasher<int,std::__hash_value_type<int,unsigned long>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,unsigned long>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,unsigned long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::vector<std::weak_ptr<quasar::Decoder>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::weak_ptr<quasar::Decoder>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<void>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<void>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<void>>>>::__move_assign(uint64_t a1, void *a2)
{
  v4 = (a1 + 8);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(a1, *(a1 + 8));
  *a1 = *a2;
  v5 = a2 + 1;
  v6 = a2[1];
  *v4 = v6;
  v7 = a2[2];
  *(a1 + 16) = v7;
  if (v7)
  {
    *(v6 + 16) = v4;
    *a2 = v5;
    *v5 = 0;
    a2[2] = 0;
  }

  else
  {
    *a1 = v4;
  }
}

__n128 std::__optional_storage_base<std::shared_ptr<kaldi::WordHypLattice>,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<std::shared_ptr<kaldi::WordHypLattice>,false>>(__n128 *a1, __n128 *a2)
{
  if (a1[1].n128_u8[0] == a2[1].n128_u8[0])
  {
    if (a1[1].n128_u8[0])
    {
      result = *a2;
      a2->n128_u64[0] = 0;
      a2->n128_u64[1] = 0;
      v4 = a1->n128_u64[1];
      *a1 = result;
      if (v4)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }
    }
  }

  else if (a1[1].n128_u8[0])
  {
    v5 = a1->n128_u64[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    a1[1].n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *a1 = *a2;
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a1[1].n128_u8[0] = 1;
  }

  return result;
}

void std::vector<std::vector<kaldi::quasar::WordConf>>::__vdeallocate(void ***a1)
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
        v3 -= 3;
        v5 = v3;
        std::vector<kaldi::quasar::WordConf>::__destroy_vector::operator()[abi:ne200100](&v5);
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

uint64_t *std::unique_ptr<std::map<int,int>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<int>::destroy(v2, *(v2 + 8));

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

uint64_t *std::unique_ptr<quasar::StreamingConfidenceRunner>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void *std::unique_ptr<quasar::NFHatTransformer>::reset[abi:ne200100](void *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      v2[5] = v3;
      operator delete(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      v2[2] = v4;
      operator delete(v4);
    }

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void std::__shared_ptr_emplace<quasar::UttInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D145D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::doEverythingWithRawLattice(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig const&,int,std::atomic<BOOL> const&)::$_0,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::doEverythingWithRawLattice(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig const&,int,std::atomic<BOOL> const&)::$_0>,BOOL ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F2D14620;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::doEverythingWithRawLattice(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig const&,int,std::atomic<BOOL> const&)::$_0,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::doEverythingWithRawLattice(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&,kaldi::quasar::OnlineLatticeBiglmFasterDecoderConfig const&,int,std::atomic<BOOL> const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1B54A8B3C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::shared_ptr[abi:ne200100]<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::allocator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::allocator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> *,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_default_delete<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::allocator<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<quasar::StateAccessRecordingFst>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,std::allocator<quasar::StateAccessRecordingFst>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14728;
  quasar::StateAccessRecordingFst::StateAccessRecordingFst(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::StateAccessRecordingFst>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14728;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

__n128 std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D14778;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::operator()(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 + 8);
  if (**(a1 + 16))
  {
    quasar::ModelLoader::requestEmbeddedMlock(*(v6 + 376), a2, v14);
    v7 = *(&v14[0] + 1);
    v8 = *(v6 + 376);
    v15 = v14[0];
    if (*(&v14[0] + 1))
    {
      v9 = 0;
      atomic_fetch_add_explicit((*(&v14[0] + 1) + 8), 1uLL, memory_order_relaxed);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v7 = 0;
    v8 = *(v6 + 376);
    v9 = 1;
    v15 = 0uLL;
  }

  quasar::ModelLoader::readFstNetwork(v8, a2, &v15, a3);
  if (*(&v15 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
  }

  if ((*(**a3 + 64))(*a3, 0x10000000, 0) != 0x10000000)
  {
    memset(v14, 0, sizeof(v14));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "bigGFst: input label is not sorted!", 35);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v14);
  }

  if ((*(v6 + 2308) & 1) != 0 || *(v6 + 448) == 1)
  {
    std::allocate_shared[abi:ne200100]<quasar::StateAccessRecordingFst,std::allocator<quasar::StateAccessRecordingFst>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> &,0>();
  }

  *&v14[0] = a2;
  v10 = std::__tree<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v6 + 1080, a2);
  v12 = *a3;
  v11 = a3[1];
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = *(v10 + 64);
  *(v10 + 56) = v12;
  *(v10 + 64) = v11;
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  **(a1 + 16) = 0;
  if ((v9 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_1B54A9008(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_0,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_0>,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D147F8;
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::~__func(uint64_t a1)
{
  *a1 = &unk_1F2D147F8;
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1B8C85350);
}

std::string *std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F2D147F8;
  v2 = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 8) = v2;
  return std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100]((a2 + 24), (a1 + 24));
}

void std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::destroy(uint64_t a1)
{
  if (*(a1 + 48) == 1 && *(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::destroy_deallocate(void **__p)
{
  if (*(__p + 48) == 1 && *(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishInit(void)::$_1>,std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

char *std::vector<float>::__insert_with_size[abi:ne200100]<std::__wrap_iter<float *>,std::__wrap_iter<float *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 2);
    if (v12 >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 1 > v12)
    {
      v12 = v14 >> 1;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v15 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 2;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
    }

    v33 = 4 * v16;
    v34 = 4 * a5;
    v35 = (4 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 4;
    }

    while (v34);
    memcpy((v33 + 4 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 4 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (4 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 2;
  if (v18 >= a5)
  {
    v29 = &__dst[4 * a5];
    v30 = (v10 - 4 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v29);
    }

    v28 = 4 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[4 * a5];
    v23 = v10 + v20;
    if (&v21[-4 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -4 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 4;
        v24 += 4;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[4 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void *std::__shared_ptr_emplace<quasar::LRStreamingConfidence>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::allocator<quasar::LRStreamingConfidence>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14878;
  quasar::LRStreamingConfidence::LRStreamingConfidence(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LRStreamingConfidence>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

std::string *std::__shared_ptr_emplace<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__shared_ptr_emplace[abi:ne200100]<std::string,std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,0>(std::string *a1, __int128 *a2, uint64_t a3, std::string::size_type *a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &unk_1F2D0AA80;
  std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::string,std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(&v6, a1 + 1, a2, a3, a4);
  return a1;
}

void std::allocator<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::construct[abi:ne200100]<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,std::string,std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>(int a1, std::string *this, __int128 *a3, uint64_t a4, std::string::size_type *a5)
{
  *__p = *a4;
  v6 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  v7 = 1;
  quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::RegionalLmPlug(this, a3, __p, a5);
  if (v7 == 1 && SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B54A9818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D148C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::DeterministicOnDemandFstCreator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__on_zero_shared(uint64_t a1)
{
  v1 = (a1 + 24);
  v2 = (a1 + 48);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = v1;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void std::__shared_ptr_emplace<quasar::EagerDecision>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void quasar::EagerDecision::~EagerDecision(std::locale *this)
{
  std::deque<int>::~deque[abi:ne200100](&this[69].__locale_);
  locale = this[62].__locale_;
  if (locale)
  {
    this[63].__locale_ = locale;
    operator delete(locale);
  }

  v7 = this + 59;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = this[53].__locale_;
  if (v3)
  {
    this[54].__locale_ = v3;
    operator delete(v3);
  }

  v7 = this + 50;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v4 = this[43].__locale_;
  if (v4)
  {
    this[44].__locale_ = v4;
    operator delete(v4);
  }

  v7 = this + 40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v5 = MEMORY[0x1E69E54E8];
  v6 = *MEMORY[0x1E69E54E8];
  this[5].__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v6 - 24) + 40) = v5[3];
  this[6].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[16].__locale_) < 0)
  {
    operator delete(this[14].__locale_);
  }

  this[6].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 7);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[19]);
}

void std::__shared_ptr_emplace<quasar::LatticeGenerationOutput>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14968;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::LatticeGenerationOutput>::__on_zero_shared(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *(a1 + 64) = *MEMORY[0x1E69E54E8];
  *(a1 + 64 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 72) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  *(a1 + 72) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 80));
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](a1 + 176);
  v4 = *(a1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 40);
  if (v5)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void std::__shared_ptr_emplace<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D149B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14A08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<fst::LeftContextDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> *>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14A58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14B10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

float fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Final(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(a1 + 80) + 8 * a2);
  v6 = (*(**(a1 + 8) + 8))(*(a1 + 8), *v5);
  (*(**(a1 + 24) + 8))(*(a1 + 24), v5[1], a3);
  if (v6 == INFINITY || v7 == INFINITY)
  {
    return INFINITY;
  }

  v10 = v6 * *(a1 + 112);
  v8 = NAN;
  if (v10 != -INFINITY)
  {
    v11 = v7 * *(a1 + 116);
    if (v11 != -INFINITY)
    {
      v8 = INFINITY;
      v12 = v11 == INFINITY || v10 == INFINITY;
      v13 = v10 + v11;
      if (!v12)
      {
        return v13;
      }
    }
  }

  return v8;
}

void *fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ComposeDeterministicOnDemandFst(void *a1)
{
  *a1 = &unk_1F2D14B60;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

{
  *a1 = &unk_1F2D14B60;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

void fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ComposeDeterministicOnDemandFst(void *a1)
{
  *a1 = &unk_1F2D14B60;
  v2 = a1[10];
  if (v2)
  {
    a1[11] = v2;
    operator delete(v2);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table((a1 + 5));
  v3 = a1[4];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  JUMPOUT(0x1B8C85350);
}

uint64_t *std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::PairHasher<int>,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int> const,int> const&>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = v2 + 7853 * v3;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v2 + 7853 * v3;
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
LABEL_22:
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
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (*(v9 + 4) != v2 || *(v9 + 5) != v3)
  {
    goto LABEL_21;
  }

  return v9;
}

void std::__shared_ptr_emplace<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14BC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D14C18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LatticeBiglmFasterTraceBackDecoder(uint64_t a1)
{
  *a1 = &unk_1F2D14CB8;
  v2 = *(a1 + 16);
  if (v2 != -1)
  {
    v3 = *(a1 + 32);
    do
    {
      v4 = (v3 + 16 * v2);
      v4[1] = 0;
      v2 = *v4;
    }

    while (v2 != -1);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  if (v5)
  {
    v6 = *(a1 + 56);
    do
    {
      v7 = v5;
      v5 = *(v5 + 16);
      *(v7 + 16) = v6;
      v6 = v7;
    }

    while (v5);
    *(a1 + 56) = v7;
  }

  v8 = *(a1 + 528);
  *(a1 + 528) = 0;
  if (v8)
  {
    std::default_delete<kaldi::quasar::LazyBuffer<float>>::operator()[abi:ne200100](a1 + 528, v8);
  }

  std::__hash_table<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__hash_table(a1 + 488);
  v9 = *(a1 + 456);
  if (v9)
  {
    free(v9);
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
  }

  *(a1 + 472) = 0;
  *(a1 + 480) = 0;
  v10 = *(a1 + 432);
  if (v10)
  {
    *(a1 + 440) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 400);
  if (v11)
  {
    *(a1 + 408) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 376);
  if (v12)
  {
    *(a1 + 384) = v12;
    operator delete(v12);
  }

  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::ForwardLink>::Clear(a1 + 344);
  kaldi::quasar::LazyBuffer<kaldi::quasar::TokenHeap::Token>::Clear(a1 + 328);
  std::__tree<int>::destroy(a1 + 304, *(a1 + 312));
  v13 = *(a1 + 136);
  if (v13)
  {
    *(a1 + 144) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 112);
  if (v14)
  {
    *(a1 + 120) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 88);
  if (v15)
  {
    *(a1 + 96) = v15;
    operator delete(v15);
  }

  kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::~HashList((a1 + 8));
  return a1;
}

uint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~OnlineLatticeBiglmFasterDecoder(void *a1)
{
  *a1 = &unk_1F2D14C68;
  kaldi::SilencePhoneSet::~SilencePhoneSet((a1 + 88));

  return kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LatticeBiglmFasterTraceBackDecoder(a1);
}

void kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~OnlineLatticeBiglmFasterDecoder(void *a1)
{
  *a1 = &unk_1F2D14C68;
  v2 = a1[94];
  if (v2)
  {
    a1[95] = v2;
    operator delete(v2);
  }

  v3 = a1[91];
  if (v3)
  {
    operator delete(v3);
  }

  kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LatticeBiglmFasterTraceBackDecoder(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::SetDecodableOffset(uint64_t a1, int a2)
{
  *(a1 + 368) = a2 - (*(**(a1 + 696) + 40))(*(a1 + 696));
  result = (*(**(a1 + 696) + 40))(*(a1 + 696));
  *(a1 + 804) = result;
  return result;
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LatticeBiglmFasterTraceBackDecoder(uint64_t a1)
{
  kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~LatticeBiglmFasterTraceBackDecoder(a1);

  JUMPOUT(0x1B8C85350);
}

void std::default_delete<kaldi::quasar::LazyBuffer<float>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    kaldi::quasar::LazyBuffer<float>::Clear(a2);

    JUMPOUT(0x1B8C85350);
  }
}

uint64_t kaldi::quasar::LazyBuffer<float>::Clear(uint64_t result)
{
  if (*result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = 4 * v2;
      result = MEMORY[0x1B8C874F0](*MEMORY[0x1E69E9A60]);
      if (result)
      {
        v12 = result;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
        v4 = MEMORY[0x1B8C84BB0](v13, v1);
        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ": Could not vm_deallocate ", 26);
        v6 = MEMORY[0x1B8C84C30](v5, v3);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " bytes of ", 10);
        v8 = *(MEMORY[0x1E69E5468] + 8);
        v9 = strlen((v8 & 0x7FFFFFFFFFFFFFFFLL));
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8 & 0x7FFFFFFFFFFFFFFFLL, v9);
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
        MEMORY[0x1B8C84C00](v11, v12);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
      }

      *v1 = 0;
      v1[1] = 0;
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        free(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

double kaldi::quasar::OnlineLatticeBiglmFasterDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UpdateTime(uint64_t a1, clockid_t a2)
{
  v3 = a1 + 16 * a2;
  *(v3 + 888) = *(v3 + 888) + kaldi::Timer::GetSeconds(5, a2) - *(a1 + 848);
  result = *(v3 + 896) + kaldi::Timer::GetSeconds(0x10, v4) - *(a1 + 864);
  *(v3 + 896) = result;
  return result;
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::emitClassTag(uint64_t a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6, _DWORD *a7, int a8, float a9, char a10, int a11)
{
  if (a8)
  {
    v16 = *(a2 + 12);
    if (!a10 || ((v16 + *(*(*(a1 + 280) + 104) + 4 * a11)) - *(a1 + 232)) <= a9)
    {
      if (a8 < 1)
      {
        v17 = a7;
        v19 = 0.0;
      }

      else
      {
        v17 = a7;
        v18 = a7;
        v19 = 0.0;
        v20 = a8;
        do
        {
          if (*v18++)
          {
            if ((*(**(a1 + 168) + 32))(*(a1 + 168), a6))
            {
              v22 = *(&v51 + 2) + 0.0;
              if (*(&v51 + 2) == INFINITY)
              {
                v22 = INFINITY;
              }

              if (*(&v51 + 2) == -INFINITY)
              {
                v22 = NAN;
              }

              v23 = v22;
              a6 = HIDWORD(v51);
            }

            else
            {
              v23 = INFINITY;
            }
          }

          else
          {
            v23 = 0.0;
          }

          v16 = v16 + v23;
          v19 = v19 + v23;
          --v20;
        }

        while (v20);
      }

      if (v16 < a9)
      {
        v24 = (a6 << 32) + a5;
        v25 = (a1 + 8);
        v26 = *(a1 + 32);
        v27 = (v26 + 16 * (v24 % *(a1 + 24)));
        v28 = v27[1];
        if (v28)
        {
          v29 = *v27;
          v30 = (a1 + 8);
          if (v29 != -1)
          {
            v30 = (*(v26 + 16 * v29 + 8) + 16);
          }

          v31 = *(v28 + 16);
          for (i = *v30; i != v31; i = *(i + 16))
          {
            if (*i == v24)
            {
              v34 = *(i + 8);
              v41 = *(a1 + 328) + 32 * v34;
              v43 = *(v41 + 12);
              v42 = (v41 + 12);
              if (v43 > v16)
              {
                *v42 = v16;
                goto LABEL_28;
              }

              v39 = 0;
              goto LABEL_35;
            }
          }
        }

        v33 = (*(a1 + 88) + 8 * a4);
        LODWORD(v34) = kaldi::quasar::TokenHeap::NewToken((a1 + 328), v16, 0.0, 0, *v33, a11);
        *v33 = v34;
        ++*(a1 + 288);
        v35 = v24 % *(a1 + 24);
        v36 = (*(a1 + 32) + 16 * v35);
        v37 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(a1 + 8);
        *v37 = v24;
        *(v37 + 8) = v34;
        v38 = v36[1];
        if (v38)
        {
          *(v37 + 16) = *(v38 + 16);
          *(v38 + 16) = v37;
          v36[1] = v37;
LABEL_28:
          v39 = 1;
        }

        else
        {
          v40 = *(a1 + 16);
          if (v40 != -1)
          {
            v25 = (*(*(a1 + 32) + 16 * v40 + 8) + 16);
          }

          *v25 = v37;
          *(v37 + 16) = 0;
          *v36 = v40;
          v36[1] = v37;
          v39 = 1;
          *(a1 + 16) = v35;
        }

LABEL_35:
        v44 = *(a1 + 328);
        v45 = &v17[a8];
        *(a2 + 20) = kaldi::quasar::TokenHeap::NewForwardLink((a1 + 328), v34, 0, *(v45 - 1), v19, 0.0, *(a2 + 20));
        if (v39)
        {
          v46 = (v44 + 32 * v34);
          *(v46 + 2) = v46[1] & 0x3F | (a3 << 6);
          v47 = *v46;
          *v46 &= 0xFFFFFFFF00000001;
          *v46 = v47 & 0x100000001 | (*(v45 - 1) << 33);
          *(v46 + 7) = a6;
          *&v51 = v24;
          DWORD2(v51) = v34;
          std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](a1 + 112, &v51);
        }
      }
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      free(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneActiveTokensFinal(uint64_t a1, int a2, int a3)
{
  if ((*(a1 + 424) & 1) == 0)
  {
    v4 = a2;
    *(a1 + 424) = 1;
    *(a1 + 425) = a3;
    v6 = *(a1 + 288);
    v7 = *(a1 + 356);
    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinksFinal(a1, a2, a3);
    if (v4 >= 1)
    {
      do
      {
        LOBYTE(v20[0].__locale_) = 0;
        v21 = 0;
        kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinks(a1, v4 - 1, v20, &v21, a3, 0.0);
        kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(a1, v4, a3);
        v8 = v4-- != 0;
      }

      while (v4 != 0 && v8);
    }

    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(a1, 0, a3);
    if (kaldi::g_kaldi_verbose_level > 2)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v20, 3);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "PruneActiveTokensFinal: pruned tokens from ", 43);
      v10 = MEMORY[0x1B8C84C00](v9, v6);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " to ", 4);
      v12 = MEMORY[0x1B8C84C00](v11, *(a1 + 288));
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " links from ", 12);
      v14 = MEMORY[0x1B8C84C00](v13, (v7 - 1));
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " to ", 4);
      v16 = MEMORY[0x1B8C84C00](v15, (*(a1 + 356) - 1));
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " pruned_tok_frames_ ", 20);
      v18 = MEMORY[0x1B8C84C30](v17, (*(a1 + 384) - *(a1 + 376)) >> 3);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " pruned_link_toks_ ", 19);
      MEMORY[0x1B8C84C30](v19, (*(a1 + 408) - *(a1 + 400)) >> 3);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v20);
    }
  }
}

uint64_t kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinksFinal(uint64_t a1, int a2, int a3)
{
  if (*(*(a1 + 88) + 8 * a2))
  {
    v6 = 1;
  }

  else
  {
    v6 = kaldi::g_kaldi_verbose_level < -1;
  }

  if (!v6)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "No tokens alive at end of file", 30);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v50);
  }

  memset(v48, 0, sizeof(v48));
  v49 = 1065353216;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = INFINITY;
    v9 = INFINITY;
    do
    {
      v10 = *v7;
      i = *(v7 + 2);
      v11 = i;
      v12 = *(a1 + 328);
      (*(**(a1 + 160) + 32))(*(a1 + 160), v10);
      v14 = v12 + 32 * v11;
      v15 = INFINITY;
      if ((*(v14 + 8) & 0x3F) != 0)
      {
        v16 = INFINITY;
      }

      else
      {
        v16 = v13;
      }

      if (v16 != INFINITY)
      {
        v15 = v16 + (*(**(a1 + 168) + 16))(*(a1 + 168), HIDWORD(v10));
      }

      v50[0] = &i;
      *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v48, &i) + 5) = v15;
      v17 = *(v14 + 12);
      if ((v15 + v17) < v8)
      {
        v8 = v15 + v17;
      }

      if (v17 < v9)
      {
        v9 = *(v14 + 12);
      }

      if (a3)
      {
        v50[0] = i | (*(v14 + 16) << 32);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 432, v50);
      }

      v7 = v7[2];
    }

    while (v7);
  }

  else
  {
    v9 = INFINITY;
    v8 = INFINITY;
  }

  *(a1 + 296) = v8 != INFINITY;
  v45 = 8 * a2;
  while (1)
  {
    v18 = *(a1 + 88);
    v19 = *(v18 + v45);
    i = v19;
    if (!v19)
    {
      break;
    }

    v46 = 0;
    do
    {
      v20 = *(a1 + 328) + 32 * v19;
      if (*(a1 + 296) == 1)
      {
        v50[0] = &i;
        v21 = (*(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v48, &i) + 5) + *(v20 + 12)) - v8;
      }

      else
      {
        v21 = *(v20 + 12) - v9;
      }

      v22 = *(v20 + 20);
      if (v22)
      {
        v23 = 0;
        do
        {
          v24 = *(a1 + 344);
          v25 = v24 + 24 * v22;
          v26 = *(a1 + 328) + 32 * *(v25 + 4);
          v28 = *(v26 + 12);
          v27 = *(v26 + 16);
          v29 = v27 + (((*(v20 + 12) + *(v25 + 16)) + *(v25 + 12)) - v28);
          if (v29 <= *(a1 + 192))
          {
            if (v29 >= 0.0)
            {
              v32 = v27 + (((*(v20 + 12) + *(v25 + 16)) + *(v25 + 12)) - v28);
            }

            else
            {
              v32 = 0.0;
              if (v29 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
              {
                kaldi::KaldiWarnMessage::KaldiWarnMessage(v50);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Negative extra_cost: ", 21);
                std::ostream::operator<<();
                kaldi::KaldiWarnMessage::~KaldiWarnMessage(v50);
              }
            }

            if (v32 < v21)
            {
              v21 = v32;
            }

            v30 = *(v25 + 20);
          }

          else
          {
            v30 = *(v25 + 20);
            v31 = (v24 + 24 * v23 + 20);
            if (!v23)
            {
              v31 = (v20 + 20);
            }

            *v31 = v30;
            if (a3)
            {
              v50[0] = __PAIR64__(i, v22);
              std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 400, v50);
            }

            v22 = v23;
          }

          v23 = v22;
          v22 = v30;
        }

        while (v30);
      }

      v34 = *(a1 + 192);
      if (v21 <= v34)
      {
        v35 = v21;
      }

      else
      {
        v35 = INFINITY;
      }

      v36 = *(v20 + 16);
      if (v36 != v35)
      {
        if (COERCE_INT(fabs(v36 - v35)) > 2139095039 || ((v37 = vabds_f32(v36, v35), v38 = fabsf(v36), v39 = fabsf(v21), v21 <= v34) ? (v40 = v39) : (v40 = INFINITY), v37 > ((v38 + v40) * 0.00001)))
        {
          v46 = 1;
        }
      }

      *(v20 + 16) = v35;
      v19 = *(v20 + 24);
      i = v19;
    }

    while (v19);
    if ((v46 & 1) == 0)
    {
      v18 = *(a1 + 88);
      break;
    }
  }

  v41 = *(v18 + v45);
  for (i = v41; v41; i = v41)
  {
    v42 = *(a1 + 328) + 32 * v41;
    if (*(v42 + 16) != INFINITY)
    {
      if (*(a1 + 296) == 1)
      {
        v50[0] = &i;
        v43 = *(std::__hash_table<std::__hash_value_type<unsigned int,float>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,float>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,float>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v48, &i) + 5);
        if (v43 != INFINITY)
        {
          v50[0] = &i;
          *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &i) + 8) = v43;
        }
      }

      else
      {
        v50[0] = &i;
        *(std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a1 + 304, &i) + 8) = 0;
      }
    }

    v41 = *(v42 + 24);
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v48);
}

void sub_1B54AB480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void sub_1B54AB4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  JUMPOUT(0x1B54AB4B4);
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneForwardLinks(uint64_t a1, unsigned int a2, _BYTE *a3, _BYTE *a4, int a5, float a6)
{
  *a3 = 0;
  *a4 = 0;
  if (!*(*(a1 + 88) + 8 * a2) && (*(a1 + 293) & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "No tokens alive [doing pruning].. warning first time only for each utterance", 76);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v28);
    }

    *(a1 + 293) = 1;
  }

  v23 = 8 * a2;
  v10 = *(*(a1 + 88) + v23);
  if (v10)
  {
    v25 = a5;
    do
    {
      v11 = 0;
      do
      {
        v26 = v11;
        v12 = *(a1 + 328) + 32 * v10;
        if (v25)
        {
          v28[0] = v10 | (*(v12 + 16) << 32);
          std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 432, v28);
        }

        v13 = *(v12 + 20);
        if (v13)
        {
          v14 = 0;
          v15 = INFINITY;
          do
          {
            v16 = *(a1 + 344) + 24 * v13;
            v17 = *(a1 + 328) + 32 * *(v16 + 4);
            v18 = *(v17 + 16) + (((*(v12 + 12) + *(v16 + 16)) + *(v16 + 12)) - *(v17 + 12));
            if (v18 <= *(a1 + 192))
            {
              if (v18 >= 0.0)
              {
                v21 = *(v17 + 16) + (((*(v12 + 12) + *(v16 + 16)) + *(v16 + 12)) - *(v17 + 12));
              }

              else
              {
                v21 = 0.0;
                if (v18 < -0.01 && kaldi::g_kaldi_verbose_level >= -1)
                {
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(v28);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Negative extra_cost: ", 21);
                  std::ostream::operator<<();
                  kaldi::KaldiWarnMessage::~KaldiWarnMessage(v28);
                }
              }

              if (v21 < v15)
              {
                v15 = v21;
              }

              v20 = *(v16 + 20);
              v14 = v13;
            }

            else
            {
              v19 = (v12 + 20);
              if (v14)
              {
                v19 = (*(a1 + 344) + 24 * v14 + 20);
              }

              v20 = *(v16 + 20);
              *v19 = v20;
              if (a5)
              {
                v28[0] = __PAIR64__(v10, v13);
                std::vector<std::pair<int,int>>::push_back[abi:ne200100](a1 + 400, v28);
              }

              *a4 = 1;
            }

            v13 = v20;
          }

          while (v20);
        }

        else
        {
          v15 = INFINITY;
        }

        v11 = (vabds_f32(v15, *(v12 + 16)) > a6) | v26;
        *(v12 + 16) = v15;
        v10 = *(v12 + 24);
      }

      while (v10);
      if ((v11 & 1) == 0)
      {
        break;
      }

      v25 = 0;
      *a3 = 1;
      v10 = *(*(a1 + 88) + v23);
    }

    while (v10);
  }
}

void sub_1B54AB7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::PruneTokensForFrame(uint64_t a1, unsigned int a2, int a3)
{
  v6 = (*(a1 + 88) + 8 * a2);
  v7 = *v6;
  if (!v7)
  {
    if (*(a1 + 294))
    {
      return;
    }

    if (kaldi::g_kaldi_verbose_level <= -2)
    {
      *(a1 + 294) = 1;
      return;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "No tokens alive [doing pruning]", 31);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v26);
    v7 = *v6;
    *(a1 + 294) = 1;
    if (!v7)
    {
      return;
    }
  }

  v8 = 0;
  v25 = a2 << 32;
  do
  {
    v9 = *(a1 + 328);
    v10 = v9 + 32 * v7;
    v11 = *(v10 + 24);
    if (*(v10 + 16) == INFINITY)
    {
      v12 = (v9 + 32 * v8 + 24);
      if (!v8)
      {
        v12 = v6;
      }

      *v12 = v11;
      if (a3)
      {
        v14 = *(a1 + 384);
        v13 = *(a1 + 392);
        if (v14 >= v13)
        {
          v16 = *(a1 + 376);
          v17 = (v14 - v16) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          v18 = v13 - v16;
          v19 = v18 >> 2;
          if (v18 >> 2 <= (v17 + 1))
          {
            v19 = v17 + 1;
          }

          if (v18 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v19;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 376, v20);
          }

          *(8 * v17) = v25 | v7;
          v15 = 8 * v17 + 8;
          v21 = *(a1 + 376);
          v22 = *(a1 + 384) - v21;
          v23 = (8 * v17 - v22);
          memcpy(v23, v21, v22);
          v24 = *(a1 + 376);
          *(a1 + 376) = v23;
          *(a1 + 384) = v15;
          *(a1 + 392) = 0;
          if (v24)
          {
            operator delete(v24);
          }
        }

        else
        {
          *v14 = v25 | v7;
          v15 = (v14 + 1);
        }

        *(a1 + 384) = v15;
      }

      *(v10 + 24) = 0;
      --*(a1 + 288);
    }

    else
    {
      v8 = v7;
    }

    v7 = v11;
  }

  while (v11);
}

void sub_1B54AB9B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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

uint64_t std::__function::__func<quasar::OnlineLatticeBiglmFasterDecoder::finishDecoding(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&)::$_0,std::allocator<quasar::OnlineLatticeBiglmFasterDecoder::finishDecoding(quasar::DecoderPassData &,std::shared_ptr<quasar::DecoderChainOutput> const&,std::shared_ptr<quasar::SpeechRequestData> const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessEmitting<kaldi::DecodableInterface>(uint64_t a1, float (***a2)(void, void, uint64_t), int a3, float a4)
{
  if (*(a1 + 424) == 1)
  {
    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::UndoPruneActiveTokensFinal(a1);
  }

  v135 = a1 + 8;
  v7 = *(a1 + 16);
  if (v7 != -1)
  {
    v8 = *(a1 + 32);
    do
    {
      v9 = (v8 + 16 * v7);
      v9[1] = 0;
      v7 = *v9;
    }

    while (v7 != -1);
  }

  v10 = *(a1 + 8);
  *(a1 + 8) = 0;
  *(a1 + 16) = -1;
  v147 = 0;
  v146 = 0.0;
  v145 = 0;
  v11 = kaldi::GetCutoffHelper<kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,kaldi::quasar::LatticeBiglmFasterTraceBackDecoderConfig,kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::Elem>(a1, a1 + 176, v10, &v145, &v146, &v147, 1, a4);
  v12 = (*(a1 + 208) * v145);
  if (*(a1 + 24) < v12)
  {
    kaldi::HashList<int,unsigned int,std::hash<int>,std::equal_to<int>>::SetSize(v135, v12);
  }

  v13 = v10;
  v14 = *(a1 + 368);
  v15 = (((*a2)[6])(a2) + 1);
  v16 = *(a1 + 528);
  v134 = a2;
  if (!v16 || (v17 = *(v16 + 8), v17 < v15))
  {
    operator new();
  }

  bzero(*v16, 4 * v17);
  v137 = a3 + v14 - 1;
  v138 = *(a1 + 528);
  v18 = *(a1 + 260);
  memset(v143, 0, sizeof(v143));
  v144 = 1065353216;
  v130 = v18;
  if (v18 == 1)
  {
    v19 = *(a1 + 264);
    if (*(a1 + 268) == 0x7FFFFFFF)
    {
      goto LABEL_31;
    }

    if (v13)
    {
      v20 = v13;
      do
      {
        Arcs = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetArcs(a1, *v20, *(*(a1 + 328) + 32 * v20[2]) >> 1);
        v22 = Arcs[2];
        v23 = Arcs[3];
        if (v22 != v23)
        {
          v24 = *v138;
          do
          {
            v25 = *v22;
            if (*(v24 + 4 * v25) == 0.0)
            {
              v26 = (**a2)(a2, v137, *v22);
              v24 = *v138;
              *(*v138 + 4 * v25) = -v26;
            }

            v22 += 4;
          }

          while (v22 != v23);
        }

        v20 = *(v20 + 2);
      }

      while (v20);
    }

    v140 = 0uLL;
    *&v141 = 0;
    if (!v15)
    {
LABEL_31:
      v28 = v13;
      goto LABEL_34;
    }

    v27 = 0;
    v28 = v13;
    do
    {
      v29 = *(*v138 + 4 * v27);
      *v149 = v29;
      if (v29 != 0.0)
      {
        std::vector<float>::push_back[abi:ne200100](&v140, v149);
      }

      ++v27;
    }

    while (v15 != v27);
    v30 = v140;
    v31 = *(a1 + 268);
    if (v31 >= (*(&v140 + 1) - v140) >> 2)
    {
      if (!v140)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v32 = (v140 + 4 * v31);
      if (v32 != *(&v140 + 1))
      {
        std::__nth_element[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<float *>>(v140, v32, *(&v140 + 1), v29);
        v31 = *(a1 + 268);
        v30 = v140;
      }

      if (v30[v31] < v19)
      {
        v19 = v30[v31];
      }
    }

    *(&v140 + 1) = v30;
    operator delete(v30);
LABEL_34:
    if (v28)
    {
      v33 = v13;
      do
      {
        v148 = *v33;
        v34 = *(v33 + 8);
        v35 = *(a1 + 328);
        if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(v143, &v148))
        {
          v140 = 0uLL;
          *&v141 = 0;
          v36 = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetArcs(a1, v148, *(v35 + 32 * v34) >> 1);
          v37 = v36[2];
          for (i = v36[3]; v37 != i; ++v37)
          {
            v149[0] = *v37;
            v39 = SLODWORD(v149[0]);
            if (LODWORD(v149[0]))
            {
              v40 = *(*v138 + 4 * SLODWORD(v149[0]));
              if (v40 == 0.0)
              {
                v40 = -(**v134)(v134, v137, SLODWORD(v149[0]));
                *(*v138 + 4 * v39) = v40;
              }

              if (v40 <= v19)
              {
                std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::push_back[abi:ne200100](&v140, v149);
              }
            }
          }

          *&v149[0] = &v148;
          v41 = std::__hash_table<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v143, &v148);
          v42 = v41[3];
          if (v42)
          {
            v41[4] = v42;
            operator delete(v42);
            v41[3] = 0;
            v41[4] = 0;
            v41[5] = 0;
          }

          *(v41 + 3) = v140;
          v41[5] = v141;
        }

        v33 = *(v33 + 16);
      }

      while (v33);
    }
  }

  if (!v147)
  {
    goto LABEL_88;
  }

  v43 = *v147;
  v44 = v147[1];
  v45 = *(a1 + 328) + 32 * v147[2];
  v46 = *(v45 + 12);
  v47 = *v45;
  v48 = *v45 >> 1;
  LODWORD(v149[0]) = *v147;
  if (v130)
  {
    *&v140 = v149;
    v49 = std::__hash_table<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v143, v149);
    v50 = (v49 + 3);
    v51 = v134;
    if (v47 >= 2 && (*(a1 + 261) & 1) != 0)
    {
      v52 = v49[4];
      if (v52 != v49[3])
      {
        *(v52 - 16) = v48;
      }
    }

    v53 = (v49 + 4);
  }

  else
  {
    v54 = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetArcs(a1, v43, v47 >> 1);
    v50 = (v54 + 2);
    v53 = (v54 + 3);
    v51 = v134;
  }

  v55 = *v50;
  v56 = *v53;
  if (*v50 == *v53)
  {
LABEL_88:
    v57 = INFINITY;
  }

  else
  {
    v57 = INFINITY;
    do
    {
      v58 = *v55;
      if (v58)
      {
        v59 = *(v55 + 1);
        v60 = v55[2];
        if (v59)
        {
          if ((*(**(a1 + 168) + 32))(*(a1 + 168), v44, v59, &v140))
          {
            v61 = NAN;
            if (v60 != -INFINITY)
            {
              v61 = NAN;
              if (*(&v140 + 2) != -INFINITY)
              {
                v62 = *(&v140 + 2) == INFINITY || v60 == INFINITY;
                v61 = v60 + *(&v140 + 2);
                if (v62)
                {
                  v61 = INFINITY;
                }
              }
            }

            v63 = DWORD1(v140) == 0;
          }

          else
          {
            v63 = 0;
            v61 = INFINITY;
          }

          v60 = v61;
        }

        else
        {
          v63 = 1;
        }

        v64 = *(*v138 + 4 * v58);
        if (v64 == 0.0)
        {
          v64 = -(**v51)(v51, v137, v58);
          *(*v138 + 4 * v58) = v64;
        }

        v65 = NAN;
        if (v60 != -INFINITY && v64 != -INFINITY)
        {
          v66 = v64 == INFINITY || v60 == INFINITY;
          v67 = v60 + v64;
          if (v66)
          {
            v65 = INFINITY;
          }

          else
          {
            v65 = v67;
          }
        }

        v68 = 0.0;
        if (!v63)
        {
          v68 = *(a1 + 212);
        }

        v69 = ((v46 + v65) + v68) + v146;
        if (v69 < v57)
        {
          v57 = v69;
        }
      }

      v55 += 4;
    }

    while (v55 != v56);
  }

  v70 = *(a1 + 272);
  v140 = 0u;
  v141 = 0u;
  v142 = 1065353216;
  v71 = v13;
  if (v70 != INFINITY)
  {
    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindBestWeightForEachLmState(a1, v13, &v140);
  }

  if (v13)
  {
    v132 = a3;
    while (1)
    {
      v72 = *v71;
      v139 = HIDWORD(*v71);
      v73 = *(v71 + 8);
      v74 = *(a1 + 328) + 32 * v73;
      v75 = *(v74 + 12);
      if (v75 <= v11)
      {
        if (v70 == INFINITY || (*&v149[0] = &v139, v75 < (*(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(&v140, &v139) + 5) + *(a1 + 272))))
        {
          v76 = *v74;
          v77 = *v74 >> 1;
          v148 = v72;
          if (v130)
          {
            *&v149[0] = &v148;
            v78 = std::__hash_table<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v143, &v148);
            if (v76 >= 2 && (*(a1 + 261) & 1) != 0)
            {
              v79 = v78[4];
              if (v79 != v78[3])
              {
                *(v79 - 16) = v77;
              }
            }

            v80 = (v78 + 3);
            v81 = (v78 + 4);
          }

          else
          {
            v82 = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetArcs(a1, v72, v76 >> 1);
            v80 = (v82 + 2);
            v81 = (v82 + 3);
          }

          v83 = v134;
          v84 = *v80;
          v133 = *v81;
          if (*v80 != *v81)
          {
            break;
          }
        }
      }

LABEL_160:
      v128 = *(v71 + 16);
      *(v71 + 16) = *(a1 + 56);
      *(a1 + 56) = v71;
      v71 = v128;
      if (!v128)
      {
        goto LABEL_161;
      }
    }

    v131 = v73 << 6;
    v85 = *v81;
    while (1)
    {
      v86 = *v84;
      if (v86)
      {
        v87 = *(v84 + 1);
        v88 = v84[2];
        v89 = *(v84 + 3);
        v90 = *(*v138 + 4 * v86);
        if (v90 == 0.0)
        {
          v90 = -(**v83)(v83, v137, *v84);
          *(*v138 + 4 * v86) = v90;
        }

        if ((v91 = v90 + *(v74 + 12), v87 >= *(a1 + 236)) && v87 <= *(a1 + 240) || ((v88 + v91) - *(a1 + 232)) <= v57)
        {
          v92 = *(a1 + 280);
          if (!v92)
          {
            break;
          }

          if ((*(v74 + 8) & 0x3F) == 0)
          {
            break;
          }

          LODWORD(v149[0]) = v87;
          if (!std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v92 + 64), v149))
          {
            break;
          }
        }
      }

LABEL_155:
      v84 += 4;
      if (v84 == v85)
      {
        goto LABEL_160;
      }
    }

    v93 = v139;
    v94 = 0.0;
    if (!v87)
    {
LABEL_128:
      v98 = v88 + v94;
      v99 = v91 + v98;
      if ((v91 + v98) <= v57 && v99 != INFINITY)
      {
        if ((v99 + v146) < v57)
        {
          v57 = v99 + v146;
        }

        v101 = v89 + (v93 << 32);
        v102 = *(a1 + 32);
        v103 = (v102 + 16 * (v101 % *(a1 + 24)));
        v104 = v103[1];
        v136 = v93;
        if (v104)
        {
          v105 = *v103;
          v106 = (a1 + 8);
          if (v105 != -1)
          {
            v106 = (*(v102 + 16 * v105 + 8) + 16);
          }

          v107 = *(v104 + 16);
          for (j = *v106; j != v107; j = *(j + 16))
          {
            if (*j == v101)
            {
              v111 = *(j + 8);
              v125 = *(a1 + 328) + 32 * v111;
              v127 = *(v125 + 12);
              v126 = (v125 + 12);
              if (v127 <= v99)
              {
                v118 = 0;
              }

              else
              {
                *v126 = v99;
                v118 = 1;
              }

              goto LABEL_147;
            }
          }
        }

        v109 = v71;
        v110 = (*(a1 + 88) + 8 * v132);
        LODWORD(v111) = kaldi::quasar::TokenHeap::NewToken((a1 + 328), v99, 0.0, 0, *v110, *(v74 + 8) & 0x3F);
        *v110 = v111;
        ++*(a1 + 288);
        v112 = *(a1 + 24);
        v113 = *(a1 + 32);
        v114 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(v135);
        v115 = v101 % v112;
        v116 = (v113 + 16 * (v101 % v112));
        *v114 = v101;
        *(v114 + 8) = v111;
        v117 = v116[1];
        if (v117)
        {
          *(v114 + 16) = *(v117 + 16);
          *(v117 + 16) = v114;
          v116[1] = v114;
          v118 = 1;
        }

        else
        {
          v119 = *(a1 + 16);
          v120 = (a1 + 8);
          if (v119 != -1)
          {
            v120 = (*(*(a1 + 32) + 16 * v119 + 8) + 16);
          }

          *v120 = v114;
          *(v114 + 16) = 0;
          *v116 = v119;
          v116[1] = v114;
          v118 = 1;
          *(a1 + 16) = v115;
        }

        v71 = v109;
        v85 = v133;
LABEL_147:
        v121 = *(a1 + 328);
        v122 = kaldi::quasar::TokenHeap::NewForwardLink((a1 + 328), v111, v86, v87, v98, v90, *(v74 + 20));
        v123 = v121 + 32 * v111;
        *(v74 + 20) = v122;
        v124 = *(a1 + 280);
        if (v124 && v87 && (LODWORD(v149[0]) = v87, !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v124 + 64), v149)) || (*(v74 + 8) & 0x3F) != 0 && (*(v74 + 4) & 1) != 0)
        {
          *v123 |= 0x100000000uLL;
        }

        v83 = v134;
        if (v118)
        {
          *(v123 + 8) = *(v123 + 8) & 0x3F | v131;
          *v123 = *v123 & 0x100000001 | (2 * v86) | (v87 << 33);
          *(v123 + 28) = v136;
        }
      }

      goto LABEL_155;
    }

    v95 = v139;
    if ((*(**(a1 + 168) + 32))(*(a1 + 168)))
    {
      v96 = NAN;
      if (v88 != -INFINITY)
      {
        v96 = NAN;
        if (*(v149 + 2) != -INFINITY)
        {
          v96 = INFINITY;
          if (*(v149 + 2) != INFINITY && v88 != INFINITY)
          {
            v96 = v88 + *(v149 + 2);
          }
        }
      }

      v87 = DWORD1(v149[0]);
      v93 = HIDWORD(v149[0]);
      if (!DWORD1(v149[0]))
      {
        goto LABEL_127;
      }
    }

    else
    {
      v96 = INFINITY;
      v93 = v95;
    }

    v94 = *(a1 + 212);
LABEL_127:
    v88 = v96;
    goto LABEL_128;
  }

LABEL_161:
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(&v140);
  std::__hash_table<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,std::__unordered_map_hasher<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeHash,kaldi::quasar::AttributeEquality,true>,std::__unordered_map_equal<kaldi::quasar::AbstractAttribute *,std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>,kaldi::quasar::AttributeEquality,kaldi::quasar::AttributeHash,true>,std::allocator<std::__hash_value_type<kaldi::quasar::AbstractAttribute *,std::vector<std::pair<int,int>>>>>::~__hash_table(v143);
  return v57;
}