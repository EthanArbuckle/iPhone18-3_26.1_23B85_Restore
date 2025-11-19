@interface _CHSExtensionIdentityBuf
- (BOOL)isEqual:(id)a3;
- (BOOL)verifyUTF8Fields;
- (NSData)containerBundleIdentifierAsData;
- (NSData)deviceIdentifierAsData;
- (NSData)extensionBundleIdentifierAsData;
- (NSData)tokenStringAsData;
- (NSString)containerBundleIdentifier;
- (NSString)deviceIdentifier;
- (NSString)extensionBundleIdentifier;
- (NSString)tokenString;
- (_CHSExtensionIdentityBuf)initWithBufRef:(id)a3 cppPointer:(const ExtensionIdentityBuf *)a4;
- (const)containerBundleIdentifierAsCString;
- (const)deviceIdentifierAsCString;
- (const)extensionBundleIdentifierAsCString;
- (const)tokenStringAsCString;
- (id)deepCopyUsingBufferBuilder:(id)a3;
- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4;
- (id)initVerifiedRootObjectFromData:(id)a3 requireUTF8:(BOOL)a4 maxDepth:(unsigned int)a5 maxTables:(unsigned int)a6;
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

- (id)deepCopyUsingBufferBuilder:(id)a3
{
  v3 = [(_CHSExtensionIdentityBuf *)self deepCopyUsingBufferBuilder:a3 changes:0];

  return v3;
}

- (id)deepCopyUsingBufferBuilder:(id)a3 changes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_CHSRelevanceCache_generated.mm" lineNumber:670 description:{@"Invalid parameter not satisfying: %@", @"bufferBuilder"}];
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
    v11 = [(_CHSExtensionIdentityBuf *)self tokenStringAsCString];
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
LABEL_15:
      v13 = objc_autoreleasePoolPush();
      v14 = [(_CHSExtensionIdentityBuf *)self extensionBundleIdentifierAsCString];
      if (v14)
      {
        v15 = [v7 createStringWithCString:v14];
      }

      else
      {
        v15 = 0;
      }

      objc_autoreleasePoolPop(v13);
      if (!v8)
      {
        goto LABEL_23;
      }

      goto LABEL_21;
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
      goto LABEL_15;
    }

    v15 = 0;
  }

LABEL_21:
  if (v8[24] == 1)
  {
    v18 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 7)];
    goto LABEL_29;
  }

  if (v8[24])
  {
    v18 = 0;
    goto LABEL_29;
  }

LABEL_23:
  v16 = objc_autoreleasePoolPush();
  v17 = [(_CHSExtensionIdentityBuf *)self containerBundleIdentifierAsCString];
  if (v17)
  {
    v18 = [v7 createStringWithCString:v17];
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v16);
  if (!v8)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (v8[32] == 1)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedInt:*(v8 + 9)];
  }

  else
  {
    if (!v8[32])
    {
LABEL_31:
      v19 = objc_autoreleasePoolPush();
      v20 = [(_CHSExtensionIdentityBuf *)self deviceIdentifierAsCString];
      if (v20)
      {
        v21 = [v7 createStringWithCString:v20];
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
  v26 = [v7 _chsCreateExtensionIdentityBufUsingBlock:v29];

  objc_autoreleasePoolPop(v9);

  return v26;
}

- (_CHSExtensionIdentityBuf)initWithBufRef:(id)a3 cppPointer:(const ExtensionIdentityBuf *)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = _CHSExtensionIdentityBuf;
  v8 = [(_CHSExtensionIdentityBuf *)&v11 init];
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

  if (apple::aiml::flatbuffers2::Verifier::VerifyBufferFromStart<ExtensionIdentityBuf>(&v20, "RECA", 0))
  {
    v14 = *v13;
    v15 = objc_alloc(MEMORY[0x1E698C1D8]);
    v16 = [v15 initWithData:{v10, v20, v21, v22, v23, v24, v25}];
    self = [(_CHSExtensionIdentityBuf *)self initWithBufRef:v16 cppPointer:v13 + v14];

    v17 = self;
    if (a4)
    {
      if ([(_CHSExtensionIdentityBuf *)self verifyUTF8Fields])
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
  v4 = [(_CHSExtensionIdentityBuf *)self tokenString];
  v5 = [v4 hash];

  v6 = [(_CHSExtensionIdentityBuf *)self extensionBundleIdentifier];
  v7 = [v6 hash];

  v8 = [(_CHSExtensionIdentityBuf *)self containerBundleIdentifier];
  v9 = [v8 hash];

  v10 = [(_CHSExtensionIdentityBuf *)self deviceIdentifier];
  v11 = [v10 hash] + 37 * (v9 + 37 * (v7 + 37 * v5));

  objc_autoreleasePoolPop(v3);
  return v11;
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
      v8 = [(_CHSExtensionIdentityBuf *)self tokenString];
      v9 = [v6 tokenString];
      if (v8 | v9)
      {
        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v11 = [(_CHSExtensionIdentityBuf *)self extensionBundleIdentifier];
      v12 = [v6 extensionBundleIdentifier];
      if (v11 | v12)
      {
        v13 = [v11 isEqual:v12];

        if (!v13)
        {
          goto LABEL_13;
        }
      }

      v14 = [(_CHSExtensionIdentityBuf *)self containerBundleIdentifier];
      v15 = [v6 containerBundleIdentifier];
      if (v14 | v15 && (v16 = [v14 isEqual:v15], v15, v14, !v16))
      {
LABEL_13:
        v19 = 0;
      }

      else
      {
        v17 = [(_CHSExtensionIdentityBuf *)self deviceIdentifier];
        v18 = [v6 deviceIdentifier];
        if (v17 | v18)
        {
          v19 = [v17 isEqual:v18];
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