@interface NRWatchPairingExtendedMetadata
- (NRWatchPairingExtendedMetadata)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NRWatchPairingExtendedMetadata

- (id)description
{
  v2 = "NO";
  if (self->_postFailsafeObliteration)
  {
    v3 = "YES";
  }

  else
  {
    v3 = "NO";
  }

  if (self->_isCellularEnabled)
  {
    v2 = "YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"{ chipID = %ld pairingVersion = %ld productType = %@ postFailsafeObliteration = %s isCellularEnabled = %s encodedSystemVersion = %ld }", *&self->_chipID, self->_productType, v3, v2, self->_encodedSystemVersion];
}

- (NRWatchPairingExtendedMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NRWatchPairingExtendedMetadata;
  v5 = [(NRWatchPairingExtendedMetadata *)&v9 init];
  if (v5)
  {
    v5->_chipID = [v4 decodeIntegerForKey:@"chipID"];
    v5->_pairingVersion = [v4 decodeIntegerForKey:@"pairingVersion"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v6;

    v5->_postFailsafeObliteration = [v4 decodeBoolForKey:@"postFailsafeObliteration"];
    v5->_isCellularEnabled = [v4 decodeBoolForKey:@"isCellularEnabled"];
    v5->_encodedSystemVersion = [v4 decodeIntegerForKey:@"encodedSystemVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  chipID = self->_chipID;
  v5 = a3;
  [v5 encodeInteger:chipID forKey:@"chipID"];
  [v5 encodeInteger:self->_pairingVersion forKey:@"pairingVersion"];
  [v5 encodeObject:self->_productType forKey:@"productType"];
  [v5 encodeBool:self->_postFailsafeObliteration forKey:@"postFailsafeObliteration"];
  [v5 encodeBool:self->_isCellularEnabled forKey:@"isCellularEnabled"];
  [v5 encodeInteger:self->_encodedSystemVersion forKey:@"encodedSystemVersion"];
}

@end