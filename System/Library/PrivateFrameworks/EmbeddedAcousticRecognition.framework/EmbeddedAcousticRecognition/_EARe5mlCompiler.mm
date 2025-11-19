@interface _EARe5mlCompiler
+ (unint64_t)getMilPathWithModelConfig:(id)a3 files:(void *)a4;
+ (void)compileWithModelConfig:(id)a3 completion:(id)a4;
+ (void)compileWithModelMilPath:(id)a3 computePlatform:(id)a4 completion:(id)a5;
+ (void)compileWithModelMilPath:(id)a3 computePlatforms:(id)a4 completion:(id)a5;
@end

@implementation _EARe5mlCompiler

+ (void)compileWithModelMilPath:(id)a3 computePlatform:(id)a4 completion:(id)a5
{
  v17[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9)
  {
    v15 = v9;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [a1 compileWithModelMilPath:v8 computePlatforms:v11 completion:v10];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compute platform specified is nil"];
    v17[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v12 errorWithDomain:@"com.apple.siri.quasar.espressoV2compilation" code:4 userInfo:v13];
    v10[2](v10, v14);
  }
}

+ (void)compileWithModelMilPath:(id)a3 computePlatforms:(id)a4 completion:(id)a5
{
  v79[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v60 = a4;
  v58 = v7;
  v59 = a5;
  if (v7)
  {
    [v7 ear_toString];
  }

  else
  {
    memset(&v64, 0, 24);
  }

  isEspressoV2Mil = kaldi::quasar::isEspressoV2Mil(&v64);
  v9 = isEspressoV2Mil;
  if (SHIBYTE(v64.__end_) < 0)
  {
    operator delete(v64.__first_);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_35:
    v25 = MEMORY[0x1E696ABC0];
    v78 = *MEMORY[0x1E696A578];
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mil path is invalid: %@", v7];
    v79[0] = v26;
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
    v28 = [v25 errorWithDomain:@"com.apple.siri.quasar.espressoV2compilation" code:3 userInfo:v27];
    v59[2](v59, v28);

    goto LABEL_70;
  }

  if (!isEspressoV2Mil)
  {
    goto LABEL_35;
  }

LABEL_6:
  if (v60 && [v60 count])
  {
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v60;
    v10 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
    if (v10)
    {
      v11 = *v66;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v66 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v65 + 1) + 8 * i);
          if (([v13 isEqual:@"CPU"] & 1) == 0 && (objc_msgSend(v13, "isEqual:", @"GPU") & 1) == 0 && (objc_msgSend(v13, "isEqual:", @"ANE") & 1) == 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v64);
            v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "compilation platform not specified correctly: ", 46);
            if (v13)
            {
              [v13 ear_toString];
              v55 = HIBYTE(v63);
              v54 = __p[0];
              v53 = __p[1];
            }

            else
            {
              v53 = 0;
              v54 = 0;
              v55 = 0;
              __p[0] = 0;
              __p[1] = 0;
              v63 = 0;
            }

            if ((v55 & 0x80u) == 0)
            {
              v56 = __p;
            }

            else
            {
              v56 = v54;
            }

            if ((v55 & 0x80u) == 0)
            {
              v57 = v55;
            }

            else
            {
              v57 = v53;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, v56, v57);
            if (SHIBYTE(v63) < 0)
            {
              operator delete(__p[0]);
            }

            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v64);
          }

          if (v13)
          {
            [v13 ear_toString];
          }

          else
          {
            __p[0] = 0;
            __p[1] = 0;
            v63 = 0;
          }

          v14 = v70;
          if (v70 >= v71)
          {
            v16 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 3);
            v17 = v16 + 1;
            if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v71 - v69) >> 3) > v17)
            {
              v17 = 0x5555555555555556 * ((v71 - v69) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v71 - v69) >> 3) >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v17;
            }

            v64.__end_cap_.__value_ = &v69;
            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v69, v18);
            }

            v19 = 8 * ((v70 - v69) >> 3);
            v20 = *__p;
            *(v19 + 16) = v63;
            *v19 = v20;
            __p[1] = 0;
            v63 = 0;
            __p[0] = 0;
            v21 = 24 * v16 + 24;
            v22 = (24 * v16 - (v70 - v69));
            memcpy((v19 - (v70 - v69)), v69, v70 - v69);
            v23 = v69;
            v24 = v71;
            v69 = v22;
            v70 = v21;
            v71 = 0;
            v64.__end_ = v23;
            v64.__end_cap_.__value_ = v24;
            v64.__first_ = v23;
            v64.__begin_ = v23;
            std::__split_buffer<std::string>::~__split_buffer(&v64);
            v70 = v21;
          }

          else
          {
            v15 = *__p;
            *(v70 + 2) = v63;
            *v14 = v15;
            v70 = v14 + 24;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v65 objects:v75 count:16];
      }

      while (v10);
    }

    if (v58)
    {
      [v58 ear_toString];
    }

    else
    {
      memset(&v64, 0, 24);
    }

    __p[0] = 0;
    __p[1] = 0;
    v63 = 0;
    v33 = kaldi::quasar::onDeviceCompile(&v64, &v69, __p);
    v72 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v72);
    if (SHIBYTE(v64.__end_) < 0)
    {
      operator delete(v64.__first_);
    }

    if (v33)
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v64);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Compiling for model: ", 21);
        if (v58)
        {
          [v58 ear_toString];
          v35 = HIBYTE(v63);
          v37 = __p[0];
          v36 = __p[1];
        }

        else
        {
          v36 = 0;
          v37 = 0;
          v35 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v63 = 0;
        }

        if ((v35 & 0x80u) == 0)
        {
          v42 = __p;
        }

        else
        {
          v42 = v37;
        }

        if ((v35 & 0x80u) == 0)
        {
          v43 = v35;
        }

        else
        {
          v43 = v36;
        }

        v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v42, v43);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " is successful", 14);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__p[0]);
        }

        kaldi::KaldiLogMessage::~KaldiLogMessage(&v64);
      }

      v59[2](v59, 0);
    }

    else
    {
      if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v64);
        v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v64, "Compiling for model: ", 21);
        if (v58)
        {
          [v58 ear_toString];
          v39 = HIBYTE(v63);
          v41 = __p[0];
          v40 = __p[1];
        }

        else
        {
          v40 = 0;
          v41 = 0;
          v39 = 0;
          __p[0] = 0;
          __p[1] = 0;
          v63 = 0;
        }

        if ((v39 & 0x80u) == 0)
        {
          v45 = __p;
        }

        else
        {
          v45 = v41;
        }

        if ((v39 & 0x80u) == 0)
        {
          v46 = v39;
        }

        else
        {
          v46 = v40;
        }

        v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v45, v46);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, " failed", 7);
        if (SHIBYTE(v63) < 0)
        {
          operator delete(__p[0]);
        }

        kaldi::KaldiLogMessage::~KaldiLogMessage(&v64);
      }

      v48 = MEMORY[0x1E696ABC0];
      v73 = *MEMORY[0x1E696A578];
      v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"On device compilation fail with mil: %@ and compute platform: %@", v58, obj];
      v74 = v49;
      v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
      v51 = [v48 errorWithDomain:@"com.apple.siri.quasar.espressoV2compilation" code:0 userInfo:v50];
      v59[2](v59, v51);
    }

    v64.__first_ = &v69;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v64);
  }

  else
  {
    v29 = MEMORY[0x1E696ABC0];
    v76 = *MEMORY[0x1E696A578];
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"compute platforms specified are nil or empty"];
    v77 = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v32 = [v29 errorWithDomain:@"com.apple.siri.quasar.espressoV2compilation" code:4 userInfo:v31];
    v59[2](v59, v32);
  }

LABEL_70:
}

+ (void)compileWithModelConfig:(id)a3 completion:(id)a4
{
  v24[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = v6;
  std::string::basic_string[abi:ne200100]<0>(&v19, "");
  memset(v18, 0, sizeof(v18));
  v8 = [a1 getMilPathWithModelConfig:v6 files:v18];
  if (v8 == 1)
  {
    v13 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"mil file not found in: %@", v6];
    v22 = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v15 = [v13 errorWithDomain:@"com.apple.siri.quasar.espressoV2compilation" code:2 userInfo:v14];
    v7[2](v7, v15);
  }

  else
  {
    if (v8)
    {
      [MEMORY[0x1E696AC08] defaultManager];
      objc_claimAutoreleasedReturnValue();
      if (v6)
      {
        [v6 ear_toString];
      }

      quasar::SystemConfig::SystemConfig(v17);
    }

    v9 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A578];
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"config file invalid: %@", v6];
    v24[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v12 = [v9 errorWithDomain:@"com.apple.siri.quasar.espressoV2compilation" code:1 userInfo:v11];
    v7[2](v7, v12);
  }

  v17[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v17);
  if (v20 < 0)
  {
    operator delete(v19);
  }
}

+ (unint64_t)getMilPathWithModelConfig:(id)a3 files:(void *)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    [v4 ear_toString];
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Getting model config for compilation :", 38);
      if ((v11 & 0x80u) == 0)
      {
        v6 = v10;
      }

      else
      {
        v6 = v10[0];
      }

      if ((v11 & 0x80u) == 0)
      {
        v7 = v11;
      }

      else
      {
        v7 = v10[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v9);
    }

    memset(&v9[195], 0, 24);
    v12 = 0u;
    v13 = 0u;
    v14 = 1065353216;
    quasar::SystemConfig::SystemConfig(v9);
  }

  return 0;
}

@end