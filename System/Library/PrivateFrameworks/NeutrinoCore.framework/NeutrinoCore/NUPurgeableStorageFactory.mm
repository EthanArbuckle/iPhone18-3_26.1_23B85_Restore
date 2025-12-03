@interface NUPurgeableStorageFactory
- (NSString)debugDescription;
- (NUPurgeableStorageFactory)initWithStorageClass:(Class)class storagePool:(id)pool;
- (NUPurgeableStorageFactory)initWithStoragePool:(id)pool;
- (id)newStorageWithSize:(id)size format:(id)format;
@end

@implementation NUPurgeableStorageFactory

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(NUPurgeableStoragePool *)self->_storagePool debugDescription];
  v7 = [v3 stringWithFormat:@"<%@: 0x%p> %@", v5, self, v6];

  return v7;
}

- (id)newStorageWithSize:(id)size format:(id)format
{
  var1 = size.var1;
  var0 = size.var0;
  v30 = *MEMORY[0x1E69E9840];
  formatCopy = format;
  if (!formatCopy)
  {
    v12 = NUAssertLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "pixelFormat"];
      *buf = 138543362;
      v27 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v19;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPurgeableStorageFactory newStorageWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 255, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "pixelFormat");
  }

  storagePool = self->_storagePool;
  if (storagePool)
  {
    formatCopy = [(NUPurgeableStoragePool *)storagePool newStorageWithSize:var0 format:var1, formatCopy];
  }

  else
  {
    formatCopy = [objc_alloc(self->_storageClass) initWithSize:var0 format:{var1, formatCopy}];
  }

  v10 = formatCopy;

  return v10;
}

- (NUPurgeableStorageFactory)initWithStorageClass:(Class)class storagePool:(id)pool
{
  poolCopy = pool;
  v10.receiver = self;
  v10.super_class = NUPurgeableStorageFactory;
  v7 = [(NUPurgeableStorageFactory *)&v10 init];
  storagePool = v7->_storagePool;
  v7->_storageClass = class;
  v7->_storagePool = poolCopy;

  return v7;
}

- (NUPurgeableStorageFactory)initWithStoragePool:(id)pool
{
  poolCopy = pool;
  v5 = -[NUPurgeableStorageFactory initWithStorageClass:storagePool:](self, "initWithStorageClass:storagePool:", [poolCopy storageClass], poolCopy);

  return v5;
}

@end