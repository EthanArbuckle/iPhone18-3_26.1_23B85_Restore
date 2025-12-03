@interface NGMPBOuterMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBOuterMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBOuterMessage;
  v4 = [(NGMPBOuterMessage *)&v8 description];
  dictionaryRepresentation = [(NGMPBOuterMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  encryptedPayload = self->_encryptedPayload;
  if (encryptedPayload)
  {
    [dictionary setObject:encryptedPayload forKey:@"encryptedPayload"];
  }

  ephemeralPubKey = self->_ephemeralPubKey;
  if (ephemeralPubKey)
  {
    [v4 setObject:ephemeralPubKey forKey:@"ephemeralPubKey"];
  }

  signature = self->_signature;
  if (signature)
  {
    [v4 setObject:signature forKey:@"signature"];
  }

  tetraMessage = self->_tetraMessage;
  if (tetraMessage)
  {
    [v4 setObject:tetraMessage forKey:@"tetraMessage"];
  }

  keyValidator = self->_keyValidator;
  if (keyValidator)
  {
    [v4 setObject:keyValidator forKey:@"keyValidator"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedPayload)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_ephemeralPubKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_tetraMessage)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_keyValidator)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_encryptedPayload)
  {
    [toCopy setEncryptedPayload:?];
    toCopy = v5;
  }

  if (self->_ephemeralPubKey)
  {
    [v5 setEphemeralPubKey:?];
    toCopy = v5;
  }

  if (self->_signature)
  {
    [v5 setSignature:?];
    toCopy = v5;
  }

  if (self->_tetraMessage)
  {
    [v5 setTetraMessage:?];
    toCopy = v5;
  }

  if (self->_keyValidator)
  {
    [v5 setKeyValidator:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_encryptedPayload copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_ephemeralPubKey copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_signature copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_tetraMessage copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSData *)self->_keyValidator copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((encryptedPayload = self->_encryptedPayload, !(encryptedPayload | equalCopy[1])) || -[NSData isEqual:](encryptedPayload, "isEqual:")) && ((ephemeralPubKey = self->_ephemeralPubKey, !(ephemeralPubKey | equalCopy[2])) || -[NSData isEqual:](ephemeralPubKey, "isEqual:")) && ((signature = self->_signature, !(signature | equalCopy[4])) || -[NSData isEqual:](signature, "isEqual:")) && ((tetraMessage = self->_tetraMessage, !(tetraMessage | equalCopy[5])) || -[NSData isEqual:](tetraMessage, "isEqual:")))
  {
    keyValidator = self->_keyValidator;
    if (keyValidator | equalCopy[3])
    {
      v10 = [(NSData *)keyValidator isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_encryptedPayload hash];
  v4 = [(NSData *)self->_ephemeralPubKey hash]^ v3;
  v5 = [(NSData *)self->_signature hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_tetraMessage hash];
  return v6 ^ [(NSData *)self->_keyValidator hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[1])
  {
    [(NGMPBOuterMessage *)self setEncryptedPayload:?];
  }

  if (fromCopy[2])
  {
    [(NGMPBOuterMessage *)self setEphemeralPubKey:?];
  }

  if (fromCopy[4])
  {
    [(NGMPBOuterMessage *)self setSignature:?];
  }

  if (fromCopy[5])
  {
    [(NGMPBOuterMessage *)self setTetraMessage:?];
  }

  if (fromCopy[3])
  {
    [(NGMPBOuterMessage *)self setKeyValidator:?];
  }
}

@end