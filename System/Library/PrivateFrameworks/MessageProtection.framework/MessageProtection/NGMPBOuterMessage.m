@interface NGMPBOuterMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NGMPBOuterMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBOuterMessage;
  v4 = [(NGMPBOuterMessage *)&v8 description];
  v5 = [(NGMPBOuterMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  encryptedPayload = self->_encryptedPayload;
  if (encryptedPayload)
  {
    [v3 setObject:encryptedPayload forKey:@"encryptedPayload"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedPayload)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_ephemeralPubKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_tetraMessage)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_keyValidator)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_encryptedPayload)
  {
    [v4 setEncryptedPayload:?];
    v4 = v5;
  }

  if (self->_ephemeralPubKey)
  {
    [v5 setEphemeralPubKey:?];
    v4 = v5;
  }

  if (self->_signature)
  {
    [v5 setSignature:?];
    v4 = v5;
  }

  if (self->_tetraMessage)
  {
    [v5 setTetraMessage:?];
    v4 = v5;
  }

  if (self->_keyValidator)
  {
    [v5 setKeyValidator:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_encryptedPayload copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_ephemeralPubKey copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSData *)self->_signature copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(NSData *)self->_tetraMessage copyWithZone:a3];
  v13 = v5[5];
  v5[5] = v12;

  v14 = [(NSData *)self->_keyValidator copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((encryptedPayload = self->_encryptedPayload, !(encryptedPayload | v4[1])) || -[NSData isEqual:](encryptedPayload, "isEqual:")) && ((ephemeralPubKey = self->_ephemeralPubKey, !(ephemeralPubKey | v4[2])) || -[NSData isEqual:](ephemeralPubKey, "isEqual:")) && ((signature = self->_signature, !(signature | v4[4])) || -[NSData isEqual:](signature, "isEqual:")) && ((tetraMessage = self->_tetraMessage, !(tetraMessage | v4[5])) || -[NSData isEqual:](tetraMessage, "isEqual:")))
  {
    keyValidator = self->_keyValidator;
    if (keyValidator | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[1])
  {
    [(NGMPBOuterMessage *)self setEncryptedPayload:?];
  }

  if (v4[2])
  {
    [(NGMPBOuterMessage *)self setEphemeralPubKey:?];
  }

  if (v4[4])
  {
    [(NGMPBOuterMessage *)self setSignature:?];
  }

  if (v4[5])
  {
    [(NGMPBOuterMessage *)self setTetraMessage:?];
  }

  if (v4[3])
  {
    [(NGMPBOuterMessage *)self setKeyValidator:?];
  }
}

@end