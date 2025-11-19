@interface HMIFaceClassifierVIP
- (HMIFaceClassifierVIP)initWithError:(id *)a3;
- (id)classifyFaceEvent:(id)a3 pixelBuffer:(__CVBuffer *)a4 fastMode:(BOOL)a5 homeUUID:(id)a6 error:(id *)a7;
- (id)qualityPredictionFromSVMUsingFaceQualityFilterSVM:(id)a3 detectorConfidence:(double)a4 laplacian:(double)a5 yaw:(double)a6 boxSize:(double)a7 error:(id *)a8;
@end

@implementation HMIFaceClassifierVIP

- (HMIFaceClassifierVIP)initWithError:(id *)a3
{
  v30.receiver = self;
  v30.super_class = HMIFaceClassifierVIP;
  v4 = [(HMIFaceClassifierVIP *)&v30 init];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = objc_alloc_init(HMIFaceprinter);
  faceprinter = v4->_faceprinter;
  v4->_faceprinter = v5;

  v7 = +[HMIPreference sharedInstance];
  v8 = [v7 numberPreferenceForKey:@"personsModelClassificationThresholdKnown" defaultValue:&unk_284075818];
  [v8 doubleValue];
  v4->_classificationThresholdKnown = v9;

  v10 = +[HMIPreference sharedInstance];
  v11 = [v10 numberPreferenceForKey:@"personsModelClassificationThresholdUnknown" defaultValue:&unk_284075828];
  [v11 doubleValue];
  v4->_classificationThresholdUnknown = v12;

  v13 = [HMIFaceQualityFilterSVM alloc];
  v14 = +[HMIFaceQualityFilterSVM defaultRecognizabilityModelPath];
  v15 = +[HMIFaceQualityFilterSVM defaultRecognizabilityDataScalerPath];
  v29 = 0;
  v16 = [(HMIFaceQualityFilterSVM *)v13 initWithModelPath:v14 dataScalerPath:v15 error:&v29];
  v17 = v29;
  faceRecognizabilityFilter = v4->_faceRecognizabilityFilter;
  v4->_faceRecognizabilityFilter = v16;

  if (v4->_faceRecognizabilityFilter)
  {
    v19 = [HMIFaceQualityFilterSVM alloc];
    v20 = +[HMIFaceQualityFilterSVM defaultAestheticQualityModelPath];
    v21 = +[HMIFaceQualityFilterSVM defaultAestheticQualityDataScalerPath];
    v28 = v17;
    v22 = [(HMIFaceQualityFilterSVM *)v19 initWithModelPath:v20 dataScalerPath:v21 error:&v28];
    v23 = v28;

    faceAestheticQualityFilter = v4->_faceAestheticQualityFilter;
    v4->_faceAestheticQualityFilter = v22;

    if (v4->_faceAestheticQualityFilter)
    {

LABEL_5:
      v25 = v4;
      goto LABEL_10;
    }

    v17 = v23;
  }

  if (a3)
  {
    v26 = v17;
    *a3 = v17;
  }

  HMIErrorLog(v4, v17);

  v25 = 0;
LABEL_10:

  return v25;
}

- (id)qualityPredictionFromSVMUsingFaceQualityFilterSVM:(id)a3 detectorConfidence:(double)a4 laplacian:(double)a5 yaw:(double)a6 boxSize:(double)a7 error:(id *)a8
{
  v14 = a3;
  v30 = 0;
  v15 = [objc_alloc(MEMORY[0x277CBFF48]) initWithShape:&unk_284075510 dataType:65600 error:&v30];
  v16 = v30;
  v17 = v16;
  if (v15)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [v15 setObject:v18 atIndexedSubscript:0];

    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a5];
    [v15 setObject:v19 atIndexedSubscript:1];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:a6];
    [v15 setObject:v20 atIndexedSubscript:2];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:a7];
    [v15 setObject:v21 atIndexedSubscript:3];

    v28 = v17;
    v29 = 0.0;
    v22 = [v14 predict:v15 output:&v29 error:&v28];
    v23 = v28;

    if (v22)
    {
      v24 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
    }

    else
    {
      if (a8)
      {
        v26 = v23;
        *a8 = v23;
      }

      HMIErrorLog(self, v23);
      v24 = 0;
    }

    v17 = v23;
  }

  else
  {
    if (a8)
    {
      v25 = v16;
      *a8 = v17;
    }

    HMIErrorLog(self, v17);
    v24 = 0;
  }

  return v24;
}

- (id)classifyFaceEvent:(id)a3 pixelBuffer:(__CVBuffer *)a4 fastMode:(BOOL)a5 homeUUID:(id)a6 error:(id *)a7
{
  v9 = a5;
  v226 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a6;
  v14 = [v12 roll];
  v15 = [HMIFaceprinter createFacePixelBufferForFaceEvent:v12 pixelBuffer:a4 roll:v14 error:a7];

  if (v15)
  {
    v196 = v13;
    v16 = objc_alloc_init(HMIFaceQualityEntropyOfLaplacian);
    v17 = [v12 confidence];
    [v17 value];
    v19 = v18;

    [(HMIFaceQualityEntropyOfLaplacian *)v16 computeJunkScoreForPixelBuffer:v15];
    v21 = v20;
    v22 = [v12 yaw];
    [v22 doubleValue];
    v24 = v23;

    [v12 boundingBox];
    v26 = v25;
    v28 = v27;
    Size = HMICVPixelBufferGetSize(a4);
    v31 = HMICGSizeAreaInPixelsFromNormalized(v26, v28, Size, v30);
    faceRecognizabilityFilter = self->_faceRecognizabilityFilter;
    v207 = 0;
    v33 = [(HMIFaceClassifierVIP *)self qualityPredictionFromSVMUsingFaceQualityFilterSVM:faceRecognizabilityFilter detectorConfidence:&v207 laplacian:v19 yaw:v21 boxSize:v24 error:v31];
    v34 = v207;
    v35 = v34;
    if (v33)
    {
      [v33 doubleValue];
      if (v36 < 0.55 || fabs(v24) > 0.65)
      {
        v67 = v16;
        v68 = objc_autoreleasePoolPush();
        v69 = self;
        v70 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
        {
          v71 = HMFGetLogIdentifier();
          [v33 doubleValue];
          *buf = 138543874;
          v221 = v71;
          v222 = 2048;
          v223 = v72;
          v224 = 2048;
          v225 = v24;
          _os_log_impl(&dword_22D12F000, v70, OS_LOG_TYPE_DEBUG, "%{public}@Face below face quality thresholds: SVM recognizability = %lf, Yaw = %lf, discarding", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v68);
        CVPixelBufferRelease(v15);
        v218 = @"FaceFilteredState";
        v73 = HMIFaceFilteredStateAsString(1);
        v219 = v73;
        v74 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v219 forKeys:&v218 count:1];

        v75 = [HMIVideoAnalyzerEventFace alloc];
        v76 = [v12 confidence];
        [v12 boundingBox];
        v78 = v77;
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v85 = [v12 yaw];
        v86 = [v12 roll];
        v65 = [(HMIVideoAnalyzerEventFace *)v75 initWithConfidence:v76 boundingBox:v85 yaw:v86 roll:0 faceRecognition:v74 userInfo:v78, v80, v82, v84];

        v16 = v67;
      }

      else
      {
        v195 = v16;
        v37 = [(HMIFaceClassifierVIP *)self faceprinter];
        v38 = [v37 createFaceprintForFacePixelBuffer:v15 fastMode:v9 error:a7];

        if (v38)
        {
          v39 = [v38 faceprint];
          [v39 confidence];
          v41 = v40;

          HIDWORD(v43) = 1069128089;
          if (v41 >= 0.1)
          {
            LODWORD(v43) = 1.0;
            LODWORD(v42) = 1.0;
            v87 = [HMIVisionUtilities createJPEGDataFromPixelBuffer:v15 scale:a7 encodeQuality:v43 error:v42];
            CVPixelBufferRelease(v15);
            if (v87)
            {
              v88 = +[HMIPersonsModelManager sharedInstance];
              v89 = [v88 predictPersonFromFaceObservation:v38 homeUUID:v196 error:a7];

              if (v89)
              {
                v193 = v89;
                v189 = v87;
                if ([v89 count])
                {
                  v90 = [v38 faceAttributes];
                  v91 = [v90 facemaskCategory];

                  v187 = v91;
                  v92 = [v91 label];
                  [v92 identifier];
                  v93 = v188 = v38;
                  v183 = [v93 isEqualToString:*MEMORY[0x277CE2ED0]];

                  v94 = [HMIFaceCrop alloc];
                  v95 = [MEMORY[0x277CCAD78] UUID];
                  v96 = [MEMORY[0x277CBEAA8] date];
                  v194 = [(HMIFaceCrop *)v94 initWithUUID:v95 dataRepresentation:v87 dateCreated:v96 faceBoundingBox:0.0, 0.0, 1.0, 1.0];

                  v190 = [HMIFaceprint alloc];
                  v185 = [MEMORY[0x277CCAD78] UUID];
                  v97 = [v188 faceprint];
                  v98 = [v97 descriptorData];
                  v99 = +[HMIFaceprinter currentModelUUID];
                  v100 = [(HMIFaceCrop *)v194 UUID];
                  v191 = [(HMIFaceprint *)v190 initWithUUID:v185 data:v98 modelUUID:v99 faceCropUUID:v100];

                  faceAestheticQualityFilter = self->_faceAestheticQualityFilter;
                  v206 = v35;
                  v102 = [(HMIFaceClassifierVIP *)self qualityPredictionFromSVMUsingFaceQualityFilterSVM:faceAestheticQualityFilter detectorConfidence:&v206 laplacian:v19 yaw:v21 boxSize:v24 error:v31];
                  v103 = v206;

                  if (v102)
                  {
                    v104 = [MEMORY[0x277CBEB58] set];
                    v197[0] = MEMORY[0x277D85DD0];
                    v197[1] = 3221225472;
                    v197[2] = __78__HMIFaceClassifierVIP_classifyFaceEvent_pixelBuffer_fastMode_homeUUID_error___block_invoke;
                    v197[3] = &unk_278753378;
                    v197[4] = self;
                    v180 = v104;
                    v198 = v180;
                    v205 = v183;
                    v105 = v102;
                    v199 = v105;
                    v106 = v12;
                    v200 = v106;
                    v203 = v21;
                    v204 = v31;
                    v107 = v191;
                    v201 = v107;
                    v108 = v194;
                    v202 = v108;
                    [v193 na_map:v197];
                    v109 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                    v194 = v108;
                    v181 = v103;
                    v182 = v109;
                    v192 = v107;
                    v186 = v105;
                    if ([*&v109 count])
                    {
                      v184 = v106;
                      if ([*&v109 na_any:&__block_literal_global_10])
                      {
                        v110 = v107;
                        v111 = v108;
                        v112 = objc_autoreleasePoolPush();
                        v113 = self;
                        v114 = HMFGetOSLogHandle();
                        if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                        {
                          v115 = HMFGetLogIdentifier();
                          *buf = 138543618;
                          v221 = v115;
                          v222 = 2112;
                          v223 = v182;
                          _os_log_impl(&dword_22D12F000, v114, OS_LOG_TYPE_INFO, "%{public}@Positive face classifications: %@ ", buf, 0x16u);
                        }

                        objc_autoreleasePoolPop(v112);
                        v108 = v111;
                        v107 = v110;
                      }

                      v116 = [HMIFaceRecognition alloc];
                      [v105 doubleValue];
                      v118 = v117;
                      v119 = [(HMIFaceprint *)v107 UUID];
                      v120 = v182;
                      v121 = v180;
                      v122 = [(HMIFaceRecognition *)v116 initWithFaceCrop:v108 faceprint:v107 classifications:*&v182 predictedLinkedEntityUUIDs:v180 faceQualityScore:0 sessionEntityAssignment:v119 sessionEntityUUID:v118];

                      v208 = @"FaceFilteredState";
                      v123 = HMIFaceFilteredStateAsString(0);
                      v209 = v123;
                      v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v209 forKeys:&v208 count:1];

                      v125 = [HMIVideoAnalyzerEventFace alloc];
                      v126 = [v184 confidence];
                      [v184 boundingBox];
                      v128 = v127;
                      v130 = v129;
                      v132 = v131;
                      v134 = v133;
                      v135 = [v184 yaw];
                      v136 = [v184 roll];
                      v137 = v125;
                      v138 = v122;
                      v65 = [(HMIVideoAnalyzerEventFace *)v137 initWithConfidence:v126 boundingBox:v135 yaw:v136 roll:v122 faceRecognition:v124 userInfo:v128, v130, v132, v134];

                      v38 = v188;
                    }

                    else
                    {
                      v160 = objc_autoreleasePoolPush();
                      v161 = self;
                      v162 = HMFGetOSLogHandle();
                      if (os_log_type_enabled(v162, OS_LOG_TYPE_DEBUG))
                      {
                        v163 = HMFGetLogIdentifier();
                        *buf = 138543362;
                        v221 = v163;
                        _os_log_impl(&dword_22D12F000, v162, OS_LOG_TYPE_DEBUG, "%{public}@Face recognition set is empty", buf, 0xCu);
                      }

                      objc_autoreleasePoolPop(v160);
                      v38 = v188;
                      if (v183)
                      {
                        v212 = @"FaceFilteredState";
                        v164 = HMIFaceFilteredStateAsString(5);
                        v213 = v164;
                        v165 = MEMORY[0x277CBEAC0];
                        v166 = &v213;
                        v167 = &v212;
                      }

                      else
                      {
                        v210 = @"FaceFilteredState";
                        v164 = HMIFaceFilteredStateAsString(2);
                        v211 = v164;
                        v165 = MEMORY[0x277CBEAC0];
                        v166 = &v211;
                        v167 = &v210;
                      }

                      v168 = [v165 dictionaryWithObjects:v166 forKeys:v167 count:1];

                      v169 = [HMIVideoAnalyzerEventFace alloc];
                      v124 = [v106 confidence];
                      [v106 boundingBox];
                      v171 = v170;
                      v173 = v172;
                      v175 = v174;
                      v177 = v176;
                      v126 = [v106 yaw];
                      v135 = [v106 roll];
                      v178 = v169;
                      v138 = v168;
                      v65 = [(HMIVideoAnalyzerEventFace *)v178 initWithConfidence:v124 boundingBox:v126 yaw:v135 roll:0 faceRecognition:v168 userInfo:v171, v173, v175, v177];
                      v121 = v180;
                      v120 = v182;
                    }

                    v35 = v181;
                    v16 = v195;
                    v155 = v192;
                    v89 = v193;
                    v156 = v186;
                    v158 = v187;
                  }

                  else
                  {
                    v16 = v195;
                    v89 = v193;
                    if (a7)
                    {
                      v159 = v103;
                      *a7 = v103;
                    }

                    HMIErrorLog(self, v103);
                    v65 = 0;
                    v35 = v103;
                    v158 = v187;
                    v38 = v188;
                    v155 = v191;
                    v156 = 0;
                  }
                }

                else
                {
                  v139 = objc_autoreleasePoolPush();
                  v140 = self;
                  v141 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
                  {
                    v142 = HMFGetLogIdentifier();
                    *buf = 138543362;
                    v221 = v142;
                    _os_log_impl(&dword_22D12F000, v141, OS_LOG_TYPE_ERROR, "%{public}@personsModelPredictions is empty", buf, 0xCu);
                  }

                  objc_autoreleasePoolPop(v139);
                  v214 = @"FaceFilteredState";
                  v143 = HMIFaceFilteredStateAsString(4);
                  v215 = v143;
                  v144 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v215 forKeys:&v214 count:1];

                  v145 = [HMIVideoAnalyzerEventFace alloc];
                  v146 = [v12 confidence];
                  [v12 boundingBox];
                  v148 = v147;
                  v150 = v149;
                  v152 = v151;
                  v154 = v153;
                  v155 = [v12 yaw];
                  v156 = [v12 roll];
                  v194 = v146;
                  v157 = v146;
                  v158 = v144;
                  v65 = [(HMIVideoAnalyzerEventFace *)v145 initWithConfidence:v157 boundingBox:v155 yaw:v156 roll:0 faceRecognition:v144 userInfo:v148, v150, v152, v154];
                  v16 = v195;
                  v89 = v193;
                }

                v87 = v189;
              }

              else
              {
                v65 = 0;
                v16 = v195;
              }
            }

            else
            {
              v65 = 0;
              v16 = v195;
            }
          }

          else
          {
            v44 = v38;
            v45 = objc_autoreleasePoolPush();
            v46 = self;
            v47 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
            {
              v48 = HMFGetLogIdentifier();
              v49 = [v38 faceprint];
              [v49 confidence];
              *buf = 138543618;
              v221 = v48;
              v222 = 2048;
              v223 = v50;
              _os_log_impl(&dword_22D12F000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Face below ANFR face quality threshold: ANFR confidence = %lf, discarding", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v45);
            CVPixelBufferRelease(v15);
            v216 = @"FaceFilteredState";
            v51 = HMIFaceFilteredStateAsString(3);
            v217 = v51;
            v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v217 forKeys:&v216 count:1];

            v53 = [HMIVideoAnalyzerEventFace alloc];
            v54 = [v12 confidence];
            [v12 boundingBox];
            v56 = v55;
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v63 = [v12 yaw];
            v64 = [v12 roll];
            v65 = [(HMIVideoAnalyzerEventFace *)v53 initWithConfidence:v54 boundingBox:v63 yaw:v64 roll:0 faceRecognition:v52 userInfo:v56, v58, v60, v62];

            v16 = v195;
            v38 = v44;
          }
        }

        else
        {
          CVPixelBufferRelease(v15);
          v65 = 0;
          v16 = v195;
        }
      }
    }

    else
    {
      if (a7)
      {
        v66 = v34;
        *a7 = v35;
      }

      HMIErrorLog(self, v35);
      CVPixelBufferRelease(v15);
      v65 = 0;
    }

    v13 = v196;
  }

  else
  {
    v65 = 0;
  }

  return v65;
}

HMIFaceClassification *__78__HMIFaceClassifierVIP_classifyFaceEvent_pixelBuffer_fastMode_homeUUID_error___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 confidence];
  [v4 floatValue];
  v6 = v5;

  v7 = v6;
  [*(a1 + 32) classificationThresholdKnown];
  if (v8 >= v7)
  {
    if (*(a1 + 88) == 1)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v47 = 138543362;
        v48 = v22;
        _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_INFO, "%{public}@Face removed from unknown & uncertain bucket: has facemask", &v47, 0xCu);
      }
    }

    else
    {
      [*(a1 + 48) doubleValue];
      if (v23 >= 0.71)
      {
        [*(a1 + 32) classificationThresholdUnknown];
        if (v35 <= v7 || ([*(a1 + 56) confidence], v36 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v36, "value"), v38 = v37, v36, v38 <= 0.65))
        {
          v13 = objc_autoreleasePoolPush();
          v14 = *(a1 + 32);
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v41 = HMFGetLogIdentifier();
            v42 = [*(a1 + 56) yaw];
            v47 = 138543618;
            v48 = v41;
            v49 = 2112;
            v50 = v42;
            _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Added to uncertain bucket yaw: %@", &v47, 0x16u);
          }

          v9 = 0;
          v18 = 1;
        }

        else
        {
          v13 = objc_autoreleasePoolPush();
          v14 = *(a1 + 32);
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v39 = HMFGetLogIdentifier();
            v40 = [*(a1 + 56) yaw];
            v47 = 138543618;
            v48 = v39;
            v49 = 2112;
            v50 = v40;
            _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Added to unknown bucket yaw: %@", &v47, 0x16u);
          }

          v18 = 0;
          v9 = 0;
        }

        goto LABEL_26;
      }

      v19 = objc_autoreleasePoolPush();
      v24 = *(a1 + 32);
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = [*(a1 + 56) confidence];
        [v27 value];
        v29 = v28;
        v30 = *(a1 + 80);
        v31 = [*(a1 + 56) yaw];
        [v31 doubleValue];
        v32 = *(a1 + 84);
        v47 = 138544386;
        v48 = v26;
        v49 = 2048;
        v50 = v29;
        v51 = 2048;
        v52 = v30;
        v53 = 2048;
        v54 = v33;
        v55 = 2048;
        v56 = v32;
        _os_log_impl(&dword_22D12F000, v25, OS_LOG_TYPE_INFO, "%{public}@Face removed from unknown and uncertian bucket, SSD confidence = %f, entropy of laplacian = %f, Face yaw = %f, box size: %f", &v47, 0x34u);
      }
    }

    objc_autoreleasePoolPop(v19);
    v34 = 0;
    goto LABEL_28;
  }

  v9 = [v3 personUUID];
  v10 = [v3 linkedEntityUUID];

  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = [v3 linkedEntityUUID];
    [v11 addObject:v12];
  }

  if (*(a1 + 88) == 1)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v3 sourceUUID];
      v47 = 138543874;
      v48 = v16;
      v49 = 2112;
      v50 = v17;
      v51 = 2112;
      v52 = *&v9;
      _os_log_impl(&dword_22D12F000, v15, OS_LOG_TYPE_INFO, "%{public}@Positively classified face with facemask: (sourceUUID: %@, personUUID: %@)", &v47, 0x20u);
    }

    v18 = 2;
LABEL_26:

    objc_autoreleasePoolPop(v13);
    goto LABEL_27;
  }

  v18 = 2;
LABEL_27:
  v43 = [HMIFaceClassification alloc];
  v44 = [v3 sourceUUID];
  v45 = [*(a1 + 64) UUID];
  v34 = [(HMIFaceClassification *)v43 initWithUUID:v9 sourceUUID:v44 sessionEntityUUID:v45 faceCrop:*(a1 + 72) faceprint:*(a1 + 64) confidence:v18 familiarity:v7];

LABEL_28:

  return v34;
}

@end