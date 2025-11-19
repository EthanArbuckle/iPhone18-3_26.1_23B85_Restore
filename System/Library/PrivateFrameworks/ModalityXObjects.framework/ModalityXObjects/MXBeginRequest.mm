@interface MXBeginRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsInputOrigin:(id)a3;
- (int)inputOrigin;
- (unint64_t)hash;
- (void)addInlineLmeItems:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEnablePartialResults:(BOOL)a3;
- (void)setHasIsAutoPunctuationEnabled:(BOOL)a3;
- (void)setHasIsPromptedConfirmation:(BOOL)a3;
- (void)setHasIsPromptedDictation:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsInputOrigin:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UndefinedInputOrigin"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"HomeButton"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"RemoteButton"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"RemoteAppButton"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"AssistantSpeechButton"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"AssistantTextInput"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PriorRequest"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"VoiceTrigger"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"ServerGenerated"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"MotionGesture"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"RaiseToSpeak"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"ClientGenerated"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"TapToRefresh"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"BackgroundRefresh"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"BluetoothVoiceTrigger"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"BluetoothDoubleTap"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"TriggerlessFollowup"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"DialogButtonTap"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"MagusFollowup"])
  {
    v4 = 18;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasEnablePartialResults:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIsPromptedDictation:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsPromptedConfirmation:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsAutoPunctuationEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addInlineLmeItems:(id)a3
{
  v4 = a3;
  inlineLmeItems = self->_inlineLmeItems;
  v8 = v4;
  if (!inlineLmeItems)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_inlineLmeItems;
    self->_inlineLmeItems = v6;

    v4 = v8;
    inlineLmeItems = self->_inlineLmeItems;
  }

  [(NSMutableArray *)inlineLmeItems addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXBeginRequest;
  v4 = [(MXBeginRequest *)&v8 description];
  v5 = [(MXBeginRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestId = self->_requestId;
  if (requestId)
  {
    [v3 setObject:requestId forKey:@"request_id"];
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
    v9 = [(MXAudioMetadata *)audioMetadata dictionaryRepresentation];
    [v4 setObject:v9 forKey:@"audio_metadata"];
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

- (void)writeTo:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_requestId)
  {
    [v4 setRequestId:?];
    v4 = v10;
  }

  if (*&self->_has)
  {
    *(v4 + 8) = self->_inputOrigin;
    *(v4 + 52) |= 1u;
  }

  if (self->_audioMetadata)
  {
    [v10 setAudioMetadata:?];
    v4 = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 48) = self->_enablePartialResults;
    *(v4 + 52) |= 2u;
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

  *(v4 + 51) = self->_isPromptedDictation;
  *(v4 + 52) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_10:
    *(v4 + 50) = self->_isPromptedConfirmation;
    *(v4 + 52) |= 8u;
  }

LABEL_11:
  if (self->_foregroundAppId)
  {
    [v10 setForegroundAppId:?];
    v4 = v10;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 49) = self->_isAutoPunctuationEnabled;
    *(v4 + 52) |= 4u;
  }

  if ([(MXBeginRequest *)self inlineLmeItemsCount])
  {
    [v10 clearInlineLmeItems];
    v6 = [(MXBeginRequest *)self inlineLmeItemsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(MXBeginRequest *)self inlineLmeItemsAtIndex:i];
        [v10 addInlineLmeItems:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_inputOrigin;
    *(v5 + 52) |= 1u;
  }

  v8 = [(MXAudioMetadata *)self->_audioMetadata copyWithZone:a3];
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
  v11 = [(NSString *)self->_foregroundAppId copyWithZone:a3];
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

        v18 = [*(*(&v21 + 1) + 8 * i) copyWithZone:{a3, v21}];
        [v5 addInlineLmeItems:v18];
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_49;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 5))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_49;
    }
  }

  has = self->_has;
  v7 = *(v4 + 52);
  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_inputOrigin != *(v4 + 8))
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_49;
  }

  audioMetadata = self->_audioMetadata;
  if (audioMetadata | *(v4 + 1))
  {
    if (![(MXAudioMetadata *)audioMetadata isEqual:?])
    {
      goto LABEL_49;
    }

    has = self->_has;
  }

  v9 = *(v4 + 52);
  if ((has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0)
    {
      goto LABEL_49;
    }

    v14 = *(v4 + 48);
    if (self->_enablePartialResults)
    {
      if ((*(v4 + 48) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 0x10) != 0)
  {
    if ((*(v4 + 52) & 0x10) == 0)
    {
      goto LABEL_49;
    }

    v15 = *(v4 + 51);
    if (self->_isPromptedDictation)
    {
      if ((*(v4 + 51) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 51))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 52) & 0x10) != 0)
  {
    goto LABEL_49;
  }

  if ((has & 8) != 0)
  {
    if ((*(v4 + 52) & 8) == 0)
    {
      goto LABEL_49;
    }

    v16 = *(v4 + 50);
    if (self->_isPromptedConfirmation)
    {
      if ((*(v4 + 50) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    else if (*(v4 + 50))
    {
      goto LABEL_49;
    }
  }

  else if ((*(v4 + 52) & 8) != 0)
  {
    goto LABEL_49;
  }

  foregroundAppId = self->_foregroundAppId;
  if (foregroundAppId | *(v4 + 2))
  {
    if (![(NSString *)foregroundAppId isEqual:?])
    {
      goto LABEL_49;
    }

    has = self->_has;
  }

  v11 = *(v4 + 52);
  if ((has & 4) == 0)
  {
    if ((*(v4 + 52) & 4) == 0)
    {
      goto LABEL_23;
    }

LABEL_49:
    v13 = 0;
    goto LABEL_50;
  }

  if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_49;
  }

  v17 = *(v4 + 49);
  if (self->_isAutoPunctuationEnabled)
  {
    if ((*(v4 + 49) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  else if (*(v4 + 49))
  {
    goto LABEL_49;
  }

LABEL_23:
  inlineLmeItems = self->_inlineLmeItems;
  if (inlineLmeItems | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(MXBeginRequest *)self setRequestId:?];
  }

  if (*(v4 + 52))
  {
    self->_inputOrigin = *(v4 + 8);
    *&self->_has |= 1u;
  }

  audioMetadata = self->_audioMetadata;
  v6 = *(v4 + 1);
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

  v7 = *(v4 + 52);
  if ((v7 & 2) != 0)
  {
    self->_enablePartialResults = *(v4 + 48);
    *&self->_has |= 2u;
    v7 = *(v4 + 52);
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

  else if ((*(v4 + 52) & 0x10) == 0)
  {
    goto LABEL_12;
  }

  self->_isPromptedDictation = *(v4 + 51);
  *&self->_has |= 0x10u;
  if ((*(v4 + 52) & 8) != 0)
  {
LABEL_13:
    self->_isPromptedConfirmation = *(v4 + 50);
    *&self->_has |= 8u;
  }

LABEL_14:
  if (*(v4 + 2))
  {
    [(MXBeginRequest *)self setForegroundAppId:?];
  }

  if ((*(v4 + 52) & 4) != 0)
  {
    self->_isAutoPunctuationEnabled = *(v4 + 49);
    *&self->_has |= 4u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = *(v4 + 3);
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