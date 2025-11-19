@interface HMIFaceUtilities
+ (BOOL)isValidFaceCrop:(id)a3;
+ (BOOL)saveFaceClassifications:(id)a3 videoId:(id)a4 fragmentId:(unint64_t)a5 frameId:(id)a6 baseURL:(id)a7 error:(id *)a8;
+ (BOOL)serializeJSONObject:(id)a3 url:(id)a4 error:(id *)a5;
+ (CGRect)absoluteFaceBoxFromPhotosFaceCropImageData:(id)a3;
+ (CGRect)faceBoundingBoxFromPhotosFaceCropData:(id)a3;
+ (CGSize)faceCropDimensionsFromFaceCrop:(id)a3 error:(id *)a4;
+ (id)croppedJpegDataFromFaceCrop:(id)a3;
+ (id)faceObservationFromFaceprint:(id)a3;
+ (id)faceObservationFromTorsoprint:(id)a3;
+ (id)faceObservationsFromFaceprintsForClustering:(id)a3;
+ (id)imageCreationOptions;
+ (id)mergedPersonEventsFromEvents:(id)a3;
+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)a3;
@end

@implementation HMIFaceUtilities

+ (id)faceObservationsFromFaceprintsForClustering:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    LODWORD(v7) = 0;
    v8 = *v21;
    do
    {
      v9 = 0;
      v7 = v7;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        v11 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:2 boundingBox:0.0 andAlignedBoundingBox:{0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0}];
        v12 = objc_alloc(MEMORY[0x277CE2CE0]);
        v13 = [v10 data];
        v14 = [v13 bytes];
        v15 = +[HMIFaceUtilities faceprintDefaultRevision];
        LODWORD(v16) = 1.0;
        v17 = [v12 initWithData:v14 elementCount:128 elementType:1 lengthInBytes:512 confidence:v15 requestRevision:v16];

        [v11 setFaceprint:v17];
        [v11 setFaceId:v7++];
        [v4 addObject:v11];

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)faceObservationFromTorsoprint:(id)a3
{
  v3 = MEMORY[0x277CE2CE0];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 data];

  v7 = [v6 bytes];
  LODWORD(v8) = 1.0;
  v9 = [v5 initWithData:v7 elementCount:128 elementType:1 lengthInBytes:512 confidence:3 requestRevision:v8];

  v10 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:3 boundingBox:0.0 andAlignedBoundingBox:{0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0}];
  [v10 setFaceprint:v9];

  return v10;
}

+ (id)faceObservationFromFaceprint:(id)a3
{
  v3 = MEMORY[0x277CE2CD0];
  v4 = a3;
  v5 = [v3 faceObservationWithRequestRevision:2 boundingBox:0.0 andAlignedBoundingBox:{0.0, 1.0, 1.0, 0.0, 0.0, 1.0, 1.0}];
  v6 = objc_alloc(MEMORY[0x277CE2CE0]);
  v7 = [v4 data];

  v8 = [v7 bytes];
  v9 = +[HMIFaceUtilities faceprintDefaultRevision];
  LODWORD(v10) = 1.0;
  v11 = [v6 initWithData:v8 elementCount:128 elementType:1 lengthInBytes:512 confidence:v9 requestRevision:v10];

  [v5 setFaceprint:v11];

  return v5;
}

+ (id)croppedJpegDataFromFaceCrop:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(HMIFaceprinter);
  v10 = 0;
  v5 = [(HMIFaceprinter *)v4 createFacePixelBufferFromFaceCrop:v3 error:&v10];

  if (v5)
  {
    LODWORD(v6) = 1.0;
    LODWORD(v7) = 1.0;
    v8 = [HMIVisionUtilities createJPEGDataFromPixelBuffer:v5 scale:0 encodeQuality:v6 error:v7];
    CVPixelBufferRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)mergedPersonEventsFromEvents:(id)a3
{
  v3 = a3;
  v4 = [v3 allObjects];
  v5 = [v4 na_filter:&__block_literal_global_22];

  v6 = [v3 allObjects];
  v49 = [v6 na_filter:&__block_literal_global_172];

  v7 = [v3 allObjects];
  v8 = [v7 na_filter:&__block_literal_global_175];

  v9 = [v3 na_filter:&__block_literal_global_178];

  v52 = [v9 mutableCopy];
  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [MEMORY[0x277CBEB38] dictionary];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_5;
  v85[3] = &unk_278753B00;
  v12 = v11;
  v86 = v12;
  v13 = v8;
  v87 = v13;
  v14 = v10;
  v88 = v14;
  [v5 enumerateObjectsUsingBlock:v85];
  v15 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v5, "count")}];
  v16 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v13, "count")}];
  v17 = [MEMORY[0x277CBEB38] dictionary];
  v18 = [v14 sortedArrayUsingComparator:?];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_7;
  v81[3] = &unk_278754770;
  v82 = v16;
  v19 = v17;
  v83 = v19;
  v20 = v13;
  v84 = v20;
  v51 = v16;
  [v18 na_each:v81];

  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_8;
  v76[3] = &unk_278754798;
  v21 = v19;
  v77 = v21;
  v22 = v5;
  v78 = v22;
  v23 = v20;
  v79 = v23;
  v24 = v15;
  v80 = v24;
  [v51 enumerateIndexesUsingBlock:v76];
  [v14 removeAllObjects];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_9;
  v71[3] = &unk_278754798;
  v47 = v21;
  v72 = v47;
  v25 = v12;
  v73 = v25;
  v26 = v49;
  v74 = v26;
  v75 = v14;
  v50 = v14;
  [v24 enumerateIndexesUsingBlock:v71];
  v27 = [MEMORY[0x277CBEB38] dictionary];
  v28 = [MEMORY[0x277CBEB38] dictionary];
  v29 = [MEMORY[0x277CCAB58] indexSetWithIndexesInRange:{0, objc_msgSend(v26, "count")}];
  v30 = [v50 sortedArrayUsingComparator:&__block_literal_global_2];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_11;
  v65[3] = &unk_2787547C0;
  v31 = v24;
  v66 = v31;
  v67 = v29;
  v32 = v27;
  v68 = v32;
  v33 = v26;
  v69 = v33;
  v34 = v28;
  v70 = v34;
  v35 = v29;
  [v30 na_each:v65];

  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_12;
  v58[3] = &unk_2787547E8;
  v59 = v34;
  v60 = v33;
  v36 = v32;
  v61 = v36;
  v62 = v22;
  v63 = v23;
  v64 = v31;
  v37 = v31;
  v38 = v23;
  v48 = v22;
  v39 = v33;
  v40 = v34;
  [v35 enumerateIndexesUsingBlock:v58];
  v53[0] = MEMORY[0x277D85DD0];
  v53[1] = 3221225472;
  v53[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_13;
  v53[3] = &unk_278754798;
  v54 = v25;
  v55 = v47;
  v56 = v36;
  v57 = v52;
  v41 = v52;
  v42 = v36;
  v43 = v47;
  v44 = v25;
  [v37 enumerateIndexesUsingBlock:v53];
  v45 = [v41 copy];

  return v45;
}

BOOL __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  if (v3 == objc_opt_class() || (v4 = objc_opt_class(), v4 == objc_opt_class()))
  {
    v6 = 0;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 != objc_opt_class();
  }

  return v6;
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [v6 setObject:v5 forKeyedSubscript:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_6;
  v10[3] = &unk_278754748;
  v11 = v5;
  v8 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = a3;
  v9 = v5;
  [v8 enumerateObjectsUsingBlock:v10];
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_6(uint64_t a1, void *a2, uint64_t a3)
{
  v35 = a2;
  [*(a1 + 32) boundingBox];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v35 boundingBox];
  HMICGRectIntersectionOverArea(v6, v8, v10, v12, v13, v14, v15, v16);
  if (v17 > 0.7)
  {
    [*(a1 + 32) boundingBox];
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    [v35 boundingBox];
    HMICGRectIntersectionOverUnion(v19, v21, v23, v25, v26, v27, v28, v29);
    LODWORD(v19) = v30;
    v31 = *(a1 + 40);
    v32 = [HMIPairwiseMatch alloc];
    LODWORD(v33) = LODWORD(v19);
    v34 = [(HMIPairwiseMatch *)v32 initWithFirstIndex:*(a1 + 48) secondIndex:a3 score:v33];
    [v31 addObject:v34];
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_7(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v9, "secondIndex")}])
  {
    v3 = *(a1 + 40);
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "firstIndex")}];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (!v5)
    {
      [*(a1 + 32) removeIndex:{objc_msgSend(v9, "secondIndex")}];
      v6 = [*(a1 + 48) objectAtIndexedSubscript:{objc_msgSend(v9, "secondIndex")}];
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v9, "firstIndex")}];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }
  }
}

uint64_t __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 48) objectAtIndexedSubscript:a2];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 40), "count") + a2}];
  [v5 setObject:v4 forKeyedSubscript:v6];

  v7 = *(a1 + 56);
  v8 = [*(a1 + 40) count] + a2;

  return [v7 addIndex:v8];
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_9(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = 32;
  if (!v6)
  {
    v7 = 40;
  }

  v8 = *(a1 + v7);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v10 = [v8 objectForKeyedSubscript:v9];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_10;
  v13[3] = &unk_278754748;
  v14 = v10;
  v11 = *(a1 + 48);
  v15 = *(a1 + 56);
  v16 = a2;
  v12 = v10;
  [v11 enumerateObjectsUsingBlock:v13];
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 boundingBox];
  MinX = CGRectGetMinX(v26);
  [*(a1 + 32) boundingBox];
  MinY = CGRectGetMinY(v27);
  [*(a1 + 32) boundingBox];
  Width = CGRectGetWidth(v28);
  [*(a1 + 32) boundingBox];
  v10 = CGRectGetHeight(v29) * 0.4;
  [v6 boundingBox];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  HMICGRectIntersectionOverArea(v12, v14, v16, v18, MinX, MinY, Width, v10);
  if (v19 > 0.0)
  {
    v20 = v19;
    v21 = *(a1 + 40);
    v22 = [HMIPairwiseMatch alloc];
    *&v23 = v20;
    v24 = [(HMIPairwiseMatch *)v22 initWithFirstIndex:*(a1 + 48) secondIndex:a3 score:v23];
    [v21 addObject:v24];
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_11(uint64_t a1, void *a2)
{
  v15 = a2;
  if ([*(a1 + 32) containsIndex:{objc_msgSend(v15, "firstIndex")}])
  {
    if ([*(a1 + 40) containsIndex:{objc_msgSend(v15, "secondIndex")}])
    {
      v3 = *(a1 + 48);
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "firstIndex")}];
      v5 = [v3 objectForKeyedSubscript:v4];

      if (!v5)
      {
        [*(a1 + 40) removeIndex:{objc_msgSend(v15, "secondIndex")}];
        v10 = [*(a1 + 56) objectAtIndexedSubscript:{objc_msgSend(v15, "secondIndex")}];
        v14 = *(a1 + 48);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "firstIndex")}];
        [v14 setObject:v10 forKeyedSubscript:v11];
        goto LABEL_8;
      }
    }

    if ([*(a1 + 40) containsIndex:{objc_msgSend(v15, "secondIndex")}])
    {
      v6 = *(a1 + 64);
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "secondIndex")}];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (!v8)
      {
        v9 = *(a1 + 48);
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "firstIndex")}];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = *(a1 + 64);
        v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "secondIndex")}];
        [v12 setObject:v11 forKeyedSubscript:v13];

LABEL_8:
      }
    }
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_12(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6 || (v7 = *(a1 + 32), [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "boundingBox"), v14 = HMICGRectArea(v10, v11, v12, v13), v9, v8, objc_msgSend(*(a1 + 40), "objectAtIndexedSubscript:", a2), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "boundingBox"), v20 = HMICGRectArea(v16, v17, v18, v19), v15, v20 * 9.0 >= v14))
  {
    v21 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    v22 = *(a1 + 48);
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 56), "count") + a2 + objc_msgSend(*(a1 + 64), "count")}];
    [v22 setObject:v21 forKeyedSubscript:v23];

    v24 = *(a1 + 72);
    v25 = [*(a1 + 56) count];
    v26 = v25 + a2 + [*(a1 + 64) count];

    [v24 addIndex:v26];
  }
}

void __49__HMIFaceUtilities_mergedPersonEventsFromEvents___block_invoke_13(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v16 = [v4 objectForKeyedSubscript:v5];

  v6 = *(a1 + 40);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v8 = [v6 objectForKeyedSubscript:v7];

  v9 = *(a1 + 48);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v11 = [v9 objectForKeyedSubscript:v10];

  if (v16)
  {
    v12 = [HMIVideoAnalyzerEventPerson alloc];
    v13 = [v16 confidence];
    [v16 boundingBox];
    v14 = [(HMIVideoAnalyzerEventPerson *)v12 initWithConfidence:v13 boundingBox:v11 face:v8 torso:?];

    if (!v14)
    {
      goto LABEL_15;
    }

LABEL_14:
    [*(a1 + 56) addObject:v14];

    goto LABEL_15;
  }

  if (v11 && v8)
  {
    v15 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:v11 torso:v8];
    goto LABEL_13;
  }

  if (v11 && !v8)
  {
    v15 = [[HMIVideoAnalyzerEventPerson alloc] initWithFaceEvent:v11];
    goto LABEL_13;
  }

  if (!v11 && v8)
  {
    v15 = [[HMIVideoAnalyzerEventPerson alloc] initWithTorsoEvent:v8];
LABEL_13:
    v14 = v15;
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_15:
}

+ (BOOL)saveFaceClassifications:(id)a3 videoId:(id)a4 fragmentId:(unint64_t)a5 frameId:(id)a6 baseURL:(id)a7 error:(id *)a8
{
  v100 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v78 = a4;
  v77 = a6;
  v13 = a7;
  v14 = [MEMORY[0x277CCAA00] defaultManager];
  v15 = [v13 path];
  v92 = 0;
  LOBYTE(a4) = [v14 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v92];
  v16 = v92;

  if (a4)
  {
    v65 = a8;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = v12;
    v70 = [obj countByEnumeratingWithState:&v88 objects:v99 count:16];
    if (!v70)
    {
      v54 = 1;
      goto LABEL_35;
    }

    v68 = *v89;
    v69 = v13;
    v67 = v12;
LABEL_4:
    v17 = 0;
    v18 = v16;
    while (1)
    {
      v84 = v18;
      if (*v89 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v88 + 1) + 8 * v17);
      v98[0] = @"0.1";
      v97[0] = @"version";
      v97[1] = @"personUUID";
      v82 = [v19 personUUID];
      if (v82)
      {
        v74 = [v19 personUUID];
        v20 = [v74 UUIDString];
        v72 = v20;
      }

      else
      {
        v20 = [MEMORY[0x277CBEB68] null];
        v76 = v20;
      }

      v98[1] = v20;
      v97[2] = @"sourceUUID";
      v21 = [v19 sourceUUID];
      v80 = v17;
      if (v21)
      {
        v75 = [v19 sourceUUID];
        v22 = [v75 UUIDString];
        v73 = v22;
        v23 = v79;
      }

      else
      {
        v22 = [MEMORY[0x277CBEB68] null];
        v23 = v22;
      }

      v98[2] = v22;
      v97[3] = @"faceCropUUID";
      v24 = [v19 faceCrop];
      v25 = [v24 UUID];
      v26 = [v25 UUIDString];
      v98[3] = v26;
      v97[4] = @"faceprintUUID";
      v27 = [v19 faceprint];
      v28 = [v27 UUID];
      v29 = [v28 UUIDString];
      v98[4] = v29;
      v97[5] = @"confidence";
      v30 = MEMORY[0x277CCABB0];
      v85 = v19;
      [v19 confidence];
      v31 = [v30 numberWithDouble:?];
      v98[5] = v31;
      v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v98 forKeys:v97 count:6];

      v32 = v23;
      if (v21)
      {

        v32 = v75;
      }

      v79 = v23;

      v33 = v76;
      if (v82)
      {

        v33 = v74;
      }

      v83 = MEMORY[0x277CCACA8];
      v81 = [v77 intValue];
      v34 = [v19 UUID];
      v35 = v34 ? @"known" : @"unknown";
      v36 = [v19 faceCrop];
      v37 = [v36 UUID];
      v38 = [v37 UUIDString];
      v39 = [v38 substringToIndex:8];
      v40 = [v19 sourceUUID];
      v41 = [v40 UUIDString];
      v42 = [v41 substringToIndex:8];
      v43 = [v83 stringWithFormat:@"%@-%03lu-%03u-%@-%@-%@", v78, a5, v81, v35, v39, v42];

      v13 = v69;
      v44 = [v69 URLByAppendingPathComponent:v43];
      v45 = [v44 URLByAppendingPathExtension:@"json"];
      v87 = v84;
      v46 = v86;
      LOBYTE(v42) = [HMIFaceUtilities serializeJSONObject:v86 url:v45 error:&v87];
      v16 = v87;

      if ((v42 & 1) == 0)
      {
        break;
      }

      v47 = [v85 faceCrop];
      v48 = [v47 dataRepresentation];
      v49 = [v44 URLByAppendingPathExtension:@"jpg"];
      v50 = [v48 writeToURL:v49 atomically:0];

      v12 = v67;
      if ((v50 & 1) == 0)
      {
        v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving face crop image to disk for face classification:%@", v85];
        v61 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:v60];
        v62 = v65;
        v46 = v86;
        if (!v65)
        {
          goto LABEL_33;
        }

LABEL_32:
        v63 = v61;
        *v62 = v61;
LABEL_33:
        HMIErrorLogC(v61);

        goto LABEL_34;
      }

      v51 = objc_autoreleasePoolPush();
      v52 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v53 = HMFGetLogIdentifier();
        *buf = 138543618;
        v94 = v53;
        v95 = 2112;
        v96 = v85;
        _os_log_impl(&dword_22D12F000, v52, OS_LOG_TYPE_INFO, "%{public}@Saved face classification:%@ to disk", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v51);
      v17 = v80 + 1;
      v18 = v16;
      if (v70 == v80 + 1)
      {
        v54 = 1;
        v70 = [obj countByEnumeratingWithState:&v88 objects:v99 count:16];
        if (v70)
        {
          goto LABEL_4;
        }

        goto LABEL_35;
      }
    }

    v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error saving metadata to disk for face classification:%@", v85];
    v61 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:v60 underlyingError:v16];
    v12 = v67;
    v62 = v65;
    if (v65)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  v55 = MEMORY[0x277CCACA8];
  v56 = [v13 path];
  v57 = [v55 stringWithFormat:@"Error creating directory:%@ to save face classifications", v56];

  obj = v57;
  v58 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1000 description:v57 underlyingError:v16];
  v46 = v58;
  if (a8)
  {
    v59 = v58;
    *a8 = v46;
  }

  HMIErrorLogC(v46);
LABEL_34:

  v54 = 0;
LABEL_35:

  return v54;
}

+ (BOOL)serializeJSONObject:(id)a3 url:(id)a4 error:(id *)a5
{
  v7 = a4;
  v18 = 0;
  v8 = [MEMORY[0x277CCAAA0] dataWithJSONObject:a3 options:3 error:&v18];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:4];
    v17 = v10;
    v12 = [v11 writeToURL:v7 atomically:1 encoding:4 error:&v17];
    v13 = v17;

    if ((v12 & 1) == 0)
    {
      if (a5)
      {
        v14 = v13;
        *a5 = v13;
      }

      HMIErrorLogC(v13);
    }

    v10 = v13;
  }

  else
  {
    if (a5)
    {
      v15 = v9;
      *a5 = v10;
    }

    HMIErrorLogC(v10);
    v12 = 0;
  }

  return v12;
}

+ (CGRect)faceBoundingBoxFromPhotosFaceCropData:(id)a3
{
  v3 = a3;
  [objc_opt_class() absoluteFaceBoxFromPhotosFaceCropImageData:v3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [objc_opt_class() faceCropDimensionsFromFaceCrop:v3 error:0];
  v13 = v12;
  v15 = v14;

  v26.origin.x = v5;
  v26.origin.y = v7;
  v26.size.width = v9;
  v26.size.height = v11;
  if (CGRectIsNull(v26))
  {
    return **&MEMORY[0x277CBF398];
  }

  if (v13 == *MEMORY[0x277CBF3A8] && v15 == *(MEMORY[0x277CBF3A8] + 8))
  {
    return **&MEMORY[0x277CBF398];
  }

  else
  {
    v33.origin.x = HMICGRectMakeWithSize();
    v33.origin.y = v17;
    v33.size.width = v18;
    v33.size.height = v19;
    v27.origin.x = v5;
    v27.origin.y = v7;
    v27.size.width = v9;
    v27.size.height = v11;
    v28 = CGRectIntersection(v27, v33);
    HMICGRectNormalizedFromPixel(v13, v15, v28.origin.x, v28.origin.y, v28.size.width, v28.size.height);
    x = v29.origin.x;
    y = v29.origin.y;
    width = v29.size.width;
    height = v29.size.height;
    v24 = CGRectGetWidth(v29) * 0.150000006 * 0.5;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v25 = CGRectGetHeight(v30) * 0.150000006 * 0.5;
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    return CGRectInset(v31, v24, v25);
  }
}

+ (BOOL)isValidFaceCrop:(id)a3
{
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [a1 newDictionaryPopulatedWithFaceCropDataFromImageData:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"PVFC_VER"];
    v10 = [v9 isEqualToNumber:&unk_2840750F0];
    if ((v10 & 1) != 0 || ([v8 objectForKeyedSubscript:@"PVFC_VER"], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToNumber:", &unk_284075108)))
    {
      v11 = [v8 objectForKeyedSubscript:@"PVFC_FB"];
      if (v11)
      {
        v12 = [v8 objectForKeyedSubscript:@"PVFC_CB"];
        v13 = v12 != 0;
      }

      else
      {
        v13 = 0;
      }

      if (v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_12:
    goto LABEL_13;
  }

  v13 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v6);
  return v13;
}

+ (CGRect)absoluteFaceBoxFromPhotosFaceCropImageData:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_opt_class() newDictionaryPopulatedWithFaceCropDataFromImageData:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"PVFC_FB"];
    v7 = v6;
    if (v6)
    {
      memset(&rect, 0, sizeof(rect));
      if (CGRectMakeWithDictionaryRepresentation(v6, &rect))
      {
        p_rect = &rect;
        v9 = *&rect.origin.y;
      }

      else
      {
        v15 = objc_autoreleasePoolPush();
        v16 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = HMFGetLogIdentifier();
          *buf = 138543362;
          v24 = v17;
          _os_log_impl(&dword_22D12F000, v16, OS_LOG_TYPE_ERROR, "%{public}@Couldn't convert face box dict to rect", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v15);
        p_rect = MEMORY[0x277CBF398];
        v9 = *(MEMORY[0x277CBF398] + 8);
      }

      v22 = v9;
      height = p_rect->size.height;
      x = p_rect->origin.x;
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        LODWORD(rect.origin.x) = 138543362;
        *(&rect.origin.x + 4) = v14;
        _os_log_impl(&dword_22D12F000, v13, OS_LOG_TYPE_ERROR, "%{public}@Face Box dict is null in photos metadata", &rect, 0xCu);
      }

      objc_autoreleasePoolPop(v12);
      x = *MEMORY[0x277CBF398];
      v22 = *(MEMORY[0x277CBF398] + 8);
      height = *(MEMORY[0x277CBF398] + 24);
    }
  }

  else
  {
    x = *MEMORY[0x277CBF398];
    v22 = *(MEMORY[0x277CBF398] + 8);
    height = *(MEMORY[0x277CBF398] + 24);
  }

  v19 = *(&v22 + 1);
  v18 = *&v22;
  v20 = x;
  v21 = height;
  result.size.height = v21;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v20;
  return result;
}

+ (CGSize)faceCropDimensionsFromFaceCrop:(id)a3 error:(id *)a4
{
  v18[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (([a1 isValidFaceCrop:v5] & 1) == 0)
  {
    v13 = @"the supplied data is not a facecrop";
    goto LABEL_7;
  }

  v7 = CGImageSourceCreateWithData(v5, [a1 imageCreationOptions]);
  v8 = v7;
  if (!v7)
  {
    v13 = @"could not create an image source";
LABEL_7:
    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  v17 = -1;
  v18[0] = 0;
  v16 = 0;
  if ((getImagePropertiesFromCGImageSource(v7, &v17, v18, &v16) & 1) == 0)
  {
    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not retrieve image properties" userInfo:0];
    objc_exception_throw(v15);
  }

  v9 = v18[0];
  v10 = v16;
  CFRelease(v8);
  objc_autoreleasePoolPop(v6);

  v11 = v9;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

+ (id)imageCreationOptions
{
  if (imageCreationOptions_onceToken != -1)
  {
    +[HMIFaceUtilities imageCreationOptions];
  }

  v3 = imageCreationOptions_kImageCreationOptions;

  return v3;
}

void __40__HMIFaceUtilities_imageCreationOptions__block_invoke()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CD3670];
  v4[0] = *MEMORY[0x277CD3618];
  v4[1] = v0;
  v5[0] = MEMORY[0x277CBEC28];
  v5[1] = MEMORY[0x277CBEC38];
  v1 = *MEMORY[0x277CD3648];
  v4[2] = *MEMORY[0x277CD3678];
  v4[3] = v1;
  v5[2] = MEMORY[0x277CBEC28];
  v5[3] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = imageCreationOptions_kImageCreationOptions;
  imageCreationOptions_kImageCreationOptions = v2;
}

+ (id)newDictionaryPopulatedWithFaceCropDataFromImageData:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  if (v3)
  {
    v5 = CGImageSourceCreateWithData(v3, 0);
    v6 = v5;
    if (!v5)
    {
      v22 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Could not create image source" userInfo:0];
      objc_exception_throw(v22);
    }

    v7 = CGImageSourceCopyMetadataAtIndex(v5, 0, 0);
    v8 = v7;
    if (!v7)
    {
      v23 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"No meta data exists on image" userInfo:0];
      objc_exception_throw(v23);
    }

    v9 = CGImageMetadataCopyStringValueWithPath(v7, 0, @"PVFC:PVFC");
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x277CCAAA0];
      v12 = [(__CFString *)v9 dataUsingEncoding:4];
      v13 = [v11 JSONObjectWithData:v12 options:1 error:0];
    }

    else
    {
      v17 = objc_autoreleasePoolPush();
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v24 = 138543362;
        v25 = v19;
        _os_log_impl(&dword_22D12F000, v18, OS_LOG_TYPE_ERROR, "%{public}@Metadata string is nil in photos face crop data", &v24, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      v13 = 0;
    }

    v20 = v6;
    CFRelease(v8);
    v16 = v13;
    if (v20)
    {
      CFRelease(v20);
    }
  }

  else
  {
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v24 = 138543362;
      v25 = v15;
      _os_log_impl(&dword_22D12F000, v14, OS_LOG_TYPE_ERROR, "%{public}@imageData is nil", &v24, 0xCu);
    }

    v16 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v16;
}

@end