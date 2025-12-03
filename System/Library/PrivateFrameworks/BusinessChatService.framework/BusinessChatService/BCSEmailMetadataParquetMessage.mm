@interface BCSEmailMetadataParquetMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDisplayName:(id)name;
- (void)addName:(id)name;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsVerified:(BOOL)verified;
- (void)writeTo:(id)to;
@end

@implementation BCSEmailMetadataParquetMessage

- (void)addName:(id)name
{
  nameCopy = name;
  names = self->_names;
  v8 = nameCopy;
  if (!names)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_names;
    self->_names = v6;

    nameCopy = v8;
    names = self->_names;
  }

  [(NSMutableArray *)names addObject:nameCopy];
}

- (void)addDisplayName:(id)name
{
  nameCopy = name;
  displayNames = self->_displayNames;
  v8 = nameCopy;
  if (!displayNames)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_displayNames;
    self->_displayNames = v6;

    nameCopy = v8;
    displayNames = self->_displayNames;
  }

  [(NSMutableArray *)displayNames addObject:nameCopy];
}

- (void)setHasIsVerified:(BOOL)verified
{
  if (verified)
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
  v8.super_class = BCSEmailMetadataParquetMessage;
  v4 = [(BCSEmailMetadataParquetMessage *)&v8 description];
  dictionaryRepresentation = [(BCSEmailMetadataParquetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_keyHash];
    [dictionary setObject:v4 forKey:@"key_hash"];
  }

  key = self->_key;
  if (key)
  {
    [dictionary setObject:key forKey:@"key"];
  }

  if ([(NSMutableArray *)self->_names count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_names, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v7 = self->_names;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v30;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_displayNames count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_displayNames, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = self->_displayNames;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v25 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"display_name"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v20 = [MEMORY[0x277CCABB0] numberWithBool:self->_isVerified];
    [dictionary setObject:v20 forKey:@"is_verified"];
  }

  businessId = self->_businessId;
  if (businessId)
  {
    [dictionary setObject:businessId forKey:@"business_id"];
  }

  companyId = self->_companyId;
  if (companyId)
  {
    [dictionary setObject:companyId forKey:@"company_id"];
  }

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        return [from hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v35[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v35 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v35[0] & 0x7F) << v6;
        if ((v35[0] & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_15;
        }
      }

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 3)
      {
        if (v14 == 1)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          *&self->_has |= 1u;
          while (1)
          {
            LOBYTE(v35[0]) = 0;
            v28 = [from position] + 1;
            if (v28 >= [from position] && (v29 = objc_msgSend(from, "position") + 1, v29 <= objc_msgSend(from, "length")))
            {
              data2 = [from data];
              [data2 getBytes:v35 range:{objc_msgSend(from, "position"), 1}];

              [from setPosition:{objc_msgSend(from, "position") + 1}];
            }

            else
            {
              [from _setError];
            }

            v27 |= (v35[0] & 0x7F) << v25;
            if ((v35[0] & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v12 = v26++ >= 9;
            if (v12)
            {
              v31 = 0;
              goto LABEL_58;
            }
          }

          if ([from hasError])
          {
            v31 = 0;
          }

          else
          {
            v31 = v27;
          }

LABEL_58:
          self->_keyHash = v31;
          goto LABEL_61;
        }

        if (v14 == 2)
        {
          v23 = PBReaderReadString();
          v24 = 40;
          goto LABEL_54;
        }

        if (v14 != 3)
        {
          goto LABEL_46;
        }

        v22 = objc_alloc_init(BCSEmailLocalizedString);
        [(BCSEmailMetadataParquetMessage *)self addName:v22];
      }

      else
      {
        if (v14 > 5)
        {
          if (v14 == 6)
          {
            v23 = PBReaderReadString();
            v24 = 16;
            goto LABEL_54;
          }

          if (v14 == 7)
          {
            v23 = PBReaderReadString();
            v24 = 24;
LABEL_54:
            v32 = *(&self->super.super.isa + v24);
            *(&self->super.super.isa + v24) = v23;

            goto LABEL_61;
          }

          goto LABEL_46;
        }

        if (v14 != 4)
        {
          if (v14 == 5)
          {
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              LOBYTE(v35[0]) = 0;
              v18 = [from position] + 1;
              if (v18 >= [from position] && (v19 = objc_msgSend(from, "position") + 1, v19 <= objc_msgSend(from, "length")))
              {
                data3 = [from data];
                [data3 getBytes:v35 range:{objc_msgSend(from, "position"), 1}];

                [from setPosition:{objc_msgSend(from, "position") + 1}];
              }

              else
              {
                [from _setError];
              }

              v17 |= (v35[0] & 0x7F) << v15;
              if ((v35[0] & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v12 = v16++ >= 9;
              if (v12)
              {
                LOBYTE(v21) = 0;
                goto LABEL_60;
              }
            }

            v21 = (v17 != 0) & ~[from hasError];
LABEL_60:
            self->_isVerified = v21;
            goto LABEL_61;
          }

LABEL_46:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_61;
        }

        v22 = objc_alloc_init(BCSEmailLocalizedString);
        [(BCSEmailMetadataParquetMessage *)self addDisplayName:v22];
      }

      v35[0] = 0;
      v35[1] = 0;
      if (!PBReaderPlaceMark() || !BCSEmailLocalizedStringReadFrom(v22, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_61:
      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    keyHash = self->_keyHash;
    PBDataWriterWriteInt64Field();
  }

  if (self->_key)
  {
    PBDataWriterWriteStringField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_names;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_displayNames;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  if ((*&self->_has & 2) != 0)
  {
    isVerified = self->_isVerified;
    PBDataWriterWriteBOOLField();
  }

  if (self->_businessId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_companyId)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_keyHash;
    *(toCopy + 60) |= 1u;
  }

  v14 = toCopy;
  if (self->_key)
  {
    [toCopy setKey:?];
  }

  if ([(BCSEmailMetadataParquetMessage *)self namesCount])
  {
    [v14 clearNames];
    namesCount = [(BCSEmailMetadataParquetMessage *)self namesCount];
    if (namesCount)
    {
      v6 = namesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BCSEmailMetadataParquetMessage *)self nameAtIndex:i];
        [v14 addName:v8];
      }
    }
  }

  if ([(BCSEmailMetadataParquetMessage *)self displayNamesCount])
  {
    [v14 clearDisplayNames];
    displayNamesCount = [(BCSEmailMetadataParquetMessage *)self displayNamesCount];
    if (displayNamesCount)
    {
      v10 = displayNamesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BCSEmailMetadataParquetMessage *)self displayNameAtIndex:j];
        [v14 addDisplayName:v12];
      }
    }
  }

  v13 = v14;
  if ((*&self->_has & 2) != 0)
  {
    v14[56] = self->_isVerified;
    v14[60] |= 2u;
  }

  if (self->_businessId)
  {
    [v14 setBusinessId:?];
    v13 = v14;
  }

  if (self->_companyId)
  {
    [v14 setCompanyId:?];
    v13 = v14;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_keyHash;
    *(v5 + 60) |= 1u;
  }

  v7 = [(NSString *)self->_key copyWithZone:zone];
  v8 = *(v6 + 40);
  *(v6 + 40) = v7;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v9 = self->_names;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v32;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v32 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v31 + 1) + 8 * i) copyWithZone:zone];
        [v6 addName:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v11);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = self->_displayNames;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v27 + 1) + 8 * j) copyWithZone:{zone, v27}];
        [v6 addDisplayName:v20];
      }

      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v17);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 56) = self->_isVerified;
    *(v6 + 60) |= 2u;
  }

  v21 = [(NSString *)self->_businessId copyWithZone:zone, v27];
  v22 = *(v6 + 16);
  *(v6 + 16) = v21;

  v23 = [(NSString *)self->_companyId copyWithZone:zone];
  v24 = *(v6 + 24);
  *(v6 + 24) = v23;

  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(equalCopy + 60);
  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_keyHash != *(equalCopy + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_20;
  }

  key = self->_key;
  if (key | *(equalCopy + 5) && ![(NSString *)key isEqual:?])
  {
    goto LABEL_20;
  }

  names = self->_names;
  if (names | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)names isEqual:?])
    {
      goto LABEL_20;
    }
  }

  displayNames = self->_displayNames;
  if (displayNames | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)displayNames isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v9 = *(equalCopy + 60);
  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 60) & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    v12 = 0;
    goto LABEL_21;
  }

  if ((*(equalCopy + 60) & 2) == 0)
  {
    goto LABEL_20;
  }

  v14 = *(equalCopy + 56);
  if (self->_isVerified)
  {
    if ((*(equalCopy + 56) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_20;
  }

LABEL_15:
  businessId = self->_businessId;
  if (businessId | *(equalCopy + 2) && ![(NSString *)businessId isEqual:?])
  {
    goto LABEL_20;
  }

  companyId = self->_companyId;
  if (companyId | *(equalCopy + 3))
  {
    v12 = [(NSString *)companyId isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_21:

  return v12;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_keyHash;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_key hash];
  v5 = [(NSMutableArray *)self->_names hash];
  v6 = [(NSMutableArray *)self->_displayNames hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_isVerified;
  }

  else
  {
    v7 = 0;
  }

  v8 = v4 ^ v3 ^ v5 ^ v6;
  v9 = v7 ^ [(NSString *)self->_businessId hash];
  return v8 ^ v9 ^ [(NSString *)self->_companyId hash];
}

- (void)mergeFrom:(id)from
{
  v27 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 60))
  {
    self->_keyHash = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[5])
  {
    [(BCSEmailMetadataParquetMessage *)self setKey:?];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v5 + 6);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BCSEmailMetadataParquetMessage *)self addName:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v5 + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BCSEmailMetadataParquetMessage *)self addDisplayName:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  if ((*(v5 + 60) & 2) != 0)
  {
    self->_isVerified = *(v5 + 56);
    *&self->_has |= 2u;
  }

  if (*(v5 + 2))
  {
    [(BCSEmailMetadataParquetMessage *)self setBusinessId:?];
  }

  if (*(v5 + 3))
  {
    [(BCSEmailMetadataParquetMessage *)self setCompanyId:?];
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end