@interface AWDBiometricKitEventLog
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)eventAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDBiometricKitEventLog

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = AWDBiometricKitEventLog;
  [(AWDBiometricKitEventLog *)&v3 dealloc];
}

- (unsigned)eventAtIndex:(unint64_t)index
{
  p_events = &self->_events;
  count = self->_events.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_events->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDBiometricKitEventLog;
  v4 = [(AWDBiometricKitEventLog *)&v8 description];
  dictionaryRepresentation = [(AWDBiometricKitEventLog *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v4 forKey:@"timestamp"];
  }

  v5 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v5 forKey:@"event"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    toCopy = v9;
  }

  p_events = &self->_events;
  if (p_events->count)
  {
    v7 = 0;
    do
    {
      v8 = p_events->list[v7];
      PBDataWriterWriteUint32Field();
      toCopy = v9;
      ++v7;
    }

    while (v7 < p_events->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_timestamp;
    *(toCopy + 40) |= 1u;
  }

  v8 = toCopy;
  if ([(AWDBiometricKitEventLog *)self eventsCount])
  {
    [v8 clearEvents];
    eventsCount = [(AWDBiometricKitEventLog *)self eventsCount];
    if (eventsCount)
    {
      v6 = eventsCount;
      for (i = 0; i != v6; ++i)
      {
        [v8 addEvent:{-[AWDBiometricKitEventLog eventAtIndex:](self, "eventAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = v4;
  if (*&self->_has)
  {
    *(v4 + 32) = self->_timestamp;
    *(v4 + 40) |= 1u;
  }

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  v5 = *(equalCopy + 40);
  if (*&self->_has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_timestamp != *(equalCopy + 4))
    {
      goto LABEL_8;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_8:
    IsEqual = 0;
    goto LABEL_9;
  }

  IsEqual = PBRepeatedUInt32IsEqual();
LABEL_9:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return PBRepeatedUInt32Hash() ^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    self->_timestamp = fromCopy[4];
    *&self->_has |= 1u;
  }

  v8 = fromCopy;
  eventsCount = [fromCopy eventsCount];
  if (eventsCount)
  {
    v6 = eventsCount;
    for (i = 0; i != v6; ++i)
    {
      -[AWDBiometricKitEventLog addEvent:](self, "addEvent:", [v8 eventAtIndex:i]);
    }
  }
}

@end