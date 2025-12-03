@interface MXBeginDictation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInputOrigin:(id)origin;
- (int)StringAsKeyboardReturnKey:(id)key;
- (int)StringAsKeyboardType:(id)type;
- (int)inputOrigin;
- (int)keyboardReturnKey;
- (int)keyboardType;
- (unint64_t)hash;
- (void)addInlineLmeItems:(id)items;
- (void)addLanguages:(id)languages;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCensorSpeech:(BOOL)speech;
- (void)setHasEnablePartialResults:(BOOL)results;
- (void)setHasIsAutoPunctuationEnabled:(BOOL)enabled;
- (void)setHasKeyboardReturnKey:(BOOL)key;
- (void)setHasKeyboardType:(BOOL)type;
- (void)setHasSaveRequestAudio:(BOOL)audio;
- (void)setHasSpeakerIndependentRecognition:(BOOL)recognition;
- (void)writeTo:(id)to;
@end

@implementation MXBeginDictation

- (int)keyboardType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_keyboardType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasKeyboardType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsKeyboardType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"KeyboardTypeDefault"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"ASCIICapable"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Alphabet"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"NumbersAndPunctuation"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"NumberPad"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"DecimalPad"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"URL"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"EmailAddress"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"PhonePad"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"NamePhonePad"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Twitter"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"WebSearch"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"Assistant"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"ASCIICapableNumberPad"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"NonEmoji"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"Messages"])
  {
    v4 = 15;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)keyboardReturnKey
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_keyboardReturnKey;
  }

  else
  {
    return 0;
  }
}

- (void)setHasKeyboardReturnKey:(BOOL)key
{
  if (key)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsKeyboardReturnKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"KeyboardReturnKeyDefault"])
  {
    v4 = 0;
  }

  else if ([keyCopy isEqualToString:@"Go"])
  {
    v4 = 1;
  }

  else if ([keyCopy isEqualToString:@"Google"])
  {
    v4 = 2;
  }

  else if ([keyCopy isEqualToString:@"Join"])
  {
    v4 = 3;
  }

  else if ([keyCopy isEqualToString:@"Next"])
  {
    v4 = 4;
  }

  else if ([keyCopy isEqualToString:@"Route"])
  {
    v4 = 5;
  }

  else if ([keyCopy isEqualToString:@"Search"])
  {
    v4 = 6;
  }

  else if ([keyCopy isEqualToString:@"Send"])
  {
    v4 = 7;
  }

  else if ([keyCopy isEqualToString:@"Yahoo"])
  {
    v4 = 8;
  }

  else if ([keyCopy isEqualToString:@"Done"])
  {
    v4 = 9;
  }

  else if ([keyCopy isEqualToString:@"EmergencyCall"])
  {
    v4 = 10;
  }

  else if ([keyCopy isEqualToString:@"Continue"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addInlineLmeItems:(id)items
{
  itemsCopy = items;
  inlineLmeItems = self->_inlineLmeItems;
  v8 = itemsCopy;
  if (!inlineLmeItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_inlineLmeItems;
    self->_inlineLmeItems = v6;

    itemsCopy = v8;
    inlineLmeItems = self->_inlineLmeItems;
  }

  [(NSMutableArray *)inlineLmeItems addObject:itemsCopy];
}

- (void)addLanguages:(id)languages
{
  languagesCopy = languages;
  languages = self->_languages;
  v8 = languagesCopy;
  if (!languages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_languages;
    self->_languages = v6;

    languagesCopy = v8;
    languages = self->_languages;
  }

  [(NSMutableArray *)languages addObject:languagesCopy];
}

- (void)setHasCensorSpeech:(BOOL)speech
{
  if (speech)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasSpeakerIndependentRecognition:(BOOL)recognition
{
  if (recognition)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (void)setHasSaveRequestAudio:(BOOL)audio
{
  if (audio)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasEnablePartialResults:(BOOL)results
{
  if (results)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)inputOrigin
{
  if (*&self->_has)
  {
    return self->_inputOrigin;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsInputOrigin:(id)origin
{
  originCopy = origin;
  if ([originCopy isEqualToString:@"UndefinedInputOrigin"])
  {
    v4 = 0;
  }

  else if ([originCopy isEqualToString:@"HomeButton"])
  {
    v4 = 1;
  }

  else if ([originCopy isEqualToString:@"RemoteButton"])
  {
    v4 = 2;
  }

  else if ([originCopy isEqualToString:@"RemoteAppButton"])
  {
    v4 = 3;
  }

  else if ([originCopy isEqualToString:@"AssistantSpeechButton"])
  {
    v4 = 4;
  }

  else if ([originCopy isEqualToString:@"AssistantTextInput"])
  {
    v4 = 5;
  }

  else if ([originCopy isEqualToString:@"PriorRequest"])
  {
    v4 = 6;
  }

  else if ([originCopy isEqualToString:@"VoiceTrigger"])
  {
    v4 = 7;
  }

  else if ([originCopy isEqualToString:@"ServerGenerated"])
  {
    v4 = 8;
  }

  else if ([originCopy isEqualToString:@"MotionGesture"])
  {
    v4 = 9;
  }

  else if ([originCopy isEqualToString:@"RaiseToSpeak"])
  {
    v4 = 10;
  }

  else if ([originCopy isEqualToString:@"ClientGenerated"])
  {
    v4 = 11;
  }

  else if ([originCopy isEqualToString:@"TapToRefresh"])
  {
    v4 = 12;
  }

  else if ([originCopy isEqualToString:@"BackgroundRefresh"])
  {
    v4 = 13;
  }

  else if ([originCopy isEqualToString:@"BluetoothVoiceTrigger"])
  {
    v4 = 14;
  }

  else if ([originCopy isEqualToString:@"BluetoothDoubleTap"])
  {
    v4 = 15;
  }

  else if ([originCopy isEqualToString:@"TriggerlessFollowup"])
  {
    v4 = 16;
  }

  else if ([originCopy isEqualToString:@"DialogButtonTap"])
  {
    v4 = 17;
  }

  else if ([originCopy isEqualToString:@"MagusFollowup"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasIsAutoPunctuationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXBeginDictation;
  v4 = [(MXBeginDictation *)&v8 description];
  dictionaryRepresentation = [(MXBeginDictation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  audioMetadata = self->_audioMetadata;
  if (audioMetadata)
  {
    dictionaryRepresentation = [(MXAudioMetadata *)audioMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"audio_metadata"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  fieldId = self->_fieldId;
  if (fieldId)
  {
    [dictionary setObject:fieldId forKey:@"field_id"];
  }

  fieldLabel = self->_fieldLabel;
  if (fieldLabel)
  {
    [dictionary setObject:fieldLabel forKey:@"field_label"];
  }

  applicationName = self->_applicationName;
  if (applicationName)
  {
    [dictionary setObject:applicationName forKey:@"application_name"];
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion)
  {
    [dictionary setObject:applicationVersion forKey:@"application_version"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    keyboardType = self->_keyboardType;
    if (keyboardType >= 0x10)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_keyboardType];
    }

    else
    {
      v13 = off_27991BAC8[keyboardType];
    }

    [dictionary setObject:v13 forKey:@"keyboard_type"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    keyboardReturnKey = self->_keyboardReturnKey;
    if (keyboardReturnKey >= 0xC)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_keyboardReturnKey];
    }

    else
    {
      v15 = off_27991BB48[keyboardReturnKey];
    }

    [dictionary setObject:v15 forKey:@"keyboard_return_key"];
  }

  selectedText = self->_selectedText;
  if (selectedText)
  {
    [dictionary setObject:selectedText forKey:@"selected_text"];
  }

  prefixText = self->_prefixText;
  if (prefixText)
  {
    [dictionary setObject:prefixText forKey:@"prefix_text"];
  }

  postfixText = self->_postfixText;
  if (postfixText)
  {
    [dictionary setObject:postfixText forKey:@"postfix_text"];
  }

  inlineLmeItems = self->_inlineLmeItems;
  if (inlineLmeItems)
  {
    [dictionary setObject:inlineLmeItems forKey:@"inline_lme_items"];
  }

  languages = self->_languages;
  if (languages)
  {
    [dictionary setObject:languages forKey:@"languages"];
  }

  region = self->_region;
  if (region)
  {
    [dictionary setObject:region forKey:@"region"];
  }

  activationToken = self->_activationToken;
  if (activationToken)
  {
    [dictionary setObject:activationToken forKey:@"activation_token"];
  }

  v23 = self->_has;
  if ((v23 & 8) != 0)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_censorSpeech];
    [dictionary setObject:v29 forKey:@"censor_speech"];

    v23 = self->_has;
    if ((v23 & 0x80) == 0)
    {
LABEL_39:
      if ((v23 & 0x40) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_40;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_39;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_speakerIndependentRecognition];
  [dictionary setObject:v30 forKey:@"speaker_independent_recognition"];

  if ((*&self->_has & 0x40) != 0)
  {
LABEL_40:
    v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_saveRequestAudio];
    [dictionary setObject:v24 forKey:@"save_request_audio"];
  }

LABEL_41:
  keyboardIdentifier = self->_keyboardIdentifier;
  if (keyboardIdentifier)
  {
    [dictionary setObject:keyboardIdentifier forKey:@"keyboard_identifier"];
  }

  v26 = self->_has;
  if ((v26 & 0x10) != 0)
  {
    v31 = [MEMORY[0x277CCABB0] numberWithBool:self->_enablePartialResults];
    [dictionary setObject:v31 forKey:@"enable_partial_results"];

    v26 = self->_has;
    if ((v26 & 1) == 0)
    {
LABEL_45:
      if ((v26 & 0x20) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_46;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_45;
  }

  inputOrigin = self->_inputOrigin;
  if (inputOrigin >= 0x13)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_inputOrigin];
  }

  else
  {
    v33 = off_27991BBA8[inputOrigin];
  }

  [dictionary setObject:v33 forKey:@"input_origin"];

  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_47;
  }

LABEL_46:
  v27 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAutoPunctuationEnabled];
  [dictionary setObject:v27 forKey:@"is_auto_punctuation_enabled"];

LABEL_47:

  return dictionary;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_audioMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fieldId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fieldLabel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_applicationVersion)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    keyboardType = self->_keyboardType;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    keyboardReturnKey = self->_keyboardReturnKey;
    PBDataWriterWriteInt32Field();
  }

  if (self->_selectedText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_prefixText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_postfixText)
  {
    PBDataWriterWriteStringField();
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = self->_inlineLmeItems;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = self->_languages;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v16);
  }

  if (self->_region)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activationToken)
  {
    PBDataWriterWriteDataField();
  }

  v20 = self->_has;
  if ((v20 & 8) != 0)
  {
    censorSpeech = self->_censorSpeech;
    PBDataWriterWriteBOOLField();
    v20 = self->_has;
    if ((v20 & 0x80) == 0)
    {
LABEL_43:
      if ((v20 & 0x40) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_43;
  }

  speakerIndependentRecognition = self->_speakerIndependentRecognition;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_44:
    saveRequestAudio = self->_saveRequestAudio;
    PBDataWriterWriteBOOLField();
  }

LABEL_45:
  if (self->_keyboardIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v22 = self->_has;
  if ((v22 & 0x10) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_56:
    inputOrigin = self->_inputOrigin;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  enablePartialResults = self->_enablePartialResults;
  PBDataWriterWriteBOOLField();
  v22 = self->_has;
  if (v22)
  {
    goto LABEL_56;
  }

LABEL_49:
  if ((v22 & 0x20) != 0)
  {
LABEL_50:
    isAutoPunctuationEnabled = self->_isAutoPunctuationEnabled;
    PBDataWriterWriteBOOLField();
  }

LABEL_51:

  v24 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v17 = toCopy;
  if (self->_audioMetadata)
  {
    [toCopy setAudioMetadata:?];
    toCopy = v17;
  }

  if (self->_requestId)
  {
    [v17 setRequestId:?];
    toCopy = v17;
  }

  if (self->_fieldId)
  {
    [v17 setFieldId:?];
    toCopy = v17;
  }

  if (self->_fieldLabel)
  {
    [v17 setFieldLabel:?];
    toCopy = v17;
  }

  if (self->_applicationName)
  {
    [v17 setApplicationName:?];
    toCopy = v17;
  }

  if (self->_applicationVersion)
  {
    [v17 setApplicationVersion:?];
    toCopy = v17;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(toCopy + 21) = self->_keyboardType;
    *(toCopy + 144) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 20) = self->_keyboardReturnKey;
    *(toCopy + 144) |= 2u;
  }

  if (self->_selectedText)
  {
    [v17 setSelectedText:?];
  }

  if (self->_prefixText)
  {
    [v17 setPrefixText:?];
  }

  if (self->_postfixText)
  {
    [v17 setPostfixText:?];
  }

  if ([(MXBeginDictation *)self inlineLmeItemsCount])
  {
    [v17 clearInlineLmeItems];
    inlineLmeItemsCount = [(MXBeginDictation *)self inlineLmeItemsCount];
    if (inlineLmeItemsCount)
    {
      v7 = inlineLmeItemsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(MXBeginDictation *)self inlineLmeItemsAtIndex:i];
        [v17 addInlineLmeItems:v9];
      }
    }
  }

  if ([(MXBeginDictation *)self languagesCount])
  {
    [v17 clearLanguages];
    languagesCount = [(MXBeginDictation *)self languagesCount];
    if (languagesCount)
    {
      v11 = languagesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(MXBeginDictation *)self languagesAtIndex:j];
        [v17 addLanguages:v13];
      }
    }
  }

  if (self->_region)
  {
    [v17 setRegion:?];
  }

  v14 = v17;
  if (self->_activationToken)
  {
    [v17 setActivationToken:?];
    v14 = v17;
  }

  v15 = self->_has;
  if ((v15 & 8) != 0)
  {
    v14[136] = self->_censorSpeech;
    v14[144] |= 8u;
    v15 = self->_has;
    if ((v15 & 0x80) == 0)
    {
LABEL_37:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_38;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_37;
  }

  v14[140] = self->_speakerIndependentRecognition;
  v14[144] |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_38:
    v14[139] = self->_saveRequestAudio;
    v14[144] |= 0x40u;
  }

LABEL_39:
  if (self->_keyboardIdentifier)
  {
    [v17 setKeyboardIdentifier:?];
    v14 = v17;
  }

  v16 = self->_has;
  if ((v16 & 0x10) != 0)
  {
    v14[137] = self->_enablePartialResults;
    v14[144] |= 0x10u;
    v16 = self->_has;
    if ((v16 & 1) == 0)
    {
LABEL_43:
      if ((v16 & 0x20) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_44;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_43;
  }

  *(v14 + 16) = self->_inputOrigin;
  v14[144] |= 1u;
  if ((*&self->_has & 0x20) != 0)
  {
LABEL_44:
    v14[138] = self->_isAutoPunctuationEnabled;
    v14[144] |= 0x20u;
  }

LABEL_45:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MXAudioMetadata *)self->_audioMetadata copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_requestId copyWithZone:zone];
  v9 = *(v5 + 120);
  *(v5 + 120) = v8;

  v10 = [(NSString *)self->_fieldId copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(NSString *)self->_fieldLabel copyWithZone:zone];
  v13 = *(v5 + 48);
  *(v5 + 48) = v12;

  v14 = [(NSString *)self->_applicationName copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_applicationVersion copyWithZone:zone];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 84) = self->_keyboardType;
    *(v5 + 144) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 80) = self->_keyboardReturnKey;
    *(v5 + 144) |= 2u;
  }

  v19 = [(NSString *)self->_selectedText copyWithZone:zone];
  v20 = *(v5 + 128);
  *(v5 + 128) = v19;

  v21 = [(NSString *)self->_prefixText copyWithZone:zone];
  v22 = *(v5 + 104);
  *(v5 + 104) = v21;

  v23 = [(NSString *)self->_postfixText copyWithZone:zone];
  v24 = *(v5 + 96);
  *(v5 + 96) = v23;

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v25 = self->_inlineLmeItems;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v52;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v52 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v51 + 1) + 8 * i) copyWithZone:zone];
        [v5 addInlineLmeItems:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v27);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v31 = self->_languages;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v48;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = [*(*(&v47 + 1) + 8 * j) copyWithZone:{zone, v47}];
        [v5 addLanguages:v36];
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v33);
  }

  v37 = [(NSString *)self->_region copyWithZone:zone];
  v38 = *(v5 + 112);
  *(v5 + 112) = v37;

  v39 = [(NSData *)self->_activationToken copyWithZone:zone];
  v40 = *(v5 + 8);
  *(v5 + 8) = v39;

  v41 = self->_has;
  if ((v41 & 8) != 0)
  {
    *(v5 + 136) = self->_censorSpeech;
    *(v5 + 144) |= 8u;
    v41 = self->_has;
    if ((v41 & 0x80) == 0)
    {
LABEL_21:
      if ((v41 & 0x40) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_21;
  }

  *(v5 + 140) = self->_speakerIndependentRecognition;
  *(v5 + 144) |= 0x80u;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_22:
    *(v5 + 139) = self->_saveRequestAudio;
    *(v5 + 144) |= 0x40u;
  }

LABEL_23:
  v42 = [(NSString *)self->_keyboardIdentifier copyWithZone:zone, v47];
  v43 = *(v5 + 72);
  *(v5 + 72) = v42;

  v44 = self->_has;
  if ((v44 & 0x10) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_32:
    *(v5 + 64) = self->_inputOrigin;
    *(v5 + 144) |= 1u;
    if ((*&self->_has & 0x20) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  *(v5 + 137) = self->_enablePartialResults;
  *(v5 + 144) |= 0x10u;
  v44 = self->_has;
  if (v44)
  {
    goto LABEL_32;
  }

LABEL_25:
  if ((v44 & 0x20) != 0)
  {
LABEL_26:
    *(v5 + 138) = self->_isAutoPunctuationEnabled;
    *(v5 + 144) |= 0x20u;
  }

LABEL_27:
  v45 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_81;
  }

  audioMetadata = self->_audioMetadata;
  if (audioMetadata | *(equalCopy + 4))
  {
    if (![(MXAudioMetadata *)audioMetadata isEqual:?])
    {
      goto LABEL_81;
    }
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 15))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  fieldId = self->_fieldId;
  if (fieldId | *(equalCopy + 5))
  {
    if (![(NSString *)fieldId isEqual:?])
    {
      goto LABEL_81;
    }
  }

  fieldLabel = self->_fieldLabel;
  if (fieldLabel | *(equalCopy + 6))
  {
    if (![(NSString *)fieldLabel isEqual:?])
    {
      goto LABEL_81;
    }
  }

  applicationName = self->_applicationName;
  if (applicationName | *(equalCopy + 2))
  {
    if (![(NSString *)applicationName isEqual:?])
    {
      goto LABEL_81;
    }
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion | *(equalCopy + 3))
  {
    if (![(NSString *)applicationVersion isEqual:?])
    {
      goto LABEL_81;
    }
  }

  v11 = *(equalCopy + 144);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 144) & 4) == 0 || self->_keyboardType != *(equalCopy + 21))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 144) & 4) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 144) & 2) == 0 || self->_keyboardReturnKey != *(equalCopy + 20))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 144) & 2) != 0)
  {
    goto LABEL_81;
  }

  selectedText = self->_selectedText;
  if (selectedText | *(equalCopy + 16) && ![(NSString *)selectedText isEqual:?])
  {
    goto LABEL_81;
  }

  prefixText = self->_prefixText;
  if (prefixText | *(equalCopy + 13))
  {
    if (![(NSString *)prefixText isEqual:?])
    {
      goto LABEL_81;
    }
  }

  postfixText = self->_postfixText;
  if (postfixText | *(equalCopy + 12))
  {
    if (![(NSString *)postfixText isEqual:?])
    {
      goto LABEL_81;
    }
  }

  inlineLmeItems = self->_inlineLmeItems;
  if (inlineLmeItems | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)inlineLmeItems isEqual:?])
    {
      goto LABEL_81;
    }
  }

  languages = self->_languages;
  if (languages | *(equalCopy + 11))
  {
    if (![(NSMutableArray *)languages isEqual:?])
    {
      goto LABEL_81;
    }
  }

  region = self->_region;
  if (region | *(equalCopy + 14))
  {
    if (![(NSString *)region isEqual:?])
    {
      goto LABEL_81;
    }
  }

  activationToken = self->_activationToken;
  if (activationToken | *(equalCopy + 1))
  {
    if (![(NSData *)activationToken isEqual:?])
    {
      goto LABEL_81;
    }
  }

  has = self->_has;
  v20 = *(equalCopy + 144);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 144) & 8) == 0)
    {
      goto LABEL_81;
    }

    v22 = *(equalCopy + 136);
    if (self->_censorSpeech)
    {
      if ((*(equalCopy + 136) & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (*(equalCopy + 136))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 144) & 8) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x80) != 0)
  {
    if ((*(equalCopy + 144) & 0x80) == 0)
    {
      goto LABEL_81;
    }

    v23 = *(equalCopy + 140);
    if (self->_speakerIndependentRecognition)
    {
      if ((*(equalCopy + 140) & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (*(equalCopy + 140))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 144) & 0x80) != 0)
  {
    goto LABEL_81;
  }

  if ((*&self->_has & 0x40) != 0)
  {
    if ((*(equalCopy + 144) & 0x40) == 0)
    {
      goto LABEL_81;
    }

    v24 = *(equalCopy + 139);
    if (self->_saveRequestAudio)
    {
      if ((*(equalCopy + 139) & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (*(equalCopy + 139))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 144) & 0x40) != 0)
  {
    goto LABEL_81;
  }

  keyboardIdentifier = self->_keyboardIdentifier;
  if (keyboardIdentifier | *(equalCopy + 9))
  {
    if (![(NSString *)keyboardIdentifier isEqual:?])
    {
      goto LABEL_81;
    }

    has = self->_has;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 144) & 0x10) == 0)
    {
      goto LABEL_81;
    }

    v25 = *(equalCopy + 137);
    if (self->_enablePartialResults)
    {
      if ((*(equalCopy + 137) & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    else if (*(equalCopy + 137))
    {
      goto LABEL_81;
    }
  }

  else if ((*(equalCopy + 144) & 0x10) != 0)
  {
    goto LABEL_81;
  }

  if (has)
  {
    if ((*(equalCopy + 144) & 1) == 0 || self->_inputOrigin != *(equalCopy + 16))
    {
      goto LABEL_81;
    }
  }

  else if (*(equalCopy + 144))
  {
    goto LABEL_81;
  }

  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 144) & 0x20) != 0)
    {
      if (self->_isAutoPunctuationEnabled)
      {
        if ((*(equalCopy + 138) & 1) == 0)
        {
          goto LABEL_81;
        }
      }

      else if (*(equalCopy + 138))
      {
        goto LABEL_81;
      }

      v26 = 1;
      goto LABEL_82;
    }

LABEL_81:
    v26 = 0;
    goto LABEL_82;
  }

  v26 = (*(equalCopy + 144) & 0x20) == 0;
LABEL_82:

  return v26;
}

- (unint64_t)hash
{
  v25 = [(MXAudioMetadata *)self->_audioMetadata hash];
  v24 = [(NSString *)self->_requestId hash];
  v23 = [(NSString *)self->_fieldId hash];
  v22 = [(NSString *)self->_fieldLabel hash];
  v21 = [(NSString *)self->_applicationName hash];
  v20 = [(NSString *)self->_applicationVersion hash];
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_keyboardType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v18 = 2654435761 * self->_keyboardReturnKey;
      goto LABEL_6;
    }
  }

  v18 = 0;
LABEL_6:
  v17 = [(NSString *)self->_selectedText hash];
  v16 = [(NSString *)self->_prefixText hash];
  v15 = [(NSString *)self->_postfixText hash];
  v3 = [(NSMutableArray *)self->_inlineLmeItems hash];
  v4 = [(NSMutableArray *)self->_languages hash];
  v5 = [(NSString *)self->_region hash];
  v6 = [(NSData *)self->_activationToken hash];
  if ((*&self->_has & 8) == 0)
  {
    v7 = 0;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v8 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v7 = 2654435761 * self->_censorSpeech;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = 2654435761 * self->_speakerIndependentRecognition;
  if ((*&self->_has & 0x40) != 0)
  {
LABEL_9:
    v9 = 2654435761 * self->_saveRequestAudio;
    goto LABEL_13;
  }

LABEL_12:
  v9 = 0;
LABEL_13:
  v10 = [(NSString *)self->_keyboardIdentifier hash];
  if ((*&self->_has & 0x10) == 0)
  {
    v11 = 0;
    if (*&self->_has)
    {
      goto LABEL_15;
    }

LABEL_18:
    v12 = 0;
    if ((*&self->_has & 0x20) != 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    v13 = 0;
    return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v11 = 2654435761 * self->_enablePartialResults;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  v12 = 2654435761 * self->_inputOrigin;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v13 = 2654435761 * self->_isAutoPunctuationEnabled;
  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v17 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v31 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  audioMetadata = self->_audioMetadata;
  v6 = *(fromCopy + 4);
  if (audioMetadata)
  {
    if (v6)
    {
      [(MXAudioMetadata *)audioMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MXBeginDictation *)self setAudioMetadata:?];
  }

  if (*(fromCopy + 15))
  {
    [(MXBeginDictation *)self setRequestId:?];
  }

  if (*(fromCopy + 5))
  {
    [(MXBeginDictation *)self setFieldId:?];
  }

  if (*(fromCopy + 6))
  {
    [(MXBeginDictation *)self setFieldLabel:?];
  }

  if (*(fromCopy + 2))
  {
    [(MXBeginDictation *)self setApplicationName:?];
  }

  if (*(fromCopy + 3))
  {
    [(MXBeginDictation *)self setApplicationVersion:?];
  }

  v7 = *(fromCopy + 144);
  if ((v7 & 4) != 0)
  {
    self->_keyboardType = *(fromCopy + 21);
    *&self->_has |= 4u;
    v7 = *(fromCopy + 144);
  }

  if ((v7 & 2) != 0)
  {
    self->_keyboardReturnKey = *(fromCopy + 20);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 16))
  {
    [(MXBeginDictation *)self setSelectedText:?];
  }

  if (*(fromCopy + 13))
  {
    [(MXBeginDictation *)self setPrefixText:?];
  }

  if (*(fromCopy + 12))
  {
    [(MXBeginDictation *)self setPostfixText:?];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(fromCopy + 7);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MXBeginDictation *)self addInlineLmeItems:*(*(&v25 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = *(fromCopy + 11);
  v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(MXBeginDictation *)self addLanguages:*(*(&v21 + 1) + 8 * j), v21];
      }

      v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  if (*(fromCopy + 14))
  {
    [(MXBeginDictation *)self setRegion:?];
  }

  if (*(fromCopy + 1))
  {
    [(MXBeginDictation *)self setActivationToken:?];
  }

  v18 = *(fromCopy + 144);
  if ((v18 & 8) != 0)
  {
    self->_censorSpeech = *(fromCopy + 136);
    *&self->_has |= 8u;
    v18 = *(fromCopy + 144);
    if ((v18 & 0x80) == 0)
    {
LABEL_46:
      if ((v18 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }
  }

  else if ((*(fromCopy + 144) & 0x80) == 0)
  {
    goto LABEL_46;
  }

  self->_speakerIndependentRecognition = *(fromCopy + 140);
  *&self->_has |= 0x80u;
  if ((*(fromCopy + 144) & 0x40) != 0)
  {
LABEL_47:
    self->_saveRequestAudio = *(fromCopy + 139);
    *&self->_has |= 0x40u;
  }

LABEL_48:
  if (*(fromCopy + 9))
  {
    [(MXBeginDictation *)self setKeyboardIdentifier:?];
  }

  v19 = *(fromCopy + 144);
  if ((v19 & 0x10) == 0)
  {
    if ((*(fromCopy + 144) & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_59:
    self->_inputOrigin = *(fromCopy + 16);
    *&self->_has |= 1u;
    if ((*(fromCopy + 144) & 0x20) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  self->_enablePartialResults = *(fromCopy + 137);
  *&self->_has |= 0x10u;
  v19 = *(fromCopy + 144);
  if (v19)
  {
    goto LABEL_59;
  }

LABEL_52:
  if ((v19 & 0x20) != 0)
  {
LABEL_53:
    self->_isAutoPunctuationEnabled = *(fromCopy + 138);
    *&self->_has |= 0x20u;
  }

LABEL_54:

  v20 = *MEMORY[0x277D85DE8];
}

@end