@interface HMITorsoClassifier
- (HMITorsoClassifier)init;
- (id)classifyTorsoEvent:(id)a3 regionOfInterest:(CGRect)a4 pixelBuffer:(__CVBuffer *)a5 homeUUID:(id)a6 error:(id *)a7;
@end

@implementation HMITorsoClassifier

- (HMITorsoClassifier)init
{
  v9.receiver = self;
  v9.super_class = HMITorsoClassifier;
  v2 = [(HMITorsoClassifier *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(HMITorsoprinter);
    torsoprinter = v2->_torsoprinter;
    v2->_torsoprinter = v3;

    v5 = +[HMIPreference sharedInstance];
    v6 = [v5 numberPreferenceForKey:@"torsoPersonsModelClassificationThresholdKnown" defaultValue:&unk_284075968];
    [v6 doubleValue];
    v2->_classificationThresholdKnown = v7;
  }

  return v2;
}

- (id)classifyTorsoEvent:(id)a3 regionOfInterest:(CGRect)a4 pixelBuffer:(__CVBuffer *)a5 homeUUID:(id)a6 error:(id *)a7
{
  width = a4.size.width;
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  v112 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = [v12 roll];
  if (v14)
  {
    v15 = [v12 roll];
    [v15 floatValue];
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = fabsf(v17);
  v19 = v18 > 1.5708;
  if (v18 > 1.5708)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v101 = v23;
      v102 = 2048;
      v103 = v17 * 57.2957795;
      _os_log_impl(&dword_22D12F000, v22, OS_LOG_TYPE_INFO, "%{public}@Skip torsoEvent with extreme roll (%.0f deg)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
  }

  Size = HMICVPixelBufferGetSize(a5);
  v26 = v25;
  [v12 boundingBox];
  HMICGRectPixelFromNormalized(v27, v28, v29, v30, Size, v26);
  v115 = CGRectIntegral(v114);
  v31 = v115.origin.x;
  v32 = v115.origin.y;
  v33 = v115.size.width;
  v34 = v115.size.height;
  v35 = CGRectGetWidth(v115);
  v116.origin.x = v31;
  v116.origin.y = v32;
  v116.size.width = v33;
  v116.size.height = v34;
  v36 = v35 / (CGRectGetHeight(v116) + 0.00000999999975);
  if (v36 > 0.9)
  {
    v37 = objc_autoreleasePoolPush();
    v38 = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v40 = HMFGetLogIdentifier();
      v41 = v36;
      [v12 boundingBox];
      v42 = CGRectGetWidth(v117);
      [v12 boundingBox];
      v43 = CGRectGetHeight(v118);
      *buf = 138544642;
      v101 = v40;
      v102 = 2048;
      v103 = v41;
      v104 = 2048;
      v105 = Size;
      v106 = 2048;
      v107 = v26;
      v108 = 2048;
      v109 = v42;
      v110 = 2048;
      v111 = v43;
      _os_log_impl(&dword_22D12F000, v39, OS_LOG_TYPE_INFO, "%{public}@Skip torsoEvent with extreme aspect ratio (w/h) (%.2f) pixelDim:(%f, %f) bbox:(%f, %f)", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v37);
    v19 = 1;
  }

  [v12 boundingBox];
  v48 = HMICGRectMinElementwiseDistance(v44, v45, v46, v47, x, y, width, height);
  if (v48 < 0.01)
  {
    v49 = objc_autoreleasePoolPush();
    v50 = self;
    v51 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = HMFGetLogIdentifier();
      *buf = 138543618;
      v101 = v52;
      v102 = 2048;
      v103 = v48;
      _os_log_impl(&dword_22D12F000, v51, OS_LOG_TYPE_INFO, "%{public}@Skip torsoEvent with torsoBox close to roi boundary. Dist: (%.4f)", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v49);
    v19 = 1;
  }

  v99 = 0;
  v53 = [HMITorsoprinter createTorsoPixelBufferForTorsoEvent:v12 pixelBuffer:a5 error:&v99];
  v54 = v99;
  if (v53)
  {
    v55 = [(HMITorsoClassifier *)self torsoprinter];
    v56 = [v55 torsoprintForTorsoPixelBuffer:v53 unrecognizable:v19 error:a7];

    CVPixelBufferRelease(v53);
    if (!v56)
    {
      v61 = v12;
LABEL_36:

      goto LABEL_37;
    }

    if ([v56 unrecognizable])
    {
      v57 = 0;
    }

    else
    {
      v62 = +[HMIPersonsModelManager sharedInstance];
      v98 = v54;
      v57 = [v62 predictPersonFromTorsoObservation:v56 homeUUID:v13 error:&v98];
      v63 = v98;

      if (v63)
      {
        v64 = objc_autoreleasePoolPush();
        v65 = self;
        v66 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
        {
          v67 = HMFGetLogIdentifier();
          *buf = 138543362;
          v101 = v67;
          _os_log_impl(&dword_22D12F000, v66, OS_LOG_TYPE_INFO, "%{public}@Failed to predict using torso vip model", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v64);
        if (a7)
        {
          v68 = v63;
          *a7 = v63;
        }

        HMIErrorLog(v65, v63);
        v61 = 0;
        v54 = v63;
        goto LABEL_35;
      }

      if (v57)
      {
        v69 = [v57 confidence];
        [v69 doubleValue];
        v71 = v70;
        [(HMITorsoClassifier *)self classificationThresholdKnown];
        v73 = v72;

        if (v71 >= v73)
        {
          v91 = [HMITorsoClassification alloc];
          v92 = [v57 personUUID];
          v93 = [v57 sourceUUID];
          v94 = [v57 confidence];
          [v94 doubleValue];
          v74 = [(HMITorsoClassification *)v91 initWithPersonUUID:v92 sourceUUID:v93 confidence:?];

          v54 = 0;
          goto LABEL_34;
        }
      }

      v54 = 0;
    }

    v74 = 0;
LABEL_34:
    v75 = [HMITorsoRecognition alloc];
    v76 = [MEMORY[0x277CBEB98] set];
    v77 = [v56 UUID];
    v78 = [(HMITorsoRecognition *)v75 initWithTorsoprint:v56 classification:v74 predictedLinkedEntityUUIDs:v76 sessionEntityAssignment:0 sessionEntityUUID:v77];

    v79 = [HMIVideoAnalyzerEventTorso alloc];
    v80 = [v12 confidence];
    [v12 boundingBox];
    v82 = v81;
    v84 = v83;
    v86 = v85;
    v88 = v87;
    v89 = [v12 roll];
    v61 = [(HMIVideoAnalyzerEventTorso *)v79 initWithConfidence:v80 boundingBox:v89 roll:v78 torsoRecognition:v82, v84, v86, v88];

LABEL_35:
    goto LABEL_36;
  }

  v58 = [MEMORY[0x277CCA9B8] hmiPrivateErrorWithCode:1021 underlyingError:v54];
  v59 = v58;
  if (a7)
  {
    v60 = v58;
    *a7 = v59;
  }

  HMIErrorLog(self, v59);

  v61 = v12;
LABEL_37:

  return v61;
}

@end