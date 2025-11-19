@interface MTLDebugBlitCommandEncoder
- (MTLDebugBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (id).cxx_construct;
- (void)_setDefaults;
- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6;
- (void)dealloc;
- (void)endEncoding;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
- (void)generateMipmapsForTexture:(id)a3;
- (void)internalValidateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)invalidateCompressedTexture:(id)a3;
- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForCPUAccess:(id)a3;
- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeContentsForGPUAccess:(id)a3;
- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5;
- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4;
- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6;
- (void)resolveCounters:(id)a3 inRange:(_NSRange)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6;
- (void)updateFence:(id)a3;
- (void)validateCopyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)validateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)validateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12 move:(BOOL)a13;
- (void)validateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceSize:(id *)a6 toTexture:(id)a7 destinationSlice:(unint64_t)a8 destinationLevel:(unint64_t)a9 options:(unint64_t)a10 sliceCount:(unint64_t)a11 levelCount:(unint64_t)a12;
- (void)validateTextureAccess:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6;
- (void)waitForFence:(id)a3;
@end

@implementation MTLDebugBlitCommandEncoder

- (void)_setDefaults
{
  *(&self->hasEndEncoding + 2) = 0;
  *(&self->hasEndEncoding + 3) = 0;
  *(&self->hasEndEncoding + 4) = 0;
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v5 = (var1 - var0) >> 3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*var0);
      v6 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v5 = (v6 - var0) >> 3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v7 = 256;
  }

  else
  {
    if (v5 != 2)
    {
      return;
    }

    v7 = 512;
  }

  p_updatedFences->__start_ = v7;
}

- (MTLDebugBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v11.receiver = self;
  v11.super_class = MTLDebugBlitCommandEncoder;
  v7 = [MTLToolsBlitCommandEncoder initWithBlitCommandEncoder:sel_initWithBlitCommandEncoder_parent_descriptor_ parent:a3 descriptor:?];
  v8 = v7;
  if (v7)
  {
    v7->_commandBuffer = a4;
    [(MTLDebugBlitCommandEncoder *)v7 _setDefaults];
    if (a5)
    {
      for (i = 0; i != 4; ++i)
      {
        -[MTLDebugCommandBuffer addObject:retained:purgeable:](v8->_commandBuffer, "addObject:retained:purgeable:", [objc_msgSend(objc_msgSend(a5 "sampleBufferAttachments")], 1, 0);
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  p_updatedFences = &self->updatedFences;
  var0 = self->updatedFences.__map_.var0;
  var1 = self->updatedFences.__map_.var1;
  self->updatedFences.__size_ = 0;
  v6 = (var1 - var0) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*var0);
      v7 = p_updatedFences->__map_.var1;
      var0 = (p_updatedFences->__map_.var0 + 1);
      p_updatedFences->__map_.var0 = var0;
      v6 = (v7 - var0) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v8 = 256;
  }

  else
  {
    if (v6 != 2)
    {
      goto LABEL_8;
    }

    v8 = 512;
  }

  p_updatedFences->__start_ = v8;
LABEL_8:
  if (*(&self->hasEndEncoding + 2))
  {
    v9.receiver = self;
    v9.super_class = MTLDebugBlitCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
  }

  else
  {
    [-[MTLToolsObject baseObject](self "baseObject")];
    v9.receiver = self;
    v9.super_class = MTLDebugBlitCommandEncoder;
    [(MTLToolsObject *)&v9 dealloc];
    MTLReportFailure();
  }
}

- (void)internalValidateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v18 = a12;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ((~a12 & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(a12 & 0xFFFFFFFF9FFFFFFFLL);
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v19 = &selRef_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset_;
  v20 = &OBJC_IVAR___MTLToolsObject__device;
  if (!a3)
  {
    goto LABEL_167;
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    goto LABEL_164;
  }

  while (1)
  {
    if (![a3 conformsToProtocol:{*(v19 + 376), var0, var1, var2, v82}])
    {
      goto LABEL_11;
    }

    device = self->super.super.super._device;
    if (device != [a3 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 storageMode] == 3)
    {
LABEL_167:
      _MTLMessageContextPush_();
      if (!a8)
      {
        goto LABEL_168;
      }
    }

    else
    {
LABEL_11:
      if (!a8)
      {
        goto LABEL_168;
      }
    }

    if (([a8 conformsToProtocol:*(v19 + 376)] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([a8 conformsToProtocol:*(v19 + 376)])
    {
      v19 = self->super.super.super._device;
      if (v19 != [a8 device])
      {
        _MTLMessageContextPush_();
      }

      if ([a8 storageMode] == 3)
      {
LABEL_168:
        _MTLMessageContextPush_();
      }
    }

    if (!(a7->var1 * a7->var0 * a7->var2))
    {
      var2 = a7->var2;
      v82 = 0;
      var0 = a7->var0;
      var1 = a7->var1;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    if (a3)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_164:
    _MTLMessageContextPush_();
  }

  if (a8)
  {
    v20 = a7->var0;
    device = a7->var1;
    v85 = a7;
    v19 = a7->var2;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions], a3, a8, @"texture");
    v87 = a8 + 72;
    v21 = [a3 pixelFormat];
    v83 = a3 + 72;
    if (v21 != [a8 pixelFormat])
    {
      v22 = *(a3 + 20);
      v23 = (a3 + 72);
      if (((v22 & 0x20) == 0 || (*(a8 + 80) & 0x20) == 0) && ((v22 & 0x40) == 0 || (*(a8 + 80) & 0x40) == 0))
      {
        v24 = (a3 + 72);
        if ((v22 & 0x20) == 0)
        {
          if ((*(a8 + 80) & 0x20) != 0)
          {
            v24 = (a8 + 72);
          }

          else
          {
            v24 = 0;
          }
        }

        v25 = (a3 + 72);
        v18 = a4;
        if ((v22 & 0x40) == 0)
        {
          if ((*(a8 + 80) & 0x40) != 0)
          {
            v25 = (a8 + 72);
          }

          else
          {
            v25 = 0;
          }
        }

        if (v24)
        {
          if (!v25 || v24 == v25)
          {
            v26 = v23 == v24 ? a8 + 72 : a3 + 72;
            if ((v26[9] & 4) == 0)
            {
              v27 = v24[3];
              if (v27 != 2)
              {
                v27 = 4;
              }

              if (v27 == *(v26 + 3))
              {
LABEL_71:
                v37 = [a3 sampleCount];
                if (v37 == [a8 sampleCount])
                {
                  goto LABEL_72;
                }

                goto LABEL_166;
              }
            }
          }

LABEL_70:
          var0 = *v23;
          var1 = *v87;
          _MTLMessageContextPush_();
          goto LABEL_71;
        }

        if (v25)
        {
          if (v23 == v25)
          {
            v28 = a8 + 72;
          }

          else
          {
            v28 = a3 + 72;
          }

          if ((v28[9] & 4) == 0 && *(v28 + 3) == 1)
          {
            goto LABEL_71;
          }

          goto LABEL_70;
        }

        v29 = *(a3 + 11);
        v30 = *(a8 + 11);
        v31 = *(a8 + 20);
        if ((v22 & 0x400) == 0)
        {
          if ((v31 & 0x400) != 0)
          {
            v32 = (a8 + 72);
          }

          else
          {
            v32 = 0;
          }

          goto LABEL_61;
        }

        v32 = (a3 + 72);
        if ((v31 & 0x400) == 0)
        {
LABEL_61:
          if (v29 != v30 && v32)
          {
            if (v23 == v32)
            {
              v33 = a8 + 72;
            }

            else
            {
              v33 = a3 + 72;
            }

            if (*(v33 + 3) == v32[3])
            {
              v35 = v32[4];
              v34 = v32[5];
              v36 = v32[6];
              if (v23 == v32)
              {
                v20 /= v35;
                device /= v34;
                v19 /= v36;
              }

              else
              {
                v20 *= v35;
                device *= v34;
                v19 *= v36;
              }

              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }

        if (v29 == v30)
        {
          goto LABEL_71;
        }

        goto LABEL_70;
      }

      if (*(a3 + 11) != *(a8 + 11))
      {
        var0 = *v23;
        var1 = *v87;
        _MTLMessageContextPush_();
      }
    }

    v18 = a4;
    goto LABEL_71;
  }

  [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_166:
  [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_72:
  if ([a3 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([a8 isFramebufferOnly])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v45 = a5;
    var1 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v38 = [a3 numFaces];
  if ([a3 arrayLength] * v38 <= v18)
  {
    [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
  }

  if ([a8 mipmapLevelCount] <= a10)
  {
    v46 = a10;
    v62 = [a8 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v84 = v19;
  v39 = [a8 numFaces];
  if ([a8 arrayLength] * v39 <= a9)
  {
    [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
  }

  _MTLMessageContextEnd();
  v40 = self->super.super.super._device;
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v41 = self->super.super.super._device;
  [a8 pixelFormat];
  [a8 width];
  [a8 height];
  [a8 depth];
  [a8 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v100 = *&a6->var0;
  v101 = a6->var2;
  v97 = *&v85->var0;
  v99 = v85->var2;
  v89 = *v83;
  v91 = *(v83 + 1);
  v93 = *(v83 + 2);
  v95 = *(v83 + 6);
  _MTLAdjustMTLSize();
  v98 = *a11;
  v90 = *v87;
  v92 = *(v87 + 1);
  v94 = *(v87 + 2);
  v96 = *(v87 + 6);
  _MTLAdjustMTLSize();
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v42 = a6->var0;
  if ((v83[9] & 4) != 0)
  {
    if (v42)
    {
      _MTLMessageContextPush_();
    }

    if (a6->var1)
    {
      v56 = a6->var1;
      _MTLMessageContextPush_();
    }

    if (a6->var2)
    {
      v57 = a6->var2;
LABEL_170:
      _MTLMessageContextPush_();
    }
  }

  else
  {
    if (v85->var0 + v42)
    {
      _MTLMessageContextPush_();
    }

    if (v85->var1 + a6->var1)
    {
      v55 = v85->var1 + a6->var1;
      _MTLMessageContextPush_();
    }

    if (v85->var2 + a6->var2)
    {
      v47 = v85->var2 + a6->var2;
      goto LABEL_170;
    }
  }

  v43 = a11->var0;
  if ((v87[9] & 4) != 0)
  {
    if (v43)
    {
      _MTLMessageContextPush_();
    }

    if (a11->var1)
    {
      v59 = a11->var1;
      _MTLMessageContextPush_();
    }

    if (a11->var2)
    {
      v60 = a11->var2;
LABEL_172:
      _MTLMessageContextPush_();
    }
  }

  else
  {
    if (v43 + v20)
    {
      _MTLMessageContextPush_();
    }

    if (a11->var1 + device)
    {
      v58 = a11->var1 + device;
      _MTLMessageContextPush_();
    }

    if (a11->var2 + v84)
    {
      v48 = a11->var2 + v84;
      goto LABEL_172;
    }
  }

  if ((v83[9] & 4) != 0)
  {
    if (a6->var0 % *(v83 + 4))
    {
      v63 = *v83;
      _MTLMessageContextPush_();
    }

    if (a6->var1 % *(v83 + 5))
    {
      v64 = *v83;
      _MTLMessageContextPush_();
    }

    if (a6->var2 % *(v83 + 6))
    {
      v65 = *v83;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v83 + 4))
    {
      v66 = *v83;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v83 + 5))
    {
      v67 = *v83;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v83 + 6))
    {
      v68 = *v83;
      _MTLMessageContextPush_();
    }
  }

  if ((v87[9] & 4) != 0)
  {
    if (a11->var0 % *(v87 + 4))
    {
      v69 = *v87;
      _MTLMessageContextPush_();
    }

    if (a11->var1 % *(v87 + 5))
    {
      v70 = *v87;
      _MTLMessageContextPush_();
    }

    if (a11->var2 % *(v87 + 6))
    {
      v71 = *v87;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v87 + 4))
    {
      v72 = *v87;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v87 + 5))
    {
      v73 = *v87;
      _MTLMessageContextPush_();
    }

    if (0uLL % *(v87 + 6))
    {
      v74 = *v87;
      _MTLMessageContextPush_();
    }
  }

  if ((v83[9] & 0x20) != 0 || (v87[9] & 0x20) != 0)
  {
    if (a6->var0)
    {
      v49 = *v83;
      _MTLMessageContextPush_();
    }

    if (a6->var1)
    {
      v50 = *v83;
      _MTLMessageContextPush_();
    }

    if (a6->var2)
    {
      v51 = *v83;
      _MTLMessageContextPush_();
    }

    if (v85->var0)
    {
      v76 = *v83;
      _MTLMessageContextPush_();
    }

    if (v85->var1)
    {
      v77 = *v83;
      _MTLMessageContextPush_();
    }

    if (v85->var2)
    {
      v78 = *v83;
      _MTLMessageContextPush_();
    }

    if (a11->var0)
    {
      v52 = *v87;
      _MTLMessageContextPush_();
    }

    if (a11->var1)
    {
      v53 = *v87;
      _MTLMessageContextPush_();
    }

    if (a11->var2)
    {
      v54 = *v87;
      _MTLMessageContextPush_();
    }

    if (v20)
    {
      v79 = *v87;
      _MTLMessageContextPush_();
    }

    if (device)
    {
      v80 = *v87;
      _MTLMessageContextPush_();
    }

    if (v84)
    {
      v81 = *v87;
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
}

- (void)validateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12 move:(BOOL)a13
{
  v17 = *a6;
  v16 = *a7;
  v15 = *a11;
  [(MTLDebugBlitCommandEncoder *)self internalValidateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v17 sourceSize:&v16 toTexture:a9 destinationSlice:a10 destinationLevel:&v15 destinationOrigin:a12 options:?];
  v17.var2 = 0;
  *&v17.var0 = a3;
  v16.var2 = 0;
  *&v16.var0 = a8;
  validateResourceAliasing(&v17, &v16, a13);
}

- (void)validateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceSize:(id *)a6 toTexture:(id)a7 destinationSlice:(unint64_t)a8 destinationLevel:(unint64_t)a9 options:(unint64_t)a10 sliceCount:(unint64_t)a11 levelCount:(unint64_t)a12
{
  v14 = a5;
  v23 = 0uLL;
  v24[0] = 0;
  v21 = *&a6->var0;
  v22[0] = a6->var2;
  v19 = 0uLL;
  v20 = 0;
  [(MTLDebugBlitCommandEncoder *)self internalValidateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v23 sourceSize:&v21 toTexture:a7 destinationSlice:a8 destinationLevel:a9 destinationOrigin:&v19 options:a10];
  *&v23 = ResourceIdentity::UnwindTexture(a3, a4, a11, v14, a12, v24, v24 + 1);
  DWORD2(v23) = [a3 usage];
  HIDWORD(v23) = [a3 bufferBytesPerRow];
  *&v21 = ResourceIdentity::UnwindTexture(a7, a8, a11, a9, a12, v22, v22 + 1);
  DWORD2(v21) = [a7 usage];
  HIDWORD(v21) = [a7 bufferBytesPerRow];
  v19 = v23;
  v20 = v24[0];
  v17 = v21;
  v18 = v22[0];
  validateResourceAliasing(&v19, &v17, 1);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v24 = *a6;
  v23 = *a7;
  v22 = *a11;
  LOBYTE(v20) = 0;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v24 sourceSize:&v23 toTexture:a9 destinationSlice:a10 destinationLevel:&v22 destinationOrigin:0 options:v20 move:?];
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a8 retained:1 purgeable:1];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v24 = *a6;
  v23 = *a7;
  v19 = [a8 baseObject];
  v22 = *a11;
  [v17 copyFromTexture:v18 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v24 sourceSize:&v23 toTexture:v19 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v22];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  if ((a12 & 0x20000000) == 0)
  {
    v40 = a12 & 0xFFFFFFFF9FFFFFFFLL;
    v42 = *&a6->var0;
    *&v43 = a6->var2;
    v47 = *a7;
    v46 = *a11;
    LOBYTE(v37) = 0;
    [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v42 sourceSize:&v47 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v46 options:a12 move:v37];
    v18 = (a3 + 72);
    v19 = a8;
    v20 = a8 + 72;
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    v21 = *(a3 + 20);
    if ((~v21 & 0x60) == 0 && (~*(v20 + 2) & 0x60) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v40) cStringUsingEncoding:4];
      v31 = *v18;
      v36 = *v20;
      _MTLMessageContextPush_();
      v21 = *(a3 + 20);
    }

    if ((a12 & 1) != 0 && (v21 & 0x20) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v40) cStringUsingEncoding:4];
      v32 = *v18;
      _MTLMessageContextPush_();
      v21 = *(a3 + 20);
    }

    if ((a12 & 2) != 0 && (v21 & 0x40) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v40) cStringUsingEncoding:4];
      v33 = *v18;
      _MTLMessageContextPush_();
    }

    v22 = *(v20 + 2);
    if (a12)
    {
      v23 = a5;
      if ((v22 & 0x20) == 0)
      {
        [(__CFString *)_MTLDebugBlitOptionString(v40) cStringUsingEncoding:4];
        v34 = *v20;
        _MTLMessageContextPush_();
        v22 = *(v20 + 2);
      }

      if ((a12 & 2) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = a5;
      if ((a12 & 2) == 0)
      {
LABEL_17:
        _MTLMessageContextEnd();
        *(&self->hasEndEncoding + 3) = 1;
        [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
        [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:v19 retained:1 purgeable:1];
        v24 = [(MTLToolsObject *)self baseObject];
        v25 = [a3 baseObject];
        v47 = *a6;
        v46 = *a7;
        v26 = [v19 baseObject];
        v41 = *a11;
        [v24 copyFromTexture:v25 sourceSlice:a4 sourceLevel:v23 sourceOrigin:&v47 sourceSize:&v46 toTexture:v26 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v41 options:v40];
        return;
      }
    }

    if ((v22 & 0x40) == 0)
    {
      [(__CFString *)_MTLDebugBlitOptionString(v40) cStringUsingEncoding:4];
      v35 = *v20;
      _MTLMessageContextPush_();
    }

    goto LABEL_17;
  }

  v42 = *&a6->var0;
  *&v43 = a6->var2;
  v47 = *a7;
  v46 = *a11;
  LOBYTE(v37) = 0;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v42 sourceSize:&v47 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v46 options:a12 move:v37];
  *(&self->hasEndEncoding + 3) = 1;
  v28 = [(MTLToolsObject *)self baseObject];
  v29 = [a3 baseObject];
  v42 = *&a6->var0;
  *&v43 = a6->var2;
  v47 = *a7;
  v30 = [a8 baseObject];
  v46 = *a11;
  [v28 copyFromTexture:v29 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v42 sourceSize:&v47 toTexture:v30 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v46 options:a12 & 0xFFFFFFFF9FFFFFFFLL];
}

- (void)validateCopyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ((~a12 & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(a12 & 0xFFFFFFFF9FFFFFFFLL);
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v16 = &OBJC_IVAR___MTLToolsObject__device;
  if (!a3)
  {
    goto LABEL_65;
  }

  v17 = &selRef_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset_;
  if (([a3 conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    goto LABEL_63;
  }

  while (1)
  {
    if ([a3 conformsToProtocol:{v17[15].var0, var0}] && (v18 = *(&self->super.super.super.super.isa + *v16), v18 != objc_msgSend(a3, "device")))
    {
LABEL_65:
      _MTLMessageContextPush_();
      if (!a8)
      {
        goto LABEL_66;
      }
    }

    else if (!a8)
    {
      goto LABEL_66;
    }

    if (([a8 conformsToProtocol:&unk_28423C818] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([a8 conformsToProtocol:&unk_28423C818])
    {
      v19 = *(&self->super.super.super.super.isa + *v16);
      if (v19 != [a8 device])
      {
        _MTLMessageContextPush_();
      }

      if ([a8 storageMode] == 3)
      {
LABEL_66:
        _MTLMessageContextPush_();
      }
    }

    if (!(a7->var1 * a7->var0 * a7->var2))
    {
      var2 = a7->var2;
      v32 = 0;
      var0 = a7->var0;
      var1 = a7->var1;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions], a3, a8, @"buffer");
    if ([a8 isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    v35 = a3;
    v17 = a11;
    if ([a8 mipmapLevelCount] <= a10)
    {
      v27 = a10;
      var1 = [a8 mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    v20 = [a8 numFaces];
    if ([a8 arrayLength] * v20 <= a9)
    {
      [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
    }

    _MTLMessageContextEnd();
    v61 = 0;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v36 = *v16;
    v21 = *(&self->super.super.super.super.isa + v36);
    [a8 pixelFormat];
    a3 = [a8 width];
    [a8 height];
    v16 = [a8 depth];
    [a8 sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    v65 = 0;
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    [(MTLToolsObject *)self device];
    _MTLMessageContextBegin_();
    if (a7->var0 + a11->var0)
    {
      var0 = a7->var0 + a11->var0;
      var1 = 0;
      _MTLMessageContextPush_();
    }

    if (a7->var1 + a11->var1 > *(&v55 + 1))
    {
      var0 = a7->var1 + a11->var1;
      var1 = *(&v55 + 1);
      _MTLMessageContextPush_();
    }

    if (a7->var2 + a11->var2 > v56)
    {
      var0 = a7->var2 + a11->var2;
      var1 = v56;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    if (a8)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder validateCopyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
LABEL_63:
    _MTLMessageContextPush_();
  }

  v22 = (a8 + 72);
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v51 = *a11;
  v49 = *&a7->var0;
  v50 = a7->var2;
  v46 = v59;
  v47 = v60;
  v48 = v61;
  v42 = v55;
  v43 = v56;
  v44 = v57;
  v45 = v58;
  v23 = *(a8 + 88);
  v38 = *(a8 + 72);
  v39 = v23;
  v40 = *(a8 + 104);
  v41 = *(a8 + 15);
  _MTLAdjustMTLSize();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (*(&v59 + 1))
  {
    if (a4 % *(&v59 + 1))
    {
      var0 = a4;
      var1 = *(&v59 + 1);
      _MTLMessageContextPush_();
    }
  }

  else
  {
    [MTLDebugBlitCommandEncoder validateCopyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
  }

  if ((*(a8 + 81) & 4) != 0)
  {
    if (a11->var0 % *(a8 + 13))
    {
      var1 = *v22;
      var2 = *(a8 + 13);
      var0 = a11->var0;
      _MTLMessageContextPush_();
    }

    if (a11->var1 % *(a8 + 14))
    {
      var1 = *v22;
      var2 = *(a8 + 14);
      var0 = a11->var1;
      _MTLMessageContextPush_();
    }

    if (a11->var2 % *(a8 + 15))
    {
      var1 = *v22;
      var2 = *(a8 + 15);
      var0 = a11->var2;
      _MTLMessageContextPush_();
    }

    if (v52 % *(a8 + 13))
    {
      var1 = *v22;
      var2 = *(a8 + 13);
      var0 = v52;
      _MTLMessageContextPush_();
    }

    if (v53 % *(a8 + 14))
    {
      var1 = *v22;
      var2 = *(a8 + 14);
      var0 = v53;
      _MTLMessageContextPush_();
    }

    if (v54 % *(a8 + 15))
    {
      var1 = *v22;
      var2 = *(a8 + 15);
      var0 = v54;
      _MTLMessageContextPush_();
    }

    if ((*(a8 + 81) & 0x20) != 0)
    {
      if ((a12 & 4) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((a12 & 4) != 0)
    {
LABEL_67:
      var0 = *v22;
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v24 = *(&self->super.super.super.super.isa + v36);
  [a8 pixelFormat];
  [a8 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v25 = -a5 - a6 + a4;
  if (v25 > [v35 length])
  {
    v28 = v25 + *(&v44 + 1) * a6;
    v30 = [v35 length];
    _MTLMessageContextPush_();
  }

  if (a5 % *(&v59 + 1))
  {
    v28 = a5;
    v30 = *(&v59 + 1);
    _MTLMessageContextPush_();
  }

  if (a6 % *(&v59 + 1))
  {
    v28 = a6;
    v30 = *(&v59 + 1);
    _MTLMessageContextPush_();
  }

  if ([a8 textureType] != 9 && a5 > *(&v59 + 1) * _MTLDebugFindMaxTextureWidth(*(&self->super.super.super.super.isa + v36), a8))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&v43 = 0;
  v42 = v35;
  *&v39 = 0;
  v38 = a8;
  validateResourceAliasing(&v42, &v38, 0);
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v23 = *a7;
  v22 = *a11;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v23 toTexture:a9 destinationSlice:a10 destinationLevel:&v22 destinationOrigin:0 options:?];
  if ((~*(a8 + 20) & 0x60) == 0)
  {
    v20 = *(a8 + 9);
    MTLReportFailure();
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1, v20];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a8 retained:1 purgeable:1];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v23 = *a7;
  v19 = [a8 baseObject];
  v22 = *a11;
  [v17 copyFromBuffer:v18 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v23 toTexture:v19 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v22];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  v16 = a12 & 0xFFFFFFFF9FFFFFFFLL;
  v29 = *&a7->var0;
  *&v30 = a7->var2;
  v33 = *a11;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v29 toTexture:a9 destinationSlice:a10 destinationLevel:&v33 destinationOrigin:a12 options:?];
  v17 = (a8 + 72);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v18 = *(a8 + 20);
  if ((a12 & 1) != 0 && (v18 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v16) cStringUsingEncoding:4];
    v22 = *v17;
    _MTLMessageContextPush_();
    v18 = *(a8 + 20);
  }

  if ((a12 & 2) != 0 && (v18 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v16) cStringUsingEncoding:4];
    v23 = *v17;
    _MTLMessageContextPush_();
    v18 = *(a8 + 20);
  }

  if ((v18 & 0x20) != 0 && !v16 && (v18 & 0x40) != 0)
  {
    [@"MTLBlitOptionNone" cStringUsingEncoding:4];
    v24 = *v17;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a8 retained:1 purgeable:1];
  v19 = [(MTLToolsObject *)self baseObject];
  v20 = [a3 baseObject];
  v33 = *a7;
  v21 = [a8 baseObject];
  v28 = *a11;
  [v19 copyFromBuffer:v20 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v33 toTexture:v21 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v28 options:v16];
}

- (void)validateCopyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v18 = self;
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if ((~a12 & 3) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLDebugValidateBlitOption(a12 & 0xFFFFFFFF9FFFFFFFLL);
  if (*(&v18->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v19 = &OBJC_IVAR___MTLToolsObject__device;
  if (!a3)
  {
    goto LABEL_71;
  }

  v20 = &selRef_loadTexture_slice_level_size_bytesPerRow_bytesPerImage_dstOrigin_handle_handleOffset_;
  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    goto LABEL_69;
  }

  while (1)
  {
    if (![a3 conformsToProtocol:v20[47]])
    {
      goto LABEL_11;
    }

    v21 = *(&v18->super.super.super.super.isa + *v19);
    if (v21 != [a3 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 storageMode] == 3)
    {
LABEL_71:
      _MTLMessageContextPush_();
      if (!a8)
      {
        goto LABEL_72;
      }
    }

    else
    {
LABEL_11:
      if (!a8)
      {
        goto LABEL_72;
      }
    }

    if (([a8 conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if ([a8 conformsToProtocol:&unk_284222E68])
    {
      v22 = *(&v18->super.super.super.super.isa + *v19);
      if (v22 != [a8 device])
      {
LABEL_72:
        _MTLMessageContextPush_();
      }
    }

    if (!(a7->var1 * a7->var0 * a7->var2))
    {
      var2 = a7->var2;
      v37 = 0;
      var0 = a7->var0;
      var1 = a7->var1;
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v65 = 0u;
    [(MTLToolsObject *)v18 device];
    _MTLMessageContextBegin_();
    validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)v18 commandBuffer] protectionOptions], a3, a8, @"texture");
    if ([a3 isFramebufferOnly])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 mipmapLevelCount] <= a5)
    {
      v32 = a5;
      var1 = [a3 mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    v38 = a8;
    v23 = [a3 numFaces];
    if ([a3 arrayLength] * v23 <= a4)
    {
      [MTLDebugBlitCommandEncoder internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:];
    }

    _MTLMessageContextEnd();
    v64 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v39 = *v19;
    a4 = *(&v18->super.super.super.super.isa + v39);
    a8 = [a3 pixelFormat];
    [a3 width];
    v20 = v18;
    v18 = [a3 height];
    v19 = [a3 depth];
    [a3 sampleCount];
    MTLGetTextureLevelInfoForDeviceWithOptions();
    if (a3)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder validateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
LABEL_69:
    _MTLMessageContextPush_();
  }

  v24 = (a3 + 72);
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v53 = *&a6->var0;
  v54 = a6->var2;
  v51 = *&a7->var0;
  v52 = a7->var2;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v44 = v58;
  v45 = v59;
  v46 = v60;
  v47 = v61;
  v25 = *(a3 + 88);
  v40 = *(a3 + 72);
  v41 = v25;
  v42 = *(a3 + 104);
  v43 = *(a3 + 15);
  _MTLAdjustMTLSize();
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0;
  [v20 device];
  _MTLMessageContextBegin_();
  v26 = a6->var0;
  if ((*(a3 + 81) & 4) != 0)
  {
    v28 = v55 + v26;
    if (v28 > v61)
    {
      var0 = v28;
      var1 = v61;
      _MTLMessageContextPush_();
    }

    if (v56 + a6->var1 > *(&v61 + 1))
    {
      var0 = v56 + a6->var1;
      var1 = *(&v61 + 1);
      _MTLMessageContextPush_();
    }

    if (v57 + a6->var2 > v62)
    {
      var0 = v57 + a6->var2;
      var1 = v62;
LABEL_74:
      _MTLMessageContextPush_();
    }
  }

  else
  {
    v27 = a7->var0 + v26;
    if (v27 > v58)
    {
      var0 = v27;
      var1 = v58;
      _MTLMessageContextPush_();
    }

    if (a7->var1 + a6->var1 > *(&v58 + 1))
    {
      var0 = a7->var1 + a6->var1;
      var1 = *(&v58 + 1);
      _MTLMessageContextPush_();
    }

    if (a7->var2 + a6->var2 > v59)
    {
      var0 = a7->var2 + a6->var2;
      var1 = v59;
      goto LABEL_74;
    }
  }

  if (*(&v62 + 1))
  {
    if (a9 % *(&v62 + 1))
    {
      var0 = a9;
      var1 = *(&v62 + 1);
      _MTLMessageContextPush_();
    }
  }

  else
  {
    [MTLDebugBlitCommandEncoder validateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:];
  }

  if ((*(a3 + 81) & 4) != 0)
  {
    if (a6->var0 % *(a3 + 13))
    {
      var1 = *v24;
      var2 = *(a3 + 13);
      var0 = a6->var0;
      _MTLMessageContextPush_();
    }

    if (a6->var1 % *(a3 + 14))
    {
      var1 = *v24;
      var2 = *(a3 + 14);
      var0 = a6->var1;
      _MTLMessageContextPush_();
    }

    if (a6->var2 % *(a3 + 15))
    {
      var1 = *v24;
      var2 = *(a3 + 15);
      var0 = a6->var2;
      _MTLMessageContextPush_();
    }

    if (v55 % *(a3 + 13))
    {
      var1 = *v24;
      var2 = *(a3 + 13);
      var0 = v55;
      _MTLMessageContextPush_();
    }

    if (v56 % *(a3 + 14))
    {
      var1 = *v24;
      var2 = *(a3 + 14);
      var0 = v56;
      _MTLMessageContextPush_();
    }

    if (v57 % *(a3 + 15))
    {
      var1 = *v24;
      var2 = *(a3 + 15);
      var0 = v57;
      _MTLMessageContextPush_();
    }

    if ((*(a3 + 81) & 0x20) != 0)
    {
      if ((a12 & 4) == 0)
      {
        goto LABEL_75;
      }
    }

    else if ((a12 & 4) != 0)
    {
LABEL_75:
      var0 = *v24;
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v68 = 0;
  v66 = 0u;
  v67 = 0u;
  v65 = 0u;
  [v20 device];
  _MTLMessageContextBegin_();
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v29 = *(v20 + v39);
  [a3 pixelFormat];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  v30 = -a10 - a11 + a9;
  if (v30 > [v38 length])
  {
    v33 = v30 + *(&v46 + 1) * a11;
    v35 = [v38 length];
    _MTLMessageContextPush_();
  }

  if (a10 % *(&v62 + 1))
  {
    _MTLMessageContextPush_();
    v33 = a10;
    v35 = *(&v62 + 1);
    _MTLMessageContextPush_();
  }

  if (a11 % *(&v62 + 1))
  {
    v33 = a11;
    v35 = *(&v62 + 1);
    _MTLMessageContextPush_();
  }

  if ([a3 textureType] != 9 && a10 > *(&v62 + 1) * _MTLDebugFindMaxTextureWidth(*(v20 + v39), a3))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *&v45 = 0;
  v44 = a3;
  *&v41 = 0;
  v40 = v38;
  validateResourceAliasing(&v44, &v40, 0);
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v22 = *a6;
  v21 = *a7;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toBuffer:a9 destinationOffset:a10 destinationBytesPerRow:a11 destinationBytesPerImage:0 options:?];
  if ((~*(a3 + 20) & 0x60) == 0)
  {
    v19 = *(a3 + 9);
    MTLReportFailure();
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1, v19];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a8 retained:1 purgeable:1];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v22 = *a6;
  v21 = *a7;
  [v17 copyFromTexture:v18 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v22 sourceSize:&v21 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:{a10, a11}];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v17 = a12 & 0xFFFFFFFF9FFFFFFFLL;
  v29 = *&a6->var0;
  *&v30 = a6->var2;
  v33 = *a7;
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v29 sourceSize:&v33 toBuffer:a9 destinationOffset:a10 destinationBytesPerRow:a11 destinationBytesPerImage:a12 options:?];
  v18 = (a3 + 72);
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v19 = *(a3 + 20);
  if ((a12 & 1) != 0 && (v19 & 0x20) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v17) cStringUsingEncoding:4];
    v22 = *v18;
    _MTLMessageContextPush_();
    v19 = *(a3 + 20);
  }

  if ((a12 & 2) != 0 && (v19 & 0x40) == 0)
  {
    [(__CFString *)_MTLDebugBlitOptionString(v17) cStringUsingEncoding:4];
    v23 = *v18;
    _MTLMessageContextPush_();
    v19 = *(a3 + 20);
  }

  if ((v19 & 0x20) != 0 && !v17 && (v19 & 0x40) != 0)
  {
    [@"MTLBlitOptionNone" cStringUsingEncoding:4];
    v24 = *v18;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a8 retained:1 purgeable:1];
  v20 = [(MTLToolsObject *)self baseObject];
  v21 = [a3 baseObject];
  v33 = *a6;
  v27 = *&a7->var0;
  var2 = a7->var2;
  [v20 copyFromTexture:v21 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v33 sourceSize:&v27 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:a10 options:{a11, v17}];
}

- (void)generateMipmapsForTexture:(id)a3
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    goto LABEL_17;
  }

  while (1)
  {
    device = self->super.super.super._device;
    if (device != [a3 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 storageMode] == 3)
    {
      _MTLMessageContextPush_();
    }

    if ([a3 mipmapLevelCount] <= 1)
    {
      [MTLDebugBlitCommandEncoder generateMipmapsForTexture:a3];
    }

    v6 = (a3 + 72);
    v7 = *(a3 + 20);
    if ((v7 & 0x10) != 0)
    {
      if ((v7 & 4) != 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v8 = *v6;
      _MTLMessageContextPush_();
      v6 = (a3 + 72);
      if ((*(a3 + 20) & 4) != 0)
      {
        goto LABEL_12;
      }
    }

    v8 = *v6;
    _MTLMessageContextPush_();
LABEL_12:
    if (*(&self->hasEndEncoding + 4))
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    if (a3)
    {
      break;
    }

    [MTLDebugBlitCommandEncoder generateMipmapsForTexture:];
LABEL_17:
    _MTLMessageContextPush_();
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  if (a3)
  {
    if (([a3 conformsToProtocol:&unk_284222E68] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    if (![a3 conformsToProtocol:&unk_284222E68] || (device = self->super.super.super._device, device == objc_msgSend(a3, "device")))
    {
      if (a5)
      {
        goto LABEL_9;
      }

LABEL_22:
      _MTLMessageContextPush_();
      goto LABEL_13;
    }
  }

  _MTLMessageContextPush_();
  if (!a5)
  {
    goto LABEL_22;
  }

LABEL_9:
  if (([a5 conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if ([a5 conformsToProtocol:&unk_284222E68])
  {
    v14 = self->super.super.super._device;
    if (v14 != [a5 device])
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  _MTLMessageContextEnd();
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (a7 + a4 > [objc_msgSend(a3 "baseObject")])
  {
    [MTLDebugBlitCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
  }

  if (a7 + a6 > [objc_msgSend(a5 "baseObject")])
  {
    [MTLDebugBlitCommandEncoder copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:];
    if (a7)
    {
      goto LABEL_17;
    }

LABEL_20:
    v15 = 0;
    _MTLMessageContextPush_();
    goto LABEL_17;
  }

  if (!a7)
  {
    goto LABEL_20;
  }

LABEL_17:
  validateBlitProtectionOptions([(MTLToolsRetainingContainer *)[(MTLToolsCommandEncoder *)self commandBuffer] protectionOptions], a3, a5, @"buffer");
  _MTLMessageContextEnd();
  v17[1] = 0;
  v17[2] = 0;
  v16[2] = 0;
  v17[0] = a3;
  v16[0] = a5;
  v16[1] = 0;
  validateResourceAliasing(v17, v16, 1);
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a5 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)updateFence:(id)a3
{
  v5 = a3;
  std::deque<objc_object *>::push_back(&self->updatedFences.__map_.__first_, &v5);
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)waitForFence:(id)a3
{
  p_updatedFences = &self->updatedFences;
  size = self->updatedFences.__size_;
  if (size)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      if ((*(p_updatedFences->__map_.var0 + (((p_updatedFences->__start_ + v7) >> 6) & 0x3FFFFFFFFFFFFF8)))[(p_updatedFences->__start_ + v7) & 0x1FF] == a3)
      {
        MTLReportFailure();
        size = p_updatedFences->__size_;
      }

      v7 = v8;
    }

    while (size > v8++);
  }

  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  v10 = [(MTLToolsObject *)self baseObject];
  v11 = [a3 baseObject];

  [v10 waitForFence:v11];
}

- (void)endEncoding
{
  if (*(&self->hasEndEncoding + 4))
  {
    [MTLDebugBlitCommandEncoder endEncoding];
  }

  if (!*(&self->hasEndEncoding + 3))
  {
    [MTLDebugBlitCommandEncoder endEncoding];
  }

  *(&self->hasEndEncoding + 2) = 1;
  *(&self->hasEndEncoding + 4) = 1;
  v3 = [(MTLToolsObject *)self baseObject];

  [v3 endEncoding];
}

- (void)resetTextureAccessCounters:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6
{
  if (([a3 isSparse] & 1) == 0)
  {
    [MTLDebugBlitCommandEncoder resetTextureAccessCounters:region:mipLevel:slice:];
  }

  v11 = *&a4->var0.var2;
  v15 = *&a4->var0.var0;
  v16 = v11;
  v17 = *&a4->var1.var1;
  [(MTLDebugBlitCommandEncoder *)self validateTextureAccess:a3 region:&v15 mipLevel:a5 slice:a6];
  v12 = [(MTLToolsObject *)self baseObject];
  v13 = [a3 baseObject];
  v14 = *&a4->var0.var2;
  v15 = *&a4->var0.var0;
  v16 = v14;
  v17 = *&a4->var1.var1;
  [v12 resetTextureAccessCounters:v13 region:&v15 mipLevel:a5 slice:a6];
}

- (void)validateTextureAccess:(id)a3 region:(id *)a4 mipLevel:(unint64_t)a5 slice:(unint64_t)a6
{
  v10 = self;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v11 = [a3 arrayLength];
  v12 = [a3 textureType];
  v13 = 6;
  if ((v12 - 5) >= 2)
  {
    v13 = 1;
  }

  if (v13 * v11 <= a6)
  {
    v28 = a6;
    v31 = [a3 arrayLength];
    _MTLMessageContextPush_();
  }

  v14 = [a3 mipmapLevelCount] - 1;
  if (v14 >= [a3 firstMipmapInTail])
  {
    v15 = [a3 firstMipmapInTail];
  }

  else
  {
    v15 = [a3 mipmapLevelCount] - 1;
  }

  if (v15 < a5)
  {
    [MTLDebugBlitCommandEncoder validateTextureAccess:a3 region:? mipLevel:? slice:?];
  }

  _MTLMessageContextEnd();
  v16 = *(v10 + 24);
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (a3)
  {
    if ([a3 placementSparsePageSize])
    {
      v17 = [a3 device];
      v18 = [a3 textureType];
      v19 = [a3 pixelFormat];
      v20 = [a3 sampleCount];
      v21 = [a3 placementSparsePageSize];
      if (v17)
      {
        [v17 sparseTileSizeWithTextureType:v18 pixelFormat:v19 sampleCount:v20 sparsePageSize:v21];
LABEL_16:
        v25 = v32;
        v17 = v33;
        a3 = v34;
        goto LABEL_18;
      }
    }

    else
    {
      v17 = [a3 device];
      v22 = [a3 textureType];
      v23 = [a3 pixelFormat];
      v24 = [a3 sampleCount];
      if (v17)
      {
        [v17 sparseTileSizeWithTextureType:v22 pixelFormat:v23 sampleCount:v24];
        goto LABEL_16;
      }
    }

    a3 = 0;
    v25 = 0;
LABEL_18:
    [v10 device];
    _MTLMessageContextBegin_();
    v26 = (v25 - 1) / v25;
    v16 = a3 - 1;
    v10 = (v17 - 1) / v17;
    if (a4->var1.var0 + a4->var0.var0 <= v26)
    {
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  [MTLDebugBlitCommandEncoder validateTextureAccess:region:mipLevel:slice:];
LABEL_25:
  _MTLMessageContextPush_();
LABEL_19:
  v27 = v16 / a3;
  if (a4->var1.var1 + a4->var0.var1 > v10)
  {
    v29 = a4->var1.var1 + a4->var0.var1;
    _MTLMessageContextPush_();
  }

  if (a4->var1.var2 + a4->var0.var2 > v27)
  {
    v30 = a4->var1.var2 + a4->var0.var2;
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
}

- (void)optimizeContentsForGPUAccess:(id)a3
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeContentsForGPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v11 = a5;
    v12 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v10 = [a3 numFaces];
  if ([a3 arrayLength] * v10 <= a4)
  {
    [MTLDebugBlitCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeContentsForCPUAccess:(id)a3
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeContentsForCPUAccess:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (([a3 conformsToProtocol:&unk_28423C818] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 mipmapLevelCount] <= a5)
  {
    v11 = a5;
    v12 = [a3 mipmapLevelCount];
    _MTLMessageContextPush_();
  }

  v10 = [a3 numFaces];
  if ([a3 arrayLength] * v10 <= a4)
  {
    [MTLDebugBlitCommandEncoder optimizeContentsForGPUAccess:slice:level:];
  }

  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)resetCommandsInBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v62.length = [a3 size];
  v60.location = location;
  v60.length = length;
  v62.location = 0;
  v8 = NSIntersectionRange(v60, v62);
  if (v8.location != location || v8.length != length)
  {
    v51 = length;
    v52 = [a3 size];
    v50 = location;
    MTLReportFailure();
  }

  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1, v50, v51, v52];
  [-[MTLToolsObject baseObject](self "baseObject")];
  __p = 0;
  v58 = 0;
  v59 = 0;
  v10 = [a3 optimizedRangeList];
  v11 = 0;
  __src = 0;
  v55 = 0;
  v56 = 0;
  while (v11 < [v10 count])
  {
    v12 = [objc_msgSend(v10 objectAtIndexedSubscript:{v11), "rangeValue"}];
    v14 = v13;
    v61.location = [objc_msgSend(v10 objectAtIndexedSubscript:{v11), "rangeValue"}];
    v63.location = location;
    v63.length = length;
    v15 = NSIntersectionRange(v61, v63);
    if (v12 == location && v14 == length || v12 == v15.location && v14 == v15.length)
    {
      v53 = v11;
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v53);
    }

    else if (v15.length)
    {
      v53 = v11;
      std::vector<unsigned long long>::push_back[abi:ne200100](&__p, &v53);
      v16 = (LODWORD(v15.location) - v12);
      if (v16 < 1)
      {
        LODWORD(v16) = 0;
      }

      else
      {
        v17 = v55;
        if (v55 >= v56)
        {
          v19 = __src;
          v20 = v55 - __src;
          v21 = (v55 - __src) >> 4;
          v22 = v21 + 1;
          if ((v21 + 1) >> 60)
          {
            std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
          }

          v23 = v56 - __src;
          if ((v56 - __src) >> 3 > v22)
          {
            v22 = v23 >> 3;
          }

          v24 = v23 >= 0x7FFFFFFFFFFFFFF0;
          v25 = 0xFFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v25 = v22;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(&__src, v25);
          }

          v26 = (v55 - __src) >> 4;
          v27 = (16 * v21);
          *v27 = v12;
          v27[1] = v16;
          v18 = 16 * v21 + 16;
          v28 = &v27[-2 * v26];
          memcpy(v28, v19, v20);
          v29 = __src;
          __src = v28;
          v55 = v18;
          v56 = 0;
          if (v29)
          {
            operator delete(v29);
          }
        }

        else
        {
          *v55 = v12;
          *(v17 + 1) = v16;
          v18 = (v17 + 16);
        }

        v55 = v18;
      }

      v30 = (v14 - v16 - LODWORD(v15.length));
      if (v30 >= 1)
      {
        v31 = v15.location + v15.length;
        v32 = v55;
        if (v55 >= v56)
        {
          v34 = __src;
          v35 = v55 - __src;
          v36 = (v55 - __src) >> 4;
          v37 = v36 + 1;
          if ((v36 + 1) >> 60)
          {
            std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
          }

          v38 = v56 - __src;
          if ((v56 - __src) >> 3 > v37)
          {
            v37 = v38 >> 3;
          }

          v24 = v38 >= 0x7FFFFFFFFFFFFFF0;
          v39 = 0xFFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v39 = v37;
          }

          if (v39)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<_NSRange>>(&__src, v39);
          }

          v40 = (v55 - __src) >> 4;
          v41 = (16 * v36);
          *v41 = v31;
          v41[1] = v30;
          v33 = 16 * v36 + 16;
          v42 = (16 * v36 - 16 * v40);
          memcpy(v42, v34, v35);
          v43 = __src;
          __src = v42;
          v55 = v33;
          v56 = 0;
          if (v43)
          {
            operator delete(v43);
          }
        }

        else
        {
          *v55 = v31;
          *(v32 + 1) = v30;
          v33 = (v32 + 16);
        }

        v55 = v33;
      }
    }

    ++v11;
  }

  v44 = __p;
  if (v58 != __p)
  {
    v45 = 0;
    v46 = 0;
    do
    {
      [v10 removeObjectAtIndex:v45 + v44[v46++]];
      v44 = __p;
      --v45;
    }

    while (v46 < (v58 - __p) >> 3);
  }

  v47 = __src;
  if (v55 != __src)
  {
    v48 = 0;
    v49 = 0;
    do
    {
      [v10 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", *&v47[v48], *&v47[v48 + 8])}];
      ++v49;
      v47 = __src;
      v48 += 16;
    }

    while (v49 < (v55 - __src) >> 4);
  }

  if (v47)
  {
    v55 = v47;
    operator delete(v47);
  }

  if (__p)
  {
    v58 = __p;
    operator delete(__p);
  }
}

- (void)copyIndirectCommandBuffer:(id)a3 sourceRange:(_NSRange)a4 destination:(id)a5 destinationIndex:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (([a3 conformsToProtocol:&unk_28421F578] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([a5 conformsToProtocol:&unk_28421F578] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a5 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)optimizeIndirectCommandBuffer:(id)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  v20.length = [a3 size];
  v18.location = location;
  v18.length = length;
  v20.location = 0;
  v8 = NSIntersectionRange(v18, v20);
  if (v8.location != location || v8.length != length)
  {
    v16 = length;
    v17 = [a3 size];
    v15 = location;
    _MTLMessageContextPush_();
  }

  v9 = [a3 optimizedRangeList];
  if (![v9 count])
  {
    _MTLMessageContextEnd();
LABEL_21:
    [v9 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRange:", location, length)}];
    goto LABEL_22;
  }

  v10 = 0;
  do
  {
    v12 = [objc_msgSend(v9 objectAtIndexedSubscript:{v10), "rangeValue"}] == location && v11 == length;
    v13 = v12;
    if (!v12)
    {
      v19.location = [objc_msgSend(v9 objectAtIndexedSubscript:{v10), "rangeValue"}];
      v21.location = location;
      v21.length = length;
      if (NSIntersectionRange(v19, v21).length)
      {
        _MTLMessageContextPush_();
      }
    }

    if (++v10 >= [v9 count])
    {
      v14 = 1;
    }

    else
    {
      v14 = v13;
    }
  }

  while ((v14 & 1) == 0);
  _MTLMessageContextEnd();
  if ((v13 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
    if (a7)
    {
      goto LABEL_3;
    }
  }

  else if (a7)
  {
    goto LABEL_3;
  }

  _MTLMessageContextPush_();
LABEL_3:
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  validateTextureRegion(self->super.super.super._device, a3, a4, a5, a6, &v32);
  if ((BYTE8(v32) & 0x61) == 1)
  {
    if ((WORD4(v32) & 0x2000) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v20 = v32;
    _MTLMessageContextPush_();
    if ((WORD4(v32) & 0x2000) == 0)
    {
      goto LABEL_17;
    }
  }

  v24 = a5;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = self->super.super.super._device;
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDeviceWithOptions();
  if (a6->var0.var0)
  {
    _MTLMessageContextPush_();
  }

  if (a6->var0.var1)
  {
    _MTLMessageContextPush_();
  }

  a5 = v24;
  if (a6->var0.var2)
  {
    _MTLMessageContextPush_();
  }

  if (a6->var1.var0 != v25)
  {
    var0 = a6->var1.var0;
    _MTLMessageContextPush_();
  }

  if (a6->var1.var1 != *(&v25 + 1))
  {
    var1 = a6->var1.var1;
    _MTLMessageContextPush_();
  }

  if (a6->var1.var2 != v26)
  {
    var2 = a6->var1.var2;
    _MTLMessageContextPush_();
  }

LABEL_17:
  if (*(&v33 + 1) > a8)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v19 = *&a6->var0.var2;
  v25 = *&a6->var0.var0;
  v26 = v19;
  v27 = *&a6->var1.var1;
  [v17 fillTexture:v18 level:a4 slice:a5 region:&v25 bytes:a7 length:a8];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v22 = 0;
  memset(v21, 0, sizeof(v21));
  validateTextureRegion(self->super.super.super._device, a3, a4, a5, a6, v21);
  if ((WORD4(v21[0]) & 0x461) != 1)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v19 = *&a6->var0.var2;
  v20[0] = *&a6->var0.var0;
  v20[1] = v19;
  v20[2] = *&a6->var1.var1;
  [v17 fillTexture:v18 level:a4 slice:a5 region:v20 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (*(&self->hasEndEncoding + 4))
  {
    _MTLMessageContextPush_();
  }

  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  validateTextureRegion(self->super.super.super._device, a3, a4, a5, a6, &v24);
  v23 = 0;
  memset(&v22[3], 0, 48);
  [(MTLToolsObject *)self->super.super.super._device baseObject];
  MTLPixelFormatGetInfoForDevice();
  _MTLMessageContextPush_();
  if (v25)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  v19 = [(MTLToolsObject *)self baseObject];
  v20 = [a3 baseObject];
  v21 = *&a6->var0.var2;
  v22[0] = *&a6->var0.var0;
  v22[1] = v21;
  v22[2] = *&a6->var1.var1;
  [v19 fillTexture:v20 level:a4 slice:a5 region:v22 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!a9)
  {
    _MTLMessageContextPush_();
  }

  if (!a10)
  {
    _MTLMessageContextPush_();
  }

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = self->super.super.super._device;
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = self->super.super.super._device;
  [a6 pixelFormat];
  [a6 width];
  [a6 height];
  [a6 depth];
  [a6 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v30 = [a3 numFaces];
  v31 = [a6 numFaces];
  if (a10 + a5 > [a3 mipmapLevelCount])
  {
    v21 = a10;
    v25 = [a3 mipmapLevelCount];
    v17 = a5;
    _MTLMessageContextPush_();
  }

  if (a10 + a8 > [a6 mipmapLevelCount])
  {
    v22 = a10;
    v26 = [a6 mipmapLevelCount];
    v18 = a8;
    _MTLMessageContextPush_();
  }

  if (a9 + a4 > [a3 arrayLength] * v30)
  {
    v27 = [a3 arrayLength];
    v29 = v30;
    v19 = a4;
    v23 = a9;
    _MTLMessageContextPush_();
  }

  if (a9 + a7 > [a6 arrayLength] * v31)
  {
    [a6 arrayLength];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  memset(v36, 0, sizeof(v36));
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceSize:v36 toTexture:a6 destinationSlice:a7 destinationLevel:a8 options:0 sliceCount:a9 levelCount:a10];
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a6 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  v6 = [a3 width];
  v7 = [a3 height];
  v8 = [a3 depth];
  v77 = v8;
  v78 = v7;
  v9 = [a4 width];
  v10 = [a4 height];
  v11 = [a4 depth];
  v12 = 0;
  v75 = v11;
  v76 = v10;
  v13 = &v76;
  v14 = &v75;
  v15 = &v76;
  v16 = &v75;
  v17 = v8 > v11;
  if (v8 <= v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = v8;
  }

  if (v8 <= v11)
  {
    v19 = v10;
  }

  else
  {
    v19 = v7;
  }

  if (v17)
  {
    v20 = v9;
  }

  else
  {
    v20 = v6;
  }

  if (v17)
  {
    v21 = v6;
  }

  else
  {
    v16 = &v77;
    v21 = v9;
  }

  v22 = v17;
  if (!v17)
  {
    v15 = &v78;
  }

  if (v7 <= v10)
  {
    v23 = v18;
  }

  else
  {
    v23 = v8;
  }

  if (v7 <= v10)
  {
    v24 = v19;
  }

  else
  {
    v24 = v7;
  }

  if (v7 <= v10)
  {
    v25 = v20;
  }

  else
  {
    v25 = v9;
  }

  if (v7 <= v10)
  {
    v26 = v22;
  }

  else
  {
    v21 = v6;
    v26 = 1;
  }

  if (v7 <= v10)
  {
    v27 = v16;
  }

  else
  {
    v27 = &v75;
  }

  if (v7 <= v10)
  {
    v28 = v15;
  }

  else
  {
    v28 = &v76;
  }

  if (v6 <= v9)
  {
    v29 = v23;
  }

  else
  {
    v29 = v8;
  }

  if (v6 <= v9)
  {
    v30 = v24;
  }

  else
  {
    v30 = v7;
  }

  if (v6 <= v9)
  {
    v31 = v25;
  }

  else
  {
    v31 = v9;
  }

  if (v6 <= v9)
  {
    v13 = v28;
  }

  v32 = *v13;
  if (v6 <= v9)
  {
    v33 = v21;
  }

  else
  {
    v33 = v6;
  }

  if (v6 <= v9)
  {
    v14 = v27;
  }

  v34 = *v14;
  if (v6 <= v9)
  {
    v35 = v26;
  }

  else
  {
    v35 = 1;
  }

  while (v33 > v31 || v30 > v32 || v29 > v34)
  {
    v33 >>= 1;
    v30 >>= 1;
    ++v12;
    v29 >>= 1;
  }

  if (v35)
  {
    v36 = v12;
  }

  else
  {
    v36 = 0;
  }

  v53 = v36;
  if (v35)
  {
    v37 = 0;
  }

  else
  {
    v37 = v12;
  }

  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  device = self->super.super.super._device;
  [a4 pixelFormat];
  [a4 width];
  [a4 height];
  [a4 depth];
  [a4 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0u;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v38 = self->super.super.super._device;
  [a3 pixelFormat];
  [a3 width];
  [a3 height];
  [a3 depth];
  [a3 sampleCount];
  MTLGetTextureLevelInfoForDevice();
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0u;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  _MTLMessageContextEnd();
  v39 = [a3 arrayLength];
  v40 = [a3 numFaces];
  v41 = [a4 arrayLength];
  v42 = [a4 numFaces];
  v43 = [a3 mipmapLevelCount] - v53;
  v44 = [a4 mipmapLevelCount] - v37;
  if (v43 >= v44)
  {
    v45 = a4;
  }

  else
  {
    v45 = a3;
  }

  if (v43 >= v44)
  {
    v46 = v37;
  }

  else
  {
    v46 = v53;
  }

  v47 = [v45 mipmapLevelCount];
  v48 = v40 * v39;
  if (v40 * v39 >= (v42 * v41))
  {
    v48 = v42 * v41;
  }

  memset(v56, 0, sizeof(v56));
  [(MTLDebugBlitCommandEncoder *)self validateCopyFromTexture:a3 sourceSlice:0 sourceLevel:v53 sourceSize:v56 toTexture:a4 destinationSlice:0 destinationLevel:v37 options:0 sliceCount:v48 levelCount:v47 - v46];
  *(&self->hasEndEncoding + 3) = 1;
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:1];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a4 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)resolveCounters:(id)a3 inRange:(_NSRange)a4 destinationBuffer:(id)a5 destinationOffset:(unint64_t)a6
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsObject *)self device];
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (([a3 conformsToProtocol:&unk_2842206E8] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  if (([a5 conformsToProtocol:&unk_284222E68] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  device = self->super.super.super._device;
  if (device != [a3 device])
  {
    _MTLMessageContextPush_();
  }

  v13 = self->super.super.super._device;
  if (v13 != [a5 device])
  {
    _MTLMessageContextPush_();
  }

  v14 = [(MTLToolsDevice *)self->super.super.super._device minConstantBufferAlignmentBytes];
  if (a6 % v14)
  {
    v15 = a6;
    v16 = v14;
    _MTLMessageContextPush_();
  }

  if (location + length > [a3 sampleCount])
  {
    [a3 sampleCount];
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a3 retained:1 purgeable:0];
  [(MTLDebugCommandBuffer *)self->_commandBuffer addObject:a5 retained:1 purgeable:1];
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)invalidateCompressedTexture:(id)a3
{
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (!v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v6 = self->super.super.super._device;
    if (v6 != [a3 device])
    {
      _MTLMessageContextPush_();
    }
  }

  _MTLMessageContextEnd();
  v7.receiver = self;
  v7.super_class = MTLDebugBlitCommandEncoder;
  [(MTLToolsBlitCommandEncoder *)&v7 invalidateCompressedTexture:a3];
}

- (void)invalidateCompressedTexture:(id)a3 slice:(unint64_t)a4 level:(unint64_t)a5
{
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  if (!a3)
  {
    _MTLMessageContextPush_();
  }

  if (!v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v10 = self->super.super.super._device;
    if (v10 != [a3 device])
    {
      _MTLMessageContextPush_();
    }

    if ([a3 mipmapLevelCount] <= a5)
    {
      v12 = a5;
      v13 = [a3 mipmapLevelCount];
      _MTLMessageContextPush_();
    }

    v11 = [a3 numFaces];
    if ([a3 arrayLength] * v11 <= a4)
    {
      [MTLDebugBlitCommandEncoder optimizeContentsForGPUAccess:slice:level:];
    }
  }

  _MTLMessageContextEnd();
  v14.receiver = self;
  v14.super_class = MTLDebugBlitCommandEncoder;
  [(MTLToolsBlitCommandEncoder *)&v14 invalidateCompressedTexture:a3 slice:a4 level:a5];
}

- (void)barrierAfterQueueStages:(unint64_t)a3 beforeStages:(unint64_t)a4
{
  if (*(&self->hasEndEncoding + 4))
  {
    [MTLDebugBlitCommandEncoder barrierAfterQueueStages:beforeStages:];
  }

  v7 = [(MTLToolsObject *)self baseObject];

  [v7 barrierAfterQueueStages:a3 beforeStages:a4];
}

- (void)copyFromTensor:(id)a3 sourceSlice:(MTLTensorSlice)a4 toTensor:(id)a5 destinationSlice:(MTLTensorSlice)a6
{
  var1 = a6.var1;
  var0 = a6.var0;
  v9 = a4.var1;
  v10 = a4.var0;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  device = self->super.super.super._device;
  _MTLMessageContextBegin_();
  verifyCopyFromTensorToTensor(&v14, a3, v10, v9, a5, var0, var1);
  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self baseObject];
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 88) = 0u;
  return self;
}

- (uint64_t)internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 sampleCount];
  [OUTLINED_FUNCTION_6() sampleCount];
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [v0 numFaces];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)internalValidateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  [v0 numFaces];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)validateCopyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [(__CFString *)_MTLDebugBlitOptionString(v1) cStringUsingEncoding:4];
  v3 = *v0;
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)validateCopyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [(__CFString *)_MTLDebugBlitOptionString(v1) cStringUsingEncoding:4];
  v3 = *v0;
  return OUTLINED_FUNCTION_7();
}

- (uint64_t)fillBuffer:range:value:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)getTextureAccessCounters:region:mipLevel:slice:resetCounters:countersBuffer:countersBufferOffset:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [objc_msgSend(v0 "baseObject")];
  return OUTLINED_FUNCTION_4_0();
}

- (uint64_t)validateTextureAccess:(void *)a1 region:mipLevel:slice:.cold.1(void *a1)
{
  v2 = [a1 mipmapLevelCount] - 1;
  if (v2 >= [a1 firstMipmapInTail])
  {
    [a1 firstMipmapInTail];
  }

  else
  {
    [a1 mipmapLevelCount];
  }

  return OUTLINED_FUNCTION_7();
}

- (uint64_t)optimizeContentsForGPUAccess:slice:level:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  [v0 numFaces];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_5();
  return OUTLINED_FUNCTION_4_0();
}

@end