@interface MBSRestoreCompletionInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MBSRestoreCompletionInfo

- (void)dealloc
{
  [(MBSRestoreCompletionInfo *)self setErrorDescription:0];
  v3.receiver = self;
  v3.super_class = MBSRestoreCompletionInfo;
  [(MBSRestoreCompletionInfo *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = MBSRestoreCompletionInfo;
  return [NSString stringWithFormat:@"%@ %@", [(MBSRestoreCompletionInfo *)&v3 description], [(MBSRestoreCompletionInfo *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    [v3 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_errorCode), @"errorCode"}];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [v3 setObject:errorDescription forKey:@"errorDescription"];
  }

  return v3;
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
        v24 = 0;
        v9 = [a3 position] + 1;
        if (v9 >= [a3 position] && (v10 = objc_msgSend(a3, "position") + 1, v10 <= objc_msgSend(a3, "length")))
        {
          [objc_msgSend(a3 "data")];
          [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
        }

        else
        {
          [a3 _setError];
        }

        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v11 = v7++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a3 hasError] ? 0 : v8;
LABEL_15:
      if (([a3 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3);
      if (v13 == 2)
      {
        String = PBReaderReadString();

        self->_errorDescription = String;
      }

      else if (v13 == 1)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *&self->_has |= 1u;
        while (1)
        {
          v25 = 0;
          v17 = [a3 position] + 1;
          if (v17 >= [a3 position] && (v18 = objc_msgSend(a3, "position") + 1, v18 <= objc_msgSend(a3, "length")))
          {
            [objc_msgSend(a3 "data")];
            [a3 setPosition:{objc_msgSend(a3, "position") + 1}];
          }

          else
          {
            [a3 _setError];
          }

          v16 |= (v25 & 0x7F) << v14;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a3 hasError] ? 0 : v16;
LABEL_34:
        self->_errorCode = v19;
      }

      else
      {
        v21 = PBReaderSkipValueWithTag();
        if (!v21)
        {
          return v21;
        }
      }

      v22 = [a3 position];
    }

    while (v22 < [a3 length]);
  }

  LOBYTE(v21) = [a3 hasError] ^ 1;
  return v21;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint32Field();
  }

  if (self->_errorDescription)
  {

    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_errorCode;
    *(a3 + 24) |= 1u;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [a3 setErrorDescription:errorDescription];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_errorCode;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(NSString *)self->_errorDescription copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(a3 + 24);
    if (*&self->_has)
    {
      if ((*(a3 + 24) & 1) == 0 || self->_errorCode != *(a3 + 2))
      {
        goto LABEL_9;
      }
    }

    else if (*(a3 + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    errorDescription = self->_errorDescription;
    if (errorDescription | *(a3 + 2))
    {

      LOBYTE(v5) = [(NSString *)errorDescription isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_errorCode;
  }

  else
  {
    v2 = 0;
  }

  return [(NSString *)self->_errorDescription hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 24))
  {
    self->_errorCode = *(a3 + 2);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(MBSRestoreCompletionInfo *)self setErrorDescription:?];
  }
}

@end