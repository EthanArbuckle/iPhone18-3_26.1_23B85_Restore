@interface SYLogMultiSuspendableQueueState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYLogMultiSuspendableQueueState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogMultiSuspendableQueueState;
  v4 = [(SYLogMultiSuspendableQueueState *)&v8 description];
  v5 = [(SYLogMultiSuspendableQueueState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_resumeCount];
    [v3 setObject:v4 forKey:@"resumeCount"];
  }

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  target = self->_target;
  if (target)
  {
    [v3 setObject:target forKey:@"target"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    resumeCount = self->_resumeCount;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_target)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_resumeCount;
    *(v4 + 32) |= 1u;
  }

  v5 = v4;
  if (self->_label)
  {
    [v4 setLabel:?];
    v4 = v5;
  }

  if (self->_target)
  {
    [v5 setTarget:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_resumeCount;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_label copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_target copyWithZone:a3];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_resumeCount != *(v4 + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  label = self->_label;
  if (label | *(v4 + 1) && ![(NSString *)label isEqual:?])
  {
    goto LABEL_11;
  }

  target = self->_target;
  if (target | *(v4 + 3))
  {
    v8 = [(NSString *)target isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_resumeCount;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_label hash]^ v3;
  return v4 ^ [(NSString *)self->_target hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[8])
  {
    self->_resumeCount = v4[4];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(SYLogMultiSuspendableQueueState *)self setLabel:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(SYLogMultiSuspendableQueueState *)self setTarget:?];
    v4 = v5;
  }
}

@end