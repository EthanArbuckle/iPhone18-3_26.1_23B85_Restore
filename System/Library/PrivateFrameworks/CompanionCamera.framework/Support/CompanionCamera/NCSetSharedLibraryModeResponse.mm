@interface NCSetSharedLibraryModeResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsSharedLibraryMode:(id)mode;
- (int)sharedLibraryMode;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NCSetSharedLibraryModeResponse

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

- (int)StringAsSharedLibraryMode:(id)mode
{
  modeCopy = mode;
  if ([modeCopy isEqualToString:@"Off"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [modeCopy isEqualToString:@"On"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NCSetSharedLibraryModeResponse;
  v3 = [(NCSetSharedLibraryModeResponse *)&v7 description];
  dictionaryRepresentation = [(NCSetSharedLibraryModeResponse *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    sharedLibraryMode = self->_sharedLibraryMode;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_sharedLibraryMode;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_sharedLibraryMode;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_sharedLibraryMode == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_sharedLibraryMode = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end