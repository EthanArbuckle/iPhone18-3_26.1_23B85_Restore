@interface CRXFHealthDataProvider
- (BOOL)isCloudSyncDisabledError:(id)a3;
- (CRXFHealthDataProvider)init;
- (CRXFHealthDataProvider)initWithDeviceModel:(id)a3;
- (id)createDiopterRangeWithMinimum:(double)a3 maximum:(double)a4;
- (id)createPrescriptionWithSphereRight:(double)a3 cylinderRight:(double)a4 axisRight:(unint64_t)a5 prismRight:(id)a6 sphereLeft:(double)a7 cylinderLeft:(double)a8 axisLeft:(unint64_t)a9 prismLeft:(id)a10 readerRange:(id)a11 accPayload:(id)a12 description:(id)a13 colorCode:(unint64_t)a14 lensTypeCode:(unint64_t)a15 serialNumber:(id)a16 issueDate:(id)a17;
- (id)createVisionPrismForVerticalAmount:(double)a3 verticalDirection:(unint64_t)a4 horizontalAmount:(double)a5 horizontalDirection:(unint64_t)a6 leftEye:(BOOL)a7;
- (id)updatePrescription:(id)a3 withMetadata:(id)a4 axisRight:(id)a5 axisLeft:(id)a6 prismRight:(id)a7 prismLeft:(id)a8;
- (void)deletePrescriptionsMatchingPredicate:(id)a3 completionQueue:(id)a4 completion:(id)a5;
- (void)getSyncTimesWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)listPrescriptionsWithCompletionQueue:(id)a3 completion:(id)a4;
- (void)updateWithAddedPrescriptions:(id)a3 deletedPrescriptions:(id)a4 completionQueue:(id)a5 completion:(id)a6;
@end

@implementation CRXFHealthDataProvider

- (CRXFHealthDataProvider)init
{
  v3 = +[CRXUSystemInfo sharedInstance];
  v4 = [v3 modelName];
  v5 = [(CRXFHealthDataProvider *)self initWithDeviceModel:v4];

  return v5;
}

- (CRXFHealthDataProvider)initWithDeviceModel:(id)a3
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v29.receiver = self;
  v29.super_class = CRXFHealthDataProvider;
  v6 = [(CRXFHealthDataProvider *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v8 = CRXFLoggingSubsystem;
    ClassName = object_getClassName(v6);
    v10 = os_log_create(v8, ClassName);
    log = v7->_log;
    v7->_log = v10;

    objc_storeStrong(&v7->_deviceModel, a3);
    v12 = [MEMORY[0x277CCAC80] scannerWithString:v5];
    v13 = [MEMORY[0x277CCA900] decimalDigitCharacterSet];
    v28 = 0;
    v14 = [v12 scanUpToCharactersFromSet:v13 intoString:&v28];
    v15 = v28;

    deviceModel = v15;
    if ((v14 & 1) == 0)
    {
      deviceModel = v7->_deviceModel;
    }

    objc_storeStrong(&v7->_deviceModelPrefix, deviceModel);
    v17 = [MEMORY[0x277CCD8D8] visionPrescriptionType];
    sampleType = v7->_sampleType;
    v7->_sampleType = v17;

    v19 = [MEMORY[0x277CCD838] predicateForObjectsWithMetadataKey:*MEMORY[0x277CCE120]];
    samplePredicate = v7->_samplePredicate;
    v7->_samplePredicate = v19;

    v21 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277CCCD50] ascending:1];
    v30[0] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    sortDescriptors = v7->_sortDescriptors;
    v7->_sortDescriptors = v22;

    v24 = objc_alloc_init(MEMORY[0x277CCD4D8]);
    healthStore = v7->_healthStore;
    v7->_healthStore = v24;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)createPrescriptionWithSphereRight:(double)a3 cylinderRight:(double)a4 axisRight:(unint64_t)a5 prismRight:(id)a6 sphereLeft:(double)a7 cylinderLeft:(double)a8 axisLeft:(unint64_t)a9 prismLeft:(id)a10 readerRange:(id)a11 accPayload:(id)a12 description:(id)a13 colorCode:(unint64_t)a14 lensTypeCode:(unint64_t)a15 serialNumber:(id)a16 issueDate:(id)a17
{
  v79[7] = *MEMORY[0x277D85DE8];
  v77 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a16;
  v28 = MEMORY[0x277CBEB38];
  deviceModel = self->_deviceModel;
  v30 = *MEMORY[0x277CCE120];
  v78[0] = *MEMORY[0x277CCE138];
  v78[1] = v30;
  v79[0] = deviceModel;
  v79[1] = v25;
  v76 = v25;
  v78[2] = *MEMORY[0x277CCE128];
  v31 = MEMORY[0x277CCABB0];
  v73 = a17;
  v71 = a10;
  v32 = a6;
  v33 = [v31 numberWithUnsignedInteger:a14];
  v79[2] = v33;
  v78[3] = *MEMORY[0x277CCE130];
  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a15];
  v35 = *MEMORY[0x277CCC4A8];
  v79[3] = v34;
  v79[4] = v26;
  v75 = v26;
  v36 = *MEMORY[0x277CCC520];
  v78[4] = v35;
  v78[5] = v36;
  v37 = [MEMORY[0x277CCAD78] UUID];
  v38 = [v37 UUIDString];
  v78[6] = *MEMORY[0x277CCC528];
  v79[5] = v38;
  v79[6] = &unk_285933BA8;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:v78 count:7];
  v40 = [v28 dictionaryWithDictionary:v39];

  if (v27)
  {
    [v40 setObject:v27 forKeyedSubscript:*MEMORY[0x277CCE140]];
  }

  v74 = v27;
  if (v77)
  {
    v41 = [v77 minimum];
    [v40 setObject:v41 forKeyedSubscript:@"_HKPrivateMetadataKeyVisionReaderStrengthRangeLow"];

    v42 = [v77 maximum];
    [v40 setObject:v42 forKeyedSubscript:@"_HKPrivateMetadataKeyVisionReaderStrengthRangeHigh"];
  }

  v43 = MEMORY[0x277CCD7E8];
  v44 = [MEMORY[0x277CCDAB0] diopterUnit];
  v45 = [v43 quantityWithUnit:v44 doubleValue:a3];

  v46 = MEMORY[0x277CCD7E8];
  v47 = [MEMORY[0x277CCDAB0] diopterUnit];
  v48 = [v46 quantityWithUnit:v47 doubleValue:a4];

  if (a5)
  {
    v49 = MEMORY[0x277CCD7E8];
    v50 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
    v51 = [v49 quantityWithUnit:v50 doubleValue:a5];
  }

  else
  {
    v51 = 0;
  }

  v68 = v51;
  v70 = v45;
  v52 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v45 cylinder:v48 axis:v51 addPower:0 vertexDistance:0 prism:v32 farPupillaryDistance:0 nearPupillaryDistance:0];

  v53 = MEMORY[0x277CCD7E8];
  v54 = [MEMORY[0x277CCDAB0] diopterUnit];
  v55 = [v53 quantityWithUnit:v54 doubleValue:a7];

  v56 = MEMORY[0x277CCD7E8];
  v57 = [MEMORY[0x277CCDAB0] diopterUnit];
  v58 = [v56 quantityWithUnit:v57 doubleValue:a8];

  if (a9)
  {
    v59 = MEMORY[0x277CCD7E8];
    v60 = [MEMORY[0x277CCDAB0] degreeAngleUnit];
    v61 = [v59 quantityWithUnit:v60 doubleValue:a9];
  }

  else
  {
    v61 = 0;
  }

  v62 = [objc_alloc(MEMORY[0x277CCD480]) initWithSphere:v55 cylinder:v58 axis:v61 addPower:0 vertexDistance:0 prism:v71 farPupillaryDistance:0 nearPupillaryDistance:0];

  v63 = MEMORY[0x277CCD488];
  v64 = [MEMORY[0x277CCD2E8] localDevice];
  v65 = [v63 prescriptionWithRightEyeSpecification:v52 leftEyeSpecification:v62 dateIssued:v73 expirationDate:0 device:v64 metadata:v40];

  v66 = *MEMORY[0x277D85DE8];

  return v65;
}

- (id)updatePrescription:(id)a3 withMetadata:(id)a4 axisRight:(id)a5 axisLeft:(id)a6 prismRight:(id)a7 prismLeft:(id)a8
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = MEMORY[0x277CBEB38];
  v19 = a4;
  v20 = [v13 metadata];
  v21 = [v18 dictionaryWithDictionary:v20];

  [v21 addEntriesFromDictionary:v19];
  v22 = *MEMORY[0x277CCC528];
  v23 = [v21 crxu_integerForKey:*MEMORY[0x277CCC528]];
  v24 = [MEMORY[0x277CCABB0] numberWithInteger:v23 + 1];
  v67 = v21;
  [v21 setObject:v24 forKeyedSubscript:v22];

  v25 = [v13 rightEye];
  v26 = [v13 leftEye];
  v27 = v17;
  v28 = v16;
  v68 = v15;
  v65 = v14;
  v66 = v27;
  if (v14 | v28)
  {
    v57 = objc_alloc(MEMORY[0x277CCD480]);
    v29 = [v25 sphere];
    [v25 cylinder];
    v62 = v60 = v14;
    if (!v14)
    {
      v60 = [v25 axis];
    }

    v30 = [v25 addPower];
    v31 = [v25 vertexDistance];
    v32 = v28;
    if (!v28)
    {
      v32 = [v25 prism];
    }

    v33 = [v25 farPupillaryDistance];
    v34 = [v25 nearPupillaryDistance];
    v35 = v57;
    v58 = v29;
    v36 = [v35 initWithSphere:v29 cylinder:v62 axis:v60 addPower:v30 vertexDistance:v31 prism:v32 farPupillaryDistance:v33 nearPupillaryDistance:v34];

    if (!v28)
    {
    }

    v14 = v65;
    v27 = v66;
    if (!v65)
    {
    }

    v25 = v36;
    v15 = v68;
  }

  if (v15 | v27)
  {
    v56 = v28;
    v55 = objc_alloc(MEMORY[0x277CCD480]);
    v63 = [v26 sphere];
    [v26 cylinder];
    v61 = v59 = v15;
    if (!v15)
    {
      v59 = [v26 axis];
    }

    v37 = [v26 addPower];
    v38 = [v26 vertexDistance];
    v39 = v27;
    v40 = v27;
    if (!v27)
    {
      v39 = [v26 prism];
    }

    v41 = [v26 farPupillaryDistance];
    v42 = [v26 nearPupillaryDistance];
    v43 = [v55 initWithSphere:v63 cylinder:v61 axis:v59 addPower:v37 vertexDistance:v38 prism:v39 farPupillaryDistance:v41 nearPupillaryDistance:v42];

    if (!v40)
    {
    }

    if (!v68)
    {
    }

    v26 = v43;
    v14 = v65;
    v28 = v56;
  }

  v44 = MEMORY[0x277CCD488];
  v45 = [v13 dateIssued];
  v46 = [v13 expirationDate];
  v47 = [v13 device];
  v48 = [v44 prescriptionWithRightEyeSpecification:v25 leftEyeSpecification:v26 dateIssued:v45 expirationDate:v46 device:v47 metadata:v67];

  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
  {
    [CRXFHealthDataProvider updatePrescription:v48 withMetadata:? axisRight:? axisLeft:? prismRight:? prismLeft:?];
  }

  v50 = [v13 sourceRevision];
  v51 = [v50 source];
  v52 = [v51 bundleIdentifier];
  [v48 _setSourceBundleIdentifier:v52];

  v53 = self->_log;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    [CRXFHealthDataProvider updatePrescription:v53 withMetadata:v48 axisRight:? axisLeft:? prismRight:? prismLeft:?];
  }

  return v48;
}

- (void)listPrescriptionsWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[CRXUDispatchQueue main];
  }

  v8 = objc_alloc(MEMORY[0x277CCD8D0]);
  sampleType = self->_sampleType;
  samplePredicate = self->_samplePredicate;
  sortDescriptors = self->_sortDescriptors;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__CRXFHealthDataProvider_listPrescriptionsWithCompletionQueue_completion___block_invoke;
  v15[3] = &unk_278EA0350;
  v15[4] = self;
  v16 = v6;
  v17 = v7;
  v12 = v7;
  v13 = v6;
  v14 = [v8 initWithSampleType:sampleType predicate:samplePredicate limit:0 sortDescriptors:sortDescriptors resultsHandler:v15];
  [(HKHealthStore *)self->_healthStore executeQuery:v14];
}

void __74__CRXFHealthDataProvider_listPrescriptionsWithCompletionQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    v27 = v8;
    v29 = v6;
    v30 = [MEMORY[0x277CBEB18] array];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v28 = v7;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v38;
      v31 = *MEMORY[0x277CCE138];
      do
      {
        v14 = 0;
        do
        {
          if (*v38 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v37 + 1) + 8 * v14);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 metadata];
            if (v16)
            {
              v17 = v16;
              v18 = [v15 metadata];
              v19 = [v18 objectForKeyedSubscript:v31];
              v20 = [v19 hasPrefix:*(*(a1 + 32) + 56)];

              if (v20)
              {
                [v30 addObject:v15];
              }
            }
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v12);
    }

    v7 = v28;
    v6 = v29;
    v9 = v27;
    v21 = v30;
  }

  else
  {
    if (!v8)
    {
      v9 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:365 userInfo:MEMORY[0x277CBEC10]];
    }

    v21 = 0;
  }

  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __74__CRXFHealthDataProvider_listPrescriptionsWithCompletionQueue_completion___block_invoke_2;
  v33[3] = &unk_278EA0328;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v35 = v9;
  v36 = v23;
  v34 = v21;
  v24 = v9;
  v25 = v21;
  [v22 dispatchAsync:v33];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)updateWithAddedPrescriptions:(id)a3 deletedPrescriptions:(id)a4 completionQueue:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v12)
  {
    v12 = +[CRXUDispatchQueue main];
  }

  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke;
  v36[3] = &unk_278EA0378;
  v14 = v12;
  v37 = v14;
  v38 = v13;
  v15 = v13;
  v16 = MEMORY[0x24C1A0F30](v36);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3;
  v31[3] = &unk_278EA03F0;
  v17 = v10;
  v32 = v17;
  v33 = self;
  v34 = v14;
  v18 = v16;
  v35 = v18;
  v19 = v14;
  v20 = MEMORY[0x24C1A0F30](v31);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3_117;
  v26[3] = &unk_278EA0440;
  v26[4] = self;
  v21 = v11;
  v27 = v21;
  v22 = v18;
  v29 = v22;
  v23 = v17;
  v28 = v23;
  v24 = v20;
  v30 = v24;
  v25 = MEMORY[0x24C1A0F30](v26);
  if ([v21 count])
  {
    v25[2](v25);
  }

  else if ([v23 count])
  {
    v24[2](v24);
  }

  else
  {
    (*(v22 + 2))(v22, 0);
  }
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_2;
  v7[3] = &unk_278E9FCB8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 dispatchAsync:v7];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CBEB38] dictionary];
  v2 = [[CRXUDispatchGroup alloc] initWithName:@"HealthSaveGroup"];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy_;
  v29[4] = __Block_byref_object_dispose_;
  v30 = 0;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v38 count:16];
  if (v3)
  {
    v5 = *v26;
    *&v4 = 136315650;
    v16 = v4;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [v7 _sourceBundleIdentifier];
        if (!v8)
        {
          v9 = [v7 sourceRevision];
          v10 = [v9 source];
          v8 = [v10 bundleIdentifier];
        }

        v11 = *(*(a1 + 40) + 8);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = v16;
          v33 = "[CRXFHealthDataProvider updateWithAddedPrescriptions:deletedPrescriptions:completionQueue:completion:]_block_invoke";
          v34 = 1024;
          v35 = 421;
          v36 = 2114;
          v37 = v8;
          _os_log_debug_impl(&dword_24732C000, v11, OS_LOG_TYPE_DEBUG, "%s @%d: Prescription to add has source bundle ID: %{public}@", buf, 0x1Cu);
          if (!v8)
          {
LABEL_13:
            v12 = *(*(a1 + 40) + 40);
            goto LABEL_14;
          }
        }

        else if (!v8)
        {
          goto LABEL_13;
        }

        v12 = [v18 objectForKeyedSubscript:v8];
        if (!v12)
        {
          v12 = objc_alloc_init(MEMORY[0x277CCD4D8]);
          [v12 setSourceBundleIdentifier:v8];
          [v12 resume];
          [v18 setObject:v12 forKeyedSubscript:v8];
        }

LABEL_14:
        [(CRXUDispatchGroup *)v2 enter];
        v31 = v7;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_114;
        v22[3] = &unk_278EA03A0;
        v24 = v29;
        v23 = v2;
        [v12 saveObjects:v13 withCompletion:v22];
      }

      v3 = [obj countByEnumeratingWithState:&v25 objects:v38 count:16];
    }

    while (v3);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_2_116;
  v19[3] = &unk_278EA03C8;
  v14 = *(a1 + 48);
  v20 = *(a1 + 56);
  v21 = v29;
  [(CRXUDispatchGroup *)v2 notifyOnQueue:v14 withBlock:v19];

  _Block_object_dispose(v29, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_114(uint64_t a1, char a2, void *a3)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0 && !*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = MEMORY[0x277CCA9B8];
    if (v5)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v17[0] = v5;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v9 = [v7 crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:440 userInfo:v8];
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;
    }

    else
    {
      v12 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:442 userInfo:MEMORY[0x277CBEC10]];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }
  }

  [*(a1 + 32) leave];

  v15 = *MEMORY[0x277D85DE8];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_3_117(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_4;
  v4[3] = &unk_278EA0418;
  v6 = *(a1 + 56);
  v5 = *(a1 + 48);
  v7 = *(a1 + 64);
  [v3 deleteObjects:v2 withCompletion:v4];
}

void __103__CRXFHealthDataProvider_updateWithAddedPrescriptions_deletedPrescriptions_completionQueue_completion___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5 && (a2 & 1) == 0)
  {
    v5 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:459 userInfo:MEMORY[0x277CBEC10]];
  }

  v7 = v5;
  if (v5)
  {
    v6 = *(*(a1 + 40) + 16);
LABEL_6:
    v6();
    goto LABEL_9;
  }

  if (![*(a1 + 32) count])
  {
    v6 = *(*(a1 + 40) + 16);
    goto LABEL_6;
  }

  (*(*(a1 + 48) + 16))();
LABEL_9:
}

- (void)deletePrescriptionsMatchingPredicate:(id)a3 completionQueue:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    v9 = +[CRXUDispatchQueue main];
  }

  healthStore = self->_healthStore;
  v12 = [MEMORY[0x277CCD720] visionPrescriptionType];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke;
  v15[3] = &unk_278EA0468;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v13 = v10;
  v14 = v9;
  [(HKHealthStore *)healthStore deleteObjectsOfType:v12 predicate:v8 withCompletion:v15];
}

void __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke_cold_1(v8, a3);
    if (v7)
    {
      goto LABEL_5;
    }
  }

  else if (v7)
  {
    goto LABEL_5;
  }

  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] crxf_errorWithCode:1 file:"/Library/Caches/com.apple.xbs/Sources/CorePrescription/CorePrescription/Health/CRXFHealthDataProvider.m" line:503 userInfo:MEMORY[0x277CBEC10]];
  }

LABEL_5:
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke_119;
  v12[3] = &unk_278E9FCB8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v13 = v7;
  v14 = v10;
  v11 = v7;
  [v9 dispatchAsync:v12];
}

- (void)getSyncTimesWithCompletionQueue:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v6 = +[CRXUDispatchQueue main];
  }

  if ([(CRXFHealthDataProvider *)self mockCloudSyncTimes])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __69__CRXFHealthDataProvider_getSyncTimesWithCompletionQueue_completion___block_invoke;
    v10[3] = &unk_278EA0490;
    v11 = v7;
    [v6 dispatchAsync:v10];
  }

  else
  {
    v8 = [[CRXFHealthCloudSyncObserver alloc] initWithQueue:v6 completion:v7];
    cloudSyncObserver = self->_cloudSyncObserver;
    self->_cloudSyncObserver = v8;

    [(CRXFHealthCloudSyncObserver *)self->_cloudSyncObserver startObservingHealthStore:self->_healthStore];
  }
}

uint64_t __69__CRXFHealthDataProvider_getSyncTimesWithCompletionQueue_completion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] crxu_now];
  v3 = *(*(a1 + 32) + 16);
  v4.n128_u64[0] = v2.n128_u64[0];

  return v3(v2, v4);
}

- (id)createVisionPrismForVerticalAmount:(double)a3 verticalDirection:(unint64_t)a4 horizontalAmount:(double)a5 horizontalDirection:(unint64_t)a6 leftEye:(BOOL)a7
{
  v7 = a7;
  if (!a4)
  {
    v11 = 1;
LABEL_5:
    v12 = MEMORY[0x277CCD7E8];
    v13 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
    v14 = [v12 quantityWithUnit:v13 doubleValue:a3];

    if (a6)
    {
      goto LABEL_6;
    }

LABEL_9:
    v15 = 4;
    goto LABEL_10;
  }

  if (a4 == 1)
  {
    v11 = 2;
    goto LABEL_5;
  }

  v11 = 0;
  v14 = 0;
  if (!a6)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (a6 == 1)
  {
    v15 = 3;
LABEL_10:
    v16 = MEMORY[0x277CCD7E8];
    v17 = [MEMORY[0x277CCDAB0] prismDiopterUnit];
    v18 = [v16 quantityWithUnit:v17 doubleValue:a5];

    goto LABEL_12;
  }

  v15 = 0;
  v18 = 0;
LABEL_12:
  if (v7)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = [objc_alloc(MEMORY[0x277CCDBD0]) initWithVerticalAmount:v14 verticalBase:v11 horizontalAmount:v18 horizontalBase:v15 eye:v19];

  return v20;
}

- (id)createDiopterRangeWithMinimum:(double)a3 maximum:(double)a4
{
  v6 = MEMORY[0x277CCD7E8];
  v7 = [MEMORY[0x277CCDAB0] diopterUnit];
  v8 = [v6 quantityWithUnit:v7 doubleValue:a3];

  v9 = MEMORY[0x277CCD7E8];
  v10 = [MEMORY[0x277CCDAB0] diopterUnit];
  v11 = [v9 quantityWithUnit:v10 doubleValue:a4];

  v12 = [objc_alloc(MEMORY[0x277CCD7F8]) initWithMinimum:v8 maximum:v11 isMinimumInclusive:1 isMaximumInclusive:1];

  return v12;
}

- (BOOL)isCloudSyncDisabledError:(id)a3
{
  v3 = a3;
  if ([v3 hk_isHealthKitErrorWithCode:701])
  {
    v4 = 1;
  }

  else if ([v3 hk_isHealthKitErrorWithCode:100])
  {
    v5 = [v3 description];
    v4 = [v5 containsString:@"Code=701"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updatePrescription:(void *)a1 withMetadata:(void *)a2 axisRight:axisLeft:prismRight:prismLeft:.cold.1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _sourceBundleIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_24732C000, v5, v6, "%s @%d: updatePrescription sourceBundleIdentifier: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)updatePrescription:(void *)a1 withMetadata:(void *)a2 axisRight:axisLeft:prismRight:prismLeft:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 _sourceBundleIdentifier];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2(&dword_24732C000, v5, v6, "%s @%d: sourceBundleID on derived RX set to %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __90__CRXFHealthDataProvider_deletePrescriptionsMatchingPredicate_completionQueue_completion___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:a2];
  v7[0] = 136315650;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(&dword_24732C000, v4, OS_LOG_TYPE_DEBUG, "%s @%d: Deleted %{public}@ HealthKit objects", v7, 0x1Cu);

  v6 = *MEMORY[0x277D85DE8];
}

@end