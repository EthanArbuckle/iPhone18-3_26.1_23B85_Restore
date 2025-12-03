@interface DYMTLFunctionPlayer
- (DYMTLFunctionPlayer)initWithCaptureStore:(id)store;
- (const)computeBytesForKey:(unint64_t)key;
- (const)fragmentBytesForKey:(unint64_t)key;
- (const)tileBytesForKey:(unint64_t)key;
- (const)vertexBytesForKey:(unint64_t)key;
- (id).cxx_construct;
- (id)_createPrivateBufferForFunctionWithDevice:(id)device bytes:(char *)bytes length:(unint64_t)length resourceOptions:(unint64_t)options;
- (id)_getDeviceWithName:(id)name;
- (id)commandQueue;
- (id)deviceForID:(unint64_t)d withDeviceName:(id)name;
- (id)objectForKey:(unint64_t)key;
- (unint64_t)keyForOriginalObject:(id)object;
- (unint64_t)keyForOriginalObject:(id)object inverseObjectMap:(void *)map;
- (void)_restoreTexture:(unint64_t)texture commandBuffer:(unint64_t)buffer argumentOffset:(unint64_t)offset;
- (void)_saveBytes;
- (void)dealloc;
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)setObject:(id)object forKey:(unint64_t)key;
@end

@implementation DYMTLFunctionPlayer

- (id)commandQueue
{
  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    device = [(DYMTLFunctionPlayer *)self device];
    newCommandQueue = [device newCommandQueue];
    v6 = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    commandQueue = self->_commandQueue;
  }

  return commandQueue;
}

- (DYMTLFunctionPlayer)initWithCaptureStore:(id)store
{
  storeCopy = store;
  v14.receiver = self;
  v14.super_class = DYMTLFunctionPlayer;
  v5 = [(DYFunctionPlayer *)&v14 initWithCaptureStore:storeCopy];
  v6 = v5;
  if (v5)
  {
    v13 = 0;
    v15 = &v13;
    v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&v5->_objectMap.__table_.__bucket_list_.__ptr_, &v13);
    v8 = v7[3];
    v7[3] = 0;

    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_vertexBytesDataMap);
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_fragmentBytesDataMap);
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_tileBytesDataMap);
    std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&v6->_computeBytesDataMap);
    v9 = [[DYMTLIndirectArgumentBufferManager alloc] initWithFunctionPlayer:v6];
    [(DYMTLFunctionPlayer *)v6 setIndirectArgumentManager:v9];

    v10 = [[DYMTLIndirectCommandBufferManager alloc] initWithFunctionPlayer:v6];
    [(DYMTLFunctionPlayer *)v6 setIndirectCommandManager:v10];

    v11 = v6;
  }

  return v6;
}

- (void)dealloc
{
  [(MTLCommandQueueSPI *)self->_commandQueue finish];
  commandQueue = self->_commandQueue;
  self->_commandQueue = 0;

  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_vertexBytesDataMap);
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_fragmentBytesDataMap);
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_tileBytesDataMap);
  std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::clear(&self->_computeBytesDataMap);
  v4.receiver = self;
  v4.super_class = DYMTLFunctionPlayer;
  [(DYFunctionPlayer *)&v4 dealloc];
}

- (id)_getDeviceWithName:(id)name
{
  v3 = MTLCreateSystemDefaultDevice();

  return v3;
}

- (id)deviceForID:(unint64_t)d withDeviceName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &dCopy);
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    device = [(DYMTLFunctionPlayer *)self device];

    if (device)
    {
      v7 = 0;
    }

    else
    {
      v9 = [(DYMTLFunctionPlayer *)self _getDeviceWithName:nameCopy];
      [(DYMTLFunctionPlayer *)self setDevice:v9];
      v15 = dCopy;
      v10 = v9;
      v16 = v10;
      v11 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,objc_object  {objcproto9MTLDevice}* {__strong}>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v15);
      v13 = v12;

      if (v13)
      {
        v7 = v11[3];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (void)setObject:(id)object forKey:(unint64_t)key
{
  objectCopy = object;
  v9[0] = key;
  v9[2] = v9;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v9);
  v8 = v7[3];
  v7[3] = objectCopy;
}

- (id)objectForKey:(unint64_t)key
{
  keyCopy = key;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (unint64_t)keyForOriginalObject:(id)object
{
  objectCopy = object;
  p_first_node = &self->_objectMap.__table_.__first_node_;
  while (1)
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    next = p_first_node[2].__next_;
    v7 = p_first_node[3].__next_;
    v8 = [v7 isEqual:objectCopy];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  next = 0;
LABEL_6:

  return next;
}

- (unint64_t)keyForOriginalObject:(id)object inverseObjectMap:(void *)map
{
  objectCopy = object;
  v11 = objectCopy;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(map, &v11);
  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:objectCopy];
    v10 = objectCopy;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(map, &v10)[3] = v8;
  }

  return v8;
}

- (const)vertexBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_vertexBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (const)fragmentBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_fragmentBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (const)tileBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_tileBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (const)computeBytesForKey:(unint64_t)key
{
  keyCopy = key;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_computeBytesDataMap.__table_.__bucket_list_.__ptr_, &keyCopy);
  if (result)
  {
    result = *(result + 3);
    if (result)
    {
      return [result bytes];
    }
  }

  return result;
}

- (void)_restoreTexture:(unint64_t)texture commandBuffer:(unint64_t)buffer argumentOffset:(unint64_t)offset
{
  v6 = [(DYMTLFunctionPlayer *)self device:texture];
  commandQueue = [(DYMTLFunctionPlayer *)self commandQueue];
  *&v39 = *(&self->super.super.isa + *MEMORY[0x277D0AFA0]) + 16;
  v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v39)[3];
  v9 = self + *MEMORY[0x277D0AF68];
  v10 = **(v9 + 3);
  v11 = *(v9 + 1);
  v12 = **(v9 + 2);
  memset(v46, 0, 48);
  GPUTools::MTL::MakeMTLRegion(*v11, v46);
  v13 = **(v9 + 4);
  Data = DYHarvesterGetData();
  v15 = **(v9 + 6);
  v34 = v15;
  v35 = **(v9 + 5);
  [v8 pixelFormat];
  MTLPixelFormatGetInfoForDevice();
  if (-[DYMTLFunctionPlayer _isCPUAccessibleStorageMode:](self, "_isCPUAccessibleStorageMode:", [v8 storageMode]))
  {
    isDrawable = [v8 isDrawable];
    v17 = (WORD4(v39) & 0x2000) != 0 ? 1 : isDrawable;
    if ((v17 & 1) == 0 && !-[DYMTLFunctionPlayer _isDepthStencilFormat:](self, "_isDepthStencilFormat:", [v8 pixelFormat]))
    {
      v39 = v46[0];
      v40 = v46[1];
      v41 = v46[2];
      [v8 replaceRegion:&v39 mipmapLevel:v12 slice:v10 withBytes:Data bytesPerRow:v35 bytesPerImage:v34];
      [(DYFunctionPlayer *)self releaseDataForArgument:4];
      goto LABEL_22;
    }
  }

  commandQueue2 = [(DYMTLFunctionPlayer *)self commandQueue];
  AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v45, commandQueue2);

  commandBuffer = [commandQueue commandBuffer];
  v32 = v12;
  v33 = v10;
  v20 = **(v9 + 4);
  DYHarvesterGetMetadata();
  v31 = WORD4(v39) & 0x2000;
  v21 = **(v9 + 7);
  DataSize = DYHarvesterGetDataSize();
  v23 = self + *MEMORY[0x277D0AF70];
  if (*(v23 + 12) != *(v23 + 13))
  {
    v24 = ~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + **(v9 + 7));
    if (v24)
    {
      v30 = commandQueue;
      v25 = **(v9 + 4);
      Offset = DYHarvesterGetOffset();
      *&v39 = 0;
      *(&v39 + 1) = &v39;
      *&v40 = 0x4812000000;
      *(&v40 + 1) = __Block_byref_object_copy_;
      *&v41 = __Block_byref_object_dispose_;
      *(&v41 + 1) = "";
      v43 = 0;
      v44 = 0;
      __p = 0;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&__p, *(v23 + 12), *(v23 + 13), (*(v23 + 13) - *(v23 + 12)) >> 3);
      *(v23 + 13) = *(v23 + 12);
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __68__DYMTLFunctionPlayer__restoreTexture_commandBuffer_argumentOffset___block_invoke;
      v38[3] = &unk_27930F370;
      v38[4] = self;
      v38[5] = &v39;
      v27 = [v6 newBufferWithBytesNoCopy:v25 length:v24 options:0 deallocator:v38];
      _Block_object_dispose(&v39, 8);
      commandQueue = v30;
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      if (v27)
      {
        if (!commandBuffer)
        {
          goto LABEL_21;
        }

LABEL_15:
        if (v27 && v8)
        {
          [commandBuffer setLabel:*MEMORY[0x277D0B020]];
          blitCommandEncoder = [commandBuffer blitCommandEncoder];
          if (-[DYMTLFunctionPlayer _isDepthStencilFormat:](self, "_isDepthStencilFormat:", [v8 pixelFormat]))
          {
            *&v40 = *(&v46[2] + 1);
            v39 = *(&v46[1] + 8);
            v36 = v46[0];
            v37 = *&v46[1];
            [blitCommandEncoder copyFromBuffer:v27 sourceOffset:Offset sourceBytesPerRow:4 * (v35 / 5) sourceBytesPerImage:4 * (v34 / 5) sourceSize:&v39 toTexture:v8 destinationSlice:v33 destinationLevel:v32 destinationOrigin:&v36 options:1];
            v39 = *(&v46[1] + 8);
            *&v40 = *(&v46[2] + 1);
            v36 = v46[0];
            v37 = *&v46[1];
            [blitCommandEncoder copyFromBuffer:v27 sourceOffset:Offset + 4 * (v34 / 5) sourceBytesPerRow:v35 / 5 sourceBytesPerImage:v34 / 5 sourceSize:&v39 toTexture:v8 destinationSlice:v33 destinationLevel:v32 destinationOrigin:&v36 options:2];
          }

          else
          {
            v39 = *(&v46[1] + 8);
            *&v40 = *(&v46[2] + 1);
            v36 = v46[0];
            v37 = *&v46[1];
            [blitCommandEncoder copyFromBuffer:v27 sourceOffset:Offset sourceBytesPerRow:v35 sourceBytesPerImage:v34 sourceSize:&v39 toTexture:v8 destinationSlice:v33 destinationLevel:v32 destinationOrigin:&v36 options:v31 >> 11];
          }

          [blitCommandEncoder endEncoding];
          [commandBuffer commit];
        }

        goto LABEL_21;
      }
    }
  }

  v28 = [v6 newBufferWithBytes:Data length:DataSize options:0];
  [(DYFunctionPlayer *)self releaseDataForArgument:4];
  Offset = 0;
  v27 = v28;
  if (commandBuffer)
  {
    goto LABEL_15;
  }

LABEL_21:

  AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v45);
LABEL_22:
}

uint64_t __68__DYMTLFunctionPlayer__restoreTexture_commandBuffer_argumentOffset___block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 48);
  if (*(*(*(result + 40) + 8) + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = [*(v2 + 32) releaseDataForPosition:*(v1 + 8 * v3++)];
      v1 = *(*(*(v2 + 40) + 8) + 48);
    }

    while (v3 < (*(*(*(v2 + 40) + 8) + 56) - v1) >> 3);
  }

  return result;
}

- (void)executePlatformFunction
{
  [(DYFunctionPlayer *)self processArguments];
  v4 = *MEMORY[0x277D0AFA0];
  v5 = *(&self->super.super.isa + v4);
  v6 = *v5;
  if (*v5 > -6144)
  {
    v7 = v6 + 6143;
    v8 = v7 > 0x30;
    v9 = (1 << v7) & 0x1FFFFFFF77FFFLL;
    if (!v8 && v9 != 0)
    {
      v11 = self + *MEMORY[0x277D0AF68];

      DispatchMPSMethod();
      return;
    }

LABEL_55:
    v121.receiver = self;
    v121.super_class = DYMTLFunctionPlayer;
    [(DYFunctionPlayer *)&v121 executePlatformFunction];
    return;
  }

  if (v6 > -10221)
  {
    if (v6 > -10215)
    {
      if ((v6 + 10201) < 2)
      {
        return;
      }

      if (v6 == -10214)
      {
        v75 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
        v76 = *(v5 + 16);
        indirectCommandManager = self->_indirectCommandManager;

        [(DYMTLIndirectCommandBufferManager *)indirectCommandManager addComputePipelineStateUniqueIdentifier:v75 forObjectId:v76];
        return;
      }

      if (v6 != -10213)
      {
        goto LABEL_55;
      }

      v44 = (self + *MEMORY[0x277D0AF68]);
      *&v125 = *v44[1];
      *v131 = &v125;
      commandQueue3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v125)[3];
      v45 = *v44[2];
      commandQueue = [(DYMTLFunctionPlayer *)self commandQueue];
      AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v130, commandQueue);

      commandQueue2 = [(DYMTLFunctionPlayer *)self commandQueue];
      commandBuffer = [commandQueue2 commandBuffer];
      [commandBuffer setLabel:*MEMORY[0x277D0B020]];
      resourceStateCommandEncoder = [commandBuffer resourceStateCommandEncoder];
      v128 = 0uLL;
      v129 = 0;
      device = [(DYMTLFunctionPlayer *)self device];
      textureType = [commandQueue3 textureType];
      pixelFormat = [commandQueue3 pixelFormat];
      sampleCount = [commandQueue3 sampleCount];
      if (device)
      {
        [device sparseTileSizeWithTextureType:textureType pixelFormat:pixelFormat sampleCount:sampleCount];
      }

      else
      {
        v128 = 0uLL;
        v129 = 0;
      }

      if (v45 == 2)
      {
        for (i = 0; i < [commandQueue3 arrayLength]; ++i)
        {
          for (j = 0; j <= [commandQueue3 firstMipmapInTail]; ++j)
          {
            v126 = 0u;
            v127 = 0u;
            v125 = 0u;
            v97 = [commandQueue3 width] >> j;
            if (v97 <= 1)
            {
              v97 = 1;
            }

            *(&v126 + 1) = v97;
            v98 = [commandQueue3 height] >> j;
            if (v98 <= 1)
            {
              v98 = 1;
            }

            *&v127 = v98;
            v99 = [commandQueue3 depth] >> j;
            if (v99 <= 1)
            {
              v99 = 1;
            }

            *(&v127 + 1) = v99;
            device = self->_device;
            v122 = v128;
            *&v123 = v129;
            [(MTLDevice *)device convertSparsePixelRegions:&v125 toTileRegions:v131 withTileSize:&v122 alignmentMode:0 numRegions:1];
            v122 = *v131;
            v123 = *&v131[16];
            v124 = *&v131[32];
            [resourceStateCommandEncoder updateTextureMapping:commandQueue3 mode:1 region:&v122 mipLevel:j slice:i];
          }
        }
      }

      else
      {
        v126 = 0u;
        v127 = 0u;
        v125 = 0u;
        *&v101 = GPUTools::MTL::MakeMTLRegion(*v44[3], &v125).n128_u64[0];
        v102 = *v44[4];
        v103 = *v44[5];
        device2 = [(DYMTLFunctionPlayer *)self device];
        v122 = v128;
        *&v123 = v129;
        [device2 convertSparsePixelRegions:&v125 toTileRegions:v131 withTileSize:&v122 alignmentMode:0 numRegions:1];

        v122 = *v131;
        v123 = *&v131[16];
        v124 = *&v131[32];
        [resourceStateCommandEncoder updateTextureMapping:commandQueue3 mode:v45 region:&v122 mipLevel:v102 slice:v103];
      }

      [resourceStateCommandEncoder endEncoding];
      [commandBuffer commit];

      AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v130);
    }

    else
    {
      switch(v6)
      {
        case -10220:
          v60 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          v61 = *(v5 + 16);
          v62 = self->_indirectCommandManager;

          [(DYMTLIndirectCommandBufferManager *)v62 addRenderPipelineStateUniqueIdentifier:v60 forObjectId:v61];
          return;
        case -10219:
          v57 = self->_indirectCommandManager;
          *v131 = v5 + 16;
          v58 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16))[3];
          v59 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          commandQueue3 = [(DYMTLFunctionPlayer *)self commandQueue];
          [(DYMTLIndirectCommandBufferManager *)v57 restoreBuffer:v58 withData:v59 commandQueue:commandQueue3];
          break;
        case -10216:
          v33 = self->_indirectCommandManager;
          *v131 = v5 + 16;
          v34 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16))[3];
          v35 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          commandQueue3 = [(DYMTLFunctionPlayer *)self commandQueue];
          [(DYMTLIndirectCommandBufferManager *)v33 restoreBuffer:v34 optimizedRanges:v35 commandQueue:commandQueue3];
          break;
        default:
          goto LABEL_55;
      }
    }

LABEL_126:

    return;
  }

  if (v6 <= -10237)
  {
    if (v6 != -10240)
    {
      if (v6 == -10239)
      {
        if (*(v5 + 10) == 2)
        {
          v135 = 0;
          v136 = 0;
          v137 = 0;
          memset(&v131[8], 0, 48);
          v132 = 0u;
          v133 = 0u;
          v134 = 0u;
          GPUTools::MTL::Utils::MakeDYMTLDeviceDescriptor(**(&self->super._executePlatform + *MEMORY[0x277D0AF68]), v131, v3);
          if (v131[31] >= 0)
          {
            v68 = &v131[8];
          }

          else
          {
            v68 = *&v131[8];
          }

          commandQueue3 = [MEMORY[0x277CCACA8] stringWithUTF8String:v68];
          GPUTools::MTL::DispatchSetCaptureVersion(*v131);
          GPUTools::MTL::Utils::DYMTLDeviceDescriptor::~DYMTLDeviceDescriptor(v131);
          v5 = *(&self->super.super.isa + v4);
        }

        else
        {
          commandQueue3 = 0;
        }

        [(DYMTLFunctionPlayer *)self deviceForID:*(v5 + 16) withDeviceName:commandQueue3];
      }

      else
      {
        if (v6 != -10237)
        {
          goto LABEL_55;
        }

        *v131 = v5 + 16;
        commandQueue3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16))[3];
        if (commandQueue3)
        {
          v37 = (self + *MEMORY[0x277D0AF68]);
          [(DYMTLIndirectArgumentBufferManager *)self->_indirectArgumentManager encodeIndirectArgumentsForBuffer:*(*(&self->super.super.isa + v4))[3] data:*v37[1]];
          v38 = *v37[2];
          v39 = *v37[3];
          if ((v38 & 3) != 0 || (*v37[3] & 0xF0) == 0)
          {
            v41 = [commandQueue3 newBufferWithBytes:*v37[1] length:*v37[2] options:0];
            *v131 = (*(&self->super.super.isa + v4))[3];
            v42 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v131);
            v43 = v42[3];
            v42[3] = v41;

            [(DYFunctionPlayer *)self releaseDataForArgument:1];
          }

          else
          {
            v86 = self + *MEMORY[0x277D0AF70];
            if (*(v86 + 3) == *(v86 + 4))
            {
              v109 = *v37[1];
              device3 = [(DYMTLFunctionPlayer *)self device];
              v111 = [(DYMTLFunctionPlayer *)self _createPrivateBufferForFunctionWithDevice:device3 bytes:v109 length:v38 resourceOptions:v39];

              *v131 = (*(&self->super.super.isa + v4))[3];
              v112 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v131);
              objc_storeStrong(v112 + 3, v111);
              [(DYFunctionPlayer *)self releaseDataForArgument:1];
            }

            else
            {
              v87 = [commandQueue3 newBufferWithLength:*v37[2] options:*v37[3]];
              if ((~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + v38)) != 0)
              {
                v88 = *(v86 + 3);
                if (*(v86 + 4) - v88 != 8)
                {
                  __assert_rtn("[DYMTLFunctionPlayer executePlatformFunction]", ", 0, "_argumentStorePositions[1].size() == 1"");
                }

                v89 = *v37[1];
                *v131 = 0;
                *&v131[8] = v131;
                *&v131[16] = 0x2020000000;
                *&v131[24] = *v88;
                *(v86 + 4) = v88;
                v130[3] = MEMORY[0x277D85DD0];
                v130[4] = 3221225472;
                v130[5] = __46__DYMTLFunctionPlayer_executePlatformFunction__block_invoke_2;
                v130[6] = &unk_27930F398;
                v130[7] = self;
                v130[8] = v131;
                v90 = [commandQueue3 newBufferWithBytesNoCopy:v89 length:? options:? deallocator:?];
                commandQueue4 = [(DYMTLFunctionPlayer *)self commandQueue];
                AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(&v125, commandQueue4);
                commandBuffer2 = [commandQueue4 commandBuffer];
                v93 = commandBuffer2;
                if (commandBuffer2)
                {
                  [commandBuffer2 setLabel:*MEMORY[0x277D0B020]];
                  blitCommandEncoder = [v93 blitCommandEncoder];
                  [blitCommandEncoder copyFromBuffer:v90 sourceOffset:0 toBuffer:v87 destinationOffset:0 size:v38];
                  [blitCommandEncoder endEncoding];
                  [v93 commit];
                }

                AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(&v125);
                _Block_object_dispose(v131, 8);
              }

              else
              {
                [(DYFunctionPlayer *)self releaseDataForArgument:1];
              }

              *v131 = (*(&self->super.super.isa + v4))[3];
              v118 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v131);
              v111 = v118[3];
              v118[3] = v87;
            }
          }
        }
      }

      goto LABEL_126;
    }

    v69 = (self + *MEMORY[0x277D0AF68]);
    *&v125 = *v69[1];
    *v131 = &v125;
    commandQueue3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v125)[3];
    v70 = *v69[2];
    indirectArgumentManager = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
    [indirectArgumentManager encodeIndirectArgumentsForBuffer:v125 data:v70];

    v72 = *v69[3];
    v73 = *v69[4];
    if ([commandQueue3 storageMode])
    {
      v74 = (v73 & 3) == 0;
    }

    else
    {
      v74 = 0;
    }

    if (!v74)
    {
      memcpy(([commandQueue3 contents] + v72), v70, v73);
      [(DYFunctionPlayer *)self releaseDataForArgument:2];
      goto LABEL_126;
    }

    device4 = [(DYMTLFunctionPlayer *)self device];
    indirectArgumentManager2 = device4;
    if (device4)
    {
      v80 = self + *MEMORY[0x277D0AF70];
      v81 = *(v80 + 6);
      v82 = *(v80 + 7);
      if (v81 == v82)
      {
        v84 = [device4 newBufferWithLength:v73 options:0];
        memcpy([v84 contents], v70, v73);
        [(DYFunctionPlayer *)self releaseDataForArgument:2];
        v85 = 0;
LABEL_119:
        if (v84)
        {
          commandQueue5 = [(DYMTLFunctionPlayer *)self commandQueue];
          AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v131, commandQueue5);

          commandQueue6 = [(DYMTLFunctionPlayer *)self commandQueue];
          commandBuffer3 = [commandQueue6 commandBuffer];
          v116 = commandBuffer3;
          if (commandBuffer3)
          {
            [commandBuffer3 setLabel:*MEMORY[0x277D0B020]];
            blitCommandEncoder2 = [v116 blitCommandEncoder];
            [blitCommandEncoder2 copyFromBuffer:v84 sourceOffset:v85 toBuffer:commandQueue3 destinationOffset:v72 size:v73];
            [blitCommandEncoder2 endEncoding];
            [v116 commit];
          }

          AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v131);
        }

        goto LABEL_76;
      }

      v83 = ~*MEMORY[0x277D85F88] & (*MEMORY[0x277D85F88] + v73);
      if (v83)
      {
        *v131 = 0;
        *&v131[8] = v131;
        *&v131[16] = 0x4812000000;
        *&v131[24] = __Block_byref_object_copy_;
        *&v131[32] = __Block_byref_object_dispose_;
        *&v131[40] = "";
        v132 = 0uLL;
        *&v131[48] = 0;
        std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(&v131[48], v81, v82, (v82 - v81) >> 3);
        *(v80 + 7) = *(v80 + 6);
        v138[0] = MEMORY[0x277D85DD0];
        v138[1] = 3221225472;
        v138[2] = __46__DYMTLFunctionPlayer_executePlatformFunction__block_invoke;
        v138[3] = &unk_27930F370;
        v138[4] = self;
        v138[5] = v131;
        v84 = [indirectArgumentManager2 newBufferWithBytesNoCopy:v70 length:v83 options:0 deallocator:v138];
        _Block_object_dispose(v131, 8);
        if (*&v131[48])
        {
          *&v132 = *&v131[48];
          operator delete(*&v131[48]);
        }

        v85 = v72;
        goto LABEL_119;
      }

      [(DYFunctionPlayer *)self releaseDataForArgument:2];
    }

LABEL_76:

    goto LABEL_126;
  }

  if (v6 > -10230)
  {
    if (v6 != -10229)
    {
      if (v6 != -10228)
      {
        goto LABEL_55;
      }

      v54 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
      v55 = *(v5 + 16);
      v56 = self->_indirectCommandManager;

      [(DYMTLIndirectCommandBufferManager *)v56 addGPUVirtualAddress:v54 forObjectId:v55];
      return;
    }

    if (*(v5 + 10) == 5)
    {
      v64 = *(&self->super._executeGraphicsSEL + *MEMORY[0x277D0AF68]);
      v65 = *v64;
      v66 = *MEMORY[0x277D0AF90];
      *v131 = v64;
      v67 = std::__hash_table<std::__hash_value_type<void *,unsigned long>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,unsigned long>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,unsigned long>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,unsigned long>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void * const&>,std::tuple<>>((&self->super.super.isa + v66), v64);
      commandQueue3 = GPUTools::MTL::MakeDispatchDataT(v65, v67[3]);
    }

    else
    {
      commandQueue3 = 0;
    }

    indirectArgumentManager2 = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
    [indirectArgumentManager2 processCommandBuffer:**(&self->super.super.isa + *MEMORY[0x277D0AF68]) functionIndex:*(&self->super.super.isa + *MEMORY[0x277D0AF88]) ancestorMapData:**(&self->super._executePlatform + *MEMORY[0x277D0AF68]) indirectArgumentBuffersData:**(&self->super._executePlatformSEL + *MEMORY[0x277D0AF68]) resourceMapsData:**(&self->super._executeGraphics + *MEMORY[0x277D0AF68]) driverDecodingData:commandQueue3];
    goto LABEL_76;
  }

  if (v6 == -10236)
  {
    v63 = *(v5 + 16);

    [(DYMTLFunctionPlayer *)self _restoreTexture:v63 commandBuffer:0 argumentOffset:0];
  }

  else
  {
    if (v6 != -10232)
    {
      goto LABEL_55;
    }

    v12 = [(DYMTLFunctionPlayer *)self objectForKey:*(v5 + 16)];
    v13 = (self + *MEMORY[0x277D0AF68]);
    v14 = *v13[1];
    v15 = *v13[2];
    v16 = *v13[3];
    v119 = v12;
    isDrawable = [v12 isDrawable];
    Data = DYHarvesterGetData();
    Metadata = DYHarvesterGetMetadata();
    if (Metadata)
    {
      if ((isDrawable & 1) == 0)
      {
        iosurface = [v119 iosurface];
        IOSurfaceLock(iosurface, 0, 0);
        DYIOSurfaceUtilsPlaneCount();
        v21 = *(Metadata + 16);
        if (v21 <= 1)
        {
          v22 = v16;
        }

        else
        {
          v22 = 0;
        }

        if (v21)
        {
          v23 = 0;
          v24 = 0;
          v120 = Metadata + 24;
          do
          {
            HeightOfPlane = IOSurfaceGetHeightOfPlane(iosurface, v24 + v22);
            IOSurfaceGetWidthOfPlane(iosurface, v24 + v22);
            BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(iosurface, v24 + v22);
            BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(iosurface, v24 + v22);
            if (HeightOfPlane)
            {
              v28 = BaseAddressOfPlane;
              v29 = v120 + 48 * v24;
              v32 = *(v29 + 32);
              v31 = (v29 + 32);
              v30 = v32;
              do
              {
                memcpy(v28, (Data + v23), v30);
                v30 = *v31;
                v23 += *v31;
                v28 += BytesPerRowOfPlane;
                --HeightOfPlane;
              }

              while (HeightOfPlane);
            }

            ++v24;
          }

          while (v24 != v21);
        }

        IOSurfaceUnlock(iosurface, 0, 0);
      }
    }

    else if (([v119 pixelFormat] & 0xFFFFFFFFFFFFFFFELL) == 0x226)
    {
      DecodeRGB10A8_2P_XR10(v119, v14);
    }

    else if ((isDrawable & 1) == 0)
    {
      iosurface2 = [v119 iosurface];
      IOSurfaceLock(iosurface2, 0, 0);
      v106 = IOSurfaceGetBaseAddressOfPlane(iosurface2, v16);
      AllocSize = IOSurfaceGetAllocSize(iosurface2);
      if (v15 >= AllocSize)
      {
        v108 = AllocSize;
      }

      else
      {
        v108 = v15;
      }

      memcpy(v106, v14, v108);
      IOSurfaceUnlock(iosurface2, 0, 0);
    }
  }
}

uint64_t __46__DYMTLFunctionPlayer_executePlatformFunction__block_invoke(uint64_t result)
{
  v1 = *(*(*(result + 40) + 8) + 48);
  if (*(*(*(result + 40) + 8) + 56) != v1)
  {
    v2 = result;
    v3 = 0;
    do
    {
      result = [*(v2 + 32) releaseDataForPosition:*(v1 + 8 * v3++)];
      v1 = *(*(*(v2 + 40) + 8) + 48);
    }

    while (v3 < (*(*(*(v2 + 40) + 8) + 56) - v1) >> 3);
  }

  return result;
}

- (id)_createPrivateBufferForFunctionWithDevice:(id)device bytes:(char *)bytes length:(unint64_t)length resourceOptions:(unint64_t)options
{
  deviceCopy = device;
  v11 = [deviceCopy newBufferWithBytes:bytes length:length options:0];
  v12 = [deviceCopy newBufferWithLength:length options:options];
  commandQueue = [(DYMTLFunctionPlayer *)self commandQueue];
  AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v18, commandQueue);
  commandBuffer = [commandQueue commandBuffer];
  v15 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:*MEMORY[0x277D0B020]];
    blitCommandEncoder = [v15 blitCommandEncoder];
    [blitCommandEncoder copyFromBuffer:v11 sourceOffset:0 toBuffer:v12 destinationOffset:0 size:length];
    [blitCommandEncoder endEncoding];
    [v15 commit];
  }

  AutoPerfStatSamplingControl::~AutoPerfStatSamplingControl(v18);

  return v12;
}

- (void)_saveBytes
{
  v3 = **(&self->super.super.isa + *MEMORY[0x277D0AFA0]);
  if (v3 > -16224)
  {
    if (v3 == -16223)
    {
      v13 = objc_opt_class();
      v14 = (self + *MEMORY[0x277D0AF68]);
      v6 = [v13 fragmentBytesKeyAtIndex:*v14[3]];
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v14[1] length:*v14[2]];
      v8 = 1448;
    }

    else
    {
      if (v3 != -16143)
      {
        return;
      }

      v9 = objc_opt_class();
      v10 = (self + *MEMORY[0x277D0AF68]);
      v6 = [v9 tileBytesKeyAtIndex:*v10[3]];
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v10[1] length:*v10[2]];
      v8 = 1488;
    }
  }

  else if (v3 == -16227)
  {
    v11 = objc_opt_class();
    v12 = (self + *MEMORY[0x277D0AF68]);
    v6 = [v11 computeBytesKeyAtIndex:*v12[3]];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v12[1] length:*v12[2]];
    v8 = 1528;
  }

  else
  {
    if (v3 != -16225)
    {
      return;
    }

    v4 = objc_opt_class();
    v5 = (self + *MEMORY[0x277D0AF68]);
    v6 = [v4 vertexBytesKeyAtIndex:*v5[3]];
    v7 = [MEMORY[0x277CBEA90] dataWithBytes:*v5[1] length:*v5[2]];
    v8 = 1408;
  }

  v17[0] = v6;
  v17[2] = v17;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,NSData * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,NSData * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((&self->super.super.isa + v8), v17);
  v16 = v15[3];
  v15[3] = v7;
}

- (void)executeGraphicsFunction
{
  if (![(DYFunctionPlayer *)self shouldExecuteGraphicsFunction])
  {
    return;
  }

  [(DYFunctionPlayer *)self processArguments];
  [(DYMTLFunctionPlayer *)self _saveBytes];
  v3 = *MEMORY[0x277D0AFA0];
  v4 = *(&self->super.super.isa + v3);
  v5 = *v4;
  if (*v4 > -15910)
  {
    if (v5 > -15848)
    {
      if (v5 == -15847)
      {
        v26 = self + *MEMORY[0x277D0AF68];
        v27 = GPUTools::MTL::MakeMTLArray(**(v26 + 1), *(v4 + 92), &self->_objectMap.__table_.__bucket_list_.__ptr_);
        MTLImageFilterFunctionInfo = GPUTools::MTL::MakeMTLImageFilterFunctionInfo(**(v26 + 2), v28);
        device = [(DYMTLFunctionPlayer *)self device];
        v31 = [device newLibraryWithImageFilterFunctionsSPI:v27 imageFilterFunctionInfo:MTLImageFilterFunctionInfo error:0];

        *&v58 = (*(&self->super.super.isa + v3))[3];
        v32 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v58);
        objc_storeStrong(v32 + 3, v31);
        v33 = 0;
        v34 = 16;
        while (v33 < [v27 count])
        {
          free(*&MTLImageFilterFunctionInfo[v34]);
          ++v33;
          v34 += 24;
        }

        free(MTLImageFilterFunctionInfo);

        goto LABEL_37;
      }

      if (v5 == -12544)
      {
        *&v57[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 24, 0);
        v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 48, 0);
        *&v58 = &v61;
        v9 = [std::__hash_table<std::__hash_value_type<unsigned long long objc:std::__unordered_map_hasher<unsigned long long object * {:std::__hash_value_type<unsigned long long :{objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v61)[3], "commandBuffer", *&v57[0]}strong}>];
        *&v58 = v57;
        v10 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
        v11 = v10[3];
        v10[3] = v9;

        goto LABEL_37;
      }
    }

    else
    {
      if (v5 == -15909)
      {
        *&v57[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 72, 0);
        v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 24, 0);
        v18 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
        if (v18)
        {
          v19 = v18;
          device2 = [(DYMTLFunctionPlayer *)self device];
          newSharedEvent = [device2 newSharedEventWithHandle:v19[3]];
        }

        else
        {
          device2 = [(DYMTLFunctionPlayer *)self device];
          newSharedEvent = [device2 newSharedEvent];
        }

        *&v58 = &v61;
        v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v61);
        goto LABEL_33;
      }

      if (v5 == -15908)
      {
        *&v57[0] = **(v4 + 48);
        *&v58 = v57;
        [std::__hash_table<std::__hash_value_type<unsigned long long objc:std::__unordered_map_hasher<unsigned long long object * {:std::__hash_value_type<unsigned long long :{objc_object * {__strong}>, std::hash<unsigned long long>, std::equal_to<unsigned long long>, true>, std::__unordered_map_equal<unsigned long long, std::__hash_value_type<unsigned long long, objc_object * {__strong}>, std::equal_to<unsigned long long>, std::hash<unsigned long long>, true>, std::allocator<std::__hash_value_type<unsigned long long, objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long, std::piecewise_construct_t const&, std::tuple<unsigned long long const&>, std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57)[3], "commitAndWaitUntilSubmitted"}strong}>];
        goto LABEL_37;
      }
    }

LABEL_29:
    v35 = *MEMORY[0x277D0AF68];
    goto LABEL_30;
  }

  if (v5 > -15980)
  {
    if (v5 == -15979)
    {
      *&v57[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(v4 + 24, 0);
      v61 = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 72, 0);
      v20 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v61);
      if (v20)
      {
        v22 = v20;
        device2 = [(DYMTLFunctionPlayer *)self device];
        v23 = [device2 newSharedTextureWithHandle:v22[3]];
        *&v58 = v57;
        v24 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
        device3 = v24[3];
        v24[3] = v23;
      }

      else
      {
        device2 = GPUTools::MTL::MakeMTLTextureDescriptor(*(*(&self->super.super.isa + v3))[12], v21);
        device3 = [(DYMTLFunctionPlayer *)self device];
        v40 = [device3 newSharedTextureWithDescriptor:device2];
        *&v58 = v57;
        v41 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
        v42 = v41[3];
        v41[3] = v40;
      }

      goto LABEL_36;
    }

    if (v5 == -15912)
    {
      device2 = [(DYMTLFunctionPlayer *)self device:GPUTools::FD::Argument::ViewAsScalarArray<unsigned int>(v4 + 24];
      newSharedEvent = [device2 newSharedEvent];
      *&v58 = v57;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
LABEL_33:
      v39 = v8[3];
      v8[3] = newSharedEvent;

      goto LABEL_36;
    }

    goto LABEL_29;
  }

  if (v5 != -16313)
  {
    if (v5 == -16236)
    {
      *&v58 = v4 + 16;
      device2 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v4 + 16))[3];
      if ([device2 storageMode] != 3)
      {
        if ([device2 storageMode] == 2)
        {
          [(DYMTLFunctionPlayer *)self _restoreTexture:(*(&self->super.super.isa + v3))[2] commandBuffer:0 argumentOffset:0];
        }

        else if (![device2 iosurface])
        {
          v59 = 0u;
          v60 = 0u;
          v58 = 0u;
          v50 = (self + *MEMORY[0x277D0AF68]);
          GPUTools::MTL::MakeMTLRegion(*v50[1], &v58);
          v51 = *v50[2];
          v52 = *v50[3];
          v53 = *v50[4];
          Data = DYHarvesterGetData();
          v55 = *v50[5];
          v56 = *v50[6];
          v57[0] = v58;
          v57[1] = v59;
          v57[2] = v60;
          [device2 replaceRegion:v57 mipmapLevel:v51 slice:v52 withBytes:Data bytesPerRow:v55 bytesPerImage:v56];
        }
      }

      goto LABEL_36;
    }

    goto LABEL_29;
  }

  v12 = (self + *MEMORY[0x277D0AF68]);
  v13 = *v12[3];
  if ((v13 & 0xF0) != 0x20)
  {
LABEL_30:
    v36 = *(v4 + 24);
    indirectArgumentManager = self->_indirectArgumentManager;
    v38 = self + *MEMORY[0x277D0AF90];
    DispatchMPSMethod(&self->_objectMap, *(v4 + 16));
    goto LABEL_37;
  }

  v14 = *v12[1];
  v15 = *v12[2];
  device4 = [(DYMTLFunctionPlayer *)self device];
  device2 = [(DYMTLFunctionPlayer *)self _createPrivateBufferForFunctionWithDevice:device4 bytes:v14 length:v15 resourceOptions:v13];

  *&v58 = (*(&self->super.super.isa + v3))[3];
  v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v58);
  objc_storeStrong(v17 + 3, device2);
  [(DYFunctionPlayer *)self releaseDataForArgument:1];
LABEL_36:

LABEL_37:
  v43 = *(&self->super.super.isa + v3);
  if ((*v43 + 16316) < 2 || *v43 == -16165)
  {
    *&v57[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>((v43 + 6), 0);
    *&v58 = v57;
    v45 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57)[3];
    v46 = v45;
    maxCommandBufferCount = [v46 maxCommandBufferCount];
    if (maxCommandBufferCount > [(MTLCommandQueueSPI *)self->_commandQueue maxCommandBufferCount])
    {
      [(MTLCommandQueueSPI *)self->_commandQueue finish];
      objc_storeStrong(&self->_commandQueue, v45);
    }

    commandQueue = self->_commandQueue;
    *&v57[0] = GPUTools::FD::Argument::ViewAsScalarArray<unsigned long long>(*(&self->super.super.isa + v3) + 24, 0);
    *&v58 = v57;
    v49 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
    objc_storeStrong(v49 + 3, commandQueue);
  }
}

- (id).cxx_construct
{
  *(self + 85) = 0u;
  *(self + 86) = 0u;
  *(self + 348) = 1065353216;
  *(self + 88) = 0u;
  *(self + 89) = 0u;
  *(self + 360) = 1065353216;
  *(self + 1448) = 0u;
  *(self + 1464) = 0u;
  *(self + 370) = 1065353216;
  *(self + 93) = 0u;
  *(self + 94) = 0u;
  *(self + 380) = 1065353216;
  *(self + 1528) = 0u;
  *(self + 1544) = 0u;
  *(self + 390) = 1065353216;
  return self;
}

@end