@interface BWNodeError
+ (id)newError:(int)a3 sourceNode:(id)a4;
+ (id)newError:(int)a3 sourceNode:(id)a4 recordingSettings:(id)a5;
+ (id)newError:(int)a3 sourceNode:(id)a4 stillImageSettings:(id)a5 metadata:(id)a6;
- (id)description;
- (void)_initWithError:(void *)a3 sourceNode:(void *)a4 stillImageSettings:(void *)a5 recordingSettings:(void *)a6 metadata:;
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

- (void)_initWithError:(void *)a3 sourceNode:(void *)a4 stillImageSettings:(void *)a5 recordingSettings:(void *)a6 metadata:
{
  if (!a1)
  {
    return 0;
  }

  v14.receiver = a1;
  v14.super_class = BWNodeError;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = v11;
  if (v11)
  {
    v11[1] = (atomic_fetch_add_explicit(uniqueIDCount, 1u, memory_order_relaxed) + 1);
    *(v11 + 4) = a2;
    v11[3] = [objc_msgSend(a3 "description")];
    v12[4] = a4;
    v12[5] = a5;
    v12[6] = [a6 copy];
  }

  return v12;
}

+ (id)newError:(int)a3 sourceNode:(id)a4
{
  v6 = [BWNodeError alloc];

  return [(BWNodeError *)v6 _initWithError:a3 sourceNode:a4 stillImageSettings:0 recordingSettings:0 metadata:0];
}

+ (id)newError:(int)a3 sourceNode:(id)a4 stillImageSettings:(id)a5 metadata:(id)a6
{
  v10 = [BWNodeError alloc];

  return [(BWNodeError *)v10 _initWithError:a3 sourceNode:a4 stillImageSettings:a5 recordingSettings:0 metadata:a6];
}

+ (id)newError:(int)a3 sourceNode:(id)a4 recordingSettings:(id)a5
{
  v8 = [BWNodeError alloc];

  return [(BWNodeError *)v8 _initWithError:a3 sourceNode:a4 stillImageSettings:0 recordingSettings:a5 metadata:0];
}

@end