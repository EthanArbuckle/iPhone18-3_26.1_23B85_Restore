@interface MTLLegacySVFunction
+ (id)convertUserType:(id)a3;
+ (id)internalArrayTypeFromUserArrayType:(id)a3;
+ (id)internalStructTypeFromUserStructType:(id)a3;
- (MTLLegacySVFunction)initWithFunction:(id)a3 library:(id)a4;
- (id).cxx_construct;
- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 pipelineLibrary:(id)a5 binaryArchives:(id)a6;
- (void)_initImageData;
- (void)dealloc;
- (void)prepareForBinaryFunctionUsage;
@end

@implementation MTLLegacySVFunction

- (MTLLegacySVFunction)initWithFunction:(id)a3 library:(id)a4
{
  v5.receiver = self;
  v5.super_class = MTLLegacySVFunction;
  return [(MTLToolsObject *)&v5 initWithBaseObject:a3 parent:a4];
}

- (void)_initImageData
{
  if (!*(self + 6))
  {
    v3 = [[MTLLegacySVImageData alloc] initWithFunction:self];
    v4 = 0;
    atomic_compare_exchange_strong(self + 6, &v4, v3);
    if (v4)
    {
    }
  }
}

- (void)prepareForBinaryFunctionUsage
{
  [(MTLLegacySVFunction *)self _initImageData];
  v3 = *(self + 6);
  v4 = [objc_msgSend(*(self + 2) "debugInstrumentationData")];

  [v3 setConstantData:v4];
}

+ (id)convertUserType:(id)a3
{
  v4 = [a3 dataType];
  result = 0;
  if (v4 > 116)
  {
    if ((v4 - 117) >= 2)
    {
      return a3;
    }
  }

  else
  {
    switch(v4)
    {
      case 1:

        return [MTLLegacySVFunction internalStructTypeFromUserStructType:a3];
      case 2:

        return [MTLLegacySVFunction internalArrayTypeFromUserArrayType:a3];
      case 60:
        break;
      default:
        return a3;
    }
  }

  return result;
}

+ (id)internalArrayTypeFromUserArrayType:(id)a3
{
  v3 = a3;
  v4 = [a3 elementType];
  if (v4 <= 116)
  {
    switch(v4)
    {
      case 1:
        v9 = [v3 elementStructType];
        break;
      case 2:
        v9 = [v3 elementArrayType];
        break;
      case 60:
        goto LABEL_7;
      default:
        return v3;
    }

    v8 = v9;
    goto LABEL_12;
  }

  if ((v4 - 117) < 2)
  {
LABEL_7:
    v5 = [v3 stride];
    v6 = [v3 arrayLength];
    v7 = [objc_alloc(MEMORY[0x277CD6C80]) initWithArrayLength:v6 elementType:57 stride:v5 pixelFormat:0 aluType:0 details:getIndirectConstant(v6)];
    if (v7)
    {
LABEL_14:
      [v7 setIndirectArgumentIndexStride:{objc_msgSend(v3, "indirectArgumentIndexStride")}];
      return v7;
    }

    v8 = 0;
LABEL_12:
    v10 = [MTLLegacySVFunction convertUserType:v8];
    v7 = v3;
    if (v10 != v8)
    {
      v11 = v10;
      v12 = [v3 elementType];
      v13 = [v3 stride];
      v14 = [v3 arrayLength];
      v7 = [objc_alloc(MEMORY[0x277CD6C80]) initWithArrayLength:v14 elementType:v12 stride:v13 pixelFormat:0 aluType:0 details:v11];
    }

    goto LABEL_14;
  }

  return v3;
}

+ (id)internalStructTypeFromUserStructType:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CD7028]);
  v5 = objc_autoreleasePoolPush();
  __p = 0;
  v28 = 0;
  v29 = 0;
  std::vector<MTLGPUDebugBuffer *>::resize(&__p, [objc_msgSend(a3 "members")]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [a3 members];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
        }

        StructMember = *(*(&v23 + 1) + 8 * v10);
        if ([StructMember dataType] == 60 || objc_msgSend(StructMember, "dataType") == 118 || objc_msgSend(StructMember, "dataType") == 117)
        {
          v13 = [StructMember name];
          v14 = [StructMember offset];
          v15 = [StructMember argumentIndex];
          IndirectConstant = getIndirectConstant(v15);
          v17 = MTLDataTypeBool4|MTLDataTypeStruct;
LABEL_10:
          StructMember = getStructMember(v13, v14, v17, v15, IndirectConstant);
          goto LABEL_11;
        }

        if ([StructMember dataType] == 1)
        {
          v13 = [StructMember name];
          v14 = [StructMember offset];
          v15 = [StructMember argumentIndex];
          IndirectConstant = +[MTLLegacySVFunction convertUserType:](MTLLegacySVFunction, "convertUserType:", [StructMember structType]);
          v17 = MTLDataTypeStruct;
          goto LABEL_10;
        }

        if ([StructMember dataType] == 2)
        {
          v13 = [StructMember name];
          v14 = [StructMember offset];
          v15 = [StructMember argumentIndex];
          IndirectConstant = +[MTLLegacySVFunction convertUserType:](MTLLegacySVFunction, "convertUserType:", [StructMember arrayType]);
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
      v18 = [v6 countByEnumeratingWithState:&v23 objects:v30 count:16];
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

- (id)newArgumentEncoderWithBufferIndex:(unint64_t)a3 reflection:(id *)a4 pipelineLibrary:(id)a5 binaryArchives:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = *(self + 3);
  if ((v11[286] & 0x80) != 0)
  {
    v29 = [v11 baseObject];
    std::mutex::lock((self + 56));
    LODWORD(v30) = a3;
    v13 = std::__hash_table<std::__hash_value_type<unsigned int,NSString *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,NSString *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,NSString *>>>::find<unsigned int>(self + 15, &v30);
    if (v13 && (v14 = v13[3]) != 0)
    {
      if (a5)
      {
        if (!a4)
        {
          goto LABEL_43;
        }

        v15 = [*(self + 2) newArgumentEncoderWithBufferIndex:a3 reflection:a4 pipelineLibrary:a5];
      }

      else if (a6)
      {
        if (!a4)
        {
          goto LABEL_43;
        }

        v15 = [*(self + 2) newArgumentEncoderWithBufferIndex:a3 reflection:a4 binaryArchives:a6];
      }

      else
      {
        if (!a4)
        {
          goto LABEL_43;
        }

        v15 = [*(self + 2) newArgumentEncoderWithBufferIndex:a3 reflection:a4];
      }
    }

    else
    {
      if (a5)
      {
        if (a4)
        {
        }

        v16 = [*(self + 2) reflectionWithOptions:3 pipelineLibrary:a5];
      }

      else if (a6)
      {
        if (a4)
        {
        }

        v16 = [*(self + 2) reflectionWithOptions:3 binaryArchives:a6];
      }

      else
      {
        if (a4)
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
      v19 = [v18 arguments];
      v20 = [v19 countByEnumeratingWithState:&v32 objects:v39 count:16];
      if (v20)
      {
        v21 = *v33;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v32 + 1) + 8 * i);
            if (![v23 type] && objc_msgSend(v23, "index") == a3)
            {
              [v23 bufferStructType];
              v31 = a3;
              v24 = *(self + 3);
              operator new();
            }
          }

          v20 = [v19 countByEnumeratingWithState:&v32 objects:v39 count:16];
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
      v25 = [v29 newArgumentEncoderWithLayout:*v14];
      v17 = [[MTLLegacySVArgumentEncoder alloc] initWithArgumentEncoder:v25 layout:v14 device:[(MTLToolsObject *)self device]];

      goto LABEL_46;
    }

LABEL_45:
    v17 = 0;
    goto LABEL_46;
  }

  if (a5)
  {
    v38.receiver = self;
    v38.super_class = MTLLegacySVFunction;
    v12 = [(MTLToolsFunction *)&v38 newArgumentEncoderWithBufferIndex:a3 reflection:a4 pipelineLibrary:a5];
  }

  else if (a6)
  {
    v37.receiver = self;
    v37.super_class = MTLLegacySVFunction;
    v12 = [(MTLToolsFunction *)&v37 newArgumentEncoderWithBufferIndex:a3 reflection:a4 binaryArchives:a6];
  }

  else
  {
    v36.receiver = self;
    v36.super_class = MTLLegacySVFunction;
    v12 = [(MTLToolsFunction *)&v36 newArgumentEncoderWithBufferIndex:a3 reflection:a4];
  }

  v17 = v12;
LABEL_46:
  v26 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MTLLegacySVFunction;
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