@interface BCSEmailLogoParquetMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSEmailLogoParquetMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSEmailLogoParquetMessage;
  v4 = [(BCSEmailLogoParquetMessage *)&v8 description];
  dictionaryRepresentation = [(BCSEmailLogoParquetMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  businessId = self->_businessId;
  if (businessId)
  {
    [dictionary setObject:businessId forKey:@"business_id"];
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
        v21 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          data = [from data];
          [data getBytes:&v21 range:{objc_msgSend(from, "position"), 1}];

          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v13 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [from hasError] ^ 1;
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
      position2 = [from position];
      if (position2 >= [from length])
      {
        return [from hasError] ^ 1;
      }
    }

    v15 = PBReaderReadString();
    v16 = &OBJC_IVAR___BCSEmailLogoParquetMessage__logoFormat;
    goto LABEL_23;
  }

  return [from hasError] ^ 1;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_businessId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_logoFormat)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_logo)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_businessId)
  {
    [toCopy setBusinessId:?];
    toCopy = v5;
  }

  if (self->_logoFormat)
  {
    [v5 setLogoFormat:?];
    toCopy = v5;
  }

  if (self->_logo)
  {
    [v5 setLogo:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_businessId copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_logoFormat copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_logo copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((businessId = self->_businessId, !(businessId | equalCopy[1])) || -[NSString isEqual:](businessId, "isEqual:")) && ((logoFormat = self->_logoFormat, !(logoFormat | equalCopy[3])) || -[NSString isEqual:](logoFormat, "isEqual:")))
  {
    logo = self->_logo;
    if (logo | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(BCSEmailLogoParquetMessage *)self setBusinessId:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(BCSEmailLogoParquetMessage *)self setLogoFormat:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BCSEmailLogoParquetMessage *)self setLogo:?];
    fromCopy = v5;
  }
}

@end