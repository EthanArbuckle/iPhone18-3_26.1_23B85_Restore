@interface NGMPBPublicDevicePrekey
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NGMPBPublicDevicePrekey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBPublicDevicePrekey;
  v4 = [(NGMPBPublicDevicePrekey *)&v8 description];
  dictionaryRepresentation = [(NGMPBPublicDevicePrekey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  prekey = self->_prekey;
  if (prekey)
  {
    [dictionary setObject:prekey forKey:@"prekey"];
  }

  prekeySignature = self->_prekeySignature;
  if (prekeySignature)
  {
    [v4 setObject:prekeySignature forKey:@"prekeySignature"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v4 setObject:v7 forKey:@"timestamp"];

  tetraPreKey = self->_tetraPreKey;
  if (tetraPreKey)
  {
    [v4 setObject:tetraPreKey forKey:@"tetraPreKey"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_prekey)
  {
    [NGMPBPublicDevicePrekey writeTo:];
  }

  PBDataWriterWriteDataField();
  if (!self->_prekeySignature)
  {
    [NGMPBPublicDevicePrekey writeTo:];
  }

  PBDataWriterWriteDataField();
  timestamp = self->_timestamp;
  PBDataWriterWriteDoubleField();
  if (self->_tetraPreKey)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPrekey:self->_prekey];
  [toCopy setPrekeySignature:self->_prekeySignature];
  v4 = toCopy;
  toCopy[1] = self->_timestamp;
  if (self->_tetraPreKey)
  {
    [toCopy setTetraPreKey:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_prekey copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_prekeySignature copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_timestamp;
  v10 = [(NSData *)self->_tetraPreKey copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((prekey = self->_prekey, !(prekey | equalCopy[2])) || -[NSData isEqual:](prekey, "isEqual:")) && ((prekeySignature = self->_prekeySignature, !(prekeySignature | equalCopy[3])) || -[NSData isEqual:](prekeySignature, "isEqual:")) && self->_timestamp == *(equalCopy + 1))
  {
    tetraPreKey = self->_tetraPreKey;
    if (tetraPreKey | equalCopy[4])
    {
      v8 = [(NSData *)tetraPreKey isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_prekey hash];
  v4 = [(NSData *)self->_prekeySignature hash];
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v5.i64 = floor(timestamp + 0.5);
  v8 = (timestamp - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v5.i64[0] = vbslq_s8(vnegq_f64(v9), v6, v5).i64[0];
  v10 = 2654435761u * *v5.i64;
  v11 = v10 + v8;
  if (v8 <= 0.0)
  {
    v11 = 2654435761u * *v5.i64;
  }

  v12 = v10 - fabs(v8);
  if (v8 < 0.0)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  return v4 ^ v3 ^ [(NSData *)self->_tetraPreKey hash]^ v13;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(NGMPBPublicDevicePrekey *)self setPrekey:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 3))
  {
    [(NGMPBPublicDevicePrekey *)self setPrekeySignature:?];
    fromCopy = v5;
  }

  self->_timestamp = fromCopy[1];
  if (*(fromCopy + 4))
  {
    [(NGMPBPublicDevicePrekey *)self setTetraPreKey:?];
    fromCopy = v5;
  }
}

@end