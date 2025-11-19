@interface BCSEmailLogoParquetMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BCSEmailLogoParquetMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSEmailLogoParquetMessage;
  v4 = [(BCSEmailLogoParquetMessage *)&v8 description];
  v5 = [(BCSEmailLogoParquetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  businessId = self->_businessId;
  if (businessId)
  {
    [v3 setObject:businessId forKey:@"business_id"];
  }

  logoFormat = self->_logoFormat;
  if (logoFormat)
  {
    [v4 setObject:logoFormat forKey:@"logo_format"];
  }

  logo = self->_logo;
  if (logo)
  {
    [v4 setObject:logo forKey:@"logo"];
  }

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
        v21 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v21 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v21 & 0x7F) << v6;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        if (v7++ >= 9)
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
      if ((v13 >> 3) == 3)
      {
        v15 = PBReaderReadData();
        v16 = &OBJC_IVAR___BCSEmailLogoParquetMessage__logo;
        goto LABEL_23;
      }

      if (v14 == 2)
      {
        break;
      }

      if (v14 == 1)
      {
        v15 = PBReaderReadString();
        v16 = &OBJC_IVAR___BCSEmailLogoParquetMessage__businessId;
LABEL_23:
        v17 = *v16;
        v18 = *(&self->super.super.isa + v17);
        *(&self->super.super.isa + v17) = v15;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v19 = [a3 position];
      if (v19 >= [a3 length])
      {
        return [a3 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v16 = &OBJC_IVAR___BCSEmailLogoParquetMessage__logoFormat;
    goto LABEL_23;
  }

  return [a3 hasError] ^ 1;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_businessId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_logoFormat)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_logo)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_businessId)
  {
    [v4 setBusinessId:?];
    v4 = v5;
  }

  if (self->_logoFormat)
  {
    [v5 setLogoFormat:?];
    v4 = v5;
  }

  if (self->_logo)
  {
    [v5 setLogo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_businessId copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_logoFormat copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_logo copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((businessId = self->_businessId, !(businessId | v4[1])) || -[NSString isEqual:](businessId, "isEqual:")) && ((logoFormat = self->_logoFormat, !(logoFormat | v4[3])) || -[NSString isEqual:](logoFormat, "isEqual:")))
  {
    logo = self->_logo;
    if (logo | v4[2])
    {
      v8 = [(NSData *)logo isEqual:?];
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
  v3 = [(NSString *)self->_businessId hash];
  v4 = [(NSString *)self->_logoFormat hash]^ v3;
  return v4 ^ [(NSData *)self->_logo hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(BCSEmailLogoParquetMessage *)self setBusinessId:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(BCSEmailLogoParquetMessage *)self setLogoFormat:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BCSEmailLogoParquetMessage *)self setLogo:?];
    v4 = v5;
  }
}

@end