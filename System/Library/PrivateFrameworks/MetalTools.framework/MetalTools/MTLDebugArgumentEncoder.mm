@interface MTLDebugArgumentEncoder
- (MTLDebugArgumentEncoder)initWithBaseObject:(id)object structType:(id)type parent:(id)parent;
- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index;
- (void)constantDataAtIndex:(unint64_t)index;
- (void)dealloc;
- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index;
- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset elementIndex:(unint64_t)index;
- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index;
- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range;
- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index;
- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index;
- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range;
- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index;
- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range;
- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range;
- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index;
- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range;
- (void)setSamplerState:(id)state atIndex:(unint64_t)index;
- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range;
- (void)setTexture:(id)texture atIndex:(unint64_t)index;
- (void)setTextures:(const void *)textures withRange:(_NSRange)range;
- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index;
- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index;
- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range;
- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range;
@end

@implementation MTLDebugArgumentEncoder

- (MTLDebugArgumentEncoder)initWithBaseObject:(id)object structType:(id)type parent:(id)parent
{
  v7.receiver = self;
  v7.super_class = MTLDebugArgumentEncoder;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:object parent:parent];
  if (type)
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

- (void)setArgumentBuffer:(id)buffer startOffset:(unint64_t)offset elementIndex:(unint64_t)index
{
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  offsetCopy2 = offset;
  if (buffer)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    storageMode = [buffer storageMode];
    baseObject = [(MTLToolsObject *)self baseObject];
    if (storageMode)
    {
      v17 = MTLStorageModeString();
      _MTLMessageContextPush_();
    }

    offsetCopy2 = offset;
    if (index != -1)
    {
      offsetCopy2 = offset + [-[MTLToolsObject baseObject](self "baseObject")] * index;
    }

    v12 = [baseObject encodedLength] + offsetCopy2;
    if (v12 > [buffer length])
    {
      encodedLength = [baseObject encodedLength];
      v21 = [buffer length];
      _MTLMessageContextPush_();
      [buffer setIsContentExposedToCPU:{1, offsetCopy2, encodedLength, v21}];
    }

    else
    {
      [buffer setIsContentExposedToCPU:{1, v18, v19, v20}];
    }
  }

  _MTLMessageContextEnd();
  baseObject2 = [buffer baseObject];
  baseObject3 = [(MTLToolsObject *)self baseObject];
  if (index == -1)
  {
    [baseObject3 setArgumentBuffer:baseObject2 offset:offsetCopy2];
  }

  else
  {
    [baseObject3 setArgumentBuffer:baseObject2 startOffset:offset arrayElement:index];
  }

  self->_currentOffset = offsetCopy2;
  currentBuffer = self->_currentBuffer;
  if (currentBuffer != buffer)
  {

    self->_currentBuffer = baseObject2;
  }
}

- (void)setBuffer:(id)buffer offset:(unint64_t)offset atIndex:(unint64_t)index
{
  memset(&v11, 0, sizeof(v11));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
    if (buffer)
    {
      goto LABEL_3;
    }

LABEL_10:
    if (offset)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  if (!buffer)
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

  device = [buffer device];
  if (device != [(MTLToolsArgumentEncoder *)self device])
  {
    _MTLMessageContextPush_();
  }

  if ([buffer length] <= offset)
  {
    [buffer length];
    goto LABEL_8;
  }

LABEL_11:
  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    StructType::indexIsValueType(reflectionParser, index, 3u, &v11);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setBuffers:(const void *)buffers offsets:(const unint64_t *)offsets withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  rangeCopy = range;
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
    StructType::indexRangeIsValueType(reflectionParser, &rangeCopy.location, 3u, &v21);
  }

  std::vector<objc_object  {objcproto9MTLBuffer}*>::vector[abi:ne200100](__p, length);
  if (length)
  {
    v11 = 0;
    while (!buffers[v11])
    {
      v15 = offsets[v11];
      if (v15)
      {
        v14 = v11;
LABEL_15:
        v18 = v14;
        v19 = v15;
        _MTLMessageContextPush_();
      }

LABEL_17:
      baseObject = [buffers[v11] baseObject];
      *(__p[0] + v11++) = baseObject;
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

    device = [buffers[v11] device];
    if (device != [(MTLToolsArgumentEncoder *)self device])
    {
      v18 = v11;
      _MTLMessageContextPush_();
    }

    v13 = offsets[v11];
    if (v13 < [buffers[v11] length])
    {
      goto LABEL_17;
    }

    v14 = offsets[v11];
    v15 = [buffers[v11] length];
    goto LABEL_15;
  }

LABEL_18:
  _MTLMessageContextEnd();
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setBuffers:__p[0] offsets:offsets withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setTexture:(id)texture atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 1u, &v8);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setTextures:(const void *)textures withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  rangeCopy = range;
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
    StructType::indexRangeIsValueType(reflectionParser, &rangeCopy.location, 1u, &v13);
  }

  _MTLMessageContextEnd();
  std::vector<objc_object  {objcproto10MTLTexture}*>::vector[abi:ne200100](__p, length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      baseObject = [textures[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setTextures:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)setSamplerState:(id)state atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 2u, &v8);
  }

  if (state && ([objc_msgSend(state "descriptor")] & 1) == 0)
  {
    _MTLMessageContextPush_();
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setSamplerStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  rangeCopy = range;
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
    StructType::indexRangeIsValueType(reflectionParser, &rangeCopy.location, 2u, &v14);
  }

  std::vector<objc_object  {objcproto15MTLSamplerState}*>::vector[abi:ne200100](__p, length);
  if (length)
  {
    for (i = 0; i != length; ++i)
    {
      v10 = states[i];
      if (v10 && ([objc_msgSend(v10 "descriptor")] & 1) == 0)
      {
        _MTLMessageContextPush_();
      }

      baseObject = [states[i] baseObject];
      *(__p[0] + i) = baseObject;
    }
  }

  _MTLMessageContextEnd();
  baseObject2 = [(MTLToolsObject *)self baseObject];
  [baseObject2 setSamplerStates:__p[0] withRange:{location, length}];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

- (void)constantDataAtIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 0, &v7);
  }

  _MTLMessageContextEnd();
  return [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setRenderPipelineState:(id)state atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 5u, &v11);
  }

  if (state)
  {
    if (([objc_msgSend(state "baseObject")] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    baseObject = [(MTLToolsObject *)self baseObject];
    baseObject2 = [state baseObject];
    baseObject3 = baseObject;
  }

  else
  {
    _MTLMessageContextEnd();
    baseObject3 = [(MTLToolsObject *)self baseObject];
    baseObject2 = 0;
  }

  [baseObject3 setRenderPipelineState:baseObject2 atIndex:index];
}

- (void)setRenderPipelineStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      if (*states)
      {
        baseObject = [*states baseObject];
        *v10 = baseObject;
        if (([baseObject supportIndirectCommandBuffers] & 1) == 0)
        {
          _MTLMessageContextPush_();
        }
      }

      else
      {
        *v10 = 0;
      }

      ++v10;
      ++states;
      --v9;
    }

    while (v9);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setComputePipelineState:(id)state atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 6u, &v11);
  }

  if (state)
  {
    if (([objc_msgSend(state "baseObject")] & 1) == 0)
    {
      _MTLMessageContextPush_();
    }

    _MTLMessageContextEnd();
    baseObject = [(MTLToolsObject *)self baseObject];
    baseObject2 = [state baseObject];
    baseObject3 = baseObject;
  }

  else
  {
    _MTLMessageContextEnd();
    baseObject3 = [(MTLToolsObject *)self baseObject];
    baseObject2 = 0;
  }

  [baseObject3 setComputePipelineState:baseObject2 atIndex:index];
}

- (void)setComputePipelineStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      if (*states)
      {
        baseObject = [*states baseObject];
        *v10 = baseObject;
        if (([baseObject supportIndirectCommandBuffers] & 1) == 0)
        {
          _MTLMessageContextPush_();
        }
      }

      else
      {
        *v10 = 0;
      }

      ++v10;
      ++states;
      --v9;
    }

    while (v9);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setIndirectCommandBuffer:(id)buffer atIndex:(unint64_t)index
{
  [(MTLToolsArgumentEncoder *)self device:0];
  _MTLMessageContextBegin_();
  if (!self->_currentBuffer)
  {
    _MTLMessageContextPush_();
  }

  StructType::indexIsValueType(self->_reflectionParser, index, 7u, &v9);
  _MTLMessageContextEnd();
  baseObject = [(MTLToolsObject *)self baseObject];
  if (buffer)
  {
    baseObject2 = [buffer baseObject];
  }

  else
  {
    baseObject2 = 0;
  }

  [baseObject setIndirectCommandBuffer:baseObject2 atIndex:index];
}

- (void)setIndirectCommandBuffers:(const void *)buffers withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      baseObject = *buffers;
      if (*buffers)
      {
        baseObject = [baseObject baseObject];
      }

      *v10++ = baseObject;
      ++buffers;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (id)newArgumentEncoderForBufferAtIndex:(unint64_t)index
{
  memset(&v12, 0, sizeof(v12));
  [(MTLToolsArgumentEncoder *)self device];
  _MTLMessageContextBegin_();
  reflectionParser = self->_reflectionParser;
  if (reflectionParser)
  {
    MemberAtIndex = StructType::findMemberAtIndex(reflectionParser, index, 0, &v12);
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

- (void)setAccelerationStructure:(id)structure atIndex:(unint64_t)index
{
  checkAccelerationStructure(self->super.super._device, structure, 1);
  baseObject = [(MTLToolsObject *)self baseObject];
  baseObject2 = [structure baseObject];

  [baseObject setAccelerationStructure:baseObject2 atIndex:index];
}

- (void)setVisibleFunctionTable:(id)table atBufferIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 8u, &v8);
  }

  _MTLMessageContextEnd();
  if (table)
  {
    table = [table baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVisibleFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      baseObject = *tables;
      if (*tables)
      {
        baseObject = [baseObject baseObject];
      }

      *v10++ = baseObject;
      ++tables;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setIntersectionFunctionTable:(id)table atBufferIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 9u, &v8);
  }

  _MTLMessageContextEnd();
  if (table)
  {
    table = [table baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setIntersectionFunctionTables:(const void *)tables withBufferRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      baseObject = *tables;
      if (*tables)
      {
        baseObject = [baseObject baseObject];
      }

      *v10++ = baseObject;
      ++tables;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setVisibleFunctionTable:(id)table atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 8u, &v8);
  }

  _MTLMessageContextEnd();
  if (table)
  {
    table = [table baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setVisibleFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      baseObject = *tables;
      if (*tables)
      {
        baseObject = [baseObject baseObject];
      }

      *v10++ = baseObject;
      ++tables;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setIntersectionFunctionTable:(id)table atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 9u, &v8);
  }

  _MTLMessageContextEnd();
  if (table)
  {
    table = [table baseObject];
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setIntersectionFunctionTables:(const void *)tables withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      baseObject = *tables;
      if (*tables)
      {
        baseObject = [baseObject baseObject];
      }

      *v10++ = baseObject;
      ++tables;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)setDepthStencilState:(id)state atIndex:(unint64_t)index
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
    StructType::indexIsValueType(reflectionParser, index, 0xCu, &v8);
  }

  _MTLMessageContextEnd();
  [-[MTLToolsObject baseObject](self "baseObject")];
}

- (void)setDepthStencilStates:(const void *)states withRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
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
      baseObject = *states;
      if (*states)
      {
        baseObject = [baseObject baseObject];
      }

      *v10++ = baseObject;
      ++states;
      --v9;
    }

    while (v9);
  }

  [-[MTLToolsObject baseObject](self "baseObject")];
  v12 = *MEMORY[0x277D85DE8];
}

@end