@interface _MPCProtoMigrationDataPayload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)type;
- (unint64_t)hash;
- (void)setType:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoMigrationDataPayload

- (unint64_t)hash
{
  v3 = [(NSString *)self->_type hash];
  v4 = [(NSData *)self->_data hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_revision;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  type = self->_type;
  if (type | *(v4 + 3))
  {
    if (![(NSString *)type isEqual:?])
    {
      goto LABEL_10;
    }
  }

  data = self->_data;
  if (data | *(v4 + 1))
  {
    if (![(NSData *)data isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_revision == *(v4 + 4))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_type copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSData *)self->_data copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_revision;
    *(v5 + 32) |= 1u;
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_type)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_data)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  type = self->_type;
  if (type)
  {
    [v3 setObject:type forKey:@"type"];
  }

  data = self->_data;
  if (data)
  {
    [v4 setObject:data forKey:@"data"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_revision];
    [v4 setObject:v7 forKey:@"revision"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoMigrationDataPayload;
  v4 = [(_MPCProtoMigrationDataPayload *)&v8 description];
  v5 = [(_MPCProtoMigrationDataPayload *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)setType:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

- (uint64_t)type
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

@end