@interface MBSRestoreCompletionInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)readFrom:(id)from;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (BOOL)readFrom:(id)from
{
  position = [from position];
  if (position < [from length])
  {
    do
    {
      if ([from hasError])
      {
        break;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v24 = 0;
        v9 = [from position] + 1;
        if (v9 >= [from position] && (v10 = objc_msgSend(from, "position") + 1, v10 <= objc_msgSend(from, "length")))
        {
          [objc_msgSend(from "data")];
          [from setPosition:{objc_msgSend(from, "position") + 1}];
        }

        else
        {
          [from _setError];
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

      v12 = [from hasError] ? 0 : v8;
LABEL_15:
      if (([from hasError] & 1) != 0 || (v12 & 7) == 4)
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
          v17 = [from position] + 1;
          if (v17 >= [from position] && (v18 = objc_msgSend(from, "position") + 1, v18 <= objc_msgSend(from, "length")))
          {
            [objc_msgSend(from "data")];
            [from setPosition:{objc_msgSend(from, "position") + 1}];
          }

          else
          {
            [from _setError];
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

        v19 = [from hasError] ? 0 : v16;
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

      position2 = [from position];
    }

    while (position2 < [from length]);
  }

  LOBYTE(v21) = [from hasError] ^ 1;
  return v21;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_errorCode;
    *(to + 24) |= 1u;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [to setErrorDescription:errorDescription];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_errorCode;
    *(v5 + 24) |= 1u;
  }

  v6[2] = [(NSString *)self->_errorDescription copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    v6 = *(equal + 24);
    if (*&self->_has)
    {
      if ((*(equal + 24) & 1) == 0 || self->_errorCode != *(equal + 2))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    errorDescription = self->_errorDescription;
    if (errorDescription | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 24))
  {
    self->_errorCode = *(from + 2);
    *&self->_has |= 1u;
  }

  if (*(from + 2))
  {
    [(MBSRestoreCompletionInfo *)self setErrorDescription:?];
  }
}

@end