@interface FTVTScaler
- (BOOL)scaleSourceBuffer:(__CVBuffer *)a3 toDestinationBuffer:(__CVBuffer *)a4 sourceROI:(CGRect)a5 destinationROI:(CGRect)a6 mean:;
- (FTVTScaler)initWithCommandQueue:(id)a3;
- (void)dealloc;
@end

@implementation FTVTScaler

- (FTVTScaler)initWithCommandQueue:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = FTVTScaler;
  v6 = [(FTVTScaler *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commandQueue, a3);
    v8 = [v5 device];
    device = v7->_device;
    v7->_device = v8;

    v10 = [objc_alloc(MEMORY[0x277CD7578]) initWithDevice:v7->_device];
    meanFilter = v7->_meanFilter;
    v7->_meanFilter = v10;

    v12 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:80 width:1 height:1 mipmapped:0];
    [v12 setUsage:2];
    v13 = [(MTLDeviceSPI *)v7->_device newTextureWithDescriptor:v12];
    meanTexture = v7->_meanTexture;
    v7->_meanTexture = v13;

    VTPixelTransferSessionCreate(0, &v7->_transferSession);
    v15 = VTSessionSetProperty(v7->_transferSession, *MEMORY[0x277CE28C8], *MEMORY[0x277CBED10]);
    if (v15)
    {
      v16 = ft::GetOsLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [FTVTScaler initWithCommandQueue:];
      }
    }

    else
    {
      v18 = VTSessionSetProperty(v7->_transferSession, *MEMORY[0x277CE28B0], *MEMORY[0x277CE2A68]);
      if (!v18)
      {
        v17 = v7;
        goto LABEL_10;
      }

      v16 = ft::GetOsLog(v18);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [FTVTScaler initWithCommandQueue:];
      }
    }

    v17 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (void)dealloc
{
  VTPixelTransferSessionInvalidate(self->_transferSession);
  CFRelease(self->_transferSession);
  self->_transferSession = 0;
  v3.receiver = self;
  v3.super_class = FTVTScaler;
  [(FTVTScaler *)&v3 dealloc];
}

- (BOOL)scaleSourceBuffer:(__CVBuffer *)a3 toDestinationBuffer:(__CVBuffer *)a4 sourceROI:(CGRect)a5 destinationROI:(CGRect)a6 mean:
{
  v7 = v6;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v11 = a5.size.height;
  v12 = a5.size.width;
  v13 = a5.origin.y;
  v14 = a5.origin.x;
  if (CGRectIsEmpty(a5))
  {
    v12 = CVPixelBufferGetWidth(a3);
    v11 = CVPixelBufferGetHeight(a3);
    v14 = 0.0;
    v13 = 0.0;
  }

  v18 = CVPixelBufferGetWidth(a3);
  v48.size.height = CVPixelBufferGetHeight(a3);
  v48.origin.x = 0.0;
  v48.origin.y = 0.0;
  v43.origin.x = v14;
  v43.origin.y = v13;
  v43.size.width = v12;
  v43.size.height = v11;
  v48.size.width = v18;
  v19 = CGRectEqualToRect(v43, v48);
  v20 = MEMORY[0x277CE28B8];
  if (v19)
  {
    v21 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x277CE28B8], 0);
  }

  else
  {
    v44.origin.x = v14;
    v44.origin.y = v13;
    v44.size.width = v12;
    v44.size.height = v11;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v44);
    v21 = VTSessionSetProperty(self->_transferSession, *v20, DictionaryRepresentation);
    if (DictionaryRepresentation)
    {
      v23 = v21;
      CFRelease(DictionaryRepresentation);
      v21 = v23;
    }
  }

  v24 = y;
  if (v21)
  {
    v25 = ft::GetOsLog(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [FTVTScaler scaleSourceBuffer:toDestinationBuffer:sourceROI:destinationROI:mean:];
    }
  }

  else
  {
    v45.origin.x = x;
    v45.origin.y = y;
    v45.size.width = width;
    v45.size.height = height;
    if (CGRectIsEmpty(v45))
    {
      width = CVPixelBufferGetWidth(a4);
      height = CVPixelBufferGetHeight(a4);
      x = 0.0;
      v24 = 0.0;
    }

    v26 = CVPixelBufferGetWidth(a4);
    v49.size.height = CVPixelBufferGetHeight(a4);
    v49.origin.x = 0.0;
    v49.origin.y = 0.0;
    v46.origin.x = x;
    v46.origin.y = v24;
    v46.size.width = width;
    v46.size.height = height;
    v49.size.width = v26;
    if (CGRectEqualToRect(v46, v49))
    {
      v27 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x277CE2868], 0);
    }

    else
    {
      v47.origin.x = x;
      v47.origin.y = v24;
      v47.size.width = width;
      v47.size.height = height;
      v28 = CGRectCreateDictionaryRepresentation(v47);
      v27 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x277CE2868], v28);
      if (v28)
      {
        v29 = v27;
        CFRelease(v28);
        v27 = v29;
      }
    }

    if (v27)
    {
      v25 = ft::GetOsLog(v27);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [FTVTScaler initWithCommandQueue:];
      }
    }

    else
    {
      v30 = VTPixelTransferSessionTransferImage(self->_transferSession, a3, a4);
      if (v30)
      {
        v25 = ft::GetOsLog(v30);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [FTVTScaler scaleSourceBuffer:toDestinationBuffer:sourceROI:destinationROI:mean:];
        }
      }

      else
      {
        if (!v7)
        {
          return 1;
        }

        PixelFormatType = CVPixelBufferGetPixelFormatType(a4);
        if (PixelFormatType == 1111970369)
        {
          v34 = MEMORY[0x277CD7058];
          v35 = CVPixelBufferGetWidth(a4);
          v25 = [v34 texture2DDescriptorWithPixelFormat:80 width:v35 height:CVPixelBufferGetHeight(a4) mipmapped:0];
          [v25 setUsage:1];
          v36 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v25 iosurface:CVPixelBufferGetIOSurface(a4) plane:0];
          v37 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
          [v37 setLabel:@"FTVTScaler"];
          [(MPSImageStatisticsMean *)self->_meanFilter encodeToCommandBuffer:v37 sourceTexture:v36 destinationTexture:self->_meanTexture];
          [v37 commit];
          [v37 waitUntilCompleted];
          meanTexture = self->_meanTexture;
          memset(v40, 0, sizeof(v40));
          v41 = vdupq_n_s64(1uLL);
          v42 = 1;
          [(MTLTexture *)meanTexture getBytes:v7 bytesPerRow:4 fromRegion:v40 mipmapLevel:0];

          v31 = 1;
          goto LABEL_23;
        }

        v25 = ft::GetOsLog(PixelFormatType);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [FTVTScaler scaleSourceBuffer:toDestinationBuffer:sourceROI:destinationROI:mean:];
        }
      }
    }
  }

  v31 = 0;
LABEL_23:

  return v31;
}

@end