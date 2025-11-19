void sub_25918558C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, uint64_t a37, uint64_t a38, char a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a39 == 1)
  {
    STACK[0x2F0] = &a36;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2F0]);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x328]);
  std::optional<ULModelWithMapLabels>::~optional(&STACK[0x470]);
  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  if (a43)
  {
    a44 = a43;
    operator delete(a43);
  }

  std::optional<ULModelDO>::~optional(&STACK[0x610]);

  std::optional<CLMicroLocationModel>::~optional(&a49);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x260]);
  v52 = STACK[0x298];
  if (STACK[0x298])
  {
    STACK[0x2A0] = v52;
    operator delete(v52);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(&STACK[0x2B0]);

  STACK[0x470] = &STACK[0x2D8];
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x470]);

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnMagicalMomentsModelInternal(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationProto::Model *a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, int a10)
{
  v171 = *MEMORY[0x277D85DE8];
  v143 = a9;
  v98 = a2;
  v10 = +[ULDefaultsSingleton shared];
  v11 = [v10 defaultsDictionary];

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearnerAlgorithm"];
  v13 = [v11 objectForKey:v12];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v14 = [v13 unsignedIntValue];
  }

  else
  {
    v14 = [&unk_286A72678 unsignedIntValue];
  }

  v15 = v14;

  ULAlgorithms::createLearner(v15, &v142);
  v16 = +[ULDefaultsSingleton shared];
  v17 = [v16 defaultsDictionary];

  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberOfModelIterations"];
  v19 = [v17 objectForKey:v18];
  if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v93 = [v19 unsignedIntValue];
  }

  else
  {
    v93 = [&unk_286A72648 unsignedIntValue];
  }

  v21 = *a3;
  v20 = *(a3 + 8);
  v22 = +[ULDefaultsSingleton shared];
  v23 = [v22 defaultsDictionary];

  v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfRecordingsInStableModel"];
  v25 = [v23 objectForKey:v24];
  if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v82 = [v25 unsignedLongValue];
  }

  else
  {
    v82 = [&unk_286A72690 unsignedLongValue];
  }

  v140 = 0;
  __src = 0;
  v141 = 0;
  std::vector<double>::reserve(&__src, v93);
  if (onceToken_MicroLocationQE_Default != -1)
  {
    CLMicroLocationLearner::learnMagicalMomentsModel();
  }

  v26 = logObject_MicroLocationQE_Default;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = (*(a3 + 8) - *a3) >> 4;
    *buf = 68290050;
    *&buf[4] = 0;
    v159 = 2082;
    *v160 = "";
    *&v160[8] = 1026;
    *&v160[10] = a10;
    v161 = 1026;
    v162 = v15;
    v163 = 1026;
    v164 = v93;
    v165 = 2050;
    v166 = v27;
    _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Learning started, modelType:%{public}d, algorithmType:%{public}d, numModelIters:%{public}u, numRecordingScanningEvents:%{public}lu}", buf, 0x2Eu);
  }

  CLMicroLocationModel::CLMicroLocationModel(v127);
  v81 = (v20 - v21) >> 4;
  buf[0] = 0;
  v170 = 0;
  if (*(a7 + 320) != 1)
  {
    goto LABEL_27;
  }

  if (*(a7 + 240))
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  CLMicroLocationModel::fromProtobuf((a7 + 32), a5, &v108);
  CLMicroLocationModel::operator=(v127, &v108);
  if (SHIBYTE(v125) < 0)
  {
    operator delete(__p);
  }

  if (v122)
  {
    *(&v122 + 1) = v122;
    operator delete(v122);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v119);
  *v145 = &v117;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v145);
  if (v115 == 1 && v110)
  {
    *(&v110 + 1) = v110;
    operator delete(v110);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v109);
  if ((CLMicroLocationModel::isStable(v127) & 1) != 0 || v81 < v82 && (v75 = v128, ULSettings::get<ULSettings::MinimumNumberOfDaysWithRecordingsInStableModel>() - 1 > v75))
  {
LABEL_27:
    v97 = 0;
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v76 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v108) = 0;
      _os_log_impl(&dword_258FE9000, v76, OS_LOG_TYPE_DEFAULT, "got sufficient recording triggers, will ignore prior cluster number in learning", &v108, 2u);
    }

    v97 = 1;
  }

  CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(&v107);
  CLMicroLocationModel::CLMicroLocationModel(&v108);
  v83 = *a3;
  v84 = *(a3 + 8);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  if (v93)
  {
    v96 = 0;
    v95 = 0;
    v28 = 0;
    while (1)
    {
      if (CLMicroLocationModel::isValid(&v108))
      {
        memset(v145, 0, 32);
        *&v145[32] = 1065353216;
        for (i = v120; i; i = *i)
        {
          v30 = i[4];
          v31 = i[5];
          while (v30 != v31)
          {
            std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(v145, v30);
            v30 += 2;
          }
        }

        v32 = v104;
        v33 = v105;
        if (v104 == v105)
        {
          goto LABEL_47;
        }

        while (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v145, v32 + 5))
        {
          v32 += 28;
          if (v32 == v33)
          {
            v34 = v33;
            goto LABEL_48;
          }
        }

        if (v32 == v33 || v32 + 28 == v33)
        {
LABEL_47:
          v34 = v32;
        }

        else
        {
          v34 = v32;
          do
          {
            if (std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(v145, v32 + 33))
            {
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(v34, v32 + 28);
              v35 = *(v32 + 33);
              *(v34 + 56) = v32[35];
              *(v34 + 40) = v35;
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v34 + 64, v32 + 36);
              std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(v34 + 104, v32 + 41);
              v36 = *(v32 + 23);
              *(v34 + 160) = *(v32 + 96);
              *(v34 + 144) = v36;
              std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(v34 + 168, (v32 + 49));
              *(v34 + 192) = *(v32 + 416);
              std::vector<ULPhotoFeaturesDO>::__vdeallocate((v34 + 200));
              *(v34 + 200) = *(v32 + 53);
              *(v34 + 216) = v32[55];
              v32[53] = 0;
              v32[54] = 0;
              v32[55] = 0;
              v34 += 224;
            }

            v37 = v32 + 56;
            v32 += 28;
          }

          while (v37 != v33);
        }

LABEL_48:
        std::vector<CLMicroLocationFingerprint>::erase(&v104, v34, v105);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v145);
      }

      if (!v28)
      {
        std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v157, a4);
        CLMicroLocationLearner::initializeFingerprintVector(&v104, a3, &v107, v157, *(a1 + 32));
        std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v157);
        v96 = -1227133513 * ((v105 - v104) >> 5);
      }

      v38 = *(a4 + 24);
      if (!v38)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v38 + 48))(v38))
      {
        break;
      }

      if (!v95)
      {
        v95 = CLMicroLocationQualityEstimationAlgorithms::evaluateQualityWithNumFingerprints(&v104);
      }

      v39 = 0x6DB6DB6DB6DB6DB7 * ((v105 - v104) >> 5);
      v40 = v140;
      if (v140 >= v141)
      {
        v42 = __src;
        v43 = v140 - __src;
        v44 = (v140 - __src) >> 3;
        v45 = v44 + 1;
        if ((v44 + 1) >> 61)
        {
          std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
        }

        v46 = v141 - __src;
        if ((v141 - __src) >> 2 > v45)
        {
          v45 = v46 >> 2;
        }

        v47 = v46 >= 0x7FFFFFFFFFFFFFF8;
        v48 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v47)
        {
          v48 = v45;
        }

        if (v48)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v48);
        }

        *(8 * v44) = v39;
        v41 = 8 * v44 + 8;
        memcpy(0, v42, v43);
        v49 = __src;
        __src = 0;
        v140 = v41;
        v141 = 0;
        if (v49)
        {
          operator delete(v49);
        }
      }

      else
      {
        *v140 = v39;
        v41 = (v40 + 8);
      }

      v140 = v41;
      if (v104 == v105)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v78 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *v145 = 67109376;
          *&v145[4] = a10;
          *&v145[8] = 1024;
          *&v145[10] = v28;
          _os_log_impl(&dword_258FE9000, v78, OS_LOG_TYPE_DEFAULT, "#Warning Fingerprint vector empty for model type %d at iteration %d", v145, 0xEu);
        }

        goto LABEL_167;
      }

      if (v98)
      {
        if (v28)
        {
          CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedFingerprints(v98, &__src, v28);
        }

        else
        {
          v87 &= 0xFFFFFFFFFFFFFF00;
          v88 &= 0xFFFFFFFFFFFFFF00;
          CLMicroLocationCoreAnalyticsPublishHelper::updateModelRfCharacteristics(v98, &v104, v87, 0, v143);
        }
      }

      if (CLMicroLocationModel::isValid(v127))
      {
        if ((v97 & 1) == 0)
        {
          CLMicroLocationModel::numClusters(v127);
        }

        (*(*v142 + 16))(v145);
        CLMicroLocationModel::operator=(&v108, v145);
        if (v156 < 0)
        {
          operator delete(v155);
        }

        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v152);
        v99 = v151;
        std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v99);
        if (v150 == 1 && v148)
        {
          v149 = v148;
          operator delete(v148);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v145[16]);
        v50 = CLMicroLocationModel::numClusters(&v108);
        *v145 = v127;
        v145[8] = 1;
        CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(&v108, v145, v97, v98);
        CLMicroLocationModel::getIdentifiers(&v108, &v99);
        CLMicroLocationModel::getIdentifiers(v127, v145);
        v51 = *v145;
        if (*v145 == &v145[8])
        {
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v145, *&v145[8]);
        }

        else
        {
          LOBYTE(v52) = 1;
          while (1)
          {
            v53 = std::__tree<boost::uuids::uuid>::find<boost::uuids::uuid>(&v99, (v51 + 25));
            if (v100 == v53)
            {
              break;
            }

            v54 = v51[1];
            if (v54)
            {
              do
              {
                v55 = v54;
                v54 = *v54;
              }

              while (v54);
            }

            else
            {
              do
              {
                v55 = v51[2];
                v56 = *v55 == v51;
                v51 = v55;
              }

              while (!v56);
            }

            v52 = (v100 != v53) & v52;
            v51 = v55;
            if (v55 == &v145[8])
            {
              goto LABEL_102;
            }
          }

          v52 = 0;
LABEL_102:
          std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v145, *&v145[8]);
          if (((v97 | v52) & 1) == 0)
          {
            (*(*v142 + 16))(v145);
            CLMicroLocationModel::operator=(&v108, v145);
            if (v156 < 0)
            {
              operator delete(v155);
            }

            if (v153)
            {
              v154 = v153;
              operator delete(v153);
            }

            std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v152);
            v102[0] = v151;
            std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v102);
            if (v150 == 1 && v148)
            {
              v149 = v148;
              operator delete(v148);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v145[16]);
            v50 = CLMicroLocationModel::numClusters(&v108);
            *v145 = v127;
            v145[8] = 1;
            CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(&v108, v145, 0, v98);
          }
        }

        std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v99, v100[0]);
      }

      else
      {
        (*(*v142 + 16))(v145);
        CLMicroLocationModel::operator=(&v108, v145);
        if (v156 < 0)
        {
          operator delete(v155);
        }

        if (v153)
        {
          v154 = v153;
          operator delete(v153);
        }

        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v152);
        v99 = v151;
        std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v99);
        if (v150 == 1 && v148)
        {
          v149 = v148;
          operator delete(v148);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v145[16]);
        v50 = CLMicroLocationModel::numClusters(&v108);
        v145[0] = 0;
        v145[8] = 0;
        CLMicroLocationModel::mapIdentifiersFromOldModelAndPruneNoiseClusters(&v108, v145, v97, v98);
      }

      CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentsNumPrunedClusters(v98, &v108, v50, v28);
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v57 = logObject_MicroLocation_Default;
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);

      if (v58)
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v59 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = *(&v117 + 1);
          v61 = v117;
          v62 = CLMicroLocationModel::numClusters(&v108);
          *v145 = 68289795;
          *&v145[4] = 0;
          *&v145[8] = 2082;
          *&v145[10] = "";
          *&v145[18] = 2049;
          *&v145[20] = (v60 - v61) >> 5;
          *&v145[28] = 2049;
          *&v145[30] = v62;
          v146 = 1025;
          LODWORD(v147) = DWORD1(v108);
          _os_log_impl(&dword_258FE9000, v59, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:model, size:%{private}lu, numClusters:%{private}lu, type:%{private}d}", v145, 0x2Cu);
        }

        v63 = *(&v117 + 1);
        for (j = v117; j != v63; j += 4)
        {
          if (onceToken_MicroLocationQE_Default != -1)
          {
            CLMicroLocationLearner::learnMagicalMomentsModel();
          }

          v65 = logObject_MicroLocationQE_Default;
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v66 = *j;
            operator new();
          }
        }
      }

      v28 = (v28 + 1);
      if (v28 == v93)
      {
        goto LABEL_129;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v77 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v145 = 68289026;
      *&v145[4] = 0;
      *&v145[8] = 2082;
      *&v145[10] = "";
      _os_log_impl(&dword_258FE9000, v77, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:operation cancelled during learning of internal model}", v145, 0x12u);
    }

LABEL_167:
    *a8 = 0;
    *(a8 + 304) = 0;
  }

  else
  {
    v95 = 0;
    v96 = 0;
LABEL_129:
    LOBYTE(v102[0]) = 0;
    v103 = 0;
    if (*(a7 + 320) == 1)
    {
      if (*(a7 + 240))
      {
        std::__throw_bad_variant_access[abi:ne200100]();
      }

      v67 = *(a7 + 16);
      v68 = 0x100000000;
      if (!*(a7 + 136))
      {
        v68 = 0;
      }

      v102[0] = (v68 | *(a7 + 140));
      v102[1] = v67;
      v103 = 1;
    }

    CLMicroLocationLearner::updateModelDaysWithRecordings(a1, &v108, &v143, v102, a6);
    if (a10 != 2)
    {
      if (v81 >= v82 || (v69 = HIDWORD(v108), ULSettings::get<ULSettings::MinimumNumberOfDaysWithRecordingsInStableModel>() <= v69))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v70 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          *v145 = 0;
          _os_log_impl(&dword_258FE9000, v70, OS_LOG_TYPE_DEBUG, "set model to stable", v145, 2u);
        }

        BYTE8(v108) = 1;
      }
    }

    CLMicroLocationModel::setQualityIndicator(&v108, v95);
    CLMicroLocationQualityEstimationAlgorithms::evaluateQualityTreeBased(&v108, &v99);
    CLMicroLocationModel::setCandidateQualityIndicator(&v108, v99);
    CLMicroLocationModel::setCandidateQualityReasons(&v108, v100);
    *&v116[16] = v100[3];
    *&v116[24] = v101;
    CLMicroLocationModel::toProtobuf(&v108, v145);
    v71 = v143;
    CLMicroLocationCoreAnalyticsPublishHelper::updateLearnEventSummary(v98, &v108, v145, v143);
    if (*(a7 + 320) == 1)
    {
      if (v170)
      {
        v72 = *&v160[6];
      }

      else
      {
        v72 = 0;
      }

      CLMicroLocationCoreAnalyticsPublishHelper::updateMagicalMomentOldModelMetrics(v98, &v108, v127, v72, v170, v71);
    }

    v144[0] = CLMicroLocationModel::isStable(v127);
    v144[1] = 1;
    CLMicroLocationCoreAnalyticsPublishHelper::updateModelStabilityMetrics(v98, &v108, v144);
    *v116 = (v84 - v83) >> 4;
    *&v116[4] = v96;
    *&v116[8] = v96;
    *&v116[12] = 0;
    *a8 = v108;
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a8 + 16, v109);
    *(a8 + 56) = *&v109[40];
    *(a8 + 72) = 0;
    *(a8 + 136) = 0;
    if (v115 == 1)
    {
      *(a8 + 72) = v110;
      *(a8 + 88) = v111;
      v111 = 0;
      v110 = 0uLL;
      v73 = v113;
      *(a8 + 96) = v112;
      *(a8 + 112) = v73;
      *(a8 + 128) = v114;
      *(a8 + 136) = 1;
    }

    *(a8 + 144) = *v116;
    *(a8 + 156) = *&v116[12];
    *(a8 + 176) = v117;
    *(a8 + 192) = v118;
    v117 = 0uLL;
    v118 = 0;
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__hash_table(a8 + 200, v119);
    v74 = v123;
    *(a8 + 240) = v121;
    *(a8 + 248) = v122;
    *(a8 + 264) = v74;
    v122 = 0uLL;
    *(a8 + 272) = __p;
    *(a8 + 288) = v125;
    v123 = 0;
    __p = 0uLL;
    v125 = 0;
    *(a8 + 296) = v126;
    *(a8 + 304) = 1;
    CLMicroLocationProto::Model::~Model(v145);
    if (v100[0])
    {
      v100[1] = v100[0];
      operator delete(v100[0]);
    }
  }

  v102[0] = &v104;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](v102);
  if (SHIBYTE(v125) < 0)
  {
    operator delete(__p);
  }

  if (v122)
  {
    *(&v122 + 1) = v122;
    operator delete(v122);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(v119);
  v104 = &v117;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v104);
  if (v115 == 1 && v110)
  {
    *(&v110 + 1) = v110;
    operator delete(v110);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v109);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v107.var1);
  if (v170 == 1)
  {
    if (v169 == 1 && v168 < 0)
    {
      operator delete(v167);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v164);
  }

  if (v138 < 0)
  {
    operator delete(v137);
  }

  if (v135)
  {
    v136 = v135;
    operator delete(v135);
  }

  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v134);
  *buf = &v133;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v132 == 1 && v130)
  {
    v131 = v130;
    operator delete(v130);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v129);
  if (__src)
  {
    v140 = __src;
    operator delete(__src);
  }

  v79 = v142;
  v142 = 0;
  if (v79)
  {
    (*(*v79 + 8))(v79);
  }

  v80 = *MEMORY[0x277D85DE8];
}

void sub_259186C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, std::runtime_error a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *a58)
{
  a46.__vftable = &a48;
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a46);
  CLMicroLocationModel::~CLMicroLocationModel(&a58);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a53);
  std::optional<ULModelDO>::~optional(&STACK[0x580]);
  CLMicroLocationModel::~CLMicroLocationModel(&STACK[0x2C0]);
  v59 = STACK[0x3F0];
  if (STACK[0x3F0])
  {
    STACK[0x3F8] = v59;
    operator delete(v59);
  }

  v60 = STACK[0x408];
  STACK[0x408] = 0;
  if (v60)
  {
    (*(*v60 + 8))(v60);
  }

  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnLocationSimilarityListModel(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uuid **a7@<X6>, uuid **a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, uint64_t a11)
{
  v102 = *MEMORY[0x277D85DE8];
  v63 = a10;
  v19 = a2;
  v62 = 0;
  v100 = 0;
  v101 = 0;
  *buf = 0;
  boost::uuids::detail::random_provider_base::random_provider_base(buf);
  v100 = boost::uuids::random_generator_pure::operator()(buf);
  v101 = v20;
  boost::uuids::detail::random_provider_base::destroy(buf);
  CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(&v61);
  CLMicroLocationLearner::createLSLMapLabelsForLabeledScanEventUUIDs(a1, a7, &v61, a3, a5, &v100, &v62, &v59);
  v21 = *(a3 + 24);
  if (!v21)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if (!(*(*v21 + 48))(v21))
  {
    CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&v58);
    CLMicroLocationLearner::createLSLMapLabelsForLabeledScanEventUUIDs(a1, a8, &v58, a3, a5, &v100, &v62, &v56);
    v22 = *(a3 + 24);
    if (!v22)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v22 + 48))(v22))
    {
      *a9 = 0;
      *(a9 + 344) = 0;
LABEL_52:
      *buf = &v56;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v58.var1);
      goto LABEL_53;
    }

    std::vector<ULMapLabelDOAndLabelObjectID>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>>(&v59, v60, v56, v57, 0xEEEEEEEEEEEEEEEFLL * ((v57 - v56) >> 4));
    v23 = v62;
    if (v62)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v24 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v25 = a4 + 32;
        if (*(a4 + 55) < 0)
        {
          v25 = *(a4 + 32);
        }

        *buf = 68289795;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2049;
        *&buf[20] = v23;
        *&buf[28] = 2049;
        v65 = -286331153 * ((v60 - v59) >> 4);
        v66 = 2082;
        v67 = v25;
        v26 = "{msg%{public}.0s:Similarity List Model Learning, generated LSL, Num labeled fingerprints:%{private}lu, Num map labels:%{private}lu, Client ID:%{public, location:escape_only}s}";
        v27 = v24;
        v28 = 48;
LABEL_20:
        _os_log_impl(&dword_258FE9000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v29 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        v30 = a4 + 32;
        if (*(a4 + 55) < 0)
        {
          v30 = *(a4 + 32);
        }

        *buf = 68289282;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2082;
        *&buf[20] = v30;
        v26 = "{msg%{public}.0s:Similarity List Model Learning, learned without labeled fingerprints, Client ID:%{public, location:escape_only}s}";
        v27 = v29;
        v28 = 28;
        goto LABEL_20;
      }
    }

    v31 = *(a5 + 148) - v23;
    if (v31 < 0)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v32 = logObject_MicroLocation_Default;
      v33 = os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT);
      v31 = 0;
      if (v33)
      {
        v34 = *(a5 + 148);
        *buf = 68289538;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *&buf[20] = v34;
        *&buf[24] = 1026;
        *&buf[26] = v23;
        _os_log_impl(&dword_258FE9000, v32, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning, number of total input fingerprints is smaller than number of labeled fingerprints, note labeled fingerprints include localization triggers which used a different fp generation configuration, Number of Input ValidFingerprints:%{public}u, Number of Input Valid Fingerprints Labeled:%{public}u}", buf, 0x1Eu);
        v31 = 0;
      }
    }

    *(a5 + 152) = v31;
    *(a5 + 156) = v23;
    CLMicroLocationLearner::updateModelDaysWithRecordings(a1, a5, &v63, a11, a6);
    if (CLMicroLocationModel::getQualityIndicator(a5) == 3)
    {
      *(a5 + 8) = 1;
      if ((*(a11 + 16) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (*(a11 + 16) != 1)
      {
LABEL_32:
        *buf = 0;
        goto LABEL_33;
      }

      *(a5 + 8) = *(a11 + 4);
    }

    *buf = *(a11 + 4) | 0x100;
LABEL_33:
    CLMicroLocationCoreAnalyticsPublishHelper::updateModelStabilityMetrics(v19, a5, buf);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v35 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = CLMicroLocationModel::numRecordingsBeforePruning(a5);
      v38 = *(a5 + 176);
      v37 = *(a5 + 184);
      v39 = CLMicroLocationModel::numClusters(a5);
      v40 = *(a5 + 4);
      v41 = *(a5 + 40);
      v42 = *(a5 + 144);
      v43 = *(a5 + 148);
      v45 = *(a5 + 152);
      v44 = *(a5 + 156);
      v46 = *(a5 + 160);
      *buf = 68291842;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = v36;
      *&buf[28] = 2050;
      v65 = (v37 - v38) >> 5;
      v66 = 2050;
      v67 = v39;
      v68 = 1026;
      v69 = v40;
      v70 = 2050;
      v71 = v41;
      v72 = 1026;
      v73 = v42;
      v74 = 1026;
      v75 = v43;
      v76 = 1026;
      v77 = v44;
      v78 = 1026;
      v79 = v45;
      v80 = 2050;
      v81 = 0xEEEEEEEEEEEEEEEFLL * ((v60 - v59) >> 4);
      v82 = 1026;
      v83 = v46;
      _os_log_impl(&dword_258FE9000, v35, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Microlocation model learned, numFingerprints before pruning:%{public}lu, numFingerprints after pruning:%{public}lu, numClusters:%{public}lu, type:%{public}d, numAnchors:%{public}lu, Number of Recording triggers at current LOI:%{public}u, Number of Input Valid Fingerprints:%{public}u, Number of Labeled Fingerprints:%{public}u, Number of Unlabeled Fingerprints:%{public}u, Number of Map Labels:%{public}lu, Number of WiFi Access Points:%{public}u}", buf, 0x68u);
    }

    CLMicroLocationModel::toProtobuf(a5, v55);
    v47 = v100;
    v48 = v101;
    v49 = v63;
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v54, v55);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(buf, v54);
    v84 = 0;
    if (*(a4 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a4 + 32), *(a4 + 40));
    }

    else
    {
      __p = *(a4 + 32);
    }

    v53 = 1;
    v93 = *(a4 + 8);
    v94 = 1;
    ULModelDO::ULModelDO(v95, v47, v48, buf, &__p, &v93, *a6, a6[1], v49);
    if (v53 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
    CLMicroLocationProto::Model::~Model(v54);
    ULModelWithMapLabels::ULModelWithMapLabels(buf, v95, &v59);
    *a9 = *buf;
    *(a9 + 12) = *&buf[12];
    std::__variant_detail::__move_constructor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:ne200100]((a9 + 32), &v65 + 2);
    *(a9 + 248) = 0;
    *(a9 + 272) = 0;
    if (v87 == 1)
    {
      *(a9 + 248) = v85;
      *(a9 + 264) = v86;
      v86 = 0;
      v85 = 0uLL;
      *(a9 + 272) = 1;
    }

    *(a9 + 312) = v90;
    v50 = v89;
    *(a9 + 280) = v88;
    *(a9 + 296) = v50;
    *(a9 + 320) = v91;
    *(a9 + 336) = v92;
    v91 = 0uLL;
    v92 = 0;
    *(a9 + 344) = 1;
    v54[0] = &v91;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](v54);
    if (v87 == 1 && SHIBYTE(v86) < 0)
    {
      operator delete(v85);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((&v65 + 2));
    if (v99 == 1 && v98 < 0)
    {
      operator delete(v97);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v96);
    CLMicroLocationProto::Model::~Model(v55);
    goto LABEL_52;
  }

  *a9 = 0;
  *(a9 + 344) = 0;
LABEL_53:
  *buf = &v59;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v61.var1);

  v51 = *MEMORY[0x277D85DE8];
}

void sub_259187744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&STACK[0x270]);
  CLMicroLocationProto::Model::~Model(&a13);
  CLMicroLocationProto::Model::~Model(&a39);
  STACK[0x270] = &a65;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a70);
  STACK[0x270] = &STACK[0x210];
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x270]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x238]);

  _Unwind_Resume(a1);
}

uint64_t std::optional<std::vector<ULMapLabelDOAndLabelObjectID>>::operator=[abi:ne200100]<std::vector<ULMapLabelDOAndLabelObjectID>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

uint64_t std::optional<CLMicroLocationModel>::~optional(uint64_t a1)
{
  if (*(a1 + 304) == 1)
  {
    if (*(a1 + 295) < 0)
    {
      operator delete(*(a1 + 272));
    }

    v2 = *(a1 + 248);
    if (v2)
    {
      *(a1 + 256) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(a1 + 200);
    v5 = (a1 + 176);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 136) == 1)
    {
      v3 = *(a1 + 72);
      if (v3)
      {
        *(a1 + 80) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 16);
  }

  return a1;
}

void CLMicroLocationLearner::learnHomeSlamModelForLOI(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, double a6)
{
  v210 = *MEMORY[0x277D85DE8];
  v106 = a4;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 63) >= 0)
    {
      v9 = a3 + 40;
    }

    else
    {
      v9 = *(a3 + 40);
    }

    [MEMORY[0x277CCACA8] stringWithUTF8String:v9];
    objc_claimAutoreleasedReturnValue();
    operator new();
  }

  if (!ULLoiTypes::rtLoiStringToLocationType((a3 + 40)))
  {
    v10 = ULSettings::get<ULSettings::OdometrySource>();
    v11 = +[ULDefaultsSingleton shared];
    v12 = [v11 defaultsDictionary];

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULReferenceOdometrySource"];
    v14 = [v12 objectForKey:v13];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v14 unsignedIntValue];
    }

    else
    {
      [&unk_286A726D8 unsignedIntValue];
    }

    v15 = (*(**(a1 + 32) + 128))(*(a1 + 32));
    *__p = *(a3 + 24);
    *&__p[16] = [MEMORY[0x277CCAD78] nilBoostUUID];
    *&__p[24] = v16;
    v149 = 0;
    v147 = 0;
    v148 = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&v147, __p, v184, 2uLL);
    if (v15)
    {
      LOBYTE(v101) = 1;
      [v15 efficientlyFetchOdometryEntriesWithLOIGroupUUIDs:&v147 odometrySource:v10 startDate:0 endDate:v106 fetchLimit:0 newest:1 ascending:v101];
    }

    else
    {
      v151 = 0;
      v150 = 0;
      v152 = 0;
    }

    if (v147)
    {
      v148 = v147;
      operator delete(v147);
    }

    v145 = 0u;
    v144 = 0u;
    v146 = 1065353216;
    v142 = 0;
    v141 = 0;
    v143 = 0;
    v17 = +[ULDefaultsSingleton shared];
    v18 = [v17 defaultsDictionary];

    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamUtilizeOnlyStaticMotionScanningEvents"];
    v20 = [v18 objectForKey:v19];
    if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = [v20 BOOLValue];
    }

    else
    {
      v21 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v22 = v21;

    v23 = (*(**(a1 + 32) + 144))(*(a1 + 32));
    if (v22)
    {
      v24 = 65539;
    }

    else
    {
      v24 = 0;
    }

    v103 = v24;
    v25 = +[ULDefaultsSingleton shared];
    v26 = [v25 defaultsDictionary];

    v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearnOnlyFromPhotoFeatures"];
    v28 = [v26 objectForKey:v27];
    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = [v28 BOOLValue];
    }

    else
    {
      v29 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v30 = v29;

    v31 = +[ULDefaultsSingleton shared];
    v32 = [v31 defaultsDictionary];

    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearnFromLabeledEventsOnly"];
    v34 = [v32 objectForKey:v33];
    if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v35 = [v34 BOOLValue];
    }

    else
    {
      v35 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v36 = v35;

    v37 = +[ULDefaultsSingleton shared];
    v38 = [v37 defaultsDictionary];

    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearningScanningEventsLimit"];
    v40 = [v38 objectForKey:v39];
    if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v41 = [v40 unsignedIntValue];
    }

    else
    {
      v41 = [&unk_286A72630 unsignedIntValue];
    }

    v42 = v41;

    if (v23)
    {
      LOWORD(v102) = 257;
      LOBYTE(v101) = v36;
      [v23 fetchScanningEventUUIDsWithLOIGroupUUID:a3 + 24 scanType:0 motionState:v103 scansWithPhotoFeatures:v30 | 0x100 startDate:0 endDate:v106 onlyScansWithLabels:v101 fetchLimit:v42 newest:v102 ascending:?];
    }

    else
    {
      v139 = 0;
      v138 = 0;
      v140 = 0;
    }

    CLMicroLocationFingerprintConfiguration::getRecordingConfigurationFromSettings(&v135);
    CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&v131);
    v43 = v138;
    v44 = v139;
    if (v138 != v139)
    {
      do
      {
        v45 = (*(**(a1 + 32) + 144))(*(a1 + 32));
        buf.var0 = *v43;
        memset(__p, 0, 24);
        std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(__p, &buf, &buf.var1, 1uLL);
        if (v45)
        {
          [v45 fetchScanningEventsWithLabelObjectIDsForUUIDs:__p];
        }

        else
        {
          *&v175.var0.data[8] = 0;
          *v175.var0.data = 0;
          v176 = 0;
        }

        if (*__p)
        {
          *&__p[8] = *__p;
          operator delete(*__p);
        }

        if (*v175.var0.data != *&v175.var0.data[8])
        {
          *buf.var0.data = v135;
          *&buf.var0.data[8] = v136;
          std::unordered_map<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>::unordered_map(&buf.var1, v137);
          v46 = *&v175.var0.data[8];
          if (*(*&v175.var0.data[8] - 256) == 1)
          {
            *buf.var0.data = v131;
            *&buf.var0.data[8] = v132;
            v160[2] = v134;
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,void *> *>>(&buf.var1.var0.var1.var0, v133[2], 0);
            v47 = *&v175.var0.data[8] - 296;
            v48 = v142;
            if (v142 >= v143)
            {
              v49 = std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__emplace_back_slow_path<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>> const&>(&v141, v47);
            }

            else
            {
              std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](v142, v47);
              v49 = (v48 + 296);
            }

            v142 = v49;
            v46 = *&v175.var0.data[8];
          }

          CLMicroLocationFingerprint::create((v46 - 296), &buf, __p);
          if (v197)
          {
            std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,CLMicroLocationFingerprint const&>(&v144, v184 + 1);
            if (v197)
            {
              v121[0] = &v195;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v121);
              if (v192)
              {
                v193 = v192;
                operator delete(v192);
              }

              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v187);
              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v185);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(__p);
            }
          }

          std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf.var1);
        }

        *__p = &v175;
        std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](__p);
        ++v43;
      }

      while (v43 != v44);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v50 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0x14C1BACF914C1BADLL * ((v142 - v141) >> 3)];
      v52 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xEB3E45306EB3E453 * ((v142 - v141) >> 3) + ((v139 - v138) >> 4)];
      v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:*(&v145 + 1)];
      v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:(v151 - v150) >> 6];
      *__p = 138413058;
      *&__p[4] = v51;
      *&__p[12] = 2112;
      *&__p[14] = v52;
      *&__p[22] = 2112;
      *&__p[24] = v53;
      LOWORD(v184[0]) = 2112;
      *(v184 + 2) = v54;
      _os_log_impl(&dword_258FE9000, v50, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: localizationScansASC: %@, recordingScansASC: %@, fingerprintsASC: %@, odometryEntriesASC: %@", __p, 0x2Au);
    }

    v208 = 0;
    v209 = 0;
    *__p = 0;
    boost::uuids::detail::random_provider_base::random_provider_base(__p);
    v208 = boost::uuids::random_generator_pure::operator()(__p);
    v209 = v55;
    boost::uuids::detail::random_provider_base::destroy(__p);
    CLMicroLocationLearner::getAnchorAppearanceMapForLoi(a1, a3 + 24, v130);
    LOBYTE(v121[0]) = 0;
    v129 = 0;
    if (*(a1 + 72) == 1)
    {
      v186 = 0;
      memset(v185, 0, sizeof(v185));
      memset(v184, 0, sizeof(v184));
      memset(__p, 0, sizeof(__p));
      v187 = 1065353216;
      v198[56] = 0;
      v198[64] = 0;
      v198[96] = 0;
      v203 = 0;
      v204 = 0;
      v205 = 0;
      v206 = 0;
      v207 = 0;
      *v188 = 0u;
      v189 = 0u;
      v190 = 0u;
      v191 = 0;
      v200 = 0;
      v199 = 0;
      v202 = 0;
      v201 = 0;
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v182, a2);
      ULHomeSlamMapper::generateModel(&v150, &v144, v130, v182, __p, 1, &buf);
      std::__optional_storage_base<ULHomeSlamModel,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULHomeSlamModel,false>>(v121, &buf);
      if (v169[8] == 1)
      {
        *v175.var0.data = &v168;
        std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v175);
        if (SHIBYTE(v166) < 0)
        {
          operator delete(v165);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v161);
        *v175.var0.data = v160;
        std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v175);
        if (buf.var1.var0.var0.var0[16] == 1)
        {
          std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&buf.var1.var0.var1.var1, 0);
          *v175.var0.data = &buf;
          std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v175);
        }
      }

      std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v182);
      v56 = *(a1 + 24);
      v57 = v208;
      v58 = v209;
      ULHomeSlamMapperIntermediateOutputs::ULHomeSlamMapperIntermediateOutputs(v120, __p);
      (*(*v56 + 56))(v56, v57, v58, v120);
      ULHomeSlamMapperIntermediateOutputs::~ULHomeSlamMapperIntermediateOutputs(v120);
      ULHomeSlamMapperIntermediateOutputs::~ULHomeSlamMapperIntermediateOutputs(__p);
    }

    else
    {
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v181, a2);
      ULHomeSlamMapper::generateModel(&v150, &v144, v130, v181, 0, 0, __p);
      std::__optional_storage_base<ULHomeSlamModel,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULHomeSlamModel,false>>(v121, __p);
      if (v196 == 1)
      {
        *buf.var0.data = &v194;
        std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (SHIBYTE(v189) < 0)
        {
          operator delete(v188[1]);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v185);
        *buf.var0.data = v184 + 8;
        std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (LOBYTE(v184[0]) == 1)
        {
          std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&__p[24], 0);
          *buf.var0.data = __p;
          std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&buf);
        }
      }

      std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v181);
    }

    if (v129)
    {
      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::clear(&v144);
      v139 = v138;
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v59 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        operator new();
      }

      __p[0] = 0;
      __p[24] = 0;
      v61 = CLMicroLocationCoreAnalyticsPublishHelper::initializeModelLearningEventMetricsDict(a5, 4, __p);
      if (__p[24] == 1 && (__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }

      if ((v129 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULHomeSlamModel::toProtobuf(v121, v119);
      v62 = v208;
      v63 = v209;
      ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(&buf, v119);
      ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>::ULProtoMessageWrapper(__p, &buf);
      v196 = 1;
      LOBYTE(v116) = 0;
      v118 = 0;
      LOBYTE(v155) = 0;
      LOBYTE(v157) = 0;
      ULModelDO::ULModelDO(&v175, v62, v63, __p, &v116, &v155, *(a3 + 24), *(a3 + 32), a6);
      if (v118 == 1 && v117 < 0)
      {
        operator delete(v116);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p);
      CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&buf);
      if ((v129 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      ULModel::ULModel(__p, v121);
      var0 = 0;
      v115 = 0;
      if ((v206 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      if (ULHomeSlamModel::getWorkMode(v198))
      {
        v64 = (*(**(a1 + 32) + 48))(*(a1 + 32));
        v65 = v64;
        if (v64)
        {
          [v64 fetchAllLabelsAndObjectIDsASCWithLOIGroupUUID:a3 + 24];
        }

        else
        {
          v156 = 0;
          v155 = 0;
          v157 = 0;
        }

        v69 = (*(**(a1 + 32) + 144))(*(a1 + 32));
        v70 = +[ULDefaultsSingleton shared];
        v71 = [v70 defaultsDictionary];

        v72 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearningImageScanningEventsLimit"];
        v73 = [v71 objectForKey:v72];
        if (v73 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v74 = [v73 unsignedIntValue];
        }

        else
        {
          v74 = [&unk_286A725E8 unsignedIntValue];
        }

        v75 = v74;

        if (v69)
        {
          LOWORD(v102) = 257;
          LOBYTE(v101) = 0;
          [v69 oneByOneFetchScanningEventsWithLOIGroupUUID:a3 + 24 scanType:0 motionState:v103 scansWithPhotoFeatures:257 startDate:0 endDate:v106 onlyScansWithLabels:v101 fetchLimit:v75 newest:v102 ascending:?];
        }

        else
        {
          v111 = 0;
          v112 = 0;
          v113 = 0;
        }

        v108 = 0;
        v109 = 0;
        v110 = 0;
        std::vector<ULScanningEventDO>::reserve(&v108, 0x14C1BACF914C1BADLL * ((v142 - v141) >> 3));
        v76 = v141;
        v77 = v142;
        for (i = &v108; v76 != v77; v76 = (v76 + 296))
        {
          ULScanningEventDO::ULScanningEventDO(&buf, v76);
          std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&i);
          *v174 = v169;
          std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v174);
          if (v166)
          {
            v167 = v166;
            operator delete(v166);
          }

          if (v164)
          {
            v165 = v164;
            operator delete(v164);
          }

          if (v162)
          {
            v163 = v162;
            operator delete(v162);
          }

          *v174 = v161;
          std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](v174);
          if (*(&buf.var1.var0.var1 + 23) < 0)
          {
            operator delete(buf.var1.var0.var1.var0);
          }
        }

        memset(&buf, 0, 24);
        p_buf = &buf;
        std::vector<ULScanningEventDO>::reserve(&buf, 0xF0F0F0F0F0F0F0F1 * ((v109 - v108) >> 4) - 0xF0F0F0F0F0F0F0FLL * ((v112 - v111) >> 4));
        v80 = v108;
        v79 = v109;
        v82 = v111;
        v81 = v112;
        v153 = &buf;
        if (v108 == v109)
        {
LABEL_130:
          i = p_buf;
          while (v82 != v81)
          {
            std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&i);
            v82 += 34;
          }
        }

        else
        {
          while (v82 != v81)
          {
            if (*(v82 + 6) >= *(v80 + 48))
            {
              std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&v153);
              v80 += 272;
            }

            else
            {
              std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&v153);
              v82 += 34;
            }

            if (v80 == v79)
            {
              p_buf = v153;
              goto LABEL_130;
            }
          }

          i = v153;
          while (v80 != v79)
          {
            std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](&i);
            v80 += 272;
          }
        }

        v83 = *buf.var0.data;
        v84 = *&buf.var0.data[8];
        if (*buf.var0.data != *&buf.var0.data[8])
        {
          while (1)
          {
            v85 = v83 + 34;
            if (v83 + 34 == *&buf.var0.data[8])
            {
              break;
            }

            v86 = *v83;
            v87 = v83[1];
            v89 = v83[34];
            v88 = v83[35];
            v90 = v86 == v89 && v87 == v88;
            v83 = v85;
            if (v90)
            {
              v91 = v85 + 34;
              v92 = v85 - 34;
              while (v91 != v84)
              {
                if (*v92 != *v91 || v92[1] != v91[1])
                {
                  v92 += 34;
                  ULScanningEventDO::operator=(v92, v91);
                }

                v91 += 34;
              }

              v94 = (v92 + 34);
              goto LABEL_153;
            }
          }
        }

        v94 = *&buf.var0.data[8];
LABEL_153:
        std::vector<ULScanningEventDO>::erase(&buf, v94, v84);
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v95 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
        {
          v96 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xF0F0F0F0F0F0F0F1 * ((v156 - v155) >> 3)];
          v97 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:0xF0F0F0F0F0F0F0F1 * ((*&buf.var0.data[8] - *buf.var0.data) >> 4)];
          *v174 = 138412546;
          *&v174[4] = v96;
          *&v174[12] = 2112;
          *&v174[14] = v97;
          _os_log_impl(&dword_258FE9000, v95, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: running learnHomeSlamModel_ReplayPhase with labelsASC: %@, mergedScanningEvents: %@", v174, 0x16u);
        }

        CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase(__p, &buf, &v150, &v155, a2, &v208, v174);
        std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(&var0);
        var0 = *v174;
        v115 = *&v174[16];
        memset(v174, 0, 24);
        i = v174;
        std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&i);
        *v174 = &buf;
        std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](v174);
        *buf.var0.data = &v108;
        std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&buf);
        *buf.var0.data = &v111;
        std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&buf);
        *buf.var0.data = &v155;
        std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&buf);
      }

      else
      {
        v66 = v151;
        v67 = v150;
        while (v66 != v67)
        {
          v66 -= 64;
          std::__destroy_at[abi:ne200100]<ULOdometryDO,0>(v66);
        }

        v151 = v67;
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v68 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf.var0.data = 0;
          _os_log_impl(&dword_258FE9000, v68, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: learnHomeSlamModel_ReplayPhase_RFOnly", buf.var0.data, 2u);
        }

        CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase_RFOnly(__p, &v141, a2, &v208, &buf);
        std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(&var0);
        var0 = buf.var0;
        v115 = buf.var1.var0.var1.var0;
        memset(&buf, 0, 24);
        v155 = &buf;
        std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v155);
      }

      v98 = *(a2 + 24);
      if (!v98)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v98 + 48))(v98))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v99 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
        {
          *buf.var0.data = 0;
          _os_log_impl(&dword_258FE9000, v99, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: Aborting persistSingleModel", buf.var0.data, 2u);
        }
      }

      else
      {
        ULModelDO::ULModelDO(&buf, &v175);
        v173 = 1;
        v156 = 0;
        v155 = 0;
        v157 = 0;
        std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(&v155, *var0.data, *&var0.data[8], 0xEEEEEEEEEEEEEEEFLL * ((*&var0.data[8] - *var0.data) >> 4));
        v158 = 1;
        CLMicroLocationLearner::persistSingleModel(a1, 4, a5, &buf, &v155, v61);
        if (v158 == 1)
        {
          v111 = &v155;
          std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v111);
        }

        if (v173 == 1)
        {
          if (v172 == 1 && v171 < 0)
          {
            operator delete(v170);
          }

          std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&buf.var1.var0.var1 + 4);
        }
      }

      *buf.var0.data = &var0;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&buf);
      ULModel::~ULModel(__p);
      if (v180 == 1 && v179 < 0)
      {
        operator delete(v178);
      }

      std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v177);
      CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(v119);
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v60 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *__p = 0;
        _os_log_impl(&dword_258FE9000, v60, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModelForLOI]: couldnt learn model", __p, 2u);
      }
    }

    if (v129 == 1)
    {
      *__p = &v128;
      std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v127 < 0)
      {
        operator delete(v126);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v125);
      *__p = &v124;
      std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v123 == 1)
      {
        std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](&v122, 0);
        *__p = v121;
        std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](__p);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v130);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v133);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v137);
    if (v138)
    {
      v139 = v138;
      operator delete(v138);
    }

    *__p = &v141;
    std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](__p);
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::~__hash_table(&v144);
    *__p = &v150;
    std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](__p);
  }

  v100 = *MEMORY[0x277D85DE8];
}

void sub_2591891E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  a20 = &STACK[0x590];
  std::vector<ULLabelDOAndObjectID>::__destroy_vector::operator()[abi:ne200100](&a20);
  a20 = &a23;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a20);
  ULModel::~ULModel(&STACK[0x8A0]);
  ULModelDO::~ULModelDO(&STACK[0x720]);
  CLMicroLocationProto::HomeSlamModel::~HomeSlamModel(&a30);

  std::optional<ULHomeSlamModel>::~optional(&STACK[0x370]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x448]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x490]);
  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&STACK[0x4C8]);
  v36 = STACK[0x4F0];
  if (STACK[0x4F0])
  {
    STACK[0x4F8] = v36;
    operator delete(v36);
  }

  STACK[0x370] = &STACK[0x508];
  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::~__hash_table(&STACK[0x520]);
  STACK[0x370] = &STACK[0x568];
  std::vector<ULOdometryDO>::__destroy_vector::operator()[abi:ne200100](&STACK[0x370]);

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::OdometrySource>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULOdometrySource"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A726C0 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::optional<ULHomeSlamModel>::~optional(uint64_t a1)
{
  if (*(a1 + 208) == 1)
  {
    v3 = (a1 + 184);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 64);
    v3 = (a1 + 40);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 32) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100]((a1 + 24), 0);
      v3 = a1;
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v3);
    }
  }

  return a1;
}

uint64_t std::vector<ULScanningEventDO>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    while (v4 != v6)
    {
      ULScanningEventDO::operator=(v7, v4);
      v4 += 272;
      v7 += 272;
    }

    std::vector<ULScanningEventDO>::__base_destruct_at_end[abi:ne200100](a1, v7);
  }

  return a2;
}

void CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase(ULModel *a1@<X4>, uint64_t *a2@<X0>, uint64_t **a3@<X1>, uint64_t *a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v102 = *MEMORY[0x277D85DE8];
  ULHomeSlamLocalizer::reset(a1, v99);
  LOBYTE(v66[0]) = 0;
  v72 = 0;
  a7[1] = 0;
  a7[2] = 0;
  *a7 = 0;
  v7 = *a2;
  v8 = *a3;
  v59 = *a4;
  v52 = 0;
  v50 = ULSettings::get<ULSettings::OdometrySource>();
  v9 = 0x277CCA000uLL;
  while ((v7 != a2[1] || v8 != a3[1]) && v59 != a4[1])
  {
    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    v12 = *(a5 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v13 = a7;
    v14 = (*(*v12 + 48))(v12);
    if (v14)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
        v13 = a7;
      }

      v15 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf.var0.data = 0;
        _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModel_ReplayPhase]: Aborting learnHomeSlamModel_ReplayPhase", buf.var0.data, 2u);
      }

      std::vector<ULMapLabelDOAndLabelObjectID>::__base_destruct_at_end[abi:ne200100](v13, *v13);
      goto LABEL_12;
    }

    if (v7 == a2[1])
    {
      v16 = 1.79769313e308;
    }

    else
    {
      v16 = *(v7 + 48);
    }

    if (v8 == a3[1])
    {
      v17 = 1.79769313e308;
    }

    else
    {
      v17 = *(v8 + 5);
    }

    if (v59 == a4[1])
    {
      v18 = 1.79769313e308;
    }

    else
    {
      v18 = *(v59 + 40);
    }

    if (v17 >= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = v17;
    }

    if (v18 >= v19)
    {
      v18 = v19;
    }

    if (v18 == v16)
    {
      CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(&buf);
      CLMicroLocationFingerprint::create(v7, &buf, &v91);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&buf.var1);
      if (v98)
      {
        if (v96 == v97)
        {
          ULHomeSlamLocalizer::localize(a1, &v91, v99, 1, &buf);
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v66, &buf);
          if (v82[0] == 1)
          {
            if (__p)
            {
              v81 = __p;
              operator delete(__p);
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
            {
              *&buf.var0.data[8] = *buf.var0.data;
              operator delete(*buf.var0.data);
            }
          }
        }

        else
        {
          ULHomeSlamLocalizer::localize(a1, &v91, v99, 0, &buf);
          std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v66, &buf);
          if (v82[0] == 1)
          {
            if (__p)
            {
              v81 = __p;
              operator delete(__p);
            }

            if (v78)
            {
              v79 = v78;
              operator delete(v78);
            }

            if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
            {
              *&buf.var0.data[8] = *buf.var0.data;
              operator delete(*buf.var0.data);
            }
          }

          if (v72 == 1)
          {
            ULLocalizationResult::getPointLocation(v66);
            if ((v20 & 0x100000000) != 0)
            {
              if ((*(a1 + 520) & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              if ((v72 & 1) == 0 || (PointLocation = ULLocalizationResult::getPointLocation(v66), (v22 & 0x100000000) == 0) || (*buf.var0.data = PointLocation, *&buf.var0.data[8] = v22, v98 != 1))
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              CLMicroLocationFingerprint::CLMicroLocationFingerprint(&buf.var1, &v91);
              ULHomeSlamModel::addPositionedImage(a1 + 39, &buf);
              v63 = &v89;
              std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v63);
              if (v85)
              {
                v86 = v85;
                operator delete(v85);
              }

              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v82);
              std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v79);
              std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&buf.var1);
            }
          }
        }
      }

      if (v98 == 1)
      {
        *buf.var0.data = &v96;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&buf);
        if (v94)
        {
          v95 = v94;
          operator delete(v94);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v92);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v91.var2.var0.var1.var2);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(&v91);
      }

      v7 += 272;
      goto LABEL_82;
    }

    if (v18 != v17)
    {
      v25 = [ULOdometryStatus alloc];
      v26 = [MEMORY[0x277D28868] deviceClass];
      v27 = [MEMORY[0x277CBEAA8] date];
      v28 = [(ULOdometryStatus *)v25 initWithDeviceIdentifier:v26 odometrySourceType:v50 deltaPositionX:&unk_286A725D0 deltaPositionY:&unk_286A725D0 deltaPositionZ:&unk_286A725D0 date:v27];

      if (v72)
      {
        ULHomeSlamLocalizer::localize(a1, v28, v99, 0, &buf);
        std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v66, &buf);
        if (v82[0] == 1)
        {
          if (__p)
          {
            v81 = __p;
            operator delete(__p);
          }

          if (v78)
          {
            v79 = v78;
            operator delete(v78);
          }

          if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
          {
            *&buf.var0.data[8] = *buf.var0.data;
            operator delete(*buf.var0.data);
          }
        }

        if ((v72 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        ULLocalizationResult::getBlueDotConfidence(v66);
        if (v29)
        {
          if ((v72 & 1) == 0 || (BlueDotConfidence = ULLocalizationResult::getBlueDotConfidence(v66), (v31 & 1) == 0))
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          if (BlueDotConfidence >= 2)
          {
            if ((v72 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v63 = ULLocalizationResult::getPointLocation(v66);
            v64 = v43;
            v65 = v44;
            buf.var0.data[0] = 0;
            buf.var1.var0.var0.var0[8] = 0;
            LOBYTE(v61[0]) = 0;
            v62 = 0;
            v60 = cl::chrono::CFAbsoluteTimeClock::now();
            ULMapLabelDO::ULMapLabelDO(&v91, &v63, &buf, v61, &v60, v59, a6);
            if (v62 == 1 && v61[0])
            {
              v61[1] = v61[0];
              operator delete(v61[0]);
            }

            if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
            {
              *&buf.var0.data[8] = *buf.var0.data;
              operator delete(*buf.var0.data);
            }

            ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(&buf, &v91, *(v59 + 128));
            v45 = a7[1];
            if (v45 >= a7[2])
            {
              v47 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(a7, &buf);
            }

            else
            {
              ULMapLabelDO::ULMapLabelDO(a7[1], &buf);
              v46 = v90;
              v90 = 0;
              *(v45 + 232) = v46;
              v47 = v45 + 240;
            }

            a7[1] = v47;

            if (v88 == 1)
            {
              v87 = -1;
            }

            if (v84 < 0)
            {
              operator delete(v83);
            }

            if (v78 == 1 && v76)
            {
              v77 = v76;
              operator delete(v76);
            }

            if (v75 == 1 && buf.var1.var0.var1.var0)
            {
              buf.var1.var0.var1.var1 = buf.var1.var0.var1.var0;
              operator delete(buf.var1.var0.var1.var0);
            }

            if (v97 == 1)
            {
              LODWORD(v96) = -1;
            }

            if (SHIBYTE(v95) < 0)
            {
              operator delete(v93);
            }

            if (v91.var2.var1 && v91.var2.var0.var1.var0)
            {
              v91.var2.var0.var1.var1 = v91.var2.var0.var1.var0;
              operator delete(v91.var2.var0.var1.var0);
            }

            if (v91.var1.var1 && v91.var1.var0.var1.var0)
            {
              v91.var1.var0.var1.var1 = v91.var1.var0.var1.var0;
              operator delete(v91.var1.var0.var1.var0);
            }
          }
        }
      }

      v59 += 136;
      goto LABEL_12;
    }

    v51 = v8 + 8;
    v23 = v8[6];
    if (!v23)
    {
      goto LABEL_51;
    }

    if (!v52)
    {
      v52 = v23;
LABEL_85:
      v32 = [ULOdometryStatus alloc];
      v33 = v8;
      if (*(v8 + 23) < 0)
      {
        v33 = *v8;
      }

      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:v33];
      LODWORD(v35) = *(v8 + 6);
      v36 = [*(v10 + 2992) numberWithFloat:v35];
      LODWORD(v37) = *(v8 + 7);
      v38 = [*(v10 + 2992) numberWithFloat:v37];
      LODWORD(v39) = *(v8 + 8);
      v40 = [*(v10 + 2992) numberWithFloat:v39];
      v41 = [MEMORY[0x277CBEAA8] date];
      v42 = [(ULOdometryStatus *)v32 initWithDeviceIdentifier:v34 odometrySourceType:v50 deltaPositionX:v36 deltaPositionY:v38 deltaPositionZ:v40 date:v41];

      ULHomeSlamLocalizer::localize(a1, v42, v99, 1, &buf);
      std::__optional_storage_base<ULLocalizationResult,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULLocalizationResult,false>>(v66, &buf);
      if (v82[0] == 1)
      {
        if (__p)
        {
          v81 = __p;
          operator delete(__p);
        }

        if (v78)
        {
          v79 = v78;
          operator delete(v78);
        }

        if (buf.var1.var0.var0.var0[8] == 1 && *buf.var0.data)
        {
          *&buf.var0.data[8] = *buf.var0.data;
          operator delete(*buf.var0.data);
        }
      }

      goto LABEL_96;
    }

    if (([v23 isEqual:?] & 1) == 0)
    {
LABEL_51:
      ULHomeSlamLocalizer::ioError(&v73, a1, v99);
    }

    v24 = v8[6];

    v52 = v24;
    if (v24)
    {
      goto LABEL_85;
    }

    v52 = 0;
LABEL_96:
    v8 = v51;
LABEL_12:
    v9 = v10;
LABEL_82:
    objc_autoreleasePoolPop(v11);
    if (v14)
    {
      break;
    }
  }

  if (v72 == 1)
  {
    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v67 == 1 && v66[0])
    {
      v66[1] = v66[0];
      operator delete(v66[0]);
    }
  }

  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings(v99);
  v48 = *MEMORY[0x277D85DE8];
}

void sub_25918A33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  a19[1] = v47;
  ULMapLabelDOAndLabelObjectID::~ULMapLabelDOAndLabelObjectID(&a47);
  ULMapLabelDO::~ULMapLabelDO(&STACK[0x220]);

  a47 = a19;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a47);
  std::optional<ULLocalizationResult>::~optional(&a30);

  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(&STACK[0x308]);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnHomeSlamModel_ReplayPhase_RFOnly(ULModel *a1@<X2>, uint64_t *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  ULHomeSlamLocalizer::reset(a1, v62);
  v49 = 0;
  v9 = 0uLL;
  v48 = 0u;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    while (1)
    {
      v12 = *(a3 + 24);
      if (!v12)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v12 + 48))(v12))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v23 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v23, OS_LOG_TYPE_DEFAULT, "[learnHomeSlamModel_ReplayPhase_RFOnly]: Abort", buf, 2u);
        }

        v22 = a5;
        goto LABEL_53;
      }

      CLMicroLocationFingerprintConfiguration::getLocalizingConfigurationFromSettings(v50);
      CLMicroLocationFingerprint::create(v10, v50, buf);
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v50[0].var1);
      if (v61)
      {
        break;
      }

LABEL_44:
      v10 += 296;
      if (v10 == v11)
      {
        v9 = v48;
        v21 = v49;
        goto LABEL_47;
      }
    }

    ULHomeSlamLocalizer::localize(a1, buf, v62, 0, v41);
    if (v47)
    {
      v14 = *(v10 + 64);
      v13 = *(v10 + 72);
      if ((v13 - v14) >> 7 != (*(v10 + 280) - *(v10 + 272)) >> 3)
      {
        v25 = _CLLogObjectForCategory_MicroLocation_Default();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          v26 = (*(v10 + 72) - *(v10 + 64)) >> 7;
          v27 = (*(v10 + 280) - *(v10 + 272)) >> 3;
          *&v50[0].var0.var0.var0 = 68290051;
          LOWORD(v50[0].var0.var0.var1.var2) = 2082;
          *(&v50[0].var0.var0.var1.var2 + 2) = "";
          WORD1(v50[0].var1.var0.var1.var0) = 2050;
          *(&v50[0].var1.var0.var1.var0 + 4) = v26;
          WORD2(v50[0].var1.var0.var1.var1) = 2050;
          *(&v50[0].var1.var0.var1.var1 + 6) = v27;
          HIWORD(v50[0].var1.var0.var1.var2) = 2082;
          *&v50[0].var1.var1 = "assert";
          *&v50[0].var2.var0.var0 = 2081;
          *(&v50[0].var2.var0.var1.var0 + 2) = "scanningEvent.first.fLabels.size() == scanningEvent.second.size()";
          _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes, scanningEvent.first.fLabels.size():%{public}lu, scanningEvent.second.size():%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v50, 0x3Au);
        }

        v28 = _CLLogObjectForCategory_MicroLocation_Default();
        if (os_signpost_enabled(v28))
        {
          v29 = (*(v10 + 72) - *(v10 + 64)) >> 7;
          v30 = (*(v10 + 280) - *(v10 + 272)) >> 3;
          *&v50[0].var0.var0.var0 = 68290051;
          LOWORD(v50[0].var0.var0.var1.var2) = 2082;
          *(&v50[0].var0.var0.var1.var2 + 2) = "";
          WORD1(v50[0].var1.var0.var1.var0) = 2050;
          *(&v50[0].var1.var0.var1.var0 + 4) = v29;
          WORD2(v50[0].var1.var0.var1.var1) = 2050;
          *(&v50[0].var1.var0.var1.var1 + 6) = v30;
          HIWORD(v50[0].var1.var0.var1.var2) = 2082;
          *&v50[0].var1.var1 = "assert";
          *&v50[0].var2.var0.var0 = 2081;
          *(&v50[0].var2.var0.var1.var0 + 2) = "scanningEvent.first.fLabels.size() == scanningEvent.second.size()";
          _os_signpost_emit_with_name_impl(&dword_258FE9000, v28, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes", "{msg%{public}.0s:[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes, scanningEvent.first.fLabels.size():%{public}lu, scanningEvent.second.size():%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v50, 0x3Au);
        }

        v31 = _CLLogObjectForCategory_MicroLocation_Default();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          v32 = (*(v10 + 72) - *(v10 + 64)) >> 7;
          v33 = (*(v10 + 280) - *(v10 + 272)) >> 3;
          *&v50[0].var0.var0.var0 = 68290051;
          LOWORD(v50[0].var0.var0.var1.var2) = 2082;
          *(&v50[0].var0.var0.var1.var2 + 2) = "";
          WORD1(v50[0].var1.var0.var1.var0) = 2050;
          *(&v50[0].var1.var0.var1.var0 + 4) = v32;
          WORD2(v50[0].var1.var0.var1.var1) = 2050;
          *(&v50[0].var1.var0.var1.var1 + 6) = v33;
          HIWORD(v50[0].var1.var0.var1.var2) = 2082;
          *&v50[0].var1.var1 = "assert";
          *&v50[0].var2.var0.var0 = 2081;
          *(&v50[0].var2.var0.var1.var0 + 2) = "scanningEvent.first.fLabels.size() == scanningEvent.second.size()";
          _os_log_impl(&dword_258FE9000, v31, OS_LOG_TYPE_INFO, "{msg%{public}.0s:[learnHomeSlamModel_ReplayPhase_RFOnly]: Invalid scanning event labels sizes, scanningEvent.first.fLabels.size():%{public}lu, scanningEvent.second.size():%{public}lu, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v50, 0x3Au);
        }

        abort_report_np();
        __break(1u);
      }

      if (v13 != v14)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        do
        {
          v40[0] = 0;
          v40[12] = 0;
          if ((v47 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          ULLocalizationResult::getProbabilitiesAsFloatVector(v41, v38);
          LOBYTE(__p[0]) = 0;
          v37 = 0;
          v35 = cl::chrono::CFAbsoluteTimeClock::now();
          ULMapLabelDO::ULMapLabelDO(v50, v40, v38, __p, &v35, *(v10 + 64) + v16, a4);
          if (v37 == 1 && __p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v39 == 1 && v38[0])
          {
            v38[1] = v38[0];
            operator delete(v38[0]);
          }

          v18 = *(v10 + 272);
          v19 = *(&v48 + 1);
          if (*(&v48 + 1) >= v49)
          {
            v20 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDO const&,NSManagedObjectID * const {__strong}&>(&v48, v50, (v18 + v15));
          }

          else
          {
            ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(*(&v48 + 1), v50, *(v18 + v15));
            v20 = v19 + 240;
          }

          *(&v48 + 1) = v20;
          if (v54 == 1)
          {
            v53 = -1;
          }

          if (v52 < 0)
          {
            operator delete(v51);
          }

          if (v50[0].var2.var1 && v50[0].var2.var0.var1.var0)
          {
            v50[0].var2.var0.var1.var1 = v50[0].var2.var0.var1.var0;
            operator delete(v50[0].var2.var0.var1.var0);
          }

          if (v50[0].var1.var1 && v50[0].var1.var0.var1.var0)
          {
            v50[0].var1.var0.var1.var1 = v50[0].var1.var0.var1.var0;
            operator delete(v50[0].var1.var0.var1.var0);
          }

          ++v17;
          v16 += 128;
          v15 += 8;
        }

        while (v17 < (*(v10 + 72) - *(v10 + 64)) >> 7);
        if ((v47 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else if (!v47)
    {
LABEL_40:
      if (v61)
      {
        *&v50[0].var0.var0.var0 = &v60;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](v50);
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v57);
        std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v56);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
      }

      goto LABEL_44;
    }

    if (v45)
    {
      v46 = v45;
      operator delete(v45);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v42 == 1 && v41[0])
    {
      v41[1] = v41[0];
      operator delete(v41[0]);
    }

    goto LABEL_40;
  }

  v21 = 0;
LABEL_47:
  *a5 = v9;
  *(a5 + 2) = v21;
  v22 = &v48;
LABEL_53:
  *v22 = 0;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  *buf = &v48;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v63)
  {
    v64 = v63;
    operator delete(v63);
  }

  ULHomeSlamSettings::~ULHomeSlamSettings(v62);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_25918AB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  std::optional<CLMicroLocationFingerprint>::~optional(&STACK[0x210]);
  a19 = &a41;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&a19);
  ULHomeSlamLocalizerState::~ULHomeSlamLocalizerState(&STACK[0x300]);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnFromModelType(CLMicroLocationLearner *a1, uint64_t a2, uint64_t a3)
{
  v72 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v63 = 2082;
    *&v63[2] = "";
    v64 = 2050;
    v65 = a3;
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:start learn model, model-type:%{public}lu}", buf, 0x1Cu);
  }

  if ((ULSettings::get<ULSettings::EnableLearning>() & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v13 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_91;
    }

    *buf = 0;
    v14 = "#Warning Tried to run learning, but learning is disabled";
LABEL_25:
    v16 = v13;
    v17 = OS_LOG_TYPE_DEFAULT;
    v18 = 2;
LABEL_26:
    _os_log_impl(&dword_258FE9000, v16, v17, v14, buf, v18);
LABEL_91:
    v54 = *MEMORY[0x277D85DE8];
    return;
  }

  ULSettings::get<ULSettings::EnabledModelTypes>(buf);
  if (*v63 <= a3)
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v6 = *(*buf + ((a3 >> 3) & 0x1FFFFFF8));
  operator delete(*buf);
  v56 = a3;
  if (((v6 >> a3) & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v15 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_91;
    }

    *buf = 67174657;
    *&buf[4] = a3;
    v14 = "Model Type %{private}d disabled in settings";
    v16 = v15;
    v17 = OS_LOG_TYPE_DEBUG;
    v18 = 8;
    goto LABEL_26;
  }

  (*(**(a1 + 5) + 40))(*(a1 + 5));
  if (((*(**(a1 + 5) + 56))() & 1) == 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v13 = logObject_MicroLocation_Default;
    if (!os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_91;
    }

    *buf = 0;
    v14 = "#Warning Tried to run learning, but database is not valid";
    goto LABEL_25;
  }

  v7 = cl::chrono::CFAbsoluteTimeClock::now();
  if (![MEMORY[0x277D28868] isInternalInstall])
  {
    goto LABEL_29;
  }

  v8 = +[ULDefaultsSingleton shared];
  v9 = [v8 defaultsDictionary];

  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableSamplingForLearningAnalyticsOnInternal"];
  v11 = [v9 objectForKey:v10];
  if (!v11)
  {
    goto LABEL_27;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = [v11 BOOLValue];
  }

  else
  {
LABEL_27:
    v12 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v19 = v12;

  if (!v19)
  {
    v26 = 1;
  }

  else
  {
LABEL_29:
    v20 = +[ULDefaultsSingleton shared];
    v21 = [v20 defaultsDictionary];

    v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULSamplingRateForLearningAnalytics"];
    v23 = [v21 objectForKey:v22];
    if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v23 doubleValue];
    }

    else
    {
      [&unk_286A72F50 doubleValue];
    }

    v25 = v24;

    v26 = arc4random_uniform(0xF4241u) / 1000000.0 <= v25;
  }

  v27 = ULSettings::get<ULSettings::AnalyticsSendEventEnabled>();
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v57 = v26 & v27;
  v28 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    CLMicroLocationProtobufHelper::ModelTypeToDomain(a3, &__p);
    v29 = v61 >= 0 ? &__p : __p;
    *buf = 68289538;
    *&buf[4] = 0;
    *v63 = 2082;
    *&v63[2] = "";
    v64 = 2082;
    v65 = v29;
    v66 = 1026;
    LODWORD(v67) = v57;
    _os_log_impl(&dword_258FE9000, v28, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Analytics events for learning, model type:%{public, location:escape_only}s, enabled:%{public}hhd}", buf, 0x22u);
    if (v61 < 0)
    {
      operator delete(__p);
    }
  }

  CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(a1, &__p);
  v30 = +[ULDefaultsSingleton shared];
  v31 = [v30 defaultsDictionary];

  v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningRecordingLimit"];
  v33 = [v31 objectForKey:v32];
  if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v55 = [v33 unsignedIntValue];
  }

  else
  {
    v55 = [&unk_286A72618 unsignedIntValue];
  }

  v34 = __p;
  v35 = v60;
  if (__p == v60)
  {
LABEL_80:
    (*(**(a1 + 3) + 32))(*(a1 + 3), a3);
    v49 = cl::chrono::CFAbsoluteTimeClock::now();
    v50 = *(a2 + 24);
    if (!v50)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v51 = v49;
    if ((*(*v50 + 48))(v50))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v52 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        *&buf[4] = 0;
        *v63 = 2082;
        *&v63[2] = "";
        v64 = 2082;
        v65 = "MicroLocationLearning";
        _os_log_impl(&dword_258FE9000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:operation cancelled, Activity:%{public, location:escape_only}s}", buf, 0x1Cu);
      }
    }

    if (onceToken_MicroLocationQE_Default != -1)
    {
      CLMicroLocationLearner::learnMagicalMomentsModel();
    }

    v53 = logObject_MicroLocationQE_Default;
    if (os_log_type_enabled(logObject_MicroLocationQE_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *v63 = 2082;
      *&v63[2] = "";
      v64 = 2050;
      v65 = v56;
      v66 = 2050;
      v67 = v51 - v7;
      _os_log_impl(&dword_258FE9000, v53, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Learning, completed, model-type:%{public}lu, Total Time (sec):%{public}.4f}", buf, 0x26u);
    }

    *buf = &__p;
    std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
    goto LABEL_91;
  }

  while (1)
  {
    v36 = objc_autoreleasePoolPush();
    v37 = CLMicroLocationLearner::getLearnEndDateForloiGroupId(a1, *(v34 + 24));
    v38 = +[ULDefaultsSingleton shared];
    v39 = [v38 defaultsDictionary];

    v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULForceHomeSlamClusteringMode"];
    v41 = [v39 objectForKey:v40];
    if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v42 = [v41 BOOLValue];
    }

    else
    {
      v42 = [MEMORY[0x277CBEC28] BOOLValue];
    }

    v43 = v42;

    if (v43)
    {
      v44 = ULSettings::get<ULSettings::HomeSlamLearningEnabled>() ^ 1;
      if (a3 != 4)
      {
        LOBYTE(v44) = 1;
      }

      if (v44)
      {
        goto LABEL_66;
      }

      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v71, a2);
      CLMicroLocationLearner::learnHomeSlamModelForLOI(a1, v71, v34, v37, v57, v7);
      v45 = v71;
      goto LABEL_65;
    }

    if (a3 <= 1)
    {
      break;
    }

    if (a3 == 2)
    {
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v69, a2);
      CLMicroLocationLearner::learnLSLModelForLOI(a1, v69, v34, v37, v55, v57, v7);
      v45 = v69;
      goto LABEL_65;
    }

    if (a3 != 4)
    {
      goto LABEL_72;
    }

    if (ULSettings::get<ULSettings::HomeSlamLearningEnabled>())
    {
      std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v68, a2);
      CLMicroLocationLearner::learnHomeSlamModelForLOI(a1, v68, v34, v37, v57, v7);
      v45 = v68;
LABEL_65:
      std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v45);
    }

LABEL_66:

    objc_autoreleasePoolPop(v36);
    v34 += 64;
    if (v34 == v35)
    {
      v46 = 1;
    }

    else
    {
      v46 = v43;
    }

    if (v46)
    {
      goto LABEL_80;
    }
  }

  if (!a3)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v70, a2);
    CLMicroLocationLearner::learnUnspervisedModelForLOI(a1, v70, v34, v37, v55, v57);
    v45 = v70;
    goto LABEL_65;
  }

  if (a3 != 1)
  {
LABEL_72:
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v47 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v63 = 2082;
      *&v63[2] = "";
      v64 = 2050;
      v65 = a3;
      _os_log_impl(&dword_258FE9000, v47, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:invalid model type, model type:%{public}lu}", buf, 0x1Cu);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v48 = logObject_MicroLocation_Default;
    if (os_signpost_enabled(logObject_MicroLocation_Default))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *v63 = 2082;
      *&v63[2] = "";
      v64 = 2050;
      v65 = a3;
      _os_signpost_emit_with_name_impl(&dword_258FE9000, v48, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "invalid model type", "{msg%{public}.0s:invalid model type, model type:%{public}lu}", buf, 0x1Cu);
    }

    goto LABEL_66;
  }

  CLMicroLocationLearner::learnFromModelType(buf);

  abort_report_np();
  __break(1u);
}

uint64_t ULSettings::get<ULSettings::EnableLearning>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnableLearning"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

void ULSettings::get<ULSettings::EnabledModelTypes>(uint64_t a1@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnabledModelTypes"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v15 = 0uLL;
    v14 = 0;
    std::vector<BOOL>::reserve(&v14, [v6 count]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:&v21 count:16];
    if (v8)
    {
      v9 = *v18;
      do
      {
        v10 = 0;
        do
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v16 = [*(*(&v17 + 1) + 8 * v10) BOOLValue];
          std::vector<BOOL>::push_back(&v14, &v16);
          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:&v17 objects:&v21 count:16];
      }

      while (v8);
    }

    *a1 = v14;
    *(a1 + 8) = v15;
  }

  else
  {
    v21 = 0;
    v22 = 0uLL;
    std::vector<BOOL>::reserve(&v21, 5uLL);
    v11 = 5;
    do
    {
      LOBYTE(v17) = 1;
      std::vector<BOOL>::push_back(&v21, &v17);
      --v11;
    }

    while (v11);
    v12 = v22;
    *a1 = v21;
    *(a1 + 8) = v12;
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_25918BB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *CLMicroLocationLearner::getLearnEndDateForloiGroupId(CLMicroLocationLearner *this, uuid a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v3 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::find<boost::uuids::uuid>(this + 10, &v6);
  if (v3)
  {
    v3 = std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(this + 10, &v6)[4];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

uint64_t ULSettings::get<ULSettings::HomeSlamLearningEnabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULHomeSlamLearningEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC28] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t CLMicroLocationLearner::updateAnchorAppearanceMapFromRapportAndRecordings(uint64_t a1, uint64_t a2, __int128 **a3, uint64_t a4, double a5)
{
  v38[1] = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 1065353216;
  v10 = *a4;
  v11 = *(a4 + 8);
  while (v10 != v11)
  {
    std::__hash_table<boost::uuids::uuid,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,std::allocator<boost::uuids::uuid>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&>(&v26, v10);
    v10 += 10;
  }

  v12 = *a3;
  v13 = a3[1];
  if (*a3 == v13)
  {
    v15 = *a3;
  }

  else
  {
    do
    {
      v14 = (*(**(a1 + 32) + 144))(*(a1 + 32));
      v37 = *v12;
      v24 = 0;
      v25 = 0;
      __p = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v37, v38, 1uLL);
      if (v14)
      {
        [v14 fetchScanningEventsForUUIDs:&__p];
      }

      else
      {
        *buf = 0;
        *v30 = 0;
        *&v30[8] = 0;
      }

      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (*v30 != *buf)
      {
        CLMicroLocationAnchorAppearanceMap::updateAnchorIdSetFromMeasurements(&v26, *buf);
      }

      __p = buf;
      std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&__p);
      ++v12;
    }

    while (v12 != v13);
    v12 = *a3;
    v15 = a3[1];
  }

  v16 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationAnchorAppearanceMap::updateSeenAnchors(a2, &v26, v15 != v12, a5, v16);
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v17 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 0xCCCCCCCCCCCCCCCDLL * ((*(a4 + 8) - *a4) >> 4);
    v19 = a3[1] - *a3;
    v20 = *(a2 + 24);
    *buf = 68290050;
    *&buf[4] = 0;
    *v30 = 2082;
    *&v30[2] = "";
    *&v30[10] = 2050;
    *&v30[12] = v18;
    v31 = 2050;
    v32 = *(&v27 + 1);
    v33 = 2050;
    v34 = v19;
    v35 = 2050;
    v36 = v20;
    _os_log_impl(&dword_258FE9000, v17, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Updating Anchor ID Set, Num. Rapport Anchor Devices:%{public}lu, Num Rapport and Measured Anchor Devices:%{public}lu, Number of recordings since last model:%{public}lu, Anchor Appearance Map size:%{public}lu}", buf, 0x3Au);
  }

  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v26);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLearner::getRecordingUUIDsBetweenAnchorsTimestampsForLoi(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v10 = +[ULDefaultsSingleton shared];
  v16 = [v10 defaultsDictionary];

  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMaxNewRecordingsForAnchorAppearanceMap"];
  v12 = [v16 objectForKey:v11];
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v13 = [v12 unsignedIntValue];
  }

  else
  {
    v13 = [&unk_286A72618 unsignedIntValue];
  }

  v14 = v13;

  v15 = (*(**(a1 + 32) + 144))(*(a1 + 32));
  v17 = v15;
  if (v15)
  {
    [v15 fetchDistinctScanningEventsUUIDsFromTime:a2 toTime:v14 atLoiGroupId:a4 withLimit:a5];
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

uint64_t CLMicroLocationLearner::generateAnchorAppearanceMapConfigurationForLoi@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X2>, uint64_t a3@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(&__p);
  v7 = (*(**(a1 + 32) + 168))(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    [v7 fetchMostRecentAnchorAppearanceMapAtLoiGroupId:a2];
  }

  else
  {
    v38 = 0u;
    v39 = 0u;
    *buf = 0u;
    v37 = 0u;
  }

  v10 = 0.0;
  if (BYTE8(v39) == 1)
  {
    v11 = v38;
    if (!v38)
    {
      v11 = *(CLMicroLocationProto::AnchorAppearanceConfiguration::default_instance(v9) + 8);
    }

    CLMicroLocationAnchorAppearanceMap::CLMicroLocationAnchorAppearanceMap(v32, v11);
    v30 = v34;
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>(&__p, v33, 0);
    v31 = v35;
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v32);
    v10 = *buf;
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v12 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      operator new();
    }
  }

  v28 = cl::chrono::CFAbsoluteTimeClock::now();
  CLMicroLocationLearner::getRecordingUUIDsBetweenAnchorsTimestampsForLoi(a1, a2, v27, v10, v28);
  v25 = 0uLL;
  v26 = 0;
  v13 = +[ULDefaultsSingleton shared];
  v14 = [v13 defaultsDictionary];

  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULRapportUsageEnabled"];
  v16 = [v14 objectForKey:v15];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v17 = [v16 BOOLValue];
  }

  else
  {
    v17 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v18 = v17;

  if (v18)
  {
    (*(**(a1 + 24) + 40))(v32, v10);
    std::vector<CLMicroLocationRapportMonitorItem>::__vdeallocate(&v25);
    v25 = *v32;
    v26 = v33;
    v33 = 0;
    memset(v32, 0, sizeof(v32));
    v22 = v32;
    std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](&v22);
  }

  CLMicroLocationLearner::updateAnchorAppearanceMapFromRapportAndRecordings(a1, &__p, v27, &v25, v10);
  CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(&v22);
  v24 |= 2u;
  v19 = v23;
  if (!v23)
  {
    operator new();
  }

  CLMicroLocationAnchorAppearanceMap::toProtobuf(&__p, v32);
  CLMicroLocationProto::anchorAppearancesVector::CopyFrom(v19, v32);
  CLMicroLocationProto::anchorAppearancesVector::~anchorAppearancesVector(v32);
  ULAnchorAppearanceMapDO::ULAnchorAppearanceMapDO(a3, &v28, a2, &v22);
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&v22);
  *v32 = &v25;
  std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](v32);
  if (v27[0])
  {
    v27[1] = v27[0];
    operator delete(v27[0]);
  }

  if (BYTE8(v39) == 1)
  {
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((&v37 + 8));
  }

  result = std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&__p);
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25918C854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  operator delete(v28);

  if (*(v29 - 120) == 1)
  {
    CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v29 - 152));
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&a20);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::generateAnchorAppearanceMap(CLMicroLocationLearner *a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (ULSettings::get<ULSettings::AdaptiveAnchorsEnable>())
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(a1, &v15);
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289282;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 2050;
      *&buf[20] = (v16 - v15) >> 6;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Generating anchor appearance maps, LOI count:%{public}lu}", buf, 0x1Cu);
    }

    v5 = v15;
    v6 = v16;
    if (v15 == v16)
    {
LABEL_12:
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "#Warning failed to insert Anchor Appearances Map to MicroLocation DB";
LABEL_20:
        _os_log_impl(&dword_258FE9000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
      }
    }

    else
    {
      v7 = 0;
      while (1)
      {
        v8 = *(a2 + 24);
        if (!v8)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        if ((*(*v8 + 48))(v8))
        {
          break;
        }

        CLMicroLocationLearner::generateAnchorAppearanceMapConfigurationForLoi(a1, (v5 + 24), buf);
        v9 = (*(**(a1 + 4) + 168))(*(a1 + 4));
        v18 = *buf;
        v19 = *&buf[16];
        CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration(v20, &buf[24]);
        memset(v14, 0, sizeof(v14));
        std::vector<ULAnchorAppearanceMapDO>::__init_with_size[abi:ne200100]<ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO const*>(v14, &v18, &v21, 1uLL);
        v10 = [v9 insertDataObjects:v14 atLoiUUID:v5 + 24];
        v17 = v14;
        std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&v17);
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v20);

        v7 += v10;
        CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(&buf[24]);
        v5 += 64;
        if (v5 == v6)
        {
          if (v7)
          {
            goto LABEL_21;
          }

          goto LABEL_12;
        }
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v11 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Cancelled, skipping generation of anchor appearance maps";
        goto LABEL_20;
      }
    }

LABEL_21:
    *buf = &v15;
    std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_25918CC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void **a25)
{
  CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration((v25 + 24));
  a25 = &a13;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::onLearningBegin(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FE9000, v6, OS_LOG_TYPE_DEFAULT, "Learning activity started", buf, 2u);
  }

  v7 = *(a2 + 24);
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v7 + 48))(v7))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v8 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "Learning cancelled before onLearningBegin event", v9, 2u);
    }
  }

  else
  {
    (*(**(a1 + 24) + 16))(*(a1 + 24));
  }
}

uint64_t CLMicroLocationLearner::onLearningCompleted(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  [*(a1 + 16) timeIntervalSinceNow];
  v5 = v4;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
  }

  v6 = -v5;
  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 68289283;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2049;
    v27 = v6;
    _os_log_impl(&dword_258FE9000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Learning activity completed, duration [s]:%{private}f}", &v22, 0x1Cu);
  }

  v8 = *(a2 + 24);
  if (!v8)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v8 + 48))(v8))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_258FE9000, v9, OS_LOG_TYPE_DEFAULT, "Learning cancelled before onLearningCompleted event", &v22, 2u);
    }
  }

  else
  {
    v10 = +[ULDefaultsSingleton shared];
    v11 = [v10 defaultsDictionary];

    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLearningActivityMaxAllowedDuration"];
    v13 = [v11 objectForKey:v12];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = [v13 intValue];
    }

    else
    {
      v14 = [&unk_286A726A8 intValue];
    }

    v15 = v14;

    if (v15 < v6)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v16 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
      {
        v22 = 68289539;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2049;
        v27 = v6;
        v28 = 2049;
        v29 = v15;
        _os_log_impl(&dword_258FE9000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Learning activity passed max allowed duration, duration [s]:%{private}f, max allowed duration [s]:%{private}f}", &v22, 0x26u);
      }

      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v17 = logObject_MicroLocation_Default;
      if (os_signpost_enabled(logObject_MicroLocation_Default))
      {
        v22 = 68289539;
        v23 = 0;
        v24 = 2082;
        v25 = "";
        v26 = 2049;
        v27 = v6;
        v28 = 2049;
        v29 = v15;
        _os_signpost_emit_with_name_impl(&dword_258FE9000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Learning activity passed max allowed duration", "{msg%{public}.0s:Learning activity passed max allowed duration, duration [s]:%{private}f, max allowed duration [s]:%{private}f}", &v22, 0x26u);
      }
    }

    v18 = CLMicroLocationLearner::sendLearningTaskAnalytics(a1);
    v19 = *(a1 + 16);
    *(a1 + 16) = 0;
  }

  result = (*(**(a1 + 24) + 48))(*(a1 + 24));
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

id CLMicroLocationLearner::sendLearningTaskAnalytics(id *this)
{
  [this[2] timeIntervalSinceNow];
  v3 = v2;
  v4 = (*(*this[4] + 64))(this[4]);
  std::string::basic_string[abi:ne200100]<0>(v18, "custom");
  v5 = [v4 countDistinctLoiTypes:v18];
  v6 = (*(*this[4] + 64))(this[4]);
  std::string::basic_string[abi:ne200100]<0>(__p, "home");
  v7 = [v6 countDistinctLoiTypes:__p];
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = v7 + v5;

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(this, v18);
  v9 = (v18[1] - v18[0]) >> 6;
  *(this + 1) = v9;
  if (v9 < v8)
  {
    *(this + 8) = 1;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:-v3];
  [v10 setObject:v11 forKeyedSubscript:@"learningTaskRuntime"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:*this];
  [v10 setObject:v12 forKeyedSubscript:@"numberOfModelsLearned"];

  v13 = [MEMORY[0x277CCABB0] numberWithInt:*(this + 1)];
  [v10 setObject:v13 forKeyedSubscript:@"numberOfValidLOIsForLearning"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:*(this + 8)];
  [v10 setObject:v14 forKeyedSubscript:@"wereLOIsRemoved"];

  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    [ULSendEvent sendEvent:v10 withEventName:@"com.apple.MicroLocation.LearningTask"];
  }

  __p[0] = v18;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](__p);

  return v10;
}

void sub_25918D47C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  __p = &a15;
  std::vector<ULLoiDO>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::learnBlueAtlasModelWorkItem(void **a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  if ((*(*v3 + 48))(v3))
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      v6 = "Learning cancelled before onLearningCompleted event";
LABEL_18:
      v9 = v5;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_19;
    }
  }

  else if (ULSettings::get<ULSettings::EnableLearning>())
  {
    ULSettings::get<ULSettings::EnabledModelTypes>(&__p);
    if (v21 <= 3)
    {
      std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
    }

    v7 = *__p;
    operator delete(__p);
    if ((v7 & 8) != 0)
    {
      (*(*a1[5] + 40))(a1[5]);
      if ((*(*a1[5] + 56))(a1[5]))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          __p = 68289026;
          LOWORD(v21) = 2082;
          *(&v21 + 2) = "";
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MicrolocationLearner: kicking off Learning for Blue Atlas models}", &__p, 0x12u);
        }

        v13 = (*(*a1[4] + 112))(a1[4]);
        v14 = v13;
        if (v13)
        {
          [v13 getAllDistinctCustomLoiIds];
        }

        else
        {
          __p = 0;
          v21 = 0uLL;
        }

        v15 = __p;
        v16 = v21;
        if (__p != v21)
        {
          v17 = 0;
          do
          {
            std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v19, a2);
            v18 = CLMicroLocationLearner::learnBlueAtlasModelInternal(a1, v19, v15);
            std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v19);
            v17 |= v18;
            ++v15;
          }

          while (v15 != v16);
          if (v17)
          {
            (*(*a1[3] + 32))(a1[3], 3);
          }
        }

        if (__p)
        {
          *&v21 = __p;
          operator delete(__p);
        }
      }

      else
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
        }

        v5 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p) = 0;
          v6 = "#Warning Tried to run learning, but database is not valid";
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        v6 = "Model Type BlueAtlas disabled in settings";
        v9 = v8;
        v10 = OS_LOG_TYPE_DEBUG;
LABEL_19:
        _os_log_impl(&dword_258FE9000, v9, v10, v6, &__p, 2u);
      }
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v5 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      v6 = "#Warning Tried to run learning, but learning is disabled";
      goto LABEL_18;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_25918D8B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL CLMicroLocationLearner::learnBlueAtlasModelInternal(uint64_t a1, uint64_t a2, uuid *a3)
{
  v106 = *MEMORY[0x277D85DE8];
  v6 = cl::chrono::CFAbsoluteTimeClock::now();
  memset(v58, 0, sizeof(v58));
  v59 = 1065353216;
  v7 = (*(**(a1 + 32) + 104))(*(a1 + 32));
  v8 = v7;
  if (v7)
  {
    [v7 fetchAllServicesForServiceType:4 onlyServicesWithLabels:0];
  }

  else
  {
    v56 = 0;
    v55 = 0;
    v57 = 0;
  }

  v9 = v55;
  v10 = v56;
  if (v55 == v56)
  {
LABEL_90:
    v45 = 0;
    goto LABEL_91;
  }

  v50 = 0;
  do
  {
    if ((ULService::uint64ToLocationTypesBitset(*(v9 + 56)) & 4) == 0)
    {
      goto LABEL_88;
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v11 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v9 + 55) < 0)
      {
        v12 = *(v9 + 32);
      }

      operator new();
    }

    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v92, a2);
    CLMicroLocationBlueAtlasAlgorithms::learnBlueAtlasModel(v92, *(a1 + 32), v58, a3, buf);
    std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v92);
    v13 = *(a2 + 24);
    if (!v13)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    if ((*(*v13 + 48))(v13))
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        CLMicroLocationLearner::persistSingleModel();
      }

      v14 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v77 = 0;
        _os_log_impl(&dword_258FE9000, v14, OS_LOG_TYPE_DEFAULT, "BlueAtlas Learning cancelled", v77, 2u);
      }

LABEL_22:
      v17 = 0;
      goto LABEL_78;
    }

    if (v105 != 1)
    {
      goto LABEL_22;
    }

    std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>::__tuple_impl(v77, buf);
    CLMicroLocationModel::toProtobuf(v79, v54);
    v15 = *v77;
    v16 = v78;
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(v53, v54);
    ULProtoMessageWrapper<CLMicroLocationProto::Model>::ULProtoMessageWrapper(&__p, v53);
    v63[44] = 0;
    if (*(v9 + 55) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *(v9 + 32), *(v9 + 40));
    }

    else
    {
      v51 = *(v9 + 32);
    }

    v52 = 1;
    v70 = *(v9 + 8);
    v71 = 1;
    ULModelDO::ULModelDO(&v72, v15, v16, &__p, &v51, &v70, *a3->data, *&a3->data[8], v6);
    if (v52 == 1 && SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](__p.var0.data);
    CLMicroLocationProto::Model::~Model(v53);
    v18 = (*(**(a1 + 32) + 80))(*(a1 + 32));
    ULModelDO::ULModelDO(&__p, &v72);
    memset(v53, 0, 24);
    std::vector<ULModelDO>::__init_with_size[abi:ne200100]<ULModelDO const*,ULModelDO const*>(v53, &__p, v67, 1uLL);
    v70 = *(v9 + 8);
    v71 = 1;
    v68 = *a3;
    v69 = 1;
    v19 = [v18 insertDataObjects:v53 forServiceUUID:&v70 atLoiUUID:&v68];
    *&v70 = v53;
    std::vector<ULModelDO>::__destroy_vector::operator()[abi:ne200100](&v70);
    if (v66 == 1 && v65 < 0)
    {
      operator delete(v64);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v63);

    v20 = (*(**(a1 + 32) + 152))(*(a1 + 32));
    [v20 insertMapLabelsWithRelatedLabelsObjectIDs:v91];

    if (v19)
    {
      CandidateQualityReasons = CLMicroLocationModel::getCandidateQualityReasons(v79);
      v22 = *CandidateQualityReasons;
      v23 = CandidateQualityReasons[1];
      if (*CandidateQualityReasons == v23)
      {
        v32 = MEMORY[0x277CBEC28];
        v48 = MEMORY[0x277CBEC28];
        v49 = MEMORY[0x277CBEC28];
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        do
        {
          v28 = *v22++;
          v27 = v28;
          if (v28 == 1)
          {
            v29 = 1;
          }

          else
          {
            v29 = v25;
          }

          if (v27 == 3)
          {
            v30 = 1;
          }

          else
          {
            v30 = v26;
          }

          if (v27 == 3)
          {
            v29 = v25;
          }

          if (v27 == 8)
          {
            v24 = 1;
          }

          else
          {
            v26 = v30;
            v25 = v29;
          }
        }

        while (v22 != v23);
        v31 = MEMORY[0x277CBEC28];
        if (v26)
        {
          v32 = MEMORY[0x277CBEC38];
        }

        else
        {
          v32 = MEMORY[0x277CBEC28];
        }

        if (v25)
        {
          v33 = MEMORY[0x277CBEC38];
        }

        else
        {
          v33 = MEMORY[0x277CBEC28];
        }

        if (v24)
        {
          v31 = MEMORY[0x277CBEC38];
        }

        v48 = v31;
        v49 = v33;
      }

      v34 = *(a1 + 24);
      ULModelDO::ULModelDO(&__p, &v72);
      v67[0] = 1;
      (*(*v34 + 24))(v34, 3, &__p, 0);
      if (v67[0] == 1)
      {
        if (v66 == 1 && v65 < 0)
        {
          operator delete(v64);
        }

        std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v63);
      }

      v35 = v32;
      v36 = CLMicroLocationModel::getQualityIndicator(v79) - 1;
      v37 = @"modelQualityUnknown";
      if (v36 <= 2)
      {
        v37 = *(&off_2798D5148 + v36);
      }

      v38 = CLMicroLocationModel::getCandidateQualityIndicator(v79) - 1;
      v39 = @"modelQualityUnknown";
      if (v38 <= 2)
      {
        v39 = *(&off_2798D5148 + v38);
      }

      v61[0] = &unk_286A725B8;
      v60[0] = @"learningOccurred";
      v60[1] = @"numAccessPoints";
      v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v84];
      v41 = v40;
      v42 = @"modelNotStable";
      if (v79[8])
      {
        v42 = @"modelIsStable";
      }

      v61[1] = v40;
      v61[2] = v42;
      v60[2] = @"isModelStable";
      v60[3] = @"modelQuality";
      v61[3] = v37;
      v61[4] = v39;
      v60[4] = @"candidateModelQuality";
      v60[5] = @"qualityReasonLowNumberOfObservations";
      v61[5] = v35;
      v61[6] = v49;
      v60[6] = @"qualityReasonLowNumberOfWiFiAnchors";
      v60[7] = @"candidateQualityReasonLowNumberRobustWiFiSources";
      v61[7] = v48;
      v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:8];

      CLMicroLocationLearner::sendBlueAtlasLearningAnalytics(v44, v43);
      ++v50;
    }

    if (v76 == 1 && v75 < 0)
    {
      operator delete(v74);
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v73);
    CLMicroLocationProto::Model::~Model(v54);
    *__p.var0.data = v91;
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v90 < 0)
    {
      operator delete(v89);
    }

    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v86);
    *__p.var0.data = &v85;
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v83 == 1 && v81)
    {
      v82 = v81;
      operator delete(v81);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v80);
    v17 = 1;
LABEL_78:
    if (v105 == 1)
    {
      *v77 = &v104;
      std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](v77);
      if (v103 < 0)
      {
        operator delete(v102);
      }

      if (v100)
      {
        v101 = v100;
        operator delete(v100);
      }

      std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(&v99);
      *v77 = &v98;
      std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](v77);
      if (v97 == 1 && v95)
      {
        v96 = v95;
        operator delete(v95);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v94);
    }

    if ((v17 & 1) == 0)
    {
      goto LABEL_90;
    }

LABEL_88:
    v9 += 88;
  }

  while (v9 != v10);
  v45 = v50 > 0;
LABEL_91:
  *buf = &v55;
  std::vector<ULServiceDO>::__destroy_vector::operator()[abi:ne200100](buf);
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::weak_ptr<CLMicroLocationFingerprint>>>>::~__hash_table(v58);
  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

void CLMicroLocationLearner::updateModelDaysWithRecordings(uint64_t a1, uint64_t a2, double *a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a4 + 16) == 1)
  {
    v8 = *(a4 + 8);
    v9 = *a3;
    v10 = (*(**(a1 + 32) + 144))(*(a1 + 32));
    LODWORD(a5) = [v10 countScanningEventsFromTime:a5 toTime:v8 atLoiGroupId:v9];

    if (a5)
    {
      v11 = *a4 + 1;
    }

    else
    {
      v11 = *a4;
    }
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v12 = logObject_MicroLocation_Default;
    v11 = 1;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEBUG))
    {
      v16 = 67109120;
      v17 = 1;
      _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEBUG, "Learning model without old model. Setting number of days with recordings to %d", &v16, 8u);
    }
  }

  *(a2 + 12) = v11;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLearner::persistSingleModel();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a2 + 12);
    v16 = 68289283;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 1025;
    v21 = v14;
    _os_log_impl(&dword_258FE9000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Setting model number of days with recordings, numDaysWithRecordings:%{private}u}", &v16, 0x18u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationModel::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    *(a1 + 48) = *(a2 + 48);
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a1 + 16), *(a2 + 32), 0);
  }

  *(a1 + 56) = *(a2 + 56);
  std::__optional_storage_base<CLMicroLocationModel::BlueAtlasData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationModel::BlueAtlasData,false>>(a1 + 72, a2 + 72);
  v4 = *(a2 + 144);
  *(a1 + 156) = *(a2 + 156);
  *(a1 + 144) = v4;
  std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vdeallocate((a1 + 176));
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  *(a2 + 192) = 0;
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__move_assign(a1 + 200, (a2 + 200));
  *(a1 + 240) = *(a2 + 240);
  std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1 + 248, (a2 + 248));
  if (*(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  v5 = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 272) = v5;
  *(a2 + 295) = 0;
  *(a2 + 272) = 0;
  *(a1 + 296) = *(a2 + 296);
  return a1;
}

uint64_t ULSettings::get<ULSettings::MinimumNumberOfDaysWithRecordingsInStableModel>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULMinimumNumberOfDaysWithRecordingsInStableModel"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedLongValue];
  }

  else
  {
    v4 = [&unk_286A72660 unsignedLongValue];
  }

  v5 = v4;

  return v5;
}

uint64_t std::vector<CLMicroLocationFingerprint>::erase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CLMicroLocationFingerprint *,CLMicroLocationFingerprint *,CLMicroLocationFingerprint *>(&v7, a3, *(a1 + 8), a2);
    std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](a1, v5);
  }

  return a2;
}

void CLMicroLocationLearner::initializeFingerprintVector(uint64_t *a1, __int128 **a2, const ULScanningEventDO *a3, uint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    do
    {
      v11 = *(a4 + 24);
      if (!v11)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v11 + 48))(v11))
      {
        if (onceToken_MicroLocation_Default != -1)
        {
          CLMicroLocationLearner::persistSingleModel();
        }

        v12 = logObject_MicroLocation_Default;
        if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_258FE9000, v12, OS_LOG_TYPE_DEFAULT, "fingerprint vector creation cancelled", buf, 2u);
        }

        std::vector<CLMicroLocationFingerprint>::__assign_with_size[abi:ne200100]<CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*>(a1, 0, 0, 0);
      }

      v13 = (*(*a5 + 144))(a5);
      v29 = *v5;
      v21 = 0;
      v22 = 0;
      *buf = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(buf, &v29, &v30, 1uLL);
      if (v13)
      {
        [v13 fetchScanningEventsForUUIDs:buf];
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
      }

      if (*buf)
      {
        v21 = *buf;
        operator delete(*buf);
      }

      if (v18 != v17)
      {
        CLMicroLocationFingerprint::create(v17, a3, buf);
        if (v28 == 1)
        {
          v14 = a1[1];
          if (v14 >= a1[2])
          {
            v15 = std::vector<CLMicroLocationFingerprint>::__emplace_back_slow_path<CLMicroLocationFingerprint>(a1, buf);
          }

          else
          {
            std::allocator_traits<std::allocator<CLMicroLocationFingerprint>>::construct[abi:ne200100]<CLMicroLocationFingerprint,CLMicroLocationFingerprint,void,0>(a1, a1[1], buf);
            v15 = v14 + 224;
            a1[1] = v14 + 224;
          }

          a1[1] = v15;
          if (v28)
          {
            *&v29 = &v27;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v29);
            if (__p)
            {
              v26 = __p;
              operator delete(__p);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v24);
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v23);
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(buf);
          }
        }
      }

      *buf = &v17;
      std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](buf);
      ++v5;
    }

    while (v5 != v6);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_25918EA88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *__p, uint64_t a14)
{
  *(v14 + 8) = v15;
  std::optional<CLMicroLocationFingerprint>::~optional(&__p);
  __p = &a10;
  std::vector<ULScanningEventDO>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::createLSLMapLabelsForLabeledScanEventUUIDs(uint64_t a1@<X0>, uuid **a2@<X1>, const ULScanningEventDO *a3@<X2>, uint64_t a4@<X3>, const CLMicroLocationModel *a5@<X4>, uint64_t a6@<X5>, _DWORD *a7@<X6>, void *a8@<X8>)
{
  v98[4] = *MEMORY[0x277D85DE8];
  v50 = 0;
  v8 = 0uLL;
  v49 = 0u;
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    v24 = 0;
LABEL_89:
    *a8 = v8;
    a8[2] = v24;
    v25 = &v49;
  }

  else
  {
    v28 = a8;
    while (1)
    {
      v16 = *(a4 + 24);
      if (!v16)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v16 + 48))(v16))
      {
        break;
      }

      v17 = (*(**(a1 + 32) + 144))(*(a1 + 32));
      v89.var0 = *v10;
      v58 = 0;
      __p = 0;
      v57 = 0;
      std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v89, &v89.var1, 1uLL);
      if (v17)
      {
        [v17 fetchScanningEventsWithLabelObjectIDsForUUIDs:&__p];
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
      }

      if (__p)
      {
        v57 = __p;
        operator delete(__p);
      }

      if (v47 != v46)
      {
        std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100](&v89, v46);
        ULScanningEventDO::ULScanningEventDO(&v79, &v89);
        CLMicroLocationFingerprint::create(&v79, a3, v72);
        if (v78 == 1)
        {
          ++*a7;
          std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.microlocation.similarity");
          v18 = cl::chrono::CFAbsoluteTimeClock::now();
          ULModelMetaData::ULModelMetaData(v69, a6, &__p, 0, v18);
          if (SHIBYTE(v58) < 0)
          {
            operator delete(__p);
          }

          ULModel::ULModel(&__p, a5);
          if ((v78 & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          v37[0] = 0;
          v38 = 0;
          ULRfClusterLocalizer::localize(&__p, v69, v72, v37, v39);
          if (v38 == 1)
          {
            CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(v37);
          }

          ULModel::~ULModel(&__p);
          if (v45 == 1)
          {
            ULLocalizationResult::getProbabilitiesAsFloatVector(v39, &v34);
            if (v36 == 1)
            {
              if (v35 == v34 || v81 == v80)
              {
                goto LABEL_54;
              }

              v19 = 0;
              v20 = 0;
              do
              {
                v33[0] = 0;
                v33[12] = 0;
                if ((v36 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v57 = 0;
                __p = 0;
                v58 = 0;
                std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v34, v35, (v35 - v34) >> 2);
                LOBYTE(v59) = 1;
                LOBYTE(v31[0]) = 0;
                v32 = 0;
                v30 = cl::chrono::CFAbsoluteTimeClock::now();
                ULMapLabelDO::ULMapLabelDO(&v51, v33, &__p, v31, &v30, v80 + v19, a6);
                if (v32 == 1 && v31[0])
                {
                  v31[1] = v31[0];
                  operator delete(v31[0]);
                }

                if (v59 == 1 && __p)
                {
                  v57 = __p;
                  operator delete(__p);
                }

                ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID(&__p, &v51, *(v98[0] + 8 * v20));
                v21 = *(&v49 + 1);
                if (*(&v49 + 1) >= v50)
                {
                  v23 = std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDOAndLabelObjectID>(&v49, &__p);
                }

                else
                {
                  ULMapLabelDO::ULMapLabelDO(*(&v49 + 1), &__p);
                  v22 = v68;
                  v68 = 0;
                  *(v21 + 232) = v22;
                  v23 = v21 + 240;
                }

                *(&v49 + 1) = v23;

                if (v67 == 1)
                {
                  v66 = -1;
                }

                if (v65 < 0)
                {
                  operator delete(v64);
                }

                if (v63 == 1 && v61)
                {
                  v62 = v61;
                  operator delete(v61);
                }

                if (v60 == 1 && v58)
                {
                  v59 = v58;
                  operator delete(v58);
                }

                if (v55 == 1)
                {
                  v54 = -1;
                }

                if (v53 < 0)
                {
                  operator delete(v52);
                }

                if (v51.var2.var1 && v51.var2.var0.var1.var0)
                {
                  v51.var2.var0.var1.var1 = v51.var2.var0.var1.var0;
                  operator delete(v51.var2.var0.var1.var0);
                }

                if (v51.var1.var1 && v51.var1.var0.var1.var0)
                {
                  v51.var1.var0.var1.var1 = v51.var1.var0.var1.var0;
                  operator delete(v51.var1.var0.var1.var0);
                }

                ++v20;
                v19 += 128;
              }

              while (v20 < (v81 - v80) >> 7);
              if (v36)
              {
LABEL_54:
                if (v34)
                {
                  v35 = v34;
                  operator delete(v34);
                }
              }
            }

            if (v45)
            {
              if (v43)
              {
                v44 = v43;
                operator delete(v43);
              }

              if (v41)
              {
                v42 = v41;
                operator delete(v41);
              }

              if (v40 == 1 && v39[0])
              {
                v39[1] = v39[0];
                operator delete(v39[0]);
              }
            }
          }

          if (v71 == 1)
          {

            std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v70, v70[1]);
          }

          if (v78)
          {
            __p = &v77;
            std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);
            if (v75)
            {
              v76 = v75;
              operator delete(v75);
            }

            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v74);
            std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(&v73);
            std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(v72);
          }
        }

        __p = &v88;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v86)
        {
          v87 = v86;
          operator delete(v86);
        }

        if (v84)
        {
          v85 = v84;
          operator delete(v84);
        }

        if (v82)
        {
          v83 = v82;
          operator delete(v82);
        }

        __p = &v80;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (*(&v79.var1.var0.var1 + 23) < 0)
        {
          operator delete(v79.var1.var0.var1.var0);
        }

        __p = v98;
        std::vector<NSManagedObjectID * {__strong}>::__destroy_vector::operator()[abi:ne200100](&__p);
        __p = &v97;
        std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (v95)
        {
          v96 = v95;
          operator delete(v95);
        }

        if (v93)
        {
          v94 = v93;
          operator delete(v93);
        }

        if (v91)
        {
          v92 = v91;
          operator delete(v91);
        }

        __p = &v90;
        std::vector<ULLabelDO>::__destroy_vector::operator()[abi:ne200100](&__p);
        if (*(&v89.var1.var0.var1 + 23) < 0)
        {
          operator delete(v89.var1.var0.var1.var0);
        }
      }

      __p = &v46;
      std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (++v10 == v9)
      {
        v8 = v49;
        v24 = v50;
        a8 = v28;
        goto LABEL_89;
      }
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::persistSingleModel();
    }

    v26 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_258FE9000, v26, OS_LOG_TYPE_DEFAULT, "acitivity cancelled. aborting LSL map labels creation", &__p, 2u);
    }

    v25 = v28;
  }

  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  __p = &v49;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&__p);
  v27 = *MEMORY[0x277D85DE8];
}

void sub_25918F1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  std::optional<ULLocalizationResult>::~optional(&a33);
  ULModelMetaData::~ULModelMetaData(&STACK[0x480]);
  std::optional<CLMicroLocationFingerprint>::~optional(&STACK[0x4C8]);
  ULScanningEventDO::~ULScanningEventDO(&STACK[0x5B0]);
  std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::~pair(&STACK[0x6C0]);
  STACK[0x260] = &a50;
  std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  STACK[0x260] = &a53;
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&STACK[0x260]);
  _Unwind_Resume(a1);
}

void CLMicroLocationLearner::sendBlueAtlasLearningAnalytics(CLMicroLocationLearner *this, NSDictionary *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (ULSettings::get<ULSettings::AnalyticsSendEventEnabled>())
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v3 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v6[0] = 68289539;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      v9 = 2081;
      v10 = [@"com.apple.MicroLocation.CustomLoiModelLearn" UTF8String];
      v11 = 2113;
      v12 = v2;
      _os_log_impl(&dword_258FE9000, v3, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#MiLoLearner, sending core analytics, event:%{private, location:escape_only}s, eventFields:%{private, location:escape_only}@}", v6, 0x26u);
    }

    [ULSendEvent sendEvent:v2 withEventName:@"com.apple.MicroLocation.CustomLoiModelLearn"];
  }

  else
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v6[0]) = 0;
      _os_log_impl(&dword_258FE9000, v4, OS_LOG_TYPE_DEFAULT, "#MiLoLearner, CoreAnalytics Disabled", v6, 2u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t CLMicroLocationLearner::learnBlueAtlasModel(CLMicroLocationLearner *this, uuid *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  (*(**(this + 3) + 16))(*(this + 3));
  v6[0] = &unk_286A5D168;
  v6[3] = v6;
  LODWORD(a2) = CLMicroLocationLearner::learnBlueAtlasModelInternal(this, v6, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  if (a2)
  {
    (*(**(this + 3) + 32))(*(this + 3), 3);
  }

  result = (*(**(this + 3) + 48))(*(this + 3));
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25918F614(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CLMicroLocationLearner::executeWorkItems(uint64_t result, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(result + 48);
  for (i = *(result + 56); v2 != i; v2 += 32)
  {
    std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, a2);
    v5 = *(v2 + 24);
    if (!v5)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    (*(*v5 + 48))(v5, v7);
    result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,false>(uint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
  v201 = *MEMORY[0x277D85DE8];
LABEL_2:
  v149 = a2 - 4;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = (a2 - v7) >> 6;
    if (v8 > 2)
    {
      break;
    }

    if (v8 < 2)
    {
      goto LABEL_137;
    }

    if (v8 == 2)
    {
      v58 = a2 - 4;
      if (*(a2 - 8) > *v7)
      {
        v59 = *(v7 + 40);
        v196 = *(v7 + 32);
        v174 = *v7;
        v185 = *(v7 + 16);
        *&v157 = *(v7 + 48);
        *(&v157 + 7) = *(v7 + 55);
        v60 = *(v7 + 63);
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        v61 = *v58;
        v62 = *(a2 - 3);
        *(v7 + 32) = *(a2 - 4);
        *v7 = v61;
        *(v7 + 16) = v62;
        v63 = *(a2 - 24);
        *(v7 + 56) = *(a2 - 1);
        *(v7 + 40) = v63;
        *(a2 - 4) = v196;
        *v58 = v174;
        *(a2 - 3) = v185;
        *(a2 - 3) = v59;
        *(a2 - 9) = *(&v157 + 7);
        *(a2 - 2) = v157;
        *(a2 - 1) = v60;
      }

LABEL_137:
      v148 = *MEMORY[0x277D85DE8];
      return;
    }

LABEL_10:
    if (v8 <= 23)
    {
      v78 = (v7 + 64);
      v80 = v7 == a2 || v78 == a2;
      if (a4)
      {
        if (!v80)
        {
          v81 = 0;
          v82 = v7;
          do
          {
            v83 = v78;
            v84 = *(v82 + 64);
            if (v84 > *v82)
            {
              v85 = *(v82 + 72);
              v178 = v85;
              v189 = *(v82 + 88);
              v86 = *(v82 + 104);
              *v161 = *(v82 + 112);
              *&v161[7] = *(v82 + 119);
              v87 = *(v82 + 127);
              *(v82 + 112) = 0;
              *(v82 + 120) = 0;
              *(v82 + 104) = 0;
              v88 = *(v78 + 63) < 0;
              v89 = v81;
              while (1)
              {
                v90 = v89;
                v91 = a1 + v89;
                v92 = *(a1 + v89 + 16);
                *(v91 + 64) = *(a1 + v89);
                *(v91 + 80) = v92;
                *(v91 + 96) = *(a1 + v89 + 32);
                if (v88)
                {
                  operator delete(*(v91 + 104));
                }

                *(v91 + 104) = *(v91 + 40);
                *(v91 + 120) = *(v91 + 56);
                *(v91 + 63) = 0;
                *(v91 + 40) = 0;
                if (!v90)
                {
                  break;
                }

                v88 = 0;
                v89 = v90 - 64;
                if (v84 <= *(a1 + v90 - 64))
                {
                  v93 = a1 + v90;
                  goto LABEL_94;
                }
              }

              v93 = a1;
LABEL_94:
              *v93 = v84;
              *(v93 + 24) = v189;
              *(v93 + 8) = v178;
              *(a1 + v90 + 40) = v86;
              *(v93 + 48) = *v161;
              *(v93 + 55) = *&v161[7];
              *(v93 + 63) = v87;
            }

            v78 = v83 + 4;
            v81 += 64;
            v82 = v83;
          }

          while (v83 + 4 != a2);
        }
      }

      else if (!v80)
      {
        v139 = v7 + 40;
        do
        {
          v140 = v78;
          v141 = *(a1 + 64);
          if (v141 > *a1)
          {
            v142 = *(a1 + 72);
            v181 = v142;
            v192 = *(a1 + 88);
            v143 = *(a1 + 104);
            *v164 = *(a1 + 112);
            *&v164[7] = *(a1 + 119);
            v144 = *(a1 + 127);
            *(a1 + 112) = 0;
            *(a1 + 120) = 0;
            *(a1 + 104) = 0;
            v145 = *(v78 + 63) < 0;
            v146 = v139;
            do
            {
              *(v146 + 24) = *(v146 - 40);
              *(v146 + 40) = *(v146 - 24);
              *(v146 + 56) = *(v146 - 8);
              if (v145)
              {
                operator delete(*(v146 + 64));
              }

              v145 = 0;
              *(v146 + 64) = *v146;
              *(v146 + 80) = *(v146 + 16);
              *(v146 + 23) = 0;
              *v146 = 0;
              v147 = *(v146 - 104);
              v146 -= 64;
            }

            while (v141 > v147);
            *(v146 + 24) = v141;
            *(v146 + 32) = v181;
            *(v146 + 48) = v192;
            *(v146 + 64) = v143;
            *(v146 + 79) = *&v164[7];
            *(v146 + 72) = *v164;
            *(v146 + 87) = v144;
          }

          v78 = (v140 + 64);
          v139 += 64;
          a1 = v140;
        }

        while ((v140 + 64) != a2);
      }

      goto LABEL_137;
    }

    if (!a3)
    {
      if (v7 != a2)
      {
        v94 = (v8 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = v7 + (v97 << 6);
            if (2 * v96 + 2 < v8 && *v98 > *(v98 + 64))
            {
              v98 += 64;
              v97 = 2 * v96 + 2;
            }

            v99 = v7 + (v96 << 6);
            v100 = *v99;
            if (*v98 <= *v99)
            {
              v101 = *(v99 + 8);
              v179 = v101;
              v190 = *(v99 + 24);
              v102 = *(v99 + 40);
              *&v162[7] = *(v99 + 55);
              *v162 = *(v99 + 48);
              v103 = *(v99 + 63);
              *(v99 + 40) = 0;
              *(v99 + 48) = 0;
              *(v99 + 56) = 0;
              do
              {
                v104 = v99;
                v99 = v98;
                v105 = *v98;
                v106 = *(v98 + 16);
                *(v104 + 32) = *(v98 + 32);
                *v104 = v105;
                *(v104 + 16) = v106;
                v107 = *(v98 + 40);
                *(v104 + 56) = *(v98 + 56);
                *(v104 + 40) = v107;
                *(v98 + 63) = 0;
                *(v98 + 40) = 0;
                if (v94 < v97)
                {
                  break;
                }

                v108 = 2 * v97;
                v97 = (2 * v97) | 1;
                v98 = v7 + (v97 << 6);
                v109 = v108 + 2;
                if (v109 < v8 && *v98 > *(v98 + 64))
                {
                  v98 += 64;
                  v97 = v109;
                }
              }

              while (*v98 <= v100);
              *v99 = v100;
              *(v99 + 8) = v179;
              *(v99 + 24) = v190;
              *(v99 + 40) = v102;
              *(v99 + 48) = *v162;
              *(v99 + 55) = *&v162[7];
              *(v99 + 63) = v103;
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        do
        {
          v110 = 0;
          v111 = a2;
          v112 = *(v7 + 40);
          v200 = *(v7 + 32);
          v180 = *v7;
          v191 = *(v7 + 16);
          *v153 = *(v7 + 48);
          *&v153[7] = *(v7 + 55);
          v113 = *(v7 + 63);
          *(v7 + 48) = 0;
          *(v7 + 56) = 0;
          v114 = v7;
          *(v7 + 40) = 0;
          do
          {
            v115 = v114;
            v116 = v114 + (v110 << 6);
            v114 = v116 + 64;
            v117 = 2 * v110;
            v110 = (2 * v110) | 1;
            v118 = v117 + 2;
            if (v118 < v8)
            {
              v120 = *(v116 + 128);
              v119 = v116 + 128;
              if (*(v119 - 64) > v120)
              {
                v114 = v119;
                v110 = v118;
              }
            }

            v121 = *v114;
            v122 = *(v114 + 16);
            *(v115 + 32) = *(v114 + 32);
            *v115 = v121;
            *(v115 + 16) = v122;
            v123 = *(v114 + 40);
            *(v115 + 56) = *(v114 + 56);
            *(v115 + 40) = v123;
            *(v114 + 63) = 0;
            *(v114 + 40) = 0;
          }

          while (v110 <= ((v8 - 2) >> 1));
          a2 -= 4;
          if (v114 == v111 - 4)
          {
            *v114 = v180;
            *(v114 + 16) = v191;
            *(v114 + 32) = v200;
            *(v114 + 40) = v112;
            *(v114 + 48) = *v153;
            *(v114 + 55) = *&v153[7];
            *(v114 + 63) = v113;
          }

          else
          {
            v124 = *a2;
            v125 = *(v111 - 3);
            *(v114 + 32) = *(v111 - 4);
            *v114 = v124;
            *(v114 + 16) = v125;
            v126 = *(v111 - 24);
            *(v114 + 56) = *(v111 - 1);
            *(v114 + 40) = v126;
            *(v111 - 4) = v200;
            *a2 = v180;
            *(v111 - 3) = v191;
            *(v111 - 3) = v112;
            *(v111 - 9) = *&v153[7];
            *(v111 - 2) = *v153;
            *(v111 - 1) = v113;
            v127 = (v114 - v7 + 64) >> 6;
            v74 = v127 < 2;
            v128 = v127 - 2;
            if (!v74)
            {
              v129 = v128 >> 1;
              v130 = v7 + (v129 << 6);
              v131 = *v114;
              if (*v130 > *v114)
              {
                v132 = *(v114 + 8);
                v163 = v132;
                v167 = *(v114 + 24);
                v133 = *(v114 + 40);
                *v170 = *(v114 + 48);
                *&v170[7] = *(v114 + 55);
                v134 = *(v114 + 63);
                *(v114 + 48) = 0;
                *(v114 + 56) = 0;
                *(v114 + 40) = 0;
                do
                {
                  v135 = v114;
                  v114 = v130;
                  v136 = *v130;
                  v137 = *(v130 + 16);
                  *(v135 + 32) = *(v130 + 32);
                  *v135 = v136;
                  *(v135 + 16) = v137;
                  v138 = *(v130 + 40);
                  *(v135 + 56) = *(v130 + 56);
                  *(v135 + 40) = v138;
                  *(v130 + 63) = 0;
                  *(v130 + 40) = 0;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = v7 + (v129 << 6);
                }

                while (*v130 > v131);
                *v114 = v131;
                *(v114 + 8) = v163;
                *(v114 + 24) = v167;
                *(v114 + 40) = v133;
                *(v114 + 48) = *v170;
                *(v114 + 55) = *&v170[7];
                *(v114 + 63) = v134;
              }
            }
          }

          v74 = v8-- <= 2;
        }

        while (!v74);
      }

      goto LABEL_137;
    }

    v9 = v8 >> 1;
    v10 = v7 + (v8 >> 1 << 6);
    if (v8 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>((a1 + (v8 >> 1 << 6)), a1, v149);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, (a1 + (v8 >> 1 << 6)), v149);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>((a1 + 64), (v10 - 64), a2 - 8);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>((a1 + 128), (a1 + 64 + (v9 << 6)), a2 - 12);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>((v10 - 64), v10, (a1 + 64 + (v9 << 6)));
      v11 = *(a1 + 40);
      v193 = *(a1 + 32);
      v171 = *a1;
      v182 = *(a1 + 16);
      *(&v154 + 7) = *(a1 + 55);
      *&v154 = *(a1 + 48);
      v12 = *(a1 + 63);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      v14 = *v10;
      v13 = *(v10 + 16);
      *(a1 + 32) = *(v10 + 32);
      *(a1 + 40) = 0;
      *a1 = v14;
      *(a1 + 16) = v13;
      v15 = *(v10 + 56);
      *(a1 + 40) = *(v10 + 40);
      *(a1 + 56) = v15;
      *v10 = v171;
      *(v10 + 16) = v182;
      *(v10 + 32) = v193;
      *(v10 + 40) = v11;
      *(v10 + 55) = *(&v154 + 7);
      *(v10 + 48) = v154;
      *(v10 + 63) = v12;
    }

    --a3;
    v16 = *a1;
    if ((a4 & 1) != 0 || *(a1 - 64) > v16)
    {
      v17 = 0;
      v18 = (a1 + 40);
      v19 = *(a1 + 40);
      v155 = *(a1 + 8);
      v165 = *(a1 + 24);
      *v151 = *(a1 + 48);
      *&v151[7] = *(a1 + 55);
      v20 = *(a1 + 63);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 40) = 0;
      do
      {
        v21 = *(a1 + v17 + 64);
        v17 += 64;
      }

      while (v21 > v16);
      v22 = a1 + v17;
      v23 = a2;
      if (v17 == 64)
      {
        v23 = a2;
        do
        {
          if (v22 >= v23)
          {
            break;
          }

          v25 = *(v23 - 8);
          v23 -= 8;
        }

        while (v25 <= v16);
      }

      else
      {
        do
        {
          v24 = *(v23 - 8);
          v23 -= 8;
        }

        while (v24 <= v16);
      }

      v7 = a1 + v17;
      if (v22 < v23)
      {
        v26 = v23;
        do
        {
          v27 = *(v7 + 40);
          v194 = *(v7 + 32);
          v172 = *v7;
          v183 = *(v7 + 16);
          *&v168 = *(v7 + 48);
          *(&v168 + 7) = *(v7 + 55);
          v28 = *(v7 + 63);
          *(v7 + 40) = 0;
          *(v7 + 48) = 0;
          *(v7 + 56) = 0;
          v29 = *v26;
          v30 = *(v26 + 16);
          *(v7 + 32) = *(v26 + 32);
          *v7 = v29;
          *(v7 + 16) = v30;
          v31 = *(v26 + 40);
          *(v7 + 56) = *(v26 + 56);
          *(v7 + 40) = v31;
          *v26 = v172;
          *(v26 + 16) = v183;
          *(v26 + 32) = v194;
          *(v26 + 40) = v27;
          *(v26 + 48) = v168;
          *(v26 + 55) = *(&v168 + 7);
          *(v26 + 63) = v28;
          do
          {
            v32 = *(v7 + 64);
            v7 += 64;
          }

          while (v32 > v16);
          do
          {
            v33 = *(v26 - 64);
            v26 -= 64;
          }

          while (v33 <= v16);
        }

        while (v7 < v26);
      }

      if (v7 - 64 == a1)
      {
        v37 = *(v7 - 1);
        *(v7 - 64) = v16;
        *(v7 - 56) = v155;
        *(v7 - 40) = v165;
        if (v37 < 0)
        {
          operator delete(*(v7 - 24));
        }
      }

      else
      {
        v34 = *(v7 - 64);
        v35 = *(v7 - 48);
        *(a1 + 32) = *(v7 - 32);
        *a1 = v34;
        *(a1 + 16) = v35;
        if (*(a1 + 63) < 0)
        {
          operator delete(*v18);
        }

        v36 = *(v7 - 24);
        *(a1 + 56) = *(v7 - 8);
        *v18 = v36;
        *(v7 - 1) = 0;
        *(v7 - 24) = 0;
        *(v7 - 64) = v16;
        *(v7 - 40) = v165;
        *(v7 - 56) = v155;
      }

      *(v7 - 24) = v19;
      *(v7 - 9) = *&v151[7];
      *(v7 - 16) = *v151;
      *(v7 - 1) = v20;
      if (v22 < v23)
      {
        goto LABEL_40;
      }

      v38 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *>(a1, v7 - 64);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *>(v7, a2))
      {
        a2 = (v7 - 64);
        if (!v38)
        {
          goto LABEL_2;
        }

        goto LABEL_137;
      }

      if (!v38)
      {
LABEL_40:
        std::__introsort<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,false>(a1, v7 - 64, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v39 = (a1 + 40);
      v40 = *(a1 + 40);
      v156 = *(a1 + 8);
      v166 = *(a1 + 24);
      *v152 = *(a1 + 48);
      *&v152[7] = *(a1 + 55);
      v41 = *(a1 + 63);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 40) = 0;
      if (v16 <= *v149)
      {
        v43 = a1 + 64;
        do
        {
          v7 = v43;
          if (v43 >= a2)
          {
            break;
          }

          v43 += 64;
        }

        while (v16 <= *v7);
      }

      else
      {
        v7 = a1;
        do
        {
          v42 = *(v7 + 64);
          v7 += 64;
        }

        while (v16 <= v42);
      }

      v44 = a2;
      if (v7 < a2)
      {
        v44 = a2;
        do
        {
          v45 = *(v44 - 8);
          v44 -= 4;
        }

        while (v16 > v45);
      }

      while (v7 < v44)
      {
        v46 = *(v7 + 40);
        v195 = *(v7 + 32);
        v173 = *v7;
        v184 = *(v7 + 16);
        *&v169 = *(v7 + 48);
        *(&v169 + 7) = *(v7 + 55);
        v47 = *(v7 + 63);
        *(v7 + 40) = 0;
        *(v7 + 48) = 0;
        *(v7 + 56) = 0;
        v48 = *v44;
        v49 = v44[1];
        *(v7 + 32) = *(v44 + 4);
        *v7 = v48;
        *(v7 + 16) = v49;
        v50 = *(v44 + 40);
        *(v7 + 56) = *(v44 + 7);
        *(v7 + 40) = v50;
        *v44 = v173;
        v44[1] = v184;
        *(v44 + 4) = v195;
        *(v44 + 5) = v46;
        *(v44 + 6) = v169;
        *(v44 + 55) = *(&v169 + 7);
        *(v44 + 63) = v47;
        do
        {
          v51 = *(v7 + 64);
          v7 += 64;
        }

        while (v16 <= v51);
        do
        {
          v52 = *(v44 - 8);
          v44 -= 4;
        }

        while (v16 > v52);
      }

      if (v7 - 64 == a1)
      {
        v56 = *(v7 - 1);
        *(v7 - 64) = v16;
        *(v7 - 56) = v156;
        *(v7 - 40) = v166;
        if (v56 < 0)
        {
          operator delete(*(v7 - 24));
        }
      }

      else
      {
        v53 = *(v7 - 64);
        v54 = *(v7 - 48);
        *(a1 + 32) = *(v7 - 32);
        *a1 = v53;
        *(a1 + 16) = v54;
        if (*(a1 + 63) < 0)
        {
          operator delete(*v39);
        }

        v55 = *(v7 - 24);
        *(a1 + 56) = *(v7 - 8);
        *v39 = v55;
        *(v7 - 1) = 0;
        *(v7 - 24) = 0;
        *(v7 - 64) = v16;
        *(v7 - 40) = v166;
        *(v7 - 56) = v156;
      }

      a4 = 0;
      *(v7 - 24) = v40;
      *(v7 - 9) = *&v152[7];
      *(v7 - 16) = *v152;
      *(v7 - 1) = v41;
    }
  }

  if (v8 != 3)
  {
    if (v8 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v7, (v7 + 64), (v7 + 128));
      v65 = a2 - 4;
      if (*(a2 - 8) > *(v7 + 128))
      {
        v175 = *(v7 + 128);
        v186 = *(v7 + 144);
        v66 = *(v7 + 168);
        v197 = *(v7 + 160);
        *&v158 = *(v7 + 176);
        *(&v158 + 7) = *(v7 + 183);
        v67 = *(v7 + 191);
        *(v7 + 168) = 0;
        *(v7 + 184) = 0;
        *(v7 + 176) = 0;
        v68 = *(a2 - 4);
        v69 = *(a2 - 3);
        *(v7 + 128) = *v65;
        *(v7 + 144) = v69;
        *(v7 + 160) = v68;
        v70 = *(a2 - 24);
        *(v7 + 184) = *(a2 - 1);
        *(v7 + 168) = v70;
        *(a2 - 4) = v197;
        *v65 = v175;
        *(a2 - 3) = v186;
        *(a2 - 3) = v66;
        *(a2 - 9) = *(&v158 + 7);
        *(a2 - 2) = v158;
        *(a2 - 1) = v67;
        if (*(v7 + 128) > *(v7 + 64))
        {
          v176 = *(v7 + 64);
          v187 = *(v7 + 80);
          v71 = *(v7 + 104);
          v198 = *(v7 + 96);
          *&v159 = *(v7 + 112);
          *(&v159 + 7) = *(v7 + 119);
          v72 = *(v7 + 127);
          v73 = *(v7 + 144);
          *(v7 + 64) = *(v7 + 128);
          *(v7 + 80) = v73;
          *(v7 + 96) = *(v7 + 160);
          *(v7 + 104) = *(v7 + 168);
          *(v7 + 120) = *(v7 + 184);
          *(v7 + 128) = v176;
          *(v7 + 144) = v187;
          *(v7 + 160) = v198;
          *(v7 + 168) = v71;
          *(v7 + 176) = v159;
          *(v7 + 183) = *(&v159 + 7);
          v74 = *(v7 + 64) <= *v7;
          *(v7 + 191) = v72;
          if (!v74)
          {
            v75 = *(v7 + 40);
            v199 = *(v7 + 32);
            v177 = *v7;
            v188 = *(v7 + 16);
            *&v160 = *(v7 + 48);
            *(&v160 + 7) = *(v7 + 55);
            v76 = *(v7 + 63);
            v77 = *(v7 + 80);
            *v7 = *(v7 + 64);
            *(v7 + 16) = v77;
            *(v7 + 32) = *(v7 + 96);
            *(v7 + 40) = *(v7 + 104);
            *(v7 + 56) = *(v7 + 120);
            *(v7 + 64) = v177;
            *(v7 + 80) = v188;
            *(v7 + 96) = v199;
            *(v7 + 104) = v75;
            *(v7 + 112) = v160;
            *(v7 + 119) = *(&v160 + 7);
            *(v7 + 127) = v76;
          }
        }
      }

      goto LABEL_137;
    }

    if (v8 == 5)
    {
      v57 = *MEMORY[0x277D85DE8];

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v7, v7 + 64, v7 + 128, (v7 + 192), v149);
      return;
    }

    goto LABEL_10;
  }

  v64 = *MEMORY[0x277D85DE8];

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(v7, (v7 + 64), v149);
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(__int128 *result, __int128 *a2, __int128 *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  if (*a2 <= *result)
  {
    if (v4 > v3)
    {
      v35 = *a2;
      v40 = a2[1];
      v10 = *(a2 + 5);
      v45 = *(a2 + 4);
      *&v30 = *(a2 + 6);
      *(&v30 + 7) = *(a2 + 55);
      v11 = *(a2 + 63);
      *(a2 + 5) = 0;
      *(a2 + 7) = 0;
      *(a2 + 6) = 0;
      v12 = *a3;
      v13 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *a2 = v12;
      a2[1] = v13;
      v14 = *(a3 + 40);
      *(a2 + 7) = *(a3 + 7);
      *(a2 + 40) = v14;
      *a3 = v35;
      a3[1] = v40;
      *(a3 + 4) = v45;
      *(a3 + 5) = v10;
      *(a3 + 6) = v30;
      *(a3 + 55) = *(&v30 + 7);
      *(a3 + 63) = v11;
      if (*a2 > *result)
      {
        v36 = *result;
        v41 = result[1];
        v15 = *(result + 5);
        v46 = *(result + 4);
        *&v31 = *(result + 6);
        *(&v31 + 7) = *(result + 55);
        v16 = *(result + 63);
        *(result + 6) = 0;
        *(result + 7) = 0;
        *(result + 5) = 0;
        v17 = *a2;
        v18 = a2[1];
        *(result + 4) = *(a2 + 4);
        *result = v17;
        result[1] = v18;
        v19 = *(a2 + 40);
        *(result + 7) = *(a2 + 7);
        *(result + 40) = v19;
        *a2 = v36;
        a2[1] = v41;
        *(a2 + 4) = v46;
        *(a2 + 5) = v15;
        *(a2 + 6) = v31;
        *(a2 + 55) = *(&v31 + 7);
        *(a2 + 63) = v16;
      }
    }
  }

  else if (v4 <= v3)
  {
    v37 = *result;
    v42 = result[1];
    v20 = *(result + 5);
    v47 = *(result + 4);
    *&v32 = *(result + 6);
    *(&v32 + 7) = *(result + 55);
    v21 = *(result + 63);
    *(result + 6) = 0;
    *(result + 7) = 0;
    *(result + 5) = 0;
    v22 = *a2;
    v23 = a2[1];
    *(result + 4) = *(a2 + 4);
    *result = v22;
    result[1] = v23;
    v24 = *(a2 + 40);
    *(result + 7) = *(a2 + 7);
    *(result + 40) = v24;
    *a2 = v37;
    a2[1] = v42;
    *(a2 + 4) = v47;
    *(a2 + 5) = v20;
    *(a2 + 6) = v32;
    *(a2 + 55) = *(&v32 + 7);
    *(a2 + 63) = v21;
    if (*a3 > *a2)
    {
      v38 = *a2;
      v43 = a2[1];
      v48 = *(a2 + 4);
      *&v33 = *(a2 + 6);
      *(&v33 + 7) = *(a2 + 55);
      *(a2 + 6) = 0;
      *(a2 + 7) = 0;
      *(a2 + 5) = 0;
      v26 = *a3;
      v25 = a3[1];
      *(a2 + 4) = *(a3 + 4);
      *a2 = v26;
      a2[1] = v25;
      v27 = *(a3 + 40);
      *(a2 + 7) = *(a3 + 7);
      *(a2 + 40) = v27;
      *a3 = v38;
      a3[1] = v43;
      *(a3 + 4) = v48;
      *(a3 + 5) = v20;
      *(a3 + 6) = v33;
      *(a3 + 55) = *(&v33 + 7);
      *(a3 + 63) = v21;
    }
  }

  else
  {
    v34 = *result;
    v39 = result[1];
    v5 = *(result + 5);
    v44 = *(result + 4);
    *&v29 = *(result + 6);
    *(&v29 + 7) = *(result + 55);
    v6 = *(result + 63);
    *(result + 6) = 0;
    *(result + 7) = 0;
    *(result + 5) = 0;
    v7 = *a3;
    v8 = a3[1];
    *(result + 4) = *(a3 + 4);
    *result = v7;
    result[1] = v8;
    v9 = *(a3 + 40);
    *(result + 7) = *(a3 + 7);
    *(result + 40) = v9;
    *a3 = v34;
    a3[1] = v39;
    *(a3 + 4) = v44;
    *(a3 + 5) = v5;
    *(a3 + 6) = v29;
    *(a3 + 55) = *(&v29 + 7);
    *(a3 + 63) = v6;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

__int128 *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  v75 = *MEMORY[0x277D85DE8];
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, a2, a3);
  if (*a4 > *a3)
  {
    v54 = *a3;
    v61 = *(a3 + 16);
    v11 = *(a3 + 40);
    v68 = *(a3 + 32);
    *&v47 = *(a3 + 48);
    *(&v47 + 7) = *(a3 + 55);
    v12 = *(a3 + 63);
    *(a3 + 40) = 0;
    *(a3 + 56) = 0;
    *(a3 + 48) = 0;
    v13 = *a4;
    v14 = a4[1];
    *(a3 + 32) = *(a4 + 4);
    *a3 = v13;
    *(a3 + 16) = v14;
    v15 = *(a4 + 40);
    *(a3 + 56) = *(a4 + 7);
    *(a3 + 40) = v15;
    *a4 = v54;
    a4[1] = v61;
    *(a4 + 4) = v68;
    *(a4 + 5) = v11;
    *(a4 + 6) = v47;
    *(a4 + 55) = *(&v47 + 7);
    *(a4 + 63) = v12;
    if (*a3 > *a2)
    {
      v55 = *a2;
      v62 = *(a2 + 16);
      v16 = *(a2 + 40);
      v69 = *(a2 + 32);
      *&v48 = *(a2 + 48);
      *(&v48 + 7) = *(a2 + 55);
      v17 = *(a2 + 63);
      *(a2 + 40) = 0;
      *(a2 + 56) = 0;
      *(a2 + 48) = 0;
      v18 = *a3;
      v19 = *(a3 + 16);
      *(a2 + 32) = *(a3 + 32);
      *a2 = v18;
      *(a2 + 16) = v19;
      v20 = *(a3 + 40);
      *(a2 + 56) = *(a3 + 56);
      *(a2 + 40) = v20;
      *a3 = v55;
      *(a3 + 16) = v62;
      *(a3 + 32) = v69;
      *(a3 + 40) = v16;
      *(a3 + 48) = v48;
      *(a3 + 55) = *(&v48 + 7);
      *(a3 + 63) = v17;
      if (*a2 > *a1)
      {
        v56 = *a1;
        v63 = *(a1 + 16);
        v21 = *(a1 + 40);
        v70 = *(a1 + 32);
        *&v49 = *(a1 + 48);
        *(&v49 + 7) = *(a1 + 55);
        v22 = *(a1 + 63);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v23 = *a2;
        v24 = *(a2 + 16);
        *(a1 + 32) = *(a2 + 32);
        *a1 = v23;
        *(a1 + 16) = v24;
        v25 = *(a2 + 40);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 40) = v25;
        *a2 = v56;
        *(a2 + 16) = v63;
        *(a2 + 32) = v70;
        *(a2 + 40) = v21;
        *(a2 + 48) = v49;
        *(a2 + 55) = *(&v49 + 7);
        *(a2 + 63) = v22;
      }
    }
  }

  if (*a5 > *a4)
  {
    v57 = *a4;
    v64 = a4[1];
    v26 = *(a4 + 5);
    v71 = *(a4 + 4);
    *&v50 = *(a4 + 6);
    *(&v50 + 7) = *(a4 + 55);
    v27 = *(a4 + 63);
    *(a4 + 5) = 0;
    *(a4 + 7) = 0;
    *(a4 + 6) = 0;
    v28 = *a5;
    v29 = a5[1];
    *(a4 + 4) = *(a5 + 4);
    *a4 = v28;
    a4[1] = v29;
    v30 = *(a5 + 40);
    *(a4 + 7) = *(a5 + 7);
    *(a4 + 40) = v30;
    *a5 = v57;
    a5[1] = v64;
    *(a5 + 4) = v71;
    *(a5 + 5) = v26;
    *(a5 + 6) = v50;
    *(a5 + 55) = *(&v50 + 7);
    *(a5 + 63) = v27;
    if (*a4 > *a3)
    {
      v58 = *a3;
      v65 = *(a3 + 16);
      v31 = *(a3 + 40);
      v72 = *(a3 + 32);
      *&v51 = *(a3 + 48);
      *(&v51 + 7) = *(a3 + 55);
      v32 = *(a3 + 63);
      *(a3 + 40) = 0;
      *(a3 + 56) = 0;
      *(a3 + 48) = 0;
      v33 = *a4;
      v34 = a4[1];
      *(a3 + 32) = *(a4 + 4);
      *a3 = v33;
      *(a3 + 16) = v34;
      v35 = *(a4 + 40);
      *(a3 + 56) = *(a4 + 7);
      *(a3 + 40) = v35;
      *a4 = v58;
      a4[1] = v65;
      *(a4 + 4) = v72;
      *(a4 + 5) = v31;
      *(a4 + 6) = v51;
      *(a4 + 55) = *(&v51 + 7);
      *(a4 + 63) = v32;
      if (*a3 > *a2)
      {
        v59 = *a2;
        v66 = *(a2 + 16);
        v36 = *(a2 + 40);
        v73 = *(a2 + 32);
        *&v52 = *(a2 + 48);
        *(&v52 + 7) = *(a2 + 55);
        v37 = *(a2 + 63);
        *(a2 + 40) = 0;
        *(a2 + 56) = 0;
        *(a2 + 48) = 0;
        v38 = *a3;
        v39 = *(a3 + 16);
        *(a2 + 32) = *(a3 + 32);
        *a2 = v38;
        *(a2 + 16) = v39;
        v40 = *(a3 + 40);
        *(a2 + 56) = *(a3 + 56);
        *(a2 + 40) = v40;
        *a3 = v59;
        *(a3 + 16) = v66;
        *(a3 + 32) = v73;
        *(a3 + 40) = v36;
        *(a3 + 48) = v52;
        *(a3 + 55) = *(&v52 + 7);
        *(a3 + 63) = v37;
        if (*a2 > *a1)
        {
          v60 = *a1;
          v67 = *(a1 + 16);
          v41 = *(a1 + 40);
          v74 = *(a1 + 32);
          *&v53 = *(a1 + 48);
          *(&v53 + 7) = *(a1 + 55);
          v42 = *(a1 + 63);
          *(a1 + 48) = 0;
          *(a1 + 56) = 0;
          *(a1 + 40) = 0;
          v43 = *a2;
          v44 = *(a2 + 16);
          *(a1 + 32) = *(a2 + 32);
          *a1 = v43;
          *(a1 + 16) = v44;
          v45 = *(a2 + 40);
          *(a1 + 56) = *(a2 + 56);
          *(a1 + 40) = v45;
          *a2 = v60;
          *(a2 + 16) = v67;
          *(a2 + 32) = v74;
          *(a2 + 40) = v41;
          *(a2 + 48) = v53;
          *(a2 + 55) = *(&v53 + 7);
          *(a2 + 63) = v42;
        }
      }
    }
  }

  v46 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *>(uint64_t a1, uint64_t a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, (a1 + 64), (a2 - 64));
        goto LABEL_26;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, (a1 + 64), (a1 + 128));
        v24 = (a2 - 64);
        if (*(a2 - 64) > *(a1 + 128))
        {
          v44 = *(a1 + 128);
          v49 = *(a1 + 144);
          v25 = *(a1 + 168);
          v53 = *(a1 + 160);
          *&v40 = *(a1 + 176);
          *(&v40 + 7) = *(a1 + 183);
          v26 = *(a1 + 191);
          *(a1 + 168) = 0;
          *(a1 + 184) = 0;
          *(a1 + 176) = 0;
          v27 = *v24;
          v28 = *(a2 - 48);
          *(a1 + 160) = *(a2 - 32);
          *(a1 + 128) = v27;
          *(a1 + 144) = v28;
          v29 = *(a2 - 24);
          *(a1 + 184) = *(a2 - 8);
          *(a1 + 168) = v29;
          *v24 = v44;
          *(a2 - 48) = v49;
          *(a2 - 32) = v53;
          *(a2 - 24) = v25;
          *(a2 - 16) = v40;
          *(a2 - 9) = *(&v40 + 7);
          *(a2 - 1) = v26;
          if (*(a1 + 128) > *(a1 + 64))
          {
            v45 = *(a1 + 64);
            v50 = *(a1 + 80);
            v30 = *(a1 + 104);
            v54 = *(a1 + 96);
            *&v41 = *(a1 + 112);
            *(&v41 + 7) = *(a1 + 119);
            v31 = *(a1 + 127);
            v32 = *(a1 + 144);
            *(a1 + 64) = *(a1 + 128);
            *(a1 + 80) = v32;
            *(a1 + 96) = *(a1 + 160);
            *(a1 + 104) = *(a1 + 168);
            *(a1 + 120) = *(a1 + 184);
            *(a1 + 128) = v45;
            *(a1 + 144) = v50;
            *(a1 + 160) = v54;
            *(a1 + 168) = v30;
            *(a1 + 176) = v41;
            *(a1 + 183) = *(&v41 + 7);
            v33 = *(a1 + 64) <= *a1;
            *(a1 + 191) = v31;
            if (!v33)
            {
              v46 = *a1;
              v51 = *(a1 + 16);
              v34 = *(a1 + 40);
              v55 = *(a1 + 32);
              *&v42 = *(a1 + 48);
              *(&v42 + 7) = *(a1 + 55);
              v35 = *(a1 + 63);
              v36 = *(a1 + 80);
              *a1 = *(a1 + 64);
              *(a1 + 16) = v36;
              *(a1 + 32) = *(a1 + 96);
              *(a1 + 40) = *(a1 + 104);
              *(a1 + 56) = *(a1 + 120);
              *(a1 + 64) = v46;
              *(a1 + 80) = v51;
              *(a1 + 96) = v55;
              *(a1 + 104) = v34;
              *(a1 + 112) = v42;
              *(a1 + 119) = *(&v42 + 7);
              result = 1;
              *(a1 + 127) = v35;
              goto LABEL_27;
            }
          }
        }

        goto LABEL_26;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, a1 + 64, a1 + 128, (a1 + 192), (a2 - 64));
        goto LABEL_26;
    }
  }

  else
  {
    if (v4 < 2)
    {
      goto LABEL_26;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 64);
      if (*(a2 - 64) > *a1)
      {
        v43 = *a1;
        v47 = *(a1 + 16);
        v6 = *(a1 + 40);
        v52 = *(a1 + 32);
        *&v38 = *(a1 + 48);
        *(&v38 + 7) = *(a1 + 55);
        v7 = *(a1 + 63);
        *(a1 + 48) = 0;
        *(a1 + 56) = 0;
        *(a1 + 40) = 0;
        v8 = *v5;
        v9 = *(a2 - 48);
        *(a1 + 32) = *(a2 - 32);
        *a1 = v8;
        *(a1 + 16) = v9;
        v10 = *(a2 - 24);
        *(a1 + 56) = *(a2 - 8);
        *(a1 + 40) = v10;
        *v5 = v43;
        *(a2 - 48) = v47;
        *(a2 - 32) = v52;
        *(a2 - 24) = v6;
        *(a2 - 16) = v38;
        *(a2 - 9) = *(&v38 + 7);
        result = 1;
        *(a2 - 1) = v7;
        goto LABEL_27;
      }

LABEL_26:
      result = 1;
      goto LABEL_27;
    }
  }

  v12 = (a1 + 128);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,CLMicroLocationLearner::fetchAndFilterUniqueLOIGroups(void)::$_1 &,ULLoiDO *,0>(a1, (a1 + 64), (a1 + 128));
  v13 = a1 + 192;
  if (a1 + 192 == a2)
  {
    goto LABEL_26;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *v13;
    if (*v13 > *v12)
    {
      v17 = *(v13 + 8);
      v48 = *(v13 + 24);
      v18 = *(v13 + 40);
      *v39 = *(v13 + 48);
      *&v39[7] = *(v13 + 55);
      v19 = *(v13 + 63);
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      v20 = v14;
      *(v13 + 40) = 0;
      while (1)
      {
        v21 = a1 + v20;
        v22 = *(a1 + v20 + 144);
        *(v21 + 192) = *(a1 + v20 + 128);
        *(v21 + 208) = v22;
        *(v21 + 224) = *(a1 + v20 + 160);
        *(v21 + 232) = *(a1 + v20 + 168);
        *(v21 + 248) = *(a1 + v20 + 184);
        *(v21 + 191) = 0;
        *(v21 + 168) = 0;
        if (v20 == -128)
        {
          break;
        }

        v20 -= 64;
        if (v16 <= *(v21 + 64))
        {
          v23 = a1 + v20 + 192;
          goto LABEL_19;
        }
      }

      v23 = a1;
LABEL_19:
      *v23 = v16;
      *(v23 + 8) = v17;
      *(v23 + 24) = v48;
      *(v21 + 168) = v18;
      *(v23 + 55) = *&v39[7];
      *(v23 + 48) = *v39;
      ++v15;
      *(v23 + 63) = v19;
      if (v15 == 8)
      {
        break;
      }
    }

    v12 = v13;
    v14 += 64;
    v13 += 64;
    if (v13 == a2)
    {
      goto LABEL_26;
    }
  }

  result = v13 + 64 == a2;
LABEL_27:
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_126()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t std::optional<ULModelWithMapLabels>::~optional(uint64_t a1)
{
  if (*(a1 + 344) == 1)
  {
    v3 = (a1 + 320);
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 272) == 1 && *(a1 + 271) < 0)
    {
      operator delete(*(a1 + 248));
    }

    std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((a1 + 32));
  }

  return a1;
}

uint64_t std::unordered_map<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration> const&>(a1, i + 4);
  }

  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration> const&>(void *a1, unsigned int *a2)
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
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

void std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,void *> *>>(void *a1, uint64_t *a2, uint64_t *a3)
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
        v10 = *(a2 + 3);
        *(v8 + 5) = *(a2 + 5);
        *(v8 + 3) = v10;
        v11 = *v8;
        v8[1] = v9;
        inserted = std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__node_insert_multi_prepare(a1, v9, v8 + 4);
        std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__node_insert_multi_perform(a1, v8, inserted);
        a2 = *a2;
        v8 = v11;
        if (!v11)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v13 = *v8;
        operator delete(v8);
        v8 = v13;
      }

      while (v13);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration>>>::__emplace_multi<std::pair<CLMicroLocationProto::DataType const,CLMicroLocationFingerprintConfiguration::MeasurementTypeConfiguration> const&>();
  }
}

void sub_259191448(void *a1)
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

uint64_t std::vector<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::__emplace_back_slow_path<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x14C1BACF914C1BADLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xDD67C8A60DD67CLL)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0x2983759F2298375ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x2983759F2298375ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x14C1BACF914C1BADLL * ((a1[2] - *a1) >> 3)) >= 0x6EB3E45306EB3ELL)
  {
    v6 = 0xDD67C8A60DD67CLL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>>(a1, v6);
  }

  v13 = 0;
  v14 = 296 * v2;
  std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>::pair[abi:ne200100]((296 * v2), a2);
  v15 = (296 * v2 + 296);
  v7 = a1[1];
  v8 = (296 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>,std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(&v13);
  return v12;
}

void sub_259191644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::pair<ULScanningEventDO,std::vector<NSManagedObjectID * {__strong}>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

__n128 std::__optional_storage_base<ULHomeSlamModel,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ULHomeSlamModel,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208) == *(a2 + 208))
  {
    if (*(a1 + 208))
    {
      std::__optional_storage_base<ULTrajectoryPointCloud,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<ULTrajectoryPointCloud,false> const&>(a1, a2);
      std::vector<ULROI>::__vdeallocate((a1 + 40));
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a2 + 40) = 0;
      *(a2 + 48) = 0;
      *(a2 + 56) = 0;
      if (a1 != a2)
      {
        *(a1 + 96) = *(a2 + 96);
        std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationAnchorAppearance>,void *> *>>((a1 + 64), *(a2 + 80), 0);
      }

      *(a1 + 104) = *(a2 + 104);
      if (*(a1 + 143) < 0)
      {
        operator delete(*(a1 + 120));
      }

      v4 = *(a2 + 120);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 120) = v4;
      *(a2 + 143) = 0;
      *(a2 + 120) = 0;
      v5 = *(a2 + 144);
      v6 = *(a2 + 160);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 144) = v5;
      *(a1 + 160) = v6;
      std::vector<ULPositionedImage>::__vdeallocate((a1 + 184));
      result = *(a2 + 184);
      *(a1 + 184) = result;
      *(a1 + 200) = *(a2 + 200);
      *(a2 + 184) = 0;
      *(a2 + 192) = 0;
      *(a2 + 200) = 0;
    }
  }

  else if (*(a1 + 208))
  {
    v11 = (a1 + 184);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 64);
    v11 = (a1 + 40);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v11);
    if (*(a1 + 32) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100]((a1 + 24), 0);
      v11 = a1;
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v11);
    }

    *(a1 + 208) = 0;
  }

  else
  {
    std::__optional_move_base<ULTrajectoryPointCloud,false>::__optional_move_base[abi:ne200100](a1, a2);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 56) = 0;
    std::unordered_map<boost::uuids::uuid,CLMicroLocationAnchorAppearance>::unordered_map(a1 + 64, a2 + 64);
    *(a1 + 104) = *(a2 + 104);
    v8 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v8;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    v9 = *(a2 + 144);
    v10 = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 144) = v9;
    *(a1 + 160) = v10;
    *(a1 + 192) = 0;
    *(a1 + 200) = 0;
    *(a1 + 184) = 0;
    result = *(a2 + 184);
    *(a1 + 184) = result;
    *(a1 + 200) = *(a2 + 200);
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 200) = 0;
    *(a1 + 208) = 1;
  }

  return result;
}

void sub_25919184C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](va);
  std::optional<ULTrajectoryPointCloud>::~optional(v2);
  _Unwind_Resume(a1);
}

void *ULHomeSlamMapperIntermediateOutputs::ULHomeSlamMapperIntermediateOutputs(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<ULStaticIntervalObject>::__init_with_size[abi:ne200100]<ULStaticIntervalObject*,ULStaticIntervalObject*>(a1, *a2, a2[1], 0xF0F0F0F0F0F0F0F1 * ((a2[1] - *a2) >> 3));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  std::vector<ULSegment>::__init_with_size[abi:ne200100]<ULSegment*,ULSegment*>((a1 + 3), a2[3], a2[4], 0x4EC4EC4EC4EC4EC5 * ((a2[4] - a2[3]) >> 3));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  std::vector<ULSegment>::__init_with_size[abi:ne200100]<ULSegment*,ULSegment*>((a1 + 6), a2[6], a2[7], 0x4EC4EC4EC4EC4EC5 * ((a2[7] - a2[6]) >> 3));
  std::unordered_map<boost::uuids::uuid,int>::unordered_map((a1 + 9), (a2 + 9));
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  std::vector<ULRFGroupPlacement>::__init_with_size[abi:ne200100]<ULRFGroupPlacement*,ULRFGroupPlacement*>((a1 + 14), a2[14], a2[15], (a2[15] - a2[14]) >> 5);
  a1[17] = 0;
  a1[18] = 0;
  a1[19] = 0;
  std::vector<ULFingerprintPlacement>::__init_with_size[abi:ne200100]<ULFingerprintPlacement*,ULFingerprintPlacement*>((a1 + 17), a2[17], a2[18], 0x2E8BA2E8BA2E8BA3 * ((a2[18] - a2[17]) >> 2));
  std::__optional_copy_base<ULHomeSlamModel,false>::__optional_copy_base[abi:ne200100]((a1 + 20), (a2 + 20));
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 47), (a2 + 47));
  a1[52] = 0;
  a1[53] = 0;
  a1[54] = 0;
  std::vector<CLMicroLocationFingerprint>::__init_with_size[abi:ne200100]<CLMicroLocationFingerprint*,CLMicroLocationFingerprint*>((a1 + 52), a2[52], a2[53], 0x6DB6DB6DB6DB6DB7 * ((a2[53] - a2[52]) >> 5));
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 55), (a2 + 55));
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 60), (a2 + 60));
  std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100]((a1 + 65), (a2 + 65));
  return a1;
}

void sub_259191A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 512) == 1)
  {
    v14 = *(v10 + 488);
    if (v14)
    {
      *(v10 + 496) = v14;
      operator delete(v14);
    }
  }

  if (*(v10 + 472) == 1)
  {
    v15 = *(v10 + 448);
    if (v15)
    {
      *(v10 + 456) = v15;
      operator delete(v15);
    }
  }

  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&a10);
  if (*(v10 + 408) == 1)
  {
    v16 = *(v10 + 384);
    if (v16)
    {
      *(v10 + 392) = v16;
      operator delete(v16);
    }
  }

  std::optional<ULHomeSlamModel>::~optional(v10 + 160);
  v17 = *v12;
  if (*v12)
  {
    *(v10 + 144) = v17;
    operator delete(v17);
  }

  v18 = *v11;
  if (*v11)
  {
    *(v10 + 120) = v18;
    operator delete(v18);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(v10 + 72);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = v10;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULStaticIntervalObject>::__init_with_size[abi:ne200100]<ULStaticIntervalObject*,ULStaticIntervalObject*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULStaticIntervalObject>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259191B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::vector<ULSegment>::__init_with_size[abi:ne200100]<ULSegment*,ULSegment*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259191C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<boost::uuids::uuid,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int> const&>(a1, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,int>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,int>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,int>>>::__emplace_unique_key_args<boost::uuids::uuid,std::pair<boost::uuids::uuid const,int> const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

uint64_t std::vector<ULRFGroupPlacement>::__init_with_size[abi:ne200100]<ULRFGroupPlacement*,ULRFGroupPlacement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULRFGroupPlacement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259191F68(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<ULRFGroupPlacement>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULEndpointClusteringAlgorithm::FingerprintCumulativeOdometryState>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<ULFingerprintPlacement>::__init_with_size[abi:ne200100]<ULFingerprintPlacement*,ULFingerprintPlacement*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULFingerprintPlacement>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259192020(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

ULHomeSlamModel *std::__optional_copy_base<ULHomeSlamModel,false>::__optional_copy_base[abi:ne200100](ULHomeSlamModel *this, const ULHomeSlamModel *a2)
{
  *this = 0;
  *(this + 208) = 0;
  if (*(a2 + 208) == 1)
  {
    ULHomeSlamModel::ULHomeSlamModel(this, a2);
    *(this + 208) = 1;
  }

  return this;
}

void sub_259192084(_Unwind_Exception *exception_object)
{
  if (*(v1 + 208) == 1)
  {
    ULHomeSlamModel::~ULHomeSlamModel(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__optional_copy_base<CLDistanceMatrixTemplate<CLSymmetricMatrixStorage<float>>,false>::__optional_copy_base[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 32) == 1)
  {
    *a1 = *a2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1 + 8, *(a2 + 8), *(a2 + 16), (*(a2 + 16) - *(a2 + 8)) >> 2);
    *(a1 + 32) = 1;
  }

  return a1;
}

void sub_259192118(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *v2;
    if (*v2)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }
  }

  _Unwind_Resume(exception_object);
}

void ULHomeSlamMapperIntermediateOutputs::~ULHomeSlamMapperIntermediateOutputs(ULHomeSlamMapperIntermediateOutputs *this)
{
  if (*(this + 552) == 1)
  {
    v2 = *(this + 66);
    if (v2)
    {
      *(this + 67) = v2;
      operator delete(v2);
    }
  }

  if (*(this + 512) == 1)
  {
    v3 = *(this + 61);
    if (v3)
    {
      *(this + 62) = v3;
      operator delete(v3);
    }
  }

  if (*(this + 472) == 1)
  {
    v4 = *(this + 56);
    if (v4)
    {
      *(this + 57) = v4;
      operator delete(v4);
    }
  }

  v8 = (this + 416);
  std::vector<CLMicroLocationFingerprint>::__destroy_vector::operator()[abi:ne200100](&v8);
  if (*(this + 408) == 1)
  {
    v5 = *(this + 48);
    if (v5)
    {
      *(this + 49) = v5;
      operator delete(v5);
    }
  }

  if (*(this + 368) == 1)
  {
    v8 = (this + 344);
    std::vector<ULPositionedImage>::__destroy_vector::operator()[abi:ne200100](&v8);
    if (*(this + 303) < 0)
    {
      operator delete(*(this + 35));
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 224);
    v8 = (this + 200);
    std::vector<ULROI>::__destroy_vector::operator()[abi:ne200100](&v8);
    if (*(this + 192) == 1)
    {
      std::unique_ptr<ULOctreeNode<std::shared_ptr<ULTrajectoryPoint>>>::reset[abi:ne200100](this + 23, 0);
      v8 = (this + 160);
      std::vector<std::shared_ptr<ULTrajectoryPoint>>::__destroy_vector::operator()[abi:ne200100](&v8);
    }
  }

  v6 = *(this + 17);
  if (v6)
  {
    *(this + 18) = v6;
    operator delete(v6);
  }

  v7 = *(this + 14);
  if (v7)
  {
    *(this + 15) = v7;
    operator delete(v7);
  }

  std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(this + 72);
  v8 = (this + 48);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = (this + 24);
  std::vector<ULSegment>::__destroy_vector::operator()[abi:ne200100](&v8);
  v8 = this;
  std::vector<ULStaticIntervalObject>::__destroy_vector::operator()[abi:ne200100](&v8);
}

uint64_t *std::back_insert_iterator<std::vector<ULScanningEventDO>>::operator=[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  if (v3 >= *(*a1 + 16))
  {
    v4 = std::vector<ULScanningEventDO>::__emplace_back_slow_path<ULScanningEventDO>(*a1);
  }

  else
  {
    ULScanningEventDO::ULScanningEventDO(*(*a1 + 8));
    v4 = v3 + 272;
    *(v2 + 8) = v3 + 272;
  }

  *(v2 + 8) = v4;
  return a1;
}

void std::vector<ULMapLabelDOAndLabelObjectID>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<ULMapLabelDOAndLabelObjectID>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::vector<BOOL>::push_back(uint64_t result, _BYTE *a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    result = std::vector<BOOL>::reserve(result, v7);
    v4 = v3[1];
  }

  v3[1] = v4 + 1;
  v8 = *v3;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *(v8 + 8 * v9) | v10;
  }

  else
  {
    v11 = *(v8 + 8 * v9) & ~v10;
  }

  *(v8 + 8 * v9) = v11;
  return result;
}

void ___ZL47_CLLogObjectForCategory_MicroLocationQE_Defaultv_block_invoke_6()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocationQE");
  v1 = logObject_MicroLocationQE_Default;
  logObject_MicroLocationQE_Default = v0;
}

void std::vector<CLMicroLocationRapportMonitorItem>::__vdeallocate(void **a1)
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
        v3 -= 80;
        std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v3);
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

void std::vector<CLMicroLocationRapportMonitorItem>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<ULBluetoothIdentityDO,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<ULAnchorAppearanceMapDO>::__init_with_size[abi:ne200100]<ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ULAnchorAppearanceMapDO>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_259192590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<ULAnchorAppearanceMapDO>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<ULAnchorAppearanceMapDO>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>>(a1, a2);
  }

  std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULAnchorAppearanceMapDO>,ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO const*,ULAnchorAppearanceMapDO*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(a2 + v7);
      *(v8 + 16) = *(a2 + v7 + 16);
      *v8 = v9;
      CLMicroLocationProto::AnchorAppearanceConfiguration::AnchorAppearanceConfiguration((a4 + v7 + 24), (a2 + v7 + 24));
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_259192680(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 32);
    do
    {
      CLMicroLocationProto::AnchorAppearanceConfiguration::~AnchorAppearanceConfiguration(v5);
      v5 = (v6 - 56);
      v4 += 56;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__optional_storage_base<CLMicroLocationModel::BlueAtlasData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<CLMicroLocationModel::BlueAtlasData,false>>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 64))
    {
      std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a1, a2);
      result = *(a2 + 24);
      v5 = *(a2 + 40);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 40) = v5;
      *(a1 + 24) = result;
    }
  }

  else if (*(a1 + 64))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 64) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = *(a2 + 24);
    v7 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v7;
    *(a1 + 24) = result;
    *(a1 + 64) = 1;
  }

  return result;
}

void std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::clear(a1);
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

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<CLMicroLocationFingerprint *,CLMicroLocationFingerprint *,CLMicroLocationFingerprint *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::__move_assign(a4, v5);
    v7 = *(v5 + 40);
    *(a4 + 56) = *(v5 + 56);
    *(a4 + 40) = v7;
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a4 + 64, (v5 + 64));
    std::__hash_table<CLMicroLocationProto::DataType,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,std::allocator<CLMicroLocationProto::DataType>>::__move_assign(a4 + 104, (v5 + 104));
    v8 = *(v5 + 144);
    *(a4 + 160) = *(v5 + 160);
    *(a4 + 144) = v8;
    std::vector<CLMicroLocationProto::ConfidenceReason>::__move_assign(a4 + 168, (v5 + 168));
    *(a4 + 192) = *(v5 + 192);
    std::vector<ULPhotoFeaturesDO>::__vdeallocate((a4 + 200));
    *(a4 + 200) = *(v5 + 200);
    *(a4 + 216) = *(v5 + 216);
    *(v5 + 200) = 0;
    *(v5 + 208) = 0;
    *(v5 + 216) = 0;
    a4 += 224;
    v5 += 224;
  }

  while (v5 != v6);
  return v6;
}

ULMapLabelDO *std::vector<ULMapLabelDOAndLabelObjectID>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>>(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xEEEEEEEEEEEEEEEFLL * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xEEEEEEEEEEEEEEEFLL * ((v10 - a2) >> 4)) >= a5)
      {
        v18 = 30 * a5;
        std::vector<ULMapLabelDOAndLabelObjectID>::__move_range(a1, a2, a1[1], a2 + 240 * a5);
        v17 = &v7[v18];
      }

      else
      {
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,ULMapLabelDOAndLabelObjectID*>(a1, a3 + v16, a4, a1[1]);
        if (v16 < 1)
        {
          return v5;
        }

        std::vector<ULMapLabelDOAndLabelObjectID>::__move_range(a1, v5, v10, &v5[3 * a5]);
        v17 = (v7 + v16);
      }

      std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,ULMapLabelDOAndLabelObjectID *>(v24, v7, v17, v5);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x1111111111111111 * ((v10 - *a1) >> 4);
    if (v12 > 0x111111111111111)
    {
      std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
    }

    v13 = a2 - v11;
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((v9 - v11) >> 4);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x88888888888888)
    {
      v15 = 0x111111111111111;
    }

    else
    {
      v15 = v12;
    }

    v27 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, v15);
    }

    v19 = 16 * (v13 >> 4);
    v24[0] = 0;
    v24[1] = v19;
    v25 = v19;
    v26 = 0;
    v20 = 240 * a5;
    v21 = v19 + 240 * a5;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v19, v7);
      v22 = v7[29];
      v7[29] = 0;
      *(v19 + 232) = v22;
      v19 += 240;
      v7 += 30;
      v20 -= 240;
    }

    while (v20);
    v25 = v21;
    v5 = std::vector<ULMapLabelDOAndLabelObjectID>::__swap_out_circular_buffer(a1, v24, v5);
    std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(v24);
  }

  return v5;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = a2 + v6 - a4;
    v8 = *(a1 + 8);
    do
    {
      ULMapLabelDO::ULMapLabelDO(v8, v10);
      v11 = *(v10 + 232);
      *(v10 + 232) = 0;
      *(v8 + 232) = v11;
      v10 += 240;
      v8 += 240;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *>(&v13, a2, v7, v6);
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, ULMapLabelDO *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID*>>,ULMapLabelDOAndLabelObjectID*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      ULMapLabelDO::ULMapLabelDO(v4, v6);
      v7 = *(v6 + 232);
      *(v6 + 232) = 0;
      *(v4 + 232) = v7;
      v6 += 240;
      v4 = v12 + 240;
      v12 += 240;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *,ULMapLabelDOAndLabelObjectID *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      ULMapLabelDO::operator=(a4 - 240, (v7 - 240));
      v8 = *(v7 - 8);
      *(v7 - 8) = 0;
      v9 = *(a4 - 8);
      *(a4 - 8) = v8;

      a4 -= 240;
      v7 -= 240;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t *std::__copy_impl::operator()[abi:ne200100]<std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,std::move_iterator<std::__wrap_iter<ULMapLabelDOAndLabelObjectID *>>,ULMapLabelDOAndLabelObjectID *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      ULMapLabelDO::operator=(a4, v5);
      v7 = v5[29];
      v5[29] = 0;
      v8 = *(a4 + 232);
      *(a4 + 232) = v7;

      v5 += 30;
      a4 += 240;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void ULModelWithMapLabels::~ULModelWithMapLabels(ULModelWithMapLabels *this)
{
  v2 = (this + 320);
  std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 272) == 1 && *(this + 271) < 0)
  {
    operator delete(*(this + 31));
  }

  std::__variant_detail::__dtor<std::__variant_detail::__traits<ULProtoMessageWrapper<CLMicroLocationProto::Model>,ULProtoMessageWrapper<CLMicroLocationProto::HomeSlamModel>,ULProtoMessageWrapper<CLMicroLocationProto::VMKModel>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](this + 8);
}

uint64_t std::__tuple_impl<std::__tuple_indices<0ul,1ul,2ul>,boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>::__tuple_impl(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  CLMicroLocationModel::CLMicroLocationModel((a1 + 16), (a2 + 16));
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  std::vector<ULMapLabelDOAndLabelObjectID>::__init_with_size[abi:ne200100]<ULMapLabelDOAndLabelObjectID*,ULMapLabelDOAndLabelObjectID*>(a1 + 320, *(a2 + 320), *(a2 + 328), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 328) - *(a2 + 320)) >> 4));
  return a1;
}

uint64_t std::optional<std::tuple<boost::uuids::uuid,CLMicroLocationModel,std::vector<ULMapLabelDOAndLabelObjectID>>>::~optional(uint64_t a1)
{
  if (*(a1 + 344) == 1)
  {
    v5 = (a1 + 320);
    std::vector<ULMapLabelDOAndLabelObjectID>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    v2 = *(a1 + 264);
    if (v2)
    {
      *(a1 + 272) = v2;
      operator delete(v2);
    }

    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,std::vector<boost::uuids::uuid>>>>::~__hash_table(a1 + 216);
    v5 = (a1 + 192);
    std::vector<std::pair<std::shared_ptr<CLMicroLocationFingerprint>,boost::uuids::uuid>>::__destroy_vector::operator()[abi:ne200100](&v5);
    if (*(a1 + 152) == 1)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        *(a1 + 96) = v3;
        operator delete(v3);
      }
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a1 + 32);
  }

  return a1;
}

CLMicroLocationFingerprint *std::vector<CLMicroLocationFingerprint>::__assign_with_size[abi:ne200100]<CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*>(uint64_t *a1, uint64_t a2, CLMicroLocationFingerprint *a3, unint64_t a4)
{
  v6 = a2;
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5) < a4)
  {
    std::vector<CLMicroLocationFingerprint>::__vdeallocate(a1);
    if (a4 <= 0x124924924924924)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 5)) >= 0x92492492492492)
      {
        v10 = 0x124924924924924;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CLMicroLocationFingerprint>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - v8;
  if (0x6DB6DB6DB6DB6DB7 * ((v11 - v8) >> 5) >= a4)
  {
    while (v6 != a3)
    {
      CLMicroLocationFingerprint::operator=(v8, v6);
      v6 += 224;
      v8 += 224;
    }

    return std::vector<CLMicroLocationFingerprint>::__base_destruct_at_end[abi:ne200100](a1, v8);
  }

  else
  {
    if (v11 != v8)
    {
      v13 = v11 - v8;
      v14 = a2;
      do
      {
        CLMicroLocationFingerprint::operator=(v8, v14);
        v14 += 224;
        v8 += 224;
        v13 -= 224;
      }

      while (v13);
      v11 = a1[1];
    }

    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint*>(a1, &v12[v6], a3, v11);
    a1[1] = result;
  }

  return result;
}

CLMicroLocationFingerprint *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint const*,CLMicroLocationFingerprint*>(uint64_t a1, CLMicroLocationFingerprint *a2, CLMicroLocationFingerprint *a3, CLMicroLocationFingerprint *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      CLMicroLocationFingerprint::CLMicroLocationFingerprint(v4, v6);
      v6 = (v6 + 224);
      v4 = (v11 + 224);
      v11 = (v11 + 224);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CLMicroLocationFingerprint>,CLMicroLocationFingerprint*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::vector<ULMapLabelDOAndLabelObjectID>::__emplace_back_slow_path<ULMapLabelDO const&,NSManagedObjectID * const {__strong}&>(uint64_t a1, const ULMapLabelDO *a2, NSManagedObjectID **a3)
{
  v3 = 0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x111111111111111)
  {
    std::vector<ULEventLogDO>::__throw_length_error[abi:ne200100]();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 16) - *a1) >> 4) >= 0x88888888888888)
  {
    v7 = 0x111111111111111;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>>(a1, v7);
  }

  v14 = 0;
  v15 = 240 * v3;
  v16 = 240 * v3;
  ULMapLabelDOAndLabelObjectID::ULMapLabelDOAndLabelObjectID((240 * v3), a2, *a3);
  *&v16 = 240 * v3 + 240;
  v8 = *(a1 + 8);
  v9 = (240 * v3 + *a1 - v8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ULMapLabelDOAndLabelObjectID>,ULMapLabelDOAndLabelObjectID*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(&v14);
  return v13;
}

void sub_259193384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<ULMapLabelDOAndLabelObjectID>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CDE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::onLearningBegin(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591934BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_0>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CE68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::generateAnchorAppearanceMap(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259193650(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_1>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CEE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::learnFromModelType(v3, v7, 0);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2591937E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_2>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CF68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::learnFromModelType(v3, v7, 2);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259193980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_3>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5CFE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::learnFromModelType(v3, v7, 4);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259193B18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_4>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5D068;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::learnBlueAtlasModelWorkItem(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259193CAC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_5>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6>,void ()(std::function<BOOL ()(void)>)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286A5D0E8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6>,void ()(std::function<BOOL ()(void)>)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v6, a2);
  v3 = *(a1 + 8);
  std::__function::__value_func<BOOL ()(void)>::__value_func[abi:ne200100](v7, v6);
  CLMicroLocationLearner::onLearningCompleted(v3, v7);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  result = std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_259193E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6,std::allocator<CLMicroLocationLearner::CLMicroLocationLearner(CLMicroLocationLearner::ILearnerDelegate &,ULDatabaseStoreInterface &,ULDatabaseManagementInterface &)::$_6>,void ()(std::function<BOOL ()(void)>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, void **a2)
{
  result = *std::__tree<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::__map_value_compare<std::string,std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,CLSqliteDatabaseManager::ConnectionState>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_259193FC4(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,DeviceModel>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v5 = (v2 + 232);
      std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v5);
      v4 = *(v2 + 25);
      if (v4)
      {
        *(v2 + 26) = v4;
        operator delete(v4);
      }

      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((v2 + 136));
      std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table((v2 + 96));
      std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table((v2 + 32));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__emplace_unique_key_args<boost::uuids::uuid,boost::uuids::uuid const&,CLMicroLocationFingerprint const&>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (result = *v7) == 0)
  {
LABEL_24:
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__construct_node_hash<boost::uuids::uuid const&,CLMicroLocationFingerprint const&>();
  }

  while (1)
  {
    v9 = result[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    result = *result;
    if (!result)
    {
      goto LABEL_24;
    }
  }

  if (result[2] != *a2 || result[3] != a2[1])
  {
    goto LABEL_23;
  }

  return result;
}

void sub_2591942D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,void *>>>::operator()[abi:ne200100](&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_259194390(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,void *>>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v4 = (a2 + 232);
    std::vector<ULPhotoFeaturesDO>::__destroy_vector::operator()[abi:ne200100](&v4);
    v3 = *(a2 + 200);
    if (v3)
    {
      *(a2 + 208) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 136);
    std::__hash_table<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::__unordered_map_hasher<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::hash<CLMicroLocationProto::DataType>,std::equal_to<CLMicroLocationProto::DataType>,true>,std::__unordered_map_equal<CLMicroLocationProto::DataType,std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>,std::equal_to<CLMicroLocationProto::DataType>,std::hash<CLMicroLocationProto::DataType>,true>,std::allocator<std::__hash_value_type<CLMicroLocationProto::DataType,CLMicroLocationFingerprint::StartAndEndTimestamps>>>::~__hash_table(a2 + 96);
    std::__hash_table<CLMicroLocationFingerprint::Measurement,CLMicroLocationFingerprint::Measurement::HashMeasurement,CLMicroLocationFingerprint::Measurement::PredicateMeasurement,std::allocator<CLMicroLocationFingerprint::Measurement>>::~__hash_table(a2 + 32);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,CLMicroLocationFingerprint>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t std::__function::__func<CLMicroLocationLearner::learnBlueAtlasModel(boost::uuids::uuid const&)::$_0,std::allocator<CLMicroLocationLearner::learnBlueAtlasModel(boost::uuids::uuid const&)::$_0>,BOOL ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__hash_table<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::__unordered_map_hasher<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::hash<boost::uuids::uuid>,std::equal_to<boost::uuids::uuid>,true>,std::__unordered_map_equal<boost::uuids::uuid,std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,std::equal_to<boost::uuids::uuid>,std::hash<boost::uuids::uuid>,true>,std::allocator<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>>>::__emplace_unique_key_args<boost::uuids::uuid,std::piecewise_construct_t const&,std::tuple<boost::uuids::uuid const&>,std::tuple<>>(void *a1, void *a2)
{
  v2 = 0;
  for (i = 0; i != 16; ++i)
  {
    v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + *(a2 + i);
  }

  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_24;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2;
    if (v2 >= *&v4)
    {
      v6 = v2 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v2)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_24;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_24;
    }
  }

  if (v8[2] != *a2 || v8[3] != a2[1])
  {
    goto LABEL_23;
  }

  return v8;
}

void sub_2591947E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<boost::uuids::uuid,NSDate * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v53 = *MEMORY[0x277D85DE8];
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 24) = ULSettings::get<ULSettings::NullSpaceKernelFunction>();
  v47[0] = 0;
  v47[1] = 0;
  v46 = v47;
  v6 = *(a2 + 23);
  v7 = *(a2 + 8);
  if ((v6 & 0x80000000) == 0 || v7 != 38)
  {
    if ((v6 & 0x80000000) == 0 || v7 != 24)
    {
      if (v6 < 0 && v7 == 34 && !memcmp(*a2, "com.apple.microlocation.similarity", 0x22uLL))
      {
        if (a3 == 5)
        {
          *(a1 + 32) = 4;
          v20 = +[ULDefaultsSingleton shared];
          v21 = [v20 defaultsDictionary];

          v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBlueAtlasFingerprintDistanceFunctionType"];
          v23 = [v21 objectForKey:v22];
          if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v24 = [v23 unsignedIntValue];
          }

          else
          {
            v24 = [&unk_286A72708 unsignedIntValue];
          }

          v44 = v24;

          *(a1 + 36) = v44;
        }

        else
        {
          *(a1 + 32) = 3;
        }
      }

      goto LABEL_47;
    }

    if (**a2 != 0x6C7070612E6D6F63 || *(*a2 + 8) != 0x61636967616D2E65 || *(*a2 + 16) != 0x73746E656D6F6D6CLL)
    {
      goto LABEL_47;
    }

LABEL_19:
    *(a1 + 32) = ULSettings::get<ULSettings::LocalizerAlgorithm>();
    v15 = ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMinPercentile>();
    v45 = 0;
    *buf = &v45;
    *(std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v45) + 5) = v15;
    v16 = ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMaxPercentile>();
    v45 = 1;
    *buf = &v45;
    *(std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v45) + 5) = v16;
    v17 = ULSettings::get<ULSettings::NullSpaceKernelFunction>();
    v18 = *(a1 + 24);
    *(a1 + 24) = v17;

    v19 = ULSettings::get<ULSettings::FingerprintDistanceFunctionTypeForLocalizing>();
LABEL_46:
    *(a1 + 36) = v19;
    goto LABEL_47;
  }

  if (memcmp(*a2, "com.apple.microlocation.semisupervised", 0x26uLL))
  {
    goto LABEL_47;
  }

  if (a3 == 3)
  {
    goto LABEL_19;
  }

  if (a3 == 4)
  {
    *(a1 + 32) = 2;
    v8 = +[ULDefaultsSingleton shared];
    v9 = [v8 defaultsDictionary];

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBinaryModelRoiReductionPercentile"];
    v11 = [v9 objectForKey:v10];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v11 doubleValue];
    }

    else
    {
      [&unk_286A72F60 doubleValue];
    }

    v27 = v12;

    v45 = 2;
    *buf = &v45;
    std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v45)[5] = v27;
    v28 = +[ULDefaultsSingleton shared];
    v29 = [v28 defaultsDictionary];

    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBinaryModelNotRoiReductionPercentile"];
    v31 = [v29 objectForKey:v30];
    if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v31 doubleValue];
    }

    else
    {
      [&unk_286A72F70 doubleValue];
    }

    v33 = v32;

    v45 = 3;
    *buf = &v45;
    std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v45)[5] = v33;
    v34 = ULSettings::get<ULSettings::NullSpaceKernelFunction>();
    v35 = *(a1 + 24);
    *(a1 + 24) = v34;

    v36 = +[ULDefaultsSingleton shared];
    v37 = [v36 defaultsDictionary];

    v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULBinaryModelDetectionThreshold"];
    v39 = [v37 objectForKey:v38];
    if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v39 doubleValue];
    }

    else
    {
      [&unk_286A72F80 doubleValue];
    }

    v41 = v40;

    v45 = 4;
    *buf = &v45;
    std::__tree<std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::__map_value_compare<CLMicroLocationProto::DataType,std::__value_type<CLMicroLocationProto::DataType,unsigned long>,std::less<CLMicroLocationProto::DataType>,true>,std::allocator<std::__value_type<CLMicroLocationProto::DataType,unsigned long>>>::__emplace_unique_key_args<CLMicroLocationProto::DataType,std::piecewise_construct_t const&,std::tuple<CLMicroLocationProto::DataType const&>,std::tuple<>>(a1, &v45)[5] = v41;
    v19 = ULSettings::get<ULSettings::FingerprintDistanceFunctionTypeForLocalizing>();
    goto LABEL_46;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings();
  }

  v25 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v49 = 2082;
    v50 = "";
    v51 = 2050;
    v52 = a3;
    _os_log_impl(&dword_258FE9000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Unexpected generation algorithm for kMicroLocationSemisupervisedDomain!, Generation Algorithm:%{public}lu}", buf, 0x1Cu);
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLocalizationSettings::CLMicroLocationLocalizationSettings();
  }

  v26 = logObject_MicroLocation_Default;
  if (os_signpost_enabled(logObject_MicroLocation_Default))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    v49 = 2082;
    v50 = "";
    v51 = 2050;
    v52 = a3;
    _os_signpost_emit_with_name_impl(&dword_258FE9000, v26, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unexpected generation algorithm for kMicroLocationSemisupervisedDomain!", "{msg%{public}.0s:Unexpected generation algorithm for kMicroLocationSemisupervisedDomain!, Generation Algorithm:%{public}lu}", buf, 0x1Cu);
  }

LABEL_47:
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&v46, v47[0]);
  v42 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_259194F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12)
{
  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(&a11, a12);

  std::__tree<std::__value_type<int,float>,std::__map_value_compare<int,std::__value_type<int,float>,std::less<int>,true>,std::allocator<std::__value_type<int,float>>>::destroy(v12, *(v12 + 8));
  _Unwind_Resume(a1);
}

id ULSettings::get<ULSettings::NullSpaceKernelFunction>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceKernelFunction"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = v3;
  }

  else
  {
    v4 = &unk_286A73638;
  }

  return v4;
}

uint64_t ULSettings::get<ULSettings::LocalizerAlgorithm>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULLocalizerAlgorithm"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A72720 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

double ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMinPercentile>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceDistanceReductionFunctionMinPercentile"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72F90 doubleValue];
  }

  v5 = v4;

  return v5;
}

double ULSettings::get<ULSettings::NullSpaceDistanceReductionFunctionMaxPercentile>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNullSpaceDistanceReductionFunctionMaxPercentile"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v3 doubleValue];
  }

  else
  {
    [&unk_286A72FB0 doubleValue];
  }

  v5 = v4;

  return v5;
}

uint64_t ULSettings::get<ULSettings::FingerprintDistanceFunctionTypeForLocalizing>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULFingerprintDistanceFunctionTypeForLocalizing"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = [&unk_286A726F0 unsignedIntValue];
  }

  v5 = v4;

  return v5;
}

uint64_t CLMicroLocationLocalizationSettings::getDetectionThresholdForBinaryROI(CLMicroLocationLocalizationSettings *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = (this + 8);
  do
  {
    if (v1[8] >= 4)
    {
      v2 = v1;
    }

    v1 = *&v1[2 * (v1[8] < 4)];
  }

  while (v1);
  if (v2 == (this + 8) || v2[8] > 4)
  {
    return 0;
  }

  v4 = 4;
  return *std::map<CLMicroLocationLocalizationSettings::LocalizerSettingsTypes,double>::at(this, &v4);
}

void ___ZL45_CLLogObjectForCategory_MicroLocation_Defaultv_block_invoke_127()
{
  v0 = os_log_create("com.apple.MicroLocation", "MicroLocation");
  v1 = logObject_MicroLocation_Default;
  logObject_MicroLocation_Default = v0;
}

uint64_t CLMicroLocationLogic::CLMicroLocationLogic(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  *a1 = &unk_286A5D208;
  *(a1 + 8) = &unk_286A5D2F0;
  *(a1 + 16) = &unk_286A5D338;
  *(a1 + 24) = &unk_286A5D370;
  *(a1 + 32) = &unk_286A5D398;
  *(a1 + 40) = 1;
  *(a1 + 42) = 1;
  *(a1 + 48) = a3;
  *(a1 + 56) = a4;
  v6 = *a5;
  *a5 = 0;
  *(a1 + 64) = v6;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = a2;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  CLMicroLocationLogic::reloadAnchorDeviceModelAllowedList(a1);
  return a1;
}

void sub_2591957C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v13 = v12;
  a10 = v13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  v15 = *(v10 + 88);
  *(v10 + 88) = 0;
  if (v15)
  {
    CLMicroLocationLogic::CLMicroLocationLogic(v15);
  }

  CLMicroLocationLogic::CLMicroLocationLogic(v10, v11);
  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::reloadAnchorDeviceModelAllowedList(CLMicroLocationLogic *this)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = +[ULDefaultsSingleton shared];
  v3 = [v2 defaultsDictionary];

  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULAnchorDeviceModelAllowedList"];
  v5 = [v3 objectForKey:v4];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    memset(&v15, 0, sizeof(v15));
    std::vector<std::string>::reserve(&v15, [v6 count]);
    v18 = 0u;
    v19 = 0u;
    memset(v17, 0, sizeof(v17));
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:v17 objects:v20 count:16];
    if (v8)
    {
      v9 = **&v17[16];
      do
      {
        v10 = 0;
        do
        {
          if (**&v17[16] != v9)
          {
            objc_enumerationMutation(v7);
          }

          std::string::basic_string[abi:ne200100]<0>(&__p, [*(*&v17[8] + 8 * v10) UTF8String]);
          std::vector<std::string>::push_back[abi:ne200100](&v15, &__p);
          if (SHIBYTE(__p.__end_cap_.__value_) < 0)
          {
            operator delete(__p.__begin_);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v7 countByEnumeratingWithState:v17 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = *&v15.__begin_;
    *v20 = *&v15.__begin_;
    value = v15.__end_cap_.__value_;
    memset(&v15, 0, sizeof(v15));
    *v17 = &v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  }

  else
  {
    memset(v17, 0, 24);
    memset(&__p, 0, sizeof(__p));
    std::vector<std::string>::reserve(&__p, 0xDuLL);
    for (i = 0; i != 13; ++i)
    {
      std::string::basic_string[abi:ne200100]<0>(v20, _ZGRN10ULSettings14SettingsTraitsINS_28AnchorDeviceModelAllowedListEE12defaultValueE_[i]);
      std::vector<std::string>::push_back[abi:ne200100](&__p, v20);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }
    }

    std::vector<std::string>::__vdeallocate(v17);
    *v17 = __p;
    memset(&__p, 0, sizeof(__p));
    v20[0] = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v20);
    v14 = *v17;
    v20[0] = *v17;
    value = *&v17[16];
    memset(v17, 0, 24);
    __p.__begin_ = v17;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  std::vector<std::string>::__vdeallocate((this + 104));
  *(this + 104) = v14;
  *(this + 15) = value;
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  *v17 = v20;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_259195AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  a15 = &a11;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);

  _Unwind_Resume(a1);
}

void CLMicroLocationLogic::~CLMicroLocationLogic(CLMicroLocationLogic *this)
{
  *this = &unk_286A5D208;
  *(this + 1) = &unk_286A5D2F0;
  *(this + 2) = &unk_286A5D338;
  *(this + 3) = &unk_286A5D370;
  *(this + 4) = &unk_286A5D398;
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "CLMicroLocationLogic: DTOR", v6, 2u);
  }

  (*(**(this + 8) + 24))(*(this + 8));
  v7 = (this + 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v3 = *(this + 11);
  *(this + 11) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic(this);

  JUMPOUT(0x259CA1F90);
}

void non-virtual thunk toCLMicroLocationLogic::~CLMicroLocationLogic(CLMicroLocationLogic *this)
{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 8));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 16));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 24));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 32));
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 8));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 16));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 24));

  JUMPOUT(0x259CA1F90);
}

{
  CLMicroLocationLogic::~CLMicroLocationLogic((this - 32));

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationLogic::setDependencies(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v9 = *a2;
  v8 = a2[1];
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(a1 + 80);
  *(a1 + 72) = v9;
  *(a1 + 80) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *a3;
  *a3 = 0;
  v12 = *(a1 + 88);
  *(a1 + 88) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  v13 = *(a1 + 72);
  if ([MEMORY[0x277D28868] isMac])
  {
    v14 = [MEMORY[0x277D28868] isMacBook];
  }

  else
  {
    v14 = 1;
  }

  (*(*(v13 + 8) + 40))(v13 + 8, v14);
  v15 = *(a1 + 72);
  v16 = ULSettings::get<ULSettings::Enabled>();
  (*(*(v15 + 8) + 56))(v15 + 8, v16);
  ULSettings::get<ULSettings::OverrideCurrentRTLOIType>(&v26);
  size = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  v18 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v26.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    *&v29 = (*(**(a1 + 88) + 16))(*(a1 + 88));
    *(&v29 + 1) = v19;
    v20 = (*(**(a1 + 48) + 64))(*(a1 + 48));
    v27 = v29;
    v24 = 0;
    v25 = 0;
    __p = 0;
    std::vector<boost::uuids::uuid>::__init_with_size[abi:ne200100]<boost::uuids::uuid const*,boost::uuids::uuid const*>(&__p, &v27, &v28, 1uLL);
    [v20 updateLoiIds:&__p withLoiGroupId:&v29 andLoiType:&v26];
    if (__p)
    {
      v24 = __p;
      operator delete(__p);
    }

    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v22, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    }

    else
    {
      v22 = v26;
    }

    (*(*a1 + 88))(a1, &v22, v29, *(&v29 + 1), 7);
    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v22.__r_.__value_.__l.__data_);
    }

    if ((*(&v26.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    (*(**(a1 + 88) + 24))(*(a1 + 88), v7);
    if (v18 < 0)
    {
LABEL_23:
      operator delete(v26.__r_.__value_.__l.__data_);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_25919618C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ULSettings::get<ULSettings::Enabled>()
{
  v0 = +[ULDefaultsSingleton shared];
  v1 = [v0 defaultsDictionary];

  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULEnabled"];
  v3 = [v1 objectForKey:v2];
  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 BOOLValue];
  }

  else
  {
    v4 = [MEMORY[0x277CBEC38] BOOLValue];
  }

  v5 = v4;

  return v5;
}

uint64_t CLMicroLocationLogic::refreshSettings(CLMicroLocationLogic *this)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "CLMicroLocationLogic: Settings updated so updating wifi strategies, allowed anchor models, and checking enabled flags", v6, 2u);
  }

  CLMicroLocationLogic::reloadAnchorDeviceModelAllowedList(this);
  v3 = *(this + 9);
  v4 = ULSettings::get<ULSettings::Enabled>();
  return (*(*(v3 + 8) + 56))(v3 + 8, v4);
}

uint64_t CLMicroLocationLogic::logState(CLMicroLocationLogic *this)
{
  v17 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::~CLMicroLocationLogic();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 40);
    v4 = *(this + 42);
    v5 = *(this + 41);
    v8[0] = 68289794;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 1026;
    v12 = v3;
    v13 = 1026;
    v14 = v4;
    v15 = 1026;
    v16 = v5;
    _os_log_impl(&dword_258FE9000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLMicroLocationLogic State, displayOn:%{public}hhd, isOnLockScreen:%{public}hhd, isBuddyComplete:%{public}hhd}", v8, 0x24u);
  }

  result = (*(**(this + 9) + 168))(*(this + 9));
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void CLMicroLocationLogic::setCurrentRTLOI(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v37[0] = a3;
  v37[1] = a4;
  (*(**(a1 + 72) + 112))(*(a1 + 72));
  (*(**(a1 + 64) + 48))(*(a1 + 64), a2);
  (*(**(a1 + 64) + 56))(*(a1 + 64), v37);
  v8 = +[ULEventLog shared];
  v9 = a2;
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  v10 = MEMORY[0x277CCACA8];
  CLMicroLocationProtobufHelper::convertChangedLoiReasonToMessage(a5, buf);
  v11 = SBYTE3(v32);
  v12 = *buf;
  boost::lexical_cast<std::string,boost::uuids::uuid>(v37, &__p);
  v13 = buf;
  if (v11 < 0)
  {
    v13 = v12;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v15 = [v10 stringWithFormat:@"Changed Loi Event type: %s, reason:%s, groupId: %s", v9, v13, p_p];
  [v8 log:v15];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SBYTE3(v32) < 0)
  {
    operator delete(*buf);
  }

  v16 = *(a2 + 23);
  if (v16 < 0)
  {
    if (a2[1] != 4)
    {
LABEL_18:
      v18 = +[ULHomeSlamAnalytics shared];
      [v18 logEventExitHomeLOIAtTimestamp:cl::chrono::CFAbsoluteTimeClock::now()];
      goto LABEL_19;
    }

    v17 = *a2;
  }

  else
  {
    v17 = a2;
    if (v16 != 4)
    {
      goto LABEL_18;
    }
  }

  if (*v17 != 1701670760)
  {
    goto LABEL_18;
  }

  v18 = +[ULHomeSlamAnalytics shared];
  [v18 logEventEnterHomeLOIAtTimestamp:cl::chrono::CFAbsoluteTimeClock::now()];
LABEL_19:

  if (onceToken_MicroLocation_Default != -1)
  {
    CLMicroLocationLogic::setCurrentRTLOI();
  }

  v19 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) < 0)
    {
      a2 = *a2;
    }

    boost::lexical_cast<std::string,boost::uuids::uuid>(v37, &__p);
    v20 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v21 = __p.__r_.__value_.__r.__words[0];
    CLMicroLocationProtobufHelper::convertChangedLoiReasonToMessage(a5, v25);
    v22 = &__p;
    if (v20 < 0)
    {
      v22 = v21;
    }

    if (v26 >= 0)
    {
      v23 = v25;
    }

    else
    {
      v23 = v25[0];
    }

    *buf = 68289795;
    *&buf[4] = 0;
    v29 = 2082;
    v30 = "";
    v31 = 2081;
    v32 = a2;
    v33 = 2081;
    v34 = v22;
    v35 = 2081;
    v36 = v23;
    _os_log_impl(&dword_258FE9000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Set current LOI., type:%{private, location:escape_only}s, id:%{private, location:escape_only}s, reason:%{private, location:escape_only}s}", buf, 0x30u);
    if (v26 < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}