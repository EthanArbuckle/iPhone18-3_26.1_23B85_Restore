@interface CESRCorrectionPronunciation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTtsPronunciations:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CESRCorrectionPronunciation

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(CESRCorrectionPronunciation *)self setOrthography:?];
  }

  if (*(v4 + 3))
  {
    [(CESRCorrectionPronunciation *)self setLanguage:?];
  }

  if (*(v4 + 1))
  {
    [(CESRCorrectionPronunciation *)self setApgId:?];
  }

  if (*(v4 + 7))
  {
    [(CESRCorrectionPronunciation *)self setTtsVersion:?];
  }

  if (*(v4 + 64))
  {
    self->_tokenOffset = *(v4 + 10);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 6);
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

        [(CESRCorrectionPronunciation *)self addTtsPronunciations:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 2))
  {
    [(CESRCorrectionPronunciation *)self setAsrPronunciationData:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_orthography hash];
  v4 = [(NSString *)self->_language hash];
  v5 = [(NSString *)self->_apgId hash];
  v6 = [(NSString *)self->_ttsVersion hash];
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_tokenOffset;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSMutableArray *)self->_ttsPronunciations hash];
  return v8 ^ v9 ^ [(NSData *)self->_asrPronunciationData hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  orthography = self->_orthography;
  if (orthography | *(v4 + 4))
  {
    if (![(NSString *)orthography isEqual:?])
    {
      goto LABEL_19;
    }
  }

  language = self->_language;
  if (language | *(v4 + 3))
  {
    if (![(NSString *)language isEqual:?])
    {
      goto LABEL_19;
    }
  }

  apgId = self->_apgId;
  if (apgId | *(v4 + 1))
  {
    if (![(NSString *)apgId isEqual:?])
    {
      goto LABEL_19;
    }
  }

  ttsVersion = self->_ttsVersion;
  if (ttsVersion | *(v4 + 7))
  {
    if (![(NSString *)ttsVersion isEqual:?])
    {
      goto LABEL_19;
    }
  }

  v9 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) == 0 || self->_tokenOffset != *(v4 + 10))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 64))
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  ttsPronunciations = self->_ttsPronunciations;
  if (ttsPronunciations | *(v4 + 6) && ![(NSMutableArray *)ttsPronunciations isEqual:?])
  {
    goto LABEL_19;
  }

  asrPronunciationData = self->_asrPronunciationData;
  if (asrPronunciationData | *(v4 + 2))
  {
    v12 = [(NSData *)asrPronunciationData isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_20:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_orthography copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_language copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_apgId copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_ttsVersion copyWithZone:a3];
  v13 = *(v5 + 56);
  *(v5 + 56) = v12;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_tokenOffset;
    *(v5 + 64) |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_ttsPronunciations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      v18 = 0;
      do
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v24 + 1) + 8 * v18) copyWithZone:{a3, v24}];
        [v5 addTtsPronunciations:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_asrPronunciationData copyWithZone:a3];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_orthography)
  {
    [v4 setOrthography:?];
    v4 = v9;
  }

  if (self->_language)
  {
    [v9 setLanguage:?];
    v4 = v9;
  }

  if (self->_apgId)
  {
    [v9 setApgId:?];
    v4 = v9;
  }

  if (self->_ttsVersion)
  {
    [v9 setTtsVersion:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_tokenOffset;
    *(v4 + 64) |= 1u;
  }

  if ([(CESRCorrectionPronunciation *)self ttsPronunciationsCount])
  {
    [v9 clearTtsPronunciations];
    v5 = [(CESRCorrectionPronunciation *)self ttsPronunciationsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(CESRCorrectionPronunciation *)self ttsPronunciationsAtIndex:i];
        [v9 addTtsPronunciations:v8];
      }
    }
  }

  if (self->_asrPronunciationData)
  {
    [v9 setAsrPronunciationData:?];
  }
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_orthography)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_apgId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ttsVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    tokenOffset = self->_tokenOffset;
    PBDataWriterWriteInt32Field();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_ttsPronunciations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_asrPronunciationData)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  orthography = self->_orthography;
  if (orthography)
  {
    [v3 setObject:orthography forKey:@"orthography"];
  }

  language = self->_language;
  if (language)
  {
    [v4 setObject:language forKey:@"language"];
  }

  apgId = self->_apgId;
  if (apgId)
  {
    [v4 setObject:apgId forKey:@"apg_id"];
  }

  ttsVersion = self->_ttsVersion;
  if (ttsVersion)
  {
    [v4 setObject:ttsVersion forKey:@"tts_version"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_tokenOffset];
    [v4 setObject:v9 forKey:@"token_offset"];
  }

  ttsPronunciations = self->_ttsPronunciations;
  if (ttsPronunciations)
  {
    [v4 setObject:ttsPronunciations forKey:@"tts_pronunciations"];
  }

  asrPronunciationData = self->_asrPronunciationData;
  if (asrPronunciationData)
  {
    [v4 setObject:asrPronunciationData forKey:@"asr_pronunciation_data"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CESRCorrectionPronunciation;
  v4 = [(CESRCorrectionPronunciation *)&v8 description];
  v5 = [(CESRCorrectionPronunciation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addTtsPronunciations:(id)a3
{
  v4 = a3;
  ttsPronunciations = self->_ttsPronunciations;
  v8 = v4;
  if (!ttsPronunciations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ttsPronunciations;
    self->_ttsPronunciations = v6;

    v4 = v8;
    ttsPronunciations = self->_ttsPronunciations;
  }

  [(NSMutableArray *)ttsPronunciations addObject:v4];
}

@end