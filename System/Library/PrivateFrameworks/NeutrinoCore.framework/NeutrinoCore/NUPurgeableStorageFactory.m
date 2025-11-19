@interface NUPurgeableStorageFactory
- (NSString)debugDescription;
- (NUPurgeableStorageFactory)initWithStorageClass:(Class)a3 storagePool:(id)a4;
- (NUPurgeableStorageFactory)initWithStoragePool:(id)a3;
- (id)newStorageWithSize:(id)a3 format:(id)a4;
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

- (id)newStorageWithSize:(id)a3 format:(id)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if (!v7)
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
        v20 = [MEMORY[0x1E696AF00] callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v19;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUPurgeableStorageFactory newStorageWithSize:format:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Image/NUImageStorage.mm", 255, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "pixelFormat");
  }

  storagePool = self->_storagePool;
  if (storagePool)
  {
    v9 = [(NUPurgeableStoragePool *)storagePool newStorageWithSize:var0 format:var1, v7];
  }

  else
  {
    v9 = [objc_alloc(self->_storageClass) initWithSize:var0 format:{var1, v7}];
  }

  v10 = v9;

  return v10;
}

- (NUPurgeableStorageFactory)initWithStorageClass:(Class)a3 storagePool:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = NUPurgeableStorageFactory;
  v7 = [(NUPurgeableStorageFactory *)&v10 init];
  storagePool = v7->_storagePool;
  v7->_storageClass = a3;
  v7->_storagePool = v6;

  return v7;
}

- (NUPurgeableStorageFactory)initWithStoragePool:(id)a3
{
  v4 = a3;
  v5 = -[NUPurgeableStorageFactory initWithStorageClass:storagePool:](self, "initWithStorageClass:storagePool:", [v4 storageClass], v4);

  return v5;
}

@end