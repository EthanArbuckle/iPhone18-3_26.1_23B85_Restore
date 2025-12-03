@interface SYRejectedVersion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)supportedVersionsAtIndex:(unint64_t)index;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYRejectedVersion

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = SYRejectedVersion;
  [(SYRejectedVersion *)&v3 dealloc];
}

- (unsigned)supportedVersionsAtIndex:(unint64_t)index
{
  p_supportedVersions = &self->_supportedVersions;
  count = self->_supportedVersions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedVersions->list[index];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYRejectedVersion;
  v4 = [(SYRejectedVersion *)&v8 description];
  dictionaryRepresentation = [(SYRejectedVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(SYMessageHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  inReplyTo = self->_inReplyTo;
  if (inReplyTo)
  {
    [dictionary setObject:inReplyTo forKey:@"inReplyTo"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v7 forKey:@"supportedVersions"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYRejectedVersion writeTo:];
  }

  v8 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_inReplyTo)
  {
    [SYRejectedVersion writeTo:];
  }

  PBDataWriterWriteStringField();
  p_supportedVersions = &self->_supportedVersions;
  if (p_supportedVersions->count)
  {
    v6 = 0;
    do
    {
      v7 = p_supportedVersions->list[v6];
      PBDataWriterWriteUint32Field();
      ++v6;
    }

    while (v6 < p_supportedVersions->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setInReplyTo:self->_inReplyTo];
  if ([(SYRejectedVersion *)self supportedVersionsCount])
  {
    [toCopy clearSupportedVersions];
    supportedVersionsCount = [(SYRejectedVersion *)self supportedVersionsCount];
    if (supportedVersionsCount)
    {
      v5 = supportedVersionsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addSupportedVersions:{-[SYRejectedVersion supportedVersionsAtIndex:](self, "supportedVersionsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_inReplyTo copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[4])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((inReplyTo = self->_inReplyTo, !(inReplyTo | equalCopy[5])) || -[NSString isEqual:](inReplyTo, "isEqual:")))
  {
    IsEqual = PBRepeatedUInt32IsEqual();
  }

  else
  {
    IsEqual = 0;
  }

  return IsEqual;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_inReplyTo hash]^ v3;
  return v4 ^ PBRepeatedUInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[4];
  v10 = fromCopy;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYMessageHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYRejectedVersion *)self setHeader:?];
  }

  fromCopy = v10;
LABEL_7:
  if (fromCopy[5])
  {
    [(SYRejectedVersion *)self setInReplyTo:?];
    fromCopy = v10;
  }

  supportedVersionsCount = [fromCopy supportedVersionsCount];
  if (supportedVersionsCount)
  {
    v8 = supportedVersionsCount;
    for (i = 0; i != v8; ++i)
    {
      -[SYRejectedVersion addSupportedVersions:](self, "addSupportedVersions:", [v10 supportedVersionsAtIndex:i]);
    }
  }
}

@end