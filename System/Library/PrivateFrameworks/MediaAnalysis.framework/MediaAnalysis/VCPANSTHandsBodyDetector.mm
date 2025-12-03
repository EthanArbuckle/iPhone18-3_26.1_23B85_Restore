@interface VCPANSTHandsBodyDetector
- (VCPANSTHandsBodyDetector)initWithHandExtendRatio:(float)ratio inputRatio:(float)inputRatio maxNumPersonRegions:(int)regions;
- (int)anstDetection:(__CVBuffer *)detection rotationInDegrees:(id)degrees detectingFullbody:(BOOL)fullbody detectingHands:(BOOL)hands handsRegions:(id)regions personRegions:(id)personRegions cancel:(id)cancel;
- (int)getTopKLargestPersonBoxes:(int)boxes personRegions:(id)regions;
- (int)updateHandBoxes:(id)boxes withPersonRegions:(id)regions;
- (void)dealloc;
@end

@implementation VCPANSTHandsBodyDetector

- (VCPANSTHandsBodyDetector)initWithHandExtendRatio:(float)ratio inputRatio:(float)inputRatio maxNumPersonRegions:(int)regions
{
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VCPANSTHandsBodyDetector;
  v8 = [(VCPANSTHandsBodyDetector *)&v24 init];
  if (v8)
  {
    v9 = _os_feature_enabled_impl();
    v8->_useVisionCore = v9;
    if (v9)
    {
      v10 = [[VCPCNNVisionCoreDetector alloc] initWithOptions:0];
      visionCoreDetector = v8->_visionCoreDetector;
      v8->_visionCoreDetector = v10;

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsBodyDetector - using VisionCore as detector", buf, 2u);
      }
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E6985FD8]) initWithVersion:0x10000];
      [v13 setQualityOfService:33];
      [v13 setEnableSegmentation:0];
      [v13 setRunningFrameRate:1];
      v14 = [objc_alloc(MEMORY[0x1E6985FD0]) initWithConfiguration:v13];
      anstAlgorithm = v8->_anstAlgorithm;
      v8->_anstAlgorithm = v14;

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsBodyDetector - using ANSTKit as detector", buf, 2u);
      }
    }

    v16 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
    if (v16)
    {
      v17 = v16;
      ma::Rotator::Rotator(v16, 90);
      v8->_rotator = v17;
      v8->_extendRatio = ratio;
      v8->_inputRatio = inputRatio;
      v8->_maxNumPersonRegions = regions;
      v12 = v8;
      v18 = v8->_anstAlgorithm;
      if (v18)
      {
        v23 = 0;
        v19 = [(ANSTISPAlgorithm *)v18 prepareWithError:&v23];
        v20 = v23;
        if ((v19 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v26 = v20;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPANSTHandsBodyDetector - prepareError = %@", buf, 0xCu);
        }

        v12 = v8;
      }
    }

    else
    {
      v12 = 0;
      v8->_rotator = 0;
      v8->_extendRatio = ratio;
      v8->_inputRatio = inputRatio;
      v8->_maxNumPersonRegions = regions;
    }
  }

  else
  {
    v12 = 0;
  }

  v21 = v12;

  return v21;
}

- (void)dealloc
{
  rotator = self->_rotator;
  if (rotator)
  {
    ma::Rotator::~Rotator(rotator);
    MEMORY[0x1CCA95C50]();
  }

  v4.receiver = self;
  v4.super_class = VCPANSTHandsBodyDetector;
  [(VCPANSTHandsBodyDetector *)&v4 dealloc];
}

- (int)getTopKLargestPersonBoxes:(int)boxes personRegions:(id)regions
{
  regionsCopy = regions;
  [regionsCopy sortUsingComparator:&__block_literal_global_32];
  while ([regionsCopy count] > boxes)
  {
    [regionsCopy removeLastObject];
  }

  return 0;
}

uint64_t __68__VCPANSTHandsBodyDetector_getTopKLargestPersonBoxes_personRegions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  [v6 maxX];
  v32 = v8;
  [v6 minX];
  v10 = v9;
  [v6 maxY];
  v12 = v11;
  [v6 minY];
  v14 = v13;
  [v7 maxX];
  v16 = v15;
  [v7 minX];
  v18 = v17;
  [v7 maxY];
  v20 = v19;
  [v7 minY];
  v22 = v21;
  [v6 flag];
  v24 = v23;
  [v7 flag];
  if (v24 <= v25)
  {
    [v6 flag];
    v28 = v27;
    [v7 flag];
    v30 = -1;
    if (((v32 - v10) * (v12 - v14)) <= ((v16 - v18) * (v20 - v22)))
    {
      v30 = 1;
    }

    if (v28 >= v29)
    {
      v26 = v30;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = -1;
  }

  return v26;
}

- (int)updateHandBoxes:(id)boxes withPersonRegions:(id)regions
{
  v29 = *MEMORY[0x1E69E9840];
  boxesCopy = boxes;
  regionsCopy = regions;
  array = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = regionsCopy;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(obj);
        }

        groupID = [*(*(&v23 + 1) + 8 * i) groupID];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = boxesCopy;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v11)
        {
          v12 = *v20;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v20 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v19 + 1) + 8 * j);
              if ([v14 groupID] == groupID)
              {
                [array addObject:v14];
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v6);
  }

  return 0;
}

- (int)anstDetection:(__CVBuffer *)detection rotationInDegrees:(id)degrees detectingFullbody:(BOOL)fullbody detectingHands:(BOOL)hands handsRegions:(id)regions personRegions:(id)personRegions cancel:(id)cancel
{
  handsCopy = hands;
  fullbodyCopy = fullbody;
  v162 = *MEMORY[0x1E69E9840];
  degreesCopy = degrees;
  regionsCopy = regions;
  personRegionsCopy = personRegions;
  cancelCopy = cancel;
  Width = CVPixelBufferGetWidth(detection);
  Height = CVPixelBufferGetHeight(detection);
  cf = 0;
  if (!cancelCopy || (cancelCopy[2]() & 1) == 0)
  {
    if (Height < Width)
    {
      if (self->_useVisionCore)
      {
        visionCoreDetector = self->_visionCoreDetector;
        v146 = 0;
        v21 = &v146;
        v22 = [(VCPCNNVisionCoreDetector *)visionCoreDetector resultForPixelBuffer:detection orientation:1 Error:&v146];
LABEL_21:
        v17 = v22;
        v27 = *v21;
        if (*&v27 != 0.0)
        {
          v16 = *&v27;
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v151 = v16;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain result: %@", buf, 0xCu);
          }

          v15 = 0.0;
          v129 = 0.0;
LABEL_46:
          v18 = -18;
          goto LABEL_131;
        }

        if (v17)
        {
          if (fullbodyCopy)
          {
            LODWORD(v28) = 1036831949;
            v18 = [(VCPCNNVisionCoreDetector *)self->_visionCoreDetector getBodyRegions:personRegionsCopy fromVisionCorePostProcessingOutput:v17 imageWidth:Width imageHeight:Height extendRatio:Height >= Width portrait_mode:v28];
            if (v18)
            {
LABEL_39:
              v15 = 0.0;
              v129 = 0.0;
              v16 = 0.0;
              goto LABEL_131;
            }
          }

          if (personRegionsCopy)
          {
            [(VCPANSTHandsBodyDetector *)self getTopKLargestPersonBoxes:self->_maxNumPersonRegions personRegions:personRegionsCopy];
          }

          if (handsCopy)
          {
            if (Height >= Width)
            {
              v29 = Width;
            }

            else
            {
              v29 = Height;
            }

            if (Height <= Width)
            {
              v30 = Width;
            }

            else
            {
              v30 = Height;
            }

            *&v28 = self->_extendRatio;
            v18 = [(VCPCNNVisionCoreDetector *)self->_visionCoreDetector getHandsRegions:regionsCopy fromVisionCorePostProcessingOutput:v17 imageWidth:v30 imageHeight:v29 extendRatio:Height >= Width portrait_mode:v28];
            if (v18)
            {
              goto LABEL_39;
            }

            v15 = 0.0;
            if (!regionsCopy || !personRegionsCopy)
            {
              v129 = 0.0;
              v16 = 0.0;
              goto LABEL_131;
            }

            [(VCPANSTHandsBodyDetector *)self updateHandBoxes:regionsCopy withPersonRegions:?];
          }
        }

        v15 = 0.0;
        v129 = 0.0;
        v16 = 0.0;
LABEL_130:
        v18 = 0;
        goto LABEL_131;
      }

      if (degreesCopy && [degreesCopy intValue] != 90 && objc_msgSend(degreesCopy, "intValue") != 270 && objc_msgSend(degreesCopy, "intValue") != 180)
      {
        [degreesCopy intValue];
      }

      anstAlgorithm = self->_anstAlgorithm;
      v145 = 0;
      v24 = &v145;
      [(ANSTISPAlgorithm *)anstAlgorithm resultForPixelBuffer:detection orientation:0 error:&v145];
      *&v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    }

    else
    {
      rotator = self->_rotator;
      if (!rotator)
      {
        goto LABEL_8;
      }

      if (rotator->var3 != 90)
      {
        ma::Rotator::~Rotator(self->_rotator);
        MEMORY[0x1CCA95C50]();
LABEL_8:
        operator new();
      }

      v18 = ma::Rotator::Rotate(rotator, detection, &cf);
      if (v18)
      {
        v15 = 0.0;
        v129 = 0.0;
        v16 = 0.0;
        v17 = 0;
        goto LABEL_131;
      }

      if (self->_useVisionCore)
      {
        v26 = self->_visionCoreDetector;
        v148 = 0;
        v21 = &v148;
        v22 = [(VCPCNNVisionCoreDetector *)v26 resultForPixelBuffer:cf orientation:6 Error:&v148];
        goto LABEL_21;
      }

      v31 = self->_anstAlgorithm;
      v147 = 0;
      v24 = &v147;
      [(ANSTISPAlgorithm *)v31 resultForPixelBuffer:cf orientation:4 error:&v147];
      *&v25 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    }

    v16 = *&v25;
    v32 = *v24;
    if (*&v32 != 0.0)
    {
      v15 = *&v32;
      v129 = v16;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v151 = v15;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain result: %@", buf, 0xCu);
      }

      v16 = 0.0;
      v17 = 0;
      goto LABEL_46;
    }

    if (v16 == 0.0)
    {
      v15 = 0.0;
      v129 = 0.0;
    }

    else
    {
      v129 = v16;
      if (fullbodyCopy)
      {
        [*&v16 detectedObjectsForCategory:*MEMORY[0x1E6985FC0]];
        v143 = 0u;
        v144 = 0u;
        v141 = 0u;
        obj = v142 = 0u;
        v33 = [obj countByEnumeratingWithState:&v141 objects:v161 count:16];
        if (v33)
        {
          v34 = Height;
          v35 = Width;
          v36 = *v142;
          do
          {
            for (i = 0; i != v33; ++i)
            {
              if (*v142 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v38 = *(*(&v141 + 1) + 8 * i);
              objectID = [v38 objectID];
              groupID = [v38 groupID];
              [v38 boundingBox];
              v42 = v41;
              v44 = v43;
              v46 = v45;
              v48 = v47;
              confidence = [v38 confidence];
              v50 = v46;
              v51 = v48;
              if (Height >= Width)
              {
                v52 = v42;
                v53 = (v34 - v52) - v50;
              }

              else
              {
                v53 = v44;
              }

              if (Height >= Width)
              {
                v54 = v44;
              }

              else
              {
                v54 = v42;
              }

              if (Height >= Width)
              {
                v55 = v50;
              }

              else
              {
                v55 = v48;
              }

              if (Height >= Width)
              {
                v56 = v51;
              }

              else
              {
                v56 = v50;
              }

              v57 = [VCPBoundingBox alloc];
              *&v60 = v53 + (v55 * 0.5);
              *&v61 = (v55 * 0.5) * 1.1;
              *&v62 = *&v60 + *&v61;
              if ((*&v60 + *&v61) > v34)
              {
                *&v62 = Height;
              }

              v63 = *&v60 - *&v61;
              v64 = 0.0;
              if (v63 >= 0.0)
              {
                *&v58 = v63;
              }

              else
              {
                *&v58 = 0.0;
              }

              v65 = v54 + (v56 * 0.5);
              v66 = (v56 * 0.5) * 1.1;
              *&v59 = v65 + v66;
              if ((v65 + v66) > v35)
              {
                *&v59 = Width;
              }

              v67 = v65 - v66;
              if (v67 >= 0.0)
              {
                v64 = v67;
              }

              *&v60 = *&v58 / v34;
              *&v61 = v64 / v35;
              *&v58 = (*&v62 - *&v58) / v34;
              *&v62 = (*&v59 - v64) / v35;
              *&v59 = confidence;
              v68 = [(VCPBoundingBox *)v57 initWithXYAndSize:v61 y:v60 width:v62 height:v58 confidence:v59];
              [(VCPBoundingBox *)v68 setTrackID:objectID];
              [(VCPBoundingBox *)v68 setGroupID:groupID];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                [(VCPBoundingBox *)v68 minX];
                v70 = v69;
                [(VCPBoundingBox *)v68 minY];
                v72 = v71;
                [(VCPBoundingBox *)v68 maxX];
                v74 = v73;
                [(VCPBoundingBox *)v68 maxY];
                *buf = 134219264;
                v151 = v70;
                v152 = 2048;
                v153 = v72;
                v154 = 2048;
                v155 = v74;
                v156 = 2048;
                v157 = v75;
                v158 = 2048;
                *v159 = objectID;
                *&v159[8] = 2048;
                *&v159[10] = groupID;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsBodyDetector: person fullbody box (xyxy) = [%f, %f, %f, %f], trackingID = %lu, groupID = %lu", buf, 0x3Eu);
              }

              [personRegionsCopy addObject:v68];
            }

            v33 = [obj countByEnumeratingWithState:&v141 objects:v161 count:16];
          }

          while (v33);
        }

        if (personRegionsCopy)
        {
          [(VCPANSTHandsBodyDetector *)self getTopKLargestPersonBoxes:self->_maxNumPersonRegions personRegions:?];
        }
      }

      if (handsCopy)
      {
        v76 = [*&v16 detectedObjectsForCategory:*MEMORY[0x1E6985FC8]];
        if (Height >= Width)
        {
          v77 = Width;
        }

        else
        {
          v77 = Height;
        }

        v139 = 0u;
        v140 = 0u;
        if (Height <= Width)
        {
          v78 = Width;
        }

        else
        {
          v78 = Height;
        }

        v137 = 0uLL;
        v138 = 0uLL;
        obja = v76;
        v79 = [obja countByEnumeratingWithState:&v137 objects:v160 count:16];
        if (v79)
        {
          v80 = v78;
          v81 = v77;
          v82 = *v138;
          do
          {
            for (j = 0; j != v79; ++j)
            {
              if (*v138 != v82)
              {
                objc_enumerationMutation(obja);
              }

              v84 = *(*(&v137 + 1) + 8 * j);
              objectID2 = [v84 objectID];
              groupID2 = [v84 groupID];
              [v84 boundingBox];
              v88 = v87;
              v90 = v89;
              v92 = v91;
              v94 = v93;
              chirality = [v84 chirality];
              if (chirality == 1)
              {
                v96 = 0xFFFFFFFFLL;
              }

              else
              {
                v96 = chirality == 2;
              }

              confidence2 = [v84 confidence];
              v98 = v92 * 0.5;
              v99 = v94 * 0.5;
              v100 = v88 + v98;
              v101 = v90 + v99;
              if (v98 < v99)
              {
                v98 = v94 * 0.5;
              }

              v102 = v98 * (self->_extendRatio + 1.0);
              v103 = v100 - v102;
              if ((v100 - v102) < 0.0)
              {
                v103 = 0.0;
              }

              v104 = v101 - v102;
              if ((v101 - v102) < 0.0)
              {
                v104 = 0.0;
              }

              v105 = v102 + v100;
              if (v105 > v80)
              {
                v105 = v80;
              }

              v106 = v102 + v101;
              v107 = v103 / v80;
              if (v106 > v81)
              {
                v106 = v81;
              }

              v108 = v104 / v81;
              v109 = (v105 - v103) / v80;
              v110 = (v106 - v104) / v81;
              if (Height < Width)
              {
                v112 = (v105 - v103) / v80;
                v109 = v110;
              }

              else
              {
                v111 = (1.0 - v107) - v109;
                v107 = v104 / v81;
                if (v111 >= 0.0)
                {
                  v108 = v111;
                }

                else
                {
                  v108 = 0.0;
                }

                v112 = v110;
              }

              v113 = [VCPBoundingBox alloc];
              *&v114 = confidence2;
              *&v115 = v107;
              *&v116 = v108;
              *&v117 = v112;
              *&v118 = v109;
              v119 = [(VCPBoundingBox *)v113 initWithXYAndSize:v115 y:v116 width:v117 height:v118 confidence:v114];
              [(VCPBoundingBox *)v119 setClassIndex:v96];
              if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
              {
                [(VCPBoundingBox *)v119 minX];
                v121 = v120;
                [(VCPBoundingBox *)v119 minY];
                v123 = v122;
                [(VCPBoundingBox *)v119 maxX];
                v125 = v124;
                [(VCPBoundingBox *)v119 maxY];
                *buf = 134219520;
                v151 = v121;
                v152 = 2048;
                v153 = v123;
                v154 = 2048;
                v155 = v125;
                v156 = 2048;
                v157 = v126;
                v158 = 1024;
                *v159 = v96;
                *&v159[4] = 2048;
                *&v159[6] = objectID2;
                *&v159[14] = 2048;
                *&v159[16] = groupID2;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsBodyDetector: hands box (xyxy, chirality) = [%f, %f, %f, %f, %d] trackingID = %lu, groupID = %lu", buf, 0x44u);
              }

              [(VCPBoundingBox *)v119 setTrackID:objectID2];
              [(VCPBoundingBox *)v119 setGroupID:groupID2];
              [regionsCopy addObject:v119];
            }

            v79 = [obja countByEnumeratingWithState:&v137 objects:v160 count:16];
          }

          while (v79);
        }

        if (regionsCopy && personRegionsCopy)
        {
          [(VCPANSTHandsBodyDetector *)self updateHandBoxes:regionsCopy withPersonRegions:personRegionsCopy];
        }
      }

      v15 = 0.0;
      v16 = 0.0;
    }

    v17 = 0;
    goto LABEL_130;
  }

  v15 = 0.0;
  v129 = 0.0;
  v16 = 0.0;
  v17 = 0;
  v18 = -128;
LABEL_131:

  CF<__CVBuffer *>::~CF(&cf);
  return v18;
}

@end