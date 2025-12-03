@interface _EAREmojiRecognition
+ (void)initialize;
- (BOOL)isEmojiRecognitionCapable;
- (BOOL)isValidEmoji:(id)emoji;
- (_EAREmojiRecognition)initWithLanguage:(id)language;
- (id)baseStringForEmojiString:(id)string;
- (id)formatEmojiStrings:(id)strings;
- (id)formatEmojiStrings:(id)strings isLogging:(BOOL)logging;
- (id)searchEmojiAlternativesForSpokenEmoji:(id)emoji count:(int64_t)count emojiCharacter:(id)character;
- (void)dealloc;
- (void)didUseEmoji:(id)emoji replacementContext:(id)context;
- (void)recognizeEmojisInInputString:(id)string enumerateUsingBlock:(id)block;
- (void)resetEmojiPreferences;
@end

@implementation _EAREmojiRecognition

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EAREmojiRecognition)initWithLanguage:(id)language
{
  languageCopy = language;
  v15.receiver = self;
  v15.super_class = _EAREmojiRecognition;
  v5 = [(_EAREmojiRecognition *)&v15 init];
  if (!v5)
  {
    goto LABEL_12;
  }

  if (languageCopy)
  {
    v6 = [languageCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];

    if (v6)
    {
      v7 = [MEMORY[0x1E699BAD8] emojiLocaleDataWithLocaleIdentifier:v6];
      v8 = 0;
      languageCopy = v6;
      goto LABEL_8;
    }

    v7 = 0;
    languageCopy = 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = 1;
LABEL_8:
  localeData = v5->_localeData;
  v5->_localeData = v7;

  v5->_isLocaleRTL = [MEMORY[0x1E695DF58] characterDirectionForLanguage:languageCopy] == 2;
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
  _initWithoutConnection = [objc_alloc(MEMORY[0x1E699BAE8]) _initWithoutConnection];
  preferences = v5->_preferences;
  v5->_preferences = _initWithoutConnection;

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

- (id)formatEmojiStrings:(id)strings
{
  v3 = [(_EAREmojiRecognition *)self formatEmojiStrings:strings isLogging:0];

  return v3;
}

- (id)formatEmojiStrings:(id)strings isLogging:(BOOL)logging
{
  stringsCopy = strings;
  v7 = stringsCopy;
  if (+[_EARFeatureFlags isEmojiV2Enabled])
  {
    goto LABEL_18;
  }

  if (stringsCopy)
  {
    [stringsCopy ear_toString];
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
    v7 = stringsCopy;
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
    string = 0;
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
    if ([v11 supportsSkinToneVariants]&& !logging)
    {
      v13 = [(EMFEmojiPreferencesClient *)self->_preferences lastUsedVariantEmojiForEmoji:v12];

      if ([(EMFEmojiPreferencesClient *)self->_preferences hasLastUsedVariantForEmoji:v13]&& !self->_isEmojiPersonalizationUsed)
      {
        self->_isEmojiPersonalizationUsed = 1;
      }

      v12 = v13;
    }

    string = [v12 string];
  }

  else
  {
    v12 = EARLogger::QuasarOSLogger(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [_EAREmojiRecognition formatEmojiStrings:v12 isLogging:?];
    }

    string = 0;
  }

LABEL_32:

  return string;
}

- (void)didUseEmoji:(id)emoji replacementContext:(id)context
{
  emojiCopy = emoji;
  contextCopy = context;
  if ([(_EAREmojiRecognition *)self isValidEmoji:emojiCopy])
  {
    v7 = [MEMORY[0x1E699BB00] emojiTokenWithString:emojiCopy localeData:self->_localeData];
    [(EMFEmojiPreferencesClient *)self->_preferences didUseEmoji:v7];
    [(EMFEmojiPreferencesClient *)self->_preferences _disconnect];
    [(EMFEmojiPreferencesClient *)self->_preferences didUseEmojiInDictation:v7 replacementContext:contextCopy];
  }
}

- (void)resetEmojiPreferences
{
  preferences = self->_preferences;
  self->_preferences = 0;

  _initWithoutConnection = [objc_alloc(MEMORY[0x1E699BAE8]) _initWithoutConnection];
  v5 = self->_preferences;
  self->_preferences = _initWithoutConnection;

  v6 = self->_preferences;

  [(EMFEmojiPreferencesClient *)v6 readEmojiDefaults];
}

- (id)baseStringForEmojiString:(id)string
{
  stringCopy = string;
  if (([stringCopy _isSingleEmoji] & 1) != 0 && -[_EAREmojiRecognition isValidEmoji:](self, "isValidEmoji:", stringCopy))
  {
    v5 = [MEMORY[0x1E699BB00] emojiTokenWithString:stringCopy localeData:self->_localeData];
    copyWithoutModifiers = [v5 copyWithoutModifiers];
    string = [copyWithoutModifiers string];
  }

  else
  {
    string = stringCopy;
  }

  return string;
}

- (BOOL)isEmojiRecognitionCapable
{
  if (self->_preferences)
  {
    v2 = [MEMORY[0x1E699BB00] emojiTokenWithString:@"👍" localeData:self->_localeData];
    v3 = v2;
    if (v2)
    {
      string = [v2 string];
      if ([string length])
      {
        string2 = [v3 string];
        v6 = [string2 isEqualToString:@"👍"];
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

- (BOOL)isValidEmoji:(id)emoji
{
  v3 = CEMEmojiTokenCreateWithString();
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

- (id)searchEmojiAlternativesForSpokenEmoji:(id)emoji count:(int64_t)count emojiCharacter:(id)character
{
  v58 = *MEMORY[0x1E69E9840];
  emojiCopy = emoji;
  characterCopy = character;
  v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
  localeIdentifier = [(EMFEmojiLocaleData *)self->_localeData localeIdentifier];
  v9 = [&unk_1F2D54410 objectForKey:localeIdentifier];

  if (!v9)
  {
    v9 = [&unk_1F2D54410 objectForKey:@"en-US"];
  }

  v36 = v9;
  v10 = [emojiCopy stringByReplacingOccurrencesOfString:v9 withString:&stru_1F2D44B60];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v39 = [v10 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  v42 = [(_EAREmojiRecognition *)self baseStringForEmojiString:characterCopy];
  v40 = [(EMFEmojiLocaleData *)self->_localeData emojiTokensForText:v39 phoneticReading:0 options:17 searchType:2 includePrefixMatches:1];
  if (v40 && [v40 count])
  {
    array = [MEMORY[0x1E695DF70] array];
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
          string = [v17 string];
          v19 = [(_EAREmojiRecognition *)self isValidEmoji:string];

          if (v19)
          {
            string2 = [v17 string];
            [array addObject:string2];
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

          if (!count)
          {
            v33 = v41;

            goto LABEL_41;
          }

          v25 = *(*(&v47 + 1) + 8 * j);
          if (([v25 isEqualToString:v42] & 1) == 0 && objc_msgSend(array, "containsObject:", v25))
          {
            [v41 addObject:v25];
            --count;
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
    v26 = array;
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
          if (!count)
          {

            goto LABEL_40;
          }

          if (([v30 isEqualToString:v42] & 1) == 0 && (objc_msgSend(v41, "containsObject:", v31) & 1) == 0)
          {
            [v41 addObject:v31];
            --count;
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

- (void)recognizeEmojisInInputString:(id)string enumerateUsingBlock:(id)block
{
  blockCopy = block;
  localeData = self->_localeData;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73___EAREmojiRecognition_recognizeEmojisInInputString_enumerateUsingBlock___block_invoke;
  v9[3] = &unk_1E7C1BC48;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  [(EMFEmojiLocaleData *)localeData enumerateAnchoredReplacementCandidatesForContext:string withOptions:0 usingBlock:v9];
}

@end