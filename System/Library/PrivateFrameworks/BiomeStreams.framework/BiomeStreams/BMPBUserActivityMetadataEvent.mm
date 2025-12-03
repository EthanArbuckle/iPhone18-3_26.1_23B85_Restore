@interface BMPBUserActivityMetadataEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopics:(id)topics;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasHasAssociatedImageRepresentation:(BOOL)representation;
- (void)writeTo:(id)to;
@end

@implementation BMPBUserActivityMetadataEvent

- (void)addTopics:(id)topics
{
  topicsCopy = topics;
  topics = self->_topics;
  v8 = topicsCopy;
  if (!topics)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_topics;
    self->_topics = v6;

    topicsCopy = v8;
    topics = self->_topics;
  }

  [(NSMutableArray *)topics addObject:topicsCopy];
}

- (void)setHasHasAssociatedImageRepresentation:(BOOL)representation
{
  if (representation)
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
  v8.super_class = BMPBUserActivityMetadataEvent;
  v4 = [(BMPBUserActivityMetadataEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBUserActivityMetadataEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v4 forKey:@"absoluteTimestamp"];
  }

  userActivityData = self->_userActivityData;
  if (userActivityData)
  {
    [dictionary setObject:userActivityData forKey:@"userActivityData"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [dictionary setObject:activityType forKey:@"activityType"];
  }

  associatedBundleId = self->_associatedBundleId;
  if (associatedBundleId)
  {
    [dictionary setObject:associatedBundleId forKey:@"associatedBundleId"];
  }

  associatedURLString = self->_associatedURLString;
  if (associatedURLString)
  {
    [dictionary setObject:associatedURLString forKey:@"associatedURLString"];
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier)
  {
    [dictionary setObject:modeIdentifier forKey:@"modeIdentifier"];
  }

  if ([(NSMutableArray *)self->_topics count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_topics, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = self->_topics;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"topics"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedImageRepresentation];
    [dictionary setObject:v18 forKey:@"hasAssociatedImageRepresentation"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_userActivityData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_activityType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_associatedBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_associatedURLString)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_modeIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_topics;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    hasAssociatedImageRepresentation = self->_hasAssociatedImageRepresentation;
    PBDataWriterWriteBOOLField();
  }

  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 84) |= 1u;
  }

  v10 = toCopy;
  if (self->_userActivityData)
  {
    [toCopy setUserActivityData:?];
  }

  if (self->_title)
  {
    [v10 setTitle:?];
  }

  if (self->_activityType)
  {
    [v10 setActivityType:?];
  }

  if (self->_associatedBundleId)
  {
    [v10 setAssociatedBundleId:?];
  }

  if (self->_associatedURLString)
  {
    [v10 setAssociatedURLString:?];
  }

  if (self->_modeIdentifier)
  {
    [v10 setModeIdentifier:?];
  }

  if ([(BMPBUserActivityMetadataEvent *)self topicsCount])
  {
    [v10 clearTopics];
    topicsCount = [(BMPBUserActivityMetadataEvent *)self topicsCount];
    if (topicsCount)
    {
      v6 = topicsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBUserActivityMetadataEvent *)self topicsAtIndex:i];
        [v10 addTopics:v8];
      }
    }
  }

  v9 = v10;
  if ((*&self->_has & 2) != 0)
  {
    v10[80] = self->_hasAssociatedImageRepresentation;
    v10[84] |= 2u;
  }

  if (self->_uuid)
  {
    [v10 setUuid:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 84) |= 1u;
  }

  v7 = [(NSData *)self->_userActivityData copyWithZone:zone];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  v9 = [(NSString *)self->_title copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(NSString *)self->_activityType copyWithZone:zone];
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  v13 = [(NSString *)self->_associatedBundleId copyWithZone:zone];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  v15 = [(NSString *)self->_associatedURLString copyWithZone:zone];
  v16 = *(v6 + 32);
  *(v6 + 32) = v15;

  v17 = [(NSString *)self->_modeIdentifier copyWithZone:zone];
  v18 = *(v6 + 40);
  *(v6 + 40) = v17;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = self->_topics;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v30;
    do
    {
      v23 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v29 + 1) + 8 * v23) copyWithZone:{zone, v29}];
        [v6 addTopics:v24];

        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v21);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 80) = self->_hasAssociatedImageRepresentation;
    *(v6 + 84) |= 2u;
  }

  v25 = [(NSString *)self->_uuid copyWithZone:zone, v29];
  v26 = *(v6 + 72);
  *(v6 + 72) = v25;

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_26;
  }

  userActivityData = self->_userActivityData;
  if (userActivityData | *(equalCopy + 8) && ![(NSData *)userActivityData isEqual:?])
  {
    goto LABEL_26;
  }

  title = self->_title;
  if (title | *(equalCopy + 6))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_26;
    }
  }

  activityType = self->_activityType;
  if (activityType | *(equalCopy + 2))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  associatedBundleId = self->_associatedBundleId;
  if (associatedBundleId | *(equalCopy + 3))
  {
    if (![(NSString *)associatedBundleId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  associatedURLString = self->_associatedURLString;
  if (associatedURLString | *(equalCopy + 4))
  {
    if (![(NSString *)associatedURLString isEqual:?])
    {
      goto LABEL_26;
    }
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)modeIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  topics = self->_topics;
  if (topics | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)topics isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v13 = *(equalCopy + 84);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 84) & 2) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if ((*(equalCopy + 84) & 2) == 0)
  {
    goto LABEL_26;
  }

  v17 = *(equalCopy + 80);
  if (self->_hasAssociatedImageRepresentation)
  {
    if ((*(equalCopy + 80) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_26;
  }

LABEL_23:
  uuid = self->_uuid;
  if (uuid | *(equalCopy + 9))
  {
    v15 = [(NSString *)uuid isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_27:

  return v15;
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

  v9 = [(NSData *)self->_userActivityData hash];
  v10 = [(NSString *)self->_title hash];
  v11 = [(NSString *)self->_activityType hash];
  v12 = [(NSString *)self->_associatedBundleId hash];
  v13 = [(NSString *)self->_associatedURLString hash];
  v14 = [(NSString *)self->_modeIdentifier hash];
  v15 = [(NSMutableArray *)self->_topics hash];
  if ((*&self->_has & 2) != 0)
  {
    v16 = 2654435761 * self->_hasAssociatedImageRepresentation;
  }

  else
  {
    v16 = 0;
  }

  return v9 ^ v5 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ [(NSString *)self->_uuid hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 84))
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 8))
  {
    [(BMPBUserActivityMetadataEvent *)self setUserActivityData:?];
  }

  if (*(v5 + 6))
  {
    [(BMPBUserActivityMetadataEvent *)self setTitle:?];
  }

  if (*(v5 + 2))
  {
    [(BMPBUserActivityMetadataEvent *)self setActivityType:?];
  }

  if (*(v5 + 3))
  {
    [(BMPBUserActivityMetadataEvent *)self setAssociatedBundleId:?];
  }

  if (*(v5 + 4))
  {
    [(BMPBUserActivityMetadataEvent *)self setAssociatedURLString:?];
  }

  if (*(v5 + 5))
  {
    [(BMPBUserActivityMetadataEvent *)self setModeIdentifier:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v5 + 7);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBUserActivityMetadataEvent *)self addTopics:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((*(v5 + 84) & 2) != 0)
  {
    self->_hasAssociatedImageRepresentation = *(v5 + 80);
    *&self->_has |= 2u;
  }

  if (*(v5 + 9))
  {
    [(BMPBUserActivityMetadataEvent *)self setUuid:?];
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end