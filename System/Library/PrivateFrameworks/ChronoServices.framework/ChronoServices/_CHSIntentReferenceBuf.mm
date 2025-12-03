@interface _CHSIntentReferenceBuf
- (BOOL)enumerateIntentDataUsingBlock:(id)block;
- (BOOL)enumeratePartialIntentDataUsingBlock:(id)block;
- (BOOL)enumerateSchemaDataUsingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (NSArray)intentData;
- (NSArray)partialIntentData;
- (NSArray)schemaData;
- (NSData)intentDataAsData;
- (NSData)partialIntentDataAsData;
- (NSData)schemaDataAsData;
- (_CHSIntentReferenceBuf)initWithBufRef:(id)ref cppPointer:(const IntentReferenceBuf *)pointer;
- (const)intentDataAsCArrayWithCount:(unint64_t *)count;
- (const)partialIntentDataAsCArrayWithCount:(unint64_t *)count;
- (const)schemaDataAsCArrayWithCount:(unint64_t *)count;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (int64_t)stableHash;
- (unint64_t)hash;
@end

@implementation _CHSIntentReferenceBuf

- (int64_t)stableHash
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *ptr[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSArray)intentData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36___CHSIntentReferenceBuf_intentData__block_invoke;
    aBlock[3] = &__block_descriptor_40_e18___NSNumber_16__0Q8l;
    aBlock[4] = var0;
    v7 = _Block_copy(aBlock);
    v8 = [objc_alloc(MEMORY[0x1E698C1D0]) initWithBufRef:self->_br count:*var0 objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)intentDataAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    v7 = &ptr[v4 + *ptr[v4].var0];
    [(AFBBufRef *)self->_br retainBuf];
    v8 = CFDataCreateWithBytesNoCopy(0, v7[4].var0, *v7->var0, [(AFBBufRef *)self->_br deallocator]);
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2092 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)intentDataAsCArrayWithCount:(unint64_t *)count
{
  if (count)
  {
    *count = 0;
  }

  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 < 7u)
  {
    return 0;
  }

  v5 = *v4[6].var0;
  if (!v5)
  {
    return 0;
  }

  v6 = &ptr[v5 + *ptr[v5].var0];
  v7 = *v6->var0;
  if (count)
  {
    *count = v7;
  }

  v8 = &v6[4];
  if (v7)
  {
    return v8;
  }

  else
  {
    return &emptyCArrayStorage;
  }
}

- (BOOL)enumerateIntentDataUsingBlock:(id)block
{
  blockCopy = block;
  ptr = self->_ptr;
  v6 = &ptr[-*ptr->var0];
  if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
  {
    v8 = &ptr[v7];
    v9 = *ptr[v7].var0;
    if (*ptr[v7 + v9].var0)
    {
      v10 = 0;
      v11 = &ptr[v7 + 4 + v9];
      do
      {
        v12 = objc_autoreleasePoolPush();
        v17 = 0;
        if (v10 >= *v8[v9].var0)
        {
          __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
        }

        v13 = v12;
        blockCopy[2](blockCopy, *(v11 + v10), v10, &v17);
        v14 = v17;
        objc_autoreleasePoolPop(v13);
        if (v14)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *v8[v9].var0);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSArray)schemaData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __36___CHSIntentReferenceBuf_schemaData__block_invoke;
    aBlock[3] = &__block_descriptor_40_e18___NSNumber_16__0Q8l;
    aBlock[4] = var0;
    v7 = _Block_copy(aBlock);
    v8 = [objc_alloc(MEMORY[0x1E698C1D0]) initWithBufRef:self->_br count:*var0 objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)schemaDataAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    v7 = &ptr[v4 + *ptr[v4].var0];
    [(AFBBufRef *)self->_br retainBuf];
    v8 = CFDataCreateWithBytesNoCopy(0, v7[4].var0, *v7->var0, [(AFBBufRef *)self->_br deallocator]);
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2138 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)schemaDataAsCArrayWithCount:(unint64_t *)count
{
  if (count)
  {
    *count = 0;
  }

  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 < 9u)
  {
    return 0;
  }

  v5 = *v4[8].var0;
  if (!v5)
  {
    return 0;
  }

  v6 = &ptr[v5 + *ptr[v5].var0];
  v7 = *v6->var0;
  if (count)
  {
    *count = v7;
  }

  v8 = &v6[4];
  if (v7)
  {
    return v8;
  }

  else
  {
    return &emptyCArrayStorage;
  }
}

- (BOOL)enumerateSchemaDataUsingBlock:(id)block
{
  blockCopy = block;
  ptr = self->_ptr;
  v6 = &ptr[-*ptr->var0];
  if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
  {
    v8 = &ptr[v7];
    v9 = *ptr[v7].var0;
    if (*ptr[v7 + v9].var0)
    {
      v10 = 0;
      v11 = &ptr[v7 + 4 + v9];
      do
      {
        v12 = objc_autoreleasePoolPush();
        v17 = 0;
        if (v10 >= *v8[v9].var0)
        {
          __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
        }

        v13 = v12;
        blockCopy[2](blockCopy, *(v11 + v10), v10, &v17);
        v14 = v17;
        objc_autoreleasePoolPop(v13);
        if (v14)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *v8[v9].var0);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (NSArray)partialIntentData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __43___CHSIntentReferenceBuf_partialIntentData__block_invoke;
    aBlock[3] = &__block_descriptor_40_e18___NSNumber_16__0Q8l;
    aBlock[4] = var0;
    v7 = _Block_copy(aBlock);
    v8 = [objc_alloc(MEMORY[0x1E698C1D0]) initWithBufRef:self->_br count:*var0 objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSData)partialIntentDataAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    v7 = &ptr[v4 + *ptr[v4].var0];
    [(AFBBufRef *)self->_br retainBuf];
    v8 = CFDataCreateWithBytesNoCopy(0, v7[4].var0, *v7->var0, [(AFBBufRef *)self->_br deallocator]);
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2184 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)partialIntentDataAsCArrayWithCount:(unint64_t *)count
{
  if (count)
  {
    *count = 0;
  }

  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 < 0xBu)
  {
    return 0;
  }

  v5 = *v4[10].var0;
  if (!v5)
  {
    return 0;
  }

  v6 = &ptr[v5 + *ptr[v5].var0];
  v7 = *v6->var0;
  if (count)
  {
    *count = v7;
  }

  v8 = &v6[4];
  if (v7)
  {
    return v8;
  }

  else
  {
    return &emptyCArrayStorage;
  }
}

- (BOOL)enumeratePartialIntentDataUsingBlock:(id)block
{
  blockCopy = block;
  ptr = self->_ptr;
  v6 = &ptr[-*ptr->var0];
  if (*v6->var0 >= 0xBu && (v7 = *v6[10].var0) != 0)
  {
    v8 = &ptr[v7];
    v9 = *ptr[v7].var0;
    if (*ptr[v7 + v9].var0)
    {
      v10 = 0;
      v11 = &ptr[v7 + 4 + v9];
      do
      {
        v12 = objc_autoreleasePoolPush();
        v17 = 0;
        if (v10 >= *v8[v9].var0)
        {
          __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
        }

        v13 = v12;
        blockCopy[2](blockCopy, *(v11 + v10), v10, &v17);
        v14 = v17;
        objc_autoreleasePoolPop(v13);
        if (v14)
        {
          break;
        }

        ++v10;
      }

      while (v10 < *v8[v9].var0);
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(_CHSIntentReferenceBuf *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2219 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
LABEL_6:
    intentData = [(_CHSIntentReferenceBuf *)self intentData];
    if (intentData)
    {
      v11 = [builderCopy createVectorOfUInt8WithArray:intentData];
    }

    else
    {
      v11 = 0;
    }

    if (!changesCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (changesCopy[24] == 1)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 7)];
  }

  else
  {
    if (!changesCopy[24])
    {
      goto LABEL_6;
    }

    v11 = 0;
  }

LABEL_13:
  if (changesCopy[32] == 1)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 9)];
    goto LABEL_21;
  }

  if (changesCopy[32])
  {
    v13 = 0;
    goto LABEL_21;
  }

LABEL_15:
  schemaData = [(_CHSIntentReferenceBuf *)self schemaData];
  if (schemaData)
  {
    v13 = [builderCopy createVectorOfUInt8WithArray:schemaData];
  }

  else
  {
    v13 = 0;
  }

  if (!changesCopy)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (changesCopy[40] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 11)];
  }

  else
  {
    if (!changesCopy[40])
    {
LABEL_23:
      partialIntentData = [(_CHSIntentReferenceBuf *)self partialIntentData];
      if (partialIntentData)
      {
        v15 = [builderCopy createVectorOfUInt8WithArray:partialIntentData];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_29;
    }

    v15 = 0;
  }

LABEL_29:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __61___CHSIntentReferenceBuf_deepCopyUsingBufferBuilder_changes___block_invoke;
  v23[3] = &unk_1E7454098;
  v16 = changesCopy;
  v24 = v16;
  selfCopy = self;
  v17 = v11;
  v26 = v17;
  v18 = v13;
  v27 = v18;
  v28 = v15;
  v19 = v15;
  v20 = [builderCopy _chsCreateIntentReferenceBufUsingBlock:v23];

  objc_autoreleasePoolPop(v9);

  return v20;
}

- (_CHSIntentReferenceBuf)initWithBufRef:(id)ref cppPointer:(const IntentReferenceBuf *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = _CHSIntentReferenceBuf;
  v8 = [(_CHSIntentReferenceBuf *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_br, ref);
    v9->_ptr = pointer;
  }

  return v9;
}

- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables
{
  dataCopy = data;
  v11 = objc_autoreleasePoolPush();
  bytes = [dataCopy bytes];
  if (bytes)
  {
    v13 = bytes;
  }

  else
  {
    v13 = &emptyCArrayStorage;
  }

  v20 = v13;
  v21 = [dataCopy length];
  LODWORD(v22) = 0;
  HIDWORD(v22) = depth;
  LODWORD(v23) = 0;
  HIDWORD(v23) = tables;
  v24 = 0;
  LOBYTE(v25) = 1;
  if (v21 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<IntentReferenceBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{dataCopy, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSIntentReferenceBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    selfCopy2 = self;
    if (f8)
    {
      if ([(_CHSIntentReferenceBuf *)self verifyUTF8Fields])
      {
        selfCopy2 = self;
      }

      else
      {
        selfCopy2 = 0;
      }
    }

    v18 = selfCopy2;
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v11);

  return v18;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  stableHash = [(_CHSIntentReferenceBuf *)self stableHash];
  intentData = [(_CHSIntentReferenceBuf *)self intentData];
  v6 = [intentData hash];

  schemaData = [(_CHSIntentReferenceBuf *)self schemaData];
  v8 = [schemaData hash];

  partialIntentData = [(_CHSIntentReferenceBuf *)self partialIntentData];
  v10 = [partialIntentData hash] + 37 * (v8 + 37 * (v6 + 37 * stableHash));

  objc_autoreleasePoolPop(v3);
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      stableHash = [(_CHSIntentReferenceBuf *)self stableHash];
      if (stableHash != [v6 stableHash])
      {
        goto LABEL_12;
      }

      intentData = [(_CHSIntentReferenceBuf *)self intentData];
      intentData2 = [v6 intentData];
      if (intentData | intentData2)
      {
        v11 = [intentData isEqual:intentData2];

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      schemaData = [(_CHSIntentReferenceBuf *)self schemaData];
      schemaData2 = [v6 schemaData];
      if (!(schemaData | schemaData2) || (v14 = [schemaData isEqual:schemaData2], schemaData2, schemaData, v14))
      {
        partialIntentData = [(_CHSIntentReferenceBuf *)self partialIntentData];
        partialIntentData2 = [v6 partialIntentData];
        if (partialIntentData | partialIntentData2)
        {
          v17 = [partialIntentData isEqual:partialIntentData2];
        }

        else
        {
          v17 = 1;
        }
      }

      else
      {
LABEL_12:
        v17 = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end