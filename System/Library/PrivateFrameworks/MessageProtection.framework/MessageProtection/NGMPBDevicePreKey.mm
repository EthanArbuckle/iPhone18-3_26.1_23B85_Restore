@interface NGMPBDevicePreKey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBDevicePreKey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBDevicePreKey;
  v4 = [(NGMPBDevicePreKey *)&v8 description];
  dictionaryRepresentation = [(NGMPBDevicePreKey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dhKey = self->_dhKey;
  if (dhKey)
  {
    dictionaryRepresentation = [(NGMPBP256Key *)dhKey dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dhKey"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [dictionary setObject:v6 forKey:@"timestamp"];

  prekeySignature = self->_prekeySignature;
  if (prekeySignature)
  {
    [dictionary setObject:prekeySignature forKey:@"prekeySignature"];
  }

  tetraPrivateKey = self->_tetraPrivateKey;
  if (tetraPrivateKey)
  {
    [dictionary setObject:tetraPrivateKey forKey:@"tetraPrivateKey"];
  }

  tetraRegistrationData = self->_tetraRegistrationData;
  if (tetraRegistrationData)
  {
    [dictionary setObject:tetraRegistrationData forKey:@"tetraRegistrationData"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_tetraVersion];
    [dictionary setObject:v10 forKey:@"tetraVersion"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_dhKey)
  {
    PBDataWriterWriteSubmessage();
  }

  timestamp = self->_timestamp;
  PBDataWriterWriteDoubleField();
  if (!self->_prekeySignature)
  {
    [NGMPBDevicePreKey writeTo:];
  }

  PBDataWriterWriteDataField();
  if (self->_tetraPrivateKey)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_tetraRegistrationData)
  {
    PBDataWriterWriteDataField();
  }

  v5 = toCopy;
  if (*&self->_has)
  {
    tetraVersion = self->_tetraVersion;
    PBDataWriterWriteUint32Field();
    v5 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_dhKey)
  {
    [toCopy setDhKey:?];
    toCopy = v5;
  }

  toCopy[1] = self->_timestamp;
  [toCopy setPrekeySignature:self->_prekeySignature];
  if (self->_tetraPrivateKey)
  {
    [v5 setTetraPrivateKey:?];
  }

  if (self->_tetraRegistrationData)
  {
    [v5 setTetraRegistrationData:?];
  }

  if (*&self->_has)
  {
    *(v5 + 12) = self->_tetraVersion;
    *(v5 + 52) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NGMPBP256Key *)self->_dhKey copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_timestamp;
  v8 = [(NSData *)self->_prekeySignature copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSData *)self->_tetraPrivateKey copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSData *)self->_tetraRegistrationData copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  if (*&self->_has)
  {
    *(v5 + 48) = self->_tetraVersion;
    *(v5 + 52) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  dhKey = self->_dhKey;
  if (dhKey | *(equalCopy + 2))
  {
    if (![(NGMPBP256Key *)dhKey isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (self->_timestamp != *(equalCopy + 1))
  {
    goto LABEL_15;
  }

  prekeySignature = self->_prekeySignature;
  if (prekeySignature | *(equalCopy + 3))
  {
    if (![(NSData *)prekeySignature isEqual:?])
    {
      goto LABEL_15;
    }
  }

  tetraPrivateKey = self->_tetraPrivateKey;
  if (tetraPrivateKey | *(equalCopy + 4))
  {
    if (![(NSData *)tetraPrivateKey isEqual:?])
    {
      goto LABEL_15;
    }
  }

  tetraRegistrationData = self->_tetraRegistrationData;
  if (tetraRegistrationData | *(equalCopy + 5))
  {
    if (![(NSData *)tetraRegistrationData isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v9 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) != 0 && self->_tetraVersion == *(equalCopy + 12))
    {
      v9 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v9 = 0;
  }

LABEL_16:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NGMPBP256Key *)self->_dhKey hash];
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v4.i64 = floor(timestamp + 0.5);
  v7 = (timestamp - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v4.i64[0] = vbslq_s8(vnegq_f64(v8), v5, v4).i64[0];
  v9 = 2654435761u * *v4.i64;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i64;
  }

  v11 = v9 - fabs(v7);
  if (v7 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  v13 = [(NSData *)self->_prekeySignature hash];
  v14 = [(NSData *)self->_tetraPrivateKey hash];
  v15 = [(NSData *)self->_tetraRegistrationData hash];
  if (*&self->_has)
  {
    v16 = 2654435761 * self->_tetraVersion;
  }

  else
  {
    v16 = 0;
  }

  return v12 ^ v3 ^ v13 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  dhKey = self->_dhKey;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
  if (dhKey)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NGMPBP256Key *)dhKey mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NGMPBDevicePreKey *)self setDhKey:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_timestamp = *(fromCopy + 1);
  if (*(fromCopy + 3))
  {
    [(NGMPBDevicePreKey *)self setPrekeySignature:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 4))
  {
    [(NGMPBDevicePreKey *)self setTetraPrivateKey:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 5))
  {
    [(NGMPBDevicePreKey *)self setTetraRegistrationData:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 52))
  {
    self->_tetraVersion = *(fromCopy + 12);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end