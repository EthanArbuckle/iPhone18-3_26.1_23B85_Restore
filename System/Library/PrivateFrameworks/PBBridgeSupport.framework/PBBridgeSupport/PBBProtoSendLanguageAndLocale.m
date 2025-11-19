@interface PBBProtoSendLanguageAndLocale
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppleLanguages:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PBBProtoSendLanguageAndLocale

- (void)addAppleLanguages:(id)a3
{
  v4 = a3;
  appleLanguages = self->_appleLanguages;
  v8 = v4;
  if (!appleLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appleLanguages;
    self->_appleLanguages = v6;

    v4 = v8;
    appleLanguages = self->_appleLanguages;
  }

  [(NSMutableArray *)appleLanguages addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoSendLanguageAndLocale;
  v4 = [(PBBProtoSendLanguageAndLocale *)&v8 description];
  v5 = [(PBBProtoSendLanguageAndLocale *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  appleLanguages = self->_appleLanguages;
  if (appleLanguages)
  {
    [v3 setObject:appleLanguages forKey:@"appleLanguages"];
  }

  appleLocale = self->_appleLocale;
  if (appleLocale)
  {
    [v4 setObject:appleLocale forKey:@"appleLocale"];
  }

  archivedPreferences = self->_archivedPreferences;
  if (archivedPreferences)
  {
    [v4 setObject:archivedPreferences forKey:@"archivedPreferences"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_appleLanguages;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_appleLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_archivedPreferences)
  {
    PBDataWriterWriteDataField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(PBBProtoSendLanguageAndLocale *)self appleLanguagesCount])
  {
    [v9 clearAppleLanguages];
    v4 = [(PBBProtoSendLanguageAndLocale *)self appleLanguagesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PBBProtoSendLanguageAndLocale *)self appleLanguagesAtIndex:i];
        [v9 addAppleLanguages:v7];
      }
    }
  }

  if (self->_appleLocale)
  {
    [v9 setAppleLocale:?];
  }

  v8 = v9;
  if (self->_archivedPreferences)
  {
    [v9 setArchivedPreferences:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_appleLanguages;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{a3, v18}];
        [v5 addAppleLanguages:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_appleLocale copyWithZone:a3];
  v13 = v5[2];
  v5[2] = v12;

  v14 = [(NSData *)self->_archivedPreferences copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((appleLanguages = self->_appleLanguages, !(appleLanguages | v4[1])) || -[NSMutableArray isEqual:](appleLanguages, "isEqual:")) && ((appleLocale = self->_appleLocale, !(appleLocale | v4[2])) || -[NSString isEqual:](appleLocale, "isEqual:")))
  {
    archivedPreferences = self->_archivedPreferences;
    if (archivedPreferences | v4[3])
    {
      v8 = [(NSData *)archivedPreferences isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_appleLanguages hash];
  v4 = [(NSString *)self->_appleLocale hash]^ v3;
  return v4 ^ [(NSData *)self->_archivedPreferences hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4[1];
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

        [(PBBProtoSendLanguageAndLocale *)self addAppleLanguages:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (v4[2])
  {
    [(PBBProtoSendLanguageAndLocale *)self setAppleLocale:?];
  }

  if (v4[3])
  {
    [(PBBProtoSendLanguageAndLocale *)self setArchivedPreferences:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end