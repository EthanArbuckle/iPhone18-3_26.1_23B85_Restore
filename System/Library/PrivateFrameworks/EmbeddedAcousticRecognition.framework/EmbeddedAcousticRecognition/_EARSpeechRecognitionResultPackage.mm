@interface _EARSpeechRecognitionResultPackage
- (BOOL)hasNonEmptyToken;
- (id)_initWithRecognition:(id)a3 preITNRecognition:(id)a4 unrepairedRecognition:(id)a5 recognitionIsFormatted:(BOOL)a6 isFinal:(BOOL)a7 audioAnalytics:(id)a8 utteranceStart:(double)a9 latticeMitigatorResult:(id)a10 nBestVoiceCommandInterpretations:(id)a11 preITNNBestVoiceCommandInterpretations:(id)a12 recognitionPaused:(BOOL)a13 firstResultAfterResume:(BOOL)a14 endOfSentenceLikelihood:(id)a15 numTokensExcludingTriggerPhrase:(int64_t)a16 voiceCommandDebugInfo:(id)a17 performanceMarkers:(id)a18;
- (id)copyWithZone:(_NSZone *)a3;
- (id)nBestResults;
- (void)setCorrectPartialResultIndexList:(const void *)a3 oneBestFinalResult:(const void *)a4 partialResultIndexOffset:(int)a5;
@end

@implementation _EARSpeechRecognitionResultPackage

- (id)_initWithRecognition:(id)a3 preITNRecognition:(id)a4 unrepairedRecognition:(id)a5 recognitionIsFormatted:(BOOL)a6 isFinal:(BOOL)a7 audioAnalytics:(id)a8 utteranceStart:(double)a9 latticeMitigatorResult:(id)a10 nBestVoiceCommandInterpretations:(id)a11 preITNNBestVoiceCommandInterpretations:(id)a12 recognitionPaused:(BOOL)a13 firstResultAfterResume:(BOOL)a14 endOfSentenceLikelihood:(id)a15 numTokensExcludingTriggerPhrase:(int64_t)a16 voiceCommandDebugInfo:(id)a17 performanceMarkers:(id)a18
{
  v46 = a3;
  v45 = a4;
  v44 = a5;
  v43 = a8;
  v42 = a10;
  v23 = a11;
  v24 = a12;
  v41 = a15;
  v40 = a17;
  v25 = a18;
  v47.receiver = self;
  v47.super_class = _EARSpeechRecognitionResultPackage;
  v26 = [(_EARSpeechRecognitionResultPackage *)&v47 init];
  if (v26)
  {
    v27 = [v46 copy];
    recognition = v26->_recognition;
    v26->_recognition = v27;

    v29 = [v45 copy];
    preITNRecognition = v26->_preITNRecognition;
    v26->_preITNRecognition = v29;

    v31 = [v44 copy];
    unrepairedRecognition = v26->_unrepairedRecognition;
    v26->_unrepairedRecognition = v31;

    v26->_recognitionIsFormatted = a6;
    v26->_isFinal = a7;
    objc_storeStrong(&v26->_audioAnalytics, a8);
    v26->_utteranceStart = a9;
    objc_storeStrong(&v26->_latticeMitigatorResult, a10);
    v33 = [v23 copy];
    nBestVoiceCommandInterpretations = v26->_nBestVoiceCommandInterpretations;
    v26->_nBestVoiceCommandInterpretations = v33;

    v35 = [v24 copy];
    preITNNBestVoiceCommandInterpretations = v26->_preITNNBestVoiceCommandInterpretations;
    v26->_preITNNBestVoiceCommandInterpretations = v35;

    v26->_recognitionPaused = a13;
    v26->_firstResultAfterResume = a14;
    objc_storeStrong(&v26->_endOfSentenceLikelihood, a15);
    v26->_numTokensExcludingTriggerPhrase = a16;
    objc_storeStrong(&v26->_voiceCommandDebugInfo, a17);
    objc_storeStrong(&v26->_performanceMarkers, a18);
  }

  return v26;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = [_EARSpeechRecognitionResultPackage alloc];
  v24 = [(_EARSpeechRecognitionResultPackage *)self recognition];
  v23 = [(_EARSpeechRecognitionResultPackage *)self preITNRecognition];
  v22 = [(_EARSpeechRecognitionResultPackage *)self unrepairedRecognition];
  v4 = [(_EARSpeechRecognitionResultPackage *)self recognitionIsFormatted];
  v5 = [(_EARSpeechRecognitionResultPackage *)self isFinal];
  v21 = [(_EARSpeechRecognitionResultPackage *)self audioAnalytics];
  [(_EARSpeechRecognitionResultPackage *)self utteranceStart];
  v7 = v6;
  v20 = [(_EARSpeechRecognitionResultPackage *)self latticeMitigatorResult];
  v8 = [(_EARSpeechRecognitionResultPackage *)self nBestVoiceCommandInterpretations];
  v17 = [(_EARSpeechRecognitionResultPackage *)self preITNNBestVoiceCommandInterpretations];
  v9 = [(_EARSpeechRecognitionResultPackage *)self recognitionPaused];
  v10 = [(_EARSpeechRecognitionResultPackage *)self firstResultAfterResume];
  v16 = [(_EARSpeechRecognitionResultPackage *)self endOfSentenceLikelihood];
  v11 = [(_EARSpeechRecognitionResultPackage *)self numTokensExcludingTriggerPhrase];
  v12 = [(_EARSpeechRecognitionResultPackage *)self voiceCommandDebugInfo];
  v13 = [(_EARSpeechRecognitionResultPackage *)self performanceMarkers];
  BYTE1(v15) = v10;
  LOBYTE(v15) = v9;
  v19 = [(_EARSpeechRecognitionResultPackage *)v18 _initWithRecognition:v24 preITNRecognition:v23 unrepairedRecognition:v22 recognitionIsFormatted:v4 isFinal:v5 audioAnalytics:v21 utteranceStart:v7 latticeMitigatorResult:v20 nBestVoiceCommandInterpretations:v8 preITNNBestVoiceCommandInterpretations:v17 recognitionPaused:v15 firstResultAfterResume:v16 endOfSentenceLikelihood:v11 numTokensExcludingTriggerPhrase:v12 voiceCommandDebugInfo:v13 performanceMarkers:?];

  return v19;
}

- (id)nBestResults
{
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(_EARSpeechRecognition *)self->_recognition nBest];
  v4 = [(_EARSpeechRecognition *)self->_preITNRecognition nBest];
  v5 = [v3 count];
  if (v5 >= [v4 count])
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = [v6 count];
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      v9 = [_EARSpeechRecognitionResult alloc];
      v10 = [v3 objectAtIndex:i];
      EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(v10, v16);
      v11 = [v4 objectAtIndex:i];
      EARHelpers::QuasarResultFromEARSpeechRecognitionTokens(v11, v15);
      v12 = [(_EARSpeechRecognitionResult *)v9 _initWithTokens:v16 preITNTokens:v15];
      v17 = v15;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);

      v17 = v16;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v17);

      [v14 addObject:v12];
    }
  }

  return v14;
}

- (void)setCorrectPartialResultIndexList:(const void *)a3 oneBestFinalResult:(const void *)a4 partialResultIndexOffset:(int)a5
{
  if (*a4 == *(a4 + 1))
  {
    if (quasar::gLogLevel >= 6)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
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
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "[TTAW] Final Result Empty.", 26);
      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v48);
    }
  }

  else
  {
    quasar::strictAlignTokensToFirstSeenPartialResults(a3, a4, a5, v47);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v44, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
    v9 = v45;
    if (v45 >= v46)
    {
      v10 = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token> const&>(&v44, a4);
    }

    else
    {
      *v45 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v9, *a4, *(a4 + 1), 0x6DB6DB6DB6DB6DB7 * ((*(a4 + 1) - *a4) >> 5));
      v10 = v9 + 24;
    }

    v45 = v10;
    quasar::alignTokensToFirstSeenPartialResultsV3(&v44, a4, a5, &v42);
    v11 = v42;
    v12 = v43;
    if (v42 != v43)
    {
      v13 = 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3);
      do
      {
        if (*v11 != -1)
        {
          v14 = (*v11 - a5);
          if ((v14 & 0x80000000) != 0 || v13 < v14)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "0 <= partialResultIndexWithoutOffset && partialResultIndexWithoutOffset <= partialResults.size()", 96);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v48);
          }

          if (v13 == v14)
          {
            *v11 = -2;
          }
        }

        ++v11;
      }

      while (v11 != v12);
    }

    if (quasar::gLogLevel > 5)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
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
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "[TTAW] oneBestFinalResult: ", 27);
      quasar::tokens2Str(a4, &v41);
      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = &v41;
      }

      else
      {
        v16 = v41.__r_.__value_.__r.__words[0];
      }

      if ((v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v41.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v41.__r_.__value_.__l.__size_;
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, size);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", correctIndexList: [", 21);
      v38[0] = ",";
      v38[1] = 1;
      quasar::join<std::vector<int>>(v47, v38);
      if ((v40 & 0x80u) == 0)
      {
        v20 = v39;
      }

      else
      {
        v20 = v39[0];
      }

      if ((v40 & 0x80u) == 0)
      {
        v21 = v40;
      }

      else
      {
        v21 = v39[1];
      }

      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "]", 1);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", correctAlignedIndexList: [", 28);
      v35[0] = ",";
      v35[1] = 1;
      quasar::join<std::vector<int>>(&v42, v35);
      if ((v37 & 0x80u) == 0)
      {
        v25 = __p;
      }

      else
      {
        v25 = __p[0];
      }

      if ((v37 & 0x80u) == 0)
      {
        v26 = v37;
      }

      else
      {
        v26 = __p[1];
      }

      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "]", 1);
      if (v37 < 0)
      {
        operator delete(__p[0]);
      }

      if (v40 < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }

      quasar::QuasarTraceMessage::~QuasarTraceMessage(&v48);
    }

    v28 = EARHelpers::VectorToArray<int>(v47);
    correctPartialResultIndexList = self->_correctPartialResultIndexList;
    self->_correctPartialResultIndexList = v28;

    v30 = [_EARPerformanceMarkers alloc];
    v31 = EARHelpers::VectorToArray<int>(v47);
    v32 = EARHelpers::VectorToArray<int>(&v42);
    v33 = [(_EARPerformanceMarkers *)v30 initWithCorrectPartialResultIndexList:v31 correctAlignedPartialResultIndexList:v32 tokenDelayInMilliseconds:0];
    performanceMarkers = self->_performanceMarkers;
    self->_performanceMarkers = v33;

    if (v42)
    {
      v43 = v42;
      operator delete(v42);
    }

    *&v48 = &v44;
    std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v48);
    if (v47[0])
    {
      v47[1] = v47[0];
      operator delete(v47[0]);
    }
  }
}

- (BOOL)hasNonEmptyToken
{
  v40 = *MEMORY[0x1E69E9840];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v2 = [(_EARSpeechRecognitionResultPackage *)self recognition];
  v3 = [v2 tokenSausage];

  v24 = v3;
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = *v34;
    v21 = *v34;
    do
    {
      v6 = 0;
      v22 = v4;
      do
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v33 + 1) + 8 * v6);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
        if (v9)
        {
          v10 = *v30;
          v23 = *v30;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v30 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v29 + 1) + 8 * i);
              v25 = 0u;
              v26 = 0u;
              v27 = 0u;
              v28 = 0u;
              v13 = v12;
              v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
              if (v14)
              {
                v15 = *v26;
                while (2)
                {
                  for (j = 0; j != v14; ++j)
                  {
                    if (*v26 != v15)
                    {
                      objc_enumerationMutation(v13);
                    }

                    v17 = [*(*(&v25 + 1) + 8 * j) tokenName];
                    v18 = [v17 length] == 0;

                    if (!v18)
                    {

                      v19 = 1;
                      v3 = v24;
                      goto LABEL_26;
                    }
                  }

                  v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
                  if (v14)
                  {
                    continue;
                  }

                  break;
                }
              }

              v10 = v23;
            }

            v9 = [v8 countByEnumeratingWithState:&v29 objects:v38 count:16];
          }

          while (v9);
        }

        ++v6;
        v5 = v21;
        v3 = v24;
      }

      while (v6 != v22);
      v4 = [v24 countByEnumeratingWithState:&v33 objects:v39 count:16];
      v19 = 0;
    }

    while (v4);
  }

  else
  {
    v19 = 0;
  }

LABEL_26:

  return v19;
}

@end