@interface PKImageSetXPCContainer
- (PKImageSetXPCContainer)initWithCoder:(id)a3;
- (PKImageSetXPCContainer)initWithWithXPCObject:(id)a3 hash:(id)a4;
- (PKImageSetXPCContainer)initWithWithXPCObject:(id)a3 length:(unint64_t)a4 isSharedMemory:(BOOL)a5 offset:(unint64_t)a6 hash:(id)a7;
- (id)consumeImageSet;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
@end

@implementation PKImageSetXPCContainer

- (id)consumeImageSet
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = self->_data;
  if (!v3)
  {
    goto LABEL_26;
  }

  isShmem = self->_isShmem;
  length = self->_length;
  self->_length = 0;
  offset = self->_offset;
  data = self->_data;
  self->_offset = 0;
  self->_data = 0;

  if (length < offset)
  {
    goto LABEL_26;
  }

  region = 0;
  if (isShmem)
  {
    v8 = xpc_shmem_map(v3, &region);
    bytes_ptr = region;
    if (!region)
    {
      goto LABEL_26;
    }
  }

  else
  {
    bytes_ptr = xpc_data_get_bytes_ptr(v3);
    region = bytes_ptr;
    v8 = xpc_data_get_length(v3);
    if (!bytes_ptr)
    {
LABEL_26:
      v18 = 0;
      goto LABEL_27;
    }
  }

  if (length - 1 >= v8 || (v10 = length > offset, v11 = length - offset, !v10))
  {
    if (isShmem && munmap(bytes_ptr, v8))
    {
      v22 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1AD337000, v22, OS_LOG_TYPE_FAULT, "Failed to unmap file! Leaking mapping...", buf, 2u);
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AD337000, v22, OS_LOG_TYPE_DEFAULT, "Failed to unmap file! Leaking mapping...", buf, 2u);
      }
    }

    goto LABEL_26;
  }

  v12 = objc_autoreleasePoolPush();
  v13 = objc_alloc(MEMORY[0x1E695DEF0]);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __41__PKImageSetXPCContainer_consumeImageSet__block_invoke;
  v26[3] = &__block_descriptor_49_e12_v24__0_v8Q16l;
  v27 = isShmem;
  v26[4] = region;
  v26[5] = v8;
  v14 = [v13 initWithBytesNoCopy:region + offset length:v11 deallocator:v26];
  v25 = 0;
  v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v14 error:&v25];
  v16 = v25;
  v17 = v16;
  v18 = 0;
  if (v15 && !v16)
  {
    v19 = objc_opt_class();
    v20 = *MEMORY[0x1E696A508];
    v24 = 0;
    v18 = [v15 decodeTopLevelObjectOfClass:v19 forKey:v20 error:&v24];
    v17 = v24;
  }

  [v15 finishDecoding];
  if (!v18 || v17)
  {
    v21 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v30 = self;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_1AD337000, v21, OS_LOG_TYPE_DEFAULT, "PKImageSetXPCContainer (%p): failed to extract wrapped image set. %@.", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v12);
LABEL_27:

  return v18;
}

void __41__PKImageSetXPCContainer_consumeImageSet__block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v6 = v1;
    v7 = v2;
    if (munmap(*(a1 + 32), *(a1 + 40)))
    {
      v3 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_1AD337000, v3, OS_LOG_TYPE_FAULT, "Failed to unmap file! Leaking mapping...", buf, 2u);
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v4 = 0;
        _os_log_impl(&dword_1AD337000, v3, OS_LOG_TYPE_DEFAULT, "Failed to unmap file! Leaking mapping...", v4, 2u);
      }
    }
  }
}

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    data = self->_data;
    if (data)
    {
      self->_length = 0;
      self->_offset = 0;
      self->_data = 0;
    }

    imageSetHash = self->_imageSetHash;
    if (imageSetHash)
    {
      self->_imageSetHash = 0;
    }

    self->_isShmem = 0;
  }
}

- (PKImageSetXPCContainer)initWithWithXPCObject:(id)a3 hash:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    length = xpc_data_get_length(v6);
  }

  else
  {
    length = 0;
  }

  v9 = [(PKImageSetXPCContainer *)self initWithWithXPCObject:v6 length:length isSharedMemory:0 offset:0 hash:v7];

  return v9;
}

- (PKImageSetXPCContainer)initWithWithXPCObject:(id)a3 length:(unint64_t)a4 isSharedMemory:(BOOL)a5 offset:(unint64_t)a6 hash:(id)a7
{
  v13 = a3;
  v14 = a7;
  v20.receiver = self;
  v20.super_class = PKImageSetXPCContainer;
  v15 = [(PKImageSetXPCContainer *)&v20 init];
  v16 = v15;
  if (v15)
  {
    v15->_length = a4;
    v15->_isShmem = a5;
    if (v13)
    {
      objc_storeStrong(&v15->_data, a3);
    }

    v16->_offset = a6;
    v17 = [v14 copy];
    imageSetHash = v16->_imageSetHash;
    v16->_imageSetHash = v17;
  }

  return v16;
}

- (PKImageSetXPCContainer)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKImageSetXPCContainer;
  v5 = [(PKImageSetXPCContainer *)&v17 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"length"];
    v5->_length = [v7 unsignedIntegerValue];

    v8 = [v4 decodeBoolForKey:@"isShmem"];
    v5->_isShmem = v8;
    if (v8)
    {
      v9 = MEMORY[0x1E69E9F08];
    }

    else
    {
      v9 = MEMORY[0x1E69E9E70];
    }

    v10 = [v4 decodeXPCObjectOfType:v9 forKey:@"data"];
    data = v5->_data;
    v5->_data = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"offset"];
    v5->_offset = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageSetHash"];
    imageSetHash = v5->_imageSetHash;
    v5->_imageSetHash = v13;

    if (v5->_offset > v5->_length)
    {
      v15 = v5->_data;
      v5->_offset = 0;
      v5->_data = 0;
      v5->_length = 0;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  length = self->_length;
  v8 = a3;
  v6 = [v4 numberWithUnsignedInteger:length];
  [v8 encodeObject:v6 forKey:@"length"];

  [v8 encodeBool:self->_isShmem forKey:@"isShmem"];
  [v8 encodeXPCObject:self->_data forKey:@"data"];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_offset];
  [v8 encodeObject:v7 forKey:@"offset"];

  [v8 encodeObject:self->_imageSetHash forKey:@"imageSetHash"];
}

@end