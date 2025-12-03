@interface MTLTelemetryBlitCommandEncoder
- (MTLTelemetryBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor;
- (void)accumulateBlitDistribution:(unint64_t)distribution samples:(unint64_t)samples bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image bufferSize:(unint64_t)size type:(unint64_t)type option:(unint64_t)option src:(unint64_t)self0;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2;
- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1;
- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0;
- (void)copyFromTexture:(id)texture toTexture:(id)toTexture;
- (void)endEncoding;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color;
- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format;
@end

@implementation MTLTelemetryBlitCommandEncoder

- (void)accumulateBlitDistribution:(unint64_t)distribution samples:(unint64_t)samples bytesPerRow:(unint64_t)row bytesPerImage:(unint64_t)image bufferSize:(unint64_t)size type:(unint64_t)type option:(unint64_t)option src:(unint64_t)self0
{
  sizeCopy = size;
  imageCopy = image;
  rowCopy = row;
  samplesCopy = samples;
  v39[0] = distribution;
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    telemetryCommandBuffer = self->_telemetryCommandBuffer;
    v39[2] = v39;
    v17 = std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>(&telemetryCommandBuffer->blitMap.__table_.__bucket_list_.__ptr_, v39);
    v18 = v17 + 3;
    ++self->_beBlits;
    ++self->_telemetryCommandBuffer->cbBlits;
    if (option)
    {
      if ((option & 3) == 0)
      {
        goto LABEL_44;
      }

      if (!rowCopy)
      {
LABEL_34:
        if (!imageCopy)
        {
LABEL_43:
          ++LODWORD(v18[117 * type + 39 + 13 * src]);
LABEL_44:
          if ((option & 4) == 0)
          {
            return;
          }

          if (!rowCopy)
          {
LABEL_54:
            if (!imageCopy)
            {
LABEL_63:
              v37 = &v18[117 * type + 78 + 13 * src];
LABEL_83:
              ++*v37;
              return;
            }

            v34 = &v18[117 * type + 13 * src];
            v35 = v34 + 680;
            v36 = *(v34 + 696);
            if (v36)
            {
              if (*(v35 + 4) < imageCopy)
              {
                *(v35 + 4) = imageCopy;
              }

              if (*v35 <= imageCopy)
              {
                goto LABEL_62;
              }
            }

            else
            {
              *(v35 + 4) = imageCopy;
            }

            *v35 = imageCopy;
LABEL_62:
            *(v35 + 8) += imageCopy;
            *(v35 + 16) = v36 + 1;
            goto LABEL_63;
          }

          v31 = &v18[117 * type + 13 * src];
          v32 = v31 + 656;
          v33 = *(v31 + 672);
          if (v33)
          {
            if (*(v32 + 4) < rowCopy)
            {
              *(v32 + 4) = rowCopy;
            }

            if (*v32 <= rowCopy)
            {
              goto LABEL_53;
            }
          }

          else
          {
            *(v32 + 4) = rowCopy;
          }

          *v32 = rowCopy;
LABEL_53:
          *(v32 + 8) += rowCopy;
          *(v32 + 16) = v33 + 1;
          goto LABEL_54;
        }

        v28 = &v18[117 * type + 13 * src];
        v29 = v28 + 368;
        v30 = *(v28 + 384);
        if (v30)
        {
          if (*(v29 + 4) < imageCopy)
          {
            *(v29 + 4) = imageCopy;
          }

          if (*v29 <= imageCopy)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *(v29 + 4) = imageCopy;
        }

        *v29 = imageCopy;
LABEL_42:
        *(v29 + 8) += imageCopy;
        *(v29 + 16) = v30 + 1;
        goto LABEL_43;
      }

      v19 = &v18[117 * type + 13 * src];
      v20 = v19 + 344;
      v21 = *(v19 + 360);
      if (v21)
      {
        if (*(v20 + 4) < rowCopy)
        {
          *(v20 + 4) = rowCopy;
        }

        if (*v20 <= rowCopy)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *(v20 + 4) = rowCopy;
      }

      *v20 = rowCopy;
LABEL_33:
      *(v20 + 8) += rowCopy;
      *(v20 + 16) = v21 + 1;
      goto LABEL_34;
    }

    if (!type)
    {
      if (samplesCopy)
      {
        v24 = &v18[13 * src];
        v25 = (v24 + 1);
        v26 = *(v24 + 6);
        if (v26)
        {
          if (*(v25 + 4) < samplesCopy)
          {
            *(v25 + 4) = samplesCopy;
          }

          if (*v25 <= samplesCopy)
          {
            goto LABEL_81;
          }
        }

        else
        {
          *(v25 + 4) = samplesCopy;
        }

        *v25 = samplesCopy;
LABEL_81:
        *(v25 + 8) += samplesCopy;
        *(v25 + 16) = v26 + 1;
        goto LABEL_82;
      }

      goto LABEL_82;
    }

    if ((type & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (!rowCopy)
      {
        goto LABEL_69;
      }

      v22 = &v18[117 * type + 13 * src];
      v23 = *(v22 + 48);
      if (v23)
      {
        if (*(v22 + 36) < rowCopy)
        {
          *(v22 + 36) = rowCopy;
        }

        if (*(v22 + 32) <= rowCopy)
        {
          goto LABEL_68;
        }
      }

      else
      {
        *(v22 + 36) = rowCopy;
      }

      *(v22 + 32) = rowCopy;
LABEL_68:
      *(v22 + 40) += rowCopy;
      *(v22 + 48) = v23 + 1;
LABEL_69:
      if (imageCopy)
      {
        v38 = &v18[117 * type + 13 * src];
        v25 = v38 + 56;
        v26 = *(v38 + 72);
        if (v26)
        {
          if (*(v25 + 4) < imageCopy)
          {
            *(v25 + 4) = imageCopy;
          }

          if (*v25 <= imageCopy)
          {
            goto LABEL_77;
          }
        }

        else
        {
          *(v25 + 4) = imageCopy;
        }

        *v25 = imageCopy;
LABEL_77:
        samplesCopy = imageCopy;
        goto LABEL_81;
      }

LABEL_82:
      v37 = &v18[117 * type + 13 * src];
      goto LABEL_83;
    }

    if (type != 1 || !sizeCopy)
    {
      goto LABEL_82;
    }

    v27 = &v17[13 * src];
    v25 = (v27 + 130);
    v26 = *(v27 + 264);
    if (v26)
    {
      if (*(v25 + 4) < sizeCopy)
      {
        *(v25 + 4) = sizeCopy;
      }

      if (*v25 <= sizeCopy)
      {
        goto LABEL_80;
      }
    }

    else
    {
      *(v25 + 4) = sizeCopy;
    }

    *v25 = sizeCopy;
LABEL_80:
    samplesCopy = sizeCopy;
    goto LABEL_81;
  }
}

- (MTLTelemetryBlitCommandEncoder)initWithBlitCommandEncoder:(id)encoder commandBuffer:(id)buffer descriptor:(id)descriptor
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryBlitCommandEncoder;
  v6 = [(MTLToolsBlitCommandEncoder *)&v10 initWithBlitCommandEncoder:encoder parent:buffer descriptor:descriptor];
  v7 = v6;
  if (v6)
  {
    device = [(MTLToolsObject *)v6 device];
    v7->_telemetryDevice = device;
    if ([(MTLDevice *)device enableTelemetry])
    {
      v7->_telemetryCommandBuffer = buffer;
      v7->_beBlits = 0;
    }
  }

  return v7;
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v16 = size->var0 - origin->var0;
  if (v16 == [texture width])
  {
    v17 = size->var1 - origin->var1;
    v18 = v17 != [texture height];
  }

  else
  {
    v18 = 1;
  }

  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [toTexture pixelFormat], objc_msgSend(toTexture, "sampleCount"), 0, 0, 0, 0, 0, v18);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v27 = *&origin->var0;
  var2 = origin->var2;
  v25 = *&size->var0;
  v26 = size->var2;
  baseObject3 = [toTexture baseObject];
  v24 = *destinationOrigin;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v27 sourceSize:&v25 toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel destinationOrigin:&v24];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1 options:(unint64_t)self2
{
  v17 = size->var0 - origin->var0;
  if (v17 == [texture width])
  {
    v18 = size->var1 - origin->var1;
    v19 = v18 != [texture height];
  }

  else
  {
    v19 = 1;
  }

  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [texture pixelFormat], 1, row, image, 0, 2, options, v19);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v26 = *&origin->var0;
  var2 = origin->var2;
  v24 = *&size->var0;
  v25 = size->var2;
  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level sourceOrigin:&v26 sourceSize:&v24 toBuffer:objc_msgSend(buffer destinationOffset:"baseObject") destinationBytesPerRow:offset destinationBytesPerImage:row options:{image, options}];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level sourceOrigin:(id *)origin sourceSize:(id *)size toBuffer:(id)buffer destinationOffset:(unint64_t)offset destinationBytesPerRow:(unint64_t)self0 destinationBytesPerImage:(unint64_t)self1
{
  v12 = *origin;
  v11 = *size;
  [(MTLTelemetryBlitCommandEncoder *)self copyFromTexture:texture sourceSlice:slice sourceLevel:level sourceOrigin:&v12 sourceSize:&v11 toBuffer:buffer destinationOffset:offset destinationBytesPerRow:row destinationBytesPerImage:image options:0];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1 options:(unint64_t)self2
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [texture pixelFormat], 1, row, image, 0, 3, options, offset != 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  v23 = *size;
  baseObject3 = [texture baseObject];
  v22 = *origin;
  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v23 toTexture:baseObject3 destinationSlice:slice destinationLevel:level destinationOrigin:&v22 options:options];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset sourceBytesPerRow:(unint64_t)row sourceBytesPerImage:(unint64_t)image sourceSize:(id *)size toTexture:(id)texture destinationSlice:(unint64_t)slice destinationLevel:(unint64_t)self0 destinationOrigin:(id *)self1
{
  v12 = *size;
  v11 = *origin;
  [(MTLTelemetryBlitCommandEncoder *)self copyFromBuffer:buffer sourceOffset:offset sourceBytesPerRow:row sourceBytesPerImage:image sourceSize:&v12 toTexture:texture destinationSlice:slice destinationLevel:level destinationOrigin:&v11 options:0];
}

- (void)copyFromBuffer:(id)buffer sourceOffset:(unint64_t)offset toBuffer:(id)toBuffer destinationOffset:(unint64_t)destinationOffset size:(unint64_t)size
{
  [(MTLTelemetryBlitCommandEncoder *)self accumulateBlitDistribution:0 samples:1 bytesPerRow:0 bytesPerImage:0 bufferSize:size type:1 option:0 src:offset != 0];
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [buffer baseObject];
  baseObject3 = [toBuffer baseObject];

  [baseObject copyFromBuffer:baseObject2 sourceOffset:offset toBuffer:baseObject3 destinationOffset:destinationOffset size:size];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region bytes:(const void *)bytes length:(unint64_t)length
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [texture pixelFormat], objc_msgSend(texture, "sampleCount"), 0, 0, 0, 5, 0, 2);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v17 = *&region->var0.var2;
  v18[0] = *&region->var0.var0;
  v18[1] = v17;
  v18[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v18 bytes:bytes length:length];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [texture pixelFormat], objc_msgSend(texture, "sampleCount"), 0, 0, 0, 5, 0, 2);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v18 = *&region->var0.var2;
  v19[0] = *&region->var0.var0;
  v19[1] = v18;
  v19[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v19 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)texture level:(unint64_t)level slice:(unint64_t)slice region:(id *)region color:(id)color pixelFormat:(unint64_t)format
{
  var3 = color.var3;
  var2 = color.var2;
  var1 = color.var1;
  var0 = color.var0;
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [texture pixelFormat], objc_msgSend(texture, "sampleCount"), 0, 0, 0, 5, 0, 2);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  v20 = *&region->var0.var2;
  v21[0] = *&region->var0.var0;
  v21[1] = v20;
  v21[2] = *&region->var1.var1;
  [baseObject fillTexture:baseObject2 level:level slice:slice region:v21 color:format pixelFormat:var0, var1, var2, var3];
}

- (void)copyFromTexture:(id)texture sourceSlice:(unint64_t)slice sourceLevel:(unint64_t)level toTexture:(id)toTexture destinationSlice:(unint64_t)destinationSlice destinationLevel:(unint64_t)destinationLevel sliceCount:(unint64_t)count levelCount:(unint64_t)self0
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [toTexture pixelFormat], objc_msgSend(toTexture, "sampleCount"), 0, 0, 0, 0, 0, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyFromTexture:baseObject2 sourceSlice:slice sourceLevel:level toTexture:baseObject3 destinationSlice:destinationSlice destinationLevel:destinationLevel sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)texture toTexture:(id)toTexture
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [toTexture pixelFormat], objc_msgSend(toTexture, "sampleCount"), 0, 0, 0, 0, 0, 0);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [texture baseObject];
  baseObject3 = [toTexture baseObject];

  [baseObject copyFromTexture:baseObject2 toTexture:baseObject3];
}

- (void)endEncoding
{
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    beBlits = self->_beBlits;
    if (beBlits)
    {
      blitEncoderBlitDistribution = self->_telemetryCommandBuffer->blitEncoderBlitDistribution;
      if (blitEncoderBlitDistribution->count)
      {
        if (beBlits > blitEncoderBlitDistribution->max)
        {
          blitEncoderBlitDistribution->max = beBlits;
          blitEncoderBlitDistribution = self->_telemetryCommandBuffer->blitEncoderBlitDistribution;
        }

        if (beBlits >= blitEncoderBlitDistribution->min)
        {
          goto LABEL_10;
        }
      }

      else
      {
        blitEncoderBlitDistribution->max = beBlits;
        blitEncoderBlitDistribution = self->_telemetryCommandBuffer->blitEncoderBlitDistribution;
      }

      blitEncoderBlitDistribution->min = beBlits;
LABEL_10:
      self->_telemetryCommandBuffer->blitEncoderBlitDistribution->total += beBlits;
      ++self->_telemetryCommandBuffer->blitEncoderBlitDistribution->count;
    }
  }

  baseObject = [(MTLToolsObject *)self baseObject];

  [baseObject endEncoding];
}

@end