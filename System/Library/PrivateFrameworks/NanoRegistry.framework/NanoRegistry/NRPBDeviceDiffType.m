@interface NRPBDeviceDiffType
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)setDiff:(uint64_t)a1;
- (void)writeTo:(id)a3;
@end

@implementation NRPBDeviceDiffType

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NRPBDeviceDiffType;
  v4 = [(NRPBDeviceDiffType *)&v8 description];
  v5 = [(NRPBDeviceDiffType *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    changeType = self->_changeType;
    if (changeType >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_changeType];
    }

    else
    {
      v5 = off_1E86DC8E8[changeType];
    }

    [v3 setObject:v5 forKey:@"changeType"];
  }

  diff = self->_diff;
  if (diff)
  {
    v7 = [(NRPBDeviceDiff *)diff dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"diff"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_diff)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)setDiff:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_changeType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NRPBDeviceDiff *)self->_diff copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 24);
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_changeType != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  diff = self->_diff;
  if (diff | *(v4 + 2))
  {
    v7 = [(NRPBDeviceDiff *)diff isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_10:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_changeType;
  }

  else
  {
    v2 = 0;
  }

  return [(NRPBDeviceDiff *)self->_diff hash]^ v2;
}

@end