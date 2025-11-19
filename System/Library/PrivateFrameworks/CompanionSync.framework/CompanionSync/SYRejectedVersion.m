@interface SYRejectedVersion
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)supportedVersionsAtIndex:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYRejectedVersion

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = SYRejectedVersion;
  [(SYRejectedVersion *)&v3 dealloc];
}

- (unsigned)supportedVersionsAtIndex:(unint64_t)a3
{
  p_supportedVersions = &self->_supportedVersions;
  count = self->_supportedVersions.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695DA20];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"idx (%tu) is out of range (%tu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedVersions->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYRejectedVersion;
  v4 = [(SYRejectedVersion *)&v8 description];
  v5 = [(SYRejectedVersion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(SYMessageHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  inReplyTo = self->_inReplyTo;
  if (inReplyTo)
  {
    [v3 setObject:inReplyTo forKey:@"inReplyTo"];
  }

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"supportedVersions"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYRejectedVersion writeTo:];
  }

  v8 = v4;
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

- (void)copyTo:(id)a3
{
  v7 = a3;
  [v7 setHeader:self->_header];
  [v7 setInReplyTo:self->_inReplyTo];
  if ([(SYRejectedVersion *)self supportedVersionsCount])
  {
    [v7 clearSupportedVersions];
    v4 = [(SYRejectedVersion *)self supportedVersionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v7 addSupportedVersions:{-[SYRejectedVersion supportedVersionsAtIndex:](self, "supportedVersionsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_inReplyTo copyWithZone:a3];
  v9 = v5[5];
  v5[5] = v8;

  PBRepeatedUInt32Copy();
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[4])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((inReplyTo = self->_inReplyTo, !(inReplyTo | v4[5])) || -[NSString isEqual:](inReplyTo, "isEqual:")))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[4];
  v10 = v4;
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

  v4 = v10;
LABEL_7:
  if (v4[5])
  {
    [(SYRejectedVersion *)self setInReplyTo:?];
    v4 = v10;
  }

  v7 = [v4 supportedVersionsCount];
  if (v7)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      -[SYRejectedVersion addSupportedVersions:](self, "addSupportedVersions:", [v10 supportedVersionsAtIndex:i]);
    }
  }
}

@end