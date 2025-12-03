@interface BWVisionRequestInferenceDescriptor
- (BOOL)isEqual:(id)equal;
- (BWVisionRequestInferenceDescriptor)initWithRequestClass:(Class)class processingDevice:(id)device ioSurfaceMemoryPoolId:(int64_t)id revision:(unint64_t)revision;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation BWVisionRequestInferenceDescriptor

- (BWVisionRequestInferenceDescriptor)initWithRequestClass:(Class)class processingDevice:(id)device ioSurfaceMemoryPoolId:(int64_t)id revision:(unint64_t)revision
{
  v13.receiver = self;
  v13.super_class = BWVisionRequestInferenceDescriptor;
  v10 = [(BWVisionRequestInferenceDescriptor *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_requestClass = class;
    v10->_processingDevice = device;
    v11->_ioSurfaceMemoryPoolId = id;
    v11->_revision = revision;
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
  requestCacheKey = [(BWVisionRequestInferenceDescriptor *)self requestCacheKey];

  return [(NSString *)requestCacheKey hash];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  requestCacheKey = [(BWVisionRequestInferenceDescriptor *)self requestCacheKey];
  requestCacheKey2 = [equal requestCacheKey];

  return [(NSString *)requestCacheKey isEqualToString:requestCacheKey2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [BWVisionRequestInferenceDescriptor allocWithZone:zone];
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