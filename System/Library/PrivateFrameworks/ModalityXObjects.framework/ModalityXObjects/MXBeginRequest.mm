@interface MXBeginRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInputOrigin:(id)origin;
- (int)inputOrigin;
- (unint64_t)hash;
- (void)addInlineLmeItems:(id)items;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEnablePartialResults:(BOOL)results;
- (void)setHasIsAutoPunctuationEnabled:(BOOL)enabled;
- (void)setHasIsPromptedConfirmation:(BOOL)confirmation;
- (void)setHasIsPromptedDictation:(BOOL)dictation;
- (void)writeTo:(id)to;
@end

@implementation MXBeginRequest

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

- (void)setHasEnablePartialResults:(BOOL)results
{
  if (results)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsPromptedDictation:(BOOL)dictation
{
  if (dictation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPromptedConfirmation:(BOOL)confirmation
{
  if (confirmation)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAutoPunctuationEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXBeginRequest;
  v4 = [(MXBeginRequest *)&v8 description];
  dictionaryRepresentation = [(MXBeginRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  if (*&self->_has)
  {
    inputOrigin = self->_inputOrigin;
    if (inputOrigin >= 0x13)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_inputOrigin];
    }

    else
    {
      v7 = off_27991B990[inputOrigin];
    }

    [v4 setObject:v7 forKey:@"input_origin"];
  }

  audioMetadata = self->_audioMetadata;
  if (audioMetadata)
  {
    dictionaryRepresentation = [(MXAudioMetadata *)audioMetadata dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"audio_metadata"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:self->_enablePartialResults];
    [v4 setObject:v16 forKey:@"enable_partial_results"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_12:
      if ((has & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_12;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPromptedDictation];
  [v4 setObject:v17 forKey:@"is_prompted_dictation"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_13:
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPromptedConfirmation];
    [v4 setObject:v11 forKey:@"is_prompted_confirmation"];
  }

LABEL_14:
  foregroundAppId = self->_foregroundAppId;
  if (foregroundAppId)
  {
    [v4 setObject:foregroundAppId forKey:@"foreground_app_id"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAutoPunctuationEnabled];
    [v4 setObject:v13 forKey:@"is_auto_punctuation_enabled"];
  }

  inlineLmeItems = self->_inlineLmeItems;
  if (inlineLmeItems)
  {
    [v4 setObject:inlineLmeItems forKey:@"inline_lme_items"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    inputOrigin = self->_inputOrigin;
    PBDataWriterWriteInt32Field();
  }

  if (self->_audioMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    enablePartialResults = self->_enablePartialResults;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  isPromptedDictation = self->_isPromptedDictation;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    isPromptedConfirmation = self->_isPromptedConfirmation;
    PBDataWriterWriteBOOLField();
  }

LABEL_11:
  if (self->_foregroundAppId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    isAutoPunctuationEnabled = self->_isAutoPunctuationEnabled;
    PBDataWriterWriteBOOLField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_inlineLmeItems;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_requestId)
  {
    [toCopy setRequestId:?];
    toCopy = v10;
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_inputOrigin;
    *(toCopy + 52) |= 1u;
  }

  if (self->_audioMetadata)
  {
    [v10 setAudioMetadata:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 48) = self->_enablePartialResults;
    *(toCopy + 52) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_9:
      if ((has & 8) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

  *(toCopy + 51) = self->_isPromptedDictation;
  *(toCopy + 52) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(toCopy + 50) = self->_isPromptedConfirmation;
    *(toCopy + 52) |= 8u;
  }

LABEL_11:
  if (self->_foregroundAppId)
  {
    [v10 setForegroundAppId:?];
    toCopy = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 49) = self->_isAutoPunctuationEnabled;
    *(toCopy + 52) |= 4u;
  }

  if ([(MXBeginRequest *)self inlineLmeItemsCount])
  {
    [v10 clearInlineLmeItems];
    inlineLmeItemsCount = [(MXBeginRequest *)self inlineLmeItemsCount];
    if (inlineLmeItemsCount)
    {
      v7 = inlineLmeItemsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(MXBeginRequest *)self inlineLmeItemsAtIndex:i];
        [v10 addInlineLmeItems:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_inputOrigin;
    *(v5 + 52) |= 1u;
  }

  v8 = [(MXAudioMetadata *)self->_audioMetadata copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 48) = self->_enablePartialResults;
    *(v5 + 52) |= 2u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v5 + 51) = self->_isPromptedDictation;
  *(v5 + 52) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v5 + 50) = self->_isPromptedConfirmation;
    *(v5 + 52) |= 8u;
  }

LABEL_7:
  v11 = [(NSString *)self->_foregroundAppId copyWithZone:zone];
  v12 = *(v5 + 16);
  *(v5 + 16) = v11;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 49) = self->_isAutoPunctuationEnabled;
    *(v5 + 52) |= 4u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_inlineLmeItems;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{zone, v21}];
        [v5 addInlineLmeItems:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 5))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_49;
    }
  }

  has = self->_has;
  v7 = *(equalCopy + 52);
  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_inputOrigin != *(equalCopy + 8))
    {
      goto LABEL_49;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_49;
  }

  audioMetadata = self->_audioMetadata;
  if (audioMetadata | *(equalCopy + 1))
  {
    if (![(MXAudioMetadata *)audioMetadata isEqual:?])
    {
      goto LABEL_49;
    }

    has = self->_has;
  }

  v9 = *(equalCopy + 52);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_49;
    }

    v14 = *(equalCopy + 48);
    if (self->_enablePartialResults)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 52) & 0x10) == 0)
    {
      goto LABEL_49;
    }

    v15 = *(equalCopy + 51);
    if (self->_isPromptedDictation)
    {
      if ((*(equalCopy + 51) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equalCopy + 51))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 52) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0)
    {
      goto LABEL_49;
    }

    v16 = *(equalCopy + 50);
    if (self->_isPromptedConfirmation)
    {
      if ((*(equalCopy + 50) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(equalCopy + 50))
    {
      goto LABEL_49;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_49;
  }

  foregroundAppId = self->_foregroundAppId;
  if (foregroundAppId | *(equalCopy + 2))
  {
    if (![(NSString *)foregroundAppId isEqual:?])
    {
      goto LABEL_49;
    }

    has = self->_has;
  }

  v11 = *(equalCopy + 52);
  if ((has & 4) == 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_49:
    v13 = 0;
    goto LABEL_50;
  }

  if ((*(equalCopy + 52) & 4) == 0)
  {
    goto LABEL_49;
  }

  v17 = *(equalCopy + 49);
  if (self->_isAutoPunctuationEnabled)
  {
    if ((*(equalCopy + 49) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (*(equalCopy + 49))
  {
    goto LABEL_49;
  }

LABEL_23:
  inlineLmeItems = self->_inlineLmeItems;
  if (inlineLmeItems | *(equalCopy + 3))
  {
    v13 = [(NSMutableArray *)inlineLmeItems isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_50:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_inputOrigin;
  }

  else
  {
    v4 = 0;
  }

  v5 = [(MXAudioMetadata *)self->_audioMetadata hash];
  if ((*&self->_has & 2) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v6 = 2654435761 * self->_enablePartialResults;
  if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v7 = 2654435761 * self->_isPromptedDictation;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v8 = 2654435761 * self->_isPromptedConfirmation;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 0;
LABEL_11:
  v9 = [(NSString *)self->_foregroundAppId hash];
  if ((*&self->_has & 4) != 0)
  {
    v10 = 2654435761 * self->_isAutoPunctuationEnabled;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ [(NSMutableArray *)self->_inlineLmeItems hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(MXBeginRequest *)self setRequestId:?];
  }

  if (*(fromCopy + 52))
  {
    self->_inputOrigin = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  audioMetadata = self->_audioMetadata;
  v6 = *(fromCopy + 1);
  if (audioMetadata)
  {
    if (v6)
    {
      [(MXAudioMetadata *)audioMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MXBeginRequest *)self setAudioMetadata:?];
  }

  v7 = *(fromCopy + 52);
  if ((v7 & 2) != 0)
  {
    self->_enablePartialResults = *(fromCopy + 48);
    *&self->_has |= 2u;
    v7 = *(fromCopy + 52);
    if ((v7 & 0x10) == 0)
    {
LABEL_12:
      if ((v7 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*(fromCopy + 52) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  self->_isPromptedDictation = *(fromCopy + 51);
  *&self->_has |= 0x10u;
  if ((*(fromCopy + 52) & 8) != 0)
  {
LABEL_13:
    self->_isPromptedConfirmation = *(fromCopy + 50);
    *&self->_has |= 8u;
  }

LABEL_14:
  if (*(fromCopy + 2))
  {
    [(MXBeginRequest *)self setForegroundAppId:?];
  }

  if ((*(fromCopy + 52) & 4) != 0)
  {
    self->_isAutoPunctuationEnabled = *(fromCopy + 49);
    *&self->_has |= 4u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(fromCopy + 3);
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(MXBeginRequest *)self addInlineLmeItems:*(*(&v14 + 1) + 8 * i), v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end