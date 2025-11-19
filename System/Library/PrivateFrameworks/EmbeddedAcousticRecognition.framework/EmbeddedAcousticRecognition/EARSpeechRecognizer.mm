@interface EARSpeechRecognizer
@end

@implementation EARSpeechRecognizer

void __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 8);
  if (v3)
  {
    [v3 ear_toString];
  }

  else
  {
    __p = 0uLL;
    v7 = 0;
  }

  std::vector<std::string>::push_back[abi:ne200100](v5 + 48, &__p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }
}

void __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke_2(uint64_t a1)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(__p, [*(a1 + 40) fileSystemRepresentation]);
  quasar::DecoderOptions::defaultDecoderOptions(v1);
  quasar::SpeechRecognizer::make_shared();
}

void __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  v8 = *(*(a1 + 32) + 64);
  if (v5)
  {
    [v5 ear_toString];
    if (v7)
    {
LABEL_3:
      [v7 ear_toString];
      goto LABEL_6;
    }
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  memset(&__p, 0, sizeof(__p));
LABEL_6:
  quasar::SpeechRecognizer::AddConfigOverride(v8, v10, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void __227___EARSpeechRecognizer_initWithConfig_overrides_overrideConfigFiles_language_activeConfiguration_modelLoadingOptions_enableSpeakerCodeTraining_supportEmojiRecognition_voiceCommandActiveSet_modelContextDelegate_enableItn_error___block_invoke_556(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64) == 1)
  {
    v2 = [MEMORY[0x1E696AE30] processInfo];
    [v2 systemUptime];
    v4 = v3;

    v5 = [[_EARFormatter alloc] initWithQuasarConfig:*(a1 + 40) overrideConfigFiles:*(a1 + 48) supportEmojiRecognition:*(a1 + 65) language:*(a1 + 56) skipPathsExistCheck:1];
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v8 = [MEMORY[0x1E696AE30] processInfo];
    [v8 systemUptime];
    v10 = v9;

    v12 = EARLogger::QuasarOSLogger(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf[0].__r_.__value_.__l.__data_) = 134217984;
      *(buf[0].__r_.__value_.__r.__words + 4) = v10 - v4;
      _os_log_impl(&dword_1B501D000, v12, OS_LOG_TYPE_INFO, "Formatter initialization time: %f", buf, 0xCu);
    }

    if (*(*(a1 + 32) + 16))
    {
      v36[0] = 0;
      v36[1] = 0;
      v37 = 0;
      memset(v35, 0, sizeof(v35));
      std::string::basic_string[abi:ne200100]<0>(v33, "DUMMYTOKEN");
      std::string::basic_string[abi:ne200100]<0>(v31, "");
      std::string::basic_string[abi:ne200100]<0>(v29, "");
      memset(v28, 0, sizeof(v28));
      std::string::basic_string[abi:ne200100]<0>(v26, "");
      quasar::Token::Token(buf, v33, 0, 0, 0, 0, 0, v31, 0.0, v29, v28, 0, v26, 0, 0, 0);
      std::vector<quasar::Token>::push_back[abi:ne200100](v36, buf);
      if (v49 < 0)
      {
        operator delete(__p);
      }

      if (v47 < 0)
      {
        operator delete(v46);
      }

      v38 = &v45;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v38);
      if (v44 < 0)
      {
        operator delete(v43);
      }

      v38 = &v42;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v38);
      if (v41 < 0)
      {
        operator delete(v40);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(v26[0]);
      }

      v26[0] = v28;
      std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v26);
      if (v30 < 0)
      {
        operator delete(v29[0]);
      }

      if (v32 < 0)
      {
        operator delete(v31[0]);
      }

      if (v34 < 0)
      {
        operator delete(v33[0]);
      }

      [*(*(a1 + 32) + 16) formatWords:v36 unrepairedWordsOut:v35 task:@"Dictation"];
      buf[0].__r_.__value_.__r.__words[0] = &v25;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](buf);
      buf[0].__r_.__value_.__r.__words[0] = v35;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](buf);
      buf[0].__r_.__value_.__r.__words[0] = v36;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](buf);
    }

    v13 = *(a1 + 56);
    if (v13 && (v14 = *(*(a1 + 32) + 16)) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v36, [v13 UTF8String]);
      [v14 endsOfSentencePunctuationsForLanguage:v36];
      v15 = EARHelpers::ContainerToNSSet<std::unordered_set<std::string>>(buf);
      v16 = *(a1 + 32);
      v17 = *(v16 + 56);
      *(v16 + 56) = v15;

      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(buf);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }
    }

    else
    {
      v21 = [MEMORY[0x1E695DFD8] set];
      v22 = *(a1 + 32);
      v23 = *(v22 + 56);
      *(v22 + 56) = v21;
    }
  }

  else
  {
    v24 = [*(*(a1 + 32) + 504) stringByDeletingLastPathComponent];
    v18 = [[_EARFormatter alloc] initNcsWithModelRoot:v24];
    v19 = *(a1 + 32);
    v20 = *(v19 + 16);
    *(v19 + 16) = v18;
  }
}

void __75___EARSpeechRecognizer_initWithConfiguration_withLanguage_withSdapiConfig___block_invoke(void *a1)
{
  v2 = [[_EARFormatter alloc] initWithLanguage:a1[5] withSdapiConfig:a1[6] quasarConfig:*(a1[4] + 504)];
  v3 = a1[4];
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

void __85___EARSpeechRecognizer_initWithConfiguration_useQuasarFormatter_activeConfiguration___block_invoke(uint64_t a1)
{
  obj = [[_EARFormatter alloc] initWithQuasarConfig:*(*(a1 + 32) + 504)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    objc_storeStrong(WeakRetained + 2, obj);
  }
}

void __116___EARSpeechRecognizer_runRecognitionWithResultStream_language_task_samplingRate_userProfileData_speakerCodeWriter___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 48) == 1 && *(a1 + 40))
  {
    SysConfig = quasar::SpeechRecognizer::getSysConfig(*(v2 + 64));
    v4 = *(a1 + 40);
    if (v4)
    {
      [v4 ear_toString];
    }

    quasar::localeSupportsVoiceCommands(SysConfig);
  }

  *(v2 + 49) = 0;
  std::allocate_shared[abi:ne200100]<ResultStreamWrapper,std::allocator<ResultStreamWrapper>,_EARSpeechRecognizer * const {__strong}&,NSDictionary<NSString *,NSString> * {__strong}&,_EARSpeechRecognizer * const {__strong}&* {__strong}&<NSString,NSNumber *>,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* const {__strong}&,NSString const {__strong}&,objc_object  {objcproto30_EARSpeakerCodeWriterInterface}* const {__strong}&,objc_object  {objcproto33_EARSpeechRecognitionResultStream}* const {__strong},0>();
}

void __96___EARSpeechRecognizer__audioBufferWithLangauge_task_samplingRate_userProfileData_resultStream___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 64) + 24))(&v5);
  v2 = *(*(a1 + 40) + 8);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 56);
  *(v2 + 48) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v5 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v5 + 1));
    }
  }
}

void __72___EARSpeechRecognizer_compileRecognizerModels2WithConfiguration_error___block_invoke(void *a1, void *a2)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
LABEL_4:
    v7 = EARLogger::QuasarOSLogger(v3);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = a1[4];
      v14 = 138412290;
      v15 = v8;
      _os_log_impl(&dword_1B501D000, v7, OS_LOG_TYPE_INFO, "e5ml compilation succeeded, path: %@", &v14, 0xCu);
    }

    goto LABEL_10;
  }

  v5 = [(EARLogger *)v3 domain];
  if ([v5 isEqualToString:@"com.apple.siri.quasar.espressoV2compilation"])
  {
    v6 = [(EARLogger *)v4 code];

    if (v6 == 2)
    {
      goto LABEL_4;
    }
  }

  else
  {
  }

  v9 = EARLogger::QuasarOSLogger(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __72___EARSpeechRecognizer_compileRecognizerModels2WithConfiguration_error___block_invoke_cold_1();
  }

  v10 = a1[5];
  v11 = a1[6];
  *(*(v10 + 8) + 24) = 0;
  v12 = MEMORY[0x1E696ABC0];
  v16 = *MEMORY[0x1E696AA08];
  v17[0] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  v13 = [v12 errorWithDomain:@"EARErrorDomain" code:100 userInfo:v7];
  EARSetError(v11, v13);

LABEL_10:
}

void __47___EARSpeechRecognizer_setActiveConfiguration___block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 32) + 64) + 40))(*(*(a1 + 32) + 64));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 64);
  if (v2)
  {
    [v2 speechRecognizerActiveConfiguration];
  }

  else
  {
    memset(v4, 0, sizeof(v4));
  }

  quasar::SpeechRecognizer::setActiveConfiguration(v3, v4);
}

void __43___EARSpeechRecognizer_activeConfiguration__block_invoke(uint64_t a1)
{
  v2 = [[_EARSpeechRecognitionActiveConfiguration alloc] _initWithActiveConfiguration:quasar::SpeechRecognizer::getActiveConfiguration(*(*(a1 + 32) + 64))];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __83___EARSpeechRecognizer_resumeRecognitionWithLeftContext_rightContext_selectedText___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = *(WeakRetained + 2);
    if (v3)
    {
      v5 = v2;
      if ([v3 refreshEmojiRecognizer])
      {
        v2 = v5;
        v4 = v5[254];
      }

      else
      {
        v4 = 0;
        v2 = v5;
      }

      v2[254] = v4 & 1;
    }
  }
}

void __72___EARSpeechRecognizer_compileRecognizerModels2WithConfiguration_error___block_invoke_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1B501D000, v1, OS_LOG_TYPE_ERROR, "e5ml compilation failed, error: %@ path: %@", v2, 0x16u);
}

@end