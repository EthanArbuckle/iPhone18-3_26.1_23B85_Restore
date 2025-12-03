@interface MTLGPUDebugFunction
+ (id)convertUserType:(id)type;
+ (id)internalArrayTypeFromUserArrayType:(id)type;
+ (id)internalStructTypeFromUserStructType:(id)type;
- (MTLGPUDebugFunction)initWithFunction:(id)function library:(id)library;
- (id).cxx_construct;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library binaryArchives:(id)archives;
- (void)_initImageData;
- (void)dealloc;
- (void)prepareForBinaryFunctionUsage;
@end

@implementation MTLGPUDebugFunction

- (MTLGPUDebugFunction)initWithFunction:(id)function library:(id)library
{
  v5.receiver = self;
  v5.super_class = MTLGPUDebugFunction;
  return [(MTLToolsObject *)&v5 initWithBaseObject:function parent:library];
}

- (void)_initImageData
{
  if (!*(self + 6))
  {
    v3 = [[MTLGPUDebugImageData alloc] initWithFunction:self];
    v4 = 0;
    atomic_compare_exchange_strong(self + 6, &v4, v3);
    if (v4)
    {
    }
  }
}

- (void)prepareForBinaryFunctionUsage
{
  [(MTLGPUDebugFunction *)self _initImageData];
  v3 = *(self + 6);
  v4 = [objc_msgSend(*(self + 2) "debugInstrumentationData")];

  [v3 setConstantData:v4];
}

+ (id)convertUserType:(id)type
{
  dataType = [type dataType];
  result = 0;
  if (dataType > 116)
  {
    if ((dataType - 117) >= 2)
    {
      return type;
    }
  }

  else
  {
    switch(dataType)
    {
      case 1:

        return [MTLGPUDebugFunction internalStructTypeFromUserStructType:type];
      case 2:

        return [MTLGPUDebugFunction internalArrayTypeFromUserArrayType:type];
      case 60:
        break;
      default:
        return type;
    }
  }

  return result;
}

+ (id)internalArrayTypeFromUserArrayType:(id)type
{
  typeCopy = type;
  elementType = [type elementType];
  if (elementType <= 116)
  {
    switch(elementType)
    {
      case 1:
        elementStructType = [typeCopy elementStructType];
        break;
      case 2:
        elementStructType = [typeCopy elementArrayType];
        break;
      case 60:
        goto LABEL_7;
      default:
        return typeCopy;
    }

    v8 = elementStructType;
    goto LABEL_12;
  }

  if ((elementType - 117) < 2)
  {
LABEL_7:
    stride = [typeCopy stride];
    arrayLength = [typeCopy arrayLength];
    v7 = [objc_alloc(MEMORY[0x277CD6C80]) initWithArrayLength:arrayLength elementType:57 stride:stride pixelFormat:0 aluType:0 details:getIndirectConstant(arrayLength)];
    if (v7)
    {
LABEL_14:
      [v7 setIndirectArgumentIndexStride:{objc_msgSend(typeCopy, "indirectArgumentIndexStride")}];
      return v7;
    }

    v8 = 0;
LABEL_12:
    v10 = [MTLGPUDebugFunction convertUserType:v8];
    v7 = typeCopy;
    if (v10 != v8)
    {
      v11 = v10;
      elementType2 = [typeCopy elementType];
      stride2 = [typeCopy stride];
      arrayLength2 = [typeCopy arrayLength];
      v7 = [objc_alloc(MEMORY[0x277CD6C80]) initWithArrayLength:arrayLength2 elementType:elementType2 stride:stride2 pixelFormat:0 aluType:0 details:v11];
    }

    goto LABEL_14;
  }

  return typeCopy;
}

+ (id)internalStructTypeFromUserStructType:(id)type
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD7028]);
  v5 = objc_autoreleasePoolPush();
  __p = 0;
  v28 = 0;
  v29 = 0;
  std::vector<MTLGPUDebugBuffer *>::resize(&__p, [objc_msgSend(type "members")]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  members = [type members];
  v7 = [members countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v7)
  {
    v21 = v5;
    v22 = v4;
    LODWORD(v8) = 0;
    v9 = *v24;
    while (1)
    {
      v10 = 0;
      v11 = v8;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(members);
        }

        StructMember = *(*(&v23 + 1) + 8 * v10);
        if ([StructMember dataType] == 60 || objc_msgSend(StructMember, "dataType") == 118 || objc_msgSend(StructMember, "dataType") == 117)
        {
          name = [StructMember name];
          offset = [StructMember offset];
          argumentIndex = [StructMember argumentIndex];
          IndirectConstant = getIndirectConstant(argumentIndex);
          v17 = MTLDataTypeBool4|MTLDataTypeStruct;
LABEL_10:
          StructMember = getStructMember(name, offset, v17, argumentIndex, IndirectConstant);
          goto LABEL_11;
        }

        if ([StructMember dataType] == 1)
        {
          name = [StructMember name];
          offset = [StructMember offset];
          argumentIndex = [StructMember argumentIndex];
          IndirectConstant = +[MTLGPUDebugFunction convertUserType:](MTLGPUDebugFunction, "convertUserType:", [StructMember structType]);
          v17 = MTLDataTypeStruct;
          goto LABEL_10;
        }

        if ([StructMember dataType] == 2)
        {
          name = [StructMember name];
          offset = [StructMember offset];
          argumentIndex = [StructMember argumentIndex];
          IndirectConstant = +[MTLGPUDebugFunction convertUserType:](MTLGPUDebugFunction, "convertUserType:", [StructMember arrayType]);
          v17 = MTLDataTypeArray;
          goto LABEL_10;
        }

LABEL_11:
        v8 = v11 + 1;
        *(__p + v11) = StructMember;
        ++v10;
        ++v11;
      }

      while (v7 != v10);
      v18 = [members countByEnumeratingWithState:&v23 objects:v30 count:16];
      v7 = v18;
      if (!v18)
      {
        v5 = v21;
        v4 = v22;
        goto LABEL_20;
      }
    }
  }

  v8 = 0;
LABEL_20:
  [v4 setMembers:__p count:v8];
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  objc_autoreleasePoolPop(v5);
  result = v4;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)index reflection:(id *)reflection pipelineLibrary:(id)library binaryArchives:(id)archives
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = *(self + 3);
  if ((v11[286] & 0x80) != 0)
  {
    baseObject = [v11 baseObject];
    std::mutex::lock((self + 56));
    LODWORD(v30) = index;
    v13 = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::find<unsigned int>(self + 15, &v30);
    if (v13 && (v14 = v13[3]) != 0)
    {
      if (library)
      {
        if (!reflection)
        {
          goto LABEL_43;
        }

        v15 = [*(self + 2) newArgumentEncoderWithBufferIndex:index reflection:reflection pipelineLibrary:library];
      }

      else if (archives)
      {
        if (!reflection)
        {
          goto LABEL_43;
        }

        v15 = [*(self + 2) newArgumentEncoderWithBufferIndex:index reflection:reflection binaryArchives:archives];
      }

      else
      {
        if (!reflection)
        {
          goto LABEL_43;
        }

        v15 = [*(self + 2) newArgumentEncoderWithBufferIndex:index reflection:reflection];
      }
    }

    else
    {
      if (library)
      {
        if (reflection)
        {
        }

        v16 = [*(self + 2) reflectionWithOptions:3 pipelineLibrary:library];
      }

      else if (archives)
      {
        if (reflection)
        {
        }

        v16 = [*(self + 2) reflectionWithOptions:3 binaryArchives:archives];
      }

      else
      {
        if (reflection)
        {
        }

        v16 = [*(self + 2) reflectionWithOptions:3];
      }

      v18 = v16;
      if (!v16)
      {
        std::mutex::unlock((self + 56));
        goto LABEL_45;
      }

      context = objc_autoreleasePoolPush();
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      arguments = [v18 arguments];
      v20 = [arguments countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v20)
      {
        v21 = *v33;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(arguments);
            }

            v23 = *(*(&v32 + 1) + 8 * i);
            if (![v23 type] && objc_msgSend(v23, "index") == index)
            {
              [v23 bufferStructType];
              indexCopy = index;
              v24 = *(self + 3);
              operator new();
            }
          }

          v20 = [arguments countByEnumeratingWithState:&v32 objects:v39 count:16];
        }

        while (v20);
      }

      v14 = 0;
      objc_autoreleasePoolPop(context);
    }

LABEL_43:
    std::mutex::unlock((self + 56));
    if (v14)
    {
      v25 = [baseObject newArgumentEncoderWithLayout:*v14];
      v17 = [[MTLGPUDebugArgumentEncoder alloc] initWithArgumentEncoder:v25 layout:v14 device:[(MTLToolsObject *)self device]];

      goto LABEL_46;
    }

LABEL_45:
    v17 = 0;
    goto LABEL_46;
  }

  if (library)
  {
    v38.receiver = self;
    v38.super_class = MTLGPUDebugFunction;
    v12 = [(MTLToolsFunction *)&v38 newArgumentEncoderWithBufferIndex:index reflection:reflection pipelineLibrary:library];
  }

  else if (archives)
  {
    v37.receiver = self;
    v37.super_class = MTLGPUDebugFunction;
    v12 = [(MTLToolsFunction *)&v37 newArgumentEncoderWithBufferIndex:index reflection:reflection binaryArchives:archives];
  }

  else
  {
    v36.receiver = self;
    v36.super_class = MTLGPUDebugFunction;
    v12 = [(MTLToolsFunction *)&v36 newArgumentEncoderWithBufferIndex:index reflection:reflection];
  }

  v17 = v12;
LABEL_46:
  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLGPUDebugFunction;
  [(MTLToolsFunction *)&v3 dealloc];
}

- (id).cxx_construct
{
  *(self + 7) = 850045863;
  *(self + 4) = 0u;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 14) = 0;
  *(self + 120) = 0u;
  *(self + 136) = 0u;
  *(self + 38) = 1065353216;
  return self;
}

@end