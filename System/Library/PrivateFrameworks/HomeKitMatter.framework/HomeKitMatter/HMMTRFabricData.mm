@interface HMMTRFabricData
- (HMMTRFabricData)initWithRootPublicKey:(id)a3 fabricID:(id)a4 ipk:(id)a5 residentNodeID:(id)a6 rootKeyPair:(id)a7 rootCert:(id)a8 residentOperationalKeyPair:(id)a9 residentOperationalCert:(id)a10;
@end

@implementation HMMTRFabricData

- (HMMTRFabricData)initWithRootPublicKey:(id)a3 fabricID:(id)a4 ipk:(id)a5 residentNodeID:(id)a6 rootKeyPair:(id)a7 rootCert:(id)a8 residentOperationalKeyPair:(id)a9 residentOperationalCert:(id)a10
{
  v16 = a3;
  v37 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v38.receiver = self;
  v38.super_class = HMMTRFabricData;
  v23 = [(HMMTRFabricData *)&v38 init];
  if (v23)
  {
    v24 = [v16 copy];
    rootPublicKey = v23->_rootPublicKey;
    v23->_rootPublicKey = v24;

    objc_storeStrong(&v23->_fabricID, a4);
    v26 = [v17 copy];
    ipk = v23->_ipk;
    v23->_ipk = v26;

    objc_storeStrong(&v23->_residentNodeID, a6);
    v28 = [v19 copyV0KeyPair];
    rootKeyPair = v23->_rootKeyPair;
    v23->_rootKeyPair = v28;

    v30 = [v20 copy];
    rootCert = v23->_rootCert;
    v23->_rootCert = v30;

    v32 = [v21 copyV0KeyPair];
    residentOperationalKeyPair = v23->_residentOperationalKeyPair;
    v23->_residentOperationalKeyPair = v32;

    v34 = [v22 copy];
    residentOperationalCert = v23->_residentOperationalCert;
    v23->_residentOperationalCert = v34;
  }

  return v23;
}

@end