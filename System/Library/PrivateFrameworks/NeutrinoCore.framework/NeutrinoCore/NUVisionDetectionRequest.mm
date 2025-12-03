@interface NUVisionDetectionRequest
+ (void)warmUpRequests:(id)requests;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newRenderJob;
- (id)submitGenericSynchronous:(id *)synchronous;
- (void)_commonInit;
@end

@implementation NUVisionDetectionRequest

- (id)submitGenericSynchronous:(id *)synchronous
{
  v5.receiver = self;
  v5.super_class = NUVisionDetectionRequest;
  v3 = [(NURenderRequest *)&v5 submitGenericSynchronous:synchronous];

  return v3;
}

- (id)newRenderJob
{
  v3 = [NUVisionDetectionJob alloc];

  return [(NUVisionDetectionJob *)v3 initWithVisionDetectionRequest:self];
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = NUVisionDetectionRequest;
  v3 = [(NURenderRequest *)&v7 description];
  scalePolicy = [(NUVisionDetectionRequest *)self scalePolicy];
  v5 = [v3 stringByAppendingFormat:@" Scale Policy: %@", scalePolicy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = NUVisionDetectionRequest;
  v5 = [(NURenderRequest *)&v10 copyWithZone:?];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(v5 + 20, self->_scalePolicy);
    v7 = [(NSArray *)self->_visionRequests copyWithZone:zone];
    v8 = v6[21];
    v6[21] = v7;
  }

  return v6;
}

- (void)_commonInit
{
  v6.receiver = self;
  v6.super_class = NUVisionDetectionRequest;
  [(NURenderRequest *)&v6 _commonInit];
  v3 = +[NUFixedScalePolicy oneToOneScalePolicy];
  scalePolicy = self->_scalePolicy;
  self->_scalePolicy = v3;

  visionRequests = self->_visionRequests;
  self->_visionRequests = MEMORY[0x1E695E0F0];

  [(NURenderRequest *)self setSampleMode:2];
}

+ (void)warmUpRequests:(id)requests
{
  v11 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  v4 = +[NUFactory sharedFactory];
  visionSession = [v4 visionSession];

  v8 = 0;
  LOBYTE(v4) = [visionSession prepareForPerformingRequests:requestsCopy error:&v8];

  v6 = v8;
  if ((v4 & 1) == 0)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_17701);
    }

    v7 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Failed to warm up Vision requests, error: %{public}@", buf, 0xCu);
    }
  }
}

@end