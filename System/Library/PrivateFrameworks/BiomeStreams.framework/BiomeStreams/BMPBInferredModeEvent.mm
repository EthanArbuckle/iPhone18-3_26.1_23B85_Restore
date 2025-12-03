@interface BMPBInferredModeEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsModeType:(id)type;
- (int)StringAsOrigin:(id)origin;
- (int)modeType;
- (int)origin;
- (unint64_t)hash;
- (void)addSerializedTriggers:(id)triggers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConfidenceScore:(BOOL)score;
- (void)setHasIsAutomationEnabled:(BOOL)enabled;
- (void)setHasIsStart:(BOOL)start;
- (void)setHasModeType:(BOOL)type;
- (void)setHasOrigin:(BOOL)origin;
- (void)setHasShouldSuggestTriggers:(BOOL)triggers;
- (void)setHasUiLocation:(BOOL)location;
- (void)writeTo:(id)to;
@end

@implementation BMPBInferredModeEvent

- (int)origin
{
  if ((*&self->_has & 0x10) != 0)
  {
    return self->_origin;
  }

  else
  {
    return -1;
  }
}

- (void)setHasOrigin:(BOOL)origin
{
  if (origin)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (int)StringAsOrigin:(id)origin
{
  originCopy = origin;
  if ([originCopy isEqualToString:@"Unknown"])
  {
    v4 = -1;
  }

  else if ([originCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([originCopy isEqualToString:@"CoreMotion"])
  {
    v4 = 1;
  }

  else if ([originCopy isEqualToString:@"CarPlay"])
  {
    v4 = 2;
  }

  else if ([originCopy isEqualToString:@"DNDWD"])
  {
    v4 = 3;
  }

  else if ([originCopy isEqualToString:@"CoreRoutine"])
  {
    v4 = 4;
  }

  else if ([originCopy isEqualToString:@"Sleep"])
  {
    v4 = 5;
  }

  else if ([originCopy isEqualToString:@"AppLaunch"])
  {
    v4 = 6;
  }

  else if ([originCopy isEqualToString:@"WatchWorkout"])
  {
    v4 = 7;
  }

  else if ([originCopy isEqualToString:@"WFHClassifier"])
  {
    v4 = 8;
  }

  else if ([originCopy isEqualToString:@"Calendar"])
  {
    v4 = 9;
  }

  else if ([originCopy isEqualToString:@"AnchorModel"])
  {
    v4 = 10;
  }

  else if ([originCopy isEqualToString:@"AppLaunchModel"])
  {
    v4 = 11;
  }

  else if ([originCopy isEqualToString:@"ScreenShare"])
  {
    v4 = 12;
  }

  else if ([originCopy isEqualToString:@"ScreenRecording"])
  {
    v4 = 13;
  }

  else if ([originCopy isEqualToString:@"GameControllerConnected"])
  {
    v4 = 14;
  }

  else if ([originCopy isEqualToString:@"POI"])
  {
    v4 = 15;
  }

  else if ([originCopy isEqualToString:@"BacklightData"])
  {
    v4 = 16;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (void)setHasIsAutomationEnabled:(BOOL)enabled
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

- (void)setHasIsStart:(BOOL)start
{
  if (start)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasUiLocation:(BOOL)location
{
  if (location)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasConfidenceScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSerializedTriggers:(id)triggers
{
  triggersCopy = triggers;
  serializedTriggers = self->_serializedTriggers;
  v8 = triggersCopy;
  if (!serializedTriggers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_serializedTriggers;
    self->_serializedTriggers = v6;

    triggersCopy = v8;
    serializedTriggers = self->_serializedTriggers;
  }

  [(NSMutableArray *)serializedTriggers addObject:triggersCopy];
}

- (int)modeType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_modeType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasModeType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsModeType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Custom"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Default"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Home"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"Working"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"Exercising"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Driving"])
  {
    v4 = 5;
  }

  else if ([typeCopy isEqualToString:@"Bedtime"])
  {
    v4 = 6;
  }

  else if ([typeCopy isEqualToString:@"Gaming"])
  {
    v4 = 7;
  }

  else if ([typeCopy isEqualToString:@"Reading"])
  {
    v4 = 8;
  }

  else if ([typeCopy isEqualToString:@"Traveling"])
  {
    v4 = 9;
  }

  else if ([typeCopy isEqualToString:@"Learning"])
  {
    v4 = 10;
  }

  else if ([typeCopy isEqualToString:@"Streaming"])
  {
    v4 = 11;
  }

  else if ([typeCopy isEqualToString:@"ScreenSharing"])
  {
    v4 = 12;
  }

  else if ([typeCopy isEqualToString:@"ClassicDND"])
  {
    v4 = 13;
  }

  else if ([typeCopy isEqualToString:@"ScreenRecording"])
  {
    v4 = 14;
  }

  else if ([typeCopy isEqualToString:@"AirPlayMirroring"])
  {
    v4 = 15;
  }

  else if ([typeCopy isEqualToString:@"Mindfulness"])
  {
    v4 = 16;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasShouldSuggestTriggers:(BOOL)triggers
{
  if (triggers)
  {
    v3 = 0x80;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = v3 & 0x80 | *&self->_has & 0x7F;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBInferredModeEvent;
  v4 = [(BMPBInferredModeEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBInferredModeEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v4 forKey:@"absoluteTimestamp"];
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier)
  {
    [dictionary setObject:modeIdentifier forKey:@"modeIdentifier"];
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v6 = self->_origin + 1;
    if (v6 >= 0x12)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_origin];
    }

    else
    {
      v7 = off_1E6E52AB8[v6];
    }

    [dictionary setObject:v7 forKey:@"origin"];
  }

  originBundleId = self->_originBundleId;
  if (originBundleId)
  {
    [dictionary setObject:originBundleId forKey:@"originBundleId"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAutomationEnabled];
    [dictionary setObject:v10 forKey:@"isAutomationEnabled"];

    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
    [dictionary setObject:v11 forKey:@"isStart"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  originAnchorType = self->_originAnchorType;
  if (originAnchorType)
  {
    [dictionary setObject:originAnchorType forKey:@"originAnchorType"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_uiLocation];
    [dictionary setObject:v15 forKey:@"uiLocation"];

    v14 = self->_has;
  }

  if ((v14 & 2) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
    [dictionary setObject:v16 forKey:@"confidenceScore"];
  }

  serializedTriggers = self->_serializedTriggers;
  if (serializedTriggers)
  {
    [dictionary setObject:serializedTriggers forKey:@"serializedTriggers"];
  }

  v18 = self->_has;
  if ((v18 & 8) != 0)
  {
    modeType = self->_modeType;
    if (modeType >= 0x11)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_modeType];
    }

    else
    {
      v20 = off_1E6E52B48[modeType];
    }

    [dictionary setObject:v20 forKey:@"modeType"];

    v18 = self->_has;
  }

  if (v18 < 0)
  {
    v21 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSuggestTriggers];
    [dictionary setObject:v21 forKey:@"shouldSuggestTriggers"];
  }

  userModeName = self->_userModeName;
  if (userModeName)
  {
    [dictionary setObject:userModeName forKey:@"userModeName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x10) != 0)
  {
    origin = self->_origin;
    PBDataWriterWriteInt32Field();
  }

  if (self->_originBundleId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    isAutomationEnabled = self->_isAutomationEnabled;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    isStart = self->_isStart;
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originAnchorType)
  {
    PBDataWriterWriteStringField();
  }

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    uiLocation = self->_uiLocation;
    PBDataWriterWriteUint64Field();
    v10 = self->_has;
  }

  if ((v10 & 2) != 0)
  {
    confidenceScore = self->_confidenceScore;
    PBDataWriterWriteDoubleField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v13 = self->_serializedTriggers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v24;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v23 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = self->_has;
  if ((v19 & 8) != 0)
  {
    modeType = self->_modeType;
    PBDataWriterWriteInt32Field();
    v19 = self->_has;
  }

  if (v19 < 0)
  {
    shouldSuggestTriggers = self->_shouldSuggestTriggers;
    PBDataWriterWriteBOOLField();
  }

  if (self->_userModeName)
  {
    PBDataWriterWriteStringField();
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 92) |= 1u;
  }

  v13 = toCopy;
  if (self->_modeIdentifier)
  {
    [toCopy setModeIdentifier:?];
    toCopy = v13;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 11) = self->_origin;
    *(toCopy + 92) |= 0x10u;
  }

  if (self->_originBundleId)
  {
    [v13 setOriginBundleId:?];
    toCopy = v13;
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(toCopy + 88) = self->_isAutomationEnabled;
    *(toCopy + 92) |= 0x20u;
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    *(toCopy + 89) = self->_isStart;
    *(toCopy + 92) |= 0x40u;
  }

  if (self->_uuid)
  {
    [v13 setUuid:?];
    toCopy = v13;
  }

  if (self->_originAnchorType)
  {
    [v13 setOriginAnchorType:?];
    toCopy = v13;
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    toCopy[3] = self->_uiLocation;
    *(toCopy + 92) |= 4u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    toCopy[2] = *&self->_confidenceScore;
    *(toCopy + 92) |= 2u;
  }

  if ([(BMPBInferredModeEvent *)self serializedTriggersCount])
  {
    [v13 clearSerializedTriggers];
    serializedTriggersCount = [(BMPBInferredModeEvent *)self serializedTriggersCount];
    if (serializedTriggersCount)
    {
      v8 = serializedTriggersCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(BMPBInferredModeEvent *)self serializedTriggersAtIndex:i];
        [v13 addSerializedTriggers:v10];
      }
    }
  }

  v11 = self->_has;
  v12 = v13;
  if ((v11 & 8) != 0)
  {
    *(v13 + 10) = self->_modeType;
    *(v13 + 92) |= 8u;
    v11 = self->_has;
  }

  if (v11 < 0)
  {
    *(v13 + 90) = self->_shouldSuggestTriggers;
    *(v13 + 92) |= 0x80u;
  }

  if (self->_userModeName)
  {
    [v13 setUserModeName:?];
    v12 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 92) |= 1u;
  }

  v7 = [(NSString *)self->_modeIdentifier copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v6 + 44) = self->_origin;
    *(v6 + 92) |= 0x10u;
  }

  v9 = [(NSString *)self->_originBundleId copyWithZone:zone];
  v10 = *(v6 + 56);
  *(v6 + 56) = v9;

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 88) = self->_isAutomationEnabled;
    *(v6 + 92) |= 0x20u;
    has = self->_has;
  }

  if ((has & 0x40) != 0)
  {
    *(v6 + 89) = self->_isStart;
    *(v6 + 92) |= 0x40u;
  }

  v12 = [(NSString *)self->_uuid copyWithZone:zone];
  v13 = *(v6 + 80);
  *(v6 + 80) = v12;

  v14 = [(NSString *)self->_originAnchorType copyWithZone:zone];
  v15 = *(v6 + 48);
  *(v6 + 48) = v14;

  v16 = self->_has;
  if ((v16 & 4) != 0)
  {
    *(v6 + 24) = self->_uiLocation;
    *(v6 + 92) |= 4u;
    v16 = self->_has;
  }

  if ((v16 & 2) != 0)
  {
    *(v6 + 16) = self->_confidenceScore;
    *(v6 + 92) |= 2u;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_serializedTriggers;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v29;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v29 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v28 + 1) + 8 * i) copyWithZone:{zone, v28}];
        [v6 addSerializedTriggers:v22];
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v19);
  }

  v23 = self->_has;
  if ((v23 & 8) != 0)
  {
    *(v6 + 40) = self->_modeType;
    *(v6 + 92) |= 8u;
    v23 = self->_has;
  }

  if (v23 < 0)
  {
    *(v6 + 90) = self->_shouldSuggestTriggers;
    *(v6 + 92) |= 0x80u;
  }

  v24 = [(NSString *)self->_userModeName copyWithZone:zone, v28];
  v25 = *(v6 + 72);
  *(v6 + 72) = v24;

  v26 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_61;
  }

  has = self->_has;
  v6 = *(equalCopy + 92);
  if (has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_61;
    }
  }

  else if (*(equalCopy + 92))
  {
    goto LABEL_61;
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)modeIdentifier isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 92);
  if ((has & 0x10) != 0)
  {
    if ((*(equalCopy + 92) & 0x10) == 0 || self->_origin != *(equalCopy + 11))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 92) & 0x10) != 0)
  {
    goto LABEL_61;
  }

  originBundleId = self->_originBundleId;
  if (originBundleId | *(equalCopy + 7))
  {
    if (![(NSString *)originBundleId isEqual:?])
    {
      goto LABEL_61;
    }

    has = self->_has;
  }

  v10 = *(equalCopy + 92);
  if ((has & 0x20) != 0)
  {
    if ((*(equalCopy + 92) & 0x20) == 0)
    {
      goto LABEL_61;
    }

    v15 = *(equalCopy + 88);
    if (self->_isAutomationEnabled)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 92) & 0x20) != 0)
  {
    goto LABEL_61;
  }

  if ((has & 0x40) != 0)
  {
    if ((*(equalCopy + 92) & 0x40) == 0)
    {
      goto LABEL_61;
    }

    v16 = *(equalCopy + 89);
    if (self->_isStart)
    {
      if ((*(equalCopy + 89) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (*(equalCopy + 89))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 92) & 0x40) != 0)
  {
    goto LABEL_61;
  }

  uuid = self->_uuid;
  if (uuid | *(equalCopy + 10) && ![(NSString *)uuid isEqual:?])
  {
    goto LABEL_61;
  }

  originAnchorType = self->_originAnchorType;
  if (originAnchorType | *(equalCopy + 6))
  {
    if (![(NSString *)originAnchorType isEqual:?])
    {
      goto LABEL_61;
    }
  }

  v13 = self->_has;
  v14 = *(equalCopy + 92);
  if ((v13 & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_uiLocation != *(equalCopy + 3))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_61;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_confidenceScore != *(equalCopy + 2))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_61;
  }

  serializedTriggers = self->_serializedTriggers;
  if (serializedTriggers | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)serializedTriggers isEqual:?])
    {
      goto LABEL_61;
    }

    v13 = self->_has;
  }

  v18 = *(equalCopy + 92);
  if ((v13 & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) == 0 || self->_modeType != *(equalCopy + 10))
    {
      goto LABEL_61;
    }
  }

  else if ((*(equalCopy + 92) & 8) != 0)
  {
    goto LABEL_61;
  }

  if ((v13 & 0x80) == 0)
  {
    if ((*(equalCopy + 92) & 0x80) == 0)
    {
      goto LABEL_58;
    }

LABEL_61:
    v20 = 0;
    goto LABEL_62;
  }

  if ((*(equalCopy + 92) & 0x80) == 0)
  {
    goto LABEL_61;
  }

  v22 = *(equalCopy + 90);
  if (self->_shouldSuggestTriggers)
  {
    if ((*(equalCopy + 90) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

  else if (*(equalCopy + 90))
  {
    goto LABEL_61;
  }

LABEL_58:
  userModeName = self->_userModeName;
  if (userModeName | *(equalCopy + 9))
  {
    v20 = [(NSString *)userModeName isEqual:?];
  }

  else
  {
    v20 = 1;
  }

LABEL_62:

  return v20;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v26 = [(NSString *)self->_modeIdentifier hash];
  if ((*&self->_has & 0x10) != 0)
  {
    v25 = 2654435761 * self->_origin;
  }

  else
  {
    v25 = 0;
  }

  v24 = [(NSString *)self->_originBundleId hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v9 = 2654435761 * self->_isAutomationEnabled;
    if ((*&self->_has & 0x40) != 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
    if ((*&self->_has & 0x40) != 0)
    {
LABEL_14:
      v10 = 2654435761 * self->_isStart;
      goto LABEL_17;
    }
  }

  v10 = 0;
LABEL_17:
  v11 = [(NSString *)self->_uuid hash];
  v12 = [(NSString *)self->_originAnchorType hash];
  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761u * self->_uiLocation;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    v19 = 0;
    goto LABEL_25;
  }

  v15 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_24;
  }

LABEL_19:
  confidenceScore = self->_confidenceScore;
  if (confidenceScore < 0.0)
  {
    confidenceScore = -confidenceScore;
  }

  *v13.i64 = floor(confidenceScore + 0.5);
  v17 = (confidenceScore - *v13.i64) * 1.84467441e19;
  *v14.i64 = *v13.i64 - trunc(*v13.i64 * 5.42101086e-20) * 1.84467441e19;
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v19 = 2654435761u * *vbslq_s8(vnegq_f64(v18), v14, v13).i64;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v19 += v17;
    }
  }

  else
  {
    v19 -= fabs(v17);
  }

LABEL_25:
  v20 = [(NSMutableArray *)self->_serializedTriggers hash];
  if ((*&self->_has & 8) != 0)
  {
    v21 = 2654435761 * self->_modeType;
    if ((*&self->_has & 0x80) != 0)
    {
      goto LABEL_27;
    }

LABEL_29:
    v22 = 0;
    return v26 ^ v5 ^ v25 ^ v24 ^ v9 ^ v10 ^ v11 ^ v12 ^ v15 ^ v19 ^ v20 ^ v21 ^ v22 ^ [(NSString *)self->_userModeName hash];
  }

  v21 = 0;
  if ((*&self->_has & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  v22 = 2654435761 * self->_shouldSuggestTriggers;
  return v26 ^ v5 ^ v25 ^ v24 ^ v9 ^ v10 ^ v11 ^ v12 ^ v15 ^ v19 ^ v20 ^ v21 ^ v22 ^ [(NSString *)self->_userModeName hash];
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 92))
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBInferredModeEvent *)self setModeIdentifier:?];
  }

  if ((*(v5 + 92) & 0x10) != 0)
  {
    self->_origin = *(v5 + 11);
    *&self->_has |= 0x10u;
  }

  if (*(v5 + 7))
  {
    [(BMPBInferredModeEvent *)self setOriginBundleId:?];
  }

  v6 = *(v5 + 92);
  if ((v6 & 0x20) != 0)
  {
    self->_isAutomationEnabled = *(v5 + 88);
    *&self->_has |= 0x20u;
    v6 = *(v5 + 92);
  }

  if ((v6 & 0x40) != 0)
  {
    self->_isStart = *(v5 + 89);
    *&self->_has |= 0x40u;
  }

  if (*(v5 + 10))
  {
    [(BMPBInferredModeEvent *)self setUuid:?];
  }

  if (*(v5 + 6))
  {
    [(BMPBInferredModeEvent *)self setOriginAnchorType:?];
  }

  v7 = *(v5 + 92);
  if ((v7 & 4) != 0)
  {
    self->_uiLocation = v5[3];
    *&self->_has |= 4u;
    v7 = *(v5 + 92);
  }

  if ((v7 & 2) != 0)
  {
    self->_confidenceScore = v5[2];
    *&self->_has |= 2u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(v5 + 8);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(BMPBInferredModeEvent *)self addSerializedTriggers:*(*(&v15 + 1) + 8 * i), v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v13 = *(v5 + 92);
  if ((v13 & 8) != 0)
  {
    self->_modeType = *(v5 + 10);
    *&self->_has |= 8u;
    v13 = *(v5 + 92);
  }

  if (v13 < 0)
  {
    self->_shouldSuggestTriggers = *(v5 + 90);
    *&self->_has |= 0x80u;
  }

  if (*(v5 + 9))
  {
    [(BMPBInferredModeEvent *)self setUserModeName:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end