@interface MTLTelemetryBlitCommandEncoder
- (MTLTelemetryBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5;
- (void)accumulateBlitDistribution:(unint64_t)a3 samples:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6 bufferSize:(unint64_t)a7 type:(unint64_t)a8 option:(unint64_t)a9 src:(unint64_t)a10;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12;
- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11;
- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10;
- (void)copyFromTexture:(id)a3 toTexture:(id)a4;
- (void)endEncoding;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7;
- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8;
@end

@implementation MTLTelemetryBlitCommandEncoder

- (void)accumulateBlitDistribution:(unint64_t)a3 samples:(unint64_t)a4 bytesPerRow:(unint64_t)a5 bytesPerImage:(unint64_t)a6 bufferSize:(unint64_t)a7 type:(unint64_t)a8 option:(unint64_t)a9 src:(unint64_t)a10
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v39[0] = a3;
  if ([(MTLTelemetryDevice *)self->_telemetryDevice enableTelemetry])
  {
    telemetryCommandBuffer = self->_telemetryCommandBuffer;
    v39[2] = v39;
    v17 = std::__hash_table<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::__unordered_map_hasher<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::hash<unsigned long long>,std::equal_to<MTLPixelFormat>,true>,std::__unordered_map_equal<MTLPixelFormat,std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>,std::equal_to<MTLPixelFormat>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<MTLPixelFormat,MTLTelemetryBlitDistribution>>>::__emplace_unique_key_args<MTLPixelFormat,std::piecewise_construct_t const&,std::tuple<MTLPixelFormat const&>,std::tuple<>>(&telemetryCommandBuffer->blitMap.__table_.__bucket_list_.__ptr_, v39);
    v18 = v17 + 3;
    ++self->_beBlits;
    ++self->_telemetryCommandBuffer->cbBlits;
    if (a9)
    {
      if ((a9 & 3) == 0)
      {
        goto LABEL_44;
      }

      if (!v13)
      {
LABEL_34:
        if (!v12)
        {
LABEL_43:
          ++LODWORD(v18[117 * a8 + 39 + 13 * a10]);
LABEL_44:
          if ((a9 & 4) == 0)
          {
            return;
          }

          if (!v13)
          {
LABEL_54:
            if (!v12)
            {
LABEL_63:
              v37 = &v18[117 * a8 + 78 + 13 * a10];
LABEL_83:
              ++*v37;
              return;
            }

            v34 = &v18[117 * a8 + 13 * a10];
            v35 = v34 + 680;
            v36 = *(v34 + 696);
            if (v36)
            {
              if (*(v35 + 4) < v12)
              {
                *(v35 + 4) = v12;
              }

              if (*v35 <= v12)
              {
                goto LABEL_62;
              }
            }

            else
            {
              *(v35 + 4) = v12;
            }

            *v35 = v12;
LABEL_62:
            *(v35 + 8) += v12;
            *(v35 + 16) = v36 + 1;
            goto LABEL_63;
          }

          v31 = &v18[117 * a8 + 13 * a10];
          v32 = v31 + 656;
          v33 = *(v31 + 672);
          if (v33)
          {
            if (*(v32 + 4) < v13)
            {
              *(v32 + 4) = v13;
            }

            if (*v32 <= v13)
            {
              goto LABEL_53;
            }
          }

          else
          {
            *(v32 + 4) = v13;
          }

          *v32 = v13;
LABEL_53:
          *(v32 + 8) += v13;
          *(v32 + 16) = v33 + 1;
          goto LABEL_54;
        }

        v28 = &v18[117 * a8 + 13 * a10];
        v29 = v28 + 368;
        v30 = *(v28 + 384);
        if (v30)
        {
          if (*(v29 + 4) < v12)
          {
            *(v29 + 4) = v12;
          }

          if (*v29 <= v12)
          {
            goto LABEL_42;
          }
        }

        else
        {
          *(v29 + 4) = v12;
        }

        *v29 = v12;
LABEL_42:
        *(v29 + 8) += v12;
        *(v29 + 16) = v30 + 1;
        goto LABEL_43;
      }

      v19 = &v18[117 * a8 + 13 * a10];
      v20 = v19 + 344;
      v21 = *(v19 + 360);
      if (v21)
      {
        if (*(v20 + 4) < v13)
        {
          *(v20 + 4) = v13;
        }

        if (*v20 <= v13)
        {
          goto LABEL_33;
        }
      }

      else
      {
        *(v20 + 4) = v13;
      }

      *v20 = v13;
LABEL_33:
      *(v20 + 8) += v13;
      *(v20 + 16) = v21 + 1;
      goto LABEL_34;
    }

    if (!a8)
    {
      if (v14)
      {
        v24 = &v18[13 * a10];
        v25 = (v24 + 1);
        v26 = *(v24 + 6);
        if (v26)
        {
          if (*(v25 + 4) < v14)
          {
            *(v25 + 4) = v14;
          }

          if (*v25 <= v14)
          {
            goto LABEL_81;
          }
        }

        else
        {
          *(v25 + 4) = v14;
        }

        *v25 = v14;
LABEL_81:
        *(v25 + 8) += v14;
        *(v25 + 16) = v26 + 1;
        goto LABEL_82;
      }

      goto LABEL_82;
    }

    if ((a8 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      if (!v13)
      {
        goto LABEL_69;
      }

      v22 = &v18[117 * a8 + 13 * a10];
      v23 = *(v22 + 48);
      if (v23)
      {
        if (*(v22 + 36) < v13)
        {
          *(v22 + 36) = v13;
        }

        if (*(v22 + 32) <= v13)
        {
          goto LABEL_68;
        }
      }

      else
      {
        *(v22 + 36) = v13;
      }

      *(v22 + 32) = v13;
LABEL_68:
      *(v22 + 40) += v13;
      *(v22 + 48) = v23 + 1;
LABEL_69:
      if (v12)
      {
        v38 = &v18[117 * a8 + 13 * a10];
        v25 = v38 + 56;
        v26 = *(v38 + 72);
        if (v26)
        {
          if (*(v25 + 4) < v12)
          {
            *(v25 + 4) = v12;
          }

          if (*v25 <= v12)
          {
            goto LABEL_77;
          }
        }

        else
        {
          *(v25 + 4) = v12;
        }

        *v25 = v12;
LABEL_77:
        v14 = v12;
        goto LABEL_81;
      }

LABEL_82:
      v37 = &v18[117 * a8 + 13 * a10];
      goto LABEL_83;
    }

    if (a8 != 1 || !v11)
    {
      goto LABEL_82;
    }

    v27 = &v17[13 * a10];
    v25 = (v27 + 130);
    v26 = *(v27 + 264);
    if (v26)
    {
      if (*(v25 + 4) < v11)
      {
        *(v25 + 4) = v11;
      }

      if (*v25 <= v11)
      {
        goto LABEL_80;
      }
    }

    else
    {
      *(v25 + 4) = v11;
    }

    *v25 = v11;
LABEL_80:
    v14 = v11;
    goto LABEL_81;
  }
}

- (MTLTelemetryBlitCommandEncoder)initWithBlitCommandEncoder:(id)a3 commandBuffer:(id)a4 descriptor:(id)a5
{
  v10.receiver = self;
  v10.super_class = MTLTelemetryBlitCommandEncoder;
  v6 = [(MTLToolsBlitCommandEncoder *)&v10 initWithBlitCommandEncoder:a3 parent:a4 descriptor:a5];
  v7 = v6;
  if (v6)
  {
    v8 = [(MTLToolsObject *)v6 device];
    v7->_telemetryDevice = v8;
    if ([(MTLDevice *)v8 enableTelemetry])
    {
      v7->_telemetryCommandBuffer = a4;
      v7->_beBlits = 0;
    }
  }

  return v7;
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v16 = a7->var0 - a6->var0;
  if (v16 == [a3 width])
  {
    v17 = a7->var1 - a6->var1;
    v18 = v17 != [a3 height];
  }

  else
  {
    v18 = 1;
  }

  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a8 pixelFormat], objc_msgSend(a8, "sampleCount"), 0, 0, 0, 0, 0, v18);
  v19 = [(MTLToolsObject *)self baseObject];
  v20 = [a3 baseObject];
  v27 = *&a6->var0;
  var2 = a6->var2;
  v25 = *&a7->var0;
  v26 = a7->var2;
  v21 = [a8 baseObject];
  v24 = *a11;
  [v19 copyFromTexture:v20 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v27 sourceSize:&v25 toTexture:v21 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v24];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11 options:(unint64_t)a12
{
  v17 = a7->var0 - a6->var0;
  if (v17 == [a3 width])
  {
    v18 = a7->var1 - a6->var1;
    v19 = v18 != [a3 height];
  }

  else
  {
    v19 = 1;
  }

  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a3 pixelFormat], 1, a10, a11, 0, 2, a12, v19);
  v20 = [(MTLToolsObject *)self baseObject];
  v21 = [a3 baseObject];
  v26 = *&a6->var0;
  var2 = a6->var2;
  v24 = *&a7->var0;
  v25 = a7->var2;
  [v20 copyFromTexture:v21 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v26 sourceSize:&v24 toBuffer:objc_msgSend(a8 destinationOffset:"baseObject") destinationBytesPerRow:a9 destinationBytesPerImage:a10 options:{a11, a12}];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 sourceOrigin:(id *)a6 sourceSize:(id *)a7 toBuffer:(id)a8 destinationOffset:(unint64_t)a9 destinationBytesPerRow:(unint64_t)a10 destinationBytesPerImage:(unint64_t)a11
{
  v12 = *a6;
  v11 = *a7;
  [(MTLTelemetryBlitCommandEncoder *)self copyFromTexture:a3 sourceSlice:a4 sourceLevel:a5 sourceOrigin:&v12 sourceSize:&v11 toBuffer:a8 destinationOffset:a9 destinationBytesPerRow:a10 destinationBytesPerImage:a11 options:0];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11 options:(unint64_t)a12
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a8 pixelFormat], 1, a5, a6, 0, 3, a12, a4 != 0);
  v19 = [(MTLToolsObject *)self baseObject];
  v20 = [a3 baseObject];
  v23 = *a7;
  v21 = [a8 baseObject];
  v22 = *a11;
  [v19 copyFromBuffer:v20 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v23 toTexture:v21 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v22 options:a12];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 sourceBytesPerRow:(unint64_t)a5 sourceBytesPerImage:(unint64_t)a6 sourceSize:(id *)a7 toTexture:(id)a8 destinationSlice:(unint64_t)a9 destinationLevel:(unint64_t)a10 destinationOrigin:(id *)a11
{
  v12 = *a7;
  v11 = *a11;
  [(MTLTelemetryBlitCommandEncoder *)self copyFromBuffer:a3 sourceOffset:a4 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:&v12 toTexture:a8 destinationSlice:a9 destinationLevel:a10 destinationOrigin:&v11 options:0];
}

- (void)copyFromBuffer:(id)a3 sourceOffset:(unint64_t)a4 toBuffer:(id)a5 destinationOffset:(unint64_t)a6 size:(unint64_t)a7
{
  [(MTLTelemetryBlitCommandEncoder *)self accumulateBlitDistribution:0 samples:1 bytesPerRow:0 bytesPerImage:0 bufferSize:a7 type:1 option:0 src:a4 != 0];
  v13 = [(MTLToolsObject *)self baseObject];
  v14 = [a3 baseObject];
  v15 = [a5 baseObject];

  [v13 copyFromBuffer:v14 sourceOffset:a4 toBuffer:v15 destinationOffset:a6 size:a7];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 bytes:(const void *)a7 length:(unint64_t)a8
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a3 pixelFormat], objc_msgSend(a3, "sampleCount"), 0, 0, 0, 5, 0, 2);
  v15 = [(MTLToolsObject *)self baseObject];
  v16 = [a3 baseObject];
  v17 = *&a6->var0.var2;
  v18[0] = *&a6->var0.var0;
  v18[1] = v17;
  v18[2] = *&a6->var1.var1;
  [v15 fillTexture:v16 level:a4 slice:a5 region:v18 bytes:a7 length:a8];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a3 pixelFormat], objc_msgSend(a3, "sampleCount"), 0, 0, 0, 5, 0, 2);
  v16 = [(MTLToolsObject *)self baseObject];
  v17 = [a3 baseObject];
  v18 = *&a6->var0.var2;
  v19[0] = *&a6->var0.var0;
  v19[1] = v18;
  v19[2] = *&a6->var1.var1;
  [v16 fillTexture:v17 level:a4 slice:a5 region:v19 color:{var0, var1, var2, var3}];
}

- (void)fillTexture:(id)a3 level:(unint64_t)a4 slice:(unint64_t)a5 region:(id *)a6 color:(id)a7 pixelFormat:(unint64_t)a8
{
  var3 = a7.var3;
  var2 = a7.var2;
  var1 = a7.var1;
  var0 = a7.var0;
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a3 pixelFormat], objc_msgSend(a3, "sampleCount"), 0, 0, 0, 5, 0, 2);
  v18 = [(MTLToolsObject *)self baseObject];
  v19 = [a3 baseObject];
  v20 = *&a6->var0.var2;
  v21[0] = *&a6->var0.var0;
  v21[1] = v20;
  v21[2] = *&a6->var1.var1;
  [v18 fillTexture:v19 level:a4 slice:a5 region:v21 color:a8 pixelFormat:var0, var1, var2, var3];
}

- (void)copyFromTexture:(id)a3 sourceSlice:(unint64_t)a4 sourceLevel:(unint64_t)a5 toTexture:(id)a6 destinationSlice:(unint64_t)a7 destinationLevel:(unint64_t)a8 sliceCount:(unint64_t)a9 levelCount:(unint64_t)a10
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a6 pixelFormat], objc_msgSend(a6, "sampleCount"), 0, 0, 0, 0, 0, 0);
  v17 = [(MTLToolsObject *)self baseObject];
  v18 = [a3 baseObject];
  v19 = [a6 baseObject];

  [v17 copyFromTexture:v18 sourceSlice:a4 sourceLevel:a5 toTexture:v19 destinationSlice:a7 destinationLevel:a8 sliceCount:? levelCount:?];
}

- (void)copyFromTexture:(id)a3 toTexture:(id)a4
{
  -[MTLTelemetryBlitCommandEncoder accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:](self, "accumulateBlitDistribution:samples:bytesPerRow:bytesPerImage:bufferSize:type:option:src:", [a4 pixelFormat], objc_msgSend(a4, "sampleCount"), 0, 0, 0, 0, 0, 0);
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];
  v9 = [a4 baseObject];

  [v7 copyFromTexture:v8 toTexture:v9];
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

  v5 = [(MTLToolsObject *)self baseObject];

  [v5 endEncoding];
}

@end