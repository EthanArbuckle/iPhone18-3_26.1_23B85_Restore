@interface NGMPBPublicDevicePrekey
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NGMPBPublicDevicePrekey

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NGMPBPublicDevicePrekey;
  v4 = [(NGMPBPublicDevicePrekey *)&v8 description];
  v5 = [(NGMPBPublicDevicePrekey *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  prekey = self->_prekey;
  if (prekey)
  {
    [v3 setObject:prekey forKey:@"prekey"];
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

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setPrekey:self->_prekey];
  [v5 setPrekeySignature:self->_prekeySignature];
  v4 = v5;
  v5[1] = self->_timestamp;
  if (self->_tetraPreKey)
  {
    [v5 setTetraPreKey:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_prekey copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSData *)self->_prekeySignature copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 8) = self->_timestamp;
  v10 = [(NSData *)self->_tetraPreKey copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((prekey = self->_prekey, !(prekey | v4[2])) || -[NSData isEqual:](prekey, "isEqual:")) && ((prekeySignature = self->_prekeySignature, !(prekeySignature | v4[3])) || -[NSData isEqual:](prekeySignature, "isEqual:")) && self->_timestamp == *(v4 + 1))
  {
    tetraPreKey = self->_tetraPreKey;
    if (tetraPreKey | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(NGMPBPublicDevicePrekey *)self setPrekey:?];
    v4 = v5;
  }

  if (*(v4 + 3))
  {
    [(NGMPBPublicDevicePrekey *)self setPrekeySignature:?];
    v4 = v5;
  }

  self->_timestamp = v4[1];
  if (*(v4 + 4))
  {
    [(NGMPBPublicDevicePrekey *)self setTetraPreKey:?];
    v4 = v5;
  }
}

@end