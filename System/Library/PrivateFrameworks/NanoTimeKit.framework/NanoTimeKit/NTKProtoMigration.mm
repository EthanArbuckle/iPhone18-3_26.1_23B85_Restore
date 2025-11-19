@interface NTKProtoMigration
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NTKProtoMigration

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NTKProtoMigration;
  v4 = [(NTKProtoMigration *)&v8 description];
  v5 = [(NTKProtoMigration *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  from = self->_from;
  if (from)
  {
    [v3 setObject:from forKey:@"from"];
  }

  to = self->_to;
  if (to)
  {
    [v4 setObject:to forKey:@"to"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_from)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_to)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_from)
  {
    [v4 setFrom:?];
    v4 = v5;
  }

  if (self->_to)
  {
    [v5 setTo:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_from copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_to copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((from = self->_from, !(from | v4[1])) || -[NSString isEqual:](from, "isEqual:")))
  {
    to = self->_to;
    if (to | v4[2])
    {
      v7 = [(NSString *)to isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[1])
  {
    [(NTKProtoMigration *)self setFrom:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NTKProtoMigration *)self setTo:?];
    v4 = v5;
  }
}

@end