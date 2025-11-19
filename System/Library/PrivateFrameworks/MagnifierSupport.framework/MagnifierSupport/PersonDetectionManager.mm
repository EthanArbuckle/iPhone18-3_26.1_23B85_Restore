@interface PersonDetectionManager
- (BOOL)isInCenterRectFromRow:(unint64_t)a3 column:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6;
- (BOOL)isIntersectingWithCenter:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (CGPoint)project3dPoint:(CGSize)a3 viewSize:(int64_t)a4 interfaceOrientation:;
- (CGSize)centerDetectionSize;
- (PersonDetectionManager)initWithCenterDetectionSize:(CGSize)a3 labellingTolerance:(float)a4 significantAreaThresholdMM:(float)a5 closeDetectionFactor:(float)a6;
- (double)unprojectPoint:(double)a3 atDepth:(double)a4 viewSize:(double)a5 interfaceOrientation:(double)a6;
- (float)areaFactorForDepth:(float)a3 camera:(id)a4 orientation:(int64_t)a5;
- (id)computeLabelIn:(id)a3 x:(unint64_t)a4 y:(unint64_t)a5 depth:(float)a6;
- (id)getDetectedPersonsFromBuffer:(__CVBuffer *)a3 camera:(id)a4 interfaceOrientation:(int64_t)a5;
- (unsigned)findLabel:(unsigned __int16)a3 inLabels:(id)a4;
- (unsigned)unionLabel:(unsigned __int16)a3 with:(unsigned __int16)a4 inLabels:(id)a5;
- (void)computePersonDetectionFromFrame:(id)a3 interfaceOrientation:(int64_t)a4;
- (void)dealloc;
- (void)updateLabel:(id)a3 x:(unint64_t)a4 y:(unint64_t)a5 depth:(float)a6;
@end

@implementation PersonDetectionManager

- (PersonDetectionManager)initWithCenterDetectionSize:(CGSize)a3 labellingTolerance:(float)a4 significantAreaThresholdMM:(float)a5 closeDetectionFactor:(float)a6
{
  height = a3.height;
  width = a3.width;
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
    v12->_labellingTolerance = a4;
    v12->_significantAreaThresholdMM = a5;
    v12->_closeDetectionFactor = a6;
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

- (void)computePersonDetectionFromFrame:(id)a3 interfaceOrientation:(int64_t)a4
{
  v22 = a3;
  if (v22)
  {
    if (self->_arCamera)
    {
      v6 = [v22 camera];
      [v6 intrinsics];
      [(ARCamera *)self->_arCamera setIntrinsics:?];

      v7 = [v22 camera];
      [v7 imageResolution];
      [(ARCamera *)self->_arCamera setImageResolution:?];
    }

    else
    {
      v8 = objc_alloc(MEMORY[0x277CE5238]);
      v7 = [v22 camera];
      [v7 intrinsics];
      v20 = v10;
      v21 = v9;
      v19 = v11;
      v12 = [v22 camera];
      [v12 imageResolution];
      v15 = [v8 initWithIntrinsics:v21 imageResolution:{v20, v19, v13, v14}];
      arCamera = self->_arCamera;
      self->_arCamera = v15;
    }

    v17 = -[PersonDetectionManager getDetectedPersonsFromBuffer:camera:interfaceOrientation:](self, "getDetectedPersonsFromBuffer:camera:interfaceOrientation:", [v22 estimatedDepthData], self->_arCamera, a4);
    detectedPersonArray = self->_detectedPersonArray;
    self->_detectedPersonArray = v17;
  }
}

- (double)unprojectPoint:(double)a3 atDepth:(double)a4 viewSize:(double)a5 interfaceOrientation:(double)a6
{
  v6 = *(a1 + 40);
  if (!v6)
  {
    return 0.0;
  }

  [v6 unprojectPoint:a2 ontoPlaneWithTransform:a3 orientation:*&_PromotedConst viewportSize:{0.0, -0.0078125, 0.0, a5, a6}];
  return result;
}

- (CGPoint)project3dPoint:(CGSize)a3 viewSize:(int64_t)a4 interfaceOrientation:
{
  arCamera = self->_arCamera;
  if (arCamera)
  {
    [(ARCamera *)arCamera projectPoint:a4 orientation:a3.width viewportSize:a3.height];
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

- (id)getDetectedPersonsFromBuffer:(__CVBuffer *)a3 camera:(id)a4 interfaceOrientation:(int64_t)a5
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

                    v43 = [v9 unionLabel:v41 with:v44 inLabels:{v86, v22, v34}];
                    goto LABEL_47;
                  }

                  if (!obj)
                  {
LABEL_41:
                    v43 = 0;
                    goto LABEL_47;
                  }

                  v43 = *&obj[2 * v28];
                }

                else
                {
                  if (!v28)
                  {
                    goto LABEL_41;
                  }

                  v43 = *v32;
                }
              }

              else
              {
                v42 = [v9 computeLabelIn:v86 x:v28 y:v23 depth:{v22, v34}];
                v43 = [v42 alias];
              }

LABEL_47:
              *(v32 + 1) = v43;
              v45 = [v86 objectAtIndexedSubscript:v43];
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
                      v59 = [v58 minX];
                      v60 = [v58 maxX];
                      v61 = [v58 minY];
                      v62 = [v58 maxY];
                      v63 = [DetectedPersonData alloc];
                      [v58 depth];
                      LODWORD(v65) = v64;
                      v66 = [(DetectedPersonData *)v63 initWithNormalizedMinX:v81 maxX:v84 minY:v59 / width maxY:v60 / width depth:v61 / height camera:v62 / height orientation:v65];
                      v67 = [(DetectedPersonData *)v66 computeArea];
                      [v58 depth];
                      [v9 areaFactorForDepth:*(v9 + 40) camera:v84 orientation:?];
                      if ((v68 * *(v9 + 16)) > v67)
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

- (unsigned)findLabel:(unsigned __int16)a3 inLabels:(id)a4
{
  v5 = a4;
  v6 = a3;
  while (1)
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
    v8 = [v7 alias];

    if (v8 == v6)
    {
      break;
    }

    v9 = [v5 objectAtIndexedSubscript:v6];
    v6 = [v9 alias];
  }

  while (1)
  {
    v12 = a3;
    v13 = [v5 objectAtIndexedSubscript:a3];
    v14 = [v13 alias];

    if (v14 == v12)
    {
      break;
    }

    v10 = [v5 objectAtIndexedSubscript:v12];
    a3 = [v10 alias];

    v11 = [v5 objectAtIndexedSubscript:v12];
    [v11 setAlias:v6];
  }

  return v6;
}

- (unsigned)unionLabel:(unsigned __int16)a3 with:(unsigned __int16)a4 inLabels:(id)a5
{
  v5 = a4;
  v6 = a3;
  v8 = a5;
  v9 = [(PersonDetectionManager *)self findLabel:v6 inLabels:v8];
  v10 = [(PersonDetectionManager *)self findLabel:v5 inLabels:v8];
  v11 = [v8 objectAtIndexedSubscript:v9];
  v12 = [v8 objectAtIndexedSubscript:v10];
  [v11 setAlias:v10];
  v13 = [v11 minX];
  v14 = [v12 minX];
  if (v13 >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  [v12 setMinX:v15];
  v16 = [v11 maxX];
  v17 = [v12 maxX];
  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  [v12 setMaxX:v18];
  v19 = [v11 minY];
  v20 = [v12 minY];
  if (v19 >= v20)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  [v12 setMinY:v21];
  v22 = [v11 maxY];
  v23 = [v12 maxY];
  if (v22 <= v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = v22;
  }

  [v12 setMaxY:v24];

  return v10;
}

- (id)computeLabelIn:(id)a3 x:(unint64_t)a4 y:(unint64_t)a5 depth:(float)a6
{
  v8 = a3;
  v9 = [v8 objectAtIndexedSubscript:0];
  [v9 setAlias:{(objc_msgSend(v9, "alias") + 1)}];

  v10 = [v8 objectAtIndexedSubscript:0];
  v11 = [v8 objectAtIndexedSubscript:{objc_msgSend(v10, "alias")}];

  v12 = [v8 objectAtIndexedSubscript:0];
  [v11 setAlias:{objc_msgSend(v12, "alias")}];

  [v11 setMinX:a4];
  [v11 setMaxX:a4];
  [v11 setMinY:a5];
  [v11 setMaxY:a5];

  return v11;
}

- (void)updateLabel:(id)a3 x:(unint64_t)a4 y:(unint64_t)a5 depth:(float)a6
{
  v18 = a3;
  v9 = [v18 minX];
  if (v9 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = v9;
  }

  [v18 setMinX:v10];
  v11 = [v18 maxX];
  if (v11 <= a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = v11;
  }

  [v18 setMaxX:v12];
  v13 = [v18 minY];
  if (v13 >= a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = v13;
  }

  [v18 setMinY:v14];
  v15 = [v18 maxY];
  if (v15 <= a5)
  {
    v16 = a5;
  }

  else
  {
    v16 = v15;
  }

  [v18 setMaxY:v16];
  *&v17 = a6;
  [v18 setDepth:v17];
}

- (BOOL)isIntersectingWithCenter:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v8 = a3;
  width = self->_centerDetectionSize.width;
  height = self->_centerDetectionSize.height;
  [v8 screenRect];
  v13.size.width = width / a4;
  v13.origin.x = v13.size.width * -0.5 + 0.5;
  v13.size.height = height / a5;
  v13.origin.y = v13.size.height * -0.5 + 0.5;
  LOBYTE(a5) = CGRectIntersectsRect(v12, v13);

  return a5;
}

- (BOOL)isInCenterRectFromRow:(unint64_t)a3 column:(unint64_t)a4 width:(unint64_t)a5 height:(unint64_t)a6
{
  v6 = a4 - a5 / 2;
  if (v6 < 0)
  {
    v6 = a5 / 2 - a4;
  }

  if (v6 > (self->_centerDetectionSize.width * 0.5))
  {
    return 0;
  }

  v8 = a3 - a6 / 2;
  if (v8 < 0)
  {
    v8 = a6 / 2 - a3;
  }

  return v8 <= (self->_centerDetectionSize.height * 0.5);
}

- (float)areaFactorForDepth:(float)a3 camera:(id)a4 orientation:(int64_t)a5
{
  v8 = a4;
  v9 = [DetectedPersonData alloc];
  *&v10 = a3;
  v11 = [(DetectedPersonData *)v9 initWithNormalizedMinX:v8 maxX:a5 minY:0.0 maxY:1.0 depth:0.0 camera:1.0 orientation:v10];
  v12 = [(DetectedPersonData *)v11 computeArea];
  closeDetectionFactor = self->_closeDetectionFactor;
  if ((v12 / (self->_significantAreaThresholdMM * closeDetectionFactor)) <= 1.0)
  {
    v14 = v12 / (self->_significantAreaThresholdMM * closeDetectionFactor);
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