@interface VCPANSTHandsDetector
+ (id)anstHandsDetectorWithExtendRatio:(float)a3 options:(id)a4;
- (VCPANSTHandsDetector)initWithExtendRatio:(float)a3 options:(id)a4;
- (int)handsDetection:(__CVBuffer *)a3 rotationInDegrees:(id)a4 handsRegions:(id)a5 cancel:(id)a6;
- (void)dealloc;
@end

@implementation VCPANSTHandsDetector

- (VCPANSTHandsDetector)initWithExtendRatio:(float)a3 options:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v23.receiver = self;
  v23.super_class = VCPANSTHandsDetector;
  v7 = [(VCPANSTHandsDetector *)&v23 init];
  if (v7)
  {
    v8 = _os_feature_enabled_impl();
    v7->_useVisionCore = v8;
    if (v8)
    {
      v9 = [[VCPCNNVisionCoreDetector alloc] initWithOptions:v6];
      visionCoreDetector = v7->_visionCoreDetector;
      v7->_visionCoreDetector = v9;

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsDetector - using VisionCore as detector", buf, 2u);
      }
    }

    else
    {
      v12 = [objc_alloc(MEMORY[0x1E6985FD8]) initWithVersion:0x10000];
      [v12 setQualityOfService:33];
      [v12 setEnableSegmentation:0];
      [v12 setRunningFrameRate:1];
      v13 = [objc_alloc(MEMORY[0x1E6985FD0]) initWithConfiguration:v12];
      anstAlgorithm = v7->_anstAlgorithm;
      v7->_anstAlgorithm = v13;

      if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsDetector - using ANSTKit as detector", buf, 2u);
      }
    }

    v15 = operator new(0x20uLL, MEMORY[0x1E69E5398]);
    if (v15)
    {
      v16 = v15;
      ma::Rotator::Rotator(v15, 90);
      v7->_rotator = v16;
      v7->_extendRatio = a3;
      v11 = v7;
      v17 = v7->_anstAlgorithm;
      if (v17)
      {
        v22 = 0;
        v18 = [(ANSTISPAlgorithm *)v17 prepareWithError:&v22];
        v19 = v22;
        if ((v18 & 1) == 0 && MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v19;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VCPANSTHandsDetector - prepareError = %@", buf, 0xCu);
        }

        v11 = v7;
      }
    }

    else
    {
      v11 = 0;
      v7->_rotator = 0;
      v7->_extendRatio = a3;
    }
  }

  else
  {
    v11 = 0;
  }

  v20 = v11;

  return v20;
}

+ (id)anstHandsDetectorWithExtendRatio:(float)a3 options:(id)a4
{
  v5 = a4;
  v6 = [VCPANSTHandsDetector alloc];
  *&v7 = a3;
  v8 = [(VCPANSTHandsDetector *)v6 initWithExtendRatio:v5 options:v7];

  return v8;
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
  v4.super_class = VCPANSTHandsDetector;
  [(VCPANSTHandsDetector *)&v4 dealloc];
}

- (int)handsDetection:(__CVBuffer *)a3 rotationInDegrees:(id)a4 handsRegions:(id)a5 cancel:(id)a6
{
  v107 = *MEMORY[0x1E69E9840];
  v77 = a4;
  v80 = a5;
  v78 = a6;
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    extendRatio = self->_extendRatio;
    *buf = 134217984;
    v93 = extendRatio;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "VCPANSTHandsDetector: extend ratio for ANST hand detection = %f", buf, 0xCu);
  }

  cf = 0;
  if (v78 && (v78[2]() & 1) != 0)
  {
    v11 = 0.0;
    v76 = 0;
    v12 = 0;
    v13 = -128;
    goto LABEL_45;
  }

  if (Height < Width)
  {
    if (!self->_useVisionCore)
    {
      if (v77)
      {
        if ([v77 intValue] == 90)
        {
          v16 = 3;
        }

        else if ([v77 intValue] == 270)
        {
          v16 = 4;
        }

        else if ([v77 intValue] == 180)
        {
          v16 = 2;
        }

        else
        {
          v16 = [v77 intValue] == 0;
        }
      }

      else
      {
        v16 = 1;
      }

      anstAlgorithm = self->_anstAlgorithm;
      v87 = 0;
      v18 = &v87;
      v76 = [(ANSTISPAlgorithm *)anstAlgorithm resultForPixelBuffer:a3 orientation:v16 error:&v87];
      v12 = 0;
      goto LABEL_39;
    }

    if (v77)
    {
      if ([v77 intValue] == 90)
      {
        v15 = 8;
LABEL_36:
        visionCoreDetector = self->_visionCoreDetector;
        v88 = 0;
        v18 = &v88;
        v12 = [(VCPCNNVisionCoreDetector *)visionCoreDetector resultForPixelBuffer:a3 orientation:v15 Error:&v88];
        v76 = 0;
LABEL_39:
        v20 = Height;
        v21 = Width;
        goto LABEL_40;
      }

      if ([v77 intValue] == 270)
      {
        v15 = 6;
        goto LABEL_36;
      }

      if ([v77 intValue] == 180)
      {
        v15 = 3;
        goto LABEL_36;
      }

      [v77 intValue];
    }

    v15 = 1;
    goto LABEL_36;
  }

  rotator = self->_rotator;
  if (!rotator)
  {
    goto LABEL_11;
  }

  if (rotator->var3 != 90)
  {
    ma::Rotator::~Rotator(self->_rotator);
    MEMORY[0x1CCA95C50]();
LABEL_11:
    operator new();
  }

  v13 = ma::Rotator::Rotate(rotator, a3, &cf);
  if (v13)
  {
    v11 = 0.0;
    v76 = 0;
    v12 = 0;
    goto LABEL_45;
  }

  if (self->_useVisionCore)
  {
    v17 = self->_visionCoreDetector;
    v90 = 0;
    v18 = &v90;
    v12 = [(VCPCNNVisionCoreDetector *)v17 resultForPixelBuffer:cf orientation:6 Error:&v90];
    v76 = 0;
  }

  else
  {
    v19 = self->_anstAlgorithm;
    v89 = 0;
    v18 = &v89;
    v76 = [(ANSTISPAlgorithm *)v19 resultForPixelBuffer:cf orientation:4 error:&v89];
    v12 = 0;
  }

  v20 = Width;
  v21 = Height;
LABEL_40:
  v24 = v21;
  v25 = *v18;
  if (v25)
  {
    v11 = *&v25;
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v93 = v11;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to obtain result: %@", buf, 0xCu);
    }

    v13 = -18;
  }

  else if (v12)
  {
    *&v26 = self->_extendRatio;
    v13 = [(VCPCNNVisionCoreDetector *)self->_visionCoreDetector getHandsRegions:v80 fromVisionCorePostProcessingOutput:v12 imageWidth:v24 imageHeight:v20 extendRatio:Height >= Width portrait_mode:v26];
    if (v13)
    {
      goto LABEL_46;
    }

    v11 = 0.0;
  }

  else
  {
    v12 = v76;
    if (v76)
    {
      [v76 detectedObjectsForCategory:*MEMORY[0x1E6985FC8]];
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      obj = v84 = 0u;
      v28 = [obj countByEnumeratingWithState:&v83 objects:v106 count:16];
      if (v28)
      {
        v29 = v24;
        v30 = v20;
        v31 = *v84;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v84 != v31)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v83 + 1) + 8 * i);
            v34 = [v33 objectID];
            v35 = [v33 groupID];
            [v33 boundingBox];
            v37 = v36;
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v44 = [v33 chirality];
            if (v44 == 1)
            {
              v45 = 0xFFFFFFFFLL;
            }

            else
            {
              v45 = v44 == 2;
            }

            v46 = [v33 confidence];
            v47 = v41 * 0.5;
            v48 = v43 * 0.5;
            v49 = v37 + v47;
            v50 = v39 + v48;
            if (v47 < v48)
            {
              v47 = v43 * 0.5;
            }

            v51 = v47 * (self->_extendRatio + 1.0);
            v52 = v49 - v51;
            if ((v49 - v51) < 0.0)
            {
              v52 = 0.0;
            }

            v53 = v50 - v51;
            if ((v50 - v51) < 0.0)
            {
              v53 = 0.0;
            }

            v54 = v51 + v49;
            if (v54 > v29)
            {
              v54 = v29;
            }

            v55 = v51 + v50;
            v56 = v52 / v29;
            if (v55 > v30)
            {
              v55 = v30;
            }

            v57 = v53 / v30;
            v58 = (v54 - v52) / v29;
            v59 = (v55 - v53) / v30;
            if (Height < Width)
            {
              v61 = (v54 - v52) / v29;
              v58 = v59;
            }

            else
            {
              v60 = (1.0 - v56) - v58;
              v56 = v53 / v30;
              if (v60 >= 0.0)
              {
                v57 = v60;
              }

              else
              {
                v57 = 0.0;
              }

              v61 = v59;
            }

            v62 = [VCPBoundingBox alloc];
            *&v63 = v46;
            *&v64 = v56;
            *&v65 = v57;
            *&v66 = v61;
            *&v67 = v58;
            v68 = [(VCPBoundingBox *)v62 initWithXYAndSize:v64 y:v65 width:v66 height:v67 confidence:v63];
            [(VCPBoundingBox *)v68 setClassIndex:v45];
            if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
            {
              [(VCPBoundingBox *)v68 minX];
              v70 = v69;
              [(VCPBoundingBox *)v68 minY];
              v72 = v71;
              [(VCPBoundingBox *)v68 maxX];
              v74 = v73;
              [(VCPBoundingBox *)v68 maxY];
              *buf = 134219520;
              v93 = v70;
              v94 = 2048;
              v95 = v72;
              v96 = 2048;
              v97 = v74;
              v98 = 2048;
              v99 = v75;
              v100 = 1024;
              v101 = v45;
              v102 = 2048;
              v103 = v34;
              v104 = 2048;
              v105 = v35;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "VCPANSTHandsDetector: box (xyxy, chirality) = [%f, %f, %f, %f, %d] trackingID = %lu, groupID = %lu", buf, 0x44u);
            }

            [(VCPBoundingBox *)v68 setTrackID:v34];
            [(VCPBoundingBox *)v68 setGroupID:v35];
            [v80 addObject:v68];
          }

          v28 = [obj countByEnumeratingWithState:&v83 objects:v106 count:16];
        }

        while (v28);
      }

      v11 = 0.0;
      v12 = 0;
    }

    else
    {
      v11 = 0.0;
      v76 = 0;
    }

    v13 = 0;
  }

LABEL_45:

LABEL_46:
  CF<__CVBuffer *>::~CF(&cf);

  return v13;
}

@end