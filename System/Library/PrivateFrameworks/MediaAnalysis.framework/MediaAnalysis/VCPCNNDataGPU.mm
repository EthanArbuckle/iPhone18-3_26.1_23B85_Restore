@interface VCPCNNDataGPU
- (int)allocBuffers:(BOOL)buffers;
- (int)bufferAllocGPU;
- (int)convertCPUData2GPU;
- (int)convertGPUData2CPU;
- (int)reallocGPUTemporalBuffers;
@end

@implementation VCPCNNDataGPU

- (int)allocBuffers:(BOOL)buffers
{
  self->super._isInputOutput = buffers;
  if (!buffers || (result = [(VCPCNNData *)self bufferAllocCPU]) == 0)
  {

    return [(VCPCNNDataGPU *)self bufferAllocGPU];
  }

  return result;
}

- (int)reallocGPUTemporalBuffers
{
  if (self->super._isInputOutput)
  {
    return 0;
  }

  else
  {
    return [(VCPCNNDataGPU *)self bufferAllocGPU];
  }
}

- (int)bufferAllocGPU
{
  if ([(NSMutableArray *)self->super._size count]!= 1 && [(NSMutableArray *)self->super._size count]!= 3)
  {
    return -50;
  }

  v3 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:0];
  intValue = [v3 intValue];

  if ([(NSMutableArray *)self->super._size count]== 3)
  {
    v5 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:1];
    LODWORD(v8) = [v5 intValue];

    v6 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:2];
    LODWORD(v7) = [v6 intValue];

    v7 = v7;
    v8 = v8;
  }

  else
  {
    v8 = 1;
    v7 = 1;
  }

  v9 = objc_alloc_init(MEMORY[0x1E6974468]);
  v10 = v9;
  if (v9)
  {
    [v9 setWidth:v7];
    [v10 setHeight:v8];
    [v10 setFeatureChannels:intValue];
    [v10 setNumberOfImages:1];
    [v10 setUsage:3];
    [v10 setChannelFormat:3];
    [v10 setFeatureChannelsLayout:1];
    if (self->super._isInputOutput)
    {
      v11 = objc_alloc(MEMORY[0x1E6974460]);
      WeakRetained = objc_loadWeakRetained(&self->super._context);
      device = [WeakRetained device];
      v14 = [v11 initWithDevice:device imageDescriptor:v10];
    }

    else
    {
      v16 = MEMORY[0x1E6974498];
      WeakRetained = objc_loadWeakRetained(&self->super._context);
      device = [WeakRetained commandBuffer];
      v14 = [v16 temporaryImageWithCommandBuffer:device imageDescriptor:v10];
    }

    mpsImg = self->super._mpsImg;
    self->super._mpsImg = v14;

    if (self->super._mpsImg)
    {
      v15 = 0;
    }

    else
    {
      v15 = -108;
    }
  }

  else
  {
    v15 = -108;
  }

  return v15;
}

- (int)convertCPUData2GPU
{
  WeakRetained = objc_loadWeakRetained(&self->super._context);
  if (!WeakRetained)
  {
    return -50;
  }

  data = self->super._data;

  if (!data)
  {
    return -50;
  }

  if (self->super._mpsImg || (result = [(VCPCNNDataGPU *)self bufferAllocGPU]) == 0)
  {
    v5 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:0];
    intValue = [v5 intValue];

    v7 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:1];
    intValue2 = [v7 intValue];

    v9 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:2];
    intValue3 = [v9 intValue];

    if (intValue != 1 && (intValue & 3) != 0)
    {
      return -50;
    }

    v12 = intValue2 * intValue * intValue3;
    if (v12 < 0)
    {
      v13 = -1;
    }

    else
    {
      v13 = 2 * v12;
    }

    v14 = operator new[](v13, MEMORY[0x1E69E5398]);
    if (v14)
    {
      v15 = v14;
      if (intValue >= 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = v14;
        do
        {
          if (intValue2 >= 1)
          {
            v19 = 0;
            v20 = v18;
            do
            {
              if (intValue3 >= 1)
              {
                v21 = &self->super._data[v17];
                v17 += intValue3;
                v22 = intValue3;
                v23 = v20;
                do
                {
                  v24 = *v21++;
                  _S0 = v24;
                  __asm { FCVT            H0, S0 }

                  *v23 = _S0;
                  v23 += intValue;
                  --v22;
                }

                while (v22);
              }

              ++v19;
              v20 += intValue3 * intValue;
            }

            while (v19 != intValue2);
          }

          ++v16;
          ++v18;
        }

        while (v16 != intValue);
      }

      [(MPSImage *)self->super._mpsImg writeBytes:v15 dataLayout:0 imageIndex:0];
      MEMORY[0x1CCA95C10](v15, 0x1000C80BDFB0063);
      return 0;
    }

    else
    {
      return -108;
    }
  }

  return result;
}

- (int)convertGPUData2CPU
{
  if (!self->super._mpsImg)
  {
    return -50;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._context);

  if (!WeakRetained || [(NSMutableArray *)self->super._size count]!= 1 && [(NSMutableArray *)self->super._size count]!= 3)
  {
    return -50;
  }

  v4 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:0];
  intValue = [v4 intValue];

  if ([(NSMutableArray *)self->super._size count]== 3)
  {
    v6 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:1];
    intValue2 = [v6 intValue];

    v8 = [(NSMutableArray *)self->super._size objectAtIndexedSubscript:2];
    intValue3 = [v8 intValue];
  }

  else
  {
    intValue2 = 1;
    intValue3 = 1;
  }

  v11 = intValue + 3;
  if (intValue < -3)
  {
    v11 = intValue + 6;
  }

  v12 = fmax((v11 >> 2), 1.0);
  if (((v12 * intValue2 * intValue3) & 0x20000000) != 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = 8 * v12 * intValue2 * intValue3;
  }

  v14 = operator new[](v13, MEMORY[0x1E69E5398]);
  if (!v14)
  {
    return -108;
  }

  v15 = v14;
  [(MPSImage *)self->super._mpsImg readBytes:v14 dataLayout:0 imageIndex:0];
  if (self->super._data || (v10 = [(VCPCNNData *)self bufferAllocCPU]) == 0)
  {
    if (intValue2 == 1 && intValue3 == 1)
    {
      if (intValue >= 1)
      {
        data = self->super._data;
        v17 = v15;
        v18 = intValue;
        do
        {
          v19 = *v17++;
          _H0 = v19;
          __asm { FCVT            S0, H0 }

          *data++ = _S0;
          --v18;
        }

        while (v18);
      }
    }

    else if (intValue >= 1)
    {
      v26 = 0;
      v27 = 0;
      v28 = v15;
      do
      {
        if (intValue2 >= 1)
        {
          v29 = 0;
          v30 = v28;
          do
          {
            if (intValue3 >= 1)
            {
              v31 = &self->super._data[v27];
              v27 += intValue3;
              v32 = intValue3;
              v33 = v30;
              do
              {
                _H0 = *v33;
                __asm { FCVT            S0, H0 }

                *v31++ = _S0;
                v33 += intValue;
                --v32;
              }

              while (v32);
            }

            ++v29;
            v30 += intValue3 * intValue;
          }

          while (v29 != intValue2);
        }

        ++v26;
        ++v28;
      }

      while (v26 != intValue);
    }

    v10 = 0;
  }

  MEMORY[0x1CCA95C10](v15, 0x1000C80BDFB0063);
  return v10;
}

@end