@interface BCSWebPresentmentParquetMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addName:(id)name;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSWebPresentmentParquetMessage

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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSWebPresentmentParquetMessage;
  v4 = [(BCSWebPresentmentParquetMessage *)&v8 description];
  dictionaryRepresentation = [(BCSWebPresentmentParquetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  companyId = self->_companyId;
  if (companyId)
  {
    [dictionary setObject:companyId forKey:@"company_id"];
  }

  businessId = self->_businessId;
  if (businessId)
  {
    [v4 setObject:businessId forKey:@"business_id"];
  }

  bcBrandId = self->_bcBrandId;
  if (bcBrandId)
  {
    [v4 setObject:bcBrandId forKey:@"bc_brand_id"];
  }

  if ([(NSMutableArray *)self->_names count])
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_names, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = self->_names;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:dictionaryRepresentation];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v11);
    }

    [v4 setObject:v8 forKey:@"name"];
  }

  logo = self->_logo;
  if (logo)
  {
    [v4 setObject:logo forKey:@"logo"];
  }

  logoFormat = self->_logoFormat;
  if (logoFormat)
  {
    [v4 setObject:logoFormat forKey:@"logo_format"];
  }

  if (*&self->_has)
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_itemTtl];
    [v4 setObject:v17 forKey:@"itemTtl"];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    while (1)
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
        LOBYTE(v28[0]) = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v8 |= (v28[0] & 0x7F) << v6;
        if ((v28[0] & 0x80) == 0)
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
        switch(v14)
        {
          case 1:
            v15 = PBReaderReadString();
            v16 = 32;
            goto LABEL_45;
          case 2:
            v15 = PBReaderReadString();
            v16 = 24;
            goto LABEL_45;
          case 3:
            v15 = PBReaderReadString();
            v16 = 16;
            goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v14 > 5)
      {
        break;
      }

      if (v14 != 4)
      {
        if (v14 == 5)
        {
          v15 = PBReaderReadData();
          v16 = 40;
LABEL_45:
          v25 = *(&self->super.super.isa + v16);
          *(&self->super.super.isa + v16) = v15;

          goto LABEL_46;
        }

        goto LABEL_38;
      }

      v24 = objc_alloc_init(BCSWebPresentmentLocalizedString);
      [(BCSWebPresentmentParquetMessage *)self addName:v24];
      v28[0] = 0;
      v28[1] = 0;
      if (!PBReaderPlaceMark() || !BCSWebPresentmentLocalizedStringReadFrom(v24, from))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    if (v14 == 6)
    {
      v15 = PBReaderReadString();
      v16 = 48;
      goto LABEL_45;
    }

    if (v14 == 7)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      *&self->_has |= 1u;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v20 = [from position] + 1;
        if (v20 >= [from position] && (v21 = objc_msgSend(from, "position") + 1, v21 <= objc_msgSend(from, "length")))
        {
          data2 = [from data];
          [data2 getBytes:v28 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
        }

        v19 |= (v28[0] & 0x7F) << v17;
        if ((v28[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v12 = v18++ >= 9;
        if (v12)
        {
          v23 = 0;
          goto LABEL_51;
        }
      }

      if ([from hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_51:
      self->_itemTtl = v23;
      goto LABEL_46;
    }

LABEL_38:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_46;
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_companyId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_businessId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bcBrandId)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_names;
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
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_logo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_logoFormat)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    itemTtl = self->_itemTtl;
    PBDataWriterWriteUint64Field();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_companyId)
  {
    [toCopy setCompanyId:?];
  }

  if (self->_businessId)
  {
    [toCopy setBusinessId:?];
  }

  if (self->_bcBrandId)
  {
    [toCopy setBcBrandId:?];
  }

  if ([(BCSWebPresentmentParquetMessage *)self namesCount])
  {
    [toCopy clearNames];
    namesCount = [(BCSWebPresentmentParquetMessage *)self namesCount];
    if (namesCount)
    {
      v5 = namesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCSWebPresentmentParquetMessage *)self nameAtIndex:i];
        [toCopy addName:v7];
      }
    }
  }

  if (self->_logo)
  {
    [toCopy setLogo:?];
  }

  v8 = toCopy;
  if (self->_logoFormat)
  {
    [toCopy setLogoFormat:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[1] = self->_itemTtl;
    *(v8 + 64) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_companyId copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_businessId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_bcBrandId copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = self->_names;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v25;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v25 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{zone, v24}];
        [v5 addName:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSData *)self->_logo copyWithZone:zone];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(NSString *)self->_logoFormat copyWithZone:zone];
  v21 = *(v5 + 48);
  *(v5 + 48) = v20;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_itemTtl;
    *(v5 + 64) |= 1u;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  companyId = self->_companyId;
  if (companyId | *(equalCopy + 4))
  {
    if (![(NSString *)companyId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  businessId = self->_businessId;
  if (businessId | *(equalCopy + 3))
  {
    if (![(NSString *)businessId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  bcBrandId = self->_bcBrandId;
  if (bcBrandId | *(equalCopy + 2))
  {
    if (![(NSString *)bcBrandId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  names = self->_names;
  if (names | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)names isEqual:?])
    {
      goto LABEL_18;
    }
  }

  logo = self->_logo;
  if (logo | *(equalCopy + 5))
  {
    if (![(NSData *)logo isEqual:?])
    {
      goto LABEL_18;
    }
  }

  logoFormat = self->_logoFormat;
  if (logoFormat | *(equalCopy + 6))
  {
    if (![(NSString *)logoFormat isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v11 = (*(equalCopy + 64) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) != 0 && self->_itemTtl == *(equalCopy + 1))
    {
      v11 = 1;
      goto LABEL_19;
    }

LABEL_18:
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_companyId hash];
  v4 = [(NSString *)self->_businessId hash];
  v5 = [(NSString *)self->_bcBrandId hash];
  v6 = [(NSMutableArray *)self->_names hash];
  v7 = [(NSData *)self->_logo hash];
  v8 = [(NSString *)self->_logoFormat hash];
  if (*&self->_has)
  {
    v9 = 2654435761u * self->_itemTtl;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(BCSWebPresentmentParquetMessage *)self setCompanyId:?];
  }

  if (*(fromCopy + 3))
  {
    [(BCSWebPresentmentParquetMessage *)self setBusinessId:?];
  }

  if (*(fromCopy + 2))
  {
    [(BCSWebPresentmentParquetMessage *)self setBcBrandId:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 7);
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

        [(BCSWebPresentmentParquetMessage *)self addName:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 5))
  {
    [(BCSWebPresentmentParquetMessage *)self setLogo:?];
  }

  if (*(fromCopy + 6))
  {
    [(BCSWebPresentmentParquetMessage *)self setLogoFormat:?];
  }

  if (*(fromCopy + 64))
  {
    self->_itemTtl = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end