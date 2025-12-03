@interface MTLDebugIOCommandBuffer
- (void)addCompletedHandler:(id)handler;
- (void)commit;
- (void)encodeSignalEvent:(id)event value:(unint64_t)value;
- (void)encodeWaitForEvent:(id)event value:(unint64_t)value;
- (void)internalValidateEvent:(id)event;
- (void)internalValidateLoadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset;
- (void)internalValidateLoadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset;
- (void)internalValidateLoadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size handle:(id)handle handleOffset:(unint64_t)handleOffset;
- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset;
- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1;
- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1;
- (void)signalEvent:(id)event value:(unint64_t)value;
- (void)tryCancel;
- (void)waitForEvent:(id)event value:(unint64_t)value;
@end

@implementation MTLDebugIOCommandBuffer

- (void)internalValidateEvent:(id)event
{
  [(MTLToolsObject *)self device:0];
  _MTLMessageContextBegin_();
  if (!event)
  {
    goto LABEL_7;
  }

  if (([event conformsToProtocol:&unk_2842374C0] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([event conformsToProtocol:&unk_2842374C0])
  {
    v5 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v5 != [event device])
    {
LABEL_7:
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
}

- (void)addCompletedHandler:(id)handler
{
  if (!handler)
  {
    [MTLDebugIOCommandBuffer addCompletedHandler:];
  }

  v5.receiver = self;
  v5.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v5 addCompletedHandler:handler];
}

- (void)encodeWaitForEvent:(id)event value:(unint64_t)value
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeWaitForEvent:event value:value];
}

- (void)encodeSignalEvent:(id)event value:(unint64_t)value
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeSignalEvent:event value:value];
}

- (void)waitForEvent:(id)event value:(unint64_t)value
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeWaitForEvent:event value:value];
}

- (void)signalEvent:(id)event value:(unint64_t)value
{
  [(MTLDebugIOCommandBuffer *)self internalValidateEvent:?];
  v7.receiver = self;
  v7.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v7 encodeSignalEvent:event value:value];
}

- (void)internalValidateLoadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (buffer)
  {
    if (([buffer conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![buffer conformsToProtocol:&unk_284222E68] || (v13 = *&self->MTLToolsIOCommandBuffer_opaque[24], v13 == objc_msgSend(buffer, "device")))
    {
      if (handle)
      {
        goto LABEL_7;
      }

LABEL_22:
      _MTLMessageContextPush_();
      goto LABEL_11;
    }
  }

  _MTLMessageContextPush_();
  if (!handle)
  {
    goto LABEL_22;
  }

LABEL_7:
  if (([handle conformsToProtocol:&unk_284245020] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([handle conformsToProtocol:&unk_284245020])
  {
    v14 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v14 != [handle device])
    {
      goto LABEL_22;
    }
  }

LABEL_11:
  if (size + offset > [objc_msgSend(buffer "baseObject")])
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
    if (size)
    {
      goto LABEL_13;
    }
  }

  else if (size)
  {
    goto LABEL_13;
  }

  v15 = 0;
  _MTLMessageContextPush_();
LABEL_13:
  if ([objc_msgSend(handle baseObject] < handleOffset)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
  }

  if (handleOffset + size > [objc_msgSend(handle "baseObject")])
  {
    [objc_msgSend(handle "baseObject")];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (void)internalValidateLoadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (bytes)
  {
    if (!handle)
    {
      goto LABEL_14;
    }
  }

  else
  {
    _MTLMessageContextPush_();
    if (!handle)
    {
      goto LABEL_14;
    }
  }

  if (([handle conformsToProtocol:&unk_284245020] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([handle conformsToProtocol:&unk_284245020])
  {
    v11 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v11 != [handle device])
    {
LABEL_14:
      _MTLMessageContextPush_();
      if (size)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  if (size)
  {
    goto LABEL_8;
  }

LABEL_15:
  v12 = 0;
  _MTLMessageContextPush_();
LABEL_8:
  if ([objc_msgSend(handle baseObject] < offset)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
  }

  if (offset + size > [objc_msgSend(handle "baseObject")])
  {
    [objc_msgSend(handle "baseObject")];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (void)loadBytes:(void *)bytes size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)offset
{
  [MTLDebugIOCommandBuffer internalValidateLoadBytes:"internalValidateLoadBytes:size:sourceHandle:sourceHandleOffset:" size:? sourceHandle:? sourceHandleOffset:?];
  v11.receiver = self;
  v11.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v11 loadBytes:bytes size:size sourceHandle:handle sourceHandleOffset:offset];
}

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size handle:(id)handle handleOffset:(unint64_t)handleOffset
{
  [MTLDebugIOCommandBuffer internalValidateLoadBuffer:"internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:" offset:? size:? sourceHandle:? sourceHandleOffset:?];
  v13.receiver = self;
  v13.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v13 loadBuffer:buffer offset:offset size:size sourceHandle:handle sourceHandleOffset:handleOffset];
}

- (void)loadBuffer:(id)buffer offset:(unint64_t)offset size:(unint64_t)size sourceHandle:(id)handle sourceHandleOffset:(unint64_t)handleOffset
{
  [MTLDebugIOCommandBuffer internalValidateLoadBuffer:"internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:" offset:? size:? sourceHandle:? sourceHandleOffset:?];
  v13.receiver = self;
  v13.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v13 loadBuffer:buffer offset:offset size:size sourceHandle:handle sourceHandleOffset:handleOffset];
}

- (void)internalValidateLoadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1
{
  [(MTLToolsObject *)self device:texture];
  _MTLMessageContextBegin_();
  if (texture)
  {
    if (([texture conformsToProtocol:&unk_28423C818] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![texture conformsToProtocol:&unk_28423C818] || (v16 = *&self->MTLToolsIOCommandBuffer_opaque[24], v16 == objc_msgSend(texture, "device")))
    {
      if (handle)
      {
        goto LABEL_7;
      }

LABEL_58:
      _MTLMessageContextPush_();
      goto LABEL_13;
    }
  }

  _MTLMessageContextPush_();
  if (!handle)
  {
    goto LABEL_58;
  }

LABEL_7:
  if (([handle conformsToProtocol:&unk_284245020] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([handle conformsToProtocol:&unk_284245020])
  {
    v17 = *&self->MTLToolsIOCommandBuffer_opaque[24];
    if (v17 != [handle device])
    {
      _MTLMessageContextPush_();
    }

    if ([texture storageMode] == 3)
    {
      goto LABEL_58;
    }
  }

LABEL_13:
  if (!(size->var1 * size->var0 * size->var2))
  {
    var2 = size->var2;
    v31 = 0;
    var0 = size->var0;
    var1 = size->var1;
    _MTLMessageContextPush_();
  }

  if ([objc_msgSend(handle baseObject] < offset)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadBuffer:offset:size:sourceHandle:sourceHandleOffset:];
  }

  if ([texture isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([texture mipmapLevelCount] <= level)
  {
    levelCopy = level;
    mipmapLevelCount = [texture mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  numFaces = [texture numFaces];
  if ([texture arrayLength] * numFaces <= slice)
  {
    [MTLDebugIOCommandBuffer internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:];
  }

  v19 = (texture + 72);
  v20 = *&self->MTLToolsIOCommandBuffer_opaque[24];
  [texture pixelFormat];
  [texture width];
  [texture height];
  [texture depth];
  [texture sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v38 = *origin;
  v36 = *&size->var0;
  v37 = size->var2;
  v32 = *(texture + 72);
  v33 = *(texture + 88);
  v34 = *(texture + 104);
  v35 = *(texture + 15);
  _MTLAdjustMTLSize();
  v21 = origin->var0;
  if ((*(texture + 81) & 4) != 0)
  {
    if (v21)
    {
      v25 = origin->var0;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (origin->var1)
    {
      v25 = origin->var1;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (origin->var2)
    {
      v25 = origin->var2;
      v28 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v22 = size->var0 + v21;
    if (v22)
    {
      v25 = v22;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (size->var1 + origin->var1)
    {
      v25 = size->var1 + origin->var1;
      v28 = 0;
      _MTLMessageContextPush_();
    }

    if (size->var2 + origin->var2)
    {
      v25 = size->var2 + origin->var2;
      v28 = 0;
LABEL_56:
      _MTLMessageContextPush_();
    }
  }

  if ((*(texture + 81) & 4) != 0)
  {
    if (origin->var0 % *(texture + 13))
    {
      v28 = *v19;
      v30 = *(texture + 13);
      v25 = origin->var0;
      _MTLMessageContextPush_();
    }

    if (origin->var1 % *(texture + 14))
    {
      v28 = *v19;
      v30 = *(texture + 14);
      v25 = origin->var1;
      _MTLMessageContextPush_();
    }

    if (origin->var2 % *(texture + 15))
    {
      v28 = *v19;
      v30 = *(texture + 15);
      v25 = origin->var2;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(texture + 13))
    {
      v28 = *v19;
      v30 = *(texture + 13);
      v25 = 0;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(texture + 14))
    {
      v28 = *v19;
      v30 = *(texture + 14);
      v25 = 0;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(texture + 15))
    {
      v28 = *v19;
      v30 = *(texture + 15);
      v25 = 0;
      _MTLMessageContextPush_();
    }
  }

  if ((*(texture + 81) & 4) != 0)
  {
    if (*(texture + 15) != 1)
    {
      _MTLMessageContextPush_();
    }

    if ([texture textureType] == 9)
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image dstOrigin:(id *)origin handle:(id)self0 handleOffset:(unint64_t)self1
{
  v20 = *size;
  v19 = *origin;
  [MTLDebugIOCommandBuffer internalValidateLoadTexture:"internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:" slice:texture level:slice size:level sourceBytesPerRow:&v20 sourceBytesPerImage:&v19 destinationOrigin:handle sourceHandle:offset sourceHandleOffset:?];
  v20 = *size;
  v19 = *origin;
  v18.receiver = self;
  v18.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v18 loadTexture:texture slice:slice level:level size:&v20 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v19 sourceHandle:handle sourceHandleOffset:offset];
}

- (void)loadTexture:(id)texture slice:(unint64_t)slice level:(unint64_t)level size:(id *)size sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image destinationOrigin:(id *)origin sourceHandle:(id)self0 sourceHandleOffset:(unint64_t)self1
{
  v20 = *size;
  v19 = *origin;
  [MTLDebugIOCommandBuffer internalValidateLoadTexture:"internalValidateLoadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:" slice:texture level:slice size:level sourceBytesPerRow:&v20 sourceBytesPerImage:&v19 destinationOrigin:handle sourceHandle:offset sourceHandleOffset:?];
  v20 = *size;
  v19 = *origin;
  v18.receiver = self;
  v18.super_class = MTLDebugIOCommandBuffer;
  [(MTLToolsIOCommandBuffer *)&v18 loadTexture:texture slice:slice level:level size:&v20 sourceBytesPerRow:row sourceBytesPerImage:image destinationOrigin:&v19 sourceHandle:handle sourceHandleOffset:offset];
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