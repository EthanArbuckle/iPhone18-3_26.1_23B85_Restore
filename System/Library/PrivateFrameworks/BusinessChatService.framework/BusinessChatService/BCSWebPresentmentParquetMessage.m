@interface BCSWebPresentmentParquetMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addName:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSWebPresentmentParquetMessage

- (void)addName:(id)a3
{
  v4 = a3;
  names = self->_names;
  v8 = v4;
  if (!names)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_names;
    self->_names = v6;

    v4 = v8;
    names = self->_names;
  }

  [(NSMutableArray *)names addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSWebPresentmentParquetMessage;
  v4 = [(BCSWebPresentmentParquetMessage *)&v8 description];
  v5 = [(BCSWebPresentmentParquetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  companyId = self->_companyId;
  if (companyId)
  {
    [v3 setObject:companyId forKey:@"company_id"];
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

          v14 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
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

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    while (1)
    {
      if ([a3 hasError])
      {
        return [a3 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v28[0]) = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      v13 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a3 hasError] ^ 1;
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
      if (!PBReaderPlaceMark() || !BCSWebPresentmentLocalizedStringReadFrom(v24, a3))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_46:
      v26 = [a3 position];
      if (v26 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
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
        v20 = [a3 position] + 1;
        if (v20 >= [a3 position] && (v21 = objc_msgSend(a3, "position") + 1, v21 <= objc_msgSend(a3, "length")))
        {
          v22 = [a3 data];
          [v22 getBytes:v28 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
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

      if ([a3 hasError])
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

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_companyId)
  {
    [v9 setCompanyId:?];
  }

  if (self->_businessId)
  {
    [v9 setBusinessId:?];
  }

  if (self->_bcBrandId)
  {
    [v9 setBcBrandId:?];
  }

  if ([(BCSWebPresentmentParquetMessage *)self namesCount])
  {
    [v9 clearNames];
    v4 = [(BCSWebPresentmentParquetMessage *)self namesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCSWebPresentmentParquetMessage *)self nameAtIndex:i];
        [v9 addName:v7];
      }
    }
  }

  if (self->_logo)
  {
    [v9 setLogo:?];
  }

  v8 = v9;
  if (self->_logoFormat)
  {
    [v9 setLogoFormat:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[1] = self->_itemTtl;
    *(v8 + 64) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_companyId copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_businessId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_bcBrandId copyWithZone:a3];
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

        v17 = [*(*(&v24 + 1) + 8 * i) copyWithZone:{a3, v24}];
        [v5 addName:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = [(NSData *)self->_logo copyWithZone:a3];
  v19 = *(v5 + 40);
  *(v5 + 40) = v18;

  v20 = [(NSString *)self->_logoFormat copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  companyId = self->_companyId;
  if (companyId | *(v4 + 4))
  {
    if (![(NSString *)companyId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  businessId = self->_businessId;
  if (businessId | *(v4 + 3))
  {
    if (![(NSString *)businessId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  bcBrandId = self->_bcBrandId;
  if (bcBrandId | *(v4 + 2))
  {
    if (![(NSString *)bcBrandId isEqual:?])
    {
      goto LABEL_18;
    }
  }

  names = self->_names;
  if (names | *(v4 + 7))
  {
    if (![(NSMutableArray *)names isEqual:?])
    {
      goto LABEL_18;
    }
  }

  logo = self->_logo;
  if (logo | *(v4 + 5))
  {
    if (![(NSData *)logo isEqual:?])
    {
      goto LABEL_18;
    }
  }

  logoFormat = self->_logoFormat;
  if (logoFormat | *(v4 + 6))
  {
    if (![(NSString *)logoFormat isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v11 = (*(v4 + 64) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 64) & 1) != 0 && self->_itemTtl == *(v4 + 1))
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

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(BCSWebPresentmentParquetMessage *)self setCompanyId:?];
  }

  if (*(v4 + 3))
  {
    [(BCSWebPresentmentParquetMessage *)self setBusinessId:?];
  }

  if (*(v4 + 2))
  {
    [(BCSWebPresentmentParquetMessage *)self setBcBrandId:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 7);
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

  if (*(v4 + 5))
  {
    [(BCSWebPresentmentParquetMessage *)self setLogo:?];
  }

  if (*(v4 + 6))
  {
    [(BCSWebPresentmentParquetMessage *)self setLogoFormat:?];
  }

  if (*(v4 + 64))
  {
    self->_itemTtl = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end