@interface _CHSWidgetRelevanceBuf
- (BOOL)isEqual:(id)a3;
- (BOOL)verifyUTF8Fields;
- (NSData)attributeKeyAsData;
- (NSString)attributeKey;
- (_CHSIntentReferenceBuf)intentReference;
- (_CHSWidgetRelevanceBuf)initWithBufRef:(id)a3 cppPointer:(const WidgetRelevanceBuf *)a4;
- (const)attributeKeyAsCString;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
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
    v9 = [(AFBBufRef *)self->_br data];
    var0 = v6[v7].var0;
    v11 = var0 - [v9 bytes];

    v12 = [(AFBBufRef *)self->_br data];
    v13 = [v12 subdataWithRange:{v11 + 4, *var0}];

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

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(_CHSWidgetRelevanceBuf *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1734 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!v8)
  {
    goto LABEL_6;
  }

  if (v8[8] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 3)];
    goto LABEL_13;
  }

  if (v8[8])
  {
    v12 = 0;
  }

  else
  {
LABEL_6:
    v10 = objc_autoreleasePoolPush();
    v11 = [(_CHSWidgetRelevanceBuf *)self attributeKeyAsCString];
    if (v11)
    {
      v12 = [v7 createStringWithCString:v11];
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!v8)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  if (v8[16] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 5)];
  }

  else
  {
    if (!v8[16])
    {
LABEL_15:
      v13 = [(_CHSWidgetRelevanceBuf *)self intentReference];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 deepCopyUsingBufferBuilder:v7];
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
  v18 = [v7 _chsCreateWidgetRelevanceBufUsingBlock:v21];

  objc_autoreleasePoolPop(v9);

  return v18;
}

- (_CHSWidgetRelevanceBuf)initWithBufRef:(id)a3 cppPointer:(const WidgetRelevanceBuf *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _CHSWidgetRelevanceBuf;
  v8 = [(_CHSWidgetRelevanceBuf *)&v11 init];
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

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<WidgetRelevanceBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{v10, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSWidgetRelevanceBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    v17 = self;
    if (a4)
    {
      if ([(_CHSWidgetRelevanceBuf *)self verifyUTF8Fields])
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

  v7 = [(_CHSWidgetRelevanceBuf *)self intentReference];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 verifyUTF8Fields];
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(_CHSWidgetRelevanceBuf *)self attributeKey];
  v5 = [v4 hash];

  v6 = [(_CHSWidgetRelevanceBuf *)self intentReference];
  v7 = [v6 hash] + 37 * v5;

  objc_autoreleasePoolPop(v3);
  return v7;
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
      v8 = [(_CHSWidgetRelevanceBuf *)self attributeKey];
      v9 = [v6 attributeKey];
      if (v8 | v9 && (v10 = [v8 isEqual:v9], v9, v8, !v10))
      {
        v13 = 0;
      }

      else
      {
        v11 = [(_CHSWidgetRelevanceBuf *)self intentReference];
        v12 = [v6 intentReference];
        if (v11 | v12)
        {
          v13 = [v11 isEqual:v12];
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