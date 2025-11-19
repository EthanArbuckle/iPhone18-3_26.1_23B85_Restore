@interface NCSetSharedLibraryModeRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSharedLibraryMode:(id)a3;
- (int)sharedLibraryMode;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NCSetSharedLibraryModeRequest

- (int)sharedLibraryMode
{
  if (*&self->_has)
  {
    return self->_sharedLibraryMode;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsSharedLibraryMode:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"On"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetSharedLibraryModeRequest;
  v3 = [(NCSetSharedLibraryModeRequest *)&v7 description];
  v4 = [(NCSetSharedLibraryModeRequest *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    sharedLibraryMode = self->_sharedLibraryMode;
    if (sharedLibraryMode)
    {
      if (sharedLibraryMode == 1)
      {
        v5 = @"On";
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_sharedLibraryMode];
      }
    }

    else
    {
      v5 = @"Off";
    }

    [v3 setObject:v5 forKey:@"sharedLibraryMode"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    sharedLibraryMode = self->_sharedLibraryMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_sharedLibraryMode;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_sharedLibraryMode;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_sharedLibraryMode == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_sharedLibraryMode;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_sharedLibraryMode = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end