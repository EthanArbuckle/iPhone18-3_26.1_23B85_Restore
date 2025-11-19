@interface BWVisionRequestInferenceCreator
+ (id)requestForDescriptor:(id)a3 adapter:(id)a4 requestInitializationCustomizer:(id)a5 outStatus:(int *)a6;
@end

@implementation BWVisionRequestInferenceCreator

+ (id)requestForDescriptor:(id)a3 adapter:(id)a4 requestInitializationCustomizer:(id)a5 outStatus:(int *)a6
{
  result = [objc_msgSend(a4 "visionRequestByDescriptor")];
  if (!result)
  {
    v11 = objc_alloc_init([a3 requestClass]);
    [v11 setProcessingDevice:{objc_msgSend(a3, "processingDevice")}];
    if ([a3 ioSurfaceMemoryPoolId])
    {
      [v11 setIoSurfaceMemoryPoolId:{objc_msgSend(a3, "ioSurfaceMemoryPoolId")}];
    }

    if ([a3 revision] != -1)
    {
      [v11 setRevision:{objc_msgSend(a3, "revision")}];
    }

    if (a5 && (v12 = (*(a5 + 2))(a5, v11)) != 0)
    {
      if (a6)
      {
        *a6 = v12;
      }

      return 0;
    }

    else
    {
      [objc_msgSend(a4 "visionRequestByDescriptor")];
      if (a6)
      {
        *a6 = 0;
      }

      return v11;
    }
  }

  return result;
}

@end