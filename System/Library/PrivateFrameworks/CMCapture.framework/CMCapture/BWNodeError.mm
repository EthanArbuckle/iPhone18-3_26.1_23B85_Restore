@interface BWNodeError
+ (id)newError:(int)error sourceNode:(id)node;
+ (id)newError:(int)error sourceNode:(id)node recordingSettings:(id)settings;
+ (id)newError:(int)error sourceNode:(id)node stillImageSettings:(id)settings metadata:(id)metadata;
- (id)description;
- (void)_initWithError:(void *)error sourceNode:(void *)node stillImageSettings:(void *)settings recordingSettings:(void *)recordingSettings metadata:;
- (void)dealloc;
@end

@implementation BWNodeError

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeError;
  [(BWNodeError *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@ %p>: err:%d captureID:%lld, captureType=%@", v4, self, self->_errorCode, -[BWStillImageSettings settingsID](self->_stillImageSettings, "settingsID"), BWPhotoEncoderStringFromEncodingScheme(-[BWStillImageCaptureSettings captureType](-[BWStillImageSettings captureSettings](self->_stillImageSettings, "captureSettings"), "captureType"))];
}

- (void)_initWithError:(void *)error sourceNode:(void *)node stillImageSettings:(void *)settings recordingSettings:(void *)recordingSettings metadata:
{
  if (!self)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = BWNodeError;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = v11;
  if (v11)
  {
    v11[1] = (atomic_fetch_add_explicit(uniqueIDCount, 1u, memory_order_relaxed) + 1);
    *(v11 + 4) = a2;
    v11[3] = [objc_msgSend(error "description")];
    v12[4] = node;
    v12[5] = settings;
    v12[6] = [recordingSettings copy];
  }

  return v12;
}

+ (id)newError:(int)error sourceNode:(id)node
{
  v6 = [BWNodeError alloc];

  return [(BWNodeError *)v6 _initWithError:error sourceNode:node stillImageSettings:0 recordingSettings:0 metadata:0];
}

+ (id)newError:(int)error sourceNode:(id)node stillImageSettings:(id)settings metadata:(id)metadata
{
  v10 = [BWNodeError alloc];

  return [(BWNodeError *)v10 _initWithError:error sourceNode:node stillImageSettings:settings recordingSettings:0 metadata:metadata];
}

+ (id)newError:(int)error sourceNode:(id)node recordingSettings:(id)settings
{
  v8 = [BWNodeError alloc];

  return [(BWNodeError *)v8 _initWithError:error sourceNode:node stillImageSettings:0 recordingSettings:settings metadata:0];
}

@end