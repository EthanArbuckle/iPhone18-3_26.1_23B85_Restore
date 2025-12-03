@interface JFXPixelRotationSession
+ (const)toVTRotation:(int)rotation;
+ (void)JFX_rotateFrameSet:(id *)set toOrientation:(int64_t)orientation pixelRotationSession:(id *)session;
+ (void)rotateFrameSet:(id *)set by:(int)by mirror:(BOOL)mirror pixelRotationSession:(id *)session;
+ (void)rotateFrameSetToDeviceOrientation:(id *)orientation pixelRotationSession:(id *)session;
+ (void)rotateFrameSetToUIOrientation:(id *)orientation pixelRotationSession:(id *)session;
- (JFXPixelRotationSession)initWithRotation:(int)rotation mirror:(BOOL)mirror;
- (__CVBuffer)createRotatedPixelBuffer:(__CVBuffer *)buffer using:(__CVBuffer *)using;
- (id)createRotatedFrameSet:(id)set;
- (void)JT_releaseImageRotationSession;
- (void)dealloc;
@end

@implementation JFXPixelRotationSession

+ (void)rotateFrameSetToUIOrientation:(id *)orientation pixelRotationSession:(id *)session
{
  v7 = [*orientation metadataObjectForKey:*MEMORY[0x277D41A00]];
  [self JFX_rotateFrameSet:orientation toOrientation:objc_msgSend(v7 pixelRotationSession:{"interfaceOrientation"), session}];
}

+ (void)rotateFrameSetToDeviceOrientation:(id *)orientation pixelRotationSession:(id *)session
{
  v7 = [*orientation metadataObjectForKey:@"PVFrameSetMetadataDeviceOrientationkey"];
  integerValue = [v7 integerValue];

  [self JFX_rotateFrameSet:orientation toOrientation:integerValue pixelRotationSession:session];
}

+ (void)rotateFrameSet:(id *)set by:(int)by mirror:(BOOL)mirror pixelRotationSession:(id *)session
{
  mirrorCopy = mirror;
  v8 = *&by;
  if (by || mirror)
  {
    v10 = *session;
    if ([(JFXPixelRotationSession *)v10 rotationCardinalAngle]!= v8 || [(JFXPixelRotationSession *)v10 mirror]!= mirrorCopy)
    {
      v11 = [[JFXPixelRotationSession alloc] initWithRotation:v8 mirror:mirrorCopy];

      v10 = v11;
    }

    v12 = *set;
    v13 = [(JFXPixelRotationSession *)v10 createRotatedFrameSet:v12];
    *set = v13;
  }

  else
  {
    v10 = 0;
  }

  v14 = *session;
  *session = v10;
}

+ (void)JFX_rotateFrameSet:(id *)set toOrientation:(int64_t)orientation pixelRotationSession:(id *)session
{
  v12 = [*set metadataObjectForKey:*MEMORY[0x277D41A00]];
  cameraPosition = [v12 cameraPosition];
  v10 = +[JFXRotationTransforms rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:](JFXRotationTransforms, "rotationFromCaptureDevicePosition:captureVideoOrientation:toInterfaceOrientation:", cameraPosition, [v12 captureVideoOrientation], orientation);
  if (cameraPosition == 2)
  {
    v11 = useMirroredFrontCameraInStreamMode();
  }

  else
  {
    v11 = 0;
  }

  [self rotateFrameSet:set by:v10 mirror:v11 pixelRotationSession:session];
}

+ (const)toVTRotation:(int)rotation
{
  if (rotation > 1)
  {
    if (rotation == 2)
    {
      v3 = MEMORY[0x277CE2A28];
    }

    else
    {
      if (rotation != 3)
      {
        return result;
      }

      v3 = MEMORY[0x277CE2A30];
    }
  }

  else if (rotation)
  {
    if (rotation != 1)
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

- (JFXPixelRotationSession)initWithRotation:(int)rotation mirror:(BOOL)mirror
{
  v10.receiver = self;
  v10.super_class = JFXPixelRotationSession;
  v6 = [(JFXPixelRotationSession *)&v10 init];
  v7 = v6;
  if (v6 && ((v6->_rotationCardinalAngle = rotation, v6->_mirror = mirror, VTPixelRotationSessionCreate(*MEMORY[0x277CBECE8], &v6->_imageRotationSession)) || VTSessionSetProperty(v7->_imageRotationSession, *MEMORY[0x277CE2850], [JFXPixelRotationSession toVTRotation:v7->_rotationCardinalAngle]) || v7->_mirror && VTSessionSetProperty(v7->_imageRotationSession, *MEMORY[0x277CE2838], *MEMORY[0x277CBED28])))
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

- (id)createRotatedFrameSet:(id)set
{
  setCopy = set;
  colorImageBuffer = [setCopy colorImageBuffer];
  v6 = -[JFXPixelRotationSession createRotatedPixelBuffer:](self, "createRotatedPixelBuffer:", [colorImageBuffer cvPixelBuffer]);
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277D41618] imageWithCVPixelBuffer:v6];
    CVPixelBufferRelease(v7);
    v23 = 0uLL;
    v24 = 0;
    if (setCopy)
    {
      [setCopy presentationTimeStamp];
    }

    memset(&v22, 0, sizeof(v22));
    colorSampleBuffer = [setCopy colorSampleBuffer];
    CMSampleBufferGetDuration(&v22, [colorSampleBuffer sampleBufferRef]);

    v20 = v23;
    v21 = v24;
    v19 = v22;
    v10 = [MEMORY[0x277D415D8] sampleBufferWithPVImageBuffer:v8 timestamp:&v20 frameDuration:&v19];
    metadataDict = [setCopy metadataDict];
    v12 = [metadataDict copy];

    v13 = [v12 objectForKey:@"PVFrameSetMetadataARMetadataKey"];
    arFrame = [v13 arFrame];
    [arFrame setCapturedImage:{objc_msgSend(v8, "cvPixelBuffer")}];
    v15 = objc_alloc(MEMORY[0x277D41608]);
    depthData = [setCopy depthData];
    v17 = [v15 initWithColorBuffer:v10 depthData:depthData metadata:v12];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (__CVBuffer)createRotatedPixelBuffer:(__CVBuffer *)buffer using:(__CVBuffer *)using
{
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  usingCopy = using;
  if (using)
  {
    goto LABEL_19;
  }

  v10 = Height;
  v12 = *MEMORY[0x277CBF3A8];
  v11 = *(MEMORY[0x277CBF3A8] + 8);
  rotationCardinalAngle = [(JFXPixelRotationSession *)self rotationCardinalAngle];
  if (rotationCardinalAngle > 1)
  {
    if (rotationCardinalAngle != 3)
    {
      if (rotationCardinalAngle == 2)
      {
        v11 = v10;
        v12 = Width;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (!rotationCardinalAngle)
    {
      v11 = v10;
      v12 = Width;
      goto LABEL_11;
    }

    if (rotationCardinalAngle != 1)
    {
      goto LABEL_11;
    }
  }

  v11 = Width;
  v12 = v10;
LABEL_11:
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  pixelBufferPool = [(JFXPixelRotationSession *)self pixelBufferPool];

  if (!pixelBufferPool || (-[JFXPixelRotationSession pixelBufferPool](self, "pixelBufferPool"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v16 type], v16, -[JFXPixelRotationSession pixelBufferPool](self, "pixelBufferPool"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "size"), v20 = v19, v22 = v21, v18, PixelFormatType != v17) || (v20 == v12 ? (v23 = v22 == v11) : (v23 = 0), !v23))
  {
    v24 = [[JFXPixelBufferPool alloc] initWithSize:PixelFormatType type:v12, v11];
    [(JFXPixelRotationSession *)self setPixelBufferPool:v24];
  }

  pixelBufferPool2 = [(JFXPixelRotationSession *)self pixelBufferPool];
  usingCopy = [pixelBufferPool2 createPixelBuffer];

LABEL_19:
  CVBufferPropagateAttachments(buffer, usingCopy);
  v26 = VTPixelRotationSessionRotateImage(self->_imageRotationSession, buffer, usingCopy);
  if (v26)
  {
    result = 0;
  }

  else
  {
    result = usingCopy;
  }

  if (!using)
  {
    if (v26)
    {
      CVPixelBufferRelease(usingCopy);
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