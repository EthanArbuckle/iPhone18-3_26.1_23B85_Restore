@interface JFXPixelRotationSession
+ (const)toVTRotation:(int)a3;
+ (void)JFX_rotateFrameSet:(id *)a3 toOrientation:(int64_t)a4 pixelRotationSession:(id *)a5;
+ (void)rotateFrameSet:(id *)a3 by:(int)a4 mirror:(BOOL)a5 pixelRotationSession:(id *)a6;
+ (void)rotateFrameSetToDeviceOrientation:(id *)a3 pixelRotationSession:(id *)a4;
+ (void)rotateFrameSetToUIOrientation:(id *)a3 pixelRotationSession:(id *)a4;
- (JFXPixelRotationSession)initWithRotation:(int)a3 mirror:(BOOL)a4;
- (__CVBuffer)createRotatedPixelBuffer:(__CVBuffer *)a3 using:(__CVBuffer *)a4;
- (id)createRotatedFrameSet:(id)a3;
- (void)JT_releaseImageRotationSession;
- (void)dealloc;
@end

@implementation JFXPixelRotationSession

+ (void)rotateFrameSetToUIOrientation:(id *)a3 pixelRotationSession:(id *)a4
{
  v7 = [*a3 metadataObjectForKey:*MEMORY[0x277D41A00]];
  [a1 JFX_rotateFrameSet:a3 toOrientation:objc_msgSend(v7 pixelRotationSession:{"interfaceOrientation"), a4}];
}

+ (void)rotateFrameSetToDeviceOrientation:(id *)a3 pixelRotationSession:(id *)a4
{
  v7 = [*a3 metadataObjectForKey:@"PVFrameSetMetadataDeviceOrientationkey"];
  v8 = [v7 integerValue];

  [a1 JFX_rotateFrameSet:a3 toOrientation:v8 pixelRotationSession:a4];
}

+ (void)rotateFrameSet:(id *)a3 by:(int)a4 mirror:(BOOL)a5 pixelRotationSession:(id *)a6
{
  v7 = a5;
  v8 = *&a4;
  if (a4 || a5)
  {
    v10 = *a6;
    if ([(JFXPixelRotationSession *)v10 rotationCardinalAngle]!= v8 || [(JFXPixelRotationSession *)v10 mirror]!= v7)
    {
      v11 = [[JFXPixelRotationSession alloc] initWithRotation:v8 mirror:v7];

      v10 = v11;
    }

    v12 = *a3;
    v13 = [(JFXPixelRotationSession *)v10 createRotatedFrameSet:v12];
    *a3 = v13;
  }

  else
  {
    v10 = 0;
  }

  v14 = *a6;
  *a6 = v10;
}

+ (void)JFX_rotateFrameSet:(id *)a3 toOrientation:(int64_t)a4 pixelRotationSession:(id *)a5
{
  v12 = [*a3 metadataObjectForKey:*MEMORY[0x277D41A00]];
  v9 = [v12 cameraPosition];
  v10 = +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", v9, [v12 captureVideoOrientation], a4);
  if (v9 == 2)
  {
    v11 = useMirroredFrontCameraInStreamMode();
  }

  else
  {
    v11 = 0;
  }

  [a1 rotateFrameSet:a3 by:v10 mirror:v11 pixelRotationSession:a5];
}

+ (const)toVTRotation:(int)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v3 = MEMORY[0x277CE2A28];
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      v3 = MEMORY[0x277CE2A30];
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    v3 = MEMORY[0x277CE2A38];
  }

  else
  {
    v3 = MEMORY[0x277CE2A20];
  }

  return *v3;
}

- (JFXPixelRotationSession)initWithRotation:(int)a3 mirror:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = JFXPixelRotationSession;
  v6 = [(JFXPixelRotationSession *)&v10 init];
  v7 = v6;
  if (v6 && ((v6->_rotationCardinalAngle = a3, v6->_mirror = a4, VTPixelRotationSessionCreate(*MEMORY[0x277CBECE8], &v6->_imageRotationSession)) || VTSessionSetProperty(v7->_imageRotationSession, *MEMORY[0x277CE2850], [JFXPixelRotationSession toVTRotation:v7->_rotationCardinalAngle]) || v7->_mirror && VTSessionSetProperty(v7->_imageRotationSession, *MEMORY[0x277CE2838], *MEMORY[0x277CBED28])))
  {
    [(JFXPixelRotationSession *)v7 JT_releaseImageRotationSession];
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v8;
}

- (void)dealloc
{
  [(JFXPixelRotationSession *)self JT_releaseImageRotationSession];
  pixelBufferPool = self->_pixelBufferPool;
  self->_pixelBufferPool = 0;

  v4.receiver = self;
  v4.super_class = JFXPixelRotationSession;
  [(JFXPixelRotationSession *)&v4 dealloc];
}

- (id)createRotatedFrameSet:(id)a3
{
  v4 = a3;
  v5 = [v4 colorImageBuffer];
  v6 = -[JFXPixelRotationSession createRotatedPixelBuffer:](self, "createRotatedPixelBuffer:", [v5 cvPixelBuffer]);
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v6];
    CVPixelBufferRelease(v7);
    v23 = 0uLL;
    v24 = 0;
    if (v4)
    {
      [v4 presentationTimeStamp];
    }

    memset(&v22, 0, sizeof(v22));
    v9 = [v4 colorSampleBuffer];
    CMSampleBufferGetDuration(&v22, [v9 sampleBufferRef]);

    v20 = v23;
    v21 = v24;
    v19 = v22;
    v10 = [MEMORY[0x277D415D8] sampleBufferWithPVImageBuffer:v8 timestamp:&v20 frameDuration:&v19];
    v11 = [v4 metadataDict];
    v12 = [v11 copy];

    v13 = [v12 objectForKey:@"PVFrameSetMetadataARMetadataKey"];
    v14 = [v13 arFrame];
    [v14 setCapturedImage:{objc_msgSend(v8, "cvPixelBuffer")}];
    v15 = objc_alloc(MEMORY[0x277D41608]);
    v16 = [v4 depthData];
    v17 = [v15 initWithColorBuffer:v10 depthData:v16 metadata:v12];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (__CVBuffer)createRotatedPixelBuffer:(__CVBuffer *)a3 using:(__CVBuffer *)a4
{
  Width = CVPixelBufferGetWidth(a3);
  Height = CVPixelBufferGetHeight(a3);
  v9 = a4;
  if (a4)
  {
    goto LABEL_19;
  }

  v10 = Height;
  v12 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  v13 = [(JFXPixelRotationSession *)self rotationCardinalAngle];
  if (v13 > 1)
  {
    if (v13 != 3)
    {
      if (v13 == 2)
      {
        v11 = v10;
        v12 = Width;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!v13)
    {
      v11 = v10;
      v12 = Width;
      goto LABEL_11;
    }

    if (v13 != 1)
    {
      goto LABEL_11;
    }
  }

  v11 = Width;
  v12 = v10;
LABEL_11:
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v15 = [(JFXPixelRotationSession *)self pixelBufferPool];

  if (!v15 || (-[JFXPixelRotationSession pixelBufferPool](self, "pixelBufferPool"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 type], v16, -[JFXPixelRotationSession pixelBufferPool](self, "pixelBufferPool"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "size"), v20 = v19, v22 = v21, v18, PixelFormatType != v17) || (v20 == v12 ? (v23 = v22 == v11) : (v23 = 0), !v23))
  {
    v24 = [[JFXPixelBufferPool alloc] initWithSize:PixelFormatType type:v12, v11];
    [(JFXPixelRotationSession *)self setPixelBufferPool:v24];
  }

  v25 = [(JFXPixelRotationSession *)self pixelBufferPool];
  v9 = [v25 createPixelBuffer];

LABEL_19:
  CVBufferPropagateAttachments(a3, v9);
  v26 = VTPixelRotationSessionRotateImage(self->_imageRotationSession, a3, v9);
  if (v26)
  {
    result = 0;
  }

  else
  {
    result = v9;
  }

  if (!a4)
  {
    if (v26)
    {
      CVPixelBufferRelease(v9);
      return 0;
    }
  }

  return result;
}

- (void)JT_releaseImageRotationSession
{
  imageRotationSession = self->_imageRotationSession;
  if (imageRotationSession)
  {
    VTPixelRotationSessionInvalidate(imageRotationSession);
    CFRelease(self->_imageRotationSession);
    self->_imageRotationSession = 0;
  }
}

@end