@interface SYLogMultiSuspendableQueueState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYLogMultiSuspendableQueueState

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogMultiSuspendableQueueState;
  v4 = [(SYLogMultiSuspendableQueueState *)&v8 description];
  dictionaryRepresentation = [(SYLogMultiSuspendableQueueState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_resumeCount];
    [dictionary setObject:v4 forKey:@"resumeCount"];
  }

  label = self->_label;
  if (label)
  {
    [dictionary setObject:label forKey:@"label"];
  }

  target = self->_target;
  if (target)
  {
    [dictionary setObject:target forKey:@"target"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    resumeCount = self->_resumeCount;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_label)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_target)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_resumeCount;
    *(toCopy + 32) |= 1u;
  }

  v5 = toCopy;
  if (self->_label)
  {
    [toCopy setLabel:?];
    toCopy = v5;
  }

  if (self->_target)
  {
    [v5 setTarget:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_resumeCount;
    *(v5 + 32) |= 1u;
  }

  v7 = [(NSString *)self->_label copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSString *)self->_target copyWithZone:zone];
  v10 = v6[3];
  v6[3] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_resumeCount != *(equalCopy + 4))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  label = self->_label;
  if (label | *(equalCopy + 1) && ![(NSString *)label isEqual:?])
  {
    goto LABEL_11;
  }

  target = self->_target;
  if (target | *(equalCopy + 3))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[8])
  {
    self->_resumeCount = fromCopy[4];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(SYLogMultiSuspendableQueueState *)self setLabel:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(SYLogMultiSuspendableQueueState *)self setTarget:?];
    fromCopy = v5;
  }
}

@end