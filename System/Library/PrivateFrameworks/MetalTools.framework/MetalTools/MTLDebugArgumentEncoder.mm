@interface MTLDebugArgumentEncoder
- (MTLDebugArgumentEncoder)initWithBaseObject:(id)a3 structType:(id)a4 parent:(id)a5;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3;
- (void)constantDataAtIndex:(unint64_t)a3;
- (void)dealloc;
- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4;
- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 elementIndex:(unint64_t)a5;
- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5;
- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5;
- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setDepthStencilState:(id)a3 atIndex:(unint64_t)a4;
- (void)setDepthStencilStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4;
- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4;
- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4;
- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4;
- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4;
- (void)setTexture:(id)a3 atIndex:(unint64_t)a4;
- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4;
- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4;
- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4;
- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4;
@end

@implementation MTLDebugArgumentEncoder

- (MTLDebugArgumentEncoder)initWithBaseObject:(id)a3 structType:(id)a4 parent:(id)a5
{
  v7.receiver = self;
  v7.super_class = MTLDebugArgumentEncoder;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:a3 parent:a5];
  if (a4)
  {
    if (result)
    {
      operator new();
    }
  }

  return result;
}

- (void)dealloc
{
  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    v5 = self->_reflectionParser;
    std::vector<MemberRef>::__destroy_vector::operator()[abi:ne200100](&v5);
    MEMORY[0x2318E4940](reflectionParser, 0x20C40960023A9);
    self->_reflectionParser = 0;
  }

  v4.receiver = self;
  v4.super_class = MTLDebugArgumentEncoder;
  [(MTLToolsObject *)&v4 dealloc];
}

- (void)setArgumentBuffer:(id)a3 startOffset:(unint64_t)a4 elementIndex:(unint64_t)a5
{
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  v9 = a4;
  if (a3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    v10 = [a3 storageMode];
    v11 = [(MTLToolsObject *)self baseObject];
    if (v10)
    {
      v17 = MTLStorageModeString();
      _MTLMessageContextPush_();
    }

    v9 = a4;
    if (a5 != -1)
    {
      v9 = a4 + [-[MTLToolsObject baseObject](self "baseObject")] * a5;
    }

    v12 = [v11 encodedLength] + v9;
    if (v12 > [a3 length])
    {
      v16 = [v11 encodedLength];
      v21 = [a3 length];
      _MTLMessageContextPush_();
      [a3 setIsContentExposedToCPU:{1, v9, v16, v21}];
    }

    else
    {
      [a3 setIsContentExposedToCPU:{1, v18, v19, v20}];
    }
  }

  _MTLMessageContextEnd();
  v13 = [a3 baseObject];
  v14 = [(MTLToolsObject *)self baseObject];
  if (a5 == -1)
  {
    [v14 setArgumentBuffer:v13 offset:v9];
  }

  else
  {
    [v14 setArgumentBuffer:v13 startOffset:a4 arrayElement:a5];
  }

  self->_currentOffset = v9;
  currentBuffer = self->_currentBuffer;
  if (currentBuffer != a3)
  {

    self->_currentBuffer = v13;
  }
}

- (void)setBuffer:(id)a3 offset:(unint64_t)a4 atIndex:(unint64_t)a5
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (a4)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_8:
    _MTLMessageContextPush_();
    goto LABEL_11;
  }

  v9 = [a3 device];
  if (v9 != [(MTLToolsArgumentEncoder *)self device])
  {
    _MTLMessageContextPush_();
  }

  if ([a3 length] <= a4)
  {
    [a3 length];
    goto LABEL_8;
  }

LABEL_11:
  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a5, 3u, &v11);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setBuffers:(const void *)a3 offsets:(const unint64_t *)a4 withRange:(_NSRange)a5
{
  length = a5.length;
  location = a5.location;
  v22 = a5;
  memset(&v21, 0, sizeof(v21));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v22.location, 3u, &v21);
  }

  std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](__p, length);
  if (length)
  {
    v11 = 0;
    while (!a3[v11])
    {
      v15 = a4[v11];
      if (v15)
      {
        v14 = v11;
LABEL_15:
        v18 = v14;
        v19 = v15;
        _MTLMessageContextPush_();
      }

LABEL_17:
      v16 = [a3[v11] baseObject];
      *(__p[0] + v11++) = v16;
      if (length == v11)
      {
        goto LABEL_18;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v18 = v11;
      _MTLMessageContextPush_();
      goto LABEL_17;
    }

    v12 = [a3[v11] device];
    if (v12 != [(MTLToolsArgumentEncoder *)self device])
    {
      v18 = v11;
      _MTLMessageContextPush_();
    }

    v13 = a4[v11];
    if (v13 < [a3[v11] length])
    {
      goto LABEL_17;
    }

    v14 = a4[v11];
    v15 = [a3[v11] length];
    goto LABEL_15;
  }

LABEL_18:
  _MTLMessageContextEnd();
  v17 = [(MTLToolsObject *)self baseObject];
  [v17 setBuffers:__p[0] offsets:a4 withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTexture:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 1u, &v8);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTextures:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v14 = a4;
  memset(&v13, 0, sizeof(v13));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14.location, 1u, &v13);
  }

  _MTLMessageContextEnd();
  std::vector<objc_object  {objcproto10MTLTexture}*>::vector[abi:ne200100](__p, length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v10 = [a3[i] baseObject];
      *(__p[0] + i) = v10;
    }
  }

  v11 = [(MTLToolsObject *)self baseObject];
  [v11 setTextures:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setSamplerState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 2u, &v8);
  }

  if (a3 && ([objc_msgSend(a3 "descriptor")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setSamplerStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v15 = a4;
  memset(&v14, 0, sizeof(v14));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v15.location, 2u, &v14);
  }

  std::vector<objc_object  {objcproto15MTLSamplerState}*>::vector[abi:ne200100](__p, length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v10 = a3[i];
      if (v10 && ([objc_msgSend(v10 "descriptor")] & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      v11 = [a3[i] baseObject];
      *(__p[0] + i) = v11;
    }
  }

  _MTLMessageContextEnd();
  v12 = [(MTLToolsObject *)self baseObject];
  [v12 setSamplerStates:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)constantDataAtIndex:(unint64_t)a3
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a3, 0, &v7);
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 5u, &v11);
  }

  if (a3)
  {
    if (([objc_msgSend(a3 "baseObject")] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    v8 = [(MTLToolsObject *)self baseObject];
    v9 = [a3 baseObject];
    v10 = v8;
  }

  else
  {
    _MTLMessageContextEnd();
    v10 = [(MTLToolsObject *)self baseObject];
    v9 = 0;
  }

  [v10 setRenderPipelineState:v9 atIndex:a4];
}

- (void)setRenderPipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 5u, &v13);
  }

  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      if (*a3)
      {
        v11 = [*a3 baseObject];
        *v10 = v11;
        if (([v11 supportIndirectCommandBuffers] & 1) == 0)
        {
          _MTLMessageContextPush_();
        }
      }

      else
      {
        *v10 = 0;
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setComputePipelineState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 6u, &v11);
  }

  if (a3)
  {
    if (([objc_msgSend(a3 "baseObject")] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    v8 = [(MTLToolsObject *)self baseObject];
    v9 = [a3 baseObject];
    v10 = v8;
  }

  else
  {
    _MTLMessageContextEnd();
    v10 = [(MTLToolsObject *)self baseObject];
    v9 = 0;
  }

  [v10 setComputePipelineState:v9 atIndex:a4];
}

- (void)setComputePipelineStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 6u, &v13);
  }

  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      if (*a3)
      {
        v11 = [*a3 baseObject];
        *v10 = v11;
        if (([v11 supportIndirectCommandBuffers] & 1) == 0)
        {
          _MTLMessageContextPush_();
        }
      }

      else
      {
        *v10 = 0;
      }

      ++v10;
      ++a3;
      --v9;
    }

    while (v9);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setIndirectCommandBuffer:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  StructType::indexIsValueType(self->_reflectionParser, a4, 7u, &v9);
  _MTLMessageContextEnd();
  v7 = [(MTLToolsObject *)self baseObject];
  if (a3)
  {
    v8 = [a3 baseObject];
  }

  else
  {
    v8 = 0;
  }

  [v7 setIndirectCommandBuffer:v8 atIndex:a4];
}

- (void)setIndirectCommandBuffers:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 7u, &v13);
  }

  _MTLMessageContextEnd();
  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v11 = *a3;
      if (*a3)
      {
        v11 = [v11 baseObject];
      }

      *v10++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)a3
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    MemberAtIndex = StructType::findMemberAtIndex(reflectionParser, a3, 0, &v12);
    v7 = MemberAtIndex;
    if (!v12.var0 && !*(MemberAtIndex + 24))
    {
      _MTLMessageContextPush_();
    }
  }

  else
  {
    v7 = 0;
  }

  _MTLMessageContextEnd();
  v8 = [-[MTLToolsObject baseObject](self "baseObject")];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (v7)
  {
    v7 = *(v7 + 24);
  }

  v10 = [[MTLDebugArgumentEncoder alloc] initWithBaseObject:v8 structType:v7 parent:self];

  return v10;
}

- (void)setAccelerationStructure:(id)a3 atIndex:(unint64_t)a4
{
  checkAccelerationStructure(self->super.super._device, a3, 1);
  v7 = [(MTLToolsObject *)self baseObject];
  v8 = [a3 baseObject];

  [v7 setAccelerationStructure:v8 atIndex:a4];
}

- (void)setVisibleFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 8u, &v8);
  }

  _MTLMessageContextEnd();
  if (a3)
  {
    a3 = [a3 baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVisibleFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 8u, &v13);
  }

  _MTLMessageContextEnd();
  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v11 = *a3;
      if (*a3)
      {
        v11 = [v11 baseObject];
      }

      *v10++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setIntersectionFunctionTable:(id)a3 atBufferIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 9u, &v8);
  }

  _MTLMessageContextEnd();
  if (a3)
  {
    a3 = [a3 baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setIntersectionFunctionTables:(const void *)a3 withBufferRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 9u, &v13);
  }

  _MTLMessageContextEnd();
  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v11 = *a3;
      if (*a3)
      {
        v11 = [v11 baseObject];
      }

      *v10++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setVisibleFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 8u, &v8);
  }

  _MTLMessageContextEnd();
  if (a3)
  {
    a3 = [a3 baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVisibleFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 8u, &v13);
  }

  _MTLMessageContextEnd();
  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v11 = *a3;
      if (*a3)
      {
        v11 = [v11 baseObject];
      }

      *v10++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setIntersectionFunctionTable:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 9u, &v8);
  }

  _MTLMessageContextEnd();
  if (a3)
  {
    a3 = [a3 baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setIntersectionFunctionTables:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 9u, &v13);
  }

  _MTLMessageContextEnd();
  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v11 = *a3;
      if (*a3)
      {
        v11 = [v11 baseObject];
      }

      *v10++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setDepthStencilState:(id)a3 atIndex:(unint64_t)a4
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, a4, 0xCu, &v8);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthStencilStates:(const void *)a3 withRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexRangeIsValueType(reflectionParser, &v14, 0xCu, &v13);
  }

  _MTLMessageContextEnd();
  if (length)
  {
    v9 = length;
    v10 = (&v13.var0 - ((8 * length + 15) & 0xFFFFFFFFFFFFFFF0));
    do
    {
      v11 = *a3;
      if (*a3)
      {
        v11 = [v11 baseObject];
      }

      *v10++ = v11;
      ++a3;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

@end