@interface FigCaptureSourceBacking
- (FigCaptureSourceBacking)initWithMediaType:(unsigned int)a3 attributes:(id)a4 cachedProperties:(id)a5 formats:(id)a6 missingFormatNames:(id)a7 synchronizedStreamUniqueIDs:(id)a8 unsynchronizedStreamUniqueIDs:(id)a9;
- (NSDictionary)cachedProperties;
- (void)dealloc;
- (void)updateCachedProperties:(uint64_t)a1;
@end

@implementation FigCaptureSourceBacking

- (NSDictionary)cachedProperties
{
  os_unfair_lock_lock(&self->_cachedPropertiesLock);
  v3 = [(NSMutableDictionary *)self->_cachedProperties copy];
  os_unfair_lock_unlock(&self->_cachedPropertiesLock);
  return v3;
}

- (FigCaptureSourceBacking)initWithMediaType:(unsigned int)a3 attributes:(id)a4 cachedProperties:(id)a5 formats:(id)a6 missingFormatNames:(id)a7 synchronizedStreamUniqueIDs:(id)a8 unsynchronizedStreamUniqueIDs:(id)a9
{
  v18.receiver = self;
  v18.super_class = FigCaptureSourceBacking;
  v15 = [(FigCaptureSourceBacking *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_mediaType = a3;
    v15->_attributes = a4;
    v16->_cachedProperties = [a5 mutableCopy];
    v16->_cachedPropertiesLock._os_unfair_lock_opaque = 0;
    v16->_formats = a6;
    v16->_missingFormatNames = a7;
    v16->_synchronizedStreamUniqueIDs = a8;
    v16->_unsynchronizedStreamUniqueIDs = a9;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceBacking;
  [(FigCaptureSourceBacking *)&v3 dealloc];
}

- (void)updateCachedProperties:(uint64_t)a1
{
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v4 = *(a1 + 24);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(a1 + 24) = v4;
    }

    [v4 addEntriesFromDictionary:a2];

    os_unfair_lock_unlock((a1 + 32));
  }
}

@end