@interface BWNodeOutputMediaProperties
- (BWDataBufferPool)liveDataBufferPool;
- (BWDataBufferPool)preparedOrLiveDataBufferPool;
- (BWNodeOutputMediaProperties)init;
- (BWPixelBufferPool)livePixelBufferPool;
- (BWPixelBufferPool)preparedOrLivePixelBufferPool;
- (BWPointCloudFormat)resolvedPointCloudFormat;
- (BWVideoFormat)liveVideoFormat;
- (BWVideoFormat)resolvedVideoFormat;
- (void)_makePreparedDataBufferPoolLiveLocked;
- (void)_makePreparedPixelBufferPoolLiveLocked;
- (void)_setOwningNodeOutput:(id)output associatedAttachedMediaKey:(id)key;
- (void)dealloc;
- (void)setNodePreparedDataBufferPool:(id)pool;
- (void)setNodePreparedPixelBufferPool:(id)pool;
- (void)setPreparedSharedDataBufferPool:(id)pool;
- (void)setPreparedSharedPixelBufferPool:(id)pool;
- (void)setResolvedFormat:(id)format;
@end

@implementation BWNodeOutputMediaProperties

- (BWNodeOutputMediaProperties)init
{
  v3.receiver = self;
  v3.super_class = BWNodeOutputMediaProperties;
  result = [(BWNodeOutputMediaProperties *)&v3 init];
  if (result)
  {
    result->_bufferPoolsLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (BWPointCloudFormat)resolvedPointCloudFormat
{
  if ([(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsPointCloud])
  {
    return self->_resolvedFormat;
  }

  else
  {
    return 0;
  }
}

- (BWPixelBufferPool)preparedOrLivePixelBufferPool
{
  os_unfair_lock_lock(&self->_bufferPoolsLock);
  if ([(BWNodeOutputMediaProperties *)self preparedPixelBufferPool])
  {
    preparedPixelBufferPool = [(BWNodeOutputMediaProperties *)self preparedPixelBufferPool];
  }

  else
  {
    preparedPixelBufferPool = [(BWNodeOutputMediaProperties *)self livePixelBufferPool];
  }

  v4 = preparedPixelBufferPool;
  os_unfair_lock_unlock(&self->_bufferPoolsLock);
  return v4;
}

- (void)_makePreparedPixelBufferPoolLiveLocked
{
  os_unfair_lock_lock(&self->_bufferPoolsLock);
  [(BWNodeOutputMediaProperties *)self setLivePixelBufferPool:[(BWNodeOutputMediaProperties *)self preparedPixelBufferPool]];
  [(BWNodeOutputMediaProperties *)self setPreparedPixelBufferPool:0];

  os_unfair_lock_unlock(&self->_bufferPoolsLock);
}

- (BWVideoFormat)resolvedVideoFormat
{
  if ([(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsVideo])
  {
    return self->_resolvedFormat;
  }

  else
  {
    return 0;
  }
}

- (BWPixelBufferPool)livePixelBufferPool
{
  if ([-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self->_owningNodeOutput mediaConfigurationForAttachedMediaKey:{self->_associatedAttachedMediaKey), "providesPixelBufferPool"}] && !self->_livePixelBufferPool && !-[BWNodeOutput _passthroughModeForAttachedMediaKey:](self->_owningNodeOutput, "_passthroughModeForAttachedMediaKey:", self->_associatedAttachedMediaKey) && self->_liveFormat && -[BWNodeOutput mediaTypeIsVideo](self->_owningNodeOutput, "mediaTypeIsVideo"))
  {
    self->_livePixelBufferPool = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", self->_liveFormat, self->_livePixelBufferPoolSize, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ attached media key: %@", -[BWNodeOutput _poolName](&self->_owningNodeOutput->super.isa), self->_associatedAttachedMediaKey], -[BWNodeOutput memoryPool](self->_owningNodeOutput, "memoryPool"));
  }

  return self->_livePixelBufferPool;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWNodeOutputMediaProperties;
  [(BWNodeOutputMediaProperties *)&v3 dealloc];
}

- (void)_setOwningNodeOutput:(id)output associatedAttachedMediaKey:(id)key
{
  if (!output)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D920];
    v6 = @"Owning BWNodeOutput must not be nil";
    goto LABEL_8;
  }

  if (self->_owningNodeOutput)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D920];
    v6 = @"Can only be owned by one BWNodeOutput";
    goto LABEL_8;
  }

  if (!key)
  {
    v4 = MEMORY[0x1E695DF30];
    v5 = *MEMORY[0x1E695D940];
    v6 = @"Associated attached media key must not be nil";
LABEL_8:
    objc_exception_throw([v4 exceptionWithName:v5 reason:v6 userInfo:0]);
  }

  self->_owningNodeOutput = output;
  self->_associatedAttachedMediaKey = [key copy];
}

- (void)setResolvedFormat:(id)format
{
  resolvedFormat = self->_resolvedFormat;
  if (resolvedFormat != format)
  {

    self->_resolvedFormat = format;
    node = [(BWNodeOutput *)self->_owningNodeOutput node];
    associatedAttachedMediaKey = self->_associatedAttachedMediaKey;
    owningNodeOutput = self->_owningNodeOutput;

    [(BWNode *)node didSelectFormat:format forOutput:owningNodeOutput forAttachedMediaKey:associatedAttachedMediaKey];
  }
}

- (void)setNodePreparedPixelBufferPool:(id)pool
{
  if (![(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsVideo])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Can only be called for video media type";
    goto LABEL_10;
  }

  if ([-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self->_owningNodeOutput mediaConfigurationForAttachedMediaKey:{self->_associatedAttachedMediaKey), "providesPixelBufferPool"}])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Can only be called when providesPixelBufferPool = NO";
    goto LABEL_10;
  }

  if (self->_preparedPixelBufferPool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Already have prepared pixel buffer pool";
    goto LABEL_10;
  }

  if (!pool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Pool must not be nil";
LABEL_10:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:0]);
  }

  self->_preparedPixelBufferPool = pool;
}

- (void)setPreparedSharedPixelBufferPool:(id)pool
{
  if (![(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsVideo])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Can only be called for video media type";
    goto LABEL_12;
  }

  if (([-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self->_owningNodeOutput mediaConfigurationForAttachedMediaKey:{self->_associatedAttachedMediaKey), "providesPixelBufferPool"}] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Shared pools are not supported for providesPixelBufferPool = NO";
    goto LABEL_12;
  }

  if ([(BWNodeOutput *)self->_owningNodeOutput _passthroughModeForAttachedMediaKey:self->_associatedAttachedMediaKey]!= 2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Only outputs where passthroughMode = BWNodeOutputPassthroughModeConditional have shared pools";
    goto LABEL_12;
  }

  if (self->_preparedPixelBufferPool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Already have prepared pixel buffer pool";
    goto LABEL_12;
  }

  if (!pool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Shared pool must not be nil";
LABEL_12:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:0]);
  }

  self->_preparedPixelBufferPool = pool;
}

- (void)setNodePreparedDataBufferPool:(id)pool
{
  if (![(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsPointCloud])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Can only be called for point cloud media type";
    goto LABEL_10;
  }

  if ([-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self->_owningNodeOutput mediaConfigurationForAttachedMediaKey:{self->_associatedAttachedMediaKey), "providesDataBufferPool"}])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Can only be called when providesDataBufferPool = NO";
    goto LABEL_10;
  }

  if (self->_preparedDataBufferPool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Already have prepared data buffer pool";
    goto LABEL_10;
  }

  if (!pool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Pool must not be nil";
LABEL_10:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:0]);
  }

  self->_preparedDataBufferPool = pool;
}

- (void)setPreparedSharedDataBufferPool:(id)pool
{
  if (![(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsPointCloud])
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Can only be called for point cloud media type";
    goto LABEL_12;
  }

  if (([-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self->_owningNodeOutput mediaConfigurationForAttachedMediaKey:{self->_associatedAttachedMediaKey), "providesDataBufferPool"}] & 1) == 0)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Shared pools are not supported for providesDataBufferPool = NO";
    goto LABEL_12;
  }

  if ([(BWNodeOutput *)self->_owningNodeOutput _passthroughModeForAttachedMediaKey:self->_associatedAttachedMediaKey]!= 2)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Only outputs where passthroughMode = BWNodeOutputPassthroughModeConditional have shared pools";
    goto LABEL_12;
  }

  if (self->_preparedDataBufferPool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Already have prepared data buffer pool";
    goto LABEL_12;
  }

  if (!pool)
  {
    v5 = MEMORY[0x1E695DF30];
    v6 = *MEMORY[0x1E695D920];
    v7 = @"Shared pool must not be nil";
LABEL_12:
    objc_exception_throw([v5 exceptionWithName:v6 reason:v7 userInfo:0]);
  }

  self->_preparedDataBufferPool = pool;
}

- (BWVideoFormat)liveVideoFormat
{
  if ([(BWNodeOutput *)self->_owningNodeOutput mediaTypeIsVideo])
  {
    return self->_liveFormat;
  }

  else
  {
    return 0;
  }
}

- (BWDataBufferPool)liveDataBufferPool
{
  if ([-[BWNodeOutput mediaConfigurationForAttachedMediaKey:](self->_owningNodeOutput mediaConfigurationForAttachedMediaKey:{self->_associatedAttachedMediaKey), "providesDataBufferPool"}] && !self->_liveDataBufferPool && !-[BWNodeOutput _passthroughModeForAttachedMediaKey:](self->_owningNodeOutput, "_passthroughModeForAttachedMediaKey:", self->_associatedAttachedMediaKey) && self->_liveFormat && -[BWNodeOutput mediaTypeIsPointCloud](self->_owningNodeOutput, "mediaTypeIsPointCloud"))
  {
    self->_liveDataBufferPool = -[BWDataBufferPool initWithFormat:capacity:name:clientProvidesPool:]([BWDataBufferPool alloc], "initWithFormat:capacity:name:clientProvidesPool:", self->_liveFormat, self->_liveDataBufferPoolSize, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ attached media key: %@", -[BWNodeOutput _poolName](&self->_owningNodeOutput->super.isa), self->_associatedAttachedMediaKey], 0);
  }

  return self->_liveDataBufferPool;
}

- (void)_makePreparedDataBufferPoolLiveLocked
{
  os_unfair_lock_lock(&self->_bufferPoolsLock);
  [(BWNodeOutputMediaProperties *)self setLiveDataBufferPool:[(BWNodeOutputMediaProperties *)self preparedDataBufferPool]];
  [(BWNodeOutputMediaProperties *)self setPreparedDataBufferPool:0];

  os_unfair_lock_unlock(&self->_bufferPoolsLock);
}

- (BWDataBufferPool)preparedOrLiveDataBufferPool
{
  os_unfair_lock_lock(&self->_bufferPoolsLock);
  if ([(BWNodeOutputMediaProperties *)self preparedDataBufferPool])
  {
    preparedDataBufferPool = [(BWNodeOutputMediaProperties *)self preparedDataBufferPool];
  }

  else
  {
    preparedDataBufferPool = [(BWNodeOutputMediaProperties *)self liveDataBufferPool];
  }

  v4 = preparedDataBufferPool;
  os_unfair_lock_unlock(&self->_bufferPoolsLock);
  return v4;
}

@end