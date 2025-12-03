@interface _CHSWidgetRelevancePropertiesBuf
- (BOOL)isDeletion;
- (BOOL)isEqual:(id)equal;
- (BOOL)supportsBackgroundRefresh;
- (BOOL)verifyUTF8Fields;
- (NSArray)relevances;
- (NSData)kindAsData;
- (NSString)kind;
- (_CHSExtensionIdentityBuf)extensionIdentity;
- (_CHSWidgetRelevancePropertiesBuf)initWithBufRef:(id)ref cppPointer:(const WidgetRelevancePropertiesBuf *)pointer;
- (const)kindAsCString;
- (double)lastRelevanceUpdate;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
@end

@implementation _CHSWidgetRelevancePropertiesBuf

- (_CHSExtensionIdentityBuf)extensionIdentity
{
  ptr = self->_ptr;
  v4 = &ptr[-*ptr->var0];
  if (*v4->var0 >= 5u && (v5 = *v4[4].var0) != 0)
  {
    v6 = [[_CHSExtensionIdentityBuf alloc] initWithBufRef:self->_br cppPointer:&ptr[v5 + *ptr[v5].var0]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)kind
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
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

- (const)kindAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)kindAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
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

- (BOOL)supportsBackgroundRefresh
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 9u && (v4 = *v3[8].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (BOOL)isDeletion
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && ptr[v4].var0[0] != 0;
}

- (double)lastRelevanceUpdate
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  result = 0.0;
  if (*v3->var0 >= 0xDu)
  {
    v5 = *v3[12].var0;
    if (v5)
    {
      return *ptr[v5].var0;
    }
  }

  return result;
}

- (NSArray)relevances
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    var0 = ptr[v4 + *ptr[v4].var0].var0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46___CHSWidgetRelevancePropertiesBuf_relevances__block_invoke;
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
  v3 = [(_CHSWidgetRelevancePropertiesBuf *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:1186 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
  }

  v9 = objc_autoreleasePoolPush();
  if (!changesCopy)
  {
LABEL_6:
    extensionIdentity = [(_CHSWidgetRelevancePropertiesBuf *)self extensionIdentity];
    v11 = extensionIdentity;
    if (extensionIdentity)
    {
      v12 = [extensionIdentity deepCopyUsingBufferBuilder:builderCopy];
    }

    else
    {
      v12 = 0;
    }

    if (!changesCopy)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (changesCopy[8] == 1)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 3)];
  }

  else
  {
    if (!changesCopy[8])
    {
      goto LABEL_6;
    }

    v12 = 0;
  }

LABEL_13:
  if (changesCopy[16] == 1)
  {
    v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 5)];
    goto LABEL_21;
  }

  if (changesCopy[16])
  {
    v15 = 0;
    goto LABEL_21;
  }

LABEL_15:
  v13 = objc_autoreleasePoolPush();
  kindAsCString = [(_CHSWidgetRelevancePropertiesBuf *)self kindAsCString];
  if (kindAsCString)
  {
    v15 = [builderCopy createStringWithCString:kindAsCString];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v13);
  if (!changesCopy)
  {
    goto LABEL_23;
  }

LABEL_21:
  if (changesCopy[40] == 1)
  {
    v20 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 11)];
  }

  else
  {
    if (!changesCopy[40])
    {
LABEL_23:
      relevances = [(_CHSWidgetRelevancePropertiesBuf *)self relevances];
      if (relevances)
      {
        v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(relevances, "count")}];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __71___CHSWidgetRelevancePropertiesBuf_deepCopyUsingBufferBuilder_changes___block_invoke;
        v34[3] = &unk_1E7453FF8;
        v18 = v17;
        v35 = v18;
        v19 = builderCopy;
        v36 = v19;
        [relevances enumerateObjectsUsingBlock:v34];
        v20 = [v19 _chsCreateVectorOfWidgetRelevanceBufWithOffsets:v18];
      }

      else
      {
        v20 = 0;
      }

      goto LABEL_29;
    }

    v20 = 0;
  }

LABEL_29:
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __71___CHSWidgetRelevancePropertiesBuf_deepCopyUsingBufferBuilder_changes___block_invoke_2;
  v28[3] = &unk_1E7454020;
  v21 = v12;
  v29 = v21;
  v22 = v15;
  v30 = v22;
  v23 = changesCopy;
  v31 = v23;
  selfCopy = self;
  v33 = v20;
  v24 = v20;
  v25 = [builderCopy _chsCreateWidgetRelevancePropertiesBufUsingBlock:v28];

  objc_autoreleasePoolPop(v9);

  return v25;
}

- (_CHSWidgetRelevancePropertiesBuf)initWithBufRef:(id)ref cppPointer:(const WidgetRelevancePropertiesBuf *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = _CHSWidgetRelevancePropertiesBuf;
  v8 = [(_CHSWidgetRelevancePropertiesBuf *)&v11 init];
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

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<WidgetRelevancePropertiesBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{dataCopy, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSWidgetRelevancePropertiesBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    selfCopy2 = self;
    if (f8)
    {
      if ([(_CHSWidgetRelevancePropertiesBuf *)self verifyUTF8Fields])
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
  relevances = [(_CHSWidgetRelevancePropertiesBuf *)self relevances];
  v4 = relevances;
  if (relevances)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 1;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52___CHSWidgetRelevancePropertiesBuf_verifyUTF8Fields__block_invoke;
    v14[3] = &unk_1E7454048;
    v14[4] = &v15;
    [relevances enumerateObjectsUsingBlock:v14];
    v5 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
    if ((v5 & 1) == 0)
    {

      return 0;
    }
  }

  extensionIdentity = [(_CHSWidgetRelevancePropertiesBuf *)self extensionIdentity];
  if (extensionIdentity)
  {
    v7 = extensionIdentity;
    verifyUTF8Fields = [extensionIdentity verifyUTF8Fields];

    if (!verifyUTF8Fields)
    {
      return 0;
    }
  }

  ptr = self->_ptr;
  v10 = &ptr[-*ptr->var0];
  if (*v10->var0 < 7u)
  {
    return 1;
  }

  v11 = *v10[6].var0;
  if (!v11)
  {
    return 1;
  }

  v12 = *ptr[v11].var0;
  return AFBIsValidUTF8();
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  extensionIdentity = [(_CHSWidgetRelevancePropertiesBuf *)self extensionIdentity];
  v5 = [extensionIdentity hash];

  kind = [(_CHSWidgetRelevancePropertiesBuf *)self kind];
  v7 = [kind hash];

  supportsBackgroundRefresh = [(_CHSWidgetRelevancePropertiesBuf *)self supportsBackgroundRefresh];
  isDeletion = [(_CHSWidgetRelevancePropertiesBuf *)self isDeletion];
  [(_CHSWidgetRelevancePropertiesBuf *)self lastRelevanceUpdate];
  v11 = v10;
  relevances = [(_CHSWidgetRelevancePropertiesBuf *)self relevances];
  v13 = [relevances hash] + 37 * (v11 + 37 * (37 * (37 * (v7 + 37 * v5) + supportsBackgroundRefresh) + isDeletion));

  objc_autoreleasePoolPop(v3);
  return v13;
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
      extensionIdentity = [(_CHSWidgetRelevancePropertiesBuf *)self extensionIdentity];
      extensionIdentity2 = [v6 extensionIdentity];
      if (extensionIdentity | extensionIdentity2)
      {
        v10 = [extensionIdentity isEqual:extensionIdentity2];

        if (!v10)
        {
          goto LABEL_14;
        }
      }

      kind = [(_CHSWidgetRelevancePropertiesBuf *)self kind];
      kind2 = [v6 kind];
      if (kind | kind2)
      {
        v13 = [kind isEqual:kind2];

        if (!v13)
        {
          goto LABEL_14;
        }
      }

      supportsBackgroundRefresh = [(_CHSWidgetRelevancePropertiesBuf *)self supportsBackgroundRefresh];
      if (supportsBackgroundRefresh == [v6 supportsBackgroundRefresh] && (v15 = -[_CHSWidgetRelevancePropertiesBuf isDeletion](self, "isDeletion"), v15 == objc_msgSend(v6, "isDeletion")) && (-[_CHSWidgetRelevancePropertiesBuf lastRelevanceUpdate](self, "lastRelevanceUpdate"), v17 = v16, objc_msgSend(v6, "lastRelevanceUpdate"), v17 == v18))
      {
        relevances = [(_CHSWidgetRelevancePropertiesBuf *)self relevances];
        relevances2 = [v6 relevances];
        if (relevances | relevances2)
        {
          v21 = [relevances isEqual:relevances2];
        }

        else
        {
          v21 = 1;
        }
      }

      else
      {
LABEL_14:
        v21 = 0;
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end