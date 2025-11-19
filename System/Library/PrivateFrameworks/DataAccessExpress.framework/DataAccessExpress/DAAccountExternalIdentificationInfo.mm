@interface DAAccountExternalIdentificationInfo
- (DAAccountExternalIdentificationInfo)initWithHost:(id)a3 port:(int64_t)a4 useSSL:(BOOL)a5 ownerAddresses:(id)a6 preferredOwnerAddress:(id)a7;
@end

@implementation DAAccountExternalIdentificationInfo

- (DAAccountExternalIdentificationInfo)initWithHost:(id)a3 port:(int64_t)a4 useSSL:(BOOL)a5 ownerAddresses:(id)a6 preferredOwnerAddress:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v23.receiver = self;
  v23.super_class = DAAccountExternalIdentificationInfo;
  v15 = [(DAAccountExternalIdentificationInfo *)&v23 init];
  if (v15)
  {
    v16 = [v12 copy];
    host = v15->_host;
    v15->_host = v16;

    v15->_port = a4;
    v15->_useSSL = a5;
    v18 = [v13 copy];
    ownerAddresses = v15->_ownerAddresses;
    v15->_ownerAddresses = v18;

    v20 = [v14 copy];
    preferredOwnerAddress = v15->_preferredOwnerAddress;
    v15->_preferredOwnerAddress = v20;
  }

  return v15;
}

@end