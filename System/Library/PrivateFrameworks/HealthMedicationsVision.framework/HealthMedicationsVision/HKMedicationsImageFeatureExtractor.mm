@interface HKMedicationsImageFeatureExtractor
- (HKMedicationsImageFeatureExtractor)init;
- (void)extractFeaturesFrom:(id)a3 completionHandler:(id)a4;
@end

@implementation HKMedicationsImageFeatureExtractor

- (HKMedicationsImageFeatureExtractor)init
{
  v5.receiver = self;
  v5.super_class = HKMedicationsImageFeatureExtractor;
  v2 = [(HKMedicationsImageFeatureExtractor *)&v5 init];
  if (v2)
  {
    v3 = objc_alloc_init(HKMedicationsTextNDCParser);
    [(HKMedicationsImageFeatureExtractor *)v2 setNdcParser:v3];
  }

  return v2;
}

- (void)extractFeaturesFrom:(id)a3 completionHandler:(id)a4
{
  v45[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v36 = a4;
  v7 = objc_alloc(MEMORY[0x277CE2D50]);
  v37 = v6;
  v8 = [v7 initWithCIImage:v6 options:MEMORY[0x277CBEC10]];
  v9 = objc_alloc_init(MEMORY[0x277CE2DB0]);
  [v9 setMaximumCandidateCount:1];
  [v9 setUsesLanguageCorrection:1];
  [v9 setRecognitionLanguages:&unk_2863C5970];
  v10 = objc_alloc_init(MEMORY[0x277CE2C58]);
  v11 = *MEMORY[0x277CE2E90];
  v45[0] = *MEMORY[0x277CE2E98];
  v45[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  [v10 setSymbologies:v12];

  v44[0] = v9;
  v44[1] = v10;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
  v42 = 0;
  v35 = v8;
  [v8 performRequests:v13 error:&v42];
  v34 = v42;

  v14 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v16 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v32 = [v9 results];
  v17 = HKTextBlockFromDocumentsClosestToPoint(2, v32, 0.5, 0.5);
  v18 = [v17 getTranscript];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [v17 getTranscript];
    [v14 addObject:v20];

    v21 = [(HKMedicationsImageFeatureExtractor *)self ndcParser];
    v22 = [v17 getTranscript];
    v23 = [v21 parsedNDCCodeFromString:v22];

    if ([v23 length])
    {
      [v15 addObject:v23];
    }
  }

  v33 = v15;
  v24 = v14;
  v25 = [v10 results];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [HKMedicationsBarcodeNDCParser parsedNDCCodeFromBarcodeObservation:*(*(&v38 + 1) + 8 * i)];
        if ([v30 length])
        {
          [v16 addObject:v30];
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v27);
  }

  v36[2](v36, v24, v33, v16, v34);

  v31 = *MEMORY[0x277D85DE8];
}

@end