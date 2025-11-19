@interface REDrawableQueuePayload
- (REDrawableQueuePayload)initWithCoder:(id)a3;
- (REDrawableQueuePayload)initWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(unint64_t)a5 textureHandles:(id)a6 allowPixelFormatConversion:(BOOL)a7 machSemaphore:(unsigned int)a8 queueStateShmem:(void *)region queueStateLength:(unint64_t)length;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REDrawableQueuePayload

- (REDrawableQueuePayload)initWithWidth:(unsigned int)a3 height:(unsigned int)a4 pixelFormat:(unint64_t)a5 textureHandles:(id)a6 allowPixelFormatConversion:(BOOL)a7 machSemaphore:(unsigned int)a8 queueStateShmem:(void *)region queueStateLength:(unint64_t)length
{
  v16 = a6;
  v29.receiver = self;
  v29.super_class = REDrawableQueuePayload;
  v17 = [(RESharedResourcePayload *)&v29 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_8;
  }

  v17->_width = a3;
  v17->_height = a4;
  v17->_pixelFormat = a5;
  v19 = [v16 copy];
  textureHandles = v18->_textureHandles;
  v18->_textureHandles = v19;

  if (![(NSArray *)v18->_textureHandles count])
  {
    v25 = *re::assetTypesLogObjects(0);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v28[0] = 0;
    v26 = "Expected non-empty array of texture handles";
LABEL_17:
    _os_log_fault_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_FAULT, v26, v28, 2u);
    goto LABEL_18;
  }

  if (!region || !length)
  {
    v25 = *re::assetTypesLogObjects(region);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v28[0] = 0;
    v26 = "Expected non-empty queue state shmem region";
    goto LABEL_17;
  }

  v21 = xpc_shmem_create(region, length);
  queueStateShmem = v18->_queueStateShmem;
  v18->_queueStateShmem = v21;

  if (!v18->_queueStateShmem)
  {
    v25 = *re::assetTypesLogObjects(v23);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_18;
    }

    v28[0] = 0;
    v26 = "Failed to create xpc_shmem object";
    goto LABEL_17;
  }

  v18->_machSemaphore = a8;
  if (!a8)
  {
    v25 = *re::assetTypesLogObjects(v23);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v28[0] = 0;
      v26 = "Expected non-empty machSemaphore object";
      goto LABEL_17;
    }

LABEL_18:
    v24 = 0;
    goto LABEL_19;
  }

  v18->_allowPixelFormatConversion = a7;
LABEL_8:
  v24 = v18;
LABEL_19:

  return v24;
}

- (REDrawableQueuePayload)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = REDrawableQueuePayload;
  v5 = [(RESharedResourcePayload *)&v25 initWithCoder:v4];
  if (!v5)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
    v10 = {;
    [v4 failWithError:v10];
LABEL_16:

    v20 = 0;
    goto LABEL_17;
  }

  v7 = [v4 decodeIntegerForKey:@"width"];
  v5->_width = v7;
  v8 = [v4 decodeIntegerForKey:@"height"];
  v5->_height = v8;
  v5->_pixelFormat = [v4 decodeIntegerForKey:@"pixelFormat"];
  if (HIDWORD(v8) || HIDWORD(v7))
    v10 = {;
    [v4 failWithError:v10];
    goto LABEL_16;
  }

  v10 = v4;
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  v14 = [v10 decodeObjectOfClasses:v13 forKey:@"textureHandles"];
  textureHandles = v5->_textureHandles;
  v5->_textureHandles = v14;

  v5->_allowPixelFormatConversion = [v10 decodeBoolForKey:@"allowPixelFormatConversion"];
  v16 = [v10 decodeXPCObjectOfType:MEMORY[0x1E69E9EC0] forKey:@"drawableQueueMachSemaphore"];
  if (!v16)
  {
    v22 = *re::assetTypesLogObjects(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_FAULT, "Unable to get decode a mach semaphore", buf, 2u);
    }

    goto LABEL_15;
  }

  v5->_machSemaphore = xpc_mach_send_copy_right();
  v17 = [v10 decodeXPCObjectOfType:MEMORY[0x1E69E9F08] forKey:@"queueStateShmem"];
  queueStateShmem = v5->_queueStateShmem;
  v5->_queueStateShmem = v17;

  if (!v5->_textureHandles || !v5->_queueStateShmem)
    v21 = {;
    [v10 failWithError:v21];

LABEL_15:
    goto LABEL_16;
  }

LABEL_9:
  v20 = v5;
LABEL_17:

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = v4;
    [v6 encodeInteger:self->_width forKey:@"width"];
    [v6 encodeInteger:self->_height forKey:@"height"];
    [v6 encodeInteger:self->_pixelFormat forKey:@"pixelFormat"];
    [v6 encodeObject:self->_textureHandles forKey:@"textureHandles"];
    [v6 encodeBool:self->_allowPixelFormatConversion forKey:@"allowPixelFormatConversion"];
    v7 = xpc_mach_send_create();
    [v6 encodeXPCObject:v7 forKey:@"drawableQueueMachSemaphore"];
    [v6 encodeXPCObject:self->_queueStateShmem forKey:@"queueStateShmem"];
  }

  else
  {
    v8 = *re::assetTypesLogObjects(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_FAULT, "Expected to encode an REDrawableQueuePayload into an NSXPCCoder", v9, 2u);
    }
  }
}

@end