@interface NRPBCompressedData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NRPBCompressedData

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBCompressedData;
  v4 = [(NRPBCompressedData *)&v8 description];
  v5 = [(NRPBCompressedData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_compressed];
    [v3 setObject:v4 forKey:@"compressed"];
  }

  possiblyCompressedData = self->_possiblyCompressedData;
  if (possiblyCompressedData)
  {
    [v3 setObject:possiblyCompressedData forKey:@"possiblyCompressedData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    compressed = self->_compressed;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_possiblyCompressedData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_compressed;
    v4[20] |= 1u;
  }

  if (self->_possiblyCompressedData)
  {
    v5 = v4;
    [v4 setPossiblyCompressedData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_compressed;
    *(v5 + 20) |= 1u;
  }

  v7 = [(NSData *)self->_possiblyCompressedData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = *(v4 + 16);
  if (!self->_compressed)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  if ((*(v4 + 16) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  possiblyCompressedData = self->_possiblyCompressedData;
  if (possiblyCompressedData | *(v4 + 1))
  {
    v7 = [(NSData *)possiblyCompressedData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_8:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_compressed;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_possiblyCompressedData hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[20])
  {
    self->_compressed = v4[16];
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    v5 = v4;
    [(NRPBCompressedData *)self setPossiblyCompressedData:?];
    v4 = v5;
  }
}

@end