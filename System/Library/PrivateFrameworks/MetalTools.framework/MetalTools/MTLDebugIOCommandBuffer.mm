@interface MTLDebugIOCommandBuffer
- (void)addCompletedHandler:(id)a3;
- (void)commit;
- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4;
- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4;
- (void)internalValidateEvent:(id)a3;
- (void)internalValidateLoadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7;
- (void)internalValidateLoadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6;
- (void)internalValidateLoadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 handle:(id)a6 handleOffset:(unint64_t)a7;
- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7;
- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11;
- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11;
- (void)signalEvent:(id)a3 value:(unint64_t)a4;
- (void)tryCancel;
- (void)waitForEvent:(id)a3 value:(unint64_t)a4;
@end

@implementation MTLDebugIOCommandBuffer

- (void)internalValidateEvent:(id)a3
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    goto LABEL_7;
  }

  if (([a3 conformsToProtocol:&unk_2842374C0] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a3 conformsToProtocol:&unk_2842374C0])
  {
    v5 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v5 != [a3 device])
    {
LABEL_7:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
}

- (void)addCompletedHandler:(id)a3
{
  if (!a3)
  {
    [MTLDebugIOCommandBuffer addCompletedHandler:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v5 addCompletedHandler:a3];
}

- (void)encodeWaitForEvent:(id)a3 value:(unint64_t)a4
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeWaitForEvent:a3 value:a4];
}

- (void)encodeSignalEvent:(id)a3 value:(unint64_t)a4
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeSignalEvent:a3 value:a4];
}

- (void)waitForEvent:(id)a3 value:(unint64_t)a4
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeWaitForEvent:a3 value:a4];
}

- (void)signalEvent:(id)a3 value:(unint64_t)a4
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeSignalEvent:a3 value:a4];
}

- (void)internalValidateLoadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a3)
  {
    if (([a3 conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![a3 conformsToProtocol:&unk_284222E68] || (v13 = *&self->MTLToolsIOCommandBuffer_opaque[24], v13 == objc_msgSend(a3, "device")))
    {
      if (a6)
      {
        goto LABEL_7;
      }

LABEL_22:
      _MTLMessageContextPush_();
      goto LABEL_11;
    }
  }

  _MTLMessageContextPush_();
  if (!a6)
  {
    goto LABEL_22;
  }

LABEL_7:
  if (([a6 conformsToProtocol:&unk_284245020] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a6 conformsToProtocol:&unk_284245020])
  {
    v14 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v14 != [a6 device])
    {
      goto LABEL_22;
    }
  }

LABEL_11:
  if (a5 + a4 > [objc_msgSend(a3 "baseObject")])
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
    if (a5)
    {
      goto LABEL_13;
    }
  }

  else if (a5)
  {
    goto LABEL_13;
  }

  v15 = 0;
  _MTLMessageContextPush_();
LABEL_13:
  if ([objc_msgSend(a6 baseObject] < a7)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
  }

  if (a7 + a5 > [objc_msgSend(a6 "baseObject")])
  {
    [objc_msgSend(a6 "baseObject")];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (void)internalValidateLoadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a3)
  {
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!a5)
    {
      goto LABEL_14;
    }
  }

  if (([a5 conformsToProtocol:&unk_284245020] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a5 conformsToProtocol:&unk_284245020])
  {
    v11 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v11 != [a5 device])
    {
LABEL_14:
      _MTLMessageContextPush_();
      if (a4)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  if (a4)
  {
    goto LABEL_8;
  }

LABEL_15:
  v12 = 0;
  _MTLMessageContextPush_();
LABEL_8:
  if ([objc_msgSend(a5 baseObject] < a6)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
  }

  if (a6 + a4 > [objc_msgSend(a5 "baseObject")])
  {
    [objc_msgSend(a5 "baseObject")];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (void)loadBytes:(void *)a3 size:(unint64_t)a4 sourceHandle:(id)a5 sourceHandleOffset:(unint64_t)a6
{
  [MTLDebugIOCommandBuffer internalValidateLoadBytes:"internalValidateLoadBytes:size:sourceHandle:sourceHandleOffset:" size:? sourceHandle:? sourceHandleOffset:?];
  v11.receiver = self;
  v11.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v11 loadBytes:a3 size:a4 sourceHandle:a5 sourceHandleOffset:a6];
}

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 handle:(id)a6 handleOffset:(unint64_t)a7
{
  [MTLDebugIOCommandBuffer internalValidateLoadBuffer:"internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:" offset:? size:? sourceHandle:? sourceHandleOffset:?];
  v13.receiver = self;
  v13.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v13 loadBuffer:a3 offset:a4 size:a5 sourceHandle:a6 sourceHandleOffset:a7];
}

- (void)loadBuffer:(id)a3 offset:(unint64_t)a4 size:(unint64_t)a5 sourceHandle:(id)a6 sourceHandleOffset:(unint64_t)a7
{
  [MTLDebugIOCommandBuffer internalValidateLoadBuffer:"internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:" offset:? size:? sourceHandle:? sourceHandleOffset:?];
  v13.receiver = self;
  v13.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v13 loadBuffer:a3 offset:a4 size:a5 sourceHandle:a6 sourceHandleOffset:a7];
}

- (void)internalValidateLoadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11
{
  [(MTLToolsObject *)self device:a3];
  _MTLMessageContextBegin_();
  if (a3)
  {
    if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![a3 conformsToProtocol:&unk_28423C818] || (v16 = *&self->MTLToolsIOCommandBuffer_opaque[24], v16 == objc_msgSend(a3, "device")))
    {
      if (a10)
      {
        goto LABEL_7;
      }

LABEL_58:
      _MTLMessageContextPush_();
      goto LABEL_13;
    }
  }

  _MTLMessageContextPush_();
  if (!a10)
  {
    goto LABEL_58;
  }

LABEL_7:
  if (([a10 conformsToProtocol:&unk_284245020] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a10 conformsToProtocol:&unk_284245020])
  {
    v17 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v17 != [a10 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 storageMode] == 3)
    {
      goto LABEL_58;
    }
  }

LABEL_13:
  if (!(a6->var1 * a6->var0 * a6->var2))
  {
    var2 = a6->var2;
    v31 = 0;
    var0 = a6->var0;
    var1 = a6->var1;
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(a10 baseObject] < a11)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
  }

  if ([a3 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v24 = a5;
    v27 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v18 = [a3 numFaces];
  if ([a3 arrayLength] * v18 <= a4)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:];
  }

  v19 = (a3 + 72);
  v20 = *&self->MTLToolsIOCommandBuffer_opaque[24];
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v38 = *a9;
  v36 = *&a6->var0;
  v37 = a6->var2;
  v32 = *(a3 + 72);
  v33 = *(a3 + 88);
  v34 = *(a3 + 104);
  v35 = *(a3 + 15);
  _MTLAdjustMTLSize();
  v21 = a9->var0;
  if ((*(a3 + 81) & 4) != 0)
  {
    if (v21)
    {
      v25 = a9->var0;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (a9->var1)
    {
      v25 = a9->var1;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (a9->var2)
    {
      v25 = a9->var2;
      v28 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v22 = a6->var0 + v21;
    if (v22)
    {
      v25 = v22;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (a6->var1 + a9->var1)
    {
      v25 = a6->var1 + a9->var1;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (a6->var2 + a9->var2)
    {
      v25 = a6->var2 + a9->var2;
      v28 = 0;
LABEL_56:
      _MTLMessageContextPush_();
    }
  }

  if ((*(a3 + 81) & 4) != 0)
  {
    if (a9->var0 % *(a3 + 13))
    {
      v28 = *v19;
      v30 = *(a3 + 13);
      v25 = a9->var0;
      _MTLMessageContextPush_();
    }

    if (a9->var1 % *(a3 + 14))
    {
      v28 = *v19;
      v30 = *(a3 + 14);
      v25 = a9->var1;
      _MTLMessageContextPush_();
    }

    if (a9->var2 % *(a3 + 15))
    {
      v28 = *v19;
      v30 = *(a3 + 15);
      v25 = a9->var2;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(a3 + 13))
    {
      v28 = *v19;
      v30 = *(a3 + 13);
      v25 = 0;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(a3 + 14))
    {
      v28 = *v19;
      v30 = *(a3 + 14);
      v25 = 0;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(a3 + 15))
    {
      v28 = *v19;
      v30 = *(a3 + 15);
      v25 = 0;
      _MTLMessageContextPush_();
    }
  }

  if ((*(a3 + 81) & 4) != 0)
  {
    if (*(a3 + 15) != 1)
    {
      _MTLMessageContextPush_();
    }

    if ([a3 textureType] == 9)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 bytesPerRow:(unint64_t)a7 bytesPerImage:(unint64_t)a8 dstOrigin:(id *)a9 handle:(id)a10 handleOffset:(unint64_t)a11
{
  v20 = *a6;
  v19 = *a9;
  [MTLDebugIOCommandBuffer internalValidateLoadTexture:"internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:" slice:a3 level:a4 size:a5 sourceBytesPerRow:&v20 sourceBytesPerImage:&v19 destinationOrigin:a10 sourceHandle:a11 sourceHandleOffset:?];
  v20 = *a6;
  v19 = *a9;
  v18.receiver = self;
  v18.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v18 loadTexture:a3 slice:a4 level:a5 size:&v20 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v19 sourceHandle:a10 sourceHandleOffset:a11];
}

- (void)loadTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5 size:(id *)a6 sourceBytesPerRow:(unint64_t)a7 sourceBytesPerImage:(unint64_t)a8 destinationOrigin:(id *)a9 sourceHandle:(id)a10 sourceHandleOffset:(unint64_t)a11
{
  v20 = *a6;
  v19 = *a9;
  [MTLDebugIOCommandBuffer internalValidateLoadTexture:"internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:" slice:a3 level:a4 size:a5 sourceBytesPerRow:&v20 sourceBytesPerImage:&v19 destinationOrigin:a10 sourceHandle:a11 sourceHandleOffset:?];
  v20 = *a6;
  v19 = *a9;
  v18.receiver = self;
  v18.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v18 loadTexture:a3 slice:a4 level:a5 size:&v20 sourceBytesPerRow:a7 sourceBytesPerImage:a8 destinationOrigin:&v19 sourceHandle:a10 sourceHandleOffset:a11];
}

- (void)commit
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ([-[MTLToolsObject baseObject](self "baseObject")])
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v3[0].receiver = self;
  v3[0].super_class = MTLDebugIOCommandBuffer;
  [(objc_super *)v3 commit];
}

- (void)tryCancel
{
  v4 = 0;
  memset(&v3[1], 0, 48);
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([-[MTLToolsObject baseObject](self "baseObject")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  v3[0].receiver = self;
  v3[0].super_class = MTLDebugIOCommandBuffer;
  [(objc_super *)v3 tryCancel];
}

- (uint64_t)internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  v1 = v0;
  [v0 numFaces];
  [v1 arrayLength];
  return OUTLINED_FUNCTION_4_0();
}

@end