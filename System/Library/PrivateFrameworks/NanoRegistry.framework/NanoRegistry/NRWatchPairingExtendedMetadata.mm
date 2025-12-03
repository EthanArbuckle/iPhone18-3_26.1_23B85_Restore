@interface NRWatchPairingExtendedMetadata
- (NRWatchPairingExtendedMetadata)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (NRWatchPairingExtendedMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NRWatchPairingExtendedMetadata;
  v5 = [(NRWatchPairingExtendedMetadata *)&v9 init];
  if (v5)
  {
    v5->_chipID = [coderCopy decodeIntegerForKey:@"chipID"];
    v5->_pairingVersion = [coderCopy decodeIntegerForKey:@"pairingVersion"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
    productType = v5->_productType;
    v5->_productType = v6;

    v5->_postFailsafeObliteration = [coderCopy decodeBoolForKey:@"postFailsafeObliteration"];
    v5->_isCellularEnabled = [coderCopy decodeBoolForKey:@"isCellularEnabled"];
    v5->_encodedSystemVersion = [coderCopy decodeIntegerForKey:@"encodedSystemVersion"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  chipID = self->_chipID;
  coderCopy = coder;
  [coderCopy encodeInteger:chipID forKey:@"chipID"];
  [coderCopy encodeInteger:self->_pairingVersion forKey:@"pairingVersion"];
  [coderCopy encodeObject:self->_productType forKey:@"productType"];
  [coderCopy encodeBool:self->_postFailsafeObliteration forKey:@"postFailsafeObliteration"];
  [coderCopy encodeBool:self->_isCellularEnabled forKey:@"isCellularEnabled"];
  [coderCopy encodeInteger:self->_encodedSystemVersion forKey:@"encodedSystemVersion"];
}

@end