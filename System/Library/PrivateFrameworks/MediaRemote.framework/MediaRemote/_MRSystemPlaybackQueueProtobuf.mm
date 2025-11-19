@interface _MRSystemPlaybackQueueProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsReplaceIntent:(id)a3;
- (int)StringAsType:(id)a3;
- (int)replaceIntent;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsRequestingImmediatePlayback:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSystemPlaybackQueueProtobuf

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SystemPlaybackQueueTypeUnknown"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SystemPlaybackQueueTypeGeneric"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SystemPlaybackQueueTypeCustom"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SystemPlaybackQueueTypeEmpty"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)replaceIntent
{
  if (*&self->_has)
  {
    return self->_replaceIntent;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsReplaceIntent:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SystemPlaybackQueueReplaceIntentNonDestructive"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"SystemPlaybackQueueReplaceIntentClearUpNext"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SystemPlaybackQueueReplaceIntentKeepUpNext"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"SystemPlaybackQueueReplaceIntentLeaveSharedSession"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIsRequestingImmediatePlayback:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSystemPlaybackQueueProtobuf;
  v4 = [(_MRSystemPlaybackQueueProtobuf *)&v8 description];
  v5 = [(_MRSystemPlaybackQueueProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = self->_type - 1;
  if (v4 >= 4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
  }

  else
  {
    v5 = off_1E76A09C8[v4];
  }

  [v3 setObject:v5 forKey:@"type"];

  has = self->_has;
  if (has)
  {
    v7 = self->_replaceIntent - 1;
    if (v7 >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_replaceIntent];
    }

    else
    {
      v8 = off_1E76A09E8[v7];
    }

    [v3 setObject:v8 forKey:@"replaceIntent"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRequestingImmediatePlayback];
    [v3 setObject:v9 forKey:@"isRequestingImmediatePlayback"];
  }

  featureName = self->_featureName;
  if (featureName)
  {
    [v3 setObject:featureName forKey:@"featureName"];
  }

  customData = self->_customData;
  if (customData)
  {
    v12 = [(_MRSystemPlaybackCustomDataQueueProtobuf *)customData dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"customData"];
  }

  tracklist = self->_tracklist;
  if (tracklist)
  {
    v14 = [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)tracklist dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"tracklist"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    [v3 setObject:userInfo forKey:@"userInfo"];
  }

  metrics = self->_metrics;
  if (metrics)
  {
    [v3 setObject:metrics forKey:@"metrics"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  type = self->_type;
  v10 = v4;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    replaceIntent = self->_replaceIntent;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    isRequestingImmediatePlayback = self->_isRequestingImmediatePlayback;
    PBDataWriterWriteBOOLField();
  }

  v9 = v10;
  if (self->_featureName)
  {
    PBDataWriterWriteStringField();
    v9 = v10;
  }

  if (self->_customData)
  {
    PBDataWriterWriteSubmessage();
    v9 = v10;
  }

  if (self->_tracklist)
  {
    PBDataWriterWriteSubmessage();
    v9 = v10;
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteDataField();
    v9 = v10;
  }

  if (self->_metrics)
  {
    PBDataWriterWriteDataField();
    v9 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[12] = self->_type;
  has = self->_has;
  if (has)
  {
    v4[8] = self->_replaceIntent;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 64) = self->_isRequestingImmediatePlayback;
    *(v4 + 68) |= 2u;
  }

  v6 = v4;
  if (self->_featureName)
  {
    [v4 setFeatureName:?];
    v4 = v6;
  }

  if (self->_customData)
  {
    [v6 setCustomData:?];
    v4 = v6;
  }

  if (self->_tracklist)
  {
    [v6 setTracklist:?];
    v4 = v6;
  }

  if (self->_userInfo)
  {
    [v6 setUserInfo:?];
    v4 = v6;
  }

  if (self->_metrics)
  {
    [v6 setMetrics:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  *(v5 + 48) = self->_type;
  has = self->_has;
  if (has)
  {
    *(v5 + 32) = self->_replaceIntent;
    *(v5 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 64) = self->_isRequestingImmediatePlayback;
    *(v5 + 68) |= 2u;
  }

  v8 = [(NSString *)self->_featureName copyWithZone:a3];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(_MRSystemPlaybackCustomDataQueueProtobuf *)self->_customData copyWithZone:a3];
  v11 = v6[1];
  v6[1] = v10;

  v12 = [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self->_tracklist copyWithZone:a3];
  v13 = v6[5];
  v6[5] = v12;

  v14 = [(NSData *)self->_userInfo copyWithZone:a3];
  v15 = v6[7];
  v6[7] = v14;

  v16 = [(NSData *)self->_metrics copyWithZone:a3];
  v17 = v6[3];
  v6[3] = v16;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_type != *(v4 + 12))
  {
    goto LABEL_21;
  }

  v5 = *(v4 + 68);
  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_replaceIntent != *(v4 + 8))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    v11 = 0;
    goto LABEL_22;
  }

  if ((*(v4 + 68) & 2) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(v4 + 64);
  if (self->_isRequestingImmediatePlayback)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_21;
  }

LABEL_10:
  featureName = self->_featureName;
  if (featureName | *(v4 + 2) && ![(NSString *)featureName isEqual:?])
  {
    goto LABEL_21;
  }

  customData = self->_customData;
  if (customData | *(v4 + 1))
  {
    if (![(_MRSystemPlaybackCustomDataQueueProtobuf *)customData isEqual:?])
    {
      goto LABEL_21;
    }
  }

  tracklist = self->_tracklist;
  if (tracklist | *(v4 + 5))
  {
    if (![(_MRSystemPlaybackGenericTracklistQueueProtobuf *)tracklist isEqual:?])
    {
      goto LABEL_21;
    }
  }

  userInfo = self->_userInfo;
  if (userInfo | *(v4 + 7))
  {
    if (![(NSData *)userInfo isEqual:?])
    {
      goto LABEL_21;
    }
  }

  metrics = self->_metrics;
  if (metrics | *(v4 + 3))
  {
    v11 = [(NSData *)metrics isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_22:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_replaceIntent;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_isRequestingImmediatePlayback;
  }

  else
  {
    v4 = 0;
  }

  v5 = 2654435761 * self->_type;
  v6 = v3 ^ v4 ^ [(NSString *)self->_featureName hash];
  v7 = v6 ^ [(_MRSystemPlaybackCustomDataQueueProtobuf *)self->_customData hash];
  v8 = v7 ^ [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)self->_tracklist hash];
  v9 = v8 ^ [(NSData *)self->_userInfo hash]^ v5;
  return v9 ^ [(NSData *)self->_metrics hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  self->_type = *(v4 + 12);
  v6 = *(v4 + 68);
  if (v6)
  {
    self->_replaceIntent = *(v4 + 8);
    *&self->_has |= 1u;
    v6 = *(v4 + 68);
  }

  if ((v6 & 2) != 0)
  {
    self->_isRequestingImmediatePlayback = *(v4 + 64);
    *&self->_has |= 2u;
  }

  v11 = v4;
  if (*(v4 + 2))
  {
    [(_MRSystemPlaybackQueueProtobuf *)self setFeatureName:?];
    v5 = v11;
  }

  customData = self->_customData;
  v8 = v5[1];
  if (customData)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRSystemPlaybackCustomDataQueueProtobuf *)customData mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(_MRSystemPlaybackQueueProtobuf *)self setCustomData:?];
  }

  v5 = v11;
LABEL_13:
  tracklist = self->_tracklist;
  v10 = v5[5];
  if (tracklist)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRSystemPlaybackGenericTracklistQueueProtobuf *)tracklist mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(_MRSystemPlaybackQueueProtobuf *)self setTracklist:?];
  }

  v5 = v11;
LABEL_19:
  if (v5[7])
  {
    [(_MRSystemPlaybackQueueProtobuf *)self setUserInfo:?];
    v5 = v11;
  }

  if (v5[3])
  {
    [(_MRSystemPlaybackQueueProtobuf *)self setMetrics:?];
    v5 = v11;
  }
}

@end