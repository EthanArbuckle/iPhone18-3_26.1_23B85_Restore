@interface IndirectRenderCommandEncoderState
+ (id)saveEncoder:(id)encoder withDescriptor:(id)descriptor player:(id)player;
- (void)restoreEncoder:(id)encoder withDescriptor:(id)descriptor;
@end

@implementation IndirectRenderCommandEncoderState

+ (id)saveEncoder:(id)encoder withDescriptor:(id)descriptor player:(id)player
{
  encoderCopy = encoder;
  descriptorCopy = descriptor;
  playerCopy = player;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__0;
  v26 = __Block_byref_object_dispose__0;
  v27 = objc_alloc_init(IndirectRenderCommandEncoderState);
  if (([descriptorCopy inheritPipelineState] & 1) == 0)
  {
    renderPipelineState = [encoderCopy renderPipelineState];
    v11 = v23[5];
    v12 = *(v11 + 8);
    *(v11 + 8) = renderPipelineState;
  }

  if (([descriptorCopy inheritBuffers] & 1) == 0)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__IndirectRenderCommandEncoderState_saveEncoder_withDescriptor_player___block_invoke;
    v19[3] = &unk_27930F408;
    v13 = playerCopy;
    v20 = v13;
    v21 = &v22;
    [encoderCopy enumerateVertexBuffersUsingBlock:v19];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __71__IndirectRenderCommandEncoderState_saveEncoder_withDescriptor_player___block_invoke_2;
    v16[3] = &unk_27930F408;
    v17 = v13;
    v18 = &v22;
    [encoderCopy enumerateFragmentBuffersUsingBlock:v16];
  }

  v14 = v23[5];
  _Block_object_dispose(&v22, 8);

  return v14;
}

void __71__IndirectRenderCommandEncoderState_saveEncoder_withDescriptor_player___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  if (!v6 && *(a2 + 8))
  {
    v10 = [*(a1 + 32) vertexBytesForKey:{+[DYMTLFunctionPlayer vertexBytesKeyAtIndex:](DYMTLFunctionPlayer, "vertexBytesKeyAtIndex:", a3)}];
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

void __71__IndirectRenderCommandEncoderState_saveEncoder_withDescriptor_player___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  if (!v6 && *(a2 + 8))
  {
    v10 = [*(a1 + 32) fragmentBytesForKey:{+[DYMTLFunctionPlayer fragmentBytesKeyAtIndex:](DYMTLFunctionPlayer, "fragmentBytesKeyAtIndex:", a3)}];
    v11 = *(a1 + 40);
    v7 = a1 + 40;
    *(*(*(v11 + 8) + 40) + 8 * a3 + 1256) = v10;
    if (*a2)
    {
      v9 = 0;
      v8 = 1752;
      goto LABEL_11;
    }

    v9 = *(a2 + 8);
    v8 = 1752;
    if (!v9)
    {
      goto LABEL_11;
    }

LABEL_10:
    v9 = *(a2 + 16);
    goto LABEL_11;
  }

  v7 = a1 + 40;
  objc_storeStrong((*(*(*(a1 + 40) + 8) + 40) + 8 * a3 + 1008), v6);
  if (!*a2)
  {
    v9 = 0;
    v8 = 1504;
    goto LABEL_11;
  }

  v8 = 1504;
  if (!*(a2 + 8))
  {
    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:
  *(*(*(*v7 + 8) + 40) + v8 + 8 * a3) = v9;
}

- (void)restoreEncoder:(id)encoder withDescriptor:(id)descriptor
{
  encoderCopy = encoder;
  descriptorCopy = descriptor;
  if (([descriptorCopy inheritPipelineState] & 1) == 0 && self->_pipelineState)
  {
    [encoderCopy setRenderPipelineState:?];
  }

  if (([descriptorCopy inheritBuffers] & 1) == 0)
  {
    maxVertexBufferBindCount = [descriptorCopy maxVertexBufferBindCount];
    if (maxVertexBufferBindCount)
    {
      v8 = -maxVertexBufferBindCount;
      v9 = 64;
      selfCopy = self;
      do
      {
        v11 = v9 - 64;
        v12 = selfCopy->_vertexBytes[0];
        if (v12)
        {
          [encoderCopy setVertexBytes:v12 length:selfCopy->_vertexBytesLength[0] atIndex:v11];
        }

        else
        {
          [encoderCopy setVertexBuffer:selfCopy->_vertexBuffers[0] offset:selfCopy->_vertexBufferOffsets[0] atIndex:v11];
        }

        ++v9;
        selfCopy = (selfCopy + 8);
      }

      while (v8 + v9 != 64);
    }

    maxFragmentBufferBindCount = [descriptorCopy maxFragmentBufferBindCount];
    if (maxFragmentBufferBindCount)
    {
      v14 = 0;
      fragmentBuffers = self->_fragmentBuffers;
      do
      {
        v16 = fragmentBuffers[31];
        if (v16)
        {
          [encoderCopy setFragmentBytes:v16 length:fragmentBuffers[93] atIndex:v14];
        }

        else
        {
          [encoderCopy setFragmentBuffer:*fragmentBuffers offset:fragmentBuffers[62] atIndex:v14];
        }

        ++v14;
        ++fragmentBuffers;
      }

      while (maxFragmentBufferBindCount != v14);
    }
  }
}

@end