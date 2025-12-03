@interface _CHSRelevanceCacheBuf
- (BOOL)enumerateArchivedObjectsUsingBlock:(id)block;
- (BOOL)isEqual:(id)equal;
- (BOOL)verifyUTF8Fields;
- (NSArray)archivedObjects;
- (NSArray)groups;
- (NSData)archivedObjectsAsData;
- (_CHSRelevanceCacheBuf)initWithBufRef:(id)ref cppPointer:(const RelevanceCacheBuf *)pointer;
- (const)archivedObjectsAsCArrayWithCount:(unint64_t *)count;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
@end

@implementation _CHSRelevanceCacheBuf

- (NSArray)archivedObjects
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __40___CHSRelevanceCacheBuf_archivedObjects__block_invoke;
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

- (NSData)archivedObjectsAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    v7 = &ptr[v4 + *ptr[v4].var0];
    [(AFBBufRef *)self->_br retainBuf];
    v8 = CFDataCreateWithBytesNoCopy(0, v7[4].var0, *v7->var0, [(AFBBufRef *)self->_br deallocator]);
    if (!v8)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:187 description:@"Failed to create CFData"];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)archivedObjectsAsCArrayWithCount:(unint64_t *)count
{
  if (count)
  {
    *count = 0;
  }

  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 < 5u)
  {
    return 0;
  }

  v5 = *v4[4].var0;
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

- (BOOL)enumerateArchivedObjectsUsingBlock:(id)block
{
  blockCopy = block;
  ptr = self->_ptr;
  v6 = &ptr[-*ptr->var0];
  if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
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

- (NSArray)groups
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __31___CHSRelevanceCacheBuf_groups__block_invoke;
    v10[3] = &unk_1E7453F10;
    v10[4] = self;
    v10[5] = var0;
    v7 = _Block_copy(v10);
    v8 = [objc_alloc(MEMORY[0x1E698C1D0]) initWithBufRef:self->_br count:*var0 objectAtIndex:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(_CHSRelevanceCacheBuf *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
    goto LABEL_6;
  }

  if (changesCopy[8] == 1)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 3)];
    goto LABEL_13;
  }

  if (changesCopy[8])
  {
    v11 = 0;
  }

  else
  {
LABEL_6:
    archivedObjects = [(_CHSRelevanceCacheBuf *)self archivedObjects];
    if (archivedObjects)
    {
      v11 = [builderCopy createVectorOfUInt8WithArray:archivedObjects];
    }

    else
    {
      v11 = 0;
    }

    if (!changesCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  if (changesCopy[16] == 1)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 5)];
  }

  else
  {
    if (!changesCopy[16])
    {
LABEL_15:
      groups = [(_CHSRelevanceCacheBuf *)self groups];
      if (groups)
      {
        v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(groups, "count")}];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __60___CHSRelevanceCacheBuf_deepCopyUsingBufferBuilder_changes___block_invoke;
        v25[3] = &unk_1E7453F38;
        v14 = v13;
        v26 = v14;
        v15 = builderCopy;
        v27 = v15;
        [groups enumerateObjectsUsingBlock:v25];
        v16 = [v15 _chsCreateVectorOfWidgetRelevancePropertiesBufWithOffsets:v14];
      }

      else
      {
        v16 = 0;
      }

      goto LABEL_21;
    }

    v16 = 0;
  }

LABEL_21:
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __60___CHSRelevanceCacheBuf_deepCopyUsingBufferBuilder_changes___block_invoke_2;
  v22[3] = &unk_1E7453F60;
  v17 = v11;
  v23 = v17;
  v24 = v16;
  v18 = v16;
  v19 = [builderCopy _chsCreateRelevanceCacheBufUsingBlock:v22];

  objc_autoreleasePoolPop(v9);

  return v19;
}

- (_CHSRelevanceCacheBuf)initWithBufRef:(id)ref cppPointer:(const RelevanceCacheBuf *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = _CHSRelevanceCacheBuf;
  v8 = [(_CHSRelevanceCacheBuf *)&v11 init];
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

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<RelevanceCacheBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{dataCopy, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSRelevanceCacheBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    selfCopy2 = self;
    if (f8)
    {
      if ([(_CHSRelevanceCacheBuf *)self verifyUTF8Fields])
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

- (BOOL)verifyUTF8Fields
{
  groups = [(_CHSRelevanceCacheBuf *)self groups];
  v3 = groups;
  if (!groups)
  {
    goto LABEL_3;
  }

  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41___CHSRelevanceCacheBuf_verifyUTF8Fields__block_invoke;
  v7[3] = &unk_1E7453F88;
  v7[4] = &v8;
  [groups enumerateObjectsUsingBlock:v7];
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  if ((v4 & 1) == 0)
  {
    v5 = 0;
  }

  else
  {
LABEL_3:
    v5 = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  archivedObjects = [(_CHSRelevanceCacheBuf *)self archivedObjects];
  v5 = [archivedObjects hash];

  groups = [(_CHSRelevanceCacheBuf *)self groups];
  v7 = [groups hash] + 37 * v5;

  objc_autoreleasePoolPop(v3);
  return v7;
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
      archivedObjects = [(_CHSRelevanceCacheBuf *)self archivedObjects];
      archivedObjects2 = [v6 archivedObjects];
      if (archivedObjects | archivedObjects2 && (v10 = [archivedObjects isEqual:archivedObjects2], archivedObjects2, archivedObjects, !v10))
      {
        v13 = 0;
      }

      else
      {
        groups = [(_CHSRelevanceCacheBuf *)self groups];
        groups2 = [v6 groups];
        if (groups | groups2)
        {
          v13 = [groups isEqual:groups2];
        }

        else
        {
          v13 = 1;
        }
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end