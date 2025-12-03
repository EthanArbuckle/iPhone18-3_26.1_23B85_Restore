@interface CRKPrimitiveBackedCertificateConduit
+ (id)fetchOperationTimerIdentifier;
- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)primitives addressTranslator:(id)translator operationQueue:(id)queue;
- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)primitives addressTranslator:(id)translator timerPrimitives:(id)timerPrimitives operationQueue:(id)queue;
- (id)operationToFetchCertificateForDestinationAppleID:(id)d sourceAppleID:(id)iD destinationDeviceIdentifier:(id)identifier controlGroupIdentifier:(id)groupIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)destinationRole requesterCertificate:(id)certificate timeout:(double)self0;
@end

@implementation CRKPrimitiveBackedCertificateConduit

- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)primitives addressTranslator:(id)translator operationQueue:(id)queue
{
  queueCopy = queue;
  translatorCopy = translator;
  primitivesCopy = primitives;
  v11 = objc_opt_new();
  makePrimitives = [v11 makePrimitives];
  v13 = [(CRKPrimitiveBackedCertificateConduit *)self initWithIDSPrimitives:primitivesCopy addressTranslator:translatorCopy timerPrimitives:makePrimitives operationQueue:queueCopy];

  return v13;
}

- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)primitives addressTranslator:(id)translator timerPrimitives:(id)timerPrimitives operationQueue:(id)queue
{
  primitivesCopy = primitives;
  translatorCopy = translator;
  timerPrimitivesCopy = timerPrimitives;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = CRKPrimitiveBackedCertificateConduit;
  v15 = [(CRKPrimitiveBackedCertificateConduit *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_IDSPrimitives, primitives);
    objc_storeStrong(&v16->_addressTranslator, translator);
    objc_storeStrong(&v16->_timerPrimitives, timerPrimitives);
    objc_storeStrong(&v16->_operationQueue, queue);
  }

  return v16;
}

- (id)operationToFetchCertificateForDestinationAppleID:(id)d sourceAppleID:(id)iD destinationDeviceIdentifier:(id)identifier controlGroupIdentifier:(id)groupIdentifier sourceRole:(int64_t)role destinationRole:(int64_t)destinationRole requesterCertificate:(id)certificate timeout:(double)self0
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  identifierCopy = identifier;
  groupIdentifierCopy = groupIdentifier;
  certificateCopy = certificate;
  if (_CRKLogASM_onceToken_26 != -1)
  {
    [CRKPrimitiveBackedCertificateConduit operationToFetchCertificateForDestinationAppleID:sourceAppleID:destinationDeviceIdentifier:controlGroupIdentifier:sourceRole:destinationRole:requesterCertificate:timeout:];
  }

  v21 = _CRKLogASM_logObj_26;
  if (os_log_type_enabled(_CRKLogASM_logObj_26, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138412290;
    v36 = v24;
    _os_log_impl(&dword_243550000, v22, OS_LOG_TYPE_DEFAULT, "%@: Received request to build cert-fetching operation", buf, 0xCu);
  }

  v25 = [CRKFetchASMCertificatesOperation alloc];
  iDSPrimitives = [(CRKPrimitiveBackedCertificateConduit *)self IDSPrimitives];
  addressTranslator = [(CRKPrimitiveBackedCertificateConduit *)self addressTranslator];
  v28 = [(CRKFetchASMCertificatesOperation *)v25 initWithIDSPrimitives:iDSPrimitives addressTranslator:addressTranslator controlGroupIdentifier:groupIdentifierCopy destinationAppleID:dCopy sourceAppleID:iDCopy destinationDeviceIdentifier:identifierCopy sourceRole:role destinationRole:destinationRole requesterCertificate:certificateCopy];

  timerPrimitives = [(CRKPrimitiveBackedCertificateConduit *)self timerPrimitives];
  operationQueue = [(CRKPrimitiveBackedCertificateConduit *)self operationQueue];
  fetchOperationTimerIdentifier = [objc_opt_class() fetchOperationTimerIdentifier];
  v32 = [(CATOperation *)v28 crk_timingOutOperationWithTimerPrimitives:timerPrimitives operationQueue:operationQueue timerIdentifier:fetchOperationTimerIdentifier timeout:timeout];

  return v32;
}

+ (id)fetchOperationTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(self);
  v4 = [v2 stringWithFormat:@"%@-certificateFetchTimer", v3];

  return v4;
}

@end