@interface BWFaceDetectionNode
- (BWFaceDetectionNode)initWithObjectMetadataIdentifiers:(id)a3 movieFileOutputMetadataIdentifierGroups:(id)a4;
- (CGRect)rectOfInterest;
- (__n128)_resetDetection;
- (uint64_t)_addDetectedObjectsInfo:(uint64_t)a3 detectedObjectsSource:(const void *)a4 toSampleBuffer:;
- (uint64_t)_addFacesArray:(const void *)a3 toSampleBuffer:;
- (uint64_t)_getEmptyMetadataSampleData;
- (uint64_t)append:(_DWORD *)a3 toBoxedData:(_DWORD *)a4 localIDs:(int)a5 isFace:;
- (uint64_t)localIDsForKey:(uint64_t)result;
- (void)_populateLocalIDsForCatBodiesWithFormatDescription:(uint64_t)a1;
- (void)_populateLocalIDsForCatHeadsWithFormatDescription:(uint64_t)a1;
- (void)_populateLocalIDsForDogBodiesWithFormatDescription:(uint64_t)a1;
- (void)_populateLocalIDsForDogHeadsWithFormatDescription:(uint64_t)a1;
- (void)_populateLocalIDsForFacesWithFormatDescription:(_DWORD *)a1;
- (void)_populateLocalIDsForHumanBodiesWithFormatDescription:(uint64_t)a1;
- (void)_populateLocalIDsForSalientObjectsWithFormatDescription:(uint64_t)a1;
- (void)_renderSampleBuffer:forBoxedMetadataOutput:withDetectedObjectsInfo:;
- (void)_renderSampleBufferForBoxedMetadataOutput:withDetectedObjectsInfo:;
- (void)_renderSampleBufferForBoxedMetadataOutput:withFaceArray:;
- (void)_renderSampleBufferWithLock:(uint64_t)a1 forInput:;
- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)a3;
- (void)setMetadataObjectOutputEnabled:(BOOL)a3;
- (void)setRectOfInterest:(CGRect)a3;
- (void)updateMetadataIdentifiers:(id)a3 rectOfInterest:(CGRect)a4 emitsEmptyObjectDetectionMetadata:(BOOL)a5;
@end

@implementation BWFaceDetectionNode

- (__n128)_resetDetection
{
  if (a1)
  {
    *(a1 + 480) = 0;
    v1 = MEMORY[0x1E6960C70];
    result = *MEMORY[0x1E6960C70];
    *(a1 + 408) = *MEMORY[0x1E6960C70];
    v3 = *(v1 + 16);
    *(a1 + 424) = v3;
    *(a1 + 432) = result;
    *(a1 + 448) = v3;
    *(a1 + 456) = result;
    *(a1 + 472) = v3;
    *(a1 + 496) = 0;
    *(a1 + 504) = 0;
    *(a1 + 240) = -1;
    *(a1 + 244) = -1;
  }

  return result;
}

- (BWFaceDetectionNode)initWithObjectMetadataIdentifiers:(id)a3 movieFileOutputMetadataIdentifierGroups:(id)a4
{
  v83.receiver = self;
  v83.super_class = BWFaceDetectionNode;
  v67 = [(BWNode *)&v83 init];
  if (!v67)
  {
    return 0;
  }

  v7 = [[BWNodeInput alloc] initWithMediaType:1835365473 node:v67];
  [(BWNode *)v67 addInput:v7];

  v67->_rectOfInterest.origin.x = 0.0;
  v67->_rectOfInterest.origin.y = 0.0;
  __asm { FMOV            V0.2D, #1.0 }

  v67->_rectOfInterest.size = _Q0;
  v67->_configurationLock._os_unfair_lock_opaque = 0;
  v67->_metadataObjectOutput = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v67];
  v41 = a3;
  [(BWNodeOutput *)v67->_metadataObjectOutput setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:a3]];
  [(BWNode *)v67 addOutput:v67->_metadataObjectOutput];
  v67->_localIDsForFaces_BE[0] = 0;
  v67->_localIDsForDetectedHumanBodies_BE[0] = 0;
  v67->_localIDsForDetectedCatHeads_BE[0] = 0;
  v67->_localIDsForDetectedCatBodies_BE[0] = 0;
  v67->_localIDsForDetectedDogHeads_BE[0] = 0;
  v67->_localIDsForDetectedDogBodies_BE[0] = 0;
  v67->_localIDsForDetectedSalientObjects_BE[0] = 0;
  v13 = [a4 count];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:v13];
  allocator = *MEMORY[0x1E695E480];
  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v13, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFAutorelease(theDict);
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v66 = [a4 countByEnumeratingWithState:&v79 objects:v78 count:16];
  if (!v66)
  {
    goto LABEL_5;
  }

  v63 = *v80;
  v73 = *MEMORY[0x1E6960388];
  v18 = *MEMORY[0x1E6960348];
  v19 = *MEMORY[0x1E6960338];
  v60 = *MEMORY[0x1E69602D0];
  v20 = *MEMORY[0x1E69628F8];
  v59 = *MEMORY[0x1E6962938];
  v21 = *MEMORY[0x1E6960298];
  v58 = *MEMORY[0x1E6962930];
  v77 = *MEMORY[0x1E6960248];
  v76 = *MEMORY[0x1E6960358];
  v75 = *MEMORY[0x1E6960360];
  v74 = *MEMORY[0x1E695E4C0];
  v57 = *MEMORY[0x1E6962940];
  v56 = *MEMORY[0x1E6960208];
  v55 = *MEMORY[0x1E6962948];
  v22 = *MEMORY[0x1E6960390];
  v54 = *MEMORY[0x1E69602D8];
  v53 = *MEMORY[0x1E6962950];
  v52 = *MEMORY[0x1E6962958];
  v71 = *MEMORY[0x1E6960378];
  v51 = *MEMORY[0x1E69602C8];
  v50 = *MEMORY[0x1E6962920];
  v49 = *MEMORY[0x1E6962928];
  v72 = *MEMORY[0x1E6960368];
  v48 = *MEMORY[0x1E69602C0];
  v47 = *MEMORY[0x1E6962910];
  v46 = *MEMORY[0x1E6962918];
  v70 = *MEMORY[0x1E6960398];
  v45 = *MEMORY[0x1E69602E0];
  v44 = *MEMORY[0x1E69629D0];
  v42 = v14;
  v43 = *MEMORY[0x1E69629C8];
  v23 = 0x1E695D000;
  obj = a4;
  v62 = *MEMORY[0x1E6960338];
  v68 = *MEMORY[0x1E6960298];
  do
  {
    v24 = 0;
    do
    {
      if (*v80 != v63)
      {
        objc_enumerationMutation(obj);
      }

      v69 = v24;
      v25 = *(*(&v79 + 1) + 8 * v24);
      formatDescriptionOut = 0;
      v26 = [MEMORY[0x1E695DF70] array];
      if ([v25 containsObject:v73])
      {
        v135[0] = v18;
        v135[1] = v19;
        v136[0] = v73;
        v136[1] = v60;
        v135[2] = v20;
        v132[0] = v18;
        v132[1] = v19;
        v133[0] = v59;
        v133[1] = v21;
        v134[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v133 forKeys:v132 count:2];
        v130[0] = v18;
        v130[1] = v19;
        v131[0] = v58;
        v131[1] = v77;
        v130[2] = v76;
        v128 = v75;
        v129 = v74;
        v131[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
        v134[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v131 forKeys:v130 count:3];
        v126[0] = v18;
        v126[1] = v19;
        v127[0] = v57;
        v127[1] = v56;
        v126[2] = v76;
        v124 = v75;
        v125 = v74;
        v127[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
        v134[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:3];
        v122[0] = v18;
        v122[1] = v19;
        v123[0] = v55;
        v123[1] = v56;
        v122[2] = v76;
        v14 = v42;
        v23 = 0x1E695D000uLL;
        v120 = v75;
        v21 = v68;
        v121 = v74;
        v123[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
        v134[3] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:3];
        v136[2] = [MEMORY[0x1E695DEC8] arrayWithObjects:v134 count:4];
        [v26 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v136, v135, 3)}];
      }

      if ([v25 containsObject:v22])
      {
        v118[0] = v18;
        v118[1] = v19;
        v119[0] = v22;
        v119[1] = v54;
        v118[2] = v20;
        v115[0] = v18;
        v115[1] = v19;
        v116[0] = v53;
        v116[1] = v21;
        v117[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:2];
        v113[0] = v18;
        v113[1] = v19;
        v114[0] = v52;
        v114[1] = v77;
        v113[2] = v76;
        v111 = v75;
        v112 = v74;
        v114[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v112 forKeys:&v111 count:1];
        v117[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:3];
        v119[2] = [*(v23 + 3784) arrayWithObjects:v117 count:2];
        [v26 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v119, v118, 3)}];
      }

      if ([v25 containsObject:v71])
      {
        v109[0] = v18;
        v109[1] = v19;
        v110[0] = v71;
        v110[1] = v51;
        v109[2] = v20;
        v106[0] = v18;
        v106[1] = v19;
        v107[0] = v50;
        v107[1] = v21;
        v108[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v107 forKeys:v106 count:2];
        v104[0] = v18;
        v104[1] = v19;
        v105[0] = v49;
        v105[1] = v77;
        v104[2] = v76;
        v102 = v75;
        v103 = v74;
        v105[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        v108[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:3];
        v110[2] = [*(v23 + 3784) arrayWithObjects:v108 count:2];
        [v26 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v110, v109, 3)}];
      }

      if ([v25 containsObject:v72])
      {
        v100[0] = v18;
        v100[1] = v19;
        v101[0] = v72;
        v101[1] = v48;
        v100[2] = v20;
        v97[0] = v18;
        v97[1] = v19;
        v98[0] = v47;
        v98[1] = v21;
        v99[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:2];
        v95[0] = v18;
        v95[1] = v19;
        v96[0] = v46;
        v96[1] = v77;
        v95[2] = v76;
        v93 = v75;
        v94 = v74;
        v96[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
        v99[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v96 forKeys:v95 count:3];
        v101[2] = [*(v23 + 3784) arrayWithObjects:v99 count:2];
        [v26 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v101, v100, 3)}];
      }

      if ([v25 containsObject:v70])
      {
        v91[0] = v18;
        v91[1] = v19;
        v92[0] = v70;
        v92[1] = v45;
        v91[2] = v20;
        v88[0] = v18;
        v88[1] = v19;
        v89[0] = v44;
        v89[1] = v21;
        v90[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v89 forKeys:v88 count:2];
        v86[0] = v18;
        v86[1] = v19;
        v87[0] = v43;
        v87[1] = v77;
        v86[2] = v76;
        v84 = v75;
        v85 = v74;
        v87[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v90[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:v86 count:3];
        v92[2] = [*(v23 + 3784) arrayWithObjects:v90 count:2];
        [v26 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v92, v91, 3)}];
      }

      if (CMMetadataFormatDescriptionCreateWithMetadataSpecifications(allocator, 0x6D656278u, v26, &formatDescriptionOut))
      {
        [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
        goto LABEL_49;
      }

      v27 = v18;
      v28 = v20;
      v29 = formatDescriptionOut;
      CFAutorelease(formatDescriptionOut);
      v30 = [[BWNodeOutput alloc] initWithMediaType:1835365473 node:v67];
      [(BWNodeOutput *)v30 setFormat:[BWMetadataFormat formatWithMetadataFormatDescription:v29]];
      [(BWNode *)v67 addOutput:v30];
      v31 = v14;
      [v14 addObject:v30];
      v32 = objc_alloc_init(BWBoxedOutputDetectionTimingInfo);
      CFDictionaryAddValue(theDict, v30, v32);

      if ([v25 containsObject:v73])
      {
        [BWFaceDetectionNode _populateLocalIDsForFacesWithFormatDescription:v67];
        if (v33)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
LABEL_49:

          return 0;
        }
      }

      if ([v25 containsObject:v22])
      {
        [BWFaceDetectionNode _populateLocalIDsForHumanBodiesWithFormatDescription:v67];
        if (v34)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:@"mdta/com.apple.quicktime.detected-cat-head"])
      {
        [BWFaceDetectionNode _populateLocalIDsForCatHeadsWithFormatDescription:v67];
        if (v35)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:v72])
      {
        [BWFaceDetectionNode _populateLocalIDsForCatBodiesWithFormatDescription:v67];
        if (v36)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:@"mdta/com.apple.quicktime.detected-dog-head"])
      {
        [BWFaceDetectionNode _populateLocalIDsForDogHeadsWithFormatDescription:v67];
        if (v37)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:v71])
      {
        [BWFaceDetectionNode _populateLocalIDsForDogBodiesWithFormatDescription:v67];
        if (v38)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      if ([v25 containsObject:v70])
      {
        [BWFaceDetectionNode _populateLocalIDsForSalientObjectsWithFormatDescription:v67];
        if (v39)
        {
          [BWFaceDetectionNode initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:];
          goto LABEL_49;
        }
      }

      v21 = v68;
      ++v24;
      v14 = v31;
      v20 = v28;
      v18 = v27;
      v19 = v62;
    }

    while (v66 != v69 + 1);
    a4 = obj;
    v40 = [obj countByEnumeratingWithState:&v79 objects:v78 count:16];
    v66 = v40;
  }

  while (v40);
LABEL_5:
  v15 = [v14 count];
  if (v15)
  {
    v15 = v14;
  }

  v67->_boxedMetadataOutputs = v15;
  v67->_detectionTimingInfoByBoxedOutput = theDict;
  v16 = [MEMORY[0x1E695DFA8] set];
  FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(v41, v16);
  v67->_enabledDetectedObjectTypes = v16;
  v67->_metadataObjectOutputEnabled = [v41 count] != 0;
  v67->_boxedMetadataOutputEnabled = [a4 count] != 0;
  v67->_emitsEmptyObjectDetectionMetadata = 0;
  *&v17 = [(BWFaceDetectionNode *)v67 _resetDetection].n128_u64[0];
  v67->_recordCollectionAtomIdentifier_BE = 1667592803;
  v67->_collectionItemsAtomIdentifier_BE = 1937008995;
  [(BWNode *)v67 setSupportsLiveReconfiguration:1, v17];
  [(BWNode *)v67 setSupportsPrepareWhileRunning:1];
  return v67;
}

- (void)dealloc
{
  emptyMetadataSampleData = self->_emptyMetadataSampleData;
  if (emptyMetadataSampleData)
  {
    CFRelease(emptyMetadataSampleData);
  }

  v4.receiver = self;
  v4.super_class = BWFaceDetectionNode;
  [(BWFanOutNode *)&v4 dealloc];
}

- (void)updateMetadataIdentifiers:(id)a3 rectOfInterest:(CGRect)a4 emitsEmptyObjectDetectionMetadata:(BOOL)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  os_unfair_lock_lock(&self->_configurationLock);
  v12 = [MEMORY[0x1E695DFA8] set];
  FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(a3, v12);
  if (![(NSSet *)self->_enabledDetectedObjectTypes isEqualToSet:v12])
  {

    self->_enabledDetectedObjectTypes = v12;
  }

  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 1.0;
  v20.size.height = 1.0;
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  v19 = CGRectIntersection(v18, v20);
  v13 = v19.origin.x;
  v14 = v19.origin.y;
  v15 = v19.size.width;
  v16 = v19.size.height;
  if (CGRectIsEmpty(v19))
  {
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
  }

  self->_rectOfInterest.origin.x = v13;
  self->_rectOfInterest.origin.y = v14;
  self->_rectOfInterest.size.width = v15;
  self->_rectOfInterest.size.height = v16;
  self->_metadataObjectOutputEnabled = [a3 count] != 0;
  self->_emitsEmptyObjectDetectionMetadata = a5;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setRectOfInterest:(CGRect)a3
{
  v10.origin.x = 0.0;
  v10.origin.y = 0.0;
  v10.size.width = 1.0;
  v10.size.height = 1.0;
  v9 = CGRectIntersection(a3, v10);
  x = v9.origin.x;
  y = v9.origin.y;
  width = v9.size.width;
  height = v9.size.height;
  if (CGRectIsEmpty(v9))
  {
    x = *MEMORY[0x1E695F058];
    y = *(MEMORY[0x1E695F058] + 8);
    width = *(MEMORY[0x1E695F058] + 16);
    height = *(MEMORY[0x1E695F058] + 24);
  }

  os_unfair_lock_lock(&self->_configurationLock);
  self->_rectOfInterest.origin.x = x;
  self->_rectOfInterest.origin.y = y;
  self->_rectOfInterest.size.width = width;
  self->_rectOfInterest.size.height = height;

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (CGRect)rectOfInterest
{
  x = self->_rectOfInterest.origin.x;
  y = self->_rectOfInterest.origin.y;
  width = self->_rectOfInterest.size.width;
  height = self->_rectOfInterest.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setMetadataObjectOutputEnabled:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_configurationLock);
  if (self->_metadataObjectOutputEnabled != v3)
  {
    self->_metadataObjectOutputEnabled = v3;
  }

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)setEmitsEmptyObjectDetectionMetadata:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_lock(&self->_configurationLock);
  if (self->_emitsEmptyObjectDetectionMetadata != v3)
  {
    self->_emitsEmptyObjectDetectionMetadata = v3;
  }

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)configurationWithID:(int64_t)a3 updatedFormat:(id)a4 didBecomeLiveForInput:(id)a5
{
  if (self->_metadataObjectOutputEnabled)
  {
    [(BWNodeOutput *)self->_metadataObjectOutput makeConfiguredFormatLive:a3];
  }

  if (self->_boxedMetadataOutputEnabled)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    boxedMetadataOutputs = self->_boxedMetadataOutputs;
    v7 = [(NSArray *)boxedMetadataOutputs countByEnumeratingWithState:&v12 objects:v11 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        v10 = 0;
        do
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(boxedMetadataOutputs);
          }

          [*(*(&v12 + 1) + 8 * v10++) makeConfiguredFormatLive];
        }

        while (v8 != v10);
        v8 = [(NSArray *)boxedMetadataOutputs countByEnumeratingWithState:&v12 objects:v11 count:16];
      }

      while (v8);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  os_unfair_lock_lock(&self->_configurationLock);
  [BWFaceDetectionNode _renderSampleBufferWithLock:? forInput:?];

  os_unfair_lock_unlock(&self->_configurationLock);
}

- (void)_populateLocalIDsForFacesWithFormatDescription:(_DWORD *)a1
{
  if (a1)
  {
    if (a1[62])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else if (OUTLINED_FUNCTION_12_51())
    {
      OUTLINED_FUNCTION_24_22();
      *(a1 + v3) = v2;
      a1[88] = a1[62];
      if (OUTLINED_FUNCTION_12_51())
      {
        OUTLINED_FUNCTION_24_22();
        OUTLINED_FUNCTION_10_54(v4);
        OUTLINED_FUNCTION_25_22();
        a1[89] = *(v5 + 4);
        if (OUTLINED_FUNCTION_12_51())
        {
          OUTLINED_FUNCTION_24_22();
          OUTLINED_FUNCTION_11_53(v6);
          OUTLINED_FUNCTION_25_22();
          a1[90] = *(v7 + 8);
          if (FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
          {
            OUTLINED_FUNCTION_24_22();
            *(a1 + v8 + 12) = v9;
            OUTLINED_FUNCTION_25_22();
            a1[91] = *(v10 + 12);
            if (FigMetadataFormatDescriptionGetLocalIDForMetadataIdentifyingFactors())
            {
              OUTLINED_FUNCTION_5_87();
              a1[66] = v11;
              OUTLINED_FUNCTION_25_22();
              a1[92] = *(v12 + 16);
            }
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForHumanBodiesWithFormatDescription:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 268))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51();
      if (v2)
      {
        *(a1 + 268) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51();
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51())
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v4);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForCatHeadsWithFormatDescription:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 280))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51();
      if (v2)
      {
        *(a1 + 280) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51();
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51())
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v4);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForCatBodiesWithFormatDescription:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 292))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51();
      if (v2)
      {
        *(a1 + 292) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51();
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51())
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v4);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForDogHeadsWithFormatDescription:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 304))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51();
      if (v2)
      {
        *(a1 + 304) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51();
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51())
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v4);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForDogBodiesWithFormatDescription:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 316))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51();
      if (v2)
      {
        *(a1 + 316) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51();
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51())
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v4);
          }
        }
      }
    }
  }
}

- (void)_populateLocalIDsForSalientObjectsWithFormatDescription:(uint64_t)a1
{
  if (a1)
  {
    if (*(a1 + 328))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_8();
      FigDebugAssert3();
    }

    else
    {
      v2 = OUTLINED_FUNCTION_12_51();
      if (v2)
      {
        *(a1 + 328) = bswap32(v2);
        v3 = OUTLINED_FUNCTION_12_51();
        if (v3)
        {
          OUTLINED_FUNCTION_10_54(bswap32(v3));
          if (OUTLINED_FUNCTION_12_51())
          {
            OUTLINED_FUNCTION_5_87();
            OUTLINED_FUNCTION_11_53(v4);
          }
        }
      }
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)a3 input:(id)a4
{
  *&v14 = [(BWFaceDetectionNode *)self _resetDetection].n128_u64[0];
  if (self->_metadataObjectOutputEnabled)
  {
    v6 = [(BWNodeOutput *)self->_metadataObjectOutput markEndOfLiveOutputForConfigurationID:a3, v14];
  }

  if (self->_boxedMetadataOutputEnabled)
  {
    boxedMetadataOutputs = self->_boxedMetadataOutputs;
    v16 = OUTLINED_FUNCTION_32_16(v6, v7, v8, v9, v10, v11, v12, v13, v28);
    if (v16)
    {
      v17 = v16;
      v18 = MEMORY[0];
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (MEMORY[0] != v18)
          {
            objc_enumerationMutation(boxedMetadataOutputs);
          }

          v20 = [*(8 * i) markEndOfLiveOutputForConfigurationID:a3];
        }

        v17 = OUTLINED_FUNCTION_32_16(v20, v21, v22, v23, v24, v25, v26, v27, v29);
      }

      while (v17);
    }
  }
}

- (void)_renderSampleBufferWithLock:(uint64_t)a1 forInput:
{
  if (a1)
  {
    OUTLINED_FUNCTION_84();
    v3 = v2;
    v130 = 0;
    if (v2)
    {
      v4 = v1;
      if (BWSampleBufferIsMarkerBuffer(v2))
      {
        OUTLINED_FUNCTION_6_78();
        v5 = *(v4 + 184);
        v6 = OUTLINED_FUNCTION_30_16();
        if (v6)
        {
          v7 = v6;
          v8 = *v129;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              OUTLINED_FUNCTION_13_1();
              if (v10 != v8)
              {
                objc_enumerationMutation(v5);
              }

              [*(v128 + 8 * i) emitSampleBuffer:v3];
            }

            v7 = OUTLINED_FUNCTION_30_16();
          }

          while (v7);
        }

        [*(v4 + 176) emitSampleBuffer:v3];
        [*(v4 + 16) emitSampleBuffer:v3];
        v11 = CMGetAttachment(v3, @"FileWriterAction", 0);
        if (v11)
        {
          v12 = v11;
          if (([v11 isEqualToString:0x1F21A9C70] & 1) == 0 && (objc_msgSend(v12, "isEqualToString:", 0x1F21A9C90) & 1) == 0)
          {
            v13 = [v12 isEqualToString:0x1F21A9C30];
            v14 = (v4 + 384);
            v15 = MEMORY[0x1E6960C70];
            if (v13)
            {
              CMSampleBufferGetPresentationTimeStamp(&v118.duration, v3);
              *v14 = *&v118.duration.value;
              epoch = v118.duration.epoch;
            }

            else
            {
              *v14 = *MEMORY[0x1E6960C70];
              epoch = *(v15 + 2);
            }

            *(v4 + 400) = epoch;
            v79 = *v15;
            *(v4 + 408) = *v15;
            v80 = *(v15 + 2);
            *(v4 + 424) = v80;
            *(v4 + 432) = v79;
            *(v4 + 448) = v80;
            v96 = v79;
            *(v4 + 456) = v79;
            *(v4 + 472) = v80;
            v124 = 0u;
            v125 = 0u;
            v126 = 0u;
            v127 = 0u;
            v81 = [*(v4 + 344) allValues];
            v82 = [v81 countByEnumeratingWithState:&v124 objects:v123 count:16];
            if (v82)
            {
              v84 = v82;
              v85 = *v125;
              do
              {
                v86 = 0;
                do
                {
                  if (*v125 != v85)
                  {
                    objc_enumerationMutation(v81);
                  }

                  v87 = *(*(&v124 + 1) + 8 * v86);
                  if (v87)
                  {
                    *(v87 + 8) = v96;
                    *(v87 + 24) = v80;
                    *(v87 + 32) = v96;
                    *(v87 + 48) = v80;
                    *(v87 + 56) = v96;
                    *(v87 + 72) = v80;
                    *(v87 + 80) = 0;
                  }

                  ++v86;
                }

                while (v84 != v86);
                v82 = OUTLINED_FUNCTION_1_18(v82, v83, &v124, v123);
                v84 = v82;
              }

              while (v82);
            }
          }
        }

        goto LABEL_69;
      }

      v17 = CMGetAttachment(v3, *off_1E798A3C8, 0);
      if (v17)
      {
        v18 = v17;
        v19 = [v17 objectForKeyedSubscript:*off_1E798B220];
        v20 = [v18 objectForKeyedSubscript:*off_1E798B218];
        v120 = 0.0;
        v121 = 0;
        __asm { FMOV            V0.2D, #1.0 }

        v122 = _Q0;
        if (!(v20 | v19) || (FigCFDictionaryGetCGRectIfPresent(), OUTLINED_FUNCTION_33(), !_ZF) || (memset(&v118, 0, sizeof(v118)), !CMSampleBufferGetSampleTimingInfoArray(v3, 1, &v118, 0)) && (OUTLINED_FUNCTION_15_40(), !CMSampleBufferCreate(v25, v26, v27, v28, v29, 0, 0, 1, &v118, 0, 0, &v130)))
        {
          v31 = *(&v122 + 1);
          v30 = *&v122;
          _ZF = *&v122 == 1.0 && *(&v122 + 1) == 1.0;
          if (_ZF)
          {
            v131.origin.x = 0.0;
            v131.origin.y = 0.0;
            v131.size.width = 1.0;
            v131.size.height = 1.0;
            v33 = !CGRectEqualToRect(*(v4 + 192), v131);
          }

          else
          {
            v33 = 1;
          }

          LODWORD(v95) = v33;
          v93 = v18;
          if ([v20 count])
          {
            v42 = [objc_msgSend(objc_msgSend(v20 "firstObject")];
            if (v42 > *(v4 + 496))
            {
              *(v4 + 496) = v42;
LABEL_34:
              if (LODWORD(v95))
              {
                v43 = OUTLINED_FUNCTION_18_36(v34, v35, v36, v37, v38, v39, v40, v41, *&sampleTimingArray, v90, *&sampleSizeArray, v92, *&v18, v94, v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&v114, *(&v114 + 1), *&v115, *(&v115 + 1), *&v116, *(&v116 + 1), *&v117, *(&v117 + 1), *&v118.duration.value, *&v118.duration.timescale, *&v118.duration.epoch, *&v118.presentationTimeStamp.value, *&v118.presentationTimeStamp.timescale, *&v118.presentationTimeStamp.epoch, *&v118.decodeTimeStamp.value, *&v118.decodeTimeStamp.timescale, *&v118.decodeTimeStamp.epoch, v119, v120);
                v51 = BWCreateCorrectedFacesArray(v20, v43, v44, v45, v46, v47, v48, v49, v50);
              }

              else
              {
                v51 = v20;
              }

              v53 = v51;
              OUTLINED_FUNCTION_33();
              if (_ZF && [*(v4 + 232) containsObject:*off_1E798ACB8])
              {
                v52 = [(BWFaceDetectionNode *)v4 _addFacesArray:v53 toSampleBuffer:v130];
              }

              else
              {
                v52 = 0;
              }

              OUTLINED_FUNCTION_33();
              if (_ZF && !v19)
              {
                OUTLINED_FUNCTION_3_19();
                [BWFaceDetectionNode _renderSampleBufferForBoxedMetadataOutput:withFaceArray:];
              }

              if (!v19)
              {
                goto LABEL_65;
              }

              goto LABEL_48;
            }
          }

          else
          {
            if (*(v4 + 240))
            {
              goto LABEL_34;
            }

            OUTLINED_FUNCTION_33();
            if (_ZF)
            {
              goto LABEL_34;
            }
          }

          v52 = 0;
          if (!v19)
          {
            goto LABEL_65;
          }

LABEL_48:
          v116 = 0u;
          v117 = 0u;
          v114 = 0u;
          v115 = 0u;
          v54 = [v19 allValues];
          v55 = [v54 countByEnumeratingWithState:&v114 objects:&v98 count:16];
          if (v55)
          {
            v56 = v55;
            v57 = *v115;
            v58 = *off_1E798B780;
            HIDWORD(v94) = v52;
LABEL_50:
            v59 = 0;
            while (1)
            {
              if (*v115 != v57)
              {
                objc_enumerationMutation(v54);
              }

              v60 = [objc_msgSend(*(*(&v114 + 1) + 8 * v59) objectForKeyedSubscript:{v58), "longLongValue"}];
              if (v60 > *(v4 + 504))
              {
                break;
              }

              if (v56 == ++v59)
              {
                v56 = OUTLINED_FUNCTION_21_10(v60, v61, &v114, &v98);
                v52 = HIDWORD(v94);
                if (v56)
                {
                  goto LABEL_50;
                }

                goto LABEL_65;
              }
            }

            *(v4 + 504) = v60;
            if ((LOBYTE(v95) & 1) != 0 || (OUTLINED_FUNCTION_33(), _ZF))
            {
              v78 = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v19, 1uLL);
              if (LODWORD(v95))
              {
                v70 = OUTLINED_FUNCTION_18_36(v62, v63, v64, v65, v66, v67, v68, v69, *&sampleTimingArray, v90, *&sampleSizeArray, v92, *&v93, v94, v95, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, *&v114, *(&v114 + 1), *&v115, *(&v115 + 1), *&v116, *(&v116 + 1), *&v117, *(&v117 + 1), *&v118.duration.value, *&v118.duration.timescale, *&v118.duration.epoch, *&v118.presentationTimeStamp.value, *&v118.presentationTimeStamp.timescale, *&v118.presentationTimeStamp.epoch, *&v118.decodeTimeStamp.value, *&v118.decodeTimeStamp.timescale, *&v118.decodeTimeStamp.epoch, v119, v120);
                BWCorrectRectanglesInDetectedObjectsInfo(v78, v70, v71, v72, v73, v74, v75, v76, v77);
              }
            }

            else
            {
              v78 = 0;
            }

            OUTLINED_FUNCTION_33();
            if (_ZF)
            {
              OUTLINED_FUNCTION_3_19();
              [BWFaceDetectionNode _renderSampleBufferForBoxedMetadataOutput:withDetectedObjectsInfo:];
            }

            OUTLINED_FUNCTION_33();
            v52 = HIDWORD(v94);
            if (!_ZF)
            {
              goto LABEL_65;
            }

            BWFilterDetectedObjectsInfoUsingSet(v78, *(v4 + 232));
            v88 = [objc_msgSend(v93 objectForKeyedSubscript:{*off_1E798B228), "intValue"}];
            if ((HIDWORD(v94) | [(BWFaceDetectionNode *)v4 _addDetectedObjectsInfo:v78 detectedObjectsSource:v88 toSampleBuffer:v130]))
            {
              goto LABEL_66;
            }

            goto LABEL_67;
          }

LABEL_65:
          if (v52)
          {
LABEL_66:
            [*(v4 + 16) emitSampleBuffer:v130];
          }

LABEL_67:
          if (v130)
          {
            CFRelease(v130);
          }

          goto LABEL_69;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
      }

      FigDebugAssert3();
    }

LABEL_69:
    OUTLINED_FUNCTION_81();
  }
}

- (uint64_t)_addFacesArray:(const void *)a3 toSampleBuffer:
{
  if (!a1)
  {
    return 0;
  }

  if (![a2 count] && !*(a1 + 240))
  {
    OUTLINED_FUNCTION_33();
    if (!v6)
    {
      return 0;
    }
  }

  v7 = 1;
  CMSetAttachment(a3, *off_1E798A378, a2, 1u);
  CMSetAttachment(a3, *off_1E798A380, [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(a2, "count")}], 1u);
  *(a1 + 240) = [a2 count];
  return v7;
}

- (void)_renderSampleBufferForBoxedMetadataOutput:withFaceArray:
{
  OUTLINED_FUNCTION_84();
  v104 = v2;
  sbuf = v1;
  obj = v3;
  if (!v0)
  {
    goto LABEL_54;
  }

  v4 = v0;
  OUTLINED_FUNCTION_6_78();
  v6 = *(v5 + 184);
  v8 = OUTLINED_FUNCTION_1_18(v5, v7, v147, v146);
  if (!v8)
  {
    goto LABEL_54;
  }

  v9 = v8;
  v10 = *v147[2];
  v11 = *MEMORY[0x1E6960388];
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      OUTLINED_FUNCTION_13_1();
      if (v13 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v14 = *(v147[1] + 8 * i);
      v15 = -[__CFArray containsObject:](CMMetadataFormatDescriptionGetIdentifiers([objc_msgSend(v14 "format")]), "containsObject:", v11);
      if (v15)
      {
        if (!v14)
        {
          goto LABEL_54;
        }

        v17 = [objc_msgSend(v14 "format")];
        v18 = [obj count];
        v19 = v18;
        v20 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
        if (!v18 && !*(v4 + 480) && ((*(v4 + 396) & 1) == 0 || (*(v4 + 468) & 1) != 0))
        {
          goto LABEL_54;
        }

        cf = 0;
        v144 = 0;
        x = *MEMORY[0x1E6960C70];
        y_low = *(MEMORY[0x1E6960C70] + 8);
        v101 = *(MEMORY[0x1E6960C70] + 16);
        if (v18 < 1)
        {
          EmptyMetadataSample = [(BWFaceDetectionNode *)v4 _getEmptyMetadataSampleData];
          if (!EmptyMetadataSample)
          {
            v69 = 0;
            cf = 0;
            goto LABEL_50;
          }

          v81 = CFRetain(EmptyMetadataSample);
          cf = v81;
          if (!v81)
          {
            goto LABEL_76;
          }

          v74 = v81;
          if (*(v4 + 444))
          {
            time = *(v4 + 408);
            OUTLINED_FUNCTION_8_60(v4 + 432);
            CMTimeAdd(&v132, &time, &rhs);
            x = v132.origin.x;
            y_high = HIDWORD(v132.origin.y);
            y_low = LODWORD(v132.origin.y);
            width = v132.size.width;
          }

          else if (*(v4 + 396) & 1) == 0 || (y_high = *(v4 + 396), (*(v4 + 420)) || (*(v4 + 468))
          {
            memset(&v132, 0, 24);
            CMTimeMake(&v132, *(v4 + 416) / 240, *(v4 + 416));
            if (!*&v132.origin.x)
            {
              *&v132.origin.x = 1;
            }

            OUTLINED_FUNCTION_8_60(v4 + 408);
            *&v128.value = v132.origin;
            v128.epoch = *&v132.size.width;
            CMTimeAdd(&time, &rhs, &v128);
            x = *&time.value;
            y_high = time.flags;
            y_low = time.timescale;
            width = *&time.epoch;
          }

          else
          {
            x = *(v4 + 384);
            y_low = *(v4 + 392);
            width = *(v4 + 400);
          }

          *(v4 + 424) = v101;
          v82 = *MEMORY[0x1E6960C70];
          *(v4 + 408) = *MEMORY[0x1E6960C70];
          *(v4 + 448) = v101;
          *(v4 + 432) = v82;
          OUTLINED_FUNCTION_14_42(456);
          goto LABEL_48;
        }

        v98 = v18;
        v21 = *(MEMORY[0x1E6960C70] + 12);
        v22 = 100 * v18;
        v23 = malloc_type_malloc(100 * v18, 0x9610EBD9uLL);
        v138 = 0u;
        v139 = 0u;
        v140 = 0u;
        v141 = 0u;
        v31 = OUTLINED_FUNCTION_28_18(v23, v24, v25, v26, v27, v28, v29, v30, sampleTimingArray, v86, sampleSizeArray, v90, v92, v94, v17, v98, v101, v104, sbuf, v108, v110, v112, v114, v116, v118, v23, obj, v123, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v128.value, *&v128.timescale, v128.epoch, v129, rhs.value, *&rhs.timescale, rhs.epoch, v131, *&v132.origin.x, *&v132.origin.y, *&v132.size.width, *&v132.size.height, v133, v134.value, *&v134.timescale, v134.epoch, time.value, *&time.timescale, time.epoch, v136, v137);
        v124 = v4;
        if (v31)
        {
          v36 = v31;
          v95 = 100 * v19;
          v37 = 0;
          v38 = 0;
          v109 = *off_1E798B780;
          v117 = *off_1E798B2B8;
          v115 = *off_1E798B5C0;
          v113 = *off_1E798B160;
          v111 = *off_1E798B168;
          v119 = *v139;
          v39 = *v139;
          width = *&v102;
          while (1)
          {
            if (v39 != v119)
            {
              objc_enumerationMutation(obja);
            }

            v41 = *(*(&v138 + 1) + 8 * v38);
            if ((v21 & 1) == 0)
            {
              v42 = [*(*(&v138 + 1) + 8 * v38) objectForKeyedSubscript:v109];
              if (v42)
              {
                [v42 longLongValue];
                v43 = FigHostTimeToNanoseconds();
                CMTimeMake(&time, v43, 1000000000);
                CMSampleBufferGetPresentationTimeStamp(&v134, sbufa);
                CMTimeConvertScale(&v132, &time, v134.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                x = v132.origin.x;
                v21 = HIDWORD(v132.origin.y);
                y_low = LODWORD(v132.origin.y);
                width = v132.size.width;
              }
            }

            v44 = v21;
            v45 = &v120[v37];
            v46 = [v41 objectForKeyedSubscript:v117];
            if (v46)
            {
              *(v45 + 6) = 201326592;
              *(v45 + 7) = *(v4 + 356);
              *(v45 + 8) = bswap32([v46 unsignedIntValue]);
              v47 = 36;
            }

            else
            {
              v47 = 24;
            }

            v48 = width;
            v49 = [v41 objectForKeyedSubscript:v115];
            if (v49)
            {
              v50 = &v45[v47];
              *v50 = 671088640;
              *(v50 + 1) = v124[90];
              memset(&v132, 0, sizeof(v132));
              if (!CGRectMakeWithDictionaryRepresentation(v49, &v132))
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_0();
                FigDebugAssert3();
                v69 = v120;
                goto LABEL_50;
              }

              v51 = v132.origin.x;
              v52.f64[0] = v132.origin.y;
              v52.f64[1] = v132.origin.x + v132.size.width;
              *(v50 + 12) = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v52), v52));
              v53.f64[0] = v52.f64[0] + v132.size.height;
              v53.f64[1] = v51;
              v54 = vrev32_s8(vcvt_f32_f64(v53));
              *(v50 + 2) = v54.i32[1];
              *(v50 + 28) = v54;
              *(v50 + 9) = v54.i32[0];
              v47 += 40;
            }

            v55 = [v41 objectForKeyedSubscript:v113];
            if (v55)
            {
              v56 = &v45[v47];
              *v56 = 201326592;
              *(v56 + 1) = v124[91];
              [v55 floatValue];
              OUTLINED_FUNCTION_26_24();
              *(v56 + 2) = v57;
              v47 += 12;
            }

            width = v48;
            v58 = [v41 objectForKeyedSubscript:v111];
            if (v58)
            {
              v66 = &v45[v47];
              *v66 = 201326592;
              v4 = v124;
              *(v66 + 1) = v124[92];
              [v58 floatValue];
              OUTLINED_FUNCTION_26_24();
              *(v66 + 2) = v67;
              v47 += 12;
            }

            else
            {
              v4 = v124;
            }

            *v45 = bswap32(v47);
            v37 += v47;
            *(v45 + 1) = *(v4 + 352);
            *(v45 + 2) = bswap32(v47 - 8);
            *(v45 + 3) = 1667592803;
            *(v45 + 4) = bswap32(v47 - 16);
            *(v45 + 5) = 1937008995;
            ++v38;
            v21 = v44;
            if (v38 >= v36)
            {
              v68 = OUTLINED_FUNCTION_28_18(v58, v59, v60, v61, v62, v63, v64, v65, sampleTimingArraya, v87, sampleSizeArraya, v91, v93, v95, v96, v99, v102, v105, sbufa, v109, v111, v113, v115, v117, v119, v120, obja, v124, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v128.value, *&v128.timescale, v128.epoch, v129, rhs.value, *&rhs.timescale, rhs.epoch, v131, *&v132.origin.x, *&v132.origin.y, *&v132.size.width, *&v132.size.height, v133, v134.value, *&v134.timescale, v134.epoch, time.value, *&time.timescale, time.epoch, v136, v137);
              if (!v68)
              {
                v22 = v95;
                goto LABEL_39;
              }

              v36 = v68;
              v38 = 0;
            }

            v39 = *v139;
          }
        }

        width = *&v102;
LABEL_39:
        v69 = v120;
        if (OUTLINED_FUNCTION_27_21(*MEMORY[0x1E695E480], v120, v22, *MEMORY[0x1E695E488], v32, v33, v34, v35, &cf))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_4_95();
          FigDebugAssert3();
LABEL_50:
          free(v69);
          if (cf)
          {
            CFRelease(cf);
          }

          if (v144)
          {
            CFRelease(v144);
          }

          goto LABEL_54;
        }

        if (v21)
        {
          if (*(v4 + 420))
          {
            OUTLINED_FUNCTION_22_26();
            HIDWORD(v132.origin.y) = v21;
            v73 = OUTLINED_FUNCTION_13_43(v72, sampleTimingArrayb, v87, sampleSizeArraya, v91, v93, v95, v96, v99, v102, v105, sbufa, v109, v111, v113, v115, v117, v119, v120, obja, v124, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v128.value, *&v128.timescale, v128.epoch, v129, rhs.value, *&rhs.timescale, rhs.epoch, v131, *&v132.origin.x, *&v132.origin.y, *&v132.size.width, *&v132.size.height, v133, v134.value, *&v134.timescale, v134.epoch, *&time.value, time.epoch);
            v17 = v97;
            LODWORD(v19) = v100;
            y_high = v21;
            v20 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
            if (v73 > 0)
            {
              *&time.value = x;
              time.timescale = y_low;
              time.flags = y_high;
              *&time.epoch = width;
              OUTLINED_FUNCTION_8_60(v4 + 408);
              CMTimeSubtract(&v132, &time, &rhs);
              *(v4 + 432) = v132.origin;
              *(v4 + 448) = v132.size.width;
              goto LABEL_47;
            }
          }

          else
          {
            v17 = v96;
            LODWORD(v19) = v99;
            y_high = v21;
            v20 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
            if ((*(v4 + 468) & 1) == 0)
            {
LABEL_47:
              OUTLINED_FUNCTION_14_42(408);
              v74 = cf;
LABEL_48:
              memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
              *&__dst.presentationTimeStamp.value = x;
              __dst.presentationTimeStamp.timescale = y_low;
              __dst.presentationTimeStamp.flags = y_high;
              *&__dst.presentationTimeStamp.epoch = width;
              DataLength = CMBlockBufferGetDataLength(v74);
              OUTLINED_FUNCTION_15_40();
              if (!CMSampleBufferCreate(v75, v76, v77, v78, v79, v17, 1, 1, &__dst, 1, &DataLength, &v144))
              {
                [v14 emitSampleBuffer:v144];
                v69 = 0;
                *(v4 + v20[691]) = v19;
                goto LABEL_50;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_4_95();
              goto LABEL_75;
            }

            OUTLINED_FUNCTION_22_26();
            HIDWORD(v132.origin.y) = y_high;
            if (OUTLINED_FUNCTION_13_43(v71, sampleTimingArrayb, v87, sampleSizeArraya, v91, v93, v95, v96, v99, v102, v105, sbufa, v109, v111, v113, v115, v117, v119, v120, obja, v124, DataLength, __dst.duration.value, *&__dst.duration.timescale, __dst.duration.epoch, __dst.presentationTimeStamp.value, *&__dst.presentationTimeStamp.timescale, __dst.presentationTimeStamp.epoch, __dst.decodeTimeStamp.value, *&__dst.decodeTimeStamp.timescale, __dst.decodeTimeStamp.epoch, v128.value, *&v128.timescale, v128.epoch, v129, rhs.value, *&rhs.timescale, rhs.epoch, v131, *&v132.origin.x, *&v132.origin.y, *&v132.size.width, *&v132.size.height, v133, v134.value, *&v134.timescale, v134.epoch, *&time.value, time.epoch) > 0)
            {
              *(v125 + 456) = *MEMORY[0x1E6960C70];
              *(v125 + 472) = v103;
              v4 = v125;
              goto LABEL_47;
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
LABEL_75:
        FigDebugAssert3();
LABEL_76:
        v69 = 0;
        goto LABEL_50;
      }
    }

    v9 = OUTLINED_FUNCTION_1_18(v15, v16, v147, v146);
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_54:
  OUTLINED_FUNCTION_81();
}

- (void)_renderSampleBufferForBoxedMetadataOutput:withDetectedObjectsInfo:
{
  OUTLINED_FUNCTION_84();
  v29 = v1;
  if (v1)
  {
    v2 = v0;
    v3 = OUTLINED_FUNCTION_6_78();
    obj = *(v29 + 184);
    v30 = [obj countByEnumeratingWithState:v47 objects:v46 count:{16, v3}];
    if (v30)
    {
      OUTLINED_FUNCTION_13_1();
      v28 = v4;
      v5 = *off_1E798ACB8;
      v40 = *off_1E798ACB0;
      v39 = *off_1E798AC98;
      v38 = *off_1E798AC90;
      v36 = *off_1E798ACA8;
      v35 = *off_1E798ACA0;
      v33 = *off_1E798ACD8;
      v32 = *MEMORY[0x1E6960398];
      v34 = *MEMORY[0x1E6960378];
      v37 = *MEMORY[0x1E6960368];
      v6 = *MEMORY[0x1E6960390];
      v7 = *MEMORY[0x1E6960388];
      do
      {
        v8 = 0;
        do
        {
          OUTLINED_FUNCTION_13_1();
          if (v9 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = v8;
          Identifiers = CMMetadataFormatDescriptionGetIdentifiers([objc_msgSend(*(v47[1] + 8 * v8) "format")]);
          v11 = [MEMORY[0x1E695DF90] dictionary];
          v42 = 0u;
          v43 = 0u;
          v44 = 0u;
          v45 = 0u;
          v13 = OUTLINED_FUNCTION_1_18(v11, v12, &v42, v41);
          if (v13)
          {
            v14 = v13;
            v15 = *v43;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v43 != v15)
                {
                  objc_enumerationMutation(v2);
                }

                v17 = *(*(&v42 + 1) + 8 * i);
                v18 = [v17 isEqualToString:v5];
                v19 = v7;
                if ((v18 & 1) == 0)
                {
                  v20 = [v17 isEqualToString:v40];
                  v19 = v6;
                  if ((v20 & 1) == 0)
                  {
                    v21 = [v17 isEqualToString:v39];
                    v19 = @"mdta/com.apple.quicktime.detected-cat-head";
                    if ((v21 & 1) == 0)
                    {
                      v22 = [v17 isEqualToString:v38];
                      v19 = v37;
                      if ((v22 & 1) == 0)
                      {
                        v23 = [v17 isEqualToString:v36];
                        v19 = @"mdta/com.apple.quicktime.detected-dog-head";
                        if ((v23 & 1) == 0)
                        {
                          v24 = [v17 isEqualToString:v35];
                          v19 = v34;
                          if ((v24 & 1) == 0)
                          {
                            if ([v17 isEqualToString:v33])
                            {
                              v19 = v32;
                            }

                            else
                            {
                              v19 = 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }

                v25 = [(__CFArray *)Identifiers containsObject:v19];
                if (v25)
                {
                  v25 = [v11 setObject:objc_msgSend(v2 forKeyedSubscript:{"objectForKeyedSubscript:", v17), v17}];
                }
              }

              v14 = OUTLINED_FUNCTION_1_18(v25, v26, &v42, v41);
            }

            while (v14);
          }

          [BWFaceDetectionNode _renderSampleBuffer:forBoxedMetadataOutput:withDetectedObjectsInfo:];
          v8 = v31 + 1;
        }

        while (v31 + 1 != v30);
        v30 = [obj countByEnumeratingWithState:v47 objects:v46 count:16];
      }

      while (v30);
    }
  }

  OUTLINED_FUNCTION_81();
}

- (uint64_t)_addDetectedObjectsInfo:(uint64_t)a3 detectedObjectsSource:(const void *)a4 toSampleBuffer:
{
  if (!a1)
  {
    return 0;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  v12 = *v20;
  v13 = *off_1E798ACE8;
  do
  {
    v14 = 0;
    do
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(a2);
      }

      v15 = [objc_msgSend(a2 objectForKeyedSubscript:{*(*(&v19 + 1) + 8 * v14)), "objectForKeyedSubscript:", v13}];
      if (v15)
      {
        v11 += [v15 count];
        v10 = 1;
      }

      ++v14;
    }

    while (v9 != v14);
    v9 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  }

  while (v9);
  if (v11 > 0)
  {
    goto LABEL_12;
  }

  if (*(a1 + 244))
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a1 + 230) & v10 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v16 = 1;
  CMSetAttachment(a4, *off_1E798A330, a2, 1u);
  *(a1 + 244) = v11;
  CMSetAttachment(a4, *off_1E798A338, [MEMORY[0x1E696AD98] numberWithInt:a3], 1u);
  return v16;
}

- (void)_renderSampleBuffer:forBoxedMetadataOutput:withDetectedObjectsInfo:
{
  OUTLINED_FUNCTION_84();
  sbuf = v3;
  if (!v0)
  {
    goto LABEL_68;
  }

  v4 = v2;
  v5 = v0;
  v66 = v1;
  formatDescription = [objc_msgSend(v1 "format")];
  v78 = v5;
  v68 = [*(v5 + 344) objectForKeyedSubscript:v66];
  v104 = 0;
  v105 = 0;
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v7 = OUTLINED_FUNCTION_21_10(v68, v6, &v98, v97);
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = 0;
    v11 = *v99;
    v12 = *off_1E798ACB8;
    v13 = *off_1E798ACE8;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v99 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v15 = *(*(&v98 + 1) + 8 * i);
        v16 = [v15 isEqualToString:v12];
        v17 = [objc_msgSend(objc_msgSend(v4 objectForKeyedSubscript:{v15), "objectForKeyedSubscript:", v13), "count"}];
        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v17;
        }

        v9 += v19;
        if (v16)
        {
          v10 = v17;
        }
      }

      v8 = OUTLINED_FUNCTION_21_10(v17, v18, &v98, v97);
    }

    while (v8);
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v20 = MEMORY[0x1E6960C70];
  v21 = *(MEMORY[0x1E6960C70] + 16);
  if (v10 + v9)
  {
    v65 = 76 * v9 + 100 * v10;
    v31 = malloc_type_malloc(v65, 0x66141102uLL);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v76 = OUTLINED_FUNCTION_21_10(v31, v32, &v93, v92);
    if (!v76)
    {
      goto LABEL_55;
    }

    v33 = 0;
    v34 = 0;
    flags = *(v20 + 12);
    v75 = *v94;
    v74 = *off_1E798B780;
    v73 = *off_1E798ACB8;
    v72 = *off_1E798ACE8;
    v64 = v21;
    epoch = v21;
    while (2)
    {
      v35 = 0;
      do
      {
        if (*v94 != v75)
        {
          objc_enumerationMutation(v4);
        }

        v36 = *(*(&v93 + 1) + 8 * v35);
        v37 = [objc_msgSend(v4 objectForKeyedSubscript:{v36), "objectForKeyedSubscript:", v74}];
        if (v37)
        {
          [v37 longLongValue];
          v38 = FigHostTimeToNanoseconds();
          CMTimeMake(&time, v38, 1000000000);
          CMSampleBufferGetPresentationTimeStamp(&v89, sbuf);
          CMTimeConvertScale(&time2, &time, v89.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          value = time2.value;
          flags = time2.flags;
          timescale = time2.timescale;
          epoch = time2.epoch;
        }

        v39 = [v36 isEqualToString:v73];
        v40 = [(BWFaceDetectionNode *)v78 localIDsForKey:v36];
        v77 = v35;
        if (*v40)
        {
          v42 = v40;
          v43 = [objc_msgSend(v4 objectForKeyedSubscript:{v36), "objectForKeyedSubscript:", v72}];
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v40 = [v43 countByEnumeratingWithState:&v85 objects:v84 count:16];
          if (v40)
          {
            v44 = v40;
            v45 = *v86;
LABEL_39:
            v46 = 0;
            v33 += v44;
            while (1)
            {
              if (*v86 != v45)
              {
                objc_enumerationMutation(v43);
              }

              v47 = [(BWFaceDetectionNode *)v78 append:&v31[v34] toBoxedData:v42 localIDs:v39 isFace:?];
              if (!v47)
              {
                goto LABEL_55;
              }

              v34 += v47;
              if (v44 == ++v46)
              {
                v40 = [v43 countByEnumeratingWithState:&v85 objects:v84 count:16];
                v44 = v40;
                if (v40)
                {
                  goto LABEL_39;
                }

                break;
              }
            }
          }
        }

        v35 = v77 + 1;
      }

      while (v77 + 1 != v76);
      v76 = OUTLINED_FUNCTION_21_10(v40, v41, &v93, v92);
      if (v76)
      {
        continue;
      }

      break;
    }

    if (v34)
    {
      if (!OUTLINED_FUNCTION_27_21(*MEMORY[0x1E695E480], v31, v65, *MEMORY[0x1E695E488], v48, v49, v50, v51, &v105))
      {
        v22 = v68;
        v28 = flags;
        if ((flags & 1) == 0)
        {
          goto LABEL_82;
        }

        v29 = epoch;
        if (v68)
        {
          if ((*(v68 + 20) & 1) == 0)
          {
            if ((*(v68 + 68) & 1) == 0)
            {
              goto LABEL_59;
            }

            time2 = *(v68 + 56);
            OUTLINED_FUNCTION_7_78();
            if (CMTimeCompare(&time, &time2) > 0)
            {
              *(v68 + 56) = *MEMORY[0x1E6960C70];
              *(v68 + 72) = v64;
              goto LABEL_59;
            }

LABEL_82:
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0();
LABEL_83:
            FigDebugAssert3();
            goto LABEL_84;
          }

          v52 = *(v68 + 8);
          time2.epoch = *(v68 + 24);
          *&time2.value = v52;
          OUTLINED_FUNCTION_7_78();
          if (CMTimeCompare(&time, &time2) <= 0)
          {
            goto LABEL_82;
          }

          v53 = *(v68 + 8);
          time2.epoch = *(v68 + 24);
          *&time2.value = v53;
          OUTLINED_FUNCTION_7_78();
          CMTimeSubtract(&v83, &time, &time2);
          *(v68 + 32) = v83;
LABEL_59:
          *(v68 + 8) = value;
          *(v68 + 16) = timescale;
          *(v68 + 20) = flags;
          *(v68 + 24) = epoch;
        }

        v26 = v105;
        goto LABEL_61;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_42();
    }

    else
    {
LABEL_55:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
    }

    FigDebugAssert3();
    goto LABEL_64;
  }

  v22 = v68;
  if (v68)
  {
    v23 = v78;
    if (!*(v68 + 80) && ((*(v78 + 396) & 1) == 0 || (*(v68 + 68) & 1) != 0))
    {
      goto LABEL_68;
    }
  }

  else
  {
    v23 = v78;
    if ((*(v78 + 396) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  EmptyMetadataSample = [(BWFaceDetectionNode *)v23 _getEmptyMetadataSampleData];
  if (EmptyMetadataSample)
  {
    v25 = CFRetain(EmptyMetadataSample);
    v105 = v25;
    if (!v25)
    {
      goto LABEL_84;
    }

    v26 = v25;
    if (v68)
    {
      if (*(v68 + 44))
      {
        v59 = *(v68 + 8);
        time.epoch = *(v68 + 24);
        *&time.value = v59;
        rhs = *(v68 + 32);
        CMTimeAdd(&time2, &time, &rhs);
        value = time2.value;
        v28 = time2.flags;
        timescale = time2.timescale;
        v29 = time2.epoch;
        v30 = MEMORY[0x1E6960C70];
        *&time2.value = *MEMORY[0x1E6960C70];
        time2.epoch = v21;
        goto LABEL_78;
      }

      v27 = v23 + 384;
      v28 = *(v23 + 396);
      if ((v28 & 1) != 0 && (*(v68 + 20) & 1) == 0 && (*(v68 + 68) & 1) == 0)
      {
        goto LABEL_28;
      }

      memset(&time2, 0, sizeof(time2));
      v60 = *(v68 + 16);
      v61 = v60 / 240;
    }

    else
    {
      v27 = v23 + 384;
      if (*(v23 + 396))
      {
        v28 = *(v23 + 396);
        v22 = v68;
LABEL_28:
        value = *v27;
        timescale = *(v27 + 8);
        v29 = *(v27 + 16);
        v30 = MEMORY[0x1E6960C70];
        goto LABEL_77;
      }

      v61 = 0;
      v60 = 0;
      memset(&time2, 0, sizeof(time2));
      v22 = v68;
    }

    CMTimeMake(&time2, v61, v60);
    v30 = MEMORY[0x1E6960C70];
    if (!time2.value)
    {
      time2.value = 1;
    }

    if (v22)
    {
      v62 = *(v22 + 8);
      rhs.epoch = *(v22 + 24);
      *&rhs.value = v62;
    }

    else
    {
      memset(&rhs, 0, sizeof(rhs));
    }

    v81 = time2;
    CMTimeAdd(&time, &rhs, &v81);
    value = time.value;
    v28 = time.flags;
    timescale = time.timescale;
    v29 = time.epoch;
LABEL_77:
    *&time2.value = *v30;
    time2.epoch = v21;
    if (!v22)
    {
LABEL_79:
      v33 = 0;
LABEL_61:
      memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
      __dst.presentationTimeStamp.value = value;
      __dst.presentationTimeStamp.timescale = timescale;
      __dst.presentationTimeStamp.flags = v28;
      __dst.presentationTimeStamp.epoch = v29;
      sampleSizeArray = CMBlockBufferGetDataLength(v26);
      OUTLINED_FUNCTION_15_40();
      if (CMSampleBufferCreate(v54, v55, v56, v57, v58, formatDescription, 1, 1, &__dst, 1, &sampleSizeArray, &v104))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_42();
        goto LABEL_83;
      }

      [v66 emitSampleBuffer:v104];
      if (v22)
      {
        v31 = 0;
        *(v22 + 80) = v33;
      }

      else
      {
LABEL_84:
        v31 = 0;
      }

      goto LABEL_64;
    }

LABEL_78:
    *(v22 + 8) = time2;
    *(v22 + 32) = *v30;
    v63 = value;
    *(v22 + 48) = v21;
    *(v22 + 56) = v63;
    *(v22 + 64) = timescale;
    *(v22 + 68) = v28;
    *(v22 + 72) = v29;
    goto LABEL_79;
  }

  v31 = 0;
  v105 = 0;
LABEL_64:
  free(v31);
  if (v105)
  {
    CFRelease(v105);
  }

  if (v104)
  {
    CFRelease(v104);
  }

LABEL_68:
  OUTLINED_FUNCTION_81();
}

- (uint64_t)localIDsForKey:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    if ([a2 isEqualToString:*off_1E798ACB8])
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForFaces_BE;
    }

    else if ([a2 isEqualToString:*off_1E798ACB0])
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedHumanBodies_BE;
    }

    else if ([a2 isEqualToString:*off_1E798ACA8])
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedDogHeads_BE;
    }

    else if ([a2 isEqualToString:*off_1E798ACA0])
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedDogBodies_BE;
    }

    else if ([a2 isEqualToString:*off_1E798AC98])
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedCatHeads_BE;
    }

    else if ([a2 isEqualToString:*off_1E798AC90])
    {
      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedCatBodies_BE;
    }

    else
    {
      if (![a2 isEqualToString:*off_1E798ACD8])
      {
        return 0;
      }

      v4 = &OBJC_IVAR___BWFaceDetectionNode__localIDsForDetectedSalientObjects_BE;
    }

    return v3 + *v4;
  }

  return result;
}

- (uint64_t)append:(_DWORD *)a3 toBoxedData:(_DWORD *)a4 localIDs:(int)a5 isFace:
{
  if (!a1)
  {
    return 0;
  }

  v10 = off_1E798B2B8;
  if (!a5)
  {
    v10 = off_1E798AC78;
  }

  v11 = [a2 objectForKeyedSubscript:*v10];
  if (v11)
  {
    v12 = a4[1];
    a3[6] = 201326592;
    a3[7] = v12;
    a3[8] = bswap32([v11 unsignedIntValue]);
    v13 = 9;
  }

  else
  {
    v13 = 6;
  }

  v14 = [a2 objectForKeyedSubscript:*off_1E798B5C0];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = a4[2];
  v16 = &a3[v13];
  *v16 = 671088640;
  v16[1] = v15;
  memset(&rect, 0, sizeof(rect));
  if (!CGRectMakeWithDictionaryRepresentation(v14, &rect))
  {
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_17_37();
    FigDebugAssert3();
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_17_37();
    FigDebugAssert3();
    return 0;
  }

  x = rect.origin.x;
  v18.f64[0] = rect.origin.y;
  v19.f64[0] = rect.origin.y + rect.size.height;
  v18.f64[1] = rect.origin.x + rect.size.width;
  *(v16 + 3) = vrev32q_s8(vcvt_hight_f32_f64(vcvt_f32_f64(v18), v18));
  v19.f64[1] = x;
  v20 = vrev32_s8(vcvt_f32_f64(v19));
  v16[2] = v20.i32[1];
  *(v16 + 7) = v20;
  v16[9] = v20.i32[0];
  v13 += 10;
LABEL_10:
  if (a5)
  {
    v21 = [a2 objectForKeyedSubscript:*off_1E798B160];
    if (v21)
    {
      v22 = a4[3];
      v23 = &a3[v13];
      *v23 = 201326592;
      v23[1] = v22;
      [v21 floatValue];
      OUTLINED_FUNCTION_26_24();
      v23[2] = v24;
      v13 += 3;
    }

    v25 = [a2 objectForKeyedSubscript:*off_1E798B168];
    if (v25)
    {
      v26 = a4[4];
      v27 = &a3[v13];
      *v27 = 201326592;
      v27[1] = v26;
      [v25 floatValue];
      OUTLINED_FUNCTION_26_24();
      v27[2] = v28;
      v13 += 3;
    }
  }

  *a3 = bswap32(v13 * 4);
  a3[1] = *a4;
  a3[2] = bswap32(v13 * 4 - 8);
  a3[3] = *(a1 + 484);
  a3[4] = bswap32(v13 * 4 - 16);
  a3[5] = *(a1 + 488);
  return v13 * 4;
}

- (uint64_t)_getEmptyMetadataSampleData
{
  if (result)
  {
    v1 = result;
    if (!*(result + 376))
    {
      if (CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 8uLL, *MEMORY[0x1E695E480], 0, 0, 8uLL, 1u, (result + 376)))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
      }

      else
      {
        dataPointerOut = 0;
        if (!CMBlockBufferGetDataPointer(*(v1 + 376), 0, 0, 0, &dataPointerOut))
        {
          *dataPointerOut = 0x8000000;
          return *(v1 + 376);
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_8();
      }

      FigDebugAssert3();
    }

    return *(v1 + 376);
  }

  return result;
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithObjectMetadataIdentifiers:movieFileOutputMetadataIdentifierGroups:.cold.8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end