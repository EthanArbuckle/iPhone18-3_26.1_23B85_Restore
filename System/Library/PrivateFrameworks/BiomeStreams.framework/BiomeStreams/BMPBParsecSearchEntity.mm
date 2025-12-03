@interface BMPBParsecSearchEntity
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTopics:(id)topics;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasProbabilityScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation BMPBParsecSearchEntity

- (void)setHasProbabilityScore:(BOOL)score
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

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBParsecSearchEntity;
  v4 = [(BMPBParsecSearchEntity *)&v8 description];
  dictionaryRepresentation = [(BMPBParsecSearchEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_category];
    [v5 setObject:v8 forKey:@"category"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *&v4 = self->_probabilityScore;
    v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
    [v5 setObject:v9 forKey:@"probabilityScore"];
  }

  if ([(NSMutableArray *)self->_topics count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_topics, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_topics;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v5 setObject:v10 forKey:@"topics"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    category = self->_category;
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    probabilityScore = self->_probabilityScore;
    PBDataWriterWriteFloatField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_topics;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

        v13 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_category;
    *(toCopy + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 6) = LODWORD(self->_probabilityScore);
    *(toCopy + 40) |= 2u;
  }

  if ([(BMPBParsecSearchEntity *)self topicsCount])
  {
    [v10 clearTopics];
    topicsCount = [(BMPBParsecSearchEntity *)self topicsCount];
    if (topicsCount)
    {
      v7 = topicsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(BMPBParsecSearchEntity *)self topicsAtIndex:i];
        [v10 addTopics:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_category;
    *(v5 + 40) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 24) = self->_probabilityScore;
    *(v5 + 40) |= 2u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_topics;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) copyWithZone:{zone, v17}];
        [v5 addTopics:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  name = self->_name;
  if (name | *(equalCopy + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_16;
    }
  }

  v6 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_category != *(equalCopy + 2))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_probabilityScore != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_16;
  }

  topics = self->_topics;
  if (topics | *(equalCopy + 4))
  {
    v8 = [(NSMutableArray *)topics isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_17:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_category;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    return v6 ^ v3 ^ v10 ^ [(NSMutableArray *)self->_topics hash];
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  probabilityScore = self->_probabilityScore;
  if (probabilityScore < 0.0)
  {
    probabilityScore = -probabilityScore;
  }

  *v4.i32 = floorf(probabilityScore + 0.5);
  v8 = (probabilityScore - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = 2654435761u * *vbslq_s8(v9, v5, v4).i32;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabsf(v8);
  }

  return v6 ^ v3 ^ v10 ^ [(NSMutableArray *)self->_topics hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(BMPBParsecSearchEntity *)self setName:?];
  }

  v5 = *(fromCopy + 40);
  if (v5)
  {
    self->_category = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 40);
  }

  if ((v5 & 2) != 0)
  {
    self->_probabilityScore = *(fromCopy + 6);
    *&self->_has |= 2u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 4);
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

        [(BMPBParsecSearchEntity *)self addTopics:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end