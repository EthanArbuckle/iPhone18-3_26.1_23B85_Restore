void sub_1B51CD894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, void *a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B51CDDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void ***a10, uint64_t a11, void *a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    quasar::result_handler::Package::~Package(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

id RHPackageToEARResult(uint64_t **a1)
{
  v2 = a1[6];
  v3 = a1[7];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  if (v2 != v3)
  {
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v14, *v2, v2[1], 0x6DB6DB6DB6DB6DB7 * ((v2[1] - *v2) >> 5));
  }

  v4 = *a1;
  v5 = a1[1];
  v12 = 0;
  v13 = 0;
  v11 = 0;
  if (v4 != v5)
  {
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v11, *v4, v4[1], 0x6DB6DB6DB6DB6DB7 * ((v4[1] - *v4) >> 5));
  }

  v6 = [_EARSpeechRecognitionResult alloc];
  memset(v10, 0, sizeof(v10));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v10, v14, v15, 0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 5));
  memset(v9, 0, sizeof(v9));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v9, v11, v12, 0x6DB6DB6DB6DB6DB7 * ((v12 - v11) >> 5));
  v7 = [(_EARSpeechRecognitionResult *)v6 _initWithTokens:v10 preITNTokens:v9];
  v17 = v9;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = v10;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  v17 = &v11;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
  v11 = &v14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v11);

  return v7;
}

void sub_1B51CE014(_Unwind_Exception *a1)
{
  *(v1 - 40) = v1 - 64;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100]((v1 - 40));
  _Unwind_Resume(a1);
}

void EARResultToRHPackage(_EARSpeechRecognitionResult *a1)
{
  v2 = *MEMORY[0x1E69E9840];
  v1 = a1;
  operator new();
}

void sub_1B51CE230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, char a11)
{
  a10 = &a11;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a10);

  std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](v12);
  _Unwind_Resume(a1);
}

void sub_1B51CE3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a16);
  _Unwind_Resume(a1);
}

void sub_1B51CE680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::push_back[abi:ne200100](uint64_t a1, const quasar::Token *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(a1, a2);
  }

  else
  {
    quasar::Token::Token(*(a1 + 8), a2);
    result = v3 + 224;
    *(a1 + 8) = v3 + 224;
  }

  *(a1 + 8) = result;
  return result;
}

void EARContinuousListeningResultHelper::writePartialImpl(uint64_t a1, uint64_t *a2, unsigned int a3, int a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t *a10, uint64_t a11)
{
  EARContinuousListeningResultHelper::setParser(a1);
  memset(v32, 0, sizeof(v32));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v32, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  WeakRetained = objc_loadWeakRetained((a1 + 208));
  v17 = objc_loadWeakRetained((a1 + 216));
  v18 = *(a1 + 232);
  v19 = *(a1 + 240);
  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(a1, &v30);
  v20 = objc_loadWeakRetained((a1 + 224));
  v21 = a10[1];
  v29[0] = *a10;
  v29[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = *(a1 + 248);
  v23 = *(a1 + 256);
  v28[0] = v22;
  v28[1] = v23;
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LODWORD(v24) = a4;
  writePartialToResultStream(v32, WeakRetained, v17, v18, v19, a5, a3, a3, v24, &v30, 0, v20, a6, a7, a8, a9, v29, v28, a11);
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  v33 = v32;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_1B51CEC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v29 = *(v27 - 128);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  *(v27 - 96) = v27 - 120;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v27 - 96));
  _Unwind_Resume(a1);
}

void EARContinuousListeningResultHelper::setParser(EARContinuousListeningResultHelper *this)
{
  WeakRetained = objc_loadWeakRetained(this + 26);
  v3 = WeakRetained;
  if (WeakRetained && *(this + 35))
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    v4 = *(this + 35);
    [(dispatch_queue_t *)v3 getParser];
    quasar::result_handler::VoiceEditingResultHandler::setParser(v4, &v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    *(this + 35) = 0;
  }
}

void sub_1B51CED4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(a1);
}

void writePartialToResultStream(quasar::Token ***a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, int a7, unsigned int a8, uint64_t a9, uint64_t *a10, int a11, void *a12, uint64_t a13, char a14, uint64_t a15, char a16, uint64_t *a17, void *a18, uint64_t a19)
{
  v56 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v25 = a3;
  v43 = a4;
  v44 = a5;
  v41 = a12;
  if (*a1 == a1[1])
  {
    memset(v55, 0, sizeof(v55));
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(a1, v55, &v56, 1uLL);
    v54 = v55;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v54);
  }

  if (objc_opt_respondsToSelector())
  {
    v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = *a1;
    v26 = a1[1];
    while (v27 != v26)
    {
      v28 = a10[1];
      v52 = *a10;
      v53 = v28;
      if (v28)
      {
        atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v29 = a17[1];
      v50 = *a17;
      v51 = v29;
      if (v29)
      {
        atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v30 = [v24 hasUtteranceDetection];
      v31 = [v24 concatenateUtterances];
      v33 = EARSpeechRecognitionResultFromQuasarResult(v24, v27, v43, v44, v32, 0, a7, 0, &v52, 0, a13, a14, v40, a16, &v50, v30, v31, a19);
      [(_EARSpeechRecognitionResult *)v45 addObject:v33];

      if (v51)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }

      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      v27 += 3;
    }

    [v25 speechRecognizer:v24 didRecognizePartialResultNbest:v45];
  }

  else
  {
    v34 = *a1;
    v35 = a10[1];
    v48 = *a10;
    v49 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v36 = a17[1];
    v46 = *a17;
    v47 = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = [v24 hasUtteranceDetection];
    v38 = [v24 concatenateUtterances];
    v45 = EARSpeechRecognitionResultFromQuasarResult(v24, v34, v43, v44, v39, a8, a7, 0, &v48, a11, a13, a14, v40, a16, &v46, v37, v38, a19);
    if (v47)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    if (v49)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v49);
    }

    if (*a18)
    {
      EARResultToRHPackage(v45);
    }

    [v25 speechRecognizer:v24 didRecognizePartialResult:v45];
  }

  [v41 addPartialResultToContext:*a1];
}

void sub_1B51CF0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, uint64_t a21, uint64_t a22, void *a23, void *a24, void *a25, void **a26)
{
  std::unique_ptr<quasar::result_handler::Package>::~unique_ptr[abi:ne200100](&a26);

  _Unwind_Resume(a1);
}

void EARContinuousListeningResultHelper::writeFinalImpl(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6, unsigned __int8 a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, unsigned __int8 a12, uint64_t a13, unsigned __int8 a14, uint64_t a15)
{
  EARContinuousListeningResultHelper::setParser(a1);
  WeakRetained = objc_loadWeakRetained((a1 + 208));
  v27 = objc_loadWeakRetained((a1 + 216));
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  memset(v40, 0, sizeof(v40));
  v38 = 0u;
  *__p = 0u;
  v37 = 0u;
  v39 = 1065353216;
  v23 = *(a1 + 232);
  v22 = *(a1 + 240);
  v24 = objc_loadWeakRetained((a1 + 224));
  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(a1, &v34);
  memset(v33, 0, sizeof(v33));
  v32[0] = 0;
  v32[1] = 0;
  v31 = v32;
  memset(v30, 0, sizeof(v30));
  v25 = *(a1 + 248);
  v26 = *(a1 + 256);
  v29[0] = v25;
  v29[1] = v26;
  if (v26)
  {
    atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  writeFinalChoicesToResultStream(a2, a3, a4, WeakRetained, v27, v40, __p, v23, -1000.0, 9.0, a5, a6, v22, v24, 1, a7, &v34, a9, a10, v33, &v31, v30, a11, a12, a14, 0, v29, a15);
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  v48 = v30;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v48);
  std::__tree<std::string>::destroy(&v31, v32[0]);
  v31 = v33;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v31);
  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[1]);
  }

  if (v45)
  {
    *(&v45 + 1) = v45;
    operator delete(v45);
  }

  if (v43)
  {
    *(&v43 + 1) = v43;
    operator delete(v43);
  }

  if (v41)
  {
    *(&v41 + 1) = v41;
    operator delete(v41);
  }

  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }
}

void sub_1B51CF3D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29, char *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  *(v45 - 104) = &a26;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v45 - 104));
  std::__tree<std::string>::destroy(&a29, a30);
  a29 = &a32;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  quasar::AudioAnalytics::~AudioAnalytics((v45 - 256));

  _Unwind_Resume(a1);
}

void writeFinalChoicesToResultStream(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4, void *a5, uint64_t a6, unsigned __int8 *a7, void *a8, double a9, double a10, unsigned int a11, int a12, void *a13, void *a14, int a15, unsigned __int8 a16, uint64_t *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, char a23, unsigned __int8 a24, unsigned __int8 a25, int a26, void *a27, uint64_t a28)
{
  v298 = *MEMORY[0x1E69E9840];
  v33 = a4;
  v194 = a5;
  v190 = a8;
  v189 = a13;
  v201 = a14;
  v199 = v33;
  dispatch_assert_queue_V2(v33[1]);
  v188 = a1;
  if (*a1 == a1[1])
  {
    std::string::basic_string[abi:ne200100]<0>(&__s, "");
  }

  else
  {
    quasar::TextProc::GetOrthography(*a1, 0, &__s);
  }

  if (v201)
  {
    [v201 prevBestRecogText];
    v34 = BYTE7(v221);
    v35 = *(&__p + 1);
  }

  else
  {
    v35 = 0;
    v34 = 0;
    __p = 0uLL;
    *&v221 = 0;
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __s.__r_.__value_.__l.__size_;
  }

  if ((v34 & 0x80u) == 0)
  {
    v35 = v34;
  }

  if (size != v35 || ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_s = &__s) : (p_s = __s.__r_.__value_.__r.__words[0]), (v34 & 0x80u) == 0 ? (p_p = &__p) : (p_p = __p), memcmp(p_s, p_p, size)))
  {
    v193 = 0;
    if ((v34 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v193 = [v201 countOfIsFinalFalseAlreadyWritten] != 0;
  if ((BYTE7(v221) & 0x80) != 0)
  {
LABEL_21:
    operator delete(__p);
  }

LABEL_22:
  v283 = 0;
  v284 = &v283;
  v285 = 0x3032000000;
  v286 = __Block_byref_object_copy__2;
  v287 = __Block_byref_object_dispose__2;
  v288 = 0;
  v277 = 0;
  v278 = &v277;
  v279 = 0x3032000000;
  v280 = __Block_byref_object_copy__2;
  v281 = __Block_byref_object_dispose__2;
  v282 = 0;
  v271 = 0;
  v272 = &v271;
  v273 = 0x3032000000;
  v274 = __Block_byref_object_copy__2;
  v275 = __Block_byref_object_dispose__2;
  v276 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v193)
  {
    v39 = [(dispatch_queue_t *)v33 canCloneIsFinalAsLastNonFinal];
  }

  else
  {
    v39 = 0;
  }

  if ([(dispatch_queue_t *)v33 enableDRTOptimization])
  {
    if ([v190 isEqualToString:@"Dictation"])
    {
      v40 = v193;
    }

    else
    {
      v40 = v39;
    }

    if (!v40)
    {
      goto LABEL_30;
    }
  }

  else if (!v39)
  {
LABEL_30:
    v195 = v33[2];
    v265 = 0;
    v41 = a17[1];
    v263 = *a17;
    v264 = v41;
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v191 = [(dispatch_queue_t *)v33 hasUtteranceDetection];
    v42 = [(dispatch_queue_t *)v33 concatenateUtterances];
    v43 = [(dispatch_queue_t *)v33 itnEnablingFlags];
    v44 = [(dispatch_queue_t *)v33 recognizeEmoji];
    v262 = 0;
    v45 = *(a21 + 16);
    if (v45)
    {
      v46 = &v261;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v261 = 0;
    }

    v47 = v284 + 5;
    v260 = v284[5];
    v48 = (v278 + 5);
    v259 = v278[5];
    v258 = 0;
    v49 = v199[7];
    v185 = [(dispatch_queue_t *)v199 relevantTextContext];
    [(dispatch_queue_t *)v199 getParser];
    v50 = resultPackageWithResultChoices(v188, a3, v195, a6, a7, v190, a11, v189, a9, a10, a16, &v265, &v263, v191, v42, a18, a19, a20, v43, v44, 1u, &v262, a22, v46, a23, a24, a25, &v260, &v259, &v258, v49, a26, v185, a28, [(dispatch_queue_t *)v199 continuousListeningFormatAcrossUtterances]);
    v192 = v265;
    v196 = v262;
    v198 = v50;
    if (v45)
    {
      obja = v261;
    }

    else
    {
      obja = 0;
    }

    objc_storeStrong(v47, v260);
    objc_storeStrong(v48, v259);
    v187 = v258;
    if (v257)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v257);
    }

    if (v264)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v264);
    }

    [v272[5] addObjectsFromArray:v187];
    v52 = [(_EARSpeechRecognitionResultPackage *)v50 hasNonEmptyToken];
    v255 = 0u;
    v256 = 0u;
    v253 = 0u;
    v254 = 0u;
    objb = obja;
    v86 = [objb countByEnumeratingWithState:&v253 objects:v296 count:16];
    if (v86)
    {
      v87 = *v254;
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v254 != v87)
          {
            objc_enumerationMutation(objb);
          }

          v89 = [objb objectForKeyedSubscript:*(*(&v253 + 1) + 8 * i)];
          v90 = [v89 hasNonEmptyToken];

          v52 |= v90;
        }

        v86 = [objb countByEnumeratingWithState:&v253 objects:v296 count:16];
      }

      while (v86);
    }

    if (objb)
    {
      v91 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      v92 = objb;
      v93 = [v92 countByEnumeratingWithState:&v249 objects:v295 count:16];
      if (v93)
      {
        v94 = *v250;
        do
        {
          for (j = 0; j != v93; ++j)
          {
            if (*v250 != v94)
            {
              objc_enumerationMutation(v92);
            }

            v96 = *(*(&v249 + 1) + 8 * j);
            v97 = [v92 objectForKeyedSubscript:v96];
            v98 = [v97 copy];
            [v91 setObject:v98 forKeyedSubscript:v96];
          }

          v93 = [v92 countByEnumeratingWithState:&v249 objects:v295 count:16];
        }

        while (v93);
      }

      v99 = v91;
    }

    else
    {
      v99 = 0;
    }

    [v201 setAnyResults:v52 & 1];
    v113 = [(_EARSpeechRecognitionResultPackage *)v198 copy];
    [v201 setPrevPackage:v113];

    [v201 setPrevMuxPackages:v99];
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v248, __s.__r_.__value_.__l.__data_, __s.__r_.__value_.__l.__size_);
    }

    else
    {
      v248 = __s;
    }

    [v201 setPrevBestRecogText:&v248];
    if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v248.__r_.__value_.__l.__data_);
    }

    [v201 setPrevPackageWithoutPersonalization:v196];
    if ((a3 & 1) == 0)
    {
      [v201 incrementCountOfIsFinalFalseAlreadyWritten];
    }

    goto LABEL_83;
  }

  v51 = [v201 prevPackage];
  v52 = [v201 anyResults];
  [(_EARSpeechRecognitionResultPackage *)v51 setIsFinal:a3];
  v53 = v33[2];
  v270[0] = MEMORY[0x1E69E9820];
  v270[1] = 3221225472;
  v270[2] = ___ZL31writeFinalChoicesToResultStreamRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEERKNS0_IdNS3_IdEEEEbP20_EARSpeechRecognizerPU44objcproto33_EARSpeechRecognitionResultStream11objc_objectRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjjSP_P17_EARResultContextNS1_21RecogResultStreamBase11RecogStatusEbRKS5_NS_10shared_ptrINS1_25ContinuousListeningConfigEEESV_RS7_RKNS0_INS1_11ItnOverrideENS3_IS10_EEEERKNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS1A_EENS3_IS1A_EEEERKNS0_IS1E_NS3_IS1E_EEEEbbSV_bdiNSW_INS1_14result_handler13ResultHandlerEEERK14FormattingInfo_block_invoke;
  v270[3] = &unk_1E7C1A638;
  v270[4] = &v283;
  v270[5] = &v277;
  v270[6] = &v271;
  [v53 setItnMetricsWithCompletion:v270];
  v198 = v51;
  v54 = [(_EARSpeechRecognitionResultPackage *)v51 recognition];
  v55 = [v54 tokenSausage];
  v56 = (a12 + a11) / 1000.0;
  v57 = tokenSausageWithExtendedEndTime(v55, v56);
  v58 = [(_EARSpeechRecognitionResultPackage *)v198 recognition];
  [v58 setTokenSausage:v57];

  v59 = [(_EARSpeechRecognitionResultPackage *)v198 preITNRecognition];
  v60 = [v59 tokenSausage];
  v61 = tokenSausageWithExtendedEndTime(v60, v56);
  v62 = [(_EARSpeechRecognitionResultPackage *)v198 preITNRecognition];
  [v62 setTokenSausage:v61];

  v63 = [(_EARSpeechRecognitionResultPackage *)v198 unrepairedRecognition];
  v64 = [v63 tokenSausage];
  v65 = tokenSausageWithExtendedEndTime(v64, v56);
  v66 = [(_EARSpeechRecognitionResultPackage *)v198 unrepairedRecognition];
  [v66 setTokenSausage:v65];

  [(_EARSpeechRecognitionResultPackage *)v198 setFirstResultAfterResume:0];
  [(_EARSpeechRecognitionResultPackage *)v198 setRecognitionPaused:a24];
  if (*(a21 + 16))
  {
    v67 = [v201 prevMuxPackages];
    v268 = 0u;
    v269 = 0u;
    v266 = 0u;
    v267 = 0u;
    objb = v67;
    v68 = [objb countByEnumeratingWithState:&v266 objects:v297 count:16];
    if (v68)
    {
      v69 = *v267;
      do
      {
        for (k = 0; k != v68; ++k)
        {
          if (*v267 != v69)
          {
            objc_enumerationMutation(objb);
          }

          v71 = *(*(&v266 + 1) + 8 * k);
          v72 = [v201 prevMuxPackages];
          v73 = [v72 objectForKeyedSubscript:v71];

          [v73 setIsFinal:a3];
          v74 = [v73 recognition];
          v75 = [v74 tokenSausage];
          v76 = tokenSausageWithExtendedEndTime(v75, v56);
          v77 = [v73 recognition];
          [v77 setTokenSausage:v76];

          v78 = [v73 preITNRecognition];
          v79 = [v78 tokenSausage];
          v80 = tokenSausageWithExtendedEndTime(v79, v56);
          v81 = [v73 preITNRecognition];
          [v81 setTokenSausage:v80];

          v82 = [v73 unrepairedRecognition];
          v83 = [v82 tokenSausage];
          v84 = tokenSausageWithExtendedEndTime(v83, v56);
          v85 = [v73 unrepairedRecognition];
          [v85 setTokenSausage:v84];
        }

        v68 = [objb countByEnumeratingWithState:&v266 objects:v297 count:16];
      }

      while (v68);
    }
  }

  else
  {
    objb = 0;
  }

  v100 = [v201 prevPackageWithoutPersonalization];
  [v100 setIsFinal:a3];
  v101 = [v100 recognition];
  v196 = v100;
  v102 = [v101 tokenSausage];
  v103 = tokenSausageWithExtendedEndTime(v102, v56);
  v104 = [v196 recognition];
  [v104 setTokenSausage:v103];

  v105 = [v196 preITNRecognition];
  v106 = [v105 tokenSausage];
  v107 = tokenSausageWithExtendedEndTime(v106, v56);
  v108 = [v196 preITNRecognition];
  [v108 setTokenSausage:v107];

  v109 = [v196 unrepairedRecognition];
  v110 = [v109 tokenSausage];
  v111 = tokenSausageWithExtendedEndTime(v110, v56);
  v112 = [v196 unrepairedRecognition];
  [v112 setTokenSausage:v111];

  [v196 setFirstResultAfterResume:0];
  [v196 setRecognitionPaused:a24];
  v192 = 0;
LABEL_83:
  if (a15 != 1 || (a3 & 1) == 0 || v193)
  {
    v114 = 0;
  }

  else
  {
    v114 = [(dispatch_queue_t *)v199 canCloneIsFinalAsLastNonFinal];
  }

  if (quasar::gLogLevel >= 5)
  {
    if (*(a21 + 16))
    {
      v246 = 0u;
      v247 = 0u;
      v244 = 0u;
      v245 = 0u;
      v115 = objb;
      v116 = [v115 countByEnumeratingWithState:&v244 objects:v294 count:16];
      if (v116)
      {
        v117 = *v245;
        do
        {
          for (m = 0; m != v116; ++m)
          {
            if (*v245 != v117)
            {
              objc_enumerationMutation(v115);
            }

            v119 = *(*(&v244 + 1) + 8 * m);
            v120 = [v115 objectForKeyedSubscript:v119];
            logPackageToQuasarDebug(v120, v119, 0);
          }

          v116 = [v115 countByEnumeratingWithState:&v244 objects:v294 count:16];
        }

        while (v116);
      }
    }

    else
    {
      logPackageToQuasarDebug(v198, 0, 0);
    }
  }

  if ((v52 & 1) == 0 && ![(_EARSpeechRecognitionResultPackage *)v198 recognitionPaused])
  {
    goto LABEL_151;
  }

  v121 = *(a21 + 16);
  if (!v121)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if (objc_opt_respondsToSelector())
      {
        v140 = [(_EARSpeechRecognitionResultPackage *)v198 nBestResults];
        v141 = [(_EARSpeechRecognitionResultPackage *)v198 recognition];
        v142 = [v141 tokenSausage];
        v143 = [(_EARSpeechRecognitionResultPackage *)v198 recognition];
        v144 = [v143 interpretationIndices];
        [v194 speechRecognizer:v199 didRecognizeFinalResults:v140 tokenSausage:v142 nBestChoices:v144];
      }

      else
      {
        v145 = [(_EARSpeechRecognitionResultPackage *)v198 nBestResults];
        [v194 speechRecognizer:v199 didRecognizeFinalResults:v145];
      }

      goto LABEL_151;
    }

    if (v114)
    {
      v139 = [(_EARSpeechRecognitionResultPackage *)v198 copy];
      [v139 setIsFinal:0];
      [v194 speechRecognizer:v199 didRecognizeFinalResultPackage:v139];
    }

    if (*a27)
    {
      EARPackageToRHPackage(v198);
    }

    if ([(dispatch_queue_t *)v199 hasUtteranceDetection])
    {
      if (![(dispatch_queue_t *)v199 concatenateUtterances]|| (a3 & 1) != 0)
      {
LABEL_144:
        if (v201)
        {
          [v201 partialResults];
        }

        else
        {
          __p = 0uLL;
          *&v221 = 0;
        }

        v146 = *v188;
        v147 = v188[1];
        *&v217 = 0;
        v216 = 0uLL;
        if (v146 != v147)
        {
          std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v216, *v146, v146[1], 0x6DB6DB6DB6DB6DB7 * ((v146[1] - *v146) >> 5));
        }

        -[_EARSpeechRecognitionResultPackage setCorrectPartialResultIndexList:oneBestFinalResult:partialResultIndexOffset:](v198, "setCorrectPartialResultIndexList:oneBestFinalResult:partialResultIndexOffset:", &__p, &v216, [v201 partialResultIndexOffset]);
        v233 = &v216;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v233);
        *&v216 = &__p;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v216);
      }
    }

    else if (a3)
    {
      goto LABEL_144;
    }

    [v194 speechRecognizer:v199 didRecognizeFinalResultPackage:v198];
    goto LABEL_151;
  }

  if (v121 != [objb count])
  {
    v183 = [MEMORY[0x1E696AAA8] currentHandler];
    v184 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeFinalChoicesToResultStream(const std::vector<std::vector<Token>> &, const std::vector<double> &, BOOL, _EARSpeechRecognizer *__strong, __strong id<_EARSpeechRecognitionResultStream>, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, const unsigned int, NSString *__strong, _EARResultContext *__strong, RecogResultStreamBase::RecogStatus, BOOL, const std::vector<Token> &, std::shared_ptr<ContinuousListeningConfig>, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, const std::set<std::string> &, const std::vector<std::set<std::string>> &, BOOL, BOOL, const std::vector<quasar::Token> &, BOOL, double, int, std::shared_ptr<result_handler::ResultHandler>, const FormattingInfo &)"}];
    [v183 handleFailureInFunction:v184 file:@"EARSpeechRecognizer.mm" lineNumber:2558 description:{@"There are results, but not every user has results"}];
  }

  if (objc_opt_respondsToSelector())
  {
    if (v114)
    {
      v122 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v242 = 0u;
      v243 = 0u;
      v240 = 0u;
      v241 = 0u;
      v123 = objb;
      v124 = [v123 countByEnumeratingWithState:&v240 objects:v293 count:16];
      if (v124)
      {
        v125 = *v241;
        do
        {
          for (n = 0; n != v124; ++n)
          {
            if (*v241 != v125)
            {
              objc_enumerationMutation(v123);
            }

            v127 = *(*(&v240 + 1) + 8 * n);
            v128 = [v123 objectForKeyedSubscript:v127];
            v129 = [v128 copy];

            [v129 setIsFinal:0];
            [v122 setObject:v129 forKeyedSubscript:v127];
          }

          v124 = [v123 countByEnumeratingWithState:&v240 objects:v293 count:16];
        }

        while (v124);
      }

      v130 = [(dispatch_queue_t *)v199 _unmaskMuxPackages:v122];
      [v194 speechRecognizer:v199 didRecognizeFinalResultMultiUserPackages:v130];
    }

    v238 = 0u;
    v239 = 0u;
    v236 = 0u;
    v237 = 0u;
    v131 = objb;
    v132 = [v131 countByEnumeratingWithState:&v236 objects:v292 count:16];
    if (v132)
    {
      v133 = *v237;
      do
      {
        for (ii = 0; ii != v132; ++ii)
        {
          if (*v237 != v133)
          {
            objc_enumerationMutation(v131);
          }

          v135 = *(*(&v236 + 1) + 8 * ii);
          if ([(dispatch_queue_t *)v199 hasUtteranceDetection])
          {
            if ([(dispatch_queue_t *)v199 concatenateUtterances]&& (a3 & 1) == 0)
            {
              continue;
            }
          }

          else if (!a3)
          {
            continue;
          }

          v136 = [v131 objectForKeyedSubscript:v135];
          v137 = [v136 preITNRecognition];
          EARHelpers::QuasarNbestFromEARSpeechRecognition(v137, &__p);

          if (v201)
          {
            [v201 partialResults];
          }

          else
          {
            v216 = 0uLL;
            *&v217 = 0;
          }

          v235 = 0;
          v233 = 0;
          v234 = 0;
          if (__p != *(&__p + 1))
          {
            std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v233, *__p, *(__p + 8), 0x6DB6DB6DB6DB6DB7 * ((*(__p + 8) - *__p) >> 5));
          }

          [v136 setCorrectPartialResultIndexList:&v216 oneBestFinalResult:&v233 partialResultIndexOffset:{objc_msgSend(v201, "partialResultIndexOffset")}];
          v215[0] = &v233;
          std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v215);
          v233 = &v216;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v233);
          *&v216 = &__p;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v216);
        }

        v132 = [v131 countByEnumeratingWithState:&v236 objects:v292 count:16];
      }

      while (v132);
    }

    v138 = [(dispatch_queue_t *)v199 _unmaskMuxPackages:v131];
    [v194 speechRecognizer:v199 didRecognizeFinalResultMultiUserPackages:v138];
  }

LABEL_151:
  if ((a24 & 1) == 0 && [(dispatch_queue_t *)v199 hasUtteranceDetection]&& ([(dispatch_queue_t *)v199 concatenateUtterances]& 1) == 0)
  {
    v148 = [(_EARSpeechRecognitionResultPackage *)v198 recognition];
    v149 = [v148 oneBest];

    v150 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v231 = 0u;
    v232 = 0u;
    v229 = 0u;
    v230 = 0u;
    v151 = [(_EARSpeechRecognitionResultPackage *)v198 preITNRecognition];
    v152 = [v151 oneBest];

    v153 = [v152 countByEnumeratingWithState:&v229 objects:v291 count:16];
    if (v153)
    {
      v154 = *v230;
      do
      {
        for (jj = 0; jj != v153; ++jj)
        {
          if (*v230 != v154)
          {
            objc_enumerationMutation(v152);
          }

          v156 = [*(*(&v229 + 1) + 8 * jj) tokenName];
          [v150 addObject:v156];
        }

        v153 = [v152 countByEnumeratingWithState:&v229 objects:v291 count:16];
      }

      while (v153);
    }

    v157 = [(dispatch_queue_t *)v199 relevantTextContext];
    v158 = EARHelpers::EarTokensToNSString(v149);
    [v157 appendToLeftContext:v158 preItnLeftContext:v150];

    v159 = [v149 lastObject];
    LOBYTE(v158) = v159 == 0;

    if ((v158 & 1) == 0)
    {
      v160 = [(dispatch_queue_t *)v199 relevantTextContext];
      v161 = [v149 lastObject];
      [v160 setLeftContextEndsWithAppendedAutoPunctuation:{objc_msgSend(v161, "appendedAutoPunctuation")}];
    }
  }

  if ([(dispatch_queue_t *)v199 hasUtteranceDetection]&& ([(dispatch_queue_t *)v199 concatenateUtterances]& 1) == 0)
  {
    [v201 updateLoggableResultWithCurrentResult:v188 currentCosts:a2 startMilliseconds:a11];
    [v201 resetPartialResultContext];
  }

  v162 = [(_EARSpeechRecognitionResult *)v192 tokens];
  if ([v162 count])
  {
    v163 = [(_EARSpeechRecognitionResultPackage *)v198 recognitionPaused];

    if (!v163)
    {
      if (*a27)
      {
        EARResultToRHPackage(v192);
      }

      [v194 speechRecognizer:v199 didRecognizePartialResult:v192];
      if (v192)
      {
        [(_EARSpeechRecognitionResult *)v192 quasarPreItnTokens];
      }

      else
      {
        __p = 0uLL;
        *&v221 = 0;
      }

      [v201 addPartialResultToContext:&__p];
      *&v216 = &__p;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v216);
    }
  }

  else
  {
  }

  if (a3)
  {
    if (*(a21 + 16))
    {
      if (objb && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v164 = [(dispatch_queue_t *)v199 _unmaskMuxPackages:objb];
        [v194 speechRecognizer:v199 didProduceLoggableMultiUserPackages:v164];
      }
    }

    else if (v198 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if ([(dispatch_queue_t *)v199 hasUtteranceDetection]&& ([(dispatch_queue_t *)v199 concatenateUtterances]& 1) == 0)
      {
        if (v201)
        {
          [v201 loggableConcatResult];
        }

        else
        {
          v234 = 0;
          v233 = 0;
          v235 = 0;
        }

        if (v284[5])
        {
          v165 = v278[5] != 0;
        }

        else
        {
          v165 = 0;
        }

        v166 = v199[2];
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        __p = 0u;
        v217 = 0u;
        v218 = 0u;
        v216 = 0u;
        v219 = 1065353216;
        memset(v215, 0, sizeof(v215));
        v213 = 0;
        v214 = 0;
        v212 = 0;
        v167 = [(dispatch_queue_t *)v199 hasUtteranceDetection];
        v168 = [(dispatch_queue_t *)v199 concatenateUtterances];
        memset(v211, 0, sizeof(v211));
        memset(v210, 0, sizeof(v210));
        v169 = [(dispatch_queue_t *)v199 itnEnablingFlags];
        v170 = [(dispatch_queue_t *)v199 recognizeEmoji];
        v171 = 0;
        v172 = 0;
        memset(v209, 0, sizeof(v209));
        memset(v208, 0, sizeof(v208));
        v173 = &v207;
        if (v165)
        {
          v173 = 0;
        }

        v174 = v284;
        if (!v165)
        {
          v175 = v284[5];
          v171 = (v278 + 5);
          v206 = v278[5];
          v207 = v175;
          v172 = &v206;
        }

        v205 = 0;
        v176 = resultPackageWithResultChoices(&v233, 1u, v166, &__p, &v216, v190, 0, v189, -1000.0, 9.0, 0, &v214, &v212, v167, v168, v211, a19, v210, v169, v170, 0, 0, v209, 0, 0, a24, a25, v173, v172, &v205, v199[7], 0, 0, a28, 0);
        v177 = v214;
        if (!v165)
        {
          objc_storeStrong(v174 + 5, v207);
          objc_storeStrong(v171, v206);
        }

        v178 = v205;
        v290 = v208;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v290);
        v208[0] = v209;
        std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](v208);
        v209[0] = v210;
        std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](v209);
        v210[0] = v211;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v210);
        if (v213)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v213);
        }

        v211[0] = v215;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v211);
        if (SHIBYTE(v217) < 0)
        {
          operator delete(*(&v216 + 1));
        }

        quasar::AudioAnalytics::~AudioAnalytics(&__p);
        [v272[5] addObjectsFromArray:v178];
        if (v176)
        {
          [v194 speechRecognizer:v199 didProduceLoggablePackage:v176];
        }

        *&__p = &v233;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      else
      {
        [v194 speechRecognizer:v199 didProduceLoggablePackage:v196];
      }
    }

    v179 = [(dispatch_queue_t *)v199 recognitionMetrics];
    [v179 addPauseDurationMetric];

    v180 = [(dispatch_queue_t *)v199 recognitionMetrics];
    [v180 addItnRunIntervals:v272[5]];

    if (v284[5] && v278[5])
    {
      v181 = [(dispatch_queue_t *)v199 recognitionMetrics];
      [v181 addEmojiRecognitionMetrics:v284[5] recognizedEmojis:v278[5]];
    }

    v182 = [(dispatch_queue_t *)v199 relevantTextContext];
    [v182 reset];

    [v194 speechRecognizer:v199 didFinishRecognitionWithError:0];
    [v201 resetPartialResultContext];
  }

  _Block_object_dispose(&v271, 8);

  _Block_object_dispose(&v277, 8);
  _Block_object_dispose(&v283, 8);

  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }
}

void sub_1B51D0F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *a46, void *a47, void *a48, uint64_t a49, void *a50, void *a51)
{
  _Block_object_dispose(&STACK[0x578], 8);

  _Block_object_dispose(&STACK[0x5A8], 8);
  _Block_object_dispose(&STACK[0x5D8], 8);

  if (SLOBYTE(STACK[0x61F]) < 0)
  {
    operator delete(STACK[0x608]);
  }

  _Unwind_Resume(a1);
}

void quasar::AudioAnalytics::~AudioAnalytics(quasar::AudioAnalytics *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    *(this + 13) = v2;
    operator delete(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    *(this + 9) = v3;
    operator delete(v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }

  v5 = *this;
  if (*this)
  {
    *(this + 1) = v5;
    operator delete(v5);
  }
}

void EARContinuousListeningResultHelper::writeFinalCandidateImpl(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, char a10, uint64_t a11)
{
  EARContinuousListeningResultHelper::setParser(a1);
  memset(v43, 0, sizeof(v43));
  WeakRetained = objc_loadWeakRetained((a1 + 208));
  v21 = objc_loadWeakRetained((a1 + 216));
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v32 = 0u;
  *__p = 0u;
  v31 = 0u;
  v33 = 1065353216;
  v16 = *(a1 + 232);
  v15 = *(a1 + 240);
  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(a1, &v28);
  memset(v27, 0, sizeof(v27));
  v26[0] = 0;
  v26[1] = 0;
  v25 = v26;
  memset(v24, 0, sizeof(v24));
  v17 = *(a1 + 256);
  v23[0] = *(a1 + 248);
  v23[1] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v18 = objc_loadWeakRetained((a1 + 224));
  writeFinalCandidateChoicesToResultStream(a2, WeakRetained, v21, &v34, __p, v16, a4, -1000.0, 9.0, a5, v15, &v28, a7, v43, v27, &v25, v24, a8, a10, 0, v23, v18, a11);

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  v44 = v24;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v44);
  std::__tree<std::string>::destroy(&v25, v26[0]);
  v25 = v27;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v25);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p[1]);
  }

  if (v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (v36)
  {
    *(&v36 + 1) = v36;
    operator delete(v36);
  }

  if (v34)
  {
    *(&v34 + 1) = v34;
    operator delete(v34);
  }

  *&v34 = v43;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v34);
}

void sub_1B51D18D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, void *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char *a29, char *a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (v48)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
  }

  *(v50 - 104) = &a26;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100]((v50 - 104));
  std::__tree<std::string>::destroy(&a29, a30);
  a29 = &a32;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a29);
  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  quasar::AudioAnalytics::~AudioAnalytics(&a48);

  a48 = v50 - 128;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a48);
  _Unwind_Resume(a1);
}

void writeFinalCandidateChoicesToResultStream(uint64_t *a1, void *a2, void *a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned int a7, double a8, double a9, uint64_t a10, void *a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18, char a19, int a20, uint64_t *a21, void *a22, uint64_t a23)
{
  v27 = a2;
  v49 = a3;
  v53 = a6;
  v52 = a11;
  v54 = a22;
  if (*(a16 + 16))
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeFinalCandidateChoicesToResultStream(const std::vector<std::vector<Token>> &, const std::vector<double> &, _EARSpeechRecognizer *__strong, __strong id<_EARSpeechRecognitionResultStream>, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, const unsigned int, NSString *__strong, const std::vector<Token> &, std::shared_ptr<ContinuousListeningConfig>, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, const std::set<std::string> &, const std::vector<std::set<std::string>> &, BOOL, const std::vector<quasar::Token> &, double, BOOL, int, std::shared_ptr<result_handler::ResultHandler>, _EARResultContext *__strong, const FormattingInfo &)"}];
    [v43 handleFailureInFunction:v44 file:@"EARSpeechRecognizer.mm" lineNumber:2758 description:@"Mux is not supported for candidate packages"];
  }

  if (*a17 != a17[1])
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void writeFinalCandidateChoicesToResultStream(const std::vector<std::vector<Token>> &, const std::vector<double> &, _EARSpeechRecognizer *__strong, __strong id<_EARSpeechRecognitionResultStream>, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, const unsigned int, NSString *__strong, const std::vector<Token> &, std::shared_ptr<ContinuousListeningConfig>, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, const std::set<std::string> &, const std::vector<std::set<std::string>> &, BOOL, const std::vector<quasar::Token> &, double, BOOL, int, std::shared_ptr<result_handler::ResultHandler>, _EARResultContext *__strong, const FormattingInfo &)"}];
    [v45 handleFailureInFunction:v46 file:@"EARSpeechRecognizer.mm" lineNumber:2759 description:@"Mux is not supported for candidate packages"];
  }

  dispatch_assert_queue_V2(v27[1]);
  v28 = v27[2];
  v29 = a12[1];
  v60 = *a12;
  v61 = v29;
  if (v29)
  {
    atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v30 = [(dispatch_queue_t *)v27 hasUtteranceDetection];
  v31 = [(dispatch_queue_t *)v27 concatenateUtterances];
  v32 = [(dispatch_queue_t *)v27 itnEnablingFlags];
  v33 = [(dispatch_queue_t *)v27 recognizeEmoji];
  v58 = 0;
  v59 = 0;
  v34 = v27[7];
  v35 = [(dispatch_queue_t *)v27 relevantTextContext];
  [(dispatch_queue_t *)v27 getParser];
  v36 = resultPackageWithResultChoices(a1, 0, v28, a4, a5, v53, a7, v52, a8, a9, 0, 0, &v60, v30, v31, a13, a14, a15, v32, v33, 0, &v59, a17, 0, a18, 0, 0, 0, 0, &v58, v34, a20, v35, a23, [(dispatch_queue_t *)v27 continuousListeningFormatAcrossUtterances]);
  v37 = v59;
  v38 = v58;
  if (v57)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v57);
  }

  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  v39 = [(_EARSpeechRecognitionResultPackage *)v36 hasNonEmptyToken];
  if (quasar::gLogLevel > 4)
  {
    logPackageToQuasarDebug(v36, 0, 1);
  }

  if ([(dispatch_queue_t *)v27 enableDRTOptimization])
  {
    [v54 setAnyResults:v39];
    v40 = [(_EARSpeechRecognitionResultPackage *)v36 copy];
    [v54 setPrevPackage:v40];

    if (*a1 == a1[1])
    {
      std::string::basic_string[abi:ne200100]<0>(&v56, "");
    }

    else
    {
      quasar::TextProc::GetOrthography(*a1, 0, &v56);
    }

    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v55, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
    }

    else
    {
      v55 = v56;
    }

    [v54 setPrevBestRecogText:&v55];
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    [v54 setPrevPackageWithoutPersonalization:v37];
    [v54 incrementCountOfIsFinalFalseAlreadyWritten];
    if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v56.__r_.__value_.__l.__data_);
    }
  }

  else if (v39)
  {
    v41 = *a21;
    if (a19)
    {
      if (v41)
      {
        EARPackageToRHPackage(v36);
      }

      if (objc_opt_respondsToSelector())
      {
        [v49 speechRecognizer:v27 didRecognizeVoiceCommandCandidatePackage:v36];
      }
    }

    else
    {
      if (v41)
      {
        EARPackageToRHPackage(v36);
      }

      if (objc_opt_respondsToSelector())
      {
        [v49 speechRecognizer:v27 didRecognizeFinalResultCandidatePackage:v36];
      }
    }
  }

  v42 = [(dispatch_queue_t *)v27 recognitionMetrics];
  [v42 addItnRunIntervals:v38];
}

void sub_1B51D20F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1B51D21C0(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1B51D2D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a71, 8);
  _Block_object_dispose((v77 - 200), 8);
  a71 = a23;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a71);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__531(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1B51D3310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char *a18)
{
  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(&a18);

  _Unwind_Resume(a1);
}

void sub_1B51D3384(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B51D337CLL);
}

void sub_1B51D3458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1B51D38B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, char a46, uint64_t a47, uint64_t a48, void *__p, uint64_t a50, int a51, __int16 a52, char a53, char a54, uint64_t a55, uint64_t a56)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a56);
  if (a54 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::Token>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(a1, a2);
  }

  else
  {
    std::allocator_traits<std::allocator<quasar::Token>>::construct[abi:ne200100]<quasar::Token,quasar::Token,0>(a1, *(a1 + 8), a2);
    result = v3 + 224;
    *(a1 + 8) = v3 + 224;
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1B51D3D24(_Unwind_Exception *a1)
{
  v9 = v8;

  _Unwind_Resume(a1);
}

void sub_1B51D43FC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a2 == 4)
  {
    v8 = __cxa_begin_catch(exception_object);
    v9 = EARLogger::QuasarOSLogger(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_EARSpeechRecognizer loadParser];
    }

    __cxa_rethrow();
  }

  if (a2 == 3)
  {
    v3 = __cxa_begin_catch(exception_object);
    v4 = EARLogger::QuasarOSLogger(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_EARSpeechRecognizer loadParser];
    }
  }

  else
  {
    v5 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v6 = v5;
      v7 = EARLogger::QuasarOSLogger(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [_EARSpeechRecognizer loadParser];
      }

      __cxa_end_catch();
LABEL_18:
      JUMPOUT(0x1B51D43C8);
    }

    v4 = EARLogger::QuasarOSLogger(v5);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [_EARSpeechRecognizer loadParser];
    }
  }

  __cxa_end_catch();
  goto LABEL_18;
}

void sub_1B51D5A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  quasar::LmeDataStreams::~LmeDataStreams((v28 - 80));

  _Unwind_Resume(a1);
}

void addAotLmeStreams(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  if (v4)
  {
    memset(v22, 0, sizeof(v22));
    obj = v4;
    if ([obj countByEnumeratingWithState:v22 objects:v23 count:16])
    {
      v6 = **(&v22[0] + 1);
      v7 = MEMORY[0x1E696AEC0];
      v8 = [**(&v22[0] + 1) userId];
      v9 = v8;
      if (v8)
      {
        [v8 ear_toString];
        v10 = HIBYTE(v21);
        v12 = __p;
        v11 = v20;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v10 = 0;
        __p = 0;
        v20 = 0;
        v21 = 0;
      }

      if ((v10 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v12;
      }

      if ((v10 & 0x80u) == 0)
      {
        v14 = v10;
      }

      else
      {
        v14 = v11;
      }

      v15 = [v7 ear_stringWithStringView:{p_p, v14}];
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }

      v16 = [v5 objectForKeyedSubscript:v15];
      v17 = v16;
      if (v6)
      {
        [v6 lmeData];
        if (v17)
        {
LABEL_16:
          [v17 ear_toString];
          goto LABEL_19;
        }
      }

      else if (v16)
      {
        goto LABEL_16;
      }

      __p = 0;
      v20 = 0;
      v21 = 0;
LABEL_19:
      std::allocate_shared[abi:ne200100]<quasar::LmeContainer,std::allocator<quasar::LmeContainer>,std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType,0>();
    }
  }
}

void *__copy_helper_block_ea8_40c29_ZTSN6quasar14LmeDataStreamsE(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  v3 = a1 + 5;
  a1[7] = 0;
  std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType*,quasar::LmeDataFactoryBase::LmeType*>((a1 + 5), *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 2);
  return std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::map[abi:ne200100](v3 + 3, a2 + 64);
}

void sub_1B51D5E98(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_40c29_ZTSN6quasar14LmeDataStreamsE(uint64_t a1)
{
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(a1 + 64, *(a1 + 72));
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;

    operator delete(v2);
  }
}

void quasar::LmeDataStreams::~LmeDataStreams(char **this)
{
  std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy((this + 3), this[4]);
  v2 = *this;
  if (*this)
  {
    this[1] = v2;
    operator delete(v2);
  }
}

void sub_1B51D61F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (__p)
  {
    quasar::artifact::CreatePhraseCountsArtifact();
  }

  quasar::LmeDataStreams::~LmeDataStreams((v28 - 80));

  _Unwind_Resume(a1);
}

void sub_1B51D6564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1B51D679C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51D6898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51D7948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  STACK[0x2E0] = &a70;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  a70 = &STACK[0x200];
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a70);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  STACK[0x2C8] = &STACK[0x230];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2C8]);
  STACK[0x2C8] = &STACK[0x248];
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2C8]);
  std::promise<quasar::Location>::~promise(&STACK[0x260]);
  quasar::LmeDataStreams::~LmeDataStreams(&STACK[0x288]);

  _Unwind_Resume(a1);
}

uint64_t ResultStreamWrapper::hasInterUtteranceLeftContext(ResultStreamWrapper *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    return 0;
  }

  [v2 continuousListeningResultHelper];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (!v8)
  {
    return 0;
  }

  v3 = *(this + 10);
  if (v3)
  {
    [v3 continuousListeningResultHelper];
    v3 = v6;
  }

  else
  {
    v7 = 0;
  }

  quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(v3, &v8);
  v4 = *(v8 + 12);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  return v4;
}

void sub_1B51D7F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 __Block_byref_object_copy__586(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__587(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _EARSpeechRecognizerExecutor(void *a1, void (*a2)(void *), void *a3)
{
  v3 = a1[18];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZL28_EARSpeechRecognizerExecutorPvPFvS_ES__block_invoke;
  v4[3] = &__block_descriptor_48_e5_v8__0l;
  v4[4] = a2;
  v4[5] = a3;
  dispatch_async(v3, v4);
}

uint64_t __copy_helper_block_ea8_48c51_ZTSNSt3__110shared_ptrIN6quasar14RunAsyncParamsEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_48c51_ZTSNSt3__110shared_ptrIN6quasar14RunAsyncParamsEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_1B51D81F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v15);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__593(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__594(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void getModelFilesWithSuffix()
{
  v7 = *MEMORY[0x1E69E9840];
  v0 = 0;
  v1 = 0;
  v2 = 0;
  v4 = 0u;
  v5 = 0u;
  v6 = 1065353216;
  quasar::SystemConfig::SystemConfig(v3);
}

void sub_1B51D92A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = std::__function::__value_func<BOOL ()(std::string const&)>::~__value_func[abi:ne200100](v24 - 112);
  *(v24 - 112) = &a21;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v26);
  quasar::SystemConfig::~SystemConfig(&a24);
  _Unwind_Resume(a1);
}

void sub_1B51D9884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, char *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a2)
  {
    if (a26 < 0)
    {
      operator delete(__p);
    }

    if (a32 < 0)
    {
      operator delete(a27);
    }

    quasar::ModelLoader::~ModelLoader(&a48);
    a48 = &a41;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a48);
    v55 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v56 = EARLogger::QuasarOSLogger(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
      }
    }

    else
    {
      v56 = EARLogger::QuasarOSLogger(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1B51D9760);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51DA16C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, uint64_t a33, char *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a2)
  {
    if (a17 < 0)
    {
      operator delete(__p);
    }

    if (a23 < 0)
    {
      operator delete(a18);
    }

    quasar::ModelLoader::~ModelLoader(&a34);
    a34 = &a31;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a34);
    v41 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v42 = EARLogger::QuasarOSLogger(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
      }
    }

    else
    {
      v42 = EARLogger::QuasarOSLogger(v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        +[_EARSpeechRecognizer purgeCompiledRecognizerModelsWithConfiguration:];
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x1B51DA12CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B51DA708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, void *a14, uint64_t a15, char a16, char *a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a13, a14);
  std::__tree<std::string>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_1B51DA8F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, char a13, void *a14, uint64_t a15, char a16, char *a17)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&a13, a14);
  std::__tree<std::string>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

void sub_1B51DA9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  quasar::PTree::~PTree(&a10);
  a10 = (v10 - 40);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_1B51DAE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
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

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void sub_1B51DB018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1B51DB470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41)
{
  a41 = &a15;
  std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](&a41);

  _Unwind_Resume(a1);
}

void sub_1B51DBB30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location, char *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char *a41)
{
  a41 = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a41);
  __p = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  objc_destroyWeak((v46 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_1B51DC2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a61 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarTraceMessage::~QuasarTraceMessage(&a18);

  _Unwind_Resume(a1);
}

void sub_1B51DC5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  __p = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void sub_1B51DCE8C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  v15 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    v16 = EARLogger::QuasarOSLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      +[_EARSpeechRecognizer compileRecognizerModels2WithConfiguration:error:];
    }
  }

  else
  {
    v16 = EARLogger::QuasarOSLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_EARSpeechModelInfo initWithConfig:];
    }
  }

  __cxa_end_catch();
  JUMPOUT(0x1B51DCE10);
}

void sub_1B51DCF2C(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_1B51DDB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, char a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char *a55)
{
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = &a24;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);
  a55 = (v56 - 112);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a55);

  _Unwind_Resume(a1);
}

void sub_1B51DDE6C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id EARHelpers::ContainerToNSSet<std::set<unsigned int>>(void *a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:a1[2]];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v3 + 7)];
      [v2 addObject:v5];

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

id EARHelpers::ContainerToNSSet<std::set<BOOL>>(void *a1)
{
  v2 = [MEMORY[0x1E695DFA8] setWithCapacity:a1[2]];
  v3 = *a1;
  v4 = a1 + 1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithBool:*(v3 + 25)];
      [v2 addObject:v5];

      v6 = v3[1];
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
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = [v2 copy];

  return v9;
}

void sub_1B51DE9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14)
{
  std::__tree<int>::destroy(&a13, a14);

  quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(v14);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::set<unsigned int>>::operator=[abi:ne200100]<std::set<unsigned int>,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<int>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::optional<std::set<std::string>>::operator=[abi:ne200100]<std::set<std::string>,void>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) == 1)
  {
    std::__tree<std::string>::__move_assign(a1, a2);
  }

  else
  {
    *a1 = *a2;
    v3 = a2 + 1;
    v4 = a2[1];
    *(a1 + 8) = v4;
    v5 = a1 + 8;
    v6 = a2[2];
    *(a1 + 16) = v6;
    if (v6)
    {
      *(v4 + 16) = v5;
      *a2 = v3;
      *v3 = 0;
      a2[2] = 0;
    }

    else
    {
      *a1 = v5;
    }

    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1B51DEE0C(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, ...)
{
  va_start(va, a51);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a38, MEMORY[0x1E69E54E8]);
  MEMORY[0x1B8C85200](va);
  _Unwind_Resume(a1);
}

void sub_1B51DF0C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

id EARHelpers::VectorToArray<float>(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 != v5)
  {
    do
    {
      LODWORD(v3) = *v4;
      v6 = [MEMORY[0x1E696AD98] numberWithFloat:v3];
      [v2 addObject:v6];

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = [v2 copy];

  return v7;
}

void EARContinuousListeningResultHelper::~EARContinuousListeningResultHelper(EARContinuousListeningResultHelper *this)
{
  *this = &unk_1F2D04140;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  objc_destroyWeak(this + 28);
  objc_destroyWeak(this + 27);
  objc_destroyWeak(this + 26);

  quasar::ContinuousListeningResultHelper::~ContinuousListeningResultHelper(this);
}

{
  *this = &unk_1F2D04140;
  v2 = *(this + 34);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  objc_destroyWeak(this + 28);
  objc_destroyWeak(this + 27);
  objc_destroyWeak(this + 26);
  quasar::ContinuousListeningResultHelper::~ContinuousListeningResultHelper(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::Align::~Align(void **this)
{
  if (*(this + 207) < 0)
  {
    operator delete(this[23]);
  }

  v3 = this + 20;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 17;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = this[13];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = this + 10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 4;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this + 1;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5418], MEMORY[0x1E69E52A0]);
}

void ___ZL31writeFinalChoicesToResultStreamRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEERKNS0_IdNS3_IdEEEEbP20_EARSpeechRecognizerPU44objcproto33_EARSpeechRecognitionResultStream11objc_objectRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjjSP_P17_EARResultContextNS1_21RecogResultStreamBase11RecogStatusEbRKS5_NS_10shared_ptrINS1_25ContinuousListeningConfigEEESV_RS7_RKNS0_INS1_11ItnOverrideENS3_IS10_EEEERKNS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS1A_EENS3_IS1A_EEEERKNS0_IS1E_NS3_IS1E_EEEEbbSV_bdiNSW_INS1_14result_handler13ResultHandlerEEERK14FormattingInfo_block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  if (v9)
  {
    [*(*(a1[6] + 8) + 40) addObject:v9];
  }
}

id tokenSausageWithExtendedEndTime(void *a1, double a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v22 = a1;
  v24 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v22, "count")}];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v22;
  v3 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
  if (v3)
  {
    v4 = *v46;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v46 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v45 + 1) + 8 * i);
        v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (v9)
        {
          v10 = *v42;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v42 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:*(*(&v41 + 1) + 8 * j) copyItems:1];
              [v7 addObject:v12];
            }

            v9 = [v8 countByEnumeratingWithState:&v41 objects:v51 count:16];
          }

          while (v9);
        }

        [v24 addObject:v7];
      }

      v3 = [obj countByEnumeratingWithState:&v45 objects:v52 count:16];
    }

    while (v3);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v13 = [v24 lastObject];
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
  if (v14)
  {
    v15 = *v38;
    do
    {
      for (k = 0; k != v14; ++k)
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v37 + 1) + 8 * k);
        if ([v17 count])
        {
          v18 = [v17 lastObject];
          v19 = v18;
          if (v18)
          {
            [v18 quasarToken];
          }

          else
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            *__p = 0u;
            *v32 = 0u;
            *v30 = 0u;
            memset(v31, 0, sizeof(v31));
            memset(v29, 0, sizeof(v29));
            v27 = 0u;
            *v28 = 0u;
            *v25 = 0u;
            v26 = 0u;
          }

          LODWORD(v27) = (a2 * 1000.0);
          v20 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:v25];
          [v17 replaceObjectAtIndex:objc_msgSend(v17 withObject:{"count") - 1, v20}];

          if (SBYTE7(v35) < 0)
          {
            operator delete(__p[0]);
          }

          if (SBYTE7(v33) < 0)
          {
            operator delete(v32[0]);
          }

          v49 = v31 + 1;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v49);
          if (SBYTE7(v31[0]) < 0)
          {
            operator delete(v30[0]);
          }

          v49 = v29 + 1;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v49);
          if (SBYTE7(v29[0]) < 0)
          {
            operator delete(v28[0]);
          }

          if (SBYTE7(v26) < 0)
          {
            operator delete(v25[0]);
          }
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v37 objects:v50 count:16];
    }

    while (v14);
  }

  return v24;
}

id resultPackageWithResultChoices(uint64_t *a1, unsigned int a2, void *a3, uint64_t a4, unsigned __int8 *a5, void *a6, unsigned int a7, void *a8, double a9, double a10, unsigned __int8 a11, void *a12, uint64_t *a13, unsigned __int8 a14, unsigned __int8 a15, uint64_t a16, uint64_t a17, uint64_t a18, __int16 a19, unsigned __int8 a20, unsigned __int8 a21, void *a22, void *a23, void *a24, char a25, unsigned __int8 a26, unsigned __int8 a27, uint64_t a28, uint64_t a29, void *a30, void *a31, int a32, void *a33, uint64_t a34, char a35)
{
  v39 = a3;
  v135 = a6;
  v134 = a8;
  v143 = a31;
  v126 = a33;
  v125 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v124 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v136 = objc_alloc_init(MEMORY[0x1E695DF70]);
  memset(v205, 0, sizeof(v205));
  memset(v204, 0, sizeof(v204));
  v201 = 0;
  v202 = 0;
  v203 = 0;
  memset(v200, 0, sizeof(v200));
  v199[0] = 0;
  v199[1] = 0;
  v198 = v199;
  v197[1] = 0;
  v197[0] = 0;
  v196 = v197;
  v195[1] = 0;
  v195[0] = 0;
  v194 = v195;
  v193[1] = 0;
  v193[0] = 0;
  v192 = v193;
  if (a24 && a1[1] - *a1 != a23[1] - *a23)
  {
    v115 = [MEMORY[0x1E696AAA8] currentHandler];
    v116 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"_EARSpeechRecognitionResultPackage *resultPackageWithResultChoices(const std::vector<std::vector<Token>> &, BOOL, _EARFormatter *__strong, const AudioAnalytics &, const LatnnMitigatorResult &, const double, NSString *__strong, const unsigned int, NSString *__strong, BOOL, const std::vector<Token> &, _EARSpeechRecognitionResult *__autoreleasing *, std::shared_ptr<ContinuousListeningConfig>, BOOL, BOOL, const std::vector<Token> &, std::vector<std::vector<Token>> &, const std::vector<quasar::ItnOverride> &, quasar::ItnEnablingFlags::Flags, BOOL, BOOL, _EARSpeechRecognitionResultPackage *__autoreleasing *, const std::vector<std::set<std::string>> &, NSDictionary<NSString *, _EARSpeechRecognitionResultPackage *> *__autoreleasing *, BOOL, BOOL, const std::vector<quasar::Token> &, BOOL, BOOL, NSDictionary<NSString *, NSNumber *> *__autoreleasing *, NSArray<NSString *> *__autoreleasing *, double, NSArray<NSArray<NSNumber *> *> *__autoreleasing *, BOOL, BOOL, NSSet<NSString *> *__strong, int, _EARRelevantTextContext *__strong, std::shared_ptr<quasar::corrective_reranking::Parser>, const FormattingInfo &, BOOL)"}];
    [v115 handleFailureInFunction:v116 file:@"EARSpeechRecognizer.mm" lineNumber:2062 description:@"Results are not properly labeled"];
  }

  v186 = 0;
  v187 = &v186;
  v188 = 0x3032000000;
  v189 = __Block_byref_object_copy__2;
  v190 = __Block_byref_object_dispose__2;
  v191 = &stru_1F2D44B60;
  v180 = 0;
  v181 = &v180;
  v182 = 0x3032000000;
  v183 = __Block_byref_object_copy__2;
  v184 = __Block_byref_object_dispose__2;
  v185 = &stru_1F2D44B60;
  v173 = 0;
  v174 = &v173;
  v175 = 0x4812000000;
  v176 = __Block_byref_object_copy__420;
  v177 = __Block_byref_object_dispose__421;
  v178 = &unk_1B5CADD23;
  memset(v179, 0, sizeof(v179));
  v166 = 0;
  v167 = &v166;
  v168 = 0x4812000000;
  v169 = __Block_byref_object_copy__420;
  v170 = __Block_byref_object_dispose__421;
  v171 = &unk_1B5CADD23;
  memset(v172, 0, sizeof(v172));
  if ((a35 & 1) != 0 || ([v126 leftContextWasAppended] & 1) == 0)
  {
    v165[0] = MEMORY[0x1E69E9820];
    v165[1] = 3221225472;
    v165[2] = ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke;
    v165[3] = &unk_1E7C1A3C0;
    v165[4] = &v186;
    v165[5] = &v180;
    v165[6] = &v173;
    v165[7] = &v166;
    [v126 getLeftAndRightContextWithCompletion:v165];
    if ([v126 leftContextEndsWithAppendedAutoPunctuation])
    {
      LOBYTE(v40) = 1;
    }

    else
    {
      v40 = [v126 leftContextWasAppended] ^ 1;
    }

    v128 = v40;
  }

  else
  {
    v128 = 0;
  }

  v41 = *a1;
  v42 = 0x6DB6DB6DB6DB6DB7;
  if (a1[1] != *a1)
  {
    v43 = 0;
    do
    {
      v44 = (v41 + 24 * v43);
      v163 = 0uLL;
      v164 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v163, *v44, v44[1], ((v44[1] - *v44) >> 5) * v42);
      memset(v162, 0, sizeof(v162));
      memset(v161, 0, sizeof(v161));
      memset(v160, 0, sizeof(v160));
      memset(v159, 0, sizeof(v159));
      v157 = 0uLL;
      v158 = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v157, *v44, v44[1], ((v44[1] - *v44) >> 5) * v42);
      if (v39)
      {
        v45 = v42;
        v46 = v174;
        v47 = a13[1];
        v153 = *a13;
        v154 = v47;
        if (v47)
        {
          atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v48 = v167;
        v49 = v187[5];
        v50 = v181[5];
        v152 = 0;
        v151 = 0;
        v146[0] = MEMORY[0x1E69E9820];
        v146[1] = 3221225472;
        v146[2] = ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke_2;
        v146[3] = &unk_1E7C1A660;
        v51 = v136;
        v150 = v43;
        v147 = v51;
        v148 = a28;
        v149 = a29;
        HIDWORD(v122) = v43;
        LOBYTE(v122) = a2;
        LOWORD(v121) = a21;
        LOBYTE(v120) = v128;
        BYTE3(v119) = a25;
        BYTE2(v119) = a20;
        LOWORD(v119) = a19;
        BYTE4(v117) = 0;
        LODWORD(v117) = a7;
        [v39 formatWords:v44 unrepairedWordsOut:v160 task:v135 language:v134 preItnLeftContext:v46 + 6 separateAutoEndPunctuation:a11 partialResults:v162 timestampOffset:v117 zeroTimestamp:&v153 continuousListeningConfig:a16 postItnLeftContext:v161 itnResult:a18 itnOverrides:v119 itnEnablingFlags:v48 + 6 recognizeEmoji:v49 leftContextProvidedByClient:v50 preItnRightContext:v120 postItnLeftContextStr:v159 postItnRightContextStr:v121 stripLeadingAppendedAutoPunctuation:&v151 emojiTokenIndices:v122 persistEmoji:v146 shouldHideTrailingPunctuation:? isTrailingPunctuationHidden:? isFinal:? choiceIdx:? itnCompletion:?];
        std::vector<quasar::Token>::__vdeallocate(&v163);
        v163 = v155;
        v164 = v156;
        v156 = 0;
        v155 = 0uLL;
        v206[0] = &v155;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v206);
        if (v152)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v152);
        }

        v42 = v45;
        if (v154)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v154);
        }

        [v39 formattedTokensWithoutEmojiModifier:&v163 emojiTokenIndices:v159 recognizeEmoji:a20];
        std::vector<quasar::Token>::__vdeallocate(&v157);
        v157 = v155;
        v158 = v156;
        v156 = 0;
        v155 = 0uLL;
        v206[0] = &v155;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v206);
      }

      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v205, &v163);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v204, &v157);
      if (v39 && !v43)
      {
        [v39 appendNbestListWithEmojiAlternativesForFormattedTokens:&v163 formattedTokensWithoutEmojiModifier:&v157 formattedNBestList:v205 formattedNBestListWithoutEmojiModifier:v204 emojiTokenIndices:v159 recognizeEmoji:a20];
      }

      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v201, v162);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a17, v161);
      std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v200, v160);
      if (a24)
      {
        v52 = (*a23 + 24 * v43);
        v55 = *v52;
        v53 = v52 + 1;
        v54 = v55;
        if (v55 != v53)
        {
          do
          {
            v206[0] = (v54 + 4);
            v56 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v198, v54 + 4);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v56 + 56, v44);
            v206[0] = (v54 + 4);
            v57 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v196, v54 + 4);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v57 + 56, &v163);
            v206[0] = (v54 + 4);
            v58 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v194, v54 + 4);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v58 + 56, v162);
            v206[0] = (v54 + 4);
            v59 = std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v192, v54 + 4);
            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v59 + 56, v160);
            v60 = v54[1];
            if (v60)
            {
              do
              {
                v61 = v60;
                v60 = *v60;
              }

              while (v60);
            }

            else
            {
              do
              {
                v61 = v54[2];
                v62 = *v61 == v54;
                v54 = v61;
              }

              while (!v62);
            }

            v54 = v61;
          }

          while (v61 != v53);
        }
      }

      *&v155 = &v157;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v155);
      *&v157 = v159;
      std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v157);
      v159[0] = v160;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v159);
      v160[0] = v161;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v160);
      v161[0] = v162;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v161);
      v162[0] = &v163;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v162);
      ++v43;
      v41 = *a1;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) > v43);
  }

  if (a30)
  {
    *a30 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v136];
  }

  v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v64 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 128)];
  [v63 setObject:v64 forKeyedSubscript:@"speakingRate"];

  v65 = [MEMORY[0x1E696AD98] numberWithDouble:*(a4 + 136)];
  [v63 setObject:v65 forKeyedSubscript:@"averagePauseDuration"];

  v131 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v66 = getEARAcousticFeature(a4);
  [v131 setObject:v66 forKeyedSubscript:@"jitter"];

  v67 = getEARAcousticFeature(a4 + 32);
  [v131 setObject:v67 forKeyedSubscript:@"shimmer"];

  v68 = getEARAcousticFeature(a4 + 64);
  [v131 setObject:v68 forKeyedSubscript:@"pitch"];

  v69 = getEARAcousticFeature(a4 + 96);
  [v131 setObject:v69 forKeyedSubscript:@"voicing"];

  v138 = [[_EARAudioAnalytics alloc] _initWithSpeechRecognitionFeatures:v63 acousticFeatures:v131 snr:a9];
  v70 = a5[31];
  if (v70 >= 0)
  {
    v71 = a5 + 8;
  }

  else
  {
    v71 = *(a5 + 1);
  }

  if (v70 >= 0)
  {
    v72 = a5[31];
  }

  else
  {
    v72 = *(a5 + 2);
  }

  v130 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v71, v72}];
  if (*a5 == 1 && [v130 length])
  {
    v73 = [_EARLatticeMitigatorResult alloc];
    v75 = *(a5 + 4);
    v74 = *(a5 + 5);
    *&v74 = v74;
    *&v75 = v75;
    LODWORD(v76) = *(a5 + 12);
    LODWORD(v77) = *(a5 + 13);
    v137 = [(_EARLatticeMitigatorResult *)v73 initWithVersion:v130 score:*a5 threshold:v74 calibrationScale:v75 calibrationOffset:v76 processed:v77];
  }

  else
  {
    v137 = 0;
  }

  if ((a14 & a15) != 0)
  {
    v78 = 0.0;
  }

  else
  {
    v78 = a7 / 1000.0;
  }

  if (a12 && v201 != v202)
  {
    v79 = [_EARSpeechRecognitionResult alloc];
    memset(v145, 0, sizeof(v145));
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v145, *v201, v201[1], ((v201[1] - *v201) >> 5) * v42);
    memset(v144, 0, sizeof(v144));
    *a12 = [(_EARSpeechRecognitionResult *)v79 _initWithTokens:v145 preITNTokens:v144 confidence:0 voiceCommandInterpretations:0 preITNVoiceCommandInterpretations:1 utteranceStart:a34 preITNUseHatText:0.0 formattingInfo:v78];
    *&v163 = v144;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v163);
    *&v163 = v145;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v163);
  }

  p_superclass = &OBJC_METACLASS____EARPeopleSuggesterConfig.superclass;
  v129 = v63;
  if (a24)
  {
    v133 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v81 = v196;
    if (v196 != v197)
    {
      v82 = &std::piecewise_construct;
      do
      {
        v83 = objc_autoreleasePoolPush();
        v84 = objc_alloc((p_superclass + 199));
        v85 = v81 + 4;
        v162[0] = (v81 + 4);
        v86 = [v84 _initWithNBestList:std::__tree<std::__value_type<std::string useHatText:std::vector<std::vector<quasar::Token>>> endsOfSentencePunctuations:std::__map_value_compare<std::string formattingInfo:{std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>, std::less<std::string>, true>, std::allocator<std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&v198, v81 + 4) + 56, 1, v143, a34}];
        v87 = v86;
        context = v83;
        if (v39)
        {
          v88 = objc_alloc((p_superclass + 199));
          v162[0] = (v81 + 4);
          v89 = [v88 _initWithNBestList:std::__tree<std::__value_type<std::string useHatText:std::vector<std::vector<quasar::Token>>> endsOfSentencePunctuations:std::__map_value_compare<std::string formattingInfo:{std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>, std::less<std::string>, true>, std::allocator<std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&v196, v81 + 4) + 56, 0, v143, a34}];
        }

        else
        {
          v89 = v86;
        }

        v90 = v89;
        v91 = v39;
        v92 = p_superclass;
        v93 = objc_alloc((p_superclass + 199));
        v162[0] = (v81 + 4);
        v94 = [v93 _initWithNBestList:std::__tree<std::__value_type<std::string useHatText:std::vector<std::vector<quasar::Token>>> endsOfSentencePunctuations:std::__map_value_compare<std::string formattingInfo:{std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>, std::less<std::string>, true>, std::allocator<std::__value_type<std::string, std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(&v192, v81 + 4) + 56, 0, v143, a34}];
        v95 = v82;
        v96 = [_EARSpeechRecognitionResultPackage alloc];
        v97 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
        LOWORD(v118) = __PAIR16__(a27, a26);
        v98 = [(_EARSpeechRecognitionResultPackage *)v96 _initWithRecognition:v90 preITNRecognition:v87 unrepairedRecognition:v94 recognitionIsFormatted:v91 != 0 isFinal:a2 audioAnalytics:v138 utteranceStart:v78 latticeMitigatorResult:v137 nBestVoiceCommandInterpretations:0 preITNNBestVoiceCommandInterpretations:0 recognitionPaused:v118 firstResultAfterResume:v97 endOfSentenceLikelihood:a32 numTokensExcludingTriggerPhrase:0 voiceCommandDebugInfo:0 performanceMarkers:?];

        v99 = *(v81 + 55);
        if ((v99 & 0x8000000000000000) != 0)
        {
          v85 = v81[4];
          v99 = v81[5];
        }

        v100 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v85, v99}];
        [v133 setObject:v98 forKeyedSubscript:v100];

        objc_autoreleasePoolPop(context);
        v101 = v81[1];
        p_superclass = v92;
        v82 = v95;
        if (v101)
        {
          do
          {
            v102 = v101;
            v101 = *v101;
          }

          while (v101);
        }

        else
        {
          do
          {
            v102 = v81[2];
            v62 = *v102 == v81;
            v81 = v102;
          }

          while (!v62);
        }

        v81 = v102;
        v39 = v91;
      }

      while (v102 != v197);
    }

    *a24 = [v133 copy];
  }

  v103 = [objc_alloc((p_superclass + 199)) _initWithNBestList:a1 useHatText:1 endsOfSentencePunctuations:v143 formattingInfo:a34];
  v104 = v103;
  if (v39)
  {
    v105 = [objc_alloc((p_superclass + 199)) _initWithNBestList:v205 useHatText:0 endsOfSentencePunctuations:v143 formattingInfo:a34];
  }

  else
  {
    v105 = v103;
  }

  v106 = v105;
  v107 = [objc_alloc((p_superclass + 199)) _initWithNBestList:v200 useHatText:0 endsOfSentencePunctuations:v143 formattingInfo:a34];
  if (v39)
  {
    v108 = [objc_alloc((p_superclass + 199)) _initWithNBestList:v204 useHatText:0 endsOfSentencePunctuations:v143 formattingInfo:a34];
  }

  else
  {
    v108 = v104;
  }

  v109 = v108;
  if (a22)
  {
    v110 = [_EARSpeechRecognitionResultPackage alloc];
    v111 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
    LOWORD(v118) = __PAIR16__(a27, a26);
    *a22 = [(_EARSpeechRecognitionResultPackage *)v110 _initWithRecognition:v109 preITNRecognition:v104 unrepairedRecognition:v107 recognitionIsFormatted:v39 != 0 isFinal:a2 audioAnalytics:v138 utteranceStart:v78 latticeMitigatorResult:v137 nBestVoiceCommandInterpretations:0 preITNNBestVoiceCommandInterpretations:0 recognitionPaused:v118 firstResultAfterResume:v111 endOfSentenceLikelihood:a32 numTokensExcludingTriggerPhrase:0 voiceCommandDebugInfo:0 performanceMarkers:?];
  }

  v112 = [_EARSpeechRecognitionResultPackage alloc];
  v113 = [MEMORY[0x1E696AD98] numberWithDouble:a10];
  LOWORD(v118) = __PAIR16__(a27, a26);
  v142 = [(_EARSpeechRecognitionResultPackage *)v112 _initWithRecognition:v106 preITNRecognition:v104 unrepairedRecognition:v107 recognitionIsFormatted:v39 != 0 isFinal:a2 audioAnalytics:v138 utteranceStart:v78 latticeMitigatorResult:v137 nBestVoiceCommandInterpretations:v125 preITNNBestVoiceCommandInterpretations:v124 recognitionPaused:v118 firstResultAfterResume:v113 endOfSentenceLikelihood:a32 numTokensExcludingTriggerPhrase:0 voiceCommandDebugInfo:0 performanceMarkers:?];

  _Block_object_dispose(&v166, 8);
  *&v163 = v172;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v163);
  _Block_object_dispose(&v173, 8);
  v166 = v179;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v166);
  _Block_object_dispose(&v180, 8);

  _Block_object_dispose(&v186, 8);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v192, v193[0]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v194, v195[0]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v196, v197[0]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&v198, v199[0]);
  v173 = v200;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v173);
  v173 = &v201;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v173);
  v173 = v204;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v173);
  v173 = v205;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v173);

  return v142;
}

void sub_1B51E0C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, void *a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60)
{
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&STACK[0x418], STACK[0x420]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&STACK[0x430], STACK[0x438]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(&STACK[0x448], STACK[0x450]);
  std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(v63 - 256, *(v63 - 248));
  STACK[0x370] = v63 - 232;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  STACK[0x370] = v63 - 208;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  STACK[0x370] = v63 - 184;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  STACK[0x370] = v63 - 160;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);

  _Unwind_Resume(a1);
}

void logPackageToQuasarDebug(_EARSpeechRecognitionResultPackage *a1, NSString *a2, uint64_t a3)
{
  v54 = a1;
  v5 = a2;
  if (quasar::gLogLevel >= 5)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "Quasar PostITN Result. isFinal=", 31);
    v7 = MEMORY[0x1B8C84BD0](v6, [(_EARSpeechRecognitionResultPackage *)v54 isFinal]);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " candidate=", 11);
    MEMORY[0x1B8C84BD0](v8, a3);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
  }

  v56 = [(_EARSpeechRecognitionResultPackage *)v54 nBestResults];
  v9 = [v56 count];
  if (v9)
  {
    v10 = [v56 firstObject];
    v11 = [v10 tokens];

    v52 = v11;
    v53 = transcriptFromTokens(v11);
    if (quasar::gLogLevel >= 5)
    {
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v63 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "PostITN 1-Best: ", 16);
      if (v53)
      {
        [v53 ear_toString];
        v13 = HIBYTE(v62);
        v15 = __p;
        v14 = v61;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        v13 = 0;
        __p = 0;
        v61 = 0;
        v62 = 0;
      }

      if ((v13 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = v15;
      }

      if ((v13 & 0x80u) == 0)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, p_p, v17);
      if (SHIBYTE(v62) < 0)
      {
        operator delete(__p);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
    }

    if (v9 >= 1)
    {
      v18 = 0;
      v55 = v9 & 0x7FFFFFFF;
      do
      {
        if (quasar::gLogLevel >= 5)
        {
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v63 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "PostITN Choice: ", 16);
          MEMORY[0x1B8C84C00](v19, v18);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
        }

        v20 = [v56 objectAtIndexedSubscript:v18];
        v21 = [v20 tokens];

        for (i = 0; [v21 count] > i; ++i)
        {
          if (quasar::gLogLevel >= 5)
          {
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            v64 = 0u;
            v65 = 0u;
            v63 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
            v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "PostITN Token[", 14);
            if (v5)
            {
              [(NSString *)v5 ear_toString];
              v24 = HIBYTE(v62);
              v26 = __p;
              v25 = v61;
            }

            else
            {
              v25 = 0;
              v26 = 0;
              v24 = 0;
              __p = 0;
              v61 = 0;
              v62 = 0;
            }

            if ((v24 & 0x80u) == 0)
            {
              v27 = &__p;
            }

            else
            {
              v27 = v26;
            }

            if ((v24 & 0x80u) == 0)
            {
              v28 = v24;
            }

            else
            {
              v28 = v25;
            }

            v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v27, v28);
            v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "][", 2);
            v31 = MEMORY[0x1B8C84C00](v30, v18);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "][", 2);
            v33 = MEMORY[0x1B8C84C00](v32, i);
            v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "]: ", 3);
            v35 = [v21 objectAtIndexedSubscript:i];
            v36 = [v35 description];
            v37 = v36;
            if (v36)
            {
              [v36 ear_toString];
              v38 = HIBYTE(v59);
              v40 = v57;
              v39 = v58;
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v38 = 0;
              v57 = 0;
              v58 = 0;
              v59 = 0;
            }

            if ((v38 & 0x80u) == 0)
            {
              v41 = &v57;
            }

            else
            {
              v41 = v40;
            }

            if ((v38 & 0x80u) == 0)
            {
              v42 = v38;
            }

            else
            {
              v42 = v39;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v41, v42);
            if (SHIBYTE(v59) < 0)
            {
              operator delete(v57);
            }

            if (SHIBYTE(v62) < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
          }
        }

        ++v18;
      }

      while (v18 != v55);
    }
  }

  if (quasar::gLogLevel >= 5)
  {
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v63 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v63);
    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, "latticeMitigatorResult: ", 24);
    v44 = [(_EARSpeechRecognitionResultPackage *)v54 latticeMitigatorResult];
    v45 = [v44 description];
    v46 = v45;
    if (v45)
    {
      [v45 ear_toString];
      v47 = HIBYTE(v62);
      v49 = __p;
      v48 = v61;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v47 = 0;
      __p = 0;
      v61 = 0;
      v62 = 0;
    }

    if ((v47 & 0x80u) == 0)
    {
      v50 = &__p;
    }

    else
    {
      v50 = v49;
    }

    if ((v47 & 0x80u) == 0)
    {
      v51 = v47;
    }

    else
    {
      v51 = v48;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, v50, v51);
    if (SHIBYTE(v62) < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v63);
  }
}

void sub_1B51E150C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, void *a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::locale a27)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a27);

  _Unwind_Resume(a1);
}

void ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v13 = a4;
  objc_storeStrong((*(a1[5] + 8) + 40), a3);
  stringsToTokensWithZeroTimestamps(v13, &v16);

  v14 = *(a1[6] + 8);
  std::vector<quasar::Token>::__vdeallocate((v14 + 48));
  *(v14 + 48) = v16;
  *(v14 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
  stringsToTokensWithZeroTimestamps(v12, &v16);
  v15 = *(a1[7] + 8);
  std::vector<quasar::Token>::__vdeallocate((v15 + 48));
  *(v15 + 48) = v16;
  *(v15 + 64) = v17;
  v17 = 0;
  v16 = 0uLL;
  v18 = &v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v18);
}

void ___ZL30resultPackageWithResultChoicesRKNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEEbP13_EARFormatterRKNS1_14AudioAnalyticsERKNS1_20LatnnMitigatorResultEdP8NSStringjSJ_bRKS5_PU15__autoreleasingP27_EARSpeechRecognitionResultNS_10shared_ptrINS1_25ContinuousListeningConfigEEEbbSL_RS7_RKNS0_INS1_11ItnOverrideENS3_ISU_EEEEtbbPU15__autoreleasingP34_EARSpeechRecognitionResultPackageRKNS0_INS_3setINS_12basic_stringIcNS_11char_traitsIcEENS3_IcEEEENS_4lessIS18_EENS3_IS18_EEEENS3_IS1C_EEEEPU15__autoreleasingP12NSDictionaryISJ_S10_EbbSL_bbPU15__autoreleasingPS1H_ISJ_P8NSNumberEPU15__autoreleasingP7NSArrayISJ_EdPU15__autoreleasingPS1S_IPS1S_IS1N_EEbbP5NSSetISJ_EiP23_EARRelevantTextContextNSQ_INS1_20corrective_reranking6ParserEEERK14FormattingInfob_block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  [*(a1 + 32) addObject:v8];
  if (!*(a1 + 56) && *(a1 + 40) && *(a1 + 48))
  {
    **(a1 + 40) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v9];
    **(a1 + 48) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v7];
  }
}

id getEARAcousticFeature(uint64_t a1)
{
  v2 = [[_EARLazyDoubleArray alloc] _initWithDoubleVector:a1];
  v3 = [_EARAcousticFeature alloc];
  v4 = *(a1 + 24) / 1000.0;
  *&v4 = v4;
  v5 = [(_EARAcousticFeature *)v3 _initWithAcousticFeatureValues:v2 frameDuration:v4];

  return v5;
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::Token>>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::Token>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<std::vector<quasar::Token>>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::vector<quasar::Token>>>,0>((a2 + 4));

    operator delete(a2);
  }
}

id transcriptFromTokens(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if ([v1 count])
  {
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = *v11;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v11 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v10 + 1) + 8 * i);
          if ([v7 hasSpaceBefore])
          {
            [v2 appendString:@" "];
          }

          v8 = [v7 tokenName];
          [v2 appendString:v8];

          if ([v7 hasSpaceAfter])
          {
            [v2 appendString:@" "];
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void quasar::SpeechRecognizerActiveConfiguration::~SpeechRecognizerActiveConfiguration(char **this)
{
  if (*(this + 248) == 1)
  {
    std::__tree<std::string>::destroy((this + 28), this[29]);
  }

  if (*(this + 216) == 1)
  {
    std::__tree<std::string>::destroy((this + 24), this[25]);
  }

  if (*(this + 184) == 1)
  {
    std::__tree<std::string>::destroy((this + 20), this[21]);
  }

  if (*(this + 152) == 1)
  {
    std::__tree<int>::destroy((this + 16), this[17]);
  }

  if (*(this + 120) == 1)
  {
    std::__tree<int>::destroy((this + 12), this[13]);
  }

  if (*(this + 88) == 1)
  {
    std::__tree<std::string>::destroy((this + 8), this[9]);
  }

  if (*(this + 56) == 1)
  {
    std::__tree<std::string>::destroy((this + 4), this[5]);
  }

  if (*(this + 24) == 1)
  {
    std::__tree<int>::destroy(this, this[1]);
  }
}

void *std::__shared_ptr_emplace<quasar::LmeContainer>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType,std::allocator<quasar::LmeContainer>,0>(void *a1, __int128 *a2, uint64_t a3, unsigned int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04190;
  std::allocator<quasar::LmeContainer>::construct[abi:ne200100]<quasar::LmeContainer,std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType>(&v6, (a1 + 3), a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<quasar::LmeContainer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04190;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::LmeContainer>::construct[abi:ne200100]<quasar::LmeContainer,std::shared_ptr<quasar::LmeData const>,std::string,quasar::LmeDataFactoryBase::LmeType>(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unsigned int *a5)
{
  v5 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  quasar::LmeContainer::LmeContainer(a2, &v5, a4, *a5);
  if (*(&v5 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
  }
}

void sub_1B51E1FF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<quasar::LmeDataFactoryBase::LmeType>::__init_with_size[abi:ne200100]<quasar::LmeDataFactoryBase::LmeType*,quasar::LmeDataFactoryBase::LmeType*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E206C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__emplace_hint_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::pair<quasar::LmeDataFactoryBase::LmeType const,std::vector<std::shared_ptr<quasar::LmeContainer>>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__emplace_hint_unique_key_args<quasar::LmeDataFactoryBase::LmeType,std::pair<quasar::LmeDataFactoryBase::LmeType const,std::vector<std::shared_ptr<quasar::LmeContainer>>> const&>(void *a1, uint64_t *a2, int *a3)
{
  result = *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__find_equal<quasar::LmeDataFactoryBase::LmeType>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__construct_node<std::pair<quasar::LmeDataFactoryBase::LmeType const,std::vector<std::shared_ptr<quasar::LmeContainer>>> const&>();
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::__find_equal<quasar::LmeDataFactoryBase::LmeType>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1B51E2420(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::shared_ptr<quasar::LmeContainer>>::__init_with_size[abi:ne200100]<std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E24A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*,std::shared_ptr<quasar::LmeContainer>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::LmeContainer>>,std::shared_ptr<quasar::LmeContainer>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>,std::shared_ptr<kaldi::quasar::ComputeEngineItf>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 5;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v3);
  }

  if (__p)
  {
    operator delete(__p);
  }
}

void std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::__map_value_compare<quasar::LmeDataFactoryBase::LmeType,std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>,std::less<quasar::LmeDataFactoryBase::LmeType>,true>,std::allocator<std::__value_type<quasar::LmeDataFactoryBase::LmeType,std::vector<std::shared_ptr<quasar::LmeContainer>>>>>::destroy(a1, *(a2 + 1));
    v4 = (a2 + 40);
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
    operator delete(a2);
  }
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E2818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E289C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *v6, v6[1], 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 3;
    v3 = v1;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<std::vector<std::vector<quasar::Token>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<std::vector<unsigned int>>::push_back[abi:ne200100](uint64_t result, uint64_t a2)
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(result, v10);
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

void **std::vector<std::vector<std::vector<quasar::Token>>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
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
    v12 = result[1] - *result;
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
    result = std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(v16);
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

  v3[1] = v6;
  return result;
}

void **std::__split_buffer<std::vector<std::vector<quasar::Token>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::vector<quasar::Token>>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::vector<quasar::Token>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void std::vector<std::vector<std::vector<quasar::Token>>>::__vdeallocate(void ***a1)
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
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
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

uint64_t quasar::joinToStream<std::vector<int>>(uint64_t result, unsigned int **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    v6 = result;
    v7 = 1;
    do
    {
      if ((v7 & 1) == 0)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, *a3, a3[1]);
      }

      v8 = *v3++;
      result = MEMORY[0x1B8C84C00](v6, v8);
      v7 = 0;
    }

    while (v3 != v4);
  }

  return result;
}

void std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::ItnOverride>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::ItnOverride>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
      }

      if (*(v3 - 25) < 0)
      {
        operator delete(*(v3 - 6));
      }

      v4 = v3 - 9;
      if (*(v3 - 49) < 0)
      {
        operator delete(*v4);
      }

      v3 -= 9;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

void std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 32;
        v7 = (v4 - 24);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void quasar::result_handler::Package::~Package(void **this)
{
  v5 = this + 54;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 50;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 47;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 368) == 1)
  {
    v5 = this + 42;
    std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(this + 335) < 0)
    {
      operator delete(this[39]);
    }

    if (*(this + 303) < 0)
    {
      operator delete(this[35]);
    }

    v5 = this + 32;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = this + 29;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = this + 26;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
    v5 = this + 23;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  v5 = this + 20;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = this[17];
  if (v2)
  {
    this[18] = v2;
    operator delete(v2);
  }

  v3 = this[14];
  if (v3)
  {
    this[15] = v3;
    operator delete(v3);
  }

  v4 = this[11];
  if (v4)
  {
    this[12] = v4;
    operator delete(v4);
  }

  v5 = this + 6;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 3;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
}

void std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        quasar::result_handler::CommandInterpretation::~CommandInterpretation(v4 - 33);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void quasar::result_handler::CommandInterpretation::~CommandInterpretation(void **this)
{
  v2 = this + 28;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = this + 22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 152) == 1 && *(this + 151) < 0)
  {
    operator delete(this[16]);
  }

  if (*(this + 120) == 1 && *(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::result_handler::CommandData>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::result_handler::CommandData>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = v2 - 88;
    do
    {
      v6 = (v4 + 56);
      std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v6);
      if (*(v4 + 55) < 0)
      {
        operator delete(*(v4 + 32));
      }

      if (*(v4 + 23) < 0)
      {
        operator delete(*v4);
      }

      v5 = v4 - 96;
      v6 = (v4 - 24);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v4 - 48);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v4 - 72);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = (v4 - 96);
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v6);
      v4 -= 184;
    }

    while (v5 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<quasar::Token>>::__vdeallocate(void ***a1)
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
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v5);
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

void std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(uint64_t a1, quasar::Token **a2, quasar::Token **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
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
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v4, *v6, v6[1], 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5));
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

quasar::Token **std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(int a1, quasar::Token **a2, quasar::Token **a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(a4, *v5, v5[1], 0x6DB6DB6DB6DB6DB7 * ((v5[1] - *v5) >> 5));
      }

      v5 += 3;
      a4 += 24;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(uint64_t a1, quasar::Token **a2, quasar::Token **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 3;
        v17 = v14;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*,std::vector<quasar::Token>*>(&v15, a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<quasar::Token>>,std::vector<quasar::Token>*,std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

uint64_t std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(uint64_t a1, const quasar::Token *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x124924924924924)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 5)) >= 0x92492492492492)
  {
    v6 = 0x124924924924924;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::Token>>(a1, v6);
  }

  v13 = 0;
  v14 = 224 * v2;
  quasar::Token::Token((224 * v2), a2);
  v15 = (224 * v2 + 224);
  v7 = *(a1 + 8);
  v8 = 224 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::Token>,quasar::Token*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<quasar::Token>::~__split_buffer(&v13);
  return v12;
}

void sub_1B51E3918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 3;
        std::__tree<std::string>::destroy((v4 - 3), *(v4 - 2));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<EARModelInitializeContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D041E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t EARModelInitializeContext::EARModelInitializeContext(uint64_t a1, void *a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2D04230;
  v3 = a2;
  *(a1 + 16) = 0;
  objc_storeWeak((a1 + 16), v3);

  return a1;
}

void EARModelInitializeContext::~EARModelInitializeContext(EARModelInitializeContext *this)
{
  objc_destroyWeak(this + 2);

  quasar::Bitmap::~Bitmap(this);
}

{
  objc_destroyWeak(this + 2);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void EARModelInitializeContext::didFinishModelInitializing(uint64_t a1, uint64_t *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = EARLogger::QuasarOSLogger(WeakRetained);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v11 = 136315138;
      v12 = v6;
      _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Finished initializing model, fileName=%s", &v11, 0xCu);
    }

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
      v9 = a2[1];
    }

    v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v8, v9}];
    [(EARLogger *)v4 didFinishModelInitializing:v10];
  }
}

void *std::__shared_ptr_emplace<std::istringstream>::__shared_ptr_emplace[abi:ne200100]<std::string,std::allocator<std::istringstream>,0>(void *a1, const std::string *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04278;
  std::istringstream::basic_istringstream[abi:ne200100](a1 + 3, a2, 8);
  return a1;
}

void std::__shared_ptr_emplace<std::istringstream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void *std::__shared_ptr_emplace<quasar::corrective_reranking::Parser>::__shared_ptr_emplace[abi:ne200100]<std::string const&,std::allocator<quasar::corrective_reranking::Parser>,0>(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D042C8;
  quasar::corrective_reranking::Parser::Parser(a1 + 3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::corrective_reranking::Parser>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D042C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::corrective_reranking::Parser>::__on_zero_shared(uint64_t a1)
{
  quasar::corrective_reranking::Models::~Models((a1 + 728));

  quasar::corrective_reranking::Config::~Config((a1 + 24));
}

void quasar::corrective_reranking::Config::~Config(void **this)
{
  quasar::PTree::~PTree((this + 80));
  if (*(this + 631) < 0)
  {
    operator delete(this[76]);
  }

  if (*(this + 599) < 0)
  {
    operator delete(this[72]);
  }

  if (*(this + 575) < 0)
  {
    operator delete(this[69]);
  }

  if (*(this + 543) < 0)
  {
    operator delete(this[65]);
  }

  if (*(this + 519) < 0)
  {
    operator delete(this[62]);
  }

  if (*(this + 495) < 0)
  {
    operator delete(this[59]);
  }

  if (*(this + 471) < 0)
  {
    operator delete(this[56]);
  }

  if (*(this + 447) < 0)
  {
    operator delete(this[53]);
  }

  if (*(this + 423) < 0)
  {
    operator delete(this[50]);
  }

  if (*(this + 391) < 0)
  {
    operator delete(this[46]);
  }

  if (*(this + 367) < 0)
  {
    operator delete(this[43]);
  }

  v2 = this[40];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[35];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v5 = this + 30;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 239) < 0)
  {
    operator delete(this[27]);
  }

  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  v5 = this + 15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = this + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }

  v4 = this[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void std::__shared_ptr_pointer<std::istream  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<std::istream  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<std::istream  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<ResultStreamWrapper>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * const {__strong}&,NSDictionary<NSString *,NSString> * {__strong}&,_EARSpeechRecognizer * const {__strong}&* {__strong}&<NSString,NSNumber *>,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* const {__strong}&,NSString const {__strong}&,objc_object  {objcproto30_EARSpeakerCodeWriterInterface}* const {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* const {__strong},std::allocator<ResultStreamWrapper>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6, void **a7, void **a8)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04378;
  ResultStreamWrapper::ResultStreamWrapper((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7, *a8);
}

void std::__shared_ptr_emplace<ResultStreamWrapper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04378;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void ResultStreamWrapper::ResultStreamWrapper(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v32 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v27 = v15;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v26 = v18;
  v25 = a6;
  v19 = a7;
  v24 = a8;
  quasar::RecogResultStreamBase::RecogResultStreamBase(a1);
  *a1 = &unk_1F2D043C8;
  *(a1 + 24) = v18;
  *(a1 + 32) = v19;
  objc_initWeak((a1 + 40), v15);
  v23 = v16;
  v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v23, "count")}];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  v29 = ___ZL18LowercasedDictKeysP12NSDictionaryIP8NSStringP11objc_objectE_block_invoke;
  v30 = &unk_1E7C1A6A8;
  v21 = v20;
  v31 = v21;
  [v23 enumerateKeysAndObjectsUsingBlock:buf];

  *(a1 + 48) = v21;
  *(a1 + 56) = v17;
  *(a1 + 64) = [v25 copy];
  v22 = [v24 copy];
  *(a1 + 80) = 0;
  *(a1 + 72) = v22;
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar18DoublePartialLogicENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B51E48EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id location, void *a34, void *a35, void *a36, void *a37)
{
  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  if (a26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a26);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v43);
  }

  objc_destroyWeak(&a32);
  objc_destroyWeak(&location);
  v44 = *(v37 + 112);
  if (v44)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
  }

  v45 = *(v37 + 96);
  if (v45)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v45);
  }

  objc_destroyWeak((v37 + 40));
  quasar::RecogResultStreamBase::~RecogResultStreamBase(v37);

  _Unwind_Resume(a1);
}

void ___ZN19ResultStreamWrapperC2EP20_EARSpeechRecognizerP12NSDictionaryIP8NSStringS4_EPS2_IS4_P8NSNumberEPU44objcproto33_EARSpeechRecognitionResultStream11objc_objectS4_PU41objcproto30_EARSpeakerCodeWriterInterface11objc_objectS4__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = WeakRetained[2];
    if (v1)
    {
      if ([v1 refreshEmojiRecognizer])
      {
        v2 = [WeakRetained recognizeEmoji];
      }

      else
      {
        v2 = 0;
      }

      [WeakRetained setRecognizeEmoji:v2];
    }
  }
}

void EARContinuousListeningResultHelper::setUtteranceDelayResultStream(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    v3 = *a2;
    v4 = a2[1];
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = *(v2 + 24);
    *(v2 + 16) = v3;
    *(v2 + 24) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    if (v4)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void ResultStreamWrapper::~ResultStreamWrapper(ResultStreamWrapper *this)
{
  ResultStreamWrapper::~ResultStreamWrapper(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D043C8;
  v2 = *(this + 10);
  *(this + 10) = 0;

  v3 = *(this + 14);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  objc_destroyWeak(this + 5);

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
}

void ResultStreamWrapper::writePartial(uint64_t a1, __int128 **a2, int a3, int a4, int a5, int a6, quasar::Token ***a7, uint64_t a8, uint64_t a9, char a10, char a11, char *a12)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v20 = WeakRetained;
  if (WeakRetained)
  {
    if (a4 && ([WeakRetained disablePartialResults] & 1) == 0)
    {
      v37 = a5;
      v38 = a6;
      v79 = 0;
      v80 = 0;
      v81 = 0;
      v21 = a7[1];
      v39 = v20;
      if (*a7 == v21)
      {
        memset(buf, 0, 24);
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v79, buf);
        *&v64 = buf;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v64);
        v23 = *a2;
        v24 = a2[1];
        if (*a2 != v24)
        {
          do
          {
            v25 = v80;
            if (*(v23 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v66, *v23, *(v23 + 1));
            }

            else
            {
              v26 = *v23;
              v66.__r_.__value_.__r.__words[2] = *(v23 + 2);
              *&v66.__r_.__value_.__l.__data_ = v26;
            }

            std::string::basic_string[abi:ne200100]<0>(&v64, "");
            std::string::basic_string[abi:ne200100]<0>(&v62, "");
            v59 = 0;
            v60 = 0;
            v61 = 0;
            std::string::basic_string[abi:ne200100]<0>(v57, "");
            quasar::Token::Token(buf, &v66, 0, 0, 0, 1, 0, &v64, 0.0, &v62, &v59, 0, v57, 0, 0, 0);
            std::vector<quasar::Token>::push_back[abi:ne200100](v25 - 24, buf);
            if (v78 < 0)
            {
              operator delete(__p);
            }

            if (v76 < 0)
            {
              operator delete(v75);
            }

            v82[0] = &v74;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v82);
            if (v73 < 0)
            {
              operator delete(v72);
            }

            v82[0] = &v71;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
            if (v70 < 0)
            {
              operator delete(v69);
            }

            if ((buf[23] & 0x80000000) != 0)
            {
              operator delete(*buf);
            }

            if (v58 < 0)
            {
              operator delete(v57[0]);
            }

            v57[0] = &v59;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v57);
            if (SHIBYTE(v63) < 0)
            {
              operator delete(v62);
            }

            if (SHIBYTE(v65) < 0)
            {
              operator delete(v64);
            }

            if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v66.__r_.__value_.__l.__data_);
            }

            v23 = (v23 + 24);
          }

          while (v23 != v24);
        }
      }

      else if (&v79 != a7)
      {
        std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v79, *a7, v21, 0xAAAAAAAAAAAAAAABLL * (v21 - *a7));
      }

      v27 = v79;
      v28 = v80;
      while (v27 != v28)
      {
        v30 = *v27;
        v29 = v27[1];
        while (v30 != v29)
        {
          if (*a12 == 1)
          {
            quasar::resetWhiteSpace(v30, a12 + 8);
            v31 = *a12;
          }

          else
          {
            v31 = 0;
          }

          ResultStreamWrapper::replacementTokenName(a1, v30, v31 & 1, buf);
          if (*(v30 + 23) < 0)
          {
            operator delete(*v30);
          }

          v32 = *buf;
          *(v30 + 16) = *&buf[16];
          *v30 = v32;
          v30 += 224;
        }

        v27 += 3;
      }

      v33 = *(a1 + 104);
      v34 = *(a1 + 112);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v35 = *(a1 + 80);
      v20 = v39;
      if (v35)
      {
        [v35 continuousListeningResultHelper];
      }

      else
      {
        v57[0] = 0;
        v57[1] = 0;
      }

      v64 = 0uLL;
      v65 = 0;
      v62 = 0uLL;
      v63 = 0;
      v59 = 0;
      v60 = 0;
      v61 = 0;
      buf[0] = *a12;
      if (a12[31] < 0)
      {
        std::string::__init_copy_ctor_external(&buf[8], *(a12 + 1), *(a12 + 2));
      }

      else
      {
        *&buf[8] = *(a12 + 8);
        *&buf[24] = *(a12 + 3);
      }

      v68 = a12[32];
      v36 = v39[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3321888768;
      block[2] = ___ZN19ResultStreamWrapper12writePartialERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEE27PartialUtteranceStartMillisbiiRKNS1_INS1_IN6quasar5TokenENS5_ISE_EEEENS5_ISG_EEEESB_SB_bbRK14FormattingInfo_block_invoke;
      block[3] = &__block_descriptor_215_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE88c72_ZTSNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEE112c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE136c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE160c21_ZTSK14FormattingInfo_e5_v8__0l;
      block[4] = v57[0];
      v41 = v57[1];
      if (v57[1])
      {
        atomic_fetch_add_explicit(v57[1] + 1, 1uLL, memory_order_relaxed);
      }

      v42 = v33;
      v43 = v34;
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      memset(v44, 0, sizeof(v44));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v44, v64, *(&v64 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v64 + 1) - v64) >> 3));
      v54 = a4;
      v51 = a3;
      v52 = v37;
      v53 = v38;
      memset(v45, 0, sizeof(v45));
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v45, v79, v80, 0xAAAAAAAAAAAAAAABLL * ((v80 - v79) >> 3));
      memset(v46, 0, sizeof(v46));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v46, v62, *(&v62 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v62 + 1) - v62) >> 3));
      memset(v47, 0, sizeof(v47));
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v47, v59, v60, 0xAAAAAAAAAAAAAAABLL * ((v60 - v59) >> 3));
      v55 = a10;
      v56 = a11;
      v48 = buf[0];
      if ((buf[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v49, *&buf[8], *&buf[16]);
      }

      else
      {
        v49 = *&buf[8];
      }

      v50 = v68;
      dispatch_async(v36, block);
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      v82[0] = v47;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
      v82[0] = v46;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
      v82[0] = v45;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v82);
      v82[0] = v44;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v82);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v43);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
      }

      if ((buf[31] & 0x80000000) != 0)
      {
        operator delete(*&buf[8]);
      }

      *buf = &v59;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v62;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      *buf = &v64;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      if (v57[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57[1]);
      }

      if (v34)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      *buf = &v79;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](buf);
    }
  }

  else
  {
    v22 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not writing partial results", buf, 2u);
    }
  }
}

void sub_1B51E521C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, std::__shared_weak_count *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, std::__shared_weak_count *a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p, uint64_t a63)
{
  *(v72 - 104) = v69;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v72 - 104));
  *(v72 - 104) = v68;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v72 - 104));
  *(v72 - 104) = v67;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v72 - 104));
  *(v72 - 104) = v71;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v72 - 104));
  if (a25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a25);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  if (a67 < 0)
  {
    operator delete(__p);
  }

  a61 = &a48;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a51;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  a61 = &a54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a61);
  if (a46)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a46);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v70);
  }

  a61 = v72 - 128;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a61);

  _Unwind_Resume(a1);
}

void ResultStreamWrapper::writeFinalChoices(uint64_t a1, unsigned __int8 *a2, unsigned int a3)
{
  v54[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v28 = *(a1 + 24);
    if (v28)
    {
      if (a3 == 1)
      {
        memset(v52, 0, sizeof(v52));
        String = quasar::PTree::getString(a2);
        v7 = *String;
        v30 = String[1];
        if (*String != v30)
        {
          do
          {
            v49 = 0;
            v50 = 0;
            v51 = 0;
            v8 = *v7;
            v9 = v7[1];
            while (v8 != v9)
            {
              quasar::Token::Token(&__p, v8);
              if (a2[584] == 1)
              {
                quasar::resetWhiteSpace(&__p, a2 + 592);
                v10 = a2[584];
              }

              else
              {
                v10 = 0;
              }

              ResultStreamWrapper::replacementTokenName(a1, &__p, v10 & 1, &v48);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p = v48;
              v11 = *(a1 + 56);
              if (v11)
              {
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

                v14 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{p_p, size}];
                v15 = [v11 objectForKey:v14];

                if (v15)
                {
                  [v15 floatValue];
                  v17 = v37 - v16;
                  if (v17 < 0.0)
                  {
                    v17 = 0.0;
                  }

                  v37 = v17;
                }
              }

              std::vector<quasar::Token>::push_back[abi:ne200100](&v49, &__p);
              if (v47 < 0)
              {
                operator delete(v46);
              }

              if (v45 < 0)
              {
                operator delete(v44);
              }

              v48.__r_.__value_.__r.__words[0] = &v43;
              std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v48);
              if (v42 < 0)
              {
                operator delete(v41);
              }

              v48.__r_.__value_.__r.__words[0] = &v40;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v48);
              if (v39 < 0)
              {
                operator delete(v38);
              }

              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              v8 = (v8 + 224);
            }

            std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v52, &v49);
            __p.__r_.__value_.__r.__words[0] = &v49;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
            v7 += 3;
          }

          while (v7 != v30);
        }

        v18 = *(a1 + 104);
        v19 = *(a1 + 112);
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v20 = *(a1 + 80);
        if (v20)
        {
          [v20 continuousListeningResultHelper];
        }

        else
        {
          v49 = 0;
          v50 = 0;
        }

        quasar::RecogResult::RecogResult(&__p, a2);
        quasar::RecogResult::setResultChoices(&__p, v52);
        v27 = WeakRetained[1];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN19ResultStreamWrapper17writeFinalChoicesERKN6quasar11RecogResultENS0_21RecogResultStreamBase11RecogStatusE_block_invoke;
        block[3] = &__block_descriptor_716_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c26_ZTSN6quasar11RecogResultE_e5_v8__0l;
        block[4] = v49;
        v32 = v50;
        if (v50)
        {
          atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = v18;
        v34 = v19;
        if (v19)
        {
          atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        quasar::RecogResult::RecogResult(v35, &__p);
        v35[162] = 1;
        dispatch_async(v27, block);
        quasar::RecogResult::~RecogResult(v35);
        if (v34)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v34);
        }

        if (v32)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v32);
        }

        quasar::RecogResult::~RecogResult(&__p);
        if (v50)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v50);
        }

        if (v19)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v19);
        }

        __p.__r_.__value_.__r.__words[0] = v52;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&__p);
      }

      else
      {
        v23 = [WeakRetained relevantTextContext];
        [v23 reset];

        v24 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A578];
        v54[0] = @"Recognition was unsuccessful";
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
        v26 = [v24 errorWithDomain:@"EARErrorDomain" code:a3 userInfo:v25];
        [v28 speechRecognizer:WeakRetained didFinishRecognitionWithError:v26];
      }
    }

    else
    {
      v22 = EARLogger::QuasarOSLogger(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        LOWORD(__p.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_1B501D000, v22, OS_LOG_TYPE_INFO, "Result stream has been deallocated; not writing final choices", &__p, 2u);
      }
    }
  }

  else
  {
    v21 = EARLogger::QuasarOSLogger(0);
    v28 = v21;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not writing final choices", &__p, 2u);
    }
  }
}

void sub_1B51E58A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  STACK[0x2F0] = v12 - 152;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);

  _Unwind_Resume(a1);
}

void ResultStreamWrapper::reportRecognizerProgressStatus(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 24);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (!WeakRetained)
  {
    v7 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = 0;
      v8 = "Recognizer has been deallocated; not reporting result progress";
      v9 = &v11;
LABEL_9:
      _os_log_impl(&dword_1B501D000, v7, OS_LOG_TYPE_INFO, v8, v9, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!v4)
  {
    v7 = EARLogger::QuasarOSLogger(WeakRetained);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v10 = 0;
      v8 = "Result stream has been deallocated; not reporting result progress";
      v9 = &v10;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    [v4 speechRecognizer:v6 didReportStatus:*a2 != 0 statusContext:0];
  }

LABEL_11:
}

void ResultStreamWrapper::reportRecognitionProgress(ResultStreamWrapper *this, int a2)
{
  WeakRetained = objc_loadWeakRetained(this + 5);
  if (WeakRetained)
  {
    v5 = *(this + 3);
    if (v5)
    {
      if (objc_opt_respondsToSelector())
      {
        [v5 speechRecognizer:WeakRetained didProcessAudioDuration:a2 * 0.001];
      }
    }

    else
    {
      v6 = EARLogger::QuasarOSLogger(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v7 = 0;
        _os_log_impl(&dword_1B501D000, v6, OS_LOG_TYPE_INFO, "Result stream has been deallocated; not reporting result progress", v7, 2u);
      }
    }
  }

  else
  {
    v5 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v5, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not reporting result progress", buf, 2u);
    }
  }
}

void ResultStreamWrapper::reportHighResolutionRecognitionProgress(ResultStreamWrapper *this, int a2)
{
  v3 = *(this + 10);
  if (v3)
  {
    [v3 continuousListeningResultHelper];
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    if (v6)
    {
      v5 = *(this + 10);
      if (v5)
      {
        [(EARContinuousListeningResultHelper *)v5 continuousListeningResultHelper];
        v5 = v6;
      }

      else
      {
        v7 = 0;
      }

      EARContinuousListeningResultHelper::reportHighResolutionRecognitionProgress(v5, a2);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }
  }
}

void ResultStreamWrapper::reportPause(ResultStreamWrapper *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    [v2 continuousListeningResultHelper];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v4)
    {
      v3 = *(this + 10);
      if (v3)
      {
        [(EARContinuousListeningResultHelper *)v3 continuousListeningResultHelper];
        v3 = v4;
      }

      else
      {
        v5 = 0;
      }

      EARContinuousListeningResultHelper::reportPause(v3);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void ResultStreamWrapper::reportResume(ResultStreamWrapper *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    [v2 continuousListeningResultHelper];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    if (v4)
    {
      v3 = *(this + 10);
      if (v3)
      {
        [(EARContinuousListeningResultHelper *)v3 continuousListeningResultHelper];
        v3 = v4;
      }

      else
      {
        v5 = 0;
      }

      EARContinuousListeningResultHelper::reportResume(v3);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void ResultStreamWrapper::writeEndPointData(uint64_t a1, int a2, int a3, double a4, double a5, double a6, uint64_t a7, unsigned int **a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = *(a1 + 24);
    if (v21)
    {
      if (objc_opt_respondsToSelector())
      {
        v22 = EARHelpers::VectorToArray<unsigned int>(a8);
        [v21 speechRecognizer:WeakRetained didProduceEndpointFeaturesWithWordCount:a2 trailingSilenceDuration:a13 * a3 eosLikelihood:v22 pauseCounts:a12 silencePosterior:a4 processedAudioDurationInMilliseconds:a6 acousticEndpointerScore:a5];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_13;
        }

        v22 = EARHelpers::VectorToArray<unsigned int>(a8);
        [v21 speechRecognizer:WeakRetained didProduceEndpointFeaturesWithWordCount:a2 trailingSilenceDuration:a13 * a3 eosLikelihood:v22 pauseCounts:a12 silencePosterior:a4 processedAudioDurationInMilliseconds:a6];
      }

LABEL_13:
      if (objc_opt_respondsToSelector())
      {
        [v21 speechRecognizer:WeakRetained didProcessAudioDuration:a12 * 0.001];
      }

      goto LABEL_15;
    }

    v23 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *v24 = 0;
      _os_log_impl(&dword_1B501D000, v23, OS_LOG_TYPE_INFO, "Result stream has been deallocated; not writing end point data", v24, 2u);
    }
  }

  else
  {
    v21 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v21, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not writing end point data", buf, 2u);
    }
  }

LABEL_15:
}

void ResultStreamWrapper::writeTrainingData(id *a1, int64x2_t *a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v9 = WeakRetained[4];
    v8 = WeakRetained[5];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      v10 = a1[4];
      if (v10)
      {
        v18 = a1[9];
        *buf = 0;
        v34 = buf;
        v35 = 0x4812000000;
        v36 = __Block_byref_object_copy__1425;
        v37 = __Block_byref_object_dispose__1426;
        v38 = &unk_1B5CADD23;
        memset(v39, 0, 24);
        v26 = 0;
        v27 = &v26;
        v28 = 0x4812000000;
        v29 = __Block_byref_object_copy__1425;
        v30 = __Block_byref_object_dispose__1426;
        v31 = &unk_1B5CADD23;
        memset(v32, 0, sizeof(v32));
        while (a2[2].i64[1])
        {
          v11 = a2[2].i64[0];
          v12 = (v11 * 0xA41A41A41A41A41BLL) >> 64;
          v13 = *(a2->i64[1] + 8 * ((v12 + ((v11 - v12) >> 1)) >> 5)) + 104 * (v11 - 39 * ((v12 + ((v11 - v12) >> 1)) >> 5));
          if (*(v13 + 96) != 1 || (v14 = a3 < 1, --a3, !v14))
          {
            std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100]((v34 + 48), *(a2->i64[1] + 8 * ((v12 + ((v11 - v12) >> 1)) >> 5)) + 104 * (v11 - 39 * ((v12 + ((v11 - v12) >> 1)) >> 5)));
            std::vector<kaldi::CuMatrix<float>>::push_back[abi:ne200100]((v27 + 6), v13 + 48);
          }

          std::deque<quasar::SpeakerCodeTraining::AlignedData>::pop_front(a2);
        }

        quasar::SpeakerCodeTraining::start(v9);
        v16 = v7[3];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3321888768;
        block[2] = ___ZN19ResultStreamWrapper17writeTrainingDataERNSt3__15dequeIN6quasar19SpeakerCodeTraining11AlignedDataENS0_9allocatorIS4_EEEEl_block_invoke;
        block[3] = &unk_1F2D048C0;
        v24 = v9;
        v25 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v22 = buf;
        v23 = &v26;
        v20 = v10;
        v17 = v18;
        v21 = v17;
        dispatch_async(v16, block);

        if (v25)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v25);
        }

        _Block_object_dispose(&v26, 8);
        v40 = v32;
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v40);
        _Block_object_dispose(buf, 8);
        v26 = v39;
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v26);
      }

      else
      {
        v17 = EARLogger::QuasarOSLogger(0);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_1B501D000, v17, OS_LOG_TYPE_INFO, "Speaker code writer has been deallocated; not training speaker code.", buf, 2u);
        }
      }
    }

    else
    {
      v10 = EARLogger::QuasarOSLogger(WeakRetained);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B501D000, v10, OS_LOG_TYPE_INFO, "Training instance has been deallocated; not training speaker code.", buf, 2u);
      }
    }

    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  else
  {
    v15 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B501D000, v15, OS_LOG_TYPE_INFO, "Recognizer has been deallocated; not training speaker code.", buf, 2u);
    }
  }
}

void sub_1B51E6360(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

void ___ZL18LowercasedDictKeysP12NSDictionaryIP8NSStringP11objc_objectE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = *(a1 + 32);
  v6 = [a2 lowercaseString];
  [v5 setObject:v7 forKey:v6];
}

void _ZNSt3__120__shared_ptr_emplaceIN6quasar18DoublePartialLogicENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D04480;
  quasar::DoublePartialLogic::DoublePartialLogic((a1 + 3));
}

void std::__shared_ptr_emplace<quasar::DoublePartialLogic>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D04480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::DoublePartialLogic>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__shared_ptr_emplace<EARFormatterResultStream>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* {__strong}&,NSString * {__strong}&,NSString * {__strong},_EARResultContext * {__strong}&,std::allocator<EARFormatterResultStream>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D044D0;
  EARFormatterResultStream::EARFormatterResultStream((a1 + 3), *a2, *a3, *a4, *a5, *a6);
}

void std::__shared_ptr_emplace<EARFormatterResultStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D044D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void EARFormatterResultStream::EARFormatterResultStream(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  quasar::RecogResultStreamBase::RecogResultStreamBase(a1);
  *a1 = &unk_1F2D04520;
  objc_initWeak((a1 + 24), v11);
  *(a1 + 32) = v12;
  *(a1 + 40) = [v13 copy];
  *(a1 + 48) = [v14 copy];
  *(a1 + 56) = v15;
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar18DoublePartialLogicENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B51E6858(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2 + 3);
  quasar::RecogResultStreamBase::~RecogResultStreamBase(v2);

  _Unwind_Resume(a1);
}

void EARFormatterResultStream::~EARFormatterResultStream(EARFormatterResultStream *this)
{
  *this = &unk_1F2D04520;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  objc_destroyWeak(this + 3);

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
}

{
  *this = &unk_1F2D04520;
  v2 = *(this + 9);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  objc_destroyWeak(this + 3);
  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);

  JUMPOUT(0x1B8C85350);
}

void EARFormatterResultStream::writePartial(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, uint64_t *a7, uint64_t a8, uint64_t a9, BOOL a10, BOOL a11, uint64_t a12)
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v18 = *(a1 + 32);
  v19 = v18;
  if (WeakRetained && v18)
  {
    dispatch_assert_queue_V2(WeakRetained[1]);
    v20 = WeakRetained[2];
    if (v20)
    {
      v21 = *(a1 + 48);
      if (v21)
      {
        [v21 ear_toString];
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
      }

      v22 = *(a1 + 40);
      if (v22)
      {
        [v22 ear_toString];
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v46 = 0;
      }

      LODWORD(v20) = [v20 isEnableAutoPunctuation:&v47 task:&v44 itnEnablingFlags:[(dispatch_queue_t *)WeakRetained itnEnablingFlags]];
      if (SHIBYTE(v46) < 0)
      {
        operator delete(v44);
      }

      if (SHIBYTE(v49) < 0)
      {
        operator delete(v47);
      }
    }

    v43 = 0;
    quasar::DoublePartialLogic::handlePartial(*(a1 + 64), v20, a10, a11, &v43);
    if (!v43)
    {
      v23 = *(a1 + 56);
      if (v23)
      {
        [v23 continuousListeningResultHelper];
        if (v41)
        {
          quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(v41, &v39);
          if (v41)
          {
            v24 = *(v41 + 256);
            v32 = *(v41 + 248);
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }
          }

          else
          {
            v32 = 0;
            v24 = 0;
          }

          goto LABEL_22;
        }
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v32 = 0;
      v24 = 0;
      v39 = 0;
      v40 = 0;
LABEL_22:
      memset(v38, 0, sizeof(v38));
      std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v38, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
      v25 = *(a1 + 48);
      v30 = *(a1 + 40);
      v31 = a3;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v26 = v40;
      v37[0] = v39;
      v37[1] = v40;
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v44 = 0;
      v45 = 0;
      v46 = 0;
      memset(v36, 0, sizeof(v36));
      v27 = *(a1 + 56);
      ShouldHideTrailingPunctuation = quasar::DoublePartialLogic::getShouldHideTrailingPunctuation(*(a1 + 64));
      quasar::DoublePartialLogic::getIsLastPartialTrailingPunctuationHidden(*(a1 + 64), &v34);
      v33[0] = v32;
      v33[1] = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v29) = a5;
      writePartialToResultStream(v38, WeakRetained, v19, v30, v25, &v47, 0, v31, v29, v37, a6, v27, &v44, 0, v36, ShouldHideTrailingPunctuation, &v34, v33, a12);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v35)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      v50 = v36;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v50);
      v36[0] = &v44;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v36);
      if (v26)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
      }

      v44 = &v47;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v44);
      v47 = v38;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v47);
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v42)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v42);
      }
    }
  }
}

void sub_1B51E6CE0(_Unwind_Exception *a1)
{
  v5 = *(v3 - 160);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void EARFormatterResultStream::writeFinalChoices(uint64_t a1, uint64_t a2, int a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 24));
  v7 = *(a1 + 32);
  v8 = v7;
  if (!WeakRetained || !v7)
  {
    goto LABEL_51;
  }

  v50 = v7;
  dispatch_assert_queue_V2(WeakRetained[1]);
  ContinuousListeningConfig = *(a1 + 56);
  if (!ContinuousListeningConfig)
  {
    v79 = 0;
    v80 = 0;
    goto LABEL_9;
  }

  [ContinuousListeningConfig continuousListeningResultHelper];
  ContinuousListeningConfig = v79;
  if (!v79)
  {
LABEL_9:
    v11 = 0;
    v51 = 0;
    v77 = 0;
    v78 = 0;
    goto LABEL_12;
  }

  ContinuousListeningConfig = quasar::ContinuousListeningResultHelper::getContinuousListeningConfig(v79, &v77);
  if (v79)
  {
    v11 = *(v79 + 248);
    v10 = *(v79 + 256);
    if (v10)
    {
      v51 = *(v79 + 256);
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      goto LABEL_12;
    }
  }

  else
  {
    v11 = 0;
  }

  v51 = 0;
LABEL_12:
  v76[0] = 0;
  v76[1] = 0;
  v75 = v76;
  v12 = *(a2 + 360);
  if (v12)
  {
    if (&v75 != (v12 + 344))
    {
      std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v75, *(v12 + 344), (v12 + 352));
    }
  }

  else
  {
    v13 = EARLogger::QuasarOSLogger(ContinuousListeningConfig);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      EARFormatterResultStream::writeFinalChoices();
    }
  }

  String = quasar::PTree::getString(a2);
  v72 = 0;
  v73 = 0;
  v74 = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v72, *String, String[1], 0xAAAAAAAAAAAAAAABLL * ((String[1] - *String) >> 3));
  BitmapRegion = quasar::GeoRegion::getBitmapRegion(a2);
  v69 = 0;
  v70 = 0;
  v71 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v69, *BitmapRegion, BitmapRegion[1], (BitmapRegion[1] - *BitmapRegion) >> 3);
  DestToks = quasar::Align::getDestToks(a2);
  memset(v68, 0, sizeof(v68));
  std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(v68, *DestToks, DestToks[1], 0xAAAAAAAAAAAAAAABLL * ((DestToks[1] - *DestToks) >> 3));
  if ([(dispatch_queue_t *)WeakRetained continuousListeningFormatAcrossUtterances]&& v72 == v73)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    std::vector<std::vector<quasar::Token>>::assign(&v72, 1uLL, &v65);
    v62 = &v65;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v62);
    v65 = 0;
    std::vector<double>::assign(&v69, 1uLL, &v65);
    v66 = 0;
    v67 = 0;
    v65 = &v66;
    std::vector<std::set<std::string>>::assign(v68, 1uLL, &v65);
    std::__tree<std::string>::destroy(&v65, v66);
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  if ((*(a2 + 568) & 1) != 0 || *(a2 + 569) == 1)
  {
    MultiChainMultiAudioBuffer = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(a2);
    v18 = *(a2 + 408);
    v19 = *(a2 + 388);
    v20 = *(a2 + 392);
    v22 = *(a1 + 40);
    v21 = *(a1 + 48);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v23 = v78;
    v61[0] = v77;
    v61[1] = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = 0;
    v59 = 0;
    v60 = 0;
    Config = kaldi::quasar::CEInferenceNet::GetConfig(a2);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v25 = *(a2 + 560);
    v26 = *(a2 + 568);
    v27 = *(a2 + 572);
    v54[0] = v11;
    v28 = v51;
    v54[1] = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v45 = v21;
    v8 = v50;
    writeFinalCandidateChoicesToResultStream(&v72, WeakRetained, v50, MultiChainMultiAudioBuffer, (a2 + 440), v22, v19, v18, v25, v20, v45, v61, &v58, &v65, Config, &v75, v68, 0, v26, v27, v54, *(a1 + 56), a2 + 584);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    v81[0] = &v55;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v81);
    v55 = &v58;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v55);
    if (!v23)
    {
      goto LABEL_43;
    }

    v29 = v23;
  }

  else
  {
    v30 = [(dispatch_queue_t *)WeakRetained continuousListeningFormatAcrossUtterances];
    v31 = 0;
    v32 = v30 | *(a2 + 396);
    if (v30 && (*(a2 + 396) & 1) == 0)
    {
      v32 = 0;
      v31 = *(a2 + 556) ^ 1;
    }

    v49 = v32;
    v33 = quasar::SpeechRequestData::getMultiChainMultiAudioBuffer(a2);
    v34 = v11;
    v35 = *(a2 + 408);
    v46 = *(a2 + 388);
    v36 = *(a2 + 392);
    v37 = *(a1 + 48);
    v47 = *(a1 + 40);
    v48 = v33;
    v38 = *(a1 + 56);
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v39 = v78;
    v53[0] = v77;
    v53[1] = v78;
    if (v78)
    {
      atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = 0;
    v59 = 0;
    v60 = 0;
    v40 = kaldi::quasar::CEInferenceNet::GetConfig(a2);
    v41 = *(a2 + 556);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v42 = *(a2 + 557);
    v43 = *(a2 + 560);
    v44 = *(a2 + 572);
    v52[0] = v34;
    v52[1] = v51;
    if (v51)
    {
      atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    writeFinalChoicesToResultStream(&v72, &v69, v49 & 1, WeakRetained, v8, v48, (a2 + 440), v47, v35, v43, v46, v36, v37, v38, a3, v31 & 1, v53, &v58, &v65, v40, &v75, v68, 0, v41, v42, v44, v52, a2 + 584);
    v28 = v51;
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v51);
    }

    v81[0] = &v55;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v81);
    v55 = &v58;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v55);
    if (!v39)
    {
      goto LABEL_43;
    }

    v29 = v39;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v29);
LABEL_43:
  v58 = &v62;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v58);
  v62 = &v65;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v62);
  v65 = v68;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&v65);
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v69 = &v72;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v69);
  std::__tree<std::string>::destroy(&v75, v76[0]);
  if (v28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

  if (v80)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v80);
  }

LABEL_51:
}

void sub_1B51E7360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void **a46, char *a47)
{
  std::__tree<std::string>::destroy(&a46, a47);
  a46 = (v48 - 240);
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a46);
  v50 = *(v48 - 216);
  if (v50)
  {
    *(v48 - 208) = v50;
    operator delete(v50);
  }

  *(v48 - 216) = v48 - 192;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100]((v48 - 216));
  std::__tree<std::string>::destroy(v48 - 168, *(v48 - 160));
  if (a28)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a28);
  }

  v51 = *(v48 - 136);
  if (v51)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v51);
  }

  v52 = *(v48 - 120);
  if (v52)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v52);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<quasar::Token>>::assign(uint64_t a1, unint64_t a2, quasar::Token **a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    std::vector<std::vector<quasar::Token>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<std::vector<quasar::LmeDataFactoryBase::Word>>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(a1 + 8) - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v6, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5));
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = *(a1 + 8);
    v16 = *a1 + 24 * a2;
    while (v15 != v16)
    {
      v15 -= 3;
      v17 = v15;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v12, *a3, a3[1], 0x6DB6DB6DB6DB6DB7 * ((a3[1] - *a3) >> 5));
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    *(a1 + 8) = v13;
  }
}

void *std::vector<double>::assign(void *a1, unint64_t a2, uint64_t *a3)
{
  v5 = a1[2];
  result = *a1;
  if (a2 > (v5 - result) >> 3)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a2 >> 61))
    {
      v7 = v5 >> 2;
      if (v5 >> 2 <= a2)
      {
        v7 = a2;
      }

      if (v5 >= 0x7FFFFFFFFFFFFFF8)
      {
        v8 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<long long>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = a1[1];
  v10 = (v9 - result) >> 3;
  if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = (v9 - result) >> 3;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *a3;
    v14 = (v11 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = result + 1;
    do
    {
      v17 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(vdupq_n_s64(v12), xmmword_1B5AE0060)));
      if (v17.i8[0])
      {
        *(v16 - 1) = v13;
      }

      if (v17.i8[4])
      {
        *v16 = v13;
      }

      v12 += 2;
      v16 += 2;
    }

    while (v14 != v12);
  }

  v18 = a2 >= v10;
  v19 = a2 - v10;
  if (v19 != 0 && v18)
  {
    v20 = 0;
    v21 = v9 + 8 * v19;
    v22 = *a3;
    v23 = (8 * a2 - (v9 - result) - 8) >> 3;
    v24 = vdupq_n_s64(v23);
    v25 = (v9 + 8);
    do
    {
      v26 = vmovn_s64(vcgeq_u64(v24, vorrq_s8(vdupq_n_s64(v20), xmmword_1B5AE0060)));
      if (v26.i8[0])
      {
        *(v25 - 1) = v22;
      }

      if (v26.i8[4])
      {
        *v25 = v22;
      }

      v20 += 2;
      v25 += 2;
    }

    while (((v23 + 2) & 0x3FFFFFFFFFFFFFFELL) != v20);
    a1[1] = v21;
  }

  else
  {
    a1[1] = &result[a2];
  }

  return result;
}

void std::vector<std::set<std::string>>::assign(uint64_t a1, unint64_t a2, const void ***a3)
{
  v6 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) < a2)
  {
    std::vector<std::set<std::string>>::__vdeallocate(a1);
    if (a2 <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
      if (v7 <= a2)
      {
        v7 = a2;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
      {
        v8 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](a1, v8);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v9 = (*(a1 + 8) - v6) >> 3;
  v10 = 0xAAAAAAAAAAAAAAABLL * v9;
  if (0xAAAAAAAAAAAAAAABLL * v9 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * v9;
  }

  for (; v11; --v11)
  {
    if (v6 != a3)
    {
      std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(v6, *a3, a3 + 1);
    }

    v6 += 3;
  }

  if (a2 <= v10)
  {
    v15 = *(a1 + 8);
    v16 = *a1 + 24 * a2;
    if (v15 != v16)
    {
      do
      {
        v17 = v15 - 24;
        std::__tree<std::string>::destroy(v15 - 24, *(v15 - 16));
        v15 = v17;
      }

      while (v17 != v16);
    }

    *(a1 + 8) = v16;
  }

  else
  {
    v12 = *(a1 + 8);
    v13 = &v12[3 * (a2 - v10)];
    v14 = 24 * a2 - 24 * v10;
    do
    {
      std::set<std::string>::set[abi:ne200100](v12, a3);
      v12 += 3;
      v14 -= 24;
    }

    while (v14);
    *(a1 + 8) = v13;
  }
}

uint64_t std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::AlternativeSelectionSpan::Alternative>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51E7B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::set<std::string>>,std::set<std::string>*,std::set<std::string>*,std::set<std::string>*>(uint64_t a1, const void ***a2, const void ***a3, void *a4)
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
      std::set<std::string>::set[abi:ne200100](v4, v6);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::set<std::string>>,std::set<std::string>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 24;
      std::__tree<std::string>::destroy(v1 - 24, *(v1 - 16));
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<std::set<std::string>>::__vdeallocate(void **a1)
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
        v5 = v3 - 3;
        std::__tree<std::string>::destroy((v3 - 3), *(v3 - 2));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__shared_ptr_emplace<EARContinuousListeningResultHelper>::__shared_ptr_emplace[abi:ne200100]<_EARSpeechRecognizer * {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* {__strong}&,_EARResultContext * {__strong}&,NSString * {__strong}&,NSString * {__strong},NSString *,std::allocator<EARContinuousListeningResultHelper>,0>(void *a1, void **a2, void **a3, void **a4, void **a5, void **a6, void **a7)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D045D8;
  EARContinuousListeningResultHelper::EARContinuousListeningResultHelper((a1 + 3), *a2, *a3, *a4, *a5, *a6, *a7);
}

void std::__shared_ptr_emplace<EARContinuousListeningResultHelper>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D045D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void EARContinuousListeningResultHelper::EARContinuousListeningResultHelper(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = [v13 allowUtteranceDelay];
  if (v18)
  {
    [v18 ear_toString];
  }

  quasar::ContinuousListeningResultHelper::ContinuousListeningResultHelper(a1, v19);
}

void sub_1B51E82A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  v32 = *(v30 - 96);
  *(v30 - 96) = 0;
  if (v32)
  {
    (*(*v32 + 8))(v32);
  }

  v33 = *(v26 + 272);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  v34 = *(v26 + 256);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v34);
  }

  objc_destroyWeak(v29);
  objc_destroyWeak((v26 + 216));
  objc_destroyWeak((v26 + 208));
  quasar::ContinuousListeningResultHelper::~ContinuousListeningResultHelper(v26);

  _Unwind_Resume(a1);
}

void sub_1B51E84B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::make_unique[abi:ne200100]<quasar::result_handler::VoiceEditingRecoveryHandler,std::unique_ptr<quasar::result_handler::ResultHandler>,std::shared_ptr<EARVoiceEditingClient> &,0>(va);
  MEMORY[0x1B8C85350](v5, v4);
  _Unwind_Resume(a1);
}

void sub_1B51E85CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  if (a4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a4);
  }

  std::make_unique[abi:ne200100]<quasar::result_handler::VoiceEditingResultHandler,quasar::result_handler::VoiceEditingResultHandlerConfig &,std::unique_ptr<quasar::result_handler::ResultHandler>,decltype(nullptr),std::shared_ptr<EARVoiceEditingClient> &,0>(va, va1);
  MEMORY[0x1B8C85350](v5, v4);
  _Unwind_Resume(a1);
}

void *std::shared_ptr<quasar::result_handler::ResultHandler>::operator=[abi:ne200100]<quasar::result_handler::ResultHandler,std::default_delete<quasar::result_handler::ResultHandler>,0>(void *a1, uint64_t *a2)
{
  std::shared_ptr<quasar::result_handler::ResultHandler>::shared_ptr[abi:ne200100]<quasar::result_handler::ResultHandler,std::default_delete<quasar::result_handler::ResultHandler>,0>(&v6, a2);
  v3 = a1[1];
  v4 = v6;
  *&v6 = *a1;
  *(&v6 + 1) = v3;
  *a1 = v4;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  return a1;
}

uint64_t EAROutputResultHandler::EAROutputResultHandler(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2D04628;
  v5 = a3;
  objc_initWeak((a1 + 16), a2);
  objc_initWeak((a1 + 24), v5);

  if (quasar::gLogLevel >= 5)
  {
    memset(v7, 0, sizeof(v7));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Created EAROutputResultHandler", 30);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v7);
  }

  return a1;
}

void sub_1B51E872C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a9);
  objc_destroyWeak(v9 + 3);
  objc_destroyWeak(v9 + 2);
  quasar::Bitmap::~Bitmap(v9);
  _Unwind_Resume(a1);
}

void EAROutputResultHandler::~EAROutputResultHandler(id *this)
{
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);

  quasar::Bitmap::~Bitmap(this);
}

{
  objc_destroyWeak(this + 3);
  objc_destroyWeak(this + 2);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void EAROutputResultHandler::handlePartial(uint64_t a1, uint64_t a2, uint64_t ***a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = objc_loadWeakRetained((a1 + 24));
  v7 = v6;
  if (WeakRetained)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(WeakRetained[1]);
      if (objc_opt_respondsToSelector())
      {
        v8 = RHPackageToEARResult(*a3);
        if (quasar::gLogLevel >= 5)
        {
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
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v23 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
          v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "EAROutputResultHandler: partial: ", 33);
          v10 = [v8 tokens];
          v11 = transcriptFromTokens(v10);
          v12 = v11;
          if (v11)
          {
            [v11 ear_toString];
            v13 = HIBYTE(v22);
            v15 = __p;
            v14 = v21;
          }

          else
          {
            v14 = 0;
            v15 = 0;
            v13 = 0;
            __p = 0;
            v21 = 0;
            v22 = 0;
          }

          if ((v13 & 0x80u) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = v15;
          }

          if ((v13 & 0x80u) == 0)
          {
            v17 = v13;
          }

          else
          {
            v17 = v14;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v17);
          if (SHIBYTE(v22) < 0)
          {
            operator delete(__p);
          }

          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
        }

        [v7 speechRecognizer:WeakRetained didRecognizePartialResult:v8];
        v18 = (*a3)[6];
        v19 = (*a3)[7];
        *&v24 = 0;
        v23 = 0uLL;
        if (v18 != v19)
        {
          std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v23, *v18, v18[1], 0x6DB6DB6DB6DB6DB7 * ((v18[1] - *v18) >> 5));
        }

        __p = &v23;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
      }
    }
  }
}

void sub_1B51E89E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);

  _Unwind_Resume(a1);
}

void EAROutputResultHandler::handleCommandCandidate(uint64_t a1, uint64_t a2, quasar::result_handler::Package **a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = objc_loadWeakRetained((a1 + 24));
  v7 = v6;
  if (WeakRetained)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(WeakRetained[1]);
      if (objc_opt_respondsToSelector())
      {
        v8 = RHPackageToEARPackage(*a3);
        if ([v8 hasNonEmptyToken])
        {
          if (quasar::gLogLevel >= 5)
          {
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
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
            v60 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
            v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "EAROutputResultHandler: voiceCommandCandidatePackage PreITN preceding: ", 71);
            v10 = [v8 preITNRecognition];
            v11 = [v10 potentialPrecedingRecognition];
            v12 = [v11 nBest];
            v13 = [v12 firstObject];
            v14 = transcriptFromTokens(v13);
            v15 = v14;
            if (v14)
            {
              [v14 ear_toString];
              v16 = HIBYTE(v59);
              v18 = __p;
              v17 = v58;
            }

            else
            {
              v17 = 0;
              v18 = 0;
              v16 = 0;
              __p = 0;
              v58 = 0;
              v59 = 0;
            }

            if ((v16 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = v18;
            }

            if ((v16 & 0x80u) == 0)
            {
              v20 = v16;
            }

            else
            {
              v20 = v17;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v20);
            if (SHIBYTE(v59) < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v60);
            if (quasar::gLogLevel >= 5)
            {
              v75 = 0u;
              v76 = 0u;
              v73 = 0u;
              v74 = 0u;
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
              v60 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
              v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "EAROutputResultHandler: voiceCommandCandidatePackage PreITN command: ", 69);
              v22 = [v8 preITNRecognition];
              v23 = [v22 potentialCommandRecognition];
              v24 = [v23 nBest];
              v25 = [v24 firstObject];
              v26 = transcriptFromTokens(v25);
              v27 = v26;
              if (v26)
              {
                [v26 ear_toString];
                v28 = HIBYTE(v59);
                v30 = __p;
                v29 = v58;
              }

              else
              {
                v29 = 0;
                v30 = 0;
                v28 = 0;
                __p = 0;
                v58 = 0;
                v59 = 0;
              }

              if ((v28 & 0x80u) == 0)
              {
                v31 = &__p;
              }

              else
              {
                v31 = v30;
              }

              if ((v28 & 0x80u) == 0)
              {
                v32 = v28;
              }

              else
              {
                v32 = v29;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v31, v32);
              if (SHIBYTE(v59) < 0)
              {
                operator delete(__p);
              }

              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v60);
              if (quasar::gLogLevel >= 5)
              {
                v75 = 0u;
                v76 = 0u;
                v73 = 0u;
                v74 = 0u;
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
                v60 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
                v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "EAROutputResultHandler: voiceCommandCandidatePackage PostITN preceding: ", 72);
                v34 = [v8 recognition];
                v35 = [v34 potentialPrecedingRecognition];
                v36 = [v35 nBest];
                v37 = [v36 firstObject];
                v38 = transcriptFromTokens(v37);
                v39 = v38;
                if (v38)
                {
                  [v38 ear_toString];
                  v40 = HIBYTE(v59);
                  v42 = __p;
                  v41 = v58;
                }

                else
                {
                  v41 = 0;
                  v42 = 0;
                  v40 = 0;
                  __p = 0;
                  v58 = 0;
                  v59 = 0;
                }

                if ((v40 & 0x80u) == 0)
                {
                  v43 = &__p;
                }

                else
                {
                  v43 = v42;
                }

                if ((v40 & 0x80u) == 0)
                {
                  v44 = v40;
                }

                else
                {
                  v44 = v41;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v43, v44);
                if (SHIBYTE(v59) < 0)
                {
                  operator delete(__p);
                }

                quasar::QuasarDebugMessage::~QuasarDebugMessage(&v60);
                if (quasar::gLogLevel >= 5)
                {
                  v75 = 0u;
                  v76 = 0u;
                  v73 = 0u;
                  v74 = 0u;
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
                  v60 = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
                  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "EAROutputResultHandler: voiceCommandCandidatePackage PostITN command: ", 70);
                  v46 = [v8 recognition];
                  v47 = [v46 potentialCommandRecognition];
                  v48 = [v47 nBest];
                  v49 = [v48 firstObject];
                  v50 = transcriptFromTokens(v49);
                  v51 = v50;
                  if (v50)
                  {
                    [v50 ear_toString];
                    v52 = HIBYTE(v59);
                    v54 = __p;
                    v53 = v58;
                  }

                  else
                  {
                    v53 = 0;
                    v54 = 0;
                    v52 = 0;
                    __p = 0;
                    v58 = 0;
                    v59 = 0;
                  }

                  if ((v52 & 0x80u) == 0)
                  {
                    v55 = &__p;
                  }

                  else
                  {
                    v55 = v54;
                  }

                  if ((v52 & 0x80u) == 0)
                  {
                    v56 = v52;
                  }

                  else
                  {
                    v56 = v53;
                  }

                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v55, v56);
                  if (SHIBYTE(v59) < 0)
                  {
                    operator delete(__p);
                  }

                  quasar::QuasarDebugMessage::~QuasarDebugMessage(&v60);
                  if (quasar::gLogLevel >= 5)
                  {
                    v75 = 0u;
                    v76 = 0u;
                    v73 = 0u;
                    v74 = 0u;
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
                    v60 = 0u;
                    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v60);
                    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v60, "EAROutputResultHandler: didRecognizeVoiceCommandCandidatePackage", 64);
                    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v60);
                  }
                }
              }
            }
          }

          [v7 speechRecognizer:WeakRetained didRecognizeVoiceCommandCandidatePackage:v8];
        }
      }
    }
  }
}

void sub_1B51E8FD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);

  _Unwind_Resume(a1);
}

void EAROutputResultHandler::handleFinalCandidate(uint64_t a1, uint64_t a2, quasar::result_handler::Package **a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = objc_loadWeakRetained((a1 + 24));
  v7 = v6;
  if (WeakRetained)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(WeakRetained[1]);
      if (objc_opt_respondsToSelector())
      {
        v8 = RHPackageToEARPackage(*a3);
        if ([v8 hasNonEmptyToken])
        {
          if (quasar::gLogLevel >= 5)
          {
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
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v23 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
            v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "EAROutputResultHandler: finalResultCandidatePackage PostITN: ", 61);
            v10 = [v8 recognition];
            v11 = [v10 nBest];
            v12 = [v11 firstObject];
            v13 = transcriptFromTokens(v12);
            v14 = v13;
            if (v13)
            {
              [v13 ear_toString];
              v15 = HIBYTE(v22);
              v17 = __p;
              v16 = v21;
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v15 = 0;
              __p = 0;
              v21 = 0;
              v22 = 0;
            }

            if ((v15 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = v17;
            }

            if ((v15 & 0x80u) == 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = v16;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v19);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
            if (quasar::gLogLevel >= 5)
            {
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
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v23 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "EAROutputResultHandler: didRecognizeFinalResultCandidatePackage", 63);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
            }
          }

          [v7 speechRecognizer:WeakRetained didRecognizeFinalResultCandidatePackage:v8];
        }
      }
    }
  }
}

void sub_1B51E92FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);

  _Unwind_Resume(a1);
}

void EAROutputResultHandler::handleFinal(uint64_t a1, uint64_t a2, quasar::result_handler::Package **a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v6 = objc_loadWeakRetained((a1 + 24));
  v7 = v6;
  if (WeakRetained)
  {
    if (v6)
    {
      dispatch_assert_queue_V2(WeakRetained[1]);
      if (objc_opt_respondsToSelector())
      {
        v8 = RHPackageToEARPackage(*a3);
        if (([v8 hasNonEmptyToken] & 1) != 0 || objc_msgSend(v8, "recognitionPaused"))
        {
          if (quasar::gLogLevel >= 5)
          {
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
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            v23 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
            v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "EAROutputResultHandler: final PostITN: ", 39);
            v10 = [v8 recognition];
            v11 = [v10 nBest];
            v12 = [v11 firstObject];
            v13 = transcriptFromTokens(v12);
            v14 = v13;
            if (v13)
            {
              [v13 ear_toString];
              v15 = HIBYTE(v22);
              v17 = __p;
              v16 = v21;
            }

            else
            {
              v16 = 0;
              v17 = 0;
              v15 = 0;
              __p = 0;
              v21 = 0;
              v22 = 0;
            }

            if ((v15 & 0x80u) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = v17;
            }

            if ((v15 & 0x80u) == 0)
            {
              v19 = v15;
            }

            else
            {
              v19 = v16;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, p_p, v19);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p);
            }

            quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
            if (quasar::gLogLevel >= 5)
            {
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
              v28 = 0u;
              v29 = 0u;
              v26 = 0u;
              v27 = 0u;
              v24 = 0u;
              v25 = 0u;
              v23 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v23);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "EAROutputResultHandler: didRecognizeFinalResultPackage", 54);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v23);
            }
          }

          [v7 speechRecognizer:WeakRetained didRecognizeFinalResultPackage:v8];
        }
      }
    }
  }
}

void sub_1B51E95B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16)
{
  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a16);

  _Unwind_Resume(a1);
}

uint64_t quasar::result_handler::ResultHandler::updateNow(uint64_t this, int *a2)
{
  v2 = *a2;
  if (*a2 <= *(this + 8))
  {
    v2 = *(this + 8);
  }

  *a2 = v2;
  *(this + 8) = v2;
  return this;
}

void std::__shared_ptr_emplace<EARVoiceEditingClient>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D046A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void EARVoiceEditingClient::~EARVoiceEditingClient(EARVoiceEditingClient *this)
{
  *this = &unk_1F2D046F0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  objc_destroyWeak(this + 1);

  quasar::Bitmap::~Bitmap(this);
}

{
  *this = &unk_1F2D046F0;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  objc_destroyWeak(this + 1);
  quasar::Bitmap::~Bitmap(this);

  JUMPOUT(0x1B8C85350);
}

void EARVoiceEditingClient::getLeftAndRightContext(id *this@<X0>, std::string *a2@<X8>)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x4812000000;
  v17 = __Block_byref_object_copy__1405;
  v18 = __Block_byref_object_dispose__1406;
  v19 = &unk_1B5CADD23;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = __Block_byref_object_copy__1405;
  v9 = __Block_byref_object_dispose__1406;
  v10 = &unk_1B5CADD23;
  v12 = 0;
  v13 = 0;
  __p = 0;
  WeakRetained = objc_loadWeakRetained(this + 1);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___ZN21EARVoiceEditingClient22getLeftAndRightContextEv_block_invoke;
  v4[3] = &unk_1E7C1A6D0;
  v4[4] = &v14;
  v4[5] = &v5;
  [WeakRetained getLeftAndRightContextWithCompletion:v4];
  std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(a2, v15 + 3, v6 + 3);

  _Block_object_dispose(&v5, 8);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&v14, 8);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_1B51E99E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  _Block_object_dispose(&a15, 8);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose((v27 - 104), 8);
  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  _Unwind_Resume(a1);
}

uint64_t EARVoiceEditingClient::getDisambiguationActive(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  v2 = [WeakRetained disambiguationActive];

  return v2;
}

uint64_t EARVoiceEditingClient::getFavorCommandSuppression(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  v2 = [WeakRetained favorCommandSuppression];

  return v2;
}

uint64_t EARVoiceEditingClient::getUndoEventAndReset(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  v2 = [WeakRetained getUndoEventAndReset];

  return v2;
}

uint64_t EARVoiceEditingClient::getUtteranceStartedWithSelectedText(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 1);
  v2 = [WeakRetained utteranceStartedWithSelectedText];

  return v2;
}

void EARVoiceEditingClient::setEnableFinalization(EARVoiceEditingClient *this, char a2)
{
  v3 = *(this + 3);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 2);
      if (v7)
      {
        quasar::UtteranceDelayResultStream::setEnableFinalization(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

__n128 __Block_byref_object_copy__1405(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  a2[3].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__1406(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void ___ZN21EARVoiceEditingClient22getLeftAndRightContextEv_block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    [v9 ear_toString];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  v13 = *(*(a1 + 32) + 8);
  if (*(v13 + 71) < 0)
  {
    operator delete(*(v13 + 48));
  }

  *(v13 + 48) = v15;
  *(v13 + 64) = v16;
  if (v10)
  {
    [v10 ear_toString];
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  v14 = *(*(a1 + 40) + 8);
  if (*(v14 + 71) < 0)
  {
    operator delete(*(v14 + 48));
  }

  *(v14 + 48) = v15;
  *(v14 + 64) = v16;
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<std::string&,std::string&,0>(std::string *this, __int128 *a2, __int128 *a3)
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

  return this;
}

void sub_1B51E9DA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void quasar::result_handler::VoiceEditingResultHandlerConfig::~VoiceEditingResultHandlerConfig(void **this)
{
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((this + 9));
}

uint64_t *std::shared_ptr<quasar::result_handler::ResultHandler>::shared_ptr[abi:ne200100]<quasar::result_handler::ResultHandler,std::default_delete<quasar::result_handler::ResultHandler>,0>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *result = *a2;
  if (v2)
  {
    operator new();
  }

  result[1] = 0;
  *a2 = 0;
  return result;
}

void std::__shared_ptr_pointer<quasar::result_handler::ResultHandler  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<quasar::result_handler::ResultHandler  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<quasar::result_handler::ResultHandler  *>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<quasar::UtteranceDelayResultStream>::__shared_ptr_emplace[abi:ne200100]<std::shared_ptr<quasar::RecogResultStreamBase> &,std::shared_ptr<quasar::ContinuousListeningConfig> &,std::allocator<quasar::UtteranceDelayResultStream>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D047B8;
  std::allocator<quasar::UtteranceDelayResultStream>::construct[abi:ne200100]<quasar::UtteranceDelayResultStream,std::shared_ptr<quasar::RecogResultStreamBase> &,std::shared_ptr<quasar::ContinuousListeningConfig> &>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<quasar::UtteranceDelayResultStream>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D047B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::allocator<quasar::UtteranceDelayResultStream>::construct[abi:ne200100]<quasar::UtteranceDelayResultStream,std::shared_ptr<quasar::RecogResultStreamBase> &,std::shared_ptr<quasar::ContinuousListeningConfig> &>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a3[1];
  v8 = *a3;
  v9 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a4[1];
  v6 = *a4;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::UtteranceDelayResultStream::UtteranceDelayResultStream(a2, &v8, &v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_1B51EA124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void ResultStreamWrapper::replacementTokenName(uint64_t a1@<X0>, std::string *a2@<X1>, int a3@<W2>, std::string *a4@<X8>)
{
  v51 = a3;
  v6 = *(a1 + 48);
  if (!v6)
  {
    goto LABEL_72;
  }

  if ((SHIBYTE(a2->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!a2->__r_.__value_.__l.__size_)
    {
      goto LABEL_72;
    }

    v9 = a2->__r_.__value_.__r.__words[0];
  }

  else
  {
    if (!*(&a2->__r_.__value_.__s + 23))
    {
      goto LABEL_72;
    }

    v9 = a2;
  }

  v10 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:v9];
  v11 = [v10 lowercaseString];
  v12 = [v6 objectForKey:v11];

  if (v12)
  {
    [v12 ear_toString];
    if (a3)
    {
      size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v14 = size;
      if ((size & 0x80u) != 0)
      {
        size = a2->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v15 = HIBYTE(v50);
        if (v50 < 0)
        {
          v15 = *(&v49 + 1);
        }

        if (v15)
        {
          v16 = v14 >= 0 ? a2 : a2->__r_.__value_.__r.__words[0];
          v17 = v16->__r_.__value_.__s.__data_[0];
          if ((v17 & 0x80000000) != 0 ? __maskrune(v17, 0x8000uLL) : *(MEMORY[0x1E69E9830] + 4 * v17 + 60) & 0x8000)
          {
            if (v50 >= 0)
            {
              v41 = &v49;
            }

            else
            {
              v41 = v49;
            }

            v42 = __toupper(*v41);
            if (v50 >= 0)
            {
              v43 = &v49;
            }

            else
            {
              v43 = v49;
            }

            *v43 = v42;
          }
        }
      }
    }

    *&a4->__r_.__value_.__l.__data_ = v49;
    a4->__r_.__value_.__r.__words[2] = v50;
    v50 = 0;
    v49 = 0uLL;
LABEL_85:

    return;
  }

  if (a3)
  {
    memset(&__p, 0, sizeof(__p));
    memset(&v47, 0, sizeof(v47));
    v19 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v20 = a2->__r_.__value_.__l.__size_;
    if ((v19 & 0x80000000) == 0)
    {
      v20 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    }

    if (v20)
    {
      v21 = 0;
      v22 = v19 >> 63;
      v23 = MEMORY[0x1E69E9830];
      while (1)
      {
        v24 = (v22 & 1) != 0 ? a2->__r_.__value_.__r.__words[0] : a2;
        v25 = *(v24 + v21);
        if ((v25 & 0x80000000) != 0 ? __maskrune(v25, 0x2000uLL) : *(v23 + 4 * v25 + 60) & 0x2000)
        {
          break;
        }

        ++v21;
        v27 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        v22 = v27 >> 63;
        if ((v27 & 0x80000000) != 0)
        {
          v27 = a2->__r_.__value_.__l.__size_;
        }

        if (v27 <= v21)
        {
          goto LABEL_39;
        }
      }

      std::string::basic_string(&v46, a2, 0, v21, &v52);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v46;
      std::string::basic_string(&v46, a2, v21, 0xFFFFFFFFFFFFFFFFLL, &v52);
      v47 = v46;
    }

LABEL_39:
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v28 = __p.__r_.__value_.__l.__size_;
    }

    if (v28)
    {
      v29 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = a2->__r_.__value_.__l.__size_;
      }

      v31 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      if (v28 != v29 || (v30 >= 0 ? (v32 = a2) : (v32 = a2->__r_.__value_.__r.__words[0]), memcmp(v31, v32, v28)))
      {
        v33 = *(a1 + 48);
        v34 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v31, v28}];
        v35 = [v34 lowercaseString];
        v36 = [v33 objectForKey:v35];

        if (v36)
        {
          [v36 ear_toString];
          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = &v47;
          }

          else
          {
            v37 = v47.__r_.__value_.__r.__words[0];
          }

          if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v38 = v47.__r_.__value_.__l.__size_;
          }

          v39 = std::string::append(&v46, v37, v38);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v45 = v39->__r_.__value_.__r.__words[2];
          *v44 = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          ResultStreamWrapper::replacementTokenName(std::string const&,BOOL)::{lambda(std::string const&,std::string)#1}::operator()(&v51, a2, v44, a4);
          if (SHIBYTE(v45) < 0)
          {
            operator delete(v44[0]);
          }

          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_85;
        }
      }
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

LABEL_72:
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a4, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    *&a4->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
    a4->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
  }
}

void sub_1B51EA5FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN19ResultStreamWrapper12writePartialERKNSt3__16vectorINS0_12basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEENS5_IS7_EEEE27PartialUtteranceStartMillisbiiRKNS1_INS1_IN6quasar5TokenENS5_ISE_EEEENS5_ISG_EEEESB_SB_bbRK14FormattingInfo_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    EARContinuousListeningResultHelper::setParser(v2);
  }

  v4 = *(a1 + 213);
  return (*(**(a1 + 48) + 24))(*(a1 + 48), a1 + 64, *(a1 + 200), *(a1 + 212), *(a1 + 204), *(a1 + 208), a1 + 88, a1 + 112, a1 + 136, v4, a1 + 160);
}

void __copy_helper_block_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE88c72_ZTSNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEE112c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE136c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE160c21_ZTSK14FormattingInfo(std::string *a1, uint64_t a2)
{
  a1[1].__r_.__value_.__l.__size_ = *(a2 + 32);
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2].__r_.__value_.__r.__words[0] = *(a2 + 48);
  v5 = *(a2 + 56);
  a1[2].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[2].__r_.__value_.__r.__words[2] = 0;
  a1[3].__r_.__value_.__r.__words[0] = 0;
  a1[3].__r_.__value_.__l.__size_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&a1[2].__r_.__value_.__r.__words[2], *(a2 + 64), *(a2 + 72), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 72) - *(a2 + 64)) >> 3));
  a1[3].__r_.__value_.__r.__words[2] = 0;
  a1[4].__r_.__value_.__r.__words[0] = 0;
  a1[4].__r_.__value_.__l.__size_ = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&a1[3].__r_.__value_.__r.__words[2], *(a2 + 88), *(a2 + 96), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 96) - *(a2 + 88)) >> 3));
  a1[4].__r_.__value_.__r.__words[2] = 0;
  a1[5].__r_.__value_.__r.__words[0] = 0;
  a1[5].__r_.__value_.__l.__size_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&a1[4].__r_.__value_.__r.__words[2], *(a2 + 112), *(a2 + 120), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 120) - *(a2 + 112)) >> 3));
  a1[5].__r_.__value_.__r.__words[2] = 0;
  a1[6].__r_.__value_.__r.__words[0] = 0;
  a1[6].__r_.__value_.__l.__size_ = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&a1[5].__r_.__value_.__r.__words[2], *(a2 + 136), *(a2 + 144), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 144) - *(a2 + 136)) >> 3));
  a1[6].__r_.__value_.__s.__data_[16] = *(a2 + 160);
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 7, *(a2 + 168), *(a2 + 176));
  }

  else
  {
    v6 = *(a2 + 168);
    a1[7].__r_.__value_.__r.__words[2] = *(a2 + 184);
    *&a1[7].__r_.__value_.__l.__data_ = v6;
  }

  a1[8].__r_.__value_.__s.__data_[0] = *(a2 + 192);
}

void sub_1B51EA8A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  v4 = *(v2 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(v2 + 40);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE88c72_ZTSNSt3__16vectorINS0_IN6quasar5TokenENS_9allocatorIS2_EEEENS3_IS5_EEEE112c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE136c90_ZTSKNSt3__16vectorINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEENS4_IS6_EEEE160c21_ZTSK14FormattingInfo(uint64_t a1)
{
  v2 = (a1 + 64);
  v3 = (a1 + 88);
  v4 = (a1 + 112);
  v5 = (a1 + 136);
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v8 = v5;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = v4;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = v3;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = v2;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v8);
  v6 = *(a1 + 56);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

__n128 ResultStreamWrapper::replacementTokenName(std::string const&,BOOL)::{lambda(std::string const&,std::string)#1}::operator()@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == 1)
  {
    v6 = a2[23];
    v7 = v6;
    if ((v6 & 0x80u) != 0)
    {
      v6 = *(a2 + 1);
    }

    if (v6)
    {
      v8 = a3[23];
      if (v8 < 0)
      {
        v8 = *(a3 + 1);
      }

      if (v8)
      {
        if (v7 >= 0)
        {
          v9 = a2;
        }

        else
        {
          v9 = *a2;
        }

        v10 = *v9;
        if ((v10 & 0x80000000) != 0)
        {
          if (!__maskrune(v10, 0x8000uLL))
          {
            goto LABEL_20;
          }
        }

        else if ((*(MEMORY[0x1E69E9830] + 4 * v10 + 60) & 0x8000) == 0)
        {
          goto LABEL_20;
        }

        v11 = a3;
        if (a3[23] < 0)
        {
          v11 = *a3;
        }

        v12 = __toupper(*v11);
        v13 = a3;
        if (a3[23] < 0)
        {
          v13 = *a3;
        }

        *v13 = v12;
      }
    }
  }

LABEL_20:
  result = *a3;
  *a4 = *a3;
  *(a4 + 16) = *(a3 + 2);
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  return result;
}

uint64_t ___ZN19ResultStreamWrapper17writeFinalChoicesERKN6quasar11RecogResultENS0_21RecogResultStreamBase11RecogStatusE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    EARContinuousListeningResultHelper::setParser(v2);
  }

  v3 = *(**(a1 + 48) + 40);

  return v3();
}

quasar::RecogResult *__copy_helper_block_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c26_ZTSN6quasar11RecogResultE(void *a1, void *a2)
{
  v2 = a2[5];
  a1[4] = a2[4];
  a1[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return quasar::RecogResult::RecogResult((a1 + 8), (a2 + 8));
}

void sub_1B51EAB58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c63_ZTSKNSt3__110shared_ptrI34EARContinuousListeningResultHelperEE48c59_ZTSKNSt3__110shared_ptrIN6quasar21RecogResultStreamBaseEEE64c26_ZTSN6quasar11RecogResultE(void *a1)
{
  quasar::RecogResult::~RecogResult((a1 + 8));
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = a1[5];
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

quasar::RecogResult *quasar::RecogResult::RecogResult(quasar::RecogResult *this, const quasar::RecogResult *a2)
{
  *this = &unk_1F2D3DC70;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 8, *(a2 + 1), *(a2 + 2), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 2) - *(a2 + 1)) >> 3));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  std::vector<std::set<std::string>>::__init_with_size[abi:ne200100]<std::set<std::string>*,std::set<std::string>*>(this + 32, *(a2 + 4), *(a2 + 5), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 5) - *(a2 + 4)) >> 3));
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(this + 56, *(a2 + 7), *(a2 + 8), (*(a2 + 8) - *(a2 + 7)) >> 3);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(this + 80, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 3));
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  std::vector<quasar::ItnOverride>::__init_with_size[abi:ne200100]<quasar::ItnOverride*,quasar::ItnOverride*>(this + 104, *(a2 + 13), *(a2 + 14), 0x8E38E38E38E38E39 * ((*(a2 + 14) - *(a2 + 13)) >> 3));
  quasar::AudioAnalytics::AudioAnalytics((this + 128), (a2 + 128));
  if (*(a2 + 295) < 0)
  {
    std::string::__init_copy_ctor_external((this + 272), *(a2 + 34), *(a2 + 35));
  }

  else
  {
    v4 = *(a2 + 17);
    *(this + 36) = *(a2 + 36);
    *(this + 17) = v4;
  }

  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 296, *(a2 + 37), *(a2 + 38), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 38) - *(a2 + 37)) >> 3));
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 42) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 320, *(a2 + 40), *(a2 + 41), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 41) - *(a2 + 40)) >> 3));
  *(this + 43) = *(a2 + 43);
  v5 = *(a2 + 44);
  *(this + 44) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 45) = *(a2 + 45);
  v6 = *(a2 + 46);
  *(this + 46) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *(a2 + 376);
  v8 = *(a2 + 408);
  *(this + 392) = *(a2 + 392);
  *(this + 408) = v8;
  *(this + 376) = v7;
  *(this + 53) = *(a2 + 53);
  v9 = *(a2 + 54);
  *(this + 54) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 440) = *(a2 + 440);
  if (*(a2 + 471) < 0)
  {
    std::string::__init_copy_ctor_external((this + 448), *(a2 + 56), *(a2 + 57));
  }

  else
  {
    v10 = *(a2 + 28);
    *(this + 58) = *(a2 + 58);
    *(this + 28) = v10;
  }

  v11 = *(a2 + 472);
  *(this + 61) = *(a2 + 61);
  *(this + 472) = v11;
  *(this + 496) = *(a2 + 496);
  if (*(a2 + 527) < 0)
  {
    std::string::__init_copy_ctor_external(this + 21, *(a2 + 63), *(a2 + 64));
  }

  else
  {
    v12 = *(a2 + 504);
    *(this + 65) = *(a2 + 65);
    *(this + 504) = v12;
  }

  v13 = *(a2 + 33);
  *(this + 68) = *(a2 + 68);
  *(this + 33) = v13;
  v14 = *(a2 + 552);
  *(this + 564) = *(a2 + 564);
  *(this + 552) = v14;
  *(this + 584) = *(a2 + 584);
  if (*(a2 + 615) < 0)
  {
    std::string::__init_copy_ctor_external((this + 592), *(a2 + 74), *(a2 + 75));
  }

  else
  {
    v15 = *(a2 + 37);
    *(this + 76) = *(a2 + 76);
    *(this + 37) = v15;
  }

  *(this + 616) = *(a2 + 616);
  *(this + 78) = 0;
  *(this + 80) = 0;
  *(this + 79) = 0;
  std::vector<std::pair<quasar::LmeDataStatus,quasar::LmeUsageStatus>>::__init_with_size[abi:ne200100]<std::pair<quasar::LmeDataStatus,quasar::LmeUsageStatus>*,std::pair<quasar::LmeDataStatus,quasar::LmeUsageStatus>*>(this + 624, *(a2 + 78), *(a2 + 79), (*(a2 + 79) - *(a2 + 78)) >> 3);
  return this;
}

void sub_1B51EAF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  if (*(v10 + 527) < 0)
  {
    operator delete(*v12);
  }

  if (*(v10 + 471) < 0)
  {
    operator delete(*(v10 + 448));
  }

  v14 = *(v10 + 432);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v10 + 368);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v16 = *(v10 + 352);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 295) < 0)
  {
    operator delete(*(v10 + 272));
  }

  quasar::AudioAnalytics::~AudioAnalytics((v10 + 128));
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v17 = *v11;
  if (*v11)
  {
    *(v10 + 64) = v17;
    operator delete(v17);
  }

  std::vector<std::set<std::string>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::ItnOverride>::__init_with_size[abi:ne200100]<quasar::ItnOverride*,quasar::ItnOverride*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::ItnOverride>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B51EB0B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::ItnOverride>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ItnOverride>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::ItnOverride>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::ItnOverride>,quasar::ItnOverride*,quasar::ItnOverride*,quasar::ItnOverride*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      if (*(v6 + 47) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 1, *(v6 + 3), *(v6 + 4));
      }

      else
      {
        v8 = *(v6 + 24);
        v4[1].__r_.__value_.__r.__words[2] = *(v6 + 5);
        *&v4[1].__r_.__value_.__l.__data_ = v8;
      }

      if (*(v6 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(v4 + 2, *(v6 + 6), *(v6 + 7));
      }

      else
      {
        v9 = v6[3];
        v4[2].__r_.__value_.__r.__words[2] = *(v6 + 8);
        *&v4[2].__r_.__value_.__l.__data_ = v9;
      }

      v6 = (v6 + 72);
      v4 = v14 + 3;
      v14 += 3;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::ItnOverride>,quasar::ItnOverride*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}