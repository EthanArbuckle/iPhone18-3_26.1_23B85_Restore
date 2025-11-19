@interface BMPBUserActivityMetadataEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopics:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasHasAssociatedImageRepresentation:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBUserActivityMetadataEvent

- (void)addTopics:(id)a3
{
  v4 = a3;
  topics = self->_topics;
  v8 = v4;
  if (!topics)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_topics;
    self->_topics = v6;

    v4 = v8;
    topics = self->_topics;
  }

  [(NSMutableArray *)topics addObject:v4];
}

- (void)setHasHasAssociatedImageRepresentation:(BOOL)a3
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
  v8.super_class = BMPBUserActivityMetadataEvent;
  v4 = [(BMPBUserActivityMetadataEvent *)&v8 description];
  v5 = [(BMPBUserActivityMetadataEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v3 setObject:v4 forKey:@"absoluteTimestamp"];
  }

  userActivityData = self->_userActivityData;
  if (userActivityData)
  {
    [v3 setObject:userActivityData forKey:@"userActivityData"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  activityType = self->_activityType;
  if (activityType)
  {
    [v3 setObject:activityType forKey:@"activityType"];
  }

  associatedBundleId = self->_associatedBundleId;
  if (associatedBundleId)
  {
    [v3 setObject:associatedBundleId forKey:@"associatedBundleId"];
  }

  associatedURLString = self->_associatedURLString;
  if (associatedURLString)
  {
    [v3 setObject:associatedURLString forKey:@"associatedURLString"];
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier)
  {
    [v3 setObject:modeIdentifier forKey:@"modeIdentifier"];
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

          v17 = [*(*(&v22 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:v17];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v3 setObject:v11 forKey:@"topics"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v18 = [MEMORY[0x1E696AD98] numberWithBool:self->_hasAssociatedImageRepresentation];
    [v3 setObject:v18 forKey:@"hasAssociatedImageRepresentation"];
  }

  uuid = self->_uuid;
  if (uuid)
  {
    [v3 setObject:uuid forKey:@"uuid"];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimestamp;
    *(v4 + 84) |= 1u;
  }

  v10 = v4;
  if (self->_userActivityData)
  {
    [v4 setUserActivityData:?];
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
    v5 = [(BMPBUserActivityMetadataEvent *)self topicsCount];
    if (v5)
    {
      v6 = v5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 84) |= 1u;
  }

  v7 = [(NSData *)self->_userActivityData copyWithZone:a3];
  v8 = *(v6 + 64);
  *(v6 + 64) = v7;

  v9 = [(NSString *)self->_title copyWithZone:a3];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  v11 = [(NSString *)self->_activityType copyWithZone:a3];
  v12 = *(v6 + 16);
  *(v6 + 16) = v11;

  v13 = [(NSString *)self->_associatedBundleId copyWithZone:a3];
  v14 = *(v6 + 24);
  *(v6 + 24) = v13;

  v15 = [(NSString *)self->_associatedURLString copyWithZone:a3];
  v16 = *(v6 + 32);
  *(v6 + 32) = v15;

  v17 = [(NSString *)self->_modeIdentifier copyWithZone:a3];
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

        v24 = [*(*(&v29 + 1) + 8 * v23) copyWithZone:{a3, v29}];
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

  v25 = [(NSString *)self->_uuid copyWithZone:a3, v29];
  v26 = *(v6 + 72);
  *(v6 + 72) = v25;

  v27 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(v4 + 84);
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_26;
  }

  userActivityData = self->_userActivityData;
  if (userActivityData | *(v4 + 8) && ![(NSData *)userActivityData isEqual:?])
  {
    goto LABEL_26;
  }

  title = self->_title;
  if (title | *(v4 + 6))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_26;
    }
  }

  activityType = self->_activityType;
  if (activityType | *(v4 + 2))
  {
    if (![(NSString *)activityType isEqual:?])
    {
      goto LABEL_26;
    }
  }

  associatedBundleId = self->_associatedBundleId;
  if (associatedBundleId | *(v4 + 3))
  {
    if (![(NSString *)associatedBundleId isEqual:?])
    {
      goto LABEL_26;
    }
  }

  associatedURLString = self->_associatedURLString;
  if (associatedURLString | *(v4 + 4))
  {
    if (![(NSString *)associatedURLString isEqual:?])
    {
      goto LABEL_26;
    }
  }

  modeIdentifier = self->_modeIdentifier;
  if (modeIdentifier | *(v4 + 5))
  {
    if (![(NSString *)modeIdentifier isEqual:?])
    {
      goto LABEL_26;
    }
  }

  topics = self->_topics;
  if (topics | *(v4 + 7))
  {
    if (![(NSMutableArray *)topics isEqual:?])
    {
      goto LABEL_26;
    }
  }

  v13 = *(v4 + 84);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 84) & 2) == 0)
    {
      goto LABEL_23;
    }

LABEL_26:
    v15 = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 84) & 2) == 0)
  {
    goto LABEL_26;
  }

  v17 = *(v4 + 80);
  if (self->_hasAssociatedImageRepresentation)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_26;
  }

LABEL_23:
  uuid = self->_uuid;
  if (uuid | *(v4 + 9))
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

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 84))
  {
    self->_absoluteTimestamp = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 8))
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