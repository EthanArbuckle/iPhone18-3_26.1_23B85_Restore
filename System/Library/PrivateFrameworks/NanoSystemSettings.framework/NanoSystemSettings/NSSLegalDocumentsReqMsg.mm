@interface NSSLegalDocumentsReqMsg
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLegacyPreferredLanguages:(id)languages;
- (void)addPreferredLanguages:(id)languages;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFetchBuiltinApps:(BOOL)apps;
- (void)writeTo:(id)to;
@end

@implementation NSSLegalDocumentsReqMsg

- (void)addLegacyPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  legacyPreferredLanguages = self->_legacyPreferredLanguages;
  v8 = languagesCopy;
  if (!legacyPreferredLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_legacyPreferredLanguages;
    self->_legacyPreferredLanguages = v6;

    languagesCopy = v8;
    legacyPreferredLanguages = self->_legacyPreferredLanguages;
  }

  [(NSMutableArray *)legacyPreferredLanguages addObject:languagesCopy];
}

- (void)addPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  preferredLanguages = self->_preferredLanguages;
  v8 = languagesCopy;
  if (!preferredLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_preferredLanguages;
    self->_preferredLanguages = v6;

    languagesCopy = v8;
    preferredLanguages = self->_preferredLanguages;
  }

  [(NSMutableArray *)preferredLanguages addObject:languagesCopy];
}

- (void)setHasFetchBuiltinApps:(BOOL)apps
{
  if (apps)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NSSLegalDocumentsReqMsg;
  v4 = [(NSSLegalDocumentsReqMsg *)&v8 description];
  dictionaryRepresentation = [(NSSLegalDocumentsReqMsg *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  legacyPreferredLanguages = self->_legacyPreferredLanguages;
  if (legacyPreferredLanguages)
  {
    [dictionary setObject:legacyPreferredLanguages forKey:@"legacyPreferredLanguages"];
  }

  preferredLanguages = self->_preferredLanguages;
  if (preferredLanguages)
  {
    [v4 setObject:preferredLanguages forKey:@"preferredLanguages"];
  }

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithBool:self->_addUrlToSAR];
    [v4 setObject:v8 forKey:@"addUrlToSAR"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_fetchBuiltinApps];
    [v4 setObject:v9 forKey:@"fetchBuiltinApps"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v31 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = self->_legacyPreferredLanguages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = self->_preferredLanguages;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v13);
  }

  has = self->_has;
  if (has)
  {
    addUrlToSAR = self->_addUrlToSAR;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    fetchBuiltinApps = self->_fetchBuiltinApps;
    PBDataWriterWriteBOOLField();
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NSSLegalDocumentsReqMsg *)self legacyPreferredLanguagesCount])
  {
    [toCopy clearLegacyPreferredLanguages];
    legacyPreferredLanguagesCount = [(NSSLegalDocumentsReqMsg *)self legacyPreferredLanguagesCount];
    if (legacyPreferredLanguagesCount)
    {
      v5 = legacyPreferredLanguagesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSSLegalDocumentsReqMsg *)self legacyPreferredLanguagesAtIndex:i];
        [toCopy addLegacyPreferredLanguages:v7];
      }
    }
  }

  if ([(NSSLegalDocumentsReqMsg *)self preferredLanguagesCount])
  {
    [toCopy clearPreferredLanguages];
    preferredLanguagesCount = [(NSSLegalDocumentsReqMsg *)self preferredLanguagesCount];
    if (preferredLanguagesCount)
    {
      v9 = preferredLanguagesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSSLegalDocumentsReqMsg *)self preferredLanguagesAtIndex:j];
        [toCopy addPreferredLanguages:v11];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    toCopy[24] = self->_addUrlToSAR;
    toCopy[28] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[25] = self->_fetchBuiltinApps;
    toCopy[28] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_legacyPreferredLanguages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * i) copyWithZone:zone];
        [v5 addLegacyPreferredLanguages:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_preferredLanguages;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * j) copyWithZone:{zone, v21}];
        [v5 addPreferredLanguages:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  has = self->_has;
  if (has)
  {
    v5[24] = self->_addUrlToSAR;
    v5[28] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[25] = self->_fetchBuiltinApps;
    v5[28] |= 2u;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  legacyPreferredLanguages = self->_legacyPreferredLanguages;
  if (legacyPreferredLanguages | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)legacyPreferredLanguages isEqual:?])
    {
      goto LABEL_14;
    }
  }

  preferredLanguages = self->_preferredLanguages;
  if (preferredLanguages | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)preferredLanguages isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_14:
    v7 = 0;
    goto LABEL_15;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = *(equalCopy + 24);
  if (self->_addUrlToSAR)
  {
    if ((*(equalCopy + 24) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_14;
  }

LABEL_8:
  v7 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) != 0)
    {
      if (self->_fetchBuiltinApps)
      {
        if (*(equalCopy + 25))
        {
          goto LABEL_22;
        }
      }

      else if (!*(equalCopy + 25))
      {
LABEL_22:
        v7 = 1;
        goto LABEL_15;
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_legacyPreferredLanguages hash];
  v4 = [(NSMutableArray *)self->_preferredLanguages hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_addUrlToSAR;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v4 ^ v3 ^ v5 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_fetchBuiltinApps;
  return v4 ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSSLegalDocumentsReqMsg *)self addLegacyPreferredLanguages:*(*(&v21 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(fromCopy + 2);
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSSLegalDocumentsReqMsg *)self addPreferredLanguages:*(*(&v17 + 1) + 8 * j), v17];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  v15 = *(fromCopy + 28);
  if (v15)
  {
    self->_addUrlToSAR = *(fromCopy + 24);
    *&self->_has |= 1u;
    v15 = *(fromCopy + 28);
  }

  if ((v15 & 2) != 0)
  {
    self->_fetchBuiltinApps = *(fromCopy + 25);
    *&self->_has |= 2u;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end