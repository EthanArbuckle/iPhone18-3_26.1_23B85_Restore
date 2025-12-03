@interface OSASymbolInfo
- (OSASymbolInfo)initWithAddress:(unint64_t)address size:(unint64_t)size for:(unsigned __int8)for[16];
- (OSASymbolInfo)initWithSharedCache:(unsigned __int8)cache[16] atBaseAddress:(unint64_t)address;
- (id)get_uuid;
- (void)setPath:(id)path;
@end

@implementation OSASymbolInfo

- (id)get_uuid
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  uuid_unparse_lower(self->_uuid, v5);
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (OSASymbolInfo)initWithAddress:(unint64_t)address size:(unint64_t)size for:(unsigned __int8)for[16]
{
  v9.receiver = self;
  v9.super_class = OSASymbolInfo;
  result = [(OSASymbolInfo *)&v9 init];
  if (result)
  {
    if (for)
    {
      *result->_uuid = *for;
    }

    result->_start = address;
    result->_size = size;
  }

  return result;
}

- (OSASymbolInfo)initWithSharedCache:(unsigned __int8)cache[16] atBaseAddress:(unint64_t)address
{
  v20.receiver = self;
  v20.super_class = OSASymbolInfo;
  v6 = [(OSASymbolInfo *)&v20 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = *cache;
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    *(v6 + 5) = address;
    v8 = v6;
    dyld_shared_cache_iterate_text();
    v9 = v17[3];
    start = v7->_start;
    v11 = v9 > start;
    v12 = v9 - start;
    if (!v11)
    {
      v12 = 0x40000000;
    }

    *(v8 + 6) = v12;

    _Block_object_dispose(v14, 8);
    _Block_object_dispose(&v16, 8);
  }

  return v7;
}

void *__51__OSASymbolInfo_initWithSharedCache_atBaseAddress___block_invoke(void *result, uint64_t a2)
{
  v2 = result[4];
  v3 = *(a2 + 8);
  if (*(v2 + 40) - 1 >= v3)
  {
    *(v2 + 40) = v3;
    v3 = *(a2 + 8);
  }

  v4 = *(a2 + 16) + v3;
  v5 = *(result[5] + 8);
  if (v4 > *(v5 + 24))
  {
    *(v5 + 24) = v4;
  }

  ++*(*(result[6] + 8) + 24);
  return result;
}

- (void)setPath:(id)path
{
  objc_storeStrong(&self->_path, path);
  pathCopy = path;
  v6 = [OSABinaryImageCatalog isApplePath:pathCopy orBundle:0];

  self->_isAppleCode = v6;
}

@end