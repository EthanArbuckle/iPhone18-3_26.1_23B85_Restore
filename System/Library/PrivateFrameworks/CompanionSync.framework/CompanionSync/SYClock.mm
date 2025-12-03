@interface SYClock
+ (void)initialize;
- (BOOL)isEqual:(id)equal;
- (id)_myDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)increaseBy:(unint64_t)by;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYClock

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    InstanceMethod = class_getInstanceMethod(self, sel_description);
    v4 = class_getInstanceMethod(self, sel__myDescription);

    method_exchangeImplementations(InstanceMethod, v4);
  }
}

- (unint64_t)increaseBy:(unint64_t)by
{
  version = [(SYClock *)self version];
  [(SYClock *)self setVersion:version + by];
  return version + by;
}

- (id)_myDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SYClock;
  v4 = [(SYClock *)&v9 description];
  peer = [(SYClock *)self peer];
  peerID = [peer peerID];
  v7 = [v3 stringWithFormat:@"%@: %@::%qu", v4, peerID, -[SYClock version](self, "version")];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYClock;
  v4 = [(SYClock *)&v8 description];
  dictionaryRepresentation = [(SYClock *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  peer = self->_peer;
  if (peer)
  {
    dictionaryRepresentation = [(SYPeer *)peer dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"peer"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
  [dictionary setObject:v6 forKey:@"version"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_peer)
  {
    [SYClock writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteSubmessage();
  version = self->_version;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)to
{
  peer = self->_peer;
  toCopy = to;
  [toCopy setPeer:peer];
  toCopy[1] = self->_version;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYPeer *)self->_peer copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_version;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((peer = self->_peer, !(peer | equalCopy[2])) || -[SYPeer isEqual:](peer, "isEqual:")) && self->_version == equalCopy[1];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  peer = self->_peer;
  v6 = fromCopy[2];
  if (peer)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    peer = [(SYPeer *)peer mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    peer = [(SYClock *)self setPeer:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_version = fromCopy[1];

  MEMORY[0x1EEE66BB8](peer, fromCopy);
}

@end