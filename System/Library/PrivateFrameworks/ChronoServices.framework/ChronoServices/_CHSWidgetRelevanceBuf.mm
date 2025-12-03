@interface _CHSWidgetRelevanceBuf
- (BOOL)isEqual:(id)equal;
- (BOOL)verifyUTF8Fields;
- (NSData)attributeKeyAsData;
- (NSString)attributeKey;
- (_CHSIntentReferenceBuf)intentReference;
- (_CHSWidgetRelevanceBuf)initWithBufRef:(id)ref cppPointer:(const WidgetRelevanceBuf *)pointer;
- (const)attributeKeyAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
@end

@implementation _CHSWidgetRelevanceBuf

- (NSString)attributeKey
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    v6 = &ptr[v4 + *ptr[v4].var0];
    v7 = NSStringFromSelector(a2);
    v8 = makeNSString(v7, self->_br, &v6[4]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (const)attributeKeyAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)attributeKeyAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    v6 = &ptr[v4];
    v7 = *ptr[v4].var0;
    v8 = objc_autoreleasePoolPush();
    data = [(AFBBufRef *)self->_br data];
    var0 = v6[v7].var0;
    v11 = var0 - [data bytes];

    data2 = [(AFBBufRef *)self->_br data];
    v13 = [data2 subdataWithRange:{v11 + 4, *var0}];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (_CHSIntentReferenceBuf)intentReference
{
  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 >= 7u && (v5 = *v4[6].var0) != 0)
  {
    v6 = [[_CHSIntentReferenceBuf alloc] initWithBufRef:self->_br cppPointer:&ptr[v5 + *ptr[v5].var0]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(_CHSWidgetRelevanceBuf *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1734 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
    goto LABEL_6;
  }

  if (changesCopy[8] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 3)];
    goto LABEL_13;
  }

  if (changesCopy[8])
  {
    v12 = 0;
  }

  else
  {
LABEL_6:
    v10 = objc_autoreleasePoolPush();
    attributeKeyAsCString = [(_CHSWidgetRelevanceBuf *)self attributeKeyAsCString];
    if (attributeKeyAsCString)
    {
      v12 = [builderCopy createStringWithCString:attributeKeyAsCString];
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!changesCopy)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  if (changesCopy[16] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 5)];
  }

  else
  {
    if (!changesCopy[16])
    {
LABEL_15:
      intentReference = [(_CHSWidgetRelevanceBuf *)self intentReference];
      v14 = intentReference;
      if (intentReference)
      {
        v15 = [intentReference deepCopyUsingBufferBuilder:builderCopy];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_21;
    }

    v15 = 0;
  }

LABEL_21:
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61___CHSWidgetRelevanceBuf_deepCopyUsingBufferBuilder_changes___block_invoke;
  v21[3] = &unk_1E7454070;
  v16 = v12;
  v22 = v16;
  v23 = v15;
  v17 = v15;
  v18 = [builderCopy _chsCreateWidgetRelevanceBufUsingBlock:v21];

  objc_autoreleasePoolPop(v9);

  return v18;
}

- (_CHSWidgetRelevanceBuf)initWithBufRef:(id)ref cppPointer:(const WidgetRelevanceBuf *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = _CHSWidgetRelevanceBuf;
  v8 = [(_CHSWidgetRelevanceBuf *)&v11 init];
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

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<WidgetRelevanceBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{dataCopy, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSWidgetRelevanceBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    selfCopy2 = self;
    if (f8)
    {
      if ([(_CHSWidgetRelevanceBuf *)self verifyUTF8Fields])
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
  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 >= 5u)
  {
    v5 = *v4[4].var0;
    if (v5)
    {
      v6 = *ptr[v5].var0;
      if (!AFBIsValidUTF8())
      {
        return 0;
      }
    }
  }

  intentReference = [(_CHSWidgetRelevanceBuf *)self intentReference];
  v8 = intentReference;
  if (intentReference)
  {
    verifyUTF8Fields = [intentReference verifyUTF8Fields];
  }

  else
  {
    verifyUTF8Fields = 1;
  }

  return verifyUTF8Fields;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  attributeKey = [(_CHSWidgetRelevanceBuf *)self attributeKey];
  v5 = [attributeKey hash];

  intentReference = [(_CHSWidgetRelevanceBuf *)self intentReference];
  v7 = [intentReference hash] + 37 * v5;

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
      attributeKey = [(_CHSWidgetRelevanceBuf *)self attributeKey];
      attributeKey2 = [v6 attributeKey];
      if (attributeKey | attributeKey2 && (v10 = [attributeKey isEqual:attributeKey2], attributeKey2, attributeKey, !v10))
      {
        v13 = 0;
      }

      else
      {
        intentReference = [(_CHSWidgetRelevanceBuf *)self intentReference];
        intentReference2 = [v6 intentReference];
        if (intentReference | intentReference2)
        {
          v13 = [intentReference isEqual:intentReference2];
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