@interface PBBProtoOfflineTerms
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppleLanguages:(id)languages;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PBBProtoOfflineTerms

- (void)addAppleLanguages:(id)languages
{
  languagesCopy = languages;
  appleLanguages = self->_appleLanguages;
  v8 = languagesCopy;
  if (!appleLanguages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appleLanguages;
    self->_appleLanguages = v6;

    languagesCopy = v8;
    appleLanguages = self->_appleLanguages;
  }

  [(NSMutableArray *)appleLanguages addObject:languagesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PBBProtoOfflineTerms;
  v4 = [(PBBProtoOfflineTerms *)&v8 description];
  dictionaryRepresentation = [(PBBProtoOfflineTerms *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  license = self->_license;
  if (license)
  {
    [dictionary setObject:license forKey:@"license"];
  }

  multiterms = self->_multiterms;
  if (multiterms)
  {
    [v4 setObject:multiterms forKey:@"multiterms"];
  }

  warranty = self->_warranty;
  if (warranty)
  {
    [v4 setObject:warranty forKey:@"warranty"];
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    [v4 setObject:languageCode forKey:@"languageCode"];
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    [v4 setObject:countryCode forKey:@"countryCode"];
  }

  appleLanguages = self->_appleLanguages;
  if (appleLanguages)
  {
    [v4 setObject:appleLanguages forKey:@"appleLanguages"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_license)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_multiterms)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_warranty)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_languageCode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
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

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_license)
  {
    [toCopy setLicense:?];
  }

  if (self->_multiterms)
  {
    [toCopy setMultiterms:?];
  }

  if (self->_warranty)
  {
    [toCopy setWarranty:?];
  }

  if (self->_languageCode)
  {
    [toCopy setLanguageCode:?];
  }

  if (self->_countryCode)
  {
    [toCopy setCountryCode:?];
  }

  if ([(PBBProtoOfflineTerms *)self appleLanguagesCount])
  {
    [toCopy clearAppleLanguages];
    appleLanguagesCount = [(PBBProtoOfflineTerms *)self appleLanguagesCount];
    if (appleLanguagesCount)
    {
      v5 = appleLanguagesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PBBProtoOfflineTerms *)self appleLanguagesAtIndex:i];
        [toCopy addAppleLanguages:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_license copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSData *)self->_multiterms copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSData *)self->_warranty copyWithZone:zone];
  v11 = v5[6];
  v5[6] = v10;

  v12 = [(NSString *)self->_languageCode copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_countryCode copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_appleLanguages;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{zone, v24}];
        [v5 addAppleLanguages:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((license = self->_license, !(license | equalCopy[4])) || -[NSData isEqual:](license, "isEqual:")) && ((multiterms = self->_multiterms, !(multiterms | equalCopy[5])) || -[NSData isEqual:](multiterms, "isEqual:")) && ((warranty = self->_warranty, !(warranty | equalCopy[6])) || -[NSData isEqual:](warranty, "isEqual:")) && ((languageCode = self->_languageCode, !(languageCode | equalCopy[3])) || -[NSString isEqual:](languageCode, "isEqual:")) && ((countryCode = self->_countryCode, !(countryCode | equalCopy[2])) || -[NSString isEqual:](countryCode, "isEqual:")))
  {
    appleLanguages = self->_appleLanguages;
    if (appleLanguages | equalCopy[1])
    {
      v11 = [(NSMutableArray *)appleLanguages isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_license hash];
  v4 = [(NSData *)self->_multiterms hash]^ v3;
  v5 = [(NSData *)self->_warranty hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_languageCode hash];
  v7 = [(NSString *)self->_countryCode hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_appleLanguages hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(PBBProtoOfflineTerms *)self setLicense:?];
  }

  if (*(fromCopy + 5))
  {
    [(PBBProtoOfflineTerms *)self setMultiterms:?];
  }

  if (*(fromCopy + 6))
  {
    [(PBBProtoOfflineTerms *)self setWarranty:?];
  }

  if (*(fromCopy + 3))
  {
    [(PBBProtoOfflineTerms *)self setLanguageCode:?];
  }

  if (*(fromCopy + 2))
  {
    [(PBBProtoOfflineTerms *)self setCountryCode:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
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

        [(PBBProtoOfflineTerms *)self addAppleLanguages:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end