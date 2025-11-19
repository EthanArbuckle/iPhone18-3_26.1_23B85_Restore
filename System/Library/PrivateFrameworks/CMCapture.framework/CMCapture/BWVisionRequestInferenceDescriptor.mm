@interface BWVisionRequestInferenceDescriptor
- (BOOL)isEqual:(id)a3;
- (BWVisionRequestInferenceDescriptor)initWithRequestClass:(Class)a3 processingDevice:(id)a4 ioSurfaceMemoryPoolId:(int64_t)a5 revision:(unint64_t)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation BWVisionRequestInferenceDescriptor

- (BWVisionRequestInferenceDescriptor)initWithRequestClass:(Class)a3 processingDevice:(id)a4 ioSurfaceMemoryPoolId:(int64_t)a5 revision:(unint64_t)a6
{
  v13.receiver = self;
  v13.super_class = BWVisionRequestInferenceDescriptor;
  v10 = [(BWVisionRequestInferenceDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_requestClass = a3;
    v10->_processingDevice = a4;
    v11->_ioSurfaceMemoryPoolId = a5;
    v11->_revision = a6;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVisionRequestInferenceDescriptor;
  [(BWVisionRequestInferenceDescriptor *)&v3 dealloc];
}

- (unint64_t)hash
{
  v2 = [(BWVisionRequestInferenceDescriptor *)self requestCacheKey];

  return [(NSString *)v2 hash];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(BWVisionRequestInferenceDescriptor *)self requestCacheKey];
  v6 = [a3 requestCacheKey];

  return [(NSString *)v5 isEqualToString:v6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BWVisionRequestInferenceDescriptor allocWithZone:a3];
  requestClass = self->_requestClass;
  processingDevice = self->_processingDevice;
  ioSurfaceMemoryPoolId = self->_ioSurfaceMemoryPoolId;
  revision = self->_revision;

  return [(BWVisionRequestInferenceDescriptor *)v4 initWithRequestClass:requestClass processingDevice:processingDevice ioSurfaceMemoryPoolId:ioSurfaceMemoryPoolId revision:revision];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p; requestClass = %@; revision = %lu; cacheKey = %@>", v4, self, NSStringFromClass(self->_requestClass), self->_revision, -[BWVisionRequestInferenceDescriptor requestCacheKey](self, "requestCacheKey")];
}

@end