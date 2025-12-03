@interface VCPCNNData
+ (Class)cnnDataClass;
+ (id)cnnData;
+ (id)cnnDataWithGPUContext:(id)context;
+ (id)cnnDataWithPlane:(int)plane height:(int)height width:(int)width context:(id)context;
- (VCPCNNData)init;
- (VCPCNNData)initWithGPUContext:(id)context;
- (VCPCNNData)initWithParameters:(int)parameters height:(int)height width:(int)width context:(id)context;
- (VCPCNNMetalContext)context;
- (int)bufferAllocCPU;
- (int)copyImage:(__CVBuffer *)image withChunk:(int)chunk;
- (int)normalization;
- (int)randInit;
- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor;
- (int)softmax;
- (void)dealloc;
@end

@implementation VCPCNNData

+ (Class)cnnDataClass
{
  v2 = objc_opt_class();
  if (+[VCPCNNMetalContext supportGPU])
  {
    v2 = objc_opt_class();
  }

  return v2;
}

+ (id)cnnData
{
  v2 = objc_alloc_init(VCPCNNData);

  return v2;
}

+ (id)cnnDataWithGPUContext:(id)context
{
  contextCopy = context;
  v4 = [objc_alloc(+[VCPCNNData cnnDataClass](VCPCNNData "cnnDataClass"))];

  return v4;
}

+ (id)cnnDataWithPlane:(int)plane height:(int)height width:(int)width context:(id)context
{
  v6 = *&width;
  v7 = *&height;
  v8 = *&plane;
  contextCopy = context;
  v10 = [objc_alloc(+[VCPCNNData cnnDataClass](VCPCNNData "cnnDataClass"))];

  return v10;
}

- (VCPCNNData)init
{
  v9.receiver = self;
  v9.super_class = VCPCNNData;
  v2 = [(VCPCNNData *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_data = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    size = v3->_size;
    v3->_size = v4;

    objc_storeWeak(&v3->_context, 0);
    mpsImg = v3->_mpsImg;
    v3->_mpsImg = 0;

    v7 = v3;
  }

  return v3;
}

- (VCPCNNData)initWithGPUContext:(id)context
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = VCPCNNData;
  v5 = [(VCPCNNData *)&v12 init];
  v6 = v5;
  if (v5)
  {
    v5->_data = 0;
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    size = v6->_size;
    v6->_size = v7;

    objc_storeWeak(&v6->_context, contextCopy);
    mpsImg = v6->_mpsImg;
    v6->_mpsImg = 0;

    v10 = v6;
  }

  return v6;
}

- (VCPCNNData)initWithParameters:(int)parameters height:(int)height width:(int)width context:(id)context
{
  v6 = *&width;
  v7 = *&height;
  v8 = *&parameters;
  contextCopy = context;
  v23.receiver = self;
  v23.super_class = VCPCNNData;
  v11 = [(VCPCNNData *)&v23 init];
  if (v11)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    size = v11->_size;
    v11->_size = v12;

    v14 = v11->_size;
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v8];
    [(NSMutableArray *)v14 addObject:v15];

    v16 = v11->_size;
    v17 = [MEMORY[0x1E696AD98] numberWithInt:v7];
    [(NSMutableArray *)v16 addObject:v17];

    v18 = v11->_size;
    v19 = [MEMORY[0x1E696AD98] numberWithInt:v6];
    [(NSMutableArray *)v18 addObject:v19];

    v11->_data = 0;
    objc_storeWeak(&v11->_context, contextCopy);
    mpsImg = v11->_mpsImg;
    v11->_mpsImg = 0;

    v21 = v11;
  }

  return v11;
}

- (void)dealloc
{
  data = self->_data;
  if (data)
  {
    MEMORY[0x1CCA95C10](data, 0x1000C8052888210);
  }

  v4.receiver = self;
  v4.super_class = VCPCNNData;
  [(VCPCNNData *)&v4 dealloc];
}

- (int)randInit
{
  v3 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:0];
  intValue = [v3 intValue];

  v5 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:1];
  intValue2 = [v5 intValue];

  v7 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:2];
  intValue3 = [v7 intValue];

  if (intValue >= 1)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      if (intValue2 >= 1)
      {
        for (i = 0; i != intValue2; ++i)
        {
          if (intValue3 >= 1)
          {
            v12 = 255;
            v13 = &self->_data[v10];
            v10 += intValue3;
            v14 = intValue3;
            do
            {
              v15 = ((10 * v9 + (255 - i) * (255 - i) + v12 * v12) % 0xFFu) / 255.0;
              *v13++ = v15;
              --v12;
              --v14;
            }

            while (v14);
          }
        }
      }

      ++v9;
    }

    while (v9 != intValue);
  }

  return 0;
}

- (int)bufferAllocCPU
{
  if (self->_data)
  {
    return -18;
  }

  if ([(NSMutableArray *)self->_size count])
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:v4];
      v5 *= [v6 intValue];

      ++v4;
    }

    while ([(NSMutableArray *)self->_size count]> v4);
    v7 = 4 * v5;
    if (v5 < 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = 4 * v5;
    }
  }

  else
  {
    v7 = 4;
    v8 = 4;
  }

  v9 = operator new[](v8, MEMORY[0x1E69E5398]);
  self->_data = v9;
  if (!v9)
  {
    return -108;
  }

  bzero(v9, v7);
  return 0;
}

- (int)copyImage:(__CVBuffer *)image withChunk:(int)chunk
{
  v49 = *MEMORY[0x1E69E9840];
  if (CVPixelBufferGetPixelFormatType(image) != 1111970369)
  {
    return -50;
  }

  Width = CVPixelBufferGetWidth(image);
  Height = CVPixelBufferGetHeight(image);
  [(NSMutableArray *)self->_size addObject:&unk_1F49BE158];
  size = self->_size;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:Height];
  [(NSMutableArray *)size addObject:v10];

  v11 = self->_size;
  v12 = [MEMORY[0x1E696AD98] numberWithInt:Width];
  [(NSMutableArray *)v11 addObject:v12];

  v13 = [(VCPCNNData *)self allocBuffers:1];
  if (v13)
  {
    return v13;
  }

  pixelBuffer = image;
  unlockFlags = 1;
  if (!image)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPVideoCNNAnalyzer copyImage:withChannels:settling:];
    }

    return -50;
  }

  v14 = CVPixelBufferLockBaseAddress(image, 1uLL);
  v42 = v14;
  if (!v14 || (v13 = v14, os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR)) && (*buf = 134218240, v46 = image, v47 = 1024, v48 = v13, _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", buf, 0x12u), (v13 = v42) == 0))
  {
    BaseAddress = CVPixelBufferGetBaseAddress(image);
    BytesPerRow = CVPixelBufferGetBytesPerRow(image);
    WeakRetained = objc_loadWeakRetained(&self->_context);
    v19 = chunk != 4 || WeakRetained != 0;

    data = self->_data;
    if (v19)
    {
      bzero(data, 16 * Width * Height);
      if (Height >= 1)
      {
        v22 = 0;
        v23 = &data[3 * Height * Width];
        v24 = &data[2 * Height * Width];
        v25 = &data[Height * Width];
        v26 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v27 = 0;
            v28 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v21) = BaseAddress[(v27 * 4) + 2];
              *&v29 = LODWORD(v21) / 255.0;
              data[v27] = *&v29;
              LOBYTE(v29) = BaseAddress[(v27 * 4) + 1];
              *&v30 = v29 / 255.0;
              v25[v27] = *&v30;
              LOBYTE(v30) = BaseAddress[(v27 * 4)];
              v21 = v30 / 255.0;
              v24[v27] = v21;
              v23[v27++] = 0.0;
              --v28;
            }

            while (v28);
          }

          BaseAddress += BytesPerRow;
          ++v22;
          v23 = (v23 + v26);
          v24 = (v24 + v26);
          v25 = (v25 + v26);
          data = (data + v26);
        }

        while (v22 != Height);
      }
    }

    else
    {
      bzero(data, 16 * Width * Height);
      if (Height >= 1)
      {
        v33 = 0;
        v34 = data + 3;
        v35 = data + 2;
        v36 = data + 1;
        v37 = 4 * Width;
        do
        {
          if (Width >= 1)
          {
            v38 = 0;
            v39 = Width & 0x7FFFFFFF;
            do
            {
              LOBYTE(v32) = BaseAddress[v38 + 2];
              *&v40 = LODWORD(v32) / 255.0;
              data[v38] = *&v40;
              LOBYTE(v40) = BaseAddress[v38 + 1];
              *&v41 = v40 / 255.0;
              v36[v38] = *&v41;
              LOBYTE(v41) = BaseAddress[v38];
              v32 = v41 / 255.0;
              v35[v38] = v32;
              v34[v38] = 0.0;
              v38 += 4;
              --v39;
            }

            while (v39);
          }

          data += v37;
          v36 += v37;
          v35 += v37;
          BaseAddress += BytesPerRow;
          ++v33;
          v34 += v37;
        }

        while (v33 != Height);
      }
    }

    v13 = CVPixelBufferLock::Unlock(&v42);
    if (pixelBuffer && !v42 && CVPixelBufferUnlockBaseAddress(pixelBuffer, unlockFlags) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [VCPImageExposurePreAnalyzer analyzePixelBuffer:flags:results:cancel:];
    }
  }

  return v13;
}

- (int)readFromDisk:(__sFILE *)disk quantFactor:(signed __int16)factor
{
  factorCopy = factor;
  if ([(NSMutableArray *)self->_size count])
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:v7];
      v8 *= [v9 intValue];

      ++v7;
    }

    while ([(NSMutableArray *)self->_size count]> v7);
  }

  else
  {
    v8 = 1;
  }

  if (factorCopy > 1)
  {
    if (fread(self->_data, 2uLL, v8, disk))
    {
      if (v8 >= 1)
      {
        data = self->_data;
        v11 = v8 - 1;
        do
        {
          data[v11] = *(data + v11) / factorCopy;
          v12 = v11-- + 1;
        }

        while (v12 > 1);
      }

      return 0;
    }

    return -19;
  }

  if (factorCopy == 1)
  {
    if (fread(self->_data, 4uLL, v8, disk))
    {
      return 0;
    }

    return -19;
  }

  if (!factorCopy)
  {
    operator new[]();
  }

  return -50;
}

- (int)normalization
{
  if (![(NSMutableArray *)self->_size count])
  {
    v4 = 1;
LABEL_7:
    data = self->_data;
    v7 = v4;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      v10 = *data++;
      v9 = v9 + v10;
      v8 = v8 + (v10 * v10);
      --v7;
    }

    while (v7);
    v11 = v9 / v4;
    v12 = fmaxf(sqrtf((v8 / v4) - (v11 * v11)), 1.0e-10);
    v13 = self->_data;
    v14 = v4;
    do
    {
      *v13 = (*v13 - v11) / v12;
      ++v13;
      --v14;
    }

    while (v14);
    return 0;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:v3];
    v4 *= [v5 intValue];

    ++v3;
  }

  while ([(NSMutableArray *)self->_size count]> v3);
  if (v4 >= 1)
  {
    goto LABEL_7;
  }

  return 0;
}

- (int)softmax
{
  if ([(NSMutableArray *)self->_size count]== 1)
  {
    v3 = [(NSMutableArray *)self->_size objectAtIndexedSubscript:0];
    intValue = [v3 intValue];

    if (intValue >= 1)
    {
      data = self->_data;
      v6 = intValue;
      v7 = -1.0e10;
      v8 = intValue;
      do
      {
        v9 = *data++;
        v10 = v9;
        if (v9 > v7)
        {
          v7 = v10;
        }

        --v8;
      }

      while (v8);
      v11 = self->_data;
      v12 = 0.0;
      v13 = v6;
      do
      {
        v14 = expf(*v11 - v7);
        *v11++ = v14;
        v12 = v12 + v14;
        --v13;
      }

      while (v13);
      v15 = self->_data;
      do
      {
        *v15 = *v15 / v12;
        ++v15;
        --v6;
      }

      while (v6);
    }
  }

  return 0;
}

- (VCPCNNMetalContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end