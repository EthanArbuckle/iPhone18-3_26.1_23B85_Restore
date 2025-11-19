@interface _EAREmojiRecognition
+ (void)initialize;
- (BOOL)isEmojiRecognitionCapable;
- (BOOL)isValidEmoji:(id)a3;
- (_EAREmojiRecognition)initWithLanguage:(id)a3;
- (id)baseStringForEmojiString:(id)a3;
- (id)formatEmojiStrings:(id)a3;
- (id)formatEmojiStrings:(id)a3 isLogging:(BOOL)a4;
- (id)searchEmojiAlternativesForSpokenEmoji:(id)a3 count:(int64_t)a4 emojiCharacter:(id)a5;
- (void)dealloc;
- (void)didUseEmoji:(id)a3 replacementContext:(id)a4;
- (void)recognizeEmojisInInputString:(id)a3 enumerateUsingBlock:(id)a4;
- (void)resetEmojiPreferences;
@end

@implementation _EAREmojiRecognition

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EAREmojiRecognition)initWithLanguage:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _EAREmojiRecognition;
  v5 = [(_EAREmojiRecognition *)&v15 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v6 = [v4 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    if (v6)
    {
      v7 = [MEMORY[0x1E699BAD8] emojiLocaleDataWithLocaleIdentifier:v6];
      v8 = 0;
      v4 = v6;
      goto LABEL_8;
    }

    v7 = 0;
    v4 = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
LABEL_8:
  localeData = v5->_localeData;
  v5->_localeData = v7;

  v5->_isLocaleRTL = [MEMORY[0x1E695DF58] characterDirectionForLanguage:v4] == 2;
  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = CEMCreateEmojiLocaleData();
  }

  v5->_cemlocaleRef = v10;
  *&v5->_isEmojiPersonalizationUsed = 0;
  v11 = [objc_alloc(MEMORY[0x1E699BAE8]) _initWithoutConnection];
  preferences = v5->_preferences;
  v5->_preferences = v11;

  [(EMFEmojiPreferencesClient *)v5->_preferences readEmojiDefaults];
  if (![(_EAREmojiRecognition *)v5 isEmojiRecognitionCapable])
  {
    v13 = 0;
    goto LABEL_14;
  }

LABEL_12:
  v13 = v5;
LABEL_14:

  return v13;
}

- (void)dealloc
{
  cemlocaleRef = self->_cemlocaleRef;
  if (cemlocaleRef)
  {
    CFRelease(cemlocaleRef);
  }

  v4.receiver = self;
  v4.super_class = _EAREmojiRecognition;
  [(_EAREmojiRecognition *)&v4 dealloc];
}

- (id)formatEmojiStrings:(id)a3
{
  v3 = [(_EAREmojiRecognition *)self formatEmojiStrings:a3 isLogging:0];

  return v3;
}

- (id)formatEmojiStrings:(id)a3 isLogging:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (+[_EARFeatureFlags isEmojiV2Enabled])
  {
    goto LABEL_18;
  }

  if (v6)
  {
    [v6 ear_toString];
  }

  else
  {
    memset(&v20, 0, sizeof(v20));
  }

  std::string::basic_string[abi:ne200100]<0>(v18, "spokenemoji|");
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::replaceFirst(&v20, v18, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "|");
  v8 = quasar::splitAndTrimNoEmpty(&v20, __p, v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  if (v18[0] == v18[1])
  {
    v10 = EARLogger::QuasarOSLogger(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [_EAREmojiRecognition formatEmojiStrings:v10 isLogging:?];
    }

    v9 = 0;
    v7 = v6;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] ear_stringWithStringView:?];

    v9 = [(_EAREmojiRecognition *)self isValidEmoji:v7];
  }

  __p[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_31:
    v14 = 0;
    goto LABEL_32;
  }

  if (!v9)
  {
    goto LABEL_31;
  }

LABEL_18:
  v11 = [MEMORY[0x1E699BB00] emojiTokenWithString:v7 localeData:self->_localeData];
  v12 = v11;
  if (v11)
  {
    if ([v11 supportsSkinToneVariants]&& !a4)
    {
      v13 = [(EMFEmojiPreferencesClient *)self->_preferences lastUsedVariantEmojiForEmoji:v12];

      if ([(EMFEmojiPreferencesClient *)self->_preferences hasLastUsedVariantForEmoji:v13]&& !self->_isEmojiPersonalizationUsed)
      {
        self->_isEmojiPersonalizationUsed = 1;
      }

      v12 = v13;
    }

    v14 = [v12 string];
  }

  else
  {
    v12 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_EAREmojiRecognition formatEmojiStrings:v12 isLogging:?];
    }

    v14 = 0;
  }

LABEL_32:

  return v14;
}

- (void)didUseEmoji:(id)a3 replacementContext:(id)a4
{
  v8 = a3;
  v6 = a4;
  if ([(_EAREmojiRecognition *)self isValidEmoji:v8])
  {
    v7 = [MEMORY[0x1E699BB00] emojiTokenWithString:v8 localeData:self->_localeData];
    [(EMFEmojiPreferencesClient *)self->_preferences didUseEmoji:v7];
    [(EMFEmojiPreferencesClient *)self->_preferences _disconnect];
    [(EMFEmojiPreferencesClient *)self->_preferences didUseEmojiInDictation:v7 replacementContext:v6];
  }
}

- (void)resetEmojiPreferences
{
  preferences = self->_preferences;
  self->_preferences = 0;

  v4 = [objc_alloc(MEMORY[0x1E699BAE8]) _initWithoutConnection];
  v5 = self->_preferences;
  self->_preferences = v4;

  v6 = self->_preferences;

  [(EMFEmojiPreferencesClient *)v6 readEmojiDefaults];
}

- (id)baseStringForEmojiString:(id)a3
{
  v4 = a3;
  if (([v4 _isSingleEmoji] & 1) != 0 && -[_EAREmojiRecognition isValidEmoji:](self, "isValidEmoji:", v4))
  {
    v5 = [MEMORY[0x1E699BB00] emojiTokenWithString:v4 localeData:self->_localeData];
    v6 = [v5 copyWithoutModifiers];
    v7 = [v6 string];
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

- (BOOL)isEmojiRecognitionCapable
{
  if (self->_preferences)
  {
    v2 = [MEMORY[0x1E699BB00] emojiTokenWithString:@"👍" localeData:self->_localeData];
    v3 = v2;
    if (v2)
    {
      v4 = [v2 string];
      if ([v4 length])
      {
        v5 = [v3 string];
        v6 = [v5 isEqualToString:@"👍"];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    if (quasar::gLogLevel >= 4)
    {
      memset(v8, 0, sizeof(v8));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Emoji Prefrences is nil", 23);
      quasar::QuasarInfoMessage::~QuasarInfoMessage(v8);
    }

    return 0;
  }

  return v6;
}

- (BOOL)isValidEmoji:(id)a3
{
  v3 = CEMEmojiTokenCreateWithString();
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

- (id)searchEmojiAlternativesForSpokenEmoji:(id)a3 count:(int64_t)a4 emojiCharacter:(id)a5
{
  v58 = *MEMORY[0x1E69E9840];
  v37 = a3;
  v38 = a5;
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = [(EMFEmojiLocaleData *)self->_localeData localeIdentifier];
  v9 = [&unk_1F2D54410 objectForKey:v8];

  if (!v9)
  {
    v9 = [&unk_1F2D54410 objectForKey:@"en-US"];
  }

  v36 = v9;
  v10 = [v37 stringByReplacingOccurrencesOfString:v9 withString:&stru_1F2D44B60];
  v11 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v39 = [v10 stringByTrimmingCharactersInSet:v11];

  v42 = [(_EAREmojiRecognition *)self baseStringForEmojiString:v38];
  v40 = [(EMFEmojiLocaleData *)self->_localeData emojiTokensForText:v39 phoneticReading:0 options:17 searchType:2 includePrefixMatches:1];
  if (v40 && [v40 count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v13 = v40;
    v14 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
    if (v14)
    {
      v15 = *v52;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          v18 = [v17 string];
          v19 = [(_EAREmojiRecognition *)self isValidEmoji:v18];

          if (v19)
          {
            v20 = [v17 string];
            [v12 addObject:v20];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v51 objects:v57 count:16];
      }

      while (v14);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v21 = self->_frequentEmojis;
    v22 = [(NSArray *)v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v22)
    {
      v23 = *v48;
      while (2)
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v48 != v23)
          {
            objc_enumerationMutation(v21);
          }

          if (!a4)
          {
            v33 = v41;

            goto LABEL_41;
          }

          v25 = *(*(&v47 + 1) + 8 * j);
          if (([v25 isEqualToString:v42] & 1) == 0 && objc_msgSend(v12, "containsObject:", v25))
          {
            [v41 addObject:v25];
            --a4;
          }
        }

        v22 = [(NSArray *)v21 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v22)
        {
          continue;
        }

        break;
      }
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v26 = v12;
    v27 = [v26 countByEnumeratingWithState:&v43 objects:v55 count:16];
    if (v27)
    {
      v28 = *v44;
      while (2)
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v44 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v43 + 1) + 8 * k);
          v31 = v30;
          if (!a4)
          {

            goto LABEL_40;
          }

          if (([v30 isEqualToString:v42] & 1) == 0 && (objc_msgSend(v41, "containsObject:", v31) & 1) == 0)
          {
            [v41 addObject:v31];
            --a4;
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v43 objects:v55 count:16];
        if (v27)
        {
          continue;
        }

        break;
      }
    }

LABEL_40:

    v34 = v41;
LABEL_41:
  }

  else
  {
    v32 = v41;
  }

  return v41;
}

- (void)recognizeEmojisInInputString:(id)a3 enumerateUsingBlock:(id)a4
{
  v6 = a4;
  localeData = self->_localeData;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___EAREmojiRecognition_recognizeEmojisInInputString_enumerateUsingBlock___block_invoke;
  v9[3] = &unk_1E7C1BC48;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [(EMFEmojiLocaleData *)localeData enumerateAnchoredReplacementCandidatesForContext:a3 withOptions:0 usingBlock:v9];
}

@end