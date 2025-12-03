@interface _EARFormatter
+ (BOOL)useEmojiHammerWhenRecognizeEmoji:(BOOL)emoji;
+ (vector<quasar::Token,)convertStringsToQuasarTokens:(id)tokens offset:(SEL)offset;
+ (void)initialize;
- (BOOL)refreshEmojiRecognizer;
- (_EARFormatter)initWithGeneralVoc:(id)voc withLexiconEnh:(id)enh withItnEnh:(id)itnEnh;
- (_EARFormatter)initWithLanguage:(id)language withSdapiConfig:(id)config quasarConfig:(id)quasarConfig;
- (_EARFormatter)initWithQuasarConfig:(id)config overrideConfigFiles:(id)files supportEmojiRecognition:(BOOL)recognition language:(id)language skipPathsExistCheck:(BOOL)check;
- (__n128)formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:;
- (id)_formattedStringWithStrings:(id)strings task:(id)task leftContext:(id)context;
- (id)_formattedStringWithStrings:(id)strings task:(id)task leftContext:(id)context recognizeEmoji:(BOOL)emoji;
- (id)_formattedStringWithStrings:(id)strings task:(id)task leftContext:(id)context recognizeEmoji:(BOOL)emoji rightContext:(id)rightContext;
- (id)_formattedStringWithoutEmojiModifier:(id)modifier;
- (id)_recognizeEmojiInString:(id)string alternativesOut:(id)out persistEmoji:(BOOL)emoji;
- (id)emojiAlternativesForFormattedTokens:(id)tokens stringsWithoutEmojiModifier:(id)modifier alternateNameForTokens:(id)forTokens;
- (id)emojiPhraseRemoveKeyword:(id)keyword;
- (id)formatWords:(id)words task:(id)task autoPunctuate:(BOOL)punctuate;
- (id)formatWords:(id)words task:(id)task autoPunctuate:(BOOL)punctuate recognizeEmoji:(BOOL)emoji;
- (id)formattedRecognitionWithNBestList:(id)list;
- (id)formattedStringWithStrings:(id)strings;
- (id)formattedStringWithStrings:(id)strings preToPostItnArray:(id)array;
- (id)formattedStringWithStrings:(id)strings preToPostItnArray:(id)array task:(id)task;
- (id)formattedStringWithStrings:(id)strings task:(id)task;
- (id)initNcsWithModelRoot:(id)root;
- (id)recognizeEmojiInString:(id)string alternativesOut:(id)out;
- (uint64_t)formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:;
- (vector<quasar::Token,)formatWords:(_EARFormatter *)self unrepairedWordsOut:(SEL)out task:(const void *)task;
- (vector<quasar::Token,)formatWords:(_EARFormatter *)self unrepairedWordsOut:(SEL)out task:(const void *)task language:(void *)language preItnLeftContext:(id)context separateAutoEndPunctuation:(id)punctuation partialResults:(const void *)results timestampOffset:(BOOL)offset zeroTimestamp:(void *)self0 continuousListeningConfig:(unsigned int)self1 postItnLeftContext:(BOOL)self2 itnResult:(shared_ptr<quasar:(const void *)self4 :(void *)self5 ContinuousListeningConfig>)self3 itnOverrides:(const void *)self6 itnEnablingFlags:(unsigned __int16)self7 recognizeEmoji:(BOOL)self8 leftContextProvidedByClient:(BOOL)self9 preItnRightContext:(const void *)rightContext postItnLeftContextStr:(id)str postItnRightContextStr:(id)contextStr stripLeadingAppendedAutoPunctuation:(BOOL)autoPunctuation emojiTokenIndices:(void *)indices persistEmoji:(BOOL)persistEmoji shouldHideTrailingPunctuation:(BOOL)trailingPunctuation isTrailingPunctuationHidden:(shared_ptr<BOOL>)hidden isFinal:(BOOL)final choiceIdx:(int)idx itnCompletion:(id)out0;
- (vector<quasar::Token,)formattedTokensWithoutEmojiModifier:(_EARFormatter *)self emojiTokenIndices:(SEL)indices recognizeEmoji:(const void *)emoji;
- (vector<std::string,)emojiAlternativesForEmojis:(_EARFormatter *)self;
- (void)appendNbestListWithEmojiAlternativesForFormattedTokens:(const void *)tokens formattedTokensWithoutEmojiModifier:(const void *)modifier formattedNBestList:(void *)list formattedNBestListWithoutEmojiModifier:(void *)emojiModifier emojiTokenIndices:(const void *)indices recognizeEmoji:(BOOL)emoji;
- (void)formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:;
- (void)initializeItnMetrics;
- (void)recognizeEmojiForTokens:(void *)tokens emojiTokenIndices:(void *)indices persistEmoji:(BOOL)emoji choiceIdx:(int)idx;
- (void)refreshEmojiRecognizer;
- (void)setItnMetricsWithCompletion:(id)completion;
@end

@implementation _EARFormatter

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    is_darwinos = os_variant_is_darwinos();
    if ((is_darwinos & 1) == 0)
    {
      v3 = objc_opt_self();
      is_darwinos = +[EARSdapiHelper EnsureSDAPIInitialized];
    }

    EARLogger::initializeLogging(is_darwinos);
  }
}

- (_EARFormatter)initWithLanguage:(id)language withSdapiConfig:(id)config quasarConfig:(id)quasarConfig
{
  languageCopy = language;
  configCopy = config;
  quasarConfigCopy = quasarConfig;
  v17.receiver = self;
  v17.super_class = _EARFormatter;
  v11 = [(_EARFormatter *)&v17 init];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [languageCopy copy];
  language = v11->_language;
  v11->_language = v12;

  if ([quasarConfigCopy length])
  {
    if (quasarConfigCopy)
    {
      [quasarConfigCopy ear_toString];
      if (!languageCopy)
      {
        goto LABEL_11;
      }
    }

    else if (!languageCopy)
    {
LABEL_11:
      SpeechITN::createQuasarITN();
    }

    [languageCopy ear_toString];
    goto LABEL_11;
  }

  if (os_variant_is_darwinos())
  {
LABEL_14:
    v15 = v11;
  }

  else
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:configCopy])
    {
      if (configCopy)
      {
        [configCopy ear_toString];
      }

      sdapi::SdapiUtil::readConfig();
    }

    v15 = 0;
  }

  return v15;
}

- (_EARFormatter)initWithQuasarConfig:(id)config overrideConfigFiles:(id)files supportEmojiRecognition:(BOOL)recognition language:(id)language skipPathsExistCheck:(BOOL)check
{
  configCopy = config;
  filesCopy = files;
  languageCopy = language;
  v18.receiver = self;
  v18.super_class = _EARFormatter;
  if ([(_EARFormatter *)&v18 init])
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x4812000000;
    v17[3] = __Block_byref_object_copy__17;
    v17[4] = __Block_byref_object_dispose__17;
    v17[5] = &unk_1B5CADD23;
    memset(&v17[6], 0, 24);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __111___EARFormatter_initWithQuasarConfig_overrideConfigFiles_supportEmojiRecognition_language_skipPathsExistCheck___block_invoke;
    v16[3] = &unk_1E7C1A410;
    v16[4] = v17;
    [filesCopy enumerateObjectsUsingBlock:v16];
    quasar::SystemConfig::SystemConfig(v15);
  }

  v13 = 0;

  return v13;
}

+ (BOOL)useEmojiHammerWhenRecognizeEmoji:(BOOL)emoji
{
  if (emoji)
  {
    return !+[_EARFeatureFlags isEmojiV2Enabled];
  }

  else
  {
    return 0;
  }
}

- (_EARFormatter)initWithGeneralVoc:(id)voc withLexiconEnh:(id)enh withItnEnh:(id)itnEnh
{
  vocCopy = voc;
  enhCopy = enh;
  itnEnhCopy = itnEnh;
  v11 = [_EARQuasarTokenizer extractModelRootFromNcsResourcePaths:vocCopy lexiconEnh:enhCopy tokenEnh:0 itnEnh:itnEnhCopy];
  v12 = [(_EARFormatter *)self initNcsWithModelRoot:v11];

  return v12;
}

- (id)initNcsWithModelRoot:(id)root
{
  rootCopy = root;
  v14.receiver = self;
  v14.super_class = _EARFormatter;
  v5 = [(_EARFormatter *)&v14 init];
  if (!v5 || (os_variant_is_darwinos() & 1) != 0)
  {
    v11 = v5;
  }

  else
  {
    v6 = [rootCopy stringByAppendingPathComponent:@"ncs"];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    if ([defaultManager fileExistsAtPath:v6])
    {
      v8 = [v6 stringByAppendingPathComponent:@"dispatch.voc"];
      v9 = [v6 stringByAppendingPathComponent:@"lexicon.enh"];
      v10 = [v6 stringByAppendingPathComponent:@"itn_s.enh"];
      if (v8)
      {
        [v8 ear_toString];
      }

      else
      {
        memset(&v13[3], 0, 24);
      }

      std::string::basic_string[abi:ne200100]<0>(v13, "");
      if (v9)
      {
        [v9 ear_toString];
        if (!v10)
        {
          goto LABEL_12;
        }
      }

      else if (!v10)
      {
LABEL_12:
        SpeechITN::createSdapiITN();
      }

      [v10 ear_toString];
      goto LABEL_12;
    }

    v11 = 0;
  }

  return v11;
}

- (vector<quasar::Token,)formatWords:(_EARFormatter *)self unrepairedWordsOut:(SEL)out task:(const void *)task
{
  v10 = a6;
  language = self->_language;
  if (!language)
  {
    language = &stru_1F2D44B60;
  }

  v12 = language;
  ptr = self->_itn.__ptr_;
  if (ptr)
  {
    if (v10)
    {
      [v10 ear_toString];
    }

    else
    {
      v18[0] = 0;
      v18[1] = 0;
      v19 = 0;
    }

    [(__CFString *)v12 ear_toString];
    memset(v15, 0, sizeof(v15));
    (*(*ptr + 16))(ptr, task, a5, v18, &__p, v15, 0xFFFFLL, 0);
    v20 = v15;
    std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](&v20);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[0]);
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  return result;
}

- (vector<quasar::Token,)formatWords:(_EARFormatter *)self unrepairedWordsOut:(SEL)out task:(const void *)task language:(void *)language preItnLeftContext:(id)context separateAutoEndPunctuation:(id)punctuation partialResults:(const void *)results timestampOffset:(BOOL)offset zeroTimestamp:(void *)self0 continuousListeningConfig:(unsigned int)self1 postItnLeftContext:(BOOL)self2 itnResult:(shared_ptr<quasar:(const void *)self4 :(void *)self5 ContinuousListeningConfig>)self3 itnOverrides:(const void *)self6 itnEnablingFlags:(unsigned __int16)self7 recognizeEmoji:(BOOL)self8 leftContextProvidedByClient:(BOOL)self9 preItnRightContext:(const void *)rightContext postItnLeftContextStr:(id)str postItnRightContextStr:(id)contextStr stripLeadingAppendedAutoPunctuation:(BOOL)autoPunctuation emojiTokenIndices:(void *)indices persistEmoji:(BOOL)persistEmoji shouldHideTrailingPunctuation:(BOOL)trailingPunctuation isTrailingPunctuationHidden:(shared_ptr<BOOL>)hidden isFinal:(BOOL)final choiceIdx:(int)idx itnCompletion:(id)out0
{
  v42 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  punctuationCopy = punctuation;
  rightContextCopy = rightContext;
  strCopy = str;
  v39 = hidden.var1;
  v34 = [punctuationCopy stringByReplacingOccurrencesOfString:@"-" withString:@"_"];
  if (self->_itn.__ptr_)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];

    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_continuous_time()];
    objc_claimAutoreleasedReturnValue();
    quasar::FormatWordsHelperInput::FormatWordsHelperInput(v41);
    operator new();
  }

  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;

  return result;
}

- (void)setItnMetricsWithCompletion:(id)completion
{
  completionCopy = completion;
  emojiMetrics = self->_emojiMetrics;
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_firstCandidateItnDurationSum / self->_firstCandidateItnCount * 1000000000.0];
  [(NSMutableDictionary *)emojiMetrics setValue:v5 forKey:@"itnDurationInNs"];

  v6 = self->_emojiMetrics;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_EAREmojiRecognition isEmojiDisambiguationUsed](self->_emojiFormatter, "isEmojiDisambiguationUsed")}];
  [(NSMutableDictionary *)v6 setValue:v7 forKey:@"isEmojiDisambiguationUsed"];

  v8 = self->_emojiMetrics;
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[_EAREmojiRecognition isEmojiPersonalizationUsed](self->_emojiFormatter, "isEmojiPersonalizationUsed")}];
  [(NSMutableDictionary *)v8 setValue:v9 forKey:@"isEmojiPersonalizationUsed"];

  if (completionCopy)
  {
    completionCopy[2](completionCopy, self->_emojiMetrics, self->_recognizedEmojis, self->_firstCandidateItnIntervalInTicks);
  }

  [(_EARFormatter *)self initializeItnMetrics];
}

- (vector<std::string,)emojiAlternativesForEmojis:(_EARFormatter *)self
{
  v5 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  v6 = 1;
  retstr->__begin_ = 0;
  do
  {
    if (v6 >= [v5 count])
    {
      break;
    }

    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      [v7 ear_toString];
    }

    else
    {
      __p = 0uLL;
      v11 = 0;
    }

    std::vector<std::string>::push_back[abi:ne200100](retstr, &__p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }

    ++v6;
  }

  while (v6 != 4);

  return result;
}

- (void)recognizeEmojiForTokens:(void *)tokens emojiTokenIndices:(void *)indices persistEmoji:(BOOL)emoji choiceIdx:(int)idx
{
  emojiCopy = emoji;
  v152 = *MEMORY[0x1E69E9840];
  if (!+[_EARFeatureFlags isEmojiV2Enabled])
  {
    v37 = *tokens;
    if (*(tokens + 1) == *tokens)
    {
      return;
    }

    v38 = 0;
    if (idx)
    {
      v39 = 0;
    }

    else
    {
      v39 = emojiCopy;
    }

    v115 = v39;
    v40 = 1;
    while (1)
    {
      std::string::basic_string[abi:ne200100]<0>(&buf, "spokenemoji|");
      v41 = v37 + 224 * v38;
      v42 = quasar::startsWith(v41, &buf);
      v43 = v42;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (v43)
        {
LABEL_37:
          v44 = *(v41 + 23);
          if (v44 < 0)
          {
            v45 = *v41;
            v44 = *(v41 + 8);
          }

          else
          {
            v45 = v41;
          }

          emojiFormatter = self->_emojiFormatter;
          v47 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v45, v44}];
          v48 = [(_EAREmojiRecognition *)emojiFormatter formatEmojiStrings:v47];

          if (v48)
          {
            [v48 ear_toString];
            if (*(v41 + 23) < 0)
            {
              operator delete(*v41);
            }

            v49 = *&buf.__r_.__value_.__l.__data_;
            *(v41 + 16) = *(&buf.__r_.__value_.__l + 2);
            *v41 = v49;
            LODWORD(v129) = v40 - 1;
            memset(&v122, 0, sizeof(v122));
            LODWORD(buf.__r_.__value_.__l.__data_) = v40 - 1;
            v140 = 0;
            *&buf.__r_.__value_.__r.__words[1] = 0uLL;
            v131 = 0;
            v132 = 0;
            v130 = 0;
            std::vector<std::pair<int,std::vector<std::string>>>::push_back[abi:ne200100](indices, &buf);
            v120 = &buf.__r_.__value_.__r.__words[1];
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
            v120 = &v130;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
            v120 = &v122;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v120);
            if (v115)
            {
              [(_EAREmojiRecognition *)self->_emojiFormatter didUseEmoji:v48 replacementContext:0];
              v50 = [(_EAREmojiRecognition *)self->_emojiFormatter baseStringForEmojiString:v48];
              [(NSMutableArray *)self->_recognizedEmojis addObject:v50];
            }
          }

          else
          {
            std::string::operator=(v41, (v41 + 176));
          }
        }
      }

      else if (v42)
      {
        goto LABEL_37;
      }

      v38 = v40;
      v37 = *tokens;
      v81 = 0x6DB6DB6DB6DB6DB7 * ((*(tokens + 1) - *tokens) >> 5) > v40++;
      if (!v81)
      {
        return;
      }
    }
  }

  oslog = idx;
  type = emojiCopy;
  string = [MEMORY[0x1E696AD60] string];
  __src = 0;
  v136 = 0;
  v137 = 0;
  v9 = *tokens;
  if (*(tokens + 1) != *tokens)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 0x1E696A000uLL;
    do
    {
      v14 = v9 + 224 * v10;
      v15 = *(v14 + 23);
      if (v15 < 0)
      {
        v14 = *v14;
        v15 = *(v9 + 224 * v10 + 8);
      }

      v16 = [*(v13 + 3776) ear_stringWithStringView:{v14, v15}];
      v17 = [v16 length];
      [string appendString:v16];
      v18 = [v16 length] + v11;
      if (*(*tokens + 224 * v10 + 44) == 1)
      {
        [string appendString:@" "];
        ++v18;
      }

      v19 = v136;
      if (v136 >= v137)
      {
        v21 = __src;
        v22 = v136 - __src;
        v23 = (v136 - __src) >> 4;
        v24 = v23 + 1;
        if ((v23 + 1) >> 60)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v25 = v137 - __src;
        if ((v137 - __src) >> 3 > v24)
        {
          v24 = v25 >> 3;
        }

        v26 = v25 >= 0x7FFFFFFFFFFFFFF0;
        v27 = 0xFFFFFFFFFFFFFFFLL;
        if (!v26)
        {
          v27 = v24;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(&__src, v27);
        }

        v28 = (v136 - __src) >> 4;
        v29 = (16 * v23);
        *v29 = v11;
        v29[1] = v17;
        v20 = 16 * v23 + 16;
        v30 = &v29[-2 * v28];
        memcpy(v30, v21, v22);
        v31 = __src;
        __src = v30;
        v136 = v20;
        v137 = 0;
        if (v31)
        {
          operator delete(v31);
        }

        v13 = 0x1E696A000;
      }

      else
      {
        *v136 = v11;
        *(v19 + 1) = v17;
        v20 = (v19 + 16);
      }

      v136 = v20;

      v10 = v12;
      v9 = *tokens;
      v81 = 0x6DB6DB6DB6DB6DB7 * ((*(tokens + 1) - *tokens) >> 5) > v12++;
      v11 = v18;
    }

    while (v81);
  }

  v32 = string;
  v33 = [string length];
  if (v33)
  {
    if (quasar::gLogLevel >= 5)
    {
      v34 = quasar::QuasarOsLog(v33);
      v35 = quasar::QuasarLogLevelToType(5);
      if (os_log_type_enabled(v34, v35))
      {
        LODWORD(buf.__r_.__value_.__l.__data_) = 138412290;
        *(buf.__r_.__value_.__r.__words + 4) = string;
        _os_log_impl(&dword_1B501D000, v34, v35, "Emoji Input: %@", &buf, 0xCu);
      }

      v32 = string;
    }

    if ([(_EAREmojiRecognition *)self->_emojiFormatter isLocaleRTL])
    {
      v36 = [v32 characterAtIndex:0] == 8207;
    }

    else
    {
      v36 = 0;
    }

    v129 = 0;
    v130 = &v129;
    v131 = 0x3032000000;
    v132 = __Block_byref_object_copy__49;
    v133 = __Block_byref_object_dispose__50;
    array = [MEMORY[0x1E695DF70] array];
    v53 = self->_emojiFormatter;
    v127[0] = MEMORY[0x1E69E9820];
    v127[1] = 3221225472;
    v127[2] = __82___EARFormatter_recognizeEmojiForTokens_emojiTokenIndices_persistEmoji_choiceIdx___block_invoke;
    v127[3] = &unk_1E7C1BF08;
    v128 = v36;
    v127[4] = &v129;
    [(_EAREmojiRecognition *)v53 recognizeEmojisInInputString:v32 enumerateUsingBlock:v127];
    v54 = [v130[5] sortedArrayUsingComparator:&__block_literal_global_4];
    v116 = v54;
    v55 = [v54 count];
    if (v55)
    {
      v104 = v36;
      v57 = 0;
      v58 = 0;
      v124 = 0;
      v125 = 0;
      v126 = 0;
      v59 = type;
      if (oslog)
      {
        v59 = 0;
      }

      v105 = v59;
      *&v56 = 138412802;
      v103 = v56;
      while (v57 < [v116 count])
      {
        v60 = [v116 objectAtIndexedSubscript:v57];
        v61 = [v60 objectAtIndexedSubscript:0];

        v62 = [v116 objectAtIndexedSubscript:v57];
        v63 = [v62 objectAtIndexedSubscript:1];

        rangeValue = [v63 rangeValue];
        v66 = v65;
        v67 = [v61 count];
        if (v67 && (v68 = *tokens, v69 = *(tokens + 1), 0x6DB6DB6DB6DB6DB7 * ((v69 - *tokens) >> 5) > v58))
        {
          v70 = v58;
          while (1)
          {
            v71 = v68 + 224 * v70;
            v72 = (__src + 16 * v70);
            v73 = *v72;
            if (rangeValue == *v72)
            {
              v74 = v72[1];
              v26 = v66 >= v74;
              v75 = v66 - v74;
              if (v26)
              {
                break;
              }
            }

            if (v73 > rangeValue)
            {
              goto LABEL_67;
            }

            v67 = std::vector<quasar::Token>::push_back[abi:ne200100](&v124, (v68 + 224 * v70));
            v70 = (v58 + 1);
            v68 = *tokens;
            v69 = *(tokens + 1);
            v58 = v70;
            if (0x6DB6DB6DB6DB6DB7 * ((v69 - *tokens) >> 5) <= v70)
            {
              goto LABEL_68;
            }
          }

          v76 = *(v71 + 28);
          if (v75 < 1)
          {
            v77 = 0;
LABEL_83:
            v82 = *(v71 + 45);
            v83 = v76;
            LODWORD(v58) = v77 + v58;
            quasar::Token::Token(&buf, (v68 + 224 * v58));
            HIDWORD(v140) = v83;
            v141 = v82;
            typea = [v61 objectAtIndexedSubscript:0];
            v84 = [(_EAREmojiRecognition *)self->_emojiFormatter formatEmojiStrings:?];
            osloga = v84;
            if (v84)
            {
              [v84 ear_toString];
            }

            else
            {
              memset(&v122, 0, sizeof(v122));
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            buf = v122;
            v86 = v124;
            v85 = v125;
            [(_EARFormatter *)self emojiAlternativesForEmojis:v61];
            v87 = v119;
            v88 = v118;
            v119 = 0;
            v120 = (0x6DB6DB6DB6DB6DB7 * ((v85 - v86) >> 5));
            v118 = 0uLL;
            LODWORD(v122.__r_.__value_.__l.__data_) = -1227133513 * ((v85 - v86) >> 5);
            *&v122.__r_.__value_.__r.__words[1] = v88;
            v123 = v87;
            memset(v121, 0, sizeof(v121));
            std::vector<std::pair<int,std::vector<std::string>>>::push_back[abi:ne200100](indices, &v122);
            p_size = &v122.__r_.__value_.__l.__size_;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_size);
            p_size = v121;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_size);
            p_size = &v118;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_size);
            if (v105)
            {
              v89 = self->_emojiFormatter;
              v90 = [string substringWithRange:{rangeValue, v66}];
              [(_EAREmojiRecognition *)v89 didUseEmoji:osloga replacementContext:v90];

              [(NSMutableArray *)self->_recognizedEmojis addObject:typea];
            }

            std::vector<quasar::Token>::push_back[abi:ne200100](&v124, &buf);

            if (v151 < 0)
            {
              operator delete(__p);
            }

            if (v149 < 0)
            {
              operator delete(v148);
            }

            v122.__r_.__value_.__r.__words[0] = &v147;
            std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v122);
            if (v146 < 0)
            {
              operator delete(v145);
            }

            v122.__r_.__value_.__r.__words[0] = &v144;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v122);
            if (v143 < 0)
            {
              operator delete(v142);
            }

            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          else
          {
            v77 = 0;
            v78 = 0x6DB6DB6DB6DB6DB7 * ((v69 - v68) >> 5);
            while (1)
            {
              v79 = v58 + v77 == -1 ? 0 : *(v68 + 224 * (v58 + v77) + 44);
              v80 = __src + 16 * (v58 + v77 + 1);
              v75 = v75 - v79 - v80[1];
              if (v75 < 0)
              {
                break;
              }

              if (v75)
              {
                v81 = v78 > (v58 + v77 + 2);
              }

              else
              {
                v81 = 1;
              }

              if (!v81)
              {
                goto LABEL_104;
              }

              ++v77;
              if (!v75)
              {
                goto LABEL_83;
              }
            }

            if (quasar::gLogLevel >= 5)
            {
              oslogb = quasar::QuasarOsLog(v67);
              typeb = quasar::QuasarLogLevelToType(5);
              if (os_log_type_enabled(oslogb, typeb))
              {
                v91 = [string substringWithRange:{rangeValue, v66}];
                v92 = [string substringWithRange:{*v80, v80[1]}];
                LODWORD(buf.__r_.__value_.__l.__data_) = v103;
                *(buf.__r_.__value_.__r.__words + 4) = string;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2112;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v91;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2112;
                v140 = v92;
                _os_log_impl(&dword_1B501D000, oslogb, typeb, "Emoji match failed: inputString:%@ recognizedEmoji:%@ currToken:%@", &buf, 0x20u);
              }
            }

LABEL_104:
            std::vector<quasar::Token>::push_back[abi:ne200100](&v124, v71);
          }

          v70 = (v58 + 1);
        }

        else
        {
LABEL_67:
          v70 = v58;
        }

LABEL_68:

        ++v57;
        v58 = v70;
      }

      v93 = *tokens;
      if (0x6DB6DB6DB6DB6DB7 * ((*(tokens + 1) - *tokens) >> 5) > v58)
      {
        v94 = v58;
        v95 = v58 + 1;
        do
        {
          std::vector<quasar::Token>::push_back[abi:ne200100](&v124, (v93 + 224 * v94));
          v94 = v95;
          v93 = *tokens;
          v81 = 0x6DB6DB6DB6DB6DB7 * ((*(tokens + 1) - *tokens) >> 5) > v95++;
        }

        while (v81);
      }

      if (&v124 != tokens)
      {
        std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(tokens, v124, v125, 0x6DB6DB6DB6DB6DB7 * ((v125 - v124) >> 5));
      }

      buf.__r_.__value_.__r.__words[0] = &v124;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&buf);
      v54 = v116;
      v36 = v104;
    }

    if (quasar::gLogLevel >= 5)
    {
      v96 = quasar::QuasarOsLog(v55);
      v97 = quasar::QuasarLogLevelToType(5);
      if (os_log_type_enabled(v96, v97))
      {
        v98 = MEMORY[0x1E696AEC0];
        memset(&v117, 0, sizeof(v117));
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v117, *tokens, *(tokens + 1), 0x6DB6DB6DB6DB6DB7 * ((*(tokens + 1) - *tokens) >> 5));
        EARHelpers::QuasarTokensToStdString(&v117, &v122);
        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v99 = &v122;
        }

        else
        {
          v99 = v122.__r_.__value_.__r.__words[0];
        }

        if ((v122.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v122.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v122.__r_.__value_.__l.__size_;
        }

        v101 = [v98 ear_stringWithStringView:{v99, size}];
        v102 = [v116 count];
        LODWORD(buf.__r_.__value_.__l.__data_) = 138412802;
        *(buf.__r_.__value_.__r.__words + 4) = v101;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v102;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        LODWORD(v140) = v36;
        _os_log_impl(&dword_1B501D000, v96, v97, "Emoji Output: %@ NumOfRecognizedEmojis:%lu isLocaleRTL:%d", &buf, 0x1Cu);
        if (SHIBYTE(v122.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v122.__r_.__value_.__l.__data_);
        }

        v120 = &v117;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v120);
      }

      v54 = v116;
    }

    _Block_object_dispose(&v129, 8);
    goto LABEL_125;
  }

  if (quasar::gLogLevel >= 5)
  {
    v51 = quasar::QuasarOsLog(0);
    v52 = quasar::QuasarLogLevelToType(5);
    if (os_log_type_enabled(v51, v52))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_1B501D000, v51, v52, "Emoji Input is empty", &buf, 2u);
    }

LABEL_125:
    v32 = string;
  }

  if (__src)
  {
    v136 = __src;
    operator delete(__src);
  }
}

- (vector<quasar::Token,)formattedTokensWithoutEmojiModifier:(_EARFormatter *)self emojiTokenIndices:(SEL)indices recognizeEmoji:(const void *)emoji
{
  if (a6 && self->_emojiFormatter)
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    result = std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(retstr, *emoji, *(emoji + 1), 0x6DB6DB6DB6DB6DB7 * ((*(emoji + 1) - *emoji) >> 5));
    v11 = *a5;
    v12 = *(a5 + 1);
    if (*a5 != v12)
    {
      begin = retstr->__begin_;
      do
      {
        v14 = *v11;
        if (0x6DB6DB6DB6DB6DB7 * (retstr->__end_ - begin) > v14)
        {
          v15 = *emoji + 224 * v14;
          v16 = *(v15 + 23);
          if (v16 < 0)
          {
            v15 = *v15;
            v16 = *(*emoji + 224 * v14 + 8);
          }

          v17 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v15, v16}];
          v18 = [(_EAREmojiRecognition *)self->_emojiFormatter baseStringForEmojiString:v17];
          v19 = v18;
          if (v18)
          {
            [v18 ear_toString];
          }

          else
          {
            v24 = 0uLL;
            v25 = 0;
          }

          v20 = &retstr->__begin_[7 * *v11];
          if (*(&v20->tokenName.__rep_.__l + 23) < 0)
          {
            operator delete(v20->tokenName.__rep_.__l.__data_);
          }

          *(&v20->tokenName.__rep_.__l + 2) = v25;
          *v20->tokenName.__rep_.__s.__data_ = v24;
          HIBYTE(v25) = 0;
          LOBYTE(v24) = 0;

          begin = retstr->__begin_;
        }

        v11 += 8;
      }

      while (v11 != v12);
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
    v21 = *emoji;
    v22 = *(emoji + 1);
    v23 = 0x6DB6DB6DB6DB6DB7 * ((v22 - *emoji) >> 5);

    return std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(retstr, v21, v22, v23);
  }

  return result;
}

- (void)appendNbestListWithEmojiAlternativesForFormattedTokens:(const void *)tokens formattedTokensWithoutEmojiModifier:(const void *)modifier formattedNBestList:(void *)list formattedNBestListWithoutEmojiModifier:(void *)emojiModifier emojiTokenIndices:(const void *)indices recognizeEmoji:(BOOL)emoji
{
  v59[1] = *MEMORY[0x1E69E9840];
  if (emoji)
  {
    selfCopy = self;
    if (self->_emojiFormatter)
    {
      v9 = *indices;
      v43 = *(indices + 1);
      if (*indices != v43)
      {
        v12 = 0x6DB6DB6DB6DB6DB7;
        selfCopy2 = self;
        do
        {
          if (+[_EARFeatureFlags isEmojiV2Enabled])
          {
            v14 = *(v9 + 1);
            v13 = *(v9 + 2);
            while (v14 != v13)
            {
              memset(&v57, 0, sizeof(v57));
              std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v57, *tokens, *(tokens + 1), ((*(tokens + 1) - *tokens) >> 5) * v12);
              memset(v56, 0, sizeof(v56));
              std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v56, *modifier, *(modifier + 1), ((*(modifier + 1) - *modifier) >> 5) * v12);
              std::string::operator=((v57.__r_.__value_.__r.__words[0] + 224 * *v9), v14);
              std::string::operator=(&v56[0][28 * *v9], v14);
              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](list, &v57);
              std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](emojiModifier, v56);
              __p = v56;
              std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
              v56[0] = &v57;
              std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v56);
              ++v14;
            }
          }

          else
          {
            v15 = *tokens + 224 * *v9;
            if (*(v15 + 199) < 0)
            {
              std::string::__init_copy_ctor_external(&v57, *(v15 + 176), *(v15 + 184));
            }

            else
            {
              v16 = *(v15 + 176);
              v57.__r_.__value_.__r.__words[2] = *(v15 + 192);
              *&v57.__r_.__value_.__l.__data_ = v16;
            }

            ptr = selfCopy->_itn.__ptr_;
            v18 = objc_opt_class();
            if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = &v57;
            }

            else
            {
              v19 = v57.__r_.__value_.__r.__words[0];
            }

            if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = v57.__r_.__value_.__l.__size_;
            }

            v21 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v19, size}];
            v59[0] = v21;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:1];
            if (v18)
            {
              [v18 convertStringsToQuasarTokens:v22 offset:0];
            }

            else
            {
              __p = 0;
              v54 = 0;
              v55 = 0;
            }

            (*(*ptr + 32))(v56, ptr, &__p);
            v48[0] = &__p;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v48);

            emojiFormatter = selfCopy->_emojiFormatter;
            v24 = MEMORY[0x1E696AEC0];
            [(_EARFormatter *)selfCopy getOrthography:v56];
            if (v55 >= 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p;
            }

            if (v55 >= 0)
            {
              v26 = HIBYTE(v55);
            }

            else
            {
              v26 = v54;
            }

            v27 = [v24 ear_stringWithStringView:{p_p, v26}];
            v28 = *tokens + 224 * *v9;
            v29 = *(v28 + 23);
            if (v29 < 0)
            {
              v28 = *v28;
              v29 = *(*tokens + 224 * *v9 + 8);
            }

            v30 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:{v28, v29}];
            v31 = [(_EAREmojiRecognition *)emojiFormatter searchEmojiAlternativesForSpokenEmoji:v27 count:3 emojiCharacter:v30];

            if (SHIBYTE(v55) < 0)
            {
              operator delete(__p);
            }

            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v32 = v31;
            v33 = [v32 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v33)
            {
              v34 = *v50;
              do
              {
                for (i = 0; i != v33; ++i)
                {
                  if (*v50 != v34)
                  {
                    objc_enumerationMutation(v32);
                  }

                  v36 = *(*(&v49 + 1) + 8 * i);
                  __p = 0;
                  v54 = 0;
                  v55 = 0;
                  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&__p, *tokens, *(tokens + 1), ((*(tokens + 1) - *tokens) >> 5) * v12);
                  memset(v48, 0, sizeof(v48));
                  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v48, *modifier, *(modifier + 1), ((*(modifier + 1) - *modifier) >> 5) * v12);
                  if (v36)
                  {
                    [v36 ear_toString];
                  }

                  else
                  {
                    v46 = 0uLL;
                    v47 = 0;
                  }

                  v37 = v12;
                  v38 = __p + 224 * *v9;
                  if (v38[23] < 0)
                  {
                    operator delete(*v38);
                  }

                  v39 = v46;
                  *(v38 + 2) = v47;
                  *v38 = v39;
                  if (v36)
                  {
                    [v36 ear_toString];
                  }

                  else
                  {
                    v46 = 0uLL;
                    v47 = 0;
                  }

                  v40 = &v48[0][28 * *v9];
                  if (*(v40 + 23) < 0)
                  {
                    operator delete(*v40);
                  }

                  v41 = v46;
                  v40[2] = v47;
                  *v40 = v41;
                  std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](list, &__p);
                  std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](emojiModifier, v48);
                  *&v46 = v48;
                  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v46);
                  v48[0] = &__p;
                  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v48);
                  v12 = v37;
                }

                v33 = [v32 countByEnumeratingWithState:&v49 objects:v58 count:16];
              }

              while (v33);
            }

            selfCopy = selfCopy2;
            __p = v56;
            std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          v9 += 8;
        }

        while (v9 != v43);
      }
    }
  }
}

- (id)formatWords:(id)words task:(id)task autoPunctuate:(BOOL)punctuate
{
  v5 = [(_EARFormatter *)self formatWords:words task:task autoPunctuate:punctuate recognizeEmoji:0];

  return v5;
}

- (id)formatWords:(id)words task:(id)task autoPunctuate:(BOOL)punctuate recognizeEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  punctuateCopy = punctuate;
  v67 = *MEMORY[0x1E69E9840];
  wordsCopy = words;
  taskCopy = task;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  memset(v61, 0, sizeof(v61));
  memset(v60, 0, sizeof(v60));
  language = self->_language;
  if (!language)
  {
    language = &stru_1F2D44B60;
  }

  v35 = language;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v13 = wordsCopy;
  v14 = [v13 countByEnumeratingWithState:&v56 objects:v66 count:16];
  if (v14)
  {
    v15 = *v57;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v57 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v56 + 1) + 8 * i);
        if (v17)
        {
          [v17 quasarToken];
        }

        else
        {
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          *__p = 0u;
          *v51 = 0u;
          *v49 = 0u;
          memset(v50, 0, sizeof(v50));
          memset(v48, 0, sizeof(v48));
          v46 = 0u;
          *v47 = 0u;
          memset(v45, 0, sizeof(v45));
        }

        std::vector<quasar::Token>::push_back[abi:ne200100](&v62, v45);
        if (SBYTE7(v54) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v52) < 0)
        {
          operator delete(v51[0]);
        }

        v44[0] = v50 + 1;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v44);
        if (SBYTE7(v50[0]) < 0)
        {
          operator delete(v49[0]);
        }

        v44[0] = v48 + 1;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v44);
        if (SBYTE7(v48[0]) < 0)
        {
          operator delete(v47[0]);
        }

        if ((v45[23] & 0x80000000) != 0)
        {
          operator delete(*v45);
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v56 objects:v66 count:16];
    }

    while (v14);
  }

  if (punctuateCopy)
  {
    v18 = -1;
  }

  else
  {
    v18 = -2;
  }

  memset(v44, 0, sizeof(v44));
  v42 = 0uLL;
  v43 = 0;
  ptr = self->_itn.__ptr_;
  if (ptr)
  {
    memset(v45, 0, 24);
    v20 = (*(*ptr + 48))(ptr);
    if (v20)
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v45, v62, v63, 0x6DB6DB6DB6DB6DB7 * ((v63 - v62) >> 5));
      v21 = *&v45[8];
      for (j = *v45; j != v21; j += 224)
      {
        quasar::hatTextDecode(j, 1);
        if (*(j + 23) < 0)
        {
          operator delete(*j);
        }

        v23 = v40;
        *(j + 16) = v41;
        *j = v23;
      }
    }

    else
    {
      v27 = quasar::QsrText::SingletonInstance(v20);
      quasar::QsrText::hatToQsrTokens(v27, &v62, v45, 0);
    }

    v28 = self->_itn.__ptr_;
    if (taskCopy)
    {
      [taskCopy ear_toString];
    }

    else
    {
      v38[0] = 0;
      v38[1] = 0;
      v39 = 0;
    }

    [(__CFString *)v35 ear_toString];
    (*(*v28 + 16))(&v40, v28, v45, v61, v38, &v36, v60, v18, [_EARFormatter useEmojiHammerWhenRecognizeEmoji:emojiCopy]);
    std::vector<quasar::Token>::__vdeallocate(&v42);
    v42 = v40;
    v43 = v41;
    v41 = 0;
    v40 = 0uLL;
    v65 = &v40;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v65);
    if (v37 < 0)
    {
      operator delete(v36);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }

    [(_EARFormatter *)self recognizeEmojiForTokens:&v42 emojiTokenIndices:v44 persistEmoji:0 choiceIdx:0];
    *&v40 = v45;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v40);
  }

  else
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v42, v62, v63, 0x6DB6DB6DB6DB6DB7 * ((v63 - v62) >> 5));
    v24 = *(&v42 + 1);
    for (k = v42; k != v24; k += 224)
    {
      quasar::hatTextDecode(k, 1);
      if (*(k + 23) < 0)
      {
        operator delete(*k);
      }

      v26 = *v45;
      *(k + 16) = *&v45[16];
      *k = v26;
    }
  }

  v29 = objc_alloc(MEMORY[0x1E695DF70]);
  v30 = [v29 initWithCapacity:0x6DB6DB6DB6DB6DB7 * ((*(&v42 + 1) - v42) >> 5)];
  v32 = *(&v42 + 1);
  for (m = v42; m != v32; m = (m + 224))
  {
    quasar::Token::Token(v45, m);
    v33 = [[_EARSpeechRecognitionToken alloc] _initWithQuasarToken:v45];
    [v30 addObject:v33];

    if (SBYTE7(v54) < 0)
    {
      operator delete(__p[0]);
    }

    if (SBYTE7(v52) < 0)
    {
      operator delete(v51[0]);
    }

    *&v40 = v50 + 8;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v40);
    if (SBYTE7(v50[0]) < 0)
    {
      operator delete(v49[0]);
    }

    *&v40 = v48 + 8;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v40);
    if (SBYTE7(v48[0]) < 0)
    {
      operator delete(v47[0]);
    }

    if ((v45[23] & 0x80000000) != 0)
    {
      operator delete(*v45);
    }
  }

  *v45 = &v42;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v45);
  *v45 = v44;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](v45);

  *v45 = v60;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](v45);
  *v45 = v61;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v45);
  *v45 = &v62;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v45);

  return v30;
}

- (BOOL)refreshEmojiRecognizer
{
  v7 = *MEMORY[0x1E69E9840];
  emojiFormatter = self->_emojiFormatter;
  if (emojiFormatter && (emojiFormatter = [(_EAREmojiRecognition *)emojiFormatter isEmojiRecognitionCapable], emojiFormatter))
  {
    [(_EAREmojiRecognition *)self->_emojiFormatter resetEmojiPreferences];
    return 1;
  }

  else
  {
    v5 = EARLogger::QuasarOSLogger(emojiFormatter);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_EARFormatter *)self->_emojiFormatter refreshEmojiRecognizer:v6];
    }

    return 0;
  }
}

- (void)initializeItnMetrics
{
  v16[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recognizedEmojis = self->_recognizedEmojis;
  self->_recognizedEmojis = v3;

  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  v15[0] = @"itnDurationInNs";
  v6 = [MEMORY[0x1E696AD98] numberWithDouble:0.0];
  v16[0] = v6;
  v15[1] = @"isEmojiPersonalizationUsed";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v16[1] = v7;
  v15[2] = @"isEmojiDisambiguationUsed";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v16[2] = v8;
  v15[3] = @"isEmojiExpectedButNotRecognized";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v16[3] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:4];
  v11 = [v5 initWithDictionary:v10];
  emojiMetrics = self->_emojiMetrics;
  self->_emojiMetrics = v11;

  self->_firstCandidateItnDurationSum = 0.0;
  self->_firstCandidateItnCount = 0;
  array = [MEMORY[0x1E695DEC8] array];
  firstCandidateItnIntervalInTicks = self->_firstCandidateItnIntervalInTicks;
  self->_firstCandidateItnIntervalInTicks = array;

  [(_EAREmojiRecognition *)self->_emojiFormatter resetEmojiMetrics];
}

+ (vector<quasar::Token,)convertStringsToQuasarTokens:(id)tokens offset:(SEL)offset
{
  v41 = *MEMORY[0x1E69E9840];
  v7 = a4;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v7;
  v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v8)
  {
    v9 = *v37;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v11 = a5;
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if (v12)
        {
          [v12 ear_toString];
        }

        else
        {
          v23 = 0uLL;
          v24 = 0;
        }

        std::string::basic_string[abi:ne200100]<0>(v21, "");
        std::string::basic_string[abi:ne200100]<0>(v19, "");
        memset(v18, 0, sizeof(v18));
        std::string::basic_string[abi:ne200100]<0>(__p, "");
        v13 = a5 + 999;
        quasar::Token::Token(v25, &v23, v11, v11 + 999, 0, 1, 0, v21, 0.0, v19, v18, 0, __p, 0, 0, 0);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }

        __p[0] = v18;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
        if (v20 < 0)
        {
          operator delete(v19[0]);
        }

        if (v22 < 0)
        {
          operator delete(v21[0]);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(v23);
        }

        std::vector<quasar::Token>::push_back[abi:ne200100](retstr, v25);
        if (v35 < 0)
        {
          operator delete(v34);
        }

        if (v33 < 0)
        {
          operator delete(v32);
        }

        v21[0] = &v31;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v21);
        if (v30 < 0)
        {
          operator delete(v29);
        }

        v21[0] = &v28;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v21);
        if (v27 < 0)
        {
          operator delete(v26);
        }

        if (SHIBYTE(v25[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25[0].__r_.__value_.__l.__data_);
        }

        a5 = v13 + 1;
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
      a5 = v11 + 1000;
    }

    while (v8);
  }

  return result;
}

- (id)formattedStringWithStrings:(id)strings
{
  v3 = [(_EARFormatter *)self formattedStringWithStrings:strings task:&stru_1F2D44B60];

  return v3;
}

- (id)formattedStringWithStrings:(id)strings task:(id)task
{
  stringsCopy = strings;
  taskCopy = task;
  v8 = objc_opt_class();
  if (v8)
  {
    [v8 convertStringsToQuasarTokens:stringsCopy];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  memset(v15, 0, sizeof(v15));
  [(_EARFormatter *)self formatWords:v16 unrepairedWordsOut:v15 task:taskCopy];
  [(_EARFormatter *)self getOrthography:v14];
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  v14[0] = v15;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v14);
  v15[0] = v16;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v15);

  return v10;
}

- (id)formattedStringWithStrings:(id)strings preToPostItnArray:(id)array
{
  v4 = [(_EARFormatter *)self formattedStringWithStrings:strings preToPostItnArray:array task:&stru_1F2D44B60];

  return v4;
}

- (id)formattedStringWithStrings:(id)strings preToPostItnArray:(id)array task:(id)task
{
  v33[4] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  arrayCopy = array;
  taskCopy = task;
  v23 = taskCopy;
  v10 = objc_opt_class();
  if (v10)
  {
    [v10 convertStringsToQuasarTokens:stringsCopy];
  }

  else
  {
    memset(&v32, 0, sizeof(v32));
  }

  memset(v31, 0, sizeof(v31));
  [(_EARFormatter *)self formatWords:&v32 unrepairedWordsOut:v31 task:taskCopy];
  v25 = 0;
  v26 = 0;
  quasar::getPreItnTokenToPostItnCharAlignment(&v32, &v30, &v25, &__p);
  selfCopy = self;
  v12 = __p;
  v11 = v28;
  v28 = 0;
  v29 = 0;
  __p = 0;
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (v12 != v11)
  {
    v13 = v12;
    do
    {
      v14 = [MEMORY[0x1E696AD98] numberWithInt:{*v13, selfCopy}];
      v33[0] = v14;
      v15 = [MEMORY[0x1E696AD98] numberWithInt:v13[1]];
      v33[1] = v15;
      v16 = [MEMORY[0x1E696AD98] numberWithInt:v13[2]];
      v33[2] = v16;
      v17 = [MEMORY[0x1E696AD98] numberWithInt:v13[3]];
      v33[3] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:4];

      [arrayCopy addObject:v18];
      v13 += 4;
    }

    while (v13 != v11);
  }

  [(_EARFormatter *)selfCopy getOrthography:&v30, selfCopy];
  if (v29 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p);
  }

  if (v12)
  {
    operator delete(v12);
  }

  __p = &v30;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  v30.__r_.__value_.__r.__words[0] = v31;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v30);
  v31[0] = &v32;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v31);

  return v20;
}

- (id)formattedRecognitionWithNBestList:(id)list
{
  v44 = *MEMORY[0x1E69E9840];
  memset(v40, 0, sizeof(v40));
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = list;
  v4 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
  if (v4)
  {
    v5 = *v37;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v37 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v36 + 1) + 8 * i);
        memset(v35, 0, sizeof(v35));
        memset(v34, 0, sizeof(v34));
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v8 = v7;
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
        if (v9)
        {
          v10 = *v31;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v31 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v30 + 1) + 8 * j);
              if (v12)
              {
                [v12 quasarToken];
              }

              else
              {
                v28 = 0u;
                v29 = 0u;
                v26 = 0u;
                *__p = 0u;
                *v25 = 0u;
                *v23 = 0u;
                memset(v24, 0, sizeof(v24));
                memset(v22, 0, sizeof(v22));
                v20 = 0u;
                *v21 = 0u;
                *v18 = 0u;
                v19 = 0u;
              }

              std::vector<quasar::Token>::push_back[abi:ne200100](v35, v18);
              if (SBYTE7(v28) < 0)
              {
                operator delete(__p[0]);
              }

              if (SBYTE7(v26) < 0)
              {
                operator delete(v25[0]);
              }

              v41 = v24 + 1;
              std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v41);
              if (SBYTE7(v24[0]) < 0)
              {
                operator delete(v23[0]);
              }

              v41 = v22 + 1;
              std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v41);
              if (SBYTE7(v22[0]) < 0)
              {
                operator delete(v21[0]);
              }

              if (SBYTE7(v19) < 0)
              {
                operator delete(v18[0]);
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v30 objects:v42 count:16];
          }

          while (v9);
        }

        [(_EARFormatter *)self formatWords:v35 unrepairedWordsOut:v34];
        std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](v40, v18);
        v41 = v18;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v41);
        v18[0] = v34;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v18);
        v18[0] = v35;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v18);
      }

      v4 = [obj countByEnumeratingWithState:&v36 objects:v43 count:16];
    }

    while (v4);
  }

  v13 = [_EARSpeechRecognition alloc];
  v14 = [MEMORY[0x1E695DFD8] set];
  *&v20 = 0;
  *v18 = 0u;
  v19 = 0u;
  std::string::basic_string[abi:ne200100]<0>(&v18[1], "▁");
  LOBYTE(v20) = 0;
  v15 = [(_EARSpeechRecognition *)v13 _initWithNBestList:v40 useHatText:0 endsOfSentencePunctuations:v14 formattingInfo:v18];
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  v18[0] = v40;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v18);

  return v15;
}

- (id)_formattedStringWithStrings:(id)strings task:(id)task leftContext:(id)context
{
  v5 = [(_EARFormatter *)self _formattedStringWithStrings:strings task:task leftContext:context recognizeEmoji:0];
  if ([v5 count])
  {
    v6 = [v5 objectAtIndexedSubscript:0];
  }

  else
  {
    v6 = &stru_1F2D44B60;
  }

  return v6;
}

- (id)_formattedStringWithStrings:(id)strings task:(id)task leftContext:(id)context recognizeEmoji:(BOOL)emoji
{
  v6 = [(_EARFormatter *)self _formattedStringWithStrings:strings task:task leftContext:context recognizeEmoji:emoji rightContext:0];

  return v6;
}

- (id)_formattedStringWithStrings:(id)strings task:(id)task leftContext:(id)context recognizeEmoji:(BOOL)emoji rightContext:(id)rightContext
{
  v55[2] = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  taskCopy = task;
  contextCopy = context;
  rightContextCopy = rightContext;
  v16 = objc_opt_class();
  if (v16)
  {
    [v16 convertStringsToQuasarTokens:contextCopy];
    if (v52 == v53)
    {
      v17 = 0;
    }

    else
    {
      v17 = (*(v53 - 192) + 3000);
    }
  }

  else
  {
    v17 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
  }

  v18 = objc_opt_class();
  if (v18)
  {
    [v18 convertStringsToQuasarTokens:rightContextCopy];
  }

  else
  {
    memset(v51, 0, sizeof(v51));
  }

  v19 = objc_opt_class();
  if (v19)
  {
    [v19 convertStringsToQuasarTokens:stringsCopy offset:v17];
  }

  else
  {
    memset(v50, 0, sizeof(v50));
  }

  memset(v49, 0, sizeof(v49));
  memset(v48, 0, sizeof(v48));
  memset(v47, 0, sizeof(v47));
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  memset(v44, 0, sizeof(v44));
  v40 = 0;
  v41 = 0;
  v38[0] = 0;
  v38[1] = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  LOBYTE(v33) = 0;
  LOWORD(v32) = 0;
  LOBYTE(v31) = 0;
  BYTE3(v30) = [contextCopy count] != 0;
  BYTE2(v30) = emoji;
  LOWORD(v30) = -1;
  BYTE4(v29) = 0;
  LODWORD(v29) = 0;
  [_EARFormatter formatWords:"formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:" unrepairedWordsOut:v50 task:v49 language:taskCopy preItnLeftContext:@"en-US" separateAutoEndPunctuation:&v52 partialResults:0 timestampOffset:v47 zeroTimestamp:v29 continuousListeningConfig:&v40 postItnLeftContext:v38 itnResult:v46 itnOverrides:v45 itnEnablingFlags:v30 recognizeEmoji:v51 leftContextProvidedByClient:&stru_1F2D44B60 preItnRightContext:&stru_1F2D44B60 postItnLeftContextStr:v31 postItnRightContextStr:v44 stripLeadingAppendedAutoPunctuation:v32 emojiTokenIndices:&v36 persistEmoji:v33 shouldHideTrailingPunctuation:0 isTrailingPunctuationHidden:? isFinal:? choiceIdx:? itnCompletion:?];
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v37);
  }

  __p[0] = v38;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v41)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v41);
  }

  [(_EARFormatter *)self getOrthography:&v42];
  v20 = v43;
  if (v42 != v43)
  {
    v21 = v42 + 22;
    while ((*(v21 + 23) & 0x8000000000000000) != 0)
    {
      if (v21[1])
      {
        goto LABEL_22;
      }

LABEL_23:
      v22 = v21 + 6;
      v21 += 28;
      if (v22 == v20)
      {
        goto LABEL_24;
      }
    }

    if (!*(v21 + 23))
    {
      goto LABEL_23;
    }

LABEL_22:
    std::string::operator=((v21 - 22), v21);
    goto LABEL_23;
  }

LABEL_24:
  [(_EARFormatter *)self getOrthography:&v42];
  if (v39 >= 0)
  {
    v23 = v38;
  }

  else
  {
    v23 = v38[0];
  }

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v23];
  v55[0] = v24;
  if (v35 >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
  v55[1] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];

  if (v35 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  v38[0] = &v42;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v38);
  v42 = v44;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v42);
  v44[0] = v45;
  std::vector<quasar::ItnOverride>::__destroy_vector::operator()[abi:ne200100](v44);
  v45[0] = v46;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v45);
  v46[0] = v47;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v46);
  v47[0] = v48;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v47);
  v48[0] = v49;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v48);
  v49[0] = v50;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v49);
  v50[0] = v51;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v50);
  v51[0] = &v52;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v51);

  return v27;
}

- (id)_formattedStringWithoutEmojiModifier:(id)modifier
{
  modifierCopy = modifier;
  v5 = objc_opt_class();
  if (v5)
  {
    [v5 convertStringsToQuasarTokens:modifierCopy offset:0];
    v6 = v24;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    if (v25 != v24)
    {
      v7 = 0;
      v8 = 0;
      do
      {
        v9 = (v6 + 224 * v7);
        if (*(v9 + 23) < 0)
        {
          v9 = *v9;
        }

        v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v9];
        if ([v10 _isSingleEmoji])
        {
          LODWORD(__p) = v8;
          memset(v14, 0, sizeof(v14));
          LODWORD(v19) = v8;
          memset(v20, 0, sizeof(v20));
          v17 = 0;
          v18 = 0;
          v16 = 0;
          std::vector<std::pair<int,std::vector<std::string>>>::push_back[abi:ne200100](&v21, &v19);
          v27 = v20;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
          v27 = &v16;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
          v27 = v14;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
        }

        v6 = v24;
        v7 = ++v8;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v25 - v24) >> 5) > v8);
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  [(_EARFormatter *)self formattedTokensWithoutEmojiModifier:&v24 emojiTokenIndices:&v21 recognizeEmoji:1];
  [(_EARFormatter *)self getOrthography:&v19];
  if (v17 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  __p = &v19;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  v19 = &v21;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v19);
  v19 = &v24;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v19);

  return v12;
}

- (id)emojiPhraseRemoveKeyword:(id)keyword
{
  v16[1] = *MEMORY[0x1E69E9840];
  keywordCopy = keyword;
  ptr = self->_itn.__ptr_;
  v6 = objc_opt_class();
  v16[0] = keywordCopy;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  if (v6)
  {
    [v6 convertStringsToQuasarTokens:v7 offset:0];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
  }

  (*(*ptr + 32))(v14, ptr, __p);
  v15 = __p;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v15);

  v8 = MEMORY[0x1E696AEC0];
  [(_EARFormatter *)self getOrthography:v14];
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  v10 = [v8 stringWithUTF8String:v9];
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = v14;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);

  return v10;
}

- (id)emojiAlternativesForFormattedTokens:(id)tokens stringsWithoutEmojiModifier:(id)modifier alternateNameForTokens:(id)forTokens
{
  tokensCopy = tokens;
  modifierCopy = modifier;
  forTokensCopy = forTokens;
  v10 = objc_opt_class();
  v32 = modifierCopy;
  v33 = tokensCopy;
  if (v10)
  {
    [v10 convertStringsToQuasarTokens:tokensCopy offset:0];
    v11 = v50;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    if (v51 != v50)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = (v11 + 224 * v12);
        v15 = v14;
        if (*(v14 + 23) < 0)
        {
          v15 = *v14;
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v15, v32}];
        if ([v16 _isSingleEmoji])
        {
          LODWORD(v40) = v13;
          v38 = 0;
          v39 = 0;
          v37 = 0;
          LODWORD(v44) = v13;
          v45 = 0;
          v46 = 0;
          *(&v44 + 1) = 0;
          v42 = 0;
          v43 = 0;
          v41 = 0;
          std::vector<std::pair<int,std::vector<std::string>>>::push_back[abi:ne200100](&v47, &v44);
          __p[0] = &v44 + 8;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
          __p[0] = &v41;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
          __p[0] = &v37;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
        }

        v17 = [forTokensCopy objectAtIndexedSubscript:v12];
        v18 = v17;
        if (v17)
        {
          [v17 ear_toString];
        }

        else
        {
          v44 = 0uLL;
          v45 = 0;
        }

        if (*(v14 + 199) < 0)
        {
          operator delete(v14[22]);
        }

        v19 = v44;
        v14[24] = v45;
        *(v14 + 11) = v19;
        HIBYTE(v45) = 0;
        LOBYTE(v44) = 0;

        v11 = v50;
        v12 = ++v13;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((v51 - v50) >> 5) > v13);
    }
  }

  else
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
  }

  v20 = v32;
  v21 = objc_opt_class();
  if (v21)
  {
    [v21 convertStringsToQuasarTokens:v32 offset:0];
  }

  else
  {
    v44 = 0uLL;
    v45 = 0;
  }

  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  [(_EARFormatter *)self appendNbestListWithEmojiAlternativesForFormattedTokens:&v50 formattedTokensWithoutEmojiModifier:&v44 formattedNBestList:&v40 formattedNBestListWithoutEmojiModifier:&v37 emojiTokenIndices:&v47 recognizeEmoji:1, v32];
  array = [MEMORY[0x1E695DF70] array];
  v24 = v40;
  for (i = v41; v24 != i; v24 += 3)
  {
    [(_EARFormatter *)self getOrthography:v24];
    if (v36 >= 0)
    {
      v25 = __p;
    }

    else
    {
      v25 = __p[0];
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v25];
    [array addObject:v26];

    if (v36 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v28 = v37;
  v27 = v38;
  if (v37 != v38)
  {
    do
    {
      [(_EARFormatter *)self getOrthography:v28];
      if (v36 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = __p[0];
      }

      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v29];
      [array addObject:v30];

      if (v36 < 0)
      {
        operator delete(__p[0]);
      }

      v28 += 3;
    }

    while (v28 != v27);
  }

  __p[0] = &v37;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
  v37 = &v40;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v37);
  v40 = &v44;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v40);
  *&v44 = &v47;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&v44);
  *&v44 = &v50;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v44);

  return array;
}

- (id)recognizeEmojiInString:(id)string alternativesOut:(id)out
{
  v4 = [(_EARFormatter *)self _recognizeEmojiInString:string alternativesOut:out persistEmoji:0];

  return v4;
}

- (id)_recognizeEmojiInString:(id)string alternativesOut:(id)out persistEmoji:(BOOL)emoji
{
  emojiCopy = emoji;
  stringCopy = string;
  outCopy = out;
  v10 = objc_opt_class();
  if (v10)
  {
    [v10 convertStringsToQuasarTokens:stringCopy offset:0];
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
  [(_EARFormatter *)self recognizeEmojiForTokens:&v24 emojiTokenIndices:&v21 persistEmoji:emojiCopy choiceIdx:0];
  v11 = v21;
  if (v22 != v21)
  {
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = EARHelpers::VectorToArray<std::string>(&v11[v13]);
      [outCopy addObject:v14];

      ++v12;
      v11 = v21;
      v13 += 4;
    }

    while (v12 < (v22 - v21) >> 5);
  }

  v15 = MEMORY[0x1E696AEC0];
  memset(&v19, 0, sizeof(v19));
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v19, v24, v25, 0x6DB6DB6DB6DB6DB7 * ((v25 - v24) >> 5));
  EARHelpers::QuasarTokensToStdString(&v19, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v17 = [v15 stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v27 = &v19;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v27);
  __p.__r_.__value_.__r.__words[0] = &v21;
  std::vector<std::pair<int,std::vector<std::string>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v21 = &v24;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v21);

  return v17;
}

- (__n128)formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:
{
  *a2 = &unk_1F2D324C8;
  result = *(self + 8);
  v3 = *(self + 24);
  v4 = *(self + 40);
  *(a2 + 56) = *(self + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

- (void)formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:
{
  v4 = *(self + 16);
  v5 = *(**(self + 8) + 8);
  v6 = **(self + 24);
  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    v11[0] = 0;
    v11[1] = 0;
    v12 = 0;
  }

  v7 = **(self + 32);
  if (v7)
  {
    [v7 ear_toString];
  }

  else
  {
    __p = 0;
    v9 = 0;
    v10 = 0;
  }

  (*(*v5 + 16))(v5, a2, v4, v11, &__p, *(self + 40), **(self + 48), [_EARFormatter useEmojiHammerWhenRecognizeEmoji:**(self + 56), __p, v9, v10]);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }
}

- (uint64_t)formatWords:unrepairedWordsOut:task:language:preItnLeftContext:separateAutoEndPunctuation:partialResults:timestampOffset:zeroTimestamp:continuousListeningConfig:postItnLeftContext:itnResult:itnOverrides:itnEnablingFlags:recognizeEmoji:leftContextProvidedByClient:preItnRightContext:postItnLeftContextStr:postItnRightContextStr:stripLeadingAppendedAutoPunctuation:emojiTokenIndices:persistEmoji:shouldHideTrailingPunctuation:isTrailingPunctuationHidden:isFinal:choiceIdx:itnCompletion:
{
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)initWithLanguage:withSdapiConfig:quasarConfig:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "_EARFormatter initialization failed: %s", v3, v4, v5, v6, 2u);
}

- (void)initWithQuasarConfig:overrideConfigFiles:supportEmojiRecognition:language:skipPathsExistCheck:.cold.2()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "_EARFormatter initialization failed on trying createQuasarITN: %s", v3, v4, v5, v6, 2u);
}

- (void)initNcsWithModelRoot:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "_EARFormatter initialization failed on trying createSdapiITN: %s", v3, v4, v5, v6, 2u);
}

- (void)refreshEmojiRecognizer
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 1024;
  *(buf + 14) = a2 & 1;
  _os_log_debug_impl(&dword_1B501D000, log, OS_LOG_TYPE_DEBUG, "Emoji service is not available; Emoji Recognition is turned off %@ %d", buf, 0x12u);
}

@end