@interface NMSMediaSyncServiceKeepLocalResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorCode:(id)code;
- (int)StringAsValidatorExceptions:(id)exceptions;
- (int)errorCode;
- (int)validatorExceptionAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NMSMediaSyncServiceKeepLocalResponse

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NMSMediaSyncServiceKeepLocalResponse;
  [(NMSMediaSyncServiceKeepLocalResponse *)&v3 dealloc];
}

- (int)errorCode
{
  if (*&self->_has)
  {
    return self->_errorCode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsErrorCode:(id)code
{
  codeCopy = code;
  if ([codeCopy isEqualToString:@"Generic"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [codeCopy isEqualToString:@"ValidatorException"];
  }

  return v4;
}

- (int)validatorExceptionAtIndex:(unint64_t)index
{
  p_validatorExceptions = &self->_validatorExceptions;
  count = self->_validatorExceptions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_validatorExceptions->list[index];
}

- (int)StringAsValidatorExceptions:(id)exceptions
{
  exceptionsCopy = exceptions;
  if ([exceptionsCopy isEqualToString:@"ExceedsPowerThreshold"])
  {
    v4 = 1;
  }

  else if ([exceptionsCopy isEqualToString:@"ExceedsCellularPowerThreshold"])
  {
    v4 = 2;
  }

  else if ([exceptionsCopy isEqualToString:@"CellularDownloadNotAllowed"])
  {
    v4 = 3;
  }

  else if ([exceptionsCopy isEqualToString:@"NoNetwork"])
  {
    v4 = 4;
  }

  else if ([exceptionsCopy isEqualToString:@"NoStorage"])
  {
    v4 = 5;
  }

  else if ([exceptionsCopy isEqualToString:@"CellularDataNotAllowed"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSMediaSyncServiceKeepLocalResponse;
  v4 = [(NMSMediaSyncServiceKeepLocalResponse *)&v8 description];
  dictionaryRepresentation = [(NMSMediaSyncServiceKeepLocalResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    if (errorCode)
    {
      if (errorCode == 1)
      {
        v5 = @"ValidatorException";
      }

      else
      {
        v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_errorCode];
      }
    }

    else
    {
      v5 = @"Generic";
    }

    [dictionary setObject:v5 forKey:@"errorCode"];
  }

  p_validatorExceptions = &self->_validatorExceptions;
  if (self->_validatorExceptions.count)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (p_validatorExceptions->count)
    {
      v8 = 0;
      do
      {
        v9 = p_validatorExceptions->list[v8] - 1;
        if (v9 >= 6)
        {
          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_validatorExceptions->list[v8]];
        }

        else
        {
          v10 = off_27993DD50[v9];
        }

        [v7 addObject:v10];

        ++v8;
      }

      while (v8 < p_validatorExceptions->count);
    }

    [dictionary setObject:v7 forKey:@"validatorException"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
  }

  p_validatorExceptions = &self->_validatorExceptions;
  if (p_validatorExceptions->count)
  {
    v7 = 0;
    do
    {
      v8 = p_validatorExceptions->list[v7];
      PBDataWriterWriteInt32Field();
      toCopy = v9;
      ++v7;
    }

    while (v7 < p_validatorExceptions->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_errorCode;
    *(toCopy + 36) |= 1u;
  }

  v8 = toCopy;
  if ([(NMSMediaSyncServiceKeepLocalResponse *)self validatorExceptionsCount])
  {
    [v8 clearValidatorExceptions];
    validatorExceptionsCount = [(NMSMediaSyncServiceKeepLocalResponse *)self validatorExceptionsCount];
    if (validatorExceptionsCount)
    {
      v6 = validatorExceptionsCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addValidatorException:{-[NMSMediaSyncServiceKeepLocalResponse validatorExceptionAtIndex:](self, "validatorExceptionAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_errorCode;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_errorCode != *(equalCopy + 8))
    {
      goto LABEL_8;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_9:

  return IsEqual;
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

  return PBRepeatedInt32Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[9])
  {
    self->_errorCode = fromCopy[8];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  validatorExceptionsCount = [fromCopy validatorExceptionsCount];
  if (validatorExceptionsCount)
  {
    v6 = validatorExceptionsCount;
    for (i = 0; i != v6; ++i)
    {
      -[NMSMediaSyncServiceKeepLocalResponse addValidatorException:](self, "addValidatorException:", [v8 validatorExceptionAtIndex:i]);
    }
  }
}

@end