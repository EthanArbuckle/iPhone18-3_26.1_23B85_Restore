@interface _CHSExtensionIdentityBuf
- (BOOL)isEqual:(id)equal;
- (BOOL)verifyUTF8Fields;
- (NSData)containerBundleIdentifierAsData;
- (NSData)deviceIdentifierAsData;
- (NSData)extensionBundleIdentifierAsData;
- (NSData)tokenStringAsData;
- (NSString)containerBundleIdentifier;
- (NSString)deviceIdentifier;
- (NSString)extensionBundleIdentifier;
- (NSString)tokenString;
- (_CHSExtensionIdentityBuf)initWithBufRef:(id)ref cppPointer:(const ExtensionIdentityBuf *)pointer;
- (const)containerBundleIdentifierAsCString;
- (const)deviceIdentifierAsCString;
- (const)extensionBundleIdentifierAsCString;
- (const)tokenStringAsCString;
- (id)deepCopyUsingBufferBuilder:(id)builder;
- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes;
- (id)initVerifiedRootObjectFromData:(id)data requireUTF8:(BOOL)f8 maxDepth:(unsigned int)depth maxTables:(unsigned int)tables;
- (unint64_t)hash;
@end

@implementation _CHSExtensionIdentityBuf

- (NSString)tokenString
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

- (const)tokenStringAsCString
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

- (NSData)tokenStringAsData
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

- (NSString)extensionBundleIdentifier
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

- (const)extensionBundleIdentifierAsCString
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

- (NSData)extensionBundleIdentifierAsData
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

- (NSString)containerBundleIdentifier
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
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

- (const)containerBundleIdentifierAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)containerBundleIdentifierAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
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

- (NSString)deviceIdentifier
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
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

- (const)deviceIdentifierAsCString
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return &ptr[v4 + 4 + *ptr[v4].var0];
  }

  else
  {
    return 0;
  }
}

- (NSData)deviceIdentifierAsData
{
  ptr = self->_ptr;
  v3 = &ptr[-*ptr->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
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

- (id)deepCopyUsingBufferBuilder:(id)builder
{
  v3 = [(_CHSExtensionIdentityBuf *)self deepCopyUsingBufferBuilder:builder changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)builder changes:(id)changes
{
  builderCopy = builder;
  changesCopy = changes;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
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
    tokenStringAsCString = [(_CHSExtensionIdentityBuf *)self tokenStringAsCString];
    if (tokenStringAsCString)
    {
      v12 = [builderCopy createStringWithCString:tokenStringAsCString];
    }

    else
    {
      v12 = 0;
    }

    objc_autoreleasePoolPop(v10);
    if (!changesCopy)
    {
LABEL_15:
      v13 = objc_autoreleasePoolPush();
      extensionBundleIdentifierAsCString = [(_CHSExtensionIdentityBuf *)self extensionBundleIdentifierAsCString];
      if (extensionBundleIdentifierAsCString)
      {
        v15 = [builderCopy createStringWithCString:extensionBundleIdentifierAsCString];
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

      goto LABEL_21;
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
      goto LABEL_15;
    }

    v15 = 0;
  }

LABEL_21:
  if (changesCopy[24] == 1)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 7)];
    goto LABEL_29;
  }

  if (changesCopy[24])
  {
    v18 = 0;
    goto LABEL_29;
  }

LABEL_23:
  v16 = objc_autoreleasePoolPush();
  containerBundleIdentifierAsCString = [(_CHSExtensionIdentityBuf *)self containerBundleIdentifierAsCString];
  if (containerBundleIdentifierAsCString)
  {
    v18 = [builderCopy createStringWithCString:containerBundleIdentifierAsCString];
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v16);
  if (!changesCopy)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (changesCopy[32] == 1)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(changesCopy + 9)];
  }

  else
  {
    if (!changesCopy[32])
    {
LABEL_31:
      v19 = objc_autoreleasePoolPush();
      deviceIdentifierAsCString = [(_CHSExtensionIdentityBuf *)self deviceIdentifierAsCString];
      if (deviceIdentifierAsCString)
      {
        v21 = [builderCopy createStringWithCString:deviceIdentifierAsCString];
      }

      else
      {
        v21 = 0;
      }

      objc_autoreleasePoolPop(v19);
      goto LABEL_37;
    }

    v21 = 0;
  }

LABEL_37:
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __63___CHSExtensionIdentityBuf_deepCopyUsingBufferBuilder_changes___block_invoke;
  v29[3] = &unk_1E7453FD0;
  v22 = v12;
  v30 = v22;
  v23 = v15;
  v31 = v23;
  v24 = v18;
  v32 = v24;
  v33 = v21;
  v25 = v21;
  v26 = [builderCopy _chsCreateExtensionIdentityBufUsingBlock:v29];

  objc_autoreleasePoolPop(v9);

  return v26;
}

- (_CHSExtensionIdentityBuf)initWithBufRef:(id)ref cppPointer:(const ExtensionIdentityBuf *)pointer
{
  refCopy = ref;
  v11.receiver = self;
  v11.super_class = _CHSExtensionIdentityBuf;
  v8 = [(_CHSExtensionIdentityBuf *)&v11 init];
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

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<ExtensionIdentityBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{dataCopy, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSExtensionIdentityBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    selfCopy2 = self;
    if (f8)
    {
      if ([(_CHSExtensionIdentityBuf *)self verifyUTF8Fields])
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
  v4 = *ptr->var0;
  v5 = -v4;
  v6 = &ptr[-v4];
  if (*v6->var0 >= 5u)
  {
    v7 = *v6[4].var0;
    if (v7)
    {
      v8 = *ptr[v7].var0;
      valid = AFBIsValidUTF8();
      if (!valid)
      {
        return valid;
      }

      ptr = self->_ptr;
      v5 = -*ptr->var0;
    }
  }

  if (*ptr[v5].var0 >= 7u && *ptr[v5 + 6].var0)
  {
    v10 = &ptr[*ptr[v5 + 6].var0];
    v11 = &v10[*v10->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v5 = -*ptr->var0;
  }

  if (*ptr[v5].var0 >= 9u && *ptr[v5 + 8].var0)
  {
    v12 = &ptr[*ptr[v5 + 8].var0];
    v13 = &v12[*v12->var0];
    valid = AFBIsValidUTF8();
    if (!valid)
    {
      return valid;
    }

    ptr = self->_ptr;
    v5 = -*ptr->var0;
  }

  v14 = &ptr[v5];
  if (*v14->var0 >= 0xBu && (v15 = *v14[10].var0) != 0)
  {
    v16 = &ptr[v15 + 4 + *ptr[v15].var0];

    LOBYTE(valid) = AFBIsValidUTF8();
  }

  else
  {
    LOBYTE(valid) = 1;
  }

  return valid;
}

- (unint64_t)hash
{
  v3 = objc_autoreleasePoolPush();
  tokenString = [(_CHSExtensionIdentityBuf *)self tokenString];
  v5 = [tokenString hash];

  extensionBundleIdentifier = [(_CHSExtensionIdentityBuf *)self extensionBundleIdentifier];
  v7 = [extensionBundleIdentifier hash];

  containerBundleIdentifier = [(_CHSExtensionIdentityBuf *)self containerBundleIdentifier];
  v9 = [containerBundleIdentifier hash];

  deviceIdentifier = [(_CHSExtensionIdentityBuf *)self deviceIdentifier];
  v11 = [deviceIdentifier hash] + 37 * (v9 + 37 * (v7 + 37 * v5));

  objc_autoreleasePoolPop(v3);
  return v11;
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
      tokenString = [(_CHSExtensionIdentityBuf *)self tokenString];
      tokenString2 = [v6 tokenString];
      if (tokenString | tokenString2)
      {
        v10 = [tokenString isEqual:tokenString2];

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      extensionBundleIdentifier = [(_CHSExtensionIdentityBuf *)self extensionBundleIdentifier];
      extensionBundleIdentifier2 = [v6 extensionBundleIdentifier];
      if (extensionBundleIdentifier | extensionBundleIdentifier2)
      {
        v13 = [extensionBundleIdentifier isEqual:extensionBundleIdentifier2];

        if (!v13)
        {
          goto LABEL_13;
        }
      }

      containerBundleIdentifier = [(_CHSExtensionIdentityBuf *)self containerBundleIdentifier];
      containerBundleIdentifier2 = [v6 containerBundleIdentifier];
      if (containerBundleIdentifier | containerBundleIdentifier2 && (v16 = [containerBundleIdentifier isEqual:containerBundleIdentifier2], containerBundleIdentifier2, containerBundleIdentifier, !v16))
      {
LABEL_13:
        v19 = 0;
      }

      else
      {
        deviceIdentifier = [(_CHSExtensionIdentityBuf *)self deviceIdentifier];
        deviceIdentifier2 = [v6 deviceIdentifier];
        if (deviceIdentifier | deviceIdentifier2)
        {
          v19 = [deviceIdentifier isEqual:deviceIdentifier2];
        }

        else
        {
          v19 = 1;
        }
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

@end