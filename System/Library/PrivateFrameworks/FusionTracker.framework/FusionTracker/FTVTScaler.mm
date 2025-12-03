@interface FTVTScaler
- (BOOL)scaleSourceBuffer:(__CVBuffer *)buffer toDestinationBuffer:(__CVBuffer *)destinationBuffer sourceROI:(CGRect)i destinationROI:(CGRect)oI mean:;
- (FTVTScaler)initWithCommandQueue:(id)queue;
- (void)dealloc;
@end

@implementation FTVTScaler

- (FTVTScaler)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = FTVTScaler;
  v6 = [(FTVTScaler *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_commandQueue, queue);
    device = [queueCopy device];
    device = v7->_device;
    v7->_device = device;

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

- (BOOL)scaleSourceBuffer:(__CVBuffer *)buffer toDestinationBuffer:(__CVBuffer *)destinationBuffer sourceROI:(CGRect)i destinationROI:(CGRect)oI mean:
{
  v7 = v6;
  height = oI.size.height;
  width = oI.size.width;
  y = oI.origin.y;
  x = oI.origin.x;
  v11 = i.size.height;
  v12 = i.size.width;
  v13 = i.origin.y;
  v14 = i.origin.x;
  if (CGRectIsEmpty(i))
  {
    v12 = CVPixelBufferGetWidth(buffer);
    v11 = CVPixelBufferGetHeight(buffer);
    v14 = 0.0;
    v13 = 0.0;
  }

  v18 = CVPixelBufferGetWidth(buffer);
  v48.size.height = CVPixelBufferGetHeight(buffer);
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
      width = CVPixelBufferGetWidth(destinationBuffer);
      height = CVPixelBufferGetHeight(destinationBuffer);
      x = 0.0;
      v24 = 0.0;
    }

    v26 = CVPixelBufferGetWidth(destinationBuffer);
    v49.size.height = CVPixelBufferGetHeight(destinationBuffer);
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
      v30 = VTPixelTransferSessionTransferImage(self->_transferSession, buffer, destinationBuffer);
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

        PixelFormatType = CVPixelBufferGetPixelFormatType(destinationBuffer);
        if (PixelFormatType == 1111970369)
        {
          v34 = MEMORY[0x277CD7058];
          v35 = CVPixelBufferGetWidth(destinationBuffer);
          v25 = [v34 texture2DDescriptorWithPixelFormat:80 width:v35 height:CVPixelBufferGetHeight(destinationBuffer) mipmapped:0];
          [v25 setUsage:1];
          v36 = [(MTLDeviceSPI *)self->_device newTextureWithDescriptor:v25 iosurface:CVPixelBufferGetIOSurface(destinationBuffer) plane:0];
          commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
          [commandBuffer setLabel:@"FTVTScaler"];
          [(MPSImageStatisticsMean *)self->_meanFilter encodeToCommandBuffer:commandBuffer sourceTexture:v36 destinationTexture:self->_meanTexture];
          [commandBuffer commit];
          [commandBuffer waitUntilCompleted];
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