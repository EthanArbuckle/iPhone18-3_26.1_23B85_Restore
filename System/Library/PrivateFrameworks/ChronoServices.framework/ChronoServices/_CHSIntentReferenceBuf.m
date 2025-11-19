@interface _CHSIntentReferenceBuf
- (BOOL)enumerateIntentDataUsingBlock:(id)a3;
- (BOOL)enumeratePartialIntentDataUsingBlock:(id)a3;
- (BOOL)enumerateSchemaDataUsingBlock:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSArray)intentData;
- (NSArray)partialIntentData;
- (NSArray)schemaData;
- (NSData)intentDataAsData;
- (NSData)partialIntentDataAsData;
- (NSData)schemaDataAsData;
- (_CHSIntentReferenceBuf)initWithBufRef:(id)a3 cppPointer:(const IntentReferenceBuf *)a4;
- (const)intentDataAsCArrayWithCount:(unint64_t *)a3;
- (const)partialIntentDataAsCArrayWithCount:(unint64_t *)a3;
- (const)schemaDataAsCArrayWithCount:(unint64_t *)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2092 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)intentDataAsCArrayWithCount:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0;
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
  if (a3)
  {
    *a3 = v7;
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

- (BOOL)enumerateIntentDataUsingBlock:(id)a3
{
  v4 = a3;
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
        v4[2](v4, *(v11 + v10), v10, &v17);
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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2138 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)schemaDataAsCArrayWithCount:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0;
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
  if (a3)
  {
    *a3 = v7;
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

- (BOOL)enumerateSchemaDataUsingBlock:(id)a3
{
  v4 = a3;
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
        v4[2](v4, *(v11 + v10), v10, &v17);
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
      v9 = [MEMORY[0x1E696AAA8] currentHandler];
      [v9 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2184 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)partialIntentDataAsCArrayWithCount:(unint64_t *)a3
{
  if (a3)
  {
    *a3 = 0;
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
  if (a3)
  {
    *a3 = v7;
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

- (BOOL)enumeratePartialIntentDataUsingBlock:(id)a3
{
  v4 = a3;
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
        v4[2](v4, *(v11 + v10), v10, &v17);
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

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(_CHSIntentReferenceBuf *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:2219 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!v8)
  {
LABEL_6:
    v10 = [(_CHSIntentReferenceBuf *)self intentData];
    if (v10)
    {
      v11 = [v7 createVectorOfUInt8WithArray:v10];
    }

    else
    {
      v11 = 0;
    }

    if (!v8)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v8[24] == 1)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 7)];
  }

  else
  {
    if (!v8[24])
    {
      goto LABEL_6;
    }

    v11 = 0;
  }

LABEL_13:
  if (v8[32] == 1)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 9)];
    goto LABEL_21;
  }

  if (v8[32])
  {
    v13 = 0;
    goto LABEL_21;
  }

LABEL_15:
  v12 = [(_CHSIntentReferenceBuf *)self schemaData];
  if (v12)
  {
    v13 = [v7 createVectorOfUInt8WithArray:v12];
  }

  else
  {
    v13 = 0;
  }

  if (!v8)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (v8[40] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 11)];
  }

  else
  {
    if (!v8[40])
    {
LABEL_23:
      v14 = [(_CHSIntentReferenceBuf *)self partialIntentData];
      if (v14)
      {
        v15 = [v7 createVectorOfUInt8WithArray:v14];
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
  v16 = v8;
  v24 = v16;
  v25 = self;
  v17 = v11;
  v26 = v17;
  v18 = v13;
  v27 = v18;
  v28 = v15;
  v19 = v15;
  v20 = [v7 _chsCreateIntentReferenceBufUsingBlock:v23];

  objc_autoreleasePoolPop(v9);

  return v20;
}

- (_CHSIntentReferenceBuf)initWithBufRef:(id)a3 cppPointer:(const IntentReferenceBuf *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _CHSIntentReferenceBuf;
  v8 = [(_CHSIntentReferenceBuf *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_br, a3);
    v9->_ptr = a4;
  }

  return v9;
}

- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6
{
  v10 = a3;
  v11 = objc_autoreleasePoolPush();
  v12 = [v10 bytes];
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = &emptyCArrayStorage;
  }

  v20 = v13;
  v21 = [v10 length];
  LODWORD(v22) = 0;
  HIDWORD(v22) = a5;
  LODWORD(v23) = 0;
  HIDWORD(v23) = a6;
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
    v16 = [v15 initWithData:{v10, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSIntentReferenceBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    v17 = self;
    if (a4)
    {
      if ([(_CHSIntentReferenceBuf *)self verifyUTF8Fields])
      {
        v17 = self;
      }

      else
      {
        v17 = 0;
      }
    }

    v18 = v17;
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
  v4 = [(_CHSIntentReferenceBuf *)self stableHash];
  v5 = [(_CHSIntentReferenceBuf *)self intentData];
  v6 = [v5 hash];

  v7 = [(_CHSIntentReferenceBuf *)self schemaData];
  v8 = [v7 hash];

  v9 = [(_CHSIntentReferenceBuf *)self partialIntentData];
  v10 = [v9 hash] + 37 * (v8 + 37 * (v6 + 37 * v4));

  objc_autoreleasePoolPop(v3);
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [(_CHSIntentReferenceBuf *)self stableHash];
      if (v8 != [v6 stableHash])
      {
        goto LABEL_12;
      }

      v9 = [(_CHSIntentReferenceBuf *)self intentData];
      v10 = [v6 intentData];
      if (v9 | v10)
      {
        v11 = [v9 isEqual:v10];

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      v12 = [(_CHSIntentReferenceBuf *)self schemaData];
      v13 = [v6 schemaData];
      if (!(v12 | v13) || (v14 = [v12 isEqual:v13], v13, v12, v14))
      {
        v15 = [(_CHSIntentReferenceBuf *)self partialIntentData];
        v16 = [v6 partialIntentData];
        if (v15 | v16)
        {
          v17 = [v15 isEqual:v16];
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