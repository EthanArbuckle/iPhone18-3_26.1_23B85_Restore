@interface _EARPronunciationRecognition
- (_EARPronunciationRecognition)initWithConfiguration:(id)configuration;
- (__n128)transcribeMultipleFromJsonResultsPath:;
- (id).cxx_construct;
- (id)transcribePronunciation:(id)pronunciation;
- (uint64_t)transcribeMultipleFromJsonResultsPath:;
- (void)transcribeMultipleFromJsonResultsPath:(id)path;
@end

@implementation _EARPronunciationRecognition

- (_EARPronunciationRecognition)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v6.receiver = self;
  v6.super_class = _EARPronunciationRecognition;
  if ([(_EARPronunciationRecognition *)&v6 init])
  {
    [configurationCopy fileSystemRepresentation];
    std::make_unique[abi:ne200100]<quasar::SystemConfig,char const*,0>();
  }

  return 0;
}

- (id)transcribePronunciation:(id)pronunciation
{
  pronunciationCopy = pronunciation;
  v5 = pronunciationCopy;
  if (pronunciationCopy)
  {
    [pronunciationCopy ear_toString];
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    *&v11 = 0;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  quasar::splitAndTrimNoEmpty(v10, __p, v15);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (SBYTE7(v11) < 0)
  {
    operator delete(v10[0]);
  }

  quasar::ptt::PronunciationRecognizer::run(self->_recognizer.__ptr_, v15, 0, __p);
  v6 = [_EARSpeechRecognition alloc];
  v7 = [MEMORY[0x1E695DFD8] set];
  v12 = 0;
  *v10 = 0u;
  v11 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v10[1], "▁");
  LOBYTE(v12) = 0;
  v8 = [(_EARSpeechRecognition *)v6 _initWithNBestList:__p useHatText:0 endsOfSentencePunctuations:v7 formattingInfo:v10];
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[1]);
  }

  v10[0] = __p;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v10);
  v10[0] = v15;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v10);

  return v8;
}

- (void)transcribeMultipleFromJsonResultsPath:(id)path
{
  v5[7] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:ne200100]<0>(v3, [path fileSystemRepresentation]);
  quasar::filesystem::Path::Path(v4, v3);
  v5[0] = 0;
  v5[1] = 0;
  v4[11] = v5;
  quasar::createJSONResultRecognitionResultIterator();
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (__n128)transcribeMultipleFromJsonResultsPath:
{
  *a2 = &unk_1F2D2DF68;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (uint64_t)transcribeMultipleFromJsonResultsPath:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

@end