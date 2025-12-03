@interface CRXFLitePrescriptionRecordCollector
- (CRXFLitePrescriptionRecordCollector)initWithDeviceModel:(id)model timeout:(double)timeout;
- (void)fetchPrescriptionRecordsWithCompletion:(id)completion;
@end

@implementation CRXFLitePrescriptionRecordCollector

- (CRXFLitePrescriptionRecordCollector)initWithDeviceModel:(id)model timeout:(double)timeout
{
  v5.receiver = self;
  v5.super_class = CRXFLitePrescriptionRecordCollector;
  return [(CRXFPrescriptionRecordCollector *)&v5 initWithDeviceModel:model timeout:timeout];
}

- (void)fetchPrescriptionRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__CRXFLitePrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke;
  v7[3] = &unk_278EA0798;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = CRXFLitePrescriptionRecordCollector;
  v5 = completionCopy;
  [(CRXFPrescriptionRecordCollector *)&v6 fetchPrescriptionRecordsWithCompletion:v7];
}

void __78__CRXFLitePrescriptionRecordCollector_fetchPrescriptionRecordsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v20 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        v11 = [CRXFLitePrescriptionRecord alloc];
        v12 = [v10 accPayload];
        v13 = [v10 enrollmentName];
        v14 = [v10 enrollmentDate];
        v15 = [v10 leftEyeRX];
        v16 = [v10 rightEyeRX];
        v17 = [(CRXFPrescriptionRecord *)v11 initWithACCPayload:v12 enrollmentName:v13 enrollmentDate:v14 leftEyeRX:v15 rightEyeRX:v16];

        [v5 addObject:v17];
        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v7);
  }

  (*(*(a1 + 32) + 16))();
  v18 = *MEMORY[0x277D85DE8];
}

@end