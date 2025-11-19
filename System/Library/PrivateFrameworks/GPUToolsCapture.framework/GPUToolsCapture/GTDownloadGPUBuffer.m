@interface GTDownloadGPUBuffer
- (GTDownloadGPUBuffer)initWithTracking:(unint64_t *)a3;
- (id)getTensorAlias:(id)a3;
- (void)dealloc;
@end

@implementation GTDownloadGPUBuffer

- (void)dealloc
{
  usedGPUMemory = self->_usedGPUMemory;
  if (usedGPUMemory)
  {
    atomic_fetch_add(usedGPUMemory, [(MTLBuffer *)self->_buffer]);
  }

  v4.receiver = self;
  v4.super_class = GTDownloadGPUBuffer;
  [(GTDownloadGPUBuffer *)&v4 dealloc];
}

- (id)getTensorAlias:(id)a3
{
  v4 = a3;
  if (self->_buffer)
  {
    tensor = self->_tensor;
    if (!tensor)
    {
      v6 = objc_alloc_init(MTLTensorDescriptor);
      v7 = [v4 dimensions];
      [v6 setDimensions:v7];

      [v6 setDataType:{objc_msgSend(v4, "dataType")}];
      [v6 setUsage:{objc_msgSend(v4, "usage")}];
      v8 = [v4 dimensions];
      v9 = MTLTensorExtents_computeStrides(v8);
      [v6 setStrides:v9];

      buffer = self->_buffer;
      offset = self->offset;
      v19 = 0;
      v12 = [(MTLBuffer *)buffer newTensorWithDescriptor:v6 offset:offset error:&v19];
      v13 = v19;
      v14 = self->_tensor;
      self->_tensor = v12;

      if (!self->_tensor)
      {
        if (s_logUsingOsLog == 1)
        {
          v15 = gt_tagged_log(4);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v21 = v13;
            _os_log_fault_impl(&dword_0, v15, OS_LOG_TYPE_FAULT, "fail: Failed to create MTLTensor target for downloading: %@", buf, 0xCu);
          }
        }

        else
        {
          v17 = __stderrp;
          v15 = [NSString stringWithFormat:@"fail: Failed to create MTLTensor target for downloading: %@", v13];
          fprintf(v17, "%s\n", [v15 UTF8String]);
        }
      }

      tensor = self->_tensor;
    }

    v16 = tensor;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (GTDownloadGPUBuffer)initWithTracking:(unint64_t *)a3
{
  v8.receiver = self;
  v8.super_class = GTDownloadGPUBuffer;
  v4 = [(GTDownloadGPUBuffer *)&v8 init];
  v5 = v4;
  if (v4)
  {
    tensor = v4->_tensor;
    v4->_usedGPUMemory = a3;
    v4->_tensor = 0;
  }

  return v5;
}

@end