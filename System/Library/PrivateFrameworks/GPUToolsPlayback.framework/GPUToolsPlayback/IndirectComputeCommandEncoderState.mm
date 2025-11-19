@interface IndirectComputeCommandEncoderState
+ (id)saveEncoder:(id)a3 withDescriptor:(id)a4 player:(id)a5;
- (void)restoreEncoder:(id)a3 withDescriptor:(id)a4;
@end

@implementation IndirectComputeCommandEncoderState

+ (id)saveEncoder:(id)a3 withDescriptor:(id)a4 player:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = objc_alloc_init(IndirectComputeCommandEncoderState);
  if (([v8 inheritPipelineState] & 1) == 0)
  {
    v10 = [v7 computePipelineState];
    v11 = v19[5];
    v12 = *(v11 + 8);
    *(v11 + 8) = v10;
  }

  if (([v8 inheritBuffers] & 1) == 0)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __72__IndirectComputeCommandEncoderState_saveEncoder_withDescriptor_player___block_invoke;
    v15[3] = &unk_27930F408;
    v16 = v9;
    v17 = &v18;
    [v7 enumerateBuffersUsingBlock:v15];
  }

  v13 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v13;
}

void __72__IndirectComputeCommandEncoderState_saveEncoder_withDescriptor_player___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  if (!v6 && *(a2 + 8))
  {
    v10 = [*(a1 + 32) computeBytesForKey:{+[DYMTLFunctionPlayer computeBytesKeyAtIndex:](DYMTLFunctionPlayer, "computeBytesKeyAtIndex:", a3)}];
    v11 = *(a1 + 40);
    v7 = a1 + 40;
    *(*(*(v11 + 8) + 40) + 8 * a3 + 264) = v10;
    if (*a2)
    {
      v9 = 0;
      v8 = 760;
      goto LABEL_11;
    }

    v9 = *(a2 + 8);
    v8 = 760;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    v9 = *(a2 + 16);
    goto LABEL_11;
  }

  v7 = a1 + 40;
  objc_storeStrong((*(*(*(a1 + 40) + 8) + 40) + 8 * a3 + 16), v6);
  if (!*a2)
  {
    v9 = 0;
    v8 = 512;
    goto LABEL_11;
  }

  v8 = 512;
  if (!*(a2 + 8))
  {
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:
  *(*(*(*v7 + 8) + 40) + v8 + 8 * a3) = v9;
}

- (void)restoreEncoder:(id)a3 withDescriptor:(id)a4
{
  v12 = a3;
  v6 = a4;
  if (([v6 inheritPipelineState] & 1) == 0 && self->_pipelineState)
  {
    [v12 setComputePipelineState:?];
  }

  if (([v6 inheritBuffers] & 1) == 0)
  {
    v7 = [v6 maxKernelBufferBindCount];
    if (v7)
    {
      v8 = -v7;
      v9 = 64;
      do
      {
        v10 = v9 - 64;
        v11 = self->_kernelBytes[0];
        if (v11)
        {
          [v12 setBytes:v11 length:self->_kernelBytesLength[0] atIndex:v10];
        }

        else
        {
          [v12 setBuffer:self->_kernelBuffers[0] offset:self->_kernelBufferOffsets[0] atIndex:v10];
        }

        ++v9;
        self = (self + 8);
      }

      while (v8 + v9 != 64);
    }
  }
}

@end