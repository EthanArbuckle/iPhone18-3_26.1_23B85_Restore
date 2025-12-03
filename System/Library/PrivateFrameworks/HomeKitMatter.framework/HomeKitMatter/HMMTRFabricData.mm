@interface HMMTRFabricData
- (HMMTRFabricData)initWithRootPublicKey:(id)key fabricID:(id)d ipk:(id)ipk residentNodeID:(id)iD rootKeyPair:(id)pair rootCert:(id)cert residentOperationalKeyPair:(id)keyPair residentOperationalCert:(id)self0;
@end

@implementation HMMTRFabricData

- (HMMTRFabricData)initWithRootPublicKey:(id)key fabricID:(id)d ipk:(id)ipk residentNodeID:(id)iD rootKeyPair:(id)pair rootCert:(id)cert residentOperationalKeyPair:(id)keyPair residentOperationalCert:(id)self0
{
  keyCopy = key;
  dCopy = d;
  ipkCopy = ipk;
  iDCopy = iD;
  pairCopy = pair;
  certCopy = cert;
  keyPairCopy = keyPair;
  operationalCertCopy = operationalCert;
  v38.receiver = self;
  v38.super_class = HMMTRFabricData;
  v23 = [(HMMTRFabricData *)&v38 init];
  if (v23)
  {
    v24 = [keyCopy copy];
    rootPublicKey = v23->_rootPublicKey;
    v23->_rootPublicKey = v24;

    objc_storeStrong(&v23->_fabricID, d);
    v26 = [ipkCopy copy];
    ipk = v23->_ipk;
    v23->_ipk = v26;

    objc_storeStrong(&v23->_residentNodeID, iD);
    copyV0KeyPair = [pairCopy copyV0KeyPair];
    rootKeyPair = v23->_rootKeyPair;
    v23->_rootKeyPair = copyV0KeyPair;

    v30 = [certCopy copy];
    rootCert = v23->_rootCert;
    v23->_rootCert = v30;

    copyV0KeyPair2 = [keyPairCopy copyV0KeyPair];
    residentOperationalKeyPair = v23->_residentOperationalKeyPair;
    v23->_residentOperationalKeyPair = copyV0KeyPair2;

    v34 = [operationalCertCopy copy];
    residentOperationalCert = v23->_residentOperationalCert;
    v23->_residentOperationalCert = v34;
  }

  return v23;
}

@end