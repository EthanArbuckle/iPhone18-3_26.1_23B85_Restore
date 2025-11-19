@interface HMDRemoteEventRouterProtoFragmentedMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFragmentNumber:(BOOL)a3;
- (void)setHasRouterVersion:(BOOL)a3;
- (void)setHasTotalSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMDRemoteEventRouterProtoFragmentedMessage

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 3))
  {
    v6 = v4;
    [(HMDRemoteEventRouterProtoFragmentedMessage *)self setFragmentData:?];
    v4 = v6;
  }

  v5 = *(v4 + 40);
  if ((v5 & 4) != 0)
  {
    self->_fragmentNumber = *(v4 + 8);
    *&self->_has |= 4u;
    v5 = *(v4 + 40);
    if ((v5 & 2) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*(v4 + 40) & 2) == 0)
  {
    goto LABEL_5;
  }

  self->_totalSize = *(v4 + 2);
  *&self->_has |= 2u;
  v5 = *(v4 + 40);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  self->_totalFragments = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 40) & 8) != 0)
  {
LABEL_7:
    self->_routerVersion = *(v4 + 9);
    *&self->_has |= 8u;
  }

LABEL_8:
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_fragmentData hash];
  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_fragmentNumber;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761u * self->_totalSize;
      if (*&self->_has)
      {
        goto LABEL_4;
      }

LABEL_8:
      v6 = 0;
      if ((*&self->_has & 8) != 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      v7 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v6 = 2654435761u * self->_totalFragments;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v7 = 2654435761 * self->_routerVersion;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  fragmentData = self->_fragmentData;
  if (fragmentData | *(v4 + 3))
  {
    if (![(NSData *)fragmentData isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 40) & 4) == 0 || self->_fragmentNumber != *(v4 + 8))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 40) & 4) != 0)
  {
LABEL_23:
    v6 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 40) & 2) == 0 || self->_totalSize != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 40) & 2) != 0)
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_totalFragments != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 40))
  {
    goto LABEL_23;
  }

  v6 = (*(v4 + 40) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 40) & 8) == 0 || self->_routerVersion != *(v4 + 9))
    {
      goto LABEL_23;
    }

    v6 = 1;
  }

LABEL_24:

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_fragmentData copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 32) = self->_fragmentNumber;
    *(v5 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_totalFragments;
      *(v5 + 40) |= 1u;
      if ((*&self->_has & 8) == 0)
      {
        return v5;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_totalSize;
  *(v5 + 40) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 8) != 0)
  {
LABEL_5:
    *(v5 + 36) = self->_routerVersion;
    *(v5 + 40) |= 8u;
  }

  return v5;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_fragmentData)
  {
    v6 = v4;
    [v4 setFragmentData:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 8) = self->_fragmentNumber;
    *(v4 + 40) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 2) = self->_totalSize;
  *(v4 + 40) |= 2u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  *(v4 + 1) = self->_totalFragments;
  *(v4 + 40) |= 1u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    *(v4 + 9) = self->_routerVersion;
    *(v4 + 40) |= 8u;
  }

LABEL_8:
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_fragmentData)
  {
    PBDataWriterWriteDataField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    fragmentNumber = self->_fragmentNumber;
    PBDataWriterWriteUint32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  totalSize = self->_totalSize;
  PBDataWriterWriteUint64Field();
  v4 = v10;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  totalFragments = self->_totalFragments;
  PBDataWriterWriteUint64Field();
  v4 = v10;
  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    routerVersion = self->_routerVersion;
    PBDataWriterWriteUint32Field();
    v4 = v10;
  }

LABEL_8:
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
        v48 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          v11 = [a3 data];
          [v11 getBytes:&v48 range:{objc_msgSend(a3, "position"), 1}];

          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v48 & 0x7F) << v6;
        if ((v48 & 0x80) == 0)
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
        break;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) <= 2)
      {
        if (v14 != 1)
        {
          if (v14 != 2)
          {
LABEL_60:
            v43 = PBReaderSkipValueWithTag();
            if (!v43)
            {
              return v43;
            }

            goto LABEL_80;
          }

          v22 = 0;
          v23 = 0;
          v24 = 0;
          *&self->_has |= 4u;
          while (1)
          {
            v50 = 0;
            v25 = [a3 position] + 1;
            if (v25 >= [a3 position] && (v26 = objc_msgSend(a3, "position") + 1, v26 <= objc_msgSend(a3, "length")))
            {
              v27 = [a3 data];
              [v27 getBytes:&v50 range:{objc_msgSend(a3, "position"), 1}];

              [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
            }

            else
            {
              [a3 _setError];
            }

            v24 |= (v50 & 0x7F) << v22;
            if ((v50 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v12 = v23++ >= 9;
            if (v12)
            {
              v21 = 0;
              goto LABEL_78;
            }
          }

          if ([a3 hasError])
          {
            v21 = 0;
          }

          else
          {
            v21 = v24;
          }

LABEL_78:
          v45 = 32;
          goto LABEL_79;
        }

        v41 = PBReaderReadData();
        fragmentData = self->_fragmentData;
        self->_fragmentData = v41;
      }

      else
      {
        switch(v14)
        {
          case 3:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *&self->_has |= 2u;
            while (1)
            {
              v52 = 0;
              v31 = [a3 position] + 1;
              if (v31 >= [a3 position] && (v32 = objc_msgSend(a3, "position") + 1, v32 <= objc_msgSend(a3, "length")))
              {
                v33 = [a3 data];
                [v33 getBytes:&v52 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v30 |= (v52 & 0x7F) << v28;
              if ((v52 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v12 = v29++ >= 9;
              if (v12)
              {
                v34 = 0;
                goto LABEL_65;
              }
            }

            if ([a3 hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v30;
            }

LABEL_65:
            v44 = 16;
            break;
          case 4:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *&self->_has |= 1u;
            while (1)
            {
              v51 = 0;
              v38 = [a3 position] + 1;
              if (v38 >= [a3 position] && (v39 = objc_msgSend(a3, "position") + 1, v39 <= objc_msgSend(a3, "length")))
              {
                v40 = [a3 data];
                [v40 getBytes:&v51 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v37 |= (v51 & 0x7F) << v35;
              if ((v51 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v12 = v36++ >= 9;
              if (v12)
              {
                v34 = 0;
                goto LABEL_69;
              }
            }

            if ([a3 hasError])
            {
              v34 = 0;
            }

            else
            {
              v34 = v37;
            }

LABEL_69:
            v44 = 8;
            break;
          case 5:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *&self->_has |= 8u;
            while (1)
            {
              v49 = 0;
              v18 = [a3 position] + 1;
              if (v18 >= [a3 position] && (v19 = objc_msgSend(a3, "position") + 1, v19 <= objc_msgSend(a3, "length")))
              {
                v20 = [a3 data];
                [v20 getBytes:&v49 range:{objc_msgSend(a3, "position"), 1}];

                [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
              }

              else
              {
                [a3 _setError];
              }

              v17 |= (v49 & 0x7F) << v15;
              if ((v49 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v12 = v16++ >= 9;
              if (v12)
              {
                v21 = 0;
                goto LABEL_74;
              }
            }

            if ([a3 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_74:
            v45 = 36;
LABEL_79:
            *(&self->super.super.isa + v45) = v21;
            goto LABEL_80;
          default:
            goto LABEL_60;
        }

        *(&self->super.super.isa + v44) = v34;
      }

LABEL_80:
      v46 = [a3 position];
    }

    while (v46 < [a3 length]);
  }

  LOBYTE(v43) = [a3 hasError] ^ 1;
  return v43;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  fragmentData = self->_fragmentData;
  if (fragmentData)
  {
    [v3 setObject:fragmentData forKey:@"fragmentData"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fragmentNumber];
    [v4 setObject:v9 forKey:@"fragmentNumber"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalSize];
  [v4 setObject:v10 forKey:@"totalSize"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_totalFragments];
  [v4 setObject:v11 forKey:@"totalFragments"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_routerVersion];
    [v4 setObject:v7 forKey:@"routerVersion"];
  }

LABEL_8:

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HMDRemoteEventRouterProtoFragmentedMessage;
  v4 = [(HMDRemoteEventRouterProtoFragmentedMessage *)&v8 description];
  v5 = [(HMDRemoteEventRouterProtoFragmentedMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setHasRouterVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasTotalSize:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasFragmentNumber:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

@end