@interface CRKPrimitiveBackedCertificateConduit
+ (id)fetchOperationTimerIdentifier;
- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)a3 addressTranslator:(id)a4 operationQueue:(id)a5;
- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)a3 addressTranslator:(id)a4 timerPrimitives:(id)a5 operationQueue:(id)a6;
- (id)operationToFetchCertificateForDestinationAppleID:(id)a3 sourceAppleID:(id)a4 destinationDeviceIdentifier:(id)a5 controlGroupIdentifier:(id)a6 sourceRole:(int64_t)a7 destinationRole:(int64_t)a8 requesterCertificate:(id)a9 timeout:(double)a10;
@end

@implementation CRKPrimitiveBackedCertificateConduit

- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)a3 addressTranslator:(id)a4 operationQueue:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [v11 makePrimitives];
  v13 = [(CRKPrimitiveBackedCertificateConduit *)self initWithIDSPrimitives:v10 addressTranslator:v9 timerPrimitives:v12 operationQueue:v8];

  return v13;
}

- (CRKPrimitiveBackedCertificateConduit)initWithIDSPrimitives:(id)a3 addressTranslator:(id)a4 timerPrimitives:(id)a5 operationQueue:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = CRKPrimitiveBackedCertificateConduit;
  v15 = [(CRKPrimitiveBackedCertificateConduit *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_IDSPrimitives, a3);
    objc_storeStrong(&v16->_addressTranslator, a4);
    objc_storeStrong(&v16->_timerPrimitives, a5);
    objc_storeStrong(&v16->_operationQueue, a6);
  }

  return v16;
}

- (id)operationToFetchCertificateForDestinationAppleID:(id)a3 sourceAppleID:(id)a4 destinationDeviceIdentifier:(id)a5 controlGroupIdentifier:(id)a6 sourceRole:(int64_t)a7 destinationRole:(int64_t)a8 requesterCertificate:(id)a9 timeout:(double)a10
{
  v37 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a9;
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
  v26 = [(CRKPrimitiveBackedCertificateConduit *)self IDSPrimitives];
  v27 = [(CRKPrimitiveBackedCertificateConduit *)self addressTranslator];
  v28 = [(CRKFetchASMCertificatesOperation *)v25 initWithIDSPrimitives:v26 addressTranslator:v27 controlGroupIdentifier:v19 destinationAppleID:v16 sourceAppleID:v17 destinationDeviceIdentifier:v18 sourceRole:a7 destinationRole:a8 requesterCertificate:v20];

  v29 = [(CRKPrimitiveBackedCertificateConduit *)self timerPrimitives];
  v30 = [(CRKPrimitiveBackedCertificateConduit *)self operationQueue];
  v31 = [objc_opt_class() fetchOperationTimerIdentifier];
  v32 = [(CATOperation *)v28 crk_timingOutOperationWithTimerPrimitives:v29 operationQueue:v30 timerIdentifier:v31 timeout:a10];

  return v32;
}

+ (id)fetchOperationTimerIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromClass(a1);
  v4 = [v2 stringWithFormat:@"%@-certificateFetchTimer", v3];

  return v4;
}

@end