@interface RESharedMemoryTexturePayload
- (RESharedMemoryTexturePayload)initWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor;
- (RESharedMemoryTexturePayload)initWithCoder:(id)coder;
@end

@implementation RESharedMemoryTexturePayload

- (RESharedMemoryTexturePayload)initWithBytesNoCopy:(void *)copy length:(unint64_t)length descriptor:(id)descriptor
{
  v11.receiver = self;
  v11.super_class = RESharedMemoryTexturePayload;
  v5 = [(RESharedResourcePayload *)&v11 init:copy];
  v6 = v5;
  if (v5 && !v5->_data)
  {
    v8 = *re::assetTypesLogObjects(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v10 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "Expected data to be non-nil", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (RESharedMemoryTexturePayload)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RESharedMemoryTexturePayload;
  v5 = [(RESharedResourcePayload *)&v13 initWithCoder:coderCopy];
  if (v5 && ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "_createDispatchData"), data = v5->_data, v5->_data = v7, data, v6, !v5->_data))
  {
    v11 = *re::assetTypesLogObjects(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_fault_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_FAULT, "Failed to decode data object for %@", buf, 0xCu);
    }

    v10 = 0;
  }

  else
  {
    v10 = v5;
  }

  return v10;
}

@end