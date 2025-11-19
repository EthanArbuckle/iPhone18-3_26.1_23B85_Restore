@interface DYMTLFunctionPlayer
- (DYMTLFunctionPlayer)initWithCaptureStore:(id)a3;
- (const)computeBytesForKey:(unint64_t)a3;
- (const)fragmentBytesForKey:(unint64_t)a3;
- (const)tileBytesForKey:(unint64_t)a3;
- (const)vertexBytesForKey:(unint64_t)a3;
- (id).cxx_construct;
- (id)_createPrivateBufferForFunctionWithDevice:(id)a3 bytes:(char *)a4 length:(unint64_t)a5 resourceOptions:(unint64_t)a6;
- (id)_getDeviceWithName:(id)a3;
- (id)commandQueue;
- (id)deviceForID:(unint64_t)a3 withDeviceName:(id)a4;
- (id)objectForKey:(unint64_t)a3;
- (unint64_t)keyForOriginalObject:(id)a3;
- (unint64_t)keyForOriginalObject:(id)a3 inverseObjectMap:(void *)a4;
- (void)_restoreTexture:(unint64_t)a3 commandBuffer:(unint64_t)a4 argumentOffset:(unint64_t)a5;
- (void)_saveBytes;
- (void)dealloc;
- (void)executeGraphicsFunction;
- (void)executePlatformFunction;
- (void)setObject:(id)a3 forKey:(unint64_t)a4;
@end

@implementation DYMTLFunctionPlayer

- (id)commandQueue
{
  commandQueue = self->_commandQueue;
  if (!commandQueue)
  {
    v4 = [(DYMTLFunctionPlayer *)self device];
    v5 = [v4 newCommandQueue];
    v6 = self->_commandQueue;
    self->_commandQueue = v5;

    commandQueue = self->_commandQueue;
  }

  return commandQueue;
}

- (DYMTLFunctionPlayer)initWithCaptureStore:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = DYMTLFunctionPlayer;
  v5 = [(DYFunctionPlayer *)&v14 initWithCaptureStore:v4];
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

- (id)_getDeviceWithName:(id)a3
{
  v3 = MTLCreateSystemDefaultDevice();

  return v3;
}

- (id)deviceForID:(unint64_t)a3 withDeviceName:(id)a4
{
  v17 = a3;
  v5 = a4;
  v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v17);
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    v8 = [(DYMTLFunctionPlayer *)self device];

    if (v8)
    {
      v7 = 0;
    }

    else
    {
      v9 = [(DYMTLFunctionPlayer *)self _getDeviceWithName:v5];
      [(DYMTLFunctionPlayer *)self setDevice:v9];
      v15 = v17;
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

- (void)setObject:(id)a3 forKey:(unint64_t)a4
{
  v6 = a3;
  v9[0] = a4;
  v9[2] = v9;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v9);
  v8 = v7[3];
  v7[3] = v6;
}

- (id)objectForKey:(unint64_t)a3
{
  v5 = a3;
  v3 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v5);
  if (v3)
  {
    v3 = v3[3];
  }

  return v3;
}

- (unint64_t)keyForOriginalObject:(id)a3
{
  v4 = a3;
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
    v8 = [v7 isEqual:v4];

    if (v8)
    {
      goto LABEL_6;
    }
  }

  next = 0;
LABEL_6:

  return next;
}

- (unint64_t)keyForOriginalObject:(id)a3 inverseObjectMap:(void *)a4
{
  v6 = a3;
  v11 = v6;
  v7 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(a4, &v11);
  if (v7)
  {
    v8 = v7[3];
  }

  else
  {
    v8 = [(DYMTLFunctionPlayer *)self keyForOriginalObject:v6];
    v10 = v6;
    v11 = &v10;
    std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(a4, &v10)[3] = v8;
  }

  return v8;
}

- (const)vertexBytesForKey:(unint64_t)a3
{
  v4 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_vertexBytesDataMap.__table_.__bucket_list_.__ptr_, &v4);
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

- (const)fragmentBytesForKey:(unint64_t)a3
{
  v4 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_fragmentBytesDataMap.__table_.__bucket_list_.__ptr_, &v4);
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

- (const)tileBytesForKey:(unint64_t)a3
{
  v4 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_tileBytesDataMap.__table_.__bucket_list_.__ptr_, &v4);
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

- (const)computeBytesForKey:(unint64_t)a3
{
  v4 = a3;
  result = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::find<unsigned long long>(&self->_computeBytesDataMap.__table_.__bucket_list_.__ptr_, &v4);
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

- (void)_restoreTexture:(unint64_t)a3 commandBuffer:(unint64_t)a4 argumentOffset:(unint64_t)a5
{
  v6 = [(DYMTLFunctionPlayer *)self device:a3];
  v7 = [(DYMTLFunctionPlayer *)self commandQueue];
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
    v16 = [v8 isDrawable];
    v17 = (WORD4(v39) & 0x2000) != 0 ? 1 : v16;
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

  v18 = [(DYMTLFunctionPlayer *)self commandQueue];
  AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v45, v18);

  v19 = [v7 commandBuffer];
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
      v30 = v7;
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
      v7 = v30;
      if (__p)
      {
        v43 = __p;
        operator delete(__p);
      }

      if (v27)
      {
        if (!v19)
        {
          goto LABEL_21;
        }

LABEL_15:
        if (v27 && v8)
        {
          [v19 setLabel:*MEMORY[0x277D0B020]];
          v29 = [v19 blitCommandEncoder];
          if (-[DYMTLFunctionPlayer _isDepthStencilFormat:](self, "_isDepthStencilFormat:", [v8 pixelFormat]))
          {
            *&v40 = *(&v46[2] + 1);
            v39 = *(&v46[1] + 8);
            v36 = v46[0];
            v37 = *&v46[1];
            [v29 copyFromBuffer:v27 sourceOffset:Offset sourceBytesPerRow:4 * (v35 / 5) sourceBytesPerImage:4 * (v34 / 5) sourceSize:&v39 toTexture:v8 destinationSlice:v33 destinationLevel:v32 destinationOrigin:&v36 options:1];
            v39 = *(&v46[1] + 8);
            *&v40 = *(&v46[2] + 1);
            v36 = v46[0];
            v37 = *&v46[1];
            [v29 copyFromBuffer:v27 sourceOffset:Offset + 4 * (v34 / 5) sourceBytesPerRow:v35 / 5 sourceBytesPerImage:v34 / 5 sourceSize:&v39 toTexture:v8 destinationSlice:v33 destinationLevel:v32 destinationOrigin:&v36 options:2];
          }

          else
          {
            v39 = *(&v46[1] + 8);
            *&v40 = *(&v46[2] + 1);
            v36 = v46[0];
            v37 = *&v46[1];
            [v29 copyFromBuffer:v27 sourceOffset:Offset sourceBytesPerRow:v35 sourceBytesPerImage:v34 sourceSize:&v39 toTexture:v8 destinationSlice:v33 destinationLevel:v32 destinationOrigin:&v36 options:v31 >> 11];
          }

          [v29 endEncoding];
          [v19 commit];
        }

        goto LABEL_21;
      }
    }
  }

  v28 = [v6 newBufferWithBytes:Data length:DataSize options:0];
  [(DYFunctionPlayer *)self releaseDataForArgument:4];
  Offset = 0;
  v27 = v28;
  if (v19)
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
      v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v125)[3];
      v45 = *v44[2];
      v46 = [(DYMTLFunctionPlayer *)self commandQueue];
      AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v130, v46);

      v47 = [(DYMTLFunctionPlayer *)self commandQueue];
      v48 = [v47 commandBuffer];
      [v48 setLabel:*MEMORY[0x277D0B020]];
      v49 = [v48 resourceStateCommandEncoder];
      v128 = 0uLL;
      v129 = 0;
      v50 = [(DYMTLFunctionPlayer *)self device];
      v51 = [v36 textureType];
      v52 = [v36 pixelFormat];
      v53 = [v36 sampleCount];
      if (v50)
      {
        [v50 sparseTileSizeWithTextureType:v51 pixelFormat:v52 sampleCount:v53];
      }

      else
      {
        v128 = 0uLL;
        v129 = 0;
      }

      if (v45 == 2)
      {
        for (i = 0; i < [v36 arrayLength]; ++i)
        {
          for (j = 0; j <= [v36 firstMipmapInTail]; ++j)
          {
            v126 = 0u;
            v127 = 0u;
            v125 = 0u;
            v97 = [v36 width] >> j;
            if (v97 <= 1)
            {
              v97 = 1;
            }

            *(&v126 + 1) = v97;
            v98 = [v36 height] >> j;
            if (v98 <= 1)
            {
              v98 = 1;
            }

            *&v127 = v98;
            v99 = [v36 depth] >> j;
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
            [v49 updateTextureMapping:v36 mode:1 region:&v122 mipLevel:j slice:i];
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
        v104 = [(DYMTLFunctionPlayer *)self device];
        v122 = v128;
        *&v123 = v129;
        [v104 convertSparsePixelRegions:&v125 toTileRegions:v131 withTileSize:&v122 alignmentMode:0 numRegions:1];

        v122 = *v131;
        v123 = *&v131[16];
        v124 = *&v131[32];
        [v49 updateTextureMapping:v36 mode:v45 region:&v122 mipLevel:v102 slice:v103];
      }

      [v49 endEncoding];
      [v48 commit];

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
          v36 = [(DYMTLFunctionPlayer *)self commandQueue];
          [(DYMTLIndirectCommandBufferManager *)v57 restoreBuffer:v58 withData:v59 commandQueue:v36];
          break;
        case -10216:
          v33 = self->_indirectCommandManager;
          *v131 = v5 + 16;
          v34 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16))[3];
          v35 = **(&self->super._executePlatform + *MEMORY[0x277D0AF68]);
          v36 = [(DYMTLFunctionPlayer *)self commandQueue];
          [(DYMTLIndirectCommandBufferManager *)v33 restoreBuffer:v34 optimizedRanges:v35 commandQueue:v36];
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

          v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v68];
          GPUTools::MTL::DispatchSetCaptureVersion(*v131);
          GPUTools::MTL::Utils::DYMTLDeviceDescriptor::~DYMTLDeviceDescriptor(v131);
          v5 = *(&self->super.super.isa + v4);
        }

        else
        {
          v36 = 0;
        }

        [(DYMTLFunctionPlayer *)self deviceForID:*(v5 + 16) withDeviceName:v36];
      }

      else
      {
        if (v6 != -10237)
        {
          goto LABEL_55;
        }

        *v131 = v5 + 16;
        v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v5 + 16))[3];
        if (v36)
        {
          v37 = (self + *MEMORY[0x277D0AF68]);
          [(DYMTLIndirectArgumentBufferManager *)self->_indirectArgumentManager encodeIndirectArgumentsForBuffer:*(*(&self->super.super.isa + v4))[3] data:*v37[1]];
          v38 = *v37[2];
          v39 = *v37[3];
          if ((v38 & 3) != 0 || (*v37[3] & 0xF0) == 0)
          {
            v41 = [v36 newBufferWithBytes:*v37[1] length:*v37[2] options:0];
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
              v110 = [(DYMTLFunctionPlayer *)self device];
              v111 = [(DYMTLFunctionPlayer *)self _createPrivateBufferForFunctionWithDevice:v110 bytes:v109 length:v38 resourceOptions:v39];

              *v131 = (*(&self->super.super.isa + v4))[3];
              v112 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, *v131);
              objc_storeStrong(v112 + 3, v111);
              [(DYFunctionPlayer *)self releaseDataForArgument:1];
            }

            else
            {
              v87 = [v36 newBufferWithLength:*v37[2] options:*v37[3]];
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
                v90 = [v36 newBufferWithBytesNoCopy:v89 length:? options:? deallocator:?];
                v91 = [(DYMTLFunctionPlayer *)self commandQueue];
                AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(&v125, v91);
                v92 = [v91 commandBuffer];
                v93 = v92;
                if (v92)
                {
                  [v92 setLabel:*MEMORY[0x277D0B020]];
                  v94 = [v93 blitCommandEncoder];
                  [v94 copyFromBuffer:v90 sourceOffset:0 toBuffer:v87 destinationOffset:0 size:v38];
                  [v94 endEncoding];
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
    v36 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, &v125)[3];
    v70 = *v69[2];
    v71 = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
    [v71 encodeIndirectArgumentsForBuffer:v125 data:v70];

    v72 = *v69[3];
    v73 = *v69[4];
    if ([v36 storageMode])
    {
      v74 = (v73 & 3) == 0;
    }

    else
    {
      v74 = 0;
    }

    if (!v74)
    {
      memcpy(([v36 contents] + v72), v70, v73);
      [(DYFunctionPlayer *)self releaseDataForArgument:2];
      goto LABEL_126;
    }

    v79 = [(DYMTLFunctionPlayer *)self device];
    v78 = v79;
    if (v79)
    {
      v80 = self + *MEMORY[0x277D0AF70];
      v81 = *(v80 + 6);
      v82 = *(v80 + 7);
      if (v81 == v82)
      {
        v84 = [v79 newBufferWithLength:v73 options:0];
        memcpy([v84 contents], v70, v73);
        [(DYFunctionPlayer *)self releaseDataForArgument:2];
        v85 = 0;
LABEL_119:
        if (v84)
        {
          v113 = [(DYMTLFunctionPlayer *)self commandQueue];
          AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v131, v113);

          v114 = [(DYMTLFunctionPlayer *)self commandQueue];
          v115 = [v114 commandBuffer];
          v116 = v115;
          if (v115)
          {
            [v115 setLabel:*MEMORY[0x277D0B020]];
            v117 = [v116 blitCommandEncoder];
            [v117 copyFromBuffer:v84 sourceOffset:v85 toBuffer:v36 destinationOffset:v72 size:v73];
            [v117 endEncoding];
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
        v84 = [v78 newBufferWithBytesNoCopy:v70 length:v83 options:0 deallocator:v138];
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
      v36 = GPUTools::MTL::MakeDispatchDataT(v65, v67[3]);
    }

    else
    {
      v36 = 0;
    }

    v78 = [(DYMTLFunctionPlayer *)self indirectArgumentManager];
    [v78 processCommandBuffer:**(&self->super.super.isa + *MEMORY[0x277D0AF68]) functionIndex:*(&self->super.super.isa + *MEMORY[0x277D0AF88]) ancestorMapData:**(&self->super._executePlatform + *MEMORY[0x277D0AF68]) indirectArgumentBuffersData:**(&self->super._executePlatformSEL + *MEMORY[0x277D0AF68]) resourceMapsData:**(&self->super._executeGraphics + *MEMORY[0x277D0AF68]) driverDecodingData:v36];
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
    v17 = [v12 isDrawable];
    Data = DYHarvesterGetData();
    Metadata = DYHarvesterGetMetadata();
    if (Metadata)
    {
      if ((v17 & 1) == 0)
      {
        v20 = [v119 iosurface];
        IOSurfaceLock(v20, 0, 0);
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
            HeightOfPlane = IOSurfaceGetHeightOfPlane(v20, v24 + v22);
            IOSurfaceGetWidthOfPlane(v20, v24 + v22);
            BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v20, v24 + v22);
            BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v20, v24 + v22);
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

        IOSurfaceUnlock(v20, 0, 0);
      }
    }

    else if (([v119 pixelFormat] & 0xFFFFFFFFFFFFFFFELL) == 0x226)
    {
      DecodeRGB10A8_2P_XR10(v119, v14);
    }

    else if ((v17 & 1) == 0)
    {
      v105 = [v119 iosurface];
      IOSurfaceLock(v105, 0, 0);
      v106 = IOSurfaceGetBaseAddressOfPlane(v105, v16);
      AllocSize = IOSurfaceGetAllocSize(v105);
      if (v15 >= AllocSize)
      {
        v108 = AllocSize;
      }

      else
      {
        v108 = v15;
      }

      memcpy(v106, v14, v108);
      IOSurfaceUnlock(v105, 0, 0);
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

- (id)_createPrivateBufferForFunctionWithDevice:(id)a3 bytes:(char *)a4 length:(unint64_t)a5 resourceOptions:(unint64_t)a6
{
  v10 = a3;
  v11 = [v10 newBufferWithBytes:a4 length:a5 options:0];
  v12 = [v10 newBufferWithLength:a5 options:a6];
  v13 = [(DYMTLFunctionPlayer *)self commandQueue];
  AutoPerfStatSamplingControl::AutoPerfStatSamplingControl(v18, v13);
  v14 = [v13 commandBuffer];
  v15 = v14;
  if (v14)
  {
    [v14 setLabel:*MEMORY[0x277D0B020]];
    v16 = [v15 blitCommandEncoder];
    [v16 copyFromBuffer:v11 sourceOffset:0 toBuffer:v12 destinationOffset:0 size:a5];
    [v16 endEncoding];
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
        v30 = [(DYMTLFunctionPlayer *)self device];
        v31 = [v30 newLibraryWithImageFilterFunctionsSPI:v27 imageFilterFunctionInfo:MTLImageFilterFunctionInfo error:0];

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
          v6 = [(DYMTLFunctionPlayer *)self device];
          v7 = [v6 newSharedEventWithHandle:v19[3]];
        }

        else
        {
          v6 = [(DYMTLFunctionPlayer *)self device];
          v7 = [v6 newSharedEvent];
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
        v6 = [(DYMTLFunctionPlayer *)self device];
        v23 = [v6 newSharedTextureWithHandle:v22[3]];
        *&v58 = v57;
        v24 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
        v25 = v24[3];
        v24[3] = v23;
      }

      else
      {
        v6 = GPUTools::MTL::MakeMTLTextureDescriptor(*(*(&self->super.super.isa + v3))[12], v21);
        v25 = [(DYMTLFunctionPlayer *)self device];
        v40 = [v25 newSharedTextureWithDescriptor:v6];
        *&v58 = v57;
        v41 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
        v42 = v41[3];
        v41[3] = v40;
      }

      goto LABEL_36;
    }

    if (v5 == -15912)
    {
      v6 = [(DYMTLFunctionPlayer *)self device:GPUTools::FD::Argument::ViewAsScalarArray<unsigned int>(v4 + 24];
      v7 = [v6 newSharedEvent];
      *&v58 = v57;
      v8 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v57);
LABEL_33:
      v39 = v8[3];
      v8[3] = v7;

      goto LABEL_36;
    }

    goto LABEL_29;
  }

  if (v5 != -16313)
  {
    if (v5 == -16236)
    {
      *&v58 = v4 + 16;
      v6 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, (v4 + 16))[3];
      if ([v6 storageMode] != 3)
      {
        if ([v6 storageMode] == 2)
        {
          [(DYMTLFunctionPlayer *)self _restoreTexture:(*(&self->super.super.isa + v3))[2] commandBuffer:0 argumentOffset:0];
        }

        else if (![v6 iosurface])
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
          [v6 replaceRegion:v57 mipmapLevel:v51 slice:v52 withBytes:Data bytesPerRow:v55 bytesPerImage:v56];
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
  v16 = [(DYMTLFunctionPlayer *)self device];
  v6 = [(DYMTLFunctionPlayer *)self _createPrivateBufferForFunctionWithDevice:v16 bytes:v14 length:v15 resourceOptions:v13];

  *&v58 = (*(&self->super.super.isa + v3))[3];
  v17 = std::__hash_table<std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,objc_object * {__strong}>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,objc_object * {__strong}>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(&self->_objectMap.__table_.__bucket_list_.__ptr_, v58);
  objc_storeStrong(v17 + 3, v6);
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
    v47 = [v46 maxCommandBufferCount];
    if (v47 > [(MTLCommandQueueSPI *)self->_commandQueue maxCommandBufferCount])
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