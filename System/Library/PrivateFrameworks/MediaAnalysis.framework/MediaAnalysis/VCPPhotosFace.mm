@interface VCPPhotosFace
+ (BOOL)_isColocatingAnimalObservation:(id)observation withFaceObservations:(id)observations orTorsoObservations:(id)torsoObservations;
+ (double)_calculateIoUBetweenObservation:(id)observation andObservation:(id)andObservation;
+ (double)_calculateOverlappingBetweenFaceObservation:(id)observation andBodyObservation:(id)bodyObservation;
+ (id)_animalBodiesOnlyFromAnimalBodyObservations:(id)observations matchedBody:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(int)height visionRequests:processingVersion:;
+ (id)_animalHeadsBodiesFromAnimalHeadObservations:(id)observations animalBodyObservations:(id)bodyObservations matchedHead:(void *)head matchedBody:(void *)body sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests processingVersion:(int)self0;
+ (id)_animalHeadsOnlyFromAnimalHeadObservations:(id)observations matchedHead:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(int)height visionRequests:processingVersion:;
+ (id)_animalImageprintWrapperFromObservation:(id)observation visionRequests:(id)requests processingVersion:(int)version;
+ (id)_filterAnimalObservations:(id)observations colocatingWithFaceObservations:(id)faceObservations orHumanObservations:(id)humanObservations;
+ (id)_peopleFacesOnlyFromFaceObservations:(id)observations matchedFace:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(id)height visionRequests:(id)requests blurScorePerFace:(id)self0 exposureScorePerFace:(int)self1 tooSmallFaceObservations:processingVersion:;
+ (id)_peopleFacesTorsosFromFaceObservations:(id)observations humanObservations:(id)humanObservations matchedFace:(void *)face matchedTorso:(void *)torso sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests blurScorePerFace:(id)self0 exposureScorePerFace:(id)self1 tooSmallFaceObservations:(id)self2 processingVersion:(int)self3;
+ (id)_peopleTorsosOnlyFromHumanObservations:(id)observations matchedTorso:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(int)height visionRequests:processingVersion:;
+ (id)faceFromAnimalHeadObservation:(id)observation animalBodyObservation:(id)bodyObservation animalLabel:(id)label sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests processingVersion:(int)version;
+ (id)faceFromFaceObservation:(id)observation humanObservation:(id)humanObservation sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests processingVersion:(int)version force:(BOOL)force andError:(id *)self0;
+ (id)faceFromPHFace:(id)face copyOption:(int64_t)option;
+ (id)faceWithLocalIdentifier:(id)identifier;
+ (id)facesFromFaceObservations:(id)observations humanObservations:(id)humanObservations animalHeadObservations:(id)headObservations animalBodyObservations:(id)bodyObservations sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests blurScorePerFace:(id)self0 exposureScorePerFace:(id)self1 tooSmallFaceObservations:(id)self2 processingVersion:(int)self3 animalResults:(id *)self4;
+ (id)facesFromFaceObservations:(id)observations humanObservations:(id)humanObservations animalObservations:(id)i sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests blurScorePerFace:(id)face exposureScorePerFace:(id)self0 tooSmallFaceObservations:(id)self1 processingVersion:(int)self2;
+ (id)facesFromPHFetchResult:(id)result copyOption:(int64_t)option;
+ (uint64_t)facesFromFaceObservations:(uint64_t)observations humanObservations:(char)humanObservations animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:;
- (BOOL)setCenterAndSizeFromNormalizedFaceRect:(CGRect)rect;
- (CGRect)gazeRect;
- (CGRect)normalizedBodyRect;
- (CGRect)normalizedFaceRect;
- (VCPPhotosFace)initWithLocalIdentifier:(id)identifier;
- (id)gist;
- (int64_t)qualityMeasureWithCountOfFacesOnAsset:(unint64_t)asset;
- (void)replaceCoordinatesAndFeaturesFromDetectedFace:(id)face;
@end

@implementation VCPPhotosFace

- (VCPPhotosFace)initWithLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = VCPPhotosFace;
  v6 = [(VCPPhotosFace *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_localIdentifier, identifier);
    v7->_sourceWidth = 0;
    v7->_sourceHeight = 0;
    v7->_detectionType = 1;
    *&v7->_centerX = 0u;
    *&v7->_size = 0u;
    *&v7->_bodyCenterY = 0u;
    v7->_bodyHeight = 0.0;
    *&v7->_blurScore = xmmword_1C9F60780;
    v7->_poseYaw = 0.0;
    v7->_algorithmVersion = 0;
    v7->_vuObservationID = 0;
    v7->_qualityMeasure = 1;
    *&v7->_isTooSmall = 0;
    groupingIdentifier = v7->_groupingIdentifier;
    v7->_groupingIdentifier = 0;

    personLocalIdentifier = v7->_personLocalIdentifier;
    v7->_personLocalIdentifier = 0;

    v7->_hasFaceMask = 0;
    *&v7->_ageType = 0;
    *&v7->_headgearType = 0;
    *&v7->_facialHairType = 0;
    *&v7->_ethnicityType = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v7->_gazeCenterX = _Q0;
    v7->_gazeRect.origin.x = -1.0;
    *&v7->_gazeRect.origin.y = _Q0;
    v7->_gazeRect.size.height = -1.0;
    *&v7->_gazeAngle = 0xBF800000447A0000;
    *&v7->_roll = xmmword_1C9F60790;
  }

  return v7;
}

+ (id)faceWithLocalIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [objc_alloc(objc_opt_class()) initWithLocalIdentifier:identifierCopy];

  return v4;
}

+ (id)faceFromFaceObservation:(id)observation humanObservation:(id)humanObservation sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests processingVersion:(int)version force:(BOOL)force andError:(id *)self0
{
  v10 = *&version;
  v192[1] = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  humanObservationCopy = humanObservation;
  requestsCopy = requests;
  if (!(observationCopy | humanObservationCopy))
  {
    v28 = MEMORY[0x1E696ABC0];
    v191 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPPhotosFace] Missing faceObservation and humanObservation"];
    v192[0] = v17;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v192 forKeys:&v191 count:1];
    [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v29];
    *error = v30 = 0;
    goto LABEL_35;
  }

  v17 = [VCPPhotosFace faceWithLocalIdentifier:0];
  [v17 setSourceWidth:width];
  [v17 setSourceHeight:height];
  [v17 setManual:0];
  [v17 setAlgorithmVersion:v10];
  [v17 setDetectionType:1];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke;
  aBlock[3] = &unk_1E834CEE8;
  v175 = requestsCopy;
  v18 = _Block_copy(aBlock);
  v19 = objc_opt_class();
  v168 = v18[2](v18, v19);
  uuid = [observationCopy uuid];
  v169 = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uuid, uuid, v168);

  faceprint = [v169 faceprint];
  if (!faceprint)
  {
    goto LABEL_9;
  }

  v170 = faceprint;
  [faceprint confidence];
  if (v22 < 0.2 && !force)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      [v170 confidence];
      v24 = v23;
      [v169 description];
      v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [v169 faceJunkinessIndex];
      *buf = 134218754;
      *v185 = v24;
      *&v185[8] = 2048;
      v186 = 0x3FC99999A0000000;
      v187 = 2112;
      v188 = v25;
      v189 = 2048;
      v190 = v26;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[VCPPhotosFace] faceprint.confidence is too low (%.3f < %.3f) %@ - junkinessIndex: %.3f", buf, 0x2Au);
    }

LABEL_9:
    v170 = 0;
    v27 = 0;
    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [v170 confidence];
    v32 = v31;
    v33 = [v169 description];
    [v169 faceJunkinessIndex];
    *buf = 134218498;
    *v185 = v32;
    *&v185[8] = 2112;
    v186 = v33;
    v187 = 2048;
    v188 = v34;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Accepting faceprint with confidence: %.3f %@ - junkinessIndex: %.3f", buf, 0x20u);
  }

  v27 = 1;
LABEL_15:
  v35 = objc_opt_class();
  v167 = v18[2](v18, v35);
  uuid2 = [humanObservationCopy uuid];
  v166 = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uuid2, uuid2, v167);

  torsoprint = [v166 torsoprint];
  if (v170 | torsoprint)
  {
    v173 = 0;
    v163 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:v170 torsoprint:torsoprint];
    v37 = [v163 serializeStateAndReturnError:&v173];
    v38 = v173;
    v162 = v37;
    v164 = v38;
    if (!v37 || v38)
    {
      if (error)
      {
        v58 = MEMORY[0x1E696ABC0];
        v180 = *MEMORY[0x1E696A578];
        v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPPhotosFace] Unable to serialize faceTorsoprint - %@", v38];
        v181 = v59;
        v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v181 forKeys:&v180 count:1];
        *error = [v58 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v60];
      }
    }

    else
    {
      v39 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:v10 andData:v37];
      [v17 setImageprintWrapper:v39];

      [v17 setVuObservationID:0];
      if (humanObservationCopy)
      {
        [humanObservationCopy boundingBox];
        v41 = v40;
        v43 = v42;
        v45 = v44;
        v47 = v46;
        [v17 setBodyWidth:v44];
        [v17 setBodyHeight:v47];
        v194.origin.x = v41;
        v194.origin.y = v43;
        v194.size.width = v45;
        v194.size.height = v47;
        [v17 setBodyCenterX:CGRectGetMidX(v194)];
        v195.origin.x = v41;
        v195.origin.y = v43;
        v195.size.width = v45;
        v195.size.height = v47;
        [v17 setBodyCenterY:CGRectGetMidY(v195)];
      }

      if ((v27 & 1) == 0)
      {
        v30 = v17;
LABEL_32:

        goto LABEL_33;
      }

      [observationCopy boundingBox];
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      if ([v17 setCenterAndSizeFromNormalizedFaceRect:?])
      {
        roll = [observationCopy roll];
        v157 = roll;
        if (roll)
        {
          [roll doubleValue];
          [v17 setRoll:?];
        }

        else
        {
          [v17 setRoll:0.0];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Missing results for roll information", buf, 2u);
          }
        }

        v65 = objc_opt_class();
        v155 = v18[2](v18, v65);
        uuid3 = [observationCopy uuid];
        v160 = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uuid3, uuid3, v155);

        faceCaptureQuality = [v160 faceCaptureQuality];
        v156 = faceCaptureQuality;
        if (faceCaptureQuality)
        {
          [faceCaptureQuality doubleValue];
          [v17 setQuality:?];
        }

        else
        {
          [v17 setQuality:-1.0];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Missing results from VNDetectFaceCaptureQualityRequest", buf, 2u);
          }
        }

        v68 = [observationCopy yaw];
        v154 = v68;
        if (v68)
        {
          [v68 doubleValue];
          [v17 setPoseYaw:?];
        }

        else
        {
          [v17 setPoseYaw:1.79769313e308];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Missing results for yaw information", buf, 2u);
          }
        }

        v69 = objc_opt_class();
        v152 = v18[2](v18, v69);
        uuid4 = [observationCopy uuid];
        v159 = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uuid4, uuid4, v152);

        expressionsAndConfidence = [v159 expressionsAndConfidence];
        v153 = expressionsAndConfidence;
        if (expressionsAndConfidence)
        {
          v72 = [expressionsAndConfidence objectForKeyedSubscript:*MEMORY[0x1E69848D8]];
          v73 = v72;
          if (v72)
          {
            [v72 floatValue];
            v75 = v74 >= 0.4;
          }

          else
          {
            v75 = 0;
          }

          [v17 setHasSmile:v75];
        }

        else if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Missing results from VNDetectFaceExpressionsRequest", buf, 2u);
        }

        v76 = objc_opt_class();
        v151 = v18[2](v18, v76);
        uuid5 = [observationCopy uuid];
        v158 = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uuid5, uuid5, v151);

        faceAttributes = [v158 faceAttributes];
        v161 = faceAttributes;
        if (faceAttributes)
        {
          ageCategory = [faceAttributes ageCategory];
          label = [ageCategory label];
          identifier = [label identifier];
          [v17 setAgeType:{+[VCPFaceUtils mad_PHValueFromVNAgeCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNAgeCategoryLabel:", identifier)}];

          vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE = [v161 VN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE];
          label2 = [vN7exwFFmQF0AI9P7FjBljwEFu7QYUGCYE label];
          identifier2 = [label2 identifier];
          [v17 setSexType:{+[VCPFaceUtils mad_PHValueFromVNSexCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNSexCategoryLabel:", identifier2)}];

          eyesCategory = [v161 eyesCategory];
          label3 = [eyesCategory label];
          identifier3 = [label3 identifier];
          [v17 setEyesState:{+[VCPFaceUtils mad_PHValueFromVNEyesCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNEyesCategoryLabel:", identifier3)}];

          smilingCategory = [v161 smilingCategory];
          label4 = [smilingCategory label];
          identifier4 = [label4 identifier];
          [v17 setSmileType:{+[VCPFaceUtils mad_PHValueFromVNSmilingCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNSmilingCategoryLabel:", identifier4)}];

          faceHairCategory = [v161 faceHairCategory];
          label5 = [faceHairCategory label];
          identifier5 = [label5 identifier];
          [v17 setFacialHairType:{+[VCPFaceUtils mad_PHValueFromVNFaceHairCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNFaceHairCategoryLabel:", identifier5)}];

          hairColorCategory = [v161 hairColorCategory];
          label6 = [hairColorCategory label];
          identifier6 = [label6 identifier];
          [v17 setHairColorType:{+[VCPFaceUtils mad_PHValueFromVNHairColorCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNHairColorCategoryLabel:", identifier6)}];

          glassesCategory = [v161 glassesCategory];
          label7 = [glassesCategory label];
          identifier7 = [label7 identifier];
          [v17 setGlassesType:{+[VCPFaceUtils mad_PHValueFromVNGlassesCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNGlassesCategoryLabel:", identifier7)}];

          vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 = [v161 VN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1];
          label8 = [vN4UfLbvVUqMvYV8bbGFQcxg5yRLm8ekI1 label];
          identifier8 = [label8 identifier];
          [v17 setExpressionType:{+[VCPFaceUtils mad_PHValueFromVNExpressionCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNExpressionCategoryLabel:", identifier8)}];

          vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP = [v161 VN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP];
          label9 = [vN7fiLHgGnvqPqG63cfDUCK4Xm8obUuWoP label];
          identifier9 = [label9 identifier];
          [v17 setHeadgearType:{+[VCPFaceUtils mad_PHValueFromVNHeadgearCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNHeadgearCategoryLabel:", identifier9)}];

          vN2riiZbQrloRhCzYW56f0rk4N3ROe151S = [v161 VN2riiZbQrloRhCzYW56f0rk4N3ROe151S];
          label10 = [vN2riiZbQrloRhCzYW56f0rk4N3ROe151S label];
          identifier10 = [label10 identifier];
          [v17 setHairType:{+[VCPFaceUtils mad_PHValueFromVNFaceHairCategoryV2Label:](VCPFaceUtils, "mad_PHValueFromVNFaceHairCategoryV2Label:", identifier10)}];

          vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk = [v161 VNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk];
          label11 = [vNpLorzxnyAlLcPFNcKhgoNCmy9b5BRWyk label];
          identifier11 = [label11 identifier];
          [v17 setPoseType:{+[VCPFaceUtils mad_PHValueFromVNPoseCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNPoseCategoryLabel:", identifier11)}];

          vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq = [v161 VN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq];
          label12 = [vN3iT1YRjjnIuELobV1olJiO1vvItN6Kdq label];
          identifier12 = [label12 identifier];
          [v17 setSkintoneType:{+[VCPFaceUtils mad_PHValueFromVNSkintoneCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNSkintoneCategoryLabel:", identifier12)}];

          vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB = [v161 VN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB];
          label13 = [vN1uMyFtnYEWjbrdx3yAuDndKkPeyzNJhB label];
          identifier13 = [label13 identifier];
          [v17 setEthnicityType:{+[VCPFaceUtils mad_PHValueFromVNEthnicityCategoryLabel:](VCPFaceUtils, "mad_PHValueFromVNEthnicityCategoryLabel:", identifier13)}];

          v118 = [v17 eyesState] == 1;
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Missing results from VNClassifyFaceAttributesRequest", buf, 2u);
          }

          v118 = 0;
        }

        [v17 setIsLeftEyeClosed:v118];
        [v17 setIsRightEyeClosed:v118];
        v119 = objc_opt_class();
        v150 = v18[2](v18, v119);
        uuid6 = [observationCopy uuid];
        v121 = __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uuid6, uuid6, v150);

        gaze = [v121 gaze];
        v123 = gaze == 0;

        if (v123)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPPhotosFace] Missing results from VNDetectFaceGazeRequest", buf, 2u);
          }
        }

        else
        {
          gaze2 = [v121 gaze];
          gazeMask = [gaze2 gazeMask];
          [v17 setHasFaceMask:gazeMask != 0];

          gaze3 = [v121 gaze];
          [v17 setGazeType:{+[VCPFaceUtils mad_PHValueFromVNFaceGazeDirection:](VCPFaceUtils, "mad_PHValueFromVNFaceGazeDirection:", objc_msgSend(gaze3, "direction"))}];

          gaze4 = [v121 gaze];
          [gaze4 location];
          [v17 setGazeCenterX:?];

          gaze5 = [v121 gaze];
          [gaze5 location];
          [v17 setGazeCenterY:v129];

          gaze6 = [v121 gaze];
          [gaze6 locationBounds];
          [v17 setGazeRect:?];

          gaze7 = [v121 gaze];
          [gaze7 horizontalAngle];
          [v17 setGazeAngle:?];

          if ([v17 hasFaceMask])
          {
            gaze8 = [v121 gaze];
            gazeMask2 = [gaze8 gazeMask];
            cf = [gazeMask2 pixelBuffer];

            v134 = cf;
            if (cf)
            {
              CFRetain(cf);
              v134 = cf;
            }

            Width = CVPixelBufferGetWidth(v134);
            Height = CVPixelBufferGetHeight(cf);
            v137 = v121;
            BytesPerRow = CVPixelBufferGetBytesPerRow(cf);
            PixelFormatType = CVPixelBufferGetPixelFormatType(cf);
            if (PixelFormatType == 1278226534)
            {
              v140 = BytesPerRow;
              CVPixelBufferLock::CVPixelBufferLock(buf, cf, 1uLL);
              v141 = *buf;
              if (*buf)
              {
                goto LABEL_101;
              }

              BaseAddress = CVPixelBufferGetBaseAddress(cf);
              if (Height < 1)
              {
                v144 = -1.0;
              }

              else
              {
                v143 = 0;
                v144 = -1.0;
                do
                {
                  if (Width >= 1)
                  {
                    v145 = &BaseAddress[4 * v143 * (v140 >> 2)];
                    v146 = Width;
                    do
                    {
                      v147 = *v145++;
                      v148 = v147;
                      if (v147 > v144)
                      {
                        v144 = v148;
                      }

                      --v146;
                    }

                    while (v146);
                  }

                  ++v143;
                }

                while (v143 != (Height & 0x7FFFFFFF));
              }

              v141 = CVPixelBufferLock::Unlock(buf);
              if (v141)
              {
LABEL_101:
                if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *v176 = 67109120;
                  v177 = v141;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPPhotosFace] Failed to access gazeMask (%d)", v176, 8u);
                }
              }

              else
              {
                LODWORD(v149) = 1.0;
                if (v144 < 1.0)
                {
                  *&v149 = v144;
                }

                if (v144 <= 0.0)
                {
                  *&v149 = 0.0;
                }

                [v17 setGazeConfidence:v149];
              }

              CVPixelBufferLock::~CVPixelBufferLock(buf);
            }

            else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              *v185 = PixelFormatType;
              *&v185[4] = 1024;
              *&v185[6] = 1278226534;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPPhotosFace] Unexpected gazeMask pixel format %d (expected: %d)", buf, 0xEu);
            }

            CF<__CVBuffer *>::~CF(&cf);
            v121 = v137;
          }
        }

        v30 = v17;

        goto LABEL_32;
      }

      v61 = MEMORY[0x1E696ABC0];
      v178 = *MEMORY[0x1E696A578];
      v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPPhotosFace] Unable to determine normalized face bounding { { %f, %f } { %f, %f } }", v49, v51, v53, v55];
      v179 = v62;
      v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1];
      *error = [v61 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v63];
    }

    v30 = 0;
    goto LABEL_32;
  }

  if (error)
  {
    v57 = MEMORY[0x1E696ABC0];
    v182 = *MEMORY[0x1E696A578];
    v163 = [MEMORY[0x1E696AEC0] stringWithFormat:@"[VCPPhotosFace] Invalid faceprint and torsoprint"];
    v183 = v163;
    v164 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v183 forKeys:&v182 count:1];
    [v57 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:?];
    *error = v30 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v30 = 0;
LABEL_34:

  v29 = v175;
LABEL_35:

  return v30;
}

id __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id __131__VCPPhotosFace_faceFromFaceObservation_humanObservation_sourceWidth_sourceHeight_visionRequests_processingVersion_force_andError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 results];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)facesFromFaceObservations:(id)observations humanObservations:(id)humanObservations animalObservations:(id)i sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests blurScorePerFace:(id)face exposureScorePerFace:(id)self0 tooSmallFaceObservations:(id)self1 processingVersion:(int)self2
{
  perFaceCopy = perFace;
  v244 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  humanObservationsCopy = humanObservations;
  v214 = i;
  requestsCopy = requests;
  faceCopy = face;
  perFaceCopy2 = perFace;
  faceObservationsCopy = faceObservations;
  array = [MEMORY[0x1E695DF70] array];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __201__VCPPhotosFace_facesFromFaceObservations_humanObservations_animalObservations_sourceWidth_sourceHeight_visionRequests_blurScorePerFace_exposureScorePerFace_tooSmallFaceObservations_processingVersion___block_invoke;
  aBlock[3] = &unk_1E834CEE8;
  v215 = requestsCopy;
  v235 = v215;
  v209 = _Block_copy(aBlock);
  v233[0] = 0;
  v233[1] = 0;
  v231[1] = 0;
  v232 = v233;
  v230 = v231;
  v231[0] = 0;
  v20 = objc_opt_class();
  v205 = v209[2](v209, v20);
  if (!v205 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Requests do not contain VNDetectFaceRectanglesRequest", buf, 2u);
  }

  if ([v205 revision] != 3737841670)
  {
    v54 = 0;
    __p = 0;
    v226 = 0;
    v227 = 0;
    v218 = 0xBFB999999999999ALL;
    while (v54 < [observationsCopy count])
    {
      for (i = 0; i < [humanObservationsCopy count]; i = i + 1)
      {
        v55 = [observationsCopy objectAtIndexedSubscript:v54];
        v56 = [humanObservationsCopy objectAtIndexedSubscript:i];
        [self _calculateOverlappingBetweenFaceObservation:v55 andBodyObservation:v56];
        v58 = v57;

        v59 = [observationsCopy objectAtIndexedSubscript:v54];
        [v59 boundingBox];
        v61 = v60;
        v62 = [observationsCopy objectAtIndexedSubscript:v54];
        [v62 boundingBox];
        v64 = v63;

        v65 = [observationsCopy objectAtIndexedSubscript:v54];
        [v65 boundingBox];
        v67 = v66;

        v68 = [humanObservationsCopy objectAtIndexedSubscript:i];
        [v68 boundingBox];
        v70 = v69;
        v71 = [humanObservationsCopy objectAtIndexedSubscript:i];
        [v71 boundingBox];
        v73 = v72;

        v74 = [humanObservationsCopy objectAtIndexedSubscript:i];
        [v74 boundingBox];
        v76 = v75;

        v77 = 1.0 - (v61 + v64);
        v78 = 1.0 - v67;
        v79 = 1.0 - (v70 + v73);
        v80 = 1.0 - v76;
        v81 = vabds_f32(v77, v79) * -0.1;
        if (v78 < v80)
        {
          v78 = 1.0 - v76;
        }

        v82 = v58 + v81 / (v78 + 0.000001);
        v83 = v226;
        if (v226 >= v227)
        {
          v84 = 0xAAAAAAAAAAAAAAABLL * ((v226 - __p) >> 3);
          v85 = v84 + 1;
          if (v84 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v227 - __p) >> 3) > v85)
          {
            v85 = 0x5555555555555556 * ((v227 - __p) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v227 - __p) >> 3) >= 0x555555555555555)
          {
            v86 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v86 = v85;
          }

          if (v86)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<float,unsigned long,unsigned long>>>(&__p, v86);
          }

          v87 = 8 * ((v226 - __p) >> 3);
          v12 = 0.0;
          *v87 = v82;
          *(v87 + 8) = v54;
          *(v87 + 16) = i;
          perFaceCopy = 24 * v84 + 24;
          memcpy((24 * v84 - (v226 - __p)), __p, v226 - __p);
          v88 = __p;
          __p = (24 * v84 - (v226 - __p));
          v226 = perFaceCopy;
          v227 = 0;
          if (v88)
          {
            operator delete(v88);
          }
        }

        else
        {
          *v226 = v82;
          perFaceCopy = (v83 + 6);
          *(v83 + 1) = v54;
          *(v83 + 2) = i;
        }

        v226 = perFaceCopy;
      }

      ++v54;
    }

    v89 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v226 - __p) >> 3));
    if (v226 == __p)
    {
      v90 = 0;
    }

    else
    {
      v90 = v89;
    }

    std::__introsort<std::_ClassicAlgPolicy,+[VCPPhotosFace facesFromFaceObservations:humanObservations:animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:]::$_0 &,std::tuple<float,unsigned long,unsigned long> *,false>(__p, v226, v90, 1);
    v91 = __p;
    v92 = v226;
    if (v226 == __p)
    {
LABEL_113:
      if (!v91)
      {
        goto LABEL_115;
      }
    }

    else
    {
      v93 = 0;
      while (1)
      {
        v94 = &v91[6 * v93];
        if (*v94 < 0.8)
        {
          break;
        }

        perFaceCopy = *(v94 + 1);
        v95 = *(v94 + 2);
        v96 = v233[0];
        if (!v233[0])
        {
          goto LABEL_81;
        }

        v97 = v233;
        do
        {
          v98 = v96[4];
          v30 = v98 >= perFaceCopy;
          v99 = v98 < perFaceCopy;
          if (v30)
          {
            v97 = v96;
          }

          v96 = v96[v99];
        }

        while (v96);
        if (v97 == v233 || perFaceCopy < v97[4])
        {
LABEL_81:
          v100 = v231[0];
          if (!v231[0])
          {
            goto LABEL_89;
          }

          v101 = v231;
          do
          {
            v102 = v100[4];
            v30 = v102 >= v95;
            v103 = v102 < v95;
            if (v30)
            {
              v101 = v100;
            }

            v100 = v100[v103];
          }

          while (v100);
          if (v101 == v231 || v95 < v101[4])
          {
LABEL_89:
            v104 = [observationsCopy objectAtIndexedSubscript:perFaceCopy];
            v105 = [humanObservationsCopy objectAtIndexedSubscript:v95];
            v224 = 0;
            LOBYTE(v204) = 0;
            [self faceFromFaceObservation:v104 humanObservation:v105 sourceWidth:width sourceHeight:height visionRequests:v215 processingVersion:version force:v204 andError:&v224];
            v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v106 = v224;

            if (v12 == 0.0 || v106)
            {
              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                [observationsCopy objectAtIndexedSubscript:perFaceCopy];
                *&perFaceCopy = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                v109 = [humanObservationsCopy objectAtIndexedSubscript:v95];
                *buf = 138412802;
                v237 = *&perFaceCopy;
                v238 = 2112;
                v239 = v109;
                v240 = 2112;
                v241 = v106;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace from %@ and %@ - %@", buf, 0x20u);
              }
            }

            else
            {
              v107 = [observationsCopy objectAtIndexedSubscript:perFaceCopy];
              [*&v12 setIsTooSmall:{objc_msgSend(faceObservationsCopy, "containsObject:", v107)}];

              if (faceCopy)
              {
                v218 = [faceCopy objectAtIndexedSubscript:perFaceCopy];
                [v218 doubleValue];
              }

              else
              {
                v108 = 1.0;
              }

              [*&v12 setBlurScore:v108];
              if (faceCopy)
              {
              }

              if (perFaceCopy2)
              {
                i = [perFaceCopy2 objectAtIndexedSubscript:perFaceCopy];
                [i doubleValue];
              }

              else
              {
                v110 = 0.0;
              }

              [*&v12 setExposureScore:v110];
              if (perFaceCopy2)
              {
              }

              [*&v12 setQualityMeasure:{objc_msgSend(*&v12, "qualityMeasureWithCountOfFacesOnAsset:", objc_msgSend(observationsCopy, "count"))}];
              imageprintWrapper = [*&v12 imageprintWrapper];
              v112 = imageprintWrapper == 0;

              if (v112)
              {
                if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  [observationsCopy objectAtIndexedSubscript:perFaceCopy];
                  *&perFaceCopy = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v114 = [humanObservationsCopy objectAtIndexedSubscript:v95];
                  *buf = 138412802;
                  v237 = v12;
                  v238 = 2112;
                  v239 = perFaceCopy;
                  v240 = 2112;
                  v241 = v114;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace %@ from %@ and %@ - invalid imageprint", buf, 0x20u);
                }
              }

              else
              {
                [array addObject:*&v12];
                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v232, __p + 3 * v93 + 1);
                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v230, __p + 3 * v93 + 2);
                if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                {
                  [observationsCopy objectAtIndexedSubscript:perFaceCopy];
                  *&perFaceCopy = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                  v113 = [humanObservationsCopy objectAtIndexedSubscript:v95];
                  *buf = 138412802;
                  v237 = v12;
                  v238 = 2112;
                  v239 = perFaceCopy;
                  v240 = 2112;
                  v241 = v113;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate VCPPhotosFace %@ from %@ and %@", buf, 0x20u);
                }
              }
            }

            v91 = __p;
            v92 = v226;
          }
        }

        if (++v93 >= 0xAAAAAAAAAAAAAAABLL * ((v92 - v91) >> 3))
        {
          goto LABEL_113;
        }
      }
    }

    v226 = v91;
    operator delete(v91);
    goto LABEL_115;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E9C10];
  perFaceCopy = 2112;
  while (1)
  {
    __p = v21;
    if (v21 >= [observationsCopy count])
    {
      break;
    }

    v23 = [observationsCopy objectAtIndexedSubscript:__p];
    groupId = [v23 groupId];
    v25 = groupId == 0;

    if (!v25)
    {
      for (j = 0; ; j = v229 + 1)
      {
        v229 = j;
        if (j >= [humanObservationsCopy count])
        {
          break;
        }

        v27 = v231[0];
        if (!v231[0])
        {
          goto LABEL_223;
        }

        v28 = v231;
        do
        {
          v29 = v27[4];
          v30 = v29 >= v229;
          v31 = v29 < v229;
          if (v30)
          {
            v28 = v27;
          }

          v27 = v27[v31];
        }

        while (v27);
        if (v28 == v231 || v229 < v28[4])
        {
LABEL_223:
          v32 = [humanObservationsCopy objectAtIndexedSubscript:v229];
          groupId2 = [v32 groupId];
          v34 = groupId2 == 0;

          if (!v34)
          {
            v35 = [observationsCopy objectAtIndexedSubscript:__p];
            groupId3 = [v35 groupId];
            v37 = [humanObservationsCopy objectAtIndexedSubscript:v229];
            [v37 groupId];
            v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            v38 = [groupId3 isEqual:*&v12];

            if (v38)
            {
              v39 = [observationsCopy objectAtIndexedSubscript:__p];
              v40 = [humanObservationsCopy objectAtIndexedSubscript:v229];
              v228 = 0;
              LOBYTE(v204) = 0;
              [self faceFromFaceObservation:v39 humanObservation:v40 sourceWidth:width sourceHeight:height visionRequests:v215 processingVersion:version force:v204 andError:&v228];
              v41 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              v42 = v228;

              if (v41 != 0.0 && !v42)
              {
                v45 = [observationsCopy objectAtIndexedSubscript:__p];
                [*&v41 setIsTooSmall:{objc_msgSend(faceObservationsCopy, "containsObject:", v45)}];

                if (faceCopy)
                {
                  v210 = [faceCopy objectAtIndexedSubscript:__p];
                  [v210 doubleValue];
                }

                else
                {
                  v46 = 1.0;
                }

                [*&v41 setBlurScore:v46];
                if (faceCopy)
                {
                }

                if (perFaceCopy2)
                {
                  v208 = [perFaceCopy2 objectAtIndexedSubscript:__p];
                  [v208 doubleValue];
                }

                else
                {
                  v47 = 0.0;
                }

                [*&v41 setExposureScore:v47];
                if (perFaceCopy2)
                {
                }

                [*&v41 setQualityMeasure:{objc_msgSend(*&v41, "qualityMeasureWithCountOfFacesOnAsset:", objc_msgSend(observationsCopy, "count"))}];
                imageprintWrapper2 = [*&v41 imageprintWrapper];
                v49 = imageprintWrapper2 == 0;

                if (v49)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    v52 = [observationsCopy objectAtIndexedSubscript:__p];
                    v53 = [humanObservationsCopy objectAtIndexedSubscript:v229];
                    *buf = 138412802;
                    v237 = v41;
                    v238 = 2112;
                    v239 = v52;
                    v240 = 2112;
                    v241 = v53;
                    _os_log_impl(&dword_1C9B70000, v22, OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace %@ from %@ and %@ - invalid imageprint", buf, 0x20u);
                  }
                }

                else
                {
                  [array addObject:*&v41];
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
                  {
                    v50 = [observationsCopy objectAtIndexedSubscript:__p];
                    v51 = [humanObservationsCopy objectAtIndexedSubscript:v229];
                    *buf = 138412802;
                    v237 = v41;
                    v238 = 2112;
                    v239 = v50;
                    v240 = 2112;
                    v241 = v51;
                    _os_log_impl(&dword_1C9B70000, v22, OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate VCPPhotosFace %@ from %@ and %@", buf, 0x20u);
                  }
                }

                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v232, &__p);
                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v230, &v229);

                break;
              }

              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                [observationsCopy objectAtIndexedSubscript:__p];
                v43 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
                v44 = [humanObservationsCopy objectAtIndexedSubscript:v229];
                *buf = 138412802;
                v237 = v43;
                v238 = 2112;
                v239 = v44;
                v240 = 2112;
                v241 = v42;
                _os_log_impl(&dword_1C9B70000, v22, OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace from %@ and %@ - %@", buf, 0x20u);
              }
            }
          }
        }
      }
    }

    v21 = __p + 1;
  }

LABEL_115:
  for (k = 0; k < [observationsCopy count]; ++k)
  {
    v116 = v233[0];
    if (!v233[0])
    {
      goto LABEL_125;
    }

    v117 = v233;
    do
    {
      v118 = v116[4];
      v30 = v118 >= k;
      v119 = v118 < k;
      if (v30)
      {
        v117 = v116;
      }

      v116 = v116[v119];
    }

    while (v116);
    if (v117 == v233 || k < v117[4])
    {
LABEL_125:
      v120 = [observationsCopy objectAtIndexedSubscript:k];
      v223 = 0;
      LOBYTE(v204) = 0;
      [self faceFromFaceObservation:v120 humanObservation:0 sourceWidth:width sourceHeight:height visionRequests:v215 processingVersion:version force:v204 andError:&v223];
      v121 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      v122 = v223;

      if (v121 == 0.0 || v122)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          [observationsCopy objectAtIndexedSubscript:k];
          v125 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          *buf = 138412546;
          v237 = v125;
          v238 = 2112;
          v239 = v122;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate face only VCPPhotosFace from %@ - %@", buf, 0x16u);
        }
      }

      else
      {
        v123 = [observationsCopy objectAtIndexedSubscript:k];
        [*&v121 setIsTooSmall:{objc_msgSend(faceObservationsCopy, "containsObject:", v123)}];

        if (faceCopy)
        {
          [faceCopy objectAtIndexedSubscript:k];
          v12 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          [*&v12 doubleValue];
        }

        else
        {
          v124 = 1.0;
        }

        [*&v121 setBlurScore:v124];
        if (faceCopy)
        {
        }

        if (perFaceCopy2)
        {
          [perFaceCopy2 objectAtIndexedSubscript:k];
          *&perFaceCopy = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
          [perFaceCopy doubleValue];
        }

        else
        {
          v126 = 0.0;
        }

        [*&v121 setExposureScore:v126];
        if (perFaceCopy2)
        {
        }

        [*&v121 setQualityMeasure:{objc_msgSend(*&v121, "qualityMeasureWithCountOfFacesOnAsset:", objc_msgSend(observationsCopy, "count"))}];
        imageprintWrapper3 = [*&v121 imageprintWrapper];
        v128 = imageprintWrapper3 == 0;

        if (v128)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v130 = [observationsCopy objectAtIndexedSubscript:k];
            *buf = 138412546;
            v237 = v121;
            v238 = 2112;
            v239 = v130;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace %@ from %@ - invalid imageprint", buf, 0x16u);
          }
        }

        else
        {
          [array addObject:*&v121];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v129 = [observationsCopy objectAtIndexedSubscript:k];
            *buf = 138412546;
            v237 = v121;
            v238 = 2112;
            v239 = v129;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate face only VCPPhotosFace %@ from %@", buf, 0x16u);
          }
        }
      }
    }
  }

  for (m = 0; m < [humanObservationsCopy count]; ++m)
  {
    v132 = v231[0];
    if (!v231[0])
    {
      goto LABEL_159;
    }

    v133 = v231;
    do
    {
      v134 = v132[4];
      v30 = v134 >= m;
      v135 = v134 < m;
      if (v30)
      {
        v133 = v132;
      }

      v132 = v132[v135];
    }

    while (v132);
    if (v133 == v231 || m < v133[4])
    {
LABEL_159:
      v219 = [humanObservationsCopy objectAtIndexedSubscript:m];
      [VCPPhotosFace faceWithLocalIdentifier:0];
      v136 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [*&v136 setSourceWidth:width];
      [*&v136 setSourceHeight:height];
      [*&v136 setManual:0];
      [*&v136 setAlgorithmVersion:version];
      [*&v136 setDetectionType:1];
      [v219 boundingBox];
      v138 = v137;
      v140 = v139;
      v142 = v141;
      v144 = v143;
      [*&v136 setBodyWidth:v141];
      [*&v136 setBodyHeight:v144];
      v246.origin.x = v138;
      v246.origin.y = v140;
      v246.size.width = v142;
      v246.size.height = v144;
      [*&v136 setBodyCenterX:CGRectGetMidX(v246)];
      v247.origin.x = v138;
      v247.origin.y = v140;
      v247.size.width = v142;
      v247.size.height = v144;
      [*&v136 setBodyCenterY:CGRectGetMidY(v247)];
      v145 = objc_opt_class();
      v146 = v209[2](v209, v145);
      uuid = [v219 uuid];
      v148 = __201__VCPPhotosFace_facesFromFaceObservations_humanObservations_animalObservations_sourceWidth_sourceHeight_visionRequests_blurScorePerFace_exposureScorePerFace_tooSmallFaceObservations_processingVersion___block_invoke_2(uuid, uuid, v146);

      torsoprint = [v148 torsoprint];
      if (torsoprint)
      {
        v150 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:0 torsoprint:torsoprint];
        v222 = 0;
        v151 = [v150 serializeStateAndReturnError:&v222];
        v211 = COERCE_DOUBLE(v222);
        if (v151)
        {
          v152 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:version andData:v151];
          [*&v136 setImageprintWrapper:v152];

          [*&v136 setVuObservationID:0];
          imageprintWrapper4 = [*&v136 imageprintWrapper];
          LOBYTE(v152) = imageprintWrapper4 == 0;

          if ((v152 & 1) == 0)
          {
            [array addObject:*&v136];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v237 = v136;
              v238 = 2112;
              v239 = v219;
              v154 = MEMORY[0x1E69E9C10];
              v155 = OS_LOG_TYPE_DEBUG;
              v156 = "[PhotosFace] Generate VCPPhotosFace %@ from %@";
              v157 = 22;
              goto LABEL_171;
            }
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v237 = v211;
          v154 = MEMORY[0x1E69E9C10];
          v155 = OS_LOG_TYPE_ERROR;
          v156 = "[PhotosFace] Failed to serialize torsoprint; %@";
          v157 = 12;
LABEL_171:
          _os_log_impl(&dword_1C9B70000, v154, v155, v156, buf, v157);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PhotosFace] torsoOnlyObservation failed to return a faceprint", buf, 2u);
      }

      continue;
    }
  }

  for (n = 0; n < [v214 count]; ++n)
  {
    [v214 objectAtIndexedSubscript:n];
    v159 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (![self _isColocatingAnimalObservation:*&v159 withFaceObservations:observationsCopy orTorsoObservations:humanObservationsCopy])
    {
      [VCPPhotosFace faceWithLocalIdentifier:0];
      v160 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      [*&v160 setSourceWidth:width];
      [*&v160 setSourceHeight:height];
      [*&v160 setManual:0];
      [*&v160 setAlgorithmVersion:version];
      labels = [*&v159 labels];
      firstObject = [labels firstObject];
      identifier = [firstObject identifier];

      if ([identifier isEqualToString:@"Dog"])
      {
        v164 = 3;
        goto LABEL_185;
      }

      if ([identifier isEqualToString:@"Cat"])
      {
        v164 = 4;
LABEL_185:
        [*&v160 setDetectionType:v164];
        [*&v159 boundingBox];
        v166 = v165;
        v168 = v167;
        v170 = v169;
        v172 = v171;
        if ([*&v160 setCenterAndSizeFromNormalizedFaceRect:?])
        {
          [*&v159 boundingBox];
          v174 = v173;
          v176 = v175;
          v178 = v177;
          v180 = v179;
          [*&v160 setBodyWidth:v177];
          [*&v160 setBodyHeight:v180];
          v248.origin.x = v174;
          v248.origin.y = v176;
          v248.size.width = v178;
          v248.size.height = v180;
          [*&v160 setBodyCenterX:CGRectGetMidX(v248)];
          v249.origin.x = v174;
          v249.origin.y = v176;
          v249.size.width = v178;
          v249.size.height = v180;
          [*&v160 setBodyCenterY:CGRectGetMidY(v249)];
          animalprint = [*&v159 animalprint];
          v182 = animalprint;
          if (!animalprint)
          {
            if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              goto LABEL_214;
            }

            *buf = 0;
            v191 = MEMORY[0x1E69E9C10];
            v192 = OS_LOG_TYPE_ERROR;
            v193 = "[PhotosFace] animalObservation failed to return a faceprint";
            v194 = 2;
LABEL_209:
            _os_log_impl(&dword_1C9B70000, v191, v192, v193, buf, v194);
            goto LABEL_214;
          }

          [animalprint confidence];
          if (v183 < 0.4)
          {
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              [v182 confidence];
              v185 = v184;
              v186 = [*&v159 description];
              *buf = 134218498;
              v237 = v185;
              v238 = 2048;
              v239 = 0x3FD99999A0000000;
              v240 = 2112;
              v241 = v186;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PhotosFace] animalprint.confidence is too low (%.3f < %.3f) %@", buf, 0x20u);
            }

            goto LABEL_214;
          }

          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            [v182 confidence];
            v196 = v195;
            v197 = [*&v159 description];
            *buf = 134218242;
            v237 = v196;
            v238 = 2112;
            v239 = v197;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Accepting animalprint with confidence: %.3f %@", buf, 0x16u);
          }

          v221 = 0;
          v198 = [v182 serializeStateAndReturnError:&v221];
          v199 = COERCE_DOUBLE(v221);
          if (v198)
          {
            v200 = [VCPVNImageprintWrapper wrapperWithImageprintType:1 version:version andData:v198];
            [*&v160 setImageprintWrapper:v200];

            [*&v160 setVuObservationID:0];
            imageprintWrapper5 = [*&v160 imageprintWrapper];
            v202 = imageprintWrapper5 == 0;

            if (v202)
            {
              goto LABEL_214;
            }

            [array addObject:*&v160];
            if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              goto LABEL_214;
            }

            *buf = 138412546;
            v237 = v160;
            v238 = 2112;
            v239 = *&v159;
            v191 = MEMORY[0x1E69E9C10];
            v192 = OS_LOG_TYPE_DEBUG;
            v193 = "[PhotosFace] Generate VCPPhotosFace %@ from %@";
            v194 = 22;
            goto LABEL_209;
          }

          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v237 = v199;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PhotosFace] Failed to serialize animalprintData; %@", buf, 0xCu);
          }

LABEL_214:
LABEL_215:

          goto LABEL_216;
        }

        if (MediaAnalysisLogLevel() < 3 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          goto LABEL_215;
        }

        *buf = 134218752;
        v237 = v166;
        v238 = 2048;
        v239 = v168;
        v240 = 2048;
        v241 = v170;
        v242 = 2048;
        v243 = v172;
        v187 = MEMORY[0x1E69E9C10];
        v188 = OS_LOG_TYPE_ERROR;
        v189 = "[PhotosFace] Unable to determine normalized bounding box { { %f, %f } { %f, %f } }";
        v190 = 42;
      }

      else
      {
        if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_215;
        }

        *buf = 0;
        v187 = MEMORY[0x1E69E9C10];
        v188 = OS_LOG_TYPE_DEFAULT;
        v189 = "[PhotosFace] Label must be either Dog or Cat. Ignoring";
        v190 = 2;
      }

      _os_log_impl(&dword_1C9B70000, v187, v188, v189, buf, v190);
      goto LABEL_215;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v237 = v159;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Ignoring co-locating animalObservation %@", buf, 0xCu);
    }

LABEL_216:
  }

  std::__tree<unsigned long>::destroy(&v230, v231[0]);
  std::__tree<unsigned long>::destroy(&v232, v233[0]);

  return array;
}

id __201__VCPPhotosFace_facesFromFaceObservations_humanObservations_animalObservations_sourceWidth_sourceHeight_visionRequests_blurScorePerFace_exposureScorePerFace_tooSmallFaceObservations_processingVersion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id __201__VCPPhotosFace_facesFromFaceObservations_humanObservations_animalObservations_sourceWidth_sourceHeight_visionRequests_blurScorePerFace_exposureScorePerFace_tooSmallFaceObservations_processingVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 results];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_peopleFacesTorsosFromFaceObservations:(id)observations humanObservations:(id)humanObservations matchedFace:(void *)face matchedTorso:(void *)torso sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests blurScorePerFace:(id)self0 exposureScorePerFace:(id)self1 tooSmallFaceObservations:(id)self2 processingVersion:(int)self3
{
  v74 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  humanObservationsCopy = humanObservations;
  requestsCopy = requests;
  perFaceCopy = perFace;
  scorePerFaceCopy = scorePerFace;
  faceObservationsCopy = faceObservations;
  array = [MEMORY[0x1E695DF70] array];
  v18 = 0;
  torsoCopy = torso;
  v19 = torso + 8;
  while (1)
  {
    v67 = v18;
    if (v18 >= [observationsCopy count])
    {
      break;
    }

    v20 = [observationsCopy objectAtIndexedSubscript:v67];
    groupId = [v20 groupId];
    v22 = groupId == 0;

    if (!v22)
    {
      for (i = 0; ; i = v66 + 1)
      {
        v66 = i;
        if (i >= [humanObservationsCopy count])
        {
          break;
        }

        v24 = *v19;
        if (!*v19)
        {
          goto LABEL_47;
        }

        v25 = v19;
        do
        {
          v26 = v24[4];
          v27 = v26 >= v66;
          v28 = v26 < v66;
          if (v27)
          {
            v25 = v24;
          }

          v24 = v24[v28];
        }

        while (v24);
        if (v25 == v19 || v66 < v25[4])
        {
LABEL_47:
          v29 = [humanObservationsCopy objectAtIndexedSubscript:v66];
          groupId2 = [v29 groupId];
          v31 = groupId2 == 0;

          if (!v31)
          {
            v32 = [observationsCopy objectAtIndexedSubscript:v67];
            groupId3 = [v32 groupId];
            v34 = [humanObservationsCopy objectAtIndexedSubscript:v66];
            groupId4 = [v34 groupId];
            v36 = [groupId3 isEqual:groupId4];

            if (v36)
            {
              v37 = [observationsCopy objectAtIndexedSubscript:v67];
              v38 = [humanObservationsCopy objectAtIndexedSubscript:v66];
              v65 = 0;
              LOBYTE(v53) = 0;
              v39 = [self faceFromFaceObservation:v37 humanObservation:v38 sourceWidth:width sourceHeight:height visionRequests:requestsCopy processingVersion:version force:v53 andError:&v65];
              v40 = v65;

              if (v39 && !v40)
              {
                v43 = [observationsCopy objectAtIndexedSubscript:v67];
                [v39 setIsTooSmall:{objc_msgSend(faceObservationsCopy, "containsObject:", v43)}];

                if (perFaceCopy)
                {
                  v59 = [perFaceCopy objectAtIndexedSubscript:v67];
                  [v59 doubleValue];
                }

                else
                {
                  v44 = 1.0;
                }

                [v39 setBlurScore:v44];
                if (perFaceCopy)
                {
                }

                if (scorePerFaceCopy)
                {
                  v58 = [scorePerFaceCopy objectAtIndexedSubscript:v67];
                  [v58 doubleValue];
                }

                else
                {
                  v45 = 0.0;
                }

                [v39 setExposureScore:v45];
                if (scorePerFaceCopy)
                {
                }

                [v39 setQualityMeasure:{objc_msgSend(v39, "qualityMeasureWithCountOfFacesOnAsset:", objc_msgSend(observationsCopy, "count"))}];
                imageprintWrapper = [v39 imageprintWrapper];
                v47 = imageprintWrapper == 0;

                if (v47)
                {
                  if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                  {
                    v50 = [observationsCopy objectAtIndexedSubscript:v67];
                    v51 = [humanObservationsCopy objectAtIndexedSubscript:v66];
                    *buf = 138412802;
                    v69 = v39;
                    v70 = 2112;
                    v71 = v50;
                    v72 = 2112;
                    v73 = v51;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace %@ from %@ and %@ - invalid imageprint", buf, 0x20u);
                  }
                }

                else
                {
                  [array addObject:v39];
                  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
                  {
                    v48 = [observationsCopy objectAtIndexedSubscript:v67];
                    v49 = [humanObservationsCopy objectAtIndexedSubscript:v66];
                    *buf = 138412802;
                    v69 = v39;
                    v70 = 2112;
                    v71 = v48;
                    v72 = 2112;
                    v73 = v49;
                    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate VCPPhotosFace %@ from %@ and %@", buf, 0x20u);
                  }
                }

                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(face, &v67);
                std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(torsoCopy, &v66);

                break;
              }

              if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
              {
                v41 = [observationsCopy objectAtIndexedSubscript:v67];
                v42 = [humanObservationsCopy objectAtIndexedSubscript:v66];
                *buf = 138412802;
                v69 = v41;
                v70 = 2112;
                v71 = v42;
                v72 = 2112;
                v73 = v40;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace from %@ and %@ - %@", buf, 0x20u);
              }
            }
          }
        }
      }
    }

    v18 = v67 + 1;
  }

  return array;
}

+ (id)_peopleFacesOnlyFromFaceObservations:(id)observations matchedFace:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(id)height visionRequests:(id)requests blurScorePerFace:(id)self0 exposureScorePerFace:(int)self1 tooSmallFaceObservations:processingVersion:
{
  v49 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  v42 = a7;
  heightCopy = height;
  requestsCopy = requests;
  faceCopy = face;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0;
  p_var1 = &a4->var0.var1;
  while (v17 < [observationsCopy count])
  {
    var0 = p_var1->var0;
    if (!p_var1->var0)
    {
      goto LABEL_11;
    }

    v20 = p_var1;
    do
    {
      v21 = *(var0 + 4);
      v22 = v21 >= v17;
      v23 = v21 < v17;
      if (v22)
      {
        v20 = var0;
      }

      var0 = *(var0 + v23);
    }

    while (var0);
    if (v20 == p_var1 || v17 < v20[4].var0)
    {
LABEL_11:
      v24 = [observationsCopy objectAtIndexedSubscript:v17];
      v44 = 0;
      LOBYTE(v36) = 0;
      v25 = [self faceFromFaceObservation:v24 humanObservation:0 sourceWidth:width sourceHeight:a6 visionRequests:v42 processingVersion:perFace force:v36 andError:&v44];
      v26 = v44;

      if (!v25 || v26)
      {
        if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v29 = [observationsCopy objectAtIndexedSubscript:v17];
          *buf = 138412546;
          v46 = v29;
          v47 = 2112;
          v48 = v26;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate face only VCPPhotosFace from %@ - %@", buf, 0x16u);
        }
      }

      else
      {
        v27 = [observationsCopy objectAtIndexedSubscript:v17];
        [v25 setIsTooSmall:{objc_msgSend(faceCopy, "containsObject:", v27)}];

        if (heightCopy)
        {
          a4 = [heightCopy objectAtIndexedSubscript:v17];
          unk_1F4A1D7C8(a4, "doubleValue");
        }

        else
        {
          v28 = 1.0;
        }

        [v25 setBlurScore:v28];
        if (heightCopy)
        {
        }

        if (requestsCopy)
        {
          v11 = [requestsCopy objectAtIndexedSubscript:v17];
          [v11 doubleValue];
        }

        else
        {
          v30 = 0.0;
        }

        [v25 setExposureScore:v30];
        if (requestsCopy)
        {
        }

        [v25 setQualityMeasure:{objc_msgSend(v25, "qualityMeasureWithCountOfFacesOnAsset:", objc_msgSend(observationsCopy, "count"))}];
        imageprintWrapper = [v25 imageprintWrapper];
        v32 = imageprintWrapper == 0;

        if (v32)
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v34 = [observationsCopy objectAtIndexedSubscript:v17];
            *buf = 138412546;
            v46 = v25;
            v47 = 2112;
            v48 = v34;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] Fail to generate VCPPhotosFace %@ from %@ - invalid imageprint", buf, 0x16u);
          }
        }

        else
        {
          [array addObject:v25];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v33 = [observationsCopy objectAtIndexedSubscript:v17];
            *buf = 138412546;
            v46 = v25;
            v47 = 2112;
            v48 = v33;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate face only VCPPhotosFace %@ from %@", buf, 0x16u);
          }
        }
      }
    }

    ++v17;
  }

  return array;
}

+ (id)_peopleTorsosOnlyFromHumanObservations:(id)observations matchedTorso:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(int)height visionRequests:processingVersion:
{
  v44 = *&height;
  v57 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  v10 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __127__VCPPhotosFace__peopleTorsosOnlyFromHumanObservations_matchedTorso_sourceWidth_sourceHeight_visionRequests_processingVersion___block_invoke;
  aBlock[3] = &unk_1E834CEE8;
  v42 = v10;
  v52 = v42;
  v47 = _Block_copy(aBlock);
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0;
  p_var1 = &a4->var0.var1;
  while (v11 < [observationsCopy count])
  {
    var0 = p_var1->var0;
    if (!p_var1->var0)
    {
      goto LABEL_11;
    }

    v13 = p_var1;
    do
    {
      v14 = *(var0 + 4);
      v15 = v14 >= v11;
      v16 = v14 < v11;
      if (v15)
      {
        v13 = var0;
      }

      var0 = *(var0 + v16);
    }

    while (var0);
    if (v13 == p_var1 || v11 < v13[4].var0)
    {
LABEL_11:
      v17 = [observationsCopy objectAtIndexedSubscript:v11];
      v18 = [VCPPhotosFace faceWithLocalIdentifier:0];
      [v18 setSourceWidth:width];
      [v18 setSourceHeight:a6];
      [v18 setManual:0];
      [v18 setAlgorithmVersion:v44];
      [v18 setDetectionType:1];
      [v17 boundingBox];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      [v18 setBodyWidth:v23];
      [v18 setBodyHeight:v26];
      v59.origin.x = v20;
      v59.origin.y = v22;
      v59.size.width = v24;
      v59.size.height = v26;
      [v18 setBodyCenterX:CGRectGetMidX(v59)];
      v60.origin.x = v20;
      v60.origin.y = v22;
      v60.size.width = v24;
      v60.size.height = v26;
      [v18 setBodyCenterY:CGRectGetMidY(v60)];
      v27 = objc_opt_class();
      v28 = v47[2](v47, v27);
      uuid = [v17 uuid];
      v30 = __127__VCPPhotosFace__peopleTorsosOnlyFromHumanObservations_matchedTorso_sourceWidth_sourceHeight_visionRequests_processingVersion___block_invoke_2(uuid, uuid, v28);

      torsoprint = [v30 torsoprint];
      if (torsoprint)
      {
        v32 = [objc_alloc(MEMORY[0x1E6984520]) initWithFaceprint:0 torsoprint:torsoprint];
        v50 = 0;
        v33 = [v32 serializeStateAndReturnError:&v50];
        v34 = v50;
        if (v33)
        {
          v35 = [VCPVNImageprintWrapper wrapperWithImageprintType:0 version:v44 andData:v33];
          [v18 setImageprintWrapper:v35];

          [v18 setVuObservationID:0];
          imageprintWrapper = [v18 imageprintWrapper];
          LOBYTE(v35) = imageprintWrapper == 0;

          if ((v35 & 1) == 0)
          {
            [array addObject:v18];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v54 = v18;
              v55 = 2112;
              v56 = v17;
              v37 = MEMORY[0x1E69E9C10];
              v38 = OS_LOG_TYPE_DEBUG;
              v39 = "[PhotosFace] Generate VCPPhotosFace %@ from %@";
              v40 = 22;
              goto LABEL_23;
            }
          }
        }

        else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v54 = v34;
          v37 = MEMORY[0x1E69E9C10];
          v38 = OS_LOG_TYPE_ERROR;
          v39 = "[PhotosFace] Failed to serialize torsoprint; %@";
          v40 = 12;
LABEL_23:
          _os_log_impl(&dword_1C9B70000, v37, v38, v39, buf, v40);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PhotosFace] torsoOnlyObservation failed to return a faceprint", buf, 2u);
      }
    }

    ++v11;
  }

  return array;
}

id __127__VCPPhotosFace__peopleTorsosOnlyFromHumanObservations_matchedTorso_sourceWidth_sourceHeight_visionRequests_processingVersion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id __127__VCPPhotosFace__peopleTorsosOnlyFromHumanObservations_matchedTorso_sourceWidth_sourceHeight_visionRequests_processingVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 results];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)_filterAnimalObservations:(id)observations colocatingWithFaceObservations:(id)faceObservations orHumanObservations:(id)humanObservations
{
  v20 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  faceObservationsCopy = faceObservations;
  humanObservationsCopy = humanObservations;
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  v12 = 0;
  v13 = MEMORY[0x1E69E9C10];
  *&v14 = 138412290;
  v17 = v14;
  while (v12 < [observationsCopy count])
  {
    v15 = [observationsCopy objectAtIndexedSubscript:v12];
    if ([self _isColocatingAnimalObservation:v15 withFaceObservations:faceObservationsCopy orTorsoObservations:humanObservationsCopy])
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = v17;
        v19 = v15;
        _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, "[PhotosFace] Ignoring co-locating animalObservation %@", buf, 0xCu);
      }

      [indexSet addIndex:v12];
    }

    ++v12;
  }

  return indexSet;
}

+ (id)_animalImageprintWrapperFromObservation:(id)observation visionRequests:(id)requests processingVersion:(int)version
{
  v5 = *&version;
  v37 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  requestsCopy = requests;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __90__VCPPhotosFace__animalImageprintWrapperFromObservation_visionRequests_processingVersion___block_invoke;
  aBlock[3] = &unk_1E834CEE8;
  v9 = requestsCopy;
  v30 = v9;
  v10 = _Block_copy(aBlock);
  v11 = objc_opt_class();
  v12 = v10[2](v10, v11);
  uuid = [observationCopy uuid];
  v14 = __90__VCPPhotosFace__animalImageprintWrapperFromObservation_visionRequests_processingVersion___block_invoke_2(uuid, uuid, v12);

  animalprint = [v14 animalprint];
  v16 = animalprint;
  if (!animalprint)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PhotosFace] observation failed to return an animalprint", buf, 2u);
    }

    goto LABEL_9;
  }

  [animalprint confidence];
  if (v17 < 0.4)
  {
    if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      [v16 confidence];
      v19 = v18;
      v20 = [v14 description];
      *buf = 134218498;
      v32 = v19;
      v33 = 2048;
      v34 = 0x3FD99999A0000000;
      v35 = 2112;
      v36 = v20;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[PhotosFace] animalprint.confidence is too low (%.3f < %.3f) %@", buf, 0x20u);
    }

LABEL_9:
    v21 = 0;
    goto LABEL_20;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [v16 confidence];
    v23 = v22;
    v24 = [v14 description];
    *buf = 134218242;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Accepting animalprint with confidence: %.3f %@", buf, 0x16u);
  }

  v28 = 0;
  v25 = [v16 serializeStateAndReturnError:&v28];
  v26 = COERCE_DOUBLE(v28);
  if (v25)
  {
    v21 = [VCPVNImageprintWrapper wrapperWithImageprintType:1 version:v5 andData:v25];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v26;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PhotosFace] Failed to serialize animalprintData; %@", buf, 0xCu);
    }

    v21 = 0;
  }

LABEL_20:

  return v21;
}

id __90__VCPPhotosFace__animalImageprintWrapperFromObservation_visionRequests_processingVersion___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v6 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

id __90__VCPPhotosFace__animalImageprintWrapperFromObservation_visionRequests_processingVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a3 results];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 uuid];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

+ (id)faceFromAnimalHeadObservation:(id)observation animalBodyObservation:(id)bodyObservation animalLabel:(id)label sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests processingVersion:(int)version
{
  v54 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  bodyObservationCopy = bodyObservation;
  labelCopy = label;
  requestsCopy = requests;
  v19 = [VCPPhotosFace faceWithLocalIdentifier:0];
  [v19 setSourceWidth:width];
  [v19 setSourceHeight:height];
  [v19 setManual:0];
  [v19 setAlgorithmVersion:version];
  if ([labelCopy isEqualToString:*MEMORY[0x1E6984898]])
  {
    v20 = 3;
  }

  else
  {
    if (![labelCopy isEqualToString:*MEMORY[0x1E6984890]])
    {
      if (MediaAnalysisLogLevel() < 4 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_19;
      }

      LOWORD(v46) = 0;
      v41 = MEMORY[0x1E69E9C10];
      v42 = "[PhotosFace] Label must be either dog or cat. Ignoring";
      v43 = OS_LOG_TYPE_DEFAULT;
      v44 = 2;
      goto LABEL_18;
    }

    v20 = 4;
  }

  [v19 setDetectionType:v20];
  if (bodyObservationCopy)
  {
    [bodyObservationCopy boundingBox];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [v19 setBodyWidth:v25];
    [v19 setBodyHeight:v28];
    v56.origin.x = v22;
    v56.origin.y = v24;
    v56.size.width = v26;
    v56.size.height = v28;
    [v19 setBodyCenterX:CGRectGetMidX(v56)];
    v57.origin.x = v22;
    v57.origin.y = v24;
    v57.size.width = v26;
    v57.size.height = v28;
    [v19 setBodyCenterY:CGRectGetMidY(v57)];
    v29 = [self _animalImageprintWrapperFromObservation:bodyObservationCopy visionRequests:requestsCopy processingVersion:version];
    [v19 setImageprintWrapper:v29];

    [v19 setVuObservationID:0];
  }

  if (!observationCopy)
  {
    goto LABEL_11;
  }

  [observationCopy boundingBox];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  if ([v19 setCenterAndSizeFromNormalizedFaceRect:?])
  {
    imageprintWrapper = [v19 imageprintWrapper];

    if (!imageprintWrapper)
    {
      v39 = [self _animalImageprintWrapperFromObservation:observationCopy visionRequests:requestsCopy processingVersion:version];
      [v19 setImageprintWrapper:v39];

      [v19 setVuObservationID:0];
    }

LABEL_11:
    v40 = v19;
    goto LABEL_20;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v46 = 134218752;
    v47 = v31;
    v48 = 2048;
    v49 = v33;
    v50 = 2048;
    v51 = v35;
    v52 = 2048;
    v53 = v37;
    v41 = MEMORY[0x1E69E9C10];
    v42 = "[PhotosFace] Unable to determine normalized bounding box { { %f, %f } { %f, %f } }";
    v43 = OS_LOG_TYPE_ERROR;
    v44 = 42;
LABEL_18:
    _os_log_impl(&dword_1C9B70000, v41, v43, v42, &v46, v44);
  }

LABEL_19:
  v40 = 0;
LABEL_20:

  return v40;
}

+ (id)_animalHeadsBodiesFromAnimalHeadObservations:(id)observations animalBodyObservations:(id)bodyObservations matchedHead:(void *)head matchedBody:(void *)body sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests processingVersion:(int)self0
{
  v64 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  bodyObservationsCopy = bodyObservations;
  requestsCopy = requests;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0;
  bodyCopy = body;
  v15 = body + 8;
  v16 = MEMORY[0x1E69E9C10];
LABEL_2:
  v57 = v14;
  if (v14 < [observationsCopy count])
  {
    for (i = 0; ; i = v56 + 1)
    {
      v56 = i;
      if (i >= [bodyObservationsCopy count])
      {
LABEL_30:
        v14 = v57 + 1;
        goto LABEL_2;
      }

      v18 = *v15;
      if (!*v15)
      {
        goto LABEL_13;
      }

      v19 = v15;
      do
      {
        v20 = v18[4];
        v21 = v20 >= v56;
        v22 = v20 < v56;
        if (v21)
        {
          v19 = v18;
        }

        v18 = v18[v22];
      }

      while (v18);
      if (v19 == v15 || v56 < v19[4])
      {
LABEL_13:
        identifier = [observationsCopy objectAtIndexedSubscript:v57];
        groupId = [identifier groupId];
        if (!groupId)
        {
          goto LABEL_22;
        }

        v25 = [bodyObservationsCopy objectAtIndexedSubscript:v56];
        groupId2 = [v25 groupId];
        v27 = groupId2 == 0;

        if (!v27)
        {
          v28 = [observationsCopy objectAtIndexedSubscript:v57];
          groupId3 = [v28 groupId];
          v30 = [bodyObservationsCopy objectAtIndexedSubscript:v56];
          groupId4 = [v30 groupId];
          v32 = [groupId3 isEqual:groupId4];

          if (v32)
          {
            break;
          }
        }
      }

LABEL_23:
      ;
    }

    v33 = [observationsCopy objectAtIndexedSubscript:v57];
    labels = [v33 labels];
    firstObject = [labels firstObject];
    identifier = [firstObject identifier];

    v36 = [bodyObservationsCopy objectAtIndexedSubscript:v56];
    labels2 = [v36 labels];
    firstObject2 = [labels2 firstObject];
    identifier2 = [firstObject2 identifier];

    if ([identifier containsString:identifier2] & 1) != 0 || (objc_msgSend(identifier2, "containsString:", identifier))
    {
      v40 = [observationsCopy objectAtIndexedSubscript:v57];
      v41 = [bodyObservationsCopy objectAtIndexedSubscript:v56];
      LODWORD(v48) = version;
      v42 = [self faceFromAnimalHeadObservation:v40 animalBodyObservation:v41 animalLabel:identifier2 sourceWidth:width sourceHeight:height visionRequests:requestsCopy processingVersion:v48];

      if (v42)
      {
        imageprintWrapper = [v42 imageprintWrapper];
        v44 = imageprintWrapper == 0;

        if (!v44)
        {
          std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(head, &v57);
          std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(bodyCopy, &v56);
          [array addObject:v42];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            v45 = [observationsCopy objectAtIndexedSubscript:v57];
            v46 = [bodyObservationsCopy objectAtIndexedSubscript:v56];
            *buf = 138412802;
            v59 = v42;
            v60 = 2112;
            v61 = v45;
            v62 = 2112;
            v63 = v46;
            _os_log_impl(&dword_1C9B70000, v16, OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate VCPPhotosFace %@ from %@ and %@", buf, 0x20u);
          }
        }
      }

      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(head, &v57);
      std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(bodyCopy, &v56);

      goto LABEL_30;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v59 = identifier;
      v60 = 2112;
      v61 = identifier2;
      _os_log_impl(&dword_1C9B70000, v16, OS_LOG_TYPE_DEBUG, "[PhotosFace] headLabel (%@) and bodyLabel (%@) do not match", buf, 0x16u);
    }

LABEL_22:
    goto LABEL_23;
  }

  return array;
}

+ (id)_animalBodiesOnlyFromAnimalBodyObservations:(id)observations matchedBody:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(int)height visionRequests:processingVersion:
{
  v39 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  v34 = a7;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0;
  p_var1 = &a4->var0.var1;
  while (v14 < [observationsCopy count])
  {
    var0 = p_var1->var0;
    if (!p_var1->var0)
    {
      goto LABEL_11;
    }

    v17 = p_var1;
    do
    {
      v18 = *(var0 + 4);
      v19 = v18 >= v14;
      v20 = v18 < v14;
      if (v19)
      {
        v17 = var0;
      }

      var0 = *(var0 + v20);
    }

    while (var0);
    if (v17 == p_var1 || v14 < v17[4].var0)
    {
LABEL_11:
      v21 = [observationsCopy objectAtIndexedSubscript:v14];
      labels = [v21 labels];
      firstObject = [labels firstObject];
      identifier = [firstObject identifier];

      v25 = [observationsCopy objectAtIndexedSubscript:v14];
      LODWORD(v31) = height;
      v26 = [self faceFromAnimalHeadObservation:0 animalBodyObservation:v25 animalLabel:identifier sourceWidth:width sourceHeight:a6 visionRequests:v34 processingVersion:v31];

      if (v26)
      {
        imageprintWrapper = [v26 imageprintWrapper];
        v28 = imageprintWrapper == 0;

        if (!v28)
        {
          [array addObject:v26];
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            v29 = [observationsCopy objectAtIndexedSubscript:v14];
            *buf = 138412546;
            v36 = v26;
            v37 = 2112;
            v38 = v29;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate VCPPhotosFace %@ from %@", buf, 0x16u);
          }
        }
      }
    }

    ++v14;
  }

  return array;
}

+ (id)_animalHeadsOnlyFromAnimalHeadObservations:(id)observations matchedHead:(set<unsigned)long sourceWidth:(std:(std:(unint64_t)width :(unint64_t)a6 allocator<unsigned long>> *)a4 :(id)a7 less<unsigned)long> sourceHeight:(int)height visionRequests:processingVersion:
{
  v47 = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  v42 = a7;
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0;
  p_var1 = &a4->var0.var1;
  v14 = *MEMORY[0x1E6984888];
  v38 = *MEMORY[0x1E6984880];
  v37 = *MEMORY[0x1E6984890];
  v15 = *MEMORY[0x1E6984898];
  while (v12 < [observationsCopy count])
  {
    var0 = p_var1->var0;
    if (!p_var1->var0)
    {
      goto LABEL_11;
    }

    v17 = p_var1;
    do
    {
      v18 = *(var0 + 4);
      v19 = v18 >= v12;
      v20 = v18 < v12;
      if (v19)
      {
        v17 = var0;
      }

      var0 = *(var0 + v20);
    }

    while (var0);
    if (v17 == p_var1 || v12 < v17[4].var0)
    {
LABEL_11:
      v21 = [observationsCopy objectAtIndexedSubscript:v12];
      labels = [v21 labels];
      firstObject = [labels firstObject];
      identifier = [firstObject identifier];

      v25 = [identifier isEqualToString:v14];
      v26 = v15;
      if (v25 & 1) != 0 || (v27 = [identifier isEqualToString:v38], v26 = v37, (v27))
      {
        v28 = v26;
        v29 = [observationsCopy objectAtIndexedSubscript:v12];
        LODWORD(v35) = height;
        v30 = [self faceFromAnimalHeadObservation:v29 animalBodyObservation:0 animalLabel:v28 sourceWidth:width sourceHeight:a6 visionRequests:v42 processingVersion:v35];

        if (v30)
        {
          imageprintWrapper = [v30 imageprintWrapper];
          v32 = imageprintWrapper == 0;

          if (!v32)
          {
            [array addObject:v30];
            if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              v33 = [observationsCopy objectAtIndexedSubscript:v12];
              *buf = 138412546;
              v44 = v30;
              v45 = 2112;
              v46 = v33;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] Generate VCPPhotosFace %@ from %@", buf, 0x16u);
            }
          }
        }
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PhotosFace] headLabel is not dog or cat. Ignoring", buf, 2u);
      }
    }

    ++v12;
  }

  return array;
}

+ (id)facesFromFaceObservations:(id)observations humanObservations:(id)humanObservations animalHeadObservations:(id)headObservations animalBodyObservations:(id)bodyObservations sourceWidth:(unint64_t)width sourceHeight:(unint64_t)height visionRequests:(id)requests blurScorePerFace:(id)self0 exposureScorePerFace:(id)self1 tooSmallFaceObservations:(id)self2 processingVersion:(int)self3 animalResults:(id *)self4
{
  v70[4] = *MEMORY[0x1E69E9840];
  observationsCopy = observations;
  humanObservationsCopy = humanObservations;
  headObservationsCopy = headObservations;
  bodyObservationsCopy = bodyObservations;
  selfCopy = self;
  requestsCopy = requests;
  faceCopy = face;
  v68[0] = 0;
  v68[1] = 0;
  v66[1] = 0;
  v67 = v68;
  v65 = v66;
  v66[0] = 0;
  LODWORD(v40) = version;
  perFaceCopy = perFace;
  faceObservationsCopy = faceObservations;
  v49 = faceCopy;
  v54 = observationsCopy;
  v41 = humanObservationsCopy;
  v47 = [selfCopy _peopleFacesTorsosFromFaceObservations:observationsCopy humanObservations:humanObservationsCopy matchedFace:&v67 matchedTorso:&v65 sourceWidth:width sourceHeight:height visionRequests:requestsCopy blurScorePerFace:faceCopy exposureScorePerFace:perFaceCopy tooSmallFaceObservations:faceObservationsCopy processingVersion:v40];
  std::set<unsigned long>::set[abi:ne200100](v64, &v67);
  LODWORD(v39) = version;
  v46 = [selfCopy _peopleFacesOnlyFromFaceObservations:observationsCopy matchedFace:v64 sourceWidth:width sourceHeight:height visionRequests:requestsCopy blurScorePerFace:faceCopy exposureScorePerFace:perFaceCopy tooSmallFaceObservations:faceObservationsCopy processingVersion:v39];
  std::__tree<unsigned long>::destroy(v64, v64[1]);
  std::set<unsigned long>::set[abi:ne200100](v63, &v65);
  v45 = [selfCopy _peopleTorsosOnlyFromHumanObservations:humanObservationsCopy matchedTorso:v63 sourceWidth:width sourceHeight:height visionRequests:requestsCopy processingVersion:version];
  std::__tree<unsigned long>::destroy(v63, v63[1]);
  v42 = [selfCopy _filterAnimalObservations:headObservationsCopy colocatingWithFaceObservations:observationsCopy orHumanObservations:humanObservationsCopy];
  v48 = [selfCopy _filterAnimalObservations:bodyObservationsCopy colocatingWithFaceObservations:observationsCopy orHumanObservations:humanObservationsCopy];
  v24 = [MEMORY[0x1E695DF70] arrayWithArray:headObservationsCopy];
  v25 = [MEMORY[0x1E695DF70] arrayWithArray:bodyObservationsCopy];
  v52 = requestsCopy;
  [v24 removeObjectsAtIndexes:v42];
  [v25 removeObjectsAtIndexes:v48];
  v61 = 0;
  v62 = 0;
  v59[1] = 0;
  v60 = &v61;
  v58 = v59;
  v59[0] = 0;
  LODWORD(v38) = version;
  v37 = requestsCopy;
  v26 = selfCopy;
  v27 = [selfCopy _animalHeadsBodiesFromAnimalHeadObservations:v24 animalBodyObservations:v25 matchedHead:&v60 matchedBody:&v58 sourceWidth:width sourceHeight:height visionRequests:v37 processingVersion:v38];
  std::set<unsigned long>::set[abi:ne200100](v57, &v60);
  v44 = [v26 _animalHeadsOnlyFromAnimalHeadObservations:v24 matchedHead:v57 sourceWidth:width sourceHeight:height visionRequests:v52 processingVersion:version];
  std::__tree<unsigned long>::destroy(v57, v57[1]);
  std::set<unsigned long>::set[abi:ne200100](v56, &v58);
  v28 = [v26 _animalBodiesOnlyFromAnimalBodyObservations:v25 matchedBody:v56 sourceWidth:width sourceHeight:height visionRequests:v52 processingVersion:version];
  std::__tree<unsigned long>::destroy(v56, v56[1]);
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:v47];
  [array addObjectsFromArray:v46];
  [array addObjectsFromArray:v45];
  [array addObjectsFromArray:v27];
  [array addObjectsFromArray:v44];
  [array addObjectsFromArray:v28];
  v69[0] = @"NumberOfPetsGenerated";
  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count") + objc_msgSend(v28, "count")}];
  v70[0] = v30;
  v69[1] = @"NumberOfPetsGeneratedWithHeadOnly";
  v31 = MEMORY[0x1E696AD98];
  v32 = [headObservationsCopy count];
  v33 = [v31 numberWithUnsignedLong:v32 - v62];
  v70[1] = v33;
  v69[2] = @"NumberOfPetsGeneratedWithBodyOnly";
  v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v28, "count")}];
  v70[2] = v34;
  v69[3] = @"NumberOfPetsGeneratedWithHeadAndBody";
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
  v70[3] = v35;
  *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:4];

  std::__tree<unsigned long>::destroy(&v58, v59[0]);
  std::__tree<unsigned long>::destroy(&v60, v61);

  std::__tree<unsigned long>::destroy(&v65, v66[0]);
  std::__tree<unsigned long>::destroy(&v67, v68[0]);

  return array;
}

+ (id)faceFromPHFace:(id)face copyOption:(int64_t)option
{
  faceCopy = face;
  v7 = faceCopy;
  if (!faceCopy)
  {
    v9 = 0;
    goto LABEL_12;
  }

  localIdentifier = [faceCopy localIdentifier];
  v9 = [self faceWithLocalIdentifier:localIdentifier];

  switch(option)
  {
    case 0:
      personLocalIdentifier = [v7 personLocalIdentifier];
      [v9 setPersonLocalIdentifier:personLocalIdentifier];

      [v9 setDetectionType:{objc_msgSend(v7, "detectionType")}];
      [v9 setSourceWidth:{objc_msgSend(v7, "sourceWidth")}];
      [v9 setSourceHeight:{objc_msgSend(v7, "sourceHeight")}];
      [v7 centerX];
      [v9 setCenterX:?];
      [v7 centerY];
      [v9 setCenterY:?];
      [v7 size];
      [v9 setSize:?];
      [v7 bodyCenterX];
      [v9 setBodyCenterX:?];
      [v7 bodyCenterY];
      [v9 setBodyCenterY:?];
      [v7 bodyWidth];
      [v9 setBodyWidth:?];
      [v7 bodyHeight];
      [v9 setBodyHeight:?];
      [v9 setHasSmile:{objc_msgSend(v7, "hasSmile")}];
      [v7 blurScore];
      [v9 setBlurScore:?];
      [v9 setIsLeftEyeClosed:{objc_msgSend(v7, "isLeftEyeClosed")}];
      [v9 setIsRightEyeClosed:{objc_msgSend(v7, "isRightEyeClosed")}];
      [v7 poseYaw];
      [v9 setPoseYaw:?];
      [v9 setAlgorithmVersion:{objc_msgSend(v7, "faceAlgorithmVersion")}];
      [v9 setQualityMeasure:{objc_msgSend(v7, "qualityMeasure")}];
      [v7 quality];
      [v9 setQuality:?];
      [v9 setHidden:{objc_msgSend(v7, "isHidden")}];
      [v9 setIsInTrash:{objc_msgSend(v7, "isInTrash")}];
      [v9 setManual:{objc_msgSend(v7, "manual")}];
      adjustmentVersion = [v7 adjustmentVersion];
      [v9 setAdjustmentVersion:adjustmentVersion];

      [v9 setNameSource:{objc_msgSend(v7, "nameSource")}];
      [v9 setTrainingType:{objc_msgSend(v7, "trainingType")}];
      [v9 setVuObservationID:{objc_msgSend(v7, "vuObservationID")}];
      goto LABEL_12;
    case 1:
      [v9 setDetectionType:{objc_msgSend(v7, "detectionType")}];
      [v9 setSourceWidth:{objc_msgSend(v7, "sourceWidth")}];
      [v9 setSourceHeight:{objc_msgSend(v7, "sourceHeight")}];
      [v7 centerX];
      [v9 setCenterX:?];
      [v7 centerY];
      [v9 setCenterY:?];
      [v7 size];
      [v9 setSize:?];
      [v7 bodyCenterX];
      [v9 setBodyCenterX:?];
      [v7 bodyCenterY];
      [v9 setBodyCenterY:?];
      [v7 bodyWidth];
      [v9 setBodyWidth:?];
      [v7 bodyHeight];
      [v9 setBodyHeight:?];
      [v9 setHasSmile:{objc_msgSend(v7, "hasSmile")}];
      [v7 blurScore];
      [v9 setBlurScore:?];
      [v9 setIsLeftEyeClosed:{objc_msgSend(v7, "isLeftEyeClosed")}];
      [v9 setIsRightEyeClosed:{objc_msgSend(v7, "isRightEyeClosed")}];
      [v7 poseYaw];
      [v9 setPoseYaw:?];
      [v9 setAlgorithmVersion:{objc_msgSend(v7, "faceAlgorithmVersion")}];
      [v9 setQualityMeasure:{objc_msgSend(v7, "qualityMeasure")}];
      [v7 quality];
      [v9 setQuality:?];
      [v9 setHidden:{objc_msgSend(v7, "isHidden")}];
      [v9 setIsInTrash:{objc_msgSend(v7, "isInTrash")}];
      [v9 setManual:{objc_msgSend(v7, "manual")}];
      adjustmentVersion2 = [v7 adjustmentVersion];
      [v9 setAdjustmentVersion:adjustmentVersion2];

      break;
    case 2:
      break;
    default:
      goto LABEL_12;
  }

  [v9 setNameSource:{objc_msgSend(v7, "nameSource")}];
  [v9 setTrainingType:{objc_msgSend(v7, "trainingType")}];
  personLocalIdentifier2 = [v7 personLocalIdentifier];
  [v9 setPersonLocalIdentifier:personLocalIdentifier2];

  [v9 setVuObservationID:{objc_msgSend(v7, "vuObservationID")}];
  [v9 setQualityMeasure:{objc_msgSend(v7, "qualityMeasure")}];
  faceClusteringProperties = [v7 faceClusteringProperties];
  faceprint = [faceClusteringProperties faceprint];
  if (faceprint)
  {
    v14 = [v9 detectionType] != 1;
    faceprintVersion = [faceprint faceprintVersion];
    faceprintData = [faceprint faceprintData];
    v17 = [VCPVNImageprintWrapper wrapperWithImageprintType:v14 version:faceprintVersion andData:faceprintData];
    [v9 setImageprintWrapper:v17];
  }

  groupingIdentifier = [faceClusteringProperties groupingIdentifier];
  [v9 setGroupingIdentifier:groupingIdentifier];

LABEL_12:

  return v9;
}

+ (id)facesFromPHFetchResult:(id)result copyOption:(int64_t)option
{
  v18 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  array = [MEMORY[0x1E695DF70] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = resultCopy;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = [objc_opt_class() faceFromPHFace:*(*(&v13 + 1) + 8 * i) copyOption:{option, v13}];
        if (v11)
        {
          [array addObject:v11];
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)replaceCoordinatesAndFeaturesFromDetectedFace:(id)face
{
  faceCopy = face;
  self->_sourceWidth = [faceCopy sourceWidth];
  self->_sourceHeight = [faceCopy sourceHeight];
  self->_detectionType = [faceCopy detectionType];
  [faceCopy centerX];
  self->_centerX = v4;
  [faceCopy centerY];
  self->_centerY = v5;
  [faceCopy size];
  self->_size = v6;
  [faceCopy bodyWidth];
  self->_bodyWidth = v7;
  [faceCopy bodyHeight];
  self->_bodyHeight = v8;
  [faceCopy bodyCenterX];
  self->_bodyCenterX = v9;
  [faceCopy bodyCenterY];
  self->_bodyCenterY = v10;
  self->_hasSmile = [faceCopy hasSmile];
  [faceCopy blurScore];
  self->_blurScore = v11;
  [faceCopy exposureScore];
  self->_exposureScore = v12;
  self->_isLeftEyeClosed = [faceCopy isLeftEyeClosed];
  self->_isRightEyeClosed = [faceCopy isRightEyeClosed];
  [faceCopy poseYaw];
  self->_poseYaw = v13;
  self->_algorithmVersion = [faceCopy algorithmVersion];
  self->_qualityMeasure = [faceCopy qualityMeasure];
  self->_isTooSmall = [faceCopy isTooSmall];
  groupingIdentifier = [faceCopy groupingIdentifier];
  groupingIdentifier = self->_groupingIdentifier;
  self->_groupingIdentifier = groupingIdentifier;

  self->_ageType = [faceCopy ageType];
  self->_sexType = [faceCopy sexType];
  self->_eyesState = [faceCopy eyesState];
  self->_smileType = [faceCopy smileType];
  self->_facialHairType = [faceCopy facialHairType];
  self->_hairColorType = [faceCopy hairColorType];
  self->_glassesType = [faceCopy glassesType];
  self->_expressionType = [faceCopy expressionType];
  self->_headgearType = [faceCopy headgearType];
  self->_hairType = [faceCopy hairType];
  self->_poseType = [faceCopy poseType];
  self->_skintoneType = [faceCopy skintoneType];
  self->_ethnicityType = [faceCopy ethnicityType];
  self->_hasFaceMask = [faceCopy hasFaceMask];
  self->_gazeType = [faceCopy gazeType];
  [faceCopy gazeCenterX];
  self->_gazeCenterX = v16;
  [faceCopy gazeCenterY];
  self->_gazeCenterY = v17;
  [faceCopy gazeRect];
  self->_gazeRect.origin.x = v18;
  self->_gazeRect.origin.y = v19;
  self->_gazeRect.size.width = v20;
  self->_gazeRect.size.height = v21;
  [faceCopy gazeAngle];
  self->_gazeAngle = v22;
  [faceCopy gazeConfidence];
  self->_gazeConfidence = v23;
  [faceCopy roll];
  self->_roll = v24;
  [faceCopy quality];
  self->_quality = v25;
}

- (BOOL)setCenterAndSizeFromNormalizedFaceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  self->_centerX = CGRectGetMidX(rect);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  self->_centerY = CGRectGetMidY(v13);
  sourceWidth = self->_sourceWidth;
  v9 = 0.0;
  if (sourceWidth)
  {
    sourceHeight = self->_sourceHeight;
    if (sourceHeight)
    {
      v11 = width * sourceWidth;
      if (v11 < height * sourceHeight)
      {
        v11 = height * sourceHeight;
      }

      if (sourceWidth <= sourceHeight)
      {
        sourceWidth = self->_sourceHeight;
      }

      v9 = v11 / sourceWidth;
    }
  }

  self->_size = v9;
  return 1;
}

- (CGRect)normalizedFaceRect
{
  size = self->_size;
  v3 = *&self->_sourceWidth;
  sourceHeight = self->_sourceHeight;
  if (size <= 1.0)
  {
    v5 = self->_size;
  }

  else
  {
    v5 = 1.0;
  }

  if (v3.i64[0] > sourceHeight)
  {
    sourceHeight = self->_sourceWidth;
  }

  __asm { FMOV            V1.2D, #-0.5 }

  v11 = vaddq_f64(*&self->_centerX, vmulq_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(size * sourceHeight), 0), vcvtq_f64_s64(v3)), _Q1));
  v12 = vmovn_s64(vcgtzq_f64(v11));
  v13 = v12.i8[4];
  if (v12.i8[0])
  {
    v14 = v11.f64[0];
  }

  else
  {
    v14 = 0.0;
  }

  v15 = v11.f64[1];
  if ((v13 & 1) == 0)
  {
    v15 = 0.0;
  }

  v16 = v5;
  result.size.height = v16;
  result.size.width = v5;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)normalizedBodyRect
{
  sourceWidth = self->_sourceWidth;
  sourceHeight = self->_sourceHeight;
  v4 = self->_bodyWidth * sourceWidth;
  if (v4 < self->_bodyHeight * sourceHeight)
  {
    v4 = self->_bodyHeight * sourceHeight;
  }

  if (sourceWidth <= sourceHeight)
  {
    v5 = self->_sourceHeight;
  }

  else
  {
    v5 = self->_sourceWidth;
  }

  v6 = v4 / v5;
  if (sourceWidth)
  {
    v7 = sourceHeight == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v6 = 0.0;
  }

  v8 = v4 / sourceWidth;
  v9 = v4 / sourceHeight;
  if (v6 > 1.0)
  {
    v6 = 1.0;
  }

  v10 = fmax(self->_bodyCenterX - v8 * 0.5, 0.0);
  v11 = fmax(self->_bodyCenterY - v9 * 0.5, 0.0);
  v12 = v6;
  result.size.height = v12;
  result.size.width = v6;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (id)gist
{
  v3 = MEMORY[0x1E696AEC0];
  localIdentifier = [(VCPPhotosFace *)self localIdentifier];
  if ([(VCPPhotosFace *)self manual])
  {
    v5 = @"-manual";
  }

  else
  {
    v5 = &stru_1F496CB30;
  }

  personLocalIdentifier = [(VCPPhotosFace *)self personLocalIdentifier];
  if ([(VCPPhotosFace *)self detectionType]== 1)
  {
    v7 = @"Human";
  }

  else
  {
    v7 = @"Animal";
  }

  imageprintWrapper = [(VCPPhotosFace *)self imageprintWrapper];
  version = [imageprintWrapper version];
  [(VCPPhotosFace *)self centerX];
  v11 = v10;
  [(VCPPhotosFace *)self centerY];
  v13 = v12;
  [(VCPPhotosFace *)self size];
  v15 = v14;
  [(VCPPhotosFace *)self bodyCenterX];
  v17 = v16;
  [(VCPPhotosFace *)self bodyCenterY];
  v19 = v18;
  [(VCPPhotosFace *)self bodyWidth];
  v21 = v20;
  [(VCPPhotosFace *)self bodyHeight];
  v23 = v22;
  [(VCPPhotosFace *)self quality];
  v25 = [v3 stringWithFormat:@"%@%@ (%@) %@ v%d (%.2f, %.2f, %.2f) (%.2f, %.2f, %.2f, %.2f) quality: %.2f source dimension: %ld*%ld", localIdentifier, v5, personLocalIdentifier, v7, version, v11, v13, v15, v17, v19, v21, v23, v24, -[VCPPhotosFace sourceWidth](self, "sourceWidth"), -[VCPPhotosFace sourceHeight](self, "sourceHeight")];

  return v25;
}

+ (double)_calculateOverlappingBetweenFaceObservation:(id)observation andBodyObservation:(id)bodyObservation
{
  bodyObservationCopy = bodyObservation;
  [observation boundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [bodyObservationCopy boundingBox];
  v22.origin.x = v14;
  v22.origin.y = v15;
  v22.size.width = v16;
  v22.size.height = v17;
  v20.origin.x = v7;
  v20.origin.y = v9;
  v20.size.width = v11;
  v20.size.height = v13;
  v21 = CGRectIntersection(v20, v22);
  v18 = v21.size.width * v21.size.height / (v11 * v13);

  return v18;
}

+ (double)_calculateIoUBetweenObservation:(id)observation andObservation:(id)andObservation
{
  andObservationCopy = andObservation;
  [observation boundingBox];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [andObservationCopy boundingBox];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v26.origin.x = v7;
  v26.origin.y = v9;
  v26.size.width = v11;
  v26.size.height = v13;
  v29.origin.x = v15;
  v29.origin.y = v17;
  v29.size.width = v19;
  v29.size.height = v21;
  v27 = CGRectIntersection(v26, v29);
  height = v27.size.height;
  width = v27.size.width;
  v27.origin.x = v7;
  v27.origin.y = v9;
  v27.size.width = v11;
  v27.size.height = v13;
  v30.origin.x = v15;
  v30.origin.y = v17;
  v30.size.width = v19;
  v30.size.height = v21;
  v28 = CGRectUnion(v27, v30);
  v22 = width * height / (v28.size.width * v28.size.height);

  return v22;
}

+ (BOOL)_isColocatingAnimalObservation:(id)observation withFaceObservations:(id)observations orTorsoObservations:(id)torsoObservations
{
  v43 = *MEMORY[0x1E69E9840];
  observationCopy = observation;
  observationsCopy = observations;
  torsoObservationsCopy = torsoObservations;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v11 = observationsCopy;
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (v12)
  {
    v13 = *v32;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        [self _calculateIoUBetweenObservation:observationCopy andObservation:v15];
        v17 = v16;
        if (v16 > 0.699999988)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            v37 = v17;
            v38 = 2112;
            v39 = observationCopy;
            v40 = 2112;
            v41 = v15;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] IoU %f %@ %@", buf, 0x20u);
          }

          v25 = 1;
          v18 = v11;
          goto LABEL_26;
        }
      }

      v12 = [v11 countByEnumeratingWithState:&v31 objects:v42 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = torsoObservationsCopy;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = *v28;
    while (2)
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        [self _calculateIoUBetweenObservation:observationCopy andObservation:{v22, v27}];
        v24 = v23;
        if (v23 > 0.699999988)
        {
          if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218498;
            v37 = v24;
            v38 = 2112;
            v39 = observationCopy;
            v40 = 2112;
            v41 = v22;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[PhotosFace] IoU %f %@ %@", buf, 0x20u);
          }

          v25 = 1;
          goto LABEL_26;
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0;
LABEL_26:

  return v25;
}

- (int64_t)qualityMeasureWithCountOfFacesOnAsset:(unint64_t)asset
{
  sourceWidth = self->_sourceWidth;
  if (sourceWidth <= self->_sourceHeight)
  {
    sourceWidth = self->_sourceHeight;
  }

  v4 = 0.5;
  if (!self->_isLeftEyeClosed)
  {
    v4 = 2.0;
    if (self->_isRightEyeClosed)
    {
      v4 = 0.5;
    }
  }

  v5 = 0.25;
  if (sourceWidth >= 0x400)
  {
    v5 = 1.0;
    if (sourceWidth <= 0xC00)
    {
      v5 = (sourceWidth * 0.00036621) + -0.125;
    }
  }

  if (asset)
  {
    size = self->_size;
    v7 = size > 0.5 || size < 0.1;
    v8 = (size * 0.5) + 0.75;
    v9 = 0.8;
    if (v7)
    {
      v8 = 0.8;
    }

    if (self->_hasSmile)
    {
      v9 = 1.0;
    }

    v10 = (1.0 - self->_blurScore) * 5.0;
    v11 = v4 * (v9 * (v5 * (v8 * v10)));
    assetCopy = 3;
    if (asset < 3)
    {
      assetCopy = asset;
    }

    v13 = (PFFaceCountPenalties[assetCopy - 1] * v11) * 100.0;
  }

  else
  {
    v13 = 0.0;
  }

  if (v13 < 1.0)
  {
    return 1.0;
  }

  return v13;
}

- (CGRect)gazeRect
{
  x = self->_gazeRect.origin.x;
  y = self->_gazeRect.origin.y;
  width = self->_gazeRect.size.width;
  height = self->_gazeRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

+ (uint64_t)facesFromFaceObservations:(uint64_t)observations humanObservations:(char)humanObservations animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:
{
  v7 = result;
  while (2)
  {
    v8 = (a2 - 8);
    v9 = v7;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v7 = v9;
          v10 = a2 - v9;
          v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v9) >> 3);
          if (v11 > 2)
          {
            switch(v11)
            {
              case 3:
                v129 = *(v9 + 24);
                v130 = *v9;
                v131 = *(a2 - 24);
                if (v129 <= *v9)
                {
                  if (v131 <= v129)
                  {
                    return result;
                  }

                  *(v9 + 24) = v131;
                  *(a2 - 24) = v129;
                  v179 = *(v9 + 32);
                  *(v9 + 32) = *(a2 - 16);
                  *(a2 - 16) = v179;
                  v8 = (v9 + 40);
                  v180 = *(v9 + 40);
                  *(v9 + 40) = *(a2 - 8);
                  *(a2 - 8) = v180;
                  v181 = *(v9 + 24);
                  v182 = *v9;
                  if (v181 <= *v9)
                  {
                    return result;
                  }

                  *v9 = v181;
                  *(v9 + 24) = v182;
                  v183 = *(v9 + 8);
                  *(v9 + 8) = *(v9 + 32);
                  *(v9 + 32) = v183;
                  v132 = (v9 + 16);
                }

                else if (v131 <= v129)
                {
                  *v9 = v129;
                  *(v9 + 24) = v130;
                  v193 = *(v9 + 8);
                  *(v9 + 8) = *(v9 + 32);
                  *(v9 + 32) = v193;
                  v194 = *(a2 - 24);
                  if (v194 <= v130)
                  {
                    return result;
                  }

                  v132 = (v9 + 40);
                  *(v9 + 24) = v194;
                  *(a2 - 24) = v130;
                  *(v9 + 32) = *(a2 - 16);
                  *(a2 - 16) = v193;
                }

                else
                {
                  v132 = (v9 + 16);
                  *v9 = v131;
                  *(a2 - 24) = v130;
                  v133 = *(v9 + 8);
                  *(v9 + 8) = *(a2 - 16);
                  *(a2 - 16) = v133;
                }

                v195 = *v132;
                *v132 = *v8;
                *v8 = v195;
                return result;
              case 4:

                return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[VCPPhotosFace facesFromFaceObservations:humanObservations:animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:]::$_0 &,std::tuple<float,unsigned long,unsigned long> *,0>(v9, v9 + 24, v9 + 48, a2 - 24);
              case 5:
                result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,+[VCPPhotosFace facesFromFaceObservations:humanObservations:animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:]::$_0 &,std::tuple<float,unsigned long,unsigned long> *,0>(v9, v9 + 24, v9 + 48, v9 + 72);
                v112 = *(a2 - 24);
                v113 = *(v9 + 72);
                if (v112 > v113)
                {
                  *(v9 + 72) = v112;
                  *(a2 - 24) = v113;
                  v114 = *(v9 + 80);
                  *(v9 + 80) = *(a2 - 16);
                  *(a2 - 16) = v114;
                  v115 = *(v9 + 88);
                  *(v9 + 88) = *(a2 - 8);
                  *(a2 - 8) = v115;
                  v116 = *(v9 + 72);
                  v117 = *(v9 + 48);
                  if (v116 > v117)
                  {
                    *(v9 + 48) = v116;
                    *(v9 + 72) = v117;
                    v118 = *(v9 + 80);
                    v119 = *(v9 + 88);
                    v120 = *(v9 + 56);
                    *(v9 + 56) = v118;
                    *(v9 + 64) = v119;
                    *(v9 + 80) = v120;
                    v121 = *(v9 + 24);
                    if (v116 > v121)
                    {
                      *(v9 + 24) = v116;
                      *(v9 + 48) = v121;
                      v122 = *(v9 + 32);
                      *(v9 + 32) = v118;
                      *(v9 + 40) = v119;
                      *(v9 + 56) = v122;
                      v123 = *v9;
                      if (v116 > *v9)
                      {
                        *v9 = v116;
                        *(v9 + 24) = v123;
                        v124 = *(v9 + 8);
                        *(v9 + 8) = v118;
                        *(v9 + 16) = v119;
                        *(v9 + 32) = v124;
                      }
                    }
                  }
                }

                return result;
            }
          }

          else
          {
            if (v11 < 2)
            {
              return result;
            }

            if (v11 == 2)
            {
              v125 = *(a2 - 24);
              v126 = *v9;
              if (v125 > *v9)
              {
                *v9 = v125;
                *(a2 - 24) = v126;
                v127 = *(v9 + 8);
                *(v9 + 8) = *(a2 - 16);
                *(a2 - 16) = v127;
                v128 = *(v9 + 16);
                *(v9 + 16) = *(a2 - 8);
                *(a2 - 8) = v128;
              }

              return result;
            }
          }

          if (v10 <= 575)
          {
            v134 = v9 + 24;
            v136 = v9 == a2 || v134 == a2;
            if (humanObservations)
            {
              if (!v136)
              {
                v137 = 0;
                v138 = v9;
                do
                {
                  v139 = v134;
                  v140 = *(v138 + 24);
                  v141 = *v138;
                  if (v140 > *v138)
                  {
                    v142 = *(v138 + 32);
                    v143 = v137;
                    while (1)
                    {
                      v144 = v9 + v143;
                      *(v144 + 24) = v141;
                      v145 = *(v9 + v143 + 16);
                      *(v144 + 32) = *(v9 + v143 + 8);
                      *(v144 + 40) = v145;
                      if (!v143)
                      {
                        break;
                      }

                      v141 = *(v144 - 24);
                      v143 -= 24;
                      if (v140 <= v141)
                      {
                        v146 = v9 + v143 + 24;
                        goto LABEL_138;
                      }
                    }

                    v146 = v9;
LABEL_138:
                    *v146 = v140;
                    *(v146 + 8) = v142;
                  }

                  v134 = v139 + 24;
                  v137 += 24;
                  v138 = v139;
                }

                while (v139 + 24 != a2);
              }
            }

            else if (!v136)
            {
              v184 = v9 + 40;
              do
              {
                v185 = v134;
                v186 = *(v7 + 24);
                v187 = *v7;
                if (v186 > *v7)
                {
                  v188 = *(v7 + 32);
                  v189 = v184;
                  do
                  {
                    v190 = v189;
                    *(v189 - 4) = v187;
                    v191 = *(v189 - 4);
                    v192 = *(v189 - 3);
                    v189 -= 6;
                    *(v190 - 1) = v191;
                    *v190 = v192;
                    v187 = *(v190 - 16);
                  }

                  while (v186 > v187);
                  *(v189 - 4) = v186;
                  *(v189 - 2) = v188;
                }

                v134 = v185 + 24;
                v184 += 24;
                v7 = v185;
              }

              while (v185 + 24 != a2);
            }

            return result;
          }

          if (!observations)
          {
            if (v9 != a2)
            {
              v147 = (v11 - 2) >> 1;
              v148 = v147;
              do
              {
                v149 = v148;
                if (v147 >= v148)
                {
                  v150 = (2 * v148) | 1;
                  v151 = v9 + 24 * v150;
                  if (2 * v149 + 2 < v11 && *v151 > *(v151 + 24))
                  {
                    v151 += 24;
                    v150 = 2 * v149 + 2;
                  }

                  v152 = v9 + 24 * v149;
                  v153 = *v151;
                  v154 = *v152;
                  if (*v151 <= *v152)
                  {
                    v155 = *(v152 + 8);
                    do
                    {
                      v156 = v152;
                      v152 = v151;
                      *v156 = v153;
                      *(v156 + 8) = *(v151 + 8);
                      *(v156 + 16) = *(v151 + 16);
                      if (v147 < v150)
                      {
                        break;
                      }

                      v157 = 2 * v150;
                      v150 = (2 * v150) | 1;
                      v151 = v9 + 24 * v150;
                      v158 = v157 + 2;
                      if (v158 < v11 && *v151 > *(v151 + 24))
                      {
                        v151 += 24;
                        v150 = v158;
                      }

                      v153 = *v151;
                    }

                    while (*v151 <= v154);
                    *v152 = v154;
                    *(v152 + 8) = v155;
                  }
                }

                v148 = v149 - 1;
              }

              while (v149);
              v159 = 0xAAAAAAAAAAAAAAABLL * (v10 >> 3);
              do
              {
                v160 = 0;
                v161 = *v9;
                v162 = *(v9 + 8);
                v163 = *(v9 + 16);
                v164 = v9;
                do
                {
                  v165 = v164;
                  v166 = v164 + 24 * v160;
                  v164 = v166 + 24;
                  v167 = 2 * v160;
                  v160 = (2 * v160) | 1;
                  v168 = v167 + 2;
                  if (v168 < v159)
                  {
                    v170 = *(v166 + 48);
                    v169 = v166 + 48;
                    if (*(v169 - 24) > v170)
                    {
                      v164 = v169;
                      v160 = v168;
                    }
                  }

                  *v165 = *v164;
                  *(v165 + 8) = *(v164 + 8);
                  result = *(v164 + 16);
                  *(v165 + 16) = result;
                }

                while (v160 <= ((v159 - 2) >> 1));
                if (v164 == a2 - 24)
                {
                  *v164 = v161;
                  *(v164 + 8) = v162;
                  *(v164 + 16) = v163;
                }

                else
                {
                  *v164 = *(a2 - 24);
                  *(v164 + 8) = *(a2 - 16);
                  *(v164 + 16) = *(a2 - 8);
                  *(a2 - 24) = v161;
                  *(a2 - 16) = v162;
                  *(a2 - 8) = v163;
                  v171 = v164 - v9 + 24;
                  if (v171 >= 25)
                  {
                    v172 = (-2 - 0x5555555555555555 * (v171 >> 3)) >> 1;
                    v173 = v9 + 24 * v172;
                    v174 = *v173;
                    v175 = *v164;
                    if (*v173 > *v164)
                    {
                      v176 = *(v164 + 8);
                      do
                      {
                        v177 = v164;
                        v164 = v173;
                        *v177 = v174;
                        *(v177 + 8) = *(v173 + 8);
                        *(v177 + 16) = *(v173 + 16);
                        if (!v172)
                        {
                          break;
                        }

                        v172 = (v172 - 1) >> 1;
                        v173 = v9 + 24 * v172;
                        v174 = *v173;
                      }

                      while (*v173 > v175);
                      *v164 = v175;
                      *(v164 + 8) = v176;
                    }
                  }
                }

                a2 -= 24;
              }

              while (v159-- > 2);
            }

            return result;
          }

          v12 = v11 >> 1;
          v13 = v9 + 24 * (v11 >> 1);
          v14 = *(a2 - 24);
          if (v10 >= 0xC01)
          {
            v15 = *v13;
            v16 = *v9;
            if (*v13 <= *v9)
            {
              if (v14 <= v15 || (*v13 = v14, *(a2 - 24) = v15, v23 = *(v13 + 8), *(v13 + 8) = *(a2 - 16), *(a2 - 16) = v23, v24 = (v13 + 16), v25 = *(v13 + 16), *(v13 + 16) = *(a2 - 8), *(a2 - 8) = v25, v26 = *v9, *v13 <= *v9))
              {
LABEL_29:
                v36 = v9 + 24 * v12;
                v38 = *(v36 - 24);
                v37 = v36 - 24;
                v39 = v38;
                v40 = *(v9 + 24);
                v41 = *(a2 - 48);
                if (v38 <= v40)
                {
                  if (v41 <= v39 || (*v37 = v41, *(a2 - 48) = v39, v44 = *(v37 + 8), *(v37 + 8) = *(a2 - 40), *(a2 - 40) = v44, v46 = (v37 + 16), v45 = *(v37 + 16), *(v37 + 16) = *(a2 - 32), *(a2 - 32) = v45, v47 = *(v9 + 24), *v37 <= v47))
                  {
LABEL_42:
                    v56 = v12 + 1;
                    v57 = v9 + 24 * (v12 + 1);
                    v58 = *v57;
                    v59 = *(v9 + 48);
                    v60 = *(a2 - 72);
                    if (*v57 <= v59)
                    {
                      if (v60 > v58)
                      {
                        *v57 = v60;
                        *(a2 - 72) = v58;
                        v63 = *(v57 + 8);
                        *(v57 + 8) = *(a2 - 64);
                        *(a2 - 64) = v63;
                        v65 = (v57 + 16);
                        v64 = *(v57 + 16);
                        *(v57 + 16) = *(a2 - 56);
                        *(a2 - 56) = v64;
                        v58 = *v57;
                        v66 = *(v9 + 48);
                        if (*v57 > v66)
                        {
                          *(v9 + 48) = v58;
                          *v57 = v66;
                          v67 = *(v9 + 56);
                          *(v9 + 56) = *(v57 + 8);
                          *(v57 + 8) = v67;
                          v61 = (v9 + 64);
LABEL_51:
                          v72 = *v61;
                          *v61 = *v65;
                          *v65 = v72;
                          v58 = *v57;
                        }
                      }
                    }

                    else
                    {
                      if (v60 > v58)
                      {
                        v61 = (v9 + 64);
                        *(v9 + 48) = v60;
                        *(a2 - 72) = v59;
                        v62 = *(v9 + 56);
                        *(v9 + 56) = *(a2 - 64);
LABEL_50:
                        *(a2 - 64) = v62;
                        v65 = (a2 - 56);
                        goto LABEL_51;
                      }

                      *(v9 + 48) = v58;
                      *v57 = v59;
                      v68 = *(v9 + 56);
                      *(v9 + 56) = *(v57 + 8);
                      v61 = (v57 + 16);
                      v69 = *(v57 + 16);
                      *(v57 + 8) = v68;
                      v70 = *(v9 + 64);
                      *(v9 + 64) = v69;
                      *(v57 + 16) = v70;
                      v71 = *(a2 - 72);
                      if (v71 > v59)
                      {
                        *v57 = v71;
                        *(a2 - 72) = v59;
                        v62 = *(v57 + 8);
                        *(v57 + 8) = *(a2 - 64);
                        goto LABEL_50;
                      }

                      v58 = v59;
                    }

                    v73 = *v13;
                    v74 = *v37;
                    if (*v13 <= *v37)
                    {
                      if (v58 <= v73)
                      {
LABEL_62:
                        v83 = *v9;
                        *v9 = v73;
                        *v13 = v83;
                        v84 = *(v9 + 8);
                        *(v9 + 8) = *(v13 + 8);
                        *(v13 + 8) = v84;
                        v21 = (v9 + 16);
                        v30 = (v13 + 16);
                        goto LABEL_63;
                      }

                      *v13 = v58;
                      *v57 = v73;
                      v77 = *(v57 + 8);
                      v78 = *(v13 + 8);
                      *(v13 + 8) = v77;
                      *(v57 + 8) = v78;
                      if (v58 <= v74)
                      {
                        v73 = v58;
                        goto LABEL_62;
                      }

                      *v37 = v58;
                      *v13 = v74;
                      v79 = *(v37 + 8);
                      *(v37 + 8) = v77;
                      *(v13 + 8) = v79;
                      v75 = (v37 + 16);
                      v56 = v12;
                    }

                    else if (v58 <= v73)
                    {
                      *v37 = v73;
                      *v13 = v74;
                      v80 = *(v37 + 8);
                      *(v37 + 8) = *(v13 + 8);
                      *(v13 + 8) = v80;
                      if (v58 <= v74)
                      {
LABEL_61:
                        v73 = v74;
                        goto LABEL_62;
                      }

                      v75 = (v13 + 16);
                      *v13 = v58;
                      *v57 = v74;
                      *(v13 + 8) = *(v57 + 8);
                      *(v57 + 8) = v80;
                      v74 = v58;
                    }

                    else
                    {
                      v75 = (v37 + 16);
                      *v37 = v58;
                      *v57 = v74;
                      v76 = *(v37 + 8);
                      *(v37 + 8) = *(v57 + 8);
                      *(v57 + 8) = v76;
                      v74 = v73;
                    }

                    v81 = v9 + 24 * v56;
                    v82 = *v75;
                    *v75 = *(v81 + 16);
                    *(v81 + 16) = v82;
                    goto LABEL_61;
                  }

                  *(v9 + 24) = *v37;
                  *v37 = v47;
                  v48 = *(v9 + 32);
                  *(v9 + 32) = *(v37 + 8);
                  *(v37 + 8) = v48;
                  v42 = (v9 + 40);
                }

                else
                {
                  if (v41 <= v39)
                  {
                    *(v9 + 24) = v39;
                    *v37 = v40;
                    v51 = *(v9 + 32);
                    *(v9 + 32) = *(v37 + 8);
                    v42 = (v37 + 16);
                    v52 = *(v37 + 16);
                    *(v37 + 8) = v51;
                    v53 = *(v9 + 40);
                    *(v9 + 40) = v52;
                    *(v37 + 16) = v53;
                    v54 = *(a2 - 48);
                    if (v54 <= v40)
                    {
                      goto LABEL_42;
                    }

                    *v37 = v54;
                    *(a2 - 48) = v40;
                    v43 = *(v37 + 8);
                    *(v37 + 8) = *(a2 - 40);
                  }

                  else
                  {
                    v42 = (v9 + 40);
                    *(v9 + 24) = v41;
                    *(a2 - 48) = v40;
                    v43 = *(v9 + 32);
                    *(v9 + 32) = *(a2 - 40);
                  }

                  *(a2 - 40) = v43;
                  v46 = (a2 - 32);
                }

                v55 = *v42;
                *v42 = *v46;
                *v46 = v55;
                goto LABEL_42;
              }

              *v9 = *v13;
              *v13 = v26;
              v27 = *(v9 + 8);
              *(v9 + 8) = *(v13 + 8);
              *(v13 + 8) = v27;
              v17 = (v9 + 16);
            }

            else
            {
              if (v14 <= v15)
              {
                *v9 = v15;
                *v13 = v16;
                v33 = *(v9 + 8);
                *(v9 + 8) = *(v13 + 8);
                *(v13 + 8) = v33;
                v34 = *(a2 - 24);
                if (v34 <= v16)
                {
                  goto LABEL_29;
                }

                v17 = (v13 + 16);
                *v13 = v34;
                *(a2 - 24) = v16;
                *(v13 + 8) = *(a2 - 16);
                *(a2 - 16) = v33;
              }

              else
              {
                v17 = (v9 + 16);
                *v9 = v14;
                *(a2 - 24) = v16;
                v18 = *(v9 + 8);
                *(v9 + 8) = *(a2 - 16);
                *(a2 - 16) = v18;
              }

              v24 = (a2 - 8);
            }

            v35 = *v17;
            *v17 = *v24;
            *v24 = v35;
            goto LABEL_29;
          }

          v19 = *v9;
          v20 = *v13;
          if (*v9 <= *v13)
          {
            if (v14 > v19)
            {
              *v9 = v14;
              *(a2 - 24) = v19;
              v28 = *(v9 + 8);
              *(v9 + 8) = *(a2 - 16);
              *(a2 - 16) = v28;
              v30 = (v9 + 16);
              v29 = *(v9 + 16);
              *(v9 + 16) = *(a2 - 8);
              *(a2 - 8) = v29;
              v31 = *v13;
              if (*v9 > *v13)
              {
                *v13 = *v9;
                *v9 = v31;
                v32 = *(v13 + 8);
                *(v13 + 8) = *(v9 + 8);
                *(v9 + 8) = v32;
                v21 = (v13 + 16);
LABEL_63:
                v85 = *v21;
                *v21 = *v30;
                *v30 = v85;
              }
            }
          }

          else
          {
            if (v14 > v19)
            {
              v21 = (v13 + 16);
              *v13 = v14;
              *(a2 - 24) = v20;
              v22 = *(v13 + 8);
              *(v13 + 8) = *(a2 - 16);
              *(a2 - 16) = v22;
LABEL_37:
              v30 = (a2 - 8);
              goto LABEL_63;
            }

            *v13 = v19;
            *v9 = v20;
            v49 = *(v13 + 8);
            *(v13 + 8) = *(v9 + 8);
            *(v9 + 8) = v49;
            v50 = *(a2 - 24);
            if (v50 > v20)
            {
              v21 = (v9 + 16);
              *v9 = v50;
              *(a2 - 24) = v20;
              *(v9 + 8) = *(a2 - 16);
              *(a2 - 16) = v49;
              goto LABEL_37;
            }
          }

          --observations;
          v86 = *v9;
          if ((humanObservations & 1) != 0 || *(v9 - 24) > v86)
          {
            break;
          }

          if (v86 <= *(a2 - 24))
          {
            v102 = v9 + 24;
            do
            {
              v9 = v102;
              if (v102 >= a2)
              {
                break;
              }

              v102 += 24;
            }

            while (v86 <= *v9);
          }

          else
          {
            do
            {
              v101 = *(v9 + 24);
              v9 += 24;
            }

            while (v86 <= v101);
          }

          v103 = a2;
          if (v9 < a2)
          {
            v103 = a2;
            do
            {
              v104 = *(v103 - 24);
              v103 -= 24;
            }

            while (v86 > v104);
          }

          v105 = *(v7 + 8);
          if (v9 < v103)
          {
            v106 = *v9;
            v107 = *v103;
            do
            {
              *v9 = v107;
              *v103 = v106;
              v108 = *(v9 + 8);
              *(v9 + 8) = *(v103 + 8);
              *(v103 + 8) = v108;
              v109 = *(v9 + 16);
              *(v9 + 16) = *(v103 + 16);
              *(v103 + 16) = v109;
              do
              {
                v110 = *(v9 + 24);
                v9 += 24;
                v106 = v110;
              }

              while (v86 <= v110);
              do
              {
                v111 = *(v103 - 24);
                v103 -= 24;
                v107 = v111;
              }

              while (v86 > v111);
            }

            while (v9 < v103);
          }

          if (v9 - 24 != v7)
          {
            *v7 = *(v9 - 24);
            *(v7 + 8) = *(v9 - 16);
            *(v7 + 16) = *(v9 - 8);
          }

          humanObservations = 0;
          *(v9 - 24) = v86;
          *(v9 - 16) = v105;
        }

        v87 = 0;
        v88 = *(v9 + 8);
        do
        {
          v89 = *(v9 + v87 + 24);
          v87 += 24;
        }

        while (v89 > v86);
        v90 = v9 + v87;
        v91 = a2;
        if (v87 == 24)
        {
          v91 = a2;
          do
          {
            if (v90 >= v91)
            {
              break;
            }

            v93 = *(v91 - 6);
            v91 -= 6;
          }

          while (v93 <= v86);
        }

        else
        {
          do
          {
            v92 = *(v91 - 6);
            v91 -= 6;
          }

          while (v92 <= v86);
        }

        if (v90 >= v91)
        {
          v9 += v87;
        }

        else
        {
          v94 = *v91;
          v9 += v87;
          v95 = v91;
          do
          {
            *v9 = v94;
            *v95 = v89;
            v96 = *(v9 + 8);
            *(v9 + 8) = *(v95 + 1);
            *(v95 + 1) = v96;
            v97 = *(v9 + 16);
            *(v9 + 16) = *(v95 + 2);
            *(v95 + 2) = v97;
            do
            {
              v98 = *(v9 + 24);
              v9 += 24;
              v89 = v98;
            }

            while (v98 > v86);
            do
            {
              v99 = *(v95 - 6);
              v95 -= 6;
              v94 = v99;
            }

            while (v99 <= v86);
          }

          while (v9 < v95);
        }

        if (v9 - 24 != v7)
        {
          *v7 = *(v9 - 24);
          *(v7 + 8) = *(v9 - 16);
          *(v7 + 16) = *(v9 - 8);
        }

        *(v9 - 24) = v86;
        *(v9 - 16) = v88;
        if (v90 >= v91)
        {
          break;
        }

LABEL_87:
        result = std::__introsort<std::_ClassicAlgPolicy,+[VCPPhotosFace facesFromFaceObservations:humanObservations:animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:]::$_0 &,std::tuple<float,unsigned long,unsigned long> *,false>(v7, v9 - 24, observations, humanObservations & 1);
        humanObservations = 0;
      }

      v100 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[VCPPhotosFace facesFromFaceObservations:humanObservations:animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:]::$_0 &,std::tuple<float,unsigned long,unsigned long> *>(v7, v9 - 24);
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,+[VCPPhotosFace facesFromFaceObservations:humanObservations:animalObservations:sourceWidth:sourceHeight:visionRequests:blurScorePerFace:exposureScorePerFace:tooSmallFaceObservations:processingVersion:]::$_0 &,std::tuple<float,unsigned long,unsigned long> *>(v9, a2);
      if (result)
      {
        break;
      }

      if (!v100)
      {
        goto LABEL_87;
      }
    }

    a2 = v9 - 24;
    if (!v100)
    {
      continue;
    }

    return result;
  }
}

@end