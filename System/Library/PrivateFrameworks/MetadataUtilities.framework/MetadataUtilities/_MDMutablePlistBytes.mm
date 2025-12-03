@interface _MDMutablePlistBytes
+ (__MDPlistBytes)createArrayPlistBytesUsingBlock:(id)block;
+ (__MDPlistBytes)createDictionaryPlistBytesUsingBlock:(id)block;
- (_MDMutablePlistBytes)initWithCapacity:(unint64_t)capacity;
- (_MDMutablePlistBytes)initWithCapacity:(unint64_t)capacity useMalloc:(BOOL)malloc zone:(_malloc_zone_t *)zone;
@end

@implementation _MDMutablePlistBytes

+ (__MDPlistBytes)createArrayPlistBytesUsingBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [[_MDMutablePlistBytes alloc] initWithCapacity:0 useMalloc:0];
  if (!v4)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v5 = v4;
  CFRetain(v4);

  _MDPlistBytesBeginPlist(v5);
  _MDPlistBytesBeginContainer(v5, 10);
  (*(block + 2))(block, v5);
  _MDPlistBytesEndArray(v5);
  _MDPlistBytesEndPlist(v5);
  if (*(v5 + 32))
  {
    CFRelease(v5);
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

+ (__MDPlistBytes)createDictionaryPlistBytesUsingBlock:(id)block
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [[_MDMutablePlistBytes alloc] initWithCapacity:0 useMalloc:0];
  if (!v4)
  {
    +[_MDPlistBytes createPlistBytes:];
  }

  v5 = v4;
  CFRetain(v4);

  _MDPlistBytesBeginPlist(v5);
  _MDPlistBytesBeginContainer(v5, 13);
  (*(block + 2))(block, v5);
  _MDPlistBytesEndDictionary(v5);
  _MDPlistBytesEndPlist(v5);
  if (*(v5 + 32))
  {
    CFRelease(v5);
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (_MDMutablePlistBytes)initWithCapacity:(unint64_t)capacity useMalloc:(BOOL)malloc zone:(_malloc_zone_t *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = _MDMutablePlistBytes;
  v8 = [(_MDMutablePlistBytes *)&v19 init];
  v9 = v8;
  if (v8)
  {
    v8->super._zone = zone;
    v10 = (capacity + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
    if (!capacity)
    {
      v10 = 2 * *MEMORY[0x1E69E9AC8];
    }

    if (v10 >= 0x70000000)
    {
      v11 = 1879048192;
    }

    else
    {
      v11 = v10;
    }

    v8->super._byteVectorCapacity = v11;
    if (malloc)
    {
      v8->super._byteVector = malloc_type_zone_malloc(zone, v11, 0xC1D74B50uLL);
      v12 = 8;
LABEL_14:
      *(&v9->super + 34) = *(&v9->super + 34) & 0xF7 | v12;
      v9->super._deallocator = &__block_literal_global_108;
      v9->super._uidCapacity = 256;
      v9->super._uidVector = malloc_type_valloc(0x800uLL, 0x100004000313F17uLL);
      v9->_currentUID = -1;
      byteVector = v9->super._byteVector;
      v9->_fillPtr = byteVector;
      v9->_limitPtr = (byteVector + v9->super._byteVectorCapacity);
      v9->_rleTagPtr = 0;
      *(&v9->super + 34) |= 1u;
      goto LABEL_15;
    }

    v13 = _fast_vm_allocate(&v8->super._byteVector, v11, -251658239);
    if (!v13)
    {
      v12 = 0;
      goto LABEL_14;
    }

    v14 = v13;
    v15 = _MDLogForCategoryDefault();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_MDMutablePlistBytes initWithCapacity:v14 useMalloc:v15 zone:?];
    }

    v9 = 0;
  }

LABEL_15:
  v17 = *MEMORY[0x1E69E9840];
  return v9;
}

- (_MDMutablePlistBytes)initWithCapacity:(unint64_t)capacity
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = malloc_default_zone();
  v6 = *MEMORY[0x1E69E9840];

  return [(_MDMutablePlistBytes *)self initWithCapacity:capacity useMalloc:0 zone:v5];
}

@end