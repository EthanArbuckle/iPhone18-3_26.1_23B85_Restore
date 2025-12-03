@interface NMCompressedArgument
- (BOOL)isEqual:(id)equal;
- (id)_nm_uncompressedArgument;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompressionType:(id)type;
- (int)compressionType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NMCompressedArgument

- (int)compressionType
{
  if (*&self->_has)
  {
    return self->_compressionType;
  }

  else
  {
    return 1;
  }
}

- (int)StringAsCompressionType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if (([typeCopy isEqualToString:@"ZLIB"] & 1) == 0)
  {
    if ([typeCopy isEqualToString:@"BZIP2"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = NMCompressedArgument;
  v3 = [(NMCompressedArgument *)&v7 description];
  dictionaryRepresentation = [(NMCompressedArgument *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  dataValue = self->_dataValue;
  if (dataValue)
  {
    [v3 setObject:dataValue forKey:@"dataValue"];
  }

  if (*&self->_has)
  {
    compressionType = self->_compressionType;
    if (compressionType == 1)
    {
      v7 = @"ZLIB";
    }

    else if (compressionType == 2)
    {
      v7 = @"BZIP2";
    }

    else
    {
      v7 = [NSString stringWithFormat:@"(unknown: %i)", self->_compressionType];
    }

    [v4 setObject:v7 forKey:@"compressionType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    compressionType = self->_compressionType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_dataValue)
  {
    v5 = toCopy;
    [toCopy setDataValue:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_compressionType;
    *(toCopy + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_dataValue copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_compressionType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(equalCopy + 2))
  {
    if (![(NSData *)dataValue isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) != 0 && self->_compressionType == *(equalCopy + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_dataValue hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_compressionType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(NMCompressedArgument *)self setDataValue:?];
    fromCopy = v5;
  }

  if (fromCopy[6])
  {
    self->_compressionType = fromCopy[2];
    *&self->_has |= 1u;
  }
}

- (id)_nm_uncompressedArgument
{
  compressionType = [(NMCompressedArgument *)self compressionType];
  if (compressionType == 2)
  {
    dataValue = [(NMCompressedArgument *)self dataValue];
    [dataValue bytes];
    dataValue2 = [(NMCompressedArgument *)self dataValue];
    [dataValue2 length];
    GEOBZ2Uncompress();
  }

  else
  {
    if (compressionType != 1)
    {
      goto LABEL_6;
    }

    dataValue = [(NMCompressedArgument *)self dataValue];
    [dataValue bytes];
    dataValue2 = [(NMCompressedArgument *)self dataValue];
    [dataValue2 length];
    GEOZlibUncompress();
  }

LABEL_6:

  return 0;
}

@end