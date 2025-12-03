@interface MXWordWithPronunciations
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPronunciations:(id)pronunciations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MXWordWithPronunciations

- (void)addPronunciations:(id)pronunciations
{
  pronunciationsCopy = pronunciations;
  pronunciations = self->_pronunciations;
  v8 = pronunciationsCopy;
  if (!pronunciations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_pronunciations;
    self->_pronunciations = v6;

    pronunciationsCopy = v8;
    pronunciations = self->_pronunciations;
  }

  [(NSMutableArray *)pronunciations addObject:pronunciationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXWordWithPronunciations;
  v4 = [(MXWordWithPronunciations *)&v8 description];
  dictionaryRepresentation = [(MXWordWithPronunciations *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  orthography = self->_orthography;
  if (orthography)
  {
    [dictionary setObject:orthography forKey:@"orthography"];
  }

  pronunciations = self->_pronunciations;
  if (pronunciations)
  {
    [v4 setObject:pronunciations forKey:@"pronunciations"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_frequency];
    [v4 setObject:v7 forKey:@"frequency"];
  }

  tag = self->_tag;
  if (tag)
  {
    [v4 setObject:tag forKey:@"tag"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_orthography)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_pronunciations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    frequency = self->_frequency;
    PBDataWriterWriteInt32Field();
  }

  if (self->_tag)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_orthography)
  {
    [toCopy setOrthography:?];
  }

  if ([(MXWordWithPronunciations *)self pronunciationsCount])
  {
    [toCopy clearPronunciations];
    pronunciationsCount = [(MXWordWithPronunciations *)self pronunciationsCount];
    if (pronunciationsCount)
    {
      v5 = pronunciationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MXWordWithPronunciations *)self pronunciationsAtIndex:i];
        [toCopy addPronunciations:v7];
      }
    }
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 2) = self->_frequency;
    *(toCopy + 40) |= 1u;
  }

  if (self->_tag)
  {
    [toCopy setTag:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_orthography copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_pronunciations;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        [v5 addPronunciations:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_frequency;
    *(v5 + 40) |= 1u;
  }

  v14 = [(NSString *)self->_tag copyWithZone:zone, v18];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  orthography = self->_orthography;
  if (orthography | *(equalCopy + 2))
  {
    if (![(NSString *)orthography isEqual:?])
    {
      goto LABEL_13;
    }
  }

  pronunciations = self->_pronunciations;
  if (pronunciations | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)pronunciations isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_frequency != *(equalCopy + 2))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  tag = self->_tag;
  if (tag | *(equalCopy + 4))
  {
    v9 = [(NSString *)tag isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_orthography hash];
  v4 = [(NSMutableArray *)self->_pronunciations hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_frequency;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_tag hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(MXWordWithPronunciations *)self setOrthography:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MXWordWithPronunciations *)self addPronunciations:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 40))
  {
    self->_frequency = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(MXWordWithPronunciations *)self setTag:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end