@interface HMDCameraClipsQuotaDisableCameraMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDCameraClipsQuotaDisableCameraMessage

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(HMDCameraClipsQuotaDisableCameraMessage *)self setZoneName:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    zoneName = self->_zoneName;
    if (zoneName | v4[1])
    {
      v6 = [(NSString *)zoneName isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_zoneName copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  zoneName = self->_zoneName;
  if (zoneName)
  {
    [a3 setZoneName:zoneName];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_zoneName)
  {
    PBDataWriterWriteStringField();
  }
}

- (BOOL)readFrom:(id)a3
{
  v5 = [a3 position];
  if (v5 < [a3 length])
  {
    do
    {
      if ([a3 hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v19 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v19 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v19 & 0x7F) << v6;
        if ((v19 & 0x80) == 0)
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
        break;
      }

      if ((v13 >> 3) == 1)
      {
        v14 = PBReaderReadString();
        zoneName = self->_zoneName;
        self->_zoneName = v14;
      }

      else
      {
        v16 = PBReaderSkipValueWithTag();
        if (!v16)
        {
          return v16;
        }
      }

      v17 = [a3 position];
    }

    while (v17 < [a3 length]);
  }

  LOBYTE(v16) = [a3 hasError] ^ 1;
  return v16;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  zoneName = self->_zoneName;
  if (zoneName)
  {
    [v3 setObject:zoneName forKey:@"zoneName"];
  }

  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDCameraClipsQuotaDisableCameraMessage;
  v4 = [(HMDCameraClipsQuotaDisableCameraMessage *)&v8 description];
  v5 = [(HMDCameraClipsQuotaDisableCameraMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end