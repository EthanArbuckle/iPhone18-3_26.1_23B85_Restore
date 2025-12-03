@interface BWVisionRequestInferenceCreator
+ (id)requestForDescriptor:(id)descriptor adapter:(id)adapter requestInitializationCustomizer:(id)customizer outStatus:(int *)status;
@end

@implementation BWVisionRequestInferenceCreator

+ (id)requestForDescriptor:(id)descriptor adapter:(id)adapter requestInitializationCustomizer:(id)customizer outStatus:(int *)status
{
  result = [objc_msgSend(adapter "visionRequestByDescriptor")];
  if (!result)
  {
    v11 = objc_alloc_init([descriptor requestClass]);
    [v11 setProcessingDevice:{objc_msgSend(descriptor, "processingDevice")}];
    if ([descriptor ioSurfaceMemoryPoolId])
    {
      [v11 setIoSurfaceMemoryPoolId:{objc_msgSend(descriptor, "ioSurfaceMemoryPoolId")}];
    }

    if ([descriptor revision] != -1)
    {
      [v11 setRevision:{objc_msgSend(descriptor, "revision")}];
    }

    if (customizer && (v12 = (*(customizer + 2))(customizer, v11)) != 0)
    {
      if (status)
      {
        *status = v12;
      }

      return 0;
    }

    else
    {
      [objc_msgSend(adapter "visionRequestByDescriptor")];
      if (status)
      {
        *status = 0;
      }

      return v11;
    }
  }

  return result;
}

@end