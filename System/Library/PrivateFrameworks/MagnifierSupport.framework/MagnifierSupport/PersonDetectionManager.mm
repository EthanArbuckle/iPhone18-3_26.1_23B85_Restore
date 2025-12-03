@interface PersonDetectionManager
- (BOOL)isInCenterRectFromRow:(unint64_t)row column:(unint64_t)column width:(unint64_t)width height:(unint64_t)height;
- (BOOL)isIntersectingWithCenter:(id)center width:(unint64_t)width height:(unint64_t)height;
- (CGPoint)project3dPoint:(CGSize)point viewSize:(int64_t)size interfaceOrientation:;
- (CGSize)centerDetectionSize;
- (PersonDetectionManager)initWithCenterDetectionSize:(CGSize)size labellingTolerance:(float)tolerance significantAreaThresholdMM:(float)m closeDetectionFactor:(float)factor;
- (double)unprojectPoint:(double)point atDepth:(double)depth viewSize:(double)size interfaceOrientation:(double)orientation;
- (float)areaFactorForDepth:(float)depth camera:(id)camera orientation:(int64_t)orientation;
- (id)computeLabelIn:(id)in x:(unint64_t)x y:(unint64_t)y depth:(float)depth;
- (id)getDetectedPersonsFromBuffer:(__CVBuffer *)buffer camera:(id)camera interfaceOrientation:(int64_t)orientation;
- (unsigned)findLabel:(unsigned __int16)label inLabels:(id)labels;
- (unsigned)unionLabel:(unsigned __int16)label with:(unsigned __int16)with inLabels:(id)labels;
- (void)computePersonDetectionFromFrame:(id)frame interfaceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)updateLabel:(id)label x:(unint64_t)x y:(unint64_t)y depth:(float)depth;
@end

@implementation PersonDetectionManager

- (PersonDetectionManager)initWithCenterDetectionSize:(CGSize)size labellingTolerance:(float)tolerance significantAreaThresholdMM:(float)m closeDetectionFactor:(float)factor
{
  height = size.height;
  width = size.width;
  v17.receiver = self;
  v17.super_class = PersonDetectionManager;
  v11 = [(PersonDetectionManager *)&v17 init];
  v12 = v11;
  if (v11)
  {
    detectedPersonArray = v11->_detectedPersonArray;
    v11->_detectedPersonArray = MEMORY[0x277CBEBF8];

    arCamera = v12->_arCamera;
    v12->_arCamera = 0;

    v12->_isCenterDetectionEnabled = 0;
    v12->_maxLabel = 0;
    v12->_centerDetectionSize.width = width;
    v12->_centerDetectionSize.height = height;
    v12->_labellingTolerance = tolerance;
    v12->_significantAreaThresholdMM = m;
    v12->_closeDetectionFactor = factor;
    v15 = v12;
  }

  return v12;
}

- (void)dealloc
{
  labelBuffer = self->_labelBuffer;
  if (labelBuffer)
  {
    CVPixelBufferRelease(labelBuffer);
  }

  v4.receiver = self;
  v4.super_class = PersonDetectionManager;
  [(PersonDetectionManager *)&v4 dealloc];
}

- (void)computePersonDetectionFromFrame:(id)frame interfaceOrientation:(int64_t)orientation
{
  frameCopy = frame;
  if (frameCopy)
  {
    if (self->_arCamera)
    {
      camera = [frameCopy camera];
      [camera intrinsics];
      [(ARCamera *)self->_arCamera setIntrinsics:?];

      camera2 = [frameCopy camera];
      [camera2 imageResolution];
      [(ARCamera *)self->_arCamera setImageResolution:?];
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CE5238]);
      camera2 = [frameCopy camera];
      [camera2 intrinsics];
      v20 = v10;
      v21 = v9;
      v19 = v11;
      camera3 = [frameCopy camera];
      [camera3 imageResolution];
      v15 = [v8 initWithIntrinsics:v21 imageResolution:{v20, v19, v13, v14}];
      arCamera = self->_arCamera;
      self->_arCamera = v15;
    }

    v17 = -[PersonDetectionManager getDetectedPersonsFromBuffer:camera:interfaceOrientation:](self, "getDetectedPersonsFromBuffer:camera:interfaceOrientation:", [frameCopy estimatedDepthData], self->_arCamera, orientation);
    detectedPersonArray = self->_detectedPersonArray;
    self->_detectedPersonArray = v17;
  }
}

- (double)unprojectPoint:(double)point atDepth:(double)depth viewSize:(double)size interfaceOrientation:(double)orientation
{
  v6 = *(self + 40);
  if (!v6)
  {
    return 0.0;
  }

  [v6 unprojectPoint:a2 ontoPlaneWithTransform:point orientation:*&_PromotedConst viewportSize:{0.0, -0.0078125, 0.0, size, orientation}];
  return result;
}

- (CGPoint)project3dPoint:(CGSize)point viewSize:(int64_t)size interfaceOrientation:
{
  arCamera = self->_arCamera;
  if (arCamera)
  {
    [(ARCamera *)arCamera projectPoint:size orientation:point.width viewportSize:point.height];
  }

  else
  {
    v5 = *MEMORY[0x277CBF348];
    v6 = *(MEMORY[0x277CBF348] + 8);
  }

  result.y = v6;
  result.x = v5;
  return result;
}

- (id)getDetectedPersonsFromBuffer:(__CVBuffer *)buffer camera:(id)camera interfaceOrientation:(int64_t)orientation
{
  v5 = MEMORY[0x28223BE20](self);
  v84 = v6;
  v8 = v7;
  v9 = v5;
  v94[1] = *MEMORY[0x277D85DE8];
  v81 = v10;
  if (v8)
  {
    CVPixelBufferLockBaseAddress(v8, 0);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v8);
    width = CVPixelBufferGetWidth(v8);
    height = CVPixelBufferGetHeight(v8);
    v93 = *MEMORY[0x277CC4DE8];
    v94[0] = MEMORY[0x277CBEC10];
    pixelBufferAttributes = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v94 forKeys:&v93 count:1];
    v13 = (v9 + 32);
    v12 = *(v9 + 32);
    if (!v12)
    {
      if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, 0x4C303136u, pixelBufferAttributes, (v9 + 32)))
      {
        v18 = 0;
        *v13 = 0;
        goto LABEL_80;
      }

      v12 = *v13;
    }

    CVPixelBufferLockBaseAddress(v12, 0);
    v14 = CVPixelBufferGetBytesPerRow(*v13);
    BaseAddress = CVPixelBufferGetBaseAddress(v8);
    v15 = CVPixelBufferGetBaseAddress(*v13);
    v16 = CVPixelBufferGetWidth(*v13);
    v17 = CVPixelBufferGetHeight(*v13);
    v18 = 0;
    if (v16)
    {
      v19 = v17;
      if (v17)
      {
        if (width && height)
        {
          v79 = v14;
          v74 = BytesPerRow;
          pixelBuffer = v8;
          v86 = objc_opt_new();
          v71 = v19;
          v72 = v16;
          v75 = v15;
          for (i = 0; i != 0xFFFF; ++i)
          {
            v21 = [[BoundingBoxWithLabel alloc] initWithLabel:i];
            [v86 addObject:v21];
          }

          v23 = 0;
          v24 = BaseAddress;
          v25 = v15 - 2;
          v26 = BytesPerRow;
          v27 = v14;
          while (1)
          {
            v28 = 0;
            v29 = BaseAddress + (v23 - 1) * v26;
            if (v23)
            {
              v30 = v29;
            }

            else
            {
              v30 = 0;
            }

            v31 = &v75[(v23 - 1) * v27];
            if (!v23)
            {
              v31 = 0;
            }

            obj = v31;
            v32 = v25;
            v33 = v24;
            do
            {
              *&v22 = *v33;
              if (*v33 == 0.0)
              {
                goto LABEL_48;
              }

              v34 = 0.0;
              v35 = 0.0;
              if (v28)
              {
                v35 = *(v33 - 1);
              }

              if (v30)
              {
                LODWORD(v34) = *&v30[4 * v28];
              }

              v36 = vabds_f32(*&v22, v35);
              v37 = *(v9 + 12);
              *&v34 = vabds_f32(*&v22, *&v34);
              if (v36 < v37 || *&v34 < v37)
              {
                if (v36 >= v37 || *&v34 < v37)
                {
                  if (v36 < v37 || *&v34 >= v37)
                  {
                    if (v28)
                    {
                      v41 = *v32;
                    }

                    else
                    {
                      v41 = 0;
                    }

                    if (obj)
                    {
                      v44 = *&obj[2 * v28];
                    }

                    else
                    {
                      v44 = 0;
                    }

                    alias = [v9 unionLabel:v41 with:v44 inLabels:{v86, v22, v34}];
                    goto LABEL_47;
                  }

                  if (!obj)
                  {
LABEL_41:
                    alias = 0;
                    goto LABEL_47;
                  }

                  alias = *&obj[2 * v28];
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_41;
                  }

                  alias = *v32;
                }
              }

              else
              {
                v42 = [v9 computeLabelIn:v86 x:v28 y:v23 depth:{v22, v34}];
                alias = [v42 alias];
              }

LABEL_47:
              *(v32 + 1) = alias;
              v45 = [v86 objectAtIndexedSubscript:alias];
              *&v46 = *v33;
              [v9 updateLabel:v45 x:v28 y:v23 depth:v46];

LABEL_48:
              ++v28;
              ++v33;
              v32 += 2;
            }

            while (width != v28);
            ++v23;
            v26 = v74;
            v24 = (v24 + v74);
            v27 = v79;
            v25 += v79;
            if (v23 == height)
            {
              bzero(v92, 0x1FFFEuLL);
              v47 = 0;
              v48 = v75;
              do
              {
                v49 = v48;
                v50 = v72;
                do
                {
                  if (*v49)
                  {
                    v51 = [v9 findLabel:? inLabels:?];
                    v52 = v92[v51];
                    if (!v52)
                    {
                      v52 = v92[0] + 1;
                      v92[0] = v52;
                      v92[v51] = v52;
                    }

                    *v49 = v52;
                  }

                  ++v49;
                  --v50;
                }

                while (v50);
                ++v47;
                v48 = (v48 + v79);
              }

              while (v47 != v71);
              CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
              CVPixelBufferUnlockBaseAddress(*(v9 + 32), 0);
              *(v9 + 10) = v92[0];
              v77 = objc_opt_new();
              for (j = 1; j != 0xFFFF; ++j)
              {
                if (v92[j])
                {
                  v54 = [v86 objectAtIndexedSubscript:j];
                  [v77 addObject:v54];
                }
              }

              v80 = objc_opt_new();
              v89 = 0u;
              v90 = 0u;
              v87 = 0u;
              v88 = 0u;
              obja = v77;
              v55 = [obja countByEnumeratingWithState:&v87 objects:v91 count:16];
              if (v55)
              {
                v56 = *v88;
                do
                {
                  for (k = 0; k != v55; ++k)
                  {
                    if (*v88 != v56)
                    {
                      objc_enumerationMutation(obja);
                    }

                    v58 = *(*(&v87 + 1) + 8 * k);
                    if ([v58 computeArea] >= 0x19)
                    {
                      minX = [v58 minX];
                      maxX = [v58 maxX];
                      minY = [v58 minY];
                      maxY = [v58 maxY];
                      v63 = [DetectedPersonData alloc];
                      [v58 depth];
                      LODWORD(v65) = v64;
                      v66 = [(DetectedPersonData *)v63 initWithNormalizedMinX:v81 maxX:v84 minY:minX / width maxY:maxX / width depth:minY / height camera:maxY / height orientation:v65];
                      computeArea = [(DetectedPersonData *)v66 computeArea];
                      [v58 depth];
                      [v9 areaFactorForDepth:*(v9 + 40) camera:v84 orientation:?];
                      if ((v68 * *(v9 + 16)) > computeArea)
                      {
                        [(DetectedPersonData *)v66 setIsEnabled:0];
                      }

                      if (*(v9 + 8) == 1 && ([v9 isIntersectingWithCenter:v66 width:width height:height] & 1) == 0)
                      {
                        [(DetectedPersonData *)v66 setIsEnabled:0];
                      }

                      [v80 addObject:v66];
                    }
                  }

                  v55 = [obja countByEnumeratingWithState:&v87 objects:v91 count:16];
                }

                while (v55);
              }

              [v80 sortUsingComparator:&__block_literal_global_121];
              v18 = [v80 copy];

              break;
            }
          }
        }
      }
    }

LABEL_80:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t __83__PersonDetectionManager_getDetectedPersonsFromBuffer_camera_interfaceOrientation___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isValid] && (objc_msgSend(v4, "isEnabled") & 1) != 0)
  {
    if (![v5 isValid] || !objc_msgSend(v5, "isEnabled"))
    {
      v8 = -1;
      goto LABEL_7;
    }

    [v4 position];
    v12 = v6;
    [v5 position];
    if ((vmovn_s32(vcgtq_s32(v12, v7)).i32[1] & 1) == 0)
    {
      [v4 position];
      v13 = v10;
      [v5 position];
      v8 = (vmovn_s32(vcgtq_s32(v11, v13)).u16[2] << 63) >> 63;
      goto LABEL_7;
    }
  }

  v8 = 1;
LABEL_7:

  return v8;
}

- (unsigned)findLabel:(unsigned __int16)label inLabels:(id)labels
{
  labelsCopy = labels;
  labelCopy = label;
  while (1)
  {
    v7 = [labelsCopy objectAtIndexedSubscript:labelCopy];
    alias = [v7 alias];

    if (alias == labelCopy)
    {
      break;
    }

    v9 = [labelsCopy objectAtIndexedSubscript:labelCopy];
    labelCopy = [v9 alias];
  }

  while (1)
  {
    labelCopy2 = label;
    v13 = [labelsCopy objectAtIndexedSubscript:label];
    alias2 = [v13 alias];

    if (alias2 == labelCopy2)
    {
      break;
    }

    v10 = [labelsCopy objectAtIndexedSubscript:labelCopy2];
    label = [v10 alias];

    v11 = [labelsCopy objectAtIndexedSubscript:labelCopy2];
    [v11 setAlias:labelCopy];
  }

  return labelCopy;
}

- (unsigned)unionLabel:(unsigned __int16)label with:(unsigned __int16)with inLabels:(id)labels
{
  withCopy = with;
  labelCopy = label;
  labelsCopy = labels;
  v9 = [(PersonDetectionManager *)self findLabel:labelCopy inLabels:labelsCopy];
  v10 = [(PersonDetectionManager *)self findLabel:withCopy inLabels:labelsCopy];
  v11 = [labelsCopy objectAtIndexedSubscript:v9];
  v12 = [labelsCopy objectAtIndexedSubscript:v10];
  [v11 setAlias:v10];
  minX = [v11 minX];
  minX2 = [v12 minX];
  if (minX >= minX2)
  {
    v15 = minX2;
  }

  else
  {
    v15 = minX;
  }

  [v12 setMinX:v15];
  maxX = [v11 maxX];
  maxX2 = [v12 maxX];
  if (maxX <= maxX2)
  {
    v18 = maxX2;
  }

  else
  {
    v18 = maxX;
  }

  [v12 setMaxX:v18];
  minY = [v11 minY];
  minY2 = [v12 minY];
  if (minY >= minY2)
  {
    v21 = minY2;
  }

  else
  {
    v21 = minY;
  }

  [v12 setMinY:v21];
  maxY = [v11 maxY];
  maxY2 = [v12 maxY];
  if (maxY <= maxY2)
  {
    v24 = maxY2;
  }

  else
  {
    v24 = maxY;
  }

  [v12 setMaxY:v24];

  return v10;
}

- (id)computeLabelIn:(id)in x:(unint64_t)x y:(unint64_t)y depth:(float)depth
{
  inCopy = in;
  v9 = [inCopy objectAtIndexedSubscript:0];
  [v9 setAlias:{(objc_msgSend(v9, "alias") + 1)}];

  v10 = [inCopy objectAtIndexedSubscript:0];
  v11 = [inCopy objectAtIndexedSubscript:{objc_msgSend(v10, "alias")}];

  v12 = [inCopy objectAtIndexedSubscript:0];
  [v11 setAlias:{objc_msgSend(v12, "alias")}];

  [v11 setMinX:x];
  [v11 setMaxX:x];
  [v11 setMinY:y];
  [v11 setMaxY:y];

  return v11;
}

- (void)updateLabel:(id)label x:(unint64_t)x y:(unint64_t)y depth:(float)depth
{
  labelCopy = label;
  minX = [labelCopy minX];
  if (minX >= x)
  {
    xCopy = x;
  }

  else
  {
    xCopy = minX;
  }

  [labelCopy setMinX:xCopy];
  maxX = [labelCopy maxX];
  if (maxX <= x)
  {
    xCopy2 = x;
  }

  else
  {
    xCopy2 = maxX;
  }

  [labelCopy setMaxX:xCopy2];
  minY = [labelCopy minY];
  if (minY >= y)
  {
    yCopy = y;
  }

  else
  {
    yCopy = minY;
  }

  [labelCopy setMinY:yCopy];
  maxY = [labelCopy maxY];
  if (maxY <= y)
  {
    yCopy2 = y;
  }

  else
  {
    yCopy2 = maxY;
  }

  [labelCopy setMaxY:yCopy2];
  *&v17 = depth;
  [labelCopy setDepth:v17];
}

- (BOOL)isIntersectingWithCenter:(id)center width:(unint64_t)width height:(unint64_t)height
{
  centerCopy = center;
  width = self->_centerDetectionSize.width;
  height = self->_centerDetectionSize.height;
  [centerCopy screenRect];
  v13.size.width = width / width;
  v13.origin.x = v13.size.width * -0.5 + 0.5;
  v13.size.height = height / height;
  v13.origin.y = v13.size.height * -0.5 + 0.5;
  LOBYTE(height) = CGRectIntersectsRect(v12, v13);

  return height;
}

- (BOOL)isInCenterRectFromRow:(unint64_t)row column:(unint64_t)column width:(unint64_t)width height:(unint64_t)height
{
  v6 = column - width / 2;
  if (v6 < 0)
  {
    v6 = width / 2 - column;
  }

  if (v6 > (self->_centerDetectionSize.width * 0.5))
  {
    return 0;
  }

  v8 = row - height / 2;
  if (v8 < 0)
  {
    v8 = height / 2 - row;
  }

  return v8 <= (self->_centerDetectionSize.height * 0.5);
}

- (float)areaFactorForDepth:(float)depth camera:(id)camera orientation:(int64_t)orientation
{
  cameraCopy = camera;
  v9 = [DetectedPersonData alloc];
  *&v10 = depth;
  v11 = [(DetectedPersonData *)v9 initWithNormalizedMinX:cameraCopy maxX:orientation minY:0.0 maxY:1.0 depth:0.0 camera:1.0 orientation:v10];
  computeArea = [(DetectedPersonData *)v11 computeArea];
  closeDetectionFactor = self->_closeDetectionFactor;
  if ((computeArea / (self->_significantAreaThresholdMM * closeDetectionFactor)) <= 1.0)
  {
    v14 = computeArea / (self->_significantAreaThresholdMM * closeDetectionFactor);
  }

  else
  {
    v14 = 1.0;
  }

  return v14;
}

- (CGSize)centerDetectionSize
{
  width = self->_centerDetectionSize.width;
  height = self->_centerDetectionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end