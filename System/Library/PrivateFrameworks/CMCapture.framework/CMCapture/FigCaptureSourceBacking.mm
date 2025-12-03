@interface FigCaptureSourceBacking
- (FigCaptureSourceBacking)initWithMediaType:(unsigned int)type attributes:(id)attributes cachedProperties:(id)properties formats:(id)formats missingFormatNames:(id)names synchronizedStreamUniqueIDs:(id)ds unsynchronizedStreamUniqueIDs:(id)iDs;
- (NSDictionary)cachedProperties;
- (void)dealloc;
- (void)updateCachedProperties:(uint64_t)properties;
@end

@implementation FigCaptureSourceBacking

- (NSDictionary)cachedProperties
{
  os_unfair_lock_lock(&self->_cachedPropertiesLock);
  v3 = [(NSMutableDictionary *)self->_cachedProperties copy];
  os_unfair_lock_unlock(&self->_cachedPropertiesLock);
  return v3;
}

- (FigCaptureSourceBacking)initWithMediaType:(unsigned int)type attributes:(id)attributes cachedProperties:(id)properties formats:(id)formats missingFormatNames:(id)names synchronizedStreamUniqueIDs:(id)ds unsynchronizedStreamUniqueIDs:(id)iDs
{
  v18.receiver = self;
  v18.super_class = FigCaptureSourceBacking;
  v15 = [(FigCaptureSourceBacking *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_mediaType = type;
    v15->_attributes = attributes;
    v16->_cachedProperties = [properties mutableCopy];
    v16->_cachedPropertiesLock._os_unfair_lock_opaque = 0;
    v16->_formats = formats;
    v16->_missingFormatNames = names;
    v16->_synchronizedStreamUniqueIDs = ds;
    v16->_unsynchronizedStreamUniqueIDs = iDs;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureSourceBacking;
  [(FigCaptureSourceBacking *)&v3 dealloc];
}

- (void)updateCachedProperties:(uint64_t)properties
{
  if (properties)
  {
    os_unfair_lock_lock((properties + 32));
    v4 = *(properties + 24);
    if (!v4)
    {
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(properties + 24) = v4;
    }

    [v4 addEntriesFromDictionary:a2];

    os_unfair_lock_unlock((properties + 32));
  }
}

@end