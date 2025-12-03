@interface MTLLegacySVHeap
- (MTLLegacySVHeap)initWithHeap:(id)heap descriptor:(id)descriptor device:(id)device;
- (id).cxx_construct;
- (id)_newGPUDebugAccelerationStructure:(id)structure;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor;
- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset;
- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index;
- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options;
- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset;
- (id)newTextureWithDescriptor:(id)descriptor;
- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset;
- (void)enumerateAccelerationStructureIndices:(id)indices;
- (void)enumerateBufferIndices:(id)indices;
- (void)enumerateTextureIndices:(id)indices;
- (void)notifyResourceReleasing:(id)releasing;
@end

@implementation MTLLegacySVHeap

- (MTLLegacySVHeap)initWithHeap:(id)heap descriptor:(id)descriptor device:(id)device
{
  v7.receiver = self;
  v7.super_class = MTLLegacySVHeap;
  result = [(MTLToolsObject *)&v7 initWithBaseObject:heap parent:device];
  if (result)
  {
    *&result->_enableResourceUsageValidation = 0;
    result->_textureLock._os_unfair_lock_opaque = 0;
    *(&result->super.super._externalReferences + 4) = (*(device + 284) & 0x200000001) != 0;
  }

  return result;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options
{
  v5 = [(MTLToolsObject *)self->super.super._baseObject newBufferWithLength:length options:options];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[MTLLegacySVBuffer alloc] initWithBuffer:v5 heap:self device:self->super.super._device];
  if (*(&self->super.super._externalReferences + 4) == 1)
  {
    os_unfair_lock_lock(&self->_enableResourceUsageValidation);
    bufferIndex = [(MTLLegacySVBuffer *)v7 bufferIndex];
    p_bufferIndices = &self->_bufferIndices;
    end = self->_bufferIndices.__end_;
    cap = self->_bufferIndices.__cap_;
    if (end >= cap)
    {
      begin = p_bufferIndices->__begin_;
      v14 = end - p_bufferIndices->__begin_;
      v15 = v14 >> 2;
      v16 = (v14 >> 2) + 1;
      if (v16 >> 62)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v17 = cap - begin;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
      v19 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v16;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(p_bufferIndices, v19);
      }

      *(4 * v15) = bufferIndex;
      v12 = (4 * v15 + 4);
      memcpy(0, begin, v14);
      v20 = p_bufferIndices->__begin_;
      p_bufferIndices->__begin_ = 0;
      self->_bufferIndices.__end_ = v12;
      self->_bufferIndices.__cap_ = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *end = bufferIndex;
      v12 = end + 1;
    }

    self->_bufferIndices.__end_ = v12;
    os_unfair_lock_unlock(&self->_enableResourceUsageValidation);
  }

  return v7;
}

- (id)newBufferWithLength:(unint64_t)length options:(unint64_t)options offset:(unint64_t)offset
{
  v6 = [(MTLToolsObject *)self->super.super._baseObject newBufferWithLength:length options:options offset:offset];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [[MTLLegacySVBuffer alloc] initWithBuffer:v6 heap:self device:self->super.super._device];
  if (*(&self->super.super._externalReferences + 4) == 1)
  {
    os_unfair_lock_lock(&self->_enableResourceUsageValidation);
    bufferIndex = [(MTLLegacySVBuffer *)v8 bufferIndex];
    p_bufferIndices = &self->_bufferIndices;
    end = self->_bufferIndices.__end_;
    cap = self->_bufferIndices.__cap_;
    if (end >= cap)
    {
      begin = p_bufferIndices->__begin_;
      v15 = end - p_bufferIndices->__begin_;
      v16 = v15 >> 2;
      v17 = (v15 >> 2) + 1;
      if (v17 >> 62)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v18 = cap - begin;
      if (v18 >> 1 > v17)
      {
        v17 = v18 >> 1;
      }

      v19 = v18 >= 0x7FFFFFFFFFFFFFFCLL;
      v20 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v19)
      {
        v20 = v17;
      }

      if (v20)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(p_bufferIndices, v20);
      }

      *(4 * v16) = bufferIndex;
      v13 = (4 * v16 + 4);
      memcpy(0, begin, v15);
      v21 = p_bufferIndices->__begin_;
      p_bufferIndices->__begin_ = 0;
      self->_bufferIndices.__end_ = v13;
      self->_bufferIndices.__cap_ = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *end = bufferIndex;
      v13 = end + 1;
    }

    self->_bufferIndices.__end_ = v13;
    os_unfair_lock_unlock(&self->_enableResourceUsageValidation);
  }

  return v8;
}

- (id)newTextureWithDescriptor:(id)descriptor
{
  v4 = [(MTLToolsObject *)self->super.super._baseObject newTextureWithDescriptor:descriptor];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [[MTLLegacySVTexture alloc] initWithTexture:v4 heap:self device:self->super.super._device];
  if (*(&self->super.super._externalReferences + 4) == 1)
  {
    os_unfair_lock_lock(&self->_textureLock);
    gpuIdentifier = [(MTLLegacySVTexture *)v6 gpuIdentifier];
    p_textureIndices = &self->_textureIndices;
    end = self->_textureIndices.__end_;
    cap = self->_textureIndices.__cap_;
    if (end >= cap)
    {
      begin = p_textureIndices->__begin_;
      v13 = end - p_textureIndices->__begin_;
      v14 = v13 >> 2;
      v15 = (v13 >> 2) + 1;
      if (v15 >> 62)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v16 = cap - begin;
      if (v16 >> 1 > v15)
      {
        v15 = v16 >> 1;
      }

      v17 = v16 >= 0x7FFFFFFFFFFFFFFCLL;
      v18 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v17)
      {
        v18 = v15;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(p_textureIndices, v18);
      }

      *(4 * v14) = gpuIdentifier;
      v11 = (4 * v14 + 4);
      memcpy(0, begin, v13);
      v19 = p_textureIndices->__begin_;
      p_textureIndices->__begin_ = 0;
      self->_textureIndices.__end_ = v11;
      self->_textureIndices.__cap_ = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *end = gpuIdentifier;
      v11 = end + 1;
    }

    self->_textureIndices.__end_ = v11;
    os_unfair_lock_unlock(&self->_textureLock);
  }

  return v6;
}

- (id)newTextureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  v5 = [(MTLToolsObject *)self->super.super._baseObject newTextureWithDescriptor:descriptor offset:offset];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = [[MTLLegacySVTexture alloc] initWithTexture:v5 heap:self device:self->super.super._device];
  if (*(&self->super.super._externalReferences + 4) == 1)
  {
    os_unfair_lock_lock(&self->_textureLock);
    gpuIdentifier = [(MTLLegacySVTexture *)v7 gpuIdentifier];
    p_textureIndices = &self->_textureIndices;
    end = self->_textureIndices.__end_;
    cap = self->_textureIndices.__cap_;
    if (end >= cap)
    {
      begin = p_textureIndices->__begin_;
      v14 = end - p_textureIndices->__begin_;
      v15 = v14 >> 2;
      v16 = (v14 >> 2) + 1;
      if (v16 >> 62)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v17 = cap - begin;
      if (v17 >> 1 > v16)
      {
        v16 = v17 >> 1;
      }

      v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
      v19 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v18)
      {
        v19 = v16;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(p_textureIndices, v19);
      }

      *(4 * v15) = gpuIdentifier;
      v12 = (4 * v15 + 4);
      memcpy(0, begin, v14);
      v20 = p_textureIndices->__begin_;
      p_textureIndices->__begin_ = 0;
      self->_textureIndices.__end_ = v12;
      self->_textureIndices.__cap_ = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *end = gpuIdentifier;
      v12 = end + 1;
    }

    self->_textureIndices.__end_ = v12;
    os_unfair_lock_unlock(&self->_textureLock);
  }

  return v7;
}

- (void)notifyResourceReleasing:(id)releasing
{
  if (*(&self->super.super._externalReferences + 4) == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      p_textureLock = &self->_textureLock;
      os_unfair_lock_lock(&self->_textureLock);
      p_textureIndices = &self->_textureIndices;
      begin = self->_textureIndices.__begin_;
      end = p_textureIndices->__end_;
      resourceIndex = [releasing resourceIndex];
      while (begin != end)
      {
        if (*begin == resourceIndex)
        {
          if (begin != end)
          {
            for (i = begin + 1; i != end; ++i)
            {
              if (*i != resourceIndex)
              {
                *begin++ = *i;
              }
            }
          }

          break;
        }

        ++begin;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        p_textureLock = &self->_enableResourceUsageValidation;
        os_unfair_lock_lock(&self->_enableResourceUsageValidation);
        p_bufferIndices = &self->_bufferIndices;
        v11 = self->_bufferIndices.__begin_;
        v12 = p_bufferIndices->__end_;
        bufferIndex = [releasing bufferIndex];
        while (v11 != v12)
        {
          if (*v11 == bufferIndex)
          {
            if (v11 != v12)
            {
              for (j = v11 + 1; j != v12; ++j)
              {
                if (*j != bufferIndex)
                {
                  *v11++ = *j;
                }
              }
            }

            break;
          }

          ++v11;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          return;
        }

        p_textureLock = &self->_enableResourceUsageValidation;
        os_unfair_lock_lock(&self->_enableResourceUsageValidation);
        p_accelerationStructureIndices = &self->_accelerationStructureIndices;
        v15 = self->_accelerationStructureIndices.__begin_;
        v16 = p_accelerationStructureIndices->__end_;
        resourceIndex2 = [releasing resourceIndex];
        while (v15 != v16)
        {
          if (*v15 == resourceIndex2)
          {
            if (v15 != v16)
            {
              for (k = v15 + 1; k != v16; ++k)
              {
                if (*k != resourceIndex2)
                {
                  *v15++ = *k;
                }
              }
            }

            break;
          }

          ++v15;
        }
      }
    }

    os_unfair_lock_unlock(p_textureLock);
  }
}

- (void)enumerateBufferIndices:(id)indices
{
  os_unfair_lock_lock(&self->_enableResourceUsageValidation);
  v5 = (self->_bufferIndices.__end_ - self->_bufferIndices.__begin_) >> 2;
  (*(indices + 2))(indices);

  os_unfair_lock_unlock(&self->_enableResourceUsageValidation);
}

- (void)enumerateTextureIndices:(id)indices
{
  os_unfair_lock_lock(&self->_textureLock);
  v5 = (self->_textureIndices.__end_ - self->_textureIndices.__begin_) >> 2;
  (*(indices + 2))(indices);

  os_unfair_lock_unlock(&self->_textureLock);
}

- (void)enumerateAccelerationStructureIndices:(id)indices
{
  os_unfair_lock_lock(&self->_accelerationStructureLock);
  v5 = (self->_accelerationStructureIndices.__end_ - self->_accelerationStructureIndices.__begin_) >> 2;
  (*(indices + 2))(indices);

  os_unfair_lock_unlock(&self->_accelerationStructureLock);
}

- (id)_newGPUDebugAccelerationStructure:(id)structure
{
  if (!structure)
  {
    return 0;
  }

  v5 = [[MTLLegacySVAccelerationStructure alloc] initWithAccelerationStructure:structure heap:self];
  if (*(&self->super.super._externalReferences + 4) == 1)
  {
    os_unfair_lock_lock(&self->_accelerationStructureLock);
    resourceIndex = [(MTLToolsAccelerationStructure *)v5 resourceIndex];
    p_accelerationStructureIndices = &self->_accelerationStructureIndices;
    end = self->_accelerationStructureIndices.__end_;
    cap = self->_accelerationStructureIndices.__cap_;
    if (end >= cap)
    {
      begin = p_accelerationStructureIndices->__begin_;
      v12 = end - p_accelerationStructureIndices->__begin_;
      v13 = v12 >> 2;
      v14 = (v12 >> 2) + 1;
      if (v14 >> 62)
      {
        std::vector<std::pair<char const*,MTLShaderValidationState>>::__throw_length_error[abi:ne200100]();
      }

      v15 = cap - begin;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFFCLL;
      v17 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(p_accelerationStructureIndices, v17);
      }

      *(4 * v13) = resourceIndex;
      v10 = (4 * v13 + 4);
      memcpy(0, begin, v12);
      v18 = p_accelerationStructureIndices->__begin_;
      p_accelerationStructureIndices->__begin_ = 0;
      self->_accelerationStructureIndices.__end_ = v10;
      self->_accelerationStructureIndices.__cap_ = 0;
      if (v18)
      {
        operator delete(v18);
      }
    }

    else
    {
      *end = resourceIndex;
      v10 = end + 1;
    }

    self->_accelerationStructureIndices.__end_ = v10;
    os_unfair_lock_unlock(&self->_accelerationStructureLock);
  }

  return v5;
}

- (id)newAccelerationStructureWithSize:(unint64_t)size
{
  v4 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size];

  return [(MTLLegacySVHeap *)self _newGPUDebugAccelerationStructure:v4];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor
{
  v4 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor)];

  return [(MTLLegacySVHeap *)self _newGPUDebugAccelerationStructure:v4];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset
{
  v5 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size offset:offset];

  return [(MTLLegacySVHeap *)self _newGPUDebugAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithDescriptor:(id)descriptor offset:(unint64_t)offset
{
  v5 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithDescriptor:unwrapAccelerationStructureDescriptor(descriptor) offset:offset];

  return [(MTLLegacySVHeap *)self _newGPUDebugAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size resourceIndex:(unint64_t)index
{
  v5 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size resourceIndex:index];

  return [(MTLLegacySVHeap *)self _newGPUDebugAccelerationStructure:v5];
}

- (id)newAccelerationStructureWithSize:(unint64_t)size offset:(unint64_t)offset resourceIndex:(unint64_t)index
{
  v6 = [(MTLToolsObject *)self->super.super._baseObject newAccelerationStructureWithSize:size offset:offset resourceIndex:index];

  return [(MTLLegacySVHeap *)self _newGPUDebugAccelerationStructure:v6];
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  *(self + 6) = 0;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 10) = 0;
  *(self + 15) = 0;
  *(self + 16) = 0;
  *(self + 14) = 0;
  return self;
}

@end