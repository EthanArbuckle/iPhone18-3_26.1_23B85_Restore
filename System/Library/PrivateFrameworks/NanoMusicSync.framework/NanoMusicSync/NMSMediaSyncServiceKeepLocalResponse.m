@interface NMSMediaSyncServiceKeepLocalResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsErrorCode:(id)a3;
- (int)StringAsValidatorExceptions:(id)a3;
- (int)errorCode;
- (int)validatorExceptionAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsErrorCode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Generic"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"ValidatorException"];
  }

  return v4;
}

- (int)validatorExceptionAtIndex:(unint64_t)a3
{
  p_validatorExceptions = &self->_validatorExceptions;
  count = self->_validatorExceptions.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_validatorExceptions->list[a3];
}

- (int)StringAsValidatorExceptions:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"ExceedsPowerThreshold"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ExceedsCellularPowerThreshold"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CellularDownloadNotAllowed"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"NoNetwork"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"NoStorage"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CellularDataNotAllowed"])
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
  v5 = [(NMSMediaSyncServiceKeepLocalResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
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

    [v3 setObject:v5 forKey:@"errorCode"];
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

    [v3 setObject:v7 forKey:@"validatorException"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  p_validatorExceptions = &self->_validatorExceptions;
  if (p_validatorExceptions->count)
  {
    v7 = 0;
    do
    {
      v8 = p_validatorExceptions->list[v7];
      PBDataWriterWriteInt32Field();
      v4 = v9;
      ++v7;
    }

    while (v7 < p_validatorExceptions->count);
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[8] = self->_errorCode;
    *(v4 + 36) |= 1u;
  }

  v8 = v4;
  if ([(NMSMediaSyncServiceKeepLocalResponse *)self validatorExceptionsCount])
  {
    [v8 clearValidatorExceptions];
    v5 = [(NMSMediaSyncServiceKeepLocalResponse *)self validatorExceptionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [v8 addValidatorException:{-[NMSMediaSyncServiceKeepLocalResponse validatorExceptionAtIndex:](self, "validatorExceptionAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_errorCode;
    *(v4 + 36) |= 1u;
  }

  PBRepeatedInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_errorCode != *(v4 + 8))
    {
      goto LABEL_8;
    }
  }

  else if (*(v4 + 36))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[9])
  {
    self->_errorCode = v4[8];
    *&self->_has |= 1u;
  }

  v8 = v4;
  v5 = [v4 validatorExceptionsCount];
  if (v5)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      -[NMSMediaSyncServiceKeepLocalResponse addValidatorException:](self, "addValidatorException:", [v8 validatorExceptionAtIndex:i]);
    }
  }
}

@end