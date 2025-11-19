@interface FigCaptureCMIOExtensionSessionStreamDelegate
- (void)stream:(id)a3 propertiesChanged:(id)a4;
- (void)stream:(id)a3 receivedSampleBuffer:(opaqueCMSampleBuffer *)a4;
@end

@implementation FigCaptureCMIOExtensionSessionStreamDelegate

uint64_t __73__FigCaptureCMIOExtensionSessionStreamDelegate_stream_propertiesChanged___block_invoke(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  result = [v2 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v19;
    v6 = *MEMORY[0x1E6963458];
    v13 = *off_1E798B838;
    v12 = *off_1E798B840;
    v11 = *off_1E798B848;
    v14 = *off_1E798B860;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        v9 = [*(a1 + 32) objectForKeyedSubscript:v8];
        if ([v8 isEqualToString:v6])
        {
          if (![v9 value])
          {
            goto LABEL_14;
          }

          v15 = v14;
          v16 = [v9 value];
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
          CMNotificationCenterGetDefaultLocalCenter();
        }

        else
        {
          if (![v8 isEqualToString:@"SuppressedGesture"])
          {
            v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v10 setObject:v8 forKeyedSubscript:v13];
            [v10 setObject:*(a1 + 48) forKeyedSubscript:v12];
            if ([v9 value])
            {
              [v10 setObject:objc_msgSend(v9 forKeyedSubscript:{"value"), v11}];
            }
          }

          CMNotificationCenterGetDefaultLocalCenter();
        }

        CMNotificationCenterPostNotification();
LABEL_14:
        ++v7;
      }

      while (v4 != v7);
      result = [v2 countByEnumeratingWithState:&v18 objects:v17 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)stream:(id)a3 receivedSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  pixelBufferOut = 0;
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if (!v7)
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    CMSetAttachment(a4, v6, v7, 1u);
  }

  FormatDescription = CMSampleBufferGetFormatDescription(a4);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  v10 = Dimensions;
  if (Dimensions.width >= 1 && Dimensions.height >= 1)
  {
    v38.size.width = Dimensions.width;
    v38.size.height = Dimensions.height;
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v38);
    [v7 setObject:DictionaryRepresentation forKeyedSubscript:*off_1E798B790];
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }

    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v10), *off_1E798B5A8}];
    [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", HIDWORD(*&v10)), *off_1E798B5A0}];
  }

  [*(DerivedStorage + 248) processSampleBuffer:a4];
  ImageBuffer = CMSampleBufferGetImageBuffer(a4);
  v13 = *off_1E798A518;
  v14 = CMGetAttachment(a4, *off_1E798A518, 0);
  if (v14)
  {
    v15 = v14;
    v16 = *off_1E798B220;
    v17 = [v14 objectForKeyedSubscript:*off_1E798B220];
    v18 = *off_1E798B228;
    v19 = [v15 objectForKeyedSubscript:*off_1E798B228];
    if (v17)
    {
      [v7 setObject:v17 forKeyedSubscript:v16];
    }

    if (v19)
    {
      [v7 setObject:v19 forKeyedSubscript:v18];
    }

    v20 = [v15 objectForKeyedSubscript:*off_1E798CD78];
    if (v20 && ImageBuffer)
    {
      CMSetAttachments(ImageBuffer, v20, 1u);
    }

    CMRemoveAttachment(a4, v13);
  }

  memset(&v36, 0, sizeof(v36));
  CMSampleBufferGetPresentationTimeStamp(&v36, a4);
  v21 = [objc_msgSend(*(DerivedStorage + 96) objectForKeyedSubscript:{*off_1E798CA98), "objectForKeyedSubscript:", *off_1E798C9B8}];
  v22 = MEMORY[0x1E695E480];
  if (v21)
  {
    v23 = *MEMORY[0x1E695E480];
    if (CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x1E695E480], v21, &pixelBufferOut))
    {
      [FigCaptureCMIOExtensionSessionStreamDelegate stream:receivedSampleBuffer:];
      goto LABEL_39;
    }

    v24 = *(DerivedStorage + 240);
    if (!v24)
    {
      if (VTPixelTransferSessionCreate(v23, (DerivedStorage + 240)))
      {
        [FigCaptureCMIOExtensionSessionStreamDelegate stream:receivedSampleBuffer:];
        goto LABEL_39;
      }

      v24 = *(DerivedStorage + 240);
    }

    if (VTPixelTransferSessionTransferImage(v24, ImageBuffer, pixelBufferOut))
    {
      [FigCaptureCMIOExtensionSessionStreamDelegate stream:receivedSampleBuffer:];
      goto LABEL_39;
    }

    CVBufferPropagateAttachments(ImageBuffer, pixelBufferOut);
    v25 = CVBufferCopyAttachments(pixelBufferOut, kCVAttachmentMode_ShouldNotPropagate);
    if (v25)
    {
      v26 = CFAutorelease(v25);
      if (v26)
      {
        CVBufferSetAttachments(pixelBufferOut, v26, kCVAttachmentMode_ShouldNotPropagate);
      }
    }
  }

  if (!pixelBufferOut)
  {
    if (ImageBuffer)
    {
      v27 = CFRetain(ImageBuffer);
    }

    else
    {
      v27 = 0;
    }

    pixelBufferOut = v27;
  }

  v28 = *v22;
  v29 = CMCopyDictionaryOfAttachments(*v22, a4, 1u);
  if (v29)
  {
    v30 = v29;
    CVBufferSetAttachment(pixelBufferOut, @"SampleBufferPropagatableAttachments", v29, kCVAttachmentMode_ShouldPropagate);
    CFRelease(v30);
  }

  v31 = CMCopyDictionaryOfAttachments(v28, a4, 0);
  if (v31)
  {
    v32 = v31;
    CVBufferSetAttachment(pixelBufferOut, @"SampleBufferNonPropagatableAttachments", v31, kCVAttachmentMode_ShouldNotPropagate);
    CFRelease(v32);
  }

  os_unfair_lock_lock((DerivedStorage + 20));
  if (*(DerivedStorage + 104) == 1)
  {
    v33 = *(DerivedStorage + 112);
    if (v33)
    {
      v34 = *(v33 + 16);
      v35 = v36;
      v34(v33, pixelBufferOut, &v35);
    }
  }

  os_unfair_lock_unlock((DerivedStorage + 20));
LABEL_39:
  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }
}

- (void)stream:(id)a3 propertiesChanged:(id)a4
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 20));
  if (*(DerivedStorage + 16) == 1)
  {
    os_unfair_lock_unlock((DerivedStorage + 20));
    v7 = 0;
  }

  else
  {
    v7 = *(DerivedStorage + 48);
    os_unfair_lock_unlock((DerivedStorage + 20));
    if (v7)
    {
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73__FigCaptureCMIOExtensionSessionStreamDelegate_stream_propertiesChanged___block_invoke;
      block[3] = &unk_1E798FD58;
      block[4] = a4;
      block[5] = self;
      block[6] = v7;
      dispatch_async(global_queue, block);
    }
  }
}

@end