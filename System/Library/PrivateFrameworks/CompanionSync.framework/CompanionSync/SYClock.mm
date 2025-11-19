@interface SYClock
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (id)_myDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)increaseBy:(unint64_t)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYClock

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    InstanceMethod = class_getInstanceMethod(a1, sel_description);
    v4 = class_getInstanceMethod(a1, sel__myDescription);

    method_exchangeImplementations(InstanceMethod, v4);
  }
}

- (unint64_t)increaseBy:(unint64_t)a3
{
  v5 = [(SYClock *)self version];
  [(SYClock *)self setVersion:v5 + a3];
  return v5 + a3;
}

- (id)_myDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = SYClock;
  v4 = [(SYClock *)&v9 description];
  v5 = [(SYClock *)self peer];
  v6 = [v5 peerID];
  v7 = [v3 stringWithFormat:@"%@: %@::%qu", v4, v6, -[SYClock version](self, "version")];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYClock;
  v4 = [(SYClock *)&v8 description];
  v5 = [(SYClock *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  peer = self->_peer;
  if (peer)
  {
    v5 = [(SYPeer *)peer dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"peer"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_version];
  [v3 setObject:v6 forKey:@"version"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_peer)
  {
    [SYClock writeTo:];
  }

  v6 = v4;
  PBDataWriterWriteSubmessage();
  version = self->_version;
  PBDataWriterWriteUint64Field();
}

- (void)copyTo:(id)a3
{
  peer = self->_peer;
  v5 = a3;
  [v5 setPeer:peer];
  v5[1] = self->_version;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYPeer *)self->_peer copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v5[1] = self->_version;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v6 = [v4 isMemberOfClass:objc_opt_class()] && ((peer = self->_peer, !(peer | v4[2])) || -[SYPeer isEqual:](peer, "isEqual:")) && self->_version == v4[1];

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  peer = self->_peer;
  v6 = v4[2];
  if (peer)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    peer = [(SYPeer *)peer mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    peer = [(SYClock *)self setPeer:?];
  }

  v4 = v7;
LABEL_7:
  self->_version = v4[1];

  MEMORY[0x1EEE66BB8](peer, v4);
}

@end