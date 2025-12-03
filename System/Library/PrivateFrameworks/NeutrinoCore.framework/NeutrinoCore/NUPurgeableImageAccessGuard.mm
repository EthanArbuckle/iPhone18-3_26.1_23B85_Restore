@interface NUPurgeableImageAccessGuard
- (NUPurgeableImageAccessGuard)initWithRegion:(id)region image:(id)image;
- (void)_beginAccess;
- (void)_endAccess;
- (void)dealloc;
@end

@implementation NUPurgeableImageAccessGuard

- (void)_endAccess
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = self->_accessImage;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_352_13633);
  }

  v4 = _NURenderLogger;
  if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_DEBUG))
  {
    accessRegion = self->_accessRegion;
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = accessRegion;
    _os_log_debug_impl(&dword_1C0184000, v4, OS_LOG_TYPE_DEBUG, "endAccess %p %{public}@", &v6, 0x16u);
  }

  [(NUPurgeableImage *)v3 endAccessRegion:self->_accessRegion];
}

- (void)_beginAccess
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = self->_accessImage;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_352_13633);
  }

  v4 = _NURenderLogger;
  if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_DEBUG))
  {
    accessRegion = self->_accessRegion;
    v6 = 134218242;
    v7 = v3;
    v8 = 2114;
    v9 = accessRegion;
    _os_log_debug_impl(&dword_1C0184000, v4, OS_LOG_TYPE_DEBUG, "beginAccess %p %{public}@", &v6, 0x16u);
  }

  [(NUPurgeableImage *)v3 beginAccessRegion:self->_accessRegion];
}

- (void)dealloc
{
  [(NUPurgeableImageAccessGuard *)self _endAccess];
  v3.receiver = self;
  v3.super_class = NUPurgeableImageAccessGuard;
  [(NUPurgeableImageAccessGuard *)&v3 dealloc];
}

- (NUPurgeableImageAccessGuard)initWithRegion:(id)region image:(id)image
{
  regionCopy = region;
  imageCopy = image;
  v12.receiver = self;
  v12.super_class = NUPurgeableImageAccessGuard;
  v8 = [(NUPurgeableImageAccessGuard *)&v12 init];
  v9 = [regionCopy copy];
  accessRegion = v8->_accessRegion;
  v8->_accessRegion = v9;

  objc_storeStrong(&v8->_accessImage, image);
  [(NUPurgeableImageAccessGuard *)v8 _beginAccess];

  return v8;
}

@end