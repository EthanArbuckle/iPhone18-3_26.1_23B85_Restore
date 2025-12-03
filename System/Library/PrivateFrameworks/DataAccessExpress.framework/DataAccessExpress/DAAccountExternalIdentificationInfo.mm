@interface DAAccountExternalIdentificationInfo
- (DAAccountExternalIdentificationInfo)initWithHost:(id)host port:(int64_t)port useSSL:(BOOL)l ownerAddresses:(id)addresses preferredOwnerAddress:(id)address;
@end

@implementation DAAccountExternalIdentificationInfo

- (DAAccountExternalIdentificationInfo)initWithHost:(id)host port:(int64_t)port useSSL:(BOOL)l ownerAddresses:(id)addresses preferredOwnerAddress:(id)address
{
  hostCopy = host;
  addressesCopy = addresses;
  addressCopy = address;
  v23.receiver = self;
  v23.super_class = DAAccountExternalIdentificationInfo;
  v15 = [(DAAccountExternalIdentificationInfo *)&v23 init];
  if (v15)
  {
    v16 = [hostCopy copy];
    host = v15->_host;
    v15->_host = v16;

    v15->_port = port;
    v15->_useSSL = l;
    v18 = [addressesCopy copy];
    ownerAddresses = v15->_ownerAddresses;
    v15->_ownerAddresses = v18;

    v20 = [addressCopy copy];
    preferredOwnerAddress = v15->_preferredOwnerAddress;
    v15->_preferredOwnerAddress = v20;
  }

  return v15;
}

@end