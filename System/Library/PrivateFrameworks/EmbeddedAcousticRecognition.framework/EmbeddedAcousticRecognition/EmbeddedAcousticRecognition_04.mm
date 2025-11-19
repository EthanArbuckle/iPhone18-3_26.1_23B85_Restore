BOOL kaldi::quasar::CEFusedAcousticEncoder::HasRfdnnOut(kaldi::quasar::CEFusedAcousticEncoder *this)
{
  v1 = *(this + 191);
  if (v1 < 0)
  {
    v1 = *(this + 22);
  }

  return v1 != 0;
}

uint64_t kaldi::quasar::EspressoV2TensorData::GetNumDims(kaldi::quasar::EspressoV2TensorData *this)
{
  v7 = 0;
  v8 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Espresso V2 failure: ", 21);
    v4 = strlen(last_error_message);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, last_error_message, v4);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  return v7;
}

void kaldi::quasar::CEFusedAcousticEncoder::CreateFeatures(uint64_t a1@<X0>, uint64_t a2@<X1>, kaldi::quasar::ComputeEngineBufferItf **a3@<X2>, kaldi::quasar::ComputeEngineBufferItf **a4@<X8>)
{
  if (*(a1 + 476))
  {
    v8 = (a2 + 20);
  }

  else
  {
    v8 = (a1 + 392);
  }

  kaldi::quasar::InputShapeTemplate::Get((a1 + 336), *v8, *(a1 + 372), __p);
  v9 = *a3;
  *a3 = 0;
  v11 = v9;
  kaldi::quasar::CreateBufferFromMatrix(a1 + 512, a2, __p, &v11, a4);
  v10 = v11;
  v11 = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1B5060BE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (a2)
  {
    kaldi::quasar::TransducerAutoRegressiveDecodable::GatherOutputsBatch(a2);
  }

  quasar::createConstituentDfstsFromSecondPassDecoder(va);
  _Unwind_Resume(a1);
}

void kaldi::quasar::EspressoV2TensorData::CreateAndBindToOutput()
{
  v4[34] = 0;
  if (!e5rt_execution_stream_operation_retain_output_port())
  {
    operator new();
  }

  last_error_message = e5rt_get_last_error_message();
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v4);
  v1 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Espresso V2 failure: ", 21);
  v2 = strlen(last_error_message);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, last_error_message, v2);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v3, "\n");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
}

void quasar::ComputeAheadFeatInput::ComputeAheadAndNotify(quasar::ComputeAheadFeatInput *this)
{
  v4 = 0;
  v5 = 0;
  v2 = (this + 48);
  v3 = 0;
  v3 = (*(**(this + 1) + 40))(*(this + 1), &v4);
  std::mutex::lock(v2);
  std::deque<std::pair<kaldi::VadSegmentInfo,BOOL>>::emplace_back<kaldi::VadSegmentInfo&,BOOL &>(this + 28, &v4, &v3);
  if (*(this + 33) == 1)
  {
    std::condition_variable::notify_one((this + 112));
  }

  std::mutex::unlock(v2);
  _ZNSt3__115allocate_sharedB8ne200100IN6quasar21ComputeAheadFeatInput5BatchENS_9allocatorIS3_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1B506109C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, char a10)
{
  if (a10 == 1)
  {
    std::mutex::unlock(a9);
  }

  JUMPOUT(0x1B5061088);
}

void kaldi::AmFusionEncoderInput::PrepareFeature(uint64_t a1, __int128 *a2)
{
  v2 = a2[1];
  v3 = *a2;
  v4 = v2;
  v5 = a2[2];
  kaldi::GasrEncoderBase::PrepareFeature(a1);
}

uint64_t std::deque<std::shared_ptr<quasar::ComputeAheadFeatInput::Batch>>::pop_front(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + ((v2 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v2 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  return std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__maybe_remove_front_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<kaldi::Matrix<float>>::emplace_back<kaldi::Matrix<float>>(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<kaldi::Matrix<float>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  }

  kaldi::Matrix<float>::Matrix(v8, a2);
  v9 = a1[4];
  v10 = a1[5] + 1;
  a1[5] = v10;
  v11 = v9 + v10;
  v12 = a1[1];
  v13 = (v12 + 8 * (v11 / 0x66));
  v14 = *v13 + 40 * (v11 % 0x66);
  if (a1[2] == v12)
  {
    v14 = 0;
  }

  if (v14 == *v13)
  {
    v14 = *(v13 - 1) + 4080;
  }

  return v14 - 40;
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::loadLmeData(uint64_t a1, uint64_t a2, uint64_t a3, quasar::SpeechRequestData **a4)
{
  v4 = a4;
  if (*(a1 + 2892) == 1 && (quasar::SpeechRequestData::isLoadLmeProfile(*a4) & 1) == 0)
  {
    v79 = *(a1 + 2928);
    if ((a2 + 320) != v79)
    {
      std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__assign_with_size[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>((a2 + 320), *v79, v79[1], (v79[1] - *v79) >> 5);
    }

    std::allocate_shared[abi:ne200100]<quasar::SymbolTableList,std::allocator<quasar::SymbolTableList>,quasar::SymbolTableList&,0>();
  }

  v84 = (a2 + 320);
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100]((a2 + 320));
  *(a2 + 352) = *(a2 + 344);
  std::__tree<int>::destroy(a2 + 368, *(a2 + 376));
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 368) = a2 + 376;
  v8 = *(a2 + 400);
  *(a2 + 392) = 0;
  *(a2 + 400) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  std::vector<quasar::LmeInfo>::clear[abi:ne200100]((*a3 + 600));
  quasar::SymbolTableList::clear(*(*a3 + 488));
  v9 = *(*a3 + 488);
  v10 = *(a1 + 2192);
  v114 = *(a1 + 2184);
  v115 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  quasar::SymbolTableList::addSymbolTable(v9, &v114, 0, -1);
  if (v115)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v115);
  }

  if (*(a1 + 2892))
  {
    quasar::SpeechRequestData::getRecogRequestTimer(*v4, &v87);
    v11 = v87;
    v80 = a2;
    *(a1 + 3320) = kaldi::Timer::GetSeconds(5, v12) - *v11;
    if (*(&v87 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
    }

    v112 = 0u;
    v111 = 0u;
    v113 = 1065353216;
    v110[0] = 0;
    v110[1] = 0;
    v109 = v110;
    v82 = a3;
    v83 = v4;
    if (*(a1 + 2892) != 1)
    {
LABEL_90:
      LmeDataStreams = quasar::SpeechRequestData::getLmeDataStreams(*v4);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(*a3 + 608) - *(*a3 + 600)) >> 3) != (LmeDataStreams[1] - *LmeDataStreams) >> 4 && quasar::gLogLevel >= 2)
      {
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "lmeDataStreams and lmeInfos size mismatch. Should NEVER happen", 62);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(&v87);
      }

      quasar::SpeechRequestData::getRecogRequestTimer(*v4, &v87);
      v60 = v87;
      Seconds = kaldi::Timer::GetSeconds(5, v61);
      v63 = *v60;
      if (*(&v87 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
      }

      for (i = v112; i; i = *i)
      {
        if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2944), i + 2))
        {
          v65 = i[5];
          v66 = i[6];
          if (v65 != v66)
          {
            if ((v66 - v65) >= 0x11 && *(a1 + 3336) && *(a1 + 3340))
            {
              std::allocate_shared[abi:ne200100]<fst::quasar::MergeTrieFst,std::allocator<fst::quasar::MergeTrieFst>,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> const&,int &,int &,std::string const&,0>();
            }

            v72 = *v65;
            v71 = *(v65 + 1);
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v73 = *std::map<std::string,std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::at(a1 + 3024, i + 2);
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
              *(&v87 + 1) = v72;
              __p[0] = v71;
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            else
            {
              *(&v87 + 1) = v72;
              __p[0] = 0;
            }

            LODWORD(v87) = v73;
            LODWORD(__p[1]) = 0;
            std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](v84, &v87);
            if (__p[0])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](__p[0]);
            }

            if (v71)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v71);
              std::__shared_weak_count::__release_shared[abi:ne200100](v71);
            }
          }
        }

        else if (quasar::gLogLevel >= 4)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
          v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Ignoring unsupported template ", 30);
          v68 = *(i + 39);
          if (v68 >= 0)
          {
            v69 = (i + 2);
          }

          else
          {
            v69 = i[2];
          }

          if (v68 >= 0)
          {
            v70 = *(i + 39);
          }

          else
          {
            v70 = i[3];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, v69, v70);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
        }
      }

      quasar::SpeechRequestData::getRecogRequestTimer(*v83, &v87);
      v74 = v87;
      v76 = kaldi::Timer::GetSeconds(5, v75);
      v77 = *v74;
      if (*(&v87 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
      }

      if (quasar::gLogLevel >= 4)
      {
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "lmeMergeInitTime ", 17);
        MEMORY[0x1B8C84BE0](v78, v76 - v77 - (Seconds - v63));
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
      }

      quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(a1, v82, v83, v84, v80 + 344, (v80 + 232));
    }

    v13 = 0;
    while (1)
    {
      v14 = quasar::SpeechRequestData::getLmeDataStreams(*v4);
      if (v13 >= (v14[1] - *v14) >> 4)
      {
        goto LABEL_90;
      }

      v15 = *(*quasar::SpeechRequestData::getLmeDataStreams(*v4) + 16 * v13);
      v16 = v15;
      if (*(&v15 + 1))
      {
        atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
        v108 = v15;
        atomic_fetch_add_explicit((*(&v15 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      else
      {
        v108 = v15;
      }

      v17 = quasar::OnlineLatticeBiglmLmeFasterDecoder::readAndCheckLmeData(a1, &v108, v13, *(*(*v4 + 24) + 721));
      if (*(&v16 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
      }

      memset(&v107, 0, sizeof(v107));
      if ((v17 & 0xFFFFFFFD) == 1)
      {
        v19 = *v16;
        v18 = *(v16 + 8);
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v81 = v18;
        std::string::operator=(&v107, (v16 + 16));
        LODWORD(v104) = v19[20];
        *&v87 = &v104;
        v106 = *(std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v109, &v104) + 8);
        v21 = v19[20];
        v20 = v19[21];
        LODWORD(v104) = v21;
        *&v87 = &v104;
        v22 = std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v109, &v104);
        *(v22 + 8) += v20 - v21 + 1;
        if (v106)
        {
          std::allocate_shared[abi:ne200100]<quasar::QsrTextSymbolTable,std::allocator<quasar::QsrTextSymbolTable>,std::shared_ptr<quasar::QsrTextSymbolTable> const&,long long &,0>();
        }

        v24 = v19[29];
        v104 = v19[28];
        v105 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (quasar::gLogLevel >= 4)
        {
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v93 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
          v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "LME container ", 14);
          v26 = MEMORY[0x1B8C84C00](v25, v13);
          v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ": offset ", 9);
          v28 = MEMORY[0x1B8C84C60](v27, v106);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, " firstKey ", 10);
          v30 = MEMORY[0x1B8C84C60](v29, v19[20]);
          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, " lastKey ", 9);
          MEMORY[0x1B8C84C60](v31, v19[21]);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
        }

        v32 = *(*v82 + 488);
        v85 = v104;
        v86 = v105;
        if (v105)
        {
          atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = quasar::SymbolTableList::addSymbolTable(v32, &v85, v106 + v19[20], v13);
        if (v86)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v86);
        }

        if (v23)
        {
          v33 = v19[25];
          v34 = (v19 + 26);
          if (v33 != v19 + 26)
          {
            v35 = 0;
            while (1)
            {
              if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 2944), v33 + 4))
              {
                v36 = v33[7];
                if (v36)
                {
                  if (((*(*v36 + 24))(v36) & 0x80000000) == 0)
                  {
                    v37 = v33[7];
                    v38 = (*(*v37 + 24))(v37);
                    if ((*(*v37 + 40))(v37, v38))
                    {
                      *&v87 = v33 + 4;
                      v39 = std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&v111, v33 + 4);
                      if (v106)
                      {
                        std::allocate_shared[abi:ne200100]<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>,std::allocator<fst::ArcMapFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::quasar::OffsetOutputLabelMapper>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> &,fst::quasar::OffsetOutputLabelMapper,0>();
                      }

                      v48 = v33[8];
                      *&v87 = v33[7];
                      *(&v87 + 1) = v48;
                      if (v48)
                      {
                        atomic_fetch_add_explicit(v48 + 1, 1uLL, memory_order_relaxed);
                      }

                      std::vector<std::shared_ptr<quasar::FeatureExtractor>>::push_back[abi:ne200100](v39 + 5, &v87);
                      if (*(&v87 + 1))
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v87 + 1));
                      }

                      v35 = 1;
                      goto LABEL_63;
                    }
                  }
                }

                if (quasar::gLogLevel >= 4)
                {
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  v98 = 0u;
                  v99 = 0u;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v93 = 0u;
                  v91 = 0u;
                  v92 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  v87 = 0u;
                  *__p = 0u;
                  kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
                  v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Ignoring null or arc-less FST for template ", 43);
                  v41 = *(v33 + 55);
                  if (v41 >= 0)
                  {
                    v42 = (v33 + 4);
                  }

                  else
                  {
                    v42 = v33[4];
                  }

                  if (v41 >= 0)
                  {
                    v43 = *(v33 + 55);
                  }

                  else
                  {
                    v43 = v33[5];
                  }

LABEL_57:
                  v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v42, v43);
                  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, " in stream # ", 13);
                  v47 = MEMORY[0x1B8C84C00](v46, v13);
                  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ".", 1);
                  quasar::QuasarInfoMessage::~QuasarInfoMessage(&v87);
                }
              }

              else if (quasar::gLogLevel >= 4)
              {
                v102 = 0u;
                v103 = 0u;
                v100 = 0u;
                v101 = 0u;
                v98 = 0u;
                v99 = 0u;
                v96 = 0u;
                v97 = 0u;
                v94 = 0u;
                v95 = 0u;
                v93 = 0u;
                v91 = 0u;
                v92 = 0u;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                *__p = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87);
                v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Ignoring unsupported template ", 30);
                v44 = *(v33 + 55);
                if (v44 >= 0)
                {
                  v42 = (v33 + 4);
                }

                else
                {
                  v42 = v33[4];
                }

                if (v44 >= 0)
                {
                  v43 = *(v33 + 55);
                }

                else
                {
                  v43 = v33[5];
                }

                goto LABEL_57;
              }

LABEL_63:
              v49 = v33[1];
              if (v49)
              {
                do
                {
                  v50 = v49;
                  v49 = *v49;
                }

                while (v49);
              }

              else
              {
                do
                {
                  v50 = v33[2];
                  v51 = *v50 == v33;
                  v33 = v50;
                }

                while (!v51);
              }

              v33 = v50;
              if (v50 == v34)
              {
                v23 = v35 & 1;
                goto LABEL_72;
              }
            }
          }

          v23 = 0;
        }

        else
        {
          v17 = 6;
        }

LABEL_72:
        a3 = v82;
        if (v105)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v105);
        }

        if (v81)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }
      }

      else
      {
        v23 = 0;
      }

      v52 = *a3;
      LODWORD(v87) = *(v16 + 40);
      *(&v87 + 4) = __PAIR64__(v23, v17);
      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v107.__r_.__value_.__l.__data_, v107.__r_.__value_.__l.__size_);
      }

      else
      {
        *__p = *&v107.__r_.__value_.__l.__data_;
        *&v89 = *(&v107.__r_.__value_.__l + 2);
      }

      v4 = v83;
      v53 = *(v52 + 608);
      if (v53 >= *(v52 + 616))
      {
        v56 = std::vector<quasar::LmeInfo>::__emplace_back_slow_path<quasar::LmeInfo>(v52 + 600, &v87);
        v57 = SBYTE7(v89);
        *(v52 + 608) = v56;
        if (v57 < 0)
        {
          operator delete(__p[0]);
        }
      }

      else
      {
        v54 = v87;
        *(v53 + 8) = DWORD2(v87);
        *v53 = v54;
        v55 = *__p;
        *(v53 + 32) = v89;
        *(v53 + 16) = v55;
        *(v52 + 608) = v53 + 40;
      }

      if (SHIBYTE(v107.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (*(&v16 + 1))
      {
        goto LABEL_85;
      }

LABEL_86:
      ++v13;
      if ((*(a1 + 2892) & 1) == 0)
      {
        goto LABEL_90;
      }
    }

    operator delete(v107.__r_.__value_.__l.__data_);
    if (!*(&v16 + 1))
    {
      goto LABEL_86;
    }

LABEL_85:
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    goto LABEL_86;
  }
}

void sub_1B5062154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__tree<int>::destroy(v67 - 216, a67);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::~__hash_table(v67 - 192);
  _Unwind_Resume(a1);
}

_BYTE *quasar::Location::statusAsString@<X0>(quasar::Location *this@<X0>, _BYTE *a2@<X8>)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = v3 == 360.0 && v2 == 360.0;
  v5 = "KNOWN";
  if (v4)
  {
    v5 = "DENIED";
  }

  if (v3 == 1000.0 && v2 == 1000.0)
  {
    v7 = "UNDEFINED";
  }

  else
  {
    v7 = v5;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v7);
}

void sub_1B50625B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  _Unwind_Resume(a1);
}

void quasar::Geography::addContextForUnknownLocation(uint64_t a1, std::string *a2, quasar::Location *this, quasar::GeoMemories *a4)
{
  if (!quasar::Location::isUnknown(this))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    quasar::Location::toString(&v28, this);
    v9 = std::string::insert(&v28, 0, "Internal error, unknown location expected but got ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v12 = *(&v9->__r_.__value_.__l + 2);
    v11 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v11);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (quasar::Location::isDenied(this))
  {
    if (quasar::gLogLevel >= 5)
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
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "Access to geo location denied", 29);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v11);
    }
  }

  else if (quasar::Location::isUndefined(this))
  {

    quasar::Geography::addContextFromOldMemories(a1, a2, a4);
  }
}

uint64_t kaldi::OnlineBufferingInput::Compute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (kaldi::MatrixBase<float>::NumRows(*a2))
  {
    v5 = 0;
    while (1)
    {
      if (kaldi::MatrixBase<float>::NumRows(a1 + 16) == *(a1 + 56))
      {
        if ((*(a1 + 60) & 1) == 0)
        {
          if (v5)
          {
            v15 = (*(*a1 + 8))(a1);
          }

          else
          {
            v15 = 0;
          }

          kaldi::Matrix<float>::Resize(v4, v5, v15, 2, 0);
          v12 = 0;
          return v12 & 1;
        }

        *(a1 + 56) = 0;
        v6 = kaldi::MatrixBase<float>::NumRows(v4);
        v7 = (*(*a1 + 8))(a1);
        kaldi::Matrix<float>::Resize(a1 + 16, v6, v7, 1, 0);
        *a2 = a1 + 16;
        v8 = *(a1 + 8);
        v9 = *(a2 + 16);
        v17[0] = *a2;
        v17[1] = v9;
        v17[2] = *(a2 + 32);
        *(a1 + 60) = (**v8)();
      }

      if (!kaldi::MatrixBase<float>::NumRows(a1 + 16))
      {
        break;
      }

      v10 = kaldi::MatrixBase<float>::NumRows(a1 + 16) - *(a1 + 56);
      v11 = kaldi::MatrixBase<float>::NumRows(v4) - v5;
      if (v10 >= v11)
      {
        v10 = v11;
      }

      kaldi::SubMatrix<float>::SubMatrix(v17, v4, v5, v10, 0, *(v4 + 8));
      kaldi::SubMatrix<float>::SubMatrix(v16, a1 + 16, *(a1 + 56), v10, 0, *(a1 + 24));
      kaldi::MatrixBase<float>::CopyFromMat<float>(v17, v16, 111);
      quasar::Bitmap::~Bitmap(v16);
      quasar::Bitmap::~Bitmap(v17);
      *(a1 + 56) += v10;
      v5 = (v10 + v5);
      if (v5 == kaldi::MatrixBase<float>::NumRows(v4))
      {
        goto LABEL_10;
      }
    }

    if (v5)
    {
      v14 = (*(*a1 + 8))(a1);
    }

    else
    {
      v14 = 0;
    }

    kaldi::Matrix<float>::Resize(v4, v5, v14, 2, 0);
    v12 = *(a1 + 60);
    if (*(a1 + 61) == 1 && (*(a1 + 60) & 1) != 0)
    {
      kaldi::Matrix<float>::Swap((a1 + 16), v4);
      *(a1 + 56) = 0;
      v12 = *(a1 + 60);
    }
  }

  else
  {
LABEL_10:
    v12 = 1;
  }

  return v12 & 1;
}

void sub_1B5062AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  quasar::Bitmap::~Bitmap(&a9);
  quasar::Bitmap::~Bitmap(&a13);
  _Unwind_Resume(a1);
}

void kaldi::OnlineSpliceBatchInput::SpliceFrames(uint64_t a1, int *a2, int *a3, int a4, uint64_t a5)
{
  v9 = kaldi::MatrixBase<float>::NumRows(a2);
  v10 = kaldi::MatrixBase<float>::NumRows(a3);
  v11 = v9 - a4 + v10 + 1;
  v12 = kaldi::MatrixBase<float>::NumCols(a2);
  v13 = kaldi::MatrixBase<float>::NumCols(a3);
  if (v11 <= 0)
  {

    kaldi::Matrix<float>::Resize(a5, 0, 0, 0, 0);
  }

  else
  {
    if (v12 <= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    kaldi::Matrix<float>::Resize(a5, (v9 + v10), v14, 1, 0);
    if (v9 >= 1)
    {
      kaldi::SubMatrix<float>::SubMatrix(v15, a5, 0, v9, 0, *(a5 + 8));
      kaldi::MatrixBase<float>::CopyFromMat<float>(v15, a2, 111);
      quasar::Bitmap::~Bitmap(v15);
    }

    if (v10 >= 1)
    {
      kaldi::SubMatrix<float>::SubMatrix(v15, a5, v9, v10, 0, *(a5 + 8));
      kaldi::MatrixBase<float>::CopyFromMat<float>(v15, a3, 111);
      quasar::Bitmap::~Bitmap(v15);
    }
  }
}

void kaldi::GasrEncoderBase::PrepareFeature(uint64_t a1)
{
  v5 = kaldi::quasar::CEFusedAcousticEncoder::InputFrameCount(*(a1 + 64));
  if (*(a1 + 48) >= 1)
  {
    v2 = kaldi::quasar::CEFusedAcousticEncoder::InputFrameCount(*(a1 + 64));
    v5 = v2 - kaldi::quasar::CEFusedAcousticEncoder::FrameOverlap(*(a1 + 64));
  }

  LODWORD(v4) = (*(**(a1 + 56) + 8))(*(a1 + 56));
  v3 = 1;
  std::allocate_shared[abi:ne200100]<kaldi::Matrix<float>,std::allocator<kaldi::Matrix<float>>,int &,int,kaldi::MatrixResizeType,0>();
}

void sub_1B5063254(_Unwind_Exception *a1)
{
  v3 = *(v1 - 80);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

int32x2_t *kaldi::CuMatrix<float>::CuMatrix<float>(int32x2_t *a1, int *a2, int a3, uint64_t a4)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = a4;
  *a1 = &unk_1F2D0EE38;
  a1[5].i8[0] = 0;
  if (a3 == 111)
  {
    v7 = kaldi::MatrixBase<float>::NumRows(a2);
    v8 = kaldi::MatrixBase<float>::NumCols(a2);
  }

  else
  {
    v7 = kaldi::MatrixBase<float>::NumCols(a2);
    v8 = kaldi::MatrixBase<float>::NumRows(a2);
  }

  kaldi::CuMatrix<float>::Resize(a1, v7, v8, 1, 0);
  kaldi::MatrixBase<float>::CopyFromMat<float>(&a1[1], a2, a3);
  return a1;
}

uint64_t kaldi::VectorBase<float>::Max(uint64_t result, double a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = *result;
  if (v2 >= 4)
  {
    LODWORD(v4) = v2 & 0x7FFFFFFC;
    LODWORD(a2) = -8388608;
    v5 = 4;
    v6 = *result;
    do
    {
      v7 = *v6;
      if (vmaxv_u16(vmovn_s32(vcgtq_f32(*v6, vdupq_lane_s32(*&a2, 0)))))
      {
        LODWORD(v8) = HIDWORD(v6->i64[0]);
        if (v7.f32[0] > v7.f32[1])
        {
          LODWORD(v8) = *v6->f32;
        }

        v7.i32[0] = HIDWORD(*v6);
        if (v7.f32[2] > v7.f32[3])
        {
          v7.i32[0] = v6->i64[1];
        }

        if (v8 > *&a2)
        {
          *&a2 = v8;
        }

        if (v7.f32[0] > *&a2)
        {
          *&a2 = v7.f32[0];
        }
      }

      v5 += 4;
      ++v6;
    }

    while (v5 <= v2);
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(a2) = -8388608;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      if (v3->f32[v4] > *&a2)
      {
        LODWORD(a2) = v3->i32[v4];
      }

      ++v4;
    }

    while (v2 > v4);
  }

  return result;
}

void kaldi::quasar::CreateBufferFromMatrix(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, kaldi::quasar::ComputeEngineBufferItf **a4@<X3>, kaldi::quasar::ComputeEngineBufferItf **a5@<X8>)
{
  if (!*a4)
  {
    goto LABEL_9;
  }

  kaldi::quasar::ComputeEngineBufferItf::GetShape(*a4, &v22);
  v10 = v22;
  if (v23 - v22 == *(a3 + 8) - *a3 && !memcmp(v22, *a3, v23 - v22))
  {
    v11 = kaldi::quasar::ComputeEngineBufferItf::GetSize(*a4) != *(a2 + 16) * *(a2 + 20);
    v10 = v22;
    if (!v22)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 1;
  if (v10)
  {
LABEL_5:
    v23 = v10;
    operator delete(v10);
  }

LABEL_6:
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = *a4;
  *a4 = 0;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

LABEL_9:
  (*(**a1 + 64))(&v22);
  v13 = v22;
  v22 = 0;
  v14 = *a4;
  *a4 = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v22;
    v22 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

LABEL_12:
  if (*(a2 + 20) >= 1)
  {
    v16 = 0;
    do
    {
      v17 = *a4;
      v18 = *(a2 + 8) + 4 * *(a2 + 24) * v16;
      v19 = *(a2 + 16);
      v20 = *(a2 + 32);
      v22 = &unk_1F2CFCA48;
      v23 = v18;
      v25 = v20;
      v24 = v19;
      (*(*v17 + 88))(v17);
      ++v16;
    }

    while (v16 < *(a2 + 20));
  }

  v21 = *a4;
  *a4 = 0;
  *a5 = v21;
}

void sub_1B5063660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::EspressoV2Plan::CreateZeroedDataFloat(uint64_t a1, uint64_t a2)
{
  std::vector<unsigned long>::vector[abi:ne200100](&__dst, (*(a2 + 8) - *a2) >> 3);
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    memmove(__dst, *a2, v3 - *a2);
  }

  operator new();
}

void sub_1B506370C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  MEMORY[0x1B8C85350](v11, 0x10B3C40ACDA1BA3);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *kaldi::quasar::EspressoV2TensorData::EspressoV2TensorData(void *a1)
{
  v2 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *v2 = &unk_1F2D36118;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  kaldi::quasar::EspressoV2TensorData::InitWithShape();
  return a1;
}

{
  v2 = kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(a1);
  *(v2 + 2) = 0u;
  *v2 = &unk_1F2D36118;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  if (e5rt_io_port_retain_tensor_desc())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v6 = strlen(last_error_message);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, last_error_message, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (e5rt_tensor_desc_retain_dtype())
  {
    v8 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v10 = strlen(v8);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v8, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  if (e5rt_tensor_desc_alloc_buffer_object())
  {
    v12 = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v16);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Espresso V2 failure: ", 21);
    v14 = strlen(v12);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v16);
  }

  return a1;
}

void sub_1B50637B4(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::EspressoV2TensorData::InitWithShape()
{
  if (e5rt_tensor_desc_dtype_create() || e5rt_tensor_desc_create() || (result = e5rt_tensor_desc_alloc_buffer_object(), result))
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Espresso V2 failure: ", 21);
    v3 = strlen(last_error_message);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, last_error_message, v3);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  return result;
}

void kaldi::AmFusionEncoderInput::Compute(uint64_t a1, __int128 *a2)
{
  kaldi::Matrix<float>::Matrix(v7);
  v6 = 0;
  v4 = a2[1];
  v5[0] = *a2;
  v5[1] = v4;
  v5[2] = a2[2];
  kaldi::AmFusionEncoderInput::PrepareFeature(a1, v5);
}

void sub_1B50647EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  kaldi::CuMatrix<float>::~CuMatrix(&a15);
  kaldi::CuMatrix<float>::~CuMatrix(&a21);
  kaldi::CuMatrix<float>::~CuMatrix(&a27);
  kaldi::CuMatrix<float>::~CuMatrix(&a33);
  kaldi::CuMatrix<float>::~CuMatrix(&a39);
  kaldi::Matrix<float>::~Matrix(v39 - 152);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::CEFusedAcousticEncoder::FillMask(uint64_t a1, void *a2, int a3, uint64_t a4, int a5)
{
  result = (*(**a2 + 176))();
  if (result >= 1)
  {
    v10 = 0;
    do
    {
      v11 = (*(**a2 + 184))(*a2, v10);
      if (v10 == (*(**a2 + 176))() - 1)
      {
        if (a3 == -1)
        {
          a3 = v11;
        }

        if (a5)
        {
          if (a3 >= 1)
          {
            v12 = 0;
            do
            {
              (*(**a2 + 96))(*a2, a4, v12);
              v12 = (v12 + 1);
            }

            while (a3 != v12);
          }
        }

        else if (a3 >= 1)
        {
          v13 = (v11 - a3);
          do
          {
            (*(**a2 + 96))(*a2, a4, v13);
            v13 = (v13 + 1);
          }

          while (v13 < v11);
        }
      }

      else if (v11 != 1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "Only the last dimension of the mask could be non-one");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
      }

      v10 = (v10 + 1);
      result = (*(**a2 + 176))();
    }

    while (v10 < result);
  }

  return result;
}

uint64_t std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::TextTokenizer::Token>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::TextTokenizer::Token>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::__shared_ptr_emplace<kaldi::Matrix<float>>::__shared_ptr_emplace[abi:ne200100]<int &,int,kaldi::MatrixResizeType,std::allocator<kaldi::Matrix<float>>,0>(void *a1, unsigned int *a2, unsigned int *a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00578;
  kaldi::Matrix<float>::Matrix((a1 + 3), *a2, *a3, *a4, 0);
  return a1;
}

void quasar::OnlineLatticeBiglmFasterDecoder::cleanUpAfterDecoding(quasar::OnlineLatticeBiglmFasterDecoder *this)
{
  if (*(this + 448) == 1)
  {
    quasar::OnlineLatticeBiglmFasterDecoder::resetAccessedStatesCounts(this);
  }

  quasar::OnlineLatticeBiglmFasterDecoder::DecoderCreationDependencies::clear((this + 2320));

  quasar::OnlineLatticeBiglmFasterDecoder::clearEagerData(this);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__emplace_back_slow_path<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(v3 + 24) = *(a2 + 24);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void quasar::SpeechRequestResultData::addAA(std::mutex *a1, const void **a2, const std::string *a3)
{
  std::mutex::lock(a1 + 3);
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[4].__m_.__opaque[16], a2);
  std::string::operator=((v6 + 56), a3);
  std::mutex::unlock(a1 + 3);
}

BOOL quasar::Location::isUnknown(quasar::Location *this)
{
  v1 = *(this + 1);
  if (*this == 1000.0 && v1 == 1000.0)
  {
    return 1;
  }

  if (v1 == 360.0)
  {
    return *this == 360.0;
  }

  return 0;
}

uint64_t kaldi::SubMatrix<float>::SubMatrix(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v6 = 0;
  v7 = 0;
  *result = 0u;
  *(result + 16) = 0u;
  v8 = 0;
  if (a4 && a6)
  {
    v9 = *(a2 + 16);
    v7 = *a2 + 4 * a5 + 4 * v9 * a3;
    v10 = *(a2 + 20) - a5 - v9 * a3;
    *(result + 16) = v9;
    *(result + 20) = v10;
    v6 = a6;
    v8 = a4;
  }

  *result = v7;
  *(result + 8) = v6;
  *(result + 12) = v8;
  return result;
}

uint64_t kaldi::VoiceActivityGating::Compute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a1 + 52) & 1) != 0 || (*(a1 + 53))
  {
    v8 = kaldi::MatrixBase<float>::NumRows(*a2);
    if (v8)
    {
      v9 = v8;
      if (kaldi::VadGatedBuffer::IsInactive(*(a1 + 64)) && !kaldi::VadGatedBuffer::IsEndOfBuffer(*(a1 + 64)))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v22, "!vad_buffer_->IsInactive() || vad_buffer_->IsEndOfBuffer()");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v22);
      }

      v10 = *a2;
      kaldi::VadGatedBuffer::IsEndOfBuffer(*(a1 + 64));
      if (*(a1 + 53))
      {
        v11 = *(a2 + 8);
        kaldi::Matrix<float>::Resize(v11, v9, 1, 1, 0);
        ActiveFrames = kaldi::VadGatedBuffer::BatchReadActiveFrames(*(a1 + 64), v10, v11, 0, 1u);
        if ((*(a1 + 32) & 1) == 0 && kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactor(*(a1 + 16)) >= 2 && kaldi::MatrixBase<float>::NumRows(v10) >= 1)
        {
          v13 = kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactor(*(a1 + 16));
          v14 = kaldi::MatrixBase<float>::NumRows(v11);
          v15 = 0;
          v16 = v14 / kaldi::quasar::CEFusedAcousticEncoder::FrameSubsamplingFactor(*(a1 + 16));
          if (v16 <= 1)
          {
            v17 = 1;
          }

          else
          {
            v17 = v16;
          }

          do
          {
            v18 = (v13 * v15);
            if (kaldi::MatrixBase<float>::NumRows(v11) <= v18)
            {
              v18 = kaldi::MatrixBase<float>::NumRows(v11) - 1;
            }

            *(*v11 + 4 * (*(v11 + 16) * v15++)) = *(*v11 + 4 * *(v11 + 16) * v18);
          }

          while (v17 != v15);
          kaldi::Matrix<float>::Resize(v11, v17, 1, 2, 0);
        }
      }

      else
      {
        kaldi::Matrix<float>::Matrix(v22, v9, 1, 1, 0);
        ActiveFrames = kaldi::VadGatedBuffer::BatchReadActiveFrames(*(a1 + 64), v10, v22, 0, 1u);
        kaldi::Matrix<float>::~Matrix(v22);
      }

      *(a1 + 56) += kaldi::MatrixBase<float>::NumRows(v10);
      ++*(a1 + 48);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v19 = *(a1 + 8);
    v20 = *(a2 + 16);
    v22[0] = *a2;
    v22[1] = v20;
    v22[2] = *(a2 + 32);
    return (**v19)(v19, v22, a3, a4, a5, a6);
  }

  return ActiveFrames;
}

uint64_t kaldi::OnlineSpliceBatchInput::Compute(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  kaldi::MatrixBase<float>::NumRows(*a2);
  if (!kaldi::MatrixBase<float>::NumRows(a1 + 48))
  {
    v5 = kaldi::MatrixBase<float>::NumRows(v4);
    kaldi::Matrix<float>::Resize(v4, (*(a1 + 40) + v5), *(a1 + 32), 1, 0);
  }

  v6 = kaldi::MatrixBase<float>::NumRows(v4);
  kaldi::Matrix<float>::Matrix(v26, v6, *(a1 + 32), 0, 0);
  *a2 = v26;
  v7 = *(a1 + 24);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v25 = a2[2];
  v9 = (**v7)();
  if (((kaldi::MatrixBase<float>::NumRows(v26) == 0) & v9) == 1)
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v9 = 1;
  }

  else if ((kaldi::MatrixBase<float>::NumRows(v26) != 0) | v9 & 1 || kaldi::MatrixBase<float>::NumRows(a1 + 48))
  {
    v10 = kaldi::MatrixBase<float>::NumRows(a1 + 48);
    if (!v10)
    {
      v10 = kaldi::MatrixBase<float>::NumRows(v26);
      if (v10 >= 1)
      {
        v12 = *(a1 + 36);
        if (v12 >= 1)
        {
          kaldi::Matrix<float>::Resize(a1 + 48, v12, *(a1 + 32), 0, 0);
          if (*(a1 + 36) >= 1)
          {
            v13 = 0;
            do
            {
              v14 = *(a1 + 48);
              v15 = *(a1 + 64);
              v16 = kaldi::MatrixBase<float>::NumCols(a1 + 48);
              *&v24 = 0;
              *&v23 = v14 + 4 * v15 * v13;
              *(&v23 + 1) = v16;
              v17 = *v26;
              v18 = kaldi::MatrixBase<float>::NumCols(v26);
              v21 = 0;
              v22 = 0;
              v19 = v17;
              v20 = v18;
              v10 = kaldi::VectorBase<float>::CopyFromVec(&v23, &v19);
              ++v13;
            }

            while (v13 < *(a1 + 36));
          }
        }
      }
    }

    kaldi::OnlineSpliceBatchInput::SpliceFrames(v10, (a1 + 48), v26, *(a1 + 36) + *(a1 + 40) + 1, v4);
    kaldi::OnlineSpliceBatchInput::ComputeNextRemainder(a1, v26);
  }

  else
  {
    kaldi::Matrix<float>::Resize(v4, 0, 0, 0, 0);
    v9 = 0;
  }

  kaldi::Matrix<float>::~Matrix(v26);
  return v9;
}

void sub_1B50652B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void kaldi::OnlineSpliceBatchInput::ComputeNextRemainder(_DWORD *a1, uint64_t a2)
{
  v4 = a1[10] + a1[9];
  v5 = kaldi::MatrixBase<float>::NumRows((a1 + 12));
  v6 = kaldi::MatrixBase<float>::NumRows(a2) + v5;
  if (v6 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  if (v7)
  {
    kaldi::Matrix<float>::Matrix(v25, v7, a1[8], 0, 0);
    v17 = kaldi::MatrixBase<float>::NumRows((a1 + 12));
    v8 = kaldi::MatrixBase<float>::NumRows(a2);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = v17 - v7 + v8;
      v11 = v8 - v7;
      do
      {
        v23 = 0;
        v24 = 0;
        v22 = v25[0] + 4 * v26 * v9;
        LODWORD(v23) = kaldi::MatrixBase<float>::NumCols(v25);
        if (v10 >= v17)
        {
          v15 = *a2;
          v16 = *(a2 + 16);
          v14 = kaldi::MatrixBase<float>::NumCols(a2);
          v20 = 0;
          v21 = 0;
          v18 = (v15 + 4 * v16 * v11);
        }

        else
        {
          v12 = *(a1 + 6);
          v13 = a1[16];
          v14 = kaldi::MatrixBase<float>::NumCols((a1 + 12));
          v20 = 0;
          v21 = 0;
          v18 = (v12 + 4 * v13 * v10);
        }

        v19 = v14;
        kaldi::VectorBase<float>::CopyFromVec(&v22, &v18);
        ++v9;
        ++v10;
        ++v11;
        LODWORD(v7) = v7 - 1;
      }

      while (v7);
    }

    kaldi::Matrix<float>::operator=(a1 + 12, v25);
    kaldi::Matrix<float>::~Matrix(v25);
  }

  else
  {

    kaldi::Matrix<float>::Resize((a1 + 12), 0, 0, 0, 0);
  }
}

void sub_1B50654A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::GasrEncoderBase::IsFinite(uint64_t a1, uint64_t a2)
{
  if (kaldi::MatrixBase<float>::NumRows(a2) < 1)
  {
    return 1;
  }

  v3 = 0;
  while (kaldi::MatrixBase<float>::NumCols(a2) < 1)
  {
LABEL_7:
    if (++v3 >= kaldi::MatrixBase<float>::NumRows(a2))
    {
      return 1;
    }
  }

  v4 = 0;
  while ((*(*a2 + 4 * v3 * *(a2 + 16) + 4 * v4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if (++v4 >= kaldi::MatrixBase<float>::NumCols(a2))
    {
      goto LABEL_7;
    }
  }

  return 0;
}

float kaldi::VectorBase<float>::ApplySoftMax(uint64_t a1, double a2)
{
  kaldi::VectorBase<float>::Max(a1, a2);
  v4 = v3;
  v5 = *(a1 + 8);
  v6 = *a1;
  if (v5 >= 1)
  {
    v7 = *a1;
    v8 = *(a1 + 8);
    do
    {
      *v7 = *v7 - v3;
      ++v7;
      --v8;
    }

    while (v8);
  }

  LODWORD(v14[0]) = v5;
  vvexpf(v6, v6, v14);
  v9 = *(a1 + 8);
  if (v9 < 1)
  {
    goto LABEL_9;
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *(*a1 + v10);
    v10 += 4;
  }

  while (4 * v9 != v10);
  v12 = v11;
  if (v12 == 0.0)
  {
LABEL_9:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v14);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, "SoftMax produced NaN on vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v14);
  }

  cblas_sscal_NEWLAPACK_ILP64();
  return v4 + logf(v12);
}

void *kaldi::quasar::ComputeEngineBufferItf::ComputeEngineBufferItf(void *this)
{
  *this = &unk_1F2D13798;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *kaldi::quasar::EspressoV2TensorData::FlatRangeCopy(kaldi::quasar::EspressoV2TensorData *this, const float *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "length >= 0");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  kaldi::quasar::EspressoV2TensorData::GetWritableDataFloat(this);
  v8 = (v7 + 4 * a4);

  return memcpy(v8, a2, 4 * a3);
}

uint64_t kaldi::quasar::EspressoV2TensorData::GetDimSize(kaldi::quasar::EspressoV2TensorData *this, int a2)
{
  v8[34] = 0;
  v9 = 0;
  if (e5rt_tensor_desc_get_shape())
  {
    last_error_message = e5rt_get_last_error_message();
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Espresso V2 failure: ", 21);
    v6 = strlen(last_error_message);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, last_error_message, v6);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "\n");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return *(v9 + 8 * a2);
}

uint64_t kaldi::quasar::EspressoV2Plan::Run(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  if (!kaldi::quasar::EspressoV2Plan::ReloadIfNeeded(a1))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "ReloadIfNeeded failed");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  if ((*(a1 + 264) & 1) == 0)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      atomic_store(1u, (v10 + 8));
    }

    *(a1 + 264) = 1;
  }

  v11 = *(a1 + 216);

  return kaldi::quasar::EspressoV2Plan::RunOp(a1, v11, a2, a3, v9, a5);
}

BOOL kaldi::quasar::EspressoV2Plan::ReloadIfNeeded(kaldi::quasar::EspressoV2Plan *this)
{
  v1 = (this + 216);
  if (*(this + 27))
  {
    return *v1 != 0;
  }

  if (!*(this + 32))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "_main_builder != nullptr");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
  }

  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 16))(v4, this + 48);
  }

  if (!e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options())
  {
    v9 = *(this + 3);
    if (v9)
    {
      (*(*v9 + 24))(v9, this + 48);
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Reloaded v2 model", 17);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v10);
    }

    return *v1 != 0;
  }

  last_error_message = e5rt_get_last_error_message();
  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    v6 = last_error_message;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Espresso V2 failure during reload: ", 35);
    v8 = strlen(v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v6, v8);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
  }

  return 0;
}

void *std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>::clear[abi:ne200100](void *result)
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

void sub_1B5065CA4(_Unwind_Exception *a1)
{
  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  kaldi::quasar::ComputeEngineBufferItf::~ComputeEngineBufferItf(v1);
  _Unwind_Resume(a1);
}

void *kaldi::quasar::CopyBufferToMatrix(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  if ((a3 & a2) == 0xFFFFFFFF)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "Both num_rows and num_cols is 0. At least one dimension should be provided.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  v5 = a3;
  v6 = a2;
  v8[1] = 0;
  v9 = 0;
  v10 = 0;
  v8[0] = &unk_1F2D3AC18;
  (*(*a1 + 40))(a1, v8);
  if (v6 == -1)
  {
    if (v5 <= 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "num_cols > 0", 12);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }

    v6 = (v9 / v5);
    if (v9 % v5)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "num_elements % num_cols == 0", 28);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }
  }

  else if (v5 == -1)
  {
    if (v6 <= 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "num_rows > 0", 12);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }

    v5 = (v9 / v6);
    if (v9 % v6)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "num_elements % num_rows == 0", 28);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }
  }

  else if (v5 * v6 != v9)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "num_rows * num_cols == num_elements", 35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  kaldi::CuMatrix<float>::Resize(a4, v6, v5, 0, 0);
  kaldi::CuMatrixBase<float>::CopyRowsFromVec(a4, v8);
  return kaldi::CuVector<float>::~CuVector(v8);
}

void kaldi::quasar::ComputeEngineBufferItf::GetShape(kaldi::quasar::ComputeEngineBufferItf *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = (*(*this + 176))(this);
  if (v4 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = (*(*this + 184))(this, v5);
      v8 = a2[1];
      v7 = a2[2];
      if (v8 >= v7)
      {
        v10 = *a2;
        v11 = v8 - *a2;
        v12 = v11 >> 3;
        v13 = (v11 >> 3) + 1;
        if (v13 >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v14 = v7 - v10;
        if (v14 >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2, v15);
        }

        *(8 * v12) = v6;
        v9 = 8 * v12 + 8;
        memcpy(0, v10, v11);
        v16 = *a2;
        *a2 = 0;
        a2[1] = v9;
        a2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v8 = v6;
        v9 = (v8 + 8);
      }

      a2[1] = v9;
      v5 = (v5 + 1);
    }

    while (v4 != v5);
  }
}

void sub_1B5066098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL kaldi::quasar::CEFusedAcousticEncoder::HasEpOut(kaldi::quasar::CEFusedAcousticEncoder *this)
{
  v1 = *(this + 215);
  if (v1 < 0)
  {
    v1 = *(this + 25);
  }

  return v1 != 0;
}

uint64_t kaldi::VoiceActivityGating::FrameDurationMsForAlignment(kaldi::VoiceActivityGating *this)
{
  if (*(this + 53) == 1 && *(this + 32) != 1)
  {
    v1 = 40;
  }

  else
  {
    v1 = 8;
  }

  return (*(**(this + v1) + 32))();
}

uint64_t std::deque<std::pair<std::vector<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element,std::allocator<fst::DeterminizerStar<fst::ArcTpl<fst::LogWeightTpl<float>,int>>::Element>> *,int>>::__maybe_remove_front_spare[abi:ne200100](uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (v2 < 0x100)
  {
    a2 = 1;
  }

  if (v2 < 0x200)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if ((v4 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 256;
  }

  return v4 ^ 1u;
}

uint64_t std::__shared_ptr_emplace<quasar::ComputeAheadFeatInput::Batch>::__on_zero_shared(uint64_t a1)
{
  kaldi::Matrix<float>::~Matrix(a1 + 224);
  kaldi::Matrix<float>::~Matrix(a1 + 184);
  kaldi::Matrix<float>::~Matrix(a1 + 144);
  kaldi::Matrix<float>::~Matrix(a1 + 104);
  kaldi::Matrix<float>::~Matrix(a1 + 64);

  return kaldi::Matrix<float>::~Matrix(a1 + 24);
}

uint64_t kaldi::Matrix<float>::Matrix(uint64_t a1, int *a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  kaldi::Matrix<float>::Resize(a1, a2[3], a2[2], 1, a2[2] == a2[4]);
  kaldi::MatrixBase<float>::CopyFromMat<float>(a1, a2, 111);
  return a1;
}

uint64_t std::deque<kaldi::Matrix<float>>::push_back(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 102 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<kaldi::Matrix<float>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = *(v4 + 8 * (v7 / 0x66)) + 40 * (v7 % 0x66);
  }

  result = kaldi::Matrix<float>::Matrix(v8, a2);
  ++a1[5];
  return result;
}

void quasar::OnlineLatticeBiglmFasterDecoder::DecoderCreationDependencies::clear(quasar::OnlineLatticeBiglmFasterDecoder::DecoderCreationDependencies *this)
{
  v2 = *(this + 1);
  *this = 0;
  *(this + 1) = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 3);
  *(this + 2) = 0;
  *(this + 3) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 5);
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 7);
  *(this + 6) = 0;
  *(this + 7) = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = *(this + 13);
  *(this + 12) = 0;
  *(this + 13) = 0;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *(this + 15);
  *(this + 14) = 0;
  *(this + 15) = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = *(this + 11);
  *(this + 10) = 0;
  *(this + 11) = 0;
  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 32)
  {
    v4 = *(i - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void std::vector<quasar::LmeInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SymbolTableList::Data>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t quasar::SymbolTableList::addSymbolTable(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4)
{
  v8 = a1[1];
  if (v8 == *a1)
  {
    goto LABEL_10;
  }

  v9 = *(v8 - 32);
  v10 = (*(**(v9 + 96) + 112))(*(v9 + 96));
  if ((v10 & 0x8000000000000000) == 0)
  {
    v10 += *(v9 + 120);
  }

  if (v10 <= a3)
  {
LABEL_10:
    v18 = *a2;
    v19 = a2[1];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      *(&v20 + 1) = v19;
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      *(&v20 + 1) = 0;
    }

    *&v20 = v18;
    *&v21 = a3;
    DWORD2(v21) = a4;
    std::vector<quasar::SymbolTableList::Data>::push_back[abi:ne200100](a1, &v20);
    if (*(&v20 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v20 + 1));
    }

    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    return 1;
  }

  else
  {
    if (quasar::gLogLevel >= 1)
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
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "Tried to add overlapping and/or out-of-order symbol table to symbol table list: ", 80);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "symTableFirstKey=", 17);
      v13 = MEMORY[0x1B8C84C60](v12, a3);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", previous symbol table's last key=", 35);
      v15 = *(a1[1] - 32);
      v16 = (*(**(v15 + 96) + 112))(*(v15 + 96));
      if ((v16 & 0x8000000000000000) == 0)
      {
        v16 += *(v15 + 120);
      }

      MEMORY[0x1B8C84C60](v14, v16 - 1);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v20);
    }

    return 0;
  }
}

void sub_1B50666F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineLatticeBiglmLmeFasterDecoder::readAndCheckLmeData(uint64_t a1, uint64_t **a2, uint64_t a3, int a4)
{
  v5 = *a2;
  if (!*a2)
  {
    if (quasar::gLogLevel >= 4)
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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME container ", 14);
      v20 = MEMORY[0x1B8C84C00](v19, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " is null.", 9);
      goto LABEL_18;
    }

    return 2;
  }

  if (quasar::gLogLevel >= 4)
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
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Reading LME container ", 22);
    v10 = MEMORY[0x1B8C84C00](v9, a3);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " for user ", 10);
    v12 = *(*a2 + 39);
    if (v12 >= 0)
    {
      v13 = (*a2 + 2);
    }

    else
    {
      v13 = (*a2)[2];
    }

    if (v12 >= 0)
    {
      v14 = *(*a2 + 39);
    }

    else
    {
      v14 = (*a2)[3];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
    v5 = *a2;
  }

  v15 = *v5;
  if (!*v5)
  {
    if (quasar::gLogLevel >= 4)
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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME container data ", 19);
      v22 = MEMORY[0x1B8C84C00](v21, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " is null.", 9);
      goto LABEL_18;
    }

    return 2;
  }

  v16 = *(v15 + 268);
  if (v16 == 2)
  {
    if (quasar::gLogLevel >= 4)
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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream ", 16);
      v18 = MEMORY[0x1B8C84C00](v17, a3);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is null.", 9);
LABEL_18:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
      return 2;
    }

    return 2;
  }

  if ((v16 & 0xFFFFFFFD) == 4)
  {
    return v16;
  }

  v24 = *(v15 + 199);
  if (v24 >= 0)
  {
    v25 = *(v15 + 199);
  }

  else
  {
    v25 = *(v15 + 184);
  }

  v26 = *(a1 + 231);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = *(a1 + 216);
  }

  if (v25 != v26 || (v24 >= 0 ? (v28 = (v15 + 176)) : (v28 = *(v15 + 176)), v27 >= 0 ? (v29 = (a1 + 208)) : (v29 = *(a1 + 208)), memcmp(v28, v29, v25)))
  {
    if (quasar::gLogLevel >= 2)
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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream ", 16);
      v31 = MEMORY[0x1B8C84C00](v30, a3);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " has phone set version ", 23);
      v33 = *(v15 + 199);
      if (v33 >= 0)
      {
        v34 = v15 + 176;
      }

      else
      {
        v34 = *(v15 + 176);
      }

      if (v33 >= 0)
      {
        v35 = *(v15 + 199);
      }

      else
      {
        v35 = *(v15 + 184);
      }

      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " which is different from model phone set version ", 49);
      v38 = *(a1 + 231);
      if (v38 >= 0)
      {
        v39 = a1 + 208;
      }

      else
      {
        v39 = *(a1 + 208);
      }

      if (v38 >= 0)
      {
        v40 = *(a1 + 231);
      }

      else
      {
        v40 = *(a1 + 216);
      }

      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, v39, v40);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ". This data stream will not be used.", 36);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v100);
    }

    return 5;
  }

  v42 = *(v15 + 392);
  if (v42 != *(a1 + 368))
  {
    if (quasar::gLogLevel < 4)
    {
      return 5;
    }

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
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream useWordpiece=", 29);
    v69 = MEMORY[0x1B8C84BD0](v68, *(v15 + 392));
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, " does not match model (model useWordpiece=", 42);
    v71 = MEMORY[0x1B8C84BD0](v70, *(a1 + 368));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, "). This data stream will not be used.", 37);
LABEL_110:
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
    return 5;
  }

  v43 = *(v15 + 8) < 16 || v42 == 0;
  if (v43 || !std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v15 + 296), (a1 + 344)))
  {
    goto LABEL_73;
  }

  if (quasar::gLogLevel >= 4)
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
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "LME data stream compatibilityKey=", 33);
    v45 = *(v15 + 319);
    if (v45 >= 0)
    {
      v46 = v15 + 296;
    }

    else
    {
      v46 = *(v15 + 296);
    }

    if (v45 >= 0)
    {
      v47 = *(v15 + 319);
    }

    else
    {
      v47 = *(v15 + 304);
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, " does not match model (lmeCompatibilityKey=", 43);
    v50 = *(a1 + 367);
    if (v50 >= 0)
    {
      v51 = a1 + 344;
    }

    else
    {
      v51 = *(a1 + 344);
    }

    if (v50 >= 0)
    {
      v52 = *(a1 + 367);
    }

    else
    {
      v52 = *(a1 + 352);
    }

    v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, v51, v52);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ")", 1);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
  }

  if (!a4)
  {
    if (quasar::gLogLevel < 4)
    {
      return 5;
    }

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
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "This data stream will not be used.", 34);
    goto LABEL_110;
  }

  if (quasar::gLogLevel >= 4)
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
    v100 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Check is disabled! Continuing on the assumption that the LME data is actually compatible", 88);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
  }

LABEL_73:
  v54 = *(v15 + 160);
  if (v54 == -1 || (v55 = *(v15 + 168), v55 == -1))
  {
    if (quasar::gLogLevel >= 4)
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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Bad LME data (empty): stream=", 29);
      v73 = MEMORY[0x1B8C84C00](v72, a3);
      v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", symTableFirstKey=", 19);
      v75 = MEMORY[0x1B8C84C60](v74, *(v15 + 160));
      v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ", symTableLastKey=", 18);
      MEMORY[0x1B8C84C60](v76, *(v15 + 168));
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
    }

    return 6;
  }

  if (v55 < v54)
  {
    goto LABEL_113;
  }

  v56 = *(v15 + 224);
  v57 = (*(**(v56 + 96) + 112))(*(v56 + 96));
  if ((v57 & 0x8000000000000000) == 0)
  {
    v57 += *(v56 + 120);
  }

  if (v55 != v57 - 1)
  {
LABEL_113:
    if (quasar::gLogLevel >= 1)
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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Bad LME data (invalid last key): stream=", 40);
      v78 = MEMORY[0x1B8C84C00](v77, a3);
      v79 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, ", symTableFirstKey=", 19);
      v80 = MEMORY[0x1B8C84C60](v79, *(v15 + 160));
      v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, ", symTableLastKey=", 18);
      v82 = MEMORY[0x1B8C84C60](v81, *(v15 + 168));
      v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, ", symTable->AvailableKey()=", 27);
      (*(**(*(v15 + 224) + 96) + 112))(*(*(v15 + 224) + 96));
      MEMORY[0x1B8C84C60](v83);
      quasar::QuasarErrorMessage::~QuasarErrorMessage(&v100);
    }

    return 6;
  }

  if (v16 == 1)
  {
    if (!*(a1 + 328) || (v58 = *(v15 + 240), v58 == (v15 + 248)))
    {
LABEL_105:
      if (*(v15 + 264) >= *(a1 + 336))
      {
        return 1;
      }

      if (quasar::gLogLevel >= 4)
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
        v100 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
        v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "G2P model version ", 18);
        v66 = MEMORY[0x1B8C84C00](v65, *(v15 + 264));
        v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, " in blob is older than datapack's version ", 42);
        MEMORY[0x1B8C84C00](v67, *(a1 + 336));
        quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
      }
    }

    else
    {
      while (1)
      {
        if (*(v58 + 55) < 0)
        {
          std::string::__init_copy_ctor_external(&v99, v58[4], v58[5]);
        }

        else
        {
          v99 = *(v58 + 4);
        }

        if (*(v58 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&v98, v58[7], v58[8]);
        }

        else
        {
          v98 = *(v58 + 7);
        }

        memset(&v97, 0, sizeof(v97));
        v59 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 264, &v99.__r_.__value_.__l.__data_);
        if (a1 + 272 == v59)
        {
          v60 = &v99;
        }

        else
        {
          v60 = (v59 + 56);
        }

        std::string::operator=(&v97, v60);
        v61 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a1 + 312, &v97.__r_.__value_.__l.__data_);
        v62 = v61;
        if (a1 + 320 == v61)
        {
          if (quasar::gLogLevel < 4)
          {
            goto LABEL_142;
          }

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
          v100 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
          v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Category ", 9);
          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v85 = &v99;
          }

          else
          {
            v85 = v99.__r_.__value_.__r.__words[0];
          }

          if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v99.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v99.__r_.__value_.__l.__size_;
          }

          v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v84, v85, size);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, " in blob is not supported by datapack.", 38);
          goto LABEL_141;
        }

        if (std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v61 + 56), &v98))
        {
          break;
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        v63 = v58[1];
        if (v63)
        {
          do
          {
            v64 = v63;
            v63 = *v63;
          }

          while (v63);
        }

        else
        {
          do
          {
            v64 = v58[2];
            v43 = *v64 == v58;
            v58 = v64;
          }

          while (!v43);
        }

        v58 = v64;
        if (v64 == (v15 + 248))
        {
          goto LABEL_105;
        }
      }

      if (quasar::gLogLevel < 4)
      {
        goto LABEL_142;
      }

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
      v100 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v100);
      v88 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v100, "Category ", 9);
      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v89 = &v99;
      }

      else
      {
        v89 = v99.__r_.__value_.__r.__words[0];
      }

      if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v90 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v90 = v99.__r_.__value_.__l.__size_;
      }

      v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v88, v89, v90);
      v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, " in blob uses different enumeration type (", 42);
      v93 = *(v62 + 79);
      if (v93 >= 0)
      {
        v94 = v62 + 56;
      }

      else
      {
        v94 = *(v62 + 56);
      }

      if (v93 >= 0)
      {
        v95 = *(v62 + 79);
      }

      else
      {
        v95 = *(v62 + 64);
      }

      v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v94, v95);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, ") in datapack.", 14);
LABEL_141:
      quasar::QuasarInfoMessage::~QuasarInfoMessage(&v100);
LABEL_142:
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v98.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v99.__r_.__value_.__l.__data_);
      }
    }

    return 3;
  }

  return v16;
}

void sub_1B5067204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *(a4 + 24) = *(v6 + 24);
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      v7 = *(v5 + 16);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      v5 += 32;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::__split_buffer<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 32;
    v4 = *(v1 - 16);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 32;
    }
  }
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::insertLocationSpecificModels(uint64_t a1, uint64_t a2, quasar::SpeechRequestData **a3, uint64_t a4, uint64_t a5, quasar::Location *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  Location = quasar::SpeechRequestData::getLocation(*a3);
  *a6 = quasar::Location::fromSharedFuture(Location);
  *(a6 + 1) = v10;
  v11 = *(*a2 + 440);
  std::string::basic_string[abi:ne200100]<0>(__p, "geoLocationStatus");
  quasar::Location::statusAsString(a6, &v17);
  quasar::SpeechRequestResultData::addDumpAA(v11, __p, &v17);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  quasar::SpeechRequestData::getRegionId(*a3);
  quasar::Geography::getGeoContext();
}

void sub_1B5067B14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, char a56, uint64_t a57)
{
  std::__function::__value_func<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> ()(std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase> const&)>::~__value_func[abi:ne200100](v58 - 232);
  a19 = &a16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&a53, a54);
  std::__function::__value_func<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> ()(std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>> const&)>::~__value_func[abi:ne200100](v58 - 136);
  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(&a56, a57);
  v60 = *(v57 + 8);
  if (v60)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v60);
  }

  if (*(v58 - 233) < 0)
  {
    operator delete(*(v58 - 256));
  }

  _Unwind_Resume(a1);
}

uint64_t std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  v13.__m_ = (a1 + 24);
  v13.__owns_ = 1;
  std::mutex::lock((a1 + 24));
  v4 = *(a1 + 136);
  if ((v4 & 8) != 0)
  {
    v11 = 2;
    goto LABEL_25;
  }

  if ((v4 & 4) != 0)
  {
    v11 = 0;
    goto LABEL_25;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < *a2)
  {
    if (std::chrono::steady_clock::now().__d_.__rep_ < *a2)
    {
      v5 = *a2;
      v6.__d_.__rep_ = v5 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v6.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v7.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v7.__d_.__rep_)
        {
          if (v7.__d_.__rep_ < 1)
          {
            if (v7.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_13;
            }

            v8 = 0x8000000000000000;
          }

          else
          {
            if (v7.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v8 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_14;
            }

LABEL_13:
            v8 = 1000 * v7.__d_.__rep_;
LABEL_14:
            if (v8 > (v6.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v9.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_17;
            }
          }
        }

        else
        {
          v8 = 0;
        }

        v9.__d_.__rep_ = v8 + v6.__d_.__rep_;
LABEL_17:
        std::condition_variable::__do_timed_wait((a1 + 88), &v13, v9);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v10 = *(a1 + 136);
    if ((v10 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v10 = *(a1 + 136);
LABEL_24:
  v11 = ((v10 >> 2) & 1) == 0;
  if (v13.__owns_)
  {
LABEL_25:
    std::mutex::unlock(v13.__m_);
  }

  return v11;
}

void quasar::SpeechRequestResultData::addDumpAA(std::mutex *a1, const void **a2, const std::string *a3)
{
  quasar::SpeechRequestResultData::addDump(a1, a2, a3);

  quasar::SpeechRequestResultData::addAA(a1, a2, a3);
}

void quasar::SpeechRequestResultData::addDump(std::mutex *a1, const void **a2, const std::string *a3)
{
  std::mutex::lock(a1 + 3);
  v6 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(&a1[4].__m_.__opaque[40], a2);
  std::string::operator=((v6 + 56), a3);
  std::mutex::unlock(a1 + 3);
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>> const&>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>> const&>();
  }

  return v2;
}

std::string *std::pair<std::string const,std::shared_ptr<quasar::PMRegexEnumerator>>::pair[abi:ne200100](std::string *this, __int128 *a2)
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

  v5 = *(a2 + 4);
  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t quasar::OnlineLatticeBiglmLmeFasterDecoder::logGeoLmMetrics(uint64_t a1, uint64_t a2, quasar::Location *a3, const void **a4, uint64_t a5)
{
  result = quasar::Geography::wasConfigLoaded(*(a1 + 416));
  if (result)
  {
    *(*(a2 + 440) + 128) = 1;
    if (quasar::Location::isKnown(a3))
    {
      v11 = *(a2 + 440);
      *(v11 + 129) = 1;
    }

    else if (quasar::Location::isDenied(a3))
    {
      v11 = *(a2 + 440);
      *(v11 + 130) = 1;
    }

    else
    {
      isUndefined = quasar::Location::isUndefined(a3);
      v11 = *(a2 + 440);
      if (isUndefined)
      {
        *(v11 + 131) = 1;
      }
    }

    v13 = (*(a5 + 16) | *(a5 + 40)) != 0;
    std::string::basic_string[abi:ne200100]<0>(v29, "geoContextFound");
    std::to_string(&__p, v13);
    quasar::SpeechRequestResultData::addDumpAA(v11, v29, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    *(*(a2 + 440) + 132) = v13;
    result = quasar::Geography::getGeoMemoriesConfig(*(a1 + 416));
    if (*result == 1)
    {
      v14 = *(a2 + 440);
      *(v14 + 133) = 1;
      v15 = *(a4 + 23);
      if (v15 < 0)
      {
        v15 = a4[1];
      }

      v16 = v15 != 0;
      std::string::basic_string[abi:ne200100]<0>(v29, "geoLastRegionIdWasCached");
      std::to_string(&__p, v16);
      quasar::SpeechRequestResultData::addDumpAA(v14, v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      v17 = *(a5 + 71);
      if (v17 >= 0)
      {
        v18 = *(a5 + 71);
      }

      else
      {
        v18 = *(a5 + 56);
      }

      v19 = *(a4 + 23);
      v20 = v19;
      if (v19 < 0)
      {
        v19 = a4[1];
      }

      if (v18 == v19)
      {
        v23 = *(a5 + 48);
        v22 = (a5 + 48);
        v21 = v23;
        if (v17 >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = v21;
        }

        if (v20 >= 0)
        {
          v25 = a4;
        }

        else
        {
          v25 = *a4;
        }

        v26 = memcmp(v24, v25, v18) != 0;
      }

      else
      {
        v26 = 1;
      }

      v27 = *(a2 + 440);
      std::string::basic_string[abi:ne200100]<0>(v29, "geoLastRegionIdCacheMiss");
      std::to_string(&__p, v26);
      quasar::SpeechRequestResultData::addDumpAA(v27, v29, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      *(*(a2 + 440) + 134) = v26;
      result = quasar::Location::isUndefined(a3);
      if (result)
      {
        if (v13)
        {
          *(*(a2 + 440) + 135) = 1;
        }
      }
    }
  }

  return result;
}

void sub_1B50682F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (quasar::isPlaceholder(a1))
  {
    if (*(a1 + 23) < 0)
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

  else
  {

    std::string::basic_string[abi:ne200100]<0>(a2, "");
  }
}

uint64_t std::__tree<std::string>::__count_unique<std::string>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v5 = 1;
    do
    {
      if (!std::less<std::string>::operator()[abi:ne200100](a1, a2, v2 + 4))
      {
        if (!std::less<std::string>::operator()[abi:ne200100](a1, v2 + 4, a2))
        {
          return v5;
        }

        ++v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getCachedModel@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 56);
  if (!v3)
  {
    v14 = result;
    LODWORD(v6) = *(a2 + 23);
    if ((v6 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v33, *a2, *(a2 + 8));
      LODWORD(v6) = *(a2 + 23);
      if ((v6 & 0x80000000) != 0)
      {
        v6 = *(a2 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v33 = *a2;
    }

    v6 = v6;
LABEL_10:
    if (!v6)
    {
      MEMORY[0x1B8C84820](&v33, "uninitialized model component");
    }

    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(v14, __p);
    if (SBYTE7(v16) < 0)
    {
      v7 = __p[1];
      operator delete(__p[0]);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!BYTE7(v16))
    {
      goto LABEL_16;
    }

    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(v14, &v32);
    v10 = std::string::insert(&v32, 0, " for location-specific placeholder ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v16 = *(&v10->__r_.__value_.__l + 2);
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v13 = BYTE7(v16);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v33, v12, v13);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

LABEL_16:
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v33;
    }

    else
    {
      v8 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v8, size);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v4 = *(result + 64);
  *a3 = v3;
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::vector<quasar::SymbolTableList::Data>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::SymbolTableList::Data>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<std::shared_ptr<kaldi::quasar::ComputeEngineItf>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<quasar::FeatureExtractor>>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>(uint64_t a1, void *a2, void *a3, void *a4)
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
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>>,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

void std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<int,std::pair<int,int>>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 4);
        *(v8 + 4) = v9;
        *(v8 + 20) = *(a2 + 20);
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__emplace_multi<std::pair<int const,std::pair<int,int>> const&>();
  }
}

void sub_1B5068854(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__rehash<false>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__do_rehash<false>(a1, prime);
    }
  }
}

uint64_t *std::unique_ptr<quasar::Geography>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v6 = (v2 + 128);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
    v3 = *(v2 + 112);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v2 + 80, *(v2 + 88));
    std::__tree<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::__map_value_compare<int,std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::shared_ptr<quasar::GeoRegion>>>>::destroy(v2 + 56, *(v2 + 64));
    v6 = (v2 + 32);
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v4 = *(v2 + 24);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    v5 = *(v2 + 8);
    *(v2 + 8) = 0;
    if (v5)
    {
      MEMORY[0x1B8C85350](v5, 0x1000C4052888210);
    }

    return MEMORY[0x1B8C85350](v2, 0x1020C407EC4A46FLL);
  }

  return result;
}

char *std::vector<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,0>(void *a1, char *a2, void *a3, void *a4)
{
  if (a3 == a4)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = a3;
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

    while (v7 != a4);
  }

  return std::vector<int>::__insert_with_size[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>,std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, a2, a3, a4, v4);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(uint64_t a1, uint64_t a2)
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

void sub_1B5068C80(_Unwind_Exception *a1)
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

void *std::__list_imp<char *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::unordered_set<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::unordered_set(uint64_t a1, size_t a2, void *a3, void *a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *a3;
  *(a1 + 40) = 1065353216;
  *(a1 + 48) = *a4;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashFunc,fst::CompactHashBiTable<int,fst::DeterminizeStateTuple<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>> *,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleKey,fst::DefaultDeterminizeStateTable<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,fst::IntegerFilterState<signed char>>::StateTupleEqual,(fst::HSType)0>::HashEqual,std::allocator<int>>::__rehash<true>(a1, a2);
  return a1;
}

uint64_t fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (result != a2)
  {
    if (result)
    {
      (*(*result + 8))(result);
    }

    if (a2)
    {
      result = (*(*a2 + 16))(a2);
    }

    else
    {
      result = 0;
    }

    *(a1 + 40) = result;
  }

  return result;
}

uint64_t fst::ReplaceProperties(uint64_t **a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = v7 - *a1;
  if (v7 == *a1)
  {
    return 0x156A5A950000;
  }

  v9 = 0;
  v10 = v8 >> 3;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  v11 = *a1;
  v12 = v10;
  do
  {
    v13 = *v11++;
    v9 |= v13 & 4;
    --v12;
  }

  while (v12);
  v14 = 0x50000000000;
  if (!a6)
  {
    v14 = 0;
  }

  v15 = *a1;
  v16 = v10;
  do
  {
    v17 = *v15++;
    v14 &= v17;
    --v16;
  }

  while (v16);
  if (v14 == 0x50000000000)
  {
    v18 = 0;
    LOBYTE(v19) = 1;
    v20 = *a1;
    v21 = v10;
    do
    {
      v23 = *v20++;
      v22 = v23;
      v24 = v23 & 0x20000;
      if (!a5)
      {
        v24 = 0;
      }

      v18 |= v22 & 0x208505680000 | v24;
      v19 = ((v22 & 0x100000000000) != 0) & v19;
      --v21;
    }

    while (v21);
    v25 = v19 == 0;
    v26 = 0x50000000000;
    if (!v25)
    {
      v26 = 0x150000000000;
    }

    v9 |= v6[a2] & 0x1000000000 | v26 | v18;
  }

  v27 = (a3 | a4) ^ 1;
  v28 = a4 & ~a3;
  LOBYTE(v29) = a5 ^ 1;
  LOBYTE(v30) = 1;
  v31 = v6;
  v32 = a2;
  LOBYTE(v33) = 1;
  do
  {
    v34 = *v31++;
    v29 = BYTE2(v34) & 1 & v29;
    v35 = (v34 >> 18) & 1;
    v36 = (v34 >> 25) & 1;
    v27 &= v36;
    v33 = ((v34 & 0x800000000) != 0) & v33;
    v30 = ((v34 & 0x200000000) != 0) & v30;
    if (v32)
    {
      v37 = v36;
    }

    else
    {
      v37 = 1;
    }

    v28 &= v37 & v35;
    --v32;
    --v10;
  }

  while (v10);
  if (v29)
  {
    v9 |= 0x10000uLL;
  }

  if (v28)
  {
    v9 |= 0x40000uLL;
  }

  if (v27)
  {
    v9 |= 0x2000000uLL;
  }

  if (v33)
  {
    v9 |= 0x800000000uLL;
  }

  if (v30)
  {
    v9 |= 0x200000000uLL;
  }

  return v6[a2] & 0x2000000000 | v9;
}

void *fst::ImplToFst<fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ImplToFst(void *result, uint64_t a2, int a3)
{
  *result = &unk_1F2D06EC0;
  if (a3)
  {
    operator new();
  }

  v3 = *(a2 + 8);
  result[1] = v3;
  ++*(v3 + 56);
  return result;
}

void fst::MemoryArena<fst::MemoryPool<fst::ArcIterator<fst::ReplaceFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::Link>::MemoryArena(void *a1, uint64_t a2)
{
  *a1 = &unk_1F2D07190;
  a1[1] = 208 * a2;
  a1[2] = 0;
  a1[3] = a1 + 3;
  a1[4] = a1 + 3;
  a1[5] = 0;
  operator new[]();
}

void sub_1B506916C(_Unwind_Exception *a1)
{
  std::__list_imp<char *>::clear(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

void std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t quasar::RegionalLmPlug<std::shared_ptr<kaldi::quasar::NnlmEvaluatorBase>>::getCachedModel@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(result + 56);
  if (!v3)
  {
    v14 = result;
    LODWORD(v6) = *(a2 + 23);
    if ((v6 & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v33, *a2, *(a2 + 8));
      LODWORD(v6) = *(a2 + 23);
      if ((v6 & 0x80000000) != 0)
      {
        v6 = *(a2 + 8);
        goto LABEL_10;
      }
    }

    else
    {
      v33 = *a2;
    }

    v6 = v6;
LABEL_10:
    if (!v6)
    {
      MEMORY[0x1B8C84820](&v33, "uninitialized model component");
    }

    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(v14, __p);
    if (SBYTE7(v16) < 0)
    {
      v7 = __p[1];
      operator delete(__p[0]);
      if (!v7)
      {
        goto LABEL_16;
      }
    }

    else if (!BYTE7(v16))
    {
      goto LABEL_16;
    }

    quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(v14, &v32);
    v10 = std::string::insert(&v32, 0, " for location-specific placeholder ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    *&v16 = *(&v10->__r_.__value_.__l + 2);
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((SBYTE7(v16) & 0x80u) == 0)
    {
      v13 = BYTE7(v16);
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(&v33, v12, v13);
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v32.__r_.__value_.__l.__data_);
    }

LABEL_16:
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
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v33;
    }

    else
    {
      v8 = v33.__r_.__value_.__r.__words[0];
    }

    if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v33.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v8, size);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
  }

  v4 = *(result + 64);
  *a3 = v3;
  a3[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void fst::SortedMatcher<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::SortedMatcher(uint64_t a1, uint64_t a2, int a3, int a4)
{
  *a1 = &unk_1F2D010A8;
  *(a1 + 8) = (*(*a2 + 88))(a2, 0);
  *(a1 + 16) = -1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  *(a1 + 36) = a4;
  *(a1 + 40) = -1;
  *(a1 + 48) = 0;
  *(a1 + 56) = xmmword_1B5AE3080;
  *(a1 + 74) = 0;
  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::MemoryPool((a1 + 80), 1);
}

void sub_1B5069558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  fst::MemoryPool<fst::ArcIterator<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~MemoryPool((v18 + 80));
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::NnlmDecoderWord::GetWordId(kaldi::quasar::NnlmDecoderWord *this, unsigned int a2)
{
  if ((a2 & 0x80000000) != 0 || *(this + 4) <= a2)
  {
    if (kaldi::g_kaldi_verbose_level >= 4)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(v4, 4);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Word passed to NNLM doesn't exist in wordmap. The decoder will use <oos> to score instead", 89);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(v4);
    }

    a2 = *(this + 44);
  }

  return *(*(this + 3) + 4 * a2);
}

void sub_1B5069624(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<long long,void *> *>>(void *a1, void *a2, void *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = a2[2];
        v8[2] = v9;
        v10 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__node_insert_multi_prepare(a1, v9, v8 + 2);
        std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__emplace_multi<long long const&>();
  }
}

void sub_1B5069798(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    std::__hash_table<long long,std::hash<long long>,std::equal_to<long long>,std::allocator<long long>>::__rehash<false>(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v19 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v20 = v16[1];
      if (v19 >= v6)
      {
        v20 = v19 % v6;
      }
    }

    else
    {
      v20 = v19 & (v6 - 1);
    }

    if (v20 != v15)
    {
      break;
    }

    v21 = v19 == a2 && v16[2] == *a3;
    v22 = v21 != (v17 & 1);
    v23 = v17 & v22;
    v17 |= v22;
  }

  while (v23 != 1);
  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,kaldi::quasar::ClassLmSymbolType>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
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

void *std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__emplace_unique_key_args<std::vector<int>,std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>(void *a1, int **a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (*a2 == v2)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = *a2;
    do
    {
      v6 = *v5++;
      v4 = v6 + 7853 * v4;
    }

    while (v5 != v2);
  }

  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v4;
    if (v4 >= *&v7)
    {
      v10 = v4 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v4;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_25:
    std::__hash_table<std::__hash_value_type<std::vector<int>,int>,std::__unordered_map_hasher<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,kaldi::VectorHasher<int>,std::equal_to<std::vector<int>>,true>,std::__unordered_map_equal<std::vector<int>,std::__hash_value_type<std::vector<int>,int>,std::equal_to<std::vector<int>>,kaldi::VectorHasher<int>,true>,std::allocator<std::__hash_value_type<std::vector<int>,int>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::vector<int> const&>,std::tuple<>>();
  }

  v13 = v2 - v3;
  while (1)
  {
    v14 = v12[1];
    if (v14 == v4)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v10)
    {
      goto LABEL_25;
    }

LABEL_24:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_25;
    }
  }

  v15 = v12[2];
  if (v12[3] - v15 != v13 || memcmp(v15, v3, v13))
  {
    goto LABEL_24;
  }

  return v12;
}

void sub_1B5069DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::vector<int>,int>,void *>>>::operator()[abi:ne200100](&a13, __p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B5069E9C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void quasar::OnlineLatticeBiglmFasterDecoder::decoderObjectSetup(quasar::OnlineLatticeBiglmFasterDecoder *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(this + 317) = *(this + 316);
  *(this + 322) = 0x4110000000000000;
  *(this + 323) = 0;
  *(this + 325) = *(this + 324);
  *(this + 327) = 0;
  v7 = *(*a4 + 24);
  if (v7[48] == 1)
  {
    v8 = (this + 1972);
    if (*(this + 49) && v7[624])
    {
      v8 = *(this + 49);
    }

    v9 = v8[1];
    v37 = *v8;
    v38 = v9;
    if (v7[625] == 1)
    {
      DWORD2(v38) = -1;
    }

    (*(**(a2 + 16) + 56))(*(a2 + 16));
    std::allocate_shared[abi:ne200100]<quasar::EagerDecision,std::allocator<quasar::EagerDecision>,quasar::EagerConfig &,BOOL,0>();
  }

  quasar::OnlineLatticeBiglmFasterDecoder::clearEagerData(this);
  if ((*(**(a2 + 16) + 72))(*(a2 + 16)))
  {
    quasar::MovingAverage::init((this + 2024), *(this + 524));
  }

  *(this + 526) = 0;
  *(this + 2108) = 0;
  v10 = *(*a4 + 24);
  v11 = *(this + 576);
  if (v11 <= 0.0)
  {
    v12 = *(v10 + 272);
    v13 = *(v10 + 280);
  }

  else
  {
    v12 = *(v10 + 272);
    v13 = *(v10 + 280);
    v14 = 0.0;
    if (v12 != v13)
    {
      v15 = *(v10 + 272);
      do
      {
        v16 = *v15;
        v15 += 16;
        v14 = v14 + *(v16 + 12);
      }

      while (v15 != v13);
    }

    if (v14 >= v11)
    {
      v17 = v11 / v14;
      if (quasar::gLogLevel >= 5)
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
        *v20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Extra LM weight exceeds max-total-extra-weight, rescaling with ", 63);
        std::ostream::operator<<();
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v20);
        v12 = *(v10 + 272);
        v13 = *(v10 + 280);
      }

      if (v12 != v13)
      {
        v18 = v12;
        do
        {
          v19 = *v18;
          v18 += 16;
          *(v19 + 12) = v17 * *(v19 + 12);
        }

        while (v18 != v13);
      }
    }
  }

  if (((v13 - v12) >> 4) + ((*(this + 139) - *(this + 138)) >> 2) == (*(*(this + 302) + 8) - **(this + 302)) >> 4)
  {
    std::allocate_shared[abi:ne200100]<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::allocator<fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>&,0>();
  }

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
  *v20 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, "some FST/NN LMs failed to load");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v20);
}

void sub_1B506B31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38)
{
  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  MEMORY[0x1B8C85350](v38, 0x1032C40FE2AB2A7);
  JUMPOUT(0x1B506B470);
}

void sub_1B506B354(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
  }

  if (!v38)
  {
    if (a22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a22);
    }

    a27 = &a30;
    std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a27);
    JUMPOUT(0x1B506B460);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  JUMPOUT(0x1B506B420);
}

void sub_1B506B3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::locale a37)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a37);
  v39 = *(v37 - 144);
  if (v39)
  {
    *(v37 - 136) = v39;
    operator delete(v39);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(a1);
}

void sub_1B506B3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  v20 = *(v18 - 144);
  if (v20)
  {
    *(v18 - 136) = v20;
    operator delete(v20);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B506B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  if (!a38)
  {
    JUMPOUT(0x1B506B48CLL);
  }

  JUMPOUT(0x1B506B488);
}

void sub_1B506B414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void ***a27, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, char a33)
{
  a27 = &a30;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a27);
  a30 = &a33;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a30);
  JUMPOUT(0x1B506B470);
}

void sub_1B506B41C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  a30 = &a33;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a30);
  JUMPOUT(0x1B506B460);
}

void sub_1B506B444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t *a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  a30 = &a33;
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&a30);
  JUMPOUT(0x1B506B470);
}

void *std::__shared_ptr_emplace<quasar::EagerDecision>::__shared_ptr_emplace[abi:ne200100]<quasar::EagerConfig &,BOOL,std::allocator<quasar::EagerDecision>,0>(void *a1, const quasar::EagerConfig *a2, BOOL *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D14918;
  quasar::EagerDecision::EagerDecision((a1 + 3), a2, *a3);
  return a1;
}

void *quasar::operator<<(void *a1, uint64_t a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{silencePosterior=", 18);
  v4 = std::ostream::operator<<();
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " silenceWindow=", 15);
  v6 = MEMORY[0x1B8C84C00](v5, *(a2 + 4));
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " stablePartials=", 16);
  v8 = MEMORY[0x1B8C84C00](v7, *(a2 + 8));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "}", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{early=", 7);
  v5 = quasar::operator<<(v4, a2);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, " backoff=", 9);
  v7 = quasar::operator<<(v6, a2 + 12);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " maxTriggers=", 13);
  v9 = MEMORY[0x1B8C84C00](v8, *(a2 + 24));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " requireSilencePosterior=", 25);
  v11 = MEMORY[0x1B8C84BD0](v10, *(a2 + 28));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " debug=", 7);
  v13 = MEMORY[0x1B8C84BD0](v12, *(a2 + 29));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "}", 1);
  return a1;
}

{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
  if (*(a2 + 24) == 1)
  {
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "samplingRateFilter", 18);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " = {", 4);
    v6 = ",";
    v7 = 1;
    quasar::joinToStream<std::set<unsigned int>>(a1, a2, &v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "} ", 2);
  }

  v6 = "taskTypeFilter";
  v7 = 14;
  quasar::printOptionalSet<std::string>(a1, &v6, a2 + 32);
  v6 = "deviceIdFilter";
  v7 = 14;
  quasar::printOptionalSet<std::string>(a1, &v6, a2 + 64);
  v6 = "farFieldFilter";
  v7 = 14;
  quasar::printOptionalSet<BOOL>(a1, &v6, a2 + 96);
  v6 = "atypicalSpeechFilter";
  v7 = 20;
  quasar::printOptionalSet<BOOL>(a1, &v6, a2 + 128);
  v6 = "aneContextFilter";
  v7 = 16;
  quasar::printOptionalSet<std::string>(a1, &v6, a2 + 160);
  v6 = "cpuContextFilter";
  v7 = 16;
  quasar::printOptionalSet<std::string>(a1, &v6, a2 + 192);
  v6 = "gpuContextFilter";
  v7 = 16;
  quasar::printOptionalSet<std::string>(a1, &v6, a2 + 224);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Token(", 6);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "(", 1);
  v10 = MEMORY[0x1B8C84C00](v9, *(a2 + 24));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ",", 1);
  v13 = MEMORY[0x1B8C84C10](v12, *(a2 + 28));
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ",", 1);
  v15 = MEMORY[0x1B8C84C10](v14, *(a2 + 32));
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ",", 1);
  v17 = MEMORY[0x1B8C84C10](v16, *(a2 + 36));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ",", 1);
  v18 = std::ostream::operator<<();
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ",", 1);
  v20 = MEMORY[0x1B8C84BD0](v19, *(a2 + 44));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ",", 1);
  v22 = MEMORY[0x1B8C84BD0](v21, *(a2 + 45));
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ",", 1);
  v24 = *(a2 + 71);
  if (v24 >= 0)
  {
    v25 = a2 + 48;
  }

  else
  {
    v25 = *(a2 + 48);
  }

  if (v24 >= 0)
  {
    v26 = *(a2 + 71);
  }

  else
  {
    v26 = *(a2 + 56);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ",", 1);
  v60[0] = " ";
  v60[1] = 1;
  quasar::join<std::vector<std::string>>((a2 + 72), v60);
  if ((v62 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v62 & 0x80u) == 0)
  {
    v30 = v62;
  }

  else
  {
    v30 = __p[1];
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ",", 1);
  v33 = *(a2 + 119);
  if (v33 >= 0)
  {
    v34 = a2 + 96;
  }

  else
  {
    v34 = *(a2 + 96);
  }

  if (v33 >= 0)
  {
    v35 = *(a2 + 119);
  }

  else
  {
    v35 = *(a2 + 104);
  }

  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ",", 1);
  v38 = MEMORY[0x1B8C84BD0](v37, *(a2 + 172));
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, ",", 1);
  v40 = *(a2 + 167);
  if (v40 >= 0)
  {
    v41 = a2 + 144;
  }

  else
  {
    v41 = *(a2 + 144);
  }

  if (v40 >= 0)
  {
    v42 = *(a2 + 167);
  }

  else
  {
    v42 = *(a2 + 152);
  }

  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v41, v42);
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ",", 1);
  v45 = quasar::operator<<(v44, *(a2 + 168));
  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ",", 1);
  v47 = MEMORY[0x1B8C84BD0](v46, *(a2 + 173));
  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, ",", 1);
  v49 = *(a2 + 199);
  if (v49 >= 0)
  {
    v50 = a2 + 176;
  }

  else
  {
    v50 = *(a2 + 176);
  }

  if (v49 >= 0)
  {
    v51 = *(a2 + 199);
  }

  else
  {
    v51 = *(a2 + 184);
  }

  v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, v50, v51);
  v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ",", 1);
  v54 = MEMORY[0x1B8C84BD0](v53, *(a2 + 200));
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", ", 2);
  v56 = quasar::operator<<(v55);
  v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, ",", 1);
  v58 = MEMORY[0x1B8C84BD0](v57, *(a2 + 46));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, ")", 1);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "Word(", 5);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ",", 1);
  v12 = *(a2 + 24);
  v11 = a2 + 24;
  v10 = v12;
  v13 = *(v11 + 23);
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = *(v11 + 8);
  }

  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ",", 1);
  v18 = MEMORY[0x1B8C84C00](v17, *(v11 + 24));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ",", 1);
  std::string::basic_string[abi:ne200100]<0>(v24, "|");
  quasar::LmeDataFactoryBase::PronSet::toString((v11 + 32), 1, v24);
  if ((v27 & 0x80u) == 0)
  {
    v20 = __p;
  }

  else
  {
    v20 = __p[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v21 = v27;
  }

  else
  {
    v21 = __p[1];
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ")", 1);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  return a1;
}

{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{", 1);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "sourceRange: ", 15);
  quasar::operator<<(v4, a2);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", projectionRange: ", 21);
  quasar::operator<<(v5, (a2 + 8));
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = (a2 + 16);
  if (v6 != v7)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, ", alternatives: [", 19);
    v14[0] = ",";
    v14[1] = 1;
    quasar::join<std::vector<quasar::AlternativeSelectionSpan::Alternative>>(v8, v14);
    if ((v16 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v16 & 0x80u) == 0)
    {
      v11 = v16;
    }

    else
    {
      v11 = __p[1];
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "]", 1);
    if (v16 < 0)
    {
      operator delete(__p[0]);
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "}", 1);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "{definition: ", 16);
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "}", 2);
  return a1;
}

void quasar::MovingAverage::clear(quasar::MovingAverage *this)
{
  *(this + 2) = 0;
  v2 = *(this + 3);
  v3 = *(this + 4);
  *(this + 7) = 0;
  v4 = (v3 - v2) >> 3;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v5 = *(this + 4);
      v2 = (*(this + 3) + 8);
      *(this + 3) = v2;
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

  *(this + 6) = v6;
}

void fst::BackoffDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::BackoffDeterministicOnDemandFst(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *a1 = &unk_1F2D06D18;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1 + 48, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0;
  *(a1 + 32) = a2;
  operator new();
}

void sub_1B506B7B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v6 = v5;
  MEMORY[0x1B8C85350](v6, 0x10E1C4003B7394BLL);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v4);
  v8 = *v3;
  if (*v3)
  {
    *(v2 + 56) = v8;
    operator delete(v8);
  }

  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__shared_ptr_emplace[abi:ne200100]<std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>> &,fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::WeightType,std::allocator<fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,0>(void *a1, uint64_t *a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D074D8;
  fst::InterpolateDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::InterpolateDeterministicOnDemandFst((a1 + 3), a2, *a3, 1);
  return a1;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::Start(uint64_t a1)
{
  if (*(a1 + 60))
  {
    return *(a1 + 64);
  }

  if ((*(*a1 + 32))(a1, 4))
  {
    *(a1 + 60) = 1;
    return *(a1 + 64);
  }

  if (*(a1 + 60))
  {
    return *(a1 + 64);
  }

  v3 = *(a1 + 240);
  if (*(a1 + 248) - v3 == 8)
  {
    result = 0xFFFFFFFFLL;
    *(a1 + 64) = -1;
    *(a1 + 60) = 1;
    if ((*(a1 + 68) & 0x80000000) != 0)
    {
      *(a1 + 68) = 0;
    }
  }

  else
  {
    v4 = *(v3 + 8 * *(a1 + 264));
    result = (*(*v4 + 24))(v4);
    if (result != -1)
    {
      v5 = result;
      memset(__p, 0, sizeof(__p));
      Id = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::FindId((*(a1 + 168) + 112), __p, 1);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      v7 = *(a1 + 168);
      v8 = *(a1 + 264);
      __p[0] = Id;
      __p[1] = __PAIR64__(v5, v8);
      result = fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::FindId(v7, __p, 1);
      *(a1 + 64) = result;
      *(a1 + 60) = 1;
      if (*(a1 + 68) <= result)
      {
        *(a1 + 68) = result + 1;
      }
    }
  }

  return result;
}

void sub_1B506B9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::FindId(void *a1, uint64_t *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::find<long>(a1 + 3, &fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::kCurrentKey);
  if (v6)
  {
    return v6[2];
  }

  if (!a3)
  {
    return -1;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((a1[11] - a1[10]) >> 3);
  std::vector<fst::ReplaceStackPrefix<int,int>>::push_back[abi:ne200100]((a1 + 10), a2);
  std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::__emplace_unique_key_args<long,long const&>(a1 + 3, &v8);
  return v8;
}

void *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::find<long>(void *a1, uint64_t *a2)
{
  v4 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc::operator()(a1 + 4, *a2);
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
        if (fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, v11[2], *a2))
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

uint64_t fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc::operator()(uint64_t *a1, uint64_t a2)
{
  if (a2 < -1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = a2 == -1 ? *(v2 + 104) : (*(v2 + 80) + 24 * a2);
  v4 = *v3;
  v5 = v3[1] - *v3;
  if (!v5)
  {
    return 0;
  }

  result = 0;
  v7 = v5 >> 3;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v8 = (v4 + 4);
  do
  {
    result += *(v8 - 1) + 7853 * *v8;
    v8 += 2;
    --v7;
  }

  while (v7);
  return result;
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<fst::ReplaceStackPrefix<int,int>>::__emplace_back_slow_path<fst::ReplaceStackPrefix<int,int> const&>(a1, a2);
  }

  else
  {
    std::vector<fst::ReplaceStackPrefix<int,int>>::__construct_one_at_end[abi:ne200100]<fst::ReplaceStackPrefix<int,int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v12 = a4;
  v13 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v7 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(v4, *v7, v7[1], (v7[1] - *v7) >> 3);
      v7 += 3;
      v4 = v13 + 3;
      v13 += 3;
    }

    while (v7 != a3);
    v11 = 1;
    while (v6 != a3)
    {
      v8 = *v6;
      if (*v6)
      {
        v6[1] = v8;
        operator delete(v8);
      }

      v6 += 3;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](v10);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<fst::ReplaceStackPrefix<int,int>>,fst::ReplaceStackPrefix<int,int>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<int>>,std::vector<int>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::FindId(void *a1, _OWORD *a2, int a3)
{
  a1[13] = a2;
  v6 = std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(a1 + 3, &fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::kCurrentKey);
  if (v6)
  {
    return *(v6 + 4);
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1[10];
  v9 = a1[11];
  v10 = a1[12];
  v11 = (v9 - v8) >> 4;
  v21 = v11;
  if (v9 >= v10)
  {
    v13 = v11 + 1;
    if ((v11 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v14 = v10 - v8;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((a1 + 10), v15);
    }

    v16 = (16 * v11);
    *v16 = *a2;
    v12 = 16 * v11 + 16;
    v17 = a1[10];
    v18 = a1[11] - v17;
    v19 = v16 - v18;
    memcpy(v16 - v18, v17, v18);
    v20 = a1[10];
    a1[10] = v19;
    a1[11] = v12;
    a1[12] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v9 = *a2;
    v12 = (v9 + 1);
  }

  a1[11] = v12;
  std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(a1 + 3, &v21);
  return v21;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::find<int>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = *(v5 + 80) + 16 * v4;
    }

    v7 = *v6 + 7853 * *(v6 + 8) + 7867 * *(v6 + 12);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    return 0;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  for (i = *v12; i; i = *i)
  {
    v14 = i[1];
    if (v14 == v7)
    {
      if (fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, *(i + 4), *a2))
      {
        return i;
      }
    }

    else
    {
      if (v10 > 1)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      if (v14 != v11)
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t *std::__hash_table<int,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(void *a1, int *a2)
{
  v4 = *a2;
  if (v4 < -1)
  {
    v7 = 0;
  }

  else
  {
    v5 = a1[4];
    if (v4 == -1)
    {
      v6 = *(v5 + 104);
    }

    else
    {
      v6 = *(v5 + 80) + 16 * v4;
    }

    v7 = *v6 + 7853 * *(v6 + 8) + 7867 * *(v6 + 12);
  }

  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_24;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v8)
    {
      v11 = v7 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_24;
    }

LABEL_23:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_24;
    }
  }

  if (!fst::CompactHashBiTable<int,fst::ReplaceStateTuple<int,long>,fst::ReplaceHash<int,long>,std::equal_to<fst::ReplaceStateTuple<int,long>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, *(v13 + 4), *a2))
  {
    goto LABEL_23;
  }

  return v13;
}

void quasar::DecoderPassData::getLeftContextLabels(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, const void **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v6 = *(a1 + 736);
  if (v6 != *(a1 + 728))
  {
    v10 = (a4 + 8);
    while (1)
    {
      v6 -= 3;
      v21 = quasar::SymbolTableList::strToSymbolId(a2, v6);
      if (v21 == -1 || std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(a3, v6))
      {
        break;
      }

      v11 = *v10;
      if (*v10)
      {
        v12 = v10;
        do
        {
          if (*(v11 + 28) >= v21)
          {
            v12 = v11;
          }

          v11 = *(v11 + 8 * (*(v11 + 28) < v21));
        }

        while (v11);
        if (v12 != v10 && v21 >= *(v12 + 7))
        {
          break;
        }
      }

      std::vector<int>::push_back[abi:ne200100](a5, &v21);
      if (v6 == *(a1 + 728))
      {
        goto LABEL_16;
      }
    }

    if (quasar::gLogLevel >= 4)
    {
      memset(v20, 0, sizeof(v20));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Clipping left context because of unknown or rejected word", 57);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v20);
    }
  }

LABEL_16:
  v13 = *a5;
  v14 = a5[1];
  v15 = v14 - 4;
  if (*a5 != v14 && v15 > v13)
  {
    v17 = v13 + 4;
    do
    {
      v18 = *(v17 - 1);
      *(v17 - 1) = *v15;
      *v15 = v18;
      v15 -= 4;
      v19 = v17 >= v15;
      v17 += 4;
    }

    while (!v19);
  }
}

void sub_1B506C3CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::locale a9)
{
  quasar::QuasarInfoMessage::~QuasarInfoMessage(&a9);
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  _Unwind_Resume(a1);
}

void std::allocator<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::construct[abi:ne200100]<fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::shared_ptr<fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>> &,unsigned long const&>(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v4 = a3[1];
  v5 = *a3;
  v6 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheDeterministicOnDemandFst(a2, &v5, *a4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1B506C4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<int,fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = 0;
      v10 = v5 + 20 * a2;
      v11 = (20 * a2 - 20) / 0x14;
      v12 = vdupq_n_s64(v11);
      v13 = (v11 + 4) & 0x1FFFFFFFFFFFFFFCLL;
      v14 = (v5 + 40);
      do
      {
        v15 = vdupq_n_s64(v9);
        v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1B5AE0060)));
        if (vuzp1_s16(v16, *v12.i8).u8[0])
        {
          *(v14 - 10) = 0;
        }

        if (vuzp1_s16(v16, *&v12).i8[2])
        {
          *(v14 - 5) = 0;
        }

        if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_1B5AE0050)))).i32[1])
        {
          *v14 = 0;
          v14[5] = 0;
        }

        v9 += 4;
        v14 += 20;
      }

      while (v13 != v9);
    }

    else
    {
      v10 = *(a1 + 8);
    }

    *(a1 + 8) = v10;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 2) + a2;
    if (v6 > 0xCCCCCCCCCCCCCCCLL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(a1, v8);
    }

    v17 = 0;
    v18 = 4 * ((v5 - *a1) >> 2);
    v19 = v18 + 20 * a2;
    v20 = (20 * a2 - 20) / 0x14;
    v21 = vdupq_n_s64(v20);
    v22 = (v20 + 4) & 0x1FFFFFFFFFFFFFFCLL;
    v23 = (v18 + 40);
    do
    {
      v24 = vdupq_n_s64(v17);
      v25 = vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_1B5AE0060)));
      if (vuzp1_s16(v25, *v21.i8).u8[0])
      {
        *(v23 - 10) = 0;
      }

      if (vuzp1_s16(v25, *&v21).i8[2])
      {
        *(v23 - 5) = 0;
      }

      if (vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, vorrq_s8(v24, xmmword_1B5AE0050)))).i32[1])
      {
        *v23 = 0;
        v23[5] = 0;
      }

      v17 += 4;
      v23 += 20;
    }

    while (v22 != v17);
    v26 = *(a1 + 8) - *a1;
    v27 = v18 - v26;
    memcpy((v18 - v26), *a1, v26);
    v28 = *a1;
    *a1 = v27;
    *(a1 + 8) = v19;
    *(a1 + 16) = 0;
    if (v28)
    {

      operator delete(v28);
    }
  }
}

uint64_t kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(uint64_t a1)
{
  result = *(a1 + 48);
  if (!result)
  {
    operator new[]();
  }

  *(a1 + 48) = *(result + 16);
  return result;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>> const&>(void *a1, uint64_t a2, const void **a3)
{
  v3 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__construct_node<std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>> const&>();
  }

  return v3;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::appendEmptyFsts(void *a1, uint64_t *a2)
{
  v2 = a1[380];
  if (v2)
  {
    if (v2 != (a2[1] - *a2) >> 5)
    {
      v4 = a1[378];
      v5 = a1 + 379;
      if (v4 != a1 + 379)
      {
        do
        {
          v6 = *(v4 + 14);
          for (i = *a2; i != a2[1]; i += 8)
          {
            if (*i == v6)
            {
              goto LABEL_10;
            }
          }

          v12 = 0;
          v13 = 0;
          v11 = v6;
          v14 = -1;
          std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::push_back[abi:ne200100](a2, &v11);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

LABEL_10:
          v8 = v4[1];
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
              v9 = v4[2];
              v10 = *v9 == v4;
              v4 = v9;
            }

            while (!v10);
          }

          v4 = v9;
        }

        while (v9 != v5);
      }
    }
  }
}

void sub_1B506CAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies::clear(quasar::OnlineTransducerGraphSearchDecoder::LmeCreationDependencies *this)
{
  std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100](this);
  std::vector<quasar::LmeInfo>::clear[abi:ne200100](this + 8);
  v2 = *(this + 11);

  return quasar::SymbolTableList::clear(v2);
}

void std::__hash_table<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::shared_ptr<quasar::FeatureExtractor>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__do_rehash<false>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void *std::__hash_table<long,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc,fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual,std::allocator<long>>::__emplace_unique_key_args<long,long const&>(void *a1, uint64_t *a2)
{
  v4 = fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashFunc::operator()(a1 + 4, *a2);
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

  if ((fst::CompactHashBiTable<long,fst::ReplaceStackPrefix<int,int>,fst::ReplaceStackPrefixHash<int,int>,std::equal_to<fst::ReplaceStackPrefix<int,int>>,(fst::HSType)1>::HashEqual::operator()(a1 + 6, v11[2], *a2) & 1) == 0)
  {
    goto LABEL_17;
  }

  return v11;
}

void **std::vector<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
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

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>>(result, v11);
    }

    v12 = *(a2 + 8);
    v13 = 24 * v8;
    *v13 = *a2;
    *(v13 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    *(24 * v8 + 0x10) = *(a2 + 16);
    v7 = v13 + 24;
    v14 = result[1] - *result;
    v15 = v13 - v14;
    memcpy((v13 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 8);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *(v4 + 4) = *(a2 + 16);
    v7 = (v4 + 24);
  }

  v3[1] = v7;
  return result;
}

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
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v11 + 16) = *(a2 + 16);
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
    result = std::__split_buffer<std::pair<std::shared_ptr<fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,float>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v4 + 4) = *(a2 + 16);
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void kaldi::quasar::EspressoV2Plan::LoadNetworkMil(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v27 = 0;
  if (a3)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  if (kaldi::quasar::compileWithProgramLibrary(a2, (a1 + 120), &v27, v10, a5))
  {
    v11 = v27 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v16 = kaldi::quasar::EspressoV2Plan::LoadNetworkWithProgramLibrary(a1, &v27, a4);
    e5rt_program_library_release();
    if (v16)
    {
      return;
    }

    if (a3)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Compilation not loadable for v2 model: ", 39);
        v17 = *(a2 + 23);
        if (v17 >= 0)
        {
          v14 = a2;
        }

        else
        {
          v14 = *a2;
        }

        if (v17 >= 0)
        {
          v15 = *(a2 + 23);
        }

        else
        {
          v15 = *(a2 + 8);
        }

LABEL_26:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v26);
        return;
      }

      return;
    }

    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Loading not successful, starting forced recompilation for v2 model: ", 68);
      v19 = *(a2 + 23);
      if (v19 >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      if (v19 >= 0)
      {
        v21 = *(a2 + 23);
      }

      else
      {
        v21 = *(a2 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v26);
    }

    v27 = 0;
    if (kaldi::quasar::compileWithProgramLibrary(a2, (a1 + 120), &v27, 1, a5) && v27)
    {
      v22 = kaldi::quasar::EspressoV2Plan::LoadNetworkWithProgramLibrary(a1, &v27, a4);
      e5rt_program_library_release();
      if (v22)
      {
        return;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Loading not successful for v2 model: ", 37);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v25, a2);
    }

    else
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Forced recompilation not successful for v2 model: ", 50);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v24, a2);
    }

LABEL_40:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v26);
  }

  if (!a3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Compilation not successful for v2 model: ", 41);
    std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v23, a2);
    goto LABEL_40;
  }

  if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "Compilation not yet done for v2 model: ", 39);
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

    goto LABEL_26;
  }
}

void sub_1B506D370(uint64_t a1, ...)
{
  va_start(va, a1);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  JUMPOUT(0x1B506D37CLL);
}

uint64_t kaldi::quasar::compileWithProgramLibrary(uint64_t a1, unsigned __int16 **a2, void *a3, uint64_t a4, uint64_t *a5)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Starting to compile v2 model: ", 30);
    v11 = *(a1 + 23);
    if (v11 >= 0)
    {
      v12 = a1;
    }

    else
    {
      v12 = *a1;
    }

    if (v11 >= 0)
    {
      v13 = *(a1 + 23);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, v13);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " behavior: ", 11);
    MEMORY[0x1B8C84C00](v15, a4);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
  }

  v101 = 0;
  v102 = 0;
  v16 = e5rt_e5_compiler_create();
  if (v16)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v17 = v16;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_create error, code: ", 37);
      v19 = MEMORY[0x1B8C84C00](v18, v17);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " last_error_message: ", 21);
      last_error_message = e5rt_get_last_error_message();
      v22 = strlen(last_error_message);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, last_error_message, v22);
LABEL_73:
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      goto LABEL_74;
    }

    goto LABEL_74;
  }

  isLowEndDevice = e5rt_e5_compiler_options_create();
  if (isLowEndDevice)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v24 = isLowEndDevice;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
      v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_create error, code: ", 45);
      v26 = MEMORY[0x1B8C84C00](v25, v24);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, " last_error_message: ", 21);
      v28 = e5rt_get_last_error_message();
      v29 = strlen(v28);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);
      goto LABEL_73;
    }

LABEL_74:
    kaldi::quasar::releaseE5OptionsAndHandles(&v101, &v102);
    return 0;
  }

  v97 = a3;
  v30 = *a2;
  v31 = a2[1];
  if (*a2 != v31)
  {
    v32 = 0;
    while (1)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Setting compilation options computeDeviceType to: ", 50);
        v34 = *(v30 + 23);
        if (v34 >= 0)
        {
          v35 = v30;
        }

        else
        {
          v35 = *v30;
        }

        if (v34 >= 0)
        {
          v36 = *(v30 + 23);
        }

        else
        {
          v36 = *(v30 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
      }

      if ((*(v30 + 23) & 0x80000000) == 0)
      {
        break;
      }

      if (*(v30 + 1) == 3 && **v30 == 20547 && *(*v30 + 2) == 85)
      {
        goto LABEL_65;
      }

      if (*(v30 + 1) == 7 && **v30 == 1599426627 && *(*v30 + 3) == 1414283615)
      {
        goto LABEL_65;
      }

      if (*(v30 + 1) == 3 && **v30 == 20033 && *(*v30 + 2) == 69)
      {
LABEL_68:
        v32 |= 4uLL;
        isLowEndDevice = kaldi::quasar::isLowEndDevice(isLowEndDevice);
        if (isLowEndDevice)
        {
          isLowEndDevice = e5rt_e5_compiler_options_set_force_classic_aot_old_hw();
        }

        goto LABEL_66;
      }

      if (*(v30 + 1) == 3)
      {
        v42 = *v30;
LABEL_59:
        v45 = bswap32(*v42 | (*(v42 + 2) << 16));
        v46 = v45 >= 0x47505500;
        v47 = v45 > 0x47505500;
        v48 = !v46;
        if (v47 == v48)
        {
          v32 |= 2uLL;
        }
      }

LABEL_66:
      v30 += 12;
      if (v30 == v31)
      {
        goto LABEL_70;
      }
    }

    v37 = *(v30 + 23);
    if (v37 == 3)
    {
      if (*v30 != 20547 || *(v30 + 2) != 85)
      {
        v44 = *v30 == 20033 && *(v30 + 2) == 69;
        v42 = v30;
        if (v44)
        {
          goto LABEL_68;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (v37 != 7)
      {
        goto LABEL_66;
      }

      if (*v30 != 1599426627 || *(v30 + 3) != 1414283615)
      {
        goto LABEL_66;
      }
    }

LABEL_65:
    v32 |= 1uLL;
    goto LABEL_66;
  }

LABEL_70:
  v49 = e5rt_e5_compiler_options_set_compute_device_types_mask();
  if (v49)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      v50 = v49;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_compute_device_types_mask error, code: ", 68);
      v52 = MEMORY[0x1B8C84C00](v51, v50);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, " last_error_message: ", 21);
      v54 = e5rt_get_last_error_message();
      v55 = strlen(v54);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, v54, v55);
      goto LABEL_73;
    }

    goto LABEL_74;
  }

  __p = 0;
  v99 = 0;
  v100 = 0;
  v58 = *a5;
  v59 = a5[1];
  if (*a5 != v59)
  {
    do
    {
      v60 = v58;
      if (*(v58 + 23) < 0)
      {
        v60 = *v58;
      }

      v103[0].__locale_ = v60;
      std::vector<char const*>::push_back[abi:ne200100](&__p, v103);
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Adding function to compile: ", 28);
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
          v64 = *(v58 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
      }

      v58 += 24;
    }

    while (v58 != v59);
    v65 = e5rt_e5_compiler_options_set_mil_entry_points();
    if (v65)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
        v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_mil_entry_points error, code: ", 59);
        v67 = MEMORY[0x1B8C84C00](v66, v65);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, " last_error_message: ", 21);
        v69 = e5rt_get_last_error_message();
        v70 = strlen(v69);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      }

LABEL_99:
      kaldi::quasar::releaseE5OptionsAndHandles(&v101, &v102);
      goto LABEL_100;
    }
  }

  if (a4 == 2)
  {
    v77 = e5rt_e5_compiler_options_set_force_fetch_from_cache();
    if (v77)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
        v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_force_fetch_from_cache error, code: ", 65);
        v79 = MEMORY[0x1B8C84C00](v78, v77);
        v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v79, " last_error_message: ", 21);
        v81 = e5rt_get_last_error_message();
        v82 = strlen(v81);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v81, v82);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      }

      goto LABEL_99;
    }
  }

  else if (a4 == 1)
  {
    v71 = e5rt_e5_compiler_options_set_force_recompilation();
    if (v71)
    {
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
        v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_options_set_force_recompilation error, code: ", 62);
        v73 = MEMORY[0x1B8C84C00](v72, v71);
        v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " last_error_message: ", 21);
        v75 = e5rt_get_last_error_message();
        v76 = strlen(v75);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
      }

      goto LABEL_99;
    }
  }

  v83 = e5rt_e5_compiler_compile();
  kaldi::quasar::releaseE5OptionsAndHandles(&v101, &v102);
  if (v83)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
      v84 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "e5rt_e5_compiler_compile error, code: ", 38);
      v85 = MEMORY[0x1B8C84C00](v84, v83);
      v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, " last_error_message: ", 21);
      v87 = e5rt_get_last_error_message();
      v88 = strlen(v87);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, v87, v88);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
    }
  }

  else
  {
    if (*v97)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
        v89 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Ondevice compilation succeeded for v2 model path: ", 50);
        v90 = *(a1 + 23);
        if (v90 >= 0)
        {
          v91 = a1;
        }

        else
        {
          v91 = *a1;
        }

        if (v90 >= 0)
        {
          v92 = *(a1 + 23);
        }

        else
        {
          v92 = *(a1 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v89, v91, v92);
        kaldi::KaldiLogMessage::~KaldiLogMessage(v103);
      }

      v56 = 1;
      goto LABEL_101;
    }

    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v103);
      v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "Program library NULL, Ondevice compilation fail for v2 model path: ", 67);
      v94 = *(a1 + 23);
      if (v94 >= 0)
      {
        v95 = a1;
      }

      else
      {
        v95 = *a1;
      }

      if (v94 >= 0)
      {
        v96 = *(a1 + 23);
      }

      else
      {
        v96 = *(a1 + 8);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, v95, v96);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v103);
    }
  }

LABEL_100:
  v56 = 0;
LABEL_101:
  if (__p)
  {
    v99 = __p;
    operator delete(__p);
  }

  return v56;
}

void sub_1B506DB2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::quasar::isLowEndDevice(kaldi::quasar *this)
{
  {
    kaldi::quasar::isLowEndDevice(void)::ret = MGGetSInt64Answer() < 32;
  }

  return kaldi::quasar::isLowEndDevice(void)::ret;
}

void kaldi::TransitionModel::Read(std::vector<int> *a1, uint64_t *a2, uint64_t a3, int a4)
{
  kaldi::ExpectToken(a2, a3, "<TransitionModel>");
  kaldi::HmmTopology::Read(a1, a2, a3);
  __p = 0;
  v16 = 0;
  v17 = 0;
  kaldi::ReadToken(a2, a3, &__p);
  v14 = 0;
  kaldi::ReadBasicType<int>(a2, a3, &v14);
  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::resize(&a1[3], v14);
  if (v14 >= 1)
  {
    v8 = 0;
    for (i = 0; i < v14; ++i)
    {
      kaldi::ReadBasicType<int>(a2, a3, &a1[3].__begin_[v8]);
      kaldi::ReadBasicType<int>(a2, a3, &a1[3].__begin_[v8 + 1]);
      kaldi::ReadBasicType<int>(a2, a3, &a1[3].__begin_[v8 + 2]);
      if (SHIBYTE(v17) < 0)
      {
        if (v16 == 8 && *__p == 0x3E73656C7075543CLL)
        {
LABEL_18:
          kaldi::ReadBasicType<int>(a2, a3, &a1[3].__begin_[v8 + 3]);
          goto LABEL_19;
        }

        if (v16 == 9)
        {
          p_p = __p;
LABEL_11:
          v11 = *p_p;
          v12 = p_p[8];
          if (v11 == 0x73656C706972543CLL && v12 == 62)
          {
            a1[3].__begin_[v8 + 3] = a1[3].__begin_[v8 + 2];
          }
        }
      }

      else if (HIBYTE(v17) == 8)
      {
        if (__p == 0x3E73656C7075543CLL)
        {
          goto LABEL_18;
        }
      }

      else if (HIBYTE(v17) == 9)
      {
        p_p = &__p;
        goto LABEL_11;
      }

LABEL_19:
      v8 += 4;
    }
  }

  kaldi::ReadToken(a2, a3, &__p);
  kaldi::TransitionModel::ComputeDerived(a1);
  if (a4)
  {
    kaldi::Vector<float>::Resize(&a1[8].__begin_, (a1[6].__end_ - a1[6].__begin_) >> 2, 0);
  }

  else
  {
    kaldi::ExpectToken(a2, a3, "<LogProbs>");
    kaldi::Vector<float>::Read(&a1[8], a2, a3, 0);
    kaldi::ExpectToken(a2, a3, "</LogProbs>");
    kaldi::ExpectToken(a2, a3, "</TransitionModel>");
    kaldi::TransitionModel::ComputeDerivedOfProbs(&a1->__begin_);
  }

  kaldi::TransitionModel::Check(a1);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }
}

void sub_1B506DF2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::TransitionModel::ComputeDerived(std::vector<unsigned int> *this)
{
  std::vector<int>::resize(this + 5, ((this[3].__end_ - this[3].__begin_) >> 4) + 2);
  LODWORD(this[10].__begin_) = 0;
  begin = this[3].__begin_;
  end = this[3].__end_;
  v4 = (end - begin) >> 4;
  if (v4 <= 0x7FFFFFFE)
  {
    v6 = 0;
    v7 = 1;
    v8 = 1;
    do
    {
      this[5].__begin_[v7] = v8;
      if (v4 >= v7)
      {
        v9 = &begin[v6];
        v10 = begin[v6];
        v11 = begin[v6 + 1];
        v13 = begin[v6 + 2];
        v12 = v9[3];
        if (SLODWORD(this[10].__begin_) <= (v13 + 1))
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = this[10].__begin_;
        }

        if (v14 <= (v12 + 1))
        {
          v15 = v12 + 1;
        }

        else
        {
          v15 = v14;
        }

        LODWORD(this[10].__begin_) = v15;
        v16 = kaldi::HmmTopology::TopologyForPhone(this, v10);
        v8 += (*(*v16 + 32 * v11 + 16) - *(*v16 + 32 * v11 + 8)) >> 3;
        begin = this[3].__begin_;
        end = this[3].__end_;
      }

      v17 = v7++ < (((end - begin) << 28) + 0x100000000) >> 32;
      v4 = (end - begin) >> 4;
      v6 += 4;
    }

    while (v17);
    v5 = v8;
  }

  else
  {
    v5 = 1;
  }

  std::vector<int>::resize(this + 6, v5);
  std::vector<int>::resize(this + 7, v5);
  v18 = this[3].__begin_;
  v19 = this[3].__end_;
  if (((v19 - v18) >> 4) < 1)
  {
    v27 = 1;
  }

  else
  {
    v20 = 0;
    v21 = this[5].__begin_;
    v22 = 1;
    do
    {
      v23 = v22;
      v24 = v21[v22++];
      if (v24 < v21[v22])
      {
        do
        {
          this[6].__begin_[v24] = v23;
          if (v20 <= v24)
          {
            v20 = v24;
          }

          IsSelfLoop = kaldi::TransitionModel::IsSelfLoop(this, v24);
          v18 = this[3].__begin_;
          if (IsSelfLoop)
          {
            v26 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = 0x3FFFFFFFFFFFFFFELL;
          }

          this[7].__begin_[v24++] = v18[4 * v23 + v26];
          v21 = this[5].__begin_;
        }

        while (v24 < v21[v22]);
        v19 = this[3].__end_;
      }
    }

    while (v23 < ((v19 - v18) >> 4));
    v27 = (v20 + 1);
  }

  std::vector<int>::resize(this + 4, v27);
  v28 = this[3].__begin_;
  v29 = (this[3].__end_ - v28) >> 4;
  if (v29 >= 1)
  {
    v30 = this[5].__begin_;
    v31 = v28 - 2;
    v32 = (v29 + 1);
    v33 = 1;
    do
    {
      v34 = v33 + 1;
      v35 = v30[v33 + 1];
      v36 = v30[v33];
      if (v36 < v35)
      {
        v37 = 0;
        v38 = v31[4 * v33];
        v39 = v35 - v36;
        v40 = (v35 - v36 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v41 = vdupq_n_s64(v39 - 1);
        v42 = &this[4].__begin_[v36 + 2];
        do
        {
          v43 = vdupq_n_s64(v37);
          v44 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_1B5AE0060)));
          if (vuzp1_s16(v44, 2).u8[0])
          {
            *(v42 - 2) = v38;
          }

          if (vuzp1_s16(v44, 2).i8[2])
          {
            *(v42 - 1) = v38;
          }

          if (vuzp1_s16(2, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v43, xmmword_1B5AE0050)))).i32[1])
          {
            *v42 = v38;
            v42[1] = v38;
          }

          v37 += 4;
          v42 += 4;
        }

        while (v40 != v37);
      }

      v33 = v34;
    }

    while (v34 != v32);
  }
}

uint64_t kaldi::HmmTopology::TopologyForPhone(kaldi::HmmTopology *this, uint64_t a2)
{
  v2 = *(this + 3);
  if (a2 >= ((*(this + 4) - v2) >> 2) || (v3 = *(v2 + 4 * a2), v3 == -1))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "TopologyForPhone(), phone ", 26);
    v6 = MEMORY[0x1B8C84C00](v5, a2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, " not covered.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
  }

  return *(this + 6) + 24 * v3;
}

BOOL kaldi::TransitionModel::IsSelfLoop(kaldi::TransitionModel *this, int a2)
{
  v2 = *(*(this + 18) + 4 * a2);
  v3 = a2 - *(*(this + 15) + 4 * v2);
  v4 = *(this + 9) + 16 * v2;
  v5 = *(v4 - 12);
  v6 = kaldi::HmmTopology::TopologyForPhone(this, *(v4 - 16));
  v7 = *(*v6 + 32 * v5 + 8);
  return v3 < (*(*v6 + 32 * v5 + 16) - v7) >> 3 && *(v7 + 8 * v3) == v5;
}

kaldi::TransitionModel *kaldi::TransitionModel::Check(kaldi::TransitionModel *this)
{
  v1 = this;
  v2 = *(this + 18);
  v3 = (*(this + 10) - *(this + 9)) >> 4;
  if (v3 >= 1)
  {
    v4 = (v3 + 1);
    v5 = *(this + 15) + 8;
    v6 = 1;
    do
    {
      ++v6;
      v5 += 4;
    }

    while (v4 != v6);
  }

  if ((((*(this + 19) - v2) >> 2) - 1) >= 1)
  {
    v7 = 1;
    do
    {
      v8 = *(v1 + 9) + 16 * *(v2 + 4 * v7);
      this = kaldi::TransitionModel::TupleToTransitionState(v1, *(v8 - 16), *(v8 - 12), *(v8 - 8), *(v8 - 4));
      v2 = *(v1 + 18);
    }

    while (v7++ < (((*(v1 + 19) - v2) << 30) - 0x100000000) >> 32);
  }

  return this;
}

std::string *quasar::GeoMemories::rememberLastRegionId(std::string *this, const std::string *__str, _BYTE *a3)
{
  if (*a3 == 1)
  {
    if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if (*(&this->__r_.__value_.__s + 23))
      {
        return this;
      }

      return std::string::operator=(this, __str);
    }

    if (!this->__r_.__value_.__l.__size_)
    {
      return std::string::operator=(this, __str);
    }
  }

  return this;
}

BOOL quasar::Location::isKnown(quasar::Location *this)
{
  v1 = *(this + 1);
  if (*this == 1000.0 && v1 == 1000.0)
  {
    return 0;
  }

  if (v1 == 360.0)
  {
    return *this != 360.0;
  }

  return 1;
}

void quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getOriginStr(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *(a1 + 24), *(a1 + 32));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *(a1 + 24);
      a2->__r_.__value_.__r.__words[2] = *(a1 + 40);
    }
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(a2, "masterlm");
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>> const*,fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      v8 = *(v5 + 8);
      v7 = *(v5 + 16);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(a4 + 16);
      *(a4 + 8) = v8;
      *(a4 + 16) = v7;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      *(a4 + 24) = *(v5 + 24);
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void std::vector<quasar::LmeInfo>::__assign_with_size[abi:ne200100]<quasar::LmeInfo*,quasar::LmeInfo*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<quasar::LmeInfo>::__vdeallocate(a1);
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

      std::vector<quasar::LmeInfo>::__vallocate[abi:ne200100](a1, v10);
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
        v14 = *v6;
        *(v8 + 8) = *(v6 + 2);
        *v8 = v14;
        std::string::operator=((v8 + 16), (v6 + 1));
        v8 += 40;
        v6 = (v6 + 40);
      }

      while (v6 != a3);
      v11 = a1[1];
    }

    while (v11 != v8)
    {
      if (*(v11 - 1) < 0)
      {
        operator delete(*(v11 - 24));
      }

      v11 -= 40;
    }

    a1[1] = v8;
  }

  else
  {
    v12 = (a2 + v11 - v8);
    if (v11 != v8)
    {
      do
      {
        v13 = *v6;
        *(v8 + 8) = *(v6 + 2);
        *v8 = v13;
        std::string::operator=((v8 + 16), (v6 + 1));
        v6 = (v6 + 40);
        v8 += 40;
      }

      while (v6 != v12);
      v11 = a1[1];
    }

    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::LmeInfo>,quasar::LmeInfo*,quasar::LmeInfo*,quasar::LmeInfo*>(a1, v12, a3, v11);
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

    std::vector<int>::__throw_length_error[abi:ne200100]();
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

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*,quasar::SymbolTableList::Data*,quasar::SymbolTableList::Data*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 != a3)
  {
    do
    {
      v5 = *(a2 + 8);
      *v4 = *a2;
      *(v4 + 8) = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      v6 = *(a2 + 16);
      *(v4 + 24) = *(a2 + 24);
      *(v4 + 16) = v6;
      a2 += 32;
      v4 += 32;
    }

    while (a2 != a3);
    v11 = v4;
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::SymbolTableList::Data>,quasar::SymbolTableList::Data*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t **quasar::OnlineLatticeBiglmLmeFasterDecoder::setUpDecoderPassData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  quasar::OnlineLatticeBiglmFasterDecoder::setUpDecoderPassData(a1, a2, a3);
  if (a2 + 408 != a1 + 3216)
  {
    *(a2 + 440) = *(a1 + 3248);
    std::__hash_table<std::__hash_value_type<int,std::pair<int,int>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::pair<int,int>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::pair<int,int>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::pair<int,int>>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<int,std::pair<int,int>>,void *> *>>((a2 + 408), *(a1 + 3232), 0);
  }

  result = (a2 + 368);
  if (a2 + 368 != a1 + 3280)
  {
    v6 = *(a1 + 3280);

    return std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<int,float>,std::__tree_node<std::__value_type<int,float>,void *> *,long>>(result, v6, (a1 + 3288));
  }

  return result;
}

uint64_t std::vector<BOOL>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a2 + 8);
    if (v4)
    {
      if (v4 > *(a1 + 16) << 6)
      {
        v5 = *a1;
        if (*a1)
        {
          operator delete(v5);
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
          v4 = *(a2 + 8);
        }

        std::vector<BOOL>::__vallocate[abi:ne200100](a1, v4);
      }

      memmove(*a1, *a2, (((v4 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8) + 8);
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    *(a1 + 8) = v6;
  }

  return a1;
}

uint64_t fst::ReplaceFstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultReplaceStateTable<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,long>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::ReplaceFstImpl(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CacheBaseImpl(a1, a3);
  *v5 = &unk_1F2D06E70;
  *(v5 + 132) = *(a3 + 32);
  *(v5 + 144) = *(a3 + 40);
  v84 = a3;
  v6 = *(a3 + 64);
  if (!v6)
  {
    operator new();
  }

  *(v4 + 184) = 0;
  *(v4 + 176) = v4 + 184;
  *(v4 + 168) = v6;
  *(v4 + 192) = 0;
  *(v4 + 200) = 0u;
  v81 = v4 + 176;
  v82 = (v4 + 200);
  *(v4 + 216) = 0u;
  *(v4 + 232) = 1065353216;
  *(v4 + 240) = 0;
  v83 = v4 + 240;
  *(v4 + 248) = 0;
  *(v4 + 256) = 0;
  v80 = v4;
  std::string::basic_string[abi:ne200100]<0>(&__str, "replace");
  std::string::operator=((v4 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (!*(v4 + 144))
  {
    *(v4 + 132) = 1;
  }

  if (!*(v4 + 152))
  {
    *(v4 + 136) = 1;
  }

  v7 = *a2;
  v8 = a2[1];
  if (v8 != *a2)
  {
    v9 = (*(**(v7 + 1) + 112))(*(v7 + 1));
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetInputSymbols(v4, v9);
    v10 = (*(**(*a2 + 8) + 120))(*(*a2 + 8));
    fst::FstImpl<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>::SetOutputSymbols(v4, v10);
    v7 = *a2;
    v8 = a2[1];
  }

  v11 = v8 - v7;
  if (v11)
  {
    v12 = v11 >> 4;
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = 1;
    v15 = 1;
    do
    {
      v16 = *v7;
      v7 += 4;
      v17 = v16 > 0;
      v14 &= v16 < 0;
      v18 = v12 >= v16 && v17;
      v15 &= v18;
      --v13;
    }

    while (v13);
  }

  else
  {
    v15 = 1;
    v14 = 1;
  }

  memset(&__str, 0, sizeof(__str));
  v103[0] = 0;
  std::vector<TVertex const*>::push_back[abi:ne200100](v83, v103);
  v78 = v15;
  v79 = v14;
  v19 = *a2;
  if (a2[1] != *a2)
  {
    v20 = 0;
    v21 = 0;
    v22 = 1;
    v23 = 1;
    v24 = 1;
    while (1)
    {
      v86 = v24;
      v87 = v23;
      v25 = v19 + v20;
      v88 = v22;
      LODWORD(v89[0]) = *v25;
      v26 = *(v25 + 8);
      v28 = *(v4 + 240);
      v27 = *(v4 + 248);
      v92[0] = v89;
      *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v82, v89) + 5) = (v27 - v28) >> 3;
      std::__tree<int>::__emplace_unique_key_args<int,int const&>(v81, v89);
      v29 = v26;
      if ((*(v84 + 56) & 1) == 0)
      {
        v29 = (*(*v26 + 88))(v26, 0);
      }

      v92[0] = v29;
      std::vector<TVertex const*>::push_back[abi:ne200100](v83, v92);
      v30 = (*(*v26 + 24))(v26) != -1;
      v31 = (*(*v26 + 64))(v26, 0x10000000, 0) != 0;
      v32 = (*(*v26 + 64))(v26, 0x40000000, 0) != 0;
      v33 = (*(*v26 + 64))(v26, 0x3FFFFFFF0004, 0);
      size = __str.__r_.__value_.__l.__size_;
      if (__str.__r_.__value_.__l.__size_ >= __str.__r_.__value_.__r.__words[2])
      {
        v36 = __str.__r_.__value_.__r.__words[0];
        v37 = __str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0];
        v38 = (__str.__r_.__value_.__l.__size_ - __str.__r_.__value_.__r.__words[0]) >> 3;
        v39 = v38 + 1;
        if ((v38 + 1) >> 61)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v40 = __str.__r_.__value_.__r.__words[2] - __str.__r_.__value_.__r.__words[0];
        if ((__str.__r_.__value_.__r.__words[2] - __str.__r_.__value_.__r.__words[0]) >> 2 > v39)
        {
          v39 = v40 >> 2;
        }

        v41 = v40 >= 0x7FFFFFFFFFFFFFF8;
        v42 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v41)
        {
          v42 = v39;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__str, v42);
        }

        *(8 * v38) = v33;
        v35 = 8 * v38 + 8;
        memcpy(0, v36, v37);
        v43 = __str.__r_.__value_.__r.__words[0];
        __str.__r_.__value_.__r.__words[0] = 0;
        *&__str.__r_.__value_.__r.__words[1] = v35;
        if (v43)
        {
          operator delete(v43);
        }

        v4 = v80;
      }

      else
      {
        *__str.__r_.__value_.__l.__size_ = v33;
        v35 = size + 8;
      }

      __str.__r_.__value_.__l.__size_ = v35;
      if (!v21)
      {
        goto LABEL_61;
      }

      v44 = *(v4 + 40);
      v45 = (*(*v26 + 112))(v26);
      if (!fst::CompatSymbols(v44, v45, 1))
      {
        break;
      }

LABEL_50:
      v52 = *(v4 + 48);
      v53 = (*(*v26 + 120))(v26);
      if (!fst::CompatSymbols(v52, v53, 1))
      {
        v54 = FLAGS_fst_error_fatal;
        if (FLAGS_fst_error_fatal == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(v97, "FATAL");
          v55 = fst::LogMessage::LogMessage(&v99, v97);
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "ERROR");
          v55 = fst::LogMessage::LogMessage(&v96, __p);
        }

        v56 = fst::cerr(v55);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "ReplaceFstImpl: output symbols of Fst ", 38);
        v58 = MEMORY[0x1B8C84C30](v57, v21);
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, " does not match output symbols of base Fst ", 43);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "(0'th fst)", 10);
        if (v54)
        {
          fst::LogMessage::~LogMessage(&v99);
          if (v98 < 0)
          {
            v60 = v97[0];
            goto LABEL_59;
          }
        }

        else
        {
          fst::LogMessage::~LogMessage(&v96);
          if (v95 < 0)
          {
            v60 = __p[0];
LABEL_59:
            operator delete(v60);
          }
        }

        *(v4 + 8) |= 4uLL;
      }

LABEL_61:
      v22 = v30 & v88;
      v24 = v31 & v86;
      v23 = v32 & v87;
      ++v21;
      v19 = *a2;
      v20 += 16;
      if (v21 >= (a2[1] - *a2) >> 4)
      {
        goto LABEL_64;
      }
    }

    v46 = FLAGS_fst_error_fatal;
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v103, "FATAL");
      v47 = fst::LogMessage::LogMessage(&v105, v103);
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v100, "ERROR");
      v47 = fst::LogMessage::LogMessage(&v102, v100);
    }

    v48 = fst::cerr(v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, "ReplaceFstImpl: input symbols of Fst ", 37);
    v50 = MEMORY[0x1B8C84C30](v49, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, " does not match input symbols of base Fst (0'th fst)", 52);
    if (v46)
    {
      fst::LogMessage::~LogMessage(&v105);
      if (v104 < 0)
      {
        v51 = v103[0];
LABEL_48:
        operator delete(v51);
      }
    }

    else
    {
      fst::LogMessage::~LogMessage(&v102);
      if (v101 < 0)
      {
        v51 = v100[0];
        goto LABEL_48;
      }
    }

    *(v4 + 8) |= 4uLL;
    goto LABEL_50;
  }

  v24 = 1;
  v23 = 1;
  v22 = 1;
LABEL_64:
  LODWORD(v89[0]) = *(v84 + 24);
  v92[0] = v89;
  v61 = *(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v82, v89) + 5);
  if (!v61 && *(v4 + 248) - *(v4 + 240) >= 9uLL)
  {
    if (FLAGS_fst_error_fatal == 1)
    {
      std::string::basic_string[abi:ne200100]<0>(v92, "FATAL");
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(v92, "ERROR");
    }

    v62 = fst::LogMessage::LogMessage(v107, v92);
    v63 = fst::cerr(v62);
    v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "ReplaceFstImpl: no Fst corresponding to root label '", 52);
    v65 = MEMORY[0x1B8C84C60](v64, *(v84 + 24));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, "' in the input tuple vector", 27);
    fst::LogMessage::~LogMessage(v107);
    if (v93 < 0)
    {
      operator delete(v92[0]);
    }

    *(v4 + 8) |= 4uLL;
  }

  if (v61 <= 1)
  {
    v66 = 1;
  }

  else
  {
    v66 = v61;
  }

  *(v4 + 264) = v66;
  v68 = *(v4 + 132);
  v67 = *(v4 + 136);
  if ((v68 - 2) >= 2)
  {
    v70 = v79;
    v69 = v68 == 4 && *(v4 + 144) != -1 || (v67 & 0xFFFFFFFE) == 2;
  }

  else
  {
    v69 = 1;
    v70 = v79;
  }

  v71 = *(v4 + 8) & 4 | fst::ReplaceProperties(&__str, (v66 - 1), (v68 & 0xFFFFFFFD) == 1, (v67 & 0xFFFFFFFD) == 1, v69, v22);
  *(v4 + 8) = v71;
  if (v24 && (*(v4 + 136) & 0xFFFFFFFD) == 1 && ((*(v4 + 132) & 0xFFFFFFFD) != 1) | v70 & 1 | v78 & 1)
  {
    v71 |= 0x10000000uLL;
    *(v4 + 8) = v71;
  }

  if (v23 && (*(v4 + 136) - 1) <= 1 && ((*(v4 + 132) - 3) < 0xFFFFFFFE) | v70 & 1 | v78 & 1)
  {
    *(v4 + 8) = v71 | 0x40000000;
  }

  *(v4 + 160) = (*(*v4 + 32))(v4, 1342177280) == 0 || (v22 & 1) == 0;
  if (FLAGS_v >= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v89, "INFO");
    v72 = fst::LogMessage::LogMessage(&v91, v89);
    v73 = fst::cerr(v72);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, "ReplaceFstImpl::ReplaceFstImpl: always_cache = ", 47);
    v75 = *(v4 + 160) ? "true" : "false";
    v76 = *(v4 + 160) ? 4 : 5;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, v75, v76);
    fst::LogMessage::~LogMessage(&v91);
    if (v90 < 0)
    {
      operator delete(v89[0]);
    }
  }

  if (__str.__r_.__value_.__r.__words[0])
  {
    __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_1B506F358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  fst::LogMessage::~LogMessage((v50 - 89));
  if (a34 < 0)
  {
    operator delete(__p);
  }

  v52 = *(v50 - 120);
  if (v52)
  {
    *(v50 - 112) = v52;
    operator delete(v52);
  }

  v53 = *a14;
  if (*a14)
  {
    a11[31] = v53;
    operator delete(v53);
  }

  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(a13);
  std::__tree<int>::destroy(a12, *a9);
  fst::CacheBaseImpl<fst::CacheState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~CacheBaseImpl(a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<fst::ReplaceStackPrefix<int,int>::PrefixTuple,std::allocator<fst::ReplaceStackPrefix<int,int>::PrefixTuple>>::__init_with_size[abi:ne200100]<fst::ReplaceStackPrefix<int,int>::PrefixTuple*,fst::ReplaceStackPrefix<int,int>::PrefixTuple*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B506F5A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>,int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xCCCCCCCCCCCCCCDLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindBestWeightForEachLmState(uint64_t *result, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    do
    {
      v6 = v5[41] + 32 * *(v4 + 8);
      v8 = *(v6 + 28);
      v7 = *(v6 + 12);
      result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a3, &v8);
      if (!result || *(result + 5) > v7)
      {
        v9 = &v8;
        result = std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(a3, &v8);
        *(result + 5) = v7;
      }

      v4 = *(v4 + 16);
    }

    while (v4);
  }

  return result;
}

uint64_t kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::ProcessNonemitting(uint64_t a1, uint64_t a2, float a3)
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 272);
  memset(v67, 0, sizeof(v67));
  v68 = 1065353216;
  if (v6 != INFINITY)
  {
    kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::FindBestWeightForEachLmState(a1, *(a1 + 8), v67);
  }

  for (i = *(a1 + 8); i; i = *(i + 16))
  {
    if (v6 != INFINITY)
    {
      v8 = *(a1 + 328) + 32 * *(i + 8);
      v9 = *(v8 + 12);
      v66 = *(v8 + 28);
      *&v69[0] = &v66;
      if (v9 > (*(std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(v67, &v66) + 5) + *(a1 + 272)))
      {
        continue;
      }
    }

    *&v69[0] = *i;
    DWORD2(v69[0]) = *(i + 8);
    std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](a1 + 112, v69);
  }

  v11 = *(a1 + 112);
  v10 = *(a1 + 120);
  if (v11 == v10 && (*(a1 + 292) & 1) == 0)
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v69);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, "Error in ProcessNonemitting: no surviving tokens: frame is ", 59);
      MEMORY[0x1B8C84C00](v12, a2);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v69);
      v11 = *(a1 + 112);
      v10 = *(a1 + 120);
    }

    *(a1 + 292) = 1;
  }

  if (v11 != v10)
  {
    v59 = a2;
    v60 = a2;
    do
    {
      v15 = *(v10 - 16);
      v13 = v10 - 16;
      v14 = v15;
      v16 = *(v13 + 8);
      *(a1 + 120) = v13;
      v17 = *(a1 + 328) + 32 * v16;
      v18 = *(v17 + 12);
      if (v18 <= a3)
      {
        *(v17 + 20) = 0;
        Arcs = kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetArcs(a1, v14, 0xFFFFFFFF);
        v63 = v16;
        v64 = v14;
        v65 = HIDWORD(v14);
        v21 = Arcs[2];
        v20 = Arcs[3];
        if (v21 == v20)
        {
          v62 = 0;
        }

        else
        {
          v61 = v16 << 6;
          v62 = 0;
          do
          {
            if (*v21)
            {
              if (*(a1 + 295))
              {
                break;
              }
            }

            else
            {
              v22 = *(v21 + 4);
              v23 = *(v21 + 8);
              v24 = *(v21 + 12);
              v25 = v18 + v23;
              if (v22 >= *(a1 + 236) && v22 <= *(a1 + 240) || (v25 - *(a1 + 232)) <= a3)
              {
                v26 = *(a1 + 280);
                if (!v26 || (*(v17 + 8) & 0x3F) == 0 || (LODWORD(v69[0]) = *(v21 + 4), !std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((v26 + 64), v69)))
                {
                  if (v22)
                  {
                    v27 = v65;
                    if ((*(**(a1 + 168) + 32))(*(a1 + 168), v65, v22, v69))
                    {
                      v28 = NAN;
                      if (v23 != -INFINITY)
                      {
                        v28 = NAN;
                        if (*(v69 + 2) != -INFINITY)
                        {
                          v28 = INFINITY;
                          if (*(v69 + 2) != INFINITY && v23 != INFINITY)
                          {
                            v28 = v23 + *(v69 + 2);
                          }
                        }
                      }

                      v22 = DWORD1(v69[0]);
                      v27 = HIDWORD(v69[0]);
                    }

                    else
                    {
                      v28 = INFINITY;
                    }

                    v25 = v18 + v28;
                    v23 = v28;
                  }

                  else
                  {
                    v27 = v65;
                  }

                  if (v25 < a3)
                  {
                    v30 = v24 + (v27 << 32);
                    v31 = *(a1 + 32);
                    v32 = (v31 + 16 * (v30 % *(a1 + 24)));
                    v33 = v32[1];
                    if (v33)
                    {
                      v34 = *v32;
                      v35 = (a1 + 8);
                      if (v34 != -1)
                      {
                        v35 = (*(v31 + 16 * v34 + 8) + 16);
                      }

                      v36 = *(v33 + 16);
                      for (j = *v35; j != v36; j = *(j + 16))
                      {
                        if (*j == v30)
                        {
                          v39 = *(j + 8);
                          v49 = *(a1 + 328) + 32 * v39;
                          v51 = *(v49 + 12);
                          v50 = (v49 + 12);
                          if (v51 > v25)
                          {
                            *v50 = v25;
                            goto LABEL_51;
                          }

                          v46 = 0;
                          goto LABEL_58;
                        }
                      }
                    }

                    v38 = (*(a1 + 88) + 8 * v59);
                    LODWORD(v39) = kaldi::quasar::TokenHeap::NewToken((a1 + 328), v25, 0.0, 0, *v38, *(v17 + 8) & 0x3F);
                    *v38 = v39;
                    ++*(a1 + 288);
                    v40 = *(a1 + 24);
                    v41 = *(a1 + 32);
                    v42 = kaldi::HashList<unsigned long long,unsigned int,std::hash<unsigned long long>,std::equal_to<unsigned long long>>::New(a1 + 8);
                    v43 = v30 % v40;
                    v44 = (v41 + 16 * (v30 % v40));
                    *v42 = v30;
                    *(v42 + 8) = v39;
                    v45 = v44[1];
                    if (v45)
                    {
                      *(v42 + 16) = *(v45 + 16);
                      *(v45 + 16) = v42;
                      v44[1] = v42;
LABEL_51:
                      v46 = 1;
                    }

                    else
                    {
                      v47 = *(a1 + 16);
                      v48 = (a1 + 8);
                      if (v47 != -1)
                      {
                        v48 = (*(*(a1 + 32) + 16 * v47 + 8) + 16);
                      }

                      *v48 = v42;
                      *(v42 + 16) = 0;
                      *v44 = v47;
                      v44[1] = v42;
                      v46 = 1;
                      *(a1 + 16) = v43;
                    }

LABEL_58:
                    v52 = *(a1 + 328);
                    v53 = kaldi::quasar::TokenHeap::NewForwardLink((a1 + 328), v39, 0, v22, v23, 0.0, *(v17 + 20));
                    v54 = v52 + 32 * v39;
                    *(v17 + 20) = v53;
                    if (*(v17 + 4))
                    {
                      *v54 |= 0x100000000uLL;
                    }

                    if (v46)
                    {
                      *(v54 + 8) = *(v54 + 8) & 0x3F | v61;
                      *v54 = *v54 & 0x100000001 | (v22 << 33);
                      *(v54 + 28) = v27;
                      *&v69[0] = v30;
                      DWORD2(v69[0]) = v39;
                      std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](a1 + 112, v69);
                      v62 = 1;
                    }
                  }
                }
              }
            }

            v21 += 16;
          }

          while (v21 != v20);
        }

        if (*(a1 + 280) && ((*(**(a1 + 160) + 24))(*(a1 + 160)) == v64 || a3 != INFINITY && (*v17 & 0x100000000) != 0))
        {
          if ((*(v17 + 8) & 0x3F) != 0)
          {
            if ((v62 & 1) == 0 && !(*v17 >> 33))
            {
              LODWORD(v69[0]) = *(*(*(a1 + 280) + 40) + 12 * (*(v17 + 8) & 0x3F) + 8);
              kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::emitClassTag(a1, v17, v63, v60, v64, v65, v69, 1, a3, 0, 0);
            }
          }

          else
          {
            v55 = *(*(a1 + 280) + 40);
            if (*(*(a1 + 280) + 48) - v55 != 12)
            {
              v56 = 0;
              v57 = 1;
              do
              {
                *&v69[0] = *(v55 + v56 + 12);
                kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::emitClassTag(a1, v17, v63, v60, v64, v65, v69, 2, a3, 1, v57++);
                v55 = *(*(a1 + 280) + 40);
                v56 += 12;
              }

              while (v57 != 0xAAAAAAAAAAAAAAABLL * ((*(*(a1 + 280) + 48) - v55) >> 2));
            }
          }
        }
      }

      v10 = *(a1 + 120);
    }

    while (*(a1 + 112) != v10);
  }

  return std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v67);
}

void sub_1B506FDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<std::pair<unsigned long long,unsigned int>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,unsigned int>>>(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long long,unsigned int>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *kaldi::quasar::LatticeBiglmFasterTraceBackDecoder<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::GetArcs(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v23 = a2;
  v5 = (a1 + 456);
  if (*(a1 + 256) == 0x7FFFFFFF)
  {
    (*(**(a1 + 160) + 80))(*(a1 + 160), a2, v5, *(a1 + 261));
  }

  else
  {
    v6 = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>((a1 + 488), &v23);
    if (v6)
    {
      v5 = v6 + 3;
    }

    else
    {
      (*(**(a1 + 160) + 80))(*(a1 + 160), v23, v5, *(a1 + 261));
      v8 = *(a1 + 472);
      v7 = *(a1 + 480);
      if (*(a1 + 256) <= ((v7 - v8) >> 4))
      {
        v18 = v23;
        v9 = *(a1 + 464);
        v19 = *(a1 + 456);
        v20 = v9;
        v21 = v8;
        v22 = v7;
        *v5 = 0u;
        *(v5 + 1) = 0u;
        v5 = std::__hash_table<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::__emplace_unique_key_args<int,std::pair<int const,fst::ArcBuffer<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>((a1 + 488), &v18) + 3;
        if (v19)
        {
          free(v19);
        }
      }
    }
  }

  if (*(a1 + 261) == 1)
  {
    v10 = (v5[3] - v5[2]) >> 4;
    v11 = v10 - 2;
    v12 = v10 - 1;
    v13 = v23 << 32;
    if (a3 - 1 >= 0xFFFFFFFE)
    {
      v14 = 1;
    }

    else
    {
      v14 = a3;
    }

    v15 = (*v5 + 16 * v11);
    *v15 = 1;
    v15[1] = v13;
    v16 = (*v5 + 16 * v12);
    *v16 = v14;
    v16[1] = v13;
  }

  return v5;
}

void sub_1B5070108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

char *fst::SqueezedFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,false,true>::GetArcs(uint64_t a1, int a2, void **a3, int a4)
{
  v6 = *(a1 + 8);
  if (*(v6 + 112) - 1 == a2)
  {
    v7 = *(v6 + 72);
    v32 = *(v7 + 4 * a2);
    if (v32 <= 0)
    {
      v32 = *(*(v6 + 104) + 8 * -v32 + 4);
    }

    v10 = *(v6 + 120) - v32 + 1;
  }

  else
  {
    v7 = *(v6 + 72);
    v8 = *(v7 + 4 * a2 + 4);
    if (v8 <= 0)
    {
      v8 = *(*(v6 + 104) + 8 * -v8 + 4);
    }

    v9 = *(v7 + 4 * a2);
    if (v9 <= 0)
    {
      v9 = *(*(v6 + 104) + 8 * -v9 + 4);
    }

    v10 = v8 - v9;
  }

  v11 = 2;
  if (!a4)
  {
    v11 = 0;
  }

  v12 = v10 + v11;
  if (a3[1] < v10 + v11)
  {
    if (*a3)
    {
      free(*a3);
    }

    v33 = 0x4000;
    if (v12 > 0x4000)
    {
      v33 = v12;
    }

    a3[1] = v33;
    result = malloc_type_malloc(16 * v33, 0x1000040451B5BE8uLL);
    *a3 = result;
    a3[2] = result;
    v7 = *(v6 + 72);
    v13 = result;
  }

  else
  {
    v13 = a3[2];
    result = *a3;
  }

  a3[3] = &v13[16 * v12];
  v15 = *(v7 + 4 * a2);
  if (v15 <= 0)
  {
    v15 = *(*(v6 + 104) + 8 * -v15 + 4);
  }

  if (v10)
  {
    v16 = 12 * (v15 - 1);
    v17 = *(v6 + 144);
    v18 = *(v17 + 4);
    v21 = v17 + 8;
    v20 = *(v17 + 8);
    v19 = *(v21 + 8);
    v22 = 63 - v20;
    v23 = (63 - v20) >> 1;
    v24 = v20 + 1;
    v25 = v24 + (v22 >> 1);
    v26 = ~(-1 << v23);
    v27 = (result + 8);
    v28 = (v16 + *(v6 + 88) + 8);
    do
    {
      v29 = *(v28 - 1);
      v30 = ((v29 & v19) >> 1);
      if (v29)
      {
        v30 = -v30;
      }

      v31 = *v28;
      v28 += 3;
      *(v27 - 1) = (v29 >> v25) | (((v29 >> v24) & v26) << 32);
      *v27 = COERCE_UNSIGNED_INT(v18 * v30) | (v31 << 32);
      v27 += 2;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t fst::CacheDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetArc(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  v10 = fst::MultiWayArcCache<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Find((a1 + 24), a2, a3);
  if (v11)
  {
    result = 0;
    ++*(a1 + 56);
    if (*(v10 + 8) == -INFINITY)
    {
      return result;
    }

    *a4 = *v10;
  }

  else
  {
    ++*(a1 + 64);
    result = (*(**(a1 + 8) + 24))(*(a1 + 8), a2, a3, a4, a5);
    if (!result)
    {
      return result;
    }

    *v10 = *a4;
  }

  return 1;
}

uint64_t fst::MultiWayArcCache<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::Find(uint64_t *a1, unsigned int a2, unsigned int a3)
{
  v3 = *a1;
  v4 = a1[3];
  v5 = (26597 * a2 + 50329 * a3) & -v4 & (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2) - 1);
  if (v4)
  {
    v6 = (v3 + 20 * v5 + 4);
    v7 = a1[3];
    v8 = (26597 * a2 + 50329 * a3) & -v4 & (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 2) - 1);
    while (*(v6 - 1) != a2 || *v6 != a3)
    {
      v6 += 5;
      ++v8;
      if (!--v7)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = v5 + v4 - 1;
    v10 = (v3 + 20 * v8);
    *v10 = a2;
    v10[1] = a3;
    v10[3] = 2143289344;
    v3 = *a1;
  }

  if (v8 != v5)
  {
    v11 = (v3 + 20 * v8);
    v12 = *v11;
    v18 = *(v11 + 1);
    v13 = (v3 + 20 * v5);
    v14 = v11;
    do
    {
      v15 = *(v14 - 5);
      v14 -= 5;
      *v11 = v15;
      *(v11 + 1) = *(v14 + 1);
      v11 -= 5;
    }

    while (v14 != v13);
    v16 = *a1 + 20 * v5;
    *v16 = v12;
    *(v16 + 4) = v18;
    v3 = *a1;
  }

  return v3 + 20 * v5 + 4;
}

uint64_t fst::ComposeDeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>,fst::DeterministicOnDemandFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::GetArc(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = a1 + 80;
  v8 = *(*(a1 + 80) + 8 * a2);
  if (!(*(**(a1 + 8) + 24))(*(a1 + 8), v8, a3, v26))
  {
    return 0;
  }

  if (v27)
  {
    v9 = (*(**(a1 + 24) + 24))(*(a1 + 24), HIDWORD(v8));
    if (v9)
    {
      v21 = v29 | (v25 << 32);
      v22 = *(a1 + 104);
      v10 = std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::PairHasher<int>,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int> const,int> const&>((a1 + 40), &v21);
      v12 = HIDWORD(v23);
      *a4 = v5;
      *(a4 + 4) = v12;
      *(a4 + 12) = *(v10 + 6);
      v13 = v28 * *(a1 + 112);
      v14 = NAN;
      if (v13 != -INFINITY)
      {
        v15 = v24 * *(a1 + 116);
        if (v15 != -INFINITY)
        {
          v14 = INFINITY;
          v16 = v15 == INFINITY || v13 == INFINITY;
          v17 = v13 + v15;
          if (!v16)
          {
            v14 = v17;
          }
        }
      }

      *(a4 + 8) = v14;
      if (v11)
      {
        ++*(a1 + 104);
        std::vector<std::pair<int,int>>::push_back[abi:ne200100](v7, &v21);
      }
    }
  }

  else
  {
    v23 = v8 & 0xFFFFFFFF00000000 | v29;
    v24 = *(a1 + 104);
    v18 = std::__hash_table<std::__hash_value_type<std::pair<int,int>,int>,std::__unordered_map_hasher<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,kaldi::PairHasher<int>,std::equal_to<std::pair<int,int>>,true>,std::__unordered_map_equal<std::pair<int,int>,std::__hash_value_type<std::pair<int,int>,int>,std::equal_to<std::pair<int,int>>,kaldi::PairHasher<int>,true>,std::allocator<std::__hash_value_type<std::pair<int,int>,int>>>::__emplace_unique_key_args<std::pair<int,int>,std::pair<std::pair<int,int> const,int> const&>((a1 + 40), &v23);
    *a4 = v5;
    *(a4 + 4) = 0;
    *(a4 + 12) = *(v18 + 6);
    *(a4 + 8) = v28 * *(a1 + 112);
    if (v19)
    {
      ++*(a1 + 104);
      std::vector<std::pair<int,int>>::push_back[abi:ne200100](v7, &v23);
    }

    return 1;
  }

  return v9;
}

uint64_t std::map<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::ProcessingBlock>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::ProcessingBlock>> const&>(v5, (v5 + 1), v4 + 4);
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

void *std::map<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void quasar::OnlineLatticeBiglmLmeFasterDecoder::mergeRegionalClassLms(void *a1@<X0>, const void ***a2@<X1>, uint64_t **a3@<X8>)
{
  std::map<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>::map[abi:ne200100](a3, a2);
  v7 = *a1;
  v5 = a1 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::getPlaceholder(v6[7], &v60);
      size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
      if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v60.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        if (!std::__tree<std::string>::__count_unique<std::string>(a3, &v60.__r_.__value_.__l.__data_))
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
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
          v43 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
          v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Using location-specific classLM slot for template=", 50);
          v31 = *(v6 + 55);
          if (v31 >= 0)
          {
            v32 = (v6 + 4);
          }

          else
          {
            v32 = v6[4];
          }

          if (v31 >= 0)
          {
            v33 = *(v6 + 55);
          }

          else
          {
            v33 = v6[5];
          }

          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ": placeholder ", 14);
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &v60;
          }

          else
          {
            v36 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v37 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v37 = v60.__r_.__value_.__l.__size_;
          }

          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " not found in regional map", 26);
          quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v43);
        }

        v9 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::find<std::string>(a3, &v60.__r_.__value_.__l.__data_);
        std::__tree<std::string>::__remove_node_pointer(a3, v9);
        v41 = v9;
        v42 = 1;
        std::string::operator=((v9 + 32), (v6 + 4));
        std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__node_handle_insert_unique[abi:ne200100]<std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>,std::__insert_return_type<std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>*,long>>,std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>>>(a3, &v41, &v39);
        v10 = v40;
        if (v40)
        {
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v40 + 32);
          operator delete(v10);
          v40 = 0;
        }

        if (quasar::gLogLevel >= 4)
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
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
          v43 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
          v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Using location-specific classLM slot for template=", 50);
          v12 = *(v6 + 55);
          if (v12 >= 0)
          {
            v13 = (v6 + 4);
          }

          else
          {
            v13 = v6[4];
          }

          if (v12 >= 0)
          {
            v14 = *(v6 + 55);
          }

          else
          {
            v14 = v6[5];
          }

          v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
          v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", using placeholder ", 20);
          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v17 = &v60;
          }

          else
          {
            v17 = v60.__r_.__value_.__r.__words[0];
          }

          if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = HIBYTE(v60.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v18 = v60.__r_.__value_.__l.__size_;
          }

          v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " from regional map", 18);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v43);
        }

        v20 = v41;
        if (v41)
        {
          std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<void>>,0>(v41 + 32);
          operator delete(v20);
        }
      }

      else
      {
        std::__tree<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>> const&>(a3, v6 + 4);
        if ((v21 & 1) != 0 && quasar::gLogLevel >= 4)
        {
          v58 = 0u;
          v59 = 0u;
          v56 = 0u;
          v57 = 0u;
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
          v43 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v43);
          v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v43, "Using decoder-specific classLM slot for template=", 49);
          v23 = *(v6 + 55);
          if (v23 >= 0)
          {
            v24 = (v6 + 4);
          }

          else
          {
            v24 = v6[4];
          }

          if (v23 >= 0)
          {
            v25 = *(v6 + 55);
          }

          else
          {
            v25 = v6[5];
          }

          v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v24, v25);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", location-specific slot not available", 38);
          quasar::QuasarInfoMessage::~QuasarInfoMessage(&v43);
        }
      }

      if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v60.__r_.__value_.__l.__data_);
      }

      v27 = v6[1];
      if (v27)
      {
        do
        {
          v28 = v27;
          v27 = *v27;
        }

        while (v27);
      }

      else
      {
        do
        {
          v28 = v6[2];
          v29 = *v28 == v6;
          v6 = v28;
        }

        while (!v29);
      }

      v6 = v28;
    }

    while (v28 != v5);
  }
}

void sub_1B5070BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  quasar::QuasarInfoMessage::~QuasarInfoMessage(va);
  if (*(v8 - 89) < 0)
  {
    operator delete(*(v8 - 112));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v7, *(v7 + 8));
  _Unwind_Resume(a1);
}

void sub_1B5070BDC(_Unwind_Exception *a1)
{
  if (*(v2 - 89) < 0)
  {
    operator delete(*(v2 - 112));
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<std::vector<std::unique_ptr<kaldi::quasar::ComputeEngineBufferItf>>>>>>::destroy(v1, *(v1 + 8));
  _Unwind_Resume(a1);
}

void sub_1B5070BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__basic_node_handle<std::__tree_node<std::__value_type<std::string,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>,void *>,std::allocator<std::pair<std::string const,std::shared_ptr<quasar::RegionalLmPlug<std::shared_ptr<fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>>>,std::__map_node_handle_specifics>::__destroy_node_pointer[abi:ne200100](va);
  JUMPOUT(0x1B5070C08);
}

uint64_t *std::__tree<std::string>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}