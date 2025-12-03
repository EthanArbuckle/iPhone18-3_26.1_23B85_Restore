@interface MSVSegmentedDecoder
+ (id)decodedObjectOfClass:(Class)class fromPackage:(id)package userInfo:(id)info error:(id *)error;
+ (id)decodedObjectOfClasses:(id)classes fromPackage:(id)package userInfo:(id)info error:(id *)error;
- (BOOL)containsValueForKey:(id)key;
- (BOOL)decodeBoolForKey:(id)key;
- (MSVSegmentedDecoder)initWithCodingPackage:(id)package userInfo:(id)info error:(id *)error;
- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length;
- (double)decodeDoubleForKey:(id)key;
- (float)decodeFloatForKey:(id)key;
- (id)_coderForKey:(id)key;
- (id)decodeObjectOfClasses:(id)classes forKey:(id)key;
- (id)decodeRootObjectOfClass:(Class)class error:(id *)error;
- (id)decodeRootObjectOfClasses:(id)classes error:(id *)error;
- (id)error;
- (id)msv_userInfo;
- (int)decodeInt32ForKey:(id)key;
- (int)decodeIntForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (void)msv_setUserInfo:(id)info;
@end

@implementation MSVSegmentedDecoder

- (id)_coderForKey:(id)key
{
  v17 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_subcoders;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 containsValueForKey:{keyCopy, v12}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)msv_setUserInfo:(id)info
{
  v18 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [infoCopy copy];
  userInfo = self->_userInfo;
  self->_userInfo = v5;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = self->_subcoders;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v13 + 1) + 8 * v11++) msv_setUserInfo:{infoCopy, v13}];
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)msv_userInfo
{
  if (self->_userInfo)
  {
    return self->_userInfo;
  }

  else
  {
    return MEMORY[0x1E695E0F8];
  }
}

- (const)decodeBytesForKey:(id)key returnedLength:(unint64_t *)length
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = self->_subcoders;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        v13 = [v12 decodeBytesForKey:keyCopy returnedLength:{length, v17}];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (double)decodeDoubleForKey:(id)key
{
  keyCopy = key;
  v5 = [(MSVSegmentedDecoder *)self _coderForKey:keyCopy];
  [v5 decodeDoubleForKey:keyCopy];
  v7 = v6;

  return v7;
}

- (float)decodeFloatForKey:(id)key
{
  keyCopy = key;
  v5 = [(MSVSegmentedDecoder *)self _coderForKey:keyCopy];
  [v5 decodeFloatForKey:keyCopy];
  v7 = v6;

  return v7;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  keyCopy = key;
  v5 = [(MSVSegmentedDecoder *)self _coderForKey:keyCopy];
  v6 = [v5 decodeInt64ForKey:keyCopy];

  return v6;
}

- (int)decodeInt32ForKey:(id)key
{
  keyCopy = key;
  v5 = [(MSVSegmentedDecoder *)self _coderForKey:keyCopy];
  v6 = [v5 decodeInt32ForKey:keyCopy];

  return v6;
}

- (int)decodeIntForKey:(id)key
{
  keyCopy = key;
  v5 = [(MSVSegmentedDecoder *)self _coderForKey:keyCopy];
  v6 = [v5 decodeIntForKey:keyCopy];

  return v6;
}

- (BOOL)decodeBoolForKey:(id)key
{
  keyCopy = key;
  v5 = [(MSVSegmentedDecoder *)self _coderForKey:keyCopy];
  v6 = [v5 decodeBoolForKey:keyCopy];

  return v6;
}

- (id)decodeObjectOfClasses:(id)classes forKey:(id)key
{
  v22 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  keyCopy = key;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = self->_subcoders;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) decodeObjectOfClasses:classesCopy forKey:{keyCopy, v17}];
        if (v13)
        {
          v14 = v13;
          goto LABEL_11;
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BOOL)containsValueForKey:(id)key
{
  v3 = [(MSVSegmentedDecoder *)self _coderForKey:key];
  v4 = v3 != 0;

  return v4;
}

- (id)decodeRootObjectOfClass:(Class)class error:(id *)error
{
  v6 = [MEMORY[0x1E695DFD8] setWithObject:class];
  v7 = [(MSVSegmentedDecoder *)self decodeRootObjectOfClasses:v6 error:error];

  return v7;
}

- (id)decodeRootObjectOfClasses:(id)classes error:(id *)error
{
  v37 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  if (([classesCopy containsObject:self->_rootClass] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVSegmentedEncoder.m" lineNumber:223 description:{@"Attempt to decode package of archived class: %@", self->_rootClass}];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = self->_subcoders;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v31 + 1) + 8 * i) beginDecodingPartialTopLevelObjectOfClasses:classesCopy];
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  v12 = [objc_alloc(self->_rootClass) initWithCoder:self];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = self->_subcoders;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v27 + 1) + 8 * j) finishDecodingPartialTopLevelObject];
      }

      v14 = [(NSArray *)v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v14);
  }

  allVersions = [(MSVSegmentedCodingPackage *)self->_package allVersions];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __55__MSVSegmentedDecoder_decodeRootObjectOfClasses_error___block_invoke;
  v25[3] = &unk_1E7982520;
  v18 = v12;
  v26 = v18;
  [allVersions enumerateKeysAndObjectsUsingBlock:v25];

  error = [(MSVSegmentedDecoder *)self error];
  if (error)
  {

    if (error)
    {
      v20 = error;
      *error = error;
    }

    [(MSVSegmentedDecoder *)self __setError:0];
    v18 = 0;
  }

  else if (error && !v18)
  {
    [MEMORY[0x1E696ABC0] msv_errorWithDomain:*MEMORY[0x1E696A250] code:4865 debugDescription:@"failed to decode root object"];
    *error = v18 = 0;
  }

  v21 = v18;

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __55__MSVSegmentedDecoder_decodeRootObjectOfClasses_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [v4 didRestoreVersion:objc_msgSend(a3 forSegment:{"integerValue"), v5}];
}

- (id)error
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_subcoders;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        error = [*(*(&v12 + 1) + 8 * i) error];
        if (error)
        {
          decodeError = error;

          goto LABEL_11;
        }
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  decodeError = [(MSVSegmentedDecoder *)self decodeError];
LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return decodeError;
}

- (MSVSegmentedDecoder)initWithCodingPackage:(id)package userInfo:(id)info error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  packageCopy = package;
  infoCopy = info;
  v36.receiver = self;
  v36.super_class = MSVSegmentedDecoder;
  v11 = [(MSVSegmentedDecoder *)&v36 init];
  if (!v11)
  {
    goto LABEL_17;
  }

  v12 = [infoCopy copy];
  v13 = v12;
  v14 = MEMORY[0x1E695E0F8];
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = MEMORY[0x1E695E0F8];
  }

  objc_storeStrong(&v11->_userInfo, v15);

  objc_storeStrong(&v11->_package, package);
  archivedClass = [(MSVSegmentedCodingPackage *)v11->_package archivedClass];
  rootClass = v11->_rootClass;
  v11->_rootClass = archivedClass;

  package = v11->_package;
  v35 = 0;
  v19 = [(MSVSegmentedCodingPackage *)package decodersWithError:&v35];
  v20 = v35;
  subcoders = v11->_subcoders;
  v11->_subcoders = v19;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = v11->_subcoders;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    if (infoCopy)
    {
      v14 = infoCopy;
    }

    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [*(*(&v31 + 1) + 8 * i) msv_setUserInfo:{v14, v31}];
      }

      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v24);
  }

  if (v20)
  {
    if (error)
    {
      v27 = v20;
      *error = v20;
    }

    v28 = 0;
  }

  else
  {
LABEL_17:
    v28 = v11;
  }

  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

+ (id)decodedObjectOfClasses:(id)classes fromPackage:(id)package userInfo:(id)info error:(id *)error
{
  classesCopy = classes;
  infoCopy = info;
  packageCopy = package;
  v20 = 0;
  v12 = [[MSVSegmentedDecoder alloc] initWithCodingPackage:packageCopy userInfo:infoCopy error:&v20];

  v13 = v20;
  if (v13)
  {
    v14 = v13;
    v15 = 0;
  }

  else
  {
    v19 = 0;
    v15 = [(MSVSegmentedDecoder *)v12 decodeRootObjectOfClasses:classesCopy error:&v19];
    v14 = v19;
    if (!v14)
    {
      v15 = v15;
      v17 = v15;
      goto LABEL_8;
    }
  }

  if (error)
  {
    v16 = v14;
    v17 = 0;
    *error = v14;
  }

  else
  {
    v17 = 0;
  }

LABEL_8:

  return v17;
}

+ (id)decodedObjectOfClass:(Class)class fromPackage:(id)package userInfo:(id)info error:(id *)error
{
  v10 = MEMORY[0x1E695DFD8];
  infoCopy = info;
  packageCopy = package;
  v13 = [v10 setWithObject:class];
  v14 = [self decodedObjectOfClasses:v13 fromPackage:packageCopy userInfo:infoCopy error:error];

  return v14;
}

@end