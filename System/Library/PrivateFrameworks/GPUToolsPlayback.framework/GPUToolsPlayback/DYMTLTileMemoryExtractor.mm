@interface DYMTLTileMemoryExtractor
- (BOOL)encodeImageBlockDataReturn:(id)return isDrawCall:(BOOL)call;
- (BOOL)isArgumentExplicitImageBlock:(id)block;
- (DYMTLTileMemoryExtractor)initWithRenderEncoder:(id)encoder metalDevice:(id)device tileSize:(id *)size texSize:(id *)texSize;
- (id).cxx_construct;
- (id)_generateFunctionFromImageBlockMember:(DYMTLImageBlockMember *)member WithIndex:(unint64_t)index;
- (id)_generateImageBlockShaderStringWithMember:(DYMTLImageBlockMember *)member index:(unint64_t)index;
- (id)_generateImageBlockStructMember:(DYMTLImageBlockMember *)member WithCurrentName:(id)name WithIndent:(unint64_t)indent;
- (id)_generateIndentString:(unint64_t)string;
- (id)_generateKernelFunctionFromString:(id)string funcName:(id)name;
- (id)_generateStringForWritingDataToTexture:(unint64_t)texture;
- (id)_generateTextureFromImageBlockMember:(DYMTLImageBlockMember *)member;
- (id)_generateThreadgroupShaderStringWithThreadgroupIndex:(unint64_t)index size:(unint64_t)size;
- (id)_generateTileRenderPipelineStateWithTileFunction:(id)function renderPassDescriptor:(id)descriptor renderPipelineState:(id)state;
- (id)_processArrayType:(id)type WithProcessedArgument:(void *)argument WithMemberName:(id)name WithCurrentName:(id)currentName WithIndent:(unint64_t)indent;
- (id)_processStructMember:(id)member WithProcessedArgument:(void *)argument WithMemberName:(id)name WithIndent:(unint64_t)indent;
- (id)_processStructType:(id)type WithProcessedArgument:(void *)argument WithMemberName:(id)name WithIndent:(unint64_t)indent;
- (id)harvestThreadgroupAtIndex:(unint64_t)index size:(unint64_t)size;
- (void)_createDataTypeToStringDictionary;
- (void)harvestImageBlockData:(void *)data;
@end

@implementation DYMTLTileMemoryExtractor

- (DYMTLTileMemoryExtractor)initWithRenderEncoder:(id)encoder metalDevice:(id)device tileSize:(id *)size texSize:(id *)texSize
{
  encoderCopy = encoder;
  deviceCopy = device;
  v18.receiver = self;
  v18.super_class = DYMTLTileMemoryExtractor;
  v13 = [(DYMTLTileMemoryExtractor *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_renderEncoder, encoder);
    objc_storeStrong(&v14->_device, device);
    v15 = *&size->var0;
    v14->_tileSize.depth = size->var2;
    *&v14->_tileSize.width = v15;
    v16 = *&texSize->var0;
    v14->_textureSize.depth = texSize->var2;
    *&v14->_textureSize.width = v16;
    *&v14->_aliasImplicitImageBlock = 0;
    v14->_aliasImplicitImageBlockColorIndex = 0;
    [(DYMTLTileMemoryExtractor *)v14 _createDataTypeToStringDictionary];
  }

  return v14;
}

void __57__DYMTLTileMemoryExtractor_processReflection_isDrawCall___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 type];
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    v4[25] = 3;
  }

  else if ([v4 isArgumentExplicitImageBlock:v5])
  {
    *(*(a1 + 32) + 192) = 1;
    [*(a1 + 32) _processArgument:v5 WithImageBlockVector:*(a1 + 32) + 104];
  }
}

void __57__DYMTLTileMemoryExtractor_processReflection_isDrawCall___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 type];
  v4 = *(a1 + 32);
  if (v3 == 1)
  {
    v4[25] = 3;
  }

  else if ([v4 isArgumentExplicitImageBlock:v8])
  {
    *(*(a1 + 32) + 192) = 2;
    v5 = [*(a1 + 40) imageBlockDataReturn];

    v6 = *(a1 + 32);
    if (v5)
    {
      v7 = [*(a1 + 40) imageBlockDataReturn];
      [v6 _processArgument:v7 WithImageBlockVector:*(a1 + 32) + 128];
    }

    else
    {
      [*(a1 + 32) _processArgument:v8 WithImageBlockVector:v6 + 128];
    }
  }
}

- (BOOL)isArgumentExplicitImageBlock:(id)block
{
  blockCopy = block;
  type = [blockCopy type];
  v5 = type == 16 || type == 17 && [blockCopy imageBlockKind] == 1;

  return v5;
}

- (BOOL)encodeImageBlockDataReturn:(id)return isDrawCall:(BOOL)call
{
  callCopy = call;
  returnCopy = return;
  imageBlockDataReturn = [returnCopy imageBlockDataReturn];
  if (imageBlockDataReturn && [(DYMTLTileMemoryExtractor *)self isArgumentExplicitImageBlock:imageBlockDataReturn])
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 0;
    if (callCopy)
    {
      fragmentBindings = [returnCopy fragmentBindings];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __66__DYMTLTileMemoryExtractor_encodeImageBlockDataReturn_isDrawCall___block_invoke;
      v16[3] = &unk_27930F620;
      v16[4] = self;
      v17 = imageBlockDataReturn;
      v18 = &v19;
      [fragmentBindings enumerateObjectsUsingBlock:v16];

      v9 = *(v20 + 24) ^ 1;
      v10 = v17;
    }

    else
    {
      tileBindings = [returnCopy tileBindings];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __66__DYMTLTileMemoryExtractor_encodeImageBlockDataReturn_isDrawCall___block_invoke_2;
      v13[3] = &unk_27930F620;
      v13[4] = self;
      v14 = imageBlockDataReturn;
      v15 = &v19;
      [tileBindings enumerateObjectsUsingBlock:v13];

      v9 = *(v20 + 24) ^ 1;
      v10 = v14;
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t __66__DYMTLTileMemoryExtractor_encodeImageBlockDataReturn_isDrawCall___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isArgumentExplicitImageBlock:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __66__DYMTLTileMemoryExtractor_encodeImageBlockDataReturn_isDrawCall___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isArgumentExplicitImageBlock:*(a1 + 40)];
  if (result)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  return result;
}

- (void)harvestImageBlockData:(void *)data
{
  renderPipelineState = [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder renderPipelineState];
  descriptor = [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder descriptor];
  if (self->_imageBlockStatus == 2)
  {
    std::vector<DYMTLImageBlockArgument *>::__assign_with_size[abi:ne200100]<DYMTLImageBlockArgument **,DYMTLImageBlockArgument **>(&self->_imageBlockArgumentsFromFragment.__begin_, self->_imageBlockArgumentsFromTile.__begin_, self->_imageBlockArgumentsFromTile.__end_, self->_imageBlockArgumentsFromTile.__end_ - self->_imageBlockArgumentsFromTile.__begin_);
  }

  begin = self->_imageBlockArgumentsFromFragment.__begin_;
  end = self->_imageBlockArgumentsFromFragment.__end_;
  if (end != begin)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = begin[v10];
      v12 = *(v11 + 9);
      if (*(v11 + 10) != v12)
      {
        v18 = v10;
        v13 = 0;
        v14 = 0;
        do
        {
          v21 = [(DYMTLTileMemoryExtractor *)self _generateTextureFromImageBlockMember:v12 + v13];
          v15 = [(DYMTLTileMemoryExtractor *)self _generateFunctionFromImageBlockMember:v12 + v13 WithIndex:v9];
          v16 = [(DYMTLTileMemoryExtractor *)self _generateTileRenderPipelineStateWithTileFunction:v15 renderPassDescriptor:descriptor renderPipelineState:renderPipelineState];
          [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder pushDebugGroup:@"Dump Tile Data"];
          [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder setRenderPipelineState:v16];
          [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder setTileTexture:v21 atIndex:0];
          renderEncoder = self->_renderEncoder;
          v19 = *&self->_tileSize.width;
          depth = self->_tileSize.depth;
          [(DYMTLStatefulRenderCommandEncoder *)renderEncoder dispatchThreadsPerTile:&v19];
          [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder popDebugGroup];
          std::vector<objc_object  {objcproto10MTLTexture}* {__strong}>::push_back[abi:ne200100](data, &v21);
          ++v9;

          ++v14;
          v12 = *(v11 + 9);
          v13 += 40;
        }

        while (v14 < 0xCCCCCCCCCCCCCCCDLL * ((*(v11 + 10) - v12) >> 3));
        begin = self->_imageBlockArgumentsFromFragment.__begin_;
        end = self->_imageBlockArgumentsFromFragment.__end_;
        v10 = v18;
      }

      ++v10;
    }

    while (v10 < end - begin);
  }
}

- (id)harvestThreadgroupAtIndex:(unint64_t)index size:(unint64_t)size
{
  renderPipelineState = [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder renderPipelineState];
  descriptor = [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder descriptor];
  v9 = DYMTLGetNullableAssociatedObject(renderPipelineState, 0);
  v10 = DYMTLGetNullableAssociatedObject(renderPipelineState, 1u);
  if (v9 | v10)
  {
    v27 = v10;
    v28 = renderPipelineState;
    v29 = v9;
    v26 = [(DYMTLTileMemoryExtractor *)self _generateThreadgroupShaderStringWithThreadgroupIndex:index size:size];
    v31 = [(DYMTLTileMemoryExtractor *)self _generateKernelFunctionFromString:v26 funcName:@"dumpThreadgroupData"];
    v30 = [(MTLDeviceSPI *)self->_device newBufferWithLength:vcvtps_u32_f32(self->_textureSize.width / self->_tileSize.width) * size * vcvtps_u32_f32(self->_textureSize.height / self->_tileSize.height) options:0];
    v11 = objc_opt_new();
    [v11 setLabel:@"Tile Pipeline for dumping Threadgroup data"];
    if (v10)
    {
      rasterSampleCount = [v10 rasterSampleCount];
    }

    else
    {
      rasterSampleCount = [v9 rasterSampleCount];
    }

    [v11 setRasterSampleCount:rasterSampleCount];
    for (i = 0; i != 8; ++i)
    {
      colorAttachments = [descriptor colorAttachments];
      v16 = [colorAttachments objectAtIndexedSubscript:i];
      texture = [v16 texture];
      pixelFormat = [texture pixelFormat];
      colorAttachments2 = [v11 colorAttachments];
      v20 = [colorAttachments2 objectAtIndexedSubscript:i];
      [v20 setPixelFormat:pixelFormat];
    }

    v9 = v29;
    v10 = v27;
    [v11 setThreadgroupSizeMatchesTileSize:0];
    [v11 setTileFunction:v31];
    device = self->_device;
    v34 = 0;
    v22 = [(MTLDeviceSPI *)device newRenderPipelineStateWithTileDescriptor:v11 error:&v34];
    v23 = v34;
    DYMTLSetAssociatedObject(v22, 1u, v11);
    [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder pushDebugGroup:@"Dump Tile Threadgroup Data"];
    [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder setRenderPipelineState:v22];
    [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder setTileBuffer:v30 offset:0 atIndex:0];
    renderEncoder = self->_renderEncoder;
    v32 = vdupq_n_s64(1uLL);
    v33 = 1;
    [(DYMTLStatefulRenderCommandEncoder *)renderEncoder dispatchThreadsPerTile:&v32];
    [(DYMTLStatefulRenderCommandEncoder *)self->_renderEncoder popDebugGroup];

    renderPipelineState = v28;
    v13 = v30;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)_processStructType:(id)type WithProcessedArgument:(void *)argument WithMemberName:(id)name WithIndent:(unint64_t)indent
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  members = [type members];
  obj = members;
  v11 = [members countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = *v22;
    v13 = &stru_2860B3350;
    do
    {
      v14 = 0;
      v15 = v13;
      do
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v16 = [(DYMTLTileMemoryExtractor *)self _processStructMember:*(*(&v21 + 1) + 8 * v14) WithProcessedArgument:argument WithMemberName:nameCopy WithIndent:indent];
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v15, v16];

        ++v14;
        v15 = v13;
      }

      while (v11 != v14);
      members = obj;
      v11 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  else
  {
    v13 = &stru_2860B3350;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_processArrayType:(id)type WithProcessedArgument:(void *)argument WithMemberName:(id)name WithCurrentName:(id)currentName WithIndent:(unint64_t)indent
{
  typeCopy = type;
  nameCopy = name;
  currentNameCopy = currentName;
  elementStructType = [typeCopy elementStructType];

  if (elementStructType)
  {
    v29 = [(DYMTLTileMemoryExtractor *)self _generateIndentString:indent];
    arrayLength = [typeCopy arrayLength];
    if (arrayLength)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@[%ld].", nameCopy, currentNameCopy, v15];
        elementStructType2 = [typeCopy elementStructType];
        v19 = [(DYMTLTileMemoryExtractor *)self _processStructType:elementStructType2 WithProcessedArgument:argument WithMemberName:v17 WithIndent:indent + 1];

        ++v15;
        v16 = v19;
      }

      while (arrayLength != v15);
    }

    else
    {
      v19 = 0;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@struct\n%@{\n%@%@}%@[%ld]\n", v29, v29, v19, v29, currentNameCopy, arrayLength];;
  }

  else
  {
    elementArrayType = [typeCopy elementArrayType];

    if (!elementArrayType)
    {
      v33 = &stru_2860B3350;
      v34[0] = &stru_2860B3350;
      v34[1] = [typeCopy pixelFormat];
      v34[2] = [typeCopy aluType];
      v34[3] = [typeCopy arrayLength];
      if ([currentNameCopy containsString:@"user("]
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@fragmentMember%ld", nameCopy, self->_fragmentMemberIndex];
        v22 = v33;
        v33 = v21;

        objc_storeStrong(v34, currentName);
        std::vector<DYMTLImageBlockMember>::push_back[abi:ne200100](argument + 72, &v33);
        v23 = MEMORY[0x277CCACA8];
        fragmentMemberIndex = self->_fragmentMemberIndex;
        self->_fragmentMemberIndex = fragmentMemberIndex + 1;
        fragmentMemberIndex = [v23 stringWithFormat:@"fragmentMember%ld", fragmentMemberIndex];
        v7 = [(DYMTLTileMemoryExtractor *)self _generateImageBlockStructMember:&v33 WithCurrentName:fragmentMemberIndex WithIndent:indent];
      }

      else
      {
        ++self->_fragmentMemberIndex;
        currentNameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nameCopy, currentNameCopy];
        v28 = v33;
        v33 = currentNameCopy;

        std::vector<DYMTLImageBlockMember>::push_back[abi:ne200100](argument + 72, &v33);
        v7 = [(DYMTLTileMemoryExtractor *)self _generateImageBlockStructMember:&v33 WithCurrentName:currentNameCopy WithIndent:indent];
      }
    }
  }

  return v7;
}

- (id)_processStructMember:(id)member WithProcessedArgument:(void *)argument WithMemberName:(id)name WithIndent:(unint64_t)indent
{
  memberCopy = member;
  nameCopy = name;
  structType = [memberCopy structType];

  if (structType)
  {
    arrayType2 = [(DYMTLTileMemoryExtractor *)self _generateIndentString:indent];
    v14 = MEMORY[0x277CCACA8];
    name = [memberCopy name];
    name6 = [v14 stringWithFormat:@"%@%@.", nameCopy, name];

    structType2 = [memberCopy structType];
    v18 = [(DYMTLTileMemoryExtractor *)self _processStructType:structType2 WithProcessedArgument:argument WithMemberName:name6 WithIndent:indent + 1];

    v19 = MEMORY[0x277CCACA8];
    name2 = [memberCopy name];
    v21 = [v19 stringWithFormat:@"%@struct\n%@{\n%@%@}%@\n", arrayType2, arrayType2, v18, arrayType2, name2];;
  }

  else
  {
    arrayType = [memberCopy arrayType];

    if (!arrayType)
    {
      v36 = &stru_2860B3350;
      v37 = &stru_2860B3350;
      v40 = 0;
      pixelFormat = [memberCopy pixelFormat];
      aluType = [memberCopy aluType];
      name3 = [memberCopy name];
      v25 = objc_msgSend(name3, "containsString:", @"user(");

      v26 = MEMORY[0x277CCACA8];
      if (v25)
      {
        fragmentMemberIndex = self->_fragmentMemberIndex;
        self->_fragmentMemberIndex = fragmentMemberIndex + 1;
        fragmentMemberIndex = [v26 stringWithFormat:@"fragmentMember%ld", fragmentMemberIndex];
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", nameCopy, fragmentMemberIndex];
        v30 = v36;
        v36 = v29;

        name4 = [memberCopy name];
        v32 = v37;
        v37 = name4;

        std::vector<DYMTLImageBlockMember>::push_back[abi:ne200100](argument + 72, &v36);
      }

      else
      {
        name5 = [memberCopy name];
        v34 = [v26 stringWithFormat:@"%@%@", nameCopy, name5];
        v35 = v36;
        v36 = v34;

        std::vector<DYMTLImageBlockMember>::push_back[abi:ne200100](argument + 72, &v36);
        ++self->_fragmentMemberIndex;
        fragmentMemberIndex = [memberCopy name];
      }

      v21 = [(DYMTLTileMemoryExtractor *)self _generateImageBlockStructMember:&v36 WithCurrentName:fragmentMemberIndex WithIndent:indent];

      goto LABEL_6;
    }

    arrayType2 = [memberCopy arrayType];
    name6 = [memberCopy name];
    v21 = [(DYMTLTileMemoryExtractor *)self _processArrayType:arrayType2 WithProcessedArgument:argument WithMemberName:nameCopy WithCurrentName:name6 WithIndent:indent];
  }

LABEL_6:

  return v21;
}

- (id)_generateTextureFromImageBlockMember:(DYMTLImageBlockMember *)member
{
  var2 = member->var2;
  if (!var2)
  {
    dataTypeToTextureTypeForInvalidPixelFormatMap = self->_dataTypeToTextureTypeForInvalidPixelFormatMap;
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:member->var3];
    v8 = [(NSDictionary *)dataTypeToTextureTypeForInvalidPixelFormatMap objectForKeyedSubscript:v7];
    var2 = [v8 unsignedIntegerValue];
  }

  if (member->var4)
  {
    v9 = objc_opt_new();
    [v9 setTextureType:3];
    [v9 setPixelFormat:var2];
    [v9 setWidth:self->_textureSize.width];
    [v9 setHeight:self->_textureSize.height];
    [v9 setDepth:1];
    [v9 setArrayLength:member->var4];
    [v9 setMipmapLevelCount:1];
    [v9 setSampleCount:1];
  }

  else
  {
    v9 = [MEMORY[0x277CD7050] texture2DDescriptorWithPixelFormat:var2 width:self->_textureSize.width height:self->_textureSize.height mipmapped:0];
  }

  [v9 setUsage:2];
  [v9 setStorageMode:0];
  [v9 setSampleCount:1];
  v10 = DYMTLNewTexture(self->_device, v9);

  return v10;
}

- (id)_generateFunctionFromImageBlockMember:(DYMTLImageBlockMember *)member WithIndex:(unint64_t)index
{
  v5 = [(DYMTLTileMemoryExtractor *)self _generateImageBlockShaderStringWithMember:member index:index];
  v6 = [(DYMTLTileMemoryExtractor *)self _generateKernelFunctionFromString:v5 funcName:@"dumpImageBlockData"];

  return v6;
}

- (id)_generateTileRenderPipelineStateWithTileFunction:(id)function renderPassDescriptor:(id)descriptor renderPipelineState:(id)state
{
  functionCopy = function;
  descriptorCopy = descriptor;
  stateCopy = state;
  v11 = DYMTLGetNullableAssociatedObject(stateCopy, 0);
  v29 = stateCopy;
  v12 = DYMTLGetNullableAssociatedObject(stateCopy, 1u);
  v13 = objc_opt_new();
  [v13 setLabel:@"Tile Pipeline for dumping Image Block data"];
  [v13 setThreadgroupSizeMatchesTileSize:1];
  [v13 setTileFunction:functionCopy];
  if (self->_imageBlockStatus == 1)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  [v13 setSampleCount:{objc_msgSend(v14, "sampleCount")}];
  v26 = v12;
  v27 = v11;
  v28 = functionCopy;
  for (i = 0; i != 8; ++i)
  {
    colorAttachments = [descriptorCopy colorAttachments];
    v17 = [colorAttachments objectAtIndexedSubscript:i];
    texture = [v17 texture];
    pixelFormat = [texture pixelFormat];
    colorAttachments2 = [v13 colorAttachments];
    v21 = [colorAttachments2 objectAtIndexedSubscript:i];
    [v21 setPixelFormat:pixelFormat];
  }

  device = self->_device;
  v30 = 0;
  v23 = [(MTLDeviceSPI *)device newRenderPipelineStateWithTileDescriptor:v13 error:&v30];
  v24 = v30;
  DYMTLSetAssociatedObject(v23, 1u, v13);

  return v23;
}

- (id)_generateStringForWritingDataToTexture:(unint64_t)texture
{
  dataTypeToChannelCount = self->_dataTypeToChannelCount;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v7 = [(NSDictionary *)dataTypeToChannelCount objectForKeyedSubscript:v6];
  unsignedIntegerValue = [v7 unsignedIntegerValue];

  dataTypeToTextureComponentTypeStringMap = self->_dataTypeToTextureComponentTypeStringMap;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:texture];
  v11 = [(NSDictionary *)dataTypeToTextureComponentTypeStringMap objectForKeyedSubscript:v10];

  if ((unsignedIntegerValue - 1) >= 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:off_27930F640[unsignedIntegerValue - 1], v11];
  }

  return v12;
}

- (id)_generateIndentString:(unint64_t)string
{
  if (string)
  {
    stringCopy = string;
    v4 = &stru_2860B3350;
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"    %@", v4];

      v4 = v5;
      --stringCopy;
    }

    while (stringCopy);
  }

  else
  {
    v5 = &stru_2860B3350;
  }

  return v5;
}

- (id)_generateImageBlockStructMember:(DYMTLImageBlockMember *)member WithCurrentName:(id)name WithIndent:(unint64_t)indent
{
  nameCopy = name;
  v9 = [(DYMTLTileMemoryExtractor *)self _generateIndentString:indent];
  dataTypeToImageBlockTypeStringMap = self->_dataTypeToImageBlockTypeStringMap;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:member->var3];
  v12 = [(NSDictionary *)dataTypeToImageBlockTypeStringMap objectForKeyedSubscript:v11];

  if (member->var2)
  {
    pixelFormatToDataTypeStringMap = self->_pixelFormatToDataTypeStringMap;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    v15 = [(NSDictionary *)pixelFormatToDataTypeStringMap objectForKeyedSubscript:v14];

    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@<%@>", v9, v15, v12];
  }

  else
  {
    v15 = 0;
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v9, v12];
  }
  v16 = ;
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v16, nameCopy];

  var4 = member->var4;
  if (var4)
  {
    var4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[%lu]", nameCopy, var4];

    v20 = var4;
  }

  else
  {
    v20 = nameCopy;
  }

  if ([member->var1 isEqualToString:&stru_2860B3350])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@;\n", v20];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@[[ %@ ]];\n", v20, member->var1];
  }
  v21 = ;

  return v21;
}

- (id)_generateImageBlockShaderStringWithMember:(DYMTLImageBlockMember *)member index:(unint64_t)index
{
  var3 = member->var3;
  v8 = 0x277CCA000uLL;
  if (self->_aliasImplicitImageBlock)
  {
    v9 = CFSTR("kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock [[ alias_implicit_imageblock ]],\n");
  }

  else
  {
    if (self->_aliasImplicitImageBlockColor)
    {
      v40 = objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock [[ alias_implicit_imageblock_color(%ld) ]],\n"), self->_aliasImplicitImageBlockColorIndex;
      v8 = 0x277CCA000;
      goto LABEL_7;
    }

    v9 = CFSTR("kernel void dumpImageBlockData(imageblock<ImageblockMaster, imageblock_layout_explicit> imageBlock,\n");
  }

  v40 = v9;
LABEL_7:
  v10 = *(v8 + 3240);
  dataTypeToTextureComponentTypeStringMap = self->_dataTypeToTextureComponentTypeStringMap;
  if (!member->var4)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:var3];
    v30 = [(NSDictionary *)dataTypeToTextureComponentTypeStringMap objectForKeyedSubscript:v29];
    v14 = [v10 stringWithFormat:@"                               texture2d<%@, access::write> imageBlockData [[ texture(0) ]]\n"], v30);

    v31 = [member->var1 isEqualToString:&stru_2860B3350];
    v32 = MEMORY[0x277CCACA8];
    if ((v31 & 1) == 0)
    {
      index = [MEMORY[0x277CCACA8] stringWithFormat:@"fragmentMember%ld", index];
      v36 = MEMORY[0x277CCACA8];
      dataTypeToImageBlockTypeStringMap = self->_dataTypeToImageBlockTypeStringMap;
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:var3];
      v20 = [(NSDictionary *)dataTypeToImageBlockTypeStringMap objectForKeyedSubscript:v19];
      [(DYMTLTileMemoryExtractor *)self _generateStringForWritingDataToTexture:var3];
      v22 = v21 = 0x277CCA000uLL;
      v23 = [v36 stringWithFormat:@"    threadgroup_imageblock ImageblockMaster* ib = imageBlock.data(lid)\n    %@ currData = ib->%@;\n    %@;\n"], v20, index, v22);;
      goto LABEL_16;
    }

    v33 = self->_dataTypeToImageBlockTypeStringMap;
    index = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:var3];
    v19 = [(NSDictionary *)v33 objectForKeyedSubscript:index];
    var0 = member->var0;
    [(DYMTLTileMemoryExtractor *)self _generateStringForWritingDataToTexture:var3];
    v20 = v21 = 0x277CCA000;
    v28 = [v32 stringWithFormat:@"    threadgroup_imageblock ImageblockMaster* ib = imageBlock.data(lid)\n    %@ currData = ib->%@;\n    %@;\n"], v19, var0, v20);;
LABEL_14:
    v35 = v28;
    goto LABEL_17;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:var3];
  v13 = [(NSDictionary *)dataTypeToTextureComponentTypeStringMap objectForKeyedSubscript:v12];
  v14 = [v10 stringWithFormat:@"                               texture2d_array<%@, access::write> imageBlockData [[ texture(0) ]]\n"], v13);

  if (self->_imageBlockStatus != 1 || ![member->var1 length])
  {
    v24 = MEMORY[0x277CCACA8];
    var4 = member->var4;
    v26 = self->_dataTypeToImageBlockTypeStringMap;
    index = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:var3];
    v19 = [(NSDictionary *)v26 objectForKeyedSubscript:index];
    v27 = member->var0;
    [(DYMTLTileMemoryExtractor *)self _generateStringForWritingDataToTexture:var3];
    v20 = v21 = 0x277CCA000;
    v28 = [v24 stringWithFormat:@"    threadgroup_imageblock ImageblockMaster* ib = imageBlock.data(lid)\n    for (int i = 0; i < %ld; ++i)\n    {\n        %@ currData = ib->%@[i];\n        %@, i;\n    }\n"], var4, v19, v27, v20);;
    goto LABEL_14;
  }

  index = [MEMORY[0x277CCACA8] stringWithFormat:@"%@fragmentMember%ld", member->var0, index];
  v16 = MEMORY[0x277CCACA8];
  v17 = member->var4;
  v18 = self->_dataTypeToImageBlockTypeStringMap;
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:var3];
  v20 = [(NSDictionary *)v18 objectForKeyedSubscript:v19];
  [(DYMTLTileMemoryExtractor *)self _generateStringForWritingDataToTexture:var3];
  v22 = v21 = 0x277CCA000;
  v23 = [v16 stringWithFormat:@"    threadgroup_imageblock ImageblockMaster* ib = imageBlock.data(lid)\n    for (int i = 0; i < %ld; ++i)\n    {\n        %@ currData = ib->%@[i];\n        %@, i;\n    }\n"], v17, v20, index, v22);;
LABEL_16:
  v35 = v23;

LABEL_17:
  v38 = [*(v21 + 3240) stringWithFormat:@"#include <metal_stdlib>\n#include <metal_imageblocks>\n#include <simd/simd.h>\nusing namespace metal\n\n%@\n%@                               uint2 gid [[ thread_position_in_grid ]], \n                               ushort2 lid [[ thread_position_in_threadgroup ]], \n%@{\n%@}\n", self->_imageBlockSignature, v40, v14, v35];;

  return v38;
}

- (id)_generateThreadgroupShaderStringWithThreadgroupIndex:(unint64_t)index size:(unint64_t)size
{
  index = [MEMORY[0x277CCACA8] stringWithFormat:@"#include <metal_stdlib>\nusing namespace metal\n\n#define THREADGROUP_MEMORY_LENGTH %ld\n\nkernel void dumpThreadgroupData(uint2 threadgroupInGrid [[ threadgroup_position_in_grid ]], \n                                uint2 threadgroupsPerGrid [[ threadgroups_per_grid ]], \n                                device uint8_t* threadgroupBufferDump [[ buffer(0) ]], \n                                threadgroup uint8_t* threadgroupData [[ threadgroup(%ld) ]])\n{\n   uint tileIndex = (threadgroupInGrid.y * threadgroupsPerGrid.x) + threadgroupInGrid.x;\n   uint offset = THREADGROUP_MEMORY_LENGTH * tileIndex;\n\n   for (uint32_t i = 0; i < THREADGROUP_MEMORY_LENGTH; ++i)\n   {\n       threadgroupBufferDump[offset + i] = threadgroupData[i];\n   }\n}\n", size, index];;

  return index;
}

- (id)_generateKernelFunctionFromString:(id)string funcName:(id)name
{
  nameCopy = name;
  device = self->_device;
  v12 = 0;
  v8 = [(MTLDeviceSPI *)device newLibraryWithSource:string options:0 error:&v12];
  v9 = v12;
  v10 = [v8 newFunctionWithName:nameCopy];

  return v10;
}

- (void)_createDataTypeToStringDictionary
{
  v23[36] = *MEMORY[0x277D85DE8];
  v22[0] = &unk_2860B9AA8;
  v22[1] = &unk_2860B9AC0;
  v23[0] = @"float";
  v23[1] = @"float";
  v22[2] = &unk_2860B9AD8;
  v22[3] = &unk_2860B9AF0;
  v23[2] = @"float";
  v23[3] = @"float";
  v22[4] = &unk_2860B9B08;
  v22[5] = &unk_2860B9B20;
  v23[4] = @"half";
  v23[5] = @"half";
  v22[6] = &unk_2860B9B38;
  v22[7] = &unk_2860B9B50;
  v23[6] = @"half";
  v23[7] = @"half";
  v22[8] = &unk_2860B9B68;
  v22[9] = &unk_2860B9B80;
  v23[8] = @"int";
  v23[9] = @"int";
  v22[10] = &unk_2860B9B98;
  v22[11] = &unk_2860B9BB0;
  v23[10] = @"int";
  v23[11] = @"int";
  v22[12] = &unk_2860B9BC8;
  v22[13] = &unk_2860B9BE0;
  v23[12] = @"uint";
  v23[13] = @"uint";
  v22[14] = &unk_2860B9BF8;
  v22[15] = &unk_2860B9C10;
  v23[14] = @"uint";
  v23[15] = @"uint";
  v22[16] = &unk_2860B9C28;
  v22[17] = &unk_2860B9C40;
  v23[16] = @"short";
  v23[17] = @"short";
  v22[18] = &unk_2860B9C58;
  v22[19] = &unk_2860B9C70;
  v23[18] = @"short";
  v23[19] = @"short";
  v22[20] = &unk_2860B9C88;
  v22[21] = &unk_2860B9CA0;
  v23[20] = @"ushort";
  v23[21] = @"ushort";
  v22[22] = &unk_2860B9CB8;
  v22[23] = &unk_2860B9CD0;
  v23[22] = @"ushort";
  v23[23] = @"ushort";
  v22[24] = &unk_2860B9CE8;
  v22[25] = &unk_2860B9D00;
  v23[24] = @"int";
  v23[25] = @"int";
  v22[26] = &unk_2860B9D18;
  v22[27] = &unk_2860B9D30;
  v23[26] = @"int";
  v23[27] = @"int";
  v22[28] = &unk_2860B9D48;
  v22[29] = &unk_2860B9D60;
  v23[28] = @"uint";
  v23[29] = @"uint";
  v22[30] = &unk_2860B9D78;
  v22[31] = &unk_2860B9D90;
  v23[30] = @"uint";
  v23[31] = @"uint";
  v22[32] = &unk_2860B9DA8;
  v22[33] = &unk_2860B9DC0;
  v23[32] = @"uint";
  v23[33] = @"uint";
  v22[34] = &unk_2860B9DD8;
  v22[35] = &unk_2860B9DF0;
  v23[34] = @"uint";
  v23[35] = @"uint";
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:36];
  dataTypeToTextureComponentTypeStringMap = self->_dataTypeToTextureComponentTypeStringMap;
  self->_dataTypeToTextureComponentTypeStringMap = v3;

  v21[0] = @"float";
  v21[1] = @"float2";
  v21[2] = @"float3";
  v21[3] = @"float4";
  v21[4] = @"half";
  v21[5] = @"half2";
  v21[6] = @"half3";
  v21[7] = @"half4";
  v21[8] = @"int";
  v21[9] = @"int2";
  v21[10] = @"int3";
  v21[11] = @"int4";
  v21[12] = @"uint";
  v21[13] = @"uint2";
  v21[14] = @"uint3";
  v21[15] = @"uint4";
  v21[16] = @"short";
  v21[17] = @"short2";
  v21[18] = @"short3";
  v21[19] = @"short4";
  v21[20] = @"ushort";
  v21[21] = @"ushort2";
  v21[22] = @"ushort3";
  v21[23] = @"ushort4";
  v21[24] = @"char";
  v21[25] = @"char2";
  v21[26] = @"char3";
  v21[27] = @"char4";
  v21[28] = @"uchar";
  v21[29] = @"uchar2";
  v21[30] = @"uchar3";
  v21[31] = @"uchar4";
  v21[32] = @"BOOL";
  v21[33] = @"BOOL2";
  v21[34] = @"BOOL3";
  v20[0] = &unk_2860B9AA8;
  v20[1] = &unk_2860B9AC0;
  v20[2] = &unk_2860B9AD8;
  v20[3] = &unk_2860B9AF0;
  v20[4] = &unk_2860B9B08;
  v20[5] = &unk_2860B9B20;
  v20[6] = &unk_2860B9B38;
  v20[7] = &unk_2860B9B50;
  v20[8] = &unk_2860B9B68;
  v20[9] = &unk_2860B9B80;
  v20[10] = &unk_2860B9B98;
  v20[11] = &unk_2860B9BB0;
  v20[12] = &unk_2860B9BC8;
  v20[13] = &unk_2860B9BE0;
  v20[14] = &unk_2860B9BF8;
  v20[15] = &unk_2860B9C10;
  v20[16] = &unk_2860B9C28;
  v20[17] = &unk_2860B9C40;
  v20[18] = &unk_2860B9C58;
  v20[19] = &unk_2860B9C70;
  v20[20] = &unk_2860B9C88;
  v20[21] = &unk_2860B9CA0;
  v20[22] = &unk_2860B9CB8;
  v20[23] = &unk_2860B9CD0;
  v20[24] = &unk_2860B9CE8;
  v20[25] = &unk_2860B9D00;
  v20[26] = &unk_2860B9D18;
  v20[27] = &unk_2860B9D30;
  v20[28] = &unk_2860B9D48;
  v20[29] = &unk_2860B9D60;
  v20[30] = &unk_2860B9D78;
  v20[31] = &unk_2860B9D90;
  v20[32] = &unk_2860B9DA8;
  v20[33] = &unk_2860B9DC0;
  v20[34] = &unk_2860B9DD8;
  v20[35] = &unk_2860B9DF0;
  v21[35] = @"BOOL4";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:36];
  dataTypeToImageBlockTypeStringMap = self->_dataTypeToImageBlockTypeStringMap;
  self->_dataTypeToImageBlockTypeStringMap = v5;

  v18[0] = &unk_2860B9E08;
  v18[1] = &unk_2860B9E20;
  v19[0] = @"r8unorm";
  v19[1] = @"r8snorm";
  v18[2] = &unk_2860B9E38;
  v18[3] = &unk_2860B9E50;
  v19[2] = @"r16unorm";
  v19[3] = @"r16snorm";
  v18[4] = &unk_2860B9B80;
  v18[5] = &unk_2860B9BB0;
  v19[4] = @"rg8unorm";
  v19[5] = @"rg8snorm";
  v18[6] = &unk_2860B9E68;
  v18[7] = &unk_2860B9E80;
  v19[6] = @"rg16unorm";
  v19[7] = @"rg16snorm";
  v18[8] = &unk_2860B9E98;
  v18[9] = &unk_2860B9EB0;
  v19[8] = @"rgba8unorm";
  v19[9] = @"srgba8unorm";
  v18[10] = &unk_2860B9EC8;
  v18[11] = &unk_2860B9EE0;
  v19[10] = @"rgba8snorm";
  v19[11] = @"rgba16unorm";
  v18[12] = &unk_2860B9EF8;
  v18[13] = &unk_2860B9F10;
  v19[12] = @"rgba16snorm";
  v19[13] = @"rgb10a2";
  v18[14] = &unk_2860B9F28;
  v18[15] = &unk_2860B9F40;
  v19[14] = @"rg11b10f";
  v19[15] = @"rgb9e5";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:16];
  pixelFormatToDataTypeStringMap = self->_pixelFormatToDataTypeStringMap;
  self->_pixelFormatToDataTypeStringMap = v7;

  v17[1] = &unk_2860B9F58;
  v17[2] = &unk_2860B9F70;
  v17[3] = &unk_2860B9F70;
  v17[5] = &unk_2860B9F88;
  v17[6] = &unk_2860B9FA0;
  v17[7] = &unk_2860B9FA0;
  v17[9] = &unk_2860B9FB8;
  v17[10] = &unk_2860B9FD0;
  v17[11] = &unk_2860B9FD0;
  v17[12] = &unk_2860B9FE8;
  v17[13] = &unk_2860BA000;
  v17[14] = &unk_2860BA018;
  v17[15] = &unk_2860BA018;
  v17[16] = &unk_2860BA030;
  v17[17] = &unk_2860BA048;
  v17[18] = &unk_2860BA060;
  v17[19] = &unk_2860BA060;
  v17[20] = &unk_2860BA078;
  v17[0] = &unk_2860B9DC0;
  v17[4] = &unk_2860B9DA8;
  v17[8] = &unk_2860B9DD8;
  v16[0] = &unk_2860B9B68;
  v16[1] = &unk_2860B9B80;
  v16[2] = &unk_2860B9B98;
  v16[3] = &unk_2860B9BB0;
  v16[4] = &unk_2860B9BC8;
  v16[5] = &unk_2860B9BE0;
  v16[6] = &unk_2860B9BF8;
  v16[7] = &unk_2860B9C10;
  v16[8] = &unk_2860B9AA8;
  v16[9] = &unk_2860B9AC0;
  v16[10] = &unk_2860B9AD8;
  v16[11] = &unk_2860B9AF0;
  v16[12] = &unk_2860B9B08;
  v16[13] = &unk_2860B9B20;
  v16[14] = &unk_2860B9B38;
  v16[15] = &unk_2860B9B50;
  v16[16] = &unk_2860B9C28;
  v16[17] = &unk_2860B9C40;
  v16[18] = &unk_2860B9C58;
  v16[19] = &unk_2860B9C70;
  v16[20] = &unk_2860B9C88;
  v16[21] = &unk_2860B9CA0;
  v17[21] = &unk_2860BA090;
  v16[22] = &unk_2860B9CB8;
  v16[23] = &unk_2860B9CD0;
  v17[22] = &unk_2860BA0A8;
  v17[23] = &unk_2860BA0A8;
  v16[24] = &unk_2860B9CE8;
  v16[25] = &unk_2860B9D00;
  v17[24] = &unk_2860BA0C0;
  v17[25] = &unk_2860B9BE0;
  v16[26] = &unk_2860B9D18;
  v16[27] = &unk_2860B9D30;
  v17[26] = &unk_2860BA0D8;
  v17[27] = &unk_2860BA0D8;
  v16[28] = &unk_2860B9D48;
  v16[29] = &unk_2860B9D60;
  v17[28] = &unk_2860BA0F0;
  v17[29] = &unk_2860B9BC8;
  v17[32] = &unk_2860BA0F0;
  v16[30] = &unk_2860B9D78;
  v16[31] = &unk_2860B9D90;
  v17[30] = &unk_2860BA108;
  v17[31] = &unk_2860BA108;
  v16[32] = &unk_2860B9DA8;
  v16[33] = &unk_2860B9DC0;
  v17[33] = &unk_2860B9BC8;
  v16[34] = &unk_2860B9DD8;
  v16[35] = &unk_2860B9DF0;
  v17[34] = &unk_2860BA108;
  v17[35] = &unk_2860BA108;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:36];
  dataTypeToTextureTypeForInvalidPixelFormatMap = self->_dataTypeToTextureTypeForInvalidPixelFormatMap;
  self->_dataTypeToTextureTypeForInvalidPixelFormatMap = v9;

  v14[0] = &unk_2860B9AA8;
  v14[1] = &unk_2860B9AC0;
  v14[2] = &unk_2860B9AD8;
  v14[3] = &unk_2860B9AF0;
  v14[4] = &unk_2860B9B68;
  v14[5] = &unk_2860B9B80;
  v14[6] = &unk_2860B9B98;
  v14[7] = &unk_2860B9BB0;
  v15[0] = &unk_2860BA120;
  v15[1] = &unk_2860BA138;
  v14[8] = &unk_2860B9B08;
  v14[9] = &unk_2860B9B20;
  v15[2] = &unk_2860BA150;
  v15[3] = &unk_2860BA168;
  v15[4] = &unk_2860BA120;
  v15[5] = &unk_2860BA138;
  v15[6] = &unk_2860BA150;
  v15[7] = &unk_2860BA168;
  v15[8] = &unk_2860BA120;
  v15[9] = &unk_2860BA138;
  v14[10] = &unk_2860B9B38;
  v14[11] = &unk_2860B9B50;
  v15[10] = &unk_2860BA150;
  v15[11] = &unk_2860BA168;
  v14[12] = &unk_2860B9BC8;
  v14[13] = &unk_2860B9BE0;
  v15[12] = &unk_2860BA120;
  v15[13] = &unk_2860BA138;
  v14[14] = &unk_2860B9BF8;
  v14[15] = &unk_2860B9C10;
  v15[14] = &unk_2860BA150;
  v15[15] = &unk_2860BA168;
  v14[16] = &unk_2860B9C28;
  v14[17] = &unk_2860B9C40;
  v15[16] = &unk_2860BA120;
  v15[17] = &unk_2860BA138;
  v14[18] = &unk_2860B9C58;
  v14[19] = &unk_2860B9C70;
  v15[18] = &unk_2860BA150;
  v15[19] = &unk_2860BA168;
  v14[20] = &unk_2860B9C88;
  v14[21] = &unk_2860B9CA0;
  v15[20] = &unk_2860BA120;
  v15[21] = &unk_2860BA138;
  v14[22] = &unk_2860B9CB8;
  v14[23] = &unk_2860B9CD0;
  v15[22] = &unk_2860BA150;
  v15[23] = &unk_2860BA168;
  v14[24] = &unk_2860B9CE8;
  v14[25] = &unk_2860B9D00;
  v15[24] = &unk_2860BA120;
  v15[25] = &unk_2860BA138;
  v14[26] = &unk_2860B9D18;
  v14[27] = &unk_2860B9D30;
  v15[26] = &unk_2860BA150;
  v15[27] = &unk_2860BA168;
  v14[28] = &unk_2860B9D48;
  v14[29] = &unk_2860B9D60;
  v15[28] = &unk_2860BA120;
  v15[29] = &unk_2860BA138;
  v14[30] = &unk_2860B9D78;
  v14[31] = &unk_2860B9D90;
  v15[30] = &unk_2860BA150;
  v15[31] = &unk_2860BA168;
  v14[32] = &unk_2860B9DA8;
  v14[33] = &unk_2860B9DC0;
  v15[32] = &unk_2860BA120;
  v15[33] = &unk_2860BA138;
  v14[34] = &unk_2860B9DD8;
  v14[35] = &unk_2860B9DF0;
  v15[34] = &unk_2860BA150;
  v15[35] = &unk_2860BA168;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:36];
  dataTypeToChannelCount = self->_dataTypeToChannelCount;
  self->_dataTypeToChannelCount = v11;

  v13 = *MEMORY[0x277D85DE8];
}

- (id).cxx_construct
{
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  return self;
}

@end