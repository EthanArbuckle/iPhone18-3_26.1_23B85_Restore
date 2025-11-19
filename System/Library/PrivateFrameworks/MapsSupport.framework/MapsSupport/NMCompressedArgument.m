@interface NMCompressedArgument
- (BOOL)isEqual:(id)a3;
- (id)_nm_uncompressedArgument;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCompressionType:(id)a3;
- (int)compressionType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsCompressionType:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"ZLIB"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"BZIP2"])
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
  v4 = [(NMCompressedArgument *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_dataValue)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    compressionType = self->_compressionType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_dataValue)
  {
    v5 = v4;
    [v4 setDataValue:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_compressionType;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_dataValue copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  if (*&self->_has)
  {
    *(v5 + 2) = self->_compressionType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  dataValue = self->_dataValue;
  if (dataValue | *(v4 + 2))
  {
    if (![(NSData *)dataValue isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_compressionType == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(NMCompressedArgument *)self setDataValue:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_compressionType = v4[2];
    *&self->_has |= 1u;
  }
}

- (id)_nm_uncompressedArgument
{
  v3 = [(NMCompressedArgument *)self compressionType];
  if (v3 == 2)
  {
    v4 = [(NMCompressedArgument *)self dataValue];
    [v4 bytes];
    v5 = [(NMCompressedArgument *)self dataValue];
    [v5 length];
    GEOBZ2Uncompress();
  }

  else
  {
    if (v3 != 1)
    {
      goto LABEL_6;
    }

    v4 = [(NMCompressedArgument *)self dataValue];
    [v4 bytes];
    v5 = [(NMCompressedArgument *)self dataValue];
    [v5 length];
    GEOZlibUncompress();
  }

LABEL_6:

  return 0;
}

@end